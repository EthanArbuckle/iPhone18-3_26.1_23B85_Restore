void sub_1DA16D914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA16DD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SearchUIGeneralLog()
{
  v2 = searchUILogHandles[0];
  if (searchUILogHandles[0])
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SearchUIGeneralLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

void sub_1DA16E840(void *a1)
{
  v2 = 0;
  do
  {
    v8 = byte_1F55BA6A8[v2 + 32];
    if ((v8 - 1) >= 3)
    {
      if ((v8 - 4) >= 2)
      {
        v4 = type metadata accessor for Header();
        sub_1DA16F490();
        sub_1DA16F4E8();
        v3 = sub_1DA25F234();

        v5 = &off_1F55BB1A0;
        goto LABEL_3;
      }

      sub_1DA16F610();
    }

    else
    {
      sub_1DA16F5AC();
    }

    sub_1DA16F4E8();
    if (v8 >= 4)
    {
      v3 = sub_1DA25F234();

      sub_1DA16F610();
      v4 = &type metadata for ScrollButton;
      v5 = &off_1F55BB280;
    }

    else
    {
      v3 = sub_1DA25F234();

      sub_1DA16F5AC();
      v4 = &type metadata for Separator;
      v5 = &off_1F55BB358;
    }

LABEL_3:
    ++v2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    (v5[1])(v4, v5);
    v7 = sub_1DA25F234();

    [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v3 withReuseIdentifier:v7];
  }

  while (v2 != 6);
}

uint64_t type metadata accessor for Header()
{
  result = qword_1EDAE5200;
  if (!qword_1EDAE5200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA16EB24()
{
  sub_1DA16EC64();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NSDirectionalEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      sub_1DA16ECB4(319, &qword_1EDAE5148, sub_1DA16F444, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1DA16ECB4(319, &qword_1EDAE5358, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1DA16ED18();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DA16EC64()
{
  if (!qword_1EDAE5158)
  {
    v0 = sub_1DA25F4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAE5158);
    }
  }
}

void sub_1DA16ECB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DA16ED18()
{
  if (!qword_1EDAE52B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3528);
    v0 = sub_1DA25F4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAE52B0);
    }
  }
}

void sub_1DA16EDB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1DA16F444()
{
  result = qword_1EDAE5150;
  if (!qword_1EDAE5150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAE5150);
  }

  return result;
}

unint64_t sub_1DA16F490()
{
  result = qword_1EDAE5210[0];
  if (!qword_1EDAE5210[0])
  {
    type metadata accessor for Header();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAE5210);
  }

  return result;
}

unint64_t sub_1DA16F5AC()
{
  result = qword_1EDAE5160[0];
  if (!qword_1EDAE5160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAE5160);
  }

  return result;
}

unint64_t sub_1DA16F610()
{
  result = qword_1EDAE52A8;
  if (!qword_1EDAE52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE52A8);
  }

  return result;
}

id sub_1DA16F834(void *a1)
{
  result = [objc_opt_self() isAppIntentsSupportEnabled];
  if (result)
  {
    sub_1DA25DA44();
    sub_1DA25DA34();
    v4[0] = type metadata accessor for SearchUIAppIntentRunner();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA37A0);
    sub_1DA25F254();
    sub_1DA25F504();
    *(swift_allocObject() + 16) = a1;
    v3 = a1;
    sub_1DA25DA24();

    return sub_1DA16FA7C(v4);
  }

  return result;
}

uint64_t sub_1DA16F940()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void (*sub_1DA16F9E8())(void *a1@<X8>)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1DA248FC4;
}

uint64_t sub_1DA16FA44()
{
  MEMORY[0x1DA748FF0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA16FA7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SearchUIDataSourceLog()
{
  v2 = qword_1EDAE61D8;
  if (qword_1EDAE61D8)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SearchUIDataSourceLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

void SearchUIGeneralLog_cold_1(void *a1)
{
  if (SearchUIInitLogging_once != -1)
  {
    dispatch_once(&SearchUIInitLogging_once, &__block_literal_global_47);
  }

  *a1 = searchUILogHandles[0];
}

void __SearchUIInitLogging_block_invoke()
{
  for (i = 0; i != 8; ++i)
  {
    v1 = os_log_create("com.apple.searchui", SearchUILogSubsystem_block_invoke_categories[i]);
    v2 = searchUILogHandles[i];
    searchUILogHandles[i] = v1;
  }
}

uint64_t sub_1DA173718(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double sub_1DA173A0C(double a1, double a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00]();
  v10 = &v17 - v9;
  v11 = *(v2 + qword_1EDAE5298);
  sub_1DA25E404();

  v12 = (*(*((v6 & v5) + 0x58) + 24))(v7);
  (*(v8 + 8))(v10, v7);
  v13 = sub_1DA173BDC();
  [v13 _layoutSizeThatFits_fixedAxes_];
  v15 = v14;

  return v15;
}

double sub_1DA173B88(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_1DA173A0C(a2, a3);

  return v6;
}

id sub_1DA173BDC()
{
  v1 = qword_1EDAE52A0;
  v2 = *(v0 + qword_1EDAE52A0);
  if (v2)
  {
    v3 = *(v0 + qword_1EDAE52A0);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD410]) initWithHostedView_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t type metadata accessor for SearchUIAppearance()
{
  result = qword_1ECBA0A28;
  if (!qword_1ECBA0A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA173CC8()
{
  sub_1DA173D54();
  if (v0 <= 0x3F)
  {
    sub_1DA173DAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA173D54()
{
  if (!qword_1ECBA0B18)
  {
    sub_1DA25E304();
    v0 = sub_1DA25E314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBA0B18);
    }
  }
}

void sub_1DA173DAC()
{
  if (!qword_1ECBA0B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3AA0);
    v0 = sub_1DA25E314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBA0B10);
    }
  }
}

uint64_t sub_1DA173E10@<X0>(uint64_t a1@<X8>)
{
  v35[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3540);
  v35[0] = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v35 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3548);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3550);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - v8;
  v10 = [objc_opt_self() isSpotlightPlusEnabled];
  sub_1DA1742B8(v9);
  sub_1DA25E2D4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_1DA25E884();
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3558) + 36)];
  *v20 = v19;
  *(v20 + 1) = v12;
  *(v20 + 2) = v14;
  *(v20 + 3) = v16;
  *(v20 + 4) = v18;
  v20[40] = 0;
  v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3560) + 36)];
  *v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3568);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for SearchUIAppearance();
  v23 = *(v22 + 20);
  *(v21 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3570);
  swift_storeEnumTagMultiPayload();
  v24 = v21 + *(v22 + 24);
  if (v10)
  {
    *v24 = 0;
    v24[8] = 0;
    v25 = sub_1DA25E904();
    KeyPath = swift_getKeyPath();
    v27 = &v9[*(v7 + 36)];
    *v27 = KeyPath;
    v27[1] = v25;
    sub_1DA23106C(v9, v6, &qword_1ECBA3550);
    swift_storeEnumTagMultiPayload();
    v28 = sub_1DA179E54();
    v36 = v7;
    v37 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1DA25E6D4();
    return sub_1DA179568(v9, &qword_1ECBA3550);
  }

  else
  {
    *v24 = 1;
    v24[8] = 0;
    v30 = sub_1DA25E8E4();
    v31 = swift_getKeyPath();
    v32 = &v9[*(v7 + 36)];
    *v32 = v31;
    v32[1] = v30;
    v33 = sub_1DA179E54();
    sub_1DA25E9D4();
    sub_1DA179568(v9, &qword_1ECBA3550);
    v34 = v35[0];
    (*(v35[0] + 16))(v6, v3, v1);
    swift_storeEnumTagMultiPayload();
    v36 = v7;
    v37 = v33;
    swift_getOpaqueTypeConformance2();
    sub_1DA25E6D4();
    return (*(v34 + 8))(v3, v1);
  }
}

uint64_t sub_1DA17425C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA25E544();
  *a1 = result;
  return result;
}

uint64_t sub_1DA1742B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3588);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v27 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3598);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35A0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3580);
  MEMORY[0x1EEE9AC00](v28);
  v14 = &v27 - v13;
  v15 = sub_1DA25E694();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Header();
  sub_1DA17664C(&qword_1ECBA3530, MEMORY[0x1E697F6A0], v18);
  v19 = sub_1DA25E684();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    *v14 = sub_1DA25E614();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35B0) + 44)];
    *v12 = sub_1DA25E6A4();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35B8);
    sub_1DA235D44(v2, &v12[*(v21 + 44)]);
    sub_1DA23106C(v12, v10, &qword_1ECBA35A0);
    sub_1DA23106C(v10, v20, &qword_1ECBA35A0);
    v22 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35C0) + 48);
    *v22 = 0;
    *(v22 + 8) = 1;
    sub_1DA179568(v12, &qword_1ECBA35A0);
    sub_1DA179568(v10, &qword_1ECBA35A0);
    v23 = &qword_1ECBA3580;
    sub_1DA23106C(v14, v6, &qword_1ECBA3580);
    swift_storeEnumTagMultiPayload();
    sub_1DA17525C(&qword_1ECBA0A48, &qword_1ECBA3580);
    sub_1DA17525C(&qword_1ECBA0A50, &qword_1ECBA3588);
    sub_1DA25E6D4();
    v24 = v14;
  }

  else
  {
    *v4 = sub_1DA25E604();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35A8);
    sub_1DA1747B0(v2, &v4[*(v25 + 44)]);
    v23 = &qword_1ECBA3588;
    sub_1DA23106C(v4, v6, &qword_1ECBA3588);
    swift_storeEnumTagMultiPayload();
    sub_1DA17525C(&qword_1ECBA0A48, &qword_1ECBA3580);
    sub_1DA17525C(&qword_1ECBA0A50, &qword_1ECBA3588);
    sub_1DA25E6D4();
    v24 = v4;
  }

  return sub_1DA179568(v24, v23);
}

uint64_t sub_1DA1747B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35C8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = sub_1DA25E6A4();
  LOBYTE(v22[0]) = 1;
  sub_1DA1749CC(a1, v19);
  *&v18[7] = v19[0];
  *&v18[23] = v19[1];
  *&v18[39] = v19[2];
  *&v18[55] = v19[3];
  v11 = v22[0];
  sub_1DA174C48(v9);
  sub_1DA23106C(v9, v7, &qword_1ECBA35C8);
  v20[0] = v10;
  v20[1] = 0;
  v21[0] = v11;
  *&v21[1] = *v18;
  *&v21[17] = *&v18[16];
  *&v21[33] = *&v18[32];
  *&v21[49] = *&v18[48];
  v12 = *&v18[63];
  *&v21[64] = *&v18[63];
  v13 = *v21;
  *a2 = v10;
  *(a2 + 16) = v13;
  v14 = *&v21[16];
  v15 = *&v21[48];
  *(a2 + 48) = *&v21[32];
  *(a2 + 64) = v15;
  *(a2 + 32) = v14;
  *(a2 + 80) = v12;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3620);
  sub_1DA23106C(v7, a2 + *(v16 + 64), &qword_1ECBA35C8);
  sub_1DA23106C(v20, v22, &qword_1ECBA35D8);
  sub_1DA179568(v9, &qword_1ECBA35C8);
  sub_1DA179568(v7, &qword_1ECBA35C8);
  v22[0] = v10;
  v22[1] = 0;
  v23 = v11;
  v25 = *&v18[16];
  v26 = *&v18[32];
  *v27 = *&v18[48];
  *&v27[15] = *&v18[63];
  v24 = *v18;
  return sub_1DA179568(v22, &qword_1ECBA35D8);
}

uint64_t sub_1DA1749CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DA174B4C();

  v4 = sub_1DA25E934();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(a1 + 24);
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {

    v13 = sub_1DA25E934();
    v15 = v14;
    v17 = v16;
    v19 = v18 & 1;
    sub_1DA174BA0(v13, v14, v18 & 1);
  }

  else
  {
LABEL_6:
    v13 = 0;
    v15 = 0;
    v19 = 0;
    v17 = 0;
  }

  v20 = v8 & 1;
  sub_1DA174BA0(v4, v6, v20);

  sub_1DA174BB0(v13, v15, v19, v17);
  sub_1DA174BF4(v13, v15, v19, v17);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v19;
  *(a2 + 56) = v17;
  sub_1DA174BF4(v13, v15, v19, v17);
  sub_1DA174C38(v4, v6, v20);
}

unint64_t sub_1DA174B4C()
{
  result = qword_1ECBA09A0;
  if (!qword_1ECBA09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA09A0);
  }

  return result;
}

uint64_t sub_1DA174BA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1DA25DB94();
  }

  else
  {
  }
}

uint64_t sub_1DA174BB0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1DA174BA0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1DA174BF4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1DA174C38(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1DA174C38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1DA174C48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DA25E724();
  v4 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35E0);
  (MEMORY[0x1EEE9AC00])();
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35E8);
  v11 = *(v10 - 8);
  (MEMORY[0x1EEE9AC00])();
  v13 = &v25 - v12;
  v14 = type metadata accessor for Header();
  sub_1DA23106C(v1 + *(v14 + 40), &v29, &qword_1ECBA3500);
  if (v30)
  {
    v28 = v10;
    sub_1DA175134(&v29, v31);
    sub_1DA1750D0(v31, &v29);
    v15 = swift_allocObject();
    v16 = sub_1DA175134(&v29, v15 + 16);
    v27 = a1;
    MEMORY[0x1EEE9AC00](v16);
    v26 = v3;
    *(&v25 - 2) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35F0);
    sub_1DA17514C();
    sub_1DA25EB04();
    v17 = &v9[*(v7 + 36)];
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3568);
    swift_storeEnumTagMultiPayload();
    v18 = type metadata accessor for SearchUIAppearance();
    v19 = *(v18 + 20);
    *(v17 + v19) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3570);
    swift_storeEnumTagMultiPayload();
    v20 = v17 + *(v18 + 24);
    *v20 = 2;
    v20[8] = 1;
    sub_1DA25E714();
    sub_1DA17A4BC();
    sub_1DA178F2C(&qword_1ECBA0A90, MEMORY[0x1E697C720]);
    v21 = v26;
    sub_1DA25E984();
    (*(v4 + 8))(v6, v21);
    sub_1DA179568(v9, &qword_1ECBA35E0);
    v23 = v27;
    v22 = v28;
    (*(v11 + 32))(v27, v13, v28);
    (*(v11 + 56))(v23, 0, 1, v22);
    return __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    sub_1DA179568(&v29, &qword_1ECBA3500);
    return (*(v11 + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_1DA175098()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA1750D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DA175134(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1DA17514C()
{
  result = qword_1ECBA0AF8;
  if (!qword_1ECBA0AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA35F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA35F8);
    sub_1DA17525C(&qword_1ECBA0A68, &qword_1ECBA35F8);
    sub_1DA1752A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AF8);
  }

  return result;
}

uint64_t sub_1DA17525C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA1752A4()
{
  result = qword_1ECBA09E8;
  if (!qword_1ECBA09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA09E8);
  }

  return result;
}

