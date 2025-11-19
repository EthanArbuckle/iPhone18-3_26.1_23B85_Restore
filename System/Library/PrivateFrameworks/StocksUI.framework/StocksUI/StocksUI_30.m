uint64_t sub_2207DE838@<X0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v64 = sub_220887C9C();
  v68 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v1);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204480D0(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v66 = &v62 - v10;
  v11 = sub_22088740C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208876BC();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v62 - v22;
  v24 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = (&v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2207DF724(v65, v27, type metadata accessor for StocksActivity.Article);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    v29 = [*v27 identifier];
    v30 = sub_22089136C();
    v32 = v31;

    v33 = [v28 contentURL];
    if (v33)
    {
      v34 = v33;
      sub_220884E4C();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    swift_unknownObjectRelease();
    v46 = sub_220884E9C();
    (*(*(v46 - 8) + 56))(v7, v35, 1, v46);
    v47 = type metadata accessor for ArticleUserInfoModel();
    v48 = v67;
    v49 = v67 + v47[7];
    *(v49 + 4) = 0;
    *v49 = 0u;
    *(v49 + 1) = 0u;
    *v48 = v30;
    v48[1] = v32;
    *(v48 + v47[6]) = 1;
    result = sub_2207DF854(v7, v48 + v47[5], &qword_2812994E0, MEMORY[0x277CC9260]);
    v51 = (v48 + v47[8]);
    *v51 = 0;
    v51[1] = 0;
  }

  else
  {
    sub_2207DF78C(v27, v23, MEMORY[0x277D2FB40]);
    sub_2207DF724(v23, v19, MEMORY[0x277D2FB40]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = sub_22089267C();
      __break(1u);
    }

    else
    {
      v65 = v19;
      sub_22088804C();
      v36 = sub_2208873FC();
      v63 = v37;
      (*(v12 + 8))(v15, v11);
      v38 = sub_220884E9C();
      (*(*(v38 - 8) + 56))(v66, 1, 1, v38);
      sub_22088806C();
      sub_22088766C();
      v39 = sub_220887C8C();
      v40 = *(v68 + 8);
      v41 = v64;
      v68 += 8;
      v40(v3, v64);
      if (v39)
      {
        v42 = v36;
        v43 = [v39 jsonRepresentation];

        if (v43)
        {
          v39 = sub_22089136C();
          v45 = v44;

          sub_2207DF7F4(v23, MEMORY[0x277D2FB40]);
        }

        else
        {
          sub_2207DF7F4(v23, MEMORY[0x277D2FB40]);

          v39 = 0;
          v45 = 0;
        }

        v36 = v42;
      }

      else
      {
        sub_2207DF7F4(v23, MEMORY[0x277D2FB40]);

        v45 = 0;
      }

      sub_2204481D8();
      v53 = *(v52 + 64);
      sub_220447128(0, &qword_281298A00, MEMORY[0x277D30268], MEMORY[0x277D2FF20]);
      v55 = *(v54 + 48);
      v56 = v67;
      v57 = v63;
      *v67 = v36;
      v56[1] = v57;
      v58 = type metadata accessor for ArticleUserInfoModel();
      *(v56 + v58[6]) = 0;
      sub_2207DF854(v66, v56 + v58[5], &qword_2812994E0, MEMORY[0x277CC9260]);
      v59 = v56 + v58[7];
      v60 = v70;
      *v59 = v69;
      *(v59 + 1) = v60;
      *(v59 + 4) = v71;
      v61 = (v56 + v58[8]);
      *v61 = v39;
      v61[1] = v45;
      v40(&v65[v55], v41);
      return sub_2207DC7EC(v27 + v53, &qword_281285B20, sub_2206B1FD4);
    }
  }

  return result;
}

uint64_t StocksActivity.StockFeed.stock.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DF724(v2, v11, type metadata accessor for StocksActivity.StockFeed);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2207DF78C(v11, v7, type metadata accessor for StocksActivity.StockFeed.Series);
    v12 = sub_22088685C();
    (*(*(v12 - 8) + 16))(a1, v7, v12);
    return sub_2207DF7F4(v7, type metadata accessor for StocksActivity.StockFeed.Series);
  }

  else
  {
    v14 = sub_22088685C();
    return (*(*(v14 - 8) + 32))(a1, v11, v14);
  }
}

uint64_t StocksActivity.Article.headline.getter()
{
  v1 = v0;
  v2 = sub_2208876BC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DF724(v1, v9, type metadata accessor for StocksActivity.Article);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v9;
  }

  sub_2204481D8();
  v12 = *(v11 + 64);
  sub_2207DF78C(v9, v5, MEMORY[0x277D2FB40]);
  v13 = sub_22088768C();
  sub_2207DF7F4(v5, MEMORY[0x277D2FB40]);
  sub_2207DC7EC(&v9[v12], &qword_281285B20, sub_2206B1FD4);
  return v13;
}

uint64_t StocksActivityType.eligibilities.getter()
{
  v1 = *v0;
  if (v1 > 2)
  {
    if (v1 - 4 >= 2)
    {
      goto LABEL_7;
    }
  }

  else if (*v0)
  {
    if (v1 == 1)
    {
      sub_2204480D0(0, &unk_28127E020, MEMORY[0x277D6E1C8], MEMORY[0x277D84560]);
      v2 = sub_22088CB8C();
      v3 = *(v2 - 8);
      v4 = *(v3 + 72);
      v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_22089EF70;
      v7 = v6 + v5;
      v8 = *(v3 + 104);
      v8(v7, *MEMORY[0x277D6E1C0], v2);
      v8(v7 + v4, *MEMORY[0x277D6E1A8], v2);
      v8(v7 + 2 * v4, *MEMORY[0x277D6E1B0], v2);
      v8(v7 + 3 * v4, *MEMORY[0x277D6E1B8], v2);
      v9 = sub_2207E23F0(v6);
      swift_setDeallocating();
LABEL_8:
      swift_arrayDestroy();
      goto LABEL_9;
    }

LABEL_7:
    sub_2204480D0(0, &unk_28127E020, MEMORY[0x277D6E1C8], MEMORY[0x277D84560]);
    v14 = sub_22088CB8C();
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220899920;
    v19 = v18 + v17;
    v20 = *(v15 + 104);
    v20(v19, *MEMORY[0x277D6E1C0], v14);
    v20(v19 + v16, *MEMORY[0x277D6E1B0], v14);
    v9 = sub_2207E23F0(v18);
    swift_setDeallocating();
    goto LABEL_8;
  }

  sub_2204480D0(0, &unk_28127E020, MEMORY[0x277D6E1C8], MEMORY[0x277D84560]);
  v10 = sub_22088CB8C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220899360;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277D6E1C0], v10);
  v9 = sub_2207E23F0(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
LABEL_9:
  swift_deallocClassInstance();
  return v9;
}

unint64_t StocksActivityType.rawValue.getter()
{
  v1 = 0xD00000000000001ELL;
  v2 = *v0;
  v3 = 0xD000000000000020;
  v4 = 0xD00000000000001BLL;
  if (v2 != 4)
  {
    v4 = 0xD000000000000017;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2207DF724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207DF78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207DF7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207DF854(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2204480D0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2207DF8E8()
{
  sub_22089146C();
}

unint64_t sub_2207DF9D0@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ELL;
  v3 = *v1;
  v4 = "com.apple.stocks.v2.SymbolFeed";
  v5 = 0xD000000000000020;
  v6 = ".v2.SymbolSearch";
  v7 = 0xD00000000000001BLL;
  result = 0xD000000000000017;
  if (v3 != 4)
  {
    v7 = 0xD000000000000017;
    v6 = "com.apple.stocks.v2.Article";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v9 = "com.apple.stocks.v2.StockList";
  if (v3 != 1)
  {
    v9 = "com.apple.stocks.v2.ForYouFeed";
  }

  if (*v1)
  {
    v10 = v9;
  }

  else
  {
    v2 = 0xD00000000000001DLL;
    v10 = "ight";
  }

  if (*v1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v2 = v5;
    v11 = v4;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

uint64_t sub_2207DFB2C()
{
  v0 = type metadata accessor for StocksActivity(0);
  __swift_allocate_value_buffer(v0, qword_281295420);
  v1 = __swift_project_value_buffer(v0, qword_281295420);
  sub_220447128(0, qword_28128B8B0, type metadata accessor for ForYouSectionDescriptor, MEMORY[0x277D6E270]);
  v3 = *(v2 + 48);
  type metadata accessor for ForYouSectionDescriptor();
  swift_storeEnumTagMultiPayload();
  v4 = *MEMORY[0x277D6E250];
  v5 = sub_22088CC6C();
  (*(*(v5 - 8) + 104))(v1 + v3, v4, v5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static StocksActivity.main.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281295418 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StocksActivity(0);
  v3 = __swift_project_value_buffer(v2, qword_281295420);
  return sub_2207DF724(v3, a1, type metadata accessor for StocksActivity);
}

uint64_t sub_2207DFCBC(uint64_t (*a1)(uint64_t), SEL *a2)
{
  v5 = v2;
  v6 = sub_2208876BC();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2207DF724(v5, v13, type metadata accessor for StocksActivity.Article);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = [*v13 *a2];
    v15 = sub_22089136C();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2204481D8();
    v17 = *(v16 + 64);
    v18 = sub_2207DF78C(v13, v9, MEMORY[0x277D2FB40]);
    v15 = a1(v18);
    sub_2207DF7F4(v9, MEMORY[0x277D2FB40]);
    sub_2207DC7EC(v13 + v17, &qword_281285B20, sub_2206B1FD4);
  }

  return v15;
}

uint64_t StocksActivity.eligibilities.getter()
{
  v1 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DF724(v0, v4, type metadata accessor for StocksActivity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = MEMORY[0x277D84FA0];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_220447128(0, qword_28128B8B0, type metadata accessor for ForYouSectionDescriptor, MEMORY[0x277D6E270]);
      v9 = *(v8 + 48);
      v10 = sub_22088CC6C();
      (*(*(v10 - 8) + 8))(&v4[v9], v10);
      v7 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_5;
    case 5:
      v11 = sub_220884E9C();
      (*(*(v11 - 8) + 8))(v4, v11);
      goto LABEL_6;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
      sub_2207DF7F4(v4, type metadata accessor for StocksActivity);
      goto LABEL_3;
    case 11:
      sub_220447880();

      sub_2207DC7EC(v4, &qword_281299060, MEMORY[0x277D69810]);
LABEL_3:
      result = MEMORY[0x277D84FA0];
      break;
    case 13:
      return result;
    default:
      v7 = type metadata accessor for StocksActivity;
LABEL_5:
      sub_2207DF7F4(v4, v7);
LABEL_6:
      StocksActivity.type.getter(&v13);
      result = StocksActivityType.eligibilities.getter();
      break;
  }

  return result;
}

uint64_t StocksActivity.disableAnimation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v35 - v8;
  v10 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v35 - v16;
  v18 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DF724(v1, v21, type metadata accessor for StocksActivity);
  v22 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_220447128(0, qword_28128B8B0, type metadata accessor for ForYouSectionDescriptor, MEMORY[0x277D6E270]);
      v29 = *(v28 + 48);
      v30 = sub_22088CC6C();
      (*(*(v30 - 8) + 8))(&v21[v29], v30);
      v23 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_3;
    case 2u:
      sub_2207DF78C(v21, v9, type metadata accessor for StocksActivity.StockFeed);
      sub_2207DF724(v9, v5, type metadata accessor for StocksActivity.StockFeed);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2204472D4(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series);
        v27 = *&v5[*(v26 + 48)];
        sub_2207DF7F4(v5, type metadata accessor for StocksActivity.StockFeed.Series);
      }

      else
      {
        sub_2204472D4(0, &qword_281299050, MEMORY[0x277D69810]);
        v27 = *&v5[*(v31 + 48)];
        v32 = sub_22088685C();
        (*(*(v32 - 8) + 8))(v5, v32);
      }

      sub_2207DF7F4(v9, type metadata accessor for StocksActivity.StockFeed);
      return (v27 >> 1) & 1;
    case 4u:
      sub_2207DF78C(v21, v17, type metadata accessor for StocksActivity.Article);
      sub_2207DF724(v17, v13, type metadata accessor for StocksActivity.Article);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2207DF7F4(v13, type metadata accessor for StocksActivity.Article);
        v22 = 0;
      }

      else
      {
        sub_2204481D8();
        v34 = *&v13[*(v33 + 48)];
        sub_2207DC7EC(&v13[*(v33 + 64)], &qword_281285B20, sub_2206B1FD4);
        sub_2207DF7F4(v13, MEMORY[0x277D2FB40]);
        v22 = (v34 >> 1) & 1;
      }

      sub_2207DF7F4(v17, type metadata accessor for StocksActivity.Article);
      return v22;
    case 5u:
      v25 = sub_220884E9C();
      (*(*(v25 - 8) + 8))(v21, v25);
      return 0;
    case 0xBu:
      sub_220447880();

      sub_2207DC7EC(v21, &qword_281299060, MEMORY[0x277D69810]);
      return 0;
    case 0xDu:
      return v22;
    default:
      v23 = type metadata accessor for StocksActivity;
LABEL_3:
      sub_2207DF7F4(v21, v23);
      return 0;
  }
}

uint64_t StocksActivity.affectsNavigationStack.getter()
{
  v1 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207DF724(v0, v4, type metadata accessor for StocksActivity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_220447128(0, qword_28128B8B0, type metadata accessor for ForYouSectionDescriptor, MEMORY[0x277D6E270]);
      v10 = *(v9 + 48);
      v11 = sub_22088CC6C();
      (*(*(v11 - 8) + 8))(&v4[v10], v11);
      v7 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_3;
    case 5:
      v8 = sub_220884E9C();
      (*(*(v8 - 8) + 8))(v4, v8);
      return 1;
    case 6:
    case 8:
    case 12:
      sub_2207DF7F4(v4, type metadata accessor for StocksActivity);
      return 0;
    case 11:
      sub_220447880();

      sub_2207DC7EC(v4, &qword_281299060, MEMORY[0x277D69810]);
      return 1;
    case 13:
      return result;
    default:
      v7 = type metadata accessor for StocksActivity;
LABEL_3:
      sub_2207DF7F4(v4, v7);
      return 1;
  }
}

uint64_t sub_2207E0814()
{
  if (*v0)
  {
    return 0x694C736B636F7473;
  }

  else
  {
    return 0x6C616974696E69;
  }
}

uint64_t sub_2207E0854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v6 || (sub_2208928BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x694C736B636F7473 && a2 == 0xEA00000000007473)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2208928BC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2207E0938(uint64_t a1)
{
  v2 = sub_2207E2704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2207E0974(uint64_t a1)
{
  v2 = sub_2207E2704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StocksActivity.StockFeed.Series.encode(to:)(void *a1)
{
  v3 = v1;
  sub_22048B914(0, &qword_27CF59E88, sub_2207E2704, &type metadata for StocksActivity.StockFeed.Series.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207E2704();
  sub_220892A5C();
  v14 = 0;
  sub_22088685C();
  sub_22049114C(&qword_281299078, MEMORY[0x277D69810]);
  sub_22089283C();
  if (!v2)
  {
    v12[1] = *(v3 + *(type metadata accessor for StocksActivity.StockFeed.Series(0) + 20));
    v13 = 1;
    sub_2204480D0(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
    sub_2207E2758(&qword_27CF59E98, &qword_281299078);
    sub_22089283C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t StocksActivity.StockFeed.Series.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_22088685C();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v4);
  v28 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22048B914(0, &unk_27CF59EA0, sub_2207E2704, &type metadata for StocksActivity.StockFeed.Series.CodingKeys, MEMORY[0x277D844C8]);
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207E2704();
  sub_220892A4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v10;
  v15 = v24;
  v31 = 0;
  sub_22049114C(&qword_281299848, MEMORY[0x277D69810]);
  v16 = v27;
  v17 = v26;
  sub_22089279C();
  v18 = *(v15 + 32);
  v22 = v13;
  v18(v13, v28, v16);
  sub_2204480D0(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  v30 = 1;
  sub_2207E2758(&qword_27CF59EB0, &qword_281299848);
  sub_22089279C();
  (*(v25 + 8))(v9, v17);
  v20 = v22;
  v19 = v23;
  *&v22[*(v14 + 20)] = v29;
  sub_2207DF724(v20, v19, type metadata accessor for StocksActivity.StockFeed.Series);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2207DF7F4(v20, type metadata accessor for StocksActivity.StockFeed.Series);
}

uint64_t sub_2207E1070(uint64_t a1)
{
  v2 = sub_2208853AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_2207E3030();
    v11 = sub_22089250C();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_22049114C(&qword_281299420, MEMORY[0x277CC99D0]);
      v18 = sub_22089129C();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_22049114C(&qword_281299418, MEMORY[0x277CC99D0]);
          v25 = sub_2208912FC();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2207E1384(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_2208926AC();
    if (result)
    {
LABEL_3:
      sub_2207E2FA0();
      result = sub_22089250C();
      v3 = result;
      v18 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_2208926AC();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v18 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v17 = v4;
  while ((v18 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x223D8A700](v5, v18);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    sub_2204480D0(0, &qword_27CF59F10, type metadata accessor for WelcomeView, MEMORY[0x277D84200]);
    result = sub_22089129C();
    v9 = -1 << *(v3 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *(v6 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      v14 = ~v9;
      while (1)
      {
        result = sub_2208912FC();
        if (result)
        {
          break;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v6 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          v4 = v17;
          goto LABEL_22;
        }
      }

      v4 = v17;
      if (v5 == v17)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      v15 = *(v3 + 16);
      v8 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v16;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v18 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2207E15E8(uint64_t a1)
{
  v2 = sub_22088C37C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_2207E31EC();
    v11 = sub_22089250C();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_22049114C(&qword_2812979B0, MEMORY[0x277D6DE60]);
      v18 = sub_22089129C();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_22049114C(&qword_27CF59F28, MEMORY[0x277D6DE60]);
          v25 = sub_2208912FC();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2207E18FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2207E2E30();
    v3 = sub_22089250C();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_22089136C();
      sub_2208929EC();
      v27 = v7;
      sub_22089146C();
      v8 = sub_220892A2C();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_22089136C();
        v18 = v17;
        if (v16 == sub_22089136C() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_2208928BC();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2207E1AE4(uint64_t a1)
{
  v2 = sub_2208909DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_2207E30C4();
    v11 = sub_22089250C();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_22049114C(&qword_2812967B0, MEMORY[0x277D33FB8]);
      v18 = sub_22089129C();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_22049114C(&unk_27CF59F18, MEMORY[0x277D33FB8]);
          v25 = sub_2208912FC();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2207E1DF8(uint64_t a1)
{
  v2 = sub_22088521C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_2207E3158();
    v11 = sub_22089250C();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_22049114C(&qword_281299458, MEMORY[0x277CC9640]);
      v18 = sub_22089129C();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_22049114C(&qword_281299450, MEMORY[0x277CC9640]);
          v25 = sub_2208912FC();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2207E210C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2208926AC())
    {
LABEL_3:
      sub_2207E2EC4();
      v3 = sub_22089250C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2208926AC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x223D8A700](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_22089207C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_22044D56C(0, &qword_28127E710);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_22089208C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_22089207C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_22044D56C(0, &qword_28127E710);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_22089208C();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_2207E23F0(uint64_t a1)
{
  v2 = sub_22088CB8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_2207E34F8();
    v11 = sub_22089250C();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_22049114C(&qword_281297748, MEMORY[0x277D6E1C8]);
      v18 = sub_22089129C();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_22049114C(qword_281297730, MEMORY[0x277D6E1C8]);
          v25 = sub_2208912FC();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2207E2704()
{
  result = qword_27CF59E90;
  if (!qword_27CF59E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59E90);
  }

  return result;
}

uint64_t sub_2207E2758(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2204480D0(255, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
    sub_22049114C(a2, MEMORY[0x277D69810]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2207E2820()
{
  result = qword_27CF59EB8;
  if (!qword_27CF59EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59EB8);
  }

  return result;
}

unint64_t sub_2207E2878()
{
  result = qword_2812960E0;
  if (!qword_2812960E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812960E0);
  }

  return result;
}

unint64_t sub_2207E28D0()
{
  result = qword_2812960F8[0];
  if (!qword_2812960F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812960F8);
  }

  return result;
}

unint64_t sub_2207E2928()
{
  result = qword_27CF59EC0;
  if (!qword_27CF59EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59EC0);
  }

  return result;
}

unint64_t sub_2207E2980()
{
  result = qword_27CF59EC8;
  if (!qword_27CF59EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59EC8);
  }

  return result;
}

unint64_t sub_2207E29D8()
{
  result = qword_27CF59ED0;
  if (!qword_27CF59ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59ED0);
  }

  return result;
}

unint64_t sub_2207E2A30()
{
  result = qword_27CF59ED8;
  if (!qword_27CF59ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59ED8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StocksActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StocksActivityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2207E2C18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2207E2C54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2207E2CA0(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_2207E2D2C()
{
  result = qword_27CF59EE0;
  if (!qword_27CF59EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59EE0);
  }

  return result;
}

unint64_t sub_2207E2D84()
{
  result = qword_27CF59EE8;
  if (!qword_27CF59EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59EE8);
  }

  return result;
}

unint64_t sub_2207E2DDC()
{
  result = qword_27CF59EF0;
  if (!qword_27CF59EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59EF0);
  }

  return result;
}

void sub_2207E2E30()
{
  if (!qword_27CF59F00)
  {
    type metadata accessor for ActivityType(255);
    sub_22049114C(&qword_27CF56738, type metadata accessor for ActivityType);
    v0 = sub_22089251C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59F00);
    }
  }
}

void sub_2207E2EC4()
{
  if (!qword_28127E3C0)
  {
    sub_22044D56C(255, &qword_28127E710);
    sub_2207E2F38();
    v0 = sub_22089251C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E3C0);
    }
  }
}

unint64_t sub_2207E2F38()
{
  result = qword_28127E700;
  if (!qword_28127E700)
  {
    sub_22044D56C(255, &qword_28127E710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127E700);
  }

  return result;
}

void sub_2207E2FA0()
{
  if (!qword_27CF59F08)
  {
    sub_2204480D0(255, &qword_27CF59F10, type metadata accessor for WelcomeView, MEMORY[0x277D84200]);
    v0 = sub_22089251C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59F08);
    }
  }
}

void sub_2207E3030()
{
  if (!qword_28127E408)
  {
    sub_2208853AC();
    sub_22049114C(&qword_281299420, MEMORY[0x277CC99D0]);
    v0 = sub_22089251C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E408);
    }
  }
}

void sub_2207E30C4()
{
  if (!qword_28127E3E8)
  {
    sub_2208909DC();
    sub_22049114C(&qword_2812967B0, MEMORY[0x277D33FB8]);
    v0 = sub_22089251C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E3E8);
    }
  }
}

void sub_2207E3158()
{
  if (!qword_28127E410)
  {
    sub_22088521C();
    sub_22049114C(&qword_281299458, MEMORY[0x277CC9640]);
    v0 = sub_22089251C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E410);
    }
  }
}

void sub_2207E31EC()
{
  if (!qword_28127E3F8)
  {
    sub_22088C37C();
    sub_22049114C(&qword_2812979B0, MEMORY[0x277D6DE60]);
    v0 = sub_22089251C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E3F8);
    }
  }
}

