pw1:-
    format("Bem vindo(a) À PW cosméticos e perfumaria"),nl,
    format("Deseja comprar um produto?"),nl,
    read(Resposta),
    ans1(Resposta).
pw2:-    
	format("Deseja devolver um produto?"),nl,
    read(Resposta),
    ans2(Resposta).
pw3:-
    format("Deseja trocar um produto?"),nl,
    read(Resposta),
    ans3(Resposta).
pw4:-
    format("Deseja ver o status  de entrega de um produto"),nl,
    read(Resposta),
    ans4(Resposta).
pw5:-
    format("Deseja conversar um atendente?"),nl,
    read(Resposta),
    ans5(Resposta).
pw6:-
    format("Deseja saber onde temos lojas físicas?"),nl,
    read(Resposta),
    ans6(Resposta).
pw7:-
    format("Aqui está a lista de produtos disponíveis, digite o número do produto que você deseja comprar"),nl,
	format("[1]Shampoo X"),nl,
	format("[2]Perfume Y"),nl,
	format("[3]Loção pós barba"),nl,
    format("[4]Desodorante Z"),nl,
    format("[5]Sabonete "),nl,
    format("[6]Batom Q"),nl,
    format("[7]Maquiagem A"),nl,
	read(Resposta),
    ans7(Resposta).
pw8:-
    format("Aqui está a lista de produtos que você já comprou, digite o número que deseja trocar"),nl,
	format("[1]Shampoo X"),nl,
	format("[2]Perfume Y"),nl,
	format("[3]Loção pós barba"),nl,
    format("[4]Desodorante Z"),nl,
	read(Resposta),
    ans9(Resposta).
pw9:-	
    format("Aqui está a lista de produtos que você já comprou, digite o número que deseja devolver"),nl,
    format("[1]Shampoo X"),nl,
	format("[2]Perfume Y"),nl,
	format("[3]Loção pós barba"),nl,
    format("[4]Desodorante Z"),nl,
	read(Resposta),
    ans8(Resposta).
pw10:-    
	format("Aqui está o status da entrega de seus produtos"),nl,
	format("Produto 1 - Entregue"),
    format("Produto 2 - Saiu para entrega"),
	pw1.
pw11:-
    format("Aqui está o contato de um dos nossos atendentes"),nl,
	format("0800 4002-8922"),
	pw1.
pw12:-
    format("Aqui está o endereço das lojas físicas"),nl,
    format("Divinópolis - Bairro X, Rua Y, Número Z"),
	pw1.
pw13:-
    format("Deseja concluir a compra?"),nl,
    read(Resposta),
	ans1(Resposta).
pw14:-
    format("Produto devolvido"),nl,
    pw1.
pw15:-
    format("Aqui está a lista de produtos disponíveis para troca, Digite o número que deseja"),nl,
	format("[1]Shampoo X"),nl,
	format("[2]Perfume Y"),nl,
	format("[3]Loção pós barba"),nl,
    format("[4]Desodorante Z"),nl,
    format("[5]Sabonete "),nl,
    format("[6]Batom Q"),nl,
    format("[7]Maquiagem A"),nl,
    read(_Resposta).
pw16:-
    format("Obrigado pela compra"),nl,
	pw1.
pw17:-    
    format("Deseja concluir a troca?"),nl,
    read(resposta).
pw18:-
    format("Obrigado pela troca"),nl,
	pw1.

pw19:-
    format("Valor inválido"),nl,
	pw1.
%Parte das chamadas de respostas

ans1(sair):- write_ln("Até mais!"),!.
ans1(Resposta):- 
    (Resposta==1) ->  pw7, fail;
    (Resposta==0) ->  pw2.

ans2(sair):- write_ln("Até mais!"),!.
ans2(Resposta):-
    (Resposta==1) ->  pw9, fail;
    (Resposta==0) ->  pw3.

ans3(sair):- write_ln("Até mais!"),!.
ans3(Resposta):-
    (Resposta==1) ->  pw8, fail;
    (Resposta==0) ->  pw4.

ans4(sair):- write_ln("Até mais!"),!.
ans4(Resposta):-
    (Resposta==1) ->  pw10, fail;
    (Resposta==0) ->  pw5.

ans5(sair):- write_ln("Até mais!"),!.
ans5(Resposta):-
    (Resposta==1) ->  pw11, fail;
    (Resposta==0) ->  pw6.

ans6(sair):- write_ln("Até mais!"),!.
ans6(Resposta):-
    (Resposta==1) ->  pw12, fail;
    (Resposta==0) ->  pw1.

ans7(sair):- write_ln("Até mais!"),!.
ans7(Resposta):-
    (Resposta > 1 , Resposta <8) -> pw16, fail;
    (Resposta < 1 ; Resposta >7) -> pw19.

ans8(sair):- write_ln("Até mais!"),!.
ans8(Resposta):-
    (Resposta > 1 , Resposta <5) -> pw14, fail;
    (Resposta < 1 ; Resposta >4) -> pw19.

ans9(sair):- write_ln("Até mais!"),!.
ans9(Resposta):-
    (Resposta > 1 , Resposta <5) -> pw18, fail;
    (Resposta < 1 ; Resposta >4) -> pw19.


    
    