uint64_t sub_1DA1752F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v10[-v6];
  v12 = a1;
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3608);
  sub_1DA1754D4();
  sub_1DA25EAB4();
  sub_1DA17525C(&qword_1ECBA0A68, &qword_1ECBA35F8);
  sub_1DA1752A4();
  sub_1DA25E974();
  (*(v5 + 8))(v7, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35F0);
  v9 = (a2 + *(result + 36));
  *v9 = sub_1DA176854;
  v9[1] = 0;
  return result;
}

unint64_t sub_1DA1754D4()
{
  result = qword_1ECBA0AE8;
  if (!qword_1ECBA0AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3608);
    sub_1DA175558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AE8);
  }

  return result;
}

unint64_t sub_1DA175558()
{
  result = qword_1ECBA0AF0;
  if (!qword_1ECBA0AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3610);
    sub_1DA17525C(&qword_1ECBA0A70, &qword_1ECBA3618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AF0);
  }

  return result;
}

uint64_t sub_1DA175610@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  (*(v4 + 16))(v3, v4);
  sub_1DA174B4C();
  result = sub_1DA25E934();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_1DA175708()
{
  swift_getKeyPath();
  sub_1DA175884();
  sub_1DA25DFD4();

  v0 = objc_opt_self();
  v1 = sub_1DA25F234();

  v2 = [v0 localizedStringForKey_];

  if (v2)
  {
    sub_1DA25F244();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for ExpandSectionHeaderAction()
{
  result = qword_1ECBA09B0;
  if (!qword_1ECBA09B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DA175884()
{
  result = qword_1ECBA09D0;
  if (!qword_1ECBA09D0)
  {
    type metadata accessor for ExpandSectionHeaderAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA09D0);
  }

  return result;
}

unint64_t sub_1DA1758FC()
{
  result = qword_1ECBA0AB0;
  if (!qword_1ECBA0AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3A88);
    sub_1DA175988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AB0);
  }

  return result;
}

unint64_t sub_1DA175988()
{
  result = qword_1ECBA0AC8;
  if (!qword_1ECBA0AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3A78);
    sub_1DA175A40();
    sub_1DA17525C(&qword_1ECBA0A80, &qword_1ECBA3AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AC8);
  }

  return result;
}

unint64_t sub_1DA175A40()
{
  result = qword_1ECBA0B00;
  if (!qword_1ECBA0B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3A70);
    sub_1DA17525C(&qword_1ECBA0A88, &qword_1ECBA3A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0B00);
  }

  return result;
}

void sub_1DA175E44(void *a1)
{
  v1 = a1;
  sub_1DA175E8C();
}

void sub_1DA175E8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SupplementaryHostingView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = sub_1DA173BDC();
  [v0 bounds];
  [v1 setFrame_];
}

id SearchUIAppearance.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = sub_1DA25E304();
  v4 = *(v38 - 8);
  v5 = MEMORY[0x1EEE9AC00](v38);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v37 = sub_1DA25EBF4();
  v10 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A78);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A80);
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  v18 = (v2 + *(type metadata accessor for SearchUIAppearance() + 24));
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = sub_1DA176370();
  v22 = v21;
  if (!v20)
  {
LABEL_5:
    result = [v22 colorForProminence_];
    if (result)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_7;
  }

  if (v20 == 1)
  {
    result = [v21 buttonColorForProminence_];
    if (result)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_7:
  result = [objc_opt_self() separatorColorForAppearance_];
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_8:
  v24 = result;
  v25 = sub_1DA25EA34();

  sub_1DA17657C(v14, v16, &qword_1ECBA3A70);
  *&v16[*(v35 + 36)] = v25;
  sub_1DA24C918(v9);
  v26 = v38;
  (*(v4 + 104))(v7, *MEMORY[0x1E697DBA8], v38);
  v27 = sub_1DA25E2F4();
  v28 = *(v4 + 8);
  v28(v7, v26);
  v28(v9, v26);
  v29 = MEMORY[0x1E6981DB8];
  if ((v27 & 1) == 0)
  {
    v29 = MEMORY[0x1E6981DA0];
  }

  v31 = v36;
  v30 = v37;
  (*(v10 + 104))(v36, *v29, v37);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A88);
  v33 = v39;
  (*(v10 + 32))(v39 + *(v32 + 36), v31, v30);
  return sub_1DA17657C(v16, v33, &qword_1ECBA3A78);
}

id sub_1DA176370()
{
  v0 = sub_1DA25E304();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  sub_1DA24CB18(&v15 - v8);
  v10 = sub_1DA25EBD4();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  sub_1DA1765E4(v9);
  sub_1DA24C918(v6);
  (*(v1 + 104))(v4, *MEMORY[0x1E697DBA8], v0);
  v12 = sub_1DA25E2F4();
  v13 = *(v1 + 8);
  v13(v4, v0);
  v13(v6, v0);
  result = [objc_opt_self() appearanceWithVibrancyEnabled:v11 isDark:v12 & 1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA17657C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA1765E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA17664C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1DA25E5E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1DA23106C(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_1DA25F474();
    v17 = sub_1DA25E864();
    sub_1DA25E284();

    sub_1DA25E5D4();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

id sub_1DA177A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  v8 = sub_1DA177C28();
  if (v8 > 3u)
  {
    if (v8 - 4 >= 2)
    {
      return 0;
    }

    v9 = &off_1F55BB280;
    v10 = &type metadata for ScrollButton;
    v11 = sub_1DA16F610();
  }

  else if (v8 - 1 >= 3)
  {
    v10 = type metadata accessor for Header();
    v9 = &off_1F55BB1A0;
    v11 = sub_1DA16F490();
  }

  else
  {
    v9 = &off_1F55BB358;
    v10 = &type metadata for Separator;
    v11 = sub_1DA16F5AC();
  }

  result = [a5 collectionView];
  if (result)
  {
    v14 = result;
    v15 = sub_1DA25F234();
    (v9[1])(v10, v9);
    v16 = sub_1DA25F234();

    v17 = sub_1DA25DF64();
    v12 = [v14 dequeueReusableSupplementaryViewOfKind:v15 withReuseIdentifier:v16 forIndexPath:v17];

    result = [a5 searchUIAttributes];
    if (result)
    {
      v18 = result;
      sub_1DA177F0C(v12, a3, v8, v19, result, v10, v9);

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA177C28()
{
  v0 = sub_1DA25F674();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

char *sub_1DA177C74(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = *MEMORY[0x1E69E7D40];
  v13 = *((*MEMORY[0x1E69E7D40] & v11) + 0x50);
  MEMORY[0x1EEE9AC00](a1);
  v14 = qword_1EDAE5298;
  sub_1DA25E424();
  (*(*((v12 & v11) + 0x58) + 32))(v13, *((v12 & v11) + 0x58));
  *&v6[v14] = sub_1DA25E3F4();
  *&v6[qword_1EDAE52A0] = 0;
  v15 = type metadata accessor for SupplementaryHostingView();
  v22.receiver = v6;
  v22.super_class = v15;
  v16 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a2, a3, a4, a5);
  v17 = *&v16[qword_1EDAE5298];
  v18 = v16;
  v19 = v17;
  sub_1DA25E3E4();

  v20 = sub_1DA173BDC();
  [v20 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];

  [v18 addSubview_];
  return v18;
}

__n128 sub_1DA177E80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 36);
  v4 = a2 + *(a1 + 40);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(a2 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3530);
  swift_storeEnumTagMultiPayload();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  result = *MEMORY[0x1E69DC5C0];
  v6 = *(MEMORY[0x1E69DC5C0] + 16);
  *(a2 + 32) = *MEMORY[0x1E69DC5C0];
  *(a2 + 48) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  return result;
}

void sub_1DA177F0C(void *a1, uint64_t a2, unsigned int a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a5;
  v24 = a3;
  v12 = sub_1DA25DF94();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  type metadata accessor for SupplementaryHostingView();
  if (swift_dynamicCastClass())
  {
    v17 = sub_1DA1780EC();
    (*(v13 + 16))(v16, a2, v12);
    v18 = *(a7 + 40);
    v19 = v17;
    v20 = a1;
    v21 = a4;
    v22 = v23;
    v18(v21, v16, v24, v22, a6, a7);
    sub_1DA25E414();
  }
}

id sub_1DA178110@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  [a1 headerInsetsWithAttributes_];
  v8 = v7;
  v10 = v9;
  v11 = [a1 section];
  v12 = [v11 collectionSection];
  if (v12)
  {

    v13 = 0;
    if (!v11)
    {
      v19 = 0xE000000000000000;
      v35 = 0;
      v36 = 0;
      goto LABEL_24;
    }

    v35 = 0;
    v36 = 0;
  }

  else
  {
    if (!v11)
    {
      v13 = 0;
      v35 = 0;
      v36 = 0;
      v19 = 0xE000000000000000;
      goto LABEL_24;
    }

    v14 = [v11 resultSection];
    if (v14 && (v15 = v14, v16 = [v14 subtitle], v15, v16))
    {
      v17 = sub_1DA25F244();
      v35 = v18;
      v36 = v17;
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }
  }

  v20 = [v11 collectionSection];
  if (v20 && (v21 = v20, v22 = [v20 title], v21, v22) && (v23 = objc_msgSend(v22, sel_text), v22, v23) || (v24 = objc_msgSend(v11, &selRef_radius + 2)) != 0 && (v25 = v24, v23 = objc_msgSend(v24, sel_title), v25, v23))
  {
    v13 = sub_1DA25F244();
    v19 = v26;
  }

  else
  {
    if (v35)
    {
      v19 = v35;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    if (v35)
    {
      v13 = v36;
    }

    else
    {
      v13 = 0;
    }

    v35 = 0;
    v36 = 0;
  }

LABEL_24:

  result = [a1 section];
  if (result)
  {
    v28 = result;
    v33 = [result resultSection];

    v29 = type metadata accessor for Header();
    sub_1DA17850C(a3, a4 + *(v29 + 40));
    sub_1DA25F574();

    sub_1DA25DF84();
    v30 = sub_1DA25F684();
    MEMORY[0x1DA747B40](v30);

    MEMORY[0x1DA747B40](0x3A656C7469542CLL, 0xE700000000000000);
    MEMORY[0x1DA747B40](v13, v19);

    v31 = sub_1DA25DF94();
    (*(*(v31 - 8) + 8))(a2, v31);
    v32 = *(v29 + 36);
    *(a4 + v32) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3530);
    result = swift_storeEnumTagMultiPayload();
    *a4 = v13;
    a4[1] = v19;
    a4[2] = v36;
    a4[3] = v35;
    a4[4] = v8;
    a4[5] = 0;
    a4[6] = v10;
    a4[7] = 0;
    a4[8] = v33;
    a4[9] = 0xD000000000000021;
    a4[10] = 0x80000001DA279340;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DA17850C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v24 = a2;
  v3 = [v2 section];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 resultSection];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [v5 bundleIdentifier];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = sub_1DA25F244();
  v9 = v8;

  if (qword_1ECBA0958 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA178A70(v7, v9, qword_1ECBA0960);

  if ((v10 & 1) == 0)
  {
LABEL_7:
    if (qword_1ECBA0970 != -1)
    {
      goto LABEL_16;
    }

    while (1)
    {
      v30 = off_1ECBA0978;
      v27 = *(off_1ECBA0978 + 2);
      if (!v27)
      {
        break;
      }

      v11 = 0;
      v26 = (v30 + 4);
      while (v11 < v30[2])
      {
        v12 = *&v26[16 * v11 + 8];
        v13 = *(v12 + 48);
        v25 = *&v26[16 * v11];
        v14 = v25;
        v15 = sub_1DA25F4E4();
        v16 = *(v15 - 8);
        MEMORY[0x1EEE9AC00](v15);
        v18 = &v23 - v17;
        v19 = v29;
        v13(v19, v28, v14, v12);
        v20 = *(v14 - 8);
        if ((*(v20 + 48))(v18, 1, v14) != 1)
        {
          *(&v31[1] + 8) = v25;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
          (*(v20 + 32))(boxed_opaque_existential_1, v18, v14);
          sub_1DA175134(v31, v24);
          return;
        }

        ++v11;
        (*(v16 + 8))(v18, v15);
        memset(v31, 0, 40);
        sub_1DA179568(v31, &qword_1ECBA3500);
        if (v27 == v11)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      swift_once();
    }
  }

LABEL_13:
  v21 = v24;
  *(v24 + 32) = 0;
  *v21 = 0u;
  v21[1] = 0u;
}

uint64_t sub_1DA178848()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA273FD0;
  *(inited + 32) = sub_1DA25F244();
  *(inited + 40) = v1;
  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x80000001DA279370;
  v2 = sub_1DA178908(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1ECBA0960 = v2;
  return result;
}

uint64_t sub_1DA178908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3858);
    v3 = sub_1DA25F534();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1DA25F744();

      sub_1DA25F284();
      result = sub_1DA25F764();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1DA25F6B4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DA178A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DA25F744();
  sub_1DA25F284();
  v6 = sub_1DA25F764();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DA25F6B4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DA178D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3538);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DA273FD0;
  v1 = type metadata accessor for ButtonItemHeaderAction();
  v2 = sub_1DA178F2C(&qword_1ECBA0A00, type metadata accessor for ButtonItemHeaderAction);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for ExpandSectionHeaderAction();
  result = sub_1DA178F2C(&unk_1ECBA09C0, type metadata accessor for ExpandSectionHeaderAction);
  *(v0 + 48) = v3;
  *(v0 + 56) = result;
  off_1ECBA0978 = v0;
  return result;
}

uint64_t type metadata accessor for ButtonItemHeaderAction()
{
  result = qword_1ECBA09F0;
  if (!qword_1ECBA09F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA178E74()
{
  result = sub_1DA25DFF4();
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

uint64_t sub_1DA178F2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA178F80(uint64_t a1)
{
  result = sub_1DA179054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA179054()
{
  result = qword_1ECBA0A08;
  if (!qword_1ECBA0A08)
  {
    type metadata accessor for ButtonItemHeaderAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0A08);
  }

  return result;
}

uint64_t sub_1DA1790C0()
{
  result = sub_1DA25DFF4();
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

unint64_t sub_1DA179174(uint64_t a1)
{
  result = sub_1DA175884();
  *(a1 + 8) = result;
  return result;
}

char *sub_1DA1791BC@<X0>(void *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  type metadata accessor for ButtonItemHeaderAction();
  swift_allocObject();
  result = sub_1DA179218(a1, a2);
  *a3 = result;
  return result;
}

char *sub_1DA179218(void *a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8SearchUI22ButtonItemHeaderAction___observationRegistrar;
  sub_1DA25DFE4();
  v6 = [a2 commandEnvironment];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = [a1 section];
  v9 = [v8 collectionSection];

  v10 = [v9 buttonItem];
  v11 = v10;
  if (v10)
  {
    goto LABEL_5;
  }

  v12 = [a1 section];
  v13 = [v12 resultSection];

  v14 = [v13 button];
  if (v14)
  {
    v11 = v14;
LABEL_5:
    v15 = objc_opt_self();
    v16 = v10;
    v17 = [v11 command];
    LODWORD(v15) = [v15 hasValidHandlerForCommand:v17 rowModel:0 environment:v7];

    if (v15)
    {
      v18 = [v11 title];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1DA25F244();
        v22 = v21;

        v23 = [v11 image];
        if (v23)
        {
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          if (v24)
          {
            v25 = [v24 symbolName];

            if (v25)
            {
              v23 = sub_1DA25F244();
              v27 = v26;

LABEL_22:
              *(v2 + 2) = v11;
              *(v2 + 3) = a1;
              *(v2 + 4) = v7;
              *(v2 + 5) = v20;
              *(v2 + 6) = v22;
              *(v2 + 7) = v23;
              *(v2 + 8) = v27;
              return v2;
            }
          }

          else
          {
          }

          v23 = 0;
        }

        else
        {
        }

        v27 = 0;
        goto LABEL_22;
      }

      v28 = v7;
      v29 = v11;
      v7 = v11;
      v11 = a1;
    }

    else
    {
      v28 = a1;
      v29 = a2;
      a2 = v11;
    }

    v30 = a2;

    a1 = v7;
    a2 = v11;
    v7 = v30;
  }

  a1 = a2;
  a2 = v7;
LABEL_15:

  v31 = sub_1DA25DFF4();
  (*(*(v31 - 8) + 8))(&v2[v5], v31);
  type metadata accessor for ButtonItemHeaderAction();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DA179568(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1DA1795C8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for ExpandSectionHeaderAction();
  swift_allocObject();
  result = sub_1DA179624(a1, a2);
  *a3 = result;
  return result;
}

id sub_1DA179624(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8SearchUI25ExpandSectionHeaderAction___observationRegistrar;
  sub_1DA25DFE4();
  v6 = [a2 headerDelegate];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if ((sub_1DA179838(a1) & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_6:

    sub_1DA1797E4(v2 + 32);
    sub_1DA1797E4(v2 + 40);
    v12 = sub_1DA25DFF4();
    (*(*(v12 - 8) + 8))(v2 + v5, v12);
    type metadata accessor for ExpandSectionHeaderAction();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 16) = [v7 isExpandedForSectionModel_];
  *(v2 + 24) = a1;
  swift_unknownObjectWeakAssign();
  v8 = a1;
  result = [a2 commandEnvironment];
  if (result)
  {
    v10 = result;
    v11 = [result feedbackDelegate];
    swift_unknownObjectRelease();

    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA179838(void *a1)
{
  v1 = [a1 section];
  if (!v1)
  {
    v17 = 0;
    return v17 & 1;
  }

  v2 = v1;
  v3 = [v1 resultSection];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 results];
  if (!v5)
  {

    if (sub_1DA179A60())
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  v6 = v5;
  sub_1DA173718(0, &unk_1ECBA0980);
  v7 = sub_1DA25F324();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_22:

    if (sub_1DA179A60())
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  result = sub_1DA25F634();
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1DA747E20](0, v7);
LABEL_9:
    v10 = v9;

    if (([v10 isLocalApplicationResult] & 1) == 0)
    {
      v11 = [v10 applicationBundleIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = objc_opt_self();
        v14 = [v4 bundleIdentifier];
        v15 = [v13 bundleIdentifierIsBlockedForScreenTimeExpiration_];

        v16 = [v13 bundleIdentifierIsBlockedForScreenTimeExpiration_];
        v17 = 0;
        if (v15 & 1) != 0 || (v16)
        {
          goto LABEL_24;
        }

LABEL_13:
        if (sub_1DA179A60())
        {
          goto LABEL_23;
        }

        goto LABEL_14;
      }
    }

    if (sub_1DA179A60())
    {
      goto LABEL_23;
    }

LABEL_14:
    if ((sub_1DA23586C() & 1) == 0)
    {
      v17 = sub_1DA235AB4();
LABEL_24:

      return v17 & 1;
    }

LABEL_23:
    v17 = 1;
    goto LABEL_24;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA179A60()
{
  result = [v0 resultSection];
  if (result)
  {
    v2 = result;
    v3 = [result results];

    if (v3)
    {
      sub_1DA173718(0, &unk_1ECBA0980);
      v4 = sub_1DA25F324();

      if (v4 >> 62)
      {
        if (sub_1DA25F634())
        {
          goto LABEL_5;
        }
      }

      else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1DA747E20](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v5 = *(v4 + 32);
        }

        v3 = v5;

        v6 = [objc_opt_self() cardSectionsForRenderingResult_];
        if (v6)
        {
          v7 = v6;
          sub_1DA173718(0, &unk_1EDAE5400);
          v8 = sub_1DA25F324();

          if ([v3 renderHorizontallyWithOtherResultsInCategory])
          {
            if (v8)
            {
              if (!(v8 >> 62))
              {
                v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

                return v9 == 0;
              }

LABEL_23:
              v9 = sub_1DA25F634();
              goto LABEL_13;
            }

            goto LABEL_15;
          }
        }

        else if ([v3 renderHorizontallyWithOtherResultsInCategory])
        {
LABEL_15:

          return 1;
        }

        return 0;
      }
    }

    return 0;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1DA179D94()
{
  result = qword_1ECBA0AA0;
  if (!qword_1ECBA0AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3628);
    sub_1DA179E54();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3550);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AA0);
  }

  return result;
}

unint64_t sub_1DA179E54()
{
  result = qword_1ECBA0AB8;
  if (!qword_1ECBA0AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3550);
    sub_1DA179F0C();
    sub_1DA17525C(&qword_1ECBA0A78, &qword_1ECBA3590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AB8);
  }

  return result;
}

unint64_t sub_1DA179F0C()
{
  result = qword_1ECBA0AD0;
  if (!qword_1ECBA0AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3560);
    sub_1DA179FC8();
    sub_1DA178F2C(&qword_1ECBA0A38, type metadata accessor for SearchUIAppearance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AD0);
  }

  return result;
}

unint64_t sub_1DA179FC8()
{
  result = qword_1ECBA0B08;
  if (!qword_1ECBA0B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3558);
    sub_1DA17A064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0B08);
  }

  return result;
}

unint64_t sub_1DA17A064()
{
  result = qword_1ECBA0A98;
  if (!qword_1ECBA0A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3578);
    sub_1DA17525C(&qword_1ECBA0A48, &qword_1ECBA3580);
    sub_1DA17525C(&qword_1ECBA0A50, &qword_1ECBA3588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0A98);
  }

  return result;
}