uint64_t sub_2207E3280(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22048B914(0, &qword_28127E3E0, sub_2207E34A4, &type metadata for ForYouFeedGroupKnobs.CodingKeys, MEMORY[0x277D84098]);
    v3 = sub_22089250C();
    v4 = 0;
    v5 = v3 + 56;
    v28 = v1;
    v29 = a1 + 32;
    v27 = v3;
    while (1)
    {
      v30 = v4;
      v6 = (v29 + 32 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = *(v6 + 24);
      sub_2208929EC();

      sub_22089146C();
      sub_220892A0C();
      if (v10 != 1)
      {
        MEMORY[0x223D8ABA0](v9);
      }

      result = sub_220892A2C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        do
        {
          v18 = v17 + 32 * v13;
          result = *v18;
          v19 = *(v18 + 16);
          v20 = *(v18 + 24);
          v21 = *v18 == v8 && *(v18 + 8) == v7;
          if (v21 || (result = sub_2208928BC(), (result & 1) != 0))
          {
            if (v20)
            {
              if (v10)
              {
                goto LABEL_3;
              }
            }

            else
            {
              if (v19 == v9)
              {
                v22 = v10;
              }

              else
              {
                v22 = 1;
              }

              if ((v22 & 1) == 0)
              {
LABEL_3:

                v3 = v27;
                v1 = v28;
                goto LABEL_4;
              }
            }
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while ((v15 & (1 << v13)) != 0);
        v3 = v27;
        v1 = v28;
        v17 = *(v27 + 48);
      }

      *(v5 + 8 * v14) = v15 | v16;
      v23 = v17 + 32 * v13;
      *v23 = v8;
      *(v23 + 8) = v7;
      *(v23 + 16) = v9;
      *(v23 + 24) = v10;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      v4 = v30 + 1;
      if (v30 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_2207E34A4()
{
  result = qword_28128F308;
  if (!qword_28128F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F308);
  }

  return result;
}

void sub_2207E34F8()
{
  if (!qword_28127E3F0)
  {
    sub_22088CB8C();
    sub_22049114C(&qword_281297748, MEMORY[0x277D6E1C8]);
    v0 = sub_22089251C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E3F0);
    }
  }
}

uint64_t sub_2207E3594()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2207E3620()
{
  sub_22089146C();
}

uint64_t sub_2207E3698()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2207E3720@<X0>(char *a1@<X8>)
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

void sub_2207E3780(uint64_t *a1@<X8>)
{
  v2 = 0x676E696863746177;
  if (*v1)
  {
    v2 = 0x6863746157746F6ELL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000676E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2207E37C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6863746157746F6ELL;
  }

  else
  {
    v3 = 0x676E696863746177;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB00000000676E69;
  }

  if (*a2)
  {
    v5 = 0x6863746157746F6ELL;
  }

  else
  {
    v5 = 0x676E696863746177;
  }

  if (*a2)
  {
    v6 = 0xEB00000000676E69;
  }

  else
  {
    v6 = 0xE800000000000000;
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

uint64_t sub_2207E3878@<X0>(BOOL *a1@<X8>)
{
  *a1 = (*v1 & 1) == 0;
  v3 = *MEMORY[0x277D6D368];
  v4 = sub_22088AC9C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

BOOL sub_2207E3900(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_2207E3EA8(v2 | *a1, *(a1 + 1), v3 | *a2, *(a2 + 1));
}

uint64_t sub_2207E393C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2207E5B60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2207E3970@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = 0;
  if (*(result + 1) == 1)
  {
    v4 = 0;
    if ((*result & 1) == 0)
    {
      v5 = *(result + 8);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      sub_220884CAC();

      sub_220447764(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
      v8 = swift_allocObject();
      v9 = MEMORY[0x277D83B88];
      *(v8 + 16) = xmmword_220899360;
      v10 = MEMORY[0x277D83C10];
      *(v8 + 56) = v9;
      *(v8 + 64) = v10;
      *(v8 + 32) = v5;
      v3 = sub_22089133C();
      v4 = v11;
    }
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

void sub_2207E3AFC(void *a1@<X8>)
{
  v2 = sub_22089132C();

  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2207E3BD0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = sub_22088BA1C();
  v6 = *(*(v5 - 8) + 104);
  v7 = MEMORY[0x277D6D9A8];
  if ((v4 & 1) == 0 && !*a1)
  {
    v7 = MEMORY[0x277D6D998];
  }

  v8 = *v7;

  return v6(a2, v8, v5);
}

uint64_t getEnumTagSinglePayload for WatchlistCommandState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WatchlistCommandState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_2207E3DA4()
{
  v0 = sub_22089132C();

  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {

    sub_22088BE6C();
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_2207E3EA8(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = (a1 & 1) == 0;
  if (a1)
  {
    v9 = 0x6863746157746F6ELL;
  }

  else
  {
    v9 = 0x676E696863746177;
  }

  if (v8)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xEB00000000676E69;
  }

  v11 = (a3 & 1) == 0;
  if (a3)
  {
    v12 = 0x6863746157746F6ELL;
  }

  else
  {
    v12 = 0x676E696863746177;
  }

  if (v11)
  {
    v13 = 0xE800000000000000;
  }

  else
  {
    v13 = 0xEB00000000676E69;
  }

  if (v9 == v12 && v10 == v13)
  {

    if (((a1 ^ a3) & 0x100) != 0)
    {
      return 0;
    }

    return a2 == a4;
  }

  v15 = sub_2208928BC();

  result = 0;
  if ((a1 ^ a3) & 0x100) == 0 && (v15)
  {
    return a2 == a4;
  }

  return result;
}

uint64_t sub_2207E3FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088BA1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  WatchlistCommandContext = type metadata accessor for CreateWatchlistCommandContext(0);
  MEMORY[0x28223BE20](WatchlistCommandContext - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WatchlistCreationRouteModel();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576A98(a1, v19);
  v20 = &v19[*(v16 + 28)];
  *v20 = a2;
  *(v20 + 1) = a3;
  sub_2204A80F0(a2, a3);
  if (qword_281296F88 != -1)
  {
    swift_once();
  }

  sub_2207E5898(v19, v14, type metadata accessor for WatchlistCreationRouteModel);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();

  v23 = [v22 bundleForClass_];
  sub_220884CAC();

  v24 = sub_22089132C();
  v25 = [objc_opt_self() systemImageNamed_];

  (*(v7 + 104))(v10, *MEMORY[0x277D6D9A8], v6);
  sub_22088B17C();
  swift_allocObject();
  v26 = sub_22088B10C();
  sub_2207E5900(v19, type metadata accessor for WatchlistCreationRouteModel);
  return v26;
}

uint64_t sub_2207E42DC()
{
  v0 = sub_22088BA1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281296F80 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_220884CAC();

  v8 = sub_22089132C();
  v9 = [objc_opt_self() systemImageNamed_];

  (*(v1 + 104))(v4, *MEMORY[0x277D6D9A8], v0);
  sub_22088B17C();
  swift_allocObject();
  return sub_22088B0FC();
}

uint64_t sub_2207E451C(uint64_t a1)
{
  sub_2207E5960();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v23[3] = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207E59BC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207E5A30();
  MEMORY[0x28223BE20](v9 - 8, v10);
  sub_2207E5AE0();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = sub_22088685C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281296F90 != -1)
  {
    swift_once();
  }

  (*(v14 + 16))(v17, a1, v13);

  v18 = sub_22088E1FC();
  v23[1] = v19;
  v23[2] = v18;
  v24 = 1;
  v25 = 0;
  sub_2204654EC();
  v20 = MEMORY[0x277D837D0];
  sub_22088CB4C();
  v24 = 1;
  v25 = 0;
  sub_220471B04(0, &qword_28127EBE0, v20, MEMORY[0x277D83D88]);
  sub_22088CB4C();
  v24 = 1;
  v25 = 0;
  sub_22047A590();
  sub_22088B8EC();
  sub_2207E5D40(0, &qword_281297BF0, sub_22047A590);
  (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
  v24 = 1;
  v25 = 0;
  sub_22088BD6C();
  sub_22088B17C();
  swift_allocObject();
  return sub_22088B0BC();
}

uint64_t sub_2207E4920(uint64_t a1)
{
  sub_2207E5D40(0, &qword_27CF59F48, MEMORY[0x277D6DC30]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_2207E5DB0();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281296F90 != -1)
  {
    swift_once();
  }

  (*(v7 + 16))(v10, a1, v6);

  sub_22089132C();
  v12 = 1;
  v13 = 0;
  sub_2204654EC();
  sub_22088B8EC();
  v12 = 1;
  v13 = 0;
  sub_22088BE7C();
  sub_22088B8EC();
  sub_22088B25C();
  swift_allocObject();
  return sub_22088B23C();
}

uint64_t sub_2207E4BBC()
{
  v0 = sub_22088BA1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281296FB8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_220884CAC();

  v8 = sub_22089132C();
  v9 = [objc_opt_self() systemImageNamed_];

  (*(v1 + 104))(v4, *MEMORY[0x277D6D9A8], v0);
  sub_22088B17C();
  swift_allocObject();
  return sub_22088B0FC();
}

uint64_t sub_2207E4DF0(uint64_t a1)
{
  sub_2206350A0();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447764(0, &qword_27CF57EE8, sub_220635150, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v42 = &v36 - v8;
  sub_2207E5790(0, &qword_27CF59F38, type metadata accessor for SortWatchlistCommandContext);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v41 = &v36 - v11;
  v12 = type metadata accessor for SortWatchlistCommandContext(0);
  MEMORY[0x28223BE20](v12, v13);
  v40 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220885DBC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v12 + 24)) == 1)
  {
    v38 = v5;
    sub_220885DCC();
    v37 = sub_220885D8C();
    v39 = v20;
    v21 = *(v16 + 8);
    v21(v19, v15);
    v46 = 0;
    v47 = 0xE000000000000000;
    if (qword_281296FB0 != -1)
    {
      swift_once();
    }

    v22 = sub_22088E1FC();
    MEMORY[0x223D89680](v22);

    MEMORY[0x223D89680](14906, 0xE200000000000000);
    v23 = sub_2208869BC();
    MEMORY[0x223D89680](v23);

    MEMORY[0x223D89680](14906, 0xE200000000000000);
    v43 = sub_220885DEC();
    v44 = v24;
    v45 = v25 & 1;
    sub_2207E580C();
    sub_22089264C();
    MEMORY[0x223D89680](14906, 0xE200000000000000);
    sub_220885DCC();
    v26 = sub_220885DAC();
    v21(v19, v15);
    v43 = v26;
    v27 = sub_22089287C();
    MEMORY[0x223D89680](v27);

    v28 = v37;
  }

  else
  {
    v28 = sub_220885D6C();
    v39 = v29;
    v46 = 0;
    v47 = 0xE000000000000000;
    if (qword_281296FB0 != -1)
    {
      swift_once();
    }

    v30 = sub_22088E1FC();
    MEMORY[0x223D89680](v30);

    MEMORY[0x223D89680](14906, 0xE200000000000000);
    v31 = sub_2208869BC();
    MEMORY[0x223D89680](v31);

    MEMORY[0x223D89680](14906, 0xE200000000000000);
    v43 = sub_220885DEC();
    v44 = v32;
    v45 = v33 & 1;
    sub_2207E580C();
    sub_22089264C();
  }

  if (qword_281296FB0 != -1)
  {
    swift_once();
  }

  sub_2207E5898(a1, v40, type metadata accessor for SortWatchlistCommandContext);
  v43 = v28;
  v44 = v39;

  sub_22088CB5C();
  sub_220635150();
  (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
  sub_22088BD7C();
  sub_22088B17C();
  swift_allocObject();
  return sub_22088B0AC();
}

uint64_t sub_2207E53A0(uint64_t a1, uint64_t a2)
{
  sub_2206350A0();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v31[1] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447764(0, &qword_27CF57EE8, sub_220635150, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v31 - v9;
  sub_2207E5790(0, &qword_27CF59F30, type metadata accessor for ChangeWatchlistDisplayContext);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v13 = type metadata accessor for ChangeWatchlistDisplayContext(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = v31 - v19;
  v21 = sub_220886A4C();
  (*(*(v21 - 8) + 16))(v20, a1, v21);
  v22 = *(v13 + 20);
  v23 = sub_220885D4C();
  (*(*(v23 - 8) + 16))(&v20[v22], a2, v23);
  if (qword_281296FC8 != -1)
  {
    swift_once();
  }

  sub_2207E5898(v20, v17, type metadata accessor for ChangeWatchlistDisplayContext);

  v32 = sub_22088E1FC();
  v33 = v24;
  MEMORY[0x223D89680](14906, 0xE200000000000000);
  v25 = sub_2208869BC();
  MEMORY[0x223D89680](v25);

  MEMORY[0x223D89680](14906, 0xE200000000000000);
  v26 = sub_220885D2C();
  MEMORY[0x223D89680](v26);

  v32 = sub_220885D2C();
  v33 = v27;
  sub_22088CB5C();
  sub_220635150();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  sub_22088BD7C();
  sub_22088B17C();
  swift_allocObject();
  v29 = sub_22088B0AC();
  sub_2207E5900(v20, type metadata accessor for ChangeWatchlistDisplayContext);
  return v29;
}

void sub_2207E5790(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22088CB6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2207E580C()
{
  if (!qword_27CF59F40)
  {
    sub_220471B04(255, &qword_28127E908, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59F40);
    }
  }
}

uint64_t sub_2207E5898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207E5900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2207E5960()
{
  if (!qword_281297AC8)
  {
    sub_2204654EC();
    v0 = sub_22088BD9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297AC8);
    }
  }
}

void sub_2207E59BC()
{
  if (!qword_281297BE8)
  {
    sub_2207E5D40(255, &qword_281297BF0, sub_22047A590);
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297BE8);
    }
  }
}

void sub_2207E5A30()
{
  if (!qword_281297750)
  {
    sub_22088685C();
    sub_220471B04(255, &qword_28127EBE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_2204654EC();
    v0 = sub_22088CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297750);
    }
  }
}

void sub_2207E5AE0()
{
  if (!qword_281297758)
  {
    sub_22088685C();
    sub_2204654EC();
    v0 = sub_22088CB6C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297758);
    }
  }
}

uint64_t sub_2207E5B60()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

void sub_2207E5D40(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_2204654EC();
    v4 = sub_22088B8FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2207E5DB0()
{
  if (!qword_27CF59F50)
  {
    sub_2204654EC();
    v0 = sub_22088B8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59F50);
    }
  }
}

uint64_t type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier()
{
  result = qword_28127F368;
  if (!qword_28127F368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2207E5EB0(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v25 = a1;
  v28 = sub_22088B64C();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207E7F18(0, &qword_281297838, MEMORY[0x277D6DF88]);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - v10;
  sub_2205AB5A4();
  MEMORY[0x28223BE20](v12 - 8, v13);
  sub_2207E7F18(0, &qword_281296E78, MEMORY[0x277D6EC60]);
  v26 = *(v14 - 8);
  v27 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v25 - v16;
  v34 = v3;
  v18 = sub_2205735A8(sub_2207E800C, v33);
  sub_220576D44();
  v20 = v19;
  v21 = sub_2207E802C(&qword_281297E38, sub_220576D44);
  v22 = sub_2207E802C(&unk_281297E40, sub_220576D44);
  MEMORY[0x223D80A20](v18, v20, v21, v22);
  type metadata accessor for StockSearchSectionDescriptor();
  type metadata accessor for StockSearchModel();
  sub_2207E802C(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor);
  sub_2207E802C(&qword_281291EB0, type metadata accessor for StockSearchModel);
  sub_22088E7CC();
  v23 = v28;
  (*(v4 + 104))(v7, *MEMORY[0x277D6D868], v28);
  sub_2207E802C(&qword_281286DE8, type metadata accessor for StockSearchSectionDescriptor);
  sub_22088C67C();
  (*(v4 + 8))(v7, v23);
  v32(v11);
  (*(v29 + 8))(v11, v30);
  return (*(v26 + 8))(v17, v27);
}

uint64_t sub_2207E630C(uint64_t a1, uint64_t a2)
{
  sub_2205AB764();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = type metadata accessor for StockSearchSectionDescriptor();
  MEMORY[0x28223BE20](v5, v6);
  sub_220576D44();
  sub_22088B2AC();
  v14 = a2;
  v7 = sub_2205738E8(sub_2207E8074, v13);
  sub_2204D4A18();
  v9 = v8;
  v10 = sub_2207E802C(&qword_281297F48, sub_2204D4A18);
  v11 = sub_2207E802C(&qword_281297F50, sub_2204D4A18);
  MEMORY[0x223D80A20](v7, v9, v10, v11);
  type metadata accessor for StockSearchModel();
  sub_2207E802C(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor);
  sub_2207E802C(&qword_281291EB0, type metadata accessor for StockSearchModel);
  return sub_22088B29C();
}

uint64_t sub_2207E654C@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v212 = a1;
  v230 = a2;
  v220 = sub_220886A4C();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220, v2);
  v218 = &v201 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2208852DC();
  v228 = *(v4 - 8);
  v229 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v242 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_2208857EC();
  v225 = *(v227 - 8);
  MEMORY[0x28223BE20](v227, v7);
  v224 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_22088699C();
  v241 = *(v226 - 8);
  MEMORY[0x28223BE20](v226, v9);
  v234 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v238 = &v201 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v211 = &v201 - v16;
  v17 = sub_220885D4C();
  v239 = *(v17 - 8);
  v240 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v217 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v215 = &v201 - v22;
  sub_22045443C(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v216 = &v201 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v214 = (&v201 - v28);
  sub_22045443C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v208 = &v201 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v206 = &v201 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v204 = &v201 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v202 = &v201 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v232 = &v201 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v233 = (&v201 - v46);
  MEMORY[0x28223BE20](v47, v48);
  v207 = &v201 - v49;
  MEMORY[0x28223BE20](v50, v51);
  v205 = &v201 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v203 = &v201 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v201 = &v201 - v58;
  MEMORY[0x28223BE20](v59, v60);
  v235 = &v201 - v61;
  MEMORY[0x28223BE20](v62, v63);
  v231 = &v201 - v64;
  v237 = sub_22088685C();
  v65 = *(v237 - 8);
  MEMORY[0x28223BE20](v237, v66);
  v236 = &v201 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68, v69);
  v71 = &v201 - v70;
  v210 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v210, v72);
  v74 = &v201 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75, v76);
  v78 = &v201 - v77;
  MEMORY[0x28223BE20](v79, v80);
  v82 = &v201 - v81;
  MEMORY[0x28223BE20](v83, v84);
  v86 = &v201 - v85;
  v87 = type metadata accessor for StockSearchModel();
  MEMORY[0x28223BE20](v87, v88);
  v222 = &v201 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90, v91);
  v93 = &v201 - v92;
  sub_2204D4A18();
  sub_22088AD8C();
  v223 = v87;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v221 = v65;
  if (EnumCaseMultiPayload == 1)
  {
    sub_22049550C();
    v231 = v95;
    v96 = *(v95 + 48);
    sub_22050381C(v93, v78);
    (*(v219 + 32))(v218, &v93[v96], v220);
    v215 = *(v65 + 16);
    v97 = v237;
    (v215)(v236, v78, v237);
    v98 = v210;
    v99 = *(v210 + 20);
    v214 = MEMORY[0x277D697F8];
    v235 = v78;
    sub_2204B2690(&v78[v99], v233, &qword_2812990C0, MEMORY[0x277D697F8]);
    v100 = type metadata accessor for StockSparklineViewModel(0);
    v101 = v216;
    (*(*(v100 - 8) + 56))(v216, 1, 1, v100);
    v102 = type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier();
    v103 = v240;
    v104 = *(v239 + 16);
    v105 = v217;
    v104(v217, v212 + *(v102 + 20), v240);
    (v215)(v74, v236, v97);
    v106 = v233;
    v107 = v214;
    sub_2204B2690(v233, &v74[v98[5]], &qword_2812990C0, v214);
    sub_2204B2690(v101, &v74[v98[6]], qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    v104(&v74[v98[8]], v105, v103);
    v108 = v98[9];
    v209 = v74;
    v74[v108] = 0;
    v109 = v232;
    v110 = v107;
    sub_2204B2690(v106, v232, &qword_2812990C0, v107);
    sub_2208867CC();
    v111 = v202;
    sub_2204B2690(v109, v202, &qword_2812990C0, v110);
    v112 = sub_22088676C();
    v113 = *(v112 - 8);
    v114 = *(v113 + 48);
    if (v114(v111, 1, v112) == 1)
    {
      sub_2204B37D0(v111, &qword_2812990C0, MEMORY[0x277D697F8]);
      v215 = 0;
      LODWORD(v214) = 1;
    }

    else
    {
      v215 = sub_22088675C();
      LODWORD(v214) = v134;
      (*(v113 + 8))(v111, v112);
    }

    v135 = v225;
    v136 = v204;
    v137 = v232;
    sub_2204B2690(v232, v204, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v114(v136, 1, v112) == 1)
    {
      sub_2204B37D0(v136, &qword_2812990C0, MEMORY[0x277D697F8]);
      v225 = 0;
      LODWORD(v213) = 1;
    }

    else
    {
      v225 = sub_22088666C();
      LODWORD(v213) = v141;
      (*(v113 + 8))(v136, v112);
    }

    v142 = v206;
    sub_2204B2690(v137, v206, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v114(v142, 1, v112) == 1)
    {
      sub_2204B37D0(v142, &qword_2812990C0, MEMORY[0x277D697F8]);
      v212 = 0;
      LODWORD(v211) = 1;
    }

    else
    {
      v212 = sub_22088671C();
      LODWORD(v211) = v146;
      (*(v113 + 8))(v142, v112);
    }

    v147 = v208;
    sub_2204B2690(v137, v208, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v114(v147, 1, v112) == 1)
    {
      sub_2204B37D0(v147, &qword_2812990C0, MEMORY[0x277D697F8]);
      v207 = 0;
      v148 = 0;
    }

    else
    {
      v207 = sub_22088668C();
      v148 = v153;
      (*(v113 + 8))(v147, v112);
    }

    v154 = v238;
    v155 = &v209[v98[7]];
    v210 = *(v241 + 16);
    v156 = v226;
    (v210)(v238, v234, v226);
    v157 = v224;
    v158 = v227;
    (*(v135 + 104))(v224, *MEMORY[0x277D69288], v227);
    v159 = v242;
    sub_22088524C();
    *v155 = v215;
    v155[8] = v214 & 1;
    *(v155 + 2) = v225;
    v155[24] = v213 & 1;
    *(v155 + 4) = v212;
    v155[40] = v211 & 1;
    *(v155 + 6) = v207;
    *(v155 + 7) = v148;
    v160 = type metadata accessor for PriceViewModel();
    (v210)(&v155[v160[10]], v154, v156);
    *(v155 + 8) = 9666786;
    *(v155 + 9) = 0xA300000000000000;
    (*(v135 + 16))(&v155[v160[9]], v157, v158);
    v161 = v228;
    v162 = v159;
    v163 = v229;
    (*(v228 + 16))(&v155[v160[11]], v162, v229);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v164 = qword_2812B6B48;
    (*(v135 + 8))(v157, v158);
    v165 = *(v241 + 8);
    v165(v238, v156);
    v165(v234, v156);
    v166 = MEMORY[0x277D697F8];
    sub_2204B37D0(v232, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v239 + 8))(v217, v240);
    sub_2204B37D0(v216, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    sub_2204B37D0(v233, &qword_2812990C0, v166);
    (*(v221 + 8))(v236, v237);
    v167 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v161 + 40))(v164 + v167, v242, v163);
    swift_endAccess();
    v168 = *(v231 + 48);
    v169 = v209;
    v170 = v222;
    sub_220527BCC(v209, v222);
    v171 = v219;
    v172 = v218;
    v173 = v220;
    (*(v219 + 16))(v170 + v168, v218, v220);
    swift_storeEnumTagMultiPayload();
    sub_2207E802C(&qword_281291EB0, type metadata accessor for StockSearchModel);
    sub_22088AD7C();
    sub_2204EFAD0(v169);
    (*(v171 + 8))(v172, v173);
    v174 = v235;
  }

  else
  {
    sub_22050381C(v93, v86);
    v234 = *(v65 + 16);
    v213 = v71;
    v115 = v71;
    v116 = v237;
    (v234)(v115, v86, v237);
    v117 = v210;
    v118 = *(v210 + 20);
    v233 = MEMORY[0x277D697F8];
    v236 = v86;
    sub_2204B2690(&v86[v118], v231, &qword_2812990C0, MEMORY[0x277D697F8]);
    v119 = type metadata accessor for StockSparklineViewModel(0);
    v120 = v214;
    (*(*(v119 - 8) + 56))(v214, 1, 1, v119);
    v121 = type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier();
    v122 = v240;
    v123 = *(v239 + 16);
    v124 = v215;
    v123(v215, v212 + *(v121 + 20), v240);
    (v234)(v82, v213, v116);
    v125 = v231;
    v126 = v233;
    sub_2204B2690(v231, &v82[v117[5]], &qword_2812990C0, v233);
    sub_2204B2690(v120, &v82[v117[6]], qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    v123(&v82[v117[8]], v124, v122);
    v82[v117[9]] = 0;
    v127 = v235;
    v128 = v126;
    sub_2204B2690(v125, v235, &qword_2812990C0, v126);
    v129 = v211;
    sub_2208867CC();
    v130 = v201;
    sub_2204B2690(v127, v201, &qword_2812990C0, v128);
    v131 = sub_22088676C();
    v132 = *(v131 - 8);
    v133 = *(v132 + 48);
    if (v133(v130, 1, v131) == 1)
    {
      sub_2204B37D0(v130, &qword_2812990C0, MEMORY[0x277D697F8]);
      v234 = 0;
      LODWORD(v233) = 1;
    }

    else
    {
      v138 = sub_22088675C();
      v127 = v235;
      v234 = v138;
      LODWORD(v233) = v139;
      (*(v132 + 8))(v130, v131);
    }

    v140 = v203;
    sub_2204B2690(v127, v203, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v133(v140, 1, v131) == 1)
    {
      sub_2204B37D0(v140, &qword_2812990C0, MEMORY[0x277D697F8]);
      v220 = 0;
      LODWORD(v219) = 1;
    }

    else
    {
      v143 = sub_22088666C();
      v127 = v235;
      v220 = v143;
      LODWORD(v219) = v144;
      (*(v132 + 8))(v140, v131);
    }

    v145 = v205;
    sub_2204B2690(v127, v205, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v133(v145, 1, v131) == 1)
    {
      sub_2204B37D0(v145, &qword_2812990C0, MEMORY[0x277D697F8]);
      v218 = 0;
      LODWORD(v217) = 1;
    }

    else
    {
      v149 = sub_22088671C();
      v127 = v235;
      v218 = v149;
      LODWORD(v217) = v150;
      (*(v132 + 8))(v145, v131);
    }

    v151 = v207;
    sub_2204B2690(v127, v207, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v133(v151, 1, v131) == 1)
    {
      sub_2204B37D0(v151, &qword_2812990C0, MEMORY[0x277D697F8]);
      v152 = 0;
      v216 = 0;
    }

    else
    {
      v175 = v117;
      v176 = v151;
      v177 = sub_22088668C();
      v216 = v178;
      v179 = v176;
      v117 = v175;
      (*(v132 + 8))(v179, v131);
      v152 = v177;
    }

    v180 = &v82[v117[7]];
    v232 = v82;
    v212 = *(v241 + 16);
    v181 = v238;
    v182 = v226;
    v212(v238, v129, v226);
    v183 = v225;
    v184 = v224;
    v185 = v227;
    (*(v225 + 104))(v224, *MEMORY[0x277D69288], v227);
    v186 = v242;
    sub_22088524C();
    *v180 = v234;
    v180[8] = v233 & 1;
    *(v180 + 2) = v220;
    v180[24] = v219 & 1;
    *(v180 + 4) = v218;
    v180[40] = v217 & 1;
    *(v180 + 6) = v152;
    v187 = v185;
    *(v180 + 7) = v216;
    v188 = type metadata accessor for PriceViewModel();
    v189 = v181;
    v190 = v182;
    v212(&v180[v188[10]], v189, v182);
    *(v180 + 8) = 9666786;
    *(v180 + 9) = 0xA300000000000000;
    v191 = v187;
    (*(v183 + 16))(&v180[v188[9]], v184, v187);
    v192 = v228;
    v193 = &v180[v188[11]];
    v194 = v229;
    (*(v228 + 16))(v193, v186, v229);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v195 = qword_2812B6B48;
    (*(v183 + 8))(v184, v191);
    v196 = *(v241 + 8);
    v196(v238, v190);
    v196(v211, v190);
    v197 = MEMORY[0x277D697F8];
    sub_2204B37D0(v235, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v239 + 8))(v215, v240);
    sub_2204B37D0(v214, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    sub_2204B37D0(v231, &qword_2812990C0, v197);
    (*(v221 + 8))(v213, v237);
    v198 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v192 + 40))(v195 + v198, v242, v194);
    swift_endAccess();
    v199 = v232;
    sub_220527BCC(v232, v222);
    swift_storeEnumTagMultiPayload();
    sub_2207E802C(&qword_281291EB0, type metadata accessor for StockSearchModel);
    sub_22088AD7C();
    sub_2204EFAD0(v199);
    v174 = v236;
  }

  return sub_2204EFAD0(v174);
}

