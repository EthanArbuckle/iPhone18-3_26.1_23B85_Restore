uint64_t sub_2205A68F4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22089030C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

char *sub_2205A6994(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_2205A6FB8(0, &qword_281297138, MEMORY[0x277D6EBB0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v27.receiver - v14);
  v16 = OBJC_IVAR____TtC8StocksUI18TextAndImageButton_label;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v17 = OBJC_IVAR____TtC8StocksUI18TextAndImageButton_imageView;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8StocksUI18TextAndImageButton_onTap;
  sub_2205A6FB8(0, &qword_281297130, MEMORY[0x277D6EBB8]);
  *&v4[v18] = [objc_allocWithZone(v19) init];
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR____TtC8StocksUI18TextAndImageButton_label];
  v22 = v20;
  [v22 addSubview_];
  [v22 addSubview_];
  v23 = *&v22[OBJC_IVAR____TtC8StocksUI18TextAndImageButton_onTap];
  *v15 = 1;
  (*(v12 + 104))(v15, *MEMORY[0x277D6EBA8], v11);
  v24 = v23;
  v25 = sub_22088E17C();

  (*(v12 + 8))(v15, v11);
  return v22;
}

void sub_2205A6C80(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5, SEL *a6)
{
  ObjectType = swift_getObjectType();
  sub_2205A6E0C();
  sub_2205A6E58();
  sub_2208918EC();
  v11 = a5;
  v12 = a1;
  v13 = sub_2208918DC();

  v14.receiver = v12;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, *a6, v13, v11);

  [*&v12[OBJC_IVAR____TtC8StocksUI18TextAndImageButton_label] setAlpha_];
  [*&v12[OBJC_IVAR____TtC8StocksUI18TextAndImageButton_imageView] setAlpha_];
}

unint64_t sub_2205A6E0C()
{
  result = qword_27CF57228;
  if (!qword_27CF57228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF57228);
  }

  return result;
}

unint64_t sub_2205A6E58()
{
  result = qword_27CF57230;
  if (!qword_27CF57230)
  {
    sub_2205A6E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57230);
  }

  return result;
}

void sub_2205A6EB0()
{
  v1 = OBJC_IVAR____TtC8StocksUI18TextAndImageButton_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI18TextAndImageButton_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI18TextAndImageButton_onTap;
  sub_2205A6FB8(0, &qword_281297130, MEMORY[0x277D6EBB8]);
  *(v0 + v3) = [objc_allocWithZone(v4) init];
  sub_22089267C();
  __break(1u);
}

void sub_2205A6FB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t CampaignRouteModel.init(routeTarget:postPurchaseBehavior:purchaseTraits:sourceChannelID:purchaseSessionID:paywallType:postPurchaseDestination:delegate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = *a1;
  v17 = a1[1];
  v18 = type metadata accessor for CampaignRouteModel();
  v19 = &a9[v18[11]];
  *(v19 + 1) = 0;
  swift_unknownObjectWeakInit();
  *a9 = v16;
  *(a9 + 1) = v17;
  v20 = v18[5];
  v21 = sub_220887FAC();
  (*(*(v21 - 8) + 32))(&a9[v20], a2, v21);
  v22 = &a9[v18[6]];
  *v22 = a4;
  *(v22 + 1) = a5;
  v23 = &a9[v18[7]];
  *v23 = a6;
  *(v23 + 1) = a7;
  *&a9[v18[8]] = a3;
  *&a9[v18[9]] = a8;
  sub_2205A7154(a10, &a9[v18[10]]);
  *(v19 + 1) = a12;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2205A7154(uint64_t a1, uint64_t a2)
{
  sub_22044831C(0, &qword_281298210, MEMORY[0x277D35078], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t CampaignRouteModel.identifier.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0xD000000000000012;
  }

  return v1;
}

unint64_t sub_2205A723C()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0xD000000000000012;
  }

  return v1;
}

uint64_t sub_2205A7290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2205A72E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_2205A7334(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_2205A738C(void *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_220452DCC(0, &unk_281298720, sub_220450400, MEMORY[0x277D6CEE8]);
  if (sub_2208884CC())
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_220446A58(0, &qword_281297C50);
    result = sub_2208884DC();
    if (v5)
    {
      objc_allocWithZone(sub_22088D11C());
      v3 = a1;
      return sub_22088D10C();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_2205A74D8@<X0>(uint64_t a1@<X8>)
{
  sub_220452DCC(0, &unk_281297D80, MEMORY[0x277D6D788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v14 - v8;
  v10 = swift_projectBox();
  sub_2205A9328(v10, v9);
  v11 = sub_22088B42C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_2205A93BC(v9);
  sub_2205A76B8(a1);
  (*(v12 + 16))(v5, a1, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  swift_beginAccess();
  return sub_2205A9448(v5, v10);
}

uint64_t sub_2205A76B8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
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
  if (qword_281298D30 != -1)
  {
    swift_once();
  }

  sub_22046E174(&qword_281295040, v14, type metadata accessor for MainModule);
  sub_220886B3C();
  v17 = v32;
  sub_220452DCC(0, &qword_28127E0B0, MEMORY[0x277D6D770], MEMORY[0x277D84560]);
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
    (*(v19 + 104))(v25 + v21, *MEMORY[0x277D6D760], v18);
    sub_220490DA4(v25);
    swift_setDeallocating();
    (*(v19 + 8))(v25 + v21, v18);
    swift_deallocClassInstance();
    (*(v8 + 104))(v11, *MEMORY[0x277D6D750], v28);
    (*(v29 + 104))(v4, *MEMORY[0x277D6D740], v30);
  }

  return sub_22088B40C();
}

double sub_2205A7BBC@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (qword_281298100 != -1)
  {
    swift_once();
  }

  v8 = sub_22088A84C();
  __swift_project_value_buffer(v8, qword_2812B6D00);
  v9 = a1;
  v10 = sub_22088A82C();
  v11 = sub_220891ADC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v23[0] = v13;
    *v12 = 136315138;
    v25 = a1;
    v14 = a1;
    sub_220446A58(0, &qword_28127DE30);
    v15 = sub_2208913DC();
    v17 = a2;
    v18 = a3;
    v19 = sub_2204A7B78(v15, v16, v23);

    *(v12 + 4) = v19;
    a3 = v18;
    a2 = v17;
    _os_log_impl(&dword_22043F000, v10, v11, "error fetching app config, error=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223D8B7F0](v13, -1, -1);
    MEMORY[0x223D8B7F0](v12, -1, -1);
  }

  sub_22048640C(v23, 1, a2, a3);
  v20 = v24;
  result = *v23;
  v22 = v23[1];
  *a4 = v23[0];
  *(a4 + 16) = v22;
  *(a4 + 32) = v20;
  return result;
}

uint64_t sub_2205A7DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    v13 = MEMORY[0x277D6E238];
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

uint64_t sub_2205A7FB4(void *a1, uint64_t a2)
{
  v3 = v2;
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_220446A58(0, qword_281289488);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a1;
  sub_2208884BC();

  if (v16)
  {
    sub_220457328(&v15, v17);
    sub_220452DCC(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
    sub_220888FBC();

    v9 = sub_220888D9C();
    sub_220528958();
    sub_220888E3C();

    v10 = sub_220888D9C();
    sub_220888E4C();

    sub_22044D56C(0, &qword_28127E7C0);
    v11 = sub_220891D0C();
    sub_22046DA2C(v17, &v15);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    sub_220457328(&v15, v12 + 24);
    sub_2205A9168();

    sub_220888E4C();

    v13 = sub_220891D0C();

    v14 = sub_220888F0C();

    __swift_destroy_boxed_opaque_existential_1(v17);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2205A82B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    v13 = MEMORY[0x277D6E240];
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

uint64_t sub_2205A84C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281282D50);
  return sub_22088837C();
}

uint64_t sub_2205A8548(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 184), *(a2 + 208));
  sub_22088632C();
  *(swift_allocObject() + 16) = v2;

  v3 = sub_220888D9C();
  sub_220528958();
  v4 = sub_220888E4C();

  return v4;
}

uint64_t sub_2205A8620@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v5 = sub_220885DFC();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_220886A4C();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220528958();
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088582C();
  v26 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220529290(a1, v15);
  (*(v17 + 32))(v20, &v15[*(v12 + 56)], v16);
  v21 = a2[31];
  v25 = a2[32];
  __swift_project_boxed_opaque_existential_1(a2 + 28, v21);
  __swift_project_boxed_opaque_existential_1(a2 + 18, a2[21]);
  sub_2208863EC();
  v22 = v28;
  sub_220886A3C();
  (*(v27 + 8))(v10, v29);
  v23 = sub_22088646C();

  (*(v30 + 8))(v22, v31);
  result = (*(v17 + 8))(v20, v26);
  *v32 = v23;
  return result;
}

uint64_t sub_2205A8928@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_22088685C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v40 - v16;
  v19 = *a1;
  if (*(*a1 + 16))
  {
    v44 = a3;
    v45 = a4;
    v46[7] = v4;
    v20 = *(v10 + 16);
    v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v43 = v19;
    v20(&v40 - v16, v19 + v21, v9, v17);
    if (qword_281298100 != -1)
    {
      swift_once();
    }

    v22 = sub_22088A84C();
    __swift_project_value_buffer(v22, qword_2812B6D00);
    v42 = v18;
    (v20)(v13, v18, v9);
    v23 = sub_22088A82C();
    v24 = sub_220891AFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46[0] = v41;
      *v25 = 136315138;
      v40 = sub_22088681C();
      v27 = v26;
      v28 = v9;
      v29 = *(v10 + 8);
      v29(v13, v28);
      v30 = sub_2204A7B78(v40, v27, v46);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_22043F000, v23, v24, "fetched first stock in active watchlist, symbol=%s", v25, 0xCu);
      v31 = v41;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x223D8B7F0](v31, -1, -1);
      MEMORY[0x223D8B7F0](v25, -1, -1);

      v32 = v29;
    }

    else
    {

      v32 = *(v10 + 8);
      v32(v13, v9);
      v28 = v9;
    }

    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    v39 = v42;
    sub_22056D3F0(v42, v43, v46);
    v34 = v46[0];
    v35 = v46[2];
    v36 = v46[3];
    v37 = v46[4];
    v38 = v46[5];
    result = (v32)(v39, v28);
    a4 = v45;
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  type metadata accessor for EmptyListViewController();
  result = sub_2208884CC();
  if (result)
  {
    v34 = result;
    v35 = sub_22046E174(&qword_27CF57240, 255, type metadata accessor for EmptyListViewController);
    v36 = sub_22046E174(&qword_27CF57248, 255, type metadata accessor for EmptyListViewController);
    v37 = sub_22046E174(&qword_27CF57250, 255, type metadata accessor for EmptyListViewController);
    result = sub_22046E174(&qword_27CF57258, 255, type metadata accessor for EmptyListViewController);
    v38 = result;
LABEL_10:
    *a4 = v34;
    a4[1] = v35;
    a4[2] = v36;
    a4[3] = v37;
    a4[4] = v38;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2205A8D38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_281298100 != -1)
  {
    swift_once();
  }

  v6 = sub_22088A84C();
  __swift_project_value_buffer(v6, qword_2812B6D00);
  v7 = a1;
  v8 = sub_22088A82C();
  v9 = sub_220891ADC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = a1;
    sub_220446A58(0, &qword_28127DE30);
    v13 = sub_2208913DC();
    v15 = sub_2204A7B78(v13, v14, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_22043F000, v8, v9, "failed to fetch first stock in active watchlist, error=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x223D8B7F0](v11, -1, -1);
    MEMORY[0x223D8B7F0](v10, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  type metadata accessor for EmptyListViewController();
  result = sub_2208884CC();
  if (result)
  {
    v17 = result;
    v18 = sub_22046E174(&qword_27CF57240, 255, type metadata accessor for EmptyListViewController);
    v19 = sub_22046E174(&qword_27CF57248, 255, type metadata accessor for EmptyListViewController);
    v20 = sub_22046E174(&qword_27CF57250, 255, type metadata accessor for EmptyListViewController);
    result = sub_22046E174(&qword_27CF57258, 255, type metadata accessor for EmptyListViewController);
    *a3 = v17;
    a3[1] = v18;
    a3[2] = v19;
    a3[3] = v20;
    a3[4] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MainModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  __swift_destroy_boxed_opaque_existential_1(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);
  return v0;
}

uint64_t MainModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  __swift_destroy_boxed_opaque_existential_1(v0 + 224);
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);

  return swift_deallocClassInstance();
}