uint64_t sub_1DA17A298@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3610);
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = (&v17 - v5);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 24))(v7, v8);
  if (v9)
  {
    v10 = sub_1DA25EA74();
    v11 = (v6 + *(v4 + 36));
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3618) + 28);
    v13 = *MEMORY[0x1E69816C8];
    v14 = sub_1DA25EA94();
    (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
    *v11 = swift_getKeyPath();
    *v6 = v10;
    sub_1DA2360CC(v6, a2);
    return (*(v18 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v16 = *(v18 + 56);

    return v16(a2, 1, 1, v4);
  }
}

unint64_t sub_1DA17A4BC()
{
  result = qword_1ECBA0AE0;
  if (!qword_1ECBA0AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA35E0);
    sub_1DA17525C(&qword_1ECBA0A60, &qword_1ECBA3600);
    sub_1DA178F2C(&qword_1ECBA0A38, type metadata accessor for SearchUIAppearance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AE0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1DA17A668()
{
  result = qword_1ECBA0A58;
  if (!qword_1ECBA0A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0A58);
  }

  return result;
}

uint64_t sub_1DA17A6CC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1DA25E614();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A58);
  return sub_1DA17A724((a1 + *(v2 + 44)));
}

uint64_t sub_1DA17A724@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_1DA25E794();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = sub_1DA25E7B4();
  v27 = *(v8 - 8);
  v9 = v27;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  sub_1DA25E7C4();
  sub_1DA25E7A4();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v16(v5, v7, v1);
  v17 = v28;
  v15(v28, v12, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A60) + 48)];
  v19 = v25;
  v16(v18, v5, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v5, v22);
  return (v23)(v12, v8);
}

uint64_t sub_1DA17AAB4()
{
  sub_1DA1797E4(v0 + 32);
  sub_1DA1797E4(v0 + 40);
  v1 = OBJC_IVAR____TtC8SearchUI25ExpandSectionHeaderAction___observationRegistrar;
  v2 = sub_1DA25DFF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA17AF64(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  sub_1DA25EFD4();
  v6 = a3;
  LOBYTE(a4) = a4(a3);

  return a4 & 1;
}

uint64_t sub_1DA17B348(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3978);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  result = [objc_opt_self() isAppIntentsSupportEnabled];
  if (result)
  {
    result = [a2 allowsAppEntityAnnotation];
    if (result)
    {
      if (qword_1EDAE5130 != -1)
      {
LABEL_15:
        swift_once();
      }

      v7 = off_1EDAE5138;
      v8 = (off_1EDAE5138 + 40);
      v9 = -*(off_1EDAE5138 + 2);
      v10 = -1;
      do
      {
        if (v9 + v10 == -1)
        {
          goto LABEL_11;
        }

        if (++v10 >= v7[2])
        {
          __break(1u);
          goto LABEL_15;
        }

        v11 = v8 + 2;
        v12 = *(v8 - 1);
        v13 = (*(*v8 + 24))(a2, v12, *v8);
        v8 = v11;
      }

      while ((v13 & 1) == 0);
      if (!v12)
      {
LABEL_11:
        v19 = sub_1DA25DB84();
        (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
        goto LABEL_12;
      }

      result = [a2 itemIdentifier];
      if (result)
      {
        v14 = result;
        v15 = sub_1DA25F244();
        v17 = v16;

        v20[0] = v15;
        v20[1] = v17;
        sub_1DA248D08(v20);

        v18 = sub_1DA25DB84();
        (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
LABEL_12:
        sub_1DA25F4C4();
        return 1;
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1DA17B584()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DA273FD0;
  v1 = sub_1DA17B5F8();
  *(v0 + 32) = &type metadata for SearchUIContinuationEntity;
  *(v0 + 40) = v1;
  result = sub_1DA17BAFC();
  *(v0 + 48) = &type metadata for SearchUIKnowledgeEntity;
  *(v0 + 56) = result;
  off_1EDAE5138 = v0;
  return result;
}

unint64_t sub_1DA17B5F8()
{
  result = qword_1EDAE52B8;
  if (!qword_1EDAE52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE52B8);
  }

  return result;
}

unint64_t sub_1DA17B64C(uint64_t a1)
{
  result = sub_1DA17B688();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA17B688()
{
  result = qword_1EDAE52F8;
  if (!qword_1EDAE52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE52F8);
  }

  return result;
}

unint64_t sub_1DA17B6E0()
{
  result = qword_1EDAE5300;
  if (!qword_1EDAE5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5300);
  }

  return result;
}

unint64_t sub_1DA17B778()
{
  result = qword_1EDAE52E0;
  if (!qword_1EDAE52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE52E0);
  }

  return result;
}

unint64_t sub_1DA17B820()
{
  result = qword_1EDAE52D8;
  if (!qword_1EDAE52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE52D8);
  }

  return result;
}

unint64_t sub_1DA17B884()
{
  result = qword_1EDAE52F0;
  if (!qword_1EDAE52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE52F0);
  }

  return result;
}

unint64_t sub_1DA17B998()
{
  result = qword_1EDAE52E8;
  if (!qword_1EDAE52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE52E8);
  }

  return result;
}

unint64_t sub_1DA17B9F0()
{
  result = qword_1EDAE52D0;
  if (!qword_1EDAE52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE52D0);
  }

  return result;
}

unint64_t sub_1DA17BA50()
{
  result = qword_1EDAE52C8;
  if (!qword_1EDAE52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE52C8);
  }

  return result;
}

unint64_t sub_1DA17BAA8()
{
  result = qword_1EDAE52C0;
  if (!qword_1EDAE52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE52C0);
  }

  return result;
}

unint64_t sub_1DA17BAFC()
{
  result = qword_1EDAE5308;
  if (!qword_1EDAE5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5308);
  }

  return result;
}

unint64_t sub_1DA17BB60(uint64_t a1)
{
  result = sub_1DA17BB88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA17BB88()
{
  result = qword_1EDAE5348;
  if (!qword_1EDAE5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5348);
  }

  return result;
}

unint64_t sub_1DA17BBE0()
{
  result = qword_1EDAE5350;
  if (!qword_1EDAE5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5350);
  }

  return result;
}

unint64_t sub_1DA17BC40()
{
  result = qword_1EDAE5330;
  if (!qword_1EDAE5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5330);
  }

  return result;
}

unint64_t sub_1DA17BC9C()
{
  result = qword_1EDAE5328;
  if (!qword_1EDAE5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5328);
  }

  return result;
}

unint64_t sub_1DA17BCF8()
{
  result = qword_1EDAE5340;
  if (!qword_1EDAE5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5340);
  }

  return result;
}

unint64_t sub_1DA17BDA8()
{
  result = qword_1EDAE5338;
  if (!qword_1EDAE5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5338);
  }

  return result;
}

unint64_t sub_1DA17BE00()
{
  result = qword_1EDAE5320;
  if (!qword_1EDAE5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5320);
  }

  return result;
}

unint64_t sub_1DA17BE58()
{
  result = qword_1EDAE5318;
  if (!qword_1EDAE5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5318);
  }

  return result;
}

unint64_t sub_1DA17BEB0()
{
  result = qword_1EDAE5310;
  if (!qword_1EDAE5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5310);
  }

  return result;
}

