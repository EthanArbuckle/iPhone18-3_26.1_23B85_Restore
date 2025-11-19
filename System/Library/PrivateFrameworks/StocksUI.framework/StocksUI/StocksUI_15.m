uint64_t sub_2206033FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_220603D2C(0, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  sub_220603D2C(0, qword_281292F18, type metadata accessor for StockFeedConfig);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  sub_220603EB0();
  v13 = v12;
  v18 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220603F0C();
  sub_220892A4C();
  if (!v2)
  {
    type metadata accessor for StockFeedConfig();
    v21 = 0;
    sub_220603F60(&qword_281292F60, type metadata accessor for StockFeedConfig);
    sub_22089271C();
    type metadata accessor for StockFeedKnobsConfig();
    v20 = 1;
    sub_220603F60(&qword_28128E898, type metadata accessor for StockFeedKnobsConfig);
    sub_22089271C();
    sub_220602A44(v11, v7, v19);
    (*(v18 + 8))(v16, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2206036C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F4373626F6E6BLL;
  }

  else
  {
    v3 = 0x666E6F4364656566;
  }

  if (v2)
  {
    v4 = 0xEA00000000006769;
  }

  else
  {
    v4 = 0xEB00000000676966;
  }

  if (*a2)
  {
    v5 = 0x6E6F4373626F6E6BLL;
  }

  else
  {
    v5 = 0x666E6F4364656566;
  }

  if (*a2)
  {
    v6 = 0xEB00000000676966;
  }

  else
  {
    v6 = 0xEA00000000006769;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_220603778()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_220603808()
{
  sub_22089146C();
}

uint64_t sub_220603884()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_220603910@<X0>(char *a1@<X8>)
{
  v2 = sub_22089270C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_220603970(uint64_t *a1@<X8>)
{
  v2 = 0x666E6F4364656566;
  if (*v1)
  {
    v2 = 0x6E6F4373626F6E6BLL;
  }

  v3 = 0xEA00000000006769;
  if (*v1)
  {
    v3 = 0xEB00000000676966;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2206039BC()
{
  if (*v0)
  {
    return 0x6E6F4373626F6E6BLL;
  }

  else
  {
    return 0x666E6F4364656566;
  }
}

uint64_t sub_220603A04@<X0>(char *a1@<X8>)
{
  v2 = sub_22089270C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_220603A68(uint64_t a1)
{
  v2 = sub_220603F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220603AA4(uint64_t a1)
{
  v2 = sub_220603F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220603B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_220603D2C(0, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  sub_220603D2C(0, qword_281292F18, type metadata accessor for StockFeedConfig);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - v13;
  sub_220603FA8(a1, &v18 - v13, type metadata accessor for StockFeedConfig);
  v15 = type metadata accessor for StockFeedConfig();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_220603FA8(v3 + *(a2 + 20), v10, type metadata accessor for StockFeedKnobsConfig);
  v16 = type metadata accessor for StockFeedKnobsConfig();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  return sub_220602A44(v14, v10, a3);
}

void sub_220603D2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220603D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220603DE8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_220603D2C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220603E54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220603D2C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220603EB0()
{
  if (!qword_28127E238)
  {
    sub_220603F0C();
    v0 = sub_2208927BC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E238);
    }
  }
}

unint64_t sub_220603F0C()
{
  result = qword_28128C660;
  if (!qword_28128C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128C660);
  }

  return result;
}

uint64_t sub_220603F60(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220603FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_220604024()
{
  result = qword_27CF57958;
  if (!qword_27CF57958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57958);
  }

  return result;
}

unint64_t sub_22060407C()
{
  result = qword_28128C650;
  if (!qword_28128C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128C650);
  }

  return result;
}

unint64_t sub_2206040D4()
{
  result = qword_28128C658;
  if (!qword_28128C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128C658);
  }

  return result;
}

void sub_220604128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a2;
  v28 = sub_2208893DC();
  v27[0] = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206044C8();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220886E8C();
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v19 + 16))(v27 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_220886E6C();
    v21 = sub_2208871CC();
    v23 = v22;

    if (!v3)
    {
      sub_22060455C(&qword_281298500, MEMORY[0x277D68478]);
      v24 = v28;
      sub_22088827C();
      sub_220457EE8(v21, v23);
      (*(v27[0] + 32))(a3, v8, v24);
      v25 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
    }
  }

  else
  {
    v26 = type metadata accessor for EngagementEvent();
    (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
  }
}

void sub_2206044C8()
{
  if (!qword_281298C38)
  {
    sub_2208893EC();
    sub_22060455C(&qword_2812984F8, MEMORY[0x277D68488]);
    v0 = sub_220886E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298C38);
    }
  }
}

uint64_t sub_22060455C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2206045A4(void (*a1)(void), uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_22088CB0C();
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    if (sub_22088CAEC())
    {
      sub_2204A80F0(a1, a2);
      sub_22088CACC();
    }

    else
    {
      if (a1)
      {
        a1();
      }

      return 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206046EC()
{
  v0 = MEMORY[0x277D84560];
  sub_22060540C(0, &qword_28127E140, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v1 = sub_220888A2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220899920;
  v6 = (v5 + v4);
  *v6 = 0x676E6979616C70;
  v6[1] = 0xE700000000000000;
  v7 = *(v2 + 104);
  (v7)(v6, *MEMORY[0x277D6CC80], v1);
  v8 = (v6 + v3);
  *v8 = 0x64656B636F64;
  v8[1] = 0xE600000000000000;
  v7();
  sub_22060540C(0, &qword_28127DED0, sub_220605374, v0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x49656C6369747261;
  *(inited + 40) = 0xE900000000000044;
  sub_22060540C(0, &qword_28127E138, MEMORY[0x277D6CCB8], v0);
  v10 = sub_220888A8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220899920;
  v15 = (v14 + v13);
  *v15 = 65;
  v15[1] = 0xE100000000000000;
  v16 = *(v11 + 104);
  result = v16(v15, *MEMORY[0x277D6CCA8], v10);
  if ((*MEMORY[0x277D30A00] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v15 + v12) = *MEMORY[0x277D30A00];
    v16((v15 + v12), *MEMORY[0x277D6CCB0], v10);
    *(inited + 48) = v14;
    sub_2205CEF04(inited);
    swift_setDeallocating();
    sub_220605470(inited + 32);
    v18 = sub_220888A5C();

    return v18;
  }

  return result;
}

BOOL sub_220604A28()
{
  v0 = sub_220884E9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = aBlock - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = aBlock - v11;
  v13 = sub_22088880C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060540C(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_22088899C();
  sub_2208887AC();
  (*(v14 + 8))(v17, v13);
  v18 = sub_220884E1C();
  v19 = *(v1 + 8);
  v19(v12, v0);
  sub_220604E58();
  v20 = objc_opt_self();
  sub_2205AF924(v18);

  v21 = sub_2208916DC();

  sub_220884AAC();
  v22 = sub_2208916DC();

  v23 = [v20 fc:v21 NewsURLWithPathComponents:v22 queryItems:0 internal:?];

  if (v23)
  {
    sub_220884E4C();

    (*(v1 + 32))(v8, v4, v0);
    v24 = [objc_opt_self() sharedApplication];
    v25 = sub_220884E3C();
    sub_2205CE854(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_22060520C(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey);
    v26 = sub_22089125C();

    aBlock[4] = sub_220605170;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2206B2490;
    aBlock[3] = &block_descriptor_15;
    v27 = _Block_copy(aBlock);
    [v24 openURL:v25 options:v26 completionHandler:v27];
    _Block_release(v27);

    v19(v8, v0);
  }

  return v23 != 0;
}

uint64_t sub_220604E58()
{
  v0 = sub_220884E9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088880C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060540C(0, &qword_281299510, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v22 - v16;
  sub_22060540C(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_22088899C();
  sub_2208887AC();
  (*(v6 + 8))(v9, v5);
  sub_220884ACC();
  (*(v1 + 8))(v4, v0);
  sub_220605254(v17, v13);
  v18 = sub_220884B5C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_2206052E8(v13);
LABEL_5:
    sub_2206052E8(v17);

    return MEMORY[0x277D84F90];
  }

  v20 = sub_220884ABC();
  (*(v19 + 8))(v13, v18);
  if (!v20)
  {
    goto LABEL_5;
  }

  sub_2206052E8(v17);
  return v20;
}

void sub_220605170()
{
  sub_22048D2F4();
  v0 = sub_2208922FC();
  sub_220891AFC();
  sub_22088A7EC();
}

uint64_t sub_22060520C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220605254(uint64_t a1, uint64_t a2)
{
  sub_22060540C(0, &qword_281299510, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206052E8(uint64_t a1)
{
  sub_22060540C(0, &qword_281299510, MEMORY[0x277CC8958], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220605374()
{
  if (!qword_28127EB90)
  {
    sub_22060540C(255, &qword_28127EAC8, MEMORY[0x277D6CCB8], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EB90);
    }
  }
}

void sub_22060540C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_220605470(uint64_t a1)
{
  sub_220605374();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2206054DC(uint64_t a1, void (*a2)(char *))
{
  sub_220605630();
  v4 = v3;
  v5 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, *MEMORY[0x277D6DF80], v4, v7);
  a2(v9);
  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_2206055DC()
{
  result = qword_281299668;
  if (!qword_281299668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299668);
  }

  return result;
}

void sub_220605630()
{
  if (!qword_281297838)
  {
    type metadata accessor for StockSearchSectionDescriptor();
    type metadata accessor for StockSearchModel();
    sub_2205BF404(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor);
    sub_2205BF404(&qword_281291EB0, type metadata accessor for StockSearchModel);
    v0 = sub_22088C68C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297838);
    }
  }
}

uint64_t sub_220605740()
{
  v1 = v0;
  sub_220605A2C();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22088FEFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_22088A05C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, v1, v6, v14);
  v17 = (*(v7 + 88))(v10, v6);
  if (v17 == *MEMORY[0x277D32D70])
  {
    v18 = MEMORY[0x277D68F58];
LABEL_9:
    (*(v12 + 104))(v16, *v18, v11);
    goto LABEL_10;
  }

  if (v17 == *MEMORY[0x277D32D80] || v17 == *MEMORY[0x277D32D68])
  {
    v18 = MEMORY[0x277D68F40];
    goto LABEL_9;
  }

  v26 = *MEMORY[0x277D32D78];
  v22 = *MEMORY[0x277D32D60];
  v23 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x277D68F58], v11);
  if (v23 != v26 && v23 != v22)
  {
    (*(v7 + 8))(v10, v6);
  }

LABEL_10:
  v20 = sub_22088A15C();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  return sub_22088A03C();
}

void sub_220605A2C()
{
  if (!qword_281298270)
  {
    sub_22088A15C();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298270);
    }
  }
}

uint64_t sub_220605AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_220605C2C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_22088830C();
}

void sub_220605D50(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22089132C();
  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v20, &aBlock);
    type metadata accessor for ForYouFeedViewController();
    swift_dynamicCast();
    v8 = v19;
    sub_22088C71C();
    v9 = sub_22088BFCC();

    [v9 contentSize];
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    v17 = sub_220605F24;
    v18 = v12;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v15 = sub_2204C35E8;
    v16 = &block_descriptor_16;
    v13 = _Block_copy(&aBlock);

    [v9 su:v13 performScrollTestWithLength:v11 completion:?];
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

id sub_220605F2C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = v7;
  v9 = sub_2204C5FB4();
  v10 = sub_22044D56C(0, &qword_28127E570);
  v11 = MEMORY[0x277D740C0];
  *(inited + 40) = v9;
  v12 = *v11;
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  v13 = v4[5];
  v14 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v13);
  v15 = *(v14 + 16);
  if (a3)
  {
    v16 = *(v15 + 120);
  }

  else
  {
    v16 = *(v15 + 264);
  }

  v17 = v12;
  v18 = v16(v13, v15);
  v19 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D741E0];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFC999999999999ALL;
  v21 = v20;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v23 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v24 = sub_22089125C();

  v25 = [v22 initWithString:v23 attributes:v24];

  return v25;
}

id sub_22060617C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v10 = v9;
  v11 = sub_2204C3D84();
  v12 = sub_22044D56C(0, &qword_28127E570);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x277D740C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  if (a4)
  {
    v14 = v5[5];
    v15 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v14);
    v16 = *(v15 + 16);
    v17 = *(v16 + 40);
    v18 = v13;
    v19 = v17(v14, v16);
  }

  else
  {
    v20 = *&a3;
    v21 = v5[5];
    v22 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v21);
    if (v20 >= 0.0)
    {
      v23 = *(v22 + 24);
    }

    else
    {
      v23 = *(v22 + 32);
    }

    v24 = v13;
    v19 = v23(v21, v22);
  }

  v25 = v19;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v25;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v27 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v28 = sub_22089125C();

  v29 = [v26 initWithString:v27 attributes:v28];

  return v29;
}

id sub_2206063EC(char a1)
{
  sub_22048BC00();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22089B120;
  if (a1)
  {
    *(v3 + 32) = [objc_opt_self() whiteColor];
    v4 = v1[5];
    v5 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
    *(v3 + 40) = (*(*(v5 + 16) + 128))(v4);
    sub_22044D56C(0, &qword_28127E530);
    v6 = sub_2208916DC();

    v7 = objc_opt_self();
    v8 = [v7 configurationWithPaletteColors_];

    if (qword_27CF558B8 != -1)
    {
      swift_once();
    }

    v9 = [qword_27CF6CEE0 imageWithConfiguration_];
    v10 = [v7 configurationWithTextStyle_];
    v11 = [v9 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v12 = v1[5];
    v13 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
    *(v3 + 32) = (*(*(v13 + 16) + 128))(v12);
    *(v3 + 40) = [objc_opt_self() secondarySystemFillColor];
    sub_22044D56C(0, &qword_28127E530);
    v14 = sub_2208916DC();

    v15 = objc_opt_self();
    v8 = [v15 configurationWithPaletteColors_];

    if (qword_27CF558C0 != -1)
    {
      swift_once();
    }

    v9 = [qword_27CF6CEE8 imageWithConfiguration_];
    v10 = [v15 configurationWithTextStyle_];
    v11 = [v9 imageByApplyingSymbolConfiguration_];
  }

  v16 = v11;

  if (!v16)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  return v16;
}

uint64_t sub_220606718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

id sub_220606880()
{
  v1 = v0;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = v3;
  v5 = sub_2204C5DB4();
  v6 = sub_22044D56C(0, &qword_28127E570);
  v7 = MEMORY[0x277D740C0];
  *(inited + 40) = v5;
  v8 = *v7;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  v11 = *(v10 + 16);
  v12 = *(v11 + 272);
  v13 = v8;
  v14 = v12(v9, v11);
  v15 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x277D741E0];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFC999999999999ALL;
  v17 = v16;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v20 = sub_22089125C();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

id sub_220606AA4()
{
  v1 = v0;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = v3;
  v5 = sub_2204C528C();
  v6 = sub_22044D56C(0, &qword_28127E570);
  v7 = MEMORY[0x277D740C0];
  *(inited + 40) = v5;
  v8 = *v7;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  v11 = *(v10 + 16);
  v12 = *(v11 + 40);
  v13 = v8;
  v14 = v12(v9, v11);
  v15 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x277D741E0];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFDB851EB851EB85;
  v17 = v16;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v20 = sub_22089125C();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

id sub_220606CCC()
{
  v1 = v0;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = v3;
  v5 = sub_2204C3D84();
  v6 = sub_22044D56C(0, &qword_28127E570);
  v7 = MEMORY[0x277D740C0];
  *(inited + 40) = v5;
  v8 = *v7;
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = v1[5];
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v9);
  v11 = *(v10 + 16);
  v12 = *(v11 + 40);
  v13 = v8;
  v14 = v12(v9, v11);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v14;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v17 = sub_22089125C();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

uint64_t sub_220606EC4()
{
  v1 = v0;
  sub_22060A908(0, &qword_2812984D0, MEMORY[0x277D685B0]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v154 = &v137 - v4;
  v156 = sub_2208894CC();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v5);
  v147 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060A908(0, &unk_281298520, MEMORY[0x277D683E0]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v161 = &v137 - v9;
  v10 = sub_22088931C();
  v162 = *(v10 - 8);
  v163 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v152 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060A908(0, &unk_2812984A0, MEMORY[0x277D686A0]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v159 = &v137 - v15;
  v160 = sub_2208895EC();
  v164 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v16);
  v146 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_22088A0EC();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v18);
  v143 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060A908(0, &qword_281298288, MEMORY[0x277D68FD8]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v148 = &v137 - v22;
  v158 = sub_22088A0DC();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v23);
  v149 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_220889FFC();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v25);
  v139 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v137 - v29;
  v31 = sub_22088A20C();
  v32 = *(v31 - 8);
  v165 = v31;
  v166 = v32;
  MEMORY[0x28223BE20](v31, v33);
  v138 = (&v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35, v36);
  v151 = (&v137 - v37);
  MEMORY[0x28223BE20](v38, v39);
  v150 = (&v137 - v40);
  MEMORY[0x28223BE20](v41, v42);
  v142 = (&v137 - v43);
  MEMORY[0x28223BE20](v44, v45);
  v47 = (&v137 - v46);
  v48 = MEMORY[0x277D68ED8];
  sub_22060A908(0, &qword_2812982D0, MEMORY[0x277D68ED8]);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v52 = &v137 - v51;
  v53 = sub_220889FEC();
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v55);
  v57 = &v137 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_feedData;
  swift_beginAccess();
  v153 = v1;
  sub_22060AD94(v1 + v58, v52, &qword_2812982D0, v48);
  if ((*(v54 + 48))(v52, 1, v53) == 1)
  {
    sub_22060AE00(v52, &qword_2812982D0, MEMORY[0x277D68ED8]);
    v59 = MEMORY[0x277D84F90];
    v60 = v156;
    v61 = v165;
    v62 = v159;
  }

  else
  {
    (*(v54 + 32))(v57, v52, v53);
    sub_220889FDC();
    v63 = v140;
    v64 = v139;
    v65 = v141;
    (*(v140 + 16))(v139, v30, v141);
    v66 = (*(v63 + 88))(v64, v65);
    v61 = v165;
    v67 = v65;
    v68 = v63;
    v69 = v30;
    if (v66 == *MEMORY[0x277D68EF8])
    {
      v70 = 0;
      v71 = v166;
      v62 = v159;
    }

    else
    {
      v71 = v166;
      v62 = v159;
      if (v66 == *MEMORY[0x277D68EF0])
      {
        v70 = 21;
      }

      else if (v66 == *MEMORY[0x277D68EE8])
      {
        v70 = 1;
      }

      else
      {
        if (v66 != *MEMORY[0x277D68EE0])
        {
          result = sub_2208928AC();
          __break(1u);
          return result;
        }

        v70 = 16;
      }
    }

    (*(v68 + 8))(v69, v67);
    v72 = sub_220889FBC();
    *v47 = v70;
    v47[1] = v72;
    v47[3] = 0;
    v47[4] = 0;
    v47[2] = v73;
    (*(v71 + 104))(v47, *MEMORY[0x277D34DD8], v61);
    v59 = sub_220588198(0, 1, 1, MEMORY[0x277D84F90]);
    v75 = v59[2];
    v74 = v59[3];
    if (v75 >= v74 >> 1)
    {
      v59 = sub_220588198(v74 > 1, v75 + 1, 1, v59);
    }

    v60 = v156;
    (*(v54 + 8))(v57, v53);
    v59[2] = v75 + 1;
    (*(v166 + 32))(v59 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v75, v47, v61);
  }

  v76 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_groupData;
  v77 = v153;
  swift_beginAccess();
  v78 = v148;
  sub_22060AD94(v77 + v76, v148, &qword_281298288, MEMORY[0x277D68FD8]);
  v79 = v157;
  v80 = v158;
  v81 = (*(v157 + 48))(v78, 1, v158);
  v82 = v155;
  if (v81 == 1)
  {
    v83 = v155;
    v84 = v60;
    sub_22060AE00(v78, &qword_281298288, MEMORY[0x277D68FD8]);
    v85 = v166;
    v86 = v161;
  }

  else
  {
    (*(v79 + 32))(v149, v78, v80);
    v87 = v143;
    sub_22088A0CC();
    v88 = sub_220713B50();
    (*(v144 + 8))(v87, v145);
    v89 = sub_22088A0AC();
    v91 = v90;
    v92 = sub_22088A09C();
    v93 = sub_22088A08C();
    v94 = v142;
    *v142 = 0x6E776F6E6B6E75;
    v94[1] = 0xE700000000000000;
    v94[2] = v88;
    v94[3] = v89;
    v94[4] = v91;
    v94[5] = v92;
    v61 = v165;
    v85 = v166;
    v94[6] = v93;
    (*(v85 + 104))(v94, *MEMORY[0x277D34DE0], v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_220588198(0, v59[2] + 1, 1, v59);
    }

    v96 = v59[2];
    v95 = v59[3];
    v83 = v82;
    if (v96 >= v95 >> 1)
    {
      v59 = sub_220588198(v95 > 1, v96 + 1, 1, v59);
    }

    v84 = v60;
    (*(v157 + 8))(v149, v158);
    v59[2] = v96 + 1;
    (*(v85 + 32))(v59 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v96, v94, v61);
    v86 = v161;
    v62 = v159;
  }

  v97 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_articleData;
  swift_beginAccess();
  sub_22060AD94(v77 + v97, v62, &unk_2812984A0, MEMORY[0x277D686A0]);
  v98 = v62;
  v99 = v164;
  v100 = v160;
  if ((*(v164 + 48))(v98, 1, v160) == 1)
  {
    sub_22060AE00(v98, &unk_2812984A0, MEMORY[0x277D686A0]);
    v101 = v84;
    v102 = v83;
    v103 = v162;
  }

  else
  {
    v104 = *(v99 + 32);
    v105 = v146;
    v104(v146, v98, v100);
    v106 = sub_2208895DC();
    v107 = v150;
    *v150 = v106;
    v107[1] = v108;
    *(v107 + 1) = 0u;
    *(v107 + 2) = 0u;
    *(v107 + 3) = 0u;
    (*(v85 + 104))(v107, *MEMORY[0x277D34DF8], v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_220588198(0, v59[2] + 1, 1, v59);
    }

    v101 = v84;
    v110 = v59[2];
    v109 = v59[3];
    v111 = v164;
    v102 = v83;
    if (v110 >= v109 >> 1)
    {
      v136 = sub_220588198(v109 > 1, v110 + 1, 1, v59);
      v111 = v164;
      v59 = v136;
    }

    v103 = v162;
    (*(v111 + 8))(v105, v160);
    v59[2] = v110 + 1;
    (*(v85 + 32))(v59 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v110, v150, v61);
    v86 = v161;
  }

  v112 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_campaignData;
  swift_beginAccess();
  sub_22060AD94(v77 + v112, v86, &unk_281298520, MEMORY[0x277D683E0]);
  v113 = v163;
  if ((*(v103 + 48))(v86, 1, v163) == 1)
  {
    sub_22060AE00(v86, &unk_281298520, MEMORY[0x277D683E0]);
  }

  else
  {
    (*(v103 + 32))(v152, v86, v113);
    v114 = sub_2208892EC();
    v116 = v115;
    v117 = sub_22088930C();
    v119 = v118;
    v120 = sub_2208892FC();
    v121 = v151;
    *v151 = v114;
    v121[1] = v116;
    v121[2] = v117;
    v121[3] = v119;
    v61 = v165;
    v85 = v166;
    v121[4] = v120;
    v121[5] = v122;
    (*(v85 + 104))(v121, *MEMORY[0x277D34E08], v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_220588198(0, v59[2] + 1, 1, v59);
    }

    v124 = v59[2];
    v123 = v59[3];
    v125 = v162;
    if (v124 >= v123 >> 1)
    {
      v59 = sub_220588198(v123 > 1, v124 + 1, 1, v59);
    }

    (*(v125 + 8))(v152, v163);
    v59[2] = v124 + 1;
    (*(v85 + 32))(v59 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v124, v151, v61);
  }

  v126 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_adReferralData;
  swift_beginAccess();
  v127 = v77 + v126;
  v128 = v154;
  sub_22060AD94(v127, v154, &qword_2812984D0, MEMORY[0x277D685B0]);
  if ((*(v102 + 48))(v128, 1, v101) == 1)
  {
    sub_22060AE00(v128, &qword_2812984D0, MEMORY[0x277D685B0]);
  }

  else
  {
    v129 = v147;
    (*(v102 + 32))(v147, v128, v101);
    v130 = sub_2208894BC();
    if (v131)
    {
      v132 = v138;
      *v138 = v130;
      v132[1] = v131;
      *(v132 + 16) = 1;
      (*(v85 + 104))(v132, *MEMORY[0x277D34DD0], v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_220588198(0, v59[2] + 1, 1, v59);
      }

      v134 = v59[2];
      v133 = v59[3];
      if (v134 >= v133 >> 1)
      {
        v59 = sub_220588198(v133 > 1, v134 + 1, 1, v59);
      }

      (*(v102 + 8))(v129, v101);
      v59[2] = v134 + 1;
      (*(v85 + 32))(v59 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v134, v132, v61);
    }

    else
    {
      (*(v102 + 8))(v129, v101);
    }
  }

  return v59;
}