double sub_2205A9108@<D0>(uint64_t a1@<X8>)
{
  sub_22048640C(v6, 1, *(v1 + 24), *(v1 + 32));
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

unint64_t sub_2205A9168()
{
  result = qword_27CF57238;
  if (!qword_27CF57238)
  {
    sub_22044D56C(255, &qword_28127E800);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF57238);
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2205A9328(uint64_t a1, uint64_t a2)
{
  sub_220452DCC(0, &unk_281297D80, MEMORY[0x277D6D788], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205A93BC(uint64_t a1)
{
  sub_220452DCC(0, &unk_281297D80, MEMORY[0x277D6D788], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2205A9448(uint64_t a1, uint64_t a2)
{
  sub_220452DCC(0, &unk_281297D80, MEMORY[0x277D6D788], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205A94EC()
{
  sub_2205A9918();
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE28], v0);
  v4 = sub_2207E15E8(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_2205A9608(uint64_t a1, void (*a2)(char *))
{
  sub_2204EE930(0, &qword_281297858, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  sub_2205A9888();
  v11 = *(v10 + 48);
  sub_2204EE930(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = *MEMORY[0x277D6D868];
  v14 = sub_22088B64C();
  (*(*(v14 - 8) + 104))(&v9[v11], v13, v14);
  (*(v6 + 104))(v9, *MEMORY[0x277D6DF70], v5);
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2205A97D8()
{
  result = qword_2812848D0;
  if (!qword_2812848D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812848D0);
  }

  return result;
}

unint64_t sub_2205A9830()
{
  result = qword_281294CA0;
  if (!qword_281294CA0)
  {
    type metadata accessor for TickerModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281294CA0);
  }

  return result;
}

void sub_2205A9888()
{
  if (!qword_281296F48)
  {
    sub_2204EE930(255, &qword_281296F38, MEMORY[0x277D6EC60]);
    sub_22088B64C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281296F48);
    }
  }
}

void sub_2205A9918()
{
  if (!qword_28127E048)
  {
    sub_22088C37C();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E048);
    }
  }
}

id StockChartRangeCalloutView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id StockChartRangeCalloutView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *StockChartRangeCalloutView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_dateLabel;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_priceChangeLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_percentageChangeLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for StockChartRangeCalloutView();
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_dateLabel];
  v14 = v12;
  [v14 addSubview_];
  [v14 addSubview_];
  [v14 addSubview_];

  return v14;
}

id StockChartRangeCalloutView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StockChartRangeCalloutView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s8StocksUI26StockChartRangeCalloutViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_dateLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_priceChangeLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_percentageChangeLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

uint64_t SymbolAutomation.init(stock:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_22088677C();
  a2[1] = v4;
  a2[2] = sub_22088681C();
  a2[3] = v5;
  v6 = sub_22088683C();
  v8 = v7;
  v9 = sub_22088685C();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  a2[4] = v6;
  a2[5] = v8;
  return result;
}

uint64_t SymbolAutomation.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SymbolAutomation.symbol.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SymbolAutomation.exchange.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_2205A9E90()
{
  v1 = 0x6C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0x65676E6168637865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_2205A9EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2205AA67C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2205A9F14(uint64_t a1)
{
  v2 = sub_2205AA13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2205A9F50(uint64_t a1)
{
  v2 = sub_2205AA13C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SymbolAutomation.encode(to:)(void *a1)
{
  sub_2205AA418(0, &qword_27CF57278, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v13 - v7;
  v9 = v1[2];
  v13[3] = v1[3];
  v13[4] = v9;
  v10 = v1[4];
  v13[1] = v1[5];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205AA13C();
  sub_220892A5C();
  v16 = 0;
  v11 = v13[5];
  sub_22089280C();
  if (!v11)
  {
    v15 = 1;
    sub_22089280C();
    v14 = 2;
    sub_22089280C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2205AA13C()
{
  result = qword_27CF57280;
  if (!qword_27CF57280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57280);
  }

  return result;
}

uint64_t SymbolAutomation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2205AA418(0, &qword_27CF57288, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205AA13C();
  sub_220892A4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_22089277C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_22089277C();
  v23 = v14;
  v25 = 2;
  v15 = sub_22089277C();
  v17 = v16;
  v18 = v15;
  (*(v7 + 8))(v10, v6);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2205AA418(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2205AA13C();
    v7 = a3(a1, &type metadata for SymbolAutomation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2205AA4C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2205AA508(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2205AA578()
{
  result = qword_27CF57290;
  if (!qword_27CF57290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57290);
  }

  return result;
}

unint64_t sub_2205AA5D0()
{
  result = qword_27CF57298;
  if (!qword_27CF57298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57298);
  }

  return result;
}

unint64_t sub_2205AA628()
{
  result = qword_27CF572A0;
  if (!qword_27CF572A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF572A0);
  }

  return result;
}

uint64_t sub_2205AA67C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2208928BC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_2205AA8A0(void *a1)
{
  v2 = sub_22089132C();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v5, &v6);
    type metadata accessor for StockFeedViewController();
    swift_dynamicCast();
    sub_22088C71C();
    sub_22088BFCC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for StockSearchResultsUpdateModifier()
{
  result = qword_281283E00;
  if (!qword_281283E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205AAA08()
{
  sub_220886A4C();
  if (v0 <= 0x3F)
  {
    sub_2204953AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2205AAAA4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  sub_2205AB670(0, &qword_281297838, MEMORY[0x277D6DF88]);
  v7 = v6;
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v65 = &v60 - v9;
  sub_2205AB5A4();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4924();
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v67 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205AB764();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StockSearchSectionDescriptor();
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576D44();
  v64 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v3 + 32);
  if (*(v29 + 16))
  {
    v61 = v7;
    v62 = a3;
    v63 = a2;
    sub_2205AB8B8(0, &qword_281299000, MEMORY[0x277D698E0], sub_2204953AC);
    v31 = v30;
    v32 = *(v30 + 48);
    updated = type metadata accessor for StockSearchResultsUpdateModifier();
    v60 = v19;
    v34 = *(updated + 24);
    v35 = sub_220886A4C();
    (*(*(v35 - 8) + 16))(v23, v3 + v34, v35);
    *&v23[v32] = *(v3 + *(updated + 28));
    v36 = (*(*(v31 - 8) + 56))(v23, 0, 2, v31);
    MEMORY[0x28223BE20](v36, v37);
    *(&v60 - 2) = v3;

    v38 = sub_220573164(sub_2205AB878, (&v60 - 4), v29);
    v39 = v28;
    sub_2204D4A18();
    v41 = v40;
    v42 = sub_2205AB830(&qword_281297F48, sub_2204D4A18);
    v43 = sub_2205AB830(&qword_281297F50, sub_2204D4A18);
    MEMORY[0x223D80A20](v38, v41, v42, v43);
    type metadata accessor for StockSearchModel();
    sub_2205AB830(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor);
    sub_2205AB830(&qword_281291EB0, type metadata accessor for StockSearchModel);
    sub_22088B29C();
    v44 = sub_2205880AC(0, 1, 1, MEMORY[0x277D84F90]);
    v46 = v44[2];
    v45 = v44[3];
    if (v46 >= v45 >> 1)
    {
      v44 = sub_2205880AC(v45 > 1, v46 + 1, 1, v44);
    }

    v47 = v64;
    v44[2] = v46 + 1;
    (*(v25 + 32))(v44 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v46, v39, v47);
    a2 = v63;
    v7 = v61;
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
    v47 = v64;
  }

  v48 = sub_2205AB830(&qword_281297E38, sub_220576D44);
  v49 = sub_2205AB830(&unk_281297E40, sub_220576D44);
  MEMORY[0x223D80A20](v44, v47, v48, v49);
  type metadata accessor for StockSearchModel();
  sub_2205AB830(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor);
  sub_2205AB830(&qword_281291EB0, type metadata accessor for StockSearchModel);
  v50 = v67;
  sub_22088E7CC();
  sub_2205AB8B8(0, &qword_281296E88, sub_2204D4924, MEMORY[0x277D6D878]);
  v52 = *(v51 + 48);
  v54 = v68;
  v53 = v69;
  v55 = v65;
  (*(v68 + 16))(v65, v50, v69);
  v56 = *MEMORY[0x277D6D868];
  v57 = sub_22088B64C();
  (*(*(v57 - 8) + 104))(&v55[v52], v56, v57);
  v58 = v70;
  (*(v70 + 104))(v55, *MEMORY[0x277D6DF70], v7);
  a2(v55);
  (*(v58 + 8))(v55, v7);
  return (*(v54 + 8))(v50, v53);
}

uint64_t sub_2205AB28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a2;
  v25[3] = a3;
  v4 = type metadata accessor for StockSearchModel();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v21 - v10;
  v12 = *(type metadata accessor for StockSearchResultsUpdateModifier() + 24);
  v13 = sub_220886A1C();
  v25[0] = sub_22088681C();
  v25[1] = v14;
  v24 = v25;
  v15 = sub_2206A3BCC(sub_2205AB898, v23, v13);

  sub_2205AB8B8(0, &qword_281293BF0, type metadata accessor for StockViewModel, MEMORY[0x277D698E0]);
  v17 = *(v16 + 48);
  sub_220527BCC(a1, v7);
  v18 = sub_220886A4C();
  (*(*(v18 - 8) + 16))(&v7[v17], v22 + v12, v18);
  swift_storeEnumTagMultiPayload();
  if (v15)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  sub_220823980(v19, v11);
  sub_2205AB940(v7);
  sub_2205AB830(&qword_281291EB0, type metadata accessor for StockSearchModel);
  return sub_22088AD7C();
}

void sub_2205AB5A4()
{
  if (!qword_2812987A0)
  {
    sub_220576D44();
    sub_2205AB830(&qword_281297E38, sub_220576D44);
    sub_2205AB830(&unk_281297E40, sub_220576D44);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812987A0);
    }
  }
}

void sub_2205AB670(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockSearchSectionDescriptor();
    v8[1] = type metadata accessor for StockSearchModel();
    v8[2] = sub_2205AB830(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor);
    v8[3] = sub_2205AB830(&qword_281291EB0, type metadata accessor for StockSearchModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2205AB764()
{
  if (!qword_2812987B0)
  {
    sub_2204D4A18();
    sub_2205AB830(&qword_281297F48, sub_2204D4A18);
    sub_2205AB830(&qword_281297F50, sub_2204D4A18);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812987B0);
    }
  }
}

uint64_t sub_2205AB830(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2205AB8B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2205AB940(uint64_t a1)
{
  v2 = type metadata accessor for StockSearchModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MailShareLinkTextProvider.sharedFromName.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t MailShareLinkTextProvider.sharedFromURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220884E9C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2205ABB14()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2205ABBDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_220884E9C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

__n128 sub_2205ABC74@<Q0>(double a1@<X0>, double a2@<X1>, uint64_t a3@<X8>)
{
  x = a2;
  v86 = a1;
  v83 = a3;
  v4 = sub_22088C32C();
  v90 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v3[6];
  v79 = v3[5];
  v9 = *&v79;
  __swift_project_boxed_opaque_existential_1(v3 + 2, *&v79);
  v10 = sub_22088C24C();
  v11 = *&v8;
  v84 = v8;
  v12 = *(*&v8 + 8);
  v13 = *(v12 + 8);
  v113[3] = v9;
  v113[4] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v113);
  v13(v10, v9, v12);

  v14 = *(v90 + 16);
  v78 = v7;
  v82 = v4;
  v14(v7, *&x, v4);
  sub_22088C21C();
  v16 = v15;
  sub_22088C20C();
  sub_220891A6C();
  v80 = v17;
  *(&v103 + 1) = sub_22088D0DC();
  *&v104 = sub_2205AC8A4(&qword_27CF573C0, MEMORY[0x277D6E478]);
  __swift_allocate_boxed_opaque_existential_1(&v102);
  sub_22088D0CC();
  sub_22088C30C();
  v87 = v18;
  __swift_destroy_boxed_opaque_existential_1(&v102);
  *(&v103 + 1) = sub_22088D0FC();
  *&v104 = sub_2205AC8A4(&qword_281297608, MEMORY[0x277D6E488]);
  __swift_allocate_boxed_opaque_existential_1(&v102);
  sub_22088D0EC();
  sub_22088C30C();
  v85 = v19;
  __swift_destroy_boxed_opaque_existential_1(&v102);
  *(&v103 + 1) = &type metadata for WatchlistSelectionIndicatorCellAccessory;
  *&v104 = sub_2205AC7BC();
  v20 = swift_allocObject();
  *&v102 = v20;
  v20[2] = 0xD00000000000001BLL;
  v20[3] = 0x80000002208C2950;
  v20[4] = 0x656C63726963;
  v20[5] = 0xE600000000000000;
  sub_22088C30C();
  v88 = v22;
  v89 = v21;
  __swift_destroy_boxed_opaque_existential_1(&v102);
  *(&v103 + 1) = &type metadata for RenameWatchlistCellAccessory;
  *&v104 = sub_2205AC810();
  v23 = swift_allocObject();
  *&v102 = v23;
  v23[2] = 0xD000000000000015;
  v23[3] = 0x80000002208C2970;
  v23[4] = 0x6C69636E6570;
  v23[5] = 0xE600000000000000;
  sub_22088C30C();
  v25 = v24;
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_1(&v102);
  if (v27 <= 44.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 44.0;
  }

  v29 = *(*&v86 + 32);
  (*(*&v84 + 16))(*(*&v86 + 32), 1, COERCE_DOUBLE(*&v79));
  boxed_opaque_existential_1 = *&v16;
  v30 = v16 + -10.0 + -16.0;
  v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v32 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2205AC8A4(&qword_28127E6A8, type metadata accessor for Key);
  v33 = sub_22089125C();
  v34 = [v31 initWithString:v32 attributes:v33];

  sub_220891D9C();
  v36 = v35;

  v37 = v36 + v36;
  type metadata accessor for WatchlistCellViewModel(0);
  sub_220886A0C();
  v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v39 = sub_22089132C();

  v40 = sub_22089125C();

  v41 = [v38 initWithString:v39 attributes:v40];

  v79 = v30 + -16.0 + -10.0;
  sub_220891D9C();
  v43 = v42;

  if (v37 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v37;
  }

  v45 = v44 + 16.0 + 16.0;
  v46 = v30 - v87;
  v47 = v85;
  if (!v29)
  {
    v46 = v46 - v85 + -16.0;
  }

  v48 = v46 + -10.0;
  v49 = v78;
  sub_22088C1FC();
  v51 = 1.0 / v50;
  v114.origin.x = v48 - v47 + -16.0 - 1.0 / v50;
  v114.origin.y = 0.0;
  x = v114.origin.x;
  v114.size.width = v51;
  v114.size.height = v44 + 16.0 + 16.0;
  MinX = CGRectGetMinX(v114);
  v86 = v28;
  v87 = v25;
  v84 = floor((v45 - v28) * 0.5);
  v85 = MinX - v25 + -16.0;
  v54 = v88;
  v53 = v89;
  v55 = floor((v45 - v88) * 0.5);
  v115.origin.x = 16.0;
  v115.origin.y = v55;
  v115.size.width = v89;
  v115.size.height = v88;
  CGRectGetWidth(v115);
  v116.origin.x = 16.0;
  v116.origin.y = v55;
  v116.size.width = v53;
  v116.size.height = v54;
  CGRectGetMaxX(v116);
  if ((v29 & 1) == 0)
  {
    v117.origin.y = v84;
    v117.origin.x = v85;
    v117.size.height = v86;
    v117.size.width = v87;
    CGRectGetMinX(v117);
  }

  MEMORY[0x28223BE20](v56, v57);
  *(&v76 - 22) = v45;
  *(&v76 - 21) = v58;
  *(&v76 - 20) = 0x4030000000000000;
  *(&v76 - 19) = v59;
  *(&v76 - 18) = v44;
  __asm { FMOV            V2.2D, #16.0 }

  *(&v76 - 17) = _Q2;
  *(&v76 - 15) = v65;
  *(&v76 - 14) = v44;
  *(&v76 - 13) = 0x4030000000000000;
  v66 = v88;
  *&_Q2 = v89;
  *(&v76 - 12) = v55;
  *(&v76 - 11) = _Q2;
  v67 = v84;
  *&_Q2 = v85;
  *(&v76 - 10) = v66;
  *(&v76 - 9) = _Q2;
  v68 = v86;
  *&_Q2 = v87;
  *(&v76 - 8) = v67;
  *(&v76 - 7) = _Q2;
  v69 = x;
  *(&v76 - 6) = v68;
  *(&v76 - 5) = v69;
  *(&v76 - 4) = 0;
  *(&v76 - 3) = v51;
  *(&v76 - 2) = v45;
  sub_22088C18C();
  (*(v90 + 8))(v49, v82);
  v110 = v99;
  v111 = v100;
  v112 = v101;
  v106 = v95;
  v107 = v96;
  v108 = v97;
  v109 = v98;
  v102 = v91;
  v103 = v92;
  v104 = v93;
  v105 = v94;
  __swift_destroy_boxed_opaque_existential_1(v113);
  v70 = v111;
  v71 = v83;
  *(v83 + 128) = v110;
  *(v71 + 144) = v70;
  *(v71 + 160) = v112;
  v72 = v107;
  *(v71 + 64) = v106;
  *(v71 + 80) = v72;
  v73 = v109;
  *(v71 + 96) = v108;
  *(v71 + 112) = v73;
  v74 = v103;
  *v71 = v102;
  *(v71 + 16) = v74;
  result = v105;
  *(v71 + 32) = v104;
  *(v71 + 48) = result;
  return result;
}

double sub_2205AC3CC@<D0>(double *a1@<X8>, double a2@<D0>, double a3@<D7>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v60 = a3;
  v76 = a2;
  v75 = a14;
  v74 = a15;
  v73 = a16;
  v71 = a10;
  v70 = a11;
  v72 = a13;
  v69 = a12;
  v63 = a6;
  v62 = a7;
  v68 = a9;
  v61 = a8;
  v17 = sub_22088ABEC();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *MEMORY[0x277D6D320];
  v24 = *(v18 + 104);
  v24(v22, v23, v17, v20);
  sub_22088ABDC();
  v66 = v26;
  v67 = v25;
  v64 = v28;
  v65 = v27;
  v29 = *(v18 + 8);
  v29(v22, v17);
  (v24)(v22, v23, v17);
  sub_22088ABDC();
  v60 = v30;
  v59 = v31;
  v58 = v32;
  v57 = v33;
  v29(v22, v17);
  (v24)(v22, v23, v17);
  sub_22088ABDC();
  v63 = v34;
  v62 = v35;
  v61 = v36;
  v56 = v37;
  v29(v22, v17);
  (v24)(v22, v23, v17);
  sub_22088ABDC();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v29(v22, v17);
  (v24)(v22, v23, v17);
  sub_22088ABDC();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v29(v22, v17);
  *a1 = v76;
  *(a1 + 1) = v67;
  *(a1 + 2) = v66;
  *(a1 + 3) = v65;
  *(a1 + 4) = v64;
  a1[5] = v60;
  *(a1 + 6) = v59;
  *(a1 + 7) = v58;
  *(a1 + 8) = v57;
  *(a1 + 9) = v63;
  *(a1 + 10) = v62;
  *(a1 + 11) = v61;
  result = v56;
  a1[12] = v56;
  *(a1 + 13) = v39;
  *(a1 + 14) = v41;
  *(a1 + 15) = v43;
  *(a1 + 16) = v45;
  *(a1 + 17) = v47;
  *(a1 + 18) = v49;
  *(a1 + 19) = v51;
  *(a1 + 20) = v53;
  return result;
}

unint64_t sub_2205AC7BC()
{
  result = qword_27CF573C8;
  if (!qword_27CF573C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF573C8);
  }

  return result;
}

unint64_t sub_2205AC810()
{
  result = qword_27CF573D0;
  if (!qword_27CF573D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF573D0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return swift_deallocObject();
}

uint64_t sub_2205AC8A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2205AC94C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2205AC994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2205AC9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2205ACB34();

  return MEMORY[0x2821D5B20](a1, a2, v4);
}

uint64_t sub_2205ACA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_2205ACB88();

  return MEMORY[0x2821D5B20](a1, a2, v4);
}

unint64_t sub_2205ACA88()
{
  result = qword_27CF573D8;
  if (!qword_27CF573D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF573D8);
  }

  return result;
}

unint64_t sub_2205ACAE0()
{
  result = qword_27CF573E0;
  if (!qword_27CF573E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF573E0);
  }

  return result;
}

unint64_t sub_2205ACB34()
{
  result = qword_27CF573E8;
  if (!qword_27CF573E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF573E8);
  }

  return result;
}

unint64_t sub_2205ACB88()
{
  result = qword_27CF573F0;
  if (!qword_27CF573F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF573F0);
  }

  return result;
}

uint64_t sub_2205ACBF0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_2205B69CC(0, &qword_281297B58, MEMORY[0x277D6D9B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v147 = v139 - v7;
  v188 = sub_22088E8AC();
  v191 = *(v188 - 8);
  MEMORY[0x28223BE20](v188, v8);
  v10 = v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_22088E8EC();
  v186 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v11);
  v13 = v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_22088E8FC();
  v14 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v15);
  v157 = v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B69CC(0, &qword_27CF56CF8, type metadata accessor for CreateWatchlistCommandContext, v4);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v139 - v19;
  v190 = sub_22088BA1C();
  v187 = *(v190 - 8);
  MEMORY[0x28223BE20](v190, v21);
  v174 = v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B69CC(0, &unk_281297C40, MEMORY[0x277D6D8F8], v4);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v189 = v139 - v25;
  sub_2205B69CC(0, &unk_281298048, MEMORY[0x277D6D2F8], v4);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = v139 - v28;
  v173 = sub_22088E5CC();
  v148 = *(v173 - 8);
  v31 = MEMORY[0x28223BE20](v173, v30);
  v156 = v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v155 = v139 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v167 = v139 - v37;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  sub_220446A58(0, &qword_281299220);
  result = sub_2208884DC();
  if (!v198)
  {
    __break(1u);
    goto LABEL_14;
  }

  v165 = v13;
  v175 = v10;
  sub_220457328(&v197, &v199);
  v39 = *(a1 + 3);
  v166 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_220446A58(0, &unk_2812992B0);
  result = sub_2208884DC();
  if (!v195)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v146 = a2;
  sub_220457328(&v194, &v197);
  sub_2205B69CC(0, &qword_28127DFE8, MEMORY[0x277D6ED00], MEMORY[0x277D84560]);
  v40 = *(v14 + 80);
  v41 = (v40 + 32) & ~v40;
  v170 = *(v14 + 72);
  v163 = v40;
  v164 = v42;
  v162 = v41 + v170;
  v43 = swift_allocObject();
  v192 = xmmword_220899360;
  *(v43 + 16) = xmmword_220899360;
  v44 = *MEMORY[0x277D76C90];
  sub_2205AE934();
  v145 = v43;
  v171 = v41;
  sub_22088E90C();
  sub_22088E28C();
  LOBYTE(v194) = 1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v184 = objc_opt_self();
  v185 = ObjCClassFromMetadata;
  v46 = [v184 bundleForClass_];
  sub_220884CAC();

  v47 = v29;
  sub_22088AB7C();
  v48 = sub_22088AB9C();
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v183 = v48;
  v182 = v50;
  v181 = v49 + 56;
  (v50)(v29, 0, 1);
  v51 = sub_22088B86C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v180 = v51;
  v179 = v53;
  v178 = v52 + 56;
  (v53)(v189, 1, 1);
  v55 = v187 + 104;
  v54 = *(v187 + 104);
  v56 = v174;
  v177 = *MEMORY[0x277D6D9A8];
  v176 = v54;
  v54(v174);
  sub_22088E57C();
  if (qword_281296F88 != -1)
  {
    swift_once();
  }

  v154 = v14;
  v57 = sub_22088685C();
  (*(*(v57 - 8) + 56))(v20, 1, 1, v57);
  v58 = &v20[*(type metadata accessor for WatchlistCreationRouteModel() + 20)];
  WatchlistCommandContext = type metadata accessor for CreateWatchlistCommandContext(0);
  *v58 = 0;
  *(v58 + 1) = 0;
  (*(*(WatchlistCommandContext - 8) + 56))(v20, 0, 1, WatchlistCommandContext);

  v60 = [v184 bundleForClass_];
  sub_220884CAC();

  sub_22088AB7C();
  v182(v47, 0, 1, v183);
  v179(v189, 1, 1, v180);
  v176(v56, v177, v190);
  v61 = v155;
  sub_22088E57C();
  if (qword_281296F80 != -1)
  {
    swift_once();
  }

  LOBYTE(v194) = 1;

  v62 = [v184 bundleForClass_];
  sub_220884CAC();

  sub_22088AB7C();
  v182(v47, 0, 1, v183);
  v179(v189, 1, 1, v180);
  v176(v56, v177, v190);
  v63 = v156;
  sub_22088E57C();
  sub_2205AFFA4(v167, v61, v63, v157);
  v153 = swift_allocObject();
  *(v153 + 16) = v192;
  v64 = *MEMORY[0x277D76CD8];
  sub_2205B69CC(0, &qword_28127DE90, type metadata accessor for Identifier, MEMORY[0x277D84560]);
  v152 = v65;
  v66 = swift_allocObject();
  v144 = xmmword_220899920;
  *(v66 + 16) = xmmword_220899920;
  v161 = v47;
  v67 = *MEMORY[0x277D76D10];
  v68 = *MEMORY[0x277D76CC8];
  *(v66 + 32) = *MEMORY[0x277D76D10];
  *(v66 + 40) = v68;
  v143 = v66;
  v69 = v171;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_22089C660;
  v187 = v55;
  v142 = v70;
  v71 = *(v154 + 16);
  v151 = v70 + v69;
  v71();
  sub_2205B6A30(0, &unk_28127E0E0, &qword_281297F28, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v160 = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = v192;
  __swift_project_boxed_opaque_existential_1(v166, *(v166 + 3));
  v74 = type metadata accessor for ShareDynamicMenuItemProvider();
  v141 = v64;
  v75 = v67;
  v76 = v68;
  result = sub_2208884CC();
  if (!result)
  {
    goto LABEL_15;
  }

  v77 = result;
  v195 = v74;
  v196 = sub_2205B6B64(&unk_281287160, type metadata accessor for ShareDynamicMenuItemProvider);
  *&v194 = v77;
  v78 = MEMORY[0x277D6EC20];
  *(v73 + 56) = v173;
  *(v73 + 64) = v78;
  __swift_allocate_boxed_opaque_existential_1((v73 + 32));
  sub_22088E5BC();
  LODWORD(v149) = *MEMORY[0x277D6ECE0];
  v79 = v186[13];
  v186 += 13;
  v80 = v165;
  v81 = v172;
  v79(v165);
  v169 = *MEMORY[0x277D6ECC0];
  v82 = *(v191 + 104);
  v191 += 104;
  v83 = v175;
  v82(v175);
  v168 = v82;
  v84 = v170;
  sub_22088E8BC();
  v150 = 2 * v84;
  v140 = sub_2205B022C(&v199);
  v85 = v149;
  v86 = v81;
  (v79)(v80, v149, v81);
  v87 = v79;
  v88 = v169;
  v89 = v188;
  (v82)(v83, v169, v188);
  v90 = v150;
  v91 = v165;
  sub_22088E8BC();
  v139[1] = v90 + v170;
  v140 = sub_2205B0C7C(v166);
  v92 = v85;
  v93 = v86;
  v87(v91, v92, v86);
  v159 = v87;
  v94 = v175;
  v95 = v89;
  v96 = v168;
  (v168)(v175, v88, v95);
  sub_22088E8BC();
  v151 = sub_2205B16E4(&v199);
  v97 = v91;
  v87(v91, v149, v93);
  v96(v94, v88, v188);
  sub_22088E8BC();
  v98 = v171;
  sub_22088E90C();
  v99 = swift_allocObject();
  *(v99 + 16) = v192;
  v151 = v99;
  v149 = v99 + v98;
  v100 = *MEMORY[0x277D76CD0];
  v101 = swift_allocObject();
  *(v101 + 16) = v192;
  v143 = v101;
  v142 = v101 + v98;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_22089B140;
  v103 = *MEMORY[0x277D76D68];
  v104 = *MEMORY[0x277D76D80];
  *(v102 + 32) = *MEMORY[0x277D76D68];
  *(v102 + 40) = v104;
  v105 = *MEMORY[0x277D76CE0];
  v141 = v102;
  *(v102 + 48) = v105;
  v106 = swift_allocObject();
  *(v106 + 16) = v144;
  v150 = v106;
  v140 = v106 + v98;
  v107 = *MEMORY[0x277D76D60];
  *v91 = *MEMORY[0x277D76D60];
  v159(v91, *MEMORY[0x277D6ECD0], v172);
  v108 = swift_allocObject();
  *(v108 + 16) = v192;
  sub_22088E4CC();
  *&v144 = v100;
  v109 = v103;
  v110 = v104;
  v111 = v105;
  v112 = v107;
  sub_22088E4BC();
  v113 = sub_22088BA4C();
  (*(*(v113 - 8) + 56))(v147, 1, 1, v113);
  v114 = [v184 bundleForClass_];
  sub_220884CAC();

  v115 = v161;
  sub_22088AB7C();
  v182(v115, 0, 1, v183);
  v179(v189, 1, 1, v180);
  v176(v174, v177, v190);
  *(v108 + 56) = v173;
  *(v108 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v108 + 32));
  sub_22088E57C();
  (v168)(v175, v169, v188);
  v116 = v140;
  sub_22088E8BC();
  v170 += v116;
  v117 = *MEMORY[0x277D76D58];
  *v97 = *MEMORY[0x277D76D58];
  v118 = v97;
  v159(v97, *MEMORY[0x277D6ECE8], v172);
  v119 = swift_allocObject();
  *(v119 + 16) = v192;
  v120 = qword_281297048;
  v121 = v117;
  if (v120 != -1)
  {
    swift_once();
  }

  LOBYTE(v194) = 1;

  v122 = [v184 bundleForClass_];
  sub_220884CAC();

  v123 = v161;
  sub_22088AB7C();
  v182(v123, 0, 1, v183);
  v179(v189, 1, 1, v180);
  v176(v174, v177, v190);
  *(v119 + 56) = v173;
  *(v119 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v119 + 32));
  sub_22088E57C();
  (v168)(v175, v169, v188);
  sub_22088E8BC();
  v124 = v144;
  sub_22088E90C();
  sub_22088E90C();
  v125 = swift_allocObject();
  *(v125 + 16) = v192;
  v126 = *MEMORY[0x277D76D90];
  sub_2205B1B50(&v199, v166, &v197);
  v170 = v125;
  sub_22088E90C();
  v127 = swift_allocObject();
  *(v127 + 16) = v192;
  v128 = *MEMORY[0x277D76CF8];
  *(swift_allocObject() + 16) = v192;
  v159(v118, *MEMORY[0x277D6ECD8], v172);
  v129 = swift_allocObject();
  *(v129 + 16) = v192;
  v130 = qword_281296FF8;
  v186 = v128;
  if (v130 != -1)
  {
    swift_once();
  }

  LOBYTE(v194) = 1;

  v131 = [v184 bundleForClass_];
  sub_220884CAC();

  v182(v161, 1, 1, v183);
  v179(v189, 1, 1, v180);
  v176(v174, v177, v190);
  v132 = v173;
  *(v129 + 56) = v173;
  *(v129 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v129 + 32));
  sub_22088E57C();
  (v168)(v175, v169, v188);
  sub_22088E8BC();
  v133 = MEMORY[0x277D84F90];
  sub_22088E90C();
  v134 = sub_2205B5718();
  v135 = swift_allocObject();
  *(v135 + 16) = v192;
  v136 = *MEMORY[0x277D76CE8];
  *(v135 + 32) = *MEMORY[0x277D76CE8];
  v193 = v145;
  v137 = v136;
  sub_2205D29D4(v153);
  sub_2205D29D4(v151);
  sub_2205D29D4(v170);
  sub_2205D29D4(v133);
  sub_2205D29D4(v127);
  sub_2205D29D4(v134);
  sub_22088DFDC();
  (*(v154 + 8))(v157, v158);
  v138 = *(v148 + 8);
  v138(v156, v132);
  v138(v155, v132);
  v138(v167, v132);
  __swift_destroy_boxed_opaque_existential_1(&v197);
  return __swift_destroy_boxed_opaque_existential_1(&v199);
}

uint64_t sub_2205AE934()
{
  v0 = sub_22088BA1C();
  v50 = *(v0 - 8);
  v51 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v52 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277D83D88];
  sub_2205B69CC(0, &unk_281297C40, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v49 = &v38 - v6;
  sub_2205B69CC(0, &unk_281298048, MEMORY[0x277D6D2F8], v3);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v46 = &v38 - v9;
  v10 = sub_22088E8AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088E8EC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2205B69CC(0, &qword_28127DFE8, MEMORY[0x277D6ED00], MEMORY[0x277D84560]);
  v20 = *(sub_22088E8FC() - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v44 = *(v20 + 72);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_220899920;
  v43 = v22;
  v23 = v22 + v21;
  v24 = *MEMORY[0x277D76D38];
  *v19 = *MEMORY[0x277D76D38];
  v25 = *MEMORY[0x277D6ECE8];
  v26 = *(v16 + 104);
  v45 = v15;
  v41 = v26;
  v26(v19, v25, v15);
  v27 = v24;
  sub_2205AEFB8();
  v28 = *(v11 + 104);
  v40 = *MEMORY[0x277D6ECC0];
  v47 = v11 + 104;
  v48 = v10;
  v39 = v28;
  v28(v14);
  v42 = v23;
  sub_22088E8BC();
  sub_2205B6A30(0, &unk_28127E0E0, &qword_281297F28, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_220899360;
  if (qword_281297008 != -1)
  {
    swift_once();
  }

  v53 = 1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = objc_opt_self();

  v32 = [v31 bundleForClass_];
  sub_220884CAC();

  v33 = sub_22088AB9C();
  (*(*(v33 - 8) + 56))(v46, 1, 1, v33);
  v34 = sub_22088B86C();
  (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
  (*(v50 + 104))(v52, *MEMORY[0x277D6D9A8], v51);
  v35 = sub_22088E5CC();
  v36 = MEMORY[0x277D6EC20];
  *(v29 + 56) = v35;
  *(v29 + 64) = v36;
  __swift_allocate_boxed_opaque_existential_1((v29 + 32));
  sub_22088E57C();
  v41(v19, *MEMORY[0x277D6ECE0], v45);
  v39(v14, v40, v48);
  sub_22088E8BC();
  return v43;
}

uint64_t sub_2205AEFB8()
{
  v31 = sub_22088ADEC();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v0);
  v30 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x277D83D88];
  sub_2205B69CC(0, &unk_281297C40, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v27 = &v27 - v5;
  sub_2205B6BE0(0, &qword_27CF583C0, sub_220466F64, &type metadata for FeatureControlState, MEMORY[0x277D6DB98]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  sub_2205B69CC(0, &unk_281298048, MEMORY[0x277D6D2F8], v2);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v27 - v10;
  v28 = sub_22088E5CC();
  v12 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281297020 != -1)
  {
    swift_once();
  }

  v33 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();

  v18 = [v17 bundleForClass_];
  sub_220884CAC();

  v19 = sub_22088AB9C();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v32 = 1;
  sub_220466F64();
  sub_22088BD6C();
  v20 = sub_22088B86C();
  (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
  (*(v29 + 104))(v30, *MEMORY[0x277D6D438], v31);
  sub_22088E59C();
  v21 = sub_2205880E0(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_2205880E0(v22 > 1, v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  v24 = v21;
  (*(v12 + 32))(v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23, v15, v28);
  v25 = sub_2205AF58C(v24);

  return v25;
}

uint64_t sub_2205AF4F0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_22088BA1C();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D6D9A0];
  if (!v3)
  {
    v6 = MEMORY[0x277D6D9A8];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_2205AF58C(uint64_t a1)
{
  v2 = sub_22088E5CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_22070C054(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22070C054((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x277D6EC20];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_220457328(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

char *sub_2205AF758(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2208926AC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_22070C12C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x223D8A700](i, a1);
        sub_2205B6C48();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_22070C12C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2204A62A4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2205B6C48();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_22070C12C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2204A62A4(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2205AF924(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_22070C12C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22070C12C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_2204A62A4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_2205AFA24(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2208926AC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_22070C23C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      v6 = MEMORY[0x277D6D630];
      do
      {
        v7 = MEMORY[0x223D8A700](v5, a1);
        v18 = v3;
        v9 = *(v3 + 16);
        v8 = *(v3 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_22070C23C((v8 > 1), v9 + 1, 1);
          v3 = v18;
        }

        ++v5;
        v16 = sub_22088B17C();
        v17 = v6;
        *&v15 = v7;
        *(v3 + 16) = v9 + 1;
        sub_220457328(&v15, v3 + 40 * v9 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = MEMORY[0x277D6D630];
      do
      {
        v12 = *v10;
        v18 = v3;
        v13 = *(v3 + 16);
        v14 = *(v3 + 24);

        if (v13 >= v14 >> 1)
        {
          sub_22070C23C((v14 > 1), v13 + 1, 1);
          v3 = v18;
        }

        v16 = sub_22088B17C();
        v17 = v11;
        *&v15 = v12;
        *(v3 + 16) = v13 + 1;
        sub_220457328(&v15, v3 + 40 * v13 + 32);
        ++v10;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2205AFBDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_22070BEF4(0, v1, 0);
    v2 = v16;
    v4 = a1 + 32;
    v5 = MEMORY[0x277D6DBE8];
    do
    {
      sub_22046DA2C(v4, v12);
      sub_220446A58(0, &qword_281297AA8);
      sub_2205B6A30(0, &qword_281297AA0, &qword_281297AA8, v5, MEMORY[0x277D83D88]);
      swift_dynamicCast();
      v16 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_22070BEF4((v6 > 1), v7 + 1, 1);
        v2 = v16;
      }

      *(v2 + 16) = v7 + 1;
      v8 = v2 + 40 * v7;
      v9 = v13;
      v10 = v14;
      *(v8 + 64) = v15;
      *(v8 + 32) = v9;
      *(v8 + 48) = v10;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_2205AFD4C(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_2208926AC();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_22070BEF4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      v8 = MEMORY[0x277D6DBE8];
      do
      {
        MEMORY[0x223D8A700](v7, a1);
        a2(0);
        sub_2205B6A30(0, &qword_281297AA0, &qword_281297AA8, v8, MEMORY[0x277D83D88]);
        swift_dynamicCast();
        v10 = *(v19 + 16);
        v9 = *(v19 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_22070BEF4((v9 > 1), v10 + 1, 1);
        }

        ++v7;
        *(v19 + 16) = v10 + 1;
        v11 = v19 + 40 * v10;
        *(v11 + 64) = v18;
        *(v11 + 32) = v16;
        *(v11 + 48) = v17;
      }

      while (v4 != v7);
    }

    else
    {
      v12 = a1 + 32;
      a2(0);
      sub_2205B6A30(0, &qword_281297AA0, &qword_281297AA8, MEMORY[0x277D6DBE8], MEMORY[0x277D83D88]);
      do
      {

        swift_dynamicCast();
        v14 = *(v19 + 16);
        v13 = *(v19 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_22070BEF4((v13 > 1), v14 + 1, 1);
        }

        *(v19 + 16) = v14 + 1;
        v15 = v19 + 40 * v14;
        *(v15 + 64) = v18;
        *(v15 + 32) = v16;
        *(v15 + 48) = v17;
        v12 += 8;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_2205AFFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v5 = sub_22088E8AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088E8EC();
  MEMORY[0x28223BE20](v10, v11);
  (*(v13 + 104))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6ECF0]);
  sub_2205B6A30(0, &unk_28127E0E0, &qword_281297F28, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22089B140;
  v15 = sub_22088E5CC();
  v16 = MEMORY[0x277D6EC20];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  v18 = *(*(v15 - 8) + 16);
  v18(boxed_opaque_existential_1, a1, v15);
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  v19 = __swift_allocate_boxed_opaque_existential_1((v14 + 72));
  v18(v19, v23, v15);
  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  v20 = __swift_allocate_boxed_opaque_existential_1((v14 + 112));
  v18(v20, v24, v15);
  (*(v6 + 104))(v9, *MEMORY[0x277D6ECC0], v5);
  return sub_22088E8BC();
}

void *sub_2205B022C(void *a1)
{
  v2 = sub_22088BA1C();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v66 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D338F0];
  sub_2205B6BE0(0, &qword_27CF57418, sub_220467D64, MEMORY[0x277D338F0], MEMORY[0x277D6DB98]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v62 = (v53 - v8);
  v61 = sub_22088ADEC();
  v59 = *(v61 - 1);
  MEMORY[0x28223BE20](v61, v9);
  v60 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2205B69CC(0, &unk_281297C40, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v53 - v14;
  sub_2205B69CC(0, &unk_281298048, MEMORY[0x277D6D2F8], v11);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v53 - v18;
  sub_2205B6BE0(0, &qword_281297C20, sub_220467D64, v5, MEMORY[0x277D6D940]);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  MEMORY[0x28223BE20](v22, v23);
  sub_2205B69CC(0, &unk_27CF57B00, sub_2205B6BAC, v11);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = v53 - v26;
  v28 = sub_22088E5CC();
  v67 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28, v29);
  v63 = v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v34 = v53 - v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((sub_22088614C() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v53[0] = sub_22088E3EC();
  sub_2205B6BAC(0);
  (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
  LOBYTE(v68) = 1;
  sub_220467D64();
  sub_22088B8DC();
  LOBYTE(v68) = 1;
  sub_22088B8DC();
  sub_22088AB7C();
  v36 = sub_22088AB9C();
  v37 = *(v36 - 8);
  v57 = *(v37 + 56);
  v58 = v36;
  v56 = v37 + 56;
  v57(v19, 0, 1);
  v38 = sub_22088B86C();
  v39 = *(v38 - 8);
  v54 = *(v39 + 56);
  v55 = v38;
  v53[1] = v39 + 56;
  v54(v15, 1, 1);
  (*(v59 + 104))(v60, *MEMORY[0x277D6D438], v61);
  sub_22088BD7C();
  sub_22088E58C();
  v40 = sub_220588114(0, 1, 1, MEMORY[0x277D84F90]);
  v42 = v40[2];
  v41 = v40[3];
  if (v42 >= v41 >> 1)
  {
    v40 = sub_220588114((v41 > 1), v42 + 1, 1, v40);
  }

  v69 = v28;
  v70 = MEMORY[0x277D6EC20];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v68);
  v44 = v67;
  v62 = *(v67 + 16);
  v62(boxed_opaque_existential_1, v34, v28);
  v40[2] = v42 + 1;
  sub_220457328(&v68, &v40[5 * v42 + 4]);
  v45 = *(v44 + 8);
  v67 = v44 + 8;
  v61 = v45;
  v45(v34, v28);
  sub_22088E4CC();
  sub_22088E2FC();
  *&v68 = 0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  sub_22088AB7C();
  (v57)(v19, 0, 1, v58);
  (v54)(v15, 1, 1, v55);
  (*(v64 + 104))(v66, *MEMORY[0x277D6D9A8], v65);
  v48 = v63;
  sub_22088E57C();
  v50 = v40[2];
  v49 = v40[3];
  if (v50 >= v49 >> 1)
  {
    v40 = sub_220588114((v49 > 1), v50 + 1, 1, v40);
  }

  v69 = v28;
  v70 = MEMORY[0x277D6EC20];
  v51 = __swift_allocate_boxed_opaque_existential_1(&v68);
  v62(v51, v48, v28);
  v40[2] = v50 + 1;
  sub_220457328(&v68, &v40[5 * v50 + 4]);
  v61(v48, v28);
  return v40;
}

uint64_t sub_2205B0B08()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2205B0C7C(void *a1)
{
  v63 = a1;
  v1 = sub_22088E8EC();
  v55 = *(v1 - 8);
  v56 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v57 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2205B69CC(0, &qword_281297C38, MEMORY[0x277D6D900], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v65 = &v54 - v7;
  v8 = sub_22088E8AC();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v64 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B6BE0(0, &qword_281297AC8, sub_2204654EC, &type metadata for WatchlistCommandState, MEMORY[0x277D6DB98]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v59 = &v54 - v13;
  v14 = sub_22088ADEC();
  v15 = *(v14 - 8);
  v66 = v14;
  v67 = v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v62 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v54 - v20;
  sub_2205B69CC(0, &unk_281297C40, MEMORY[0x277D6D8F8], v4);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v54 - v24;
  sub_2205B69CC(0, &unk_281298048, MEMORY[0x277D6D2F8], v4);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v54 - v28;
  sub_2205B6AF8();
  MEMORY[0x28223BE20](v30 - 8, v31);
  sub_2205B69CC(0, &qword_281299060, MEMORY[0x277D69810], v4);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v54 - v34;
  sub_2205B6A30(0, &unk_28127E0E0, &qword_281297F28, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_220899920;
  if (qword_281296F90 != -1)
  {
    swift_once();
  }

  v37 = sub_22088685C();
  (*(*(v37 - 8) + 56))(v35, 1, 1, v37);
  LOWORD(v68) = 1;
  v69 = 0;
  sub_2204654EC();

  v58 = v35;
  sub_22088CB2C();
  sub_22088AB7C();
  v38 = sub_22088AB9C();
  (*(*(v38 - 8) + 56))(v29, 0, 1, v38);
  v39 = sub_22088B86C();
  (*(*(v39 - 8) + 56))(v25, 1, 1, v39);
  v40 = *MEMORY[0x277D6D438];
  v41 = *(v67 + 104);
  v67 += 104;
  v41(v21, v40, v66);
  sub_22088BD7C();
  v42 = sub_22088E5CC();
  v43 = MEMORY[0x277D6EC20];
  *(v36 + 56) = v42;
  *(v36 + 64) = v43;
  __swift_allocate_boxed_opaque_existential_1((v36 + 32));
  sub_22088E5AC();
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = objc_opt_self();

  v46 = [v45 bundleForClass_];
  v47 = sub_220884CAC();
  v58 = v48;
  v59 = v47;

  (*(v60 + 104))(v64, *MEMORY[0x277D6ECC8], v61);
  v41(v62, *MEMORY[0x277D6D440], v66);
  v49 = v65;
  sub_22088B87C();
  v50 = sub_22088B88C();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  type metadata accessor for WatchlistMembershipMenuGroupOptionProvider();
  result = sub_2208884CC();
  if (result)
  {
    v68 = result;
    (*(v55 + 104))(v57, *MEMORY[0x277D6ECE0], v56);
    v52 = sub_22088E8FC();
    v53 = MEMORY[0x277D6ECF8];
    *(v36 + 96) = v52;
    *(v36 + 104) = v53;
    __swift_allocate_boxed_opaque_existential_1((v36 + 72));
    sub_2205B6B64(qword_28127FDE8, type metadata accessor for WatchlistMembershipMenuGroupOptionProvider);
    sub_22088E8DC();
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2205B1568()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2205B16E4(void *a1)
{
  v2 = sub_22088BA1C();
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2205B69CC(0, &unk_281297C40, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v31 - v9;
  sub_2205B69CC(0, &unk_281298048, MEMORY[0x277D6D2F8], v6);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v31 - v13;
  v15 = sub_22088E5CC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_22088618C())
  {
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v32 = v15;
    v31 = sub_22088E45C();
    v34 = 0;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = v2;
    v23 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    v24 = sub_22088AB9C();
    (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
    v25 = sub_22088B86C();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    (*(v33 + 104))(v5, *MEMORY[0x277D6D9A8], v22);
    sub_22088E57C();
    v20 = sub_2205880E0(0, 1, 1, MEMORY[0x277D84F90]);
    v27 = v20[2];
    v26 = v20[3];
    if (v27 >= v26 >> 1)
    {
      v20 = sub_2205880E0(v26 > 1, v27 + 1, 1, v20);
    }

    v28 = v32;
    v20[2] = v27 + 1;
    (*(v16 + 32))(v20 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v27, v19, v28);
  }

  v29 = sub_2205AF58C(v20);

  return v29;
}

uint64_t sub_2205B1B50(void *a1, char *a2, void *a3)
{
  v155 = a3;
  v166 = a2;
  v168 = a1;
  v165 = sub_22088E8FC();
  v3 = *(v165 - 8);
  v5 = MEMORY[0x28223BE20](v165, v4);
  v149 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v148 = &v148 - v8;
  v9 = MEMORY[0x277D83D88];
  sub_2205B69CC(0, &qword_281297C38, MEMORY[0x277D6D900], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v163 = &v148 - v12;
  v13 = MEMORY[0x277D6DB88];
  v14 = MEMORY[0x277D6DB80];
  sub_2205B6AA4(0, &qword_27CF57400, MEMORY[0x277D6DB88], MEMORY[0x277D6DB80], MEMORY[0x277D6DB98]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v169 = &v148 - v17;
  *&v162 = sub_22088ADEC();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v18);
  v164 = &v148 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B6AA4(0, &qword_281297C18, v13, v14, MEMORY[0x277D6D940]);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v160 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v159 = &v148 - v25;
  v26 = sub_22088E8AC();
  v178 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v167 = &v148 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_22088BA1C();
  v181 = *(v187 - 8);
  MEMORY[0x28223BE20](v187, v29);
  v188 = &v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B69CC(0, &unk_281297C40, MEMORY[0x277D6D8F8], v9);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v148 - v33;
  sub_2205B69CC(0, &unk_281298048, MEMORY[0x277D6D2F8], v9);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v148 - v37;
  v39 = sub_22088E8EC();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v41);
  v43 = &v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B69CC(0, &qword_28127DFE8, MEMORY[0x277D6ED00], MEMORY[0x277D84560]);
  v44 = *(v3 + 72);
  v150 = v3;
  v45 = *(v3 + 80);
  v46 = (v45 + 32) & ~v45;
  v176 = v44;
  v151 = v45;
  v152 = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_22089D630;
  v154 = v46;
  v153 = v48;
  v177 = v48 + v46;
  v49 = *MEMORY[0x277D6ECF0];
  v50 = *(v40 + 104);
  v170 = v43;
  v185 = v40 + 104;
  v186 = v39;
  v184 = v50;
  (v50)(v43, v49, v39);
  sub_2205B6A30(0, &unk_28127E0E0, &qword_281297F28, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v175 = v51;
  v52 = swift_allocObject();
  v173 = xmmword_220899360;
  *(v52 + 16) = xmmword_220899360;
  if (qword_281297058 != -1)
  {
    swift_once();
  }

  LOBYTE(v197) = 1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v180 = ObjCClassFromMetadata;
  v54 = objc_opt_self();
  v179 = v54;

  v55 = [v54 bundleForClass_];
  sub_220884CAC();

  sub_22088AB7C();
  v191 = sub_22088AB9C();
  v56 = *(v191 - 8);
  v57 = *(v56 + 56);
  v189 = v56 + 56;
  v190 = v57;
  v57(v38, 0, 1, v191);
  v195 = sub_22088B86C();
  v58 = *(v195 - 8);
  v59 = *(v58 + 56);
  v193 = v58 + 56;
  v194 = v59;
  v59(v34, 1, 1, v195);
  v183 = *MEMORY[0x277D6D9A8];
  v60 = *(v181 + 104);
  v181 += 104;
  v182 = v60;
  v60(v188);
  v192 = sub_22088E5CC();
  v61 = MEMORY[0x277D6EC20];
  *(v52 + 56) = v192;
  *(v52 + 64) = v61;
  __swift_allocate_boxed_opaque_existential_1((v52 + 32));
  sub_22088E57C();
  v196 = v38;
  v172 = *MEMORY[0x277D6ECC0];
  v62 = *(v178 + 104);
  v178 += 104;
  v171 = v62;
  v63 = v167;
  (v62)(v167);
  v64 = v170;
  sub_22088E8BC();
  v65 = *MEMORY[0x277D76D78];
  *v64 = *MEMORY[0x277D76D78];
  LODWORD(v158) = *MEMORY[0x277D6ECE8];
  v184(v64);
  v66 = swift_allocObject();
  *(v66 + 16) = v173;
  v157 = v65;
  v156 = sub_22088E4AC();
  LOBYTE(v197) = 1;
  v198 = 0;
  v174 = v26;
  sub_22088B8DC();
  v198 = 0;
  sub_22088B8DC();
  sub_22088AB7C();
  v190(v196, 0, 1, v191);
  v194(v34, 1, 1, v195);
  (*(v161 + 104))(v164, *MEMORY[0x277D6D438], v162);
  sub_22088BD7C();
  *(v66 + 56) = v192;
  *(v66 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v66 + 32));
  sub_22088E58C();
  v171(v63, v172, v174);
  v67 = v176;
  sub_22088E8BC();
  v164 = (2 * v67);
  *v64 = v157;
  (v184)(v64, v158, v186);
  v68 = swift_allocObject();
  *(v68 + 16) = v173;
  sub_22088E4CC();
  *&v162 = sub_22088E27C();
  LOBYTE(v197) = 1;
  v69 = [v179 bundleForClass_];
  sub_220884CAC();

  sub_22088AB7C();
  v190(v196, 0, 1, v191);
  v194(v34, 1, 1, v195);
  v182(v188, v183, v187);
  *(v68 + 56) = v192;
  *(v68 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v68 + 32));
  v169 = v34;
  sub_22088E57C();
  v70 = v63;
  v71 = v63;
  v72 = v172;
  v73 = v174;
  v74 = v171;
  v171(v71, v172, v174);
  sub_22088E8BC();
  sub_2205B3CE8(v168);
  LODWORD(v168) = *MEMORY[0x277D6ECE0];
  v184(v64);
  v74(v70, v72, v73);
  sub_22088E8BC();
  v75 = swift_allocObject();
  v162 = xmmword_22089B140;
  *(v75 + 16) = xmmword_22089B140;
  v76 = v188;
  if (qword_281296FD0 != -1)
  {
    swift_once();
  }

  v198 = 1;

  v77 = [v179 bundleForClass_];
  v78 = sub_220884CAC();
  v80 = v79;

  *&v197 = v78;
  *(&v197 + 1) = v80;
  sub_22089158C();
  sub_22089136C();
  v81 = v196;
  sub_22088AB8C();
  v190(v81, 0, 1, v191);
  v194(v169, 1, 1, v195);
  v82 = v187;
  v182(v76, v183, v187);
  *(v75 + 56) = v192;
  *(v75 + 64) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v75 + 32));
  v83 = v196;
  sub_22088E57C();
  if (qword_281296F78 != -1)
  {
    swift_once();
  }

  v198 = 1;

  v84 = [v179 bundleForClass_];
  v85 = sub_220884CAC();
  v87 = v86;

  *&v197 = v85;
  *(&v197 + 1) = v87;
  sub_22089158C();
  sub_22089136C();
  sub_22088AB8C();
  v190(v83, 0, 1, v191);
  v194(v169, 1, 1, v195);
  v182(v76, v183, v82);
  *(v75 + 96) = v192;
  *(v75 + 104) = MEMORY[0x277D6EC20];
  __swift_allocate_boxed_opaque_existential_1((v75 + 72));
  sub_22088E57C();
  if (qword_281296FA0 != -1)
  {
    swift_once();
  }

  v164 = v75;
  v161 = qword_2812B6C08;

  v88 = [v179 bundleForClass_];
  v89 = sub_220884CAC();
  v91 = v90;

  *&v197 = v89;
  *(&v197 + 1) = v91;
  v160 = sub_22089158C();
  v159 = v92;
  v93 = v163;
  sub_22088B87C();
  v94 = sub_22088B88C();
  (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
  __swift_project_boxed_opaque_existential_1(v166, *(v166 + 3));
  type metadata accessor for GoToWatchlistMenuGroupOptionProvider();
  result = sub_2208884CC();
  if (result)
  {
    v158 = 4 * v176;
    *&v197 = result;
    v96 = v170;
    v97 = v184;
    (v184)(v170, v168, v186);
    v98 = v167;
    v99 = v172;
    v100 = v174;
    v101 = v171;
    (v171)();
    v102 = MEMORY[0x277D6ECF8];
    v103 = v164;
    *(v164 + 17) = v165;
    *(v103 + 18) = v102;
    __swift_allocate_boxed_opaque_existential_1(v103 + 14);
    sub_2205B6B64(qword_281281B00, type metadata accessor for GoToWatchlistMenuGroupOptionProvider);
    sub_22088E8CC();
    v104 = v168;
    v105 = v186;
    v97(v96, v168, v186);
    v106 = v99;
    v107 = v99;
    v108 = v101;
    v101(v98, v107, v100);
    v109 = v158;
    v110 = v170;
    sub_22088E8BC();
    v164 = (v109 + v176);
    v166 = sub_2205B43C8(v166);
    (v184)(v110, v104, v105);
    v108(v98, v106, v100);
    v111 = v177;
    sub_22088E8BC();
    v177 = v111 + 6 * v176;
    v112 = swift_allocObject();
    *(v112 + 16) = v162;
    v166 = sub_22088E43C();
    *&v197 = 0;
    v113 = [v179 bundleForClass_];
    sub_220884CAC();

    v114 = v196;
    sub_22088AB7C();
    v115 = v190;
    v116 = v191;
    v190(v114, 0, 1, v191);
    v117 = v169;
    v194(v169, 1, 1, v195);
    v182(v188, v183, v187);
    *(v112 + 56) = v192;
    *(v112 + 64) = MEMORY[0x277D6EC20];
    __swift_allocate_boxed_opaque_existential_1((v112 + 32));
    sub_22088E57C();
    v166 = sub_22088E41C();
    *&v197 = 0;
    v118 = v179;
    v119 = v180;
    v120 = [v179 bundleForClass_];
    v164 = sub_220884CAC();
    v163 = v121;

    *&v162 = "Title for Zoom In menu item";
    sub_22088AB7C();
    v115(v114, 0, 1, v116);
    sub_22088E2BC();
    v122 = v119;
    v123 = [v118 bundleForClass_];
    sub_220884CAC();

    sub_22088B85C();
    v194(v117, 0, 1, v195);
    v182(v188, v183, v187);
    *(v112 + 96) = v192;
    *(v112 + 104) = MEMORY[0x277D6EC20];
    __swift_allocate_boxed_opaque_existential_1((v112 + 72));
    sub_22088E57C();
    v166 = sub_22088E42C();
    *&v197 = 0;
    v124 = v118;
    v125 = [v118 bundleForClass_];
    v164 = sub_220884CAC();
    v163 = v126;

    sub_22088AB7C();
    v190(v114, 0, 1, v191);
    sub_22088E2CC();
    v127 = [v124 bundleForClass_];
    sub_220884CAC();

    sub_22088B85C();
    v194(v117, 0, 1, v195);
    v182(v188, v183, v187);
    *(v112 + 136) = v192;
    *(v112 + 144) = MEMORY[0x277D6EC20];
    __swift_allocate_boxed_opaque_existential_1((v112 + 112));
    v128 = v167;
    v129 = v170;
    sub_22088E57C();
    (v184)(v129, v168, v186);
    v171(v128, v172, v174);
    sub_22088E8BC();
    v130 = v155;
    __swift_project_boxed_opaque_existential_1(v155, v155[3]);
    if (sub_220885E5C())
    {
      v131 = swift_allocObject();
      *(v131 + 16) = v173;
      if (qword_281297060 != -1)
      {
        swift_once();
      }

      v198 = 1;
      sub_22046DA2C(v130, &v197);
      v132 = swift_allocObject();
      sub_220457328(&v197, v132 + 16);
      v190(v114, 1, 1, v191);
      v194(v169, 1, 1, v195);
      v182(v188, v183, v187);
      *(v131 + 56) = v192;
      *(v131 + 64) = MEMORY[0x277D6EC20];
      __swift_allocate_boxed_opaque_existential_1((v131 + 32));

      sub_22088E56C();
      (v184)(v170, v168, v186);
      v171(v128, v172, v174);
      v133 = v148;
      sub_22088E8BC();
      v134 = v150;
      v135 = v149;
      (*(v150 + 16))(v149, v133, v165);
      v136 = v153;
      v138 = *(v153 + 2);
      v137 = *(v153 + 3);
      if (v138 >= v137 >> 1)
      {
        v136 = sub_220588130(v137 > 1, v138 + 1, 1, v153);
      }

      v139 = v154;
      v140 = v133;
      v141 = v165;
      (*(v134 + 8))(v140, v165);
      *(v136 + 2) = v138 + 1;
      (*(v134 + 32))(&v136[v139 + v138 * v176], v135, v141);
    }

    v142 = swift_allocObject();
    *(v142 + 16) = v173;
    v143 = *MEMORY[0x277D76D90];
    sub_2205B69CC(0, &qword_28127DE90, type metadata accessor for Identifier, MEMORY[0x277D84560]);
    v144 = swift_allocObject();
    *(v144 + 16) = v173;
    v145 = *MEMORY[0x277D76D48];
    *(v144 + 32) = *MEMORY[0x277D76D48];
    v146 = v143;
    v147 = v145;
    sub_22088E90C();
    return v142;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2205B3BD4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

void *sub_2205B3CE8(void *a1)
{
  v2 = sub_22088BA1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2205B69CC(0, &unk_281297C40, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v45 - v10;
  sub_2205B69CC(0, &unk_281298048, MEMORY[0x277D6D2F8], v7);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v45 - v14;
  v16 = sub_22088E5CC();
  v61 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v60 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v45 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_22088618C())
  {
    return MEMORY[0x277D84F90];
  }

  v57 = sub_22088E47C();
  LOBYTE(v62) = 3;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = objc_opt_self();
  v56 = ObjCClassFromMetadata;
  v25 = [v55 bundleForClass_];
  sub_220884CAC();
  v47 = v26;

  sub_22089136C();
  sub_22088AB8C();
  v27 = sub_22088AB9C();
  v28 = *(v27 - 8);
  v53 = *(v28 + 56);
  v54 = v27;
  v52 = v28 + 56;
  v53(v15, 0, 1);
  v29 = v6;
  v30 = sub_22088B86C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v50 = v31 + 56;
  v51 = v32;
  v32(v11, 1, 1, v30);
  v33 = *(v3 + 104);
  v49 = *MEMORY[0x277D6D9A8];
  v58 = v3 + 104;
  v59 = v2;
  v48 = v33;
  v33(v29);
  v57 = v29;
  sub_22088E57C();
  v23 = sub_220588114(0, 1, 1, MEMORY[0x277D84F90]);
  v35 = v23[2];
  v34 = v23[3];
  if (v35 >= v34 >> 1)
  {
    v23 = sub_220588114((v34 > 1), v35 + 1, 1, v23);
  }

  v63 = v16;
  v64 = MEMORY[0x277D6EC20];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
  v37 = v61;
  v47 = *(v61 + 16);
  v47(boxed_opaque_existential_1, v22, v16);
  v23[2] = v35 + 1;
  sub_220457328(&v62, &v23[5 * v35 + 4]);
  v38 = *(v37 + 8);
  v61 = v37 + 8;
  v46 = v38;
  v38(v22, v16);
  v45[1] = sub_22088E46C();
  LOBYTE(v62) = 3;
  v39 = [v55 bundleForClass_];
  sub_220884CAC();

  sub_22089136C();
  sub_22088AB8C();
  (v53)(v15, 0, 1, v54);
  v51(v11, 1, 1, v30);
  v48(v57, v49, v59);
  v40 = v60;
  sub_22088E57C();
  v42 = v23[2];
  v41 = v23[3];
  if (v42 >= v41 >> 1)
  {
    v23 = sub_220588114((v41 > 1), v42 + 1, 1, v23);
  }

  v63 = v16;
  v64 = MEMORY[0x277D6EC20];
  v43 = __swift_allocate_boxed_opaque_existential_1(&v62);
  v47(v43, v40, v16);
  v23[2] = v42 + 1;
  sub_220457328(&v62, &v23[5 * v42 + 4]);
  v46(v40, v16);
  return v23;
}

uint64_t sub_2205B43C8(char *a1)
{
  v103 = sub_22088E8EC();
  v120 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v2);
  v96 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B69CC(0, &qword_281297C38, MEMORY[0x277D6D900], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v110 = &v86 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v114 = &v86 - v13;
  v14 = sub_22088ADEC();
  v117 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v99 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v109 = &v86 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v113 = &v86 - v22;
  v23 = sub_22088E8AC();
  v24 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v100 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v102 = &v86 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v86 - v32;
  sub_2205B6A30(0, &unk_28127E0E0, &qword_281297F28, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v35 = v34;
  v36 = swift_allocObject();
  v112 = xmmword_220899920;
  v98 = v36;
  *(v36 + 16) = xmmword_220899920;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v92 = objc_opt_self();
  v93 = ObjCClassFromMetadata;
  v38 = [v92 bundleForClass_];
  v90 = sub_220884CAC();
  v89 = v39;

  v40 = *MEMORY[0x277D6ECC8];
  v41 = *(v24 + 104);
  v94 = v33;
  v91 = v40;
  v118 = v24 + 104;
  v119 = v23;
  v116 = v41;
  (v41)(v33);
  v95 = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = v112;
  if (qword_281296FB0 != -1)
  {
    swift_once();
  }

  v101 = v8;
  v43 = qword_2812B6C10;
  v44 = *(v117 + 104);
  v108 = *MEMORY[0x277D6D440];
  v117 += 104;
  v107 = v44;
  v44(v113);
  v45 = sub_22088B88C();
  v111 = v14;
  v46 = v45;
  v47 = *(v45 - 8);
  v48 = *(v47 + 56);
  v105 = v47 + 56;
  v106 = v48;
  v48(v114, 1, 1, v45);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  type metadata accessor for SortWatchlistMenuGroupOptionProvider();
  v104 = v43;

  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v50 = a1;
  v121 = result;
  v51 = *MEMORY[0x277D6ECE0];
  v52 = *(v120 + 104);
  v120 += 104;
  v53 = v96;
  v97 = v51;
  v54 = v103;
  v115 = v52;
  v52(v96);
  v55 = *MEMORY[0x277D6ECC0];
  v56 = v102;
  v116(v102, v55, v119);
  v57 = sub_22088E8FC();
  v58 = MEMORY[0x277D6ECF8];
  v87 = v57;
  *(v42 + 56) = v57;
  *(v42 + 64) = v58;
  __swift_allocate_boxed_opaque_existential_1((v42 + 32));
  sub_2205B6B64(&qword_281281970, type metadata accessor for SortWatchlistMenuGroupOptionProvider);

  sub_22088E8DC();
  v107(v109, v108, v111);
  v88 = v46;
  v106(v110, 1, 1, v46);
  v59 = *(a1 + 3);
  v113 = v50;
  __swift_project_boxed_opaque_existential_1(v50, v59);
  type metadata accessor for OrderWatchlistMenuGroupOptionProvider();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v86 = "Title for Sort By Menu Group";
  v121 = result;
  v60 = v97;
  v115(v53, v97, v54);
  LODWORD(v114) = v55;
  v61 = v55;
  v62 = v116;
  v116(v56, v61, v119);
  v63 = v87;
  *(v42 + 96) = v87;
  *(v42 + 104) = MEMORY[0x277D6ECF8];
  __swift_allocate_boxed_opaque_existential_1((v42 + 72));
  sub_2205B6B64(qword_281281650, type metadata accessor for OrderWatchlistMenuGroupOptionProvider);
  sub_22088E8DC();
  v64 = v54;
  v65 = v115;
  v115(v53, v60, v64);
  v66 = v98;
  *(v98 + 56) = v63;
  *(v66 + 64) = MEMORY[0x277D6ECF8];
  __swift_allocate_boxed_opaque_existential_1((v66 + 32));
  sub_22088E8BC();
  v67 = [v92 bundleForClass_];
  v68 = sub_220884CAC();
  v109 = v69;
  v110 = v68;

  v62(v100, v91, v119);
  v70 = swift_allocObject();
  *(v70 + 16) = v112;
  v71 = v101;
  v72 = v99;
  v73 = v53;
  v74 = v65;
  if (qword_281296FC8 != -1)
  {
    swift_once();
  }

  v75 = v63;
  v76 = qword_2812B6C20;
  v107(v72, v108, v111);
  v106(v71, 1, 1, v88);
  __swift_project_boxed_opaque_existential_1(v113, *(v113 + 3));
  type metadata accessor for ChangeWatchlistDisplayMenuGroupOptionProvider();
  v117 = v76;

  result = sub_2208884CC();
  if (result)
  {
    v113 = "macbook.and.iphone";
    v121 = result;
    v77 = v73;
    v78 = v97;
    v79 = v73;
    v80 = v103;
    v74(v77, v97);
    v81 = v102;
    v82 = v116;
    v116(v102, v114, v119);
    *(v70 + 56) = v75;
    *(v70 + 64) = MEMORY[0x277D6ECF8];
    __swift_allocate_boxed_opaque_existential_1((v70 + 32));
    sub_2205B6B64(&qword_28127F840, type metadata accessor for ChangeWatchlistDisplayMenuGroupOptionProvider);
    sub_22088E8DC();
    sub_2205B51A4();
    v83 = v115;
    v115(v79, v78, v80);
    v82(v81, v114, v119);
    *(v70 + 96) = v75;
    v84 = MEMORY[0x277D6ECF8];
    *(v70 + 104) = MEMORY[0x277D6ECF8];
    __swift_allocate_boxed_opaque_existential_1((v70 + 72));
    sub_22088E8BC();
    v83(v79, v78, v80);
    v85 = v98;
    *(v98 + 96) = v75;
    *(v85 + 104) = v84;
    __swift_allocate_boxed_opaque_existential_1((v85 + 72));
    sub_22088E8BC();
    return v85;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2205B5044()
{
  v0 = sub_220885DBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SortWatchlistCommandContext(0);
  sub_220885DCC();
  v5 = sub_220885D8C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_2205B51A4()
{
  sub_2205B6AA4(0, &qword_27CF57408, MEMORY[0x277D839B0], MEMORY[0x277D6ED10], MEMORY[0x277D6DB98]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v27 = &v25 - v2;
  v3 = MEMORY[0x277D83D88];
  sub_2205B69CC(0, &unk_281297C40, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v26 = &v25 - v6;
  sub_2205B69CC(0, &unk_281298048, MEMORY[0x277D6D2F8], v3);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v25 - v9;
  v11 = sub_22088ADEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B6A30(0, &unk_28127E0E0, &qword_281297F28, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220899360;
  if (qword_281297070 != -1)
  {
    swift_once();
  }

  v28 = 1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();

  v19 = [v18 bundleForClass_];
  sub_220884CAC();

  (*(v12 + 104))(v15, *MEMORY[0x277D6D440], v11);
  v20 = sub_22088AB9C();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = sub_22088B86C();
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  sub_22088BD7C();
  v22 = sub_22088E5CC();
  v23 = MEMORY[0x277D6EC20];
  *(v16 + 56) = v22;
  *(v16 + 64) = v23;
  __swift_allocate_boxed_opaque_existential_1((v16 + 32));
  sub_22088E59C();
  return v16;
}

uint64_t sub_2205B55F4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220885E3C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_220884CAC();

  return v4;
}

uint64_t sub_2205B5718()
{
  v0 = sub_22088E8AC();
  v52 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22088BA1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_2205B69CC(0, &unk_281297C40, MEMORY[0x277D6D8F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v51 = &v40 - v12;
  sub_2205B69CC(0, &unk_281298048, MEMORY[0x277D6D2F8], v9);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v40 - v15;
  v17 = sub_22088E8EC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2208883EC();
  if ((sub_2208883DC() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v45 = v5;
  v46 = v4;
  v47 = v8;
  v48 = v3;
  v49 = v0;
  sub_2205B69CC(0, &qword_28127DFE8, MEMORY[0x277D6ED00], MEMORY[0x277D84560]);
  v41 = sub_22088E8FC();
  v42 = (*(*(v41 - 8) + 80) + 32) & ~*(*(v41 - 8) + 80);
  v22 = swift_allocObject();
  v50 = xmmword_220899360;
  *(v22 + 16) = xmmword_220899360;
  sub_2205B6A30(0, &unk_28127E0E0, &qword_281297F28, MEMORY[0x277D6D430], MEMORY[0x277D84560]);
  v23 = swift_allocObject();
  *(v23 + 16) = v50;
  v24 = *MEMORY[0x277D6ECF0];
  v25 = *(v18 + 104);
  v43 = v17;
  v44 = v18 + 104;
  v40 = v25;
  v25(v21, v24, v17);
  v26 = swift_allocObject();
  *(v26 + 16) = v50;
  if (qword_281297040 != -1)
  {
    swift_once();
  }

  v53 = 1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = objc_opt_self();

  v29 = [v28 bundleForClass_];
  sub_220884CAC();

  sub_22088AB7C();
  v30 = sub_22088AB9C();
  (*(*(v30 - 8) + 56))(v16, 0, 1, v30);
  v31 = sub_22088B86C();
  (*(*(v31 - 8) + 56))(v51, 1, 1, v31);
  (*(v45 + 104))(v47, *MEMORY[0x277D6D9A8], v46);
  v32 = sub_22088E5CC();
  v33 = MEMORY[0x277D6EC20];
  *(v26 + 56) = v32;
  *(v26 + 64) = v33;
  __swift_allocate_boxed_opaque_existential_1((v26 + 32));
  sub_22088E57C();
  v34 = *MEMORY[0x277D6ECC0];
  v35 = *(v52 + 104);
  v37 = v48;
  v36 = v49;
  v35(v48, v34, v49);
  v38 = MEMORY[0x277D6ECF8];
  *(v23 + 56) = v41;
  *(v23 + 64) = v38;
  __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  sub_22088E8BC();
  v40(v21, *MEMORY[0x277D6ECE0], v43);
  v35(v37, v34, v36);
  sub_22088E8BC();
  return v22;
}

uint64_t sub_2205B5DFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2205B69CC(0, &qword_2812971A8, MEMORY[0x277D6EB38], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_22088DFEC();
  sub_22088849C();
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = objc_allocWithZone(sub_22088ABAC());
    result = sub_22088ABBC();
    v11 = MEMORY[0x277D6D300];
    *a2 = result;
    a2[1] = v11;
  }

  return result;
}

uint64_t sub_2205B5F48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ShareDynamicMenuItemProvider();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ShareMenuItemManager();
    swift_allocObject();
    v6 = sub_22066224C(v4);

    a2[3] = v5;
    result = sub_2205B6B64(&qword_28128EDE0, type metadata accessor for ShareMenuItemManager);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2205B6014(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281298738);
  sub_2208884DC();
  if (!v4)
  {
    return sub_2205B6944(&v3);
  }

  sub_220457328(&v3, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2205B6B64(&qword_28128EDD8, type metadata accessor for ShareMenuItemManager);
  sub_220888BFC();
  __swift_destroy_boxed_opaque_existential_1(&v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_2205B6118()
{
  v0 = sub_220888D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WatchlistMembershipMenuGroupOptionProvider();
  sub_220888BDC();
  v5 = *MEMORY[0x277D6CF10];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_2208882DC();

  v7 = *(v1 + 8);
  v7(v4, v0);
  type metadata accessor for GoToWatchlistMenuGroupOptionProvider();
  sub_220888BDC();
  v6(v4, v5, v0);
  sub_2208882DC();

  v7(v4, v0);
  type metadata accessor for SortWatchlistMenuGroupOptionProvider();
  sub_220888BDC();
  v6(v4, v5, v0);
  sub_2208882DC();

  v7(v4, v0);
  type metadata accessor for OrderWatchlistMenuGroupOptionProvider();
  sub_220888BDC();
  v6(v4, v5, v0);
  sub_2208882DC();

  v7(v4, v0);
  type metadata accessor for ChangeWatchlistDisplayMenuGroupOptionProvider();
  sub_220888BDC();
  v6(v4, v5, v0);
  sub_2208882DC();

  v7(v4, v0);
  type metadata accessor for ShareDynamicMenuItemProvider();
  sub_220888BDC();
  v6(v4, v5, v0);
  sub_2208882DC();

  return (v7)(v4, v0);
}

void *sub_2205B64BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299280);
    result = sub_2208884DC();
    if (v3[3])
    {
      type metadata accessor for WatchlistMembershipMenuGroupOptionProvider();
      swift_allocObject();
      return sub_220575888(v4, v5, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2205B65BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (v2[3])
  {
    type metadata accessor for GoToWatchlistMenuGroupOptionProvider();
    swift_allocObject();
    return sub_2205FB48C(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2205B66AC(void *a1, void (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, _BYTE *))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299280);
    result = sub_2208884DC();
    if (v9)
    {
      a2(0);
      swift_allocObject();
      v7 = a3(v10, v11, v8);
      swift_unknownObjectRelease();
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2205B6800()
{
  v0 = sub_22088E5CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281296F60 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2812B6BD0);
  (*(v1 + 16))(v4, v5, v0);
  type metadata accessor for ShareDynamicMenuItemProvider();
  v6 = swift_allocObject();
  (*(v1 + 32))(v6 + OBJC_IVAR____TtC8StocksUI28ShareDynamicMenuItemProvider_menuItem, v4, v0);
  return v6;
}

uint64_t sub_2205B6944(uint64_t a1)
{
  sub_2205B6A30(0, &qword_27CF573F8, &qword_281298738, MEMORY[0x277D6CD90], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2205B69CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2205B6A30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_220446A58(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2205B6AA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2205B6AF8()
{
  if (!qword_27CF57410)
  {
    sub_22088685C();
    sub_2204654EC();
    v0 = sub_22088CB3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57410);
    }
  }
}

uint64_t sub_2205B6B64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2205B6BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2205B6C48()
{
  result = qword_28127E670;
  if (!qword_28127E670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E670);
  }

  return result;
}

uint64_t type metadata accessor for WatchlistRenameAlert()
{
  result = qword_27CF57420;
  if (!qword_27CF57420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205B6D0C()
{
  sub_2204961E0(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2205B6D78(void *a1, void *a2)
{
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  sub_220884CAC();

  v11 = sub_22089132C();

  [a1 setPlaceholder_];

  v12 = [v9 bundleForClass_];
  sub_220884CAC();

  v13 = sub_22089132C();

  [a1 setAccessibilityLabel_];

  if (a2)
  {
    v14 = [v9 bundleForClass_];
    sub_220884CAC();

    v15 = sub_22089132C();

    [a2 setText_];
  }

  [a1 setEnablesReturnKeyAutomatically_];
  [a1 setReturnKeyType_];
  [a1 setAutocapitalizationType_];
  sub_2205B7424(v19[1], v7);
  v16 = sub_220886A4C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v7, 1, v16) == 1)
  {
    sub_2205B7488(v7);
    v18 = 0;
  }

  else
  {
    sub_220886A0C();
    (*(v17 + 8))(v7, v16);
    v18 = sub_22089132C();
  }

  [a1 setText_];
}

uint64_t sub_2205B711C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2205B71E4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2205B72AC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2205B7364()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2205B7424(uint64_t a1, uint64_t a2)
{
  sub_2204961E0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205B7488(uint64_t a1)
{
  sub_2204961E0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2205B74E4(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a1 >> 61;
  if (v5 <= 1)
  {
    if (v5)
    {
      if (qword_27CF55A98 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    if (qword_27CF55A90 != -1)
    {
LABEL_17:
      swift_once();
    }

LABEL_12:
    sub_2205B7AA4();

    sub_220886B3C();

    if (v9 != 1)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (v5 == 2)
  {
    if (qword_27CF55A80 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v5 == 3)
  {
    if (qword_27CF55A88 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_13:
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2208877DC();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = a2;
  sub_22059A824(v4);

  v7 = sub_2208884AC();

  result = v7;
  if (v7)
  {
    return result;
  }

  __break(1u);
  return 0;
}

uint64_t sub_2205B7728(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_22088755C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    v14 = v7;
    if (v11)
    {
      if (qword_27CF55A98 == -1)
      {
        goto LABEL_12;
      }
    }

    else if (qword_27CF55A90 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (v11 == 2)
  {
    v14 = v7;
    if (qword_27CF55A80 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (v11 != 3)
  {
    goto LABEL_13;
  }

  v14 = v7;
  if (qword_27CF55A88 != -1)
  {
LABEL_16:
    swift_once();
  }

LABEL_12:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045E8CC();

  sub_22088836C();

  v7 = v14;
LABEL_13:
  if (a3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088731C();

    sub_22088836C();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15[0] = a2;
  sub_22059A824(a2);
  sub_22059A450(v15, v10);
  sub_22088837C();
  (*(v7 + 8))(v10, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15[5] = a2;
  sub_2207DDCA0(v15);
  sub_2205B7B00();
  sub_22088837C();
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15[0] = a2;
  return sub_22088837C();
}

unint64_t sub_2205B7AA4()
{
  result = qword_27CF57430;
  if (!qword_27CF57430)
  {
    type metadata accessor for TipsModule();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57430);
  }

  return result;
}

unint64_t sub_2205B7B00()
{
  result = qword_281298A60;
  if (!qword_281298A60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281298A60);
  }

  return result;
}

uint64_t sub_2205B7B64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22089022C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v1, v3, v6);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == *MEMORY[0x277D33290] || v9 == *MEMORY[0x277D33298])
  {
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D33288])
  {
    v11 = MEMORY[0x277D68A20];
    goto LABEL_9;
  }

  v15 = v9 == *MEMORY[0x277D332A8] || v9 == *MEMORY[0x277D33268];
  v16 = v15 || v9 == *MEMORY[0x277D33278];
  if (v16 || v9 == *MEMORY[0x277D33280])
  {
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D33270])
  {
    v11 = MEMORY[0x277D68A18];
    goto LABEL_9;
  }

  if (v9 == *MEMORY[0x277D332A0])
  {
LABEL_6:
    v11 = MEMORY[0x277D68A28];
LABEL_9:
    v12 = *v11;
    v13 = sub_220889ACC();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

size_t sub_2205B7DC4(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v6 = v5;
  v91 = a1;
  v11 = MEMORY[0x277D839F8];
  sub_2205B902C(0, &qword_28127ECA0, MEMORY[0x277D839F8], MEMORY[0x277D6C808]);
  v96 = v12;
  v102 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v95 = &v79[-v14];
  v15 = sub_2208911EC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v94 = &v79[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2205B902C(0, &qword_28127ECB0, v11, MEMORY[0x277D6C7F0]);
  v101 = v18;
  v100 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v87 = &v79[-v20];
  sub_2205B902C(0, &qword_28127ECC8, v11, MEMORY[0x277D6C7C0]);
  v90 = v21;
  v88 = *(v21 - 8);
  v89 = v21 - 8;
  v98 = v88;
  MEMORY[0x28223BE20](v21 - 8, v22);
  v86 = &v79[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24, v25);
  v97 = &v79[-v26];
  MEMORY[0x28223BE20](v27, v28);
  v103 = &v79[-v29];
  v31 = v6[5];
  v30 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v31);
  v99 = v30;
  v32 = *(v30 + 8);
  v33 = *(v32 + 8);
  v110[3] = v31;
  v110[4] = v30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v110);
  v93 = v31;
  v33(a2, v31, v32);
  sub_22046DA2C((v6 + 7), &v107);
  v34 = __swift_project_boxed_opaque_existential_1(&v107, v108);
  sub_22046DA2C(*v34 + 16, v105);
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v105, v106);
  v36 = MEMORY[0x28223BE20](v35, v35);
  v38 = &v79[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v39 + 16))(v38, v36);
  v40 = *v38;
  v41 = type metadata accessor for StockChartStyler();
  v104[3] = v41;
  v104[4] = &off_283413188;
  v104[0] = v40;
  v42 = type metadata accessor for StockChartPriceLabelFormatter();
  v43 = swift_allocObject();
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v104, v41);
  v45 = MEMORY[0x28223BE20](v44, v44);
  v47 = &v79[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v48 + 16))(v47, v45);
  v49 = *v47;
  *(v43 + 40) = v41;
  *(v43 + 48) = &off_283413188;
  *(v43 + 16) = v49;
  type metadata accessor for PriceFormatter();
  v50 = swift_allocObject();
  sub_22088524C();
  *(v43 + 72) = v50;
  *(v43 + 56) = a4 - a3 > 4.0;
  *(v43 + 64) = 2;
  __swift_destroy_boxed_opaque_existential_1(v104);
  __swift_destroy_boxed_opaque_existential_1(v105);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  v51 = v87;
  *v87 = (a4 - a3) * 0.25;
  v52 = v100 + 104;
  v53 = *(v100 + 104);
  v53(v51, *MEMORY[0x277D6C7E8], v101);
  v99[10](v31, a5);
  sub_2205B902C(0, &qword_28127ED70, MEMORY[0x277D839F8], MEMORY[0x277D6C6F0]);
  v108 = v42;
  v109 = sub_2205B8FE4(qword_281286148, type metadata accessor for StockChartPriceLabelFormatter);
  v107 = v43;

  v54 = sub_220890F0C();
  v55 = v95;
  *v95 = v54;
  v57 = v102 + 104;
  v56 = *(v102 + 104);
  v56(v55, *MEMORY[0x277D6C800], v96);
  v58 = MEMORY[0x277D839F8];
  sub_22089115C();
  sub_2205B902C(0, &qword_28127DEA8, v58, MEMORY[0x277D84560]);
  v83 = v59;
  v60 = swift_allocObject();
  v81 = xmmword_220899360;
  *(v60 + 16) = xmmword_220899360;
  *(v60 + 32) = a3;
  *v51 = v60;
  v82 = *MEMORY[0x277D6C7E0];
  v100 = v52;
  v85 = v53;
  (v53)(v51);
  v99[12](v93, a5);
  v80 = *MEMORY[0x277D6C7F8];
  v102 = v57;
  v84 = v56;
  (v56)(v55);
  v61 = v97;
  sub_22089115C();
  sub_2205B907C();
  v62 = *(v88 + 72);
  v63 = v98;
  v64 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v65 = v64 + 2 * v62;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_220899920;
  v67 = v66 + v64;
  v68 = *(v63 + 16);
  v69 = v90;
  v68(v67, v103, v90);
  v68(v67 + v62, v61, v69);
  v70 = sub_22088658C();
  if (v71)
  {

    v72 = *(v98 + 8);
    v72(v97, v69);
    v72(v103, v69);
  }

  else
  {
    v73 = v70;
    v74 = swift_allocObject();
    *(v74 + 16) = v81;
    *(v74 + 32) = v73;
    *v51 = v74;
    v85(v51, v82, v101);
    v99[13](v93, a5);
    v84(v95, v80, v96);
    v75 = v86;
    sub_22089115C();
    v66 = sub_220587B94(1uLL, 3, 1, v66);

    v76 = v98;
    v77 = *(v98 + 8);
    v77(v97, v69);
    v77(v103, v69);
    *(v66 + 16) = 3;
    (*(v76 + 32))(v66 + v65, v75, v69);
  }

  __swift_destroy_boxed_opaque_existential_1(v110);
  return v66;
}

char *sub_2205B885C(char *a1, uint64_t a2, double a3)
{
  v4 = v3;
  v90 = a1;
  v7 = MEMORY[0x277D837D0];
  sub_2205B902C(0, &qword_28127ECA8, MEMORY[0x277D837D0], MEMORY[0x277D6C808]);
  v89 = v8;
  v92 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v88 = (&v72 - v10);
  v11 = sub_2208911EC();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v86 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B902C(0, &qword_28127ECB8, v7, MEMORY[0x277D6C7F0]);
  v83 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v84 = (&v72 - v17);
  sub_2205B902C(0, &qword_28127ECD0, v7, MEMORY[0x277D6C7C0]);
  v87 = v18;
  v85 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v79 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v80 = &v72 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v91 = &v72 - v26;
  v27 = v4[5];
  v28 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v27);
  v29 = *(v28 + 8);
  v30 = *(v29 + 8);
  v96[3] = v27;
  v96[4] = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
  v30(a2, v27, v29);
  __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
  v32 = type metadata accessor for StockChartDescriptor();
  v33 = v90;
  v34 = sub_220600B30(v90, &v90[*(v32 + 24)]);
  v81 = v32;
  v35 = v84;
  *v84 = *&v33[*(v32 + 32)];
  v36 = *(v15 + 104);
  v74 = *MEMORY[0x277D6C7E0];
  v78 = v15 + 104;
  v73 = v36;
  v36(v35);
  v37 = *(v28 + 80);

  v75 = boxed_opaque_existential_1;
  v77 = v27;
  v76 = v28;
  v38 = v28;
  v39 = v80;
  v37(v27, v38, a3);
  sub_2205B902C(0, &qword_28127ED78, MEMORY[0x277D837D0], MEMORY[0x277D6C6F0]);
  v94 = type metadata accessor for StockChartCategoryLabelFormatter();
  v95 = sub_2205B8FE4(&qword_281284388, type metadata accessor for StockChartCategoryLabelFormatter);
  v93 = v34;
  v82 = v34;

  v40 = sub_220890EFC();
  v42 = v88;
  v41 = v89;
  *v88 = v40;
  v43 = *MEMORY[0x277D6C800];
  v44 = *(v92 + 104);
  v92 += 104;
  v44(v42, v43, v41);
  v45 = v85;
  v46 = v91;
  v47 = v87;
  sub_22089115C();
  (*(v45 + 16))(v39, v46, v47);
  v48 = sub_220587DD0(0, 1, 1, MEMORY[0x277D84F90]);
  v50 = *(v48 + 2);
  v49 = *(v48 + 3);
  if (v50 >= v49 >> 1)
  {
    v48 = sub_220587DD0(v49 > 1, v50 + 1, 1, v48);
  }

  *(v48 + 2) = v50 + 1;
  v51 = *(v45 + 32);
  v52 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v53 = *(v45 + 72);
  v51(&v48[v52 + v53 * v50], v39, v47);
  v54 = *&v90[*(v81 + 28)];
  v57 = *(v54 + 16);
  v55 = v54 + 16;
  v56 = v57;
  if (v57)
  {
    v81 = v52;
    v90 = v51;
    v58 = (v55 + 16 * v56);
    v60 = *v58;
    v59 = v58[1];
    sub_2205B902C(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_220899360;
    *(v61 + 32) = v60;
    *(v61 + 40) = v59;
    v62 = v84;
    *v84 = v61;
    v73(v62, v74, v83);
    v63 = v76;
    v64 = *(v76 + 88);

    v64(v77, v63, a3);
    v44(v88, *MEMORY[0x277D6C7F8], v89);
    v65 = v79;
    sub_22089115C();
    v67 = *(v48 + 2);
    v66 = *(v48 + 3);
    if (v67 >= v66 >> 1)
    {
      v48 = sub_220587DD0(v66 > 1, v67 + 1, 1, v48);
    }

    v68 = v85;
    v69 = v81;

    v70 = v87;
    (*(v68 + 8))(v91, v87);
    *(v48 + 2) = v67 + 1;
    (v90)(&v48[v69 + v67 * v53], v65, v70);
  }

  else
  {

    (*(v45 + 8))(v91, v47);
  }

  __swift_destroy_boxed_opaque_existential_1(v96);
  return v48;
}

uint64_t sub_2205B8FE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2205B902C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2205B907C()
{
  if (!qword_28127DF00)
  {
    sub_2205B902C(255, &qword_28127ECC8, MEMORY[0x277D839F8], MEMORY[0x277D6C7C0]);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DF00);
    }
  }
}

uint64_t sub_2205B90F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2205B9450();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220887F2C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v29 - v18;
  (*(v11 + 16))(&v29 - v18, v2, v10, v17);
  v20 = (*(v11 + 88))(v19, v10);
  if (v20 == *MEMORY[0x277D301C0])
  {
    (*(v11 + 8))(v19, v10);
    v21 = MEMORY[0x277D69010];
LABEL_5:
    v22 = *v21;
    v23 = sub_22088A0EC();
    return (*(*(v23 - 8) + 104))(a1, v22, v23);
  }

  if (v20 == *MEMORY[0x277D301B8])
  {
    (*(v11 + 8))(v19, v10);
    v21 = MEMORY[0x277D69000];
    goto LABEL_5;
  }

  if (v20 == *MEMORY[0x277D301C8])
  {
    (*(v11 + 96))(v19, v10);
    v25 = swift_projectBox();
    (*(v6 + 16))(v9, v25, v5);
    v26 = sub_22088F65C();
    sub_2205B90F8(v26);
    (*(v11 + 8))(v14, v10);
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v27 = *MEMORY[0x277D69008];
    v28 = sub_22088A0EC();
    (*(*(v28 - 8) + 104))(a1, v27, v28);
    return (*(v11 + 8))(v19, v10);
  }
}

void sub_2205B9450()
{
  if (!qword_27CF57438)
  {
    sub_220887F2C();
    sub_2205B94B4();
    v0 = sub_22088F66C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57438);
    }
  }
}

unint64_t sub_2205B94B4()
{
  result = qword_27CF57440;
  if (!qword_27CF57440)
  {
    sub_220887F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57440);
  }

  return result;
}

uint64_t sub_2205B950C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v57 = sub_22088D1DC();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v6);
  v8 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v55 - v11;
  sub_22044792C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v56 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v59 = &v55 - v18;
  sub_22044792C(0, qword_281295190, type metadata accessor for StocksActivity);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v55 - v21;
  v23 = type metadata accessor for StocksActivity(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a2;
  v67[0] = v28;
  sub_2205B9E44(a1, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_2204AAED0(v22, qword_281295190, type metadata accessor for StocksActivity);
  }

  sub_2205BAB74(v22, v27, type metadata accessor for StocksActivity);
  if (v28)
  {
    v30 = (v3 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_sceneProvider);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_sceneProvider), *(v3 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_sceneProvider + 24));
    v31 = sub_22088B89C();
    if (v31)
    {
      v32 = v31;
      __swift_project_boxed_opaque_existential_1(v30, v30[3]);
      v33 = v32;
      v34 = sub_22088B8AC();
      if (v28 == 1)
      {

        *v8 = v34;
        v52 = MEMORY[0x277D6E588];
      }

      else
      {
        if (v28 == 2)
        {

          *v8 = 0;
        }

        else
        {
          *v8 = v32;
        }

        v8[1] = v34;
        v52 = MEMORY[0x277D6E590];
      }

      v53 = v57;
      v54 = v58;
      (*(v58 + 104))(v8, *v52, v57);
      (*(v54 + 32))(v12, v8, v53);
      sub_22088B01C();

      (*(v54 + 8))(v12, v53);
      v51 = v27;
    }

    else
    {
      v51 = v27;
    }

    return sub_2205BA954(v51);
  }

  else
  {
    v35 = *(v3 + 80);
    v36 = *(v3 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_tracker);
    v37 = sub_22088969C();
    v38 = v59;
    (*(*(v37 - 8) + 56))(v59, 1, 1, v37);
    sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_contextBuilder, v67);
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    v64 = v35;
    sub_2205A0924(v65, &v60, &unk_281298970, &unk_281298980);
    if (v61)
    {
      sub_220458198(&v60, v62);
      v39 = sub_220597454(v62);
      v41 = v40;
      v43 = v42;
      __swift_destroy_boxed_opaque_existential_1(v62);
    }

    else
    {
      sub_2205A0B34(&v60, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v39 = qword_2812908F8;
      v41 = qword_281290900;
      v43 = qword_281290908;

      sub_2204A80F4(v41);
    }

    v61 = sub_22088731C();
    *&v60 = v36;
    v44 = v56;
    sub_2205A08A4(v38, v56);
    sub_2205A0924(v67, v62, &unk_281296D10, &qword_281296D20);
    v45 = (*(v55 + 80) + 24) & ~*(v55 + 80);
    v46 = (v14 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = v36;
    sub_2205A0994(v44, v47 + v45);
    v48 = v47 + v46;
    v49 = v62[1];
    *v48 = v62[0];
    *(v48 + 16) = v49;
    *(v48 + 32) = v63;
    v50 = (v47 + ((v46 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v50 = v39;
    v50[1] = v41;
    v50[2] = v43;
    swift_retain_n();

    sub_2204A80F4(v41);
    sub_2204549FC();
    sub_2204489A0(&unk_281297EC0, sub_2204549FC);
    sub_22088E92C();

    sub_2204DA45C(v41);
    sub_2205A0B34(v65, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(v67, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2204AAED0(v59, &qword_281298480, MEMORY[0x277D686D0]);
    sub_2205BA954(v27);
    return sub_2205A0B34(&v60, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  }
}

uint64_t sub_2205B9E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockFeedRouteModel();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205BAA80(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2205BAAE4();
    v13 = *&v11[*(v12 + 48)];
    sub_220447880();
    v15 = *(v14 + 48);
    v16 = sub_22088685C();
    v17 = *(v16 - 8);
    (*(v17 + 32))(a2, v11, v16);
    (*(v17 + 56))(a2, 0, 1, v16);
    *(a2 + v15) = v13;
  }

  else
  {
    sub_2205BAB74(v11, v7, type metadata accessor for StocksActivity.Article);
    sub_2205BAB74(v7, a2, type metadata accessor for StocksActivity.Article);
  }

  v18 = type metadata accessor for StocksActivity(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
}

uint64_t sub_2205BA054(uint64_t a1)
{
  v3 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedRouteModel();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044792C(0, qword_281295190, type metadata accessor for StocksActivity);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for StocksActivity(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205BAA80(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2205BAAE4();
    v21 = *&v10[*(v20 + 48)];
    sub_220447880();
    v23 = *(v22 + 48);
    v24 = sub_22088685C();
    v25 = *(v24 - 8);
    (*(v25 + 32))(v14, v10, v24);
    (*(v25 + 56))(v14, 0, 1, v24);
    *&v14[v23] = v21;
  }

  else
  {
    sub_2205BAB74(v10, v6, type metadata accessor for StocksActivity.Article);
    sub_2205BAB74(v6, v14, type metadata accessor for StocksActivity.Article);
  }

  swift_storeEnumTagMultiPayload();
  (*(v16 + 56))(v14, 0, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2204AAED0(v14, qword_281295190, type metadata accessor for StocksActivity);
    return 0;
  }

  else
  {
    sub_2205BAB74(v14, v19, type metadata accessor for StocksActivity);
    v27 = *(v1 + 80);
    v28 = *(v1 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_tracker);
    sub_22046DA2C(v1 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_contextBuilder, v36);
    v35[4] = v27;
    v35[3] = sub_22088731C();
    v35[0] = v28;
    sub_2205A0924(v36, v33, &unk_281296D10, &qword_281296D20);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    v30 = v33[1];
    *(v29 + 24) = v33[0];
    *(v29 + 40) = v30;
    *(v29 + 56) = v34;
    sub_2204549FC();
    sub_2204489A0(&unk_281297EC0, sub_2204549FC);
    swift_retain_n();
    v31 = sub_22088E91C();

    sub_2205A0B34(v36, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2205BA954(v19);
    sub_2205A0B34(v35, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    return v31;
  }
}

uint64_t sub_2205BA55C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + 40);
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 112);

      v4(ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2205BA61C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + 40);
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 120);

      v4(ObjectType, v2);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2205BA6DC()
{
  MEMORY[0x223D8B910](v0 + 16);
  sub_22054B9F8(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  v1 = OBJC_IVAR____TtC8StocksUI15StockFeedRouter_stock;
  v2 = sub_22088685C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_contextBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_baseStyler);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_offlineAlertControllerFactory);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_channelDataFactory);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI15StockFeedRouter_sceneProvider);
  return v0;
}

uint64_t sub_2205BA7CC()
{
  sub_2205BA6DC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockFeedRouter()
{
  result = qword_281292DC0;
  if (!qword_281292DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2205BA878()
{
  result = sub_22088685C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2205BA954(uint64_t a1)
{
  v2 = type metadata accessor for StocksActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2205BA9B0(uint64_t a1)
{
  sub_22044792C(0, &qword_281298480, MEMORY[0x277D686D0]);
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

uint64_t sub_2205BAA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedRouteModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2205BAAE4()
{
  if (!qword_27CF57448)
  {
    sub_22088685C();
    sub_22044792C(255, &qword_281297930, MEMORY[0x277D6DEA0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF57448);
    }
  }
}

uint64_t sub_2205BAB74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205BAC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(*v4 + 40);
  v8 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v7);
  return a4(a1, v7, v8);
}

uint64_t sub_2205BACC8(uint64_t a1)
{
  v3 = type metadata accessor for StockListWatchlistChangeBlueprintModifier();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v16 - v9;
  v12 = *(v11 + 20);
  v13 = sub_2208857BC();
  (*(*(v13 - 8) + 16))(&v10[v12], a1, v13);
  sub_22046DA2C(v1 + 16, &v10[v3[6]]);
  sub_22046DA2C(v1 + 136, &v10[v3[8]]);
  sub_22046DA2C(v1 + 56, &v10[v3[7]]);
  sub_22046DA2C(v1 + 216, &v10[v3[9]]);
  *v10 = 0x73696C6863746157;
  *(v10 + 1) = 0xEF65676E61684374;
  sub_2204AB3E0(v10, v6, type metadata accessor for StockListWatchlistChangeBlueprintModifier);
  sub_2204AB448();
  swift_allocObject();
  sub_22046F614(qword_281280188, type metadata accessor for StockListWatchlistChangeBlueprintModifier);
  v14 = sub_22088B66C();
  sub_2204AB57C(v10, type metadata accessor for StockListWatchlistChangeBlueprintModifier);
  return v14;
}

uint64_t sub_2205BAEAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StockListEmptyWatchlistBlueprintModifier();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2208863EC();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v12 = sub_220885FCC();
  sub_2204AB3E0(a1, &v11[v4[7]], type metadata accessor for AttributionSource);
  sub_22046DA2C(v2 + 216, &v11[v4[8]]);
  strcpy(v11, "EmptyWatchlist");
  v11[15] = -18;
  *&v11[v4[6]] = v12;
  sub_2204AB3E0(v11, v7, type metadata accessor for StockListEmptyWatchlistBlueprintModifier);
  sub_2204AB448();
  swift_allocObject();
  sub_22046F614(&qword_27CF57450, type metadata accessor for StockListEmptyWatchlistBlueprintModifier);
  v13 = sub_22088B66C();
  sub_2204AB57C(v11, type metadata accessor for StockListEmptyWatchlistBlueprintModifier);
  return v13;
}

uint64_t sub_2205BB0A4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);

  return swift_deallocClassInstance();
}

uint64_t sub_2205BB104()
{
  sub_2204AB448();
  swift_allocObject();
  sub_2205BBA1C();
  return sub_22088B66C();
}

uint64_t sub_2205BB170(uint64_t a1)
{
  v3 = type metadata accessor for StockListPriceChangeDisplayBlueprintModifier();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v17 - v9;
  v11 = *v1;
  v13 = *(v12 + 20);
  v14 = sub_220885D4C();
  (*(*(v14 - 8) + 16))(&v10[v13], a1, v14);
  sub_22046DA2C(v11 + 16, &v10[*(v3 + 24)]);
  strcpy(v10, "ChangeDisplay");
  *(v10 + 7) = -4864;
  sub_2204AB3E0(v10, v6, type metadata accessor for StockListPriceChangeDisplayBlueprintModifier);
  sub_2204AB448();
  swift_allocObject();
  sub_22046F614(qword_28127F990, type metadata accessor for StockListPriceChangeDisplayBlueprintModifier);
  v15 = sub_22088B66C();
  sub_2204AB57C(v10, type metadata accessor for StockListPriceChangeDisplayBlueprintModifier);
  return v15;
}

uint64_t sub_2205BB34C(uint64_t a1)
{
  v3 = *v1;
  sub_22046DA2C(v3 + 16, v8);
  sub_22046DA2C(v3 + 216, &v9);
  v7[0] = 0x745365766F6D6552;
  v7[1] = 0xEB000000006B636FLL;
  v8[5] = a1;
  sub_220589F34(v7, &v6);
  sub_2204AB448();
  swift_allocObject();
  sub_2205BB974();

  v4 = sub_22088B66C();
  sub_2205BB9C8(v7);
  return v4;
}

uint64_t sub_2205BB418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for StockListMoveStockBlueprintModifier();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v17 - v13);
  sub_22046DA2C(*v3 + 16, &v17 - v13 + 16);
  sub_2204AB3E0(a1, v14 + v7[6], type metadata accessor for StockViewModel);
  *v14 = 0x636F745365766F4DLL;
  v14[1] = 0xE90000000000006BLL;
  *(v14 + v7[7]) = a2;
  *(v14 + v7[8]) = a3;
  sub_2204AB3E0(v14, v10, type metadata accessor for StockListMoveStockBlueprintModifier);
  sub_2204AB448();
  swift_allocObject();
  sub_22046F614(&qword_27CF57468, type metadata accessor for StockListMoveStockBlueprintModifier);

  v15 = sub_22088B66C();
  sub_2204AB57C(v14, type metadata accessor for StockListMoveStockBlueprintModifier);
  return v15;
}

uint64_t sub_2205BB5D4(uint64_t a1)
{
  v2 = type metadata accessor for StockListNewsAttributionBlueprintModifier();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v13 - v8);
  sub_2204AB3E0(a1, &v13 + *(v10 + 20) - v8, type metadata accessor for AttributionSource);
  *v9 = 0x72756F537377654ELL;
  v9[1] = 0xEA00000000006563;
  sub_2204AB3E0(v9, v5, type metadata accessor for StockListNewsAttributionBlueprintModifier);
  sub_2204AB448();
  swift_allocObject();
  sub_22046F614(&qword_27CF57460, type metadata accessor for StockListNewsAttributionBlueprintModifier);
  v11 = sub_22088B66C();
  sub_2204AB57C(v9, type metadata accessor for StockListNewsAttributionBlueprintModifier);
  return v11;
}

uint64_t sub_2205BB750(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for StockListWatchlistPickerUpdateBlueprintModifier();
  MEMORY[0x28223BE20](updated, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v17 - v10;
  v13 = *(v12 + 20);
  v14 = sub_220886A4C();
  (*(*(v14 - 8) + 16))(&v11[v13], a1, v14);
  *v11 = 0xD000000000000015;
  *(v11 + 1) = 0x80000002208C3820;
  *&v11[*(updated + 24)] = a2;
  sub_2204AB3E0(v11, v7, type metadata accessor for StockListWatchlistPickerUpdateBlueprintModifier);
  sub_2204AB448();
  swift_allocObject();
  sub_22046F614(&qword_27CF57458, type metadata accessor for StockListWatchlistPickerUpdateBlueprintModifier);

  v15 = sub_22088B66C();
  sub_2204AB57C(v11, type metadata accessor for StockListWatchlistPickerUpdateBlueprintModifier);
  return v15;
}

unint64_t sub_2205BB974()
{
  result = qword_27CF57470;
  if (!qword_27CF57470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57470);
  }

  return result;
}

unint64_t sub_2205BBA1C()
{
  result = qword_2812823B8[0];
  if (!qword_2812823B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812823B8);
  }

  return result;
}

uint64_t sub_2205BBA98(void *a1, void (*a2)(char *))
{
  sub_2204ADA80(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_2205BBC2C(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_2208928BC() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_2208928BC() & 1) == 0)
  {
    return 0;
  }

  return sub_22063B1AC(v3, v7);
}

void *sub_2205BBCE8@<X0>(double a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v76 = a3;
  sub_220510C84();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for QuoteViewModel();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for QuoteViewLayoutOptions();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C31C();
  v20 = v19;
  sub_22088C22C();
  sub_220891A6C();
  v22 = v21;
  sub_22088C31C();
  sub_22088C20C();
  sub_220891A6C();
  v24 = v23;
  v25 = sub_22088C32C();
  (*(*(v25 - 8) + 16))(v18, a2, v25);
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  sub_220827F64(a1, v82);
  x = v82[0].origin.x;
  y = v82[0].origin.y;
  width = v82[0].size.width;
  height = v82[0].size.height;
  v30 = CGRectGetWidth(v82[0]);
  v110.origin.x = x;
  v110.origin.y = y;
  v110.size.width = width;
  v110.size.height = height;
  v31 = CGRectGetHeight(v110);
  sub_22088C1FC();
  v33 = v32;
  v34 = type metadata accessor for QuoteSummaryViewModel();
  sub_220513104(*&a1 + *(v34 + 20), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_220513B10(v9, sub_220510C84);
    sub_2205BC72C(&v94);
    v35 = 0;
    v74 = 0.0;
    MinY = 0.0;
    v78 = 0.0;
    v79 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    v39 = v18;
  }

  else
  {
    v77 = v20 - v22 - v24;
    v79 = 1.0 / v33;
    sub_2205BC7AC(v9, v14);
    __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
    sub_220827F64(*&v14, &v84);
    sub_220513B10(v14, type metadata accessor for QuoteViewModel);
    *&v81[96] = v89;
    *&v81[112] = v90;
    *&v81[128] = v91;
    *&v81[32] = v85;
    *&v81[48] = v86;
    *&v81[64] = v87;
    *&v81[80] = v88;
    *v81 = v84;
    sub_2205BC810(v81);
    v111.origin.x = 0.0;
    v111.origin.y = 0.0;
    v111.size.width = v30;
    v111.size.height = v31;
    v40 = CGRectGetWidth(v111) + 8.0;
    v41 = v84.origin.x;
    v42 = v31;
    v43 = v84.origin.y;
    size = v84.size;
    v45 = v77 < v79 + v40 + CGRectGetWidth(v84) + 13.0;
    v39 = v18;
    v46 = 0;
    v47 = 0;
    v48 = v30;
    v49 = v42;
    if (v45)
    {
      v50 = v30;
      v51 = v79 + CGRectGetHeight(*&v46) + 16.0;
      v112.origin.x = v41;
      v112.origin.y = v43;
      v112.size = size;
      v52 = CGRectGetWidth(v112);
      v113.origin.x = v41;
      v113.origin.y = v43;
      v113.size = size;
      v38 = CGRectGetHeight(v113);
      v114.origin.x = 0.0;
      v114.origin.y = 0.0;
      v114.size.width = v50;
      v114.size.height = v42;
      MinY = CGRectGetHeight(v114) + 8.0;
      v115.origin.x = 0.0;
      v115.origin.y = v51;
      v115.size.width = v52;
      v115.size.height = v38;
      v73 = CGRectGetMinY(v115) + v91;
      v116.origin.x = 0.0;
      v116.origin.y = v51;
      v78 = v52;
      v116.size.width = v52;
      v53 = v50;
      v116.size.height = v38;
      MaxY = CGRectGetMaxY(v116);
      v107 = *&v81[80];
      v108 = *&v81[96];
      v109[0] = *&v81[112];
      *(v109 + 9) = *&v81[121];
      v104 = *&v81[32];
      v105 = *&v81[48];
      v106 = *&v81[64];
      v55 = 1;
      v56 = 0;
      v74 = 0.0;
      v102 = *v81;
      v103 = *&v81[16];
      v37 = 0.0;
      goto LABEL_10;
    }

    v37 = v79 + CGRectGetWidth(*&v46) + 8.0 + 13.0;
    v117.origin.x = v41;
    v117.origin.y = v43;
    v117.size = size;
    v78 = CGRectGetWidth(v117);
    v118.origin.x = v41;
    v118.origin.y = v43;
    v118.size = size;
    v38 = CGRectGetHeight(v118);
    v119.origin.x = 0.0;
    v119.origin.y = 0.0;
    v119.size.width = v30;
    v119.size.height = v42;
    v74 = CGRectGetWidth(v119) + 8.0;
    v120.origin.x = 0.0;
    v120.origin.y = 0.0;
    v120.size.width = v30;
    v120.size.height = v42;
    MinY = CGRectGetMinY(v120);
    v121.origin.x = 0.0;
    v121.origin.y = 0.0;
    v121.size.width = v30;
    v121.size.height = v42;
    v36 = CGRectGetHeight(v121);
    v99 = *&v81[80];
    v100 = *&v81[96];
    v101[0] = *&v81[112];
    *(v101 + 9) = *&v81[121];
    v96 = *&v81[32];
    v97 = *&v81[48];
    v98 = *&v81[64];
    v94 = *v81;
    v95 = *&v81[16];
    v31 = v42;
    v35 = 0;
  }

  v73 = v83;
  v57 = 0;
  v58 = v30;
  v59 = v31;
  v60 = CGRectGetMaxY(*(&v35 - 1));
  v53 = v30;
  v51 = 0.0;
  v122.origin.y = 0.0;
  v122.origin.x = v37;
  v122.size.width = v78;
  v122.size.height = v38;
  v61 = CGRectGetMaxY(v122);
  v55 = 0;
  v108 = v100;
  v109[0] = v101[0];
  *(v109 + 9) = *(v101 + 9);
  v104 = v96;
  v105 = v97;
  v106 = v98;
  v107 = v99;
  v42 = v31;
  if (v60 > v61)
  {
    MaxY = v60;
  }

  else
  {
    MaxY = v61;
  }

  v56 = 0;
  v77 = v79;
  v79 = v36;
  v102 = v94;
  v103 = v95;
LABEL_10:
  v92[5] = v107;
  v92[6] = v108;
  v93[0] = v109[0];
  *(v93 + 9) = *(v109 + 9);
  v92[2] = v104;
  v92[3] = v105;
  v92[4] = v106;
  v92[0] = v102;
  v92[1] = v103;
  v62 = 0;
  v63 = v53;
  v64 = v42;
  CGRectGetMaxX(*(&v56 - 1));
  v123.origin.x = v37;
  v123.origin.y = v51;
  v65 = v53;
  v66 = v78;
  v123.size.width = v78;
  v123.size.height = v38;
  CGRectGetMaxX(v123);
  v69 = MEMORY[0x28223BE20](v67, v68).n128_u64[0];
  *(&v73 - 20) = 0.0;
  *(&v73 - 19) = 0.0;
  *(&v73 - 18) = v69;
  *(&v73 - 17) = MaxY;
  *(&v73 - 16) = 0.0;
  *(&v73 - 15) = 0.0;
  *(&v73 - 14) = v65;
  *(&v73 - 13) = v42;
  *(&v73 - 12) = v82;
  v70 = MinY;
  *(&v73 - 11) = v74;
  *(&v73 - 10) = v70;
  v71 = v79;
  *(&v73 - 9) = v77;
  *(&v73 - 8) = v71;
  *(&v73 - 7) = v37;
  *(&v73 - 6) = v51;
  *(&v73 - 5) = v66;
  *(&v73 - 4) = v38;
  *(&v73 - 3) = v92;
  *(&v73 - 2) = v73;
  *(&v73 - 8) = v55;
  sub_22088C18C();
  sub_220513B10(v39, type metadata accessor for QuoteViewLayoutOptions);
  memcpy(v81, v80, sizeof(v81));
  return memcpy(v76, v81, 0x1A1uLL);
}

double sub_2205BC494@<D0>(__int128 *a1@<X1>, __int128 *a2@<X2>, char a3@<W3>, uint64_t a4@<X8>, double a5@<D4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, double a14)
{
  v57 = a14;
  v56 = a13;
  v55 = a12;
  v54 = a11;
  v53 = a10;
  v52 = a9;
  v20 = a2[7];
  v64 = a2[6];
  v65[0] = v20;
  *(v65 + 9) = *(a2 + 121);
  v21 = a2[3];
  v60 = a2[2];
  v61 = v21;
  v22 = a2[5];
  v62 = a2[4];
  v63 = v22;
  v23 = a2[1];
  v58 = *a2;
  v59 = v23;
  v24 = a1[7];
  v72 = a1[6];
  v73 = v24;
  v74 = *(a1 + 16);
  v25 = a1[3];
  v68 = a1[2];
  v69 = v25;
  v26 = a1[5];
  v70 = a1[4];
  v71 = v26;
  v27 = a1[1];
  v66 = *a1;
  v67 = v27;
  v28 = sub_22088ABEC();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 104))(v33, *MEMORY[0x277D6D320], v28, v31);
  sub_22088ABDC();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  (*(v29 + 8))(v33, v28);
  *a4 = v35;
  *(a4 + 8) = v37;
  *(a4 + 16) = v39;
  *(a4 + 24) = v41;
  *(a4 + 32) = a5;
  *(a4 + 40) = a6;
  *(a4 + 48) = a7;
  *(a4 + 56) = a8;
  v42 = v73;
  *(a4 + 160) = v72;
  *(a4 + 176) = v42;
  *(a4 + 192) = v74;
  v43 = v69;
  *(a4 + 96) = v68;
  *(a4 + 112) = v43;
  v44 = v71;
  *(a4 + 128) = v70;
  *(a4 + 144) = v44;
  v45 = v67;
  *(a4 + 64) = v66;
  *(a4 + 80) = v45;
  v46 = v53;
  *(a4 + 200) = v52;
  *(a4 + 216) = v46;
  *(a4 + 232) = v54;
  *&v46 = v56;
  *(a4 + 248) = v55;
  *(a4 + 256) = v46;
  v47 = v65[0];
  *(a4 + 360) = v64;
  *(a4 + 376) = v47;
  *(a4 + 385) = *(v65 + 9);
  v48 = v61;
  *(a4 + 296) = v60;
  *(a4 + 312) = v48;
  v49 = v63;
  *(a4 + 328) = v62;
  *(a4 + 344) = v49;
  v50 = v59;
  *(a4 + 264) = v58;
  *(a4 + 280) = v50;
  *(a4 + 401) = *v75;
  *(a4 + 404) = *&v75[3];
  result = v57;
  *(a4 + 408) = v57;
  *(a4 + 416) = a3;
  return result;
}

double sub_2205BC72C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 136) = 1;
  return result;
}

uint64_t sub_2205BC7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2205BC820(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_watchlistSwitcherButton;
  *&v4[v10] = [objc_allocWithZone(sub_22088AC2C()) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_onWatchlistSwitcherMenuPresentation;
  sub_22049D9F4();
  *&v4[v11] = [objc_allocWithZone(v12) init];
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_onWatchlistSwitcherMenuPresentation];
  v15 = OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_watchlistSwitcherButton;
  v16 = *&v13[OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_watchlistSwitcherButton];
  v17 = v13;
  v18 = v14;
  v19 = v16;
  sub_22088E18C();

  [v17 addSubview_];
  return v17;
}

void sub_2205BCAA0()
{
  sub_2205BCB2C(&qword_281286D38);

  JUMPOUT(0x223D86790);
}

uint64_t sub_2205BCB2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockSearchSectionHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2205BCB6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v6 = *(a2 + 56);
  v7 = 56;
  if (*(a2 + 56))
  {
    v7 = 96;
  }

  sub_22046DA2C(*v5 + v7, rect);
  v8 = *&rect[24];
  v9 = *&rect[32];
  __swift_project_boxed_opaque_existential_1(rect, *&rect[24]);
  v10 = *(a2 + 80);
  v11 = *(v9 + 8);
  v12 = *(v11 + 8);
  v230 = v8;
  v231 = v9;
  __swift_allocate_boxed_opaque_existential_1(v229);
  v12(v10, v8, v11);
  __swift_destroy_boxed_opaque_existential_1(rect);
  sub_2205BE980(v6, v232, *(a2 + 64), v13);
  v14 = *(a2 + 72);
  v15 = *&v232[1];
  v219[0] = *&v232[2];
  sub_220891EFC();
  v17 = v16;
  v19 = v18;
  sub_220891EBC();
  v216 = v21;
  v217 = v20;
  v219[1] = v22;
  v208 = v23;
  v256.origin.x = 0.0;
  v200 = v17;
  v201 = -v15;
  v256.origin.y = -v15;
  v256.size.width = v17;
  v199 = v19;
  v256.size.height = v19;
  Width = CGRectGetWidth(v256);
  v24 = *v232;
  v25 = *&v232[3];
  v26 = (*(v9 + 16))(a1[1], a1[2], a1[3], a1[4], v8, v9);
  v27 = sub_220891D8C();
  [v27 lineHeight];
  v29 = v28;

  v187 = v26;
  sub_2205BEAF8(v26, rect, v24, floor(v29 + v29));
  v186 = *rect;
  v30 = *&rect[24];
  v31 = *&rect[32];
  v32 = (v24 - CGRectGetWidth(*&rect[8])) * 0.5;
  v257.origin.y = 0.0;
  v257.origin.x = (v24 - v25) * 0.5;
  v257.size.width = v25;
  v257.size.height = v25;
  v258.origin.y = CGRectGetMaxY(v257) + *&v232[4];
  v258.origin.x = v32;
  v258.size.width = v30;
  v258.size.height = v31;
  MaxY = CGRectGetMaxY(v258);
  v185 = v15;
  if (v14 <= 1)
  {
    v34 = v15;
  }

  else
  {
    v34 = 0.0;
  }

  v198 = v219[0] + v34;
  v35 = v24;
  v218 = v24;
  v219[0] = Width * 0.5 - v24 * 0.5;
  v36 = v233;
  v37 = v24 - v233 - v236;
  v38 = v236;
  v215 = v236;
  v39 = v237;
  v205 = v237;
  v40 = v238;
  v209 = v238;
  v41 = v37 - v237;
  v42 = v247;
  if (v14 > 1)
  {
    v42 = 0.0;
  }

  v212 = v42;
  v43 = v233;
  v44 = v233;
  v45 = v39 + CGRectGetMaxX(*&v38);
  sub_22088738C();
  v47 = v46;
  v48 = a1[7];
  v49 = a1[8];
  v202 = *(v9 + 24);
  v210 = v8;
  v50 = v202(a1[5], a1[6], v8, v9);
  sub_220891D9C();
  v52 = v51;

  v259.origin.y = 0.0;
  v259.origin.x = v45;
  v259.size.width = v47;
  v259.size.height = v52;
  MinX = CGRectGetMinX(v259);
  v260.origin.y = 0.0;
  v260.origin.x = v45;
  v260.size.width = v47;
  v260.size.height = v52;
  v53 = CGRectGetMaxY(v260);
  v182 = *(v9 + 32);
  v54 = v182(v48, v49, v8, v9);
  sub_220891D9C();
  v56 = v55;

  v261.origin.x = v219[0];
  v261.origin.y = v198;
  v261.size.width = v35;
  v261.size.height = MaxY;
  v57 = CGRectGetMaxY(v261);
  v262.origin.x = v215;
  v262.origin.y = v209;
  v262.size.width = v36;
  v262.size.height = v36;
  v58 = CGRectGetMaxY(v262);
  v263.origin.x = MinX;
  v263.origin.y = v53;
  v263.size.width = v41;
  v263.size.height = v56;
  v59 = CGRectGetMaxY(v263);
  if (v58 > v59)
  {
    v60 = v58;
  }

  else
  {
    v60 = v59;
  }

  v192 = v234;
  v195 = v212 + v57 + v234 + v235;
  v196 = v60;
  v264.origin.x = v215;
  v264.origin.y = v209;
  v264.size.width = v36;
  v264.size.height = v36;
  v61 = v205 + CGRectGetMaxX(v264);
  v62 = v41;
  sub_22088738C();
  v64 = v63;
  v65 = a1[11];
  v66 = a1[12];
  v67 = v202(a1[9], a1[10], v8, v9);
  sub_220891D9C();
  v69 = v68;

  v265.origin.y = 0.0;
  v265.origin.x = v61;
  v265.size.width = v64;
  v265.size.height = v69;
  v70 = CGRectGetMinX(v265);
  v266.origin.y = 0.0;
  v266.origin.x = v61;
  v266.size.width = v64;
  v266.size.height = v69;
  v71 = CGRectGetMaxY(v266);
  v72 = v182(v65, v66, v8, v9);
  sub_220891D9C();
  v74 = v73;

  v267.size.width = v218;
  v267.origin.x = v219[0];
  v267.origin.y = v195;
  v267.size.height = v196;
  v75 = CGRectGetMaxY(v267);
  v268.origin.x = v215;
  v268.origin.y = v209;
  v268.size.width = v36;
  v268.size.height = v36;
  v76 = CGRectGetMaxY(v268);
  v269.origin.x = v70;
  v77 = v62;
  v269.origin.y = v71;
  v269.size.width = v62;
  v269.size.height = v74;
  v78 = CGRectGetMaxY(v269);
  if (v76 <= v78)
  {
    v76 = v78;
  }

  v79 = v212 + v192 + v75;
  v80 = a1[14];
  if (v80)
  {
    v173 = a1[15];
    v176 = a1[16];
    v81 = a1[13];
    v270.origin.x = v215;
    v270.origin.y = v209;
    v270.size.width = v36;
    v270.size.height = v36;
    v206 = v205 + CGRectGetMaxX(v270);
    sub_22088738C();
    v83 = v82;
    v179 = v82;
    v84 = v202(v81, v80, v8, v9);
    sub_220891D9C();
    v86 = v85;
    v203 = v85;

    v271.origin.y = 0.0;
    v271.origin.x = v206;
    v271.size.width = v83;
    v271.size.height = v86;
    v180 = CGRectGetMinX(v271);
    v272.origin.y = 0.0;
    v272.origin.x = v206;
    v272.size.width = v83;
    v272.size.height = v86;
    v171 = CGRectGetMaxY(v272);
    v87 = v182(v173, v176, v8, v9);
    sub_220891D9C();
    v89 = v88;
    v183 = v88;

    v273.size.width = v218;
    v273.origin.x = v219[0];
    v273.origin.y = v79;
    v273.size.height = v76;
    v90 = v77;
    v177 = CGRectGetMaxY(v273);
    v274.origin.x = v215;
    v274.origin.y = v209;
    v274.size.width = v36;
    v274.size.height = v36;
    v91 = CGRectGetMaxY(v274);
    v275.origin.x = v180;
    v275.origin.y = v171;
    v275.size.width = v77;
    v275.size.height = v89;
    v92 = CGRectGetMaxY(v275);
    if (v91 <= v92)
    {
      v91 = v92;
    }

    v93 = v212 + v192 + v177;
    v94 = v14;
    v95 = 1.0;
    if (v14 <= 1)
    {
      v95 = 0.0;
    }

    v193 = v95;
    v276.origin.x = v215;
    v276.origin.y = v209;
    v276.size.width = v36;
    v276.size.height = v36;
    v277 = CGRectIntegral(v276);
    y = v277.origin.y;
    x = v277.origin.x;
    height = v277.size.height;
    v168 = v277.size.width;
    v277.origin.y = 0.0;
    v277.size.height = v203;
    v277.origin.x = v206;
    v277.size.width = v179;
    v278 = CGRectIntegral(v277);
    v96 = v278.origin.x;
    v97 = v278.origin.y;
    v98 = v278.size.width;
    v99 = v278.size.height;
    v278.origin.x = v180;
    v278.origin.y = v171;
    v278.size.width = v90;
    v278.size.height = v183;
    v279 = CGRectIntegral(v278);
    *rect = v219[0];
    v181 = v93;
    v184 = v91;
    *&rect[8] = v93;
    *&rect[16] = v218;
    *&rect[24] = v91;
    *&rect[32] = v193;
    *&rect[40] = x;
    *&rect[48] = y;
    *&rect[56] = v168;
    *&rect[64] = height;
    *&rect[72] = v96;
    *&rect[80] = v97;
    *&rect[88] = v98;
    *&rect[96] = v99;
    *&rect[104] = v279;
    sub_2205BC810(rect);
    v227 = *&rect[96];
    v228[0] = *&rect[112];
    *(v228 + 9) = *&rect[121];
    v223 = *&rect[32];
    v224 = *&rect[48];
    v226 = *&rect[80];
    v225 = *&rect[64];
    v222 = *&rect[16];
    v221 = *rect;
  }

  else
  {
    sub_2205BC72C(&v221);
    v181 = v212 + v192 + v75;
    v184 = v76;
    v94 = v14;
  }

  v254 = v227;
  v255[0] = v228[0];
  *(v255 + 9) = *(v228 + 9);
  v250 = v223;
  v251 = v224;
  v253 = v226;
  v252 = v225;
  v249 = v222;
  v248 = v221;
  v100 = a1[20];
  [v100 size];
  v207 = 0.0;
  v204 = 0.0;
  v101 = 0.0;
  v102 = 0.0;
  if (v103 > 0.0)
  {
    sub_220561394();
    [objc_opt_self() systemFontSize];
    v104 = sub_220891F2C();
    [v104 pointSize];
    v106 = v105;

    if (v106 < 20.0)
    {
      v102 = 24.0;
    }

    else
    {
      v102 = 28.0;
    }

    [v100 size];
    v108 = v102 * v107;
    [v100 size];
    v101 = v108 / v109;
    v280.origin.y = v216;
    v280.origin.x = v217;
    v280.size.width = v219[1];
    v280.size.height = v208;
    v110 = CGRectGetWidth(v280);
    v204 = v239;
    v207 = v110 * 0.5 - v101 * 0.5;
  }

  v111 = [objc_opt_self() defaultMetrics];
  v175 = v240;
  [v111 scaledValueForValue_];
  v172 = v112;

  v113 = *__swift_project_boxed_opaque_existential_1(v229, v230);
  v114 = type metadata accessor for WelcomeViewStyler();
  *&rect[32] = &off_283422E30;
  *&rect[24] = v114;
  *rect = v113;
  __swift_project_boxed_opaque_existential_1(rect, v114);
  v115 = a1[19];

  v116 = sub_2207CBF78(v115);
  if (sub_22088F0DC())
  {
    v117 = v246;
  }

  else
  {
    sub_220561394();
    [objc_opt_self() systemFontSize];
    v118 = sub_220891F2C();
    [v118 pointSize];
    v120 = v119;

    if (v120 >= 20.0)
    {
      v117 = v218;
    }

    else
    {
      v117 = v242 + 10.0;
    }
  }

  v194 = v117;
  [v116 boundingRectWithSize:3 options:0 context:?];
  v122 = v121;
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v281.origin.y = v216;
  v281.origin.x = v217;
  v281.size.width = v219[1];
  v281.size.height = v208;
  v169 = CGRectGetWidth(v281);
  v282.origin.y = v204;
  v282.origin.x = v207;
  v282.size.width = v101;
  v282.size.height = v102;
  v129 = CGRectGetMaxY(v282);
  v283.origin.x = v122;
  v283.origin.y = v124;
  v283.size.width = v126;
  v283.size.height = v128;
  v191 = CGRectGetHeight(v283);

  __swift_destroy_boxed_opaque_existential_1(rect);
  v130 = (*(v9 + 40))(a1[17], a1[18], v210, v9);
  [v130 boundingRectWithSize:35 options:0 context:{1.79769313e308, 1.79769313e308}];
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;

  sub_220561394();
  [objc_opt_self() systemFontSize];
  v139 = sub_220891F2C();
  [v139 pointSize];
  v141 = v140;

  v284.origin.x = v132;
  v284.origin.y = v134;
  v284.size.width = v136;
  v284.size.height = v138;
  v211 = CGRectGetHeight(v284) * v243;
  if (v141 >= 20.0)
  {
    v285.origin.x = v132;
    v285.origin.y = v134;
    v285.size.width = v136;
    v285.size.height = v138;
    v142 = CGRectGetHeight(v285) + 25.0;
    v143 = v211;
    if (v142 < v211)
    {
      v143 = v142;
    }

    v211 = v143;
  }

  v144 = v175 * 1.3;
  if (v175 * 1.3 >= v172)
  {
    v144 = v172;
  }

  v145 = v144 + v129;
  v286.origin.x = v217;
  v286.origin.y = v216;
  v286.size.width = v219[1];
  v286.size.height = v208;
  v146 = CGRectGetWidth(v286);
  v287.origin.x = v169 * 0.5 - v194 * 0.5;
  v287.origin.y = v145;
  v287.size.width = v194;
  v287.size.height = v191;
  v147 = CGRectGetMaxY(v287) + v241;
  v148 = v146 * 0.5;
  v149 = v242;
  v170 = v242;
  v150 = v148 - v242 * 0.5;
  v190 = v150;
  v288.origin.x = v217;
  v288.origin.y = v216;
  v288.size.width = v219[1];
  v288.size.height = v208;
  v151 = CGRectGetHeight(v288);
  v152 = v185 + v212 * 4.0;
  if (v94 > 1)
  {
    v152 = 0.0;
  }

  v153 = v152 + v151;
  v289.origin.x = v217;
  v289.origin.y = v216;
  v289.size.width = v219[1];
  v289.size.height = v208;
  v213 = CGRectGetWidth(v289);
  v290.origin.x = v150;
  v290.origin.y = v147;
  v290.size.width = v149;
  v290.size.height = v211;
  v154 = CGRectGetMaxY(v290) + v244;
  v291.origin.x = 0.0;
  v291.origin.y = v201;
  v291.size.width = v200;
  v291.size.height = v199;
  v155 = CGRectGetHeight(v291);
  v292.size.width = v218;
  v292.origin.x = v219[0];
  v292.origin.y = v181;
  v292.size.height = v184;
  v156 = v155 - (CGRectGetMaxY(v292) + v245);
  if (v154 > v156)
  {
    v156 = v154;
  }

  v157 = v153 - v156;
  v158 = v156;
  v293.origin.x = 0.0;
  v293.origin.y = v201;
  v293.size.width = v200;
  v293.size.height = v199;
  CGRectGetWidth(v293);
  v294.origin.x = v217;
  v294.origin.y = v216;
  v294.size.width = v219[1];
  v294.size.height = v208;
  CGRectGetHeight(v294);
  v295.origin.x = v217;
  v295.origin.y = v216;
  v295.size.width = v219[1];
  v295.size.height = v208;
  CGRectGetHeight(v295);
  v296.origin.x = 0.0;
  v296.origin.y = v157;
  v296.size.width = v213;
  v296.size.height = v158;
  CGRectGetHeight(v296);
  v297.origin.x = v190;
  v297.origin.y = v147;
  v297.size.width = v170;
  v297.size.height = v211;
  CGRectGetMaxY(v297);
  v298.origin.x = v190;
  v298.origin.y = v147;
  v298.size.width = v170;
  v298.size.height = v211;
  CGRectGetHeight(v298);
  v299.origin.x = v217;
  v299.origin.y = v216;
  v299.size.width = v219[1];
  v299.size.height = v208;
  CGRectGetHeight(v299);
  MEMORY[0x28223BE20](v159, v160);
  __asm { FMOV            V0.2D, #18.0 }

  sub_22088C18C();

  memcpy(rect, &v219[2], sizeof(rect));
  __swift_destroy_boxed_opaque_existential_1(v229);
  return memcpy(a3, rect, 0x310uLL);
}

void sub_2205BDB90(int a1@<W1>, void *a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>, double a12@<D7>, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, CGFloat a17, CGFloat a18, CGFloat a19, CGFloat a20, double a21, double a22, double a23, double a24, double a25, double a26, double a27, double a28, double a29, double a30, double a31, double a32, double a33, double a34, double a35, double a36, double a37, double a38, double a39, double a40, double a41, double a42, double a43, double a44, double a45, double a46, double a47, double a48, double a49, double a50, double a51, double a52, double a53, double a54, double a55, double a56, double a57, double a58, double a59, double a60, CGFloat a61, CGFloat a62, CGFloat a63)
{
  v256 = a2;
  LODWORD(v269) = a1;
  v277 = a12;
  v276 = a11;
  v275 = a10;
  v274 = a9;
  v265.size.height = a8;
  v265.size.width = a7;
  v265.origin.y = a6;
  v265.origin.x = a5;
  v273.size.height = a76;
  v273.size.width = a75;
  v273.origin.y = a74;
  v273.origin.x = a73;
  v272 = a72;
  v271 = a71;
  v270 = a70;
  v268 = a69;
  v267.size.height = a68;
  v267.size.width = a67;
  v267.origin.y = a66;
  v267.origin.x = a65;
  v266.size.height = a64;
  v266.size.width = a63;
  v266.origin.y = a62;
  v266.origin.x = a61;
  v239 = a57;
  v238 = a58;
  v237 = a59;
  v236 = a60;
  v231 = a53;
  v230 = a54;
  v215 = a3;
  v77 = a3[7];
  v308 = a3[6];
  v309[0] = v77;
  *(v309 + 9) = *(a3 + 121);
  v78 = a3[3];
  v304 = a3[2];
  v305 = v78;
  v79 = a3[4];
  v307 = a3[5];
  v306 = v79;
  v80 = *a3;
  v303 = a3[1];
  v302 = v80;
  v217 = a55;
  v216 = a56;
  v221 = a49;
  v220 = a50;
  v219 = a51;
  v218 = a52;
  v229 = a45;
  v228 = a46;
  v223 = a47;
  v222 = a48;
  v227 = a41;
  v226 = a42;
  v225 = a43;
  v224 = a44;
  v235 = a37;
  v234 = a38;
  v233 = a39;
  v232 = a40;
  v243 = a33;
  v242 = a34;
  v241 = a35;
  v240 = a36;
  v247 = a29;
  v246 = a30;
  v245 = a31;
  v244 = a32;
  v251 = a25;
  v250 = a26;
  v249 = a27;
  v248 = a28;
  v255 = a21;
  v254 = a22;
  v253 = a23;
  v252 = a24;
  v81 = sub_22088ABEC();
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v83);
  v85 = &v202 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = CGRectIntegral(v265);
  v265.size.height = v310.origin.x;
  v265.size.width = v310.origin.y;
  v265.origin.y = v310.size.width;
  v265.origin.x = v310.size.height;
  v310.origin.x = a13;
  v310.origin.y = a14;
  v310.size.width = a15;
  v310.size.height = a16;
  v311 = CGRectIntegral(v310);
  y = v311.origin.y;
  x = v311.origin.x;
  height = v311.size.height;
  width = v311.size.width;
  v311.origin.x = a17;
  v311.origin.y = a18;
  v311.size.width = a19;
  v311.size.height = a20;
  CGRectIntegral(v311);
  v86 = *MEMORY[0x277D6D320];
  v87 = *(v82 + 104);
  v87(v85, v86, v81);
  sub_22088ABDC();
  v259 = v89;
  v260 = v88;
  v257 = v91;
  v258 = v90;
  v92 = *(v82 + 8);
  v92(v85, v81);
  v214 = v92;
  v312.origin.y = v254;
  v312.origin.x = v255;
  v312.size.height = v252;
  v312.size.width = v253;
  CGRectIntegral(v312);
  v87(v85, v86, v81);
  sub_22088ABDC();
  v254 = v94;
  v255 = v93;
  v252 = v96;
  v253 = v95;
  v92(v85, v81);
  v256 = v256;
  v313.origin.y = v250;
  v313.origin.x = v251;
  v313.size.height = v248;
  v313.size.width = v249;
  v314 = CGRectIntegral(v313);
  v250 = v314.origin.y;
  v251 = v314.origin.x;
  v248 = v314.size.height;
  v249 = v314.size.width;
  v314.origin.y = v246;
  v314.origin.x = v247;
  v314.size.height = v244;
  v314.size.width = v245;
  v315 = CGRectIntegral(v314);
  v246 = v315.origin.y;
  v247 = v315.origin.x;
  v244 = v315.size.height;
  v245 = v315.size.width;
  v315.origin.y = v242;
  v315.origin.x = v243;
  v315.size.height = v240;
  v315.size.width = v241;
  CGRectIntegral(v315);
  v87(v85, v86, v81);
  sub_22088ABDC();
  v242 = v98;
  v243 = v97;
  v240 = v100;
  v241 = v99;
  v101 = v214;
  v214(v85, v81);
  v316.origin.y = v234;
  v316.origin.x = v235;
  v316.size.height = v232;
  v316.size.width = v233;
  CGRectIntegral(v316);
  v87(v85, v86, v81);
  sub_22088ABDC();
  v234 = v103;
  v235 = v102;
  v232 = v105;
  v233 = v104;
  v101(v85, v81);
  v317.origin.y = v226;
  v317.origin.x = v227;
  v317.size.height = v224;
  v317.size.width = v225;
  CGRectIntegral(v317);
  v87(v85, v86, v81);
  sub_22088ABDC();
  v226 = v107;
  v227 = v106;
  v224 = v109;
  v225 = v108;
  v101(v85, v81);
  v318.origin.y = v228;
  v318.origin.x = v229;
  v318.size.height = v222;
  v318.size.width = v223;
  v319 = CGRectIntegral(v318);
  v222 = v319.origin.y;
  v223 = v319.origin.x;
  v228 = v319.size.height;
  v229 = v319.size.width;
  v319.origin.y = v220;
  v319.origin.x = v221;
  v319.size.height = v218;
  v319.size.width = v219;
  CGRectIntegral(v319);
  v87(v85, v86, v81);
  sub_22088ABDC();
  v220 = v111;
  v221 = v110;
  v218 = v113;
  v219 = v112;
  v101(v85, v81);
  v320.origin.y = v230;
  v320.origin.x = v231;
  v320.size.height = v216;
  v320.size.width = v217;
  CGRectIntegral(v320);
  v87(v85, v86, v81);
  sub_22088ABDC();
  v230 = v115;
  v231 = v114;
  v216 = v117;
  v217 = v116;
  v101(v85, v81);
  v321.origin.y = v238;
  v321.origin.x = v239;
  v321.size.height = v236;
  v321.size.width = v237;
  CGRectIntegral(v321);
  v212 = v86;
  v213 = v87;
  v87(v85, v86, v81);
  v118 = v101;
  sub_22088ABDC();
  v238 = v120;
  v239 = v119;
  v236 = v122;
  v237 = v121;
  v101(v85, v81);
  v123 = v215[7];
  v300 = v215[6];
  v301[0] = v123;
  *(v301 + 9) = *(v215 + 121);
  v124 = v215[3];
  v296 = v215[2];
  v297 = v124;
  v125 = v215[4];
  v299 = v215[5];
  v298 = v125;
  v126 = v215[1];
  v294 = *v215;
  v295 = v126;
  if (sub_220590AEC(&v294) == 1)
  {
    v292 = v308;
    v293[0] = v309[0];
    *(v293 + 9) = *(v309 + 9);
    v288 = v304;
    v289 = v305;
    v290 = v306;
    v291 = v307;
    v127 = v303;
    v128 = v302;
  }

  else
  {
    v215 = v296;
    v208 = *&v301[0];
    v209 = *(&v300 + 1);
    v206 = *&v301[1];
    v207 = *(&v301[0] + 1);
    v210 = v295;
    v211 = v294;
    v129 = v212;
    v130 = v213;
    v213(v85, v212, v81);
    sub_22088ABDC();
    v204 = v132;
    v205 = v131;
    v202 = v134;
    v203 = v133;
    v118(v85, v81);
    v130(v85, v129, v81);
    sub_22088ABDC();
    v136 = v135;
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v118(v85, v81);
    v130(v85, v129, v81);
    sub_22088ABDC();
    v144 = v143;
    v146 = v145;
    v148 = v147;
    v150 = v149;
    v118(v85, v81);
    v278 = v211;
    v279 = v210;
    *&v280 = v215;
    *(&v280 + 1) = v205;
    *&v281 = v204;
    *(&v281 + 1) = v203;
    *&v282 = v202;
    *(&v282 + 1) = v136;
    *&v283 = v138;
    *(&v283 + 1) = v140;
    *&v284 = v142;
    *(&v284 + 1) = v144;
    *&v285[0] = v146;
    *(&v285[0] + 1) = v148;
    *&v285[1] = v150;
    sub_2205BC810(&v278);
    v292 = v284;
    v293[0] = v285[0];
    *(v293 + 9) = *(v285 + 9);
    v288 = v280;
    v289 = v281;
    v290 = v282;
    v291 = v283;
    v128 = v278;
    v127 = v279;
  }

  v286 = v128;
  v287 = v127;
  v151 = LOBYTE(v269);
  if (LOBYTE(v269))
  {
    v152 = 1.0;
  }

  else
  {
    v152 = 0.0;
  }

  if (LOBYTE(v269))
  {
    v153 = 1.0;
  }

  else
  {
    v153 = 0.65;
  }

  v322 = CGRectIntegral(v266);
  v269 = v322.origin.x;
  v266.size.height = v322.origin.y;
  v266.size.width = v322.size.width;
  v266.origin.y = v322.size.height;
  if (v151 >= 2)
  {
    v154 = 0.0;
  }

  else
  {
    v154 = 1.0;
  }

  if (v151 == 1)
  {
    v155 = 1.0;
  }

  else
  {
    v155 = 0.0;
  }

  if (v151 <= 1)
  {
    v156 = 0.0;
  }

  else
  {
    v156 = 1.0;
  }

  v323 = CGRectIntegral(v267);
  v267.size.height = v323.origin.x;
  v267.size.width = v323.origin.y;
  v267.origin.y = v323.size.width;
  v267.origin.x = v323.size.height;
  v323.origin.x = v268;
  v323.origin.y = v270;
  v323.size.width = v271;
  v323.size.height = v272;
  v324 = CGRectIntegral(v323);
  v157 = v324.origin.x;
  v158 = v324.origin.y;
  v272 = v324.size.width;
  v159 = v324.size.height;
  v325 = CGRectIntegral(v273);
  v160 = v265.size.width;
  *a4 = v265.size.height;
  *(a4 + 8) = v160;
  v161 = v265.origin.x;
  *(a4 + 16) = v265.origin.y;
  *(a4 + 24) = v161;
  v162 = v275;
  *(a4 + 32) = v274;
  *(a4 + 40) = v162;
  v163 = v277;
  *(a4 + 48) = v276;
  *(a4 + 56) = v163;
  v164 = y;
  *(a4 + 64) = x;
  *(a4 + 72) = v164;
  v165 = height;
  *(a4 + 80) = width;
  *(a4 + 88) = v165;
  *(a4 + 96) = v152;
  *(a4 + 104) = v153;
  v166 = v259;
  *(a4 + 112) = v260;
  *(a4 + 120) = v166;
  v167 = v257;
  *(a4 + 128) = v258;
  *(a4 + 136) = v167;
  v169 = v254;
  v168 = v255;
  *(a4 + 144) = v154;
  *(a4 + 152) = v168;
  v170 = v252;
  v171 = v253;
  *(a4 + 160) = v169;
  *(a4 + 168) = v171;
  *(a4 + 176) = v170;
  v172 = v250;
  *(a4 + 192) = v251;
  *(a4 + 200) = v172;
  v173 = v248;
  *(a4 + 208) = v249;
  *(a4 + 216) = v173;
  v175 = v246;
  v174 = v247;
  *(a4 + 224) = v155;
  *(a4 + 232) = v174;
  v176 = v244;
  v177 = v245;
  *(a4 + 240) = v175;
  *(a4 + 248) = v177;
  *(a4 + 256) = v176;
  v178 = v242;
  *(a4 + 272) = v243;
  *(a4 + 280) = v178;
  v179 = v240;
  *(a4 + 288) = v241;
  *(a4 + 296) = v179;
  v180 = v234;
  *(a4 + 304) = v235;
  *(a4 + 312) = v180;
  v181 = v232;
  *(a4 + 320) = v233;
  *(a4 + 328) = v181;
  v182 = v226;
  *(a4 + 336) = v227;
  *(a4 + 344) = v182;
  v183 = v224;
  *(a4 + 352) = v225;
  *(a4 + 360) = v183;
  v184 = v222;
  *(a4 + 368) = v223;
  *(a4 + 376) = v184;
  *(a4 + 184) = v256;
  *(a4 + 264) = v156;
  v185 = v228;
  *(a4 + 384) = v229;
  *(a4 + 392) = v185;
  v187 = v220;
  v186 = v221;
  *(a4 + 400) = v156;
  *(a4 + 408) = v186;
  v189 = v218;
  v188 = v219;
  *(a4 + 416) = v187;
  *(a4 + 424) = v188;
  v191 = v230;
  v190 = v231;
  *(a4 + 432) = v189;
  *(a4 + 440) = v190;
  v193 = v216;
  v192 = v217;
  *(a4 + 448) = v191;
  *(a4 + 456) = v192;
  v195 = v238;
  v194 = v239;
  *(a4 + 464) = v193;
  *(a4 + 472) = v194;
  v196 = v236;
  v197 = v237;
  *(a4 + 480) = v195;
  *(a4 + 488) = v197;
  *(a4 + 496) = v196;
  v198 = v293[0];
  *(a4 + 600) = v292;
  *(a4 + 616) = v198;
  *(a4 + 625) = *(v293 + 9);
  v199 = v289;
  *(a4 + 536) = v288;
  *(a4 + 552) = v199;
  v200 = v291;
  *(a4 + 568) = v290;
  *(a4 + 584) = v200;
  v201 = v287;
  *(a4 + 504) = v286;
  *(a4 + 520) = v201;
  *(a4 + 648) = v269;
  *(a4 + 656) = v266.size.height;
  *(a4 + 664) = v266.size.width;
  *(a4 + 672) = v266.origin.y;
  *(a4 + 680) = v156;
  *(a4 + 688) = v267.size.height;
  *(a4 + 696) = v267.size.width;
  *(a4 + 704) = v267.origin.y;
  *(a4 + 712) = v267.origin.x;
  *(a4 + 720) = v157;
  *(a4 + 728) = v158;
  *(a4 + 736) = v272;
  *(a4 + 744) = v159;
  *(a4 + 752) = v325;
}

void sub_2205BE75C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6)
{
  sub_2205BF038(a1, v16);
  if (v17)
  {
    sub_220561394();
    if (swift_dynamicCast())
    {
      v10 = *MEMORY[0x277D740A8];
      [a6 removeAttribute:*MEMORY[0x277D740A8] range:{a2, a3}];
      [v15 pointSize];
      v12 = round(v11 * a4 * 4.0) * 0.25;
      v13 = [v15 fontDescriptor];
      v14 = [objc_opt_self() fontWithDescriptor:v13 size:v12];

      [a6 addAttribute:v10 value:v14 range:{a2, a3}];
    }
  }

  else
  {
    sub_22056D130(v16);
  }
}

uint64_t sub_2205BE8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_2204A62A4(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_22056D130(v13);
}

uint64_t sub_2205BE980@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, float64x2_t a4@<Q1>)
{
  if (result)
  {
    __asm { FMOV            V3.2D, #-1.0 }

    *&_Q3 = a3 * 15.0 + 6.0;
    v11 = vaddq_f64(vmulq_n_f64(xmmword_22089DDD0, a3), xmmword_22089DDE0);
    v12 = xmmword_22089DDF0;
    v13 = xmmword_22089DE00;
    v14 = xmmword_22089DE10;
    v15 = xmmword_22089DE20;
    v16 = xmmword_22089DE30;
    v17 = xmmword_22089DE40;
    v18 = 24.0;
    v19 = 0x4071200000000000;
    v20 = 0x404A000000000000;
  }

  else
  {
    v21 = vmulq_n_f64(xmmword_22089DD50, a3);
    a4.f64[0] = 218.0;
    *&v22.f64[0] = *&vsubq_f64(a4, v21);
    v22.f64[1] = vaddq_f64(v21, vdupq_n_s64(0x405F400000000000uLL)).f64[1];
    v23 = v22;
    v24 = a3;
    result = sub_22088738C();
    v11 = v23;
    v18 = v24 * 26.0 + 22.0;
    v12 = xmmword_22089DD60;
    v13 = xmmword_22089DD70;
    v14 = xmmword_22089DD80;
    v15 = xmmword_22089DD90;
    v16 = xmmword_22089DDA0;
    _Q3 = xmmword_22089DDB0;
    v17 = xmmword_22089DDC0;
    v19 = 0x407EA00000000000;
  }

  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 24) = v17;
  *(a2 + 40) = v20;
  *(a2 + 48) = v18;
  *(a2 + 56) = _Q3;
  *(a2 + 72) = v16;
  *(a2 + 88) = v15;
  *(a2 + 104) = v14;
  *(a2 + 120) = v13;
  *(a2 + 136) = v12;
  *(a2 + 152) = 0x403E000000000000;
  return result;
}

void sub_2205BEAF8(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, CGFloat a4@<D1>)
{
  [a1 boundingRectWithSize:1 options:0 context:?];
  v34 = *MEMORY[0x277D740A8];
  v5 = a1;
  v6 = 0;
  v31 = 0.0;
  v7 = 0.75;
  v8 = 1.0;
  v9 = 7;
  v10 = 0.5;
  v29 = 0.0;
  v30 = 0.0;
  v28 = 0.0;
  v11 = v5;
  do
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v14 = [v5 length];
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v7;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_2205BF004;
    *(v16 + 24) = v15;
    aBlock[4] = sub_2205BF010;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2205BE8C0;
    aBlock[3] = &block_descriptor_5;
    v17 = _Block_copy(aBlock);
    v11 = v13;

    [v5 enumerateAttribute:v34 inRange:0 options:v14 usingBlock:{0, v17}];

    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
      return;
    }

    [v11 boundingRectWithSize:1 options:0 context:{a3, 1.79769313e308}];
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
    if (CGRectGetHeight(v36) <= a4)
    {

      v22 = v11;
      v10 = v7;
      v6 = v11;
      v30 = y;
      v31 = x;
      v28 = height;
      v29 = width;
    }

    else
    {
      v8 = v7;
    }

    if (v8 - v10 < 0.001)
    {
      break;
    }

    v7 = v10 + (v8 - v10) * 0.5;
    --v9;
  }

  while (v9);
  if (v6)
  {
    v37.origin.x = v31;
    v37.origin.y = v30;
    v37.size.width = v29;
    v37.size.height = v28;
    v23 = floor(CGRectGetMinX(v37));
    v38.origin.x = v31;
    v38.origin.y = v30;
    v38.size.width = v29;
    v38.size.height = v28;
    v24 = floor(CGRectGetMinY(v38));
    v39.origin.x = v31;
    v39.origin.y = v30;
    v39.size.width = v29;
    v39.size.height = v28;
    v25 = ceil(CGRectGetWidth(v39));
    v40.origin.x = v31;
    v40.origin.y = v30;
    v40.size.width = v29;
    v40.size.height = v28;
    v26 = CGRectGetHeight(v40);

    v11 = v6;
  }

  else
  {
    v41.origin.x = x;
    v41.origin.y = y;
    v41.size.width = width;
    v41.size.height = height;
    v23 = floor(CGRectGetMinX(v41));
    v42.origin.x = x;
    v42.origin.y = y;
    v42.size.width = width;
    v42.size.height = height;
    v24 = floor(CGRectGetMinY(v42));
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v25 = ceil(CGRectGetWidth(v43));
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = height;
    v26 = CGRectGetHeight(v44);
  }

  *a2 = v11;
  *(a2 + 8) = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v25;
  *(a2 + 32) = ceil(v26);
}

void sub_2205BEEBC(uint64_t a1@<X8>)
{
  v16 = *(v1 + 464);
  v17 = *(v1 + 488);
  v14 = *(v1 + 432);
  v15 = *(v1 + 448);
  v12 = *(v1 + 400);
  v13 = *(v1 + 416);
  v10 = *(v1 + 368);
  v11 = *(v1 + 384);
  v8 = *(v1 + 336);
  v9 = *(v1 + 352);
  v6 = *(v1 + 304);
  v7 = *(v1 + 320);
  v4 = *(v1 + 272);
  v5 = *(v1 + 288);
  v2 = *(v1 + 240);
  v3 = *(v1 + 256);
  sub_2205BDB90(*(v1 + 112), *(v1 + 184), *(v1 + 480), a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 192), *(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224), *(v1 + 232), *&v2, *(&v2 + 1), *&v3, *(&v3 + 1), *&v4, *(&v4 + 1), *&v5, *(&v5 + 1), *&v6, *(&v6 + 1), *&v7, *(&v7 + 1), *&v8, *(&v8 + 1), *&v9, *(&v9 + 1), *&v10, *(&v10 + 1), *&v11, *(&v11 + 1), *&v12, *(&v12 + 1), *&v13, *(&v13 + 1), *&v14, *(&v14 + 1), *&v15, *(&v15 + 1), *&v16, *(&v16 + 1), *&v17, *(&v17 + 1), *(v1 + 504));
}

uint64_t sub_2205BF038(uint64_t a1, uint64_t a2)
{
  sub_22055F87C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205BF0C4()
{
  result = type metadata accessor for QuoteSummaryViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2205BF150(uint64_t a1, void (*a2)(char *))
{
  sub_2205BF4DC(0, &qword_281297838, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  sub_2205BF44C();
  v11 = *(v10 + 48);
  sub_2205BF4DC(0, &qword_281296E78, MEMORY[0x277D6EC60]);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = *MEMORY[0x277D6D868];
  v14 = sub_22088B64C();
  (*(*(v14 - 8) + 104))(&v9[v11], v13, v14);
  (*(v6 + 104))(v9, *MEMORY[0x277D6DF70], v5);
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2205BF320()
{
  result = qword_27CF57488;
  if (!qword_27CF57488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57488);
  }

  return result;
}

uint64_t sub_2205BF404(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2205BF44C()
{
  if (!qword_281296E88)
  {
    sub_2205BF4DC(255, &qword_281296E78, MEMORY[0x277D6EC60]);
    sub_22088B64C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281296E88);
    }
  }
}

void sub_2205BF4DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockSearchSectionDescriptor();
    v8[1] = type metadata accessor for StockSearchModel();
    v8[2] = sub_2205BF404(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor);
    v8[3] = sub_2205BF404(&qword_281291EB0, type metadata accessor for StockSearchModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2205BF5D0()
{
  sub_22088FA1C();
  sub_22088FA0C();
  sub_2204F1480();
  sub_22088E7AC();
  if (v3)
  {
    sub_22088F45C();
    swift_dynamicCast();
  }

  else
  {
    sub_22056D130(v2);
  }

  type metadata accessor for ForYouFeedServiceConfig();
  sub_22044E1FC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
  v0 = sub_22088F9FC();

  return v0;
}

unint64_t PreBuyFlowRouteModel.identifier.getter()
{
  v1 = [*v0 itemID];
  if (!v1)
  {
    return 0xD000000000000014;
  }

  v2 = v1;
  v3 = sub_22089136C();

  return v3;
}

unint64_t sub_2205BF758()
{
  v1 = [*v0 itemID];
  if (!v1)
  {
    return 0xD000000000000014;
  }

  v2 = v1;
  v3 = sub_22089136C();

  return v3;
}

void sub_2205BF7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v52 = sub_22088831C();
  v61 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v4);
  v51 = (v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for StockFeedPrewarmBlueprintModifier();
  v56 = *(v6 - 8);
  v7 = *(v56 + 64);
  v8 = v6 - 8;
  MEMORY[0x28223BE20](v6 - 8, v9);
  v60 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + *(v10 + 28)), *(v3 + *(v10 + 28) + 24));
  sub_22044D7C0(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
  v11 = sub_22088685C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220899360;
  (*(v12 + 16))(v14 + v13, v3, v11);
  sub_22088632C();

  v57 = type metadata accessor for StockFeedPrewarmBlueprintModifier;
  v15 = v60;
  sub_2205C4544(v3, v60, type metadata accessor for StockFeedPrewarmBlueprintModifier);
  v16 = *(v56 + 80);
  v53 = ((v16 + 16) & ~v16) + v7;
  v17 = (v16 + 16) & ~v16;
  v55 = v17;
  v56 = v16;
  v18 = swift_allocObject();
  v54 = type metadata accessor for StockFeedPrewarmBlueprintModifier;
  sub_2205C4640(v15, v18 + v17, type metadata accessor for StockFeedPrewarmBlueprintModifier);
  v19 = sub_220888D9C();
  sub_22045987C(0);
  v50 = sub_220888E4C();

  v44 = v8;
  v20 = (v3 + *(v8 + 32));
  v21 = v20[3];
  v49 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_22088681C();
  v48 = *(v8 + 44);
  sub_22088596C();
  v22 = v51;
  *v51 = v23;
  v46 = *MEMORY[0x277D6CA40];
  v24 = v61;
  v45 = *(v61 + 104);
  v25 = v52;
  v45(v22);
  v49 = sub_2208860FC();

  v26 = *(v24 + 8);
  v61 = v24 + 8;
  v47 = v26;
  v26(v22, v25);
  v27 = v44;
  v43[1] = *(v3 + *(v44 + 64) + 8);
  v43[0] = swift_getObjectType();
  sub_22088681C();
  sub_22088590C();
  *v22 = v28;
  (v45)(v22, v46, v25);
  v29 = sub_2207D4608();

  v47(v22, v25);
  __swift_project_boxed_opaque_existential_1((v3 + *(v27 + 36)), *(v3 + *(v27 + 36) + 24));
  sub_220885F3C();
  v30 = sub_220888D9C();
  sub_22048E0A4(0);
  sub_220888E3C();

  v31 = sub_220888D9C();
  v32 = sub_220888EFC();

  v62 = v50;
  v63 = v49;
  v64 = v29;
  v65 = v32;
  sub_2205C4160();
  sub_220888FBC();
  v33 = v60;
  sub_2205C4544(v3, v60, v57);
  v34 = (v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_2205C4640(v33, v35 + v55, v54);
  v36 = (v35 + v34);
  v38 = v58;
  v37 = v59;
  *v36 = v58;
  v36[1] = v37;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2205C4228;
  *(v39 + 24) = v35;

  v40 = sub_220888D9C();
  sub_220888E4C();

  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = v37;

  v42 = sub_220888D9C();
  sub_220888E9C();
}

uint64_t sub_2205BFEF8@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2205C0084(uint64_t a1, uint64_t a2, int *a3, char *a4, char *a5, void (*a6)(char *), uint64_t a7)
{
  v454 = a7;
  v455 = a6;
  v509 = a5;
  v437 = a4;
  v491 = a3;
  v487 = a2;
  v506 = a1;
  sub_2205C43C0(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v453 = v7;
  v452 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v451 = &v405 - v9;
  v450 = sub_22088519C();
  v421 = *(v450 - 8);
  MEMORY[0x28223BE20](v450, v10);
  v420 = &v405 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220455030(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v418 = &v405 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v440 = &v405 - v17;
  v444 = sub_22088516C();
  v468 = *(v444 - 8);
  MEMORY[0x28223BE20](v444, v18);
  v419 = &v405 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v447 = sub_22088543C();
  v446 = *(v447 - 8);
  MEMORY[0x28223BE20](v447, v20);
  v462 = &v405 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v441 = &v405 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v422 = &v405 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v463 = &v405 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v480 = &v405 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v438 = &v405 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v461 = &v405 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v479 = &v405 - v42;
  sub_2205C4358(0);
  MEMORY[0x28223BE20](v43 - 8, v44);
  v445 = &v405 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v443 = type metadata accessor for StockEarningsModel();
  v442 = *(v443 - 8);
  MEMORY[0x28223BE20](v443, v46);
  v448 = &v405 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v505 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v505, v48);
  v483 = (&v405 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22055D328();
  v499 = v50;
  v504 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v51);
  v481 = &v405 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D524();
  MEMORY[0x28223BE20](v53 - 8, v54);
  v498 = &v405 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v507 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v507, v56);
  v492 = (&v405 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22055CE80(0);
  v59 = v58;
  v484 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v60);
  v501 = &v405 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62, v63);
  v449 = &v405 - v64;
  MEMORY[0x28223BE20](v65, v66);
  v482 = &v405 - v67;
  v460 = sub_2208852DC();
  v436 = *(v460 - 8);
  MEMORY[0x28223BE20](v460, v68);
  v477 = &v405 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = sub_2208857EC();
  v432 = *(v433 - 8);
  MEMORY[0x28223BE20](v433, v70);
  v431 = &v405 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454E0C(0);
  MEMORY[0x28223BE20](v72 - 8, v73);
  v408 = &v405 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205C438C(0);
  MEMORY[0x28223BE20](v75 - 8, v76);
  v407 = &v405 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = sub_22088699C();
  v467 = *(v457 - 8);
  MEMORY[0x28223BE20](v457, v78);
  v466 = &v405 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80, v81);
  v426 = &v405 - v82;
  v456 = type metadata accessor for PriceViewModel();
  v406 = *(v456 - 8);
  MEMORY[0x28223BE20](v456, v83);
  v414 = (&v405 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  v459 = type metadata accessor for QuoteViewModel();
  v430 = *(v459 - 8);
  MEMORY[0x28223BE20](v459, v85);
  v415 = &v405 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D7C0(0, qword_281293F78, type metadata accessor for QuoteViewModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v87 - 8, v88);
  v413 = &v405 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90, v91);
  v427 = &v405 - v92;
  v490 = sub_22088676C();
  v478 = *(v490 - 8);
  MEMORY[0x28223BE20](v490, v93);
  v458 = &v405 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = type metadata accessor for QuoteSummaryViewModel();
  MEMORY[0x28223BE20](v434, v95);
  v435 = (&v405 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
  v476 = sub_2208854FC();
  v489 = *(v476 - 8);
  MEMORY[0x28223BE20](v476, v97);
  v424 = &v405 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99, v100);
  v473 = &v405 - v101;
  v493 = sub_220885D4C();
  v486 = *(v493 - 8);
  MEMORY[0x28223BE20](v493, v102);
  v405 = &v405 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v104, v105);
  v485 = &v405 - v106;
  MEMORY[0x28223BE20](v107, v108);
  v495 = &v405 - v109;
  sub_2205C41F4(0);
  MEMORY[0x28223BE20](v110 - 8, v111);
  v488 = &v405 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v113, v114);
  v116 = &v405 - v115;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v117 - 8, v118);
  v412 = &v405 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v120, v121);
  v411 = &v405 - v122;
  MEMORY[0x28223BE20](v123, v124);
  v410 = &v405 - v125;
  MEMORY[0x28223BE20](v126, v127);
  v417 = &v405 - v128;
  MEMORY[0x28223BE20](v129, v130);
  v416 = &v405 - v131;
  MEMORY[0x28223BE20](v132, v133);
  v409 = &v405 - v134;
  MEMORY[0x28223BE20](v135, v136);
  v425 = &v405 - v137;
  MEMORY[0x28223BE20](v138, v139);
  v423 = &v405 - v140;
  MEMORY[0x28223BE20](v141, v142);
  v469 = &v405 - v143;
  MEMORY[0x28223BE20](v144, v145);
  v147 = &v405 - v146;
  v148 = sub_22088685C();
  v471 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v149);
  v494 = &v405 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v151, v152);
  v510 = &v405 - v153;
  MEMORY[0x28223BE20](v154, v155);
  v157 = &v405 - v156;
  v474 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v474, v158);
  v497 = &v405 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220587530();
  MEMORY[0x28223BE20](v160 - 8, v161);
  sub_2205C43C0(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v503 = v162;
  v439 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v163);
  v165 = &v405 - v164;
  v166 = sub_2205C4024(&qword_281297DF8, sub_22055CE80);
  v167 = sub_2205C4024(&qword_281297E00, sub_22055CE80);
  v168 = MEMORY[0x277D84F90];
  v508 = v59;
  MEMORY[0x223D80A10](MEMORY[0x277D84F90], v59, v166, v167);
  v169 = sub_2205C4024(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  v170 = sub_2205C4024(&qword_281293DD0, type metadata accessor for StockFeedModel);
  v502 = v165;
  v500 = v169;
  v171 = v471;
  v496 = v170;
  sub_22088E7CC();
  v172 = *(v171 + 16);
  v470 = v157;
  v173 = v509;
  v513 = v148;
  v174 = v148;
  v175 = v437;
  v511 = v172;
  v512 = v171 + 16;
  v172(v157, v509, v174);
  v472 = v147;
  sub_2205C4544(v506, v147, sub_22045987C);
  v475 = v116;
  sub_2205C4544(v491, v116, sub_2205C41F4);
  v491 = type metadata accessor for StockFeedPrewarmBlueprintModifier();
  v176 = *(v486 + 16);
  v177 = &v173[v491[8]];
  v178 = v493;
  v465 = v486 + 16;
  v464 = v176;
  v176(v495, v177, v493);
  v179 = v175[2];
  if (v179)
  {
    v516 = v168;
    sub_22048EE54(0, v179, 0);
    v168 = v516;
    v180 = v175 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
    v181 = *(v171 + 72);
    v182 = (v171 + 8);
    do
    {
      v183 = v510;
      v184 = v513;
      v511(v510, v180, v513);
      v185 = sub_22088681C();
      v187 = v186;
      (*v182)(v183, v184);
      v516 = v168;
      v189 = *(v168 + 16);
      v188 = *(v168 + 24);
      if (v189 >= v188 >> 1)
      {
        sub_22048EE54((v188 > 1), v189 + 1, 1);
        v168 = v516;
      }

      *(v168 + 16) = v189 + 1;
      v190 = v168 + 16 * v189;
      *(v190 + 32) = v185;
      *(v190 + 40) = v187;
      v180 += v181;
      --v179;
    }

    while (v179);
    v178 = v493;
  }

  v191 = v509;
  v516 = sub_22088681C();
  v517 = v192;
  MEMORY[0x28223BE20](v516, v192);
  *(&v405 - 2) = &v516;
  v193 = sub_2206A3BCC(sub_2205AB898, (&v405 - 4), v168);

  if (v193)
  {
    v194 = 0;
  }

  else
  {
    v194 = 2;
  }

  LODWORD(v510) = v194;
  v195 = &v191[v491[13]];
  v196 = *(v195 + 3);
  v437 = v195;
  __swift_project_boxed_opaque_existential_1(v195, v196);
  v197 = sub_2208861AC();
  v198 = v497;
  v199 = v470;
  v200 = v513;
  v201 = v511;
  v511(v497, v470, v513);
  v202 = v474;
  v203 = v472;
  sub_2205C4544(v472, v198 + *(v474 + 20), sub_22045987C);
  v204 = v198 + *(v202 + 24);
  v205 = v475;
  sub_2205C4544(v475, v204, sub_2205C41F4);
  v201(v494, v199, v200);
  v206 = v469;
  sub_2205C4544(v203, v469, sub_22045987C);
  sub_2205C4544(v205, v488, sub_2205C41F4);
  v464(v485, v495, v178);
  sub_220886BCC();
  sub_220886BAC();
  v207 = v490;
  v208 = v473;
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v209 = v423;
  sub_2205C4544(v206, v423, sub_22045987C);
  v210 = v478;
  v211 = v478 + 48;
  v212 = *(v478 + 48);
  v213 = v212(v209, 1, v207);
  v429 = v211;
  v428 = v212;
  v214 = v458;
  if (v213 == 1)
  {
    sub_2204B39C4(v209, sub_22045987C);
    v215 = v425;
    (*(v210 + 56))(v425, 1, 1, v207);
    v216 = v426;
    sub_2208867CC();
    v217 = v409;
    sub_2205C4544(v215, v409, sub_22045987C);
    if (v212(v217, 1, v207) == 1)
    {
      sub_2204B39C4(v217, sub_22045987C);
      v465 = 0;
      LODWORD(v464) = 1;
    }

    else
    {
      v465 = sub_22088675C();
      LODWORD(v464) = v233;
      (*(v210 + 8))(v217, v207);
    }

    v234 = v467;
    v235 = v466;
    v236 = v410;
    sub_2205C4544(v215, v410, sub_22045987C);
    if (v212(v236, 1, v207) == 1)
    {
      sub_2204B39C4(v236, sub_22045987C);
      v458 = 0;
      LODWORD(v427) = 1;
    }

    else
    {
      v458 = sub_22088666C();
      LODWORD(v427) = v239;
      (*(v210 + 8))(v236, v207);
    }

    v240 = v207;
    v241 = v412;
    v242 = v411;
    sub_2205C4544(v215, v411, sub_22045987C);
    if (v212(v242, 1, v240) == 1)
    {
      sub_2204B39C4(v242, sub_22045987C);
      v424 = 0;
      LODWORD(v423) = 1;
    }

    else
    {
      v424 = sub_22088671C();
      LODWORD(v423) = v243;
      (*(v210 + 8))(v242, v240);
    }

    sub_2205C4544(v215, v241, sub_22045987C);
    if (v212(v241, 1, v240) == 1)
    {
      sub_2204B39C4(v241, sub_22045987C);
      v413 = 0;
      v244 = 0;
    }

    else
    {
      v413 = sub_22088668C();
      v244 = v245;
      (*(v210 + 8))(v241, v240);
    }

    v246 = *(v234 + 16);
    v247 = v235;
    v248 = v235;
    v249 = v457;
    v246(v247, v216, v457);
    v250 = v432;
    v251 = v431;
    v252 = v433;
    (*(v432 + 104))(v431, *MEMORY[0x277D69288], v433);
    v253 = v477;
    sub_22088524C();
    v254 = v414;
    *v414 = v465;
    *(v254 + 8) = v464 & 1;
    *(v254 + 16) = v458;
    *(v254 + 24) = v427 & 1;
    *(v254 + 32) = v424;
    *(v254 + 40) = v423 & 1;
    *(v254 + 48) = v413;
    *(v254 + 56) = v244;
    v255 = v456;
    v246((v254 + *(v456 + 40)), v248, v249);
    *(v254 + 64) = 9666786;
    *(v254 + 72) = 0xA300000000000000;
    (*(v250 + 16))(v254 + *(v255 + 36), v251, v252);
    v256 = v436;
    (*(v436 + 16))(v254 + *(v255 + 44), v253, v460);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v257 = qword_2812B6B48;
    (*(v250 + 8))(v251, v252);
    v258 = *(v467 + 8);
    v258(v466, v249);
    v258(v426, v249);
    sub_2204B39C4(v425, sub_22045987C);
    (*(v489 + 8))(v473, v476);
    sub_2204B39C4(v488, sub_2205C41F4);
    sub_2204B39C4(v469, sub_22045987C);
    v259 = *(v471 + 8);
    v260 = v513;
    v259(v494, v513);
    v261 = v486;
    v262 = v493;
    (*(v486 + 8))(v495, v493);
    sub_2204B39C4(v475, sub_2205C41F4);
    sub_2204B39C4(v472, sub_22045987C);
    v259(v470, v260);
    v263 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v256 + 40))(v257 + v263, v477, v460);
    swift_endAccess();
    v264 = v459;
    v265 = *(v459 + 24);
    v266 = type metadata accessor for QuoteSummaryTimeRange();
    v267 = v415;
    (*(*(v266 - 8) + 56))(&v415[v265], 1, 1, v266);
    sub_2205C4640(v254, v267, type metadata accessor for PriceViewModel);
    (*(v261 + 32))(v267 + *(v264 + 20), v485, v262);
    v268 = v435;
    (*(v430 + 56))(v435 + *(v434 + 20), 1, 1, v264);
    sub_2205C4640(v267, v268, type metadata accessor for QuoteViewModel);
    v269 = v499;
    v270 = v481;
  }

  else
  {
    (*(v210 + 32))(v458, v209, v207);
    v218 = sub_220656950(v208, v214, v488);
    v425 = v219;
    LODWORD(v423) = v220;
    (*(v489 + 104))(v424, *MEMORY[0x277D69120], v476, v218);
    sub_2205C4024(&qword_281299398, MEMORY[0x277D69160]);
    sub_22089167C();
    sub_22089167C();
    if (v516 == v514 && v517 == v515)
    {
      v221 = 1;
    }

    else
    {
      v221 = sub_2208928BC();
    }

    v222 = *(v489 + 8);
    v489 += 8;
    v222(v424, v476);

    v426 = v222;
    if (v221)
    {
      v223 = v466;
      sub_2208867CC();
      v224 = v407;
      sub_22069DDE0(v223, v197 & 1, v407);
      (*(v467 + 8))(v223, v457);
      v225 = v405;
      v226 = v493;
      v464(v405, v485, v493);
      v227 = v197 & 1;
      v228 = v408;
      sub_22069E5AC(v227, v408);
      v229 = (*(v406 + 48))(v224, 1, v456);
      v230 = v413;
      if (v229 == 1)
      {
        sub_2204B39C4(v228, sub_220454E0C);
        (*(v486 + 8))(v225, v226);
        sub_2204B39C4(v224, sub_2205C438C);
        v231 = 1;
        v232 = v459;
      }

      else
      {
        sub_2205C4640(v224, v413, type metadata accessor for PriceViewModel);
        v271 = v226;
        v272 = v459;
        (*(v486 + 32))(v230 + *(v459 + 20), v225, v271);
        sub_2205C4640(v228, v230 + *(v272 + 24), sub_220454E0C);
        v232 = v272;
        v231 = 0;
      }

      v237 = v430;
      v238 = v427;
    }

    else
    {
      v231 = 1;
      v232 = v459;
      v237 = v430;
      v238 = v427;
      v230 = v413;
    }

    (*(v237 + 56))(v230, v231, 1, v232);
    sub_2205C45AC(v230, v238);
    v430 = sub_22088675C();
    LODWORD(v424) = v273;
    v274 = sub_22088671C();
    v276 = v275;
    v277 = sub_22088668C();
    v279 = v278;
    v280 = v466;
    sub_2208867CC();
    v281 = v432;
    v282 = v431;
    v283 = v433;
    (*(v432 + 104))(v431, *MEMORY[0x277D69288], v433);
    v284 = v477;
    sub_22088524C();
    v285 = v435;
    *v435 = v430;
    *(v285 + 8) = v424 & 1;
    v285[2] = v425;
    *(v285 + 24) = v423 & 1;
    v285[4] = v274;
    *(v285 + 40) = v276 & 1;
    v285[6] = v277;
    v285[7] = v279;
    v268 = v285;
    v286 = v456;
    v287 = v467;
    v288 = v457;
    (*(v467 + 16))(v285 + *(v456 + 40), v280, v457);
    *(v268 + 64) = 9666786;
    *(v268 + 72) = 0xA300000000000000;
    (*(v281 + 16))(v268 + *(v286 + 36), v282, v283);
    v289 = v436;
    v290 = v284;
    v291 = v460;
    (*(v436 + 16))(v268 + *(v286 + 44), v290, v460);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v292 = qword_2812B6B48;
    (*(v281 + 8))(v282, v283);
    (*(v287 + 8))(v280, v288);
    v293 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v289 + 40))(v292 + v293, v477, v291);
    swift_endAccess();
    v294 = v459;
    v295 = v485;
    v296 = v493;
    v464((v268 + *(v459 + 20)), v485, v493);
    v297 = v268 + *(v294 + 24);
    v298 = v473;
    v299 = v458;
    sub_22069E834(v473, v297);
    (*(v478 + 8))(v299, v490);
    (v426)(v298, v476);
    v300 = *(v486 + 8);
    v300(v295, v296);
    sub_2204B39C4(v488, sub_2205C41F4);
    sub_2204B39C4(v469, sub_22045987C);
    v301 = *(v471 + 8);
    v302 = v513;
    v301(v494, v513);
    v300(v495, v296);
    sub_2204B39C4(v475, sub_2205C41F4);
    sub_2204B39C4(v472, sub_22045987C);
    v301(v470, v302);
    sub_2205C45AC(v427, v268 + *(v434 + 20));
    v269 = v499;
    v270 = v481;
  }

  v303 = v474;
  v304 = v497;
  sub_2205C4640(v268, &v497[*(v474 + 28)], type metadata accessor for QuoteSummaryViewModel);
  *(v304 + *(v303 + 32)) = v510;
  sub_2205C4544(v304, v492, type metadata accessor for StockFeedMastheadModel);
  swift_storeEnumTagMultiPayload();
  v305 = sub_2205C4024(&qword_281297FB8, sub_22055D328);
  v306 = sub_2205C4024(&qword_281297FC0, sub_22055D328);
  v495 = v305;
  v494 = v306;
  MEMORY[0x223D80A10](MEMORY[0x277D84F90], v269, v305);
  sub_22088B29C();
  sub_2205C4544(v304, v483, type metadata accessor for StockFeedMastheadModel);
  swift_storeEnumTagMultiPayload();
  sub_22088AD7C();
  sub_22088B30C();
  v307 = *(v504 + 8);
  v504 += 8;
  v307(v270, v269);
  sub_22088E72C();
  v308 = v491;
  v309 = v509;
  v310 = __swift_project_boxed_opaque_existential_1(&v509[v491[16]], *&v509[v491[16] + 24]);
  v311 = v308[11];
  v493 = v308[12];
  v489 = *v310;
  v312 = v461;
  sub_2205C4544(&v309[v311], v461, sub_22046EAA0);
  v313 = v468;
  v314 = *(v468 + 48);
  v315 = v444;
  v316 = v314(v312, 1, v444);
  v317 = v487;
  v510 = v307;
  if (v316 != 1)
  {
    v323 = v479;
    (*(v313 + 32))(v479, v312, v315);
    (*(v313 + 56))(v323, 0, 1, v315);
    v324 = v462;
    v325 = v440;
    v321 = v463;
    v326 = v493;
    goto LABEL_54;
  }

  v318 = v416;
  sub_2205C4544(v506, v416, sub_22045987C);
  v319 = v490;
  if (v428(v318, 1, v490) == 1)
  {
    sub_2204B39C4(v318, sub_22045987C);
    v320 = v315;
    (*(v313 + 56))(v438, 1, 1, v315);
    v321 = v463;
    v322 = v418;
    goto LABEL_46;
  }

  v327 = v438;
  sub_22088670C();
  v313 = v468;
  (*(v478 + 8))(v318, v319);
  v320 = v315;
  v328 = v314(v327, 1, v315);
  v321 = v463;
  v322 = v418;
  if (v328 == 1)
  {
LABEL_46:
    sub_2205C4544(v317, v322, sub_220455030);
    v329 = sub_2208855EC();
    v330 = *(v329 - 8);
    if ((*(v330 + 48))(v322, 1, v329) == 1)
    {
      sub_2204B39C4(v322, sub_220455030);
      v315 = v320;
      (*(v313 + 56))(v479, 1, 1, v320);
      v325 = v440;
    }

    else
    {
      sub_2208855AC();
      v321 = v463;
      v313 = v468;
      (*(v330 + 8))(v322, v329);
      v325 = v440;
      v315 = v320;
    }

    v326 = v493;
    v331 = v438;
    v332 = v314(v438, 1, v315);
    v324 = v462;
    if (v332 != 1)
    {
      sub_2204B39C4(v331, sub_22046EAA0);
    }

    goto LABEL_52;
  }

  v333 = v479;
  (*(v313 + 32))(v479, v438, v315);
  (*(v313 + 56))(v333, 0, 1, v315);
  v325 = v440;
  v324 = v462;
  v326 = v493;
LABEL_52:
  v334 = v461;
  if (v314(v461, 1, v315) != 1)
  {
    sub_2204B39C4(v334, sub_22046EAA0);
  }

LABEL_54:
  sub_2205C4544(&v509[v326], v321, sub_22046EAA0);
  v335 = v315;
  if (v314(v321, 1, v315) != 1)
  {
    v340 = v480;
    (*(v313 + 32))(v480, v321, v315);
    (*(v313 + 56))(v340, 0, 1, v315);
    v341 = v441;
    v339 = v479;
    goto LABEL_67;
  }

  v336 = v417;
  sub_2205C4544(v506, v417, sub_22045987C);
  v337 = v490;
  v338 = v428(v336, 1, v490);
  v339 = v479;
  if (v338 == 1)
  {
    sub_2204B39C4(v336, sub_22045987C);
    (*(v313 + 56))(v422, 1, 1, v315);
    goto LABEL_59;
  }

  v342 = v422;
  sub_2208866DC();
  v313 = v468;
  (*(v478 + 8))(v336, v337);
  if (v314(v342, 1, v315) == 1)
  {
LABEL_59:
    sub_2205C4544(v487, v325, sub_220455030);
    v343 = sub_2208855EC();
    v344 = v325;
    v345 = *(v343 - 8);
    if ((*(v345 + 48))(v344, 1, v343) == 1)
    {
      sub_2204B39C4(v344, sub_220455030);
      v335 = v315;
      (*(v313 + 56))(v480, 1, 1, v315);
      v341 = v441;
    }

    else
    {
      sub_22088558C();
      v313 = v468;
      (*(v345 + 8))(v344, v343);
      v341 = v441;
      v335 = v315;
    }

    v346 = v422;
    v347 = v314(v422, 1, v335);
    v324 = v462;
    v348 = v463;
    if (v347 != 1)
    {
      sub_2204B39C4(v346, sub_22046EAA0);
    }

    goto LABEL_65;
  }

  v349 = v480;
  v350 = v342;
  v335 = v315;
  (*(v313 + 32))(v480, v350, v315);
  (*(v313 + 56))(v349, 0, 1, v315);
  v341 = v441;
  v348 = v463;
  v324 = v462;
LABEL_65:
  if (v314(v348, 1, v335) != 1)
  {
    sub_2204B39C4(v348, sub_22046EAA0);
  }

LABEL_67:
  sub_22056FA8C(v506, v324);
  sub_2205C4544(v339, v341, sub_22046EAA0);
  if (v314(v341, 1, v335) == 1)
  {
    v351 = v483;
    (*(v446 + 8))(v324, v447);
    sub_2204B39C4(v480, sub_22046EAA0);
    sub_2204B39C4(v339, sub_22046EAA0);
  }

  else
  {
    v352 = v339;
    v353 = v335;
    v354 = v509;
    v355 = *(v313 + 32);
    v356 = v419;
    v355(v419, v341, v353);
    v357 = v356;
    LOBYTE(v356) = sub_22056FD0C(v356, v324);
    sub_2204B39C4(v352, sub_22046EAA0);
    if (v356)
    {
      v351 = v483;
      v358 = v445;
      v511(v445, v354, v513);
      v359 = v443;
      v355(&v358[*(v443 + 20)], v357, v353);
      v360 = v358;
      sub_2205C4640(v480, &v358[v359[6]], sub_22046EAA0);
      (*(v446 + 32))(&v358[v359[7]], v324, v447);
      v361 = 0;
      v358[v359[8]] = 0;
      v358[v359[9]] = 0;
      v362 = v508;
      v363 = v442;
      goto LABEL_73;
    }

    v351 = v483;
    (*(v313 + 8))(v357, v353);
    (*(v446 + 8))(v324, v447);
    v341 = v480;
  }

  sub_2204B39C4(v341, sub_22046EAA0);
  v361 = 1;
  v362 = v508;
  v360 = v445;
  v359 = v443;
  v363 = v442;
LABEL_73:
  v364 = v499;
  (*(v363 + 56))(v360, v361, 1, v359);
  if ((*(v363 + 48))(v360, 1, v359) == 1)
  {
    sub_2204B39C4(v360, sub_2205C4358);
    v365 = v481;
    v366 = v495;
    v367 = v494;
  }

  else
  {
    v368 = v448;
    sub_2205C4640(v360, v448, type metadata accessor for StockEarningsModel);
    swift_storeEnumTagMultiPayload();
    v367 = v494;
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v364, v495, v494);
    v369 = v449;
    sub_22088B29C();
    sub_2205C4544(v368, v351, type metadata accessor for StockEarningsModel);
    swift_storeEnumTagMultiPayload();
    v365 = v481;
    sub_22088AD7C();
    sub_22088B30C();
    (v510)(v365, v364);
    sub_22088E72C();
    (*(v484 + 8))(v369, v362);
    sub_2204B39C4(v448, type metadata accessor for StockEarningsModel);
    v366 = v495;
  }

  swift_storeEnumTagMultiPayload();
  MEMORY[0x223D80A10](MEMORY[0x277D84F90], v364, v366, v367);
  sub_22088B29C();
  v370 = v509;
  v371 = v513;
  v372 = v364;
  v373 = v511;
  v511(v351, v509, v513);
  swift_storeEnumTagMultiPayload();
  sub_22088AD7C();
  sub_22088B30C();
  (v510)(v365, v372);
  sub_2204597F0();
  v375 = *(v374 + 48);
  v376 = *(v374 + 64);
  v373(v351, v370, v371);
  v377 = v501;
  sub_2205C4544(v506, v351 + v375, sub_22045987C);
  sub_2205C4544(v487, v351 + v376, sub_220455030);
  swift_storeEnumTagMultiPayload();
  v378 = v499;
  sub_22088AD7C();
  sub_22088B30C();
  (v510)(v365, v378);
  sub_22088E72C();
  __swift_project_boxed_opaque_existential_1(v437, *(v437 + 3));
  if ((sub_22088618C() & 1) == 0)
  {
    sub_220459628();
    v380 = *(v379 + 64);
    v381 = v420;
    sub_22088518C();
    v382 = sub_22088517C();
    v384 = v383;
    v513 = *(v421 + 8);
    v513(v381, v450);
    v385 = v492;
    *v492 = v382;
    v385[1] = v384;
    *(v385 + 16) = v509[v491[10]];
    v386 = sub_22088F39C();
    (*(*(v386 - 8) + 56))(v385 + v380, 1, 1, v386);
    swift_storeEnumTagMultiPayload();
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v378, v495, v494);
    v387 = v449;
    sub_22088B29C();
    sub_22088518C();
    v388 = sub_22088517C();
    v390 = v389;
    v513(v381, v450);
    *v351 = v388;
    v351[1] = v390;
    v351[2] = 0;
    swift_storeEnumTagMultiPayload();
    sub_22088AD7C();
    v391 = v508;
    sub_22088B30C();
    v377 = v501;
    (v510)(v365, v378);
    sub_22088E72C();
    (*(v484 + 8))(v387, v391);
  }

  sub_2205C44B4();
  v393 = *(v392 + 48);
  v394 = v439;
  v395 = v451;
  v396 = v502;
  v397 = v503;
  (*(v439 + 16))(v451, v502, v503);
  v398 = *MEMORY[0x277D6D868];
  v399 = sub_22088B64C();
  (*(*(v399 - 8) + 104))(&v395[v393], v398, v399);
  v400 = v452;
  v401 = v453;
  (*(v452 + 104))(v395, *MEMORY[0x277D6DF70], v453);
  v455(v395);
  (*(v400 + 8))(v395, v401);
  v402 = *(v484 + 8);
  v403 = v508;
  v402(v377, v508);
  v402(v482, v403);
  sub_2204B39C4(v497, type metadata accessor for StockFeedMastheadModel);
  return (*(v394 + 8))(v396, v397);
}

uint64_t sub_2205C3A9C(void *a1, void (*a2)(char *))
{
  sub_2205C43C0(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_2205C3BC0()
{
  sub_22044D7C0(0, &qword_281298610, sub_22048E0A4, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_220888ECC();
}

uint64_t sub_2205C3C50()
{
  sub_22044D7C0(0, &qword_281298610, sub_22048E0A4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2205C3CDC()
{
  v0 = sub_22088684C();
  MEMORY[0x223D89680](v0);

  MEMORY[0x223D89680](41, 0xE100000000000000);
  return 0x286D726177657250;
}

uint64_t type metadata accessor for StockFeedPrewarmBlueprintModifier()
{
  result = qword_281283060;
  if (!qword_281283060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205C3DB8()
{
  sub_22088685C();
  if (v0 <= 0x3F)
  {
    sub_220446A58(319, &unk_2812991E0);
    if (v1 <= 0x3F)
    {
      sub_220446A58(319, &qword_281299228);
      if (v2 <= 0x3F)
      {
        sub_220446A58(319, &qword_281299280);
        if (v3 <= 0x3F)
        {
          sub_220885D4C();
          if (v4 <= 0x3F)
          {
            sub_220885ACC();
            if (v5 <= 0x3F)
            {
              sub_22046EAA0(319);
              if (v6 <= 0x3F)
              {
                sub_220446A58(319, &qword_281299220);
                if (v7 <= 0x3F)
                {
                  sub_220446A58(319, &qword_281299310);
                  if (v8 <= 0x3F)
                  {
                    sub_2208854FC();
                    if (v9 <= 0x3F)
                    {
                      sub_220446A58(319, qword_281286088);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2205C4024(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2205C4160()
{
  if (!qword_2812990B0)
  {
    sub_22045987C(255);
    sub_220455030(255);
    sub_2205C41F4(255);
    sub_22048E0A4(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2812990B0);
    }
  }
}

uint64_t sub_2205C4228(uint64_t a1, uint64_t a2, int *a3, char *a4)
{
  v9 = *(type metadata accessor for StockFeedPrewarmBlueprintModifier() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_2205C0084(a1, a2, a3, a4, (v4 + v10), v12, v13);
}

uint64_t sub_2205C42F0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2205C4160();
  return v3(a1, a1 + v4[12], a1 + v4[16], *(a1 + v4[20]));
}

void sub_2205C43C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_2205C4024(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_2205C4024(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2205C44B4()
{
  if (!qword_281296F30)
  {
    sub_2205C43C0(255, &unk_281296F10, MEMORY[0x277D6EC60]);
    sub_22088B64C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281296F30);
    }
  }
}

uint64_t sub_2205C4544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205C45AC(uint64_t a1, uint64_t a2)
{
  sub_22044D7C0(0, qword_281293F78, type metadata accessor for QuoteViewModel, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205C4640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SubscriptionStatusCheckBlocker.isCheckAllowed.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2205C4784()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t SubscriptionStatusCheckBlocker.handle(received:)()
{
  sub_2205C48C4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v0 + 16) = 0;
  (*(v3 + 104))(v6, *MEMORY[0x277D6E708], v2);
  sub_2205C4980();
  swift_allocObject();
  return sub_220888ECC();
}

void sub_2205C48C4()
{
  if (!qword_27CF57490)
  {
    type metadata accessor for StocksActivity(255);
    sub_2205C4928();
    v0 = sub_22088D4EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57490);
    }
  }
}

unint64_t sub_2205C4928()
{
  result = qword_2812951E0[0];
  if (!qword_2812951E0[0])
  {
    type metadata accessor for StocksActivity(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812951E0);
  }

  return result;
}

void sub_2205C4980()
{
  if (!qword_27CF57498)
  {
    sub_2205C48C4();
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57498);
    }
  }
}

uint64_t sub_2205C4A30()
{
  sub_2205C48C4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v0 + 16) = 0;
  (*(v3 + 104))(v6, *MEMORY[0x277D6E708], v2);
  sub_2205C4980();
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2205C4B74()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

void sub_2205C4BCC()
{
  v1 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TickerModel();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27CF55AE8 != -1)
  {
    swift_once();
  }

  sub_2205C4DA8(&qword_27CF574A0, v7, type metadata accessor for TickerEventHandler);
  sub_220886B3C();
  if (v11[15])
  {
    __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
    sub_2206CAA80();
  }

  else
  {
    sub_2204EECD0();
    sub_22088AD8C();
    sub_220483A44();
    sub_22050381C(&v9[*(v10 + 48)], v4);
    __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
    sub_2206CA3FC(v4);
    sub_2204EFAD0(v4);
  }
}

uint64_t sub_2205C4DA8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2205C4DF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2205C4E38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2205C4E88(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_2205C4EAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = sub_22088ACDC();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D6D3A0];
  if (v3)
  {
    v6 = MEMORY[0x277D6D390];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_2205C4F98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = sub_22088677C();
  v12 = v11;
  v13 = sub_22088681C();
  v15 = v14;
  v16 = sub_22088683C();
  v18 = v17;
  result = (*(v5 + 8))(v9, v4);
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v15;
  a2[6] = v16;
  a2[7] = v18;
  *a2 = 0x6C6F626D7973;
  a2[1] = 0xE600000000000000;
  return result;
}

uint64_t type metadata accessor for CreateWatchlistViewLayoutAttributes()
{
  result = qword_27CF574A8;
  if (!qword_27CF574A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205C5150()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_22089226C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2205C51EC()
{
  v0 = sub_220889C5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220889C4C();
  sub_2205A14E8();
  v5 = sub_220886F8C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220899360;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277CEAD10], v5);
  sub_2205C56B4(&qword_27CF574B8, MEMORY[0x277D68B80]);
  sub_220886F1C();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2205C53DC()
{
  sub_220889B6C();
  sub_2205C56B4(&qword_27CF574C0, MEMORY[0x277D68AB0]);
  memset(v1, 0, sizeof(v1));
  sub_220886F3C();
  return sub_22056D130(v1);
}

uint64_t sub_2205C5474()
{
  v0 = sub_220889C5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220889C4C();
  sub_2205A14E8();
  v5 = sub_220886F8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220899920;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x277CEAD18], v5);
  v11(v10 + v7, *MEMORY[0x277CEAD10], v5);
  sub_2205C56B4(&qword_27CF574B8, MEMORY[0x277D68B80]);
  sub_220886F1C();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2205C56B4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2205C570C@<X0>(void *a1@<X8>)
{
  if (qword_28128FD98 != -1)
  {
    swift_once();
  }

  v5 = qword_28128FDA0;
  v2 = sub_2205C579C();
  v3 = MEMORY[0x277D34740];
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;

  return v5;
}

unint64_t sub_2205C579C()
{
  result = qword_28127E6B0;
  if (!qword_28127E6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E6B0);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2205C5804(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2205C584C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static MainMetrics.defaultWindowWindowSize.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  CGRectGetWidth(v19);
  v10 = [v0 mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v20.origin.x = v12;
  v20.origin.y = v14;
  v20.size.width = v16;
  v20.size.height = v18;
  CGRectGetHeight(v20);
}

void sub_2205C5ADC(CGFloat *a1@<X1>, CGRect *a2@<X8>)
{
  v94 = a1[3];
  v79 = *a1;
  v4 = *a1 - v94 - a1[5];
  v5 = *__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2204A5DF0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = sub_22044D56C(0, &qword_28127E570);
  v91 = v7;
  v9 = sub_220891F2C();
  v10 = MEMORY[0x277D740C0];
  *(inited + 40) = v9;
  v11 = *v10;
  *(inited + 64) = v8;
  *(inited + 72) = v11;
  v13 = v5[6];
  v12 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v13);
  v14 = *(v12 + 16);
  v15 = *(v14 + 40);
  v82 = v11;
  v16 = v15(v13, v14);
  v84 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 104) = v84;
  *(inited + 80) = v16;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v19 = sub_22089125C();

  v20 = [v17 initWithString:v18 attributes:v19];

  sub_220891D6C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v81 = v4 * 0.5;
  v96.origin.x = v22;
  v96.origin.y = v24;
  v96.size.width = v26;
  v96.size.height = v28;
  Width = CGRectGetWidth(v96);
  v86 = a1[6];
  v88 = v94 + v4 * 0.5 - Width * 0.5;
  v97.origin.x = v22;
  v97.origin.y = v24;
  v97.size.width = v26;
  v97.size.height = v28;
  v75 = CGRectGetWidth(v97);
  v98.origin.x = v22;
  v98.origin.y = v24;
  v98.size.width = v26;
  v98.size.height = v28;
  Height = CGRectGetHeight(v98);
  v30 = *__swift_project_boxed_opaque_existential_1((v77 + 16), *(v77 + 40));
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_220899920;
  *(v31 + 32) = v91;
  *(v31 + 40) = sub_220891F2C();
  *(v31 + 64) = v8;
  *(v31 + 72) = v82;
  v33 = v30[6];
  v32 = v30[7];
  __swift_project_boxed_opaque_existential_1(v30 + 3, v33);
  v34 = (*(*(v32 + 16) + 128))(v33);
  *(v31 + 104) = v84;
  *(v31 + 80) = v34;
  sub_2204A5EAC(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v36 = sub_22089132C();
  v37 = sub_22089125C();

  v38 = [v35 initWithString:v36 attributes:v37];

  sub_220891D6C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v99.origin.x = v40;
  v99.origin.y = v42;
  v99.size.width = v44;
  v99.size.height = v46;
  v78 = v94 + v81 - CGRectGetWidth(v99) * 0.5;
  v100.origin.y = v86;
  v100.origin.x = v88;
  v100.size.width = v75;
  v100.size.height = Height;
  rect = CGRectGetMaxY(v100) + a1[7];
  v101.origin.x = v40;
  v101.origin.y = v42;
  v101.size.width = v44;
  v101.size.height = v46;
  v73 = CGRectGetWidth(v101);
  v102.origin.x = v40;
  v102.origin.y = v42;
  v102.size.width = v44;
  v102.size.height = v46;
  v72 = CGRectGetHeight(v102);
  v47 = *__swift_project_boxed_opaque_existential_1((v77 + 16), *(v77 + 40));
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_220899920;
  *(v48 + 32) = v91;
  *(v48 + 40) = sub_220891F2C();
  *(v48 + 64) = v8;
  *(v48 + 72) = v82;
  v50 = v47[6];
  v49 = v47[7];
  __swift_project_boxed_opaque_existential_1(v47 + 3, v50);
  v51 = (*(*(v49 + 16) + 128))(v50);
  *(v48 + 104) = v84;
  *(v48 + 80) = v51;
  sub_2204A5EAC(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  v52 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v53 = sub_22089132C();
  v54 = sub_22089125C();

  v55 = [v52 initWithString:v53 attributes:v54];

  sub_220891D6C();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;

  v103.origin.x = v57;
  v103.origin.y = v59;
  v103.size.width = v61;
  v103.size.height = v63;
  v95 = v94 + v81 - CGRectGetWidth(v103) * 0.5;
  v104.origin.x = v78;
  v104.origin.y = rect;
  v104.size.width = v73;
  v104.size.height = v72;
  v93 = CGRectGetMaxY(v104) + a1[8];
  v105.origin.x = v57;
  v105.origin.y = v59;
  v105.size.width = v61;
  v105.size.height = v63;
  v64 = CGRectGetWidth(v105);
  v106.origin.x = v57;
  v106.origin.y = v59;
  v106.size.width = v61;
  v106.size.height = v63;
  v65 = CGRectGetHeight(v106);
  v107.origin.x = v95;
  v107.origin.y = v93;
  v107.size.width = v64;
  v107.size.height = v65;
  v108.size.height = v86 + CGRectGetMaxY(v107);
  v108.origin.x = 0.0;
  v108.origin.y = 0.0;
  v108.size.width = v79;
  v109 = CGRectIntegral(v108);
  y = v109.origin.y;
  x = v109.origin.x;
  v83 = v109.size.height;
  v85 = v109.size.width;
  v109.origin.x = v88;
  v109.origin.y = v86;
  v109.size.height = Height;
  v109.size.width = v75;
  v110 = CGRectIntegral(v109);
  v87 = v110.origin.y;
  v89 = v110.origin.x;
  v66 = v110.size.width;
  v67 = v110.size.height;
  v110.origin.x = v78;
  v110.origin.y = rect;
  v110.size.height = v72;
  v110.size.width = v73;
  v111 = CGRectIntegral(v110);
  v68 = v111.origin.x;
  v69 = v111.origin.y;
  v70 = v111.size.width;
  v71 = v111.size.height;
  v111.origin.x = v95;
  v111.origin.y = v93;
  v111.size.width = v64;
  v111.size.height = v65;
  v112 = CGRectIntegral(v111);
  a2->origin.x = x;
  a2->origin.y = y;
  a2->size.width = v85;
  a2->size.height = v83;
  a2[1].origin.x = v89;
  a2[1].origin.y = v87;
  a2[1].size.width = v66;
  a2[1].size.height = v67;
  a2[2].origin.x = v68;
  a2[2].origin.y = v69;
  a2[2].size.width = v70;
  a2[2].size.height = v71;
  a2[3] = v112;
}

id sub_2205C6288()
{
  v1 = OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___closeBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___closeBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController____lazy_storage___closeBarButtonItem);
  }

  else
  {
    v4 = v0;
    sub_22044D56C(0, &qword_28127E850);
    v5 = sub_220891B8C();
    sub_22044D56C(0, &qword_28127E450);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = sub_2208920BC();
    [v5 setPrimaryAction_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_2205C63C4()
{
  v0 = sub_22088CC6C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_220891C4C();

    if (v7)
    {
      swift_getObjectType();
      v8 = sub_22088D05C();
      if (v8 >> 62)
      {
        v10 = v8;
        v9 = sub_2208926AC();
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v9, 1))
      {
        __break(1u);
      }

      else
      {
        (*(v1 + 104))(v4, *MEMORY[0x277D6E268], v0);
        sub_22088D01C();

        (*(v1 + 8))(v4, v0);
      }
    }

    else
    {
    }
  }
}