uint64_t sub_1DA17BF08(void *a1)
{
  result = [a1 identifyingResult];
  if (result)
  {
    v3 = result;
    v4 = [result sectionBundleIdentifier];

    if (!v4)
    {
      return 0;
    }

    v5 = sub_1DA25F244();
    v7 = v6;

    if (qword_1ECBA0A20 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA178A70(v5, v7, qword_1ECBA56B8);

    if ((v8 & 1) == 0)
    {
      return 0;
    }

    v9 = [a1 cardSection];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 command];

      if (v11)
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();

        if (v12)
        {
          return 1;
        }
      }
    }

    result = [a1 cardSection];
    if (result)
    {
      v13 = result;
      v14 = [result command];

      if (v14)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass() != 0;

        return v15;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA17C0B0()
{
  v0 = sub_1DA178908(&unk_1F55BA6D0);
  result = swift_arrayDestroy();
  qword_1ECBA56B8 = v0;
  return result;
}

id sub_1DA17C100(void *a1)
{
  v2 = [a1 cardSection];
  if (!v2 || (v3 = v2, v4 = [v2 command], v3, !v4))
  {
LABEL_7:
    result = [a1 cardSection];
    if (!result)
    {
      return result;
    }

    v12 = result;
    v13 = [result command];

    if (v13)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = [v14 card];
        if (v15)
        {
          v16 = v15;
          v17 = [v15 title];

          if (v17)
          {
            v8 = sub_1DA25F244();
            v10 = v18;

            goto LABEL_13;
          }
        }
      }
    }

    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = [v5 tokenString];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = sub_1DA25F244();
  v10 = v9;

LABEL_13:

  v19 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v19 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return (v19 != 0);
}

uint64_t sub_1DA17C31C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DA17C34C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DA17C374(void *a1)
{
  sub_1DA25EFD4();
  v2 = a1;
  LOBYTE(a1) = sub_1DA25EFB4();

  return a1 & 1;
}

double sanitizeSFImage(void *a1)
{
  v1 = a1;
  [v1 size];
  v3 = v2;

  return v3;
}

uint64_t sub_1DA17D260(uint64_t a1)
{
  v2 = type metadata accessor for Header();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1DA17D4E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DA17D4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3360);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1DA17D5C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3360);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DA17D690@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA25E504();
  *a1 = result;
  return result;
}

uint64_t sub_1DA17D6E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3038);
  sub_1DA2274FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DA17D774()
{

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1DA17D7E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA25E5B4();
  *a1 = result;
  return result;
}

uint64_t sub_1DA17D844@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  if (v3)
  {
    *a2 = *a1;
    a2[1] = v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }
}

uint64_t sub_1DA17D874()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SearchUIUserReportRequestSelectorSectionContent() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  sub_1DA25F4E4();
  v6 = *(sub_1DA25EB74() + 32);
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4 + v6, 1, v1))
  {
    (*(v7 + 8))(v0 + v4 + v6, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA17D9F0()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SearchUIUserReportRequestSelectorSectionContent() - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = (v3 + 40) & ~v3;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v12 = *(v6 + 64);

  sub_1DA25F4E4();
  v8 = *(sub_1DA25EB74() + 32);
  if (!(*(v6 + 48))(v0 + v5 + v8, 1, v1))
  {
    (*(v6 + 8))(v0 + v5 + v8, v1);
  }

  v9 = v3 | v7;
  v10 = (v5 + v4 + v7) & ~v7;

  (*(v6 + 8))(v0 + v10, v1);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v12, v9 | 7);
}

uint64_t sub_1DA17DBD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA31F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA17DC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA31F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA17DCB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA31F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA17DD18()
{
  sub_1DA25F354();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA31C0);
  swift_getWitnessTable();
  sub_1DA25EB94();
  sub_1DA17525C(&qword_1ECBA31C8, &qword_1ECBA31C0);
  return swift_getWitnessTable();
}

uint64_t sub_1DA17DE08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBA3208);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1DA17DF44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBA3208);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DA17E084@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA25E594();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DA17E164()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA17E1A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA17E238()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA17E270()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA17E2BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA17E308()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA17E348@<X0>(void *a1@<X8>)
{
  result = sub_1DA25E4C4();
  *a1 = v3;
  return result;
}

uint64_t sub_1DA17E39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3520);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DA17E458(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3520);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DA17E508()
{
  MEMORY[0x1DA748FF0](v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA17E568()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3638);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3630);
  sub_1DA25E464();
  sub_1DA17525C(&qword_1ECBA3690, &qword_1ECBA3630);
  sub_1DA236E90();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DA17E678()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA17E6B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA17E6E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_1DA17E774@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1DA17E808()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA17E840()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA17E90C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA25DB54();
  *a1 = result;
  return result;
}

uint64_t sub_1DA17E97C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA25DB54();
  *a1 = result;
  return result;
}

uint64_t sub_1DA17E9B0()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA17E9F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA17EA2C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA17EA74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA17EAAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1DA17EBC8@<Q0>(__n128 *a1@<X8>)
{
  sub_1DA25DB34();
  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u64[0] = v6;
  return result;
}

double sub_1DA17EC18@<D0>(uint64_t a1@<X8>)
{
  sub_1DA25DB34();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1DA17EC70()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA17ED10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A98);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1DA17EE34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A90);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A98);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DA17EF58()
{
  type metadata accessor for SearchUIAppearance();
  sub_1DA25E434();
  sub_1DA237348();
  return swift_getWitnessTable();
}

uint64_t sub_1DA17EFC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA17F01C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA17F068()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DA17F0B4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA17F0F0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA17F184()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA17F1C0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA17F20C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA17F250()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA17F290()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA17F2DC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA17F320()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1DA188F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA18D80C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1DA18FF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA194840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getOBPrivacySplashControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __OnBoardingKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E85B2948;
    v6 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (OnBoardingKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("OBPrivacySplashController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getOBPrivacySplashControllerClass_block_invoke_cold_1();
  }

  getOBPrivacySplashControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __OnBoardingKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t forwardEvent(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v9 + 1) + 8 * v5) key];
        if ([v6 keyCode] == 81 && objc_msgSend(v6, "modifierFlags") == 0x100000)
        {

          v7 = 0;
          goto LABEL_12;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_12:

  return v7;
}

void sub_1DA19C040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA19D7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA19DF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA19F4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA1A48A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1DA1A61D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA1AA530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA1AD278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA1ADA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA1AF0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA1B8014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA1B8284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke(uint64_t a1)
{
  FindMyUICoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("FMUILocationDetailViewControllerViewOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFMUILocationDetailViewControllerViewOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getFMUILocationDetailViewControllerViewOptionsClass_block_invoke_cold_1();
    FindMyUICoreLibrary();
  }
}

void FindMyUICoreLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!FindMyUICoreLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __FindMyUICoreLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E85B3288;
    v3 = 0;
    FindMyUICoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!FindMyUICoreLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __FindMyUICoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FindMyUICoreLibraryCore_frameworkLibrary = result;
  return result;
}

SearchUIFlightCardSectionView *__getFMUILocationDetailViewControllerClass_block_invoke(uint64_t a1)
{
  FindMyUICoreLibrary();
  result = objc_getClass("FMUILocationDetailViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getFMUILocationDetailViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getFMUILocationDetailViewControllerClass_block_invoke_cold_1();
    return [(SearchUIFlightCardSectionView *)v3 initWithRowModel:v4 feedbackDelegate:v5, v6];
  }

  return result;
}

void sub_1DA1C1740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, id a24)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a24);
  _Unwind_Resume(a1);
}

void sub_1DA1C74E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1DA1D32AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA1D511C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak((v16 - 56));
  _Unwind_Resume(a1);
}

void sub_1DA1D6F08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_1DA1E5EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1DA1EBFEC(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1DA1F130C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA1F2244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void appDatabaseChanged()
{
  +[SearchUIDefaultBrowserAppIconImage invalidateDefaultBrowserBundleIdentifier];
  v0 = +[SearchUIImageCache sharedCache];
  [v0 appIconImageDidChange:0];
}

void sub_1DA1F6188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1DA1F68E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1DA1F71C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1DA1FA3A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA1FCA04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1DA202D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA205220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA206AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA207674(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DA207960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA207B74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA209AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1DA20E104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getSAAudioAppPredictorClass_block_invoke(uint64_t a1)
{
  SiriAudioSupportLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SAAudioAppPredictor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSAAudioAppPredictorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSAAudioAppPredictorClass_block_invoke_cold_1();
    SiriAudioSupportLibrary();
  }
}

void SiriAudioSupportLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!SiriAudioSupportLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __SiriAudioSupportLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E85B4668;
    v3 = 0;
    SiriAudioSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SiriAudioSupportLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SiriAudioSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SiriAudioSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void __getSAAudioAppPredictorOptionsClass_block_invoke(uint64_t a1)
{
  SiriAudioSupportLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SAAudioAppPredictorOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSAAudioAppPredictorOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getSAAudioAppPredictorOptionsClass_block_invoke_cold_1();
    [(SearchUIMobileTimerUtilities *)v2 getEnablementStatusForAlarmWithIdentifier:v3 completion:v4, v5];
  }
}

Class __getMTAlarmManagerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __MobileTimerLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E85B4680;
    v6 = 0;
    MobileTimerLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MobileTimerLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MTAlarmManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTAlarmManagerClass_block_invoke_cold_1();
  }

  getMTAlarmManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileTimerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileTimerLibraryCore_frameworkLibrary = result;
  return result;
}

void SearchUIInitLogging()
{
  if (SearchUIInitLogging_once != -1)
  {
    SearchUIInitLogging_cold_1();
  }
}

id SearchUITapLog()
{
  v2 = qword_1EDAE61C0;
  if (qword_1EDAE61C0)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SearchUITapLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id SearchUIPeekLog()
{
  v2 = qword_1EDAE61C8;
  if (qword_1EDAE61C8)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SearchUIPeekLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id SearchUITelemetryLog()
{
  v2 = qword_1EDAE61D0;
  if (qword_1EDAE61D0)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SearchUITelemetryLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id SearchUIAppTopHitSectionLoaderLog()
{
  v2 = qword_1EDAE61E0;
  if (qword_1EDAE61E0)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SearchUIAppTopHitSectionLoaderLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id SearchUIButtonItemLog()
{
  v2 = qword_1EDAE61E8;
  if (qword_1EDAE61E8)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SearchUIButtonItemLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id SearchUIBiomeLog()
{
  v2 = qword_1EDAE61F0;
  if (qword_1EDAE61F0)
  {
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    SearchUIBiomeLog_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

void sub_1DA21F814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, id a20)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a20);
  _Block_object_dispose((v21 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1DA21F92C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

uint64_t sub_1DA223CEC()
{
  sub_1DA25F744();
  MEMORY[0x1DA747FF0](0);
  return sub_1DA25F764();
}

uint64_t sub_1DA223D58()
{
  sub_1DA25F744();
  MEMORY[0x1DA747FF0](0);
  return sub_1DA25F764();
}

id sub_1DA223DA8(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v127 = a5;
  v128 = a3;
  v120 = sub_1DA25F5A4();
  v121 = *(v120 - 8);
  v11 = MEMORY[0x1EEE9AC00](v120);
  v125 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v117 = &v107 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v118 = &v107 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v107 - v17;
  v123 = sub_1DA25F5B4();
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DA25E204();
  v124 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D70);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v107 - v24;
  v26 = &v6[OBJC_IVAR___SearchUIArchivedRowModel_swiftUIView];
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  if (!a2)
  {
    goto LABEL_36;
  }

  v126 = a4;
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    v32 = 0;
    a4 = v126;
    goto LABEL_51;
  }

  v28 = v27;
  v115 = a1;
  v114 = a2;
  v29 = [v28 searchString];
  if (v29)
  {
    v30 = v29;
    v111 = sub_1DA25F244();
    v113 = v31;
  }

  else
  {
    v111 = 0;
    v113 = 0xE000000000000000;
  }

  v33 = [v28 archive];
  v116 = a6;
  if (v33)
  {
    v34 = v33;
    v112 = sub_1DA25DEA4();
    v36 = v35;

    v109 = [v28 attributeSet];
    if (v109)
    {
      v110 = a2;
      v37 = [v28 isTopHit];
      v38 = v36;
      v39 = sub_1DA25E1F4();
      v40 = *(v39 - 8);
      v41 = MEMORY[0x1E6985BB0];
      if (!v37)
      {
        v41 = MEMORY[0x1E6985BC0];
      }

      (*(*(v39 - 8) + 104))(v25, *v41, v39);
      sub_1DA25E1F4();
      (*(v40 + 56))(v25, 0, 1, v39);
      v108 = v38;
      v42 = v109;
      sub_1DA25DCE4();
      sub_1DA179568(v25, &qword_1ECBA2D70);

      swift_beginAccess();
      sub_1DA225958(v130, v26);
      swift_endAccess();
      v32 = [v28 isTopHit];

      sub_1DA225904(v112, v108);
      a2 = v110;
      a1 = v115;
      a4 = v126;
LABEL_50:
      a6 = v116;
      goto LABEL_51;
    }

    sub_1DA225904(v112, v36);
  }

  else
  {
  }

  sub_1DA2251E0();
  v43 = swift_allocError();
  swift_willThrow();
  v44 = v125;
  a4 = v126;
  v45 = v124;
  v130[0] = v43;
  v46 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D80);
  if (swift_dynamicCast())
  {
    if ((*(v45 + 88))(v22, v20) == *MEMORY[0x1E6985BD0])
    {
      v47 = v6;

      if (qword_1ECBA2C80 != -1)
      {
        swift_once();
      }

      v48 = sub_1DA25E2B4();
      __swift_project_value_buffer(v48, qword_1ECBA5760);
      v49 = sub_1DA25E294();
      v50 = sub_1DA25F464();
      v51 = os_log_type_enabled(v49, v50);
      a1 = v115;
      if (v51)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1DA169000, v49, v50, "Failed to find type of view, is the framework imported in Spotlight, and is the type public?", v52, 2u);
        MEMORY[0x1DA748F50](v52, -1, -1);
      }

      v32 = 0;
      v6 = v47;
      goto LABEL_50;
    }

    (*(v45 + 8))(v22, v20);
  }

  v130[0] = v43;
  v53 = v43;
  v54 = v123;
  if (swift_dynamicCast())
  {
    v55 = v122;
    v56 = (*(v122 + 88))(v19, v54);
    if (v56 == *MEMORY[0x1E69E6AF8])
    {
      v125 = v6;

      (*(v55 + 96))(v19, v54);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D88);
      v58 = v121;
      v59 = v119;
      v60 = v120;
      (*(v121 + 32))(v119, &v19[*(v57 + 48)], v120);
      if (qword_1ECBA2C80 != -1)
      {
        swift_once();
      }

      v61 = sub_1DA25E2B4();
      __swift_project_value_buffer(v61, qword_1ECBA5760);
      v44 = v118;
      (*(v58 + 16))(v118, v59, v60);
      v62 = v59;
      v63 = sub_1DA25E294();
      v64 = sub_1DA25F464();
      v65 = os_log_type_enabled(v63, v64);
      a1 = v115;
      if (v65)
      {
        v66 = swift_slowAlloc();
        v67 = v44;
        v68 = swift_slowAlloc();
        v129[0] = v68;
        *v66 = 136315138;
        v124 = sub_1DA25F594();
        v70 = v69;
        v110 = a2;
        v71 = *(v58 + 8);
        v71(v67, v60);
        v72 = sub_1DA22535C(v124, v70, v129);
        a4 = v126;

        *(v66 + 4) = v72;
        _os_log_impl(&dword_1DA169000, v63, v64, "Type mismatch with error %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x1DA748F50](v68, -1, -1);
        MEMORY[0x1DA748F50](v66, -1, -1);

        v73 = &v133;
LABEL_33:
        v71(*(v73 - 32), v60);
        a2 = v110;
LABEL_35:
        v6 = v125;
        a6 = v116;

LABEL_36:
        v32 = 0;
        goto LABEL_51;
      }

      goto LABEL_34;
    }

    v58 = v121;
    if (v56 == *MEMORY[0x1E69E6B08])
    {
      v125 = v6;

      (*(v122 + 96))(v19, v54);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D88);
      v75 = v117;
      v60 = v120;
      (*(v58 + 32))(v117, &v19[*(v74 + 48)], v120);
      if (qword_1ECBA2C80 != -1)
      {
        swift_once();
      }

      v76 = sub_1DA25E2B4();
      __swift_project_value_buffer(v76, qword_1ECBA5760);
      (*(v58 + 16))(v44, v75, v60);
      v62 = v75;
      v63 = sub_1DA25E294();
      v77 = sub_1DA25F464();
      v78 = os_log_type_enabled(v63, v77);
      a1 = v115;
      if (v78)
      {
        v79 = swift_slowAlloc();
        v80 = v44;
        v81 = swift_slowAlloc();
        v129[0] = v81;
        *v79 = 136315138;
        v124 = sub_1DA25F594();
        v83 = v82;
        v110 = a2;
        v71 = *(v58 + 8);
        v71(v80, v60);
        v84 = sub_1DA22535C(v124, v83, v129);
        a4 = v126;

        *(v79 + 4) = v84;
        _os_log_impl(&dword_1DA169000, v63, v77, "required value not found with error %s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x1DA748F50](v81, -1, -1);
        MEMORY[0x1DA748F50](v79, -1, -1);

        v73 = &v132;
        goto LABEL_33;
      }

LABEL_34:

      v85 = *(v58 + 8);
      v85(v44, v60);
      v85(v62, v60);
      goto LABEL_35;
    }

    (*(v122 + 8))(v19, v54);
  }

  v130[0] = v43;
  v86 = v43;
  if (!swift_dynamicCast())
  {

    if (qword_1ECBA2C80 != -1)
    {
      swift_once();
    }

    v94 = sub_1DA25E2B4();
    __swift_project_value_buffer(v94, qword_1ECBA5760);
    v95 = v43;
    v96 = sub_1DA25E294();
    v97 = sub_1DA25F464();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v130[0] = v99;
      *v98 = 136315138;
      swift_getErrorValue();
      v100 = sub_1DA25F6D4();
      v102 = sub_1DA22535C(v100, v101, v130);

      *(v98 + 4) = v102;
      a4 = v126;
      _os_log_impl(&dword_1DA169000, v96, v97, "unknown error %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x1DA748F50](v99, -1, -1);
      MEMORY[0x1DA748F50](v98, -1, -1);
    }

    else
    {
    }

    v32 = 0;
    a1 = v115;
    goto LABEL_50;
  }

  v87 = v6;

  a6 = v116;
  if (qword_1ECBA2C80 != -1)
  {
    swift_once();
  }

  v88 = sub_1DA25E2B4();
  __swift_project_value_buffer(v88, qword_1ECBA5760);
  v89 = sub_1DA25E294();
  v90 = sub_1DA25F474();
  v91 = os_log_type_enabled(v89, v90);
  a1 = v115;
  if (v91)
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_1DA169000, v89, v90, "Backend failed to fill values", v92, 2u);
    v93 = v92;
    a6 = v116;
    MEMORY[0x1DA748F50](v93, -1, -1);
  }

  v32 = 0;
  v6 = v87;
LABEL_51:
  if (a6)
  {
    a6 = sub_1DA25F234();
  }

  v103 = type metadata accessor for SearchUIArchivedRowModel();
  v131.receiver = v6;
  v131.super_class = v103;
  v104 = objc_msgSendSuper2(&v131, sel_initWithResult_cardSection_isInline_queryId_itemIdentifier_, a1, a2, v128 & 1, a4, a6);

  if (v104)
  {

    v105 = v104;
    [v105 setIsTopHit_];
  }

  return v104;
}