uint64_t sub_22060808C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102 = a5;
  v103 = a6;
  v97 = a4;
  v107 = a3;
  v8 = sub_2208899EC();
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v104 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_22088A34C();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v11);
  v81 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088922C();
  v100 = *(v13 - 8);
  v101 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v99 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_22088A56C();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v16);
  v86 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088923C();
  v95 = *(v18 - 8);
  v96 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v98 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v93 = &v80 - v23;
  v90 = sub_22088937C();
  v91 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v24);
  v89 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22088938C();
  v110 = *(v26 - 8);
  v111 = v26;
  MEMORY[0x28223BE20](v26, v27);
  v108 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v109 = &v80 - v31;
  v88 = MEMORY[0x277D685B0];
  sub_22060A908(0, &qword_2812984D0, MEMORY[0x277D685B0]);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v87 = &v80 - v34;
  v85 = MEMORY[0x277D683E0];
  sub_22060A908(0, &unk_281298520, MEMORY[0x277D683E0]);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v80 - v37;
  v84 = MEMORY[0x277D686A0];
  sub_22060A908(0, &unk_2812984A0, MEMORY[0x277D686A0]);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v42 = &v80 - v41;
  v43 = MEMORY[0x277D68FD8];
  sub_22060A908(0, &qword_281298288, MEMORY[0x277D68FD8]);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v47 = &v80 - v46;
  v48 = MEMORY[0x277D68ED8];
  sub_22060A908(0, &qword_2812982D0, MEMORY[0x277D68ED8]);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v52 = &v80 - v51;
  sub_220889FEC();
  sub_22060AD4C(&qword_2812982D8, MEMORY[0x277D68ED8]);
  sub_220886F0C();
  v53 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_feedData;
  swift_beginAccess();
  sub_22060ACE0(v52, a2 + v53, &qword_2812982D0, v48);
  swift_endAccess();
  sub_22088A0DC();
  sub_22060AD4C(&unk_281298290, MEMORY[0x277D68FD8]);
  sub_220886F0C();
  v54 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_groupData;
  swift_beginAccess();
  v55 = v47;
  v56 = v86;
  sub_22060ACE0(v55, a2 + v54, &qword_281298288, v43);
  swift_endAccess();
  sub_2208895EC();
  sub_22060AD4C(&qword_2812984B0, MEMORY[0x277D686A0]);
  sub_220886F0C();
  v57 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_articleData;
  swift_beginAccess();
  sub_22060ACE0(v42, a2 + v57, &unk_2812984A0, v84);
  swift_endAccess();
  sub_22088931C();
  sub_22060AD4C(&qword_281298530, MEMORY[0x277D683E0]);
  sub_220886F0C();
  v58 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_campaignData;
  swift_beginAccess();
  sub_22060ACE0(v38, a2 + v58, &unk_281298520, v85);
  swift_endAccess();
  sub_2208894CC();
  sub_22060AD4C(&qword_2812984D8, MEMORY[0x277D685B0]);
  v59 = v87;
  sub_220886F0C();
  v60 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_adReferralData;
  swift_beginAccess();
  sub_22060ACE0(v59, a2 + v60, &qword_2812984D0, v88);
  swift_endAccess();
  v61 = sub_22088A1BC();
  v62 = v109;
  sub_2206770C4(*(a2 + 40), v61, v109);
  sub_22088A19C();
  (*(v110 + 16))(v108, v62, v111);
  v63 = v89;
  v64 = v92;
  sub_22088936C();
  sub_22060AD4C(&qword_281298510, MEMORY[0x277D68410]);
  v65 = v63;
  v66 = v90;
  v108 = a1;
  sub_220886F1C();
  v67 = v94;
  (*(v91 + 8))(v65, v66);
  (*(v67 + 16))(v56, v97, v64);
  v68 = (*(v67 + 88))(v56, v64);
  if (v68 == *MEMORY[0x277D351D0])
  {
    v70 = v95;
    v69 = v96;
    v71 = v93;
    (*(v95 + 104))(v93, *MEMORY[0x277D68390], v96);
    v72 = v69;
    goto LABEL_10;
  }

  v71 = v93;
  v70 = v95;
  v72 = v96;
  if (v68 == *MEMORY[0x277D35188])
  {
    v73 = MEMORY[0x277D68388];
LABEL_9:
    (*(v95 + 104))(v93, *v73, v96);
    goto LABEL_10;
  }

  if (v68 == *MEMORY[0x277D35190])
  {
    goto LABEL_6;
  }

  if (v68 == *MEMORY[0x277D35168])
  {
    v73 = MEMORY[0x277D68380];
    goto LABEL_9;
  }

  if (v68 == *MEMORY[0x277D351A0] || v68 == *MEMORY[0x277D35170] || v68 == *MEMORY[0x277D351E0] || v68 == *MEMORY[0x277D351B8] || v68 == *MEMORY[0x277D351B0] || v68 == *MEMORY[0x277D35178] || v68 == *MEMORY[0x277D35180] || v68 == *MEMORY[0x277D351A8] || v68 == *MEMORY[0x277D351F0] || v68 == *MEMORY[0x277D351E8])
  {
LABEL_6:
    v73 = MEMORY[0x277D68390];
    goto LABEL_9;
  }

  (*(v95 + 104))(v93, *MEMORY[0x277D68390], v96);
  (*(v67 + 8))(v56, v64);
LABEL_10:
  (*(v70 + 16))(v98, v71, v72);
  v74 = v99;
  sub_22088921C();
  sub_22060AD4C(&unk_281298550, MEMORY[0x277D68378]);
  v75 = v101;
  sub_220886F1C();
  (*(v100 + 8))(v74, v75);
  if (*(a2 + 24))
  {
    swift_getObjectType();
    v76 = v81;
    sub_22088A1AC();
    sub_22088A55C();
    (*(v82 + 8))(v76, v83);
  }

  v77 = v104;
  sub_2208899DC();
  sub_22060AD4C(&unk_2812983E0, MEMORY[0x277D68948]);
  v78 = v106;
  sub_220886F1C();
  (*(v105 + 8))(v77, v78);
  sub_220889A9C();
  sub_22060AD4C(&qword_2812983A8, MEMORY[0x277D68A00]);
  sub_220886F2C();
  (*(v70 + 8))(v71, v72);
  return (*(v110 + 8))(v109, v111);
}

uint64_t sub_220608F18()
{
  sub_220889A9C();
  sub_22060AD4C(&qword_2812983A8, MEMORY[0x277D68A00]);
  sub_220886ECC();
  return sub_220886EDC();
}

uint64_t sub_220608FC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2208890EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2208890DC();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088A4EC();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a2, v12, v15);
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 == *MEMORY[0x277D35090])
  {
    (*(v13 + 96))(v17, v12);
    v19 = *(v4 + 104);
    if (*v17 == 1)
    {
      v19(v7, *MEMORY[0x277D68240], v3);
    }

    else
    {
      v19(v7, *MEMORY[0x277D68238], v3);
    }

    sub_2208890CC();
    sub_22060AD4C(&qword_27CF579F0, MEMORY[0x277D68230]);
    v21 = v24;
    sub_220886F1C();
    (*(v8 + 8))(v11, v21);
  }

  else if (v18 == *MEMORY[0x277D35088])
  {
    (*(v13 + 96))(v17, v12);
    (*(v4 + 104))(v7, *MEMORY[0x277D68238], v3);
    sub_2208890CC();
    sub_22060AD4C(&qword_27CF579F0, MEMORY[0x277D68230]);
    v20 = v24;
    sub_220886F1C();
    (*(v8 + 8))(v11, v20);
  }

  else
  {
    (*(v13 + 8))(v17, v12);
  }

  sub_220889F3C();
  sub_22060AD4C(&qword_27CF579E8, MEMORY[0x277D68E60]);
  memset(v25, 0, sizeof(v25));
  sub_220886F3C();
  return sub_22056D130(v25);
}

uint64_t sub_2206094B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v60 = a1;
  v3 = sub_220889DAC();
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060A908(0, &qword_27CF579E0, MEMORY[0x277D350F8]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v51 - v8;
  v10 = sub_22088A51C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v51 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v53 = &v51 - v16;
  v56 = sub_220889D6C();
  v17 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v18);
  v54 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v55 = &v51 - v22;
  v23 = sub_22088A21C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_220889CAC();
  v28 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v29);
  v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v61 = &v51 - v34;
  sub_22088A1CC();
  v35 = (*(v24 + 88))(v27, v23);
  if (v35 == *MEMORY[0x277D34E40])
  {
    (*(v24 + 8))(v27, v23);
    goto LABEL_3;
  }

  if (v35 == *MEMORY[0x277D34E68])
  {
    v36 = MEMORY[0x277D68BE0];
    goto LABEL_6;
  }

  if (v35 == *MEMORY[0x277D34E78] || v35 == *MEMORY[0x277D34E48] || v35 == *MEMORY[0x277D34E80] || v35 == *MEMORY[0x277D34E58] || v35 == *MEMORY[0x277D34E50])
  {
LABEL_3:
    v36 = MEMORY[0x277D68BE8];
LABEL_6:
    (*(v28 + 104))(v61, *v36, v62);
    goto LABEL_7;
  }

  (*(v28 + 104))(v61, *MEMORY[0x277D68BE8], v62);
  (*(v24 + 8))(v27, v23);
LABEL_7:
  sub_22060AD94(v52, v9, &qword_27CF579E0, MEMORY[0x277D350F8]);
  v37 = (*(v11 + 48))(v9, 1, v10);
  v39 = v55;
  v38 = v56;
  if (v37 != 1)
  {
    v40 = v53;
    (*(v11 + 32))(v53, v9, v10);
    v41 = v51;
    (*(v11 + 16))(v51, v40, v10);
    v42 = (*(v11 + 88))(v41, v10);
    if (v42 == *MEMORY[0x277D350E8])
    {
      v43 = MEMORY[0x277D68CB0];
    }

    else if (v42 == *MEMORY[0x277D350E0])
    {
      v43 = MEMORY[0x277D68CA0];
    }

    else
    {
      if (v42 != *MEMORY[0x277D350F0])
      {
        v45 = *(v17 + 104);
        if (v42 != *MEMORY[0x277D350D8])
        {
          v45(v39, *MEMORY[0x277D68CB0], v38);
          (*(v11 + 8))(v41, v10);
          goto LABEL_23;
        }

        v44 = *MEMORY[0x277D68C98];
LABEL_22:
        v45(v39, v44, v38);
LABEL_23:
        (*(v11 + 8))(v53, v10);
        goto LABEL_24;
      }

      v43 = MEMORY[0x277D68CA8];
    }

    v44 = *v43;
    v45 = *(v17 + 104);
    goto LABEL_22;
  }

  sub_22060AE00(v9, &qword_27CF579E0, MEMORY[0x277D350F8]);
  (*(v17 + 104))(v39, *MEMORY[0x277D68CB0], v38);
LABEL_24:
  v47 = v61;
  v46 = v62;
  (*(v28 + 16))(v31, v61, v62);
  (*(v17 + 16))(v54, v39, v38);
  v48 = v57;
  sub_220889D9C();
  sub_22060AD4C(&qword_27CF570F8, MEMORY[0x277D68D00]);
  v49 = v59;
  sub_220886F1C();
  (*(v58 + 8))(v48, v49);
  sub_220889CBC();
  sub_22060AD4C(&qword_27CF57100, MEMORY[0x277D68BF8]);
  memset(v63, 0, sizeof(v63));
  sub_220886F3C();
  sub_22056D130(v63);
  (*(v17 + 8))(v39, v38);
  return (*(v28 + 8))(v47, v46);
}