void sub_2207E7F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockSearchSectionDescriptor();
    v8[1] = type metadata accessor for StockSearchModel();
    v8[2] = sub_2207E802C(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor);
    v8[3] = sub_2207E802C(&qword_281291EB0, type metadata accessor for StockSearchModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2207E802C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2207E8094()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207E8820();
  v6[3] = 1;
  v6[1] = 100;
  v6[2] = -10;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_220886C3C();
  qword_27CF59F58 = result;
  return result;
}

uint64_t sub_2207E81E8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207E8820();
  v6[3] = 1;
  v6[1] = 100;
  v6[2] = -10;
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  result = sub_220886C3C();
  qword_27CF59F60 = result;
  return result;
}

uint64_t Settings.Earnings.ConfigOverrides.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_220886B6C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.Earnings.ConfigOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_220886B6C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.Earnings.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C8StocksUIE4TipsV8EarningsV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_2207E85AC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v12 - v8;
  (*(v1 + 104))(&v12 - v8, *MEMORY[0x277D6D098], v0, v7);
  type metadata accessor for Settings.Earnings.ConfigOverrides();
  swift_allocObject();
  (*(v1 + 16))(v4, v9, v0);
  v10 = sub_220886B6C();
  result = (*(v1 + 8))(v9, v0);
  qword_281298E18 = v10;
  return result;
}

uint64_t static Settings.Earnings.configOverrides.getter()
{
  if (qword_281298E10 != -1)
  {
    swift_once();
  }
}

uint64_t type metadata accessor for Settings.Earnings.ConfigOverrides()
{
  result = qword_281298E48;
  if (!qword_281298E48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2207E8820()
{
  if (!qword_281298CC0)
  {
    v0 = sub_220886C4C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298CC0);
    }
  }
}

uint64_t sub_2207E8888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a3;
  sub_2207E9748(0, &qword_27CF5A000, sub_2205715CC);
  v54 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v57 = &v52 - v7;
  v8 = type metadata accessor for StocksAudioTrack();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v53 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220571538();
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FDBFC(0);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = (&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v52 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v52 - v27;
  sub_2205715CC();
  v55 = a1;
  sub_2208878BC();
  v56 = a2;
  sub_2208878BC();
  v29 = *(v13 + 56);
  sub_2207E9808(v28, v16, sub_2204FDBFC);
  sub_2207E9808(v25, &v16[v29], sub_2204FDBFC);
  v30 = *(v9 + 48);
  if (v30(v16, 1, v8) == 1)
  {
    sub_2207E97A8(v25, sub_2204FDBFC);
    sub_2207E97A8(v28, sub_2204FDBFC);
    if (v30(&v16[v29], 1, v8) == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_2207E9808(v16, v21, sub_2204FDBFC);
  if (v30(&v16[v29], 1, v8) == 1)
  {
    sub_2207E97A8(v25, sub_2204FDBFC);
    sub_2207E97A8(v28, sub_2204FDBFC);
    sub_2207E97A8(v21, type metadata accessor for StocksAudioTrack);
LABEL_6:
    sub_2207E97A8(v16, sub_220571538);
    goto LABEL_7;
  }

  v32 = v53;
  sub_2205717B0(&v16[v29], v53);
  v33 = [*v21 identifier];
  v52 = sub_22089136C();
  v35 = v34;

  v36 = [*v32 identifier];
  v37 = sub_22089136C();
  v39 = v38;

  if (v52 == v37 && v35 == v39)
  {

    sub_2207E97A8(v25, sub_2204FDBFC);
    sub_2207E97A8(v28, sub_2204FDBFC);
    sub_2207E97A8(v32, type metadata accessor for StocksAudioTrack);
    sub_2207E97A8(v21, type metadata accessor for StocksAudioTrack);
LABEL_12:
    sub_2207E97A8(v16, sub_2204FDBFC);
    goto LABEL_13;
  }

  v51 = sub_2208928BC();

  sub_2207E97A8(v25, sub_2204FDBFC);
  sub_2207E97A8(v28, sub_2204FDBFC);
  sub_2207E97A8(v32, type metadata accessor for StocksAudioTrack);
  sub_2207E97A8(v21, type metadata accessor for StocksAudioTrack);
  sub_2207E97A8(v16, sub_2204FDBFC);
  if (v51)
  {
LABEL_13:
    v40 = v57;
    v41 = v57 + *(v54 + 48);
    sub_2207E9808(v55, v57, sub_2205715CC);
    sub_2207E9808(v56, v41, sub_2205715CC);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        result = swift_getEnumCaseMultiPayload();
        if (result == 2)
        {
          return result;
        }

LABEL_20:
        sub_2207E97A8(v41, sub_2205715CC);
        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          return result;
        }

        goto LABEL_21;
      }

      sub_2205D1464();
      v45 = *(v44 + 64);
      v46 = v40 + v45;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_16:
        v47 = sub_22088774C();
        v48 = *(*(v47 - 8) + 8);
        v48(v41 + v45, v47);
        sub_2207E97A8(v41, type metadata accessor for StocksAudioTrack);
        v48(v46, v47);
        return sub_2207E97A8(v40, type metadata accessor for StocksAudioTrack);
      }
    }

    else
    {
      sub_2205D153C(0, v43);
      v45 = *(v49 + 64);
      v46 = v40 + v45;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_16;
      }
    }

    v50 = sub_22088774C();
    (*(*(v50 - 8) + 8))(v46, v50);
    sub_2207E97A8(v40, type metadata accessor for StocksAudioTrack);
    goto LABEL_20;
  }

LABEL_7:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

LABEL_21:
  swift_getObjectType();
  sub_22088E29C();
  sub_22088FE6C();
  sub_22088B75C();

  return swift_unknownObjectRelease();
}

uint64_t sub_2207E8FD8@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  sub_2205715CC();
  v53[2] = v2;
  MEMORY[0x28223BE20](v2, v3);
  v54 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22089011C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v53 - v12;
  sub_2204FDBFC(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = (v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v1;
  v53[1] = *(v1 + OBJC_IVAR____TtC8StocksUI34FeedHeadlinePlaybackCommandHandler_playbackConductor);
  sub_220887BAC();
  sub_22088867C();

  v18 = type metadata accessor for StocksAudioTrack();
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_2207E97A8(v17, sub_2204FDBFC);
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = *v17;
    swift_unknownObjectRetain();
    sub_2207E97A8(v17, type metadata accessor for StocksAudioTrack);
    v22 = [v21 identifier];
    swift_unknownObjectRelease();
    v19 = sub_22089136C();
    v20 = v23;
  }

  sub_22088FE5C();
  v24 = sub_2208900FC();
  v25 = *(v6 + 8);
  v25(v13, v5);
  v26 = [v24 identifier];
  swift_unknownObjectRelease();
  v27 = sub_22089136C();
  v29 = v28;

  if (!v20)
  {

    goto LABEL_12;
  }

  if (v19 != v27 || v20 != v29)
  {
    v31 = sub_2208928BC();

    if (v31)
    {
      goto LABEL_17;
    }

LABEL_12:
    v32 = *(v55 + OBJC_IVAR____TtC8StocksUI34FeedHeadlinePlaybackCommandHandler_readingHistory);
    sub_22088FE5C();
    v33 = sub_2208900FC();
    v25(v9, v5);
    v34 = [v33 identifier];
    swift_unknownObjectRelease();
    if (!v34)
    {
      sub_22089136C();
      v34 = sub_22089132C();
    }

    v35 = [v32 hasArticleCompletedListening_];

    v36 = sub_22088F9AC();
    v37 = *(*(v36 - 8) + 104);
    if (v35)
    {
      v38 = MEMORY[0x277D324B0];
    }

    else
    {
      v38 = MEMORY[0x277D324A0];
    }

    v45 = *v38;
    v46 = v56;
    return v37(v46, v45, v36);
  }

LABEL_17:
  sub_220887BBC();
  v39 = v54;
  sub_22088867C();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2205D153C(0, v41);
    v43 = *(v47 + 64);
    v44 = MEMORY[0x277D324A8];
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2205D1464();
    v43 = *(v42 + 64);
    v44 = MEMORY[0x277D32498];
LABEL_23:
    v48 = *v44;
    v49 = sub_22088F9AC();
    (*(*(v49 - 8) + 104))(v56, v48, v49);
    v50 = sub_22088774C();
    (*(*(v50 - 8) + 8))(v39 + v43, v50);
    return sub_2207E97A8(v39, type metadata accessor for StocksAudioTrack);
  }

  v52 = *MEMORY[0x277D324A0];
  v36 = sub_22088F9AC();
  v37 = *(*(v36 - 8) + 104);
  v46 = v56;
  v45 = v52;
  return v37(v46, v45, v36);
}