id sub_1DA224FE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIArchivedRowModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA225054(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1DA747C80](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1DA2250A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DA25F3F4();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1DA225100@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA25F404();
  *a1 = result;
  return result;
}

uint64_t sub_1DA225128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DA2251E0()
{
  result = qword_1ECBA2D78;
  if (!qword_1ECBA2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA2D78);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DA22526C()
{
  sub_1DA225CA8(&qword_1ECBA2E90);
  sub_1DA225CA8(&qword_1ECBA2E98);
  return sub_1DA25F664();
}

unint64_t sub_1DA22535C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DA225428(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DA2259C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1DA225428(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DA225534(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1DA25F5C4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1DA225534(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DA225580(a1, a2);
  sub_1DA2256B0(&unk_1F55BA5D0);
  return v3;
}

uint64_t sub_1DA225580(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DA22579C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DA25F5C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DA25F2C4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DA22579C(v10, 0);
        result = sub_1DA25F544();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DA2256B0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DA225810(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1DA22579C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1DA225810(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1DA225904(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DA225958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA2259C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for BackendError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BackendError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA225B34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA225B54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DA225B8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA225BAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_1DA225BEC()
{
  result = qword_1ECBA2E70;
  if (!qword_1ECBA2E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA2E70);
  }

  return result;
}

uint64_t sub_1DA225CA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIBackgroundTaskIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA225D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v7, a1);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1DA25F6A4();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return (*(v4 + 8))(v6, a1);
  }

  return result;
}

uint64_t sub_1DA225EF4()
{
  result = sub_1DA25DF04();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA225F7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1DA25DF04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1DA2261BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1DA25DF04() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t sub_1DA2264A4()
{
  result = qword_1ECBA2FF0;
  if (!qword_1ECBA2FF0)
  {
    sub_1DA25DF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA2FF0);
  }

  return result;
}

uint64_t sub_1DA2264FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DA25DF04();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1DA226564(char *a1@<X8>)
{
  v2 = type metadata accessor for SearchUIUserReportModel();
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[6];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2FF8);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = objc_opt_self();
  v6 = sub_1DA25F234();
  v7 = [v5 localizedStringForKey_];

  if (v7)
  {
    v8 = sub_1DA25F244();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &a1[v2[7]];
  *v11 = v8;
  v11[1] = v10;
  v12 = sub_1DA25F234();
  v13 = [v5 localizedStringForKey_];

  if (v13)
  {
    v14 = sub_1DA25F244();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = &a1[v2[8]];
  *v17 = v14;
  v17[1] = v16;
}

uint64_t type metadata accessor for SearchUIUserReportModel()
{
  result = qword_1ECBA3000;
  if (!qword_1ECBA3000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA226750()
{
  sub_1DA22682C(319, &qword_1ECBA3010, &qword_1ECBA0998);
  if (v0 <= 0x3F)
  {
    sub_1DA22682C(319, &qword_1ECBA3018, &qword_1ECBA3020);
    if (v1 <= 0x3F)
    {
      sub_1DA226884();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DA22682C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1DA173718(255, a3);
    v4 = sub_1DA25F4E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DA226884()
{
  if (!qword_1ECBA3028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA2FF8);
    v0 = sub_1DA25F4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBA3028);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA226930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DA226978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DA2269C8()
{
  result = qword_1ECBA32C0;
  if (!qword_1ECBA32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA32C0);
  }

  return result;
}

void sub_1DA226A1C()
{
  v0 = objc_allocWithZone(SearchUIPrivacyDetailsViewController);
  v1 = sub_1DA25F234();
  v2 = [v0 initWithBundleIdentifier_];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_1DA226AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DA226BEC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1DA226B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DA226BEC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1DA226BC4()
{
  sub_1DA226BEC();
  sub_1DA25E834();
  __break(1u);
}

unint64_t sub_1DA226BEC()
{
  result = qword_1ECBA3030;
  if (!qword_1ECBA3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3030);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA226C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA226C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1DA226D08@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DA25EA84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_1DA25EA64();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v9 = sub_1DA25EAA4();

    (*(v5 + 8))(v7, v4);
    v21 = v9;
    v22 = xmmword_1DA2733E0;
    v23 = 0;
    memset(v24, 0, 11);
    sub_1DA25DB94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3068);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3098);
    sub_1DA2273C0();
    sub_1DA17525C(&qword_1ECBA3090, &qword_1ECBA3098);
    sub_1DA25E6D4();
  }

  else
  {
    v10 = sub_1DA25EBE4();
    v12 = v11;
    v13 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v14 = sub_1DA25EA34();
    KeyPath = swift_getKeyPath();
    v21 = v10;
    *&v22 = v12;
    *(&v22 + 1) = KeyPath;
    v23 = v14;
    v24[0] = 0x3FF0000000000000;
    LOWORD(v24[1]) = 256;
    BYTE2(v24[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3068);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3098);
    sub_1DA2273C0();
    sub_1DA17525C(&qword_1ECBA3090, &qword_1ECBA3098);
    sub_1DA25E6D4();
  }

  result = *&v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  *a2 = v25;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v19;
  *(a2 + 42) = v20;
  return result;
}

uint64_t sub_1DA227000()
{
  v1 = sub_1DA25E2E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3038);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21[-v6];
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v26 = v9;
  v27 = v10;
  sub_1DA174B4C();

  v11 = sub_1DA25E934();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1DA25E884();
  v25 = 0;
  v26 = v11;
  v27 = v13;
  v28 = v15 & 1;
  v29 = v17;
  v30 = v18;
  v31 = xmmword_1DA2733F0;
  v32 = xmmword_1DA2733F0;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3048);
  sub_1DA227284();
  sub_1DA227308();
  sub_1DA25EBA4();
  v19 = &v7[*(v5 + 36)];
  v19[32] = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  (*(v2 + 104))(v4, *MEMORY[0x1E697DAD8], v1);
  sub_1DA2274FC();
  sub_1DA25E9B4();
  (*(v2 + 8))(v4, v1);
  return sub_1DA22764C(v7);
}

unint64_t sub_1DA227284()
{
  result = qword_1ECBA3050;
  if (!qword_1ECBA3050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3050);
  }

  return result;
}

unint64_t sub_1DA227308()
{
  result = qword_1ECBA3058;
  if (!qword_1ECBA3058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3048);
    sub_1DA2273C0();
    sub_1DA17525C(&qword_1ECBA3090, &qword_1ECBA3098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3058);
  }

  return result;
}

unint64_t sub_1DA2273C0()
{
  result = qword_1ECBA3060;
  if (!qword_1ECBA3060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3068);
    sub_1DA227478();
    sub_1DA17525C(&qword_1ECBA3080, &qword_1ECBA3088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3060);
  }

  return result;
}

unint64_t sub_1DA227478()
{
  result = qword_1ECBA3070;
  if (!qword_1ECBA3070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3070);
  }

  return result;
}

unint64_t sub_1DA2274FC()
{
  result = qword_1ECBA30A0;
  if (!qword_1ECBA30A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3038);
    sub_1DA2275B4();
    sub_1DA17525C(&qword_1ECBA30B8, &qword_1ECBA30C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA30A0);
  }

  return result;
}

unint64_t sub_1DA2275B4()
{
  result = qword_1ECBA30A8;
  if (!qword_1ECBA30A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA30B0);
    sub_1DA227284();
    sub_1DA227308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA30A8);
  }

  return result;
}

uint64_t sub_1DA22764C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1DA2276D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1DA227718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA22779C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v38 = sub_1DA25E2E4();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA30C8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA30D0);
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v34 - v6;
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v40 = v1;
  v41 = v8;
  v42 = v9;
  sub_1DA174B4C();

  v10 = sub_1DA25E934();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_1DA25E894();
  sub_1DA25E2C4();
  LOBYTE(v51) = 0;
  v41 = v10;
  v42 = v12;
  v43 = v14 & 1;
  v44 = v16;
  v45 = v17;
  v46 = v18;
  v47 = v19;
  v48 = v20;
  v49 = v21;
  v50 = 0;
  sub_1DA227F58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA30D8);
  sub_1DA227284();
  sub_1DA17525C(&qword_1ECBA30E0, &qword_1ECBA30D8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA30E8);
  v23 = sub_1DA228228();
  v51 = v22;
  v52 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1DA25EBB4();
  v24 = v38;
  (*(v3 + 104))(v5, *MEMORY[0x1E697DAD8], v38);
  sub_1DA2282E0();
  v25 = v39;
  v26 = v35;
  sub_1DA25E9B4();
  (*(v3 + 8))(v5, v24);
  (*(v37 + 8))(v7, v26);
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  v29 = v2[3];
  v28[3] = v2[2];
  v28[4] = v29;
  v30 = v2[5];
  v28[5] = v2[4];
  v28[6] = v30;
  v31 = v2[1];
  v28[1] = *v2;
  v28[2] = v31;
  v32 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3110) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3118);
  sub_1DA228428(v2, &v41);
  result = sub_1DA25E3B4();
  *v32 = KeyPath;
  return result;
}

double sub_1DA227BD4@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *a1;
  v14 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3120);
  sub_1DA25EB64();
  swift_getKeyPath();
  v4 = *(a1 + 9);

  sub_1DA227D78(v10, v11, v12, v4, &v13);
  result = *&v13;
  v6 = v14;
  v7 = v16;
  v8 = v17;
  v9 = v15;
  *a2 = v13;
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  return result;
}

void sub_1DA227CA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1DA25F244();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1DA227D08(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1DA25F234();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setName_];
}