uint64_t sub_220609CF0()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_22060AE00(v0 + OBJC_IVAR____TtC8StocksUI14PaywallTracker_feedData, &qword_2812982D0, MEMORY[0x277D68ED8]);
  sub_22060AE00(v0 + OBJC_IVAR____TtC8StocksUI14PaywallTracker_groupData, &qword_281298288, MEMORY[0x277D68FD8]);
  sub_22060AE00(v0 + OBJC_IVAR____TtC8StocksUI14PaywallTracker_articleData, &unk_2812984A0, MEMORY[0x277D686A0]);
  sub_22060AE00(v0 + OBJC_IVAR____TtC8StocksUI14PaywallTracker_campaignData, &unk_281298520, MEMORY[0x277D683E0]);
  sub_22060AE00(v0 + OBJC_IVAR____TtC8StocksUI14PaywallTracker_adReferralData, &qword_2812984D0, MEMORY[0x277D685B0]);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PaywallTracker()
{
  result = qword_281294238;
  if (!qword_281294238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220609E8C()
{
  sub_22060A908(319, &qword_2812982D0, MEMORY[0x277D68ED8]);
  if (v0 <= 0x3F)
  {
    sub_22060A908(319, &qword_281298288, MEMORY[0x277D68FD8]);
    if (v1 <= 0x3F)
    {
      sub_22060A908(319, &unk_2812984A0, MEMORY[0x277D686A0]);
      if (v2 <= 0x3F)
      {
        sub_22060A908(319, &unk_281298520, MEMORY[0x277D683E0]);
        if (v3 <= 0x3F)
        {
          sub_22060A908(319, &qword_2812984D0, MEMORY[0x277D685B0]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_22060A0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a4;
  v25 = a3;
  v27 = a1;
  v28 = a2;
  v6 = sub_22088A56C();
  v23 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = sub_22088A1DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v15 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v5;
  v26 = *(*v5 + 16);
  (*(v11 + 16))(v15, v24, v10, v14);
  (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v6);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = (v12 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  (*(v11 + 32))(v19 + v17, v15, v10);
  (*(v7 + 32))(v19 + v18, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
  v20 = (v19 + ((v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;

  sub_22088726C();
}

uint64_t sub_22060A334()
{
  sub_220889A9C();
  sub_22060AD4C(&qword_2812983A8, MEMORY[0x277D68A00]);
  return sub_22088730C();
}

uint64_t sub_22060A3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088516C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v21 - v12;
  v14 = *(v5 + 16);
  v14(&v21 - v12, a1, v4, v11);
  (v14)(v8, a2, v4);
  v15 = *(v5 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = (v6 + v15 + v16) & ~v15;
  v18 = swift_allocObject();
  v19 = *(v5 + 32);
  v19(v18 + v16, v13, v4);
  v19(v18 + v17, v8, v4);
  sub_22088726C();
}

uint64_t sub_22060A55C(uint64_t a1)
{
  v2 = sub_22088A4EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_22088726C();
}

uint64_t sub_22060A6A8(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  v2 = sub_22088A1DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v6 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D350F8];
  v21 = MEMORY[0x277D350F8];
  sub_22060A908(0, &qword_27CF579E0, MEMORY[0x277D350F8]);
  v20 = *(v8 - 8);
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v20 - v14;
  sub_22088A40C();
  (*(v3 + 16))(v6, v23, v2);
  sub_22060AD94(v15, v11, &qword_27CF579E0, v7);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = (v4 + *(v20 + 80) + v16) & ~*(v20 + 80);
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v16, v6, v2);
  sub_22060A95C(v11, v18 + v17);
  sub_22088726C();

  return sub_22060AE00(v15, &qword_27CF579E0, v21);
}

void sub_22060A908(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22060A95C(uint64_t a1, uint64_t a2)
{
  sub_22060A908(0, &qword_27CF579E0, MEMORY[0x277D350F8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22060A9DC(uint64_t a1)
{
  v3 = *(sub_22088A1DC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_22060A908(0, &qword_27CF579E0, MEMORY[0x277D350F8]);
  v7 = v1 + ((v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_2206094B4(a1, v1 + v4, v7);
}

uint64_t sub_22060AACC(uint64_t a1)
{
  v3 = *(sub_22088A4EC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_220608FC4(a1, v4);
}

uint64_t sub_22060AB3C()
{
  sub_22088516C();

  return sub_220608F18();
}

uint64_t sub_22060ABD8(char *a1)
{
  v3 = *(sub_22088A1DC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22088A56C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_22060808C(a1, v8, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_22060ACE0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22060A908(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22060AD4C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22060AD94(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22060A908(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22060AE00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22060A908(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22060AE5C()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 1;
  sub_22045E8CC();
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298FD8 = result;
  return result;
}

uint64_t static Settings.ChartOptions.showYTD.getter()
{
  if (qword_281298FD0 != -1)
  {
    swift_once();
  }
}

void sub_22060B080(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a2;
  v28 = sub_220889A4C();
  v27[0] = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22060B420();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220886E8C();
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v19 + 16))(v27 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_220886E6C();
    v21 = sub_2208871CC();
    v23 = v22;

    if (!v3)
    {
      sub_22060B4B4(&qword_2812983C8, MEMORY[0x277D68980]);
      v24 = v28;
      sub_22088827C();
      sub_220457EE8(v21, v23);
      (*(v27[0] + 32))(a3, v8, v24);
      v25 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
    }
  }

  else
  {
    v26 = type metadata accessor for EngagementEvent();
    (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
  }
}

void sub_22060B420()
{
  if (!qword_281298C28)
  {
    sub_220889A5C();
    sub_22060B4B4(&qword_2812983C0, MEMORY[0x277D68990]);
    v0 = sub_220886E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298C28);
    }
  }
}

uint64_t sub_22060B4B4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22060B4FC(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_22088B8CC();
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v50 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_22088DDFC();
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v53 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088C5AC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088C3CC();
  swift_beginAccess();
  v25 = *(v5 + 16);
  v24 = *(v5 + 17);
  v26 = __swift_project_boxed_opaque_existential_1(v6 + 13, *(v6 + 16));
  v27 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v26, v26);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v30, v28);
  v31 = (*(*(v24 + 16) + 112))(v25);
  (*(v27 + 8))(v30, v25);
  [v23 setBackgroundColor_];

  v32 = sub_22088C3CC();
  sub_22088C59C();

  v33 = sub_22088C3CC();
  (*(v19 + 104))(v22, *MEMORY[0x277D6DEE8], v18);
  sub_22088C5BC();

  v34 = sub_22088C3CC();
  v35 = v6[25];
  sub_22088C58C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = [Strong splitViewController];
    swift_unknownObjectRelease();
  }

  v38 = v53;
  sub_22088DDEC();
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D6EAA0];
  v41 = v55;
  v39[5] = v55;
  v39[6] = v40;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39 + 2);
  v43 = v54;
  (*(v54 + 16))(boxed_opaque_existential_1, v38, v41);
  v45 = v50;
  v44 = v51;
  *v50 = v39;
  (*(v44 + 104))(v45, *MEMORY[0x277D6D928], v52);
  sub_22088C41C();
  v46 = [objc_opt_self() effectWithRoundedRect:*MEMORY[0x277CDA138] cornerRadius:a2 curve:{a3, a4, a5, v35}];
  v47 = sub_22088C42C();
  [v46 setReferenceView_];

  [a1 setFocusEffect_];
  return (*(v43 + 8))(v38, v41);
}

void sub_22060B9D0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;

        v4 = *(*(v3 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
        ObjectType = swift_getObjectType();
        (*(v4 + 56))(ObjectType, v4);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_22060BAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  sub_22046B36C();
  v74 = v4;
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v73 = v6;
  v72 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208854AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v64 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v17 = MEMORY[0x277D84F90];
  v79 = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v80 = v20;
        v89 = v17;
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v67 = objc_opt_self();
        v68 = ObjCClassFromMetadata;
        v22 = [v67 bundleForClass_];
        v81 = sub_220884CAC();

        v23 = swift_allocObject();
        swift_weakInit();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v19;
        v25 = objc_allocWithZone(MEMORY[0x277D75088]);

        v82 = v19;
        v26 = sub_22089132C();

        v87 = sub_22060CC7C;
        v88 = v24;
        aBlock = MEMORY[0x277D85DD0];
        v84 = 1107296256;
        v66 = &v85;
        v85 = sub_22060CBAC;
        v86 = &block_descriptor_17;
        v27 = _Block_copy(&aBlock);
        v28 = [v25 initWithName:v26 actionHandler:v27];

        _Block_release(v27);

        v29 = v28;
        MEMORY[0x223D89870]();
        if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_22:
          sub_22089177C();
        }

        v64[0] = v29;
        sub_22089179C();
        v30 = 0;
        v31 = 0;
        v17 = v89;
        v32 = (v8 + 8);
        v64[2] = 0x80000002208C6520;
        v64[1] = 0x80000002208C6560;
        v64[4] = (v76 + 16);
        v64[3] = (v76 + 32);
        v71 = v7;
        v70 = v15;
        v33 = v80;
        v69 = v11;
        v65 = (v8 + 8);
        do
        {
          LODWORD(v35) = v30;
          v8 = *(&unk_283410EC0 + v31 + 32);
          v36 = [v33 indexPathForCell_];
          if (v36)
          {
            v37 = v36;
            sub_22088545C();

            v38 = sub_22088547C();
            v39 = -1;
            if (!v8)
            {
              v39 = 1;
            }

            v29 = (v38 + v39);
            if (__OFADD__(v38, v39))
            {
              __break(1u);
              goto LABEL_22;
            }

            v40 = sub_22088549C();
            MEMORY[0x223D7D610](v29, v40);
            if (sub_22088547C() < 0)
            {
              v34 = *v32;
              (*v32)(v11, v7);
              v34(v15, v7);
            }

            else
            {
              v41 = sub_22088547C();
              v42 = [v33 numberOfItemsInSection_];
              LODWORD(v81) = v35;
              v35 = *v32;
              (*v32)(v11, v7);
              v35(v15, v7);
              LOBYTE(v35) = v81;
              if (v41 < v42)
              {
                v43 = [v67 bundleForClass_];
                v77 = sub_220884CAC();
                v78 = v44;

                v45 = [objc_opt_self() configurationWithPointSize_];
                v46 = sub_22089132C();
                v47 = [objc_opt_self() systemImageNamed:v46 withConfiguration:v45];

                v48 = swift_allocObject();
                swift_weakInit();
                v49 = v76;
                v50 = v72;
                v51 = v74;
                (*(v76 + 16))(v72, v75, v74);
                v52 = (*(v49 + 80) + 41) & ~*(v49 + 80);
                v53 = swift_allocObject();
                v54 = v80;
                *(v53 + 16) = v48;
                *(v53 + 24) = v54;
                v55 = v82;
                *(v53 + 32) = v82;
                *(v53 + 40) = v8;
                (*(v49 + 32))(v53 + v52, v50, v51);
                v56 = objc_allocWithZone(MEMORY[0x277D75088]);
                v57 = v55;
                v58 = v47;

                v59 = v54;
                v60 = sub_22089132C();

                v87 = sub_22060CC84;
                v88 = v53;
                aBlock = MEMORY[0x277D85DD0];
                v84 = 1107296256;
                v85 = sub_22060CBAC;
                v86 = &block_descriptor_69;
                v61 = _Block_copy(&aBlock);
                v62 = [v56 initWithName:v60 image:v58 actionHandler:v61];

                _Block_release(v61);

                v35 = v62;
                MEMORY[0x223D89870]();
                if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_22089177C();
                }

                sub_22089179C();

                v17 = v89;
                v7 = v71;
                v15 = v70;
                v33 = v80;
                v11 = v69;
                v32 = v65;
                LOBYTE(v35) = v81;
              }
            }
          }

          v30 = 1;
          v31 = 1u;
        }

        while ((v35 & 1) == 0);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return v17;
}

uint64_t sub_22060C4E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        v2 = *(*(Strong + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
        ObjectType = swift_getObjectType();
        (*(v2 + 56))(ObjectType, v2);
        swift_unknownObjectRelease();

        return 1;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_22060C5D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v31 = a5;
  v9 = sub_2208854AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v30 = a6;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    return 0;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v24 = [a3 indexPathForCell_];
  if (!v24)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  v25 = v24;
  sub_22088545C();

  (*(v10 + 32))(v21, v17, v9);
  result = sub_22088547C();
  v26 = -1;
  if ((v31 & 1) == 0)
  {
    v26 = 1;
  }

  v27 = result + v26;
  if (__OFADD__(result, v26))
  {
    __break(1u);
  }

  else
  {
    v28 = sub_22088549C();
    MEMORY[0x223D7D610](v27, v28);
    sub_220767638(v30, v21, v13);
    swift_unknownObjectRelease();

    v29 = *(v10 + 8);
    v29(v13, v9);
    v29(v21, v9);
    return 1;
  }

  return result;
}

uint64_t sub_22060C850()
{
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_220886A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1((result + 160), *(result + 184));
    sub_2208863EC();
    swift_getObjectType();
    if (qword_281297010 != -1)
    {
      swift_once();
    }

    (*(v5 + 16))(v3, v8, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_22088B81C();
    sub_2204D6128(v3, sub_2204961E0);
    (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_22060CA88()
{
  sub_22054B9F8(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  return v0;
}

uint64_t sub_22060CAE8()
{
  sub_22060CA88();

  return swift_deallocClassInstance();
}

uint64_t sub_22060CBAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_22060CC14()
{
  sub_22046B36C();
  v2 = *(v1 - 8);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_22060BAD0(v3, v4, v5, v6);
}

uint64_t sub_22060CC84(uint64_t a1)
{
  sub_22046B36C();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v1 + ((*(*(v3 - 8) + 80) + 41) & ~*(*(v3 - 8) + 80));

  return sub_22060C5D8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22060CD08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for StocksV2UserActivityDeserializer();
    result = sub_2208884CC();
    if (result)
    {
      v3 = result;
      type metadata accessor for StocksShortcutItemHandler();
      v4 = swift_allocObject();
      sub_22060CFA8();
      sub_22088CF8C();
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_220899360;
      sub_22088CF7C();
      *(v4 + 16) = v5;
      type metadata accessor for StocksActivity(0);
      sub_22060D000(&unk_281297EC0, sub_2204549FC);
      sub_22088AC3C();
      *(v4 + OBJC_IVAR____TtC8StocksUI25StocksShortcutItemHandler_userActivityDeserializer) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22060CEE0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v2 = type metadata accessor for StocksShortcutItemHandler();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_22060D000(&qword_27CF579F8, type metadata accessor for StocksShortcutItemHandler);
    v5[0] = v4;
    sub_22088CF5C();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22060CFA8()
{
  if (!qword_27CF57A00)
  {
    sub_22088CF8C();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57A00);
    }
  }
}

uint64_t sub_22060D000(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_22060D048(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22089266C();

    if (v4)
    {
      sub_22044D56C(0, &qword_27CF57A08);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_2205CE178(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_22060D10C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v102 = a8;
  v100 = a7;
  v108 = a6;
  v94 = a5;
  v103 = a4;
  v99 = a3;
  v98 = a2;
  v97 = a1;
  v12 = MEMORY[0x277D83D88];
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v104 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v105 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v15;
  MEMORY[0x28223BE20](v16, v17);
  v106 = &v90 - v18;
  v96 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v96, v19);
  v107 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for CampaignRouteModel();
  MEMORY[0x28223BE20](v95, v21);
  v109 = (&v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = sub_220887FAC();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v23);
  v110 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x277CC9260];
  sub_220447980(0, &qword_2812994E0, MEMORY[0x277CC9260], v12);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v90 - v28;
  v30 = sub_220884E9C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447980(0, &qword_281298210, MEMORY[0x277D35078], v12);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v90 - v37;
  sub_2206102D8(a10, v29, &qword_2812994E0, v25, v12, sub_220447980);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_22061034C(v29, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_220447980);
    v39 = sub_22088A47C();
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  }

  else
  {
    v40 = *(v31 + 32);
    v40(v34, v29, v30);
    v40(v38, v34, v30);
    v41 = *MEMORY[0x277D35070];
    v42 = sub_22088A47C();
    v43 = *(v42 - 8);
    (*(v43 + 104))(v38, v41, v42);
    (*(v43 + 56))(v38, 0, 1, v42);
  }

  result = [*(v11 + 64) configuration];
  if (result)
  {
    v45 = result;
    if ([result respondsToSelector_])
    {
      v46 = [v45 paidBundleConfig];
      swift_unknownObjectRelease();
      v47 = [v46 paywallConfigurationsByType];
      if (v47 && (v48 = v47, sub_22044D56C(0, &qword_28127E470), sub_22044D56C(0, &qword_27CF57A08), sub_2206101A8(), v49 = sub_22089126C(), v48, v50 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_], v51 = sub_22060D048(v50, v49), v50, , v51))
      {
        v52 = [v51 subscriptionButtonConfig];
        if (v52)
        {
          v91 = v51;
          v90 = v52;
          v53 = [v52 shouldDismissLandingPagePostPurchase];
          v54 = *MEMORY[0x277D301F8];
          v55 = sub_220887F9C();
          v56 = v110;
          (*(*(v55 - 8) + 104))(v110, v54, v55);
          v57 = MEMORY[0x277D30208];
          if (!v53)
          {
            v57 = MEMORY[0x277D30200];
          }

          (*(v111 + 104))(v56, *v57, v112);
          if (v108)
          {
            sub_220447980(0, &qword_27CF56DD8, MEMORY[0x277D34E10], MEMORY[0x277D84560]);
            v58 = *(sub_22088A20C() - 8);
            v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
            v60 = v108;
            v61 = swift_allocObject();
            *(v61 + 16) = xmmword_220899360;
            v62 = v61 + v59;
            *v62 = v94;
            *(v62 + 8) = v60;
            *(v62 + 32) = 0u;
            *(v62 + 48) = 0u;
            *(v62 + 16) = 0u;
            (*(v58 + 104))();
          }

          else
          {
            v61 = MEMORY[0x277D84F90];
          }

          v63 = v103;
          v64 = HIBYTE(v98) & 0xF;
          v65 = v97;
          if ((v98 & 0x2000000000000000) == 0)
          {
            v64 = v97 & 0xFFFFFFFFFFFFLL;
          }

          v92 = v46;
          if (v64)
          {
          }

          else
          {
            v65 = 0;
            v66 = 0;
          }

          v67 = v95;
          v68 = v109;
          (*(v111 + 16))(v109 + *(v95 + 20), v110, v112);

          v69 = sub_220891AAC();
          sub_2206102D8(v38, v68 + v67[10], &qword_281298210, MEMORY[0x277D35078], MEMORY[0x277D83D88], sub_220447980);
          *(v68 + v67[11] + 8) = 0;
          v70 = swift_unknownObjectWeakInit();
          *v68 = v65;
          v68[1] = v66;
          v71 = (v68 + v67[6]);
          *v71 = v99;
          v71[1] = v63;
          v72 = (v68 + v67[7]);
          v73 = v102;
          *v72 = v100;
          v72[1] = v73;
          *(v68 + v67[8]) = v61;
          *(v68 + v67[9]) = v69;
          *(v70 + 8) = 0;
          swift_unknownObjectWeakAssign();
          v74 = *(v11 + 56);
          v75 = v107;
          sub_220610210(v68, v107, type metadata accessor for CampaignRouteModel);
          swift_storeEnumTagMultiPayload();
          v76 = sub_22088969C();
          v77 = v106;
          (*(*(v76 - 8) + 56))(v106, 1, 1, v76);
          v121 = 0;
          memset(v120, 0, sizeof(v120));
          v119 = 0;
          memset(v118, 0, sizeof(v118));
          v117 = v74;
          sub_2206102D8(v118, &v113, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          v93 = v38;
          if (*(&v114 + 1))
          {
            sub_220458198(&v113, v115);

            v78 = sub_220597454(v115);
            v80 = v79;
            v82 = v81;
            __swift_destroy_boxed_opaque_existential_1(v115);
          }

          else
          {

            sub_22061034C(&v113, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
            if (qword_2812908F0 != -1)
            {
              swift_once();
            }

            v78 = qword_2812908F8;
            v80 = qword_281290900;
            v82 = qword_281290908;

            sub_2204A80F4(v80);
          }

          v114 = 0u;
          v113 = 0u;
          v83 = v105;
          sub_2206102D8(v77, v105, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
          sub_2206102D8(v120, v115, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
          v84 = (*(v104 + 80) + 24) & ~*(v104 + 80);
          v85 = (v101 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
          v86 = swift_allocObject();
          *(v86 + 16) = 0;
          sub_2205A0994(v83, v86 + v84);
          v87 = v86 + v85;
          v88 = v115[1];
          *v87 = v115[0];
          *(v87 + 16) = v88;
          *(v87 + 32) = v116;
          v89 = (v86 + ((v85 + 47) & 0xFFFFFFFFFFFFFFF8));
          *v89 = v78;
          v89[1] = v80;
          v89[2] = v82;

          sub_2204A80F4(v80);
          sub_2204549FC();
          sub_2204489A0(&unk_281297EC0, sub_2204549FC);
          sub_22088E92C();

          sub_2204DA45C(v80);
          sub_22061034C(v118, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          sub_22061034C(v120, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
          sub_22061034C(v77, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
          sub_220610278(v75, type metadata accessor for StocksActivity);
          sub_220610278(v109, type metadata accessor for CampaignRouteModel);
          (*(v111 + 8))(v110, v112);
          sub_22061034C(&v113, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
          v38 = v93;
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return sub_22061034C(v38, &qword_281298210, MEMORY[0x277D35078], MEMORY[0x277D83D88], sub_220447980);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22060E230(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v86 = a8;
  v85 = a7;
  v90 = a6;
  v80 = a5;
  v87 = a4;
  v84 = a3;
  v83 = a2;
  v82 = a1;
  v81 = a10;
  v93 = a9;
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v88 = *(v11 - 8);
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v14 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v91 = &v74 - v17;
  v18 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v18, v19);
  v89 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CampaignRouteModel();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220887FAC();
  v26 = *(v25 - 8);
  *&v28 = MEMORY[0x28223BE20](v25, v27).n128_u64[0];
  v92 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [*(v10 + 64) configuration];
  if (!v30)
  {
    __break(1u);
    return;
  }

  v31 = v30;
  if ([v30 respondsToSelector_])
  {
    v94 = [v31 paidBundleConfig];
    swift_unknownObjectRelease();
    v32 = [v94 paywallConfigurationsByType];
    if (v32 && (v33 = v32, v77 = v26, v78 = v25, sub_22044D56C(0, &qword_28127E470), sub_22044D56C(0, &qword_27CF57A08), sub_2206101A8(), v34 = sub_22089126C(), v33, v35 = objc_allocWithZone(MEMORY[0x277CCABB0]), v36 = [v35 initWithUnsignedInteger_], v79 = sub_22060D048(v36, v34), v36, , v79))
    {
      v37 = [v79 subscriptionButtonConfig];
      if (v37)
      {
        v76 = v37;
        v38 = [v37 shouldDismissLandingPagePostPurchase];
        v39 = *MEMORY[0x277D301F8];
        v40 = sub_220887F9C();
        v41 = v92;
        (*(*(v40 - 8) + 104))(v92, v39, v40);
        v42 = MEMORY[0x277D30208];
        if (!v38)
        {
          v42 = MEMORY[0x277D30200];
        }

        (*(v77 + 104))(v41, *v42, v78);
        if (v90)
        {
          sub_220447980(0, &qword_27CF56DD8, MEMORY[0x277D34E10], MEMORY[0x277D84560]);
          v43 = *(sub_22088A20C() - 8);
          v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
          v45 = v90;
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_220899360;
          v75 = v46;
          v47 = v46 + v44;
          *v47 = v80;
          *(v47 + 8) = v45;
          *(v47 + 32) = 0u;
          *(v47 + 48) = 0u;
          *(v47 + 16) = 0u;
          (*(v43 + 104))();
        }

        else
        {
          v75 = MEMORY[0x277D84F90];
        }

        v50 = v87;
        v51 = v83;
        v52 = HIBYTE(v83) & 0xF;
        v53 = v82;
        if ((v83 & 0x2000000000000000) == 0)
        {
          v52 = v82 & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {
        }

        else
        {
          v53 = 0;
          v51 = 0;
        }

        (*(v77 + 16))(&v24[v21[5]], v92, v78);

        v54 = sub_220891AAC();
        sub_2206102D8(v81, &v24[v21[10]], &qword_281298210, MEMORY[0x277D35078], MEMORY[0x277D83D88], sub_220447980);
        *&v24[v21[11] + 8] = 0;
        v55 = swift_unknownObjectWeakInit();
        *v24 = v53;
        *(v24 + 1) = v51;
        v56 = &v24[v21[6]];
        *v56 = v84;
        *(v56 + 1) = v50;
        v57 = &v24[v21[7]];
        v58 = v86;
        *v57 = v85;
        *(v57 + 1) = v58;
        *&v24[v21[8]] = v75;
        *&v24[v21[9]] = v54;
        *(v55 + 8) = 0;
        swift_unknownObjectWeakAssign();
        v59 = *(v10 + 56);
        v60 = v89;
        sub_220610210(v24, v89, type metadata accessor for CampaignRouteModel);
        swift_storeEnumTagMultiPayload();
        v61 = sub_22088969C();
        v62 = v91;
        (*(*(v61 - 8) + 56))(v91, 1, 1, v61);
        v104 = 0;
        memset(v103, 0, sizeof(v103));
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
        v99 = v59;
        sub_2206102D8(&v100, &v95, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        if (*(&v96 + 1))
        {
          sub_220458198(&v95, v97);

          v63 = sub_220597454(v97);
          v65 = v64;
          v67 = v66;
          __swift_destroy_boxed_opaque_existential_1(v97);
        }

        else
        {

          sub_22061034C(&v95, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
          if (qword_2812908F0 != -1)
          {
            swift_once();
          }

          v63 = qword_2812908F8;
          v65 = qword_281290900;
          v67 = qword_281290908;

          sub_2204A80F4(v65);
        }

        v96 = 0u;
        v95 = 0u;
        sub_2206102D8(v62, v14, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
        sub_2206102D8(v103, v97, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        v68 = (*(v88 + 80) + 24) & ~*(v88 + 80);
        v69 = (v12 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
        v70 = swift_allocObject();
        *(v70 + 16) = 0;
        sub_2205A0994(v14, v70 + v68);
        v71 = v70 + v69;
        v72 = v97[1];
        *v71 = v97[0];
        *(v71 + 16) = v72;
        *(v71 + 32) = v98;
        v73 = (v70 + ((v69 + 47) & 0xFFFFFFFFFFFFFFF8));
        *v73 = v63;
        v73[1] = v65;
        v73[2] = v67;

        sub_2204A80F4(v65);
        sub_2204549FC();
        sub_2204489A0(&unk_281297EC0, sub_2204549FC);
        sub_22088E92C();

        sub_2204DA45C(v65);
        sub_22061034C(&v100, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
        sub_22061034C(v103, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
        sub_22061034C(v91, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
        sub_220610278(v60, type metadata accessor for StocksActivity);
        sub_220610278(v24, type metadata accessor for CampaignRouteModel);
        (*(v77 + 8))(v92, v78);
        sub_22061034C(&v95, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
        return;
      }

      v48 = &v101 + 8;
    }

    else
    {
      v48 = &v105;
    }

    v49 = *(v48 - 32);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_22060F06C(uint64_t a1)
{
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v33[-v10];
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v1 + 56);
  sub_22061013C();
  v18 = *(v17 + 48);
  v19 = sub_220884E9C();
  (*(*(v19 - 8) + 16))(v15, a1, v19);
  v15[v18] = 0;
  swift_storeEnumTagMultiPayload();
  v20 = sub_22088969C();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = v16;
  sub_2206102D8(v39, &v34, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v35 + 1))
  {
    sub_220458198(&v34, v36);
    v21 = sub_220597454(v36);
    v23 = v22;
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    sub_22061034C(&v34, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v21 = qword_2812908F8;
    v23 = qword_281290900;
    v25 = qword_281290908;

    sub_2204A80F4(v23);
  }

  v35 = 0u;
  v34 = 0u;
  sub_2206102D8(v11, v7, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
  sub_2206102D8(v41, v36, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v26 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v27 = (v5 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  sub_2205A0994(v7, v28 + v26);
  v29 = v28 + v27;
  v30 = v36[1];
  *v29 = v36[0];
  *(v29 + 16) = v30;
  *(v29 + 32) = v37;
  v31 = (v28 + ((v27 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v31 = v21;
  v31[1] = v23;
  v31[2] = v25;

  sub_2204A80F4(v23);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v23);
  sub_22061034C(v39, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_22061034C(v41, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_22061034C(v11, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
  sub_220610278(v15, type metadata accessor for StocksActivity);
  return sub_22061034C(&v34, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_22060F7AC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PreBuyFlowRouteModel();
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 + 28);
  v23 = sub_22088A1EC();
  (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
  v24 = *(v18 + 32);
  v25 = v12;
  v26 = sub_22088A2FC();
  (*(*(v26 - 8) + 16))(&v21[v24], a3, v26);
  *v21 = a1;
  v27 = *(v47 + 7);
  v47 = v21;
  sub_220610210(v21, v16, type metadata accessor for PreBuyFlowRouteModel);
  swift_storeEnumTagMultiPayload();
  v28 = sub_22088969C();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v52 = v27;
  sub_2206102D8(v53, &v48, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v49 + 1))
  {
    sub_220458198(&v48, v50);
    v29 = a1;
    v30 = sub_220597454(v50);
    v32 = v31;
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    v35 = a1;
    sub_22061034C(&v48, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v30 = qword_2812908F8;
    v32 = qword_281290900;
    v34 = qword_281290908;

    sub_2204A80F4(v32);
  }

  v49 = 0u;
  v48 = 0u;
  v36 = v12;
  v37 = v46;
  sub_2206102D8(v36, v46, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
  sub_2206102D8(v55, v50, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v38 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v39 = (v7 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  sub_2205A0994(v37, v40 + v38);
  v41 = v40 + v39;
  v42 = v50[1];
  *v41 = v50[0];
  *(v41 + 16) = v42;
  *(v41 + 32) = v51;
  v43 = (v40 + ((v39 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v43 = v30;
  v43[1] = v32;
  v43[2] = v34;

  sub_2204A80F4(v32);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v32);
  sub_22061034C(v53, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_22061034C(v55, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_22061034C(v25, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447980);
  sub_220610278(v16, type metadata accessor for StocksActivity);
  sub_220610278(v47, type metadata accessor for PreBuyFlowRouteModel);
  return sub_22061034C(&v48, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_220610018()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_22061013C()
{
  if (!qword_2812994D0)
  {
    sub_220884E9C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812994D0);
    }
  }
}

unint64_t sub_2206101A8()
{
  result = qword_27CF57A10;
  if (!qword_27CF57A10)
  {
    sub_22044D56C(255, &qword_28127E470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57A10);
  }

  return result;
}

uint64_t sub_220610210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220610278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206102D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_22061034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t objectdestroyTm_5()
{
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220610538(uint64_t a1)
{
  sub_220447980(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

uint64_t type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier()
{
  result = qword_27CF57A18;
  if (!qword_27CF57A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220610694()
{
  result = sub_220886A4C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ManageWatchlistsContentMode(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220610728(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v85 = a3;
  v86 = a2;
  v87 = a1;
  v4 = sub_22088B64C();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220611104(0, &qword_27CF57A30, MEMORY[0x277D6DF88]);
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v68 - v9);
  v73 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v73, v11);
  v71 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220611104(0, &qword_27CF56C48, MEMORY[0x277D6EC60]);
  v14 = v13;
  v78 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v80 = &v68 - v16;
  sub_2206111C4();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC();
  v81 = *(v21 - 8);
  v82 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v72 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v79 = &v68 - v26;
  sub_22061121C();
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220611104(0, &qword_27CF56B28, MEMORY[0x277D6D710]);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v34);
  v77 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v88 = &v68 - v38;
  v70 = type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier();
  v39 = *(v70 + 20);
  v40 = v3;
  sub_2208869BC();
  v89 = v14;
  v41 = v87;
  sub_22088E76C();

  v42 = v33;
  v43 = *(v33 + 48);
  v90 = v32;
  if (v43(v30, 1, v32) == 1)
  {
    sub_2206112E4(v30, sub_22061121C);
    sub_220611290();
    *v10 = swift_allocError();
    v45 = v83;
    v44 = v84;
    (*(v83 + 104))(v10, *MEMORY[0x277D6DF68], v84);
    v86(v10);
    return (*(v45 + 8))(v10, v44);
  }

  else
  {
    v69 = v10;
    v47 = v33;
    (*(v33 + 32))(v88, v30, v90);
    v48 = v40;
    sub_2208869BC();
    sub_22088E70C();

    if ((*(v81 + 48))(v20, 1, v82) == 1)
    {
      sub_2206112E4(v20, sub_2206111C4);
      sub_220611290();
      v49 = swift_allocError();
      v50 = v69;
      *v69 = v49;
      v52 = v83;
      v51 = v84;
      (*(v83 + 104))(v50, *MEMORY[0x277D6DF68], v84);
      v86(v50);
      (*(v52 + 8))(v50, v51);
      return (*(v42 + 8))(v88, v90);
    }

    else
    {
      (*(v81 + 32))(v79, v20, v82);
      (*(v78 + 16))(v80, v41, v89);
      (*(v42 + 16))(v77);
      v53 = type metadata accessor for WatchlistCellViewModel(0);
      v54 = *(v53 + 28);
      v55 = sub_220886A4C();
      v56 = v71;
      (*(*(v55 - 8) + 16))(&v71[v54], v48 + v39, v55);
      sub_220596A24(v48 + *(v70 + 24), &v56[*(v53 + 32)]);
      *v56 = sub_2208869BC();
      *(v56 + 1) = v57;
      *(v56 + 2) = sub_220886A0C();
      *(v56 + 3) = v58;
      v56[32] = 0;
      swift_storeEnumTagMultiPayload();
      sub_2206110BC(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
      v59 = v72;
      sub_22088AD7C();
      sub_22088B33C();
      sub_22088E75C();
      v61 = v74;
      v60 = v75;
      v62 = v76;
      (*(v75 + 104))(v74, *MEMORY[0x277D6D868], v76);
      sub_22055DF30();
      sub_220611344();
      v63 = v69;
      sub_22088C67C();
      (*(v60 + 8))(v61, v62);
      v86(v63);
      (*(v83 + 8))(v63, v84);
      v64 = v82;
      v65 = *(v81 + 8);
      v65(v59, v82);
      v66 = *(v47 + 8);
      v67 = v90;
      v66(v77, v90);
      (*(v78 + 8))(v80, v89);
      v65(v79, v64);
      return (v66)(v88, v67);
    }
  }
}

uint64_t sub_2206110BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220611104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ManageWatchlistsSectionDescriptor;
    v8[1] = type metadata accessor for ManageWatchlistsModel();
    v8[2] = sub_22055DF30();
    v8[3] = sub_2206110BC(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2206111C4()
{
  if (!qword_27CF57A38)
  {
    sub_22055DDDC();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57A38);
    }
  }
}

void sub_22061121C()
{
  if (!qword_27CF57A40)
  {
    sub_220611104(255, &qword_27CF56B28, MEMORY[0x277D6D710]);
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57A40);
    }
  }
}

unint64_t sub_220611290()
{
  result = qword_27CF57A48;
  if (!qword_27CF57A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57A48);
  }

  return result;
}

uint64_t sub_2206112E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_220611344()
{
  result = qword_27CF57A50;
  if (!qword_27CF57A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57A50);
  }

  return result;
}

unint64_t sub_2206113AC()
{
  result = qword_27CF57A58;
  if (!qword_27CF57A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57A58);
  }

  return result;
}

id sub_220611400(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22088516C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 80);
  v13 = [v12 horizontalSizeClass];
  if (v13 >= 2)
  {
    if (v13 == 2)
    {
      [a2 setHidden_];
    }

    return [a2 setFrame_];
  }

  else
  {
    v29 = v7;
    [a2 setHidden_];
    v14 = *(a1 + 8);
    [a2 setFrame_];
    [a2 setHeight_];
    v15 = *&a2[OBJC_IVAR____TtC8StocksUI12MastheadView_appNameLabel];
    [v15 setFrame_];
    swift_beginAccess();
    sub_22046DA2C(v3 + 16, v30);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    if (qword_2812946D0 != -1)
    {
      swift_once();
    }

    v17 = qword_2812946D8;
    v16 = unk_2812946E0;

    v18 = sub_2204A5AE0(v17, v16, v12);

    [v15 setAttributedText_];

    __swift_destroy_boxed_opaque_existential_1(v30);
    v19 = *&a2[OBJC_IVAR____TtC8StocksUI12MastheadView_dateLabel];
    [v19 setFrame_];
    sub_22046DA2C(v3 + 16, v30);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    if (qword_2812946E8 != -1)
    {
      swift_once();
    }

    v20 = qword_2812946F0;
    if (qword_2812946F0)
    {
      sub_22088515C();
      v21 = sub_22088509C();
      (*(v29 + 8))(v11, v6);
      v22 = [v20 stringFromDate_];

      v20 = sub_22089136C();
      v24 = v23;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v26 = sub_2204A65AC(v20, v24, v12);

    [v19 setAttributedText_];

    __swift_destroy_boxed_opaque_existential_1(v30);
    v27 = [objc_opt_self() clearColor];
    [a2 setBackgroundColor_];

    return [v19 setNumberOfLines_];
  }
}

uint64_t sub_2206117FC()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220612A64(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0x64726163616C70;
      }

      else
      {
        return 0xD000000000000013;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x73676E696E726165;
    }

    else
    {
      return 7364967;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v6, v10, v2);
      v13 = sub_22088F1EC();
      (*(v3 + 8))(v6, v2);
      return v13;
    }

    else
    {
      return 0x7472616863;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = *v10;
    sub_220459628();
    sub_2205DCAD4(v10 + *(v15 + 64));
    return v14;
  }

  else
  {
    sub_220612AC8(v10, type metadata accessor for StockFeedMastheadModel);
    return 0x646165687473616DLL;
  }
}

uint64_t sub_220611A5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220612A64(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_2;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_220612AC8(v7, type metadata accessor for StockFeedMastheadModel);
LABEL_2:
    v9 = *MEMORY[0x277D33180];
    v10 = sub_22089018C();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  if (EnumCaseMultiPayload == 1)
  {

    sub_220459628();
    v13 = *(v12 + 64);
    v14 = *MEMORY[0x277D33158];
    v15 = sub_22089018C();
    (*(*(v15 - 8) + 104))(a1, v14, v15);
    return sub_2205DCAD4(&v7[v13]);
  }

  else
  {
    v16 = *MEMORY[0x277D33178];
    v17 = sub_22089018C();
    (*(*(v17 - 8) + 104))(a1, v16, v17);
    return sub_220612AC8(v7, type metadata accessor for StockFeedSectionDescriptor);
  }
}

uint64_t sub_220611C3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22088F23C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453C6C(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220612A64(v2, v20);
  result = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    goto LABEL_2;
  }

  if (!result)
  {
    result = sub_220612AC8(v20, type metadata accessor for StockFeedMastheadModel);
LABEL_2:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (result == 1)
  {

    sub_220459628();
    sub_2204FBAC4(&v20[*(v22 + 64)], v16);
    sub_22051E1E0(v16, v12);
    v23 = sub_22088F39C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v12, 1, v23) == 1)
    {
      sub_2205DCAD4(v16);
      result = sub_2205DCAD4(v12);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
    }

    else
    {
      v28 = MEMORY[0x277D31C48];
      *(a1 + 24) = v23;
      *(a1 + 32) = v28;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      (*(v24 + 32))(boxed_opaque_existential_1, v12, v23);
      return sub_2205DCAD4(v16);
    }
  }

  else
  {
    v25 = *(v5 + 32);
    v25(v8, v20, v4);
    v26 = MEMORY[0x277D31BA0];
    *(a1 + 24) = v4;
    *(a1 + 32) = v26;
    v27 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (v25)(v27, v8, v4);
  }

  return result;
}

uint64_t sub_220611F5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](v2, a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220612A64(v6, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        sub_220459628();
        sub_2205DCAD4(&v5[*(v8 + 64)]);
        goto LABEL_8;
      }

      v9 = type metadata accessor for StockFeedSectionDescriptor;
    }

    else
    {
      v9 = type metadata accessor for StockFeedMastheadModel;
    }

    sub_220612AC8(v5, v9);
  }

LABEL_8:
  v10 = *MEMORY[0x277D31EA0];
  v11 = sub_22088F4FC();
  return (*(*(v11 - 8) + 104))(a2, v10, v11);
}

uint64_t sub_2206120A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220612A64(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_2;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_220612AC8(v7, type metadata accessor for StockFeedMastheadModel);
LABEL_2:
    v9 = *MEMORY[0x277D2D3A0];
    v10 = sub_22088ECBC();
    return (*(*(v10 - 8) + 104))(a1, v9, v10);
  }

  if (EnumCaseMultiPayload == 1)
  {

    sub_220459628();
    v13 = *(v12 + 64);
    v14 = *MEMORY[0x277D2D3B0];
    v15 = sub_22088ECBC();
    (*(*(v15 - 8) + 104))(a1, v14, v15);
    return sub_2205DCAD4(&v7[v13]);
  }

  else
  {
    v16 = *MEMORY[0x277D2D398];
    v17 = sub_22088ECBC();
    (*(*(v17 - 8) + 104))(a1, v16, v17);
    return sub_220612AC8(v7, type metadata accessor for StockFeedSectionDescriptor);
  }
}

uint64_t sub_220612280()
{
  v1 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v1, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220612A64(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = type metadata accessor for StockFeedSectionDescriptor;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        sub_220459628();
        v8 = *(v7 + 64);
        v9 = MEMORY[0x277D322A0];
        sub_220453C6C(0, &qword_28127DFD0, MEMORY[0x277D322A0], MEMORY[0x277D84560]);
        sub_22088F8CC();
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_220899920;
        sub_22088F8AC();
        sub_22088F8BC();
        v12[1] = v10;
        sub_220612B8C();
        sub_220453C6C(0, &qword_28127EA48, v9, MEMORY[0x277D83940]);
        sub_220525D50();
        sub_2208923FC();
        return sub_2205DCAD4(&v4[v8]);
      }
    }

    else
    {
      v6 = type metadata accessor for StockFeedMastheadModel;
    }

    sub_220612AC8(v4, v6);
  }

  return sub_22088F89C();
}

uint64_t sub_2206124C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088F23C();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v56 = &v56 - v9;
  v10 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v56 - v16;
  v18 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = (&v56 - v24);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v56 - v28;
  sub_220612A00();
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = &v33[*(v34 + 56)];
  sub_220612A64(a1, v33);
  sub_220612A64(a2, v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v47 = swift_getEnumCaseMultiPayload();
        v45 = type metadata accessor for StockFeedSectionDescriptor;
        if (v47 != 3)
        {
          goto LABEL_26;
        }

        break;
      case 4:
        v54 = swift_getEnumCaseMultiPayload();
        v45 = type metadata accessor for StockFeedSectionDescriptor;
        if (v54 != 4)
        {
          goto LABEL_26;
        }

        break;
      case 6:
        v46 = swift_getEnumCaseMultiPayload();
        v45 = type metadata accessor for StockFeedSectionDescriptor;
        if (v46 != 6)
        {
          goto LABEL_26;
        }

        break;
      default:
        goto LABEL_26;
    }

    v43 = 1;
    goto LABEL_27;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_220612A64(v33, v29);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_220612B28(v29, v17);
      sub_220612B28(v35, v13);
      v43 = sub_2207557B0(v17, v13);
      sub_220612AC8(v13, type metadata accessor for StockFeedMastheadModel);
      sub_220612AC8(v17, type metadata accessor for StockFeedMastheadModel);
      v45 = type metadata accessor for StockFeedSectionDescriptor;
      goto LABEL_27;
    }

    sub_220612AC8(v29, type metadata accessor for StockFeedMastheadModel);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_220612A64(v33, v21);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v37 = v58;
        v38 = *(v58 + 32);
        v39 = v56;
        v40 = v21;
        v41 = v59;
        v38(v56, v40, v59);
        v42 = v57;
        v38(v57, v35, v41);
        v43 = sub_22088F21C();
        v44 = *(v37 + 8);
        v44(v42, v41);
        v44(v39, v41);
        v45 = type metadata accessor for StockFeedSectionDescriptor;
        goto LABEL_27;
      }

      (*(v58 + 8))(v21, v59);
    }

LABEL_26:
    v43 = 0;
    v45 = sub_220612A00;
    goto LABEL_27;
  }

  sub_220612A64(v33, v25);
  v48 = *v25;
  v49 = v25[1];
  sub_220459628();
  v51 = v50;
  v52 = *(v50 + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2205DCAD4(v25 + v52);

    goto LABEL_26;
  }

  if (v48 == *v35 && v49 == *(v35 + 1))
  {
    v43 = 1;
  }

  else
  {
    v43 = sub_2208928BC();
  }

  sub_2205DCAD4(&v35[*(v51 + 64)]);
  sub_2205DCAD4(v25 + v52);
  v45 = type metadata accessor for StockFeedSectionDescriptor;
LABEL_27:
  sub_220612AC8(v33, v45);
  return v43 & 1;
}

void sub_220612A00()
{
  if (!qword_281288B50[0])
  {
    type metadata accessor for StockFeedSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_281288B50);
    }
  }
}

uint64_t sub_220612A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220612AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220612B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedMastheadModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_220612B8C()
{
  result = qword_281296B08;
  if (!qword_281296B08)
  {
    sub_22088F8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281296B08);
  }

  return result;
}

uint64_t NeverShowBilingualFeedPromptAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t NeverShowBilingualFeedPromptAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t NeverShowBilingualFeedPromptAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD08];
  v3 = sub_22088C07C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t NeverShowBilingualFeedPromptAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t NeverShowBilingualFeedPromptAlert.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_220612FD4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_22061308C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_22061315C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &unk_2812981D8);
    sub_2208884DC();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &unk_281298250);
    result = sub_2208884DC();
    if (v18)
    {
      v6 = type metadata accessor for PaywallTracker();
      v7 = swift_allocObject();
      v8 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_feedData;
      v9 = sub_220889FEC();
      (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
      v10 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_groupData;
      v11 = sub_22088A0DC();
      (*(*(v11 - 8) + 56))(&v7[v10], 1, 1, v11);
      v12 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_articleData;
      v13 = sub_2208895EC();
      (*(*(v13 - 8) + 56))(&v7[v12], 1, 1, v13);
      v14 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_campaignData;
      v15 = sub_22088931C();
      (*(*(v15 - 8) + 56))(&v7[v14], 1, 1, v15);
      v16 = OBJC_IVAR____TtC8StocksUI14PaywallTracker_adReferralData;
      v17 = sub_2208894CC();
      (*(*(v17 - 8) + 56))(&v7[v16], 1, 1, v17);
      *(v7 + 2) = v5;
      *(v7 + 3) = v20;
      *(v7 + 4) = v21;
      *(v7 + 5) = v18;
      *(v7 + 6) = v19;
      a2[3] = v6;
      result = sub_22045E6DC(&qword_281294250, type metadata accessor for PaywallTracker);
      a2[4] = result;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220613448@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22046DA2C(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &unk_281299150);
    result = sub_2208884DC();
    if (v8)
    {
      v6 = type metadata accessor for PaywallRouter();
      v7 = swift_allocObject();
      sub_220457328(v10, (v7 + 2));
      v7[7] = v5;
      v7[8] = v8;
      v7[9] = v9;
      a2[3] = v6;
      result = sub_22045E6DC(qword_281294610, type metadata accessor for PaywallRouter);
      a2[4] = result;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220613684(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2206136CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = type metadata accessor for ManageWatchlistsLayoutSectionDescriptor();
  MEMORY[0x28223BE20](v5, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088C50C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C4FC();
  sub_22055DE74();
  sub_22088B2AC();
  v14 = v20;
  (*(v10 + 16))(v8, v13, v9);
  v15 = swift_storeEnumTagMultiPayload();
  MEMORY[0x28223BE20](v15, v16);
  v19[-2] = a1;
  v19[-1] = a2;
  if (v14)
  {
    v17 = sub_220614414;
  }

  else
  {
    v17 = sub_220614430;
  }

  sub_2205573C4(v17, &v19[-4]);
  type metadata accessor for ManageWatchlistsLayoutModel();
  sub_220613684(&qword_27CF56C40, type metadata accessor for ManageWatchlistsLayoutSectionDescriptor);
  sub_220613684(&qword_27CF56B18, type metadata accessor for ManageWatchlistsLayoutModel);
  sub_22088C33C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_220613980@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for WatchlistCellViewLayoutOptions();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ManageWatchlistsLayoutModel();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC();
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_22055DD44();
    (*(*(v32 - 8) + 56))(v34, 1, 1, v32);
    return sub_22061451C(v20, type metadata accessor for ManageWatchlistsModel);
  }

  else
  {
    sub_22061444C(v20, v16, type metadata accessor for WatchlistCellViewModel);
    sub_22057B014();
    v22 = &v12[*(v21 + 48)];
    sub_2206144B4(v16, v12, type metadata accessor for WatchlistCellViewModel);
    __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
    v23 = sub_22088C32C();
    (*(*(v23 - 8) + 16))(v8, a2, v23);
    sub_2205ABC74(*&v16, *&v8, v35);
    sub_22061451C(v8, type metadata accessor for WatchlistCellViewLayoutOptions);
    v24 = v35[9];
    *(v22 + 8) = v35[8];
    *(v22 + 9) = v24;
    *(v22 + 20) = v36;
    v25 = v35[5];
    *(v22 + 4) = v35[4];
    *(v22 + 5) = v25;
    v26 = v35[7];
    *(v22 + 6) = v35[6];
    *(v22 + 7) = v26;
    v27 = v35[1];
    *v22 = v35[0];
    *(v22 + 1) = v27;
    v28 = v35[3];
    *(v22 + 2) = v35[2];
    *(v22 + 3) = v28;
    swift_storeEnumTagMultiPayload();
    sub_220613684(&qword_27CF56B18, type metadata accessor for ManageWatchlistsLayoutModel);
    v29 = v34;
    sub_22088BC2C();
    sub_22061451C(v16, type metadata accessor for WatchlistCellViewModel);
    sub_22055DD44();
    return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }
}

uint64_t sub_220613E38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a2;
  WatchlistViewLayoutOptions = type metadata accessor for CreateWatchlistViewLayoutOptions();
  MEMORY[0x28223BE20](WatchlistViewLayoutOptions - 8, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ManageWatchlistsLayoutModel();
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  WatchlistViewModel = type metadata accessor for CreateWatchlistViewModel();
  MEMORY[0x28223BE20](WatchlistViewModel - 8, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC();
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_22061444C(v20, v16, type metadata accessor for CreateWatchlistViewModel);
    sub_22057AE3C();
    v22 = *(v21 + 48);
    sub_2206144B4(v16, v12, type metadata accessor for CreateWatchlistViewModel);
    __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
    v23 = sub_22088C32C();
    (*(*(v23 - 8) + 16))(v8, v28, v23);
    sub_22078E398(&v12[v22]);
    sub_22061451C(v8, type metadata accessor for CreateWatchlistViewLayoutOptions);
    swift_storeEnumTagMultiPayload();
    sub_220613684(&qword_27CF56B18, type metadata accessor for ManageWatchlistsLayoutModel);
    sub_22088BC2C();
    sub_22061451C(v16, type metadata accessor for CreateWatchlistViewModel);
    sub_22055DD44();
    return (*(*(v24 - 8) + 56))(a3, 0, 1, v24);
  }

  else
  {
    sub_22055DD44();
    (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
    return sub_22061451C(v20, type metadata accessor for ManageWatchlistsModel);
  }
}

uint64_t sub_2206141A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_22088C32C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_220614270, 0, 0);
}

uint64_t sub_220614270()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_22057320C(sub_2206143F4, v3);

  type metadata accessor for ManageWatchlistsLayoutSectionDescriptor();
  type metadata accessor for ManageWatchlistsLayoutModel();
  sub_220613684(&qword_27CF56C40, type metadata accessor for ManageWatchlistsLayoutSectionDescriptor);
  sub_220613684(&qword_27CF56B18, type metadata accessor for ManageWatchlistsLayoutModel);
  sub_22088B05C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22061444C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206144B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22061451C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206145DC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_22061462C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220887EFC();
  swift_allocObject();
  result = sub_220887EEC();
  v4 = MEMORY[0x277D300D8];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2206146AC()
{
  v0 = sub_220888D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208885EC();
  sub_2204446D4(0, &qword_28128A5C0);
  sub_220888BEC();

  sub_2208885EC();
  sub_2204446D4(0, qword_28128A5C8);
  sub_220888BEC();

  sub_2208885EC();
  sub_2204446D4(0, qword_28128E290);
  sub_220888BEC();

  (*(v1 + 104))(v4, *MEMORY[0x277D6CF10], v0);
  sub_2208882DC();

  (*(v1 + 8))(v4, v0);
  sub_2208885EC();
  sub_2204446D4(0, &qword_281298B20);
  sub_220888BEC();
}

uint64_t type metadata accessor for StockChartModel()
{
  result = qword_281292FE0;
  if (!qword_281292FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220614984()
{
  result = sub_22088685C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2206149F0()
{
  v0 = sub_22088699C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208867CC();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D69868])
  {
    sub_220886BCC();
    sub_220886BAC();
    if (qword_281298FD0 != -1)
    {
      swift_once();
    }

    sub_220886B9C();

    v5 = v35;
    sub_2206152D4();
    v6 = sub_2208854FC();
    v7 = *(v6 - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = (v7 + 104);
    v11 = 2 * v8;
    v12 = 3 * v8;
    v13 = 4 * v8;
    v14 = swift_allocObject();
    if (v5 == 1)
    {
      *(v14 + 16) = xmmword_2208A22A0;
      v15 = v14 + v9;
      v16 = *v10;
      (*v10)(v15, *MEMORY[0x277D69128], v6);
      v16(v15 + v8, *MEMORY[0x277D69138], v6);
      v16(v15 + v11, *MEMORY[0x277D69110], v6);
      v16(v15 + v12, *MEMORY[0x277D69158], v6);
      v16(v15 + v13, *MEMORY[0x277D69100], v6);
      v16(v15 + 5 * v8, *MEMORY[0x277D69130], v6);
      v16(v15 + 6 * v8, *MEMORY[0x277D69148], v6);
      v16(v15 + 7 * v8, *MEMORY[0x277D69150], v6);
      v16(v15 + 8 * v8, *MEMORY[0x277D69140], v6);
      v16(v15 + 9 * v8, *MEMORY[0x277D69118], v6);
    }

    else
    {
      *(v14 + 16) = xmmword_2208A22C0;
      v28 = v14 + v9;
      v29 = *v10;
      (*v10)(v28, *MEMORY[0x277D69128], v6);
      v29(v28 + v8, *MEMORY[0x277D69138], v6);
      v29(v28 + v11, *MEMORY[0x277D69110], v6);
      v29(v28 + v12, *MEMORY[0x277D69158], v6);
      v29(v28 + v13, *MEMORY[0x277D69130], v6);
      v29(v28 + 5 * v8, *MEMORY[0x277D69148], v6);
      v29(v28 + 6 * v8, *MEMORY[0x277D69150], v6);
      v29(v28 + 7 * v8, *MEMORY[0x277D69140], v6);
      v29(v28 + 8 * v8, *MEMORY[0x277D69118], v6);
    }
  }

  else
  {
    sub_220886BCC();
    sub_220886BAC();
    if (qword_281298FD0 != -1)
    {
      swift_once();
    }

    sub_220886B9C();

    v17 = v36;
    sub_2206152D4();
    v18 = sub_2208854FC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v22 = (v19 + 104);
    v23 = 2 * v20;
    v33 = 3 * v20;
    v34 = 4 * v20;
    v14 = swift_allocObject();
    if (v17 == 1)
    {
      *(v14 + 16) = xmmword_2208A22B0;
      v24 = v14 + v21;
      v25 = *v22;
      (*v22)(v24, *MEMORY[0x277D69120], v18);
      v25(v24 + v20, *MEMORY[0x277D69128], v18);
      v25(v24 + v23, *MEMORY[0x277D69138], v18);
      v25(v24 + v33, *MEMORY[0x277D69110], v18);
      v25(v24 + v34, *MEMORY[0x277D69158], v18);
      v25(v24 + 5 * v20, *MEMORY[0x277D69100], v18);
      v25(v24 + 6 * v20, *MEMORY[0x277D69130], v18);
      v25(v24 + 7 * v20, *MEMORY[0x277D69148], v18);
      v25(v24 + 8 * v20, *MEMORY[0x277D69150], v18);
      v25(v24 + 9 * v20, *MEMORY[0x277D69140], v18);
      v26 = v24 + 10 * v20;
      v27 = *MEMORY[0x277D69118];
    }

    else
    {
      *(v14 + 16) = xmmword_2208A22A0;
      v30 = v14 + v21;
      v25 = *v22;
      (*v22)(v30, *MEMORY[0x277D69120], v18);
      v25(v30 + v20, *MEMORY[0x277D69128], v18);
      v25(v30 + v23, *MEMORY[0x277D69138], v18);
      v25(v30 + v33, *MEMORY[0x277D69110], v18);
      v25(v30 + v34, *MEMORY[0x277D69158], v18);
      v25(v30 + 5 * v20, *MEMORY[0x277D69130], v18);
      v25(v30 + 6 * v20, *MEMORY[0x277D69148], v18);
      v25(v30 + 7 * v20, *MEMORY[0x277D69150], v18);
      v25(v30 + 8 * v20, *MEMORY[0x277D69140], v18);
      v27 = *MEMORY[0x277D69118];
      v26 = v30 + 9 * v20;
    }

    v25(v26, v27, v18);
    (*(v1 + 8))(v4, v0);
  }

  return v14;
}

void sub_2206152D4()
{
  if (!qword_28127E1C0)
  {
    sub_2208854FC();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E1C0);
    }
  }
}

uint64_t sub_22061532C(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = [objc_opt_self() sharedApplication];
    v5 = sub_220884E3C();
    sub_2205CE854(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_220448A30(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey);
    v6 = sub_22089125C();

    [v4 openURL:v5 options:v6 completionHandler:0];

    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2204446D4(0, qword_281286BC0);
  result = sub_2208884DC();
  if (*(&v11 + 1))
  {
    sub_220458198(&v10, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v7 = sub_220663D20(a1, &v10);
    sub_22061550C(&v10);
    if (v7)
    {
      sub_22055F760();
      v9 = sub_22088E0EC();
      v9(v7);
    }

    __swift_destroy_boxed_opaque_existential_1(v13);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_22061550C(uint64_t a1)
{
  sub_220615568();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220615568()
{
  if (!qword_27CF56B50)
  {
    sub_2204446D4(255, &qword_27CF58420);
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56B50);
    }
  }
}

uint64_t sub_220615640(uint64_t a1)
{
  v3 = type metadata accessor for StockFeedPage();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedViewerPage();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  sub_2205CC630(a1, v10);
  sub_220615770(v10, v6);
  __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
  v12 = sub_2205EF4CC(v6);
  sub_2206157D4(v6);
  sub_220615830(&unk_28128AF10, type metadata accessor for StockFeedViewController);
  return v12;
}

uint64_t sub_220615770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedPage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206157D4(uint64_t a1)
{
  v2 = type metadata accessor for StockFeedPage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220615830(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220615878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = a3;
  v109 = a2;
  v121 = a1;
  v117 = sub_220884E9C();
  v116 = *(v117 - 1);
  MEMORY[0x28223BE20](v117, v4);
  v110 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220617760(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v114 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v115 = &v101 - v11;
  sub_220617760(0, &qword_281298480, MEMORY[0x277D686D0]);
  v102 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v104 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v14;
  MEMORY[0x28223BE20](v15, v16);
  v111 = &v101 - v17;
  v108 = sub_22088CBBC();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v18);
  v106 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22088D1DC();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v20);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v112 = &v101 - v25;
  v26 = type metadata accessor for StocksActivity(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v113 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220617760(0, qword_281295190, type metadata accessor for StocksActivity);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v120 = &v101 - v36;
  sub_220617760(0, &unk_281295D30, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = &v101 - v39;
  v41 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v101 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v101 - v48;
  v50 = v121;
  v121 = v3;
  sub_220616958(v50, v40);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    v51 = &unk_281295D30;
    v52 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute;
    v53 = v40;
    return sub_220617CEC(v53, v51, v52);
  }

  sub_220617800(v40, v49, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  sub_220617868(v49, v45, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  v54 = v49;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v55 = &qword_2812994E0;
    v56 = MEMORY[0x277CC9260];
    v57 = v115;
    sub_220617BB0(v45, v115, &qword_2812994E0, MEMORY[0x277CC9260]);
    v58 = v114;
    sub_220617B44(v57, v114, &qword_2812994E0, v56);
    v59 = v116;
    v60 = v117;
    if (v116[6](v58, 1, v117) == 1)
    {
      v61 = MEMORY[0x277CC9260];
      sub_220617CEC(v57, &qword_2812994E0, MEMORY[0x277CC9260]);
      sub_2206178D0(v54, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
      v53 = v58;
LABEL_8:
      v51 = v55;
      v52 = v61;
      return sub_220617CEC(v53, v51, v52);
    }

    v65 = v110;
    v59[4](v110, v58, v60);
    v66 = [objc_opt_self() sharedApplication];
    v67 = sub_220884E3C();
    sub_2205CE854(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_220448A78(&qword_27CF57590, type metadata accessor for OpenExternalURLOptionsKey);
    v68 = sub_22089125C();

    [v66 openURL:v67 options:v68 completionHandler:0];

    (v59[1])(v65, v60);
    sub_220617CEC(v57, &qword_2812994E0, MEMORY[0x277CC9260]);
    return sub_2206178D0(v54, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  }

  else
  {
    v55 = qword_281295190;
    v62 = v45;
    v63 = v120;
    sub_220617BB0(v62, v120, qword_281295190, type metadata accessor for StocksActivity);
    sub_220617B44(v63, v33, qword_281295190, type metadata accessor for StocksActivity);
    if ((*(v27 + 48))(v33, 1, v26) == 1)
    {
      v61 = type metadata accessor for StocksActivity;
      sub_220617CEC(v63, qword_281295190, type metadata accessor for StocksActivity);
      sub_2206178D0(v49, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
      v53 = v33;
      goto LABEL_8;
    }

    v117 = v49;
    v69 = v33;
    v70 = v113;
    sub_220617800(v69, v113, type metadata accessor for StocksActivity);
    (*(v107 + 16))(v106, v109, v108);
    v71 = v112;
    sub_22088D1EC();
    v72 = v118;
    v73 = v119;
    (*(v118 + 16))(v22, v71, v119);
    v74 = (*(v72 + 88))(v22, v73);
    v75 = *MEMORY[0x277D6E598];
    v78 = *(v72 + 8);
    v76 = v72 + 8;
    v77 = v78;
    (v78)(v22, v73);
    v79 = v121;
    v80 = *(v121 + 56);
    if (v74 == v75)
    {
      v81 = sub_22088969C();
      v82 = v111;
      (*(*(v81 - 8) + 56))(v111, 1, 1, v81);
      sub_22046DA2C(v79 + 64, v130);
      v129 = 0;
      memset(v128, 0, sizeof(v128));
      v127 = v80;
      sub_220617A74(v128, &v122, &unk_281298970, &unk_281298980);
      v118 = v76;
      v116 = v77;
      if (v124)
      {
        sub_220457328(&v122, v125);
        v83 = sub_220597454(v125);
        v85 = v84;
        v87 = v86;
        __swift_destroy_boxed_opaque_existential_1(v125);
      }

      else
      {
        sub_220617AE4(&v122, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220447FB4);
        if (qword_2812908F0 != -1)
        {
          swift_once();
        }

        v83 = qword_2812908F8;
        v85 = qword_281290900;
        v87 = qword_281290908;

        sub_2204A80F4(v85);
      }

      v88 = v105;
      v121 = v87;
      v89 = v83;
      if (v105)
      {
        v90 = sub_22088731C();
        v91 = v88;
      }

      else
      {
        v91 = 0;
        v90 = 0;
        *(&v122 + 1) = 0;
        v123 = 0;
      }

      *&v122 = v91;
      v124 = v90;
      v92 = MEMORY[0x277D686D0];
      v93 = v104;
      sub_220617B44(v82, v104, &qword_281298480, MEMORY[0x277D686D0]);
      sub_220617A74(v130, v125, &unk_281296D10, &qword_281296D20);
      v94 = (*(v102 + 80) + 24) & ~*(v102 + 80);
      v95 = (v103 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      *(v96 + 16) = v88;
      sub_220617BB0(v93, v96 + v94, &qword_281298480, v92);
      v97 = v96 + v95;
      v98 = v125[1];
      *v97 = v125[0];
      *(v97 + 16) = v98;
      *(v97 + 32) = v126;
      v99 = (v96 + ((v95 + 47) & 0xFFFFFFFFFFFFFFF8));
      *v99 = v89;
      v99[1] = v85;
      v99[2] = v121;
      swift_retain_n();

      sub_2204A80F4(v85);
      sub_2204549FC();
      sub_220448A78(&unk_281297EC0, sub_2204549FC);
      v100 = v113;
      sub_22088E92C();

      sub_2204DA45C(v85);
      sub_220617AE4(v128, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220447FB4);
      sub_220617AE4(v130, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220447FB4);
      sub_220617CEC(v111, &qword_281298480, MEMORY[0x277D686D0]);
      (v116)(v112, v119);
      sub_2206178D0(v100, type metadata accessor for StocksActivity);
      sub_220617CEC(v120, qword_281295190, type metadata accessor for StocksActivity);
      sub_2206178D0(v117, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
      return sub_220617AE4(&v122, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    }

    else
    {
      sub_22088B01C();
      (v77)(v71, v119);
      sub_2206178D0(v70, type metadata accessor for StocksActivity);
      sub_220617CEC(v63, qword_281295190, type metadata accessor for StocksActivity);
      return sub_2206178D0(v117, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
    }
  }
}

uint64_t sub_220616958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_220617760(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v49 - v6;
  v8 = sub_22088822C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_2208876BC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_220887C9C();
  v14 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088744C();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v23, a1, v18, v21);
  v24 = (*(v19 + 88))(v23, v18);
  if (v24 == *MEMORY[0x277D2F9B0])
  {
    (*(v19 + 96))(v23, v18);
    v25 = *v23;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_22089254C();

    v52 = 0xD000000000000013;
    v53 = 0x80000002208C6A60;
    v26 = [v25 identifier];
    v27 = sub_22089136C();
    v29 = v28;

    MEMORY[0x223D89680](v27, v29);

    sub_220884E8C();

    swift_unknownObjectRelease();
    sub_220617BB0(v7, a2, &qword_2812994E0, MEMORY[0x277CC9260]);
    v30 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute();
LABEL_8:
    swift_storeEnumTagMultiPayload();
    return (*(*(v30 - 8) + 56))(a2, 0, 1, v30);
  }

  if (v24 == *MEMORY[0x277D2F9A8])
  {
    (*(v19 + 96))(v23, v18);
    sub_220617930(0, v31);
    v33 = v32[12];
    v34 = v32[16];
    v49 = *(v23 + v32[20] + 8);
    v35 = v14;
    v36 = *(v14 + 32);
    v37 = v50;
    v36(v17, v23 + v33, v50);
    sub_220457328((v23 + v34), &v52);
    swift_unknownObjectRetain();
    sub_2208881FC();
    sub_22046DA2C(&v52, v51);
    sub_220887E9C();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_220887E8C();
    sub_2208876AC();

    sub_2204481D8();
    v39 = *(v38 + 48);
    v40 = a2 + *(v38 + 64);
    sub_220617868(v13, a2, MEMORY[0x277D2FB40]);
    *v40 = 0u;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_2206178D0(v13, MEMORY[0x277D2FB40]);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    (*(v35 + 8))(v17, v37);
    *(a2 + v39) = 0;
LABEL_7:
    type metadata accessor for StocksActivity.Article(0);
    swift_storeEnumTagMultiPayload();
    v45 = type metadata accessor for StocksActivity(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v45 - 8) + 56))(a2, 0, 1, v45);
    v30 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute();
    goto LABEL_8;
  }

  if (v24 == *MEMORY[0x277D2F980])
  {
    (*(v19 + 96))(v23, v18);
    v41 = MEMORY[0x277D2FB40];
    sub_220617800(v23, v13, MEMORY[0x277D2FB40]);
    sub_2204481D8();
    v43 = *(v42 + 48);
    v44 = a2 + *(v42 + 64);
    sub_220617868(v13, a2, MEMORY[0x277D2FB40]);
    *v44 = 0u;
    *(v44 + 16) = 0u;
    *(v44 + 32) = 0;
    sub_2206178D0(v13, v41);
    *(a2 + v43) = 0;
    goto LABEL_7;
  }

  if (v24 == *MEMORY[0x277D2F990])
  {
    (*(v19 + 8))(v23, v18);
    v47 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute();
    return (*(*(v47 - 8) + 56))(a2, 1, 1, v47);
  }

  else
  {
    v48 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute();
    (*(*(v48 - 8) + 56))(a2, 1, 1, v48);
    return (*(v19 + 8))(v23, v18);
  }
}

uint64_t sub_220617068(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = type metadata accessor for StocksActivity(0);
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220617760(0, qword_281295190, type metadata accessor for StocksActivity);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v42 - v13;
  sub_220617760(0, &unk_281295D30, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v42 - v26;
  sub_220616958(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v28 = &unk_281295D30;
    v29 = type metadata accessor for StocksNewsArticlesRouter.ArticleRoute;
    v30 = v18;
LABEL_3:
    sub_220617CEC(v30, v28, v29);
    return 0;
  }

  sub_220617800(v18, v27, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  sub_220617868(v27, v23, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2206178D0(v27, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
    sub_2206178D0(v23, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
    return 0;
  }

  v32 = v23;
  v33 = v14;
  sub_220617BB0(v32, v14, qword_281295190, type metadata accessor for StocksActivity);
  sub_220617B44(v14, v10, qword_281295190, type metadata accessor for StocksActivity);
  if ((*(v44 + 48))(v10, 1, v4) == 1)
  {
    sub_220617CEC(v14, qword_281295190, type metadata accessor for StocksActivity);
    sub_2206178D0(v27, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
    v30 = v10;
    v28 = qword_281295190;
    v29 = type metadata accessor for StocksActivity;
    goto LABEL_3;
  }

  v34 = v43;
  sub_220617800(v10, v43, type metadata accessor for StocksActivity);
  v35 = *(v2 + 56);
  sub_22046DA2C(v2 + 64, v48);
  v47[4] = v35;
  v36 = v42;
  if (v42)
  {
    v37 = sub_22088731C();
    v38 = v36;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v47[1] = 0;
    v47[2] = 0;
  }

  v47[0] = v38;
  v47[3] = v37;
  sub_220617A74(v48, v45, &unk_281296D10, &qword_281296D20);
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  v40 = v45[1];
  *(v39 + 24) = v45[0];
  *(v39 + 40) = v40;
  *(v39 + 56) = v46;
  sub_2204549FC();
  sub_220448A78(&unk_281297EC0, sub_2204549FC);
  swift_retain_n();
  v41 = sub_22088E91C();

  sub_220617AE4(v48, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220447FB4);
  sub_2206178D0(v34, type metadata accessor for StocksActivity);
  sub_220617CEC(v33, qword_281295190, type metadata accessor for StocksActivity);
  sub_2206178D0(v27, type metadata accessor for StocksNewsArticlesRouter.ArticleRoute);
  sub_220617AE4(v47, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  return v41;
}

uint64_t sub_220617694()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

void sub_220617760(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for StocksNewsArticlesRouter.ArticleRoute()
{
  result = qword_281295D40;
  if (!qword_281295D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220617800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220617868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206178D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220617930(uint64_t a1, uint64_t a2)
{
  if (!qword_27CF57A68)
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_22044826C();
    sub_220887C9C();
    sub_220446A58(255, &qword_2812989F8);
    sub_220446A58(255, &qword_281298AA0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_27CF57A68);
    }
  }
}

uint64_t sub_220617A74(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_220447FB4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220617AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_220617B44(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_220617760(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220617BB0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_220617760(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220617C1C(uint64_t a1)
{
  sub_220617760(0, &qword_281298480, MEMORY[0x277D686D0]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

uint64_t sub_220617CEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220617760(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220617D48()
{
  sub_220617760(319, qword_281295190, type metadata accessor for StocksActivity);
  if (v0 <= 0x3F)
  {
    sub_220617760(319, &qword_2812994E0, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_220617DF4(uint64_t a1)
{
  sub_220458660(0, &qword_281294298);
  sub_220888FBC();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;

  v4 = sub_220888D9C();
  sub_22089066C();
  sub_220888E3C();

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;

  v6 = sub_220888D9C();
  sub_22052B704();
  sub_220888E3C();

  v7 = sub_220888D9C();
  v8 = sub_220888F0C();

  return v8;
}

uint64_t sub_220617FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a3;
  v120 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_22061A154(0, &qword_281296808, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v116 = v92 - v6;
  sub_22061A154(0, &unk_2812967D0, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v115 = v92 - v9;
  sub_22061A154(0, &qword_281296B18, sub_22044CF38, v3);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v112 = v92 - v12;
  v13 = sub_2208906EC();
  v118 = *(v13 - 8);
  v119 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v117 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22089039C();
  v125 = *(v16 - 8);
  v126 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v124 = v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for CuratedForYouFeedGroupConfigData() - 8;
  MEMORY[0x28223BE20](v121, v19);
  v114 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v113 = v92 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v109 = (v92 - v26);
  MEMORY[0x28223BE20](v27, v28);
  v106 = v92 - v29;
  v103 = sub_22088FD9C();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v30);
  v101 = (v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_22088FBAC();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v32);
  v98 = v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_22088FDCC();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v34);
  v95 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061A154(0, &qword_281296980, MEMORY[0x277D32C48], v3);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v94 = v92 - v38;
  v39 = sub_22088FFFC();
  MEMORY[0x28223BE20](v39 - 8, v40);
  v92[1] = v92 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061A154(0, &qword_2812967F8, MEMORY[0x277D33AA8], v3);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v93 = v92 - v44;
  v107 = sub_22089068C();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v45);
  v129 = v92 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_22088F44C();
  MEMORY[0x28223BE20](v47 - 8, v48);
  v92[0] = v92 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2208909AC();
  v122 = *(v50 - 8);
  v123 = v50;
  MEMORY[0x28223BE20](v50, v51);
  v127 = v92 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061A154(0, &qword_281296D50, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v53 - 8, v54);
  v56 = v92 - v55;
  v111 = sub_2208904CC();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v57);
  v59 = v92 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22088ECFC();
  (*(*(v60 - 8) + 56))(v56, 1, 1, v60);
  v61 = MEMORY[0x277D84F90];
  sub_22061A200(MEMORY[0x277D84F90], sub_22061A934);
  sub_22061A200(v61, sub_22061A934);
  sub_22061A314(v61, sub_22061A858);
  sub_22061A200(v61, sub_22061A7D0);
  sub_22061A314(v61, sub_22061A760);
  sub_22061A314(v61, sub_22061A6F0);
  sub_22061A428(v61);
  v108 = v59;
  sub_2208904BC();
  sub_22088FA3C();
  sub_2208909BC();
  sub_22088FA8C();
  v62 = OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_knobs;
  v128[3] = type metadata accessor for CuratedForYouFeedGroupKnobs();
  v128[4] = sub_22044DF88(&qword_281288618, type metadata accessor for CuratedForYouFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v128);
  v64 = v104;
  sub_22061A688(v104 + v62, boxed_opaque_existential_1, type metadata accessor for CuratedForYouFeedGroupKnobs);
  v65 = v93;
  sub_2208906FC();
  v66 = sub_22089070C();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  sub_22061A154(0, &qword_28127DFB0, MEMORY[0x277D33FB8], MEMORY[0x277D84560]);
  v67 = sub_2208909DC();
  v68 = *(v67 - 8);
  v69 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_220899360;
  (*(v68 + 104))(v70 + v69, *MEMORY[0x277D33FA8], v67);
  sub_2207E1AE4(v70);
  swift_setDeallocating();
  (*(v68 + 8))(v70 + v69, v67);
  swift_deallocClassInstance();
  v71 = sub_22088FEDC();
  (*(*(v71 - 8) + 56))(v94, 1, 1, v71);
  (*(v96 + 104))(v95, *MEMORY[0x277D329E0], v97);
  (*(v99 + 104))(v98, *MEMORY[0x277D32670], v100);
  (*(v102 + 104))(v101, *MEMORY[0x277D32840], v103);
  sub_22089067C();
  v72 = *(v64 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_formatService + 24);
  v102 = *(v64 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_formatService + 32);
  v103 = v72;
  v101 = __swift_project_boxed_opaque_existential_1((v64 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_formatService), v72);
  sub_22044CD9C();
  v73 = v106;
  sub_22088F48C();
  (*(v125 + 16))(v124, v73 + *(v121 + 28), v126);
  sub_22061AA58(v73, type metadata accessor for CuratedForYouFeedGroupConfigData);
  sub_22044CF38(0);
  (*(*(v74 - 8) + 56))(v112, 1, 1, v74);
  v75 = v109;
  sub_22088F48C();
  v106 = *v75;

  sub_22061AA58(v75, type metadata accessor for CuratedForYouFeedGroupConfigData);
  v77 = v122;
  v76 = v123;
  v78 = v115;
  (*(v122 + 16))(v115, v127, v123);
  (*(v77 + 56))(v78, 0, 1, v76);
  LOBYTE(v128[0]) = 2;
  sub_22044CFDC(0, &qword_2812967B8, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_2208909CC();
  v79 = v113;
  sub_22088F48C();
  sub_2207F268C();
  v80 = v79;
  v81 = v105;
  sub_22061AA58(v80, type metadata accessor for CuratedForYouFeedGroupConfigData);
  v82 = v114;
  sub_22088F48C();
  v83 = v82;
  v84 = v107;
  v85 = v116;
  sub_22061AA58(v83, type metadata accessor for CuratedForYouFeedGroupConfigData);
  (*(v81 + 16))(v85, v129, v84);
  (*(v81 + 56))(v85, 0, 1, v84);
  v86 = qword_281294340;
  *MEMORY[0x277D30BC8];
  if (v86 != -1)
  {
    swift_once();
  }

  qword_281294348;
  v87 = v117;
  sub_2208906DC();
  v88 = v124;
  v89 = v108;
  v90 = sub_22089051C();
  (*(v118 + 8))(v87, v119);
  (*(v125 + 8))(v88, v126);
  (*(v81 + 8))(v129, v84);
  (*(v122 + 8))(v127, v123);
  (*(v110 + 8))(v89, v111);
  return v90;
}

uint64_t sub_22061903C(void *a1)
{
  sub_22052B704();
  v41 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v40 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CuratedForYouFeedGroupConfigData();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v38 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for CuratedForYouFeedGroup() - 8;
  MEMORY[0x28223BE20](v39, v8);
  v37 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061A154(0, &qword_281296B70, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v35 = v32 - v12;
  v13 = sub_22088FB9C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v32[0] = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v36 = sub_22088F39C();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v18);
  v32[1] = *a1;
  v33 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044CD9C();

  sub_22088F47C();
  sub_22088F47C();
  sub_22044CF38(0);
  sub_22088F80C();
  sub_22088F7FC();
  sub_22088F81C();
  v20 = sub_22088F68C();
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  v21 = v33;
  sub_22088F35C();
  v22 = v34;
  v23 = v36;
  v24 = v37;
  v25 = v21;
  (*(v34 + 16))(v37, v21, v36);
  v26 = v38;
  sub_22088F48C();
  v28 = *v26;
  v27 = v26[1];

  sub_22061AA58(v26, type metadata accessor for CuratedForYouFeedGroupConfigData);
  v29 = (v24 + *(v39 + 28));
  *v29 = v28;
  v29[1] = v27;
  sub_22061A688(v24, v40, type metadata accessor for CuratedForYouFeedGroup);
  type metadata accessor for ForYouFeedGroup();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_22061A154(0, &qword_281298680, sub_22052B704, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v30 = sub_220888ECC();
  sub_22061AA58(v24, type metadata accessor for CuratedForYouFeedGroup);
  (*(v22 + 8))(v25, v23);
  return v30;
}

uint64_t sub_220619558()
{
  v0 = type metadata accessor for CuratedForYouFeedGroupConfigData();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[0] = 0x2064657461727543;
  v7[1] = 0xE900000000000028;
  sub_22044CD9C();
  sub_22088F48C();
  v4 = *v3;
  v5 = v3[1];

  sub_22061AA58(v3, type metadata accessor for CuratedForYouFeedGroupConfigData);
  MEMORY[0x223D89680](v4, v5);

  MEMORY[0x223D89680](41, 0xE100000000000000);
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  type metadata accessor for ForYouFeedGroup();
  sub_22044DF88(&qword_281293440, type metadata accessor for ForYouFeedGroup);
  sub_22088FA9C();
}

uint64_t sub_220619714()
{
  v1 = OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_config;
  sub_22044CD9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22061AA58(v0 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_knobs, type metadata accessor for CuratedForYouFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_formatService);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CuratedForYouFeedGroupEmitter()
{
  result = qword_281286820;
  if (!qword_281286820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220619838()
{
  sub_22044CD9C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CuratedForYouFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22061990C()
{
  sub_22061A9B8();
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_22061997C()
{
  v0 = type metadata accessor for CuratedForYouFeedGroupConfigData();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[0] = 0x2064657461727543;
  v7[1] = 0xE900000000000028;
  sub_22044CD9C();
  sub_22088F48C();
  v4 = *v3;
  v5 = v3[1];

  sub_22061AA58(v3, type metadata accessor for CuratedForYouFeedGroupConfigData);
  MEMORY[0x223D89680](v4, v5);

  MEMORY[0x223D89680](41, 0xE100000000000000);
  return v7[0];
}

uint64_t sub_220619A78@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_config;
  sub_22044CD9C();
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for ForYouFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_220619B0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for CuratedForYouFeedGroupKnobs();
  a1[4] = sub_22044DF88(&qword_281288610, type metadata accessor for CuratedForYouFeedGroupKnobs);
  a1[5] = sub_22044DF88(&qword_27CF57AF8, type metadata accessor for CuratedForYouFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22061A688(v3 + v4, boxed_opaque_existential_1, type metadata accessor for CuratedForYouFeedGroupKnobs);
}

uint64_t sub_220619C80@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CuratedForYouFeedGroupConfigData();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = 0x2064657461727543;
  v15 = 0xE900000000000028;
  sub_22044CD9C();
  sub_22088F48C();
  v6 = *v5;
  v7 = v5[1];

  sub_22061AA58(v5, type metadata accessor for CuratedForYouFeedGroupConfigData);
  MEMORY[0x223D89680](v6, v7);

  MEMORY[0x223D89680](41, 0xE100000000000000);
  sub_22061A154(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v9 = sub_22088F46C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_22052BDC4(inited);
  swift_setDeallocating();
  sub_22061AA58(inited + 32, sub_22052BFB4);
  sub_22061AA24(0);
  a1[3] = v11;
  a1[4] = sub_22044DF88(&qword_281298868, sub_22061AA24);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22088883C();
}

uint64_t sub_220619EC4()
{
  sub_22044DF88(&qword_281286840, type metadata accessor for CuratedForYouFeedGroupEmitter);

  return sub_22088882C();
}

uint64_t objectdestroyTm_6()
{

  return swift_deallocObject();
}

void sub_22061A154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_22061A200(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_2208926DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2204AF97C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22061A314(uint64_t a1, void (*a2)(void))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a2(0);
    v4 = sub_2208926DC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_2204AF97C(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22061A428(uint64_t a1)
{
  sub_22061A620();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_22061A954(0, &qword_27CF57A78, MEMORY[0x277D34648]);
    v9 = sub_2208926DC();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_22061A688(v11, v7, sub_22061A620);
      v13 = *v7;
      v14 = v7[1];
      result = sub_2204AF97C(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_220890B6C();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22061A620()
{
  if (!qword_28127EBB0)
  {
    sub_220890B6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EBB0);
    }
  }
}

uint64_t sub_22061A688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22061A80C()
{
  result = qword_27CF57AC0;
  if (!qword_27CF57AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF57AC0);
  }

  return result;
}

void sub_22061A894(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22061A154(255, a3, a4, a5);
    v6 = sub_2208926EC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22061A954(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2208926EC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22061A9B8()
{
  if (!qword_2812985E0)
  {
    sub_220458660(255, &qword_28127DE00);
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812985E0);
    }
  }
}

uint64_t sub_22061AA58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22061AAB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22061AB10();
  }

  return result;
}

uint64_t sub_22061AB10()
{
  v113 = sub_220885DBC();
  v116 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v1);
  v112 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SortWatchlistCommandContext(0);
  v110 = *(v3 - 8);
  v111 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v108 = (&v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5, v7);
  v104 = &v102 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v102 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v102 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v102 - v19;
  v21 = sub_220885DFC();
  v106 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_220886A4C();
  v25 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v26);
  v28 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v0 + 64);
  v115 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 40), v29);
  v30 = v106;
  sub_2208863EC();
  sub_220886A3C();
  (*(v25 + 8))(v28, v114);
  v31 = *(v30 + 88);
  v105 = v24;
  v114 = v21;
  v32 = v31(v24, v21);
  v33 = v32;
  if (v32 == *MEMORY[0x277D694A8])
  {
    v34 = sub_220885D9C();
    v35 = *(v34 + 16);
    if (v35)
    {
      v109 = v33;
      v117 = MEMORY[0x277D84F90];
      sub_22070C08C(0, v35, 0);
      v36 = v117;
      v37 = *(v116 + 16);
      v38 = *(v116 + 80);
      v104 = v34;
      v39 = v34 + ((v38 + 32) & ~v38);
      v107 = *(v116 + 72);
      v108 = v37;
      v116 += 16;
      v40 = (v116 + 16);
      v41 = (v30 + 104);
      do
      {
        v42 = v112;
        v43 = v113;
        v108(v112, v39, v113);
        __swift_project_boxed_opaque_existential_1((v115 + 40), *(v115 + 64));
        sub_2208863EC();
        v44 = v111;
        v45 = *(v111 + 20);
        (*v40)(&v20[v45], v42, v43);
        (*v41)(&v20[v45], v109, v114);
        v20[*(v44 + 24)] = 1;
        v117 = v36;
        v47 = *(v36 + 16);
        v46 = *(v36 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_22070C08C(v46 > 1, v47 + 1, 1);
          v36 = v117;
        }

        *(v36 + 16) = v47 + 1;
        sub_22061BAC8(v20, v36 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v47);
        v39 += v107;
        --v35;
      }

      while (v35);
LABEL_21:

      v30 = v106;
LABEL_37:
      (*(v30 + 8))(v105, v114);
LABEL_38:
      v117 = v36;

      sub_22088865C();
    }

    goto LABEL_36;
  }

  if (v32 == *MEMORY[0x277D694B8])
  {
    v48 = sub_220885D9C();
    v49 = *(v48 + 16);
    if (v49)
    {
      v109 = v33;
      v117 = MEMORY[0x277D84F90];
      sub_22070C08C(0, v49, 0);
      v36 = v117;
      v50 = *(v116 + 16);
      v51 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v104 = v48;
      v52 = v48 + v51;
      v107 = *(v116 + 72);
      v108 = v50;
      v116 += 16;
      v53 = (v116 + 16);
      v54 = (v30 + 104);
      v55 = v112;
      do
      {
        v56 = v113;
        v108(v55, v52, v113);
        __swift_project_boxed_opaque_existential_1((v115 + 40), *(v115 + 64));
        sub_2208863EC();
        v57 = v111;
        v58 = *(v111 + 20);
        (*v53)(&v17[v58], v55, v56);
        (*v54)(&v17[v58], v109, v114);
        v17[*(v57 + 24)] = 1;
        v117 = v36;
        v60 = *(v36 + 16);
        v59 = *(v36 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_22070C08C(v59 > 1, v60 + 1, 1);
          v36 = v117;
        }

        *(v36 + 16) = v60 + 1;
        sub_22061BAC8(v17, v36 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v60);
        v52 += v107;
        --v49;
      }

      while (v49);
      goto LABEL_21;
    }

LABEL_36:

    v36 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  if (v32 == *MEMORY[0x277D694F0])
  {
    v61 = sub_220885D9C();
    v62 = *(v61 + 16);
    if (v62)
    {
      v109 = v33;
      v117 = MEMORY[0x277D84F90];
      sub_22070C08C(0, v62, 0);
      v36 = v117;
      v63 = *(v116 + 16);
      v64 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v104 = v61;
      v65 = v61 + v64;
      v107 = *(v116 + 72);
      v108 = v63;
      v116 += 16;
      v66 = (v116 + 16);
      v67 = (v30 + 104);
      v68 = v112;
      do
      {
        v69 = v113;
        v108(v68, v65, v113);
        __swift_project_boxed_opaque_existential_1((v115 + 40), *(v115 + 64));
        sub_2208863EC();
        v70 = v111;
        v71 = *(v111 + 20);
        (*v66)(&v13[v71], v68, v69);
        (*v67)(&v13[v71], v109, v114);
        v13[*(v70 + 24)] = 1;
        v117 = v36;
        v73 = *(v36 + 16);
        v72 = *(v36 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_22070C08C(v72 > 1, v73 + 1, 1);
          v36 = v117;
        }

        *(v36 + 16) = v73 + 1;
        sub_22061BAC8(v13, v36 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v73);
        v65 += v107;
        --v62;
      }

      while (v62);
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  if (v32 == *MEMORY[0x277D694E8])
  {
    v74 = sub_220885D9C();
    v75 = *(v74 + 16);
    if (v75)
    {
      v109 = v33;
      v117 = MEMORY[0x277D84F90];
      sub_22070C08C(0, v75, 0);
      v36 = v117;
      v76 = *(v116 + 16);
      v77 = *(v116 + 80);
      v103 = v74;
      v78 = v74 + ((v77 + 32) & ~v77);
      v107 = *(v116 + 72);
      v108 = v76;
      v116 += 16;
      v79 = (v116 + 16);
      v80 = (v30 + 104);
      v81 = v104;
      do
      {
        v82 = v112;
        v83 = v113;
        v108(v112, v78, v113);
        __swift_project_boxed_opaque_existential_1((v115 + 40), *(v115 + 64));
        sub_2208863EC();
        v84 = v111;
        v85 = *(v111 + 20);
        (*v79)(v81 + v85, v82, v83);
        (*v80)(v81 + v85, v109, v114);
        *(v81 + *(v84 + 24)) = 1;
        v117 = v36;
        v87 = *(v36 + 16);
        v86 = *(v36 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_22070C08C(v86 > 1, v87 + 1, 1);
          v36 = v117;
        }

        *(v36 + 16) = v87 + 1;
        sub_22061BAC8(v81, v36 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v87);
        v78 += v107;
        --v75;
      }

      while (v75);
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  if (v32 == *MEMORY[0x277D694C0])
  {
    v88 = sub_220885D9C();
    v89 = *(v88 + 16);
    if (v89)
    {
      v109 = v33;
      v117 = MEMORY[0x277D84F90];
      sub_22070C08C(0, v89, 0);
      v36 = v117;
      v107 = *(v116 + 16);
      v90 = v88 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
      v91 = *(v116 + 72);
      v103 = v88;
      v104 = v91;
      v116 += 16;
      v92 = (v116 + 16);
      v93 = (v30 + 104);
      v94 = v108;
      do
      {
        v95 = v112;
        v96 = v113;
        v107(v112, v90, v113);
        __swift_project_boxed_opaque_existential_1((v115 + 40), *(v115 + 64));
        sub_2208863EC();
        v97 = v111;
        v98 = *(v111 + 20);
        (*v92)(v94 + v98, v95, v96);
        (*v93)(v94 + v98, v109, v114);
        *(v94 + *(v97 + 24)) = 1;
        v117 = v36;
        v100 = *(v36 + 16);
        v99 = *(v36 + 24);
        if (v100 >= v99 >> 1)
        {
          sub_22070C08C(v99 > 1, v100 + 1, 1);
          v36 = v117;
        }

        *(v36 + 16) = v100 + 1;
        sub_22061BAC8(v94, v36 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v100);
        v90 += v104;
        --v89;
      }

      while (v89);
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  if (v32 == *MEMORY[0x277D694E0])
  {
    v36 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

void *sub_22061B694(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v10[0] = MEMORY[0x277D84F90];
  sub_22061B9EC(0, &qword_2812988F8, sub_22061B9B8, MEMORY[0x277D6CB60]);
  swift_allocObject();
  v3[2] = sub_22088866C();
  v3[3] = a1;
  v3[4] = a2;
  sub_22046DA2C(a3, (v3 + 5));
  swift_getObjectType();
  v8 = qword_281296FA0;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_220886A4C();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (qword_281296FD0 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (qword_281296F78 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_22061BA74();

  sub_220885FAC();

  sub_22061AB10();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v4;
}

void sub_22061B9EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_22061BA74()
{
  result = qword_281281648;
  if (!qword_281281648)
  {
    type metadata accessor for OrderWatchlistMenuGroupOptionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281281648);
  }

  return result;
}

uint64_t sub_22061BAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SortWatchlistCommandContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22061BB30(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v54 = a3;
  sub_22061D1D0(0);
  v52 = *(v6 - 8);
  v7 = *(v52 + 8);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v47 - v12;
  v14 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v14, v15);
  v53 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22061C840(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B6BAC(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a2;
  sub_22061D204(a1, v20, sub_22061C840);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    return sub_22061D368(v20, sub_22061C840);
  }

  (*(v23 + 32))(v26, v20, v22);
  if (v27 == 2)
  {
    return (*(v23 + 8))(v26, v22);
  }

  v29 = v54;
  if (!v54)
  {
    return (*(v23 + 8))(v26, v22);
  }

  v30 = sub_2208905AC();
  if (v30 == 4 || (v31 = v30, (sub_2208905BC() & 1) == 0))
  {
    (*(v23 + 8))(v26, v22);
  }

  else
  {
    v32 = v29;
    if (v31)
    {
      v32 = v29 | 0x2000000000000000;
    }

    *v53 = v32;
    swift_storeEnumTagMultiPayload();

    sub_22088C4AC();
    sub_2204446D4(0, &qword_281297F10);
    v47 = sub_22088731C();
    if (swift_dynamicCast())
    {
      v33 = *&v61[0];
    }

    else
    {
      v33 = 0;
    }

    v34 = sub_22088969C();
    (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    v62 = 0;
    memset(v61, 0, sizeof(v61));
    v60 = v51;
    sub_2205A0924(v61, &v55, &unk_281298970, &unk_281298980);
    if (v57)
    {
      sub_220458198(&v55, v58);
      v50 = sub_220597454(v58);
      v36 = v35;
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_1(v58);
    }

    else
    {
      sub_2205A0B34(&v55, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v36 = qword_281290900;
      v38 = qword_281290908;
      v50 = qword_2812908F8;

      sub_2204A80F4(v36);
    }

    v49 = v38;
    v39 = v47;
    v48 = v36;
    if (v33)
    {
      v51 = v33;
    }

    else
    {
      v51 = 0;
      v39 = 0;
      *(&v55 + 1) = 0;
      v56 = 0;
    }

    *&v55 = v51;
    v57 = v39;
    sub_22061D204(v13, v10, sub_22061D1D0);
    sub_2205A0924(v63, v58, &unk_281296D10, &qword_281296D20);
    v40 = (v52[80] + 24) & ~v52[80];
    v52 = v13;
    v41 = (v7 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v42 + 16) = v33;
    sub_2205A0994(v10, v42 + v40);
    v43 = v42 + v41;
    v44 = v58[1];
    *v43 = v58[0];
    *(v43 + 16) = v44;
    *(v43 + 32) = v59;
    v45 = (v42 + ((v41 + 47) & 0xFFFFFFFFFFFFFFF8));
    v46 = v48;
    *v45 = v50;
    v45[1] = v46;
    v45[2] = v49;
    swift_retain_n();

    sub_2204A80F4(v46);
    sub_2204549FC();
    sub_22061D320(&unk_281297EC0, sub_2204549FC);
    sub_22088E92C();

    sub_2204DA45C(v46);
    sub_2205A0B34(v61, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(v63, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_22061D368(v52, sub_22061D1D0);
    sub_22061D368(v53, type metadata accessor for StocksActivity);
    (*(v23 + 8))(v26, v22);
    return sub_2205A0B34(&v55, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  }
}

uint64_t sub_22061C480(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_22089024C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22061C840(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B6BAC(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  sub_22061D204(a1, v15, sub_22061C840);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    return sub_22061D368(v15, sub_22061C840);
  }

  (*(v18 + 32))(v21, v15, v17);
  if (a3)
  {
    sub_22088C4AC();
    sub_2204446D4(0, &qword_281297F10);
    sub_22088731C();
    if (swift_dynamicCast())
    {
      if (v22 == 2)
      {
        (*(v18 + 8))(v21, v17);
      }

      sub_22089059C();
      if ((*(v8 + 88))(v11, v7) != *MEMORY[0x277D33370])
      {
        (*(v18 + 8))(v21, v17);

        return (*(v8 + 8))(v11, v7);
      }

      (*(v8 + 96))(v11, v7);
      v24 = *v11;
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = a3;
      *(v25 + 32) = v27;
      *(v25 + 40) = v22 & 1;
      swift_unknownObjectRetain();

      sub_22088726C();
      swift_unknownObjectRelease();
    }
  }

  return (*(v18 + 8))(v21, v17);
}

void sub_22061C874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id sub_22061C8D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v67 = a5;
  v66 = a4;
  v73 = a3;
  v76 = a1;
  v56 = sub_2208891DC();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v6);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220889BFC();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061C874(0, &qword_27CF57700, MEMORY[0x277D6E130], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v54 - v13;
  v15 = sub_22088929C();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v58 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22088907C();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v18);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2208895EC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v65 = a2;
  sub_2206F61F0(v25);
  sub_22061C874(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v27 = v26;
  v28 = sub_220886F8C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 80);
  v31 = (v30 + 32) & ~v30;
  v69 = *(v29 + 72);
  v71 = v27;
  v32 = swift_allocObject();
  v75 = xmmword_220899360;
  *(v32 + 16) = xmmword_220899360;
  v33 = *(v29 + 104);
  v68 = *MEMORY[0x277CEAD18];
  v72 = v28;
  v74 = v33;
  v33(v32 + v31);
  sub_22061D320(&qword_2812984B0, MEMORY[0x277D686A0]);
  v70 = "uGroupOptionProvider";
  sub_220886F1C();

  (*(v22 + 8))(v25, v21);
  if (v73)
  {
    sub_22088C4CC();
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = sub_22088CA0C();
  (*(*(v35 - 8) + 56))(v14, v34, 1, v35);
  sub_2208892AC();
  sub_22088906C();
  v36 = swift_allocObject();
  *(v36 + 16) = v75;
  v37 = v30;
  v38 = v68;
  v39 = v72;
  v73 = v31;
  v57 = v29 + 104;
  v74(v36 + v31, v68, v72);
  sub_22061D320(&unk_27CF57B10, MEMORY[0x277D68200]);
  v40 = v61;
  sub_220886F1C();

  (*(v60 + 8))(v20, v40);
  v42 = v65;
  v41 = v66;
  v43 = v62;
  sub_2206F69A0(*(v66 + 80));
  v44 = v73;
  v61 = v37;
  v45 = swift_allocObject();
  *(v45 + 16) = v75;
  v46 = v38;
  v47 = v74;
  v74(v45 + v44, v46, v39);
  sub_22061D320(&qword_281298370, MEMORY[0x277D68B40]);
  v48 = v64;
  sub_220886F1C();

  (*(v63 + 8))(v43, v48);
  result = [v42 sourceChannel];
  if (result)
  {
    v50 = result;
    __swift_project_boxed_opaque_existential_1((v41 + 40), *(v41 + 64));
    v51 = v54;
    sub_2206EC95C(v50);
    v52 = swift_allocObject();
    *(v52 + 16) = v75;
    v47(v52 + v44, v68, v72);
    sub_22061D320(&qword_281298560, MEMORY[0x277D68340]);
    v53 = v56;
    sub_220886F1C();
    swift_unknownObjectRelease();

    result = (*(v55 + 8))(v51, v53);
  }

  if ((v67 & 1) == 0)
  {
    sub_22088A14C();
    sub_22061D320(&qword_27CF57B20, MEMORY[0x277D69080]);
    memset(v77, 0, 32);
    sub_220886F3C();
    return sub_2205A0B34(v77, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  }

  return result;
}

uint64_t sub_22061D204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22061D26C(uint64_t a1)
{
  sub_22061D1D0(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_220598700(a1, v7, v1 + v5, v1 + v6, v9, v10, v11);
}

uint64_t sub_22061D320(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22061D368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22061D3C8@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v33 = MEMORY[0x277D85248];
  sub_22044D824(0, &qword_28127E7D0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v29 = &v29 - v4;
  sub_2204753E0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CD4C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CDFC();
  v18 = *(v17 - 8);
  v30 = v17;
  v31 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager), *(v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager + 24));
  sub_22088600C();
  swift_getKeyPath();
  sub_2204534D8(&qword_281296E10, sub_2204753E0);
  sub_22088EB9C();

  (*(v7 + 8))(v10, v6);
  sub_2204534D8(&qword_281296E40, sub_22049CD4C);
  sub_2204534D8(&qword_2812992E8, MEMORY[0x277D69488]);
  sub_22088EBCC();
  (*(v13 + 8))(v16, v12);
  sub_22046D5B4();
  v22 = sub_220891D0C();
  v34 = v22;
  v23 = sub_220891CEC();
  v24 = v29;
  (*(*(v23 - 8) + 56))(v29, 1, 1, v23);
  sub_22049CE94(0);
  v25 = v32;
  v32[3] = v26;
  v25[4] = sub_2204534D8(&qword_281296DD0, sub_22049CE94);
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_2204534D8(&qword_281296E20, sub_22049CDFC);
  sub_2204534D8(&qword_28127E7C8, sub_22046D5B4);
  v27 = v30;
  sub_22088EBAC();
  sub_22047EAD4(v24, &qword_28127E7D0, v33);

  return (*(v31 + 8))(v21, v27);
}

uint64_t sub_22061D89C()
{
  v1 = v0;
  v2 = sub_22088685C();
  v13 = *(v2 - 8);
  v3 = v13;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager;
  sub_22046DA2C(v0 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_2204534D8(&qword_28128EAC0, type metadata accessor for StockFeedDataManager);
  sub_22088631C();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v14 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager;
  sub_22046DA2C(v0 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_2204534D8(&qword_28128EAC8, type metadata accessor for StockFeedDataManager);
  sub_220885FDC();
  __swift_destroy_boxed_opaque_existential_1(v16);
  v7 = *(v0 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataRefreshManager + 8);
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock;
  (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock, v2);
  v10 = *(v7 + 40);
  swift_unknownObjectRetain();
  v10(v6, ObjectType, v7);
  swift_unknownObjectRelease();
  v11 = *(v13 + 8);
  v11(v6, v2);
  sub_22054B9F8(v1 + 16);
  v11((v1 + v9), v2);
  __swift_destroy_boxed_opaque_existential_1(v1 + v14);
  __swift_destroy_boxed_opaque_existential_1(v1 + v15);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_quoteDetailManager);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService);

  __swift_destroy_boxed_opaque_existential_1(v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_appConfigurationManager);

  sub_22047EAD4(v1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_lastNewsRefreshDate, &qword_281299480, MEMORY[0x277CC9578]);
  return v1;
}

uint64_t sub_22061DBA8()
{
  sub_22061D89C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockFeedDataManager()
{
  result = qword_28128EAA8;
  if (!qword_28128EAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22061DC54()
{
  sub_22088685C();
  if (v0 <= 0x3F)
  {
    sub_22044D824(319, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22061DD90()
{
  v0 = sub_22088519C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = CACurrentMediaTime();
  sub_22088518C();
  v6 = sub_22088517C();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220899920;
  v10 = sub_22088681C();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_22048D860();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 64) = v14;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  sub_220891AFC();
  sub_22088A7EC();

  sub_22044D824(0, &qword_281299370, MEMORY[0x277D69178], MEMORY[0x277D83D88]);
  sub_220888FAC();
  v15 = swift_allocObject();
  v15[2] = v5;
  *(v15 + 3) = v6;
  *(v15 + 4) = v8;

  v16 = sub_220888D9C();
  type metadata accessor for StockFeedQuoteData();
  sub_220888E5C();

  v17 = swift_allocObject();
  v17[2] = v5;
  *(v17 + 3) = v6;
  *(v17 + 4) = v8;
  v18 = sub_220888D9C();
  v19 = sub_220888EAC();

  return v19;
}

uint64_t sub_22061E0DC(uint64_t a1)
{
  v2 = sub_22088831C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_quoteDetailManager), *(a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_quoteDetailManager + 24));
  sub_22088681C();
  *v6 = 0x4014000000000000;
  (*(v3 + 104))(v6, *MEMORY[0x277D6CA48], v2);
  v7 = sub_2208860FC();

  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_22061E248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v6 = type metadata accessor for StockFeedQuoteData();
  MEMORY[0x28223BE20](v6, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v27 - v12;
  v14 = sub_22088676C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_2206216C0(a1, &v13[*(v6 + 20)], &qword_281299370, MEMORY[0x277D69178]);
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v27[1] = qword_281293920;
  sub_22048D7F8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22089EF70;
  v16 = sub_22088681C();
  v18 = v17;
  v19 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v20 = sub_22048D860();
  *(v15 + 64) = v20;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_22089187C();
  v21 = MEMORY[0x277D83A80];
  *(v15 + 96) = MEMORY[0x277D839F8];
  *(v15 + 104) = v21;
  *(v15 + 72) = v22;
  *(v15 + 136) = v19;
  *(v15 + 144) = v20;
  *(v15 + 112) = v28;
  *(v15 + 120) = a4;
  v29 = 0;
  v30 = 0xE000000000000000;

  sub_22089264C();
  v23 = v29;
  v24 = v30;
  *(v15 + 176) = v19;
  *(v15 + 184) = v20;
  *(v15 + 152) = v23;
  *(v15 + 160) = v24;
  sub_220891AFC();
  sub_22088A7EC();

  sub_220621500(v13, v9);
  sub_22044D824(0, &unk_281298660, type metadata accessor for StockFeedQuoteData, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v25 = sub_220888ECC();
  sub_220621564(v13, type metadata accessor for StockFeedQuoteData);
  return v25;
}

uint64_t sub_22061E534(uint64_t a1)
{
  v32 = a1;
  v34 = *v1;
  v33 = sub_2208854FC();
  v2 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v3);
  v30[1] = v4;
  v31 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088519C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = CACurrentMediaTime();
  sub_22088518C();
  v11 = sub_22088517C();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220899920;
  v15 = sub_22088681C();
  v17 = v16;
  v18 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v19 = sub_22048D860();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  *(v14 + 96) = v18;
  *(v14 + 104) = v19;
  *(v14 + 64) = v19;
  *(v14 + 72) = v11;
  *(v14 + 80) = v13;

  sub_220891AFC();
  sub_22088A7EC();

  v20 = v31;
  v21 = v33;
  (*(v2 + 16))(v31, v32, v33);
  v22 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v23 = swift_allocObject();
  (*(v2 + 32))(v23 + v22, v20, v21);
  sub_22088665C();
  sub_220888FAC();

  v24 = swift_allocObject();
  v24[2] = v10;
  *(v24 + 3) = v11;
  *(v24 + 4) = v13;

  v25 = sub_220888D9C();
  sub_220888E5C();

  v26 = swift_allocObject();
  v26[2] = v10;
  *(v26 + 3) = v11;
  *(v26 + 4) = v13;
  v27 = sub_220888D9C();
  v28 = sub_220888EAC();

  return v28;
}

uint64_t sub_22061E940(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = sub_22088846C();
  v3 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088831C();
  v15[0] = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[1] = *(a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_chartManager + 8);
  swift_getObjectType();
  sub_22088681C();
  *v11 = 0x404E000000000000;
  (*(v8 + 104))(v11, *MEMORY[0x277D6CA48], v7);
  v12 = v16;
  (*(v3 + 104))(v6, *MEMORY[0x277D6CAB8], v16);
  v13 = sub_220885AFC();

  (*(v3 + 8))(v6, v12);
  (*(v8 + 8))(v11, v15[0]);
  return v13;
}

uint64_t sub_22061EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v23 = a3;
  v5 = sub_22088665C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  v22 = qword_281293920;
  sub_22048D7F8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22089EF70;
  v11 = sub_22088681C();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = sub_22048D860();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_22089187C();
  v16 = MEMORY[0x277D83A80];
  *(v10 + 96) = MEMORY[0x277D839F8];
  *(v10 + 104) = v16;
  *(v10 + 72) = v17;
  *(v10 + 136) = v14;
  *(v10 + 144) = v15;
  *(v10 + 112) = v23;
  *(v10 + 120) = a4;
  v25 = 0;
  v26 = 0xE000000000000000;

  v18 = v24;
  sub_22089264C();
  v19 = v25;
  v20 = v26;
  *(v10 + 176) = v14;
  *(v10 + 184) = v15;
  *(v10 + 152) = v19;
  *(v10 + 160) = v20;
  sub_220891AFC();
  sub_22088A7EC();

  (*(v6 + 16))(v9, v18, v5);
  sub_22044D824(0, &qword_2812986A0, MEMORY[0x277D697C0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_22061EDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22089EF70;
  v7 = sub_22088681C();
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_22048D860();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_22089187C();
  v12 = MEMORY[0x277D83A80];
  *(v6 + 96) = MEMORY[0x277D839F8];
  *(v6 + 104) = v12;
  *(v6 + 72) = v13;
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  sub_2204446D4(0, &qword_28127DE30);

  sub_22089264C();
  *(v6 + 176) = v10;
  *(v6 + 184) = v11;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0xE000000000000000;
  sub_220891AFC();
  sub_22088A7EC();
}

uint64_t sub_22061EFA4()
{
  v0 = sub_22088519C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = CACurrentMediaTime();
  sub_22088518C();
  v6 = sub_22088517C();
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220899920;
  v10 = sub_22088681C();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_22048D860();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 64) = v14;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;

  sub_220891AFC();
  sub_22088A7EC();

  type metadata accessor for StockFeedServiceConfig();
  sub_220888FBC();
  sub_2206213D8();
  sub_220888E5C();

  v15 = swift_allocObject();
  v15[2] = v5;
  *(v15 + 3) = v6;
  *(v15 + 4) = v8;

  v16 = sub_220888D9C();
  sub_220888E5C();

  v17 = swift_allocObject();
  v17[2] = v5;
  *(v17 + 3) = v6;
  *(v17 + 4) = v8;
  v18 = sub_220888D9C();
  v19 = sub_220888EAC();

  return v19;
}

uint64_t sub_22061F2EC(uint64_t a1)
{
  v2 = sub_22088519C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedServiceContext();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock;
  v13 = *(v12 + 28);
  v14 = sub_22088685C();
  (*(*(v14 - 8) + 16))(v10 + v13, a1 + v11, v14);
  sub_22088518C();
  v15 = sub_22088517C();
  v17 = v16;
  (*(v3 + 8))(v6, v2);
  *v10 = v15;
  v10[1] = v17;
  v18 = sub_22088F24C();
  sub_220621564(v10, type metadata accessor for StockFeedServiceContext);
  return v18;
}

uint64_t sub_22061F4AC(uint64_t a1, uint64_t a2)
{
  sub_220621344();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D824(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - v11;
  sub_22088515C();
  v13 = sub_22088516C();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_lastNewsRefreshDate;
  swift_beginAccess();
  sub_22062162C(v12, a2 + v14);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService), *(a2 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService + 24));
  type metadata accessor for StockFeedServiceConfig();
  sub_2204534D8(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
  sub_22089012C();
  v15 = off_28341E1F0;
  type metadata accessor for StockFeedServiceProxy();
  v16 = v15();
  (*(v5 + 8))(v8, v4);
  return v16;
}

uint64_t sub_22061F720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = qword_2812948A0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22089EF70;
  v8 = sub_22088681C();
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22048D860();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_22089187C();
  v13 = MEMORY[0x277D83A80];
  *(v7 + 96) = MEMORY[0x277D839F8];
  *(v7 + 104) = v13;
  *(v7 + 72) = v14;
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;

  sub_22089264C();
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0xE000000000000000;
  sub_220891AFC();
  sub_22088A7EC();

  sub_2204B81EC(0, &qword_27CF57B28);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_22061F8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CACurrentMediaTime();
  if (qword_281293918 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220899920;
  v8 = sub_22088681C();
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22048D860();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 64) = v12;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;

  sub_220891AFC();
  sub_22088A7EC();

  *(swift_allocObject() + 16) = a3;
  sub_220621344();

  sub_220888FAC();

  sub_2206213D8();
  sub_220888E5C();

  v13 = swift_allocObject();
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  v13[4] = v6;

  sub_220888E5C();

  v14 = swift_allocObject();
  v14[2] = v6;
  *(v14 + 3) = a1;
  *(v14 + 4) = a2;

  v15 = sub_220888D9C();
  v16 = sub_220888EAC();

  return v16;
}

uint64_t sub_22061FBE0(uint64_t a1, uint64_t a2)
{
  sub_220621344();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22088519C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedServiceContext();
  MEMORY[0x28223BE20](v15, v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *v9 = v20;
    (*(v6 + 104))(v9, *MEMORY[0x277D33090], v5);
    sub_22044D824(0, &qword_281298678, sub_220621344, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_220888ECC();
  }

  else
  {
    v22 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock;
    v23 = *(v17 + 20);
    v24 = sub_22088685C();
    (*(*(v24 - 8) + 16))(v19 + v23, a1 + v22, v24);
    sub_22088518C();
    v25 = sub_22088517C();
    v27 = v26;
    (*(v11 + 8))(v14, v10);
    *v19 = v25;
    v19[1] = v27;
    sub_22088F24C();
    sub_220621564(v19, type metadata accessor for StockFeedServiceContext);
    v28 = sub_220888D9C();
    v29 = sub_220888E4C();

    return v29;
  }
}

uint64_t sub_22061FEFC()
{
  type metadata accessor for StockFeedServiceConfig();
  sub_2204534D8(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
  return sub_22089012C();
}

uint64_t sub_22061FF84(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService), *(a2 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_feedService + 24));
  v2 = off_28341E1F0;
  type metadata accessor for StockFeedServiceProxy();
  return v2();
}

uint64_t sub_220620008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = qword_2812948A0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22089EF70;
  v8 = sub_22088681C();
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22048D860();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_22089187C();
  v13 = MEMORY[0x277D83A80];
  *(v7 + 96) = MEMORY[0x277D839F8];
  *(v7 + 104) = v13;
  *(v7 + 72) = v14;
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;

  sub_22089264C();
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0xE000000000000000;
  sub_220891AFC();
  sub_22088A7EC();

  sub_2204B81EC(0, &qword_281298628);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2206201EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22089EF70;
  v7 = sub_22088681C();
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_22048D860();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_22089187C();
  v12 = MEMORY[0x277D83A80];
  *(v6 + 96) = MEMORY[0x277D839F8];
  *(v6 + 104) = v12;
  *(v6 + 72) = v13;
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  sub_2204446D4(0, &qword_28127DE30);

  sub_22089264C();
  *(v6 + 176) = v10;
  *(v6 + 184) = v11;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0xE000000000000000;
  sub_220891AFC();
  sub_22088A7EC();
}

uint64_t sub_220620398()
{
  v0 = sub_220885ACC();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D824(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v31 - v6;
  v8 = sub_22088516C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - v15;
  v17 = sub_22088FB1C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298D98 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277D325C0])
  {
    v23 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_lastNewsRefreshDate;
    v24 = v33;
    swift_beginAccess();
    sub_2206216C0(v24 + v23, v7, &qword_281299480, MEMORY[0x277CC9578]);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_22047EAD4(v7, &qword_281299480, MEMORY[0x277CC9578]);
      return 0;
    }

    (*(v9 + 32))(v16, v7, v8);
    sub_22088515C();
    sub_22088507C();
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v12, v8);
    __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_appConfigurationManager), *(v24 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_appConfigurationManager + 24));
    sub_22088641C();
    sub_220885A8C();
    v30 = v29;
    (*(v31 + 8))(v3, v32);
    v28(v16, v8);
    return v30 < v27;
  }

  else
  {
    if (v22 == *MEMORY[0x277D325C8])
    {
      return 0;
    }

    if (v22 == *MEMORY[0x277D325B8])
    {
      return 1;
    }

    else
    {
      result = sub_2208928AC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_220620800(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager), *(a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_priceDataManager + 24));
  sub_22044D824(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
  v2 = sub_22088685C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220899360;
  (*(v3 + 16))(v5 + v4, a1 + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock, v2);
  v6 = sub_22088632C();

  return v6;
}

uint64_t sub_220620964@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22088581C();
  v3 = sub_22088681C();
  if (*(v2 + 16))
  {
    v5 = sub_2204AF97C(v3, v4);
    v7 = v6;

    if (v7)
    {
      v8 = *(v2 + 56);
      v9 = sub_22088676C();
      v10 = *(v9 - 8);
      (*(v10 + 16))(a1, v8 + *(v10 + 72) * v5, v9);

      return (*(v10 + 56))(a1, 0, 1, v9);
    }
  }

  else
  {
  }

  v12 = sub_22088676C();
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

uint64_t sub_220620AF8()
{
  sub_22088582C();
  sub_220888FBC();

  v0 = sub_220888D9C();
  sub_22044D824(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  v1 = sub_220888E4C();

  return v1;
}

uint64_t sub_220620BD4()
{
  v1 = v0;
  v2 = sub_22088676C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v20 - v9;
  v11 = sub_22088581C();
  v12 = sub_22088681C();
  if (*(v11 + 16))
  {
    v14 = sub_2204AF97C(v12, v13);
    v16 = v15;

    if (v16)
    {
      (*(v3 + 16))(v6, *(v11 + 56) + *(v3 + 72) * v14, v2);

      (*(v3 + 32))(v10, v6, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v17 + 8))(v1, &off_283417078, v10, ObjectType, v17);
        swift_unknownObjectRelease();
      }

      return (*(v3 + 8))(v10, v2);
    }
  }

  else
  {
  }
}

uint64_t sub_220620DF4()
{
  v0 = sub_22088685C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v40 = &v34 - v6;
  sub_220621778();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088579C();
  v44 = *(v13 + 16);
  if (!v44)
  {
  }

  v14 = 0;
  v39 = OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_stock;
  v42 = v9 + 88;
  v43 = v9 + 16;
  v41 = *MEMORY[0x277D6CC10];
  v38 = *MEMORY[0x277D6CC18];
  v36 = *MEMORY[0x277D6CC08];
  v15 = (v9 + 96);
  v16 = (v1 + 8);
  v17 = (v1 + 32);
  v34 = v17;
  v35 = v0;
  while (v14 < *(v13 + 16))
  {
    (*(v9 + 16))(v12, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v8);
    v18 = (*(v9 + 88))(v12, v8);
    if (v18 == v41)
    {
      (*v15)(v12, v8);
      v19 = v40;
      (*v17)(v40, v12, v0);
      if (MEMORY[0x223D7E940](v19, v45 + v39))
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v20 = v45;
          v21 = *(v45 + 24);
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 16);
          v24 = v20;
          v25 = v21;
          v17 = v34;
          v0 = v35;
          v23(v24, &off_283417078, 1, ObjectType, v25);
          swift_unknownObjectRelease();
        }
      }
    }

    else if (v18 == v38)
    {
      (*v15)(v12, v8);
      v26 = v37;
      (*v17)(v37, v12, v0);
      if ((MEMORY[0x223D7E940](v26, v45 + v39) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        v27 = v45;
        v28 = *(v45 + 24);
        v29 = swift_getObjectType();
        v30 = *(v28 + 16);
        v31 = v27;
        v32 = v28;
        v17 = v34;
        v0 = v35;
        v30(v31, &off_283417078, 2, v29, v32);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (v18 != v36)
      {
        goto LABEL_17;
      }

      (*v15)(v12, v8);
    }

    ++v14;
    (*v16)();
    if (v44 == v14)
    {
    }
  }

  __break(1u);
LABEL_17:
  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_220621344()
{
  if (!qword_281296920)
  {
    type metadata accessor for StockFeedServiceConfig();
    sub_2204534D8(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v0 = sub_22089013C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296920);
    }
  }
}

void sub_2206213D8()
{
  if (!qword_281296AB0)
  {
    type metadata accessor for StockFeedServiceConfig();
    sub_2204534D8(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v0 = sub_22088FAFC();
    if (!v1)
    {
      atomic_store(v0, &qword_281296AB0);
    }
  }
}

uint64_t sub_220621500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedQuoteData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220621564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22062162C(uint64_t a1, uint64_t a2)
{
  sub_22044D824(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206216C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22044D824(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_220621778()
{
  if (!qword_281299670)
  {
    sub_22088685C();
    sub_2204534D8(&qword_281299080, MEMORY[0x277D69810]);
    v0 = sub_22088881C();
    if (!v1)
    {
      atomic_store(v0, &qword_281299670);
    }
  }
}

id sub_22062181C(char a1)
{
  v2 = sub_2206219B0(a1);
  if (a1)
  {
    if (qword_27CF55850 != -1)
    {
      swift_once();
    }

    v3 = &qword_27CF6CE88;
  }

  else
  {
    if (qword_28127F078 != -1)
    {
      swift_once();
    }

    v3 = &qword_2812B6920;
  }

  v4 = *v3;
  sub_22044D56C(0, &qword_28127E570);
  v5 = v4;
  v6 = sub_220891F2C();
  v7 = [objc_opt_self() configurationWithFont:v6 scale:1];

  v8 = [v5 imageWithConfiguration_];
  v9 = [v8 imageWithTintColor_];

  return v9;
}

uint64_t sub_2206219B0(char a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 72))(v10, v3, v4);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  if (a1)
  {
    v7 = (*(v6 + 144))(v5, v6);
  }

  else
  {
    v7 = (*(v6 + 152))(v5, v6);
  }

  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_220621AAC(void *a1, char a2)
{
  v3 = v2;
  v61 = a1;
  sub_220565BE4(0, &qword_28127E448, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v60 = &v48 - v7;
  v8 = sub_22089217C();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22089220C();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22089210C();
  v51 = *(v52 - 1);
  MEMORY[0x28223BE20](v52, v14);
  v50 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22089226C();
  v16 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v49 = [objc_opt_self() clearColor];
  }

  else
  {
    v20 = v2[3];
    v21 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v20);
    (*(v21 + 72))(v62, v20, v21);
    v22 = v63;
    v23 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    v49 = (*(v23 + 144))(v22, v23);
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v48 = sub_2206219B0(a2 & 1);
  v24 = sub_2206219B0(a2 & 1);
  if (a2)
  {
    if (qword_27CF55850 != -1)
    {
      swift_once();
    }

    v25 = &qword_27CF6CE88;
  }

  else
  {
    if (qword_28127F078 != -1)
    {
      swift_once();
    }

    v25 = &qword_2812B6920;
  }

  v26 = *v25;
  sub_22044D56C(0, &qword_28127E570);
  v27 = v26;
  v28 = sub_220891F2C();
  v29 = objc_opt_self();
  v30 = [v29 configurationWithFont:v28 scale:1];

  v31 = [v27 imageWithConfiguration_];
  v32 = [v31 imageWithTintColor_];

  v33 = v3[3];
  v34 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v33);
  (*(v34 + 72))(v62, v33, v34);
  v35 = v63;
  v36 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v37 = (*(v36 + 144))(v35, v36);
  __swift_destroy_boxed_opaque_existential_1(v62);
  [v61 setPreferredBehavioralStyle_];
  sub_22089225C();
  sub_22089216C();
  (*(v51 + 13))(v50, *MEMORY[0x277D74FE0], v52);
  sub_22089211C();
  v52 = v49;
  sub_2208921CC();
  v51 = v48;
  sub_2208921DC();
  (*(v54 + 104))(v53, *MEMORY[0x277D75028], v55);
  sub_2208920FC();
  (*(v57 + 104))(v56, *MEMORY[0x277D74FF0], v58);
  sub_22089219C();
  v38 = v32;
  sub_22089223C();
  sub_22089218C();
  v39 = sub_220891F2C();
  v40 = [v29 configurationWithFont:v39 scale:1];

  sub_2208920DC();
  v41 = v37;
  v42 = sub_2208920EC();
  sub_22088E9FC();
  v42(v62, 0);
  v43 = sub_2208920EC();
  sub_22088EA0C();
  v43(v62, 0);
  v44 = sub_2208920EC();
  sub_22088EA1C();
  v44(v62, 0);
  v46 = v59;
  v45 = v60;
  (*(v16 + 16))(v60, v19, v59);
  (*(v16 + 56))(v45, 0, 1, v46);
  sub_22089228C();

  return (*(v16 + 8))(v19, v46);
}

id sub_2206222D8(uint64_t a1, uint64_t a2, char a3)
{
  sub_220565BE4(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = sub_22044D56C(0, &qword_28127E570);
  v7 = v5;
  *(inited + 40) = sub_220891F2C();
  v8 = *MEMORY[0x277D740C0];
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = v8;
  v10 = sub_2206219B0(a3);
  v11 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x277D740D0];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFD51EB851EB851FLL;
  v13 = v12;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v15 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v16 = sub_22089125C();

  v17 = [v14 initWithString:v15 attributes:v16];

  return v17;
}

void sub_22062252C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a2;
  v28 = sub_22088988C();
  v27[0] = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206228CC();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220886E8C();
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v19 + 16))(v27 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_220886E6C();
    v21 = sub_2208871CC();
    v23 = v22;

    if (!v3)
    {
      sub_220622960(&qword_281298440, MEMORY[0x277D68840]);
      v24 = v28;
      sub_22088827C();
      sub_220457EE8(v21, v23);
      (*(v27[0] + 32))(a3, v8, v24);
      v25 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
    }
  }

  else
  {
    v26 = type metadata accessor for EngagementEvent();
    (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
  }
}

void sub_2206228CC()
{
  if (!qword_281298C30)
  {
    sub_22088989C();
    sub_220622960(&qword_281298438, MEMORY[0x277D68850]);
    v0 = sub_220886E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298C30);
    }
  }
}

uint64_t sub_220622960(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2206229A8()
{
  v0 = sub_22088BA1C();
  v26 = *(v0 - 8);
  v27 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v28 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22089022C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22089041C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208906CC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205D23FC();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v25 = sub_22088E33C();
  (*(v14 + 104))(v17, *MEMORY[0x277D33A68], v13);
  (*(v9 + 104))(v12, *MEMORY[0x277D33570], v8);
  v29 = 0u;
  v30 = 0u;
  (*(v4 + 104))(v7, *MEMORY[0x277D33290], v3);
  sub_2208905CC();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  if (qword_27CF558A0 != -1)
  {
    swift_once();
  }

  v22 = qword_27CF6CED0;
  (*(v26 + 104))(v28, *MEMORY[0x277D6D9A8], v27);
  sub_22088B17C();
  swift_allocObject();
  v23 = v22;
  return sub_22088B10C();
}

uint64_t sub_220622DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088BA1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206230B4();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = sub_22088E3DC();
  (*(v13 + 16))(v16, a1, v12);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  if (qword_27CF55898 != -1)
  {
    swift_once();
  }

  v19 = qword_27CF6CEC8;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  (*(v7 + 104))(v10, *MEMORY[0x277D6D9A8], v6);
  sub_22088B17C();
  swift_allocObject();
  v21 = v19;
  sub_2204A80F4(a2);
  return sub_22088B10C();
}

void sub_2206230B4()
{
  if (!qword_281296820)
  {
    sub_22044826C();
    v0 = sub_22089062C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296820);
    }
  }
}

uint64_t sub_22062310C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220623154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22062319C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2206231FC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v36 = a3;
  v37 = a2;
  sub_220627718(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = v33 - v6;
  sub_220587530();
  MEMORY[0x28223BE20](v8 - 8, v9);
  sub_220627718(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v33 - v14;
  v16 = sub_22088E6FC();
  v33[0] = v17;
  v33[1] = v16;
  v39 = v3;
  v18 = sub_2205727A4(sub_22062780C, v38);
  sub_22055CE80(0);
  v20 = v19;
  v21 = sub_2204443BC(&qword_281297DF8, sub_22055CE80);
  v22 = sub_2204443BC(&qword_281297E00, sub_22055CE80);
  MEMORY[0x223D80A20](v18, v20, v21, v22);
  type metadata accessor for StockFeedSectionDescriptor();
  type metadata accessor for StockFeedModel();
  sub_2204443BC(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  sub_2204443BC(&qword_281293DD0, type metadata accessor for StockFeedModel);
  sub_22088E6EC();
  v23 = sub_220577460();
  sub_22088FA1C();
  sub_22088FA0C();
  type metadata accessor for StockFeedServiceConfig();
  sub_2204443BC(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
  v24 = sub_22088F9EC();

  v25 = 0;
  if (v24)
  {
    v25 = sub_22088F45C();
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v40 = v24;
  v43 = v25;
  sub_22088E7BC();
  sub_22062782C(v23);
  sub_2205C44B4();
  v27 = *(v26 + 48);
  (*(v12 + 16))(v7, v15, v11);
  v28 = *MEMORY[0x277D6D868];
  v29 = sub_22088B64C();
  (*(*(v29 - 8) + 104))(&v7[v27], v28, v29);
  v31 = v34;
  v30 = v35;
  (*(v34 + 104))(v7, *MEMORY[0x277D6DF70], v35);
  v37(v7);
  (*(v31 + 8))(v7, v30);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_220623694@<X0>(void (*a1)(_BYTE *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  sub_22055D524();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v21[-v13];
  sub_220623930(a1, a2, &v21[-v13]);
  sub_220627998(v14, v10, type metadata accessor for StockFeedSectionDescriptor);
  v22 = a2;
  v15 = sub_220572464(sub_220627844, v21);
  sub_22055D328();
  v17 = v16;
  v18 = sub_2204443BC(&qword_281297FB8, sub_22055D328);
  v19 = sub_2204443BC(&qword_281297FC0, sub_22055D328);
  MEMORY[0x223D80A20](v15, v17, v18, v19);
  type metadata accessor for StockFeedModel();
  sub_2204443BC(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  sub_2204443BC(&qword_281293DD0, type metadata accessor for StockFeedModel);
  sub_22088B29C();
  return sub_220627864(v14, type metadata accessor for StockFeedSectionDescriptor);
}

uint64_t sub_220623930@<X0>(void (*a1)(_BYTE *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v250 = a2;
  v283 = a3;
  v266 = sub_2208852DC();
  v261 = *(v266 - 8);
  MEMORY[0x28223BE20](v266, v4);
  v274 = &v223[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v258 = sub_2208857EC();
  v257 = *(v258 - 8);
  MEMORY[0x28223BE20](v258, v6);
  v256 = &v223[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2205124A4(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v240 = &v223[-v10];
  sub_2205124A4(0, qword_281294018, type metadata accessor for PriceViewModel);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v239 = &v223[-v13];
  v267 = sub_22088699C();
  v265 = *(v267 - 8);
  MEMORY[0x28223BE20](v267, v14);
  v275 = &v223[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v253 = &v223[-v18];
  v262 = type metadata accessor for PriceViewModel();
  v238 = *(v262 - 8);
  MEMORY[0x28223BE20](v262, v19);
  v247 = &v223[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v279 = type metadata accessor for QuoteViewModel();
  v255 = *(v279 - 8);
  MEMORY[0x28223BE20](v279, v21);
  v248 = &v223[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2205124A4(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v246 = &v223[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v27);
  v254 = &v223[-v28];
  v264 = sub_22088676C();
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264, v29);
  v252 = &v223[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v259 = type metadata accessor for QuoteSummaryViewModel();
  MEMORY[0x28223BE20](v259, v31);
  v260 = &v223[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v273 = sub_2208854FC();
  v277 = *(v273 - 8);
  MEMORY[0x28223BE20](v273, v33);
  v244 = &v223[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35, v36);
  v271 = &v223[-v37];
  v280 = sub_220885D4C();
  v278 = *(v280 - 8);
  MEMORY[0x28223BE20](v280, v38);
  v237 = &v223[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40, v41);
  v276 = &v223[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v282 = &v223[-v45];
  sub_2205124A4(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v270 = &v223[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v49, v50);
  v272 = &v223[-v51];
  sub_2205124A4(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v245 = &v223[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v55, v56);
  v243 = &v223[-v57];
  MEMORY[0x28223BE20](v58, v59);
  v242 = &v223[-v60];
  MEMORY[0x28223BE20](v61, v62);
  v241 = &v223[-v63];
  MEMORY[0x28223BE20](v64, v65);
  v251 = &v223[-v66];
  MEMORY[0x28223BE20](v67, v68);
  v249 = &v223[-v69];
  MEMORY[0x28223BE20](v70, v71);
  v268 = &v223[-v72];
  MEMORY[0x28223BE20](v73, v74);
  v281 = &v223[-v75];
  v76 = sub_22088685C();
  v269 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v77);
  v79 = &v223[-((v78 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v80, v81);
  v83 = &v223[-v82];
  v84 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v84, v85);
  v87 = &v223[-((v86 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v88, v89);
  v91 = &v223[-v90];
  v92 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v92, v93);
  v95 = &v223[-((v94 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22055CE80(0);
  sub_22088B2AC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return sub_22088B2AC();
  }

  v230 = a1;
  v235 = v79;
  v231 = v91;
  v236 = v83;
  v232 = v76;
  v229 = v92;
  v233 = v87;
  v234 = v84;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_220459628();
      sub_22051F2BC(&v95[*(v97 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    }

    else
    {
      sub_220627864(v95, type metadata accessor for StockFeedSectionDescriptor);
    }

    return sub_22088B2AC();
  }

  v98 = v231;
  sub_220627930(v95, v231, type metadata accessor for StockFeedMastheadModel);
  v225 = *(v269 + 16);
  v99 = v232;
  v225(v236, v98, v232);
  v100 = v234;
  v101 = v234[5];
  v227 = MEMORY[0x277D697F8];
  v102 = v281;
  sub_2206278C4(v98 + v101, v281, &qword_2812990C0, MEMORY[0x277D697F8]);
  v103 = v100[6];
  v226 = MEMORY[0x277D697C0];
  v104 = v272;
  sub_2206278C4(v98 + v103, v272, &unk_2812990E0, MEMORY[0x277D697C0]);
  v105 = v100[7] + *(v279 + 20);
  v106 = v278 + 16;
  v230 = *(v278 + 16);
  v107 = v280;
  v230(v282, v98 + v105, v280);
  v228 = *(v250 + 16);
  __swift_project_boxed_opaque_existential_1((v250 + 24), *(v250 + 48));
  v224 = sub_2208861AC();
  v108 = v233;
  v109 = v236;
  v110 = v225;
  v225(v233, v236, v99);
  v111 = v102;
  v112 = v227;
  sub_2206278C4(v111, &v108[v100[5]], &qword_2812990C0, v227);
  v113 = &v108[v100[6]];
  v114 = v226;
  sub_2206278C4(v104, v113, &unk_2812990E0, v226);
  v110(v235, v109, v99);
  v115 = v268;
  sub_2206278C4(v281, v268, &qword_2812990C0, v112);
  v116 = v270;
  sub_2206278C4(v104, v270, &unk_2812990E0, v114);
  v250 = v106;
  v230(v276, v282, v107);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  v117 = v271;
  sub_220886B9C();

  v118 = v249;
  sub_2206278C4(v115, v249, &qword_2812990C0, MEMORY[0x277D697F8]);
  v119 = v263;
  v120 = *(v263 + 48);
  v121 = v264;
  v122 = v120(v118, 1, v264);
  v123 = v273;
  v124 = v277;
  if (v122 != 1)
  {
    v130 = v252;
    (*(v119 + 32))(v252, v118, v121);
    v131 = sub_220656950(v117, v130, v116);
    v251 = v132;
    LODWORD(v249) = v133;
    v134 = v244;
    (*(v124 + 104))(v244, *MEMORY[0x277D69120], v123, v131);
    sub_2204443BC(&qword_281299398, MEMORY[0x277D69160]);
    sub_22089167C();
    sub_22089167C();
    v135 = v278;
    if (v286 == v284 && v287 == v285)
    {
      v136 = 1;
    }

    else
    {
      v136 = sub_2208928BC();
    }

    v137 = v265;
    v253 = *(v124 + 8);
    (v253)(v134, v123);

    v277 = v124 + 8;
    if (v136)
    {
      v138 = v275;
      sub_2208867CC();
      v139 = v224;
      v140 = v239;
      sub_22069DDE0(v138, v224 & 1, v239);
      (*(v137 + 8))(v138, v267);
      v141 = v237;
      v142 = v280;
      v230(v237, v276, v280);
      v143 = v139 & 1;
      v144 = v240;
      sub_22069E5AC(v143, v240);
      v145 = (*(v238 + 48))(v140, 1, v262);
      v146 = v279;
      if (v145 != 1)
      {
        v186 = v140;
        v155 = v246;
        sub_220627930(v186, v246, type metadata accessor for PriceViewModel);
        (*(v135 + 32))(&v155[*(v146 + 20)], v141, v142);
        sub_220627A00(v144, &v155[*(v146 + 24)], &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
        v147 = 0;
        v153 = v255;
        v154 = v254;
        goto LABEL_35;
      }

      sub_22051F2BC(v144, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
      (*(v135 + 8))(v141, v142);
      sub_22051F2BC(v140, qword_281294018, type metadata accessor for PriceViewModel);
      v147 = 1;
    }

    else
    {
      v147 = 1;
      v146 = v279;
    }

    v153 = v255;
    v154 = v254;
    v155 = v246;
LABEL_35:
    (*(v153 + 56))(v155, v147, 1, v146);
    sub_220627A00(v155, v154, qword_281293F78, type metadata accessor for QuoteViewModel);
    v187 = sub_22088675C();
    v189 = v188;
    v255 = sub_22088671C();
    v191 = v190;
    v192 = sub_22088668C();
    v194 = v193;
    v195 = v275;
    sub_2208867CC();
    v196 = v257;
    v197 = v256;
    v198 = v258;
    (*(v257 + 104))(v256, *MEMORY[0x277D69288], v258);
    v199 = v274;
    sub_22088524C();
    v200 = v260;
    *v260 = v187;
    *(v200 + 8) = v189 & 1;
    v200[2] = v251;
    *(v200 + 24) = v249 & 1;
    v200[4] = v255;
    v201 = v191 & 1;
    v185 = v200;
    *(v200 + 40) = v201;
    v200[6] = v192;
    v200[7] = v194;
    v202 = v262;
    v203 = v265;
    v204 = v195;
    v205 = v267;
    (*(v265 + 16))(v200 + *(v262 + 40), v204, v267);
    *(v185 + 64) = 9666786;
    *(v185 + 72) = 0xA300000000000000;
    (*(v196 + 16))(v185 + *(v202 + 36), v197, v198);
    v206 = v261;
    v207 = v266;
    (*(v261 + 16))(v185 + *(v202 + 44), v199, v266);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v208 = qword_2812B6B48;
    (*(v196 + 8))(v197, v198);
    (*(v203 + 8))(v275, v205);
    v209 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v206 + 40))(v208 + v209, v274, v207);
    swift_endAccess();
    v210 = v279;
    v211 = v280;
    v212 = v276;
    v230((v185 + *(v279 + 20)), v276, v280);
    v213 = v185 + *(v210 + 24);
    v214 = v271;
    v215 = v252;
    sub_22069E834(v271, v213);
    (*(v263 + 8))(v215, v264);
    (v253)(v214, v273);
    v216 = *(v278 + 8);
    v216(v212, v211);
    v217 = MEMORY[0x277D697C0];
    sub_22051F2BC(v270, &unk_2812990E0, MEMORY[0x277D697C0]);
    v218 = MEMORY[0x277D697F8];
    sub_22051F2BC(v268, &qword_2812990C0, MEMORY[0x277D697F8]);
    v219 = *(v269 + 8);
    v220 = v232;
    v219(v235, v232);
    v216(v282, v211);
    sub_22051F2BC(v272, &unk_2812990E0, v217);
    sub_22051F2BC(v281, &qword_2812990C0, v218);
    v219(v236, v220);
    sub_220627864(v231, type metadata accessor for StockFeedMastheadModel);
    sub_220627A00(v254, v185 + *(v259 + 20), qword_281293F78, type metadata accessor for QuoteViewModel);
    goto LABEL_38;
  }

  v125 = MEMORY[0x277D697F8];
  sub_22051F2BC(v118, &qword_2812990C0, MEMORY[0x277D697F8]);
  v126 = v251;
  (*(v119 + 56))(v251, 1, 1, v121);
  v127 = v253;
  sub_2208867CC();
  v128 = v241;
  sub_2206278C4(v126, v241, &qword_2812990C0, v125);
  if (v120(v128, 1, v121) == 1)
  {
    sub_22051F2BC(v128, &qword_2812990C0, MEMORY[0x277D697F8]);
    v254 = 0;
    LODWORD(v252) = 1;
  }

  else
  {
    v254 = sub_22088675C();
    LODWORD(v252) = v148;
    (*(v119 + 8))(v128, v121);
  }

  v149 = v267;
  v150 = v245;
  v151 = v243;
  v152 = v242;
  sub_2206278C4(v126, v242, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v120(v152, 1, v121) == 1)
  {
    sub_22051F2BC(v152, &qword_2812990C0, MEMORY[0x277D697F8]);
    v250 = 0;
    LODWORD(v249) = 1;
  }

  else
  {
    v250 = sub_22088666C();
    LODWORD(v249) = v156;
    (*(v119 + 8))(v152, v121);
  }

  sub_2206278C4(v126, v151, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v120(v151, 1, v121) == 1)
  {
    sub_22051F2BC(v151, &qword_2812990C0, MEMORY[0x277D697F8]);
    v246 = 0;
    LODWORD(v245) = 1;
  }

  else
  {
    v246 = sub_22088671C();
    LODWORD(v245) = v157;
    (*(v119 + 8))(v151, v121);
  }

  sub_2206278C4(v126, v150, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v120(v150, 1, v121) == 1)
  {
    sub_22051F2BC(v150, &qword_2812990C0, MEMORY[0x277D697F8]);
    v244 = 0;
    v158 = 0;
  }

  else
  {
    v244 = sub_22088668C();
    v158 = v159;
    (*(v119 + 8))(v150, v121);
  }

  v160 = v265;
  v161 = *(v265 + 16);
  v162 = v275;
  v161(v275, v127, v149);
  v163 = v257;
  v164 = v256;
  v165 = v258;
  (*(v257 + 104))(v256, *MEMORY[0x277D69288], v258);
  v166 = v274;
  sub_22088524C();
  v167 = v247;
  *v247 = v254;
  *(v167 + 8) = v252 & 1;
  *(v167 + 16) = v250;
  *(v167 + 24) = v249 & 1;
  *(v167 + 32) = v246;
  *(v167 + 40) = v245 & 1;
  *(v167 + 48) = v244;
  *(v167 + 56) = v158;
  v168 = v262;
  v169 = v162;
  v170 = v267;
  v161((v167 + *(v262 + 40)), v169, v267);
  *(v167 + 64) = 9666786;
  *(v167 + 72) = 0xA300000000000000;
  (*(v163 + 16))(v167 + *(v168 + 36), v164, v165);
  v171 = *(v168 + 44);
  v172 = v261;
  (*(v261 + 16))(v167 + v171, v166, v266);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v264 = qword_2812B6B48;
  (*(v163 + 8))(v164, v165);
  v173 = *(v160 + 8);
  v173(v275, v170);
  v173(v253, v170);
  v174 = MEMORY[0x277D697F8];
  sub_22051F2BC(v251, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v277 + 8))(v271, v273);
  v175 = MEMORY[0x277D697C0];
  sub_22051F2BC(v270, &unk_2812990E0, MEMORY[0x277D697C0]);
  sub_22051F2BC(v268, &qword_2812990C0, v174);
  v176 = *(v269 + 8);
  v177 = v232;
  v176(v235, v232);
  v178 = v278;
  (*(v278 + 8))(v282, v280);
  sub_22051F2BC(v272, &unk_2812990E0, v175);
  sub_22051F2BC(v281, &qword_2812990C0, v174);
  v176(v236, v177);
  sub_220627864(v231, type metadata accessor for StockFeedMastheadModel);
  v179 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  v180 = v264;
  swift_beginAccess();
  (*(v172 + 40))(v180 + v179, v274, v266);
  swift_endAccess();
  v181 = v279;
  v182 = *(v279 + 24);
  v183 = type metadata accessor for QuoteSummaryTimeRange();
  v184 = v248;
  (*(*(v183 - 8) + 56))(&v248[v182], 1, 1, v183);
  sub_220627930(v167, v184, type metadata accessor for PriceViewModel);
  (*(v178 + 32))(v184 + *(v181 + 20), v276, v280);
  v185 = v260;
  (*(v255 + 56))(v260 + *(v259 + 20), 1, 1, v181);
  sub_220627930(v184, v185, type metadata accessor for QuoteViewModel);
LABEL_38:
  v221 = v234;
  v222 = v233;
  sub_220627930(v185, &v233[v234[7]], type metadata accessor for QuoteSummaryViewModel);
  *(v222 + v221[8]) = v228;
  sub_220627930(v222, v283, type metadata accessor for StockFeedMastheadModel);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2206256D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v269 = a2;
  v298 = a3;
  v273 = sub_2208852DC();
  v267 = *(v273 - 8);
  MEMORY[0x28223BE20](v273, v4);
  v278 = &v233[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v264 = sub_2208857EC();
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264, v6);
  v262 = &v233[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2205124A4(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v248 = &v233[-v10];
  sub_2205124A4(0, qword_281294018, type metadata accessor for PriceViewModel);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v247 = &v233[-v13];
  v285 = sub_22088699C();
  v276 = *(v285 - 8);
  MEMORY[0x28223BE20](v285, v14);
  v284 = &v233[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16, v17);
  v259 = &v233[-v18];
  v271 = type metadata accessor for PriceViewModel();
  v270 = *(v271 - 8);
  MEMORY[0x28223BE20](v271, v19);
  v255 = &v233[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v287 = type metadata accessor for QuoteViewModel();
  v261 = *(v287 - 8);
  MEMORY[0x28223BE20](v287, v21);
  v256 = &v233[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2205124A4(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v254 = &v233[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26, v27);
  v260 = &v233[-v28];
  v275 = sub_22088676C();
  v274 = *(v275 - 8);
  MEMORY[0x28223BE20](v275, v29);
  v258 = &v233[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v265 = type metadata accessor for QuoteSummaryViewModel();
  MEMORY[0x28223BE20](v265, v31);
  v266 = &v233[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v272 = sub_2208854FC();
  v277 = *(v272 - 8);
  MEMORY[0x28223BE20](v272, v33);
  v252 = &v233[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35, v36);
  v282 = &v233[-v37];
  v290 = sub_220885D4C();
  v286 = *(v290 - 8);
  MEMORY[0x28223BE20](v290, v38);
  v246 = &v233[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40, v41);
  v283 = &v233[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v289 = &v233[-v45];
  sub_2205124A4(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v281 = &v233[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v49, v50);
  v288 = &v233[-v51];
  sub_2205124A4(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v52 - 8, v53);
  v253 = &v233[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v55, v56);
  v251 = &v233[-v57];
  MEMORY[0x28223BE20](v58, v59);
  v250 = &v233[-v60];
  MEMORY[0x28223BE20](v61, v62);
  v249 = &v233[-v63];
  MEMORY[0x28223BE20](v64, v65);
  v257 = &v233[-v66];
  MEMORY[0x28223BE20](v67, v68);
  v268 = &v233[-v69];
  MEMORY[0x28223BE20](v70, v71);
  v279 = &v233[-v72];
  MEMORY[0x28223BE20](v73, v74);
  v280 = &v233[-v75];
  v76 = sub_22088685C();
  v291 = *(v76 - 8);
  v292 = v76;
  MEMORY[0x28223BE20](v76, v77);
  v79 = &v233[-((v78 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v80, v81);
  v83 = &v233[-v82];
  v84 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v84, v85);
  v87 = &v233[-((v86 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v88, v89);
  v91 = &v233[-v90];
  v92 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v92, v93);
  v95 = &v233[-((v94 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v96, v97);
  v99 = &v233[-v98];
  sub_22055D328();
  v293 = v100;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      v102 = v293;
      v103 = v298;
      if (EnumCaseMultiPayload == 8)
      {
        sub_220459914();

        v111 = sub_22089030C();
        (*(*(v111 - 8) + 8))(v99, v111);
        return (*(*(v102 - 1) + 16))(v103, a1, v102);
      }

      if (EnumCaseMultiPayload != 9)
      {
        return (*(*(v102 - 1) + 16))(v103, a1, v102);
      }
    }

    else
    {
      v102 = v293;
      v103 = v298;
    }

    sub_220627864(v99, type metadata accessor for StockFeedModel);
    return (*(*(v102 - 1) + 16))(v103, a1, v102);
  }

  v245 = v79;
  v244 = v83;
  v239 = v95;
  v241 = v84;
  v240 = v92;
  v242 = v91;
  v243 = v87;
  if (EnumCaseMultiPayload > 1)
  {
    v105 = v291;
    v104 = v292;
    v103 = v298;
    if (EnumCaseMultiPayload == 2)
    {
LABEL_8:
      (*(v105 + 8))(v99, v104);
LABEL_17:
      v102 = v293;
      return (*(*(v102 - 1) + 16))(v103, a1, v102);
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_2204597F0();
      v107 = *(v106 + 48);
      sub_22051F2BC(&v99[*(v106 + 64)], &qword_281299370, MEMORY[0x277D69178]);
      sub_22051F2BC(&v99[v107], &qword_2812990C0, MEMORY[0x277D697F8]);
      goto LABEL_8;
    }

    v110 = type metadata accessor for StockEarningsModel;
LABEL_16:
    sub_220627864(v99, v110);
    goto LABEL_17;
  }

  v108 = v291;
  v109 = v292;
  v103 = v298;
  if (!EnumCaseMultiPayload)
  {
    v110 = type metadata accessor for StockFeedMastheadModel;
    goto LABEL_16;
  }

  v113 = v242;
  sub_220627930(v99, v242, type metadata accessor for StockFeedMastheadModel);
  v237 = *(v108 + 16);
  v114 = v244;
  v237(v244, v113, v109);
  v115 = v241;
  v116 = v241[5];
  v236 = MEMORY[0x277D697F8];
  v117 = v280;
  sub_2206278C4(v113 + v116, v280, &qword_2812990C0, MEMORY[0x277D697F8]);
  v118 = v115[6];
  v235 = MEMORY[0x277D697C0];
  sub_2206278C4(v113 + v118, v288, &unk_2812990E0, MEMORY[0x277D697C0]);
  v119 = v115[7] + *(v287 + 20);
  v120 = v286 + 16;
  v293 = *(v286 + 16);
  (v293)(v289, v113 + v119, v290);
  v238 = *(v269 + 16);
  __swift_project_boxed_opaque_existential_1((v269 + 24), *(v269 + 48));
  v234 = sub_2208861AC();
  v121 = v243;
  v122 = v237;
  v237(v243, v114, v109);
  v123 = v236;
  sub_2206278C4(v117, &v121[v115[5]], &qword_2812990C0, v236);
  v124 = v288;
  v125 = &v121[v115[6]];
  v126 = v235;
  sub_2206278C4(v288, v125, &unk_2812990E0, v235);
  v122(v245, v114, v292);
  v127 = v279;
  sub_2206278C4(v117, v279, &qword_2812990C0, v123);
  v128 = v281;
  sub_2206278C4(v124, v281, &unk_2812990E0, v126);
  v129 = v283;
  v269 = v120;
  (v293)(v283, v289, v290);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  v130 = v282;
  sub_220886B9C();

  v131 = v268;
  sub_2206278C4(v127, v268, &qword_2812990C0, MEMORY[0x277D697F8]);
  v132 = v274;
  v133 = *(v274 + 48);
  v134 = v275;
  v135 = v133(v131, 1, v275);
  v136 = v270;
  if (v135 == 1)
  {
    v137 = MEMORY[0x277D697F8];
    sub_22051F2BC(v131, &qword_2812990C0, MEMORY[0x277D697F8]);
    v138 = v257;
    (*(v132 + 56))(v257, 1, 1, v134);
    v139 = v259;
    sub_2208867CC();
    v140 = v249;
    sub_2206278C4(v138, v249, &qword_2812990C0, v137);
    if (v133(v140, 1, v134) == 1)
    {
      sub_22051F2BC(v140, &qword_2812990C0, MEMORY[0x277D697F8]);
      v293 = 0;
      LODWORD(v270) = 1;
    }

    else
    {
      v293 = sub_22088675C();
      LODWORD(v270) = v163;
      (*(v132 + 8))(v140, v134);
    }

    v164 = v285;
    v165 = v251;
    v166 = v250;
    sub_2206278C4(v138, v250, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v133(v166, 1, v134) == 1)
    {
      sub_22051F2BC(v166, &qword_2812990C0, MEMORY[0x277D697F8]);
      v269 = 0;
      LODWORD(v268) = 1;
    }

    else
    {
      v269 = sub_22088666C();
      LODWORD(v268) = v167;
      (*(v132 + 8))(v166, v134);
    }

    sub_2206278C4(v138, v165, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v133(v165, 1, v134) == 1)
    {
      sub_22051F2BC(v165, &qword_2812990C0, MEMORY[0x277D697F8]);
      v260 = 0;
      LODWORD(v258) = 1;
    }

    else
    {
      v260 = sub_22088671C();
      LODWORD(v258) = v168;
      (*(v132 + 8))(v165, v134);
    }

    v169 = v253;
    sub_2206278C4(v138, v253, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v133(v169, 1, v134) == 1)
    {
      sub_22051F2BC(v169, &qword_2812990C0, MEMORY[0x277D697F8]);
      v254 = 0;
      v252 = 0;
    }

    else
    {
      v254 = sub_22088668C();
      v252 = v170;
      (*(v132 + 8))(v169, v134);
    }

    v171 = *(v276 + 16);
    v172 = v284;
    v171(v284, v139, v164);
    v173 = v263;
    v174 = v262;
    v175 = v264;
    (*(v263 + 104))(v262, *MEMORY[0x277D69288], v264);
    v176 = v278;
    sub_22088524C();
    v177 = v255;
    *v255 = v293;
    *(v177 + 8) = v270 & 1;
    *(v177 + 16) = v269;
    *(v177 + 24) = v268 & 1;
    *(v177 + 32) = v260;
    *(v177 + 40) = v258 & 1;
    v178 = v252;
    *(v177 + 48) = v254;
    *(v177 + 56) = v178;
    v179 = v176;
    v180 = v271;
    v181 = v172;
    v182 = v285;
    v171((v177 + *(v271 + 40)), v181, v285);
    *(v177 + 64) = 9666786;
    *(v177 + 72) = 0xA300000000000000;
    (*(v173 + 16))(v177 + *(v180 + 36), v174, v175);
    v183 = *(v180 + 44);
    v184 = v267;
    (*(v267 + 16))(v177 + v183, v179, v273);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v293 = qword_2812B6B48;
    (*(v173 + 8))(v174, v175);
    v185 = *(v276 + 8);
    v185(v284, v182);
    v185(v259, v182);
    v186 = MEMORY[0x277D697F8];
    sub_22051F2BC(v257, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v277 + 8))(v282, v272);
    v187 = MEMORY[0x277D697C0];
    sub_22051F2BC(v281, &unk_2812990E0, MEMORY[0x277D697C0]);
    sub_22051F2BC(v279, &qword_2812990C0, v186);
    v188 = v292;
    v189 = *(v291 + 8);
    v189(v245, v292);
    v190 = v286;
    (*(v286 + 8))(v289, v290);
    sub_22051F2BC(v288, &unk_2812990E0, v187);
    sub_22051F2BC(v280, &qword_2812990C0, v186);
    v189(v244, v188);
    v191 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    v192 = v293;
    swift_beginAccess();
    (*(v184 + 40))(v192 + v191, v278, v273);
    swift_endAccess();
    v193 = v287;
    v194 = *(v287 + 24);
    v195 = type metadata accessor for QuoteSummaryTimeRange();
    v196 = v256;
    (*(*(v195 - 8) + 56))(&v256[v194], 1, 1, v195);
    sub_220627930(v177, v196, type metadata accessor for PriceViewModel);
    (*(v190 + 32))(v196 + *(v193 + 20), v283, v290);
    v197 = v266;
    (*(v261 + 56))(v266 + *(v265 + 20), 1, 1, v193);
    sub_220627930(v196, v197, type metadata accessor for QuoteViewModel);
  }

  else
  {
    v141 = *(v132 + 32);
    v142 = v258;
    v141(v258, v131, v134);
    v143 = sub_220656950(v130, v142, v128);
    v259 = v144;
    LODWORD(v257) = v145;
    v146 = v277;
    v147 = v252;
    v148 = v272;
    (*(v277 + 104))(v252, *MEMORY[0x277D69120], v272, v143);
    sub_2204443BC(&qword_281299398, MEMORY[0x277D69160]);
    v149 = v147;
    sub_22089167C();
    sub_22089167C();
    if (v296 == v294 && v297 == v295)
    {
      v150 = 1;
    }

    else
    {
      v150 = sub_2208928BC();
    }

    v268 = *(v146 + 8);
    (v268)(v149, v148);

    v277 = v146 + 8;
    if (v150)
    {
      v151 = v284;
      sub_2208867CC();
      v152 = v234;
      v153 = v247;
      sub_22069DDE0(v151, v234 & 1, v247);
      (*(v276 + 8))(v151, v285);
      v154 = v246;
      v155 = v129;
      v156 = v290;
      (v293)(v246, v155, v290);
      v157 = v248;
      sub_22069E5AC(v152 & 1, v248);
      if ((*(v136 + 48))(v153, 1, v271) == 1)
      {
        sub_22051F2BC(v157, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
        (*(v286 + 8))(v154, v156);
        sub_22051F2BC(v153, qword_281294018, type metadata accessor for PriceViewModel);
        v158 = 1;
        v159 = v261;
        v160 = v260;
        v161 = v254;
        v162 = v287;
      }

      else
      {
        v161 = v254;
        sub_220627930(v153, v254, type metadata accessor for PriceViewModel);
        v198 = v287;
        (*(v286 + 32))(&v161[*(v287 + 20)], v154, v156);
        sub_220627A00(v157, &v161[*(v198 + 24)], &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
        v162 = v198;
        v158 = 0;
        v159 = v261;
        v160 = v260;
      }
    }

    else
    {
      v158 = 1;
      v159 = v261;
      v160 = v260;
      v161 = v254;
      v162 = v287;
    }

    (*(v159 + 56))(v161, v158, 1, v162);
    sub_220627A00(v161, v160, qword_281293F78, type metadata accessor for QuoteViewModel);
    v199 = sub_22088675C();
    LODWORD(v270) = v200;
    v261 = sub_22088671C();
    v202 = v201;
    v203 = sub_22088668C();
    v205 = v204;
    v206 = v284;
    sub_2208867CC();
    v207 = v263;
    v208 = v262;
    v209 = v264;
    (*(v263 + 104))(v262, *MEMORY[0x277D69288], v264);
    v210 = v278;
    sub_22088524C();
    v211 = v266;
    *v266 = v199;
    *(v211 + 8) = v270 & 1;
    v211[2] = v259;
    *(v211 + 24) = v257 & 1;
    v211[4] = v261;
    v212 = v202 & 1;
    v197 = v211;
    *(v211 + 40) = v212;
    v211[6] = v203;
    v211[7] = v205;
    v213 = v209;
    v214 = v271;
    v215 = v276;
    (*(v276 + 16))(v211 + *(v271 + 40), v206, v285);
    *(v197 + 64) = 9666786;
    *(v197 + 72) = 0xA300000000000000;
    (*(v207 + 16))(v197 + *(v214 + 36), v208, v209);
    v216 = v267;
    v217 = v273;
    (*(v267 + 16))(v197 + *(v214 + 44), v210, v273);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v218 = qword_2812B6B48;
    (*(v207 + 8))(v208, v213);
    (*(v215 + 8))(v284, v285);
    v219 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v216 + 40))(v218 + v219, v278, v217);
    swift_endAccess();
    v220 = v287;
    v221 = v283;
    v222 = v290;
    (v293)(v197 + *(v287 + 20), v283, v290);
    v223 = v197 + *(v220 + 24);
    v224 = v282;
    v225 = v258;
    sub_22069E834(v282, v223);
    (*(v274 + 8))(v225, v275);
    (v268)(v224, v272);
    v226 = *(v286 + 8);
    v226(v221, v222);
    v227 = MEMORY[0x277D697C0];
    sub_22051F2BC(v281, &unk_2812990E0, MEMORY[0x277D697C0]);
    v228 = MEMORY[0x277D697F8];
    sub_22051F2BC(v279, &qword_2812990C0, MEMORY[0x277D697F8]);
    v229 = v292;
    v230 = *(v291 + 8);
    v230(v245, v292);
    v226(v289, v222);
    sub_22051F2BC(v288, &unk_2812990E0, v227);
    sub_22051F2BC(v280, &qword_2812990C0, v228);
    v230(v244, v229);
    sub_220627A00(v260, v197 + *(v265 + 20), qword_281293F78, type metadata accessor for QuoteViewModel);
  }

  v231 = v241;
  v232 = v243;
  sub_220627930(v197, &v243[v241[7]], type metadata accessor for QuoteSummaryViewModel);
  *(v232 + v231[8]) = v238;
  sub_220627998(v232, v239, type metadata accessor for StockFeedMastheadModel);
  swift_storeEnumTagMultiPayload();
  sub_2204443BC(&qword_281293DD0, type metadata accessor for StockFeedModel);
  sub_22088AD7C();
  sub_220627864(v232, type metadata accessor for StockFeedMastheadModel);
  return sub_220627864(v242, type metadata accessor for StockFeedMastheadModel);
}