uint64_t sub_2207E9700(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2207E9748(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2207E97A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207E9808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207E9870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = a4;
  v103 = a5;
  v93 = a3;
  v100 = a2;
  v101 = a1;
  sub_220782704();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v84 = &v79 - v10;
  sub_2205D23FC();
  v88 = v11;
  v87 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v80 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v83 = &v79 - v16;
  sub_2207EA34C(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v94 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22089022C();
  v98 = *(v20 - 8);
  v99 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v86 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v92 = &v79 - v25;
  v97 = sub_22089041C();
  v26 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v27);
  v85 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  v95 = &v79 - v31;
  v96 = sub_2208906CC();
  v32 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v33);
  v35 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v104 = &v79 - v38;
  v39 = sub_22089011C();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v79 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v47 = &v79 - v46;
  sub_2206230B4();
  v91 = v48;
  v90 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v49);
  v89 = &v79 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22088F9AC();
  v52 = *(v51 - 8);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v56 = &v79 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 16))(v56, v102, v51, v54);
  v57 = (*(v52 + 88))(v56, v51);
  if (v57 == *MEMORY[0x277D324A0])
  {
    goto LABEL_2;
  }

  if (v57 == *MEMORY[0x277D324A8])
  {
    (*(v32 + 104))(v35, *MEMORY[0x277D33A68], v96);
    (*(v26 + 104))(v85, *MEMORY[0x277D33570], v97);
    (*(v98 + 104))(v86, *MEMORY[0x277D33270], v99);
    v105 = 0u;
    v106 = 0u;
    v68 = v83;
    sub_2208905CC();
    swift_getObjectType();
    sub_22088E3AC();
    v69 = v87;
    v70 = *(v87 + 16);
    v71 = &v109;
LABEL_11:
    v72 = *(v71 - 32);
    v73 = v88;
    v70(v72, v68, v88);
    (*(v69 + 56))(v72, 0, 1, v73);
    sub_22088B81C();

    sub_2207E97A8(v72, sub_220782704);
    return (*(v69 + 8))(v68, v73);
  }

  if (v57 == *MEMORY[0x277D32498])
  {
    (*(v32 + 104))(v35, *MEMORY[0x277D33A68], v96);
    (*(v26 + 104))(v85, *MEMORY[0x277D33570], v97);
    (*(v98 + 104))(v86, *MEMORY[0x277D33270], v99);
    v105 = 0u;
    v106 = 0u;
    v68 = v80;
    sub_2208905CC();
    swift_getObjectType();
    sub_22088E3BC();
    v69 = v87;
    v70 = *(v87 + 16);
    v71 = &v108;
    goto LABEL_11;
  }

  if (v57 != *MEMORY[0x277D324B0])
  {
    return (*(v52 + 8))(v56, v51);
  }

LABEL_2:
  v58 = v95;
  if (v103)
  {
    sub_22088C4AC();
    sub_2207EA380();
    sub_22088731C();
    if (swift_dynamicCast())
    {
      v59 = v107;
      v60 = *(v82 + OBJC_IVAR____TtC8StocksUI34FeedHeadlinePlaybackCommandHandler_audioPlaybackContext + 24);
      v61 = *(v82 + OBJC_IVAR____TtC8StocksUI34FeedHeadlinePlaybackCommandHandler_audioPlaybackContext + 32);
      __swift_project_boxed_opaque_existential_1((v82 + OBJC_IVAR____TtC8StocksUI34FeedHeadlinePlaybackCommandHandler_audioPlaybackContext), v60);
      v62 = *(v61 + 8);
      v63 = v61;
      v58 = v95;
      v62(v59, v60, v63);
    }
  }

  sub_22088FE5C();
  v64 = sub_2208900FC();
  v65 = *(v40 + 8);
  v65(v47, v39);
  v107 = v64;
  (*(v32 + 104))(v104, *MEMORY[0x277D33A68], v96);
  (*(v26 + 104))(v58, *MEMORY[0x277D33570], v97);
  (*(v98 + 104))(v92, *MEMORY[0x277D33270], v99);
  sub_22088FE5C();
  v66 = sub_22089010C();
  v65(v43, v39);
  if (v66)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = 0;
    *(&v105 + 1) = 0;
    *&v106 = 0;
  }

  v75 = v94;
  v76 = v91;
  v77 = v90;
  v78 = v89;
  *&v105 = v66;
  *(&v106 + 1) = ObjectType;
  sub_22044826C();
  sub_2208905CC();
  swift_getObjectType();
  sub_22088E3DC();
  (*(v77 + 16))(v75, v78, v76);
  (*(v77 + 56))(v75, 0, 1, v76);
  sub_22088B81C();

  sub_2207E97A8(v75, sub_2207EA34C);
  return (*(v77 + 8))(v78, v76);
}

unint64_t sub_2207EA380()
{
  result = qword_281297F10;
  if (!qword_281297F10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281297F10);
  }

  return result;
}

void sub_2207EA3E4(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v12 = v7;
  if (v5)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = *(*(v1 + 56) + ((v9 << 9) | (8 * v10)));
        if (([v11 unsignedIntegerValue] & 0x2000) != 0 && swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          sub_22088E29C();
          sub_22088FE6C();
          v1 = v12;
          sub_22088B75C();

          swift_unknownObjectRelease();
          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v8;
      }
    }
  }
}

uint64_t sub_2207EA568(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207EAE20(0, &unk_281298760, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC78]);
  result = sub_2208884CC();
  if (result)
  {
    v2 = result;
    type metadata accessor for BrowsingWebUserActivityHandler();
    v3 = swift_allocObject();
    sub_2207EAE20(0, &qword_28127E000, MEMORY[0x277D6E430], MEMORY[0x277D84560]);
    sub_22088CFCC();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_220899360;
    sub_22088CFBC();
    *(v3 + 16) = v4;
    *(v3 + 24) = v2;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207EA6E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_2812967E0);
  result = sub_2208884DC();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281299200);
  result = sub_2208884DC();
  if (v6)
  {
    type metadata accessor for StocksV1UserActivityHandler();
    v3 = swift_allocObject();
    sub_2207EAE20(0, &qword_28127E000, MEMORY[0x277D6E430], MEMORY[0x277D84560]);
    sub_22088CFCC();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_220899360;
    sub_22088CFBC();
    *(v3 + 16) = v4;
    type metadata accessor for StocksActivity(0);
    sub_2207EADD8(&unk_281297EC0, sub_2204549FC);
    sub_22088AC3C();
    sub_220457328(&v7, v3 + OBJC_IVAR____TtC8StocksUI27StocksV1UserActivityHandler_featureAvailability);
    sub_220457328(&v5, v3 + OBJC_IVAR____TtC8StocksUI27StocksV1UserActivityHandler_stockMetadataManager);
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2207EA964(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_2812967E0);
  result = sub_2208884DC();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StocksV2UserActivityDeserializer();
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    sub_22046DA2C(a1, v6);
    type metadata accessor for StocksV2UserActivityHandler();
    v4 = swift_allocObject();
    sub_2207EAE20(0, &qword_28127E000, MEMORY[0x277D6E430], MEMORY[0x277D84560]);
    sub_22088CFCC();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_220899360;
    sub_22088CFBC();
    *(v4 + 16) = v5;
    type metadata accessor for StocksActivity(0);
    sub_2207EADD8(&unk_281297EC0, sub_2204549FC);
    sub_22088AC3C();
    sub_220457328(&v7, v4 + OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_featureAvailability);
    *(v4 + OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_userActivityDeserializer) = v3;
    sub_220457328(v6, v4 + OBJC_IVAR____TtC8StocksUI27StocksV2UserActivityHandler_resolver);
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2207EABEC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = type metadata accessor for BrowsingWebUserActivityHandler();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  v11 = v3;
  v12 = sub_2207EADD8(qword_2812859C8, type metadata accessor for BrowsingWebUserActivityHandler);
  v10[0] = v5;
  sub_22088CF9C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = type metadata accessor for StocksV1UserActivityHandler();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v11 = v6;
  v12 = sub_2207EADD8(&qword_281295940, type metadata accessor for StocksV1UserActivityHandler);
  v10[0] = v7;
  sub_22088CF9C();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = type metadata accessor for StocksV2UserActivityHandler();
  result = sub_2208884CC();
  if (result)
  {
    v9 = result;
    v11 = v8;
    v12 = sub_2207EADD8(&qword_281295848, type metadata accessor for StocksV2UserActivityHandler);
    v10[0] = v9;
    sub_22088CF9C();
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2207EADD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2207EAE20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2207EAE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 265))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2207EAED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 265) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 265) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2207EAF68()
{
  sub_2207EAFFC();

  return sub_22088D90C();
}

unint64_t sub_2207EAFA8()
{
  result = qword_27CF5A008;
  if (!qword_27CF5A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A008);
  }

  return result;
}

unint64_t sub_2207EAFFC()
{
  result = qword_27CF5A010;
  if (!qword_27CF5A010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A010);
  }

  return result;
}