uint64_t sub_1DA227D78@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X4>, void *a5@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3128);
  v10 = sub_1DA25F654();

  v22 = MEMORY[0x1E69E7CC0];
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DA25F634())
  {
    v16 = v10;
    v17 = a5;
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v12 = 0;
    a1 = a4 & 0xC000000000000001;
    a5 = (a4 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (a1)
      {
        v13 = MEMORY[0x1DA747E20](v12, a4);
      }

      else
      {
        if (v12 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v13 = *(a4 + 8 * v12 + 32);
      }

      a3 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      swift_getAtKeyPath();
      if (v21)
      {

        sub_1DA25F5D4();
        a2 = *(v22 + 16);
        sub_1DA25F604();
        sub_1DA25F614();
        sub_1DA25F5E4();
      }

      else
      {
      }

      ++v12;
      if (v10 == i)
      {
        v14 = v22;
        a2 = v19;
        a3 = v20;
        a5 = v17;
        a1 = v18;
        v10 = v16;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_18:

  sub_1DA228460(a1, a2, a3, v10, v14, a5);
}

uint64_t sub_1DA227F58()
{
  v0 = sub_1DA25E654();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DA25E644();
  sub_1DA25E634();
  sub_1DA25E624();
  sub_1DA25E634();
  sub_1DA25E624();
  sub_1DA25E634();
  sub_1DA25E664();
  v1 = sub_1DA25E924();
  v3 = v2;
  v5 = v4;
  sub_1DA25EA44();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA30E8);
  sub_1DA228228();
  sub_1DA25E994();
  sub_1DA174C38(v1, v3, v5 & 1);
}

uint64_t sub_1DA228114(uint64_t a1)
{
  v2 = sub_1DA25E3C4();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1DA25E584();
}

unint64_t sub_1DA228228()
{
  result = qword_1ECBA30F0;
  if (!qword_1ECBA30F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA30E8);
    sub_1DA17525C(&qword_1ECBA30F8, &qword_1ECBA3100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA30F0);
  }

  return result;
}

unint64_t sub_1DA2282E0()
{
  result = qword_1ECBA3108;
  if (!qword_1ECBA3108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA30D0);
    sub_1DA227284();
    sub_1DA17525C(&qword_1ECBA30E0, &qword_1ECBA30D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA30E8);
    sub_1DA228228();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3108);
  }

  return result;
}

uint64_t sub_1DA2283E8()
{
  v1 = (*(v0 + 96))();

  return MEMORY[0x1EEDDE398](v1);
}

void sub_1DA228460(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v17[1] = a1;
  v17[2] = a2;
  v17[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3120);
  v12 = MEMORY[0x1DA7473D0](v17);
  v13 = v17[0];
  if (!v17[0] || (v16 = a4, MEMORY[0x1EEE9AC00](v12), v15[2] = v17, v14 = sub_1DA230778(sub_1DA2285F8, v15, a5), v13, a4 = v16, (v14 & 1) == 0))
  {
    v17[0] = 0;
    sub_1DA25EB44();
  }

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  a6[5] = 0x72616D6B63656863;
  a6[6] = 0xE90000000000006BLL;
}

uint64_t sub_1DA228594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA25E5B4();
  *a1 = result;
  return result;
}

unint64_t sub_1DA228650()
{
  result = qword_1ECBA0998;
  if (!qword_1ECBA0998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBA0998);
  }

  return result;
}

unint64_t sub_1DA22869C()
{
  result = qword_1ECBA3130;
  if (!qword_1ECBA3130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA30D0);
    sub_1DA2282E0();
    swift_getOpaqueTypeConformance2();
    sub_1DA17525C(qword_1ECBA3138, &qword_1ECBA3118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3130);
  }

  return result;
}

uint64_t sub_1DA228798()
{
  sub_1DA25F4E4();
  result = sub_1DA25EB74();
  if (v1 <= 0x3F)
  {
    result = sub_1DA25F774();
    if (v2 <= 0x3F)
    {
      result = sub_1DA25F354();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DA228864(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
      if (v21 >= 2)
      {
        return v21 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v20 = *v19;
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1DA2289FC(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v19 + v10 + 8) & ~v10);
    if (v8 >= a2)
    {
      v25 = *(v6 + 56);
      v26 = a2 + 1;

      v25((v19 + v10 + 8) & ~v10, v26);
    }

    else
    {
      if (v11 <= 3)
      {
        v22 = ~(-1 << (8 * v11));
      }

      else
      {
        v22 = -1;
      }

      if (v11)
      {
        v23 = v22 & (~v8 + a2);
        if (v11 <= 3)
        {
          v24 = v11;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v11);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

void sub_1DA228CD8()
{
  sub_1DA25F4E4();
  sub_1DA25EB74();

  JUMPOUT(0x1DA7473D0);
}

uint64_t sub_1DA228D24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = *(MEMORY[0x1EEE9AC00](a1) + 16);
  v7 = sub_1DA25F354();
  v33 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA31C0);
  v32 = v8;
  WitnessTable = swift_getWitnessTable();
  v9 = *(a1 + 32);
  v39 = v7;
  v40 = v6;
  v41 = v8;
  v42 = WitnessTable;
  v43 = v9;
  v10 = v9;
  v11 = sub_1DA25EB94();
  v30 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v28 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v25 - v14;
  v26 = *(v2 + *(a1 + 48));
  v39 = v26;
  v15 = *(a1 + 24);
  v35 = v6;
  v36 = v15;
  v37 = v10;
  KeyPath = swift_getKeyPath();
  (*(v4 + 16))(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v16 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v6;
  *(v17 + 3) = v15;
  *(v17 + 4) = v10;
  (*(v4 + 32))(&v17[v16], &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v18 = sub_1DA17525C(&qword_1ECBA31C8, &qword_1ECBA31C0);

  v19 = v28;
  sub_1DA25EB84();
  v38 = v18;
  swift_getWitnessTable();
  v21 = v29;
  v20 = v30;
  v22 = *(v30 + 16);
  v22(v29, v19, v11);
  v23 = *(v20 + 8);
  v23(v19, v11);
  v22(v34, v21, v11);
  return (v23)(v21, v11);
}

uint64_t sub_1DA229084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a4;
  v26 = a5;
  v23 = a1;
  v24 = a2;
  v27 = a6;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v22 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchUIUserReportRequestSelectorSectionContent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  (*(v12 + 16))(&v22 - v14, a2, v11);
  (*(v9 + 16))(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = (v13 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  *(v18 + 2) = a3;
  *(v18 + 3) = v19;
  *(v18 + 4) = v20;
  (*(v12 + 32))(&v18[v16], v15, v11);
  (*(v9 + 32))(&v18[v17], v22, a3);
  v28 = a3;
  v29 = v19;
  v30 = v20;
  v31 = v23;
  v32 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA31D0);
  sub_1DA17525C(&qword_1ECBA31D8, &qword_1ECBA31D0);
  return sub_1DA25EB04();
}

uint64_t sub_1DA229328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DA25F4E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = *(a3 - 8);
  (*(v9 + 16))(&v11 - v7, a2, a3);
  (*(v9 + 56))(v8, 0, 1, a3);
  type metadata accessor for SearchUIUserReportRequestSelectorSectionContent();
  sub_1DA229EE8(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DA229494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  *a4 = sub_1DA25E614();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA31E0);
  return sub_1DA22951C(a1, a2, a3, (a4 + *(v8 + 44)));
}

uint64_t sub_1DA22951C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v80 = a4;
  v82 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA25F4E4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v64 = &v60 - v10;
  v84 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA31E8);
  v76 = *(v18 - 8);
  v77 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA31F0);
  v21 = MEMORY[0x1EEE9AC00](v73);
  v79 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v68 = &v60 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v78 = &v60 - v25;
  v62 = a3;
  type metadata accessor for SearchUIUserReportRequestSelectorSectionContent();
  swift_getAtKeyPath();
  v85 = v87;
  v86 = v88;
  sub_1DA174B4C();
  v26 = sub_1DA25E934();
  v71 = v27;
  v72 = v26;
  v65 = v28;
  v75 = v29;
  v70 = sub_1DA25EA54();
  KeyPath = swift_getKeyPath();

  v87 = sub_1DA25EA74();
  sub_1DA25E8F4();
  v74 = v20;
  sub_1DA25E964();

  sub_1DA228CD8();
  v30 = v82;
  (*(v82 + 16))(v15, a1, a2);
  v31 = v30;
  (*(v30 + 56))(v15, 0, 1, a2);
  v32 = *(TupleTypeMetadata2 + 48);
  v33 = v84;
  v34 = *(v84 + 16);
  v35 = v64;
  v66 = v17;
  v34(v64, v17, v8);
  v36 = v15;
  v37 = v15;
  v38 = v35;
  v34(&v35[v32], v37, v8);
  v39 = *(v31 + 48);
  v81 = a2;
  if (v39(v38, 1, a2) == 1)
  {
    v40 = *(v33 + 8);
    v40(v36, v8);
    v40(v66, v8);
    if (v39(&v38[v32], 1, v81) == 1)
    {
      v40(v38, v8);
      v41 = 1.0;
      goto LABEL_10;
    }

LABEL_6:
    (*(v63 + 8))(v38, TupleTypeMetadata2);
    v41 = 0.0;
    goto LABEL_10;
  }

  v60 = v36;
  v34(v67, v38, v8);
  if (v39(&v38[v32], 1, v81) == 1)
  {
    v42 = *(v84 + 8);
    v42(v60, v8);
    v42(v66, v8);
    (*(v82 + 8))(v67, v81);
    goto LABEL_6;
  }

  v43 = v81;
  v44 = v82;
  v45 = v61;
  (*(v82 + 32))(v61, &v38[v32], v81);
  v46 = v67;
  v47 = sub_1DA25F1B4();
  v48 = *(v44 + 8);
  v48(v45, v43);
  v49 = *(v84 + 8);
  v49(v60, v8);
  v49(v66, v8);
  v48(v46, v43);
  v49(v38, v8);
  if (v47)
  {
    v41 = 1.0;
  }

  else
  {
    v41 = 0.0;
  }

LABEL_10:
  v50 = v68;
  (*(v76 + 32))(v68, v74, v77);
  *(v50 + *(v73 + 36)) = v41;
  v51 = v78;
  sub_1DA17DBD0(v50, v78);
  v52 = v79;
  sub_1DA17DC40(v51, v79);
  v53 = v80;
  v55 = v71;
  v54 = v72;
  *v80 = v72;
  v53[1] = v55;
  v56 = v65 & 1;
  *(v53 + 16) = v65 & 1;
  v57 = KeyPath;
  v53[3] = v75;
  v53[4] = v57;
  v53[5] = v70;
  v53[6] = 0;
  *(v53 + 56) = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA31F8);
  sub_1DA17DC40(v52, v53 + *(v58 + 64));
  sub_1DA174BA0(v54, v55, v56);

  sub_1DA25DB94();
  sub_1DA25DB94();
  sub_1DA17DCB0(v51);
  sub_1DA17DCB0(v52);
  sub_1DA174C38(v54, v55, v56);
}

uint64_t sub_1DA229D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for SearchUIUserReportRequestSelectorSectionContent() - 8);
  v9 = v2 + ((*(v8 + 80) + 40) & ~*(v8 + 80));

  return sub_1DA229084(a1, v9, v5, v6, v7, a2);
}

uint64_t sub_1DA229DF4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SearchUIUserReportRequestSelectorSectionContent() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_1DA229328(v0 + v3, v4, v1);
}

uint64_t sub_1DA229EE8(uint64_t a1)
{
  v2 = sub_1DA25F4E4();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  sub_1DA25EB74();
  return sub_1DA25EB44();
}

uint64_t type metadata accessor for SearchUIUserReportRequestView()
{
  result = qword_1ECBA3218;
  if (!qword_1ECBA3218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA22A034()
{
  sub_1DA173718(319, &qword_1ECBA3228);
  if (v0 <= 0x3F)
  {
    sub_1DA173718(319, &qword_1ECBA3230);
    if (v1 <= 0x3F)
    {
      sub_1DA22A1A8();
      if (v2 <= 0x3F)
      {
        sub_1DA173718(319, &qword_1ECBA3240);
        if (v3 <= 0x3F)
        {
          sub_1DA22A20C(319, &qword_1ECBA3248, type metadata accessor for SearchUIUserReportModel, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1DA22A20C(319, &unk_1ECBA3250, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DA22A1A8()
{
  result = qword_1ECBA3238;
  if (!qword_1ECBA3238)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECBA3238);
  }

  return result;
}

void sub_1DA22A20C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DA22A28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v74 = type metadata accessor for SearchUIUserReportRequestView();
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v77 = v3;
  v78 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA32D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v75 = &v55 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA32D8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v55 - v6;
  v64 = sub_1DA25E5F4();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1DA25E744();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3298);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v55 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3290);
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v16 = &v55 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3280);
  v61 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v55 - v17;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBA3270);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA32E0);
  v70 = *(v19 - 8);
  v71 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v55 - v20;
  v81 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA32E8);
  sub_1DA17525C(&qword_1ECBA32F0, &qword_1ECBA32E8);
  sub_1DA25E914();
  sub_1DA25E734();
  v21 = sub_1DA17525C(&unk_1ECBA32A0, &qword_1ECBA3298);
  v22 = MEMORY[0x1E697C750];
  v57 = v16;
  v23 = v56;
  sub_1DA25EA24();
  (*(v8 + 8))(v10, v23);
  (*(v12 + 8))(v14, v11);
  v80 = a1;
  v24 = [*(a1 + 8) title];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1DA25F244();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v86 = v26;
  v87 = v28;
  v29 = v63;
  v30 = v62;
  v31 = v64;
  (*(v63 + 104))(v62, *MEMORY[0x1E697C438], v64);
  v82 = v11;
  v83 = v23;
  v84 = v21;
  v85 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_1DA174B4C();
  v34 = v59;
  v35 = v60;
  v36 = v57;
  sub_1DA25E9C4();
  (*(v29 + 8))(v30, v31);

  v37 = (*(v58 + 8))(v36, v35);
  MEMORY[0x1EEE9AC00](v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3288);
  v82 = v35;
  v83 = MEMORY[0x1E69E6158];
  v84 = OpaqueTypeConformance2;
  v85 = v33;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_1DA17525C(&qword_1ECBA32B0, &qword_1ECBA3288);
  v41 = v66;
  v42 = v65;
  sub_1DA25E9F4();
  (*(v61 + 8))(v34, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3200);
  v43 = v80;
  v44 = v72;
  sub_1DA25EAF4();
  swift_getKeyPath();
  v45 = v75;
  sub_1DA25EB54();

  sub_1DA179568(v44, &qword_1ECBA32D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2FF8);
  v82 = v42;
  v83 = v38;
  v84 = v39;
  v85 = v40;
  swift_getOpaqueTypeConformance2();
  sub_1DA17525C(&qword_1ECBA32B8, &qword_1ECBA2FF8);
  sub_1DA2269C8();
  v46 = v69;
  v47 = v68;
  sub_1DA25E9E4();
  sub_1DA179568(v45, &qword_1ECBA32D0);
  (*(v67 + 8))(v41, v47);
  v48 = v78;
  sub_1DA22CE94(v43, v78);
  v49 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v50 = swift_allocObject();
  sub_1DA22CEF8(v48, v50 + v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3260);
  v52 = v79;
  v53 = (v79 + *(v51 + 36));
  sub_1DA25E3D4();
  sub_1DA25F3A4();
  *v53 = &unk_1DA273940;
  v53[1] = v50;
  return (*(v70 + 32))(v52, v46, v71);
}