uint64_t sub_2207EB060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2207EB0A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2207EB120(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v94 = a2;
  sub_2207EDB40(0);
  v93 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v99 = &v79[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v101 = sub_22088698C();
  v105 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v8);
  v100 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = sub_220890A3C();
  v102 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v10);
  v82 = &v79[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_220890A7C();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89, v12);
  v87 = &v79[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22088519C();
  v96 = *(v14 - 8);
  v97 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v95 = &v79[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = type metadata accessor for StockFeedServiceConfig();
  MEMORY[0x28223BE20](v84, v17);
  v85 = &v79[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = type metadata accessor for NewsStockFeedGroup();
  MEMORY[0x28223BE20](v86, v19);
  v98 = &v79[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2207EDB88(0, &qword_2812968D8, MEMORY[0x277D33478], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v79[-v23];
  v25 = type metadata accessor for NewsStockFeedGroupConfigData();
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v79[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = sub_22089039C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v92 = &v79[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = *a1;
  v34 = *(a1 + 1);
  v35 = a1[16];
  if (*(v34 + 16) || (v90 = *(a1 + 1), v81 = v30, __swift_project_boxed_opaque_existential_1((v94 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_featureAvailability), *(v94 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_featureAvailability + 24)), v34 = v90, v30 = v81, (sub_22088618C() & 1) != 0))
  {
    v91 = v33;
    v80 = v35;
    v36 = sub_2207EBDDC(v33, v34);
    sub_220452BA4();
    sub_22088F48C();
    sub_220561F64(v28, v24);
    if ((*(v30 + 48))(v24, 1, v29) == 1)
    {
      sub_2207EDBEC(v24);

      v37 = v85;
      sub_22088FA5C();
      v38 = *(v84 + 40);
      v39 = v86;
      v40 = *(v86 + 24);
      v41 = sub_22088685C();
      v42 = v98;
      (*(*(v41 - 8) + 16))(v98 + v40, v37 + v38, v41);
      sub_2207EDEA0(v37, type metadata accessor for StockFeedServiceConfig);
      v43 = *(v39 + 32);
      v44 = sub_22088F39C();
      (*(*(v44 - 8) + 56))(v42 + v43, 1, 1, v44);
      v45 = v95;
      sub_22088518C();
      v46 = sub_22088517C();
      v48 = v47;
      (*(v96 + 8))(v45, v97);
      *v42 = v46;
      v42[1] = v48;
      v42[2] = v36;
      *(v42 + *(v39 + 28)) = v91;
      v49 = *(v36 + 16);

      if (v49 >= *(v34 + 16))
      {
        sub_2207EDDB0(v42, v99, type metadata accessor for NewsStockFeedGroup);
        type metadata accessor for StockFeedGroup();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_2207EDC78();
        v51 = &v99[*(v50 + 48)];
        sub_2207EDDB0(v42, v99, type metadata accessor for NewsStockFeedGroup);
        type metadata accessor for StockFeedGroup();
        swift_storeEnumTagMultiPayload();
        *v51 = 0u;
        v51[1] = 0u;
      }

      swift_storeEnumTagMultiPayload();
      sub_2207EDB88(0, &qword_281298688, sub_2207EDB40, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v76 = sub_220888ECC();
      sub_2207EDEA0(v42, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      v86 = v36;
      v90 = v34;
      v52 = *(v30 + 32);
      v53 = v92;
      v85 = v29;
      v52(v92, v24, v29);
      v54 = *(sub_22088FA4C() + 16);

      if (v54)
      {
        v55 = sub_22089038C();
        sub_22052D248(&v104, 0xD000000000000020, 0x80000002208D73D0);

        v55(v103, 0);
      }

      v56 = v86;
      v57 = *(v86 + 16);
      if (v57)
      {
        v81 = v30;
        v84 = a3;
        v103[0] = MEMORY[0x277D84F90];
        sub_22070C3BC(0, v57, 0);
        v58 = *(v105 + 16);
        v59 = v56 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
        v98 = *(v105 + 72);
        v99 = v58;
        v105 += 16;
        v97 = (v105 - 8);
        LODWORD(v96) = *MEMORY[0x277D34128];
        v60 = v103[0];
        v61 = (v102 + 104);
        v95 = (v102 + 32);
        v62 = v83;
        v63 = v82;
        do
        {
          v65 = v100;
          v64 = v101;
          (v99)(v100, v59, v101);
          v66 = sub_2208868DC();
          (*v97)(v65, v64);
          *v63 = v66;
          (*v61)(v63, v96, v62);
          v103[0] = v60;
          v68 = *(v60 + 16);
          v67 = *(v60 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_22070C3BC(v67 > 1, v68 + 1, 1);
            v63 = v82;
            v62 = v83;
            v60 = v103[0];
          }

          *(v60 + 16) = v68 + 1;
          (*(v102 + 32))(v60 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v68, v63, v62);
          v59 += v98;
          --v57;
        }

        while (v57);
        a3 = v84;
        v30 = v81;
        v53 = v92;
      }

      v69 = MEMORY[0x277D84F90];
      sub_2206DEE34(MEMORY[0x277D84F90]);
      sub_2206DEE4C(v69);
      sub_2206DEF60(v69);
      v70 = v87;
      v71 = sub_220890A6C();
      MEMORY[0x28223BE20](v71, v72);
      *&v79[-32] = v94;
      *&v79[-24] = v53;
      *&v79[-16] = v70;
      *&v79[-8] = a3;
      sub_22089037C();
      sub_220888FBC();
      v73 = swift_allocObject();
      v74 = v86;
      *(v73 + 16) = a3;
      *(v73 + 24) = v74;
      *(v73 + 32) = v91;
      *(v73 + 40) = v90;
      *(v73 + 48) = v80;

      v75 = sub_220888D9C();
      type metadata accessor for NewsStockFeedGroupEmitter();
      v76 = sub_220888E5C();

      (*(v88 + 8))(v70, v89);
      (*(v30 + 8))(v53, v85);
    }
  }

  else
  {
    v77 = v99;
    sub_2207C7E0C(v99);
    v77[*(type metadata accessor for NewsPlacardStockFeedGroup() + 20)] = v35;
    type metadata accessor for StockFeedGroup();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2207EDB88(0, &qword_281298688, sub_2207EDB40, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  return v76;
}

uint64_t sub_2207EBDDC(char a1, uint64_t a2)
{
  v4 = sub_22088FFFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (*(a2 + 16) <= 1uLL)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(a2 + 16);
    }

    v10 = qword_2812948A0;

    if (v10 != -1)
    {
      swift_once();
    }

    sub_22048D7F8();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D83B88];
    *(v11 + 16) = xmmword_220899360;
    v13 = MEMORY[0x277D83C10];
    *(v11 + 56) = v12;
    *(v11 + 64) = v13;
    *(v11 + 32) = v9;
    sub_220891AFC();
    sub_22088A7EC();

    v17 = sub_2207A8648(v9, a2);
    if ((v16 & 1) == 0)
    {
      goto LABEL_8;
    }

    v27 = v16;
    v25 = v15;
    v23 = v14;
    sub_2208928DC();
    swift_unknownObjectRetain_n();
    v30 = swift_dynamicCastClass();
    if (!v30)
    {
      swift_unknownObjectRelease();
      v30 = MEMORY[0x277D84F90];
    }

    v31 = *(v30 + 16);

    if (!__OFSUB__(v27 >> 1, v25))
    {
      if (v31 == (v27 >> 1) - v25)
      {
        v32 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v32)
        {
          return v32;
        }

        goto LABEL_24;
      }

LABEL_27:
      swift_unknownObjectRelease();
      v16 = v27;
      v15 = v25;
      v14 = v23;
LABEL_8:
      sub_2206CE6DC(v17, v14, v15, v16);
      v19 = v18;
      swift_unknownObjectRelease();
      return v19;
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  type metadata accessor for NewsStockFeedGroupKnobs();
  sub_22088FA8C();
  sub_22088FB6C();
  (*(v5 + 8))(v8, v4);
  v21 = sub_2207A8648(v34[1], a2);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if ((v26 & 1) == 0)
  {

LABEL_11:
    sub_2206CE6DC(v21, v23, v25, v27);
    v29 = v28;
    swift_unknownObjectRelease();
    return v29;
  }

  sub_2208928DC();
  swift_unknownObjectRetain_n();

  v33 = swift_dynamicCastClass();
  if (!v33)
  {
    swift_unknownObjectRelease();
    v33 = MEMORY[0x277D84F90];
  }

  v17 = *(v33 + 16);

  if (__OFSUB__(v27 >> 1, v25))
  {
    goto LABEL_26;
  }

  if (v17 != (v27 >> 1) - v25)
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v29 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v29)
  {
    return v29;
  }

LABEL_24:
  swift_unknownObjectRelease();
  return MEMORY[0x277D84F90];
}

uint64_t sub_2207EC164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v7 = MEMORY[0x277D83D88];
  sub_2207EDB88(0, &qword_281296808, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v52 = &v49 - v10;
  sub_2207EDB88(0, &unk_2812967D0, MEMORY[0x277D33EC8], v7);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v53 = &v49 - v13;
  sub_2207EDB88(0, &qword_281296B30, sub_22044F09C, v7);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v51 = &v49 - v16;
  v17 = sub_2208906EC();
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v63 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207EDB88(0, &qword_281296D50, MEMORY[0x277D2D4E0], v7);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v49 - v22;
  v62 = sub_2208904CC();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v24);
  v50 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22089039C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_formatService + 24);
  v55 = *(a1 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_formatService + 32);
  v56 = v31;
  v54 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_formatService), v31);
  v57 = v30;
  v58 = v27;
  v32 = *(v27 + 16);
  v59 = v26;
  v32(v30, a2, v26);
  sub_2207EDB88(0, &qword_28127DFA0, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v33 = sub_220890A7C();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_220899360;
  (*(v34 + 16))(v36 + v35, a3, v33);
  v37 = sub_22088ECFC();
  (*(*(v37 - 8) + 56))(v23, 1, 1, v37);
  v38 = MEMORY[0x277D84F90];
  sub_22061A1B8(MEMORY[0x277D84F90]);
  sub_22061A1B8(v38);
  sub_22061A1D0(v38);
  sub_22061A1E8(v38);
  sub_22061A2FC(v38);
  sub_22061A410(v38);
  sub_22061A428(v38);
  v39 = v50;
  v40 = v52;
  sub_2208904BC();
  sub_22044F09C();
  (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
  v42 = sub_2208909AC();
  (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
  v66 = 0;
  sub_2207EDD30(0, &unk_2812967C0, type metadata accessor for StockFeedServiceConfig, sub_2206681A8, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_2208909CC();
  v43 = sub_22089068C();
  (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
  v44 = qword_2812948A0;
  *MEMORY[0x277D30BB8];
  if (v44 != -1)
  {
    swift_once();
  }

  qword_2812948A8;
  v45 = v63;
  sub_2208906DC();
  v46 = v57;
  v47 = sub_22089052C();
  (*(v64 + 8))(v45, v65);
  (*(v60 + 8))(v39, v62);
  (*(v58 + 8))(v46, v59);
  return v47;
}

uint64_t sub_2207EC924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v69 = a6;
  v68 = a5;
  v64 = a4;
  v59 = a3;
  sub_2207EDB40(0);
  v70 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v71 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088519C();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v65 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for StockFeedServiceConfig() - 8;
  MEMORY[0x28223BE20](v63, v13);
  v62 = v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for NewsStockFeedGroup() - 8;
  MEMORY[0x28223BE20](v61, v15);
  v17 = (v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2207EDB88(0, &qword_281296B70, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v60 = v56 - v20;
  v21 = sub_22088FB9C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v56[0] = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v56[1] = v56 - v26;
  v27 = sub_22089037C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22088F39C();
  v57 = *(v32 - 8);
  v58 = v32;
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31, a1, v27, v34);
  sub_220452BA4();
  sub_22088F47C();
  sub_22088F47C();
  sub_22044F09C();
  sub_22088F80C();
  sub_22088F7FC();
  v37 = v36;
  sub_22088F81C();
  v38 = sub_22088F68C();
  (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
  v39 = v57;
  v40 = v58;
  sub_22088F36C();
  v41 = v64;

  v42 = v62;
  sub_22088FA5C();
  v43 = *(v63 + 48);
  v44 = v61;
  v45 = *(v61 + 32);
  v46 = sub_22088685C();
  (*(*(v46 - 8) + 16))(v17 + v45, v42 + v43, v46);
  sub_2207EDEA0(v42, type metadata accessor for StockFeedServiceConfig);
  v47 = *(v44 + 40);
  (*(v39 + 16))(v17 + v47, v37, v40);
  (*(v39 + 56))(v17 + v47, 0, 1, v40);
  v48 = v65;
  sub_22088518C();
  v49 = sub_22088517C();
  v51 = v50;
  (*(v66 + 8))(v48, v67);
  *v17 = v49;
  v17[1] = v51;
  v17[2] = v41;
  *(v17 + *(v44 + 36)) = v68 & 1;
  if (*(v41 + 16) >= *(v69 + 16))
  {
    sub_2207EDDB0(v17, v71, type metadata accessor for NewsStockFeedGroup);
    type metadata accessor for StockFeedGroup();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_2207EDC78();
    v53 = (v71 + *(v52 + 48));
    sub_2207EDDB0(v17, v71, type metadata accessor for NewsStockFeedGroup);
    type metadata accessor for StockFeedGroup();
    swift_storeEnumTagMultiPayload();
    *v53 = 0u;
    v53[1] = 0u;
  }

  swift_storeEnumTagMultiPayload();
  sub_2207EDB88(0, &qword_281298688, sub_2207EDB40, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v54 = sub_220888ECC();
  sub_2207EDEA0(v17, type metadata accessor for NewsStockFeedGroup);
  (*(v39 + 8))(v37, v40);
  return v54;
}

uint64_t sub_2207ED058(uint64_t a1)
{
  sub_2207EDB40(0);
  v11 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  sub_220891ADC();
  sub_22048D7F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220899360;
  v12 = 0;
  v13 = 0xE000000000000000;
  v14 = a1;
  sub_2204446D4(0, &qword_28127DE30);
  sub_22089264C();
  v8 = v12;
  v7 = v13;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22048D860();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;
  sub_22088A7EC();

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_22089254C();
  MEMORY[0x223D89680](0xD00000000000003CLL, 0x80000002208D7390);
  v14 = a1;
  sub_22089264C();
  v9 = v13;
  *v5 = v12;
  v5[1] = v9;
  swift_storeEnumTagMultiPayload();
  sub_2207EDB88(0, &qword_281298688, sub_2207EDB40, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2207ED2AC()
{
  v1 = OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_config;
  sub_220452BA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2207EDEA0(v0 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_knobs, type metadata accessor for NewsStockFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_formatService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_featureAvailability);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NewsStockFeedGroupEmitter()
{
  result = qword_281289810;
  if (!qword_281289810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2207ED3E0()
{
  sub_220452BA4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NewsStockFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2207ED4B8()
{
  sub_2207EDB88(0, &qword_2812985E0, sub_22055F87C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2207ED534()
{
  sub_220888FBC();
  v0 = sub_220888D9C();
  sub_220888E3C();

  v1 = sub_220888D9C();
  sub_2207EDB40(0);
  sub_220888E5C();

  v2 = sub_220888D9C();
  v3 = sub_220888EFC();

  return v3;
}

uint64_t sub_2207ED668@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_config;
  sub_220452BA4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2207ED6E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for NewsStockFeedGroupKnobs();
  a1[4] = sub_22044EEFC(&qword_28128B5D8, type metadata accessor for NewsStockFeedGroupKnobs);
  a1[5] = sub_22044EEFC(&qword_27CF5A018, type metadata accessor for NewsStockFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2207EDDB0(v3 + v4, boxed_opaque_existential_1, type metadata accessor for NewsStockFeedGroupKnobs);
}

uint64_t sub_2207ED7E8@<X0>(uint64_t *a1@<X8>)
{
  sub_2207EDB88(0, &qword_28127DEC0, sub_22052BFB4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899360;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_220452BA4();
  v3 = sub_22088F46C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_22052BDC4(inited);
  swift_setDeallocating();
  sub_2207EDEA0(inited + 32, sub_22052BFB4);
  sub_2207EDB88(0, &qword_281298880, type metadata accessor for NewsStockFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_2207EDE18();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_22088883C();
}

uint64_t sub_2207ED970()
{
  sub_22044EEFC(&qword_281289828, type metadata accessor for NewsStockFeedGroupEmitter);

  return sub_22088882C();
}

void sub_2207EDB88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2207EDBEC(uint64_t a1)
{
  sub_2207EDB88(0, &qword_2812968D8, MEMORY[0x277D33478], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2207EDC78()
{
  if (!qword_281293DF0[0])
  {
    type metadata accessor for StockFeedGroup();
    sub_22055F87C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_281293DF0);
    }
  }
}

void sub_2207EDD30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2207EDDB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2207EDE18()
{
  result = qword_281298888;
  if (!qword_281298888)
  {
    sub_2207EDB88(255, &qword_281298880, type metadata accessor for NewsStockFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281298888);
  }

  return result;
}

uint64_t sub_2207EDEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207EDF00()
{
  v0 = sub_22088FD8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StockFeedLayoutModel();
  MEMORY[0x28223BE20](v5, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D3C0();
  sub_22088BC3C();
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        sub_2207EE2B0(0, qword_281293018, type metadata accessor for StockChartModel);
        v13 = &v8[*(v12 + 48)];
        v14 = *(v13 + 11);
        v21[10] = *(v13 + 10);
        v21[11] = v14;
        *&v21[12] = *(v13 + 24);
        v15 = *(v13 + 7);
        v21[6] = *(v13 + 6);
        v21[7] = v15;
        v16 = *(v13 + 9);
        v21[8] = *(v13 + 8);
        v21[9] = v16;
        v17 = *(v13 + 5);
        v21[4] = *(v13 + 4);
        v21[5] = v17;
        v18 = *(v13 + 3);
        v21[2] = *(v13 + 2);
        v21[3] = v18;
        v19 = *(v13 + 1);
        v21[0] = *v13;
        v21[1] = v19;
        sub_2205D79B8(v21);
        v11 = type metadata accessor for StockChartModel;
      }

      else
      {
        sub_2207EE2B0(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel);
        memcpy(v21, &v8[*(v20 + 48)], 0x109uLL);
        sub_2205D7964(v21);
        v11 = type metadata accessor for QuoteDetailViewModel;
      }
    }

    else
    {
      if (!result)
      {
        sub_22055D8C0();
        sub_2207EE320(&v8[*(v10 + 48)], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      }

      v11 = type metadata accessor for StockFeedMastheadModel;
    }

    return sub_2207EE320(v8, v11);
  }

  if (result <= 5)
  {
    if (result == 4)
    {
      v11 = type metadata accessor for StockFeedEarningsViewModel;
    }

    else
    {
      v11 = type metadata accessor for StockFeedLayoutModel;
    }

    return sub_2207EE320(v8, v11);
  }

  if (result != 6)
  {
    (*(v1 + 32))(v4, v8, v0);
    sub_22088F69C();
    return (*(v1 + 8))(v4, v0);
  }

  return result;
}

unint64_t sub_2207EE234()
{
  result = qword_28128E7F8[0];
  if (!qword_28128E7F8[0])
  {
    type metadata accessor for StockFeedLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128E7F8);
  }

  return result;
}

void sub_2207EE2B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2207EE320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_2207EE380(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_2205A6FB8(0, &qword_281297138, MEMORY[0x277D6EBB0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v28.receiver - v14);
  v16 = OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_moreLabel;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17 = OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_symbolLabel;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_arrowShapeView;
  *&v4[v18] = [objc_allocWithZone(type metadata accessor for ShapeView()) initWithFrame_];
  v19 = OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_topLineView;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v20 = OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_onTap;
  sub_2205A6FB8(0, &qword_281297130, MEMORY[0x277D6EBB8]);
  *&v4[v20] = [objc_allocWithZone(v21) init];
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = *&v22[OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_moreLabel];
  v24 = v22;
  [v24 addSubview_];
  [v24 addSubview_];
  [v24 addSubview_];
  [v24 addSubview_];
  v25 = *&v24[OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_onTap];
  *v15 = 1;
  (*(v12 + 104))(v15, *MEMORY[0x277D6EBA8], v11);
  v26 = v25;

  (*(v12 + 8))(v15, v11);
  [v24 setIsAccessibilityElement_];
  [v24 setAccessibilityTraits_];

  return v24;
}

void sub_2207EE774()
{
  v0 = sub_22088E14C();
}

void sub_2207EE7B4()
{
  sub_2205160DC(&qword_28128C1E8);

  JUMPOUT(0x223D86790);
}

void sub_2207EE91C()
{
  v1 = OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_moreLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_symbolLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_arrowShapeView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for ShapeView()) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_topLineView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v5 = OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_onTap;
  sub_2205A6FB8(0, &qword_281297130, MEMORY[0x277D6EBB8]);
  *(v0 + v5) = [objc_allocWithZone(v6) init];
  sub_22089267C();
  __break(1u);
}

void sub_2207EEB10()
{
  sub_220515DEC(&qword_281293BF8);

  JUMPOUT(0x223D86790);
}

void sub_2207EEB68()
{
  v1 = OBJC_IVAR____TtC8StocksUI14StockTitleView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI14StockTitleView_nameLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI14StockTitleView_backgroundView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI14StockTitleView_quoteSummaryView;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for QuoteSummaryView()) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

id sub_2207EEC8C(void *a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
    result = [v4 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    v7 = v2[5];
    v8 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v7);
    v9 = (*(*(v8 + 16) + 472))(v7);
    [v6 setBackgroundColor_];

    v10 = [objc_opt_self() clearColor];
    [a1 setBackgroundColor_];
  }

  else
  {
    v11 = v2[5];
    v12 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v11);
    v10 = (*(*(v12 + 16) + 472))(v11);
    [a1 setBackgroundColor_];
  }

  [a1 setAlwaysBounceVertical_];
  [a1 layoutMargins];
  v14 = v13;
  [a1 layoutMargins];
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  return [a1 setContentInset_];
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_2207EEE50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2207EEE70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 112) = v3;
  return result;
}

uint64_t type metadata accessor for StockFeedEarningsViewModel()
{
  result = qword_281288D80;
  if (!qword_281288D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2207EEF3C()
{
  sub_22088685C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StockEarningsModel();
    if (v1 <= 0x3F)
    {
      sub_22088516C();
      if (v2 <= 0x3F)
      {
        sub_22044DAC0(319, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2207EF05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220884BDC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044DAC0(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v29 - v13;
  v15 = sub_22088516C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C4220(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2207EFBA8(v14);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    sub_22044DAC0(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v21 = sub_2208853AC();
    v22 = *(v21 - 8);
    v30 = v6;
    v23 = v22;
    v24 = *(v22 + 80);
    v29[2] = a2;
    v25 = (v24 + 32) & ~v24;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_220899360;
    (*(v23 + 104))(v26 + v25, *MEMORY[0x277CC9968], v21);
    sub_2207E1070(v26);
    v29[1] = a3;
    swift_setDeallocating();
    (*(v23 + 8))(v26 + v25, v21);
    swift_deallocClassInstance();
    sub_22088530C();

    v27 = sub_220884B6C();
    LOBYTE(v25) = v28;
    (*(v7 + 8))(v10, v30);
    (*(v16 + 8))(v19, v15);
    if (v25)
    {
      return 0;
    }

    else
    {
      return v27;
    }
  }
}

uint64_t sub_2207EF3FC(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v2 = sub_220884F6C();
  v69 = *(v2 - 8);
  v70 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v68 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220884FDC();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220884DAC();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v64 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088543C();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v62 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208853CC();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v61 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2208852DC();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v60 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x277D83D88];
  sub_22044DAC0(0, &qword_2812994C8, MEMORY[0x277CC9388], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v58 - v23;
  sub_22044DAC0(0, &qword_2812994C0, MEMORY[0x277CC93A0], v20);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v58 - v27;
  v29 = sub_22088505C();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v58 - v36;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v58 - v40;
  v42 = sub_22088C28C();
  v43 = [v42 horizontalSizeClass];

  v63 = v41;
  if (v43 >= 2)
  {
    v59 = v30;
    if (v43 != 2)
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }

    sub_22088C31C();
    v51 = sub_220884F0C();
    (*(*(v51 - 8) + 56))(v28, 1, 1, v51);
    v52 = sub_220884EEC();
    (*(*(v52 - 8) + 56))(v24, 1, 1, v52);
    sub_22088524C();
    sub_22088533C();
    sub_22088540C();
    sub_220884D9C();
    sub_220884F2C();
    v53 = v65;
    sub_220884FCC();
    sub_220884F4C();
    (*(v66 + 8))(v53, v67);
    v54 = *(v59 + 8);
    v54(v33, v29);
    v55 = v68;
    sub_220884F5C();
    v56 = v63;
    sub_220884F1C();
    (*(v69 + 8))(v55, v70);
    v54(v37, v29);
    sub_2205F78B0();
    sub_22088514C();
    v54(v56, v29);
  }

  else
  {
    v44 = sub_220884F0C();
    (*(*(v44 - 8) + 56))(v28, 1, 1, v44);
    v45 = sub_220884EEC();
    (*(*(v45 - 8) + 56))(v24, 1, 1, v45);
    v46 = v37;
    sub_22088524C();
    sub_22088533C();
    sub_22088540C();
    sub_220884D9C();
    sub_220884F2C();
    v47 = v65;
    sub_220884FBC();
    sub_220884F4C();
    (*(v66 + 8))(v47, v67);
    v48 = *(v30 + 8);
    v48(v33, v29);
    v49 = v68;
    sub_220884F5C();
    v50 = v63;
    sub_220884F1C();
    (*(v69 + 8))(v49, v70);
    v48(v46, v29);
    sub_2205F78B0();
    sub_22088514C();
    v48(v50, v29);
  }

  return v72;
}

uint64_t sub_2207EFBA8(uint64_t a1)
{
  sub_22044DAC0(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2207EFC38(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  sub_2207EFFB0();
  v5 = v4;
  v6 = sub_22089132C();

  if (v5)
  {
    v7 = sub_22089132C();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:{1, 0x80000002208D7600}];

  v9 = [v2 bundleForClass_];
  sub_220884CAC();

  v10 = sub_22089132C();

  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v10 style:1 handler:{0, 0x80000002208D7650}];

  [v8 addAction_];
  v13 = [v2 bundleForClass_];
  sub_220884CAC();

  v14 = sub_22089132C();

  aBlock[4] = sub_2207F099C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2205659F0;
  aBlock[3] = &block_descriptor_47;
  v15 = _Block_copy(aBlock);

  v16 = [v11 actionWithTitle:v14 style:2 handler:{v15, 0x80000002208D76B0}];
  _Block_release(v15);

  [v8 addAction_];
  return v8;
}

uint64_t sub_2207EFFB0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (!v1)
  {
    goto LABEL_5;
  }

  if (![v1 sc_isEnabledForStocksDataclass])
  {

LABEL_5:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_220884CAC();
    goto LABEL_6;
  }

  type metadata accessor for Localized();
  v2 = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_220884CAC();

LABEL_6:
  return v4;
}

uint64_t sub_2207F0164(uint64_t a1, uint64_t a2)
{
  [*(a2 + 64) clearAllSessions];
  sub_220889D3C();
  sub_220448E20(&unk_27CF5A070, MEMORY[0x277D68C78]);
  return sub_22088730C();
}

uint64_t sub_2207F01F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_2207F02E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v13 = swift_allocObject();
  sub_220457328(&v15, (v13 + 2));
  v13[8] = a4;
  v13[9] = a3;
  v13[7] = a2;
  return v13;
}

uint64_t sub_2207F0394()
{
  sub_22061D1D0(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8, v4);
  v5 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28[-v8];
  v10 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v0 + 56);
  *v13 = sub_2207EFC38(v0);
  v13[40] = 2;
  swift_storeEnumTagMultiPayload();
  v15 = sub_22088969C();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = v14;
  sub_2205A0924(v34, &v29, &unk_281298970, &unk_281298980);
  if (*(&v30 + 1))
  {
    sub_220457328(&v29, v31);
    v16 = sub_220597454(v31);
    v18 = v17;
    v20 = v19;
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_2205A0B34(&v29, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v16 = qword_2812908F8;
    v18 = qword_281290900;
    v20 = qword_281290908;

    sub_2204A80F4(v18);
  }

  v30 = 0u;
  v29 = 0u;
  sub_2205A08A4(v9, v5);
  sub_2205A0924(v36, v31, &unk_281296D10, &qword_281296D20);
  v21 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v22 = (v3 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  sub_2205A0994(v5, v23 + v21);
  v24 = v23 + v22;
  v25 = v31[1];
  *v24 = v31[0];
  *(v24 + 16) = v25;
  *(v24 + 32) = v32;
  v26 = (v23 + ((v22 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v26 = v16;
  v26[1] = v18;
  v26[2] = v20;

  sub_2204A80F4(v18);
  sub_2204549FC();
  sub_220448E20(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v18);
  sub_2205A0B34(v34, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v36, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220650F50(v9, sub_22061D1D0);
  sub_220650F50(v13, type metadata accessor for StocksActivity);
  return sub_2205A0B34(&v29, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_2207F09AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 520))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 480);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2207F0A00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 520) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 520) = 0;
    }

    if (a2)
    {
      *(result + 480) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2207F0AD8()
{
  sub_2207F0B6C();

  return sub_22088D90C();
}

unint64_t sub_2207F0B18()
{
  result = qword_27CF5A080;
  if (!qword_27CF5A080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A080);
  }

  return result;
}

unint64_t sub_2207F0B6C()
{
  result = qword_27CF5A088;
  if (!qword_27CF5A088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A088);
  }

  return result;
}

uint64_t sub_2207F0BC0@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v296 = a1;
  v5 = type metadata accessor for QuoteSummaryViewLayoutOptions();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v267 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = COERCE_DOUBLE(sub_22088DA1C());
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  *&v281 = &v267 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C31C();
  v14 = v13;
  sub_22088C22C();
  sub_220891A6C();
  v16 = v15;
  sub_22088C31C();
  v284.size.height = v17;
  sub_22088C20C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if ((sub_22088F0DC() & 1) != 0 || (v28 = v27 == 1, v29 = sub_22088C24C(), v30 = [v29 horizontalSizeClass], v29, v30 == 1))
  {
    v28 = 0;
  }

  v31 = v25;
  if ((sub_22088F0DC() & 1) == 0)
  {
    v32 = sub_22088C24C();
    v33 = [v32 horizontalSizeClass];

    if (v33 == 1)
    {
      v31 = 46.0;
    }

    else
    {
      v31 = v25;
    }
  }

  v34 = sub_22088C28C();
  v35 = [v34 horizontalSizeClass];

  v36 = 30.0;
  if (v35 >= 2)
  {
    if (v35 != 2)
    {
      goto LABEL_66;
    }

    sub_22088C31C();
    v36 = 28.0;
  }

  y = v10;
  width = *&v9;
  v290 = v14 - v16;
  v37 = v14 - v16 - v21;
  v38 = sub_22088F0DC();
  v39 = v37 - v31 - v36 + -32.0;
  if (v38)
  {
    v39 = v37 - v31;
  }

  MaxX = v39;
  __swift_project_boxed_opaque_existential_1((*&x + 16), *(*&x + 40));
  sub_22088684C();
  v40 = sub_22088C28C();
  v41 = [v40 horizontalSizeClass];

  if (v41 >= 2)
  {
    if (v41 != 2)
    {
      goto LABEL_66;
    }

    sub_22088C31C();
  }

  v286 = sub_22083C2F4();

  __swift_project_boxed_opaque_existential_1((*&x + 16), *(*&x + 40));
  sub_2208867BC();
  v42 = sub_22088C28C();
  v43 = [v42 horizontalSizeClass];

  if (v43 >= 2)
  {
    if (v43 != 2)
    {
      goto LABEL_66;
    }

    sub_22088C31C();
  }

  v44 = sub_22083C744();

  v45 = [v44 su_containsExcessiveLineHeightCharacter];
  v288 = a3;
  v289 = v8;
  v293 = v21;
  v272 = v23;
  v273 = v19;
  v287 = v28;
  v268 = v36;
  v269 = v31;
  v271 = v37;
  v278 = v44;
  v279 = a2;
  if (v45)
  {
    v46 = sub_22088C24C();
    [v46 displayScale];
    v48 = v47;

    [v44 su:v48 languageAwareOutsetsAtScale:?];
    v50 = v49;
    v294 = v52;
    v295 = v51;
    v285 = v53;
  }

  else
  {
    v50 = *MEMORY[0x277D768C8];
    v54 = *(MEMORY[0x277D768C8] + 8);
    v55 = *(MEMORY[0x277D768C8] + 24);
    v294 = *(MEMORY[0x277D768C8] + 16);
    v295 = v54;
    v285 = v55;
  }

  v56 = __swift_project_boxed_opaque_existential_1((*&x + 16), *(*&x + 40));
  v280 = type metadata accessor for StockFeedMastheadModel();
  *&v284.size.width = sub_2204C4258(*&v296 + *(v280 + 20));
  v57 = *v56;
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v59 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v60 = sub_22044D56C(0, &qword_28127E570);
  v61 = v59;
  v62 = sub_220891F2C();
  v63 = MEMORY[0x277D740C0];
  *(inited + 40) = v62;
  v64 = *v63;
  *(inited + 64) = v60;
  *(inited + 72) = v64;
  v66 = v57[5];
  v65 = v57[6];
  __swift_project_boxed_opaque_existential_1(v57 + 2, v66);
  v67 = *(v65 + 16);
  v68 = *(v67 + 216);
  v69 = v64;
  v70 = v68(v66, v67);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v70;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v71 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v72 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_2204A63B8();
  v73 = sub_22089125C();

  v74 = [v71 initWithString:v72 attributes:v73];

  v75 = v286;
  v76 = MaxX;
  height = v284.size.height;
  [v286 boundingRectWithSize:1 options:0 context:{MaxX, v284.size.height}];
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = v278;
  [v278 boundingRectWithSize:1 options:0 context:{v76, height}];
  v276 = v88;
  v277 = v87;
  v274 = v90;
  v275 = v89;
  v294 = UIEdgeInsetsInsetRect_0(v87, v88, v89, v90, v50, v295, v294, *&v285);
  v295 = v91;
  v285 = v74;
  [v74 boundingRectWithSize:1 options:0 context:{v76, height}];
  v284.origin.x = v92;
  v284.origin.y = v93;
  v284.size.width = v94;
  v284.size.height = v95;
  v96 = __swift_project_boxed_opaque_existential_1((*&x + 96), *(*&x + 120));
  v97 = v279;
  sub_22088C31C();
  v99 = v98;
  sub_22088C22C();
  sub_220891A6C();
  v101 = v99 - v100;
  sub_22088C31C();
  v103 = v102;
  v104 = sub_22088C24C();
  v105 = v281;
  sub_22088C1DC();
  v106 = *v96;
  *v320 = v101;
  v320[1] = v103;
  v107 = *(MEMORY[0x277D768C8] + 16);
  v321 = *MEMORY[0x277D768C8];
  v322 = v107;
  v323 = v104;
  __swift_project_boxed_opaque_existential_1(v106 + 2, v106[5]);
  v108 = v104;
  sub_2204A52C8(v320, v315);
  MinY = CGRectGetMinY(v316[0]);
  __swift_project_boxed_opaque_existential_1(v106 + 7, v106[10]);
  if (qword_2812946D0 != -1)
  {
    swift_once();
  }

  v111 = qword_2812946D8;
  v110 = unk_2812946E0;

  v112 = sub_2204A5AE0(v111, v110, v108);

  v113 = sub_220891D8C();

  [v113 ascender];
  v115 = v114;
  [v113 capHeight];
  v117 = v116;

  (*(*&y + 8))(COERCE_CGFLOAT(*&v105), COERCE_CGFLOAT(*&width));
  sub_2204A9180(v315);
  v270 = *&v315[1];
  v118 = sub_22088F0DC();
  v119 = v289;
  v120 = v287;
  v291 = v25;
  v121 = v79;
  v122 = v81;
  v123 = v83;
  v124 = v85;
  if (v118)
  {
    v125 = CGRectGetHeight(*&v121);
  }

  else
  {
    v125 = MinY + v115 - v117 + 1.0 + CGRectGetHeight(*&v121);
  }

  v126 = sub_22088C32C();
  (*(*(v126 - 8) + 16))(v119, v97, v126);
  __swift_project_boxed_opaque_existential_1((*&x + 56), *(*&x + 80));
  sub_2205BBCE8(COERCE_DOUBLE(*&v296 + *(v280 + 28)), v119, v317);
  v306 = 0u;
  v307 = 0u;
  v304 = 0u;
  v305 = 0u;
  v302 = 0u;
  v303 = 0u;
  v298 = 0u;
  v299 = 0u;
  v324.origin.x = v79;
  v324.origin.y = v81;
  v324.size.width = v83;
  v324.size.height = v85;
  v127 = CGRectGetHeight(v324);
  v325.origin.x = v79;
  v325.origin.y = v81;
  v325.size.width = v83;
  v325.size.height = v85;
  v128 = CGRectGetWidth(v325) + 14.0;
  v326.origin.y = v276;
  v326.origin.x = v277;
  v326.size.height = v274;
  v326.size.width = v275;
  v129 = v128 + CGRectGetWidth(v326) + 14.0;
  v130 = v317[0].size.height;
  x = v317[0].origin.x;
  y = v317[0].origin.y;
  width = v317[0].size.width;
  v131 = CGRectGetWidth(v317[0]);
  v296 = v130;
  if (MaxX >= v129 + v131 && (v319 & 1) == 0)
  {
    v132 = sub_22088C28C();
    v133 = [v132 horizontalSizeClass];

    if (v133 >= 2)
    {
      if (v133 == 2)
      {
        sub_22088C31C();
        if (v265 >= 640.0)
        {
          v134 = 1;
        }

        else
        {
          v134 = 2;
        }

        goto LABEL_31;
      }

LABEL_66:
      result = sub_22089267C();
      __break(1u);
      return result;
    }
  }

  v134 = 0;
LABEL_31:
  v135 = v295 + v125;
  v136 = 3.0;
  v137 = v125 - v127 + 8.0;
  if (v120)
  {
    sub_22088C31C();
    v139 = v138;
    sub_22088C22C();
    sub_220891A6C();
    v141 = v139 - v140;
    sub_22088C31C();
    v327.origin.x = v141 - v291 + -28.0;
    v327.origin.y = 11.0;
    v327.size.width = 28.0;
    v327.size.height = 28.0;
    v328 = CGRectIntegral(v327);
    *&v304 = v328.origin.x;
    *(&v304 + 1) = *&v328.origin.y;
    *&v305 = v328.size.width;
    *(&v305 + 1) = *&v328.size.height;
    v329.origin.x = CGRectGetMinX(v328) + -28.0 + -16.0;
    v329.origin.y = 11.0;
    v329.size.width = 28.0;
    v329.size.height = 28.0;
    v330 = CGRectIntegral(v329);
    *&v306 = v330.origin.x;
    *(&v306 + 1) = *&v330.origin.y;
    *&v307 = v330.size.width;
    *(&v307 + 1) = *&v330.size.height;
    v136 = 3.0;
  }

  v142 = v135 + v136;
  v331.origin.x = v79;
  v331.origin.y = v81;
  v331.size.width = v83;
  v331.size.height = v85;
  v143 = CGRectGetWidth(v331);
  v332.origin.x = v79;
  v332.origin.y = v81;
  v332.size.width = v83;
  v332.size.height = v85;
  v144 = CGRectGetHeight(v332);
  *v310 = v293;
  *&v310[1] = v137;
  *&v310[2] = v143;
  *&v310[3] = v144;
  if (v134)
  {
    if (v134 == 1)
    {
      v145 = v293;
      v333.origin.x = v293;
      v333.origin.y = v137;
      v333.size.width = v143;
      v333.size.height = v144;
      v146 = CGRectGetMaxX(v333) + 14.0;
      v281 = v146;
      v334.origin.x = v145;
      v334.origin.y = v137;
      v334.size.width = v143;
      v334.size.height = v144;
      v147 = CGRectGetMinY(v334);
      v148 = sub_220891D8C();
      [v148 ascender];
      v150 = v149;

      v151 = v147 + v150;
      v152 = sub_220891D8C();
      [v152 ascender];
      v154 = v153;

      v155 = v151 - v154;
      v311 = v146;
      v312 = v151 - v154;
      v157 = v294;
      v156 = v295;
      v313 = v294;
      v314 = v295;
      sub_22088C31C();
      v159 = v158;
      sub_22088C22C();
      sub_220891A6C();
      v161 = v159 - v160;
      sub_22088C31C();
      v162 = v161 - v291;
      v163 = v296;
      v164 = x;
      v335.origin.x = x;
      v165 = y;
      v166 = width;
      v335.origin.y = y;
      v335.size.width = width;
      v335.size.height = v296;
      v167 = v162 - CGRectGetWidth(v335);
      v336.origin.x = v281;
      MaxX = v155;
      v336.origin.y = v155;
      v336.size.width = v157;
      v336.size.height = v156;
      v168 = CGRectGetMinY(v336);
      v169 = sub_220891D8C();
      [v169 ascender];
      v171 = v170;

      v172 = v168 + v171 - v318;
      v337.origin.x = v164;
      v337.origin.y = v165;
      v337.size.width = v166;
      v337.size.height = v163;
      v173 = CGRectGetWidth(v337);
      v338.origin.x = v164;
      v174 = v293;
      v338.origin.y = v165;
      v338.size.width = v166;
      v338.size.height = v163;
      v339.size.height = CGRectGetHeight(v338);
      *&v308 = v167;
      *(&v308 + 1) = v172;
      *&v309 = v173;
      *(&v309 + 1) = *&v339.size.height;
      v339.origin.x = v167;
      v339.origin.y = v172;
      v339.size.width = v173;
      v175 = CGRectGetMaxY(v339) + 8.0;
      v176 = v284.origin.x;
      v177 = v284.origin.y;
      v179 = v284.size.width;
      v178 = v284.size.height;
      v180 = CGRectGetWidth(v284);
      v340.origin.x = v176;
      v181 = v281;
      v340.origin.y = v177;
      v340.size.width = v179;
      v340.size.height = v178;
      v182 = CGRectGetHeight(v340);
      *&v300 = v174;
      *(&v300 + 1) = v175;
      *&v301 = v180;
      *(&v301 + 1) = v182;
    }

    else
    {
      v206 = v296;
      v207 = x;
      v345.origin.x = x;
      v208 = y;
      v209 = width;
      v345.origin.y = y;
      v345.size.width = width;
      v345.size.height = v296;
      v210 = v271 - CGRectGetWidth(v345) + -14.0;
      v212 = v294;
      v211 = v295;
      v213 = v142 - v295;
      v311 = v293;
      v312 = v213;
      if (v210 < v294)
      {
        v212 = v210;
      }

      v313 = v212;
      v314 = v295;
      sub_22088C31C();
      v215 = v214;
      sub_22088C22C();
      sub_220891A6C();
      v217 = v215 - v216;
      sub_22088C31C();
      v218 = v217 - v291;
      v346.origin.x = v207;
      v346.origin.y = v208;
      v346.size.width = v209;
      v346.size.height = v206;
      v219 = v218 - CGRectGetWidth(v346);
      v174 = v293;
      v347.origin.x = v293;
      MaxX = v213;
      v347.origin.y = v213;
      v294 = v212;
      v347.size.width = v212;
      v347.size.height = v211;
      v220 = CGRectGetMinY(v347);
      v221 = sub_220891D8C();
      [v221 ascender];
      v223 = v222;

      v224 = v220 + v223 - v318;
      v225 = x;
      v348.origin.x = x;
      v348.origin.y = v208;
      v348.size.width = v209;
      v348.size.height = v206;
      v226 = CGRectGetWidth(v348);
      v349.origin.x = v225;
      v349.origin.y = v208;
      v349.size.width = v209;
      v349.size.height = v206;
      v350.size.height = CGRectGetHeight(v349);
      *&v308 = v219;
      *(&v308 + 1) = v224;
      *&v309 = v226;
      *(&v309 + 1) = *&v350.size.height;
      v350.origin.x = v219;
      v350.origin.y = v224;
      v350.size.width = v226;
      v175 = CGRectGetMaxY(v350) + 8.0;
      v228 = v284.origin.x;
      v227 = v284.origin.y;
      v230 = v284.size.width;
      v229 = v284.size.height;
      v180 = CGRectGetWidth(v284);
      v351.origin.x = v228;
      v351.origin.y = v227;
      v351.size.width = v230;
      v351.size.height = v229;
      v182 = CGRectGetHeight(v351);
      *&v300 = v174;
      *(&v300 + 1) = v175;
      *&v301 = v180;
      *(&v301 + 1) = v182;
      v181 = v174;
    }
  }

  else
  {
    v341.origin.x = v79;
    v341.origin.y = v81;
    v341.size.width = v83;
    v341.size.height = v85;
    v183 = CGRectGetWidth(v341);
    v184 = v295;
    if (v294 + v183 < MaxX && (v185 = sub_220891D8C(), [v185 lineHeight], v187 = v186, v185, v184 / v187 == 1.0))
    {
      v188 = v293;
      v342.origin.x = v293;
      v342.origin.y = v137;
      v342.size.width = v143;
      v342.size.height = v144;
      MaxX = CGRectGetMaxX(v342);
      v343.origin.x = v188;
      v343.origin.y = v137;
      v343.size.width = v143;
      v343.size.height = v144;
      v189 = CGRectGetMinY(v343);
      v190 = sub_220891D8C();
      [v190 ascender];
      v192 = v191;

      v193 = sub_220891D8C();
      [v193 ascender];
      v195 = v194;

      sub_22088C31C();
      v197 = v196;
      sub_22088C22C();
      sub_220891A6C();
      v199 = v197 - v198;
      sub_22088C31C();
      v200 = v199 - v291;
      v344.origin.x = v188;
      v344.origin.y = v137;
      v344.size.width = v143;
      v344.size.height = v144;
      v201 = v200 - CGRectGetMaxX(v344) + -14.0;
      v202 = v294;
      v203 = MaxX + 14.0;
      v204 = v189 + v192;
      v184 = v295;
      v174 = v188;
      v205 = v204 - v195;
      v311 = MaxX + 14.0;
      v312 = v205;
      if (v201 < v294)
      {
        v202 = v201;
      }

      v313 = v202;
      v314 = v295;
    }

    else
    {
      v205 = v142 - v184;
      v174 = v293;
      v202 = v294;
      v311 = v293;
      v312 = v142 - v184;
      v313 = v294;
      v314 = v184;
      v203 = v293;
    }

    v281 = v203;
    MaxX = v205;
    v294 = v202;
    v231 = v184;
    v232 = CGRectGetMaxY(*&v203) + 12.0;
    v233 = v296;
    v234 = x;
    v352.origin.x = x;
    v235 = y;
    v236 = width;
    v352.origin.y = y;
    v352.size.width = width;
    v352.size.height = v296;
    v237 = CGRectGetWidth(v352);
    v353.origin.x = v234;
    v353.origin.y = v235;
    v353.size.width = v236;
    v353.size.height = v233;
    v354.size.height = CGRectGetHeight(v353);
    *&v308 = v174;
    *(&v308 + 1) = v232;
    *&v309 = v237;
    *(&v309 + 1) = *&v354.size.height;
    v354.origin.x = v174;
    v354.origin.y = v232;
    v354.size.width = v237;
    v175 = CGRectGetMaxY(v354) + 10.0;
    v238 = v284.origin.x;
    v239 = v284.origin.y;
    v241 = v284.size.width;
    v240 = v284.size.height;
    v180 = CGRectGetWidth(v284);
    v355.origin.x = v238;
    v355.origin.y = v239;
    v355.size.width = v241;
    v355.size.height = v240;
    v182 = CGRectGetHeight(v355);
    *&v300 = v174;
    *(&v300 + 1) = v175;
    *&v301 = v180;
    *(&v301 + 1) = v182;
    v242 = sub_22088C24C();
    v243 = [v242 horizontalSizeClass];

    if (v243 == 1 && (sub_22088F0DC() & 1) == 0)
    {
      *&v298 = v290 - v269 + -16.0 - v268;
      *(&v298 + 1) = 0;
      *&v299 = v268;
      *(&v299 + 1) = v268;
      v181 = v281;
    }

    else
    {
      v181 = v281;
    }
  }

  v244 = sub_22088C24C();
  v245 = [v244 horizontalSizeClass];

  v246 = v174;
  if (v245 == 1)
  {
    v308 = 0u;
    v309 = 0u;
    v300 = 0u;
    v301 = 0u;
    v246 = 0.0;
    v175 = 0.0;
    v180 = 0.0;
    v182 = 0.0;
  }

  if ((sub_22088F0DC() & 1) != 0 || !v134)
  {
    v357.origin.x = v181;
    v357.origin.y = MaxX;
    v357.size.width = v294;
    v357.size.height = v295;
    MaxY = CGRectGetMaxY(v357);
    v358.origin.x = v246;
    v358.origin.y = v175;
    v358.size.width = v180;
    v358.size.height = v182;
    v250 = CGRectGetMaxY(v358);
    if (MaxY > v250)
    {
      v250 = MaxY;
    }

    v248 = ceil(v250) + 12.0;
  }

  else
  {
    v356.origin.x = v246;
    v356.origin.y = v175;
    v356.size.width = v180;
    v356.size.height = v182;
    v247 = CGRectGetMaxY(v356) + 12.0;
    if (v270 > v247)
    {
      v248 = v270;
    }

    else
    {
      v248 = v247;
    }
  }

  v251 = sub_22088C24C();
  v252 = [v251 horizontalSizeClass];

  if (v252 == 1)
  {
    v248 = ceil(fmax(v248, 44.0));
    sub_22088C1FC();
    v256 = v248 - 1.0 / v255;
    sub_22088C31C();
    v258 = v257;
    sub_22088C22C();
    sub_220891A6C();
    v260 = v258 - v259;
    sub_22088C31C();
    sub_220891A6C();
    v262 = v260 - v261;
    v253 = sub_22088C1FC();
    *&v302 = v174;
    *(&v302 + 1) = v256;
    *&v303 = v262;
    *(&v303 + 1) = 1.0 / v263;
  }

  MEMORY[0x28223BE20](v253, v254);
  *(&v267 - 16) = 0;
  *(&v267 - 15) = 0;
  *(&v267 - 14) = v290;
  *(&v267 - 13) = v248;
  *(&v267 - 12) = v310;
  *(&v267 - 11) = &v311;
  *(&v267 - 10) = &v298;
  *(&v267 - 72) = v120;
  *(&v267 - 8) = &v306;
  *(&v267 - 7) = &v304;
  *(&v267 - 6) = &v308;
  *(&v267 - 5) = v317;
  *(&v267 - 4) = &v302;
  *(&v267 - 3) = &v300;
  v266 = v97;
  type metadata accessor for StockFeedMastheadViewLayoutAttributes();
  sub_22088C19C();

  return sub_22076E304(v119);
}

uint64_t sub_2207F1E78@<X0>(int a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v100 = a4;
  v103 = a3;
  v110 = a2;
  LODWORD(v104) = a1;
  v126 = a8;
  v127 = a9;
  v124 = a6;
  v125 = a7;
  v128 = a5;
  v123 = a13;
  v106 = a12;
  v105 = a11;
  v13 = sub_22088ABEC();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *MEMORY[0x277D6D320];
  v20 = *(v14 + 104);
  v20(v18, v19, v13, v16);
  sub_22088ABDC();
  v121 = v22;
  v122 = v21;
  v119 = v24;
  v120 = v23;
  v25 = *(v14 + 8);
  v25(v18, v13);
  (v20)(v18, v19, v13);
  sub_22088ABDC();
  v117 = v27;
  v118 = v26;
  v116 = v28;
  v115 = v29;
  v25(v18, v13);
  (v20)(v18, v19, v13);
  sub_22088ABDC();
  v114 = v30;
  v113 = v31;
  v112 = v32;
  v111 = v33;
  v25(v18, v13);
  (v20)(v18, v19, v13);
  sub_22088ABDC();
  v110 = v34;
  v109 = v35;
  v108 = v36;
  v107 = v37;
  v25(v18, v13);
  (v20)(v18, v19, v13);
  sub_22088ABDC();
  v104 = v38;
  v103 = v39;
  v102 = v40;
  v101 = v41;
  v25(v18, v13);
  (v20)(v18, v19, v13);
  sub_22088ABDC();
  v100 = v42;
  v99 = v43;
  v98 = v44;
  v97 = v45;
  v25(v18, v13);
  (v20)(v18, v19, v13);
  sub_22088ABDC();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v25(v18, v13);
  (v20)(v18, v19, v13);
  sub_22088ABDC();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v25(v18, v13);
  v62 = sub_22088C28C();
  v63 = [v62 horizontalSizeClass];

  if (v63 >= 2)
  {
    if (v63 != 2)
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }

    sub_22088C31C();
    if (v65 >= 640.0)
    {
      v64 = 1;
    }

    else
    {
      v64 = 2;
    }
  }

  else
  {
    v64 = 0;
  }

  v66 = sub_22088C24C();
  v67 = [v66 horizontalSizeClass];

  v68 = *MEMORY[0x277D6E758];
  v69 = sub_22088D61C();
  v70 = v128;
  (*(*(v69 - 8) + 104))(v128, v68, v69);
  v71 = type metadata accessor for StockFeedMastheadViewLayoutAttributes();
  v72 = (v70 + v71[5]);
  v73 = v125;
  *v72 = v124;
  v72[1] = v73;
  v74 = v127;
  v72[2] = v126;
  v72[3] = v74;
  v75 = (v70 + v71[6]);
  v76 = v121;
  *v75 = v122;
  v75[1] = v76;
  v77 = v119;
  v75[2] = v120;
  v75[3] = v77;
  v78 = (v70 + v71[7]);
  v79 = v117;
  *v78 = v118;
  v78[1] = v79;
  v80 = v115;
  v78[2] = v116;
  v78[3] = v80;
  v81 = (v70 + v71[8]);
  v82 = v113;
  *v81 = v114;
  v81[1] = v82;
  v83 = v111;
  v81[2] = v112;
  v81[3] = v83;
  v84 = (v70 + v71[9]);
  v85 = v109;
  *v84 = v110;
  v84[1] = v85;
  v86 = v107;
  v84[2] = v108;
  v84[3] = v86;
  v87 = (v70 + v71[10]);
  v88 = v103;
  *v87 = v104;
  v87[1] = v88;
  v89 = v101;
  v87[2] = v102;
  v87[3] = v89;
  v90 = (v70 + v71[11]);
  v91 = v99;
  *v90 = v100;
  v90[1] = v91;
  v92 = v97;
  v90[2] = v98;
  v90[3] = v92;
  result = memcpy((v70 + v71[12]), a10, 0x1A1uLL);
  v93 = (v70 + v71[13]);
  *v93 = v47;
  v93[1] = v49;
  v93[2] = v51;
  v93[3] = v53;
  v94 = (v70 + v71[14]);
  *v94 = v55;
  v94[1] = v57;
  v94[2] = v59;
  v94[3] = v61;
  *(v70 + v71[15]) = v64;
  *(v70 + v71[16]) = v67;
  return result;
}

uint64_t sub_2207F259C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t sub_2207F268C()
{
  v1 = type metadata accessor for CuratedForYouFeedGroupConfigData();
  if ((*(v0 + v1[6]) & 1) == 0)
  {
    if (*(v0 + v1[7]))
    {
      if (*(v0 + v1[8]))
      {
        if (*(v0 + v1[9]))
        {
          if (*(v0 + v1[10]))
          {
            if (*(v0 + v1[11]))
            {
              v2 = 33;
              if (*(v0 + v1[12]))
              {
                return v2;
              }

              return v2 | 2;
            }

            v2 = 33;
            goto LABEL_93;
          }

          v2 = 16777249;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }

        else if (*(v0 + v1[10]))
        {
          v2 = 8388641;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 25165857;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[9]))
      {
        if (*(v0 + v1[10]))
        {
          v2 = 2097185;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 18874401;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[10]))
      {
        v2 = 10485793;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 27263009;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }

LABEL_93:
      v2 |= 0x800uLL;
      goto LABEL_94;
    }

    if (*(v0 + v1[8]))
    {
      if (*(v0 + v1[9]))
      {
        if (*(v0 + v1[10]))
        {
          v3 = 1048577;
LABEL_59:
          if (*(v0 + v1[11]) == 1)
          {
            v2 = v3 + 32;
            if (*(v0 + v1[12]))
            {
              return v2;
            }

            return v2 | 2;
          }

          v2 = v3 | 0x20;
          goto LABEL_93;
        }

        v6 = 17825793;
      }

      else
      {
        if (*(v0 + v1[10]))
        {
          v3 = 9437185;
          goto LABEL_59;
        }

        v6 = 26214401;
      }
    }

    else if (*(v0 + v1[9]))
    {
      if (*(v0 + v1[10]))
      {
        v3 = 3145729;
        goto LABEL_59;
      }

      v6 = 19922945;
    }

    else
    {
      if (*(v0 + v1[10]))
      {
        v3 = 11534337;
        goto LABEL_59;
      }

      v6 = 28311553;
    }

    v2 = v6 | 0x20;
    goto LABEL_92;
  }

  if (!*(v0 + v1[7]))
  {
    if (*(v0 + v1[8]))
    {
      if (*(v0 + v1[9]))
      {
        if (*(v0 + v1[10]))
        {
          v2 = 1048577;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 17825793;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[10]))
      {
        v2 = 9437185;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 26214401;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }
    }

    else if (*(v0 + v1[9]))
    {
      if (*(v0 + v1[10]))
      {
        v2 = 3145729;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 19922945;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }
    }

    else if (*(v0 + v1[10]))
    {
      v2 = 11534337;
      if (*(v0 + v1[11]))
      {
        goto LABEL_94;
      }
    }

    else
    {
      v2 = 28311553;
      if (*(v0 + v1[11]))
      {
        goto LABEL_94;
      }
    }

    goto LABEL_93;
  }

  if (!*(v0 + v1[8]))
  {
    if (*(v0 + v1[9]))
    {
      if (*(v0 + v1[10]))
      {
        v4 = 1048577;
      }

      else
      {
        v4 = 17825793;
      }
    }

    else if (*(v0 + v1[10]))
    {
      v4 = 9437185;
    }

    else
    {
      v4 = 26214401;
    }

    v2 = v4 + 0x100000;
    if (*(v0 + v1[11]))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (*(v0 + v1[9]))
  {
    if (*(v0 + v1[10]))
    {
      if (*(v0 + v1[11]) == 1)
      {
        v2 = 1;
        if (*(v0 + v1[12]))
        {
          return v2;
        }

        return v2 | 2;
      }

      v2 = 1;
      goto LABEL_93;
    }

    v2 = 16777217;
LABEL_92:
    if (*(v0 + v1[11]))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (*(v0 + v1[10]))
  {
    v5 = 3145729;
  }

  else
  {
    v5 = 19922945;
  }

  v2 = v5 + 5242880;
  if (!*(v0 + v1[11]))
  {
    goto LABEL_93;
  }

LABEL_94:
  if ((*(v0 + v1[12]) & 1) == 0)
  {
    return v2 | 2;
  }

  return v2;
}

uint64_t sub_2207F29B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = type metadata accessor for CuratedForYouFeedGroupConfigData();
  MEMORY[0x28223BE20](v37, v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22089039C();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207F3478(0, &qword_28127E1F8, MEMORY[0x277D844C8]);
  v39 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v24 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207F33C0();
  v38 = v14;
  v15 = v40;
  sub_220892A4C();
  if (!v15)
  {
    v40 = v11;
    v16 = v36;
    v17 = v37;
    v48 = 1;
    sub_2207F34DC(&qword_2812968E0);
    v18 = v38;
    sub_22089279C();
    v34 = v9;
    v48 = 0;
    v19 = sub_22089277C();
    v47 = 2;
    v32 = v19;
    v33 = v21;
    v22 = v39;
    sub_22089271C();
    v31 = v48;
    v46 = 3;
    sub_22089271C();
    v30 = v47;
    v45 = 4;
    sub_22089271C();
    v29 = v46;
    v44 = 5;
    sub_22089271C();
    v28 = v45;
    v43 = 6;
    sub_22089271C();
    v25 = v6;
    v27 = v44;
    v42 = 7;
    sub_22089271C();
    v26 = v43;
    v41 = 8;
    sub_22089271C();
    (*(v40 + 8))(v18, v22);
    LODWORD(v18) = v42;
    (*(v16 + 32))(v5 + v17[5], v34, v25);
    v23 = v33;
    *v5 = v32;
    v5[1] = v23;
    *(v5 + v17[6]) = (v31 == 2) | v31 & 1;
    *(v5 + v17[7]) = (v30 == 2) | v30 & 1;
    *(v5 + v17[8]) = (v29 == 2) | v29 & 1;
    *(v5 + v17[9]) = (v28 == 2) | v28 & 1;
    *(v5 + v17[10]) = (v27 == 2) | v27 & 1;
    *(v5 + v17[11]) = v26 & 1;
    *(v5 + v17[12]) = (v18 == 2) | v18 & 1;
    sub_2207F3414(v5, v35);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2207F2EBC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x65707974627573;
    v6 = 0xD000000000000010;
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    if (a1)
    {
      v5 = 0x746E65746E6F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0xD00000000000001BLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2207F2FEC(void *a1)
{
  sub_2207F3478(0, &qword_27CF5A090, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207F33C0();
  sub_220892A5C();
  v10[15] = 0;
  sub_22089280C();
  if (!v1)
  {
    type metadata accessor for CuratedForYouFeedGroupConfigData();
    v10[14] = 1;
    sub_22089039C();
    sub_2207F34DC(&qword_27CF56B78);
    sub_22089283C();
    v10[13] = 2;
    sub_22089281C();
    v10[12] = 3;
    sub_22089281C();
    v10[11] = 4;
    sub_22089281C();
    v10[10] = 5;
    sub_22089281C();
    v10[9] = 6;
    sub_22089281C();
    v10[8] = 7;
    sub_22089281C();
    v10[7] = 8;
    sub_22089281C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2207F32E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2207F3860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2207F3314(uint64_t a1)
{
  v2 = sub_2207F33C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2207F3350(uint64_t a1)
{
  v2 = sub_2207F33C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2207F33C0()
{
  result = qword_281284748[0];
  if (!qword_281284748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281284748);
  }

  return result;
}

uint64_t sub_2207F3414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedForYouFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2207F3478(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2207F33C0();
    v7 = a3(a1, &type metadata for CuratedForYouFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2207F34DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22089039C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2207F3520(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_2208928BC()) && (v5 = type metadata accessor for CuratedForYouFeedGroupConfigData(), *(a1 + v5[6]) == *(a2 + v5[6])) && *(a1 + v5[7]) == *(a2 + v5[7]) && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]))
  {
    v6 = *(a1 + v5[12]) ^ *(a2 + v5[12]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t getEnumTagSinglePayload for CuratedForYouFeedGroupConfigData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CuratedForYouFeedGroupConfigData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2207F375C()
{
  result = qword_27CF5A098;
  if (!qword_27CF5A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A098);
  }

  return result;
}

unint64_t sub_2207F37B4()
{
  result = qword_281284738;
  if (!qword_281284738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281284738);
  }

  return result;
}

unint64_t sub_2207F380C()
{
  result = qword_281284740;
  if (!qword_281284740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281284740);
  }

  return result;
}

uint64_t sub_2207F3860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707974627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002208D78D0 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002208D78F0 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002208D7910 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002208D7930 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002208D7950 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002208D7970 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002208D7990 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_2208928BC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_2207F3BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_220529844(0, qword_281289410, type metadata accessor for StockForYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v24 - v10;
  sub_220529844(0, qword_28128F298, type metadata accessor for ForYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for ForYouFeedGroupKnobs();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207F41A4(a1, v15);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    v22 = type metadata accessor for StockForYouFeedGroupKnobs();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    sub_22052AC50(v11, 0, v20);
    sub_2207F4224(a1);
    if (v21(v15, 1, v16) != 1)
    {
      sub_2207F4224(v15);
    }
  }

  else
  {
    sub_2207F4224(a1);
    sub_2207F429C(v15, v20);
  }

  sub_2207F429C(v20, a4);
  if (a3)
  {
    a2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  result = type metadata accessor for ForYouFeedKnobsConfig();
  *(a4 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2207F3E44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_220529844(0, qword_28128F298, type metadata accessor for ForYouFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_2207F4300();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2207F435C();
  sub_220892A4C();
  if (!v2)
  {
    type metadata accessor for ForYouFeedGroupKnobs();
    v20 = 0;
    sub_2207F43B0();
    sub_22089271C();
    v19 = 1;
    sub_22089271C();
    sub_2207F3BD4(v7, v17, v18, v16);
    (*(v10 + 8))(v13, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2207F4040@<X0>(char *a1@<X8>)
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

uint64_t sub_2207F40A0@<X0>(char *a1@<X8>)
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

uint64_t sub_2207F4104(uint64_t a1)
{
  v2 = sub_2207F435C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2207F4140(uint64_t a1)
{
  v2 = sub_2207F435C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2207F41A4(uint64_t a1, uint64_t a2)
{
  sub_220529844(0, qword_28128F298, type metadata accessor for ForYouFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207F4224(uint64_t a1)
{
  sub_220529844(0, qword_28128F298, type metadata accessor for ForYouFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2207F429C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2207F4300()
{
  if (!qword_28127E240)
  {
    sub_2207F435C();
    v0 = sub_2208927BC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E240);
    }
  }
}

unint64_t sub_2207F435C()
{
  result = qword_28128DEC8[0];
  if (!qword_28128DEC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128DEC8);
  }

  return result;
}

unint64_t sub_2207F43B0()
{
  result = qword_28128F2D8;
  if (!qword_28128F2D8)
  {
    type metadata accessor for ForYouFeedGroupKnobs();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F2D8);
  }

  return result;
}

uint64_t sub_2207F4408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedGroupKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2207F4480()
{
  result = qword_27CF5A0A0;
  if (!qword_27CF5A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF5A0A0);
  }

  return result;
}

unint64_t sub_2207F44D8()
{
  result = qword_28128DEB8;
  if (!qword_28128DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DEB8);
  }

  return result;
}

unint64_t sub_2207F4530()
{
  result = qword_28128DEC0;
  if (!qword_28128DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128DEC0);
  }

  return result;
}

uint64_t sub_2207F45C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a5;
  v67 = a4;
  v64 = a3;
  v71 = a2;
  sub_22061D1D0(0);
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v69 = &v61 - v11;
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v70 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2207EA34C(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22089022C();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v61 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v61 - v30;
  sub_2207F4FA8(a1, v18, sub_2207EA34C);
  sub_2206230B4();
  v33 = v32;
  v34 = *(v32 - 8);
  if ((*(v34 + 48))(v18, 1, v32) == 1)
  {
    return sub_2207F5014(v18, sub_2207EA34C);
  }

  sub_2208905FC();
  (*(v34 + 8))(v18, v33);
  (*(v20 + 32))(v31, v28, v19);
  v36 = v71;
  if (!v71)
  {
    return (*(v20 + 8))(v31, v19);
  }

  (*(v20 + 16))(v24, v31, v19);
  v37 = (*(v20 + 88))(v24, v19);
  if (v37 == *MEMORY[0x277D33288])
  {
    v63 = v31;
    v62 = v20;
    v38 = 0x4000000000000000;
    v39 = v70;
  }

  else
  {
    v39 = v70;
    if (v37 != *MEMORY[0x277D33270])
    {
      v60 = *(v20 + 8);
      v60(v24, v19);
      return (v60)(v31, v19);
    }

    v63 = v31;
    v62 = v20;
    v38 = 0x6000000000000000;
  }

  *v39 = v38 | v36;
  swift_storeEnumTagMultiPayload();
  v40 = sub_22088969C();
  v41 = v69;
  (*(*(v40 - 8) + 56))(v69, 1, 1, v40);
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  v76 = v64;
  sub_2205A0924(v77, &v72, &unk_281298970, &unk_281298980);
  v61 = v19;
  if (*(&v73 + 1))
  {
    sub_220458198(&v72, v74);
    swift_retain_n();
    v42 = sub_220597454(v74);
    v44 = v43;
    v46 = v45;
    __swift_destroy_boxed_opaque_existential_1(v74);
  }

  else
  {
    swift_retain_n();
    sub_2205A0B34(&v72, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v47 = qword_281290900;
    v48 = qword_281290908;
    v42 = qword_2812908F8;

    v44 = v47;
    v46 = v48;
    sub_2204A80F4(v47);
  }

  v49 = v39;
  v73 = 0u;
  v72 = 0u;
  v50 = v66;
  sub_2207F4FA8(v41, v66, sub_22061D1D0);
  sub_2205A0924(v79, v74, &unk_281296D10, &qword_281296D20);
  v51 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v52 = v7 + v51 + 7;
  v53 = v41;
  v54 = v52 & 0xFFFFFFFFFFFFFFF8;
  v55 = ((v52 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  sub_2205A0994(v50, v56 + v51);
  v57 = v56 + v54;
  v58 = v74[1];
  *v57 = v74[0];
  *(v57 + 16) = v58;
  *(v57 + 32) = v75;
  v59 = (v56 + v55);
  *v59 = v42;
  v59[1] = v44;
  v59[2] = v46;

  sub_2204A80F4(v44);
  sub_2204549FC();
  sub_2204489A0(&unk_281297EC0, sub_2204549FC);
  sub_22088E92C();

  sub_2204DA45C(v44);

  sub_2205A0B34(v77, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v79, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2207F5014(v53, sub_22061D1D0);
  sub_2207F5014(v49, type metadata accessor for StocksActivity);
  (*(v62 + 8))(v63, v61);
  return sub_2205A0B34(&v72, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_2207F4FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207F5014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_15()
{
  sub_22061D1D0(0);
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

uint64_t sub_2207F51D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  v24 = v5;
  v25 = a2;
  v26[3] = v6;
  v27 = sub_2204535F8(&qword_281298BF0, MEMORY[0x277CEAEA8]);
  v26[0] = v7;
  sub_22088C9FC();
  swift_allocObject();
  v23 = sub_22088C9EC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812967E0);
  result = sub_2208884DC();
  v8 = v6;
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v27;
  v9 = __swift_project_boxed_opaque_existential_1(v26, v6);
  v22 = &v19;
  v10 = *(v6 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v9);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = *(v10 + 16);
  v20(&v19 - v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (result)
  {
    v13 = type metadata accessor for AudioActionHandler();
    v14 = sub_220887BBC();

    MEMORY[0x28223BE20](v15, v16);
    (v20)(&v19 - v12, &v19 - v12, v8);
    v17 = sub_22082BFC8(v24, v23, &v19 - v12, v14, v13, v8, v21);
    (*(v10 + 8))(&v19 - v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v18 = v25;
    v25[3] = v13;
    result = sub_2204535F8(qword_281290E68, type metadata accessor for AudioActionHandler);
    v18[4] = result;
    *v18 = v17;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2207F5584(uint64_t a1)
{
  v2 = sub_2208883BC();
  MEMORY[0x28223BE20](v2, v3);
  sub_22046DA2C(a1, v6);
  v4 = swift_allocObject();
  sub_220457328(v6, v4 + 16);
  *&v6[0] = MEMORY[0x277D84F90];
  sub_2204535F8(&qword_2812989B0, MEMORY[0x277D6CA70]);
  sub_2207F6194(0);
  sub_2204535F8(&qword_28127EAD0, sub_2207F6194);
  sub_2208923FC();
  sub_220452E30(0, &unk_281298720, sub_220450400, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_220888CDC();
}

uint64_t sub_2207F5740@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220450514(0);
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    result = sub_2204535F8(&qword_27CF5A0C8, sub_220450514);
    *a2 = v4;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207F57D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220887BBC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297EF8);
  result = sub_22088849C();
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_22088849C();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = type metadata accessor for NowPlayingBackgroundView();
  [objc_allocWithZone(v3) initWithFrame_];
  [objc_allocWithZone(v3) initWithFrame_];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298A78);
  result = sub_2208884DC();
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884CC();
  if (result)
  {
    sub_2204535F8(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    sub_22088B49C();
    swift_allocObject();
    sub_22088B47C();
    sub_2204535F8(&unk_27CF5A0B8, type metadata accessor for NowPlayingBackgroundView);
    sub_220450514(0);
    v5 = objc_allocWithZone(v4);
    return sub_220887D6C();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2207F5B90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088731C();
    result = sub_2208884CC();
    if (result)
    {
      v5 = result;
      v6 = type metadata accessor for NowPlayingMenuFactory();
      v7 = swift_allocObject();
      v7[2] = v8;
      v7[3] = v9;
      v7[4] = v5;
      a2[3] = v6;
      result = sub_2204535F8(&unk_27CF5A0A8, type metadata accessor for NowPlayingMenuFactory);
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

uint64_t sub_2207F5CC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (v9)
  {
    v7 = type metadata accessor for NowPlayingPresenter();
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v6;
    v8[4] = v9;
    v8[5] = v10;
    a2[3] = v7;
    result = sub_2204535F8(&qword_28128FD90, type metadata accessor for NowPlayingPresenter);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_2207F5E34()
{
  v0 = [objc_opt_self() sharedCommandCenter];

  return v0;
}

uint64_t sub_2207F5E74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  v4 = v3;
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_2204535F8(&qword_281298AF0, sub_2204536AC);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207F5F1C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204536AC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2207F5F70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812967A8);
  result = sub_2208884DC();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &unk_28127E650);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &unk_28127E6E8);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298AB0);
  result = sub_2208884DC();
  if (v11)
  {
    v8 = type metadata accessor for AudioTrackFactory();
    v9 = swift_allocObject();
    v9[2] = v5;
    sub_220457328(&v12, (v9 + 3));
    v9[8] = v6;
    v9[9] = v7;
    result = sub_220457328(&v10, (v9 + 10));
    a2[3] = v8;
    a2[4] = &off_28341AE18;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_2207F6384()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_blueprintViewController);

    sub_22088C71C();
    v3 = sub_22088BFCC();

    [v3 reloadData];
  }
}

void sub_2207F641C(char a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidAppear_, a1 & 1);
  sub_22044E3AC(&qword_28128A3B0, v3, type metadata accessor for ForYouFeedViewController);
  sub_22088843C();
  v4 = [v1 navigationController];
  if (v4)
  {

    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 window];

      if (v7)
      {
        v8 = [v7 windowScene];

        if (v8)
        {
          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v10 = [objc_opt_self() bundleForClass_];
          sub_220884CAC();

          v11 = sub_22089132C();

          [v8 setTitle_];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_2207F6740()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewWillLayoutSubviews);
  result = [*&v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_blueprintViewController] view];
  if (result)
  {
    v2 = result;
    result = [v0 view];
    if (result)
    {
      v3 = result;
      [result bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      [v2 setFrame_];
      return sub_2207F682C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2207F682C()
{
  v1 = sub_22088C32C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22088F0DC();
  if (result)
  {
    v7 = (v0 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_cardToolbarViewModel);
    v8 = *(v0 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_cardToolbarViewModel);
    if (v8)
    {
      v10 = v7[2];
      v9 = v7[3];
      v11 = v7[1];
      v24[1] = *(v0 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_cardToolbarViewProvider);

      v12 = v8;
      v13 = v11;
      sub_22088C76C();
      swift_getObjectType();
      sub_22088D92C();
      swift_unknownObjectRelease();
      sub_22088C71C();
      v14 = sub_22088BFCC();

      sub_22088C20C();
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = sub_22088C24C();
      sub_220858320(v16, v18, v20, v22, v12, v13, v10, v9, v23, v14, 0);

      return (*(v2 + 8))(v5, v1);
    }
  }

  return result;
}

id sub_2207F6A18()
{
  if (v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_isYahooToolbarVisible] != 1)
  {
    v5 = *&v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_blueprintViewController];
    result = [v5 additionalSafeAreaInsets];
    if (v7 == 0.0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  [result safeAreaInsets];
  v4 = v3;

  v5 = *&v0[OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_blueprintViewController];
  result = [v5 additionalSafeAreaInsets];
  if (vabdd_f64(v6, 66.0 - v4) > 0.5)
  {
LABEL_7:
    [v5 additionalSafeAreaInsets];

    return [v5 setAdditionalSafeAreaInsets_];
  }

  return result;
}

void sub_2207F6BEC()
{
  v1 = [*v0 parentViewController];
  sub_22088A97C();
}

uint64_t sub_2207F6C50(uint64_t a1)
{
  v23 = sub_22088E85C();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088E86C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = sub_22088C6FC();
  sub_22076C7F8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  sub_22089028C();
  v14 = (a1 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler);
  swift_beginAccess();
  v15 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v16 = *(*v15 + 40);
  v17 = *(*v15 + 48);
  __swift_project_boxed_opaque_existential_1((*v15 + 16), v16);
  sub_22051E274(v16, v17, &v10[v12]);
  v18 = *MEMORY[0x277D6D428];
  v19 = sub_22088ADDC();
  (*(*(v19 - 8) + 104))(&v10[v13], v18, v19);
  (*(v7 + 104))(v10, *MEMORY[0x277D6ECA0], v6);
  v20 = v23;
  (*(v2 + 104))(v5, *MEMORY[0x277D6ECA8], v23);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22088B54C();

  (*(v2 + 8))(v5, v20);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_2207F6F5C()
{
  v0 = sub_22088E85C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088E86C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C6FC();
  (*(v6 + 104))(v9, *MEMORY[0x277D6EC88], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6ECA8], v0);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22088B54C();

  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_2207F7194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a1;
  sub_220488214(0, &qword_281297E60, MEMORY[0x277D6D710]);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v21 - v7;
  v9 = sub_22088B96C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_keyboardInputMonitor), *(v3 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_keyboardInputMonitor + 24));
  v14 = sub_22088CA3C();
  v16 = v15;
  sub_220891CAC();
  if (v28)
  {
    sub_220457328(&v27, v29);
    v22 = v8;
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    (*(v10 + 104))(v13, *MEMORY[0x277D6D970], v9);
    v8 = v22;
    sub_22088C39C();
    (*(v10 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_2204C0A60(&v27, sub_2207FA4E8);
  }

  v17 = *(v3 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler);
  sub_22088549C();
  sub_220488214(0, &qword_281296EA0, MEMORY[0x277D6EC60]);
  sub_22088E84C();
  v18 = *(v17 + 40);
  ObjectType = swift_getObjectType();
  LOBYTE(v29[0]) = (v14 == 1703936) & ~v16;
  (*(v18 + 64))(a2, v8, 0, v29, ObjectType, v18);
  return (*(v25 + 8))(v8, v26);
}

void sub_2207F7494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22088C32C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088DA2C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v32 - v16;
  v36 = *(v9 + 16);
  v36(&v32 - v16, a3, v8, v15);
  v18 = *(v9 + 88);
  v19 = v18(v17, v8);
  if (v19 == *MEMORY[0x277D6E950])
  {
    (*(v9 + 8))(v17, v8);
    v20 = *MEMORY[0x277D6E930];
LABEL_3:
    v34 = v20;
    v32 = v5;
    v33 = v4;
    v21 = *(v37 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler);
    sub_220821EC4();
    v22 = *(v21 + 40);
    ObjectType = swift_getObjectType();
    (*(v22 + 40))(ObjectType, v22);
    (v36)(v12, a3, v8);
    LODWORD(v21) = v18(v12, v8);
    (*(v9 + 8))(v12, v8);
    if (v21 == v34)
    {
      sub_22088C76C();
      swift_getObjectType();
      v24 = v35;
      sub_22088D92C();
      swift_unknownObjectRelease();
      sub_22088C71C();
      v25 = sub_22088BFCC();

      [v25 adjustedContentInset];
      v27 = v26;

      sub_22058B43C(v24, v27);
      (*(v32 + 8))(v24, v33);
    }

    return;
  }

  if (v19 == *MEMORY[0x277D6E928])
  {
    v28 = *(*(v37 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 40);
    v29 = swift_getObjectType();
    (*(v28 + 32))(v29, v28);
    return;
  }

  v20 = *MEMORY[0x277D6E930];
  if (v19 == *MEMORY[0x277D6E948] || v19 == v20)
  {
    goto LABEL_3;
  }

  if (v19 != *MEMORY[0x277D6E958])
  {
    if (v19 == *MEMORY[0x277D6E970])
    {
      sub_22088C71C();
      v31 = sub_22088BFCC();

      sub_22044D56C(0, &qword_28127E820);
      sub_22088B74C();
    }

    else
    {
      sub_22089267C();
      __break(1u);
    }
  }
}

uint64_t sub_2207F7918()
{
  v0 = sub_22088698C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D97C();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v7 + 32))(v10, v14, v6);
      sub_22088FF6C();
      sub_2208868DC();
      (*(v1 + 8))(v4, v0);
      v21 = sub_220890B8C();
      swift_unknownObjectRelease();
      (*(v7 + 8))(v10, v6);
      return v21;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v19 = EnumCaseMultiPayload;
    result = 0;
    if (v19 != 5)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_8:
    sub_2204C0A60(v14, type metadata accessor for ForYouFeedModel);
    return 0;
  }

  sub_220458918();
  v17 = *(v16 + 48);
  v18 = sub_22089030C();
  (*(*(v18 - 8) + 8))(&v14[v17], v18);
  return 0;
}

void sub_2207F7C0C(uint64_t a1, char a2)
{
  v4 = sub_22088E85C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088E86C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v26[1] = v2;
    v26[2] = sub_22088C6FC();
    v14 = (v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler);
    swift_beginAccess();
    v15 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v13[3] = sub_22088FE9C();
    v13[4] = sub_22044E3AC(&qword_27CF58020, 255, MEMORY[0x277D32BC8]);
    __swift_allocate_boxed_opaque_existential_1(v13);
    v26[0] = v4;
    v16 = *v15;
    v17 = [objc_opt_self() labelColor];
    v19 = v16[5];
    v18 = v16[6];
    __swift_project_boxed_opaque_existential_1(v16 + 2, v19);
    (*(*(v18 + 16) + 472))(v19);
    sub_22088FE8C();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    v22 = sub_22089141C();
    v24 = v23;

    v13[5] = v22;
    v13[6] = v24;
    (*(v10 + 104))(v13, *MEMORY[0x277D6EC80], v9);
    v25 = v26[0];
    (*(v5 + 104))(v8, *MEMORY[0x277D6ECB0], v26[0]);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_22088B54C();

    (*(v5 + 8))(v8, v25);

    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_2207F8000()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_2208886AC();
  }

  return result;
}

uint64_t sub_2207F80DC(uint64_t a1, uint64_t a2)
{
  sub_220488214(0, &qword_281297660, MEMORY[0x277D6E3A0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1((*(v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 88), *(*(v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 112));
  (*(v6 + 16))(v9, a2, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_22088726C();
}

uint64_t sub_2207F8250(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler);
  v5 = v4[5];
  ObjectType = swift_getObjectType();
  (*(v5 + 112))(a2, ObjectType, v5);
  __swift_project_boxed_opaque_existential_1(v4 + 11, v4[14]);
  return sub_22073C1E4(a2);
}

uint64_t sub_2207F82CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_2207F8524(void *a1, uint64_t a2, uint64_t a3)
{
  sub_2204D4E50(0, &qword_2812976D0, MEMORY[0x277D6E270], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v40 = &v39 - v8;
  v9 = sub_22088CC6C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v39 - v19;
  v21 = a1;
  sub_22088A98C();
  sub_22088A92C();
  v41 = *(v10 + 16);
  v42 = a3;
  v41(v20, a3, v9);
  v43 = v10;
  v22 = *(v10 + 88);
  v23 = v22(v20, v9);
  v24 = *MEMORY[0x277D6E230];
  v25 = *MEMORY[0x277D6E258];
  v26 = v23 == *MEMORY[0x277D6E230] || v23 == v25;
  v45 = v3;
  if (v26)
  {
    v27 = *(*(v3 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v27 + 80))(ObjectType, v27);
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x277D6E260])
  {
    goto LABEL_8;
  }

  if (v23 != *MEMORY[0x277D6E250])
  {
    if (v23 != *MEMORY[0x277D6E268])
    {
      if (v23 == *MEMORY[0x277D6E248])
      {
        goto LABEL_10;
      }

      if (v23 != *MEMORY[0x277D6E240] && v23 != *MEMORY[0x277D6E238])
      {
        goto LABEL_30;
      }
    }

LABEL_8:
    v29 = *(*(v45 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_eventHandler) + 40);
    v30 = swift_getObjectType();
    (*(v29 + 88))(v30, v29);
  }

LABEL_10:
  v31 = v41;
  v41(v16, v42, v9);
  result = v22(v16, v9);
  if (result == v24 || result == v25)
  {
    v34 = v44;
    v35 = *(v45 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_forYouFeedViewCoordinator);
    v36 = v43;
    (*(v43 + 104))(v44, v25, v9);
LABEL_19:
    v37 = v40;
    v31(v40, v34, v9);
    (*(v36 + 56))(v37, 0, 1, v9);
    v38 = OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_presentationState;
    swift_beginAccess();
    sub_2207FA60C(v37, v35 + v38);
    swift_endAccess();
    sub_2205EDDD4(v34);
    return (*(v36 + 8))(v34, v9);
  }

  v34 = v44;
  v36 = v43;
  if (result == *MEMORY[0x277D6E260] || result == *MEMORY[0x277D6E250])
  {
    v35 = *(v45 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_forYouFeedViewCoordinator);
    (*(v43 + 104))(v44, result, v9);
    goto LABEL_19;
  }

  if (result != *MEMORY[0x277D6E268] && result != *MEMORY[0x277D6E248] && result != *MEMORY[0x277D6E240] && result != *MEMORY[0x277D6E238])
  {
LABEL_30:
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2207F8A38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220891C4C();
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    v4 = sub_22088D03C();
    if (v4)
    {
      v5 = v4;
      if (sub_220891C7C())
      {
        v6 = v5;
        sub_22088D02C();
        v7 = 0;
        v5 = v3;
        v3 = v6;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_22088CC6C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t sub_2207F8B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6D980])
  {
    v11 = sub_22088CC6C();
    v12 = MEMORY[0x277D6E218];
    v13 = MEMORY[0x277D6E250];
LABEL_5:
    (*(*(v11 - 8) + 104))(a2, *v13);
    v14 = *v12;
    v15 = sub_22088CC2C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x277D6D978])
  {
    v11 = sub_22088CC0C();
    v12 = MEMORY[0x277D6E1F8];
    v13 = MEMORY[0x277D6E1E8];
    goto LABEL_5;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_2207F8D4C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  swift_getObjectType();
  v1 = sub_22088B3CC();
  v29 = *(v1 - 8);
  v30 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v27 = &v26 - v7;
  v28 = sub_22088B3DC();
  v8 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v16 = &v26 - v15;
  if (qword_281298EC0 != -1)
  {
    swift_once();
  }

  sub_22044E3AC(&unk_28128A3B8, v14, type metadata accessor for ForYouFeedViewController);
  sub_220886B3C();
  v17 = v32;
  sub_2204D4E50(0, &qword_28127E0B0, MEMORY[0x277D6D770], MEMORY[0x277D84560]);
  v18 = sub_22088B3EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  if (v17 == 1)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_220899920;
    v23 = *(v19 + 104);
    v23(v22 + v21, *MEMORY[0x277D6D760], v18);
    v23(v22 + v21 + v20, *MEMORY[0x277D6D768], v18);
    sub_220490DA4(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v8 + 104))(v16, *MEMORY[0x277D6D750], v28);
    (*(v29 + 104))(v27, *MEMORY[0x277D6D738], v30);
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_220899360;
    (*(v19 + 104))(v25 + v21, *MEMORY[0x277D6D768], v18);
    sub_220490DA4(v25);
    swift_setDeallocating();
    (*(v19 + 8))(v25 + v21, v18);
    swift_deallocClassInstance();
    (*(v8 + 104))(v11, *MEMORY[0x277D6D750], v28);
    (*(v29 + 104))(v4, *MEMORY[0x277D6D738], v30);
  }

  return sub_22088B40C();
}

uint64_t sub_2207F9280@<X0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler);
  swift_beginAccess();
  v4 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v6 = *(*v4 + 40);
  v5 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v6);
  *a1 = (*(*(v5 + 16) + 472))(v6);
  v7 = *MEMORY[0x277D6E6D0];
  v8 = sub_22088D45C();
  return (*(*(v8 - 8) + 104))(a1, v7, v8);
}

uint64_t sub_2207F9374(uint64_t a1)
{
  v30 = sub_22088CE6C();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208854AC();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v29 - v12;
  v14 = sub_22088B96C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a1, v14, v17);
  v20 = (*(v15 + 88))(v19, v14);
  if (v20 == *MEMORY[0x277D6D968])
  {
    sub_22088C71C();
    v21 = sub_22088BFCC();

    v22 = [v21 indexPathsForSelectedItems];

    if (v22)
    {
      v23 = sub_2208916EC();

      if (*(v23 + 16))
      {
        v24 = v29;
        (*(v29 + 16))(v9, v23 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v6);

        (*(v24 + 32))(v13, v9, v6);
        sub_22088C71C();
        v25 = sub_22088BFCC();

        v26 = sub_22088544C();
        [v25 deselectItemAtIndexPath:v26 animated:1];

        (*(v24 + 8))(v13, v6);
      }

      else
      {
      }
    }

    v27 = MEMORY[0x277D6E3C8];
    goto LABEL_9;
  }

  if (v20 == *MEMORY[0x277D6D970])
  {
    v27 = MEMORY[0x277D6E3C0];
LABEL_9:
    (*(v2 + 104))(v5, *v27, v30);
    return sub_22088C74C();
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}