uint64_t sub_1DA22AD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for SearchUIUserReportModel();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchUIUserReportRequestView();
  v7 = v6 - 8;
  v61 = *(v6 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA32D8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v53 - v10;
  v12 = *(v7 + 40);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3200);
  v60 = v12;
  v59 = v13;
  sub_1DA25EAF4();
  swift_getKeyPath();
  sub_1DA25EB54();

  sub_1DA179568(v11, &qword_1ECBA32D8);
  v66 = v75[12];
  v65 = v75[13];
  v64 = v75[14];
  v14 = *(a1 + 8);
  v15 = [v14 reportOptionsSectionTitle];
  if (v15)
  {
    v16 = v15;
    v63 = sub_1DA25F244();
    v68 = v17;
  }

  else
  {
    v63 = 0;
    v68 = 0xE000000000000000;
  }

  v18 = [v14 disclaimerText];
  if (v18)
  {
    v19 = v18;
    v58 = sub_1DA25F244();
    v57 = v20;
  }

  else
  {
    v58 = 0;
    v57 = 0xE000000000000000;
  }

  v21 = objc_opt_self();
  v22 = sub_1DA25F234();
  v23 = [v21 linkWithBundleIdentifier_];

  if (v23 && (v24 = [v23 flow], v23, v25 = objc_msgSend(v24, sel_localizedButtonTitle), v24, v25) || (v26 = objc_msgSend(v14, sel_disclaimerLearnMorePunchout)) != 0 && (v27 = v26, v25 = objc_msgSend(v26, sel_name), v27, v25))
  {
    v56 = sub_1DA25F244();
    v55 = v28;
  }

  else
  {
    v56 = 0;
    v55 = 0xE000000000000000;
  }

  v29 = [v14 userReportOptions];
  if (v29)
  {
    v30 = v29;
    sub_1DA173718(0, &qword_1ECBA0998);
    v67 = sub_1DA25F324();
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
  }

  sub_1DA22CE94(a1, &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v54 = swift_allocObject();
  sub_1DA22CEF8(&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v54 + v31);
  sub_1DA25EAD4();
  v60 = *(v5 + 1);
  v32 = v60;
  sub_1DA22D134(v5);
  v33 = [v14 attachmentSectionTitle];
  if (v33)
  {
    v34 = v33;
    v61 = sub_1DA25F244();
    v36 = v35;

    v37 = v36;
  }

  else
  {
    v61 = 0;
    v37 = 0xE000000000000000;
  }

  v38 = v66;
  *&v69 = v66;
  v39 = v65;
  *(&v69 + 1) = v65;
  v40 = v64;
  *&v70 = v64;
  v41 = v63;
  *(&v70 + 1) = v63;
  *&v71 = v68;
  v42 = v58;
  *(&v71 + 1) = v58;
  v43 = v57;
  v44 = v56;
  *&v72 = v57;
  *(&v72 + 1) = v56;
  v45 = v55;
  *&v73 = v55;
  *(&v73 + 1) = v67;
  v46 = v54;
  *&v74 = sub_1DA22D4DC;
  *(&v74 + 1) = v54;
  v47 = v72;
  v48 = v62;
  *(v62 + 32) = v71;
  *(v48 + 48) = v47;
  v49 = v74;
  *(v48 + 64) = v73;
  *(v48 + 80) = v49;
  v50 = v70;
  *v48 = v69;
  *(v48 + 16) = v50;
  v51 = v61;
  *(v48 + 96) = v60;
  *(v48 + 104) = v51;
  *(v48 + 112) = v37;
  sub_1DA228428(&v69, v75);
  v75[0] = v38;
  v75[1] = v39;
  v75[2] = v40;
  v75[3] = v41;
  v75[4] = v68;
  v75[5] = v42;
  v75[6] = v43;
  v75[7] = v44;
  v75[8] = v45;
  v75[9] = v67;
  v75[10] = sub_1DA22D4DC;
  v75[11] = v46;
  return sub_1DA22D558(v75);
}

void sub_1DA22B338()
{
  v1 = type metadata accessor for SearchUIUserReportModel();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3360);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = v0[1];
  v8 = [v7 disclaimerLearnMorePunchout];
  if (v8 && (v9 = v8, v10 = [v8 bundleIdentifier], v9, v10))
  {
    v11 = sub_1DA25F244();
    v13 = v12;

    sub_1DA25DEF4();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2FF8);
    v15 = &v6[*(v14 + 28)];
    *v15 = v11;
    v15[1] = v13;
    (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
    type metadata accessor for SearchUIUserReportRequestView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3200);
    sub_1DA25EAD4();
    sub_1DA22D5AC(v6, &v3[*(v1 + 24)]);
    sub_1DA25EAE4();
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E69CA2A0]) init];
    v16 = [v7 disclaimerLearnMorePunchout];
    [v22 setPunchout_];

    v17 = [objc_allocWithZone(MEMORY[0x1E69C9F90]) init];
    [v17 setCommand_];
    v18 = [objc_opt_self() handlerForButton:v17 rowModel:*v0 environment:v0[3]];
    if (v18)
    {
      v19 = v18;
      [v19 executeWithTriggerEvent_];
    }

    v20 = v22;
  }
}

uint64_t sub_1DA22B618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3308);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v19 - v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3310);
  v5 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v19 - v6;
  v8 = sub_1DA25E704();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3318);
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v11 = &v19 - v10;
  sub_1DA25E6E4();
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3320);
  sub_1DA17525C(&qword_1ECBA3328, &qword_1ECBA3320);
  sub_1DA25E324();
  sub_1DA25E6F4();
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3330);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3338);
  v13 = sub_1DA22D050();
  v25 = v12;
  v26 = v13;
  swift_getOpaqueTypeConformance2();
  sub_1DA25E324();
  v14 = *(v21 + 48);
  v15 = v19;
  (*(v9 + 16))(v4, v11, v19);
  v16 = &v4[v14];
  v17 = v20;
  (*(v5 + 16))(v16, v7, v20);
  sub_1DA25E6B4();
  (*(v5 + 8))(v7, v17);
  return (*(v9 + 8))(v11, v15);
}

uint64_t sub_1DA22B99C(uint64_t a1)
{
  v2 = type metadata accessor for SearchUIUserReportRequestView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = type metadata accessor for SearchUIUserReportModel();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3200);
  sub_1DA25EAD4();
  v9 = &v8[*(v6 + 36)];
  v11 = *v9;
  v10 = *(v9 + 1);

  sub_1DA22D134(v8);
  v15[0] = v11;
  v15[1] = v10;
  sub_1DA22CE94(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_1DA22CEF8(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1DA174B4C();
  return sub_1DA25EB14();
}

uint64_t sub_1DA22BB50(uint64_t a1)
{
  v2 = sub_1DA25E5E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA32F8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1DA25E394();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchUIUserReportRequestView();
  sub_1DA22D220(a1 + *(v13 + 36), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1DA25F474();
    v14 = sub_1DA25E864();
    sub_1DA25E284();

    sub_1DA25E5D4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1DA25E384();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1DA22BDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for SearchUIUserReportRequestView();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchUIUserReportModel();
  v6 = v5 - 8;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3320);
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3338);
  MEMORY[0x1EEE9AC00](v32);
  v16 = &v30 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3200);
  sub_1DA25EAD4();
  v17 = &v11[*(v6 + 40)];
  v19 = *v17;
  v18 = *(v17 + 1);

  v20 = v11;
  v21 = v14;
  sub_1DA22D134(v20);
  v36 = v19;
  v37 = v18;
  v22 = v30;
  sub_1DA22CE94(a1, v30);
  v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v24 = swift_allocObject();
  sub_1DA22CEF8(v22, v24 + v23);
  sub_1DA174B4C();
  sub_1DA25EB14();
  sub_1DA25EAD4();
  if (*v9)
  {
    v25 = v9[1] == 0;
  }

  else
  {
    v25 = 1;
  }

  sub_1DA22D134(v9);
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  (*(v33 + 32))(v16, v21, v34);
  v28 = &v16[*(v32 + 36)];
  *v28 = KeyPath;
  v28[1] = sub_1DA22D1A8;
  v28[2] = v27;
  sub_1DA22D050();
  sub_1DA25E9D4();
  return sub_1DA179568(v16, &qword_1ECBA3338);
}

void sub_1DA22C158()
{
  v1 = v0;
  v2 = sub_1DA25E394();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchUIUserReportModel();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v24 - v10);
  v12 = *v0;
  v13 = [v12 identifyingResult];
  if (!v13)
  {
    return;
  }

  v25 = v13;
  v14 = [v12 cardSection];
  if (v14)
  {
    v15 = v14;
    v24 = v3;
    type metadata accessor for SearchUIUserReportRequestView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3200);
    sub_1DA25EAD4();
    if (*v11)
    {
      if (v11[1])
      {
        sub_1DA22D134(v11);
        sub_1DA25EAD4();
        v16 = *v9;
        v17 = *v9;
        sub_1DA22D134(v9);
        if (v16)
        {
          v18 = objc_allocWithZone(MEMORY[0x1E69CA568]);
          v19 = [v18 initWithSelection:v17 result:v25 cardSection:v15];
          if (v19)
          {
            v20 = v19;
            v21 = [v1[3] feedbackDelegate];
            if (v21)
            {
              v22 = v21;
              if ([v21 respondsToSelector_])
              {
                [v22 didReportUserResponseFeedback_];
              }

              swift_unknownObjectRelease();
              sub_1DA235F88(v5);
              sub_1DA25E384();

              (*(v24 + 8))(v5, v2);
            }

            else
            {
              __break(1u);
            }
          }

          else
          {
          }
        }

        else
        {
        }

        return;
      }
    }

    else
    {
    }

    sub_1DA22D134(v11);
    return;
  }

  v23 = v25;
}

uint64_t sub_1DA22C480@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2FF8) + 28));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1DA22C4D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA22C568;

  return sub_1DA22C65C();
}

uint64_t sub_1DA22C568()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DA22C65C()
{
  v1[19] = v0;
  type metadata accessor for SearchUIUserReportModel();
  v1[20] = swift_task_alloc();
  sub_1DA25F394();
  v1[21] = sub_1DA25F384();
  v3 = sub_1DA25F364();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DA22C720, v3, v2);
}

uint64_t sub_1DA22C720()
{
  v1 = [**(v0 + 152) identifyingResult];
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(*(v0 + 152) + 16);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1DA22C8BC;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3300);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DA22CAA4;
    *(v0 + 104) = &block_descriptor;
    *(v0 + 112) = v4;
    [v3 fetchPreviewImageForResult:v2 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1DA22C8BC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1DA22C9C4, v2, v1);
}

uint64_t sub_1DA22C9C4()
{
  v1 = v0[24];
  v2 = v0[20];

  v3 = v0[18];
  type metadata accessor for SearchUIUserReportRequestView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3200);
  sub_1DA25EAD4();

  *(v2 + 8) = v3;
  sub_1DA25EAE4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DA22CAA4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1DA22CB08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3260);
  sub_1DA22CB80();
  return sub_1DA25E444();
}

unint64_t sub_1DA22CB80()
{
  result = qword_1ECBA3268;
  if (!qword_1ECBA3268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECBA3270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA2FF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3280);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3298);
    sub_1DA25E744();
    sub_1DA17525C(&unk_1ECBA32A0, &qword_1ECBA3298);
    swift_getOpaqueTypeConformance2();
    sub_1DA174B4C();
    swift_getOpaqueTypeConformance2();
    sub_1DA17525C(&qword_1ECBA32B0, &qword_1ECBA3288);
    swift_getOpaqueTypeConformance2();
    sub_1DA17525C(&qword_1ECBA32B8, &qword_1ECBA2FF8);
    sub_1DA2269C8();
    swift_getOpaqueTypeConformance2();
    sub_1DA22CE2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3268);
  }

  return result;
}

unint64_t sub_1DA22CE2C()
{
  result = qword_1ECBA32C8;
  if (!qword_1ECBA32C8)
  {
    sub_1DA25E3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA32C8);
  }

  return result;
}

uint64_t sub_1DA22CE94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchUIUserReportRequestView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA22CEF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchUIUserReportRequestView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA22CF5C()
{
  type metadata accessor for SearchUIUserReportRequestView();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA22C568;

  return sub_1DA22C4D8();
}

unint64_t sub_1DA22D050()
{
  result = qword_1ECBA3340;
  if (!qword_1ECBA3340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3338);
    sub_1DA17525C(&qword_1ECBA3328, &qword_1ECBA3320);
    sub_1DA17525C(&qword_1ECBA3348, &unk_1ECBA3350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3340);
  }

  return result;
}

uint64_t sub_1DA22D134(uint64_t a1)
{
  v2 = type metadata accessor for SearchUIUserReportModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA22D1C0()
{
  v1 = *(type metadata accessor for SearchUIUserReportRequestView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1DA22BB50(v2);
}

uint64_t sub_1DA22D220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA32F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SearchUIUserReportRequestView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();
  v5 = (v0 + v3 + *(v1 + 32));

  v6 = v5 + *(type metadata accessor for SearchUIUserReportModel() + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2FF8);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_1DA25DF04();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3200);

  v9 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA32F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1DA25E394();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DA22D5AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1DA22D6D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestUserReportUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA22D72C(void *a1, void *a2, void *a3)
{
  v33 = a2;
  v5 = type metadata accessor for SearchUIUserReportModel();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for SearchUIUserReportRequestView();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a3 feedbackDelegate])
  {
    v34 = &unk_1F56A1138;
    v14 = swift_dynamicCastObjCProtocolConditional();
    if (v14)
    {
      v15 = v14;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v15 = 0;
LABEL_6:
  v16 = [a3 feedbackDelegate];
  if (v15)
  {
    v32 = v5;
    v17 = v11;
    v18 = v8;
LABEL_8:
    v19 = v33;
    *v13 = v33;
    v13[1] = a1;
    v13[2] = v15;
    v13[3] = a3;
    swift_unknownObjectRetain();
    v20 = v19;
    v21 = a1;
    v22 = a3;
    sub_1DA226564(v10);
    sub_1DA22DA10(v10, v18);
    sub_1DA25EAC4();
    sub_1DA22D134(v10);
    v23 = *(v17 + 36);
    *(v13 + v23) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA32F8);
    swift_storeEnumTagMultiPayload();
    v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBA3380));
    v25 = sub_1DA25E6C4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else if (v16)
  {
    v31 = a1;
    v32 = v5;
    while (1)
    {
      v35 = &unk_1F56A1138;
      v26 = swift_dynamicCastObjCProtocolConditional();
      if (v26)
      {
        v17 = v11;
        v18 = v8;
        v15 = v26;
        swift_unknownObjectRetain();
        a1 = v31;
        goto LABEL_8;
      }

      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (!v27)
      {
        break;
      }

      v28 = [v27 feedbackListener];
      swift_unknownObjectRelease();
      if (!v28)
      {
        return 0;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    return 0;
  }

  return v25;
}

uint64_t sub_1DA22DA10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchUIUserReportModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

SearchUIItemProviderUtilities __swiftcall SearchUIItemProviderUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_1DA22DBB4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() generalPasteboard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DA273A50;
  *(v5 + 32) = (*(a2 + 8))(a1, a2);
  sub_1DA173718(0, &qword_1ECBA33C8);
  v6 = sub_1DA25F314();

  [v4 setItemProviders_];
}

id sub_1DA22DCC0()
{
  result = [*v0 copyableString];
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1DA22DD28()
{
  v1 = v0;
  v2 = [v0 fileProviderTypeIdentifiers];
  if (v2)
  {
    v3 = v2;
    v42 = sub_1DA25F324();
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  v4 = [v1 dataProviderTypeIdentifiers];
  if (v4)
  {
    v5 = v4;
    v41 = sub_1DA25F324();
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  v7 = *(v42 + 16);
  if (v7)
  {
    v8 = (v42 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      v11 = sub_1DA25F234();
      v12 = swift_allocObject();
      v12[2] = v1;
      v12[3] = v9;
      v12[4] = v10;
      v48 = sub_1DA230DF0;
      v49 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = sub_1DA22E978;
      v47 = &block_descriptor_21;
      v13 = _Block_copy(&aBlock);
      v14 = v1;

      [v6 registerFileRepresentationForTypeIdentifier:v11 fileOptions:1 visibility:0 loadHandler:v13];
      _Block_release(v13);

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  result = v41;
  v16 = *(v41 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v41 + 40;
    v40 = *(v41 + 16);
    v37 = v16 - 1;
    v19 = MEMORY[0x1E69E7CC0];
    v38 = v41 + 40;
    do
    {
      v39 = v19;
      v20 = (v18 + 16 * v17);
      v21 = v17;
      while (1)
      {
        if (v21 >= result[2])
        {
          __break(1u);
          return result;
        }

        v22 = *(v20 - 1);
        v23 = *v20;
        v17 = v21 + 1;
        aBlock = v22;
        v45 = v23;
        MEMORY[0x1EEE9AC00](result);
        v36[2] = &aBlock;

        if ((sub_1DA2308A0(sub_1DA230E2C, v36, v42) & 1) == 0)
        {
          break;
        }

        v20 += 2;
        ++v21;
        result = v41;
        if (v40 == v17)
        {
          v19 = v39;
          goto LABEL_24;
        }
      }

      v19 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DA23064C(0, *(v19 + 16) + 1, 1);
        v19 = v43;
      }

      result = v41;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1DA23064C((v25 > 1), v26 + 1, 1);
        result = v41;
        v19 = v43;
      }

      *(v19 + 16) = v26 + 1;
      v27 = v19 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v23;
      v18 = v38;
    }

    while (v37 != v21);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

LABEL_24:

  v39 = v19;
  v28 = *(v19 + 16);
  if (v28)
  {
    v29 = (v39 + 40);
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;

      v32 = sub_1DA25F234();
      v33 = swift_allocObject();
      v33[2] = v1;
      v33[3] = v30;
      v33[4] = v31;
      v48 = sub_1DA230EC4;
      v49 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = sub_1DA22F1BC;
      v47 = &block_descriptor_27;
      v34 = _Block_copy(&aBlock);
      v35 = v1;

      [v6 registerDataRepresentationForTypeIdentifier:v32 visibility:0 loadHandler:v34];
      _Block_release(v34);

      v29 += 2;
      --v28;
    }

    while (v28);
  }

  return v6;
}

uint64_t sub_1DA22E194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33E0);
  v8[23] = swift_task_alloc();
  v9 = sub_1DA25DE84();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA22E2A0, 0, 0);
}

uint64_t sub_1DA22E2A0()
{
  v1 = *(v0 + 144);
  v2 = [objc_opt_self() defaultSearchableIndex];
  *(v0 + 224) = v2;
  v3 = [v1 applicationBundleIdentifier];
  *(v0 + 232) = v3;
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v3 = [*(v0 + 144) coreSpotlightIdentifier];
  *(v0 + 240) = v3;
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v3);
  }

  v5 = v3;
  v6 = *(v0 + 208);
  v7 = sub_1DA25F234();
  *(v0 + 248) = v7;
  *(v0 + 16) = v0;
  *(v0 + 56) = v6;
  *(v0 + 24) = sub_1DA22E460;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBA33E8);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DA22E808;
  *(v0 + 104) = &block_descriptor_47;
  *(v0 + 112) = v8;
  [v2 provideFileURLForBundle:v4 itemIdentifier:v5 typeIdentifier:v7 options:0 completionHandler:v0 + 80];
  v3 = (v0 + 16);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1DA22E460()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1DA22E6D8;
  }

  else
  {
    v2 = sub_1DA22E570;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA22E570()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];
  v11 = v0[21];
  (*(v7 + 32))(v5, v0[26], v6);

  (*(v7 + 16))(v8, v5, v6);
  (*(v7 + 56))(v8, 0, 1, v6);
  v11(v8, 1, 0);
  sub_1DA179568(v8, &qword_1ECBA33E0);
  (*(v7 + 8))(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DA22E6D8()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];
  v12 = v0[21];
  swift_willThrow();

  (*(v7 + 56))(v8, 1, 1, v6);
  v9 = v1;
  v12(v8, 0, v1);

  sub_1DA179568(v8, &qword_1ECBA33E0);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DA22E808(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DA25DE84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D80);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return MEMORY[0x1EEE6DEE8](v9, v10);
  }

  else
  {
    sub_1DA25DE74();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

void sub_1DA22E99C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1DA23106C(a1, &v15 - v9, &qword_1ECBA33E0);
  v11 = sub_1DA25DE84();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_1DA25DE64();
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v14 = sub_1DA25DE04();
  }

  else
  {
    v14 = 0;
  }

  (*(a4 + 16))(a4, v13, a2 & 1, v14);
}

uint64_t sub_1DA22EB08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - v14;
  sub_1DA25F3A4();
  v16 = sub_1DA25F3C4();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a1;
  v17[8] = a2;
  v18 = a3;

  sub_1DA25DB94();
  sub_1DA2433F0(0, 0, v15, a7, v17);

  return 0;
}

uint64_t sub_1DA22EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DA22EC70, 0, 0);
}

uint64_t sub_1DA22EC70()
{
  v1 = *(v0 + 160);
  v2 = [objc_opt_self() defaultSearchableIndex];
  *(v0 + 200) = v2;
  v3 = [v1 applicationBundleIdentifier];
  *(v0 + 208) = v3;
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v3 = [*(v0 + 160) coreSpotlightIdentifier];
  *(v0 + 216) = v3;
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v3);
  }

  v5 = v3;
  v6 = sub_1DA25F234();
  *(v0 + 224) = v6;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1DA22EE30;
  v7 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33D0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1DA22F0D4;
  *(v0 + 104) = &block_descriptor_37;
  *(v0 + 112) = v7;
  [v2 provideDataForBundle:v4 itemIdentifier:v5 typeIdentifier:v6 options:0 completionHandler:v0 + 80];
  v3 = (v0 + 16);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1DA22EE30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1DA22F008;
  }

  else
  {
    v2 = sub_1DA22EF40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DA22EF40()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  sub_1DA231010(v5, v6);
  v4(v5, v6, 0);
  sub_1DA225904(v5, v6);
  sub_1DA225904(v5, v6);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DA22F008()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v6 = v0[23];
  swift_willThrow();

  v7 = v1;
  v6(0, 0xF000000000000000, v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DA22F0D4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D80);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_1DA25DEA4();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return swift_continuation_throwingResume();
  }
}

id sub_1DA22F1E0(uint64_t a1, void *aBlock, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_1DA25DB94();
  v8 = v5(a4, v7);

  return v8;
}

void sub_1DA22F280(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_1DA25DE04();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_1DA25DE94();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_1DA22F33C()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedCache];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v0 person];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = [v4 contactIdentifier];

  v7 = [v3 contactForIdentifier_];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = [v1 sharedCache];
  if (v8)
  {
    v9 = v8;
    v10 = objc_opt_self();
    v11 = [v9 contactStore];

    [v10 itemProviderForContact:v7 withContactStore:v11];
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1DA22F4AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  sub_1DA25F3A4();
  v9 = sub_1DA25F3C4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a1;
  v10[6] = a2;
  v11 = a3;
  sub_1DA25DB94();
  sub_1DA2433F0(0, 0, v8, &unk_1DA273B58, v10);

  return 0;
}

uint64_t sub_1DA22F5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1DA22F670;

  return sub_1DA22F834();
}

uint64_t sub_1DA22F670(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DA22F770, 0, 0);
}

uint64_t sub_1DA22F770()
{
  v1 = UIImageJPEGRepresentation(*(v0 + 40), 1.0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1DA25DEA4();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  v6 = *(v0 + 40);
  (*(v0 + 16))(v3, v5, 0);
  sub_1DA230DDC(v3, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DA22F854()
{
  v1 = [*(v0 + 24) image];
  if (v1)
  {
    v4 = v1;
    *(v0 + 32) = [objc_allocWithZone(SearchUIImage) initWithSFImage_];

    *(v0 + 40) = objc_opt_self();
    *(v0 + 48) = sub_1DA25F394();
    *(v0 + 56) = sub_1DA25F384();
    v5 = sub_1DA25F364();
    v7 = v6;
    v1 = sub_1DA22F944;
    v2 = v5;
    v3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1DA22F944()
{
  v1 = *(v0 + 40);

  *(v0 + 64) = [v1 mainScreen];

  return MEMORY[0x1EEE6DFA0](sub_1DA22F9CC, 0, 0);
}

uint64_t sub_1DA22F9CC()
{
  *(v0 + 72) = sub_1DA25F384();
  v2 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA22FA58, v2, v1);
}

uint64_t sub_1DA22FA58()
{
  v1 = *(v0 + 64);

  [v1 scale];
  *(v0 + 80) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DA22FAD8, 0, 0);
}

uint64_t sub_1DA22FAD8()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[12] = v4;
  v5 = sub_1DA173718(0, &qword_1ECBA3020);
  *v4 = v0;
  v4[1] = sub_1DA22FBF0;

  return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0x616D496863746566, 0xEC00000029286567, sub_1DA230C5C, v3, v5);
}

uint64_t sub_1DA22FBF0()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA22FD08, 0, 0);
}

uint64_t sub_1DA22FD08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1DA22FD6C(uint64_t a1, void *a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  if (a2)
  {
    v10 = [objc_opt_self() bestAppearanceForSystem];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 isDark];

      (*(v7 + 16))(v9, a1, v6);
      v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v14 = swift_allocObject();
      (*(v7 + 32))(v14 + v13, v9, v6);
      aBlock[4] = sub_1DA230C68;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DA22FFD0;
      aBlock[3] = &block_descriptor_0;
      v15 = _Block_copy(aBlock);

      [a2 loadImageWithScale:v12 isDarkStyle:v15 completionHandler:a3];
      _Block_release(v15);
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1DA22FF74(void *result, char a2)
{
  if (a2)
  {
    if (result)
    {
      v2 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B8);
      return sub_1DA25F374();
    }
  }

  return result;
}

void sub_1DA22FFD0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  sub_1DA25DB94();
  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_1DA230048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = swift_task_alloc();
  *(v5 + 24) = v6;
  *v6 = v5;
  v6[1] = sub_1DA2300DC;

  return sub_1DA22F834();
}

uint64_t sub_1DA2300DC(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DA2301DC, 0, 0);
}

uint64_t sub_1DA2301DC()
{
  v1 = v0[4];
  v2 = [objc_opt_self() generalPasteboard];
  [v2 setImage_];

  v0[5] = objc_opt_self();
  sub_1DA25F394();
  v0[6] = sub_1DA25F384();
  v4 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA2302BC, v4, v3);
}

uint64_t sub_1DA2302BC()
{
  v1 = *(v0 + 40);

  *(v0 + 56) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](sub_1DA230340, 0, 0);
}

uint64_t sub_1DA230340()
{
  v1 = v0[7];
  v2 = v0[4];
  [v1 endBackgroundTask_];

  v3 = v0[1];

  return v3();
}

id sub_1DA2303BC()
{
  v1 = sub_1DA25E274();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  sub_1DA25E264();
  *(swift_allocObject() + 16) = v5;
  v7 = v5;
  sub_1DA25F494();

  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_1DA2304F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  v4 = *v0;
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 beginBackgroundTaskWithExpirationHandler_];

  v7 = sub_1DA25F3C4();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v6;
  v9 = v4;
  sub_1DA2433F0(0, 0, v3, &unk_1DA273B38, v8);
}

char *sub_1DA23064C(char *a1, int64_t a2, char a3)
{
  result = sub_1DA23066C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DA23066C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DA230778(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1DA747E20](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1DA25F634();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1DA2308A0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DA23094C(void *a1)
{
  if (!a1 || (v6[0] = a1, sub_1DA173718(0, &qword_1ECBA33A0), v2 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33A8), (swift_dynamicCast() & 1) == 0))
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_1DA23106C(v9, v6, &qword_1ECBA3398);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    v3 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DA179568(v6, &qword_1ECBA3398);
  }

  sub_1DA179568(v9, &qword_1ECBA3398);
  return v3;
}

uint64_t sub_1DA230A78(void *a1)
{
  if (!a1 || (v6[0] = a1, sub_1DA173718(0, &qword_1ECBA33A0), v2 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33A8), (swift_dynamicCast() & 1) == 0))
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_1DA23106C(v9, v6, &qword_1ECBA3398);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_0(v6, v7);
    (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DA179568(v6, &qword_1ECBA3398);
  }

  return sub_1DA179568(v9, &qword_1ECBA3398);
}

uint64_t sub_1DA230B9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DA22C568;

  return sub_1DA230048(a1, v4, v5, v7, v6);
}

void *sub_1DA230C68(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B8);

  return sub_1DA22FF74(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DA25DB94();
}

uint64_t sub_1DA230D14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA231210;

  return sub_1DA22F5DC(a1, v4, v5, v6, v7, v8);
}