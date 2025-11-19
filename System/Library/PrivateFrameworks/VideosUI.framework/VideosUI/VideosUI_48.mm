void sub_1E39F14C4()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4202034();
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30598);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_4();
  sub_1E4202024();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30728);
  sub_1E39F64C8();
  sub_1E4200C04();
  OUTLINED_FUNCTION_2_63();
  sub_1E381F390(v3);
  v4 = OUTLINED_FUNCTION_76_0();
  MEMORY[0x1E690CA00](v4);
  v5 = OUTLINED_FUNCTION_76_0();
  v6(v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39F1650()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30740);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  if (v10 >> 62)
  {
    if (sub_1E4207384())
    {
      goto LABEL_3;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v17[0] = v8;
    v17[1] = v6;
    v17[2] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30748);
    sub_1E39F6578();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3C00AA4(v17, v2, sub_1E39F184C, 0, 0, 0, v0);
    sub_1E3782004();
    OUTLINED_FUNCTION_103_5();
    OUTLINED_FUNCTION_95();
    return;
  }

  OUTLINED_FUNCTION_95();

  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_1E39F184C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = *a1;
  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305C8);
  v9 = a2 + *(result + 36);
  *v9 = v5;
  *(v9 + 8) = 1;
  return result;
}

void sub_1E39F1948()
{
  OUTLINED_FUNCTION_82_2();
  v0 = sub_1E4202034();
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v2 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_8_4();
  sub_1E4201FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30708);
  sub_1E39F63A8();
  sub_1E42015A4();
  OUTLINED_FUNCTION_3_94();
  sub_1E381F390(v4);
  v5 = OUTLINED_FUNCTION_76_0();
  MEMORY[0x1E690CA00](v5);
  v6 = OUTLINED_FUNCTION_76_0();
  v7(v6);
  OUTLINED_FUNCTION_95();
}

void sub_1E39F1ABC()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_8();
  if (((*(v3 + 96))() & 1) == 0)
  {
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_0();
    sub_1E381F390(v7);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    goto LABEL_5;
  }

  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    sub_1E3741090(0xD000000000000014, 0x80000001E426BE90, v4);

    *v0 = sub_1E4201B84();
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306D0);
    sub_1E39F1D30();

    OUTLINED_FUNCTION_8_6();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_0();
    sub_1E381F390(v6);
    OUTLINED_FUNCTION_34();
    sub_1E4201F44();
    sub_1E325F6F0(v0, &qword_1ECF306C0);
LABEL_5:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

void sub_1E39F1D30()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v2;
  v36 = v3;
  v5 = v4;
  v7 = v6;
  v37 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306D8);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306E0);
  OUTLINED_FUNCTION_0_10();
  v33 = v13;
  v34 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306F0);
  v38 = MEMORY[0x1E6981748];
  v39 = MEMORY[0x1E6981710];
  OUTLINED_FUNCTION_56();
  sub_1E4203964();
  type metadata accessor for ButtonLayout();
  LOBYTE(v7) = j__OUTLINED_FUNCTION_18();
  v20 = sub_1E3B050E8();
  v21 = j__OUTLINED_FUNCTION_18();
  v22 = sub_1E3BBD964(8, v7 & 1, v20, v21 & 1);
  v38 = sub_1E3751C54(v22);
  LOBYTE(v39) = v23;
  v24 = sub_1E381F390(&qword_1ECF306F8);
  v25 = sub_1E375320C();
  sub_1E3EC5F84(&v38, v9, &type metadata for SystemButtonStyle, v24, v25, v26, v27, v28, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);

  (*(v11 + 8))(v1, v9);
  v30 = v35;
  v29 = v36;
  v42 = v35;
  v43 = v36;
  v38 = v9;
  v39 = &type metadata for SystemButtonStyle;
  v40 = v24;
  v41 = v25;
  OUTLINED_FUNCTION_56();
  sub_1E32822E0();
  v31 = v33;
  sub_1E4203114();
  (*(v34 + 8))(v0, v31);
  v38 = v30;
  v39 = v29;
  sub_1E39F61A8();
  sub_1E4203414();
  sub_1E325F6F0(v18, &qword_1ECF306E8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39F20B0()
{
  sub_1E42037C4();
  sub_1E39B9610();
}

uint64_t sub_1E39F2138(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v2 = a1;
  }

  *(v1 + OBJC_IVAR____TtCV8VideosUIP33_5133CB66105ED2D3505EC048220E1B1323NavbarBarButtonModifier10Interactor_barButtonViewModel) = v2;

  type metadata accessor for NavbarBarButtonModifier.Interactor(0);
  OUTLINED_FUNCTION_6_75();
  sub_1E39F096C(v3);
  sub_1E4200514();
  sub_1E4200594();
}

uint64_t sub_1E39F2218()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E39F228C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for NavbarBarButtonModifier.Interactor(0);
  *(swift_allocObject() + OBJC_IVAR____TtCV8VideosUIP33_5133CB66105ED2D3505EC048220E1B1323NavbarBarButtonModifier10Interactor_barButtonViewModel) = v1;

  return sub_1E3B500B4();
}

uint64_t sub_1E39F22FC()
{
  v1 = *(v0 + 16);
  type metadata accessor for NavigationBarItems.InternalNavigationBarViewModel(0);
  OUTLINED_FUNCTION_4_92();
  sub_1E39F096C(v2);
  OUTLINED_FUNCTION_17_55();

  v3 = (v1 + *(type metadata accessor for NavigationBarItems(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  if (!v4)
  {
    sub_1E4203AD4();
  }

  sub_1E3908F18(v5, v4);
  OUTLINED_FUNCTION_32_0();
  sub_1E39F0F4C();
}

unint64_t sub_1E39F247C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v4);
    v2();
    sub_1E39F2608();
    OUTLINED_FUNCTION_4_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E39F24E0()
{
  result = qword_1EE289960;
  if (!qword_1EE289960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30578);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30560);
    sub_1E381F390(&unk_1EE2888E0);
    sub_1E39F077C();
    swift_getOpaqueTypeConformance2();
    sub_1E39F2608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289960);
  }

  return result;
}

unint64_t sub_1E39F2608()
{
  result = qword_1EE2988B0[0];
  if (!qword_1EE2988B0[0])
  {
    type metadata accessor for NavbarBarButtonModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2988B0);
  }

  return result;
}

unint64_t sub_1E39F2660()
{
  result = qword_1EE288DE0;
  if (!qword_1EE288DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30588);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30548);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30590);
    sub_1E39F247C(&unk_1EE2894B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30598);
    sub_1E381F390(&unk_1EE289E10);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DE0);
  }

  return result;
}

uint64_t sub_1E39F27F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305A8);
  v0 = OUTLINED_FUNCTION_97_1();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30588);
  OUTLINED_FUNCTION_5_91();
  sub_1E39F247C(v1);
  sub_1E39F2660();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF305B0);
  OUTLINED_FUNCTION_3_94();
  sub_1E381F390(v2);
  OUTLINED_FUNCTION_6_10();
  swift_getOpaqueTypeConformance2();
  return sub_1E4203504();
}

unint64_t sub_1E39F296C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_31_13(0, v3);
    OUTLINED_FUNCTION_26_39();
    sub_1E39F096C(v4);
    OUTLINED_FUNCTION_57();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E39F29E0()
{
  v0 = OUTLINED_FUNCTION_9_5();
  v1 = type metadata accessor for NavigationBarItems(v0);
  OUTLINED_FUNCTION_17_2(v1);
  v2 = OUTLINED_FUNCTION_12_63();
  type metadata accessor for NavigationBarItems.InternalNavigationBarViewModel(v2);
  OUTLINED_FUNCTION_4_92();
  sub_1E39F096C(v3);
  OUTLINED_FUNCTION_17_55();
  v4 = OUTLINED_FUNCTION_50();
  sub_1E39EF3BC(v4);
}

void sub_1E39F2A88()
{
  OUTLINED_FUNCTION_31_1();
  v15 = v2;
  v3 = type metadata accessor for NavbarBarButtonModifier(0);
  v14 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_6();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30610);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30620);
  OUTLINED_FUNCTION_1_11();
  sub_1E381F390(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30628);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30630);
  OUTLINED_FUNCTION_3_94();
  sub_1E381F390(v7);
  OUTLINED_FUNCTION_28_32();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_10();
  swift_getOpaqueTypeConformance2();
  sub_1E4203504();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E4203914();
  v8 = v1 + *(v13 + 36);
  *v8 = 1;
  *(v8 + 8) = 0x3FF0000000000000;
  *(v8 + 16) = v6;
  *(v8 + 24) = OpaqueTypeConformance2;
  *(v8 + 32) = v17;
  sub_1E39F540C();
  swift_allocObject();
  sub_1E39F5464();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
  sub_1E39F5568();
  sub_1E39F09D0();
  sub_1E4203524();

  sub_1E325F6F0(v1, &qword_1ECF30610);
  v9 = *(v0 + *(v14 + 36));
  sub_1E39F540C();
  v10 = swift_allocObject();
  sub_1E39F5464();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30638);
  *(v15 + *(v11 + 52)) = v9;
  v12 = (v15 + *(v11 + 56));
  *v12 = sub_1E39F58A4;
  v12[1] = v10;

  OUTLINED_FUNCTION_25_2();
}

void sub_1E39F2E70()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v23[1] = v2;
  v3 = sub_1E4202034();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30630);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30628);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_1();
  v17 = type metadata accessor for NavbarBarButtonModifier(0);
  (*(v5 + 16))(v9, v1 + *(v17 + 24), v3);
  v23[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30640);
  sub_1E39F5954();
  sub_1E42015A4();
  OUTLINED_FUNCTION_3_94();
  v19 = sub_1E381F390(v18);
  sub_1E4201194();
  (*(v12 + 8))(v15, v10);
  v23[6] = v10;
  v23[7] = v19;
  OUTLINED_FUNCTION_28_32();
  swift_getOpaqueTypeConformance2();
  v20 = OUTLINED_FUNCTION_8_6();
  MEMORY[0x1E690CA00](v20);
  v21 = OUTLINED_FUNCTION_8_6();
  v22(v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39F30E8()
{
  OUTLINED_FUNCTION_31_1();
  v49 = v0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30660);
  OUTLINED_FUNCTION_0_10();
  v41 = v1;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_44();
  v40 = v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30690);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v47 = v5;
  v6 = type metadata accessor for NavbarBarButtonModifier(0);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  v42 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v43 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30650);
  OUTLINED_FUNCTION_0_10();
  v39[2] = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v39[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30648);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v44 = v16;
  type metadata accessor for NavbarBarButtonModifier.Interactor(0);
  OUTLINED_FUNCTION_6_75();
  sub_1E39F096C(v17);
  OUTLINED_FUNCTION_63_0();
  v18 = *(OUTLINED_FUNCTION_50_16() + OBJC_IVAR____TtCV8VideosUIP33_5133CB66105ED2D3505EC048220E1B1323NavbarBarButtonModifier10Interactor_barButtonViewModel);

  v19 = sub_1E32AE9B0(v18);

  if (v19)
  {
    v39[0] = v14;
    v20 = [objc_opt_self() sharedInstance];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 vStackInForEachEnabled];

      OUTLINED_FUNCTION_63_0();
      v23 = *(OUTLINED_FUNCTION_50_16() + OBJC_IVAR____TtCV8VideosUIP33_5133CB66105ED2D3505EC048220E1B1323NavbarBarButtonModifier10Interactor_barButtonViewModel);

      v50 = v23;
      swift_getKeyPath();
      OUTLINED_FUNCTION_22_37();
      sub_1E39F540C();
      OUTLINED_FUNCTION_96_6();
      swift_allocObject();
      OUTLINED_FUNCTION_101_2();
      v24 = OUTLINED_FUNCTION_27_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v24);
      if (v22)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30658);
        OUTLINED_FUNCTION_29_34(&qword_1EE23B548);
        sub_1E375BEF4();
        sub_1E381F390(&unk_1EE288530);
        sub_1E4203B34();
        OUTLINED_FUNCTION_66_4();
        v25 = OUTLINED_FUNCTION_97_1();
        v26(v25);
        swift_storeEnumTagMultiPayload();
        sub_1E39F5A64();
        sub_1E39F5B14();
        OUTLINED_FUNCTION_57();
        sub_1E4201F44();
        v27 = OUTLINED_FUNCTION_8_6();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30668);
        OUTLINED_FUNCTION_29_34(&qword_1EE23B548);
        sub_1E375BEF4();
        sub_1E39F5B98();
        v35 = v40;
        sub_1E4203B34();
        v36 = v41;
        OUTLINED_FUNCTION_66_4();
        v37 = v48;
        v38(v47, v35, v48);
        swift_storeEnumTagMultiPayload();
        sub_1E39F5A64();
        sub_1E39F5B14();
        sub_1E4201F44();
        v29 = *(v36 + 8);
        v27 = v35;
        v28 = v37;
      }

      v29(v27, v28);
      sub_1E3782004();
      OUTLINED_FUNCTION_103_5();
      OUTLINED_FUNCTION_25_2();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }
}

void sub_1E39F3704()
{
  OUTLINED_FUNCTION_74_8();
  v95 = v3;
  v96 = v4;
  v86 = v0;
  v6 = v5;
  v91 = v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
  OUTLINED_FUNCTION_0_10();
  v83 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30688);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  v78 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17_3(v77 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30678);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v77 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30680);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v77 - v22;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v89 = v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_20_1();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30670);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for ImageViewModel();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = v32;
    v34 = *(*v32 + 392);
    v86 = v6;
    v35 = swift_retain_n();
    v36 = v34(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_30();
      (*(v37 + 200))();
    }

    v46 = v34(v36);

    if (v46)
    {
      OUTLINED_FUNCTION_8();
      (*(v47 + 304))();
    }

    j__OUTLINED_FUNCTION_51_1();
    v48 = j__OUTLINED_FUNCTION_18();
    v76 = j__OUTLINED_FUNCTION_18() & 1;
    v49 = OUTLINED_FUNCTION_32_0();
    sub_1E3EB9C0C(v49, v50, 0, 0, 0, 1, v51, 2, v52, 0, 1, 0, 1, 0, 2, v48 & 1, v76);
    v53 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v33, &v93, 0, v53 & 1, 0, 0, v1);
    (*(v30 + 16))(v2, v1, v85);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_0();
    sub_1E39F5CC8();
    OUTLINED_FUNCTION_8_6();
    sub_1E4201F44();
    OUTLINED_FUNCTION_54_14();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    sub_1E39F5C24();
    sub_1E39F5D1C();
    sub_1E4201F44();
    sub_1E375C31C(&v93);

    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v54, v55);
    v56 = OUTLINED_FUNCTION_39_3();
    v57(v56);
  }

  else
  {
    v38 = v82;
    v39 = v83;
    v40 = v86;
    v77[0] = v20;
    v77[1] = v15;
    v41 = v81;
    v77[2] = v19;
    if (*v6 == _TtC8VideosUI19MuteButtonViewModel)
    {

      *v2 = nullsub_1(v42, v43);
      swift_storeEnumTagMultiPayload();

      OUTLINED_FUNCTION_19_0();
      sub_1E39F5CC8();
      sub_1E4201F44();
      sub_1E378249C();
      swift_storeEnumTagMultiPayload();
      sub_1E39F5C24();
      sub_1E39F5D1C();
      sub_1E4201F44();

      OUTLINED_FUNCTION_82();
    }

    else if (TVAppFeature.isEnabled.getter(10) & 1) != 0 && (sub_1E373F6E0())
    {
      OUTLINED_FUNCTION_25();
      sub_1E3EC24F4(v58, v59, v60, v61);
      v62 = *(v40 + *(type metadata accessor for NavbarBarButtonModifier(0) + 32));
      v92 = 0x3FF0000000000000;

      sub_1E42038E4();
      v63 = v93;
      v64 = v94;
      v65 = &v23[*(v77[0] + 36)];
      *v65 = v62;
      *(v65 + 1) = v63;
      *(v65 + 2) = v64;
      sub_1E378249C();
      swift_storeEnumTagMultiPayload();
      sub_1E39F5DA8();
      sub_1E39F5EA0();
      OUTLINED_FUNCTION_81_7();
      OUTLINED_FUNCTION_63_0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_54_14();
      sub_1E378249C();
      swift_storeEnumTagMultiPayload();
      sub_1E39F5C24();
      sub_1E39F5D1C();
      OUTLINED_FUNCTION_67_11();
      sub_1E325F6F0(v6, &qword_1ECF30678);
      v44 = v23;
      v45 = &qword_1ECF30680;
    }

    else
    {
      v66 = v38;
      OUTLINED_FUNCTION_25();
      sub_1E3EC24F4(v67, v68, v69, v70);
      v71 = v40 + *(type metadata accessor for NavbarBarButtonModifier(0) + 36);
      v72 = *v71;
      v73 = *(v71 + 1);
      LOBYTE(v93) = v72;
      v94 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
      sub_1E42038F4();
      if (v92)
      {
        v74 = 0.0;
      }

      else
      {
        v74 = 1.0;
      }

      v75 = v78;
      (*(v39 + 32))(v78, v66, v79);
      *&v75[*(v80 + 36)] = v74;
      OUTLINED_FUNCTION_39_3();
      sub_1E3782004();
      OUTLINED_FUNCTION_21_1();
      sub_1E378249C();
      swift_storeEnumTagMultiPayload();
      sub_1E39F5DA8();
      sub_1E39F5EA0();
      OUTLINED_FUNCTION_81_7();
      sub_1E4201F44();
      OUTLINED_FUNCTION_54_14();
      sub_1E378249C();
      swift_storeEnumTagMultiPayload();
      sub_1E39F5C24();
      sub_1E39F5D1C();
      OUTLINED_FUNCTION_67_11();
      sub_1E325F6F0(v6, &qword_1ECF30678);
      v44 = v41;
      v45 = &qword_1ECF30688;
    }

    sub_1E325F6F0(v44, v45);
  }

  OUTLINED_FUNCTION_75_6();
}

void sub_1E39F40F8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30780);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30788);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  if (*v0)
  {
    v26 = *(v0 + 16);
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_98_5(v8);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_98_5(v9);
    sub_1E39F6940(&v26, &v22);

    sub_1E39F6940(&v26, &v22);

    v10 = OUTLINED_FUNCTION_32_0();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v10);
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_21_1();
    v13 = sub_1E381F390(v12);
    sub_1E42032D4();

    OUTLINED_FUNCTION_66_4();
    v14(v1, v2, v6);
    swift_storeEnumTagMultiPayload();
    v22 = v11;
    v23 = MEMORY[0x1E69E6370];
    v24 = v13;
    v25 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_30_33();
    OUTLINED_FUNCTION_86_4();
    sub_1E4201F44();
    v15 = OUTLINED_FUNCTION_8_6();
    v16(v15);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_32_0();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v17);
    OUTLINED_FUNCTION_2();
    (*(v19 + 16))(v1, v4, v18);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_11();
    OUTLINED_FUNCTION_21_1();
    v21 = sub_1E381F390(v20);
    v22 = v18;
    v23 = MEMORY[0x1E69E6370];
    v24 = v21;
    v25 = MEMORY[0x1E69E6388];
    OUTLINED_FUNCTION_30_33();
    OUTLINED_FUNCTION_86_4();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E39F4408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99_6();
  OUTLINED_FUNCTION_42_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  OUTLINED_FUNCTION_105_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30798);
  OUTLINED_FUNCTION_2();
  v12 = OUTLINED_FUNCTION_75();
  v13(v12);
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF307A0) + 36)) = a10;
  v14 = (*(*v10 + 344))();
  sub_1E39F51D4();
  sub_1E3B501F8();
  OUTLINED_FUNCTION_106_8();
  OUTLINED_FUNCTION_5_10();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_16_58(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF307A8);
  OUTLINED_FUNCTION_79_11(v16);
  *v17 = sub_1E39F699C;
  v17[1] = v14;
  OUTLINED_FUNCTION_5_10();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_16_58(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF307B0);
  OUTLINED_FUNCTION_102_7((v11 + *(v19 + 36)));
  swift_retain_n();
  OUTLINED_FUNCTION_104_3();
}

void sub_1E39F45A8()
{
  OUTLINED_FUNCTION_99_6();
  OUTLINED_FUNCTION_42_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  OUTLINED_FUNCTION_105_5();
  sub_1E39F46EC();
  v2 = (*(*v0 + 280))();
  sub_1E39F51D4();
  sub_1E3B501F8();
  OUTLINED_FUNCTION_106_8();
  OUTLINED_FUNCTION_5_10();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_16_58(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305E0);
  OUTLINED_FUNCTION_79_11(v4);
  *v5 = sub_1E39F5228;
  v5[1] = v2;
  OUTLINED_FUNCTION_5_10();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_16_58(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305E8);
  OUTLINED_FUNCTION_102_7((v1 + *(v7 + 36)));
  swift_retain_n();
  OUTLINED_FUNCTION_104_3();
}

void sub_1E39F46EC()
{
  OUTLINED_FUNCTION_74_8();
  v34 = v2;
  v35 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305F8);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30600);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_4();
  if (sub_1E39DFFC8())
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30608);
    OUTLINED_FUNCTION_2();
    v18 = OUTLINED_FUNCTION_76_0();
    v19(v18);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_11();
    v21 = sub_1E381F390(v20);
    v22 = OUTLINED_FUNCTION_36_26(&unk_1EE2892A0);
    v30 = v17;
    v31 = v8;
    v32 = v21;
    v33 = v22;
    OUTLINED_FUNCTION_56();
    sub_1E4201F44();
  }

  else
  {
    sub_1E4203CD4();
    v23 = v5;
    *&v11[*(v8 + 36)] = v23;
    v29[0] = v12;
    v29[1] = v7;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30608);
    OUTLINED_FUNCTION_1_11();
    v26 = sub_1E381F390(v25);
    v27 = OUTLINED_FUNCTION_36_26(&unk_1EE2892A0);
    MEMORY[0x1E690DA40](v11, MEMORY[0x1E69E7CC0], v24, v8, v26, v27);
    sub_1E39F539C(v11);
    v28 = v29[0];
    (*(v14 + 16))(v0, v1, v29[0]);
    swift_storeEnumTagMultiPayload();
    v30 = v24;
    v31 = v8;
    v32 = v26;
    v33 = v27;
    OUTLINED_FUNCTION_56();
    sub_1E4201F44();
    (*(v14 + 8))(v1, v28);
  }

  OUTLINED_FUNCTION_75_6();
}

void sub_1E39F4AC8()
{
  sub_1E39F5124(319, &qword_1EE289F50, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E39F4B9C()
{
  sub_1E39F4C90();
  if (v0 <= 0x3F)
  {
    sub_1E39F4D24();
    if (v1 <= 0x3F)
    {
      sub_1E39F504C(319, &qword_1EE289E80, &qword_1ECF305B8, &unk_1E42B1D10, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        OUTLINED_FUNCTION_32_37(v2, &qword_1EE288410, &qword_1ECF305D8, &unk_1E42B1E38);
        if (v4 <= 0x3F)
        {
          sub_1E4202314();
          if (v5 <= 0x3F)
          {
            OUTLINED_FUNCTION_44_26();
          }
        }
      }
    }
  }
}

void sub_1E39F4C90()
{
  if (!qword_1EE289E58)
  {
    type metadata accessor for NavigationBarItems.InternalNavigationBarViewModel(255);
    sub_1E39F096C(&unk_1EE2772E0);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E58);
    }
  }
}

void sub_1E39F4D24()
{
  if (!qword_1EE289D10)
  {
    type metadata accessor for NavigationBarObservableModel(255);
    sub_1E39F096C(qword_1EE24A570);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289D10);
    }
  }
}

void sub_1E39F4EC4()
{
  sub_1E39F4FB8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_32_37(v0, &qword_1EE23B530, &unk_1ECF2C790, &unk_1E42996A0);
    if (v2 <= 0x3F)
    {
      sub_1E4202034();
      if (v3 <= 0x3F)
      {
        sub_1E39F50B0();
        if (v4 <= 0x3F)
        {
          type metadata accessor for NavigationBarObservableModel(319);
          if (v5 <= 0x3F)
          {
            sub_1E39F5124(319, &qword_1EE288668, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              OUTLINED_FUNCTION_44_26();
            }
          }
        }
      }
    }
  }
}

void sub_1E39F4FB8()
{
  if (!qword_1EE289E38)
  {
    type metadata accessor for NavbarBarButtonModifier.Interactor(255);
    sub_1E39F096C(&unk_1EE25AA80);
    v0 = sub_1E4200BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E38);
    }
  }
}

void sub_1E39F504C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1E39F50B0()
{
  if (!qword_1EE28A1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CEA8);
    v0 = sub_1E42004B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A1E8);
    }
  }
}

void sub_1E39F5124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E39F51D4()
{
  result = qword_1EE28A3C8;
  if (!qword_1EE28A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A3C8);
  }

  return result;
}

uint64_t sub_1E39F5228()
{
  if (([objc_opt_self() isVision] & 1) != 0 || (result = sub_1E39DFFC8(), (result & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
    return sub_1E4203904();
  }

  return result;
}

void sub_1E39F52B0(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  OUTLINED_FUNCTION_99_6();
  v11 = *(v10 + 16);
  if (([objc_opt_self() isVision] & 1) != 0 || (sub_1E39DFFC8() & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
    v12 = OUTLINED_FUNCTION_105_5();
    v13 = *(*v11 + 256);
    if (a10 != (v13)(v12))
    {
      v13();
      OUTLINED_FUNCTION_68_9();
    }
  }

  OUTLINED_FUNCTION_104_3();
}

uint64_t sub_1E39F539C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF305F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E39F540C()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E39F5464()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E39F54BC()
{
  v0 = type metadata accessor for NavbarBarButtonModifier(0);
  OUTLINED_FUNCTION_17_2(v0);
  v1 = OUTLINED_FUNCTION_12_63();
  type metadata accessor for NavbarBarButtonModifier.Interactor(v1);
  OUTLINED_FUNCTION_6_75();
  sub_1E39F096C(v2);
  OUTLINED_FUNCTION_17_55();
  v3 = OUTLINED_FUNCTION_50();
  sub_1E39F2138(v3);
}

unint64_t sub_1E39F5568()
{
  result = qword_1EE2898E0;
  if (!qword_1EE2898E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30620);
    sub_1E381F390(&unk_1EE288958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30630);
    sub_1E381F390(&unk_1EE289380);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E39F573C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898E0);
  }

  return result;
}

unint64_t sub_1E39F573C()
{
  result = qword_1EE294830[0];
  if (!qword_1EE294830[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE294830);
  }

  return result;
}

uint64_t objectdestroy_112Tm()
{
  OUTLINED_FUNCTION_82_2();
  v1 = (type metadata accessor for NavbarBarButtonModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1E3264CE0();

  v3 = v1[8];
  sub_1E4202034();
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v2 + v3);

  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E39F58A4()
{
  v0 = OUTLINED_FUNCTION_9_5();
  v1 = type metadata accessor for NavbarBarButtonModifier(v0);
  OUTLINED_FUNCTION_17_2(v1);
  v2 = OUTLINED_FUNCTION_12_63();
  type metadata accessor for NavbarBarButtonModifier.Interactor(v2);
  OUTLINED_FUNCTION_6_75();
  sub_1E39F096C(v3);
  OUTLINED_FUNCTION_17_55();
  v4 = OUTLINED_FUNCTION_50();
  sub_1E39F2138(v4);
}

unint64_t sub_1E39F5954()
{
  result = qword_1EE288D68;
  if (!qword_1EE288D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30640);
    sub_1E39F59D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D68);
  }

  return result;
}

unint64_t sub_1E39F59D8()
{
  result = qword_1EE288D70;
  if (!qword_1EE288D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30648);
    sub_1E39F5A64();
    sub_1E39F5B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D70);
  }

  return result;
}

unint64_t sub_1E39F5A64()
{
  result = qword_1EE2883D0;
  if (!qword_1EE2883D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30650);
    sub_1E381F390(&unk_1EE288530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883D0);
  }

  return result;
}

unint64_t sub_1E39F5B14()
{
  result = qword_1EE2883D8;
  if (!qword_1EE2883D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30660);
    sub_1E39F5B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883D8);
  }

  return result;
}

unint64_t sub_1E39F5B98()
{
  result = qword_1EE288D00;
  if (!qword_1EE288D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30668);
    sub_1E39F5C24();
    sub_1E39F5D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D00);
  }

  return result;
}

unint64_t sub_1E39F5C24()
{
  result = qword_1EE289198;
  if (!qword_1EE289198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30670);
    swift_getOpaqueTypeConformance2();
    sub_1E39F5CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289198);
  }

  return result;
}

unint64_t sub_1E39F5CC8()
{
  result = qword_1EE275788[0];
  if (!qword_1EE275788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE275788);
  }

  return result;
}

unint64_t sub_1E39F5D1C()
{
  result = qword_1EE288F70;
  if (!qword_1EE288F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30678);
    sub_1E39F5DA8();
    sub_1E39F5EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F70);
  }

  return result;
}

unint64_t sub_1E39F5DA8()
{
  result = qword_1EE289C10;
  if (!qword_1EE289C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30680);
    swift_getOpaqueTypeConformance2();
    sub_1E39F5E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C10);
  }

  return result;
}

unint64_t sub_1E39F5E4C()
{
  result = qword_1EE294228[0];
  if (!qword_1EE294228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE294228);
  }

  return result;
}

unint64_t sub_1E39F5EA0()
{
  result = qword_1EE289C18;
  if (!qword_1EE289C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30688);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C18);
  }

  return result;
}

void sub_1E39F5F44()
{
  v0 = type metadata accessor for NavbarBarButtonModifier(0);
  OUTLINED_FUNCTION_17_2(v0);
  sub_1E39F3704();
}

void sub_1E39F5FB4(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NavbarBarButtonModifier(0);
  OUTLINED_FUNCTION_17_2(v2);
  *a1 = sub_1E4201D44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30698);
  sub_1E39F3704();
}

char *sub_1E39F604C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30758);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E39F61A8()
{
  result = qword_1ECF30700;
  if (!qword_1ECF30700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF306E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF306D8);
    sub_1E381F390(&qword_1ECF306F8);
    sub_1E375320C();
    swift_getOpaqueTypeConformance2();
    sub_1E39F096C(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30700);
  }

  return result;
}

uint64_t sub_1E39F62F0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  result = (*(v2 + 352))();
  if (result)
  {
    type metadata accessor for FullScreenBarButtonModel(0);
    sub_1E39F096C(&unk_1ECF30710);
    OUTLINED_FUNCTION_57();
    result = sub_1E42010C4();
  }

  else
  {
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E39F63A8()
{
  result = qword_1EE25BCE8[0];
  if (!qword_1EE25BCE8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30708);
    sub_1E39F642C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE25BCE8);
  }

  return result;
}

unint64_t sub_1E39F642C()
{
  result = qword_1EE298D98[0];
  if (!qword_1EE298D98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE298D98);
  }

  return result;
}

unint64_t sub_1E39F64C8()
{
  result = qword_1ECF30730;
  if (!qword_1ECF30730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30728);
    sub_1E381F390(&unk_1ECF30738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30730);
  }

  return result;
}

unint64_t sub_1E39F6578()
{
  result = qword_1ECF30750;
  if (!qword_1ECF30750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30750);
  }

  return result;
}

uint64_t sub_1E39F65CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 33))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E39F6608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E39F665C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 24))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

unint64_t sub_1E39F66A8()
{
  result = qword_1EE289A38;
  if (!qword_1EE289A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF305E8);
    sub_1E381F390(&unk_1EE2893C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A38);
  }

  return result;
}

unint64_t sub_1E39F6760()
{
  result = qword_1ECF30770;
  if (!qword_1ECF30770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30778);
    sub_1E381F390(&unk_1ECF306C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30770);
  }

  return result;
}

uint64_t sub_1E39F6848@<X0>(BOOL *a1@<X8>)
{
  sub_1E4201164();
  v4 = v3;
  result = sub_1E4201154();
  *a1 = *(v1 + 24) - v6 < v4;
  return result;
}

uint64_t objectdestroy_151Tm()
{

  return swift_deallocObject();
}

void sub_1E39F69F8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  OUTLINED_FUNCTION_99_6();
  v11 = *(v10 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  v12 = OUTLINED_FUNCTION_105_5();
  v13 = *(*v11 + 320);
  if (a10 != (v13)(v12))
  {
    v13();
    OUTLINED_FUNCTION_68_9();
  }

  OUTLINED_FUNCTION_104_3();
}

unint64_t sub_1E39F6AC0()
{
  result = qword_1EE288DE8;
  if (!qword_1EE288DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF307B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30790);
    sub_1E381F390(&unk_1EE288930);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DE8);
  }

  return result;
}

unint64_t sub_1E39F6BCC()
{
  result = qword_1ECF307C0;
  if (!qword_1ECF307C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF307B0);
    sub_1E381F390(&unk_1ECF307C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF307C0);
  }

  return result;
}

void OUTLINED_FUNCTION_32_37(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E6720];

  sub_1E39F504C(319, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_68_9()
{

  return sub_1E4203904();
}

uint64_t OUTLINED_FUNCTION_77_7()
{

  return sub_1E3B50380(v0);
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_106_8()
{
}

void *sub_1E39F6D90()
{
  v1 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E39F6DDC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView;
  v6 = a1;
  swift_beginAccess();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
}

void (*sub_1E39F6E78(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E39F6F00;
}

void sub_1E39F6F00(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E39F6DDC(v3);
  }

  else
  {
    sub_1E39F6DDC(*(*a1 + 24));
  }

  free(v2);
}

char *sub_1E39F6F6C()
{
  *&v0[OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView] = 0;
  v1 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView;
  _s11ContentViewCMa();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v0[OBJC_IVAR____TtC8VideosUI14EpicInlineView_debugUIOverlay] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EpicInlineView();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v2 vui:*&v2[OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView] addSubview:0 oldView:?];
  return v2;
}

void sub_1E39F7068()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_headerView) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView;
  _s11ContentViewCMa();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_debugUIOverlay) = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E39F7124(char a1, double a2, double a3)
{
  v4 = v3;
  v27.receiver = v3;
  v27.super_class = type metadata accessor for EpicInlineView();
  result = objc_msgSendSuper2(&v27, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a2 != 0.0 || a3 != 0.0)
  {
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x68);
    v11 = v10(result);
    v12 = 0.0;
    v13 = 0.0;
    v14 = 0.0;
    if (v11)
    {
      v15 = v11;
      [v11 vui:a2 sizeThatFits:a3];
      v13 = v16;
      v14 = v17;
    }

    v18 = *(v4 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);
    v19 = (*((*v9 & *v18) + 0x148))();
    if (v19)
    {
      (*(*v19 + 152))(v28);

      if (v29)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v28[0];
      }
    }

    v20 = [v18 vui:a2 sizeThatFits:a3 - v14 - v12];
    v22 = v21;
    v24 = v23;
    if ((a1 & 1) == 0)
    {
      v25 = v10(v20);
      if (v25)
      {
        v26 = v25;
        [v25 setFrame_];
      }

      [v18 setFrame_];
    }

    VUIRoundValue();
    return VUIRoundValue();
  }

  return result;
}

void sub_1E39F73B4(void *a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v140 - v10;
  v12 = (*(*a2 + 488))(v9);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  if (!*(v12 + 16))
  {

LABEL_8:
    v19 = sub_1E324FBDC();
    (*(v5 + 16))(v7, v19, v4);
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E323F000, v20, v21, "EpicInlineView::trying to update page content view with same model objects, returning.", v22, 2u);
      MEMORY[0x1E69143B0](v22, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return;
  }

  v14 = (*a2 + 392);
  v15 = *v14;
  v16 = (*v14)();
  if (!v16)
  {

    return;
  }

  v140 = v11;
  v143 = (*(*v16 + 1560))(v16);

  v153[0] = 12;
  v17 = *(*a2 + 776);
  v146 = *a2 + 776;
  v141 = v17;
  (v17)(__dst, v153, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (*(&__dst[1] + 1))
  {
    if (OUTLINED_FUNCTION_4_93())
    {
      v18 = v153[0];
      goto LABEL_16;
    }
  }

  else
  {
    sub_1E325F748(__dst, &unk_1ECF296E0);
  }

  v18 = 0;
LABEL_16:
  v147 = v13;
  *(a1 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_debugUIOverlay) = v18;
  v23 = (*((*MEMORY[0x1E69E7D40] & **(a1 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView)) + 0x120))(*(a1 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_debugUIOverlay));
  if ((v15)(v23))
  {
    type metadata accessor for EpicInlineLayout();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      v26 = *((*MEMORY[0x1E69E7D40] & **(a1 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView)) + 0x150);

      v26(v25);
    }
  }

  v27 = *(a1 + OBJC_IVAR____TtC8VideosUI14EpicInlineView_contentView);
  *(&__dst[1] + 1) = &unk_1F5D5E3C8;
  *&__dst[2] = &off_1F5D5CB98;
  v28 = sub_1E39C29A4(__dst);
  v30 = v29;
  __swift_destroy_boxed_opaque_existential_1(__dst);
  *&__dst[0] = v28;
  *(&__dst[0] + 1) = v30;
  sub_1E39F885C();
  sub_1E4149694();
  if (v153[0] == 4)
  {
    v31 = 2;
  }

  else
  {
    v31 = v153[0];
  }

  v32 = MEMORY[0x1E69E7D40];
  v33 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x138);
  v145 = v27;
  v34 = v33(v31);
  v35 = (*((*v32 & *a1) + 0x68))(v34);
  v36 = sub_1E373E010(138, v147);
  if (v36)
  {
    v37 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    memset(__dst, 0, 40);
    v38 = v37;
    v39 = v35;
    v40 = sub_1E393D9C4(v36, v35, __dst, 0);

    sub_1E325F748(__dst, &qword_1ECF296C0);
    if (v40)
    {
      type metadata accessor for CollectionRichHeaderView();
      v36 = swift_dynamicCastClass();
      v41 = v147;
      if (!v36)
      {
      }
    }

    else
    {
      v36 = 0;
      v41 = v147;
    }

    v42 = v36;
  }

  else
  {

    v41 = v147;
  }

  v43 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x70))(v36);
  v144 = sub_1E373E010(1, v41);
  v142 = v36;
  if (!v144)
  {
    v47 = v145;
    (*((*v43 & *v145) + 0x1E0))();
    v48 = sub_1E324FBDC();
    v49 = v140;
    (*(v5 + 16))(v140, v48, v4);
    v50 = sub_1E41FFC94();
    v51 = sub_1E42067E4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1E323F000, v50, v51, "EpicInlineView::Background view model not found.", v52, 2u);
      MEMORY[0x1E69143B0](v52, -1, -1);
    }

    (*(v5 + 8))(v49, v4);
    v53 = v147;
    v54 = MEMORY[0x1E69E7D40];
    goto LABEL_77;
  }

  sub_1E3DF9E68(v152);
  sub_1E3D41814(v143, v152, v153);
  memcpy(v151, v153, 0x82uLL);
  LOBYTE(v151[16]) = 1;
  if (v151[10] != 1)
  {
    [a1 bounds];
    v151[1] = v44;
    v151[2] = v45;
    LOBYTE(v151[3]) = 0;
    if (v151[10] != 1)
    {
      BYTE1(v151[6]) = 1;
    }
  }

  LOBYTE(v148[0]) = 4;
  (*(*v144 + 776))(__dst, v148, &unk_1F5D5D258, &off_1F5D5C7B8);
  if (*(&__dst[1] + 1))
  {
    if (OUTLINED_FUNCTION_4_93())
    {
      OUTLINED_FUNCTION_3_95();
      (*(v46 + 408))();
    }
  }

  else
  {
    sub_1E325F748(__dst, &unk_1ECF296E0);
  }

  OUTLINED_FUNCTION_3_95();
  v56 = (*(v55 + 472))();
  v148[0] = v56;
  MEMORY[0x1EEE9AC00](v56);
  *(&v140 - 2) = v151;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF307E8);
  sub_1E4148C68(sub_1E39F88B0, v57, __dst);

  v58 = *&__dst[0];
  LOBYTE(v148[0]) = 1;
  (v141)(__dst, v148, &unk_1F5D5D258, &off_1F5D5C7B8);
  if (*(&__dst[1] + 1))
  {
    if (OUTLINED_FUNCTION_4_93())
    {
      [v58 setMutePlaybackInBackground_];
    }
  }

  else
  {
    sub_1E325F748(__dst, &unk_1ECF296E0);
  }

  [a1 bounds];
  Width = CGRectGetWidth(v156);
  v60 = v145;
  if (Width > 0.0 && (v61 = *sub_1E3D41778(), memcpy(v148, v151, 0x82uLL), nullsub_1(v62, v63), memcpy(__dst, v148, 0x82uLL), , v64 = sub_1E3D41B90(), v65 = sub_1E3D41C40(a2, v61, v64, __dst), , v65))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1E4298880;
    *(v66 + 32) = v65;
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
  }

  sub_1E39F8914(v66, v58);
  v67 = *((*MEMORY[0x1E69E7D40] & *v60) + 0x1E0);
  v141 = v58;
  v67(v58);
  v68 = v144;
  v69 = sub_1E3C5F26C(v144);
  if (v70)
  {
    v71 = [v60 vuiTraitCollection];
    v72 = [v71 vuiUserInterfaceStyle];
  }

  else
  {
    v72 = v69;
  }

  v73 = [v60 vuiOverrideUserInterfaceStyle];
  v54 = MEMORY[0x1E69E7D40];
  if (v73 != v72)
  {
    v74 = (*((*MEMORY[0x1E69E7D40] & *v60) + 0x208))([v60 vui:v72 setOverrideUserInterfaceStyle:?]);
    [v74 vui:v72 setOverrideUserInterfaceStyle:?];
  }

  v75 = (*(*v68 + 464))();
  if (!v75)
  {

LABEL_75:
    v47 = v145;
LABEL_76:
    memcpy(v148, v151, 0x82uLL);
    sub_1E39F8998(v148);
    v53 = v147;
LABEL_77:
    v88 = sub_1E373E010(97, v53);
    v89 = v88;
    if (!v88)
    {
      goto LABEL_85;
    }

    v90 = (*(*v88 + 464))(v88);
    if (v90 && (v91 = sub_1E32AE9B0(v90), , v91))
    {
      _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      OUTLINED_FUNCTION_0_108();
      v93 = *(v92 + 568);
      v95 = v94;
      v96 = v93();
      OUTLINED_FUNCTION_2_88();
      v98 = sub_1E393D9C4(v89, v96, v97, 0);

      sub_1E325F748(v151, &qword_1ECF296C0);
      if (v98)
      {
        type metadata accessor for VerticalStackView();
        v89 = swift_dynamicCastClass();
        if (!v89)
        {
        }

LABEL_85:
        OUTLINED_FUNCTION_1_115();
        v100 = *(v99 + 576);
        v101 = v89;
        v100(v89);
        if (sub_1E373E010(40, v147))
        {
          type metadata accessor for ImageViewModel();
          v102 = swift_dynamicCastClass();
          if (v102)
          {
            v103 = v102;
            _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
            OUTLINED_FUNCTION_0_108();
            v105 = *(v104 + 592);
            v107 = v106;
            v108 = v105();
            OUTLINED_FUNCTION_2_88();
            v109 = OUTLINED_FUNCTION_5_92();
            v113 = sub_1E393D9C4(v109, v110, v111, v112);

            v114 = sub_1E325F748(v151, &qword_1ECF296C0);
            if (v113)
            {
              (*(*v103 + 904))(v114);
              if (v115)
              {
                v116 = sub_1E4205ED4();
              }

              else
              {
                v116 = 0;
              }

              v47 = v145;
              [v113 vui:v116 setAccessibilityText:?];
            }

            else
            {

              v47 = v145;
            }

LABEL_95:
            OUTLINED_FUNCTION_1_115();
            v118 = *(v117 + 600);
            v119 = v113;
            v118(v113);
            v120 = sub_1E373E010(40, v147);
            if (v120)
            {
              if (v113)
              {
              }

              else
              {
                _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
                OUTLINED_FUNCTION_0_108();
                v134 = *(v133 + 616);
                v136 = v135;
                v137 = v134();
                OUTLINED_FUNCTION_2_88();
                v139 = sub_1E393D9C4(v120, v137, v138, 0);

                sub_1E325F748(v151, &qword_1ECF296C0);
                if (v139)
                {
                  type metadata accessor for ChannelLogoView();
                  v120 = swift_dynamicCastClass();
                  if (!v120)
                  {
                  }

                  goto LABEL_99;
                }
              }

              v120 = 0;
            }

LABEL_99:
            OUTLINED_FUNCTION_1_115();
            v122 = *(v121 + 624);
            v123 = v120;
            v122(v120);
            type metadata accessor for UIFactory();
            sub_1E373E010(88, v147);

            v125 = v47;
            v126 = (*((*v54 & *v47) + 0x280))(v124);
            sub_1E3280A90(0, &qword_1EE23AE80);
            memset(v151, 0, 40);
            v127 = OUTLINED_FUNCTION_5_92();
            v131 = sub_1E393D92C(v127, v128, v129, v130);

            sub_1E325F748(v151, &qword_1ECF296C0);
            v132 = (*((*v54 & *v125) + 0x288))(v131);
            (*((*v54 & *v125) + 0x388))(v132);

            return;
          }
        }

        v113 = 0;
        goto LABEL_95;
      }
    }

    else
    {
    }

    v89 = 0;
    goto LABEL_85;
  }

  v76 = v75;
  v77 = sub_1E32AE9B0(v75);
  v78 = 0;
  v146 = v76 & 0xC000000000000001;
  while (1)
  {
    if (v77 == v78)
    {

      goto LABEL_74;
    }

    if (v146)
    {
      v79 = MEMORY[0x1E6911E60](v78, v76);
    }

    else
    {
      if (v78 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_105;
      }

      v79 = *(v76 + 8 * v78 + 32);
    }

    if (__OFADD__(v78, 1))
    {
      break;
    }

    v150 = *(v79 + 98);
    v149 = 39;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v148[0] == v148[17] && v148[1] == v148[18])
    {

LABEL_71:

      type metadata accessor for ImageViewModel();
      v82 = swift_dynamicCastClass();
      if (v82)
      {
        v83 = v82;
        v84 = j__OUTLINED_FUNCTION_18();
        v85 = v143;
        v86 = (*(*v83 + 1048))(v143, v84 & 1);
        v47 = v145;
        v54 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v145) + 0x168))(v86);
        v87 = (*(*v83 + 1040))(v85);
        (*((*v54 & *v47) + 0x180))(v87 & 1);

        goto LABEL_76;
      }

LABEL_74:
      v54 = MEMORY[0x1E69E7D40];
      goto LABEL_75;
    }

    v81 = sub_1E42079A4();

    if (v81)
    {
      goto LABEL_71;
    }

    ++v78;
  }

  __break(1u);
LABEL_105:
  __break(1u);
}

id sub_1E39F8768()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithName_];

  return v2;
}

id sub_1E39F87DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpicInlineView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E39F885C()
{
  result = qword_1EE265180;
  if (!qword_1EE265180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE265180);
  }

  return result;
}

id sub_1E39F88B0@<X0>(void *a1@<X8>)
{
  sub_1E3280A90(0, &qword_1EE23AF70);

  result = sub_1E39F8768();
  *a1 = result;
  return result;
}

void sub_1E39F8914(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23B350);
  v3 = sub_1E42062A4();

  [a2 setMediaInfos_];
}

void sub_1E39F89EC()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  v1 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
  v2 = v0;
  v3 = [v1 init];
  [v3 setTotalCostLimit_];
  [v2 setTotalCostLimit_];

  qword_1EE28B9A8 = v2;
  qword_1EE28B9B0 = v3;
}

id sub_1E39F8A80()
{
  result = sub_1E39F8AA0();
  qword_1EE28B9C0 = result;
  return result;
}

id sub_1E39F8AA0()
{
  v0 = sub_1E41FE6C4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1E41FE634();
  v7 = sub_1E41FE664();
  [v6 setLocale_];

  (*(v2 + 8))(v5, v0);
  return v6;
}

uint64_t sub_1E39F8BAC(uint64_t a1)
{
  v2 = sub_1E328438C(a1, &v124);
  OUTLINED_FUNCTION_1_116(v2, v3, v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v92, v99, v105, v112, v118, v124, *(&v124 + 1), v125, v126, v127, v128[0]);
  if (swift_dynamicCast())
  {
    v9 = sub_1E39F993C(v128[0], v128[1]);

    if (v9)
    {
      return v9;
    }
  }

  sub_1E328438C(a1, &v124);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  OUTLINED_FUNCTION_1_116(v10, v11, v12, v10, v13, v14, v15, v16, v93, v100, v106, v113, v119, v124, *(&v124 + 1), v125, v126, v127, v128[0]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v17 = v128[0];
  sub_1E3277E60(0x707954726F6C6F63, 0xE900000000000065, v128[0], &v124);
  if (v126)
  {
    v26 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_1_116(v18, v19, v20, v21, v22, v23, v24, v25, v94, v101, v107, v114, v120, v124, *(&v124 + 1), v125, v126, v127, v128[0]);
    v27 = swift_dynamicCast();
    if (v27)
    {
      v27 = sub_1E40C21C4();
      if (v27 != 5)
      {
        if (*(v17 + 16) && (v32 = v27, v33 = sub_1E327D33C(0x6C6156726F6C6F63, 0xEB00000000736575), (v34 & 1) != 0) && (sub_1E328438C(*(v17 + 56) + 32 * v33, &v124), v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420), OUTLINED_FUNCTION_1_116(v35, v36, v37, v35, v38, v39, v40, v41, v95, v102, v108, v114, v120, v124, *(&v124 + 1), v125, v126, v127, v128[0]), result = swift_dynamicCast(), (result & 1) != 0))
        {
          HIDWORD(v96) = v32;
          v43 = 0;
          v44 = v128[0];
          v109 = MEMORY[0x1E69E7CC0];
          v128[0] = MEMORY[0x1E69E7CC0];
          v45 = *(v44 + 16);
          v46 = v44 + 40;
LABEL_11:
          v47 = v46 + 16 * v43;
          while (v45 != v43)
          {
            if (v43 >= *(v44 + 16))
            {
              __break(1u);
              return result;
            }

            v48 = v47 + 16;
            ++v43;
            v51 = v47 - 8;
            v50 = *(v47 - 8);
            v49 = *(v51 + 8);
            v126 = v26;
            *&v124 = v50;
            *(&v124 + 1) = v49;

            v52 = sub_1E39F8BAC(&v124);
            __swift_destroy_boxed_opaque_existential_1(&v124);

            v47 = v48;
            if (v52)
            {
              MEMORY[0x1E6910BF0](result);
              if (*((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E42062F4();
              }

              result = sub_1E4206324();
              v109 = v128[0];
              v46 = v44 + 40;
              goto LABEL_11;
            }
          }

          *&v124 = v109;
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B0);
          v62 = sub_1E38E2C50();
          sub_1E38D2480(v128, v61, v62);

          v60 = v128[0];
          if (v128[0])
          {
            OUTLINED_FUNCTION_8_63(v63, 0x73746E696F50, v64, v65, v66, v67, v68, v69, v96, v44 + 40, v109, v115, v121, v124);
            if (v126)
            {
              v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90);
              OUTLINED_FUNCTION_1_116(v70, v71, v72, v70, v73, v74, v75, v76, v97, v103, v110, v116, v122, v124, *(&v124 + 1), v125, v126, v127, v128[0]);
              swift_dynamicCast();
            }

            else
            {
              sub_1E329505C(&v124);
            }

            type metadata accessor for ViewGradientLayout();
            v60 = sub_1E40C2E40();
            OUTLINED_FUNCTION_8_63(v60, 0x746867696548, v77, v78, v79, v80, v81, v82, v97, v103, v110, v116, v122, v124);
            if (v126)
            {
              OUTLINED_FUNCTION_1_116(v83, v84, v85, MEMORY[0x1E69E7DE0], v86, v87, v88, v89, v98, v104, v111, v117, v123, v124, *(&v124 + 1), v125, v126, v127, v128[0]);
              if (swift_dynamicCast())
              {
                v90 = v128[0];
                v91 = *(*v60 + 312);

                v91(v90, 0);
              }
            }

            else
            {
              sub_1E329505C(&v124);
            }
          }
        }

        else
        {
          v60 = 0;
        }

        if (v60)
        {
          return 0;
        }

        return 0;
      }
    }
  }

  else
  {
    v27 = sub_1E329505C(&v124);
  }

  v126 = &type metadata for ThemeKeys;
  v127 = &off_1F5D82378;
  LOBYTE(v124) = 0;
  OUTLINED_FUNCTION_10_66(v27, v28, v29, v30, v31);
  if (v129)
  {
    if (OUTLINED_FUNCTION_41_11())
    {
      __swift_destroy_boxed_opaque_existential_1(&v124);
      v53 = sub_1E39F993C(v114, v120);

      goto LABEL_25;
    }

    v54 = __swift_destroy_boxed_opaque_existential_1(&v124);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v124);
    v54 = sub_1E329505C(v128);
  }

  v53 = 0;
LABEL_25:
  v126 = &type metadata for ThemeKeys;
  v127 = &off_1F5D82378;
  LOBYTE(v124) = 1;
  OUTLINED_FUNCTION_10_66(v54, v55, v56, v57, v58);
  if (v129)
  {
    if (OUTLINED_FUNCTION_41_11())
    {
      __swift_destroy_boxed_opaque_existential_1(&v124);
      v9 = sub_1E39F993C(v114, v120);

      if (!v53)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

    __swift_destroy_boxed_opaque_existential_1(&v124);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v124);
    sub_1E329505C(v128);
  }

  v9 = 0;
  if (!v53)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (v9)
  {
    sub_1E3280A90(0, &qword_1EE23AE20);
    v59 = sub_1E3E5F2F8(v53, v9);

    v9 = v59;
  }

  else
  {
    v9 = v53;
  }

LABEL_35:

  if (!v9)
  {
    return 0;
  }

  return v9;
}

uint64_t sub_1E39F9114(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E41FDEC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  v48 = a2;
  sub_1E41FDE94();
  v10 = sub_1E32822E0();
  v11 = sub_1E42071E4();
  v13 = v12;
  v15 = *(v6 + 8);
  v14 = (v6 + 8);
  v15(v9, v4);
  OUTLINED_FUNCTION_2_89();
  if (sub_1E4206124())
  {
    if (_MergedGlobals_182 != -1)
    {
      OUTLINED_FUNCTION_0_109();
    }

    v16 = qword_1EE28B9A8;
    v17 = sub_1E4205ED4();
    v18 = [v16 objectForKey_];

    if (v18)
    {
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_2_89();
    v19 = sub_1E4206054();
    v20 = sub_1E39F9EF4(v19, v11, v13);
    MEMORY[0x1E6910920](v20);

    sub_1E3280A90(0, &qword_1EE23AD00);

    OUTLINED_FUNCTION_53();
    v21 = sub_1E3763FC8();
    v47 = 0;
    if ([v21 scanHexLongLong_])
    {
      OUTLINED_FUNCTION_53();
      if (sub_1E4206024() == 4)
      {

        v22 = MEMORY[0x1E69DC888];
LABEL_8:
        v23 = objc_allocWithZone(v22);
        v26 = OUTLINED_FUNCTION_4_94();
LABEL_29:
        v18 = [v24 v25];
        sub_1E39F989C(v18);
LABEL_30:

LABEL_37:

        return v18;
      }

      OUTLINED_FUNCTION_53();
      if (sub_1E4206024() == 6)
      {

        v38 = objc_allocWithZone(MEMORY[0x1E69DC888]);
        v26 = OUTLINED_FUNCTION_4_94();
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_53();
      v39 = sub_1E4206024();

      if (v39 == 8)
      {
        v22 = MEMORY[0x1E69DC888];
        goto LABEL_8;
      }
    }

    else
    {
    }

LABEL_36:
    v18 = 0;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_2_89();
  if ((sub_1E4206124() & 1) == 0)
  {
    OUTLINED_FUNCTION_2_89();
    if ((sub_1E4206124() & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (_MergedGlobals_182 != -1)
  {
    OUTLINED_FUNCTION_0_109();
  }

  v27 = qword_1EE28B9B0;
  v28 = sub_1E4205ED4();
  v18 = [v27 objectForKey_];

  if (v18)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_2_89();
  sub_1E4206124();
  OUTLINED_FUNCTION_2_89();
  v29 = sub_1E4206054();
  v30 = sub_1E39F9EF4(v29, v11, v13);
  MEMORY[0x1E6910920](v30);
  OUTLINED_FUNCTION_5_93();
  v31 = sub_1E39F9F40(1uLL, 0, v28);
  MEMORY[0x1E6910920](v31);
  OUTLINED_FUNCTION_5_93();
  v32 = sub_1E39FA014(1);
  MEMORY[0x1E6910920](v32);
  OUTLINED_FUNCTION_5_93();
  v47 = 0;
  v48 = v28;
  v46[0] = 44;
  v46[1] = 0xE100000000000000;
  v21 = &v47;
  v18 = sub_1E4207194();

  v33 = v18[2];
  if ((v33 - 3) > 1)
  {
    goto LABEL_35;
  }

  if (qword_1EE28B9B8 != -1)
  {
    swift_once();
    if (!v18[2])
    {
      __break(1u);
      goto LABEL_44;
    }
  }

  v28 = qword_1EE28B9C0;
  v10 = v18[5];

  v14 = sub_1E4205ED4();

  v21 = [v28 numberFromString_];

  if (!v21)
  {
LABEL_35:

    goto LABEL_36;
  }

  sub_1E41FE944();
  if (v18[2] < 2uLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = v18[7];

  v34 = sub_1E4205ED4();

  v10 = [v28 numberFromString_];

  if (!v10)
  {
LABEL_34:

    goto LABEL_35;
  }

  sub_1E41FE944();
  if (v18[2] < 3uLL)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v35 = sub_1E4205ED4();

  v14 = [v28 numberFromString_];

  if (!v14)
  {

    goto LABEL_34;
  }

  result = sub_1E41FE944();
  if (v33 != 4)
  {

    goto LABEL_39;
  }

  if (v18[2] >= 4uLL)
  {

    v37 = sub_1E4205ED4();

    v18 = [v28 numberFromString_];

    if (!v18)
    {
LABEL_41:

      goto LABEL_30;
    }

    sub_1E41FE944();

LABEL_39:
    v40 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v41 = OUTLINED_FUNCTION_4_94();
    v18 = [v42 v43];
    v28 = &OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss;
    if (_MergedGlobals_182 == -1)
    {
LABEL_40:
      v44 = v28[310];
      v45 = sub_1E4205ED4();
      [v44 setObject:v18 forKey:v45 cost:1];

      goto LABEL_41;
    }

LABEL_46:
    OUTLINED_FUNCTION_0_109();
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

void sub_1E39F989C(uint64_t a1)
{
  if (_MergedGlobals_182 != -1)
  {
    OUTLINED_FUNCTION_0_109();
  }

  v2 = qword_1EE28B9A8;
  v3 = sub_1E4205ED4();
  [v2 setObject:a1 forKey:v3 cost:1];
}

id sub_1E39F993C(uint64_t a1, uint64_t *a2)
{
  result = sub_1E39F9114(a1, a2);
  if (!result)
  {

    v3 = sub_1E4207A04();

    switch(v3)
    {
      case 0:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E5F58C();
        return *v5;
      case 1:
      case 2:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E5F7E4();
        return *v5;
      case 3:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E5FD88();
        return *v5;
      case 4:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E5FDEC();
        return *v5;
      case 5:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E60364();
        return *v5;
      case 6:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E603B8();
        return *v5;
      case 7:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E6011C();
        return *v5;
      case 8:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E5FACC();
        return *v5;
      case 9:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E605D4();
        return *v5;
      case 10:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E60238();
        return *v5;
      case 11:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E6029C();
        return *v5;
      case 12:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E60300();
        return *v5;
      case 13:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E6041C();
        return *v5;
      case 14:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E60480();
        return *v5;
      case 15:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E604E4();
        return *v5;
      case 16:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E60548();
        return *v5;
      case 17:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E60700();
        return *v5;
      case 18:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E608EC();
        return *v5;
      case 19:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E6097C();
        return *v5;
      case 20:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E60A14();
        return *v5;
      case 21:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E60170();
        return *v5;
      case 22:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E601D4();
        return *v5;
      case 23:
        sub_1E3280A90(0, &qword_1EE23AE20);
        v5 = sub_1E3E5FE74();
        return *v5;
      case 24:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemRedColor];
        goto LABEL_37;
      case 25:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemGreenColor];
        goto LABEL_37;
      case 26:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemBlueColor];
        goto LABEL_37;
      case 27:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemOrangeColor];
        goto LABEL_37;
      case 28:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemYellowColor];
        goto LABEL_37;
      case 29:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemPinkColor];
        goto LABEL_37;
      case 30:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemPurpleColor];
        goto LABEL_37;
      case 31:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemTealColor];
        goto LABEL_37;
      case 32:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemIndigoColor];
        goto LABEL_37;
      case 33:
        OUTLINED_FUNCTION_3_96(v4, &qword_1EE23AE20);
        v6 = [objc_opt_self() systemGrayColor];
LABEL_37:
        result = v6;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

uint64_t sub_1E39F9E94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1E39F9EF4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1E4206184();
  }

  __break(1u);
  return result;
}

unint64_t sub_1E39F9F40(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1E4206044();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1E4206184();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E39FA014(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = sub_1E4206024();
    if (!__OFSUB__(result, v1))
    {
      sub_1E4206044();
      v2 = sub_1E4206184();

      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E39FA104()
{
  type metadata accessor for LoadingViewInteractor();
  *(swift_allocObject() + OBJC_IVAR____TtC8VideosUIP33_2B29BE9CA5E2518C7CE292210CD5DA1321LoadingViewInteractor_view) = 0;
  return sub_1E3B500B4();
}

uint64_t sub_1E39FA188@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = sub_1E39FA104;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1E39FA1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v40 = v8;
  type metadata accessor for TextViewModel();
  type metadata accessor for TextLayout();
  v9 = sub_1E383BCC0();

  v10 = *sub_1E3E5FD88();
  v11 = *(*v9 + 680);
  v12 = v10;
  v11(v10);

  OUTLINED_FUNCTION_36();
  (*(v13 + 1696))(2);
  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 1792))(10);
  v23 = OUTLINED_FUNCTION_2_90(v15, v16, v17, v18, v19, v20, v21, v22, v40);
  if (a4)
  {
    v24 = a3;
  }

  else
  {
    v24 = 0;
  }

  v41 = v24;
  v25 = sub_1E383BCC0();

  v26 = *sub_1E3E5FDEC();
  v27 = *(*v25 + 680);
  v28 = v26;
  v27(v26);
  OUTLINED_FUNCTION_36();
  (*(v29 + 464))(1);

  OUTLINED_FUNCTION_36();
  v31 = (*(v30 + 1696))(17);
  result = OUTLINED_FUNCTION_2_90(v31, v32, v33, v34, v35, v36, v37, v38, v41);
  *a5 = v23;
  *(a5 + 8) = result;
  *(a5 + 16) = sub_1E39FA104;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  return result;
}

uint64_t sub_1E39FA414@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for LoadingViewInteractor();
  sub_1E39FA56C();

  sub_1E4200BC4();
  v5 = sub_1E42010C4();
  v7 = v6;
  v8 = swift_allocObject();
  v9 = *(v1 + 1);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 32);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = sub_1E39FA5C4;
  a1[5] = v8;
  a1[6] = 0;
  a1[7] = 0;

  return sub_1E380E99C();
}

uint64_t type metadata accessor for LoadingViewInteractor()
{
  result = qword_1EE29BC48;
  if (!qword_1EE29BC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E39FA56C()
{
  result = qword_1EE266608[0];
  if (!qword_1EE266608[0])
  {
    type metadata accessor for LoadingViewInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE266608);
  }

  return result;
}

void sub_1E39FA5C4()
{
  type metadata accessor for LoadingViewInteractor();
  sub_1E39FA56C();
  v0 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_2B29BE9CA5E2518C7CE292210CD5DA1321LoadingViewInteractor_view);
  if (v0)
  {
    v1 = v0;

    [v1 startTimer];
  }

  else
  {
  }
}

uint64_t sub_1E39FA6BC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E39FA710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E39FA788()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E39FA848()
{
  result = qword_1EE289BA0;
  if (!qword_1EE289BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF307F0);
    sub_1E39FA8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BA0);
  }

  return result;
}

unint64_t sub_1E39FA8D4()
{
  result = qword_1EE297838;
  if (!qword_1EE297838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE297838);
  }

  return result;
}

id sub_1E39FA93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = 0;
    v8 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v6 = sub_1E3C27024();
  v8 = v7;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1E3C27024();
  v11 = v10;
LABEL_6:
  v12 = objc_allocWithZone(VUILoadingView);
  v13 = sub_1E39FADAC(0.0, 0.0, 0.0, 0.0, v6, v8, v9, v11);
  if (!a1 || !sub_1E3C27528())
  {
LABEL_10:
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  type metadata accessor for TextLayout();
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = (*(*v14 + 2408))();
    [v13 setTitleTextLayout_];

    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_11:
  if (sub_1E3C27528())
  {
    type metadata accessor for TextLayout();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = (*(*v16 + 2408))();
      [v13 setMessageTextLayout_];
    }

    else
    {
    }
  }

LABEL_17:
  v18 = *(a3 + OBJC_IVAR____TtC8VideosUIP33_2B29BE9CA5E2518C7CE292210CD5DA1321LoadingViewInteractor_view);
  *(a3 + OBJC_IVAR____TtC8VideosUIP33_2B29BE9CA5E2518C7CE292210CD5DA1321LoadingViewInteractor_view) = v13;
  v19 = v13;

  return v19;
}

uint64_t sub_1E39FAB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E39FAE7C();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E39FAB8C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E39FAE7C();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

unint64_t sub_1E39FAC60(uint64_t a1)
{
  result = sub_1E39FAC88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E39FAC88()
{
  result = qword_1EE297840[0];
  if (!qword_1EE297840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE297840);
  }

  return result;
}

uint64_t sub_1E39FACDC()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E39FAC88();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E39FAD30()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E39FAC88();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E39FAD84()
{
  sub_1E39FAC88();
  sub_1E4201F04();
  __break(1u);
}

id sub_1E39FADAC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a6)
  {
    v14 = 0;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  v14 = sub_1E4205ED4();

  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = sub_1E4205ED4();

LABEL_6:
  v16 = [v8 initWithFrame:v14 loadingTitle:v15 loadingMessage:{a1, a2, a3, a4}];

  return v16;
}

unint64_t sub_1E39FAE7C()
{
  result = qword_1EE297830;
  if (!qword_1EE297830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE297830);
  }

  return result;
}

id sub_1E39FAED0()
{
  result = [objc_allocWithZone(type metadata accessor for LibImageLoader()) init];
  qword_1EE2AB198 = result;
  return result;
}

uint64_t *sub_1E39FAF00()
{
  if (qword_1EE2A5920 != -1)
  {
    OUTLINED_FUNCTION_14_73();
  }

  return &qword_1EE2AB198;
}

id sub_1E39FAF40()
{
  v1 = OBJC_IVAR____TtC8VideosUI14LibImageLoader_imageLoadOperationQueue;
  v2 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *&v0[v1] = v2;
  [v2 setMaxConcurrentOperationCount_];
  [*&v0[v1] setQualityOfService_];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LibImageLoader();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1E39FAFF4()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1E39FB154(uint64_t a1)
{
  sub_1E328438C(a1, v4);
  type metadata accessor for LibImageViewModel();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = sub_1E39FB1E4(v3);

  return v1;
}

uint64_t sub_1E39FB1E4(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  if (*a1 == _TtC8VideosUI19LibMPImageViewModel)
  {
    v10 = 3043437;
LABEL_5:
    v26 = v10;
    v27 = 0xE300000000000000;
    if (!*(a1 + 24))
    {
      OUTLINED_FUNCTION_44_27();
    }

    v11 = OUTLINED_FUNCTION_74();
    MEMORY[0x1E69109E0](v11);

    goto LABEL_8;
  }

  if (*a1 == _TtC8VideosUI25LibSidebandImageViewModel)
  {
    v10 = 3039859;
    goto LABEL_5;
  }

  type metadata accessor for LibraryFamilyMembersImageViewModel();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v26 = 3042662;
    v27 = 0xE300000000000000;
    v14 = *(v13 + 328);
    v15 = *(v13 + 336);

    MEMORY[0x1E69109E0](v14, v15);

LABEL_8:

    return v26;
  }

  OUTLINED_FUNCTION_44_27();
  v16 = sub_1E41A3110();
  (*(v5 + 16))(v9, v16, v3);

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_6_21();
    v20 = OUTLINED_FUNCTION_100();
    v26 = v20;
    *v19 = 136315138;
    v28 = *(a1 + 98);
    sub_1E37D144C();
    v21 = sub_1E4207944();
    v23 = sub_1E3270FC8(v21, v22, &v26);

    *(v19 + 4) = v23;
    OUTLINED_FUNCTION_54_1(&dword_1E323F000, v24, v25, "LibImageLoader:: Unsupported view model: %s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v9, v3);
  return v1;
}

void sub_1E39FB554()
{
  OUTLINED_FUNCTION_144_0();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  sub_1E328438C(v0, v24);
  sub_1E3280A90(0, &qword_1EE23B010);
  if (swift_dynamicCast())
  {
    v8 = v23[1];
    v9 = sub_1E41A3110();
    (*(v3 + 16))(v7, v9, v1);
    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();
    if (os_log_type_enabled(v10, v11))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_48_5(&dword_1E323F000, v12, v13, "LibImageLoader:: cancel image loading");
      OUTLINED_FUNCTION_6_0();
    }

    v14 = OUTLINED_FUNCTION_13_8();
    v15(v14);
    [v8 cancel];
  }

  else
  {
    sub_1E41A3110();
    v16 = OUTLINED_FUNCTION_101();
    v17(v16);
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_125_0();
      *v20 = 0;
      _os_log_impl(&dword_1E323F000, v18, v19, "LibImageLoader:: requestToken is not VUIAsynchronousWorkToken", v20, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v21 = OUTLINED_FUNCTION_16_0();
    v22(v21);
  }
}

void sub_1E39FB7F4()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_5_16();
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  sub_1E328438C(v8, v41);
  type metadata accessor for LibImageViewModel();
  if (!swift_dynamicCast())
  {
    v30 = sub_1E41A3110();
    (*(v13 + 16))(v17, v30, v11);
    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();
    if (os_log_type_enabled(v31, v32))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_48_5(&dword_1E323F000, v33, v34, "LibImageLoader::We only support LibImageViewModel objects");
      OUTLINED_FUNCTION_6_0();
    }

    (*(v13 + 8))(v17, v11);
    goto LABEL_11;
  }

  v21 = v40;
  v22 = *(v40 + 24);
  if (!v22)
  {
    v35 = sub_1E41A3110();
    (*(v13 + 16))(v20, v35, v11);
    v36 = sub_1E41FFC94();
    v37 = sub_1E4206814();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_125_0();
      *v38 = 0;
      _os_log_impl(&dword_1E323F000, v36, v37, "LibImageLoader::The LibImageViewModel object should have a valid identifier", v38, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v13 + 8))(v20, v11);
LABEL_11:
    *v10 = 0u;
    *(v10 + 16) = 0u;
    goto LABEL_12;
  }

  v23 = *(v40 + 16);
  Operation = type metadata accessor for LibImageLoadOperation();
  v25 = objc_allocWithZone(Operation);

  *&v25[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_libImageViewModel] = v21;
  v26 = &v25[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_requestParam];
  *v26 = v23;
  *(v26 + 1) = v22;
  *(v26 + 2) = v2;
  *(v26 + 3) = v1;
  v27 = &v25[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_completionHandler];
  *v27 = v6;
  *(v27 + 1) = v4;
  v41[0].receiver = v25;
  v41[0].super_class = Operation;
  v28 = [(objc_super *)v41 init];
  [*(v0 + OBJC_IVAR____TtC8VideosUI14LibImageLoader_imageLoadOperationQueue) addOperation_];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DF690]) initWithOperation_];
  *(v10 + 24) = sub_1E3280A90(0, &qword_1EE23B010);

  *v10 = v29;
LABEL_12:
  OUTLINED_FUNCTION_54_0();
}

void sub_1E39FBCD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - v14;
  if (a3)
  {
    a3 = sub_1E4205ED4();
  }

  sub_1E329E324(a4, v15);
  v16 = sub_1E41FE5D4();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    v17 = sub_1E41FE514();
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  if (a6)
  {
    v18 = sub_1E41FE264();
  }

  else
  {
    v18 = 0;
  }

  (*(a7 + 16))(a7, a1, a3, v17, a5, v18);
}

void sub_1E39FBE60()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *&v0[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_libImageViewModel];
  if (*v16 == _TtC8VideosUI19LibMPImageViewModel)
  {
    v17 = *(v16 + 328);

    v17;
    sub_1E39FC34C();

    OUTLINED_FUNCTION_54_0();

    return;
  }

  if (*v16 == _TtC8VideosUI25LibSidebandImageViewModel)
  {
    v20 = *(v16 + 328);
    v22 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_requestParam];
    v21 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_requestParam + 8];
    v23 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_requestParam + 16];
    v24 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_requestParam + 24];
    v26 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_completionHandler];
    v25 = *&v1[OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_completionHandler + 8];

    v27 = v20;
    v28 = [v27 managedObjectContext];
    if (v28)
    {
      v29 = v28;
      OUTLINED_FUNCTION_4_0();
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = v22;
      v31[4] = v21;
      v31[5] = v23;
      v31[6] = v24;
      v31[7] = v27;
      v31[8] = v26;
      v31[9] = v25;
      v44 = sub_1E39FFB64;
      v45 = v31;
      OUTLINED_FUNCTION_10_67();
      v41 = 1107296256;
      OUTLINED_FUNCTION_0_48();
      v42 = v32;
      v43 = &block_descriptor_39_1;
      v33 = _Block_copy(&v40);

      v34 = v27;

      [v29 performBlock_];
      _Block_release(v33);
    }

    goto LABEL_14;
  }

  type metadata accessor for LibraryFamilyMembersImageViewModel();
  if (!swift_dynamicCastClass())
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v39 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = sub_1E39FF9F8;
    v45 = v36;
    OUTLINED_FUNCTION_10_67();
    v41 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v42 = v37;
    v43 = &block_descriptor_40;
    v38 = _Block_copy(&v40);

    sub_1E4203FE4();
    v40 = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v15, v8, v38);
    _Block_release(v38);

    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v9);
    [v1 finishExecutionIfPossible];
LABEL_14:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  sub_1E39FCA00();

  OUTLINED_FUNCTION_54_0();
}

void sub_1E39FC34C()
{
  OUTLINED_FUNCTION_93();
  v81 = v0;
  v82 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v86 = v8;
  v10 = v9;
  v11 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v75 = v15;
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v71 - v17;
  OUTLINED_FUNCTION_138();
  v18 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  v77 = v22 - v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1E324FBDC();
  v25 = OUTLINED_FUNCTION_101();
  v73 = v26;
  v74 = v27;
  v72 = v28;
  (v28)(v25);

  v29 = sub_1E41FFC94();
  v30 = sub_1E4206814();

  v31 = os_log_type_enabled(v29, v30);
  v83 = v13;
  v84 = v11;
  v78 = v20;
  v79 = v18;
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_6_21();
    v33 = v10;
    v34 = OUTLINED_FUNCTION_100();
    v87[0] = v34;
    *v32 = 136315138;
    *(v32 + 4) = sub_1E3270FC8(v86, v7, v87);
    OUTLINED_FUNCTION_54_1(&dword_1E323F000, v35, v36, "LibImageLoader:: Load ArtworkCatalog image: %s");
    __swift_destroy_boxed_opaque_existential_1(v34);
    v10 = v33;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v37 = *(v20 + 8);
  v38 = OUTLINED_FUNCTION_16_0();
  (v37)(v38);
  v80 = v10;
  v39 = VUISignpostLogObject();
  v40 = v85;
  sub_1E41FFBC4();

  v41 = [v10 hasImageOnDisk];
  sub_1E4206BA4();
  v42 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v43 = OUTLINED_FUNCTION_26_11();
  v71 = xmmword_1E4297BE0;
  *(v43 + 16) = xmmword_1E4297BE0;
  v44 = MEMORY[0x1E69E6158];
  *(v43 + 56) = MEMORY[0x1E69E6158];
  v45 = sub_1E3283528();
  *(v43 + 64) = v45;
  *(v43 + 32) = v86;
  *(v43 + 40) = v7;

  if (v41)
  {
    v76 = v37;
    OUTLINED_FUNCTION_2_91();
    OUTLINED_FUNCTION_21_47();
    sub_1E41FFB94();

    v46 = [v80 bestImageFromDisk];
    sub_1E4206B94();
    v47 = VUISignpostLogObject();
    v48 = OUTLINED_FUNCTION_24_34();
    *(v48 + 16) = v71;
    *(v48 + 56) = v44;
    *(v48 + 64) = v45;
    v49 = v86;
    *(v48 + 32) = v86;
    *(v48 + 40) = v7;
    OUTLINED_FUNCTION_2_91();
    OUTLINED_FUNCTION_21_47();
    sub_1E41FFB94();

    v50 = v77;
    v51 = v79;
    v72(v77, v73, v79);

    v52 = sub_1E41FFC94();
    v53 = sub_1E4206814();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_6_21();
      v55 = OUTLINED_FUNCTION_100();
      v87[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_1E3270FC8(v49, v7, v87);
      _os_log_impl(&dword_1E323F000, v52, v53, "LibImageLoader:: ArtworkCatalog returns best image from disk for request: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (v76)(v50, v51);
    v57 = v83;
    v56 = v84;
    sub_1E39FD2A8(v5, v46, v49, v7, v81, v82);
  }

  else
  {
    OUTLINED_FUNCTION_2_91();
    sub_1E41FFB94();

    OUTLINED_FUNCTION_4_0();
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v57 = v83;
    v56 = v84;
    v59 = v40;
    v60 = v76;
    (*(v83 + 16))(v76, v59, v84);
    v61 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v62 = (v75 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v62 + 23) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 16) = v58;
    (*(v57 + 32))(v64 + v61, v60, v56);
    v65 = (v64 + v62);
    v66 = v86;
    *v65 = v86;
    v65[1] = v7;
    v67 = (v64 + v63);
    *v67 = v66;
    v67[1] = v7;
    *(v67 + 2) = v5;
    v67[3] = v3;
    v68 = (v64 + ((v63 + 39) & 0xFFFFFFFFFFFFFFF8));
    v69 = v82;
    *v68 = v81;
    v68[1] = v69;
    v87[4] = sub_1E39FFA00;
    v87[5] = v64;
    OUTLINED_FUNCTION_25_7();
    v87[1] = 1107296256;
    v87[2] = sub_1E39FE2F0;
    v87[3] = &block_descriptor_11;
    v70 = _Block_copy(v87);

    [v80 requestImageWithCompletion_];
    _Block_release(v70);
    v40 = v85;
  }

  (*(v57 + 8))(v40, v56);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E39FCA00()
{
  OUTLINED_FUNCTION_93();
  v59 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_5_16();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E41A3110();
  v18 = OUTLINED_FUNCTION_101();
  v19(v18);

  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v58 = v13;
    v22 = v9;
    v23 = OUTLINED_FUNCTION_49_0();
    v60 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_1E3270FC8(v58, v11, &v60);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1E3270FC8(v22, v7, &v60);
    _os_log_impl(&dword_1E323F000, v20, v21, "LibImageLoader:: Load profile image for %s, %s", v23, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    v9 = v22;
    v13 = v58;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v16 + 8))(v0, v14);
  OUTLINED_FUNCTION_4_0();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = v25;
  *(v25 + 2) = v24;
  *(v25 + 3) = v13;
  *(v25 + 4) = v11;
  *(v25 + 5) = v9;
  *(v25 + 6) = v7;
  v25[7] = v2;
  *(v25 + 8) = v1;
  v27 = HIBYTE(v11) & 0xF;
  v28 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v29 = v13 & 0xFFFFFFFFFFFFLL;
  }

  *(v25 + 9) = v59;
  *(v25 + 10) = v5;
  if (!v29)
  {

    goto LABEL_72;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {

    v49 = sub_1E37801A4(v13, v11, 10);
    if (v50)
    {
      goto LABEL_72;
    }

    v32 = v49;
    goto LABEL_76;
  }

  if ((v11 & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v30 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v30 = sub_1E4207524();
    }

    v31 = *v30;
    if (v31 == 43)
    {
      if (v28 >= 1)
      {
        if (v28 != 1)
        {
          v32 = 0;
          if (v30)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v34 & v33)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_6_11();
              if (!v34)
              {
                goto LABEL_70;
              }

              v32 = (v41 + v40);
              if (__OFADD__(v41, v40))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_132();
              if (v34)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_70;
      }

      goto LABEL_83;
    }

    if (v31 != 45)
    {
      if (v28)
      {
        v32 = 0;
        if (v30)
        {
          while (1)
          {
            v44 = *v30 - 48;
            if (v44 > 9)
            {
              goto LABEL_70;
            }

            v45 = 10 * v32;
            if ((v32 * 10) >> 64 != (10 * v32) >> 63)
            {
              goto LABEL_70;
            }

            v32 = (v45 + v44);
            if (__OFADD__(v45, v44))
            {
              goto LABEL_70;
            }

            ++v30;
            if (!--v28)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_70:
      v32 = 0;
      v37 = 1;
LABEL_71:
      v66 = v37;
      v48 = v37;

      if (v48)
      {
LABEL_72:
        OUTLINED_FUNCTION_22_38();

LABEL_79:
        OUTLINED_FUNCTION_54_0();
        return;
      }

LABEL_76:
      v51 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
      v52 = [objc_allocWithZone(MEMORY[0x1E699C078]) initWithFamilyMemberDSID:v51 size:1 localFallback:0];
      if (v52)
      {
        v53 = v52;

        [v53 setUseMonogramAsLastResort_];
        [v53 setMonogramDiameter_];
        OUTLINED_FUNCTION_4_0();
        v54 = v9;
        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        *(v56 + 2) = v55;
        *(v56 + 3) = sub_1E39FFE44;
        *(v56 + 4) = v26;
        *(v56 + 5) = v13;
        *(v56 + 6) = v11;
        *(v56 + 7) = v54;
        *(v56 + 8) = v7;
        v56[9] = v2;
        *(v56 + 10) = v1;
        *(v56 + 11) = v59;
        *(v56 + 12) = v5;
        v64 = sub_1E39FFE58;
        v65 = v56;
        OUTLINED_FUNCTION_25_7();
        v61 = 1107296256;
        v62 = sub_1E39FF540;
        v63 = &block_descriptor_63_0;
        v57 = _Block_copy(&v60);

        [v53 startRequestWithCompletionHandler_];
        _Block_release(v57);
      }

      else
      {
        OUTLINED_FUNCTION_22_38();
      }

      goto LABEL_79;
    }

    if (v28 >= 1)
    {
      if (v28 != 1)
      {
        v32 = 0;
        if (v30)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v34 & v33)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_6_11();
            if (!v34)
            {
              goto LABEL_70;
            }

            v32 = (v36 - v35);
            if (__OFSUB__(v36, v35))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_132();
            if (v34)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v37 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v60 = v13;
  v61 = v11 & 0xFFFFFFFFFFFFFFLL;
  if (v13 != 43)
  {
    if (v13 != 45)
    {
      if (v27)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v34 & v33)
          {
            break;
          }

          OUTLINED_FUNCTION_6_11();
          if (!v34)
          {
            break;
          }

          v32 = (v47 + v46);
          if (__OFADD__(v47, v46))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v34)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v27)
    {
      if (v27 != 1)
      {
        OUTLINED_FUNCTION_42_30();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v34 & v33)
          {
            break;
          }

          OUTLINED_FUNCTION_6_11();
          if (!v34)
          {
            break;
          }

          v32 = (v39 - v38);
          if (__OFSUB__(v39, v38))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v34)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_82;
  }

  if (v27)
  {
    if (v27 != 1)
    {
      OUTLINED_FUNCTION_42_30();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v34 & v33)
        {
          break;
        }

        OUTLINED_FUNCTION_6_11();
        if (!v34)
        {
          break;
        }

        v32 = (v43 + v42);
        if (__OFADD__(v43, v42))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v34)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_84:
  __break(1u);
}

uint64_t sub_1E39FD070()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12 - v2;
  OUTLINED_FUNCTION_5_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC8VideosUIP33_8FF32F3B2D88FB8F7A4A46F15974792F21LibImageLoadOperation_completionHandler);

    sub_1E41FE5D4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    v11 = OUTLINED_FUNCTION_27_28();
    v6(v11);

    return sub_1E325F748(v3, &unk_1ECF28E20);
  }

  return result;
}

id sub_1E39FD210(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1E39FD2A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v137 = a6;
  v136 = a5;
  v145 = a3;
  OUTLINED_FUNCTION_144_0();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v142 = v12;
  v143 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v139 = v14 - v13;
  OUTLINED_FUNCTION_138();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v140 = v16;
  v141 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v138 = v18 - v17;
  OUTLINED_FUNCTION_138();
  v134 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v133 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = (v22 - v21);
  v24 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  *&v32 = MEMORY[0x1EEE9AC00](v31).n128_u64[0];
  v34 = &v126 - v33;
  v35 = 0.0;
  v36 = &selRef_setWaitingForTransactionToStart_;
  v132 = a4;
  v135 = v7;
  *&v146 = v37;
  if (!v7 || ([v7 size], sub_1E3AC6158(v38, v39), (v41 & 1) != 0) || (v35 = v40, v40 <= 1.7) || v40 >= 1.8)
  {
    sub_1E41A3110();
    v42 = OUTLINED_FUNCTION_101();
    v43(v42);

    v44 = v7;
    v45 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (os_log_type_enabled(v45, v46))
    {
      OUTLINED_FUNCTION_100();
      v47 = OUTLINED_FUNCTION_47_21();
      v131 = v23;
      v48 = v47;
      v49 = OUTLINED_FUNCTION_100();
      aBlock = v49;
      v50 = OUTLINED_FUNCTION_49_21(4.8152e-34);
      OUTLINED_FUNCTION_45_23(v50);
      *v48 = v7;
      *(v8 + 11) = 2048;
      v8[3] = v35;
      v51 = v44;
      _os_log_impl(&dword_1E323F000, v45, v46, "    LibImageLoader:: handleImageLoadingCompletionInBackground: %s,\n    loaded image %@ with wrong ratio %f", v8, 0x20u);
      sub_1E325F748(v48, &unk_1ECF28E30);
      v23 = v131;
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v49);
      v36 = &selRef_setWaitingForTransactionToStart_;
      OUTLINED_FUNCTION_6_0();
      v8 = v144;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v26 + 8))(v30, v146);
  }

  else
  {
    v110 = sub_1E41A3110();
    (*(v26 + 16))(v34, v110, v24);

    v111 = v7;
    v112 = sub_1E41FFC94();
    v46 = sub_1E4206814();

    if (os_log_type_enabled(v112, v46))
    {
      OUTLINED_FUNCTION_49_0();
      v113 = OUTLINED_FUNCTION_47_21();
      v114 = OUTLINED_FUNCTION_100();
      v131 = v23;
      v115 = v114;
      aBlock = v114;
      v116 = OUTLINED_FUNCTION_49_21(4.8151e-34);
      OUTLINED_FUNCTION_45_23(v116);
      *v113 = v7;
      v117 = v111;
      _os_log_impl(&dword_1E323F000, v112, v46, "    LibImageLoader:: handleImageLoadingCompletionInBackground: %s,\n    loaded image %@ with expected ratio", v8, 0x16u);
      sub_1E325F748(v113, &unk_1ECF28E30);
      v36 = &selRef_setWaitingForTransactionToStart_;
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v115);
      v23 = v131;
      OUTLINED_FUNCTION_6_0();
      v8 = v144;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v26 + 8))(v34, v146);
  }

  if ([v8 isCancelled])
  {
    return [v8 finishExecutionIfPossible];
  }

  v52 = v135;
  if (!v135)
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v118 = sub_1E4206A04();
    v119 = swift_allocObject();
    v120 = v137;
    *(v119 + 16) = v136;
    *(v119 + 24) = v120;
    OUTLINED_FUNCTION_4_95(v119);
    v148 = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v149 = v121;
    v150 = &block_descriptor_17_1;
    v122 = _Block_copy(&aBlock);

    v123 = v138;
    sub_1E4203FE4();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    OUTLINED_FUNCTION_16_59();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v123, v46, v122);
    _Block_release(v122);

    v124 = OUTLINED_FUNCTION_43_22();
    v125(v124);
    (*(v140 + 8))(v123, v141);
    return [v8 finishExecutionIfPossible];
  }

  v144 = v8;
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 current];
  [v55 displayScale];
  v57 = v56;

  v58 = v57 * a1;
  v59 = VUISignpostLogObject();
  sub_1E41FFBC4();
  v60 = v132;

  sub_1E4206BA4();
  v61 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v62 = OUTLINED_FUNCTION_26_11();
  v146 = xmmword_1E4297BE0;
  *(v62 + 16) = xmmword_1E4297BE0;
  *(v62 + 56) = MEMORY[0x1E69E6158];
  v63 = sub_1E3283528();
  *(v62 + 64) = v63;
  v64 = v145;
  *(v62 + 32) = v145;
  *(v62 + 40) = v60;

  OUTLINED_FUNCTION_2_91();
  OUTLINED_FUNCTION_39_21();

  [v54 v36[201]];
  [v54 v36[201]];
  VUICeilValue();
  v66 = v65;
  v67 = objc_opt_self();
  v68 = [v67 preferredFormat];
  v69 = [v54 CGImage];
  if (v69)
  {
    v70 = v69;
    v71 = [v67 formatWithCGImage_];

    if (v71)
    {

      v68 = v71;
    }
  }

  [v68 setScale_];
  v72 = swift_allocObject();
  *(v72 + 24) = 0;
  *(v72 + 32) = 0;
  *(v72 + 16) = v54;
  *(v72 + 40) = v58;
  *(v72 + 48) = v66;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1E39FFAD0;
  *(v73 + 24) = v72;
  v130 = v72;
  OUTLINED_FUNCTION_4_95(v73);
  v148 = 1107296256;
  v149 = sub_1E39FF6E8;
  v150 = &block_descriptor_26;
  v74 = _Block_copy(&aBlock);
  v135 = v54;

  v131 = v68;
  v75 = [v67 imageWithSize:v68 format:v74 actions:{v58, v66}];
  _Block_release(v74);
  sub_1E4206B94();
  v76 = VUISignpostLogObject();
  v77 = OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_37_25(v77);
  v78 = MEMORY[0x1E69E6158];
  *(v79 + 56) = MEMORY[0x1E69E6158];
  *(v79 + 64) = v63;
  OUTLINED_FUNCTION_52_18(v79);
  OUTLINED_FUNCTION_2_91();
  OUTLINED_FUNCTION_39_21();

  v80 = v75;
  if (!v75)
  {
    v80 = v135;
  }

  v129 = v75;
  sub_1E4206BA4();
  v81 = VUISignpostLogObject();
  v82 = OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_37_25(v82);
  *(v83 + 56) = v78;
  *(v83 + 64) = v63;
  OUTLINED_FUNCTION_52_18(v83);
  OUTLINED_FUNCTION_2_91();
  OUTLINED_FUNCTION_39_21();

  v84 = [v80 imageByPreparingForDisplay];
  v85 = v23;
  v86 = v63;
  if (!v84)
  {
    v84 = v80;
  }

  v87 = v84;
  v127 = v84;
  sub_1E4206B94();
  v88 = VUISignpostLogObject();
  v89 = OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_37_25(v89);
  *(v90 + 56) = MEMORY[0x1E69E6158];
  *(v90 + 64) = v86;
  OUTLINED_FUNCTION_52_18(v90);
  OUTLINED_FUNCTION_2_91();
  v128 = v80;
  sub_1E41FFB94();

  sub_1E4206BA4();
  v91 = VUISignpostLogObject();
  v92 = OUTLINED_FUNCTION_26_11();
  v93 = v85;
  OUTLINED_FUNCTION_37_25(v92);
  *(v94 + 56) = MEMORY[0x1E69E6158];
  *(v94 + 64) = v86;
  OUTLINED_FUNCTION_52_18(v94);
  OUTLINED_FUNCTION_2_91();
  OUTLINED_FUNCTION_36_27();
  sub_1E41FFB94();

  v95 = [v87 vuiCGImage];
  v96 = [objc_allocWithZone(MEMORY[0x1E69DF710]) initWithCGImageRef:v95 preserveAlpha:0];

  sub_1E4206B94();
  v97 = VUISignpostLogObject();
  v98 = OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_37_25(v98);
  v99[7] = MEMORY[0x1E69E6158];
  v99[8] = v86;
  v99[4] = v64;
  v99[5] = v60;
  OUTLINED_FUNCTION_2_91();
  OUTLINED_FUNCTION_36_27();
  sub_1E41FFB94();

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v100 = sub_1E4206A04();
  v101 = swift_allocObject();
  v102 = v137;
  v101[2] = v136;
  v101[3] = v102;
  v101[4] = v96;
  OUTLINED_FUNCTION_4_95(v101);
  v148 = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v149 = v103;
  v150 = &block_descriptor_32_1;
  v104 = _Block_copy(&aBlock);

  v105 = v96;

  v106 = v138;
  sub_1E4203FE4();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  OUTLINED_FUNCTION_16_59();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v106, "LibImageLoader.createVUIImage", v104);
  _Block_release(v104);

  v107 = OUTLINED_FUNCTION_43_22();
  v108(v107);
  (*(v140 + 8))(v106, v141);
  [v144 finishExecutionIfPossible];

  (*(v133 + 8))(v93, v134);
}

void sub_1E39FE044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v54 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v52 = v36;
    v53 = v25;
    sub_1E4206B94();
    v43 = VUISignpostLogObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v44 = OUTLINED_FUNCTION_26_11();
    *(v44 + 16) = xmmword_1E4297BE0;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    *(v44 + 64) = sub_1E3283528();
    *(v44 + 32) = v34;
    *(v44 + 40) = v32;

    OUTLINED_FUNCTION_2_91();
    sub_1E41FFB94();

    sub_1E324FBDC();
    v45 = OUTLINED_FUNCTION_101();
    v46(v45);

    v47 = sub_1E41FFC94();
    v48 = sub_1E4206814();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_6_21();
      v50 = OUTLINED_FUNCTION_100();
      v55[0] = v50;
      *v49 = 136315138;
      v51 = v54;
      *(v49 + 4) = sub_1E3270FC8(v54, v29, v55);
      _os_log_impl(&dword_1E323F000, v47, v48, "LibImageLoader:: Load ArtworkCatalog image finished: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v39 + 8))(v23, v37);
    }

    else
    {

      (*(v39 + 8))(v23, v37);
      v51 = v54;
    }

    sub_1E39FD2A8(v27, v52, v51, v29, v53, a23);
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E39FE2F0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1E39FE37C()
{
  OUTLINED_FUNCTION_93();
  v70 = v2;
  v67 = v3;
  v61 = v4;
  OUTLINED_FUNCTION_5_16();
  v6 = v5;
  v65 = v7;
  OUTLINED_FUNCTION_144_0();
  v8 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v72 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v71 = v19 - v18;
  OUTLINED_FUNCTION_138();
  v64 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v63 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v68 = v26;
  v69 = v25;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v74 = v28 - v27;
  OUTLINED_FUNCTION_138();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v73 = Strong;
    v59 = v10;
    sub_1E324FBDC();
    v31 = OUTLINED_FUNCTION_101();
    v32(v31);

    v33 = sub_1E41FFC94();
    v34 = sub_1E4206814();

    v60 = v8;
    v58 = v15;
    v57 = v14;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = OUTLINED_FUNCTION_100();
      v75[0] = v36;
      *v35 = 136315394;
      v37 = v65;
      *(v35 + 4) = sub_1E3270FC8(v65, v6, v75);
      *(v35 + 12) = 1024;
      *(v35 + 14) = [objc_opt_self() isMainThread];
      _os_log_impl(&dword_1E323F000, v33, v34, "LibImageLoader:: Load InfoManagedObject image: %s, isMain: %{BOOL}d", v35, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v38 = OUTLINED_FUNCTION_16_0();
      v39(v38);
    }

    else
    {

      v40 = OUTLINED_FUNCTION_16_0();
      v41(v40);
      v37 = v65;
    }

    v42 = VUISignpostLogObject();
    sub_1E41FFBC4();

    sub_1E4206BA4();
    v43 = VUISignpostLogObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v44 = OUTLINED_FUNCTION_26_11();
    *(v44 + 16) = xmmword_1E4297BE0;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    v45 = sub_1E3283528();
    *(v44 + 64) = v45;
    *(v44 + 32) = v37;
    *(v44 + 40) = v6;

    OUTLINED_FUNCTION_2_91();
    sub_1E41FFB94();

    v46 = [v61 imageData];
    v47 = v46;
    if (v46)
    {
      v66 = sub_1E39FFD54(v46);
      v49 = v48;
    }

    else
    {
      v66 = 0;
      v49 = 0xF000000000000000;
    }

    sub_1E4206B94();
    v50 = VUISignpostLogObject();
    v51 = OUTLINED_FUNCTION_24_34();
    *(v51 + 16) = xmmword_1E4297BE0;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    *(v51 + 64) = v45;
    *(v51 + 32) = v37;
    *(v51 + 40) = v6;
    OUTLINED_FUNCTION_2_91();
    sub_1E41FFB94();

    sub_1E3280A90(0, &qword_1EE23B1D0);
    (*(v63 + 104))(v24, *MEMORY[0x1E69E7FA0], v64);
    v62 = sub_1E4206A54();
    (*(v63 + 8))(v24, v64);
    OUTLINED_FUNCTION_4_0();
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53 = swift_allocObject();
    v53[2] = v52;
    v53[3] = v66;
    v53[4] = v49;
    v53[5] = v37;
    v53[6] = v6;
    v53[7] = v1;
    v53[8] = v0;
    v53[9] = v67;
    v53[10] = v70;
    v53[11] = v47;
    v75[4] = sub_1E39FFB7C;
    v75[5] = v53;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v75[2] = v54;
    v75[3] = &block_descriptor_46_0;
    v55 = _Block_copy(v75);

    v56 = v47;

    sub_1E39C8E64(v66, v49);

    sub_1E4203FE4();
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v71, v57, v55);
    _Block_release(v55);

    sub_1E38DCE1C(v66, v49);
    (*(v59 + 8))(v57, v60);
    (*(v72 + 8))(v71, v58);
    (*(v68 + 8))(v74, v69);
  }

  OUTLINED_FUNCTION_54_0();
}

id sub_1E39FEB38(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1E41FE454();
  v6 = [v4 initWithData_];

  sub_1E38DCCB0(a1, a2);
  return v6;
}

void sub_1E39FEBB0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v43 = v16 - v15;
  OUTLINED_FUNCTION_138();
  v17 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v42 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_4();
  v20 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    v36 = v17;
    v37 = v13;
    sub_1E41A3110();
    v25 = OUTLINED_FUNCTION_101();
    v26(v25);

    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();

    if (os_log_type_enabled(v27, v28))
    {
      v34 = v11;
      v29 = OUTLINED_FUNCTION_49_0();
      aBlock[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_1E3270FC8(a2, a3, aBlock);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1E3270FC8(a4, a5, aBlock);
      _os_log_impl(&dword_1E323F000, v27, v28, "LibImageLoader:: Load profile image finished with no result for %s, %s", v29, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      v11 = v34;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v22 + 8))(v7, v20);
    sub_1E3280A90(0, &qword_1EE23B1D0);
    v30 = sub_1E4206A04();
    v31 = swift_allocObject();
    *(v31 + 16) = a6;
    *(v31 + 24) = a7;
    OUTLINED_FUNCTION_8_64(v31);
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    aBlock[2] = v32;
    aBlock[3] = &block_descriptor_75;
    v33 = _Block_copy(aBlock);

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E378AD28();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v8, v43, v33);
    _Block_release(v33);

    (*(v37 + 8))(v43, v11);
    (*(v42 + 8))(v8, v36);
    [v35 finishExecutionIfPossible];
  }
}

uint64_t sub_1E39FEFD0(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_28_4();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_27_28();
  a1(v9);
  return sub_1E325F748(v1, &unk_1ECF28E20);
}

void sub_1E39FF08C(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_144_0();
  v16 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v51 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v49 = v20 - v19;
  OUTLINED_FUNCTION_138();
  v50 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v48 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v47 = v24 - v23;
  OUTLINED_FUNCTION_138();
  v25 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    if (a2 >> 60 == 15)
    {
      a4();
    }

    else
    {
      v43 = v16;
      sub_1E38DCD14(v12, a2);
      sub_1E41A3110();
      v31 = OUTLINED_FUNCTION_101();
      v32(v31);

      v33 = sub_1E41FFC94();
      v34 = sub_1E4206814();

      v44 = v12;
      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_49_0();
        aBlock[0] = swift_slowAlloc();
        *v35 = 136315394;
        *(v35 + 4) = sub_1E3270FC8(a6, a7, aBlock);
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_1E3270FC8(a8, a9, aBlock);
        _os_log_impl(&dword_1E323F000, v33, v34, "LibImageLoader:: Load profile image finished for %s, %s", v35, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        v12 = v44;
        OUTLINED_FUNCTION_6_0();
      }

      (*(v27 + 8))(v11, v25);
      v36 = objc_allocWithZone(MEMORY[0x1E69DF710]);
      sub_1E38DCD14(v12, a2);
      v37 = sub_1E39FF8D8(v12, a2);
      sub_1E3280A90(0, &qword_1EE23B1D0);
      v38 = sub_1E4206A04();
      v39 = swift_allocObject();
      v39[2] = a10;
      v39[3] = a11;
      v39[4] = v37;
      OUTLINED_FUNCTION_8_64(v39);
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_14_1();
      aBlock[2] = v40;
      aBlock[3] = &block_descriptor_69;
      v41 = _Block_copy(aBlock);
      v42 = v37;

      sub_1E4203FE4();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E37E7A8C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
      sub_1E378AD28();
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v47, v49, v41);
      _Block_release(v41);

      (*(v51 + 8))(v49, v43);
      (*(v48 + 8))(v47, v50);
      [v30 finishExecutionIfPossible];

      sub_1E38DCE1C(v44, a2);
    }
  }
}

uint64_t sub_1E39FF540(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1E41FE464();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a4;
  v7(v6, v10, a3, a4);

  sub_1E38DCE1C(v6, v10);
}

uint64_t sub_1E39FF5FC(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_28_4();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_1E39FFB10();
  v9 = swift_allocError();
  *v10 = 5;
  v11 = OUTLINED_FUNCTION_27_28();
  a1(v11);

  return sub_1E325F748(v1, &unk_1ECF28E20);
}

void sub_1E39FF6E8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1E39FF734(void (*a1)(uint64_t, void, void, char *, void, void), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  a1(a3, 0, 0, v8, 0, 0);
  return sub_1E325F748(v8, &unk_1ECF28E20);
}

uint64_t sub_1E39FF804()
{
  OUTLINED_FUNCTION_5_16();
  sub_1E42074B4();

  strcpy(v3, "identifier: ");
  v0 = OUTLINED_FUNCTION_13_8();
  MEMORY[0x1E69109E0](v0);
  MEMORY[0x1E69109E0](0x203A657A6973202CLL, 0xE800000000000000);
  v1 = sub_1E4206E54();
  MEMORY[0x1E69109E0](v1);

  return v3[0];
}

id sub_1E39FF8D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1E41FE454();
    sub_1E38DCE1C(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t sub_1E39FF9A8(uint64_t result, int a2, int a3)
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

unint64_t sub_1E39FFB10()
{
  result = qword_1EE287ED8[0];
  if (!qword_1EE287ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE287ED8);
  }

  return result;
}

void sub_1E39FFB7C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 88);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v1 >> 60 == 15)
    {
      OUTLINED_FUNCTION_29_35(0);
LABEL_10:

      return;
    }

    sub_1E3280A90(0, &qword_1EE23AE00);
    v5 = OUTLINED_FUNCTION_74();
    sub_1E38DCD14(v5, v6);
    v7 = OUTLINED_FUNCTION_74();
    sub_1E38DCD14(v7, v8);
    v9 = OUTLINED_FUNCTION_74();
    v11 = sub_1E39FEB38(v9, v10);
    OUTLINED_FUNCTION_29_35(v11);
    if (v2)
    {
      v12 = v2;
      v13 = [v12 managedObjectContext];
      if (v13)
      {
        v14 = v13;
        OUTLINED_FUNCTION_4_0();
        v15 = swift_allocObject();
        *(v15 + 16) = v12;
        aBlock[4] = sub_1E39FFDC4;
        aBlock[5] = v15;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        OUTLINED_FUNCTION_0_48();
        aBlock[2] = v16;
        aBlock[3] = &block_descriptor_52_0;
        v17 = _Block_copy(aBlock);
        v18 = v12;

        [v14 performBlock_];
        v19 = OUTLINED_FUNCTION_74();
        sub_1E38DCE1C(v19, v20);

        _Block_release(v17);
        v4 = v14;
        goto LABEL_10;
      }

      v23 = OUTLINED_FUNCTION_74();
      sub_1E38DCE1C(v23, v24);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_74();
      sub_1E38DCE1C(v21, v22);
    }

    v4 = v11;
    goto LABEL_10;
  }
}

uint64_t sub_1E39FFD54(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E41FE464();

  return v3;
}

void sub_1E39FFDC4()
{
  v1 = *(v0 + 16);
  v2 = [v1 managedObjectContext];
  if (v2)
  {
    v3 = v2;
    [v2 refreshObject:v1 mergeChanges:0];
  }
}

uint64_t objectdestroy_28Tm()
{

  return swift_deallocObject();
}

void sub_1E39FFF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - v14;
  v16 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x218))(v13);
  sub_1E42000B4();

  v18 = v48;
  v17 = v49;
  if (v49)
  {
    v47 = v49;
    v19 = v50;
    v20 = *(v50 + 16);
    v21 = *(v50 + 24);

    if (v21)
    {
      v46 = v19;

      v22 = sub_1E324FBDC();
      (*(v8 + 16))(v15, v22, v6);

      v23 = sub_1E41FFC94();
      v24 = sub_1E42067E4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v44 = a3;
        v26 = v25;
        v27 = swift_slowAlloc();
        v45 = v18;
        v28 = v27;
        v48 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1E3270FC8(v20, v21, &v48);
        _os_log_impl(&dword_1E323F000, v23, v24, "StackViewController:: dragging item with identifier %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v18 = v45;
        OUTLINED_FUNCTION_6_0();
        a3 = v44;
        OUTLINED_FUNCTION_6_0();
      }

      (*(v8 + 8))(v15, v6);
      v29 = sub_1E4205ED4();

      v30 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

      v31 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
      (*((*MEMORY[0x1E69E7D40] & *v4) + 0x488))(&v48, a3);
      v32 = v51;
      if (v51)
      {
        v33 = __swift_project_boxed_opaque_existential_1(&v48, v51);
        v34 = *(v32 - 8);
        MEMORY[0x1EEE9AC00](v33);
        OUTLINED_FUNCTION_5();
        v37 = v36 - v35;
        (*(v34 + 16))(v36 - v35);
        v38 = sub_1E4207994();
        (*(v34 + 8))(v37, v32);
        __swift_destroy_boxed_opaque_existential_1(&v48);
      }

      else
      {
        v38 = 0;
      }

      v17 = v47;
      [v31 setLocalObject_];
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1E4298880;
      *(v43 + 32) = v31;

      goto LABEL_13;
    }

    v17 = v47;
  }

  v39 = sub_1E324FBDC();
  (*(v8 + 16))(v11, v39, v6);
  v40 = sub_1E41FFC94();
  v41 = sub_1E42067F4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1E323F000, v40, v41, "StackViewController:: missing view model for drag and drop", v42, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v11, v6);
LABEL_13:
  sub_1E3790548(v18, v17);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A005B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_6_76();
  v2 = (*((*MEMORY[0x1E69E7D40] & v1) + 0x218))();
  sub_1E4200104();

  v3 = sub_1E4200044();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v4 = *(v3 + 48);

  if (!v4)
  {
LABEL_7:
    v9 = OUTLINED_FUNCTION_13_8();
    v10(v9);
    v12 = 0u;
    v13 = 0u;
    goto LABEL_8;
  }

  v11 = 7;
  v5 = *(*v4 + 776);

  v5(&v12, &v11, &unk_1F5D5D888, &off_1F5D5C918);

  v6 = OUTLINED_FUNCTION_13_8();
  v7(v6);
  if (!*(&v13 + 1))
  {
LABEL_8:
    sub_1E325F748(&v12, &unk_1ECF296E0);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v11;
  }

  return result;
}

void sub_1E3A00824(uint64_t a1, uint64_t a2)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {

    sub_1E3A00870(a2);
  }
}

void sub_1E3A00870(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6_76();
  v16 = MEMORY[0x1E69E7D40];
  v18 = (*((*MEMORY[0x1E69E7D40] & v17) + 0x218))();
  sub_1E42000B4();

  if (v43[1])
  {

    v20 = (*((*v16 & *v3) + 0x1B8))(v19);
    v21 = (*((*v16 & *v3) + 0x490))(v20, a1, v43[2]);

    if (v21)
    {
      sub_1E3280A90(0, &qword_1EE23B120);
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309C8);
      if (swift_dynamicCast())
      {
        if (*(&v41 + 1))
        {
          sub_1E3251BE8(&v40, v43);
          v23 = [objc_allocWithZone(MEMORY[0x1E69DC9A0]) init];
          v24 = v44;
          v25 = v45;
          __swift_project_boxed_opaque_existential_1(v43, v44);
          v26 = *(v25 + 8);
          v27 = v23;
          v28 = v26(v24, v25);
          [v27 setVisiblePath_];

          __swift_destroy_boxed_opaque_existential_1(v43);
          goto LABEL_14;
        }
      }

      else
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
      }
    }

    else
    {

      v42 = 0;
      v40 = 0u;
      v41 = 0u;
    }

    sub_1E325F748(&v40, &qword_1ECF309B8);
    goto LABEL_14;
  }

  v29 = sub_1E324FBDC();
  (*(v14 + 16))(v2, v29, v12);
  (*(v7 + 16))(v11, a1, v5);
  v30 = sub_1E41FFC94();
  v31 = sub_1E42067F4();
  if (os_log_type_enabled(v30, v31))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43[0] = v39;
    *v38 = 136315138;
    sub_1E3A01C9C();
    v32 = sub_1E4207944();
    v34 = v33;
    (*(v7 + 8))(v11, v5);
    v35 = sub_1E3270FC8(v32, v34, v43);

    *(v38 + 4) = v35;
    _os_log_impl(&dword_1E323F000, v30, v31, "StackViewController:: failed to make drag preview for invalid index path %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    (*(v7 + 8))(v11, v5);
  }

  v36 = OUTLINED_FUNCTION_13_8();
  v37(v36);
LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3A00D64(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8_65();
  v13 = a3;
  v14 = a1;
  v15 = a5();

  (*(v11 + 8))(v5, v9);

  return v15;
}

void sub_1E3A00E60(void *a1, void *a2)
{
  v89 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v90 = v77 - v7;
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v77 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v92 = v77 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v77 - v20;
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v25 = v77 - v24;
  v93 = a2;
  v26 = [a2 items];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF308D8);
  v27 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v27))
  {
    OUTLINED_FUNCTION_25_2();

    return;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x1E6911E60](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v28 = *(v27 + 32);
    swift_unknownObjectRetain();
  }

  v29 = [v28 sourceIndexPath];
  if (!v29)
  {
    OUTLINED_FUNCTION_25_2();

    swift_unknownObjectRelease();
    return;
  }

  v30 = v29;
  v84 = v5;
  v31 = v3;
  sub_1E41FE804();

  v32 = *(v10 + 32);
  v32(v25, v21, v8);
  v33 = [v93 destinationIndexPath];
  if (!v33)
  {
    (*(v10 + 8))(v25, v8);
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  v34 = v33;
  v83 = v28;
  v85 = v10;
  sub_1E41FE804();

  v35 = v92;
  v26 = v8;
  v36 = (v32)(v92, v16, v8);
  v3 = v91;
  v37 = MEMORY[0x1E69E7D40];
  v38 = *MEMORY[0x1E69E7D40] & *v91;
  v86 = *(v38 + 0x218);
  v87 = v38 + 536;
  v39 = (v86)(v36);
  sub_1E41FE854();
  sub_1E42000C4();

  v40 = v95;
  v80 = v31;
  if (!v95)
  {
LABEL_23:
    v88 = 0;
    v82 = 0;
    v27 = v85;
    goto LABEL_27;
  }

  type metadata accessor for CollectionViewModel();
  v41 = swift_dynamicCastClass();
  if (!v41)
  {

    goto LABEL_23;
  }

  v42 = v41;
  v43 = *(*v41 + 1040);

  v16 = v43(v44);

  v82 = v42;
  if (!v16)
  {
    v88 = 0;
    v27 = v85;
    v35 = v92;
LABEL_26:
    v37 = MEMORY[0x1E69E7D40];
    goto LABEL_27;
  }

  v45 = sub_1E32AE9B0(v16);
  v27 = v85;
  if (!v45)
  {

    v88 = 0;
    v35 = v92;
    goto LABEL_26;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
LABEL_47:
    v88 = MEMORY[0x1E6911E60](0, v16);
    goto LABEL_14;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v88 = *(v16 + 32);

LABEL_14:
    v35 = v92;
    v37 = MEMORY[0x1E69E7D40];

LABEL_27:
    v48 = (v86)(v40);
    sub_1E42000B4();

    if (v95)
    {
      v81 = v96;

      if (v88)
      {

        v49 = sub_1E41FE844();
        v50 = sub_1E41FE844();
        (*(*v88 + 1040))(v49, v50);
      }

      v51 = (*((*v37 & *v3) + 0x490))(v89, v25, v81);
      (*(v27 + 16))(v13, v35, v26);
      v79 = v26;
      v89 = v51;
      if (!v51 || (sub_1E3A01C2C(v51), !v52))
      {
      }

      v53 = objc_allocWithZone(MEMORY[0x1E69DC830]);
      v54 = sub_1E3A01B70(v13);
      v98 = sub_1E3A01878;
      v99 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v95 = 1107296256;
      v96 = sub_1E3A01924;
      v97 = &block_descriptor_41;
      v55 = _Block_copy(&aBlock);
      [v54 setPreviewParametersProvider_];
      _Block_release(v55);
      v56 = v86;
      v57 = v86();
      v58 = v90;
      sub_1E4200104();

      v59 = v56();
      sub_1E42000B4();

      if (v95)
      {
        v78 = v54;
        v60 = aBlock;
        v61 = v96;
        v62 = v56();
        sub_1E42000B4();

        v63 = v95;
        if (v95)
        {
          v64 = v96;
          v65 = sub_1E41FE844();
          v66 = sub_1E41FE844();
          v77[1] = v64;
          if (v65 >= v66)
          {
            OUTLINED_FUNCTION_2_92();
            sub_1E4200064();
          }

          else
          {
            OUTLINED_FUNCTION_2_92();
            sub_1E4200054();
          }

          v71 = [v83 dragItem];
          v72 = sub_1E41FE7E4();
          v73 = [v93 dropItem:v71 toItemAtIndexPath:v72];
          swift_unknownObjectRelease();

          v74 = v86();
          sub_1E42000D4();

          swift_unknownObjectRelease();

          (*(v84 + 8))(v61, v60);
        }

        else
        {

          swift_unknownObjectRelease();

          (*(v84 + 8))(v90, v80);
        }

        v75 = *(v85 + 8);
        v76 = OUTLINED_FUNCTION_7_94();
        v75(v76);
        (v75)(v25, v63);
        goto LABEL_44;
      }

      swift_unknownObjectRelease();

      (*(v84 + 8))(v58, v80);
      v67 = *(v27 + 8);
      v70 = OUTLINED_FUNCTION_7_94();
      v67(v70);
      v68 = v25;
      v69 = v54;
    }

    else
    {

      swift_unknownObjectRelease();

      v67 = *(v27 + 8);
      (v67)(v35, v26);
      v68 = v25;
      v69 = v26;
    }

    (v67)(v68, v69);
LABEL_44:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

id sub_1E3A01878(void *a1)
{
  type metadata accessor for CardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E69DC9A0]);
  v3 = a1;
  v4 = [v2 init];
  v5 = sub_1E3EF43A4();
  [v4 setVisiblePath_];

  return v4;
}

id sub_1E3A01924(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1E3A01A08()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC838]);

  return [v0 initWithDropOperation:3 intent:1];
}

id sub_1E3A01B70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FE7E4();
  v5 = sub_1E4205ED4();

  v6 = [v2 initWithInsertionIndexPath:v4 reuseIdentifier:v5];

  v7 = sub_1E41FE874();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

uint64_t sub_1E3A01C2C(void *a1)
{
  v2 = [a1 reuseIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

unint64_t sub_1E3A01C9C()
{
  result = qword_1ECF309B0;
  if (!qword_1ECF309B0)
  {
    sub_1E41FE874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF309B0);
  }

  return result;
}

uint64_t type metadata accessor for TabBarView()
{
  result = qword_1ECF52850;
  if (!qword_1ECF52850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3A01D50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3287754(0);
  v4 = type metadata accessor for TabBarView();
  v5 = (a2 + v4[6]);
  type metadata accessor for Router();
  OUTLINED_FUNCTION_0_110();
  sub_1E3A047C8(v6, v7);
  *v5 = sub_1E4201754();
  v5[1] = v8;
  v9 = (a2 + v4[5]);
  type metadata accessor for TabBarItemsInfo();
  OUTLINED_FUNCTION_1_117();
  sub_1E3A047C8(v10, v11);
  v12 = a1;
  OUTLINED_FUNCTION_90();
  *v9 = sub_1E42010C4();
  v9[1] = v13;

  OUTLINED_FUNCTION_2_4();
  result = swift_allocObject();
  *(result + 16) = 0x6956726142626154;
  *(result + 24) = 0xEA00000000007765;
  v15 = a2 + v4[7];
  *v15 = sub_1E3A01E80;
  *(v15 + 8) = result;
  *(v15 + 16) = 0;
  return result;
}

uint64_t sub_1E3A01E80()
{
  type metadata accessor for Route(0);

  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_32_0();
  return sub_1E3F4C85C();
}

void sub_1E3A01ED0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v148 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309D8);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v169 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v168 = &v146 - v10;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v170 = v12;
  v13 = type metadata accessor for TabBarView();
  OUTLINED_FUNCTION_0_10();
  v163 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v164 = v16;
  v165 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309E8);
  OUTLINED_FUNCTION_0_10();
  v151 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v20 = v19;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v146 - v22;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v150 = v25;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v155 = v27;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v160 = v29;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v157 = v31;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v161 = v33;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v162 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A28);
  v37 = OUTLINED_FUNCTION_17_2(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4_6();
  v166 = v38 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v173 = &v146 - v41;
  v174 = v0;
  v42 = *(v0 + *(v13 + 20) + 8);
  OUTLINED_FUNCTION_17_56();
  if (((*(v43 + 152))() & 1) != 0 || (OUTLINED_FUNCTION_17_56(), v45 = (*(v44 + 248))(), v46 = sub_1E32AE9B0(v45), , !v46))
  {
    sub_1E4203DA4();
    sub_1E42015C4();
    LOBYTE(v176) = 1;
    memcpy(&v175[7], v178, 0x70uLL);
    v95 = v170;
    *v170 = 0;
    *(v95 + 8) = 1;
    memcpy(v95 + 9, v175, 0x77uLL);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A80);
    v89 = sub_1E3A04864();
    sub_1E3A04A14();
    OUTLINED_FUNCTION_18_5();
    sub_1E4201F44();
LABEL_6:
    OUTLINED_FUNCTION_17_56();
    v97 = *(v96 + 248);
    v98 = v97();
    if (sub_1E32AE9B0(v98))
    {
      if ((v98 & 0xC000000000000001) != 0)
      {
        v142 = OUTLINED_FUNCTION_21_17();
        MEMORY[0x1E6911E60](v142);

        OUTLINED_FUNCTION_33_34();
        swift_unknownObjectRelease();
      }

      else
      {
        if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v99 = *(v98 + 32);

        OUTLINED_FUNCTION_33_34();
      }
    }

    else
    {

      v89 = 0;
      v98 = 0;
    }

    v100 = sub_1E4205F14();
    if (v98)
    {
      if (v89 == v100 && v98 == v101)
      {
      }

      else
      {
        v103 = sub_1E42079A4();

        v105 = 0;
        if ((v103 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v106 = (v97)(v104);
      v107 = sub_1E32AE9B0(v106);

      v105 = v107 == 1;
    }

    else
    {

      v105 = 0;
    }

LABEL_21:
    v108 = (v97)(v104);
    if (!sub_1E32AE9B0(v108))
    {

      goto LABEL_29;
    }

    if ((v108 & 0xC000000000000001) != 0)
    {
      v143 = OUTLINED_FUNCTION_21_17();
      v109 = MEMORY[0x1E6911E60](v143);
      goto LABEL_25;
    }

    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v109 = *(v108 + 32);
LABEL_25:
      v110 = v109;

      if (v105)
      {
        v111 = v148;
        v112 = v174;
        sub_1E3A03804(v110);
        type metadata accessor for Router();

        OUTLINED_FUNCTION_75();
        sub_1E40C49A8();
        v114 = v113;

        OUTLINED_FUNCTION_0_110();
        sub_1E3A047C8(v115, v116);
        OUTLINED_FUNCTION_20_2();
        v117 = sub_1E4200504();
        v118 = (v111 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A58) + 36));
        *v118 = v117;
        v118[1] = v114;
        v119 = v167;
        (*((*MEMORY[0x1E69E7D40] & *v42) + 0xC8))();

        v120 = v165;
        sub_1E3A044F8(v112, v165);
        v121 = (*(v163 + 80) + 16) & ~*(v163 + 80);
        v122 = swift_allocObject();
        sub_1E3A0455C(v120, v122 + v121);
        v123 = (v111 + *(v119 + 56));
        *v123 = sub_1E3A05258;
        v123[1] = v122;
        v124 = v168;
        sub_1E3741EA0(v111, v168, &qword_1ECF309D0);
        v125 = 0;
LABEL_30:
        __swift_storeEnumTagSinglePayload(v124, v125, 1, v119);
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v126, v127, v128);
        v129 = v169;
        sub_1E3743538(v124, v169, &qword_1ECF309D8);
        OUTLINED_FUNCTION_18_5();
        sub_1E3743538(v130, v131, v132);
        v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AB0);
        sub_1E3743538(v129, v2 + *(v133 + 48), &qword_1ECF309D8);
        OUTLINED_FUNCTION_90();
        sub_1E325F6F0(v134, v135);
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v136, v137);
        OUTLINED_FUNCTION_90();
        sub_1E325F6F0(v138, v139);
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v140, v141);
        OUTLINED_FUNCTION_25_2();
        return;
      }

LABEL_29:
      v125 = 1;
      v119 = v167;
      v124 = v168;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  v147 = v2;
  type metadata accessor for TabBarItemsInfo();
  OUTLINED_FUNCTION_1_117();
  sub_1E3A047C8(v47, v48);
  v49 = sub_1E42010D4();
  swift_getKeyPath();
  sub_1E42010E4();

  v176 = v178[0];
  v177 = *&v178[1];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v174;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A30);
  sub_1E3A04224();
  sub_1E4203BC4();
  v52 = *(v51 + *(v13 + 24));
  if (v52)
  {
    type metadata accessor for Route(0);
    sub_1E3A047C8(qword_1EE23C6B8, type metadata accessor for Route);
    v53 = v52;
    sub_1E4200BC4();
    v54 = type metadata accessor for NavigationBarObservableModel(0);
    sub_1E39EE6D8();
    v55 = OUTLINED_FUNCTION_75();
    sub_1E406C2A0(v55, v56, v57, v58);
    (*(v151 + 32))(v23, v20, v153);
    v59 = &v23[*(v149 + 36)];
    v60 = v178[1];
    *v59 = v178[0];
    *(v59 + 1) = v60;
    *(v59 + 2) = v178[2];
    v61 = v174;
    v62 = v165;
    sub_1E3A044F8(v174, v165);
    v63 = swift_allocObject();
    OUTLINED_FUNCTION_23_38(v63);
    v64 = v23;
    v65 = v150;
    sub_1E3741EA0(v64, v150, &qword_1ECF309F0);
    v66 = (v65 + *(v152 + 36));
    *v66 = sub_1E3A045C0;
    v66[1] = v54;
    v66[2] = 0;
    v66[3] = 0;
    sub_1E3A044F8(v61, v62);
    v67 = swift_allocObject();
    OUTLINED_FUNCTION_23_38(v67);
    v68 = v155;
    sub_1E3741EA0(v65, v155, &qword_1ECF309F8);
    v69 = (v68 + *(v154 + 36));
    *v69 = 0;
    v69[1] = 0;
    v69[2] = sub_1E3A046C4;
    v69[3] = v54;
    v70 = *(v42 + OBJC_IVAR____TtC8VideosUI15TabBarItemsInfo_appEnvironment);
    type metadata accessor for AppEnvironment();
    sub_1E3A047C8(&qword_1EE283350, type metadata accessor for AppEnvironment);

    v71 = sub_1E4200504();
    v72 = v160;
    v73 = sub_1E3741EA0(v68, v160, &qword_1ECF30A00);
    v74 = v157;
    v75 = (v72 + *(v156 + 36));
    *v75 = v71;
    v75[1] = v70;
    v76 = v159;
    (*((*MEMORY[0x1E69E7D40] & *v42) + 0xC8))(v73);
    sub_1E3A044F8(v174, v62);
    v77 = swift_allocObject();
    OUTLINED_FUNCTION_23_38(v77);
    sub_1E3741EA0(v72, v74, &qword_1ECF30A08);
    v78 = (v74 + *(v76 + 56));
    *v78 = sub_1E3A0480C;
    v78[1] = v42;
    v79 = sub_1E4203DA4();
    v81 = v80;
    v82 = v161;
    v83 = v161 + *(v158 + 36);
    sub_1E3A04810();
    sub_1E4202ED4();
    v84 = (v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A78) + 36));
    *v84 = v79;
    v84[1] = v81;
    v85 = sub_1E3741EA0(v74, v82, &qword_1ECF30A10);
    v86 = MEMORY[0x1E69E7D40];
    v87 = (*((*MEMORY[0x1E69E7D40] & *v42) + 0x128))(v85);
    (*((*v86 & *v42) + 0x140))(v87);
    OUTLINED_FUNCTION_90();
    sub_1E3A035B0();
    v88 = OUTLINED_FUNCTION_75();
    sub_1E34AF594(v88);
    sub_1E325F6F0(v82, &qword_1ECF30A18);
    v89 = &unk_1E42B2730;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v90, v91, v92);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A80);
    sub_1E3A04864();
    sub_1E3A04A14();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
    sub_1E325F6F0(v93, v94);
    v2 = v147;
    goto LABEL_6;
  }

LABEL_35:
  type metadata accessor for Router();
  OUTLINED_FUNCTION_0_110();
  sub_1E3A047C8(v144, v145);
  OUTLINED_FUNCTION_82();
  sub_1E4201744();
  __break(1u);
}

uint64_t sub_1E3A02EE0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  return result;
}

uint64_t sub_1E3A02F94(uint64_t a1)
{
  v2 = type metadata accessor for TabBarView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2 - 8);
  v7 = (*((*MEMORY[0x1E69E7D40] & **(a1 + *(v6 + 28) + 8)) + 0xF8))(v5);
  v8 = sub_1E3A04ECC(v7);

  v13[1] = v8;
  swift_getKeyPath();
  sub_1E3A044F8(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1E3A0455C(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  OUTLINED_FUNCTION_2_4();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1E3A05084;
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A48);
  sub_1E328FCF4(&qword_1ECF30AF0, &qword_1ECF30AE8);
  sub_1E3A042A8();
  return sub_1E4203B34();
}

void sub_1E3A031C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A50);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1E3A032F4();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(a2, v9, v4);
    v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AB8) + 36);
    *v10 = a1;
    *(v10 + 8) = 1;
    v11 = sub_1E4202734();
    *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A48) + 36)) = v11;
  }
}

void sub_1E3A032F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v13 - v4;
  sub_1E3A03804(v1);
  type metadata accessor for Router();
  sub_1E40C49A8();
  v7 = v6;
  OUTLINED_FUNCTION_0_110();
  sub_1E3A047C8(v8, v9);
  OUTLINED_FUNCTION_20_2();
  v10 = sub_1E4200504();
  v11 = &v5[*(v2 + 36)];
  *v11 = v10;
  v11[1] = v7;
  v13[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A60);
  sub_1E3A04428();
  OUTLINED_FUNCTION_6_1();
  sub_1E328FCF4(v12, &qword_1ECF30A60);
  sub_1E42034F4();
  sub_1E325F6F0(v5, &qword_1ECF30A58);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A03474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E40C4340();
  swift_beginAccess();
  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_27_29();
  v7 = *(v6 + 176);
  v8 = v5;
  if (v7() == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_1E42079A4();

    if ((v11 & 1) == 0)
    {

LABEL_8:
      type metadata accessor for Router();
      sub_1E40C4C78();
      return;
    }
  }

  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_27_29();
  (*(v12 + 496))(v13 & 1, 0, 0);
}

void sub_1E3A035B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AE0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  if (v6)
  {
    OUTLINED_FUNCTION_2_4();
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    *(v16 + 24) = v2;
    sub_1E34AF604(v4);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A18);
    v18 = sub_1E3A04930();
    sub_1E4203154();

    (*(v12 + 16))(v9, v15, v10);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    v21 = v17;
    v22 = v18;
    OUTLINED_FUNCTION_8_66();
    OUTLINED_FUNCTION_74();
    sub_1E4201F44();
    (*(v12 + 8))(v15, v10);
  }

  else
  {
    sub_1E3743538(v0, v9, &qword_1ECF30A18);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30A18);
    v20 = sub_1E3A04930();
    v21 = v19;
    v22 = v20;
    OUTLINED_FUNCTION_8_66();
    OUTLINED_FUNCTION_74();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A03804(uint64_t a1)
{
  sub_1E3280A90(0, &qword_1EE23B0D0);

  v2 = sub_1E38A1F34();
  [v2 setUiConfiguration_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  sub_1E4205F14();
  v4 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  v5 = *(a1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier);
  v6 = *(a1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8);
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = v6;

  sub_1E4205CB4();
  if (v5 == sub_1E4205F14() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1E42079A4();

    if ((v9 & 1) == 0)
    {
      v10 = DocumentType.rawValue.getter(0);
      sub_1E3A04E34(v10, v11, v2);
      v12 = sub_1E4205ED4();
      [v2 setControllerRef_];

      v13 = sub_1E4205ED4();
      [v2 setTitle_];

      if (*(a1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_contextData))
      {
        sub_1E3280A90(0, &qword_1EE23B078);

        v14 = sub_1E37766C4();
        [v2 setContextData_];
      }
    }
  }

  v15 = [v2 uiConfiguration];
  v16 = sub_1E4205ED4();
  [v15 setViewControllerIdentifier_];

  type metadata accessor for DocumentContext();
  OUTLINED_FUNCTION_27_29();
  v18 = *(v17 + 216);
  v19 = v2;
  v20 = v18();
  v21 = j__OUTLINED_FUNCTION_18();
  sub_1E3D98A84(v19, v20, v21 & 1);
  type metadata accessor for TabBarView();
  OUTLINED_FUNCTION_27_29();
  v23 = (*(v22 + 272))();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  v24 = OUTLINED_FUNCTION_75();
  sub_1E3D98BF4(v24, v25, 1, v26);
}

void sub_1E3A03BE4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B00);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v44 = v1;
  v16 = type metadata accessor for RemoteBarItem();
  v17 = sub_1E395DF10(v16, &off_1F5D824A8);
  if (v17)
  {
    v18 = v17;
    v42 = v3;
    v19 = v18;
    v43 = sub_1E42037B4();
    v20 = sub_1E4205F14();
    v41 = v4;
    v21 = *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier);
    v22 = *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8);
    v44 = v20;
    v45 = v23;

    MEMORY[0x1E69109E0](v21, v22);

    sub_1E4202EA4();

    v4 = v41;
    v3 = v42;

    sub_1E3A051E8(v7, v15);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v24, 1, v4);
  v25 = *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_title + 8);
  v44 = *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_title);
  v45 = v25;
  sub_1E32822E0();

  v26 = sub_1E4202C44();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = OUTLINED_FUNCTION_74();
  sub_1E3A05110(v33, v34);
  sub_1E3A05110(v12, v3);
  v35 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B08) + 48);
  *v35 = v26;
  *(v35 + 8) = v28;
  v30 &= 1u;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  v36 = OUTLINED_FUNCTION_32_0();
  sub_1E37E6F1C(v36, v37, v30);

  sub_1E3A05180(v15);
  v38 = OUTLINED_FUNCTION_32_0();
  sub_1E37434B8(v38, v39, v30);

  sub_1E3A05180(v12);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3A03E78()
{
  v0 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v7 = VUISignpostLogObject();
  OUTLINED_FUNCTION_29_36();

  v8 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  v9 = [objc_opt_self() sharedInstance];
  [v9 setRootPresentingViewController_];

  sub_1E4206B94();
  v10 = VUISignpostLogObject();
  OUTLINED_FUNCTION_29_36();

  (*(v2 + 8))(v5, v0);
  return v8;
}

uint64_t sub_1E3A0400C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E3A04DE0();

  return sub_1E3E36CBC(a1, a2, v4);
}

uint64_t sub_1E3A04058()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3A04DE0();
  v1 = OUTLINED_FUNCTION_74();

  return sub_1E3E36CD0(v1, v2, v0, v3);
}

uint64_t sub_1E3A04144()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3A04D8C();
  v0 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDDB778](v0);
}

uint64_t sub_1E3A0419C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3A04D8C();
  v0 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEDDB740](v0);
}

void sub_1E3A041F4()
{
  sub_1E3A04D8C();
  sub_1E42025D4();
  __break(1u);
}

unint64_t sub_1E3A04224()
{
  result = qword_1ECF30A38;
  if (!qword_1ECF30A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A30);
    sub_1E3A042A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30A38);
  }

  return result;
}

unint64_t sub_1E3A042A8()
{
  result = qword_1ECF30A40;
  if (!qword_1ECF30A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A60);
    sub_1E3A04428();
    sub_1E328FCF4(&qword_1ECF30A70, &qword_1ECF30A60);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30A40);
  }

  return result;
}

unint64_t sub_1E3A04428()
{
  result = qword_1ECF30A68;
  if (!qword_1ECF30A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A58);
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE2887F0, &unk_1ECF2A7A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30A68);
  }

  return result;
}

uint64_t sub_1E3A044F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabBarView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A0455C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabBarView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3A045C0()
{
  v0 = type metadata accessor for TabBarView();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_15_63();
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8);
    v5 = v1;
    v2();
  }

  else
  {
    type metadata accessor for Router();
    OUTLINED_FUNCTION_0_110();
    sub_1E3A047C8(v3, v4);
    OUTLINED_FUNCTION_21_1();
    sub_1E4201744();
    __break(1u);
  }
}

void sub_1E3A046C4()
{
  v0 = type metadata accessor for TabBarView();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_15_63();
  if (v1)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1C0);
    v5 = v1;
    v2();
  }

  else
  {
    type metadata accessor for Router();
    OUTLINED_FUNCTION_0_110();
    sub_1E3A047C8(v3, v4);
    OUTLINED_FUNCTION_21_1();
    sub_1E4201744();
    __break(1u);
  }
}

uint64_t sub_1E3A047C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3A04810()
{
  result = qword_1ECF527C8[0];
  if (!qword_1ECF527C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF527C8);
  }

  return result;
}

unint64_t sub_1E3A04864()
{
  result = qword_1ECF30A88;
  if (!qword_1ECF30A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A18);
    sub_1E3A04930();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30A88);
  }

  return result;
}

unint64_t sub_1E3A04930()
{
  result = qword_1ECF30A90;
  if (!qword_1ECF30A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A18);
    sub_1E328FCF4(&qword_1ECF30A98, &qword_1ECF30A10);
    sub_1E328FCF4(&qword_1ECF30AA0, &qword_1ECF30A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30A90);
  }

  return result;
}

unint64_t sub_1E3A04A14()
{
  result = qword_1ECF30AA8;
  if (!qword_1ECF30AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30AA8);
  }

  return result;
}

uint64_t sub_1E3A04A98()
{
  OUTLINED_FUNCTION_9_5();
  v2 = type metadata accessor for TabBarView();
  v3 = *v0;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & **(v1 + *(v2 + 20) + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)) + 8)) + 0xF8))();
    sub_1E34AF4E4(v3, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) == 0)
    {
      v5 = *(v4 + 8 * v3 + 32);
      goto LABEL_4;
    }
  }

  v10 = OUTLINED_FUNCTION_32_0();
  v5 = MEMORY[0x1E6911E60](v10);
LABEL_4:
  v6 = v5;

  v7 = *&v6[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
  v8 = *&v6[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8];

  sub_1E3A03474(v7, v8);
}

void sub_1E3A04C08()
{
  sub_1E41FFCB4();
  if (v0 <= 0x3F)
  {
    sub_1E3A04CBC();
    if (v1 <= 0x3F)
    {
      sub_1E389B5AC();
      if (v2 <= 0x3F)
      {
        sub_1E389B640();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3A04CBC()
{
  if (!qword_1ECF30AC0)
  {
    type metadata accessor for TabBarItemsInfo();
    sub_1E3A047C8(&qword_1ECF2B720, type metadata accessor for TabBarItemsInfo);
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF30AC0);
    }
  }
}

unint64_t sub_1E3A04D64(uint64_t a1)
{
  result = sub_1E3A04D8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3A04D8C()
{
  result = qword_1ECF528E0[0];
  if (!qword_1ECF528E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF528E0);
  }

  return result;
}

unint64_t sub_1E3A04DE0()
{
  result = qword_1ECF529F0[0];
  if (!qword_1ECF529F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF529F0);
  }

  return result;
}

void sub_1E3A04E34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setDocumentType_];
}

uint64_t sub_1E3A04E98()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

void *sub_1E3A04ECC(unint64_t a1)
{
  v1 = a1;
  result = sub_1E32AE9B0(a1);
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = (MEMORY[0x1E69E7CC0] + 32);
  v9 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1 & 0xFFFFFFFFFFFFFF8;
  v27 = v1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x1E6911E60](v4, v1);
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      result = *(v1 + 8 * v4 + 32);
    }

    v10 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B10);
      v16 = swift_allocObject();
      v17 = (_swift_stdlib_malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      v1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1E3A05084(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TabBarView();
  OUTLINED_FUNCTION_17_2(v4);

  sub_1E3A031C0(a1, a2);
}

uint64_t sub_1E3A05110(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A05180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3A051E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30AF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3A0525C()
{
  v1 = sub_1E41FFBF4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  v3 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3A0534C, v3, v2);
}

id sub_1E3A0534C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1E4206BA4();
  v4 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_0_111();

  v5 = *(v2 + 8);
  v5(v1, v3);
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = v0[4];
    v9 = v0[2];

    sub_1E3741090(0x474E4944414F4CLL, 0xE700000000000000, v7);

    sub_1E4206B94();
    v10 = VUISignpostLogObject();
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_0_111();

    v5(v8, v9);

    v11 = v0[1];

    return v11();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3A054E8()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3A05534(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x7478654E7075;
      break;
    case 2:
      result = OUTLINED_FUNCTION_13_72();
      break;
    case 3:
      result = OUTLINED_FUNCTION_6_77();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3A055C4(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x7478654E7075;
      break;
    case 2:
      v5 = 0x79616C5079656BLL;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x736172747865;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x7478654E7075;
      break;
    case 2:
      v2 = 0x79616C5079656BLL;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x736172747865;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3A05700()
{
  sub_1E4207B44();
  sub_1E3A05750();
  return sub_1E4207BA4();
}

uint64_t sub_1E3A05750()
{
  sub_1E4206014();
}

uint64_t sub_1E3A05804()
{
  sub_1E4207B44();
  sub_1E3A05750();
  return sub_1E4207BA4();
}

uint64_t sub_1E3A05848@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A054E8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A05878@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3A05534(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3A058A4()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for ContextMenuButtonLayout();
    v1 = sub_1E3890F28();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3A05918()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    type metadata accessor for PlaybackStatusLayout();
    v1 = sub_1E3A70EBC(1);
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_1E3A059B0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 160) = a1;
}

uint64_t sub_1E3A059F0()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    type metadata accessor for ViewGradientLayout();
    v1 = sub_1E40C3088();
    *(v0 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E3A05A58()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 176) = v1;
  }

  return v1;
}

void *sub_1E3A05ACC()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 184);
  }

  else
  {
    type metadata accessor for SportsScoreboardLayout();
    v1 = sub_1E39DF330();
    *(v0 + 184) = v1;
  }

  return v1;
}

uint64_t sub_1E3A05B40()
{
  if (*(v0 + 192))
  {
    v1 = *(v0 + 192);
  }

  else
  {
    type metadata accessor for ViewGradientLayout();
    v1 = sub_1E40C3088();
    *(v0 + 192) = v1;
  }

  return v1;
}

double sub_1E3A05BB4()
{
  if ((*(v0 + 208) & 1) == 0)
  {
    return *(v0 + 200);
  }

  *(v0 + 200) = 0x4041000000000000;
  *(v0 + 208) = 0;
  return 34.0;
}

uint64_t sub_1E3A05C0C(double a1)
{
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + 216) = a1;
  return result;
}

uint64_t sub_1E3A05C44()
{
  OUTLINED_FUNCTION_8();
  if ((*(v2 + 2224))())
  {
    sub_1E3A074DC();
  }

  else
  {
    OUTLINED_FUNCTION_111();
    (*(v3 + 752))(0);
    OUTLINED_FUNCTION_9_2();
    (*(v4 + 872))(0);
    memset(v37, 0, sizeof(v37));
    v38 = 1;
    (*(*v0 + 560))(v37);
    v5 = sub_1E3C6DC70();
    v6 = v5[2];
    v35[0] = *v5;
    v35[1] = 0;
    v35[2] = v6;
    v35[3] = 0;
    v36 = 0;
    OUTLINED_FUNCTION_111();
    (*(v7 + 184))(v35);
    v8 = *sub_1E3C6DC7C();
    (*(*v0 + 1160))(v8, 0);
    OUTLINED_FUNCTION_9_2();
    v10 = *(v9 + 1888);
    v10();
    OUTLINED_FUNCTION_2_1();
    (*(v11 + 1656))();

    (v10)(v12);
    sub_1E3C6DC94();

    OUTLINED_FUNCTION_9_2();
    (*(v13 + 2200))();
    OUTLINED_FUNCTION_32_38();
    switch(v14)
    {
      case 1:

        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_13_72();
        goto LABEL_7;
      case 3:
        OUTLINED_FUNCTION_6_77();
        goto LABEL_7;
      default:
LABEL_7:
        OUTLINED_FUNCTION_40_5();
        v15 = OUTLINED_FUNCTION_28_3();
        if ((v1 & 1) == 0)
        {
          (v10)(v15);
          OUTLINED_FUNCTION_30();
          v16 = OUTLINED_FUNCTION_15_8();
          v17(v16);

          (v10)(v18);
          OUTLINED_FUNCTION_2_1();
          (*(v19 + 1696))(19);
        }

LABEL_9:
        OUTLINED_FUNCTION_111();
        v20 += 239;
        v21 = *v20;
        (*v20)();
        OUTLINED_FUNCTION_30();
        (*(v22 + 1656))();

        (v21)(v23);
        sub_1E3C6DE18();

        OUTLINED_FUNCTION_9_2();
        (*(v24 + 1864))();
        OUTLINED_FUNCTION_2_1();
        (*(v25 + 1656))();

        sub_1E3A09908();
        OUTLINED_FUNCTION_9_2();
        if ((*(v26 + 2032))())
        {
          sub_1E3C6E74C();
        }

        OUTLINED_FUNCTION_111();
        (*(v27 + 1936))();
        v28 = sub_1E418A524();
        sub_1E3C6DFCC(*v28);

        OUTLINED_FUNCTION_9_2();
        v30 = *(v29 + 1960);
        v30();
        OUTLINED_FUNCTION_2_1();
        (*(v31 + 1656))();

        v33 = (v30)(v32);
        sub_1E3C6E604(v33);

        break;
    }
  }

  result = OUTLINED_FUNCTION_3_0();
  v0[27] = 0x4000000000000000;
  return result;
}

uint64_t sub_1E3A06200(char a1)
{
  v3 = 0x746C7561666564;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + 272);
  *(v1 + 272) = a1;
  swift_beginAccess();
  v5 = 0xE700000000000000;
  v6 = 0x746C7561666564;
  switch(*(v1 + 272))
  {
    case 1:
      v5 = 0xE600000000000000;
      v6 = 0x7478654E7075;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_13_72();
      break;
    case 3:
      v5 = 0xE600000000000000;
      v6 = OUTLINED_FUNCTION_6_77();
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(v4)
  {
    case 1:
      v7 = 0xE600000000000000;
      v3 = 0x7478654E7075;
      break;
    case 2:
      v3 = 0x79616C5079656BLL;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v3 = 0x736172747865;
      break;
    default:
      break;
  }

  if (v6 == v3 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_1E42079A4();

    if ((v9 & 1) == 0)
    {
      return sub_1E3A05C44();
    }
  }

  return result;
}

void (*sub_1E3A06370(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  swift_beginAccess();
  *(v3 + 32) = *(v1 + 272);
  return sub_1E3A063E8;
}

void sub_1E3A063E8(uint64_t a1)
{
  v1 = *a1;
  sub_1E3A06200(*(*a1 + 32));

  free(v1);
}

uint64_t sub_1E3A06450(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v2 + 273);
  *(v2 + 273) = a1 & 1;
  result = swift_beginAccess();
  if (v4 != *(v2 + 273))
  {
    OUTLINED_FUNCTION_111();
    v6 += 242;
    v7 = *v6;
    (*v6)();
    OUTLINED_FUNCTION_30();
    v9 = (*(v8 + 432))();
    v11 = v10;

    result = sub_1E3A05C44();
    if ((v11 & 1) == 0)
    {
      (v7)(result);
      OUTLINED_FUNCTION_30();
      (*(v12 + 440))(v9, 0);
    }
  }

  return result;
}

void sub_1E3A065B8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_2_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_34_32();
  *(v1 + 208) = 1;
  *(v1 + 216) = 0;
  v8 = objc_opt_self();
  *(v1 + 224) = [v8 whiteColor];
  *(v1 + 232) = *sub_1E3E60B34();
  v9 = sub_1E3E60CFC();
  OUTLINED_FUNCTION_35_29(v9);
  *(v1 + 256) = [v8 whiteColor];
  *(v1 + 264) = 0x4000000000000000;
  *(v1 + 273) = 1;
  sub_1E4206BA4();
  v10 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_50_17();

  v11 = *(v6 + 8);
  v11(v2, v0);
  *(v1 + 272) = v4;
  sub_1E3C2F9A0();

  sub_1E3A05C44();
  sub_1E4206B94();
  v12 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_50_17();

  v11(v2, v0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A0679C()
{
  OUTLINED_FUNCTION_34_32();
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  v1 = objc_opt_self();
  *(v0 + 224) = [v1 whiteColor];
  *(v0 + 232) = *sub_1E3E60B34();
  v2 = sub_1E3E60CFC();
  OUTLINED_FUNCTION_35_29(v2);
  *(v0 + 256) = [v1 whiteColor];
  *(v0 + 264) = 0x4000000000000000;
  *(v0 + 273) = 1;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3A06874(__objc2_class **a1)
{
  result = sub_1E373F6E0();
  if (result)
  {
    if (*a1 == _TtC8VideosUI20PlaybackStatusLayout)
    {
      *(v1 + 144) = a1;
      swift_retain_n();

      sub_1E3A069B4();
    }
  }

  else
  {
    result = sub_1E385050C();
    if (result)
    {
      type metadata accessor for TextBadgeLayout();
      result = swift_dynamicCastClass();
      if (result)
      {
        v4 = result;
        OUTLINED_FUNCTION_3_0();
        *(v1 + 160) = v4;
        swift_retain_n();

        sub_1E3A06C60();
        v5 = *sub_1E3810A0C();

        sub_1E3C37EC8(v4, v5);
      }
    }
  }

  return result;
}

void sub_1E3A069B4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_8();
  (*(v1 + 1984))();
  v25 = xmmword_1E42B29E0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v20 = 0x4030000000000000;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v15 = 0x4030000000000000;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v2 = *(*v0 + 2200);
  switch(v2())
  {
    case 2u:

      v4 = 0x4014000000000000;
      break;
    case 3u:
      OUTLINED_FUNCTION_6_77();
      goto LABEL_4;
    default:
LABEL_4:
      v5 = OUTLINED_FUNCTION_38_23();

      v4 = 0x402C000000000000;
      if (v5)
      {
        v4 = 0x4014000000000000;
      }

      break;
  }

  v10 = v4;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  (v2)(v3);
  OUTLINED_FUNCTION_25_43();
  switch(v6)
  {
    case 2:

      break;
    default:
      OUTLINED_FUNCTION_38_23();
      OUTLINED_FUNCTION_28_3();
      break;
  }

  v8[30] = 0x4014000000000000;
  type metadata accessor for UIEdgeInsets();
  memset(&v8[31], 0, 24);
  v9 = 0;
  sub_1E3C2FCB8(&v25, __src);
  memcpy(v8, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_42_31();
  v7();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3A06C60()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 2224))();
  OUTLINED_FUNCTION_8();
  v2 += 254;
  v3 = *v2;
  v4 = (*v2)();
  if (v1)
  {
    sub_1E3A0958C();
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 1808))(1);
    }

    (v3)(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30B28);
    sub_1E4148F70(sub_1E3A098D4, 0, v5, MEMORY[0x1E69E7CA8] + 8, &v7);
  }
}

void sub_1E3A06DD8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_8();
  v7 = (*(v6 + 1536))();
  if (v8 >= 2)
  {
    v10 = v7;
    v11 = v8;
    v9 = [v8 preferredContentSizeCategory];
    sub_1E39DFB80(v10, v11);
    if (!v3)
    {
      if (v9)
      {
LABEL_15:
        v20 = 1;
        v13 = v9;
        goto LABEL_19;
      }

LABEL_16:
      v20 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_16;
    }

    v9 = 0;
  }

  v12 = [v3 preferredContentSizeCategory];
  v13 = v12;
  if (v9)
  {
    if (v12)
    {
      v14 = sub_1E4205F14();
      v16 = v15;
      if (v14 == sub_1E4205F14() && v16 == v17)
      {

        v20 = 0;
      }

      else
      {
        v19 = sub_1E42079A4();

        v20 = v19 ^ 1;
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (!v12)
  {
    goto LABEL_16;
  }

  v20 = 1;
LABEL_19:

LABEL_20:
  sub_1E3C35CF4(v5, v3);
  v21 = sub_1E3A06FE4(v5, v1);
  sub_1E3A06450(v21);
  OUTLINED_FUNCTION_9_2();
  (*(v22 + 2104))();
  sub_1E39DFB00(v5, v3, v1);

  if (v20)
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E3A07120();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

BOOL sub_1E3A06FE4(char a1, __int16 a2)
{
  if (a2 - 3 > 1)
  {
    if (a2 != 5)
    {
      sub_1E3890B18();
      if ((sub_1E4205E84() & 1) == 0)
      {
        if (HIBYTE(a2) != 2 && (sub_1E4205E84() & 1) != 0)
        {
          if ((a2 & 0x100) == 0)
          {
            v3 = [objc_opt_self() isPad];
            if (!v3)
            {
              return (v3 & 1) == 0;
            }

            goto LABEL_2;
          }

LABEL_12:
          LOBYTE(v3) = 1;
          return (v3 & 1) == 0;
        }

        if (sub_1E4205E84() & 1) != 0 && (sub_1E3A24FDC(a1))
        {
          goto LABEL_12;
        }
      }
    }

    LOBYTE(v3) = 0;
    return (v3 & 1) == 0;
  }

LABEL_2:
  LOBYTE(v3) = sub_1E3A24FDC(a1);
  return (v3 & 1) == 0;
}

uint64_t sub_1E3A07120()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 2200))();
  OUTLINED_FUNCTION_32_38();
  switch(v1)
  {
    case 1:

      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_13_72();
      break;
    case 3:
      OUTLINED_FUNCTION_6_77();
      break;
    default:
      break;
  }

  v2 = OUTLINED_FUNCTION_40_5();

  if (v2)
  {
LABEL_6:
    OUTLINED_FUNCTION_8();
    (*(v3 + 2008))();
    v10[0] = sub_1E3A0A0B8(9.0);
    LOBYTE(v10[1]) = 0;
    v21 = sub_1E3A0A0B8(11.0);
    v22 = 0;
    v19 = 0x402E000000000000;
    v20 = 0;
    v17 = 0x4026000000000000;
    v18 = 0;
    v4 = 10.0;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v5 + 2008))();
    v10[0] = sub_1E3A0A0B8(12.0);
    LOBYTE(v10[1]) = 0;
    v21 = sub_1E3A0A0B8(14.0);
    v22 = 0;
    v19 = 0x4032000000000000;
    v20 = 0;
    v17 = 0x402C000000000000;
    v18 = 0;
    v4 = 12.0;
  }

  v15 = sub_1E3A0A0B8(v4);
  v16 = 0;
  v6 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00(MEMORY[0x1E69E7DE0]);
  v11 = v13;
  v12 = v14;
  sub_1E3C2FCB8(&v11, __src);
  memcpy(v10, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  (*(v7 + 1600))(v10, 6, v8 & 1, v6);
}

void sub_1E3A07374()
{

  v1 = *(v0 + 256);
}

id *sub_1E3A0740C()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3A074AC()
{
  v0 = sub_1E3A0740C();

  return MEMORY[0x1EEE6BDC0](v0, 274, 7);
}

uint64_t sub_1E3A074DC()
{
  v2 = v0;
  *v286 = xmmword_1E42B29E0;
  v287 = 0;
  v288 = 0;
  LOBYTE(v289) = 0;
  *v283 = xmmword_1E4298700;
  v284 = xmmword_1E42B29F0;
  LOBYTE(v285) = 0;
  *v280 = xmmword_1E4298700;
  v281 = xmmword_1E42B29F0;
  LOBYTE(v282) = 0;
  __asm { FMOV            V0.2D, #14.0 }

  *v277 = _Q0;
  v278 = _Q0;
  LOBYTE(v279) = 0;
  v8 = *(*v0 + 2200);
  v8();
  OUTLINED_FUNCTION_25_43();
  switch(v9)
  {
    case 2:

      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_6_77();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_38_23();
  v10 = OUTLINED_FUNCTION_28_3();
  if (v1)
  {
LABEL_5:
    v11 = 0x4020000000000000;
  }

  else
  {
    v11 = 0x4024000000000000;
  }

  v273 = v11;
  v274 = xmmword_1E42B2A00;
  v275 = 0x4028000000000000;
  LOBYTE(v276) = 0;
  (v8)(v10);
  OUTLINED_FUNCTION_25_43();
  switch(v12)
  {
    case 2:

      v14 = 0x4014000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_6_77();
      goto LABEL_10;
    default:
LABEL_10:
      OUTLINED_FUNCTION_38_23();
      v13 = OUTLINED_FUNCTION_28_3();
      if (v1)
      {
        v14 = 0x4014000000000000;
      }

      else
      {
        v14 = 0x4028000000000000;
      }

      break;
  }

  (v8)(v13);
  OUTLINED_FUNCTION_25_43();
  switch(v15)
  {
    case 1:

      v16 = 0x4026000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_6_77();
      goto LABEL_16;
    default:
LABEL_16:
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_28_3();
      v16 = 0x4018000000000000;
      if (v1)
      {
        v16 = 0x4026000000000000;
      }

      break;
  }

  *&__dst[0] = v14;
  *(&__dst[0] + 1) = 0x4028000000000000;
  *&__dst[1] = v16;
  *(&__dst[1] + 1) = 0x4028000000000000;
  LOBYTE(__dst[2]) = 0;
  type metadata accessor for UIEdgeInsets();
  v18 = v17;
  sub_1E3C2FCB8(v286, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v20 = *(v19 + 1600);
  (v20)(__dst, 1, v21 & 1, v18);
  sub_1E39537A8();
  *v292 = v22;
  *&v292[8] = v23;
  v293[0] = v24;
  v293[1] = v25;
  LOBYTE(v294) = 0;
  sub_1E39537A8();
  v307 = v26;
  v308 = v27;
  v309 = v28;
  v310 = v29;
  LOBYTE(v311) = 0;
  sub_1E3C2FC98();
  *v301 = *v304;
  *v302 = *v305;
  LOBYTE(v303) = v306;
  sub_1E3C3DE00(v18);
  *v295 = *v298;
  *v296 = v299;
  LOBYTE(v297) = v300;
  sub_1E3C3DE00(v18);
  sub_1E3C3DE00(v18);
  v270 = v271;
  v30 = OUTLINED_FUNCTION_17_57();
  sub_1E3C2FCB8(v30, v31);
  OUTLINED_FUNCTION_37_26();
  OUTLINED_FUNCTION_18();
  v32 = OUTLINED_FUNCTION_15_64();
  v20(v32, 17);
  v33 = *sub_1E3E5FB0C();
  v34 = *(*v2 + 752);
  v35 = v33;
  v34(v33);
  v36 = *sub_1E3E5FB88();
  v37 = *(*v2 + 872);
  v38 = v36;
  v37(v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1E42A76D0;
  v41 = objc_opt_self();
  v42 = [v41 blackColor];
  v43 = [v42 colorWithAlphaComponent_];

  *(v40 + 32) = v43;
  v44 = OUTLINED_FUNCTION_54_15();
  v45 = [v44 &selRef:0.0 componentsSeparatedByString:?];

  *(v40 + 40) = v45;
  v46 = OUTLINED_FUNCTION_54_15();
  v47 = [v46 &selRef:0.1 componentsSeparatedByString:?];

  *(v40 + 48) = v47;
  v48 = OUTLINED_FUNCTION_54_15();
  v49 = [v48 &selRef:0.4 componentsSeparatedByString:?];

  *(v40 + 56) = v49;
  *(v40 + 64) = OUTLINED_FUNCTION_54_15();
  v50 = type metadata accessor for ViewGradientLayout();
  OUTLINED_FUNCTION_18_48();
  v269 = v50;
  sub_1E40C2E40();
  OUTLINED_FUNCTION_9_2();
  (*(v51 + 848))();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1E42A76D0;
  v53 = [v41 blackColor];
  OUTLINED_FUNCTION_43_23();
  v56 = [v54 v55];

  *(v52 + 32) = v56;
  v57 = OUTLINED_FUNCTION_53_20();
  OUTLINED_FUNCTION_43_23();
  v60 = [v58 v59];

  *(v52 + 40) = v60;
  v61 = OUTLINED_FUNCTION_53_20();
  OUTLINED_FUNCTION_43_23();
  v64 = [v62 v63];

  *(v52 + 48) = v64;
  v65 = OUTLINED_FUNCTION_53_20();
  OUTLINED_FUNCTION_43_23();
  v68 = [v66 v67];

  *(v52 + 56) = v68;
  *(v52 + 64) = OUTLINED_FUNCTION_53_20();
  OUTLINED_FUNCTION_18_48();
  v2[21] = sub_1E40C2E40();

  sub_1E3A069B4();
  OUTLINED_FUNCTION_9_2();
  v70 = *(v69 + 1936);
  v70();
  OUTLINED_FUNCTION_2_1();
  (*(v71 + 1352))(0);

  (v70)(v72);
  OUTLINED_FUNCTION_2_1();
  (*(v73 + 512))(2);

  (v70)(v74);
  OUTLINED_FUNCTION_2_1();
  (*(v75 + 1808))(3);

  v77 = (v70)(v76);
  sub_1E3E60A14();
  OUTLINED_FUNCTION_7_16();
  v78 = *(*v77 + 872);
  v79 = v41;
  v78(v41);

  (v70)(v80);
  OUTLINED_FUNCTION_2_1();
  (*(v81 + 2240))(0);

  v83 = (v70)(v82);
  memset(__dst, 0, 32);
  LOBYTE(__dst[2]) = 1;
  (*(*v83 + 560))(__dst);

  (v70)(v84);
  OUTLINED_FUNCTION_2_1();
  (*(v85 + 360))(0, 1);

  (v70)(v86);
  OUTLINED_FUNCTION_30();
  (*(v87 + 160))(__dst);

  (v70)(v88);
  OUTLINED_FUNCTION_2_1();
  (*(v89 + 312))(0, 1);

  v91 = (v70)(v90);
  v92 = *sub_1E418A524();
  (*(*v91 + 440))(v92, 0);

  v94 = (v70)(v93);
  sub_1E3E5FB0C();
  OUTLINED_FUNCTION_7_16();
  v95 = *(*v94 + 776);
  v96 = v41;
  v95(v41);

  sub_1E3A09908();
  OUTLINED_FUNCTION_9_2();
  v98 = *(v97 + 1888);
  v98();
  OUTLINED_FUNCTION_2_1();
  v99 = OUTLINED_FUNCTION_15_8();
  v100(v99);

  (v98)(v101);
  OUTLINED_FUNCTION_2_1();
  v102 = OUTLINED_FUNCTION_10_7();
  v103(v102);

  (v98)(v104);
  OUTLINED_FUNCTION_2_1();
  v105 = OUTLINED_FUNCTION_10_7();
  v106(v105);

  (v98)(v107);
  v292[0] = 11;
  LOBYTE(v307) = 5;
  LOBYTE(v304[0]) = 5;
  LOBYTE(v301[0]) = 5;
  LOBYTE(v298[0]) = 5;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  v108 = OUTLINED_FUNCTION_5_94();
  sub_1E3C2FCB8(v108, v109);
  OUTLINED_FUNCTION_2_93();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v110 = OUTLINED_FUNCTION_15_64();
  v111(v110, 54);

  (v98)(v112);
  v292[0] = 17;
  LOBYTE(v307) = 17;
  LOBYTE(v304[0]) = 22;
  LOBYTE(v301[0]) = 3;
  LOBYTE(v298[0]) = 14;
  sub_1E3C3DE00(&qword_1F5D549D8);
  LOBYTE(v272[0]) = v295[0];
  sub_1E3C2FCB8(v272, __dst);
  OUTLINED_FUNCTION_2_93();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v113 = OUTLINED_FUNCTION_15_64();
  v114(v113, 48);

  (v98)(v115);
  v292[0] = 5;
  LOBYTE(v307) = 3;
  sub_1E3C2FC98();
  LOBYTE(v301[0]) = v304[0];
  sub_1E3C3DE00(&unk_1F5D54B88);
  LOBYTE(v295[0]) = v298[0];
  sub_1E3C3DE00(&unk_1F5D54B88);
  sub_1E3C3DE00(&unk_1F5D54B88);
  LOBYTE(v270) = v271;
  v116 = OUTLINED_FUNCTION_17_57();
  sub_1E3C2FCB8(v116, v117);
  OUTLINED_FUNCTION_2_93();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v118 = OUTLINED_FUNCTION_15_64();
  v119(v118, 55);

  (v98)(v120);
  OUTLINED_FUNCTION_2_1();
  (*(v121 + 1984))(5);

  (v98)(v122);
  *&v123 = OUTLINED_FUNCTION_45_24();
  *v292 = v123;
  *v293 = v123;
  LOBYTE(v294) = 1;
  OUTLINED_FUNCTION_16_60(0x4000000000000000uLL);
  v301[0] = v124;
  OUTLINED_FUNCTION_41_26();
  OUTLINED_FUNCTION_30_34(0x3FF0000000000000uLL);
  v267 = *(MEMORY[0x1E69DDCE0] + 8);
  v265 = *(MEMORY[0x1E69DDCE0] + 24);
  v266 = *(MEMORY[0x1E69DDCE0] + 16);
  v295[0] = *MEMORY[0x1E69DDCE0];
  v268 = v295[0];
  v295[1] = v267;
  v296[0] = v266;
  v296[1] = v265;
  LOBYTE(v297) = 0;
  v125 = OUTLINED_FUNCTION_5_94();
  sub_1E3C2FCB8(v125, v126);
  OUTLINED_FUNCTION_37_26();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v127 = OUTLINED_FUNCTION_15_64();
  v128(v127, 0);

  (v98)(v129);
  v130 = *sub_1E3E5FD88();
  *v292 = v130;
  v131 = sub_1E3755B54();
  v132 = v130;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_49_22();
  OUTLINED_FUNCTION_48_22();
  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_46_22();
  v291 = v270;
  v133 = OUTLINED_FUNCTION_17_57();
  OUTLINED_FUNCTION_27_30(v133, v134);
  v135 = __dst[0];
  v136 = __dst[1];
  v137 = __dst[2];
  *v292 = __dst[0];
  *v293 = __dst[1];
  v294 = __dst[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v138 = OUTLINED_FUNCTION_15_64();
  v139(v138, 21);

  v98();
  OUTLINED_FUNCTION_2_1();
  (*(v140 + 2008))(1);

  OUTLINED_FUNCTION_9_2();
  v142 = *(v141 + 1912);
  v142();
  OUTLINED_FUNCTION_2_1();
  (*(v143 + 1656))();

  (v142)(v144);
  OUTLINED_FUNCTION_2_1();
  v145 = OUTLINED_FUNCTION_15_8();
  v146(v145);

  (v142)(v147);
  OUTLINED_FUNCTION_2_1();
  v148 = OUTLINED_FUNCTION_10_7();
  v149(v148);

  (v142)(v150);
  OUTLINED_FUNCTION_2_1();
  v151 = OUTLINED_FUNCTION_10_7();
  v152(v151);

  (v142)(v153);
  v292[0] = 5;
  LOBYTE(v307) = 5;
  LOBYTE(v304[0]) = 4;
  LOBYTE(v301[0]) = 11;
  sub_1E3C3DE00(&qword_1F5D54AF8);
  LOBYTE(v295[0]) = v298[0];
  sub_1E3C3DE00(&qword_1F5D54AF8);
  sub_1E3C2FCB8(v295, __dst);
  OUTLINED_FUNCTION_2_93();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v154 = OUTLINED_FUNCTION_15_64();
  v155(v154, 54);

  (v142)(v156);
  v292[0] = 21;
  LOBYTE(v307) = 17;
  LOBYTE(v304[0]) = 17;
  LOBYTE(v301[0]) = 25;
  LOBYTE(v298[0]) = 14;
  LOBYTE(v295[0]) = 14;
  v157 = OUTLINED_FUNCTION_5_94();
  sub_1E3C2FCB8(v157, v158);
  OUTLINED_FUNCTION_2_93();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v159 = OUTLINED_FUNCTION_15_64();
  v160(v159, 48);

  (v142)(v161);
  *&v162 = OUTLINED_FUNCTION_45_24();
  *v292 = v162;
  *v293 = v162;
  LOBYTE(v294) = 1;
  OUTLINED_FUNCTION_16_60(0x4010000000000000uLL);
  v301[0] = 0x4018000000000000;
  OUTLINED_FUNCTION_41_26();
  OUTLINED_FUNCTION_30_34(v163);
  v295[0] = v268;
  v295[1] = v267;
  v296[0] = v266;
  v296[1] = v265;
  LOBYTE(v297) = 0;
  v164 = OUTLINED_FUNCTION_5_94();
  sub_1E3C2FCB8(v164, v165);
  OUTLINED_FUNCTION_37_26();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v166 = OUTLINED_FUNCTION_15_64();
  v167(v166, 0);

  (v142)(v168);
  *v292 = *sub_1E3E5FDEC();
  v169 = *v292;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_49_22();
  OUTLINED_FUNCTION_48_22();
  OUTLINED_FUNCTION_47_22();
  OUTLINED_FUNCTION_46_22();
  v291 = v270;
  v170 = OUTLINED_FUNCTION_17_57();
  OUTLINED_FUNCTION_27_30(v170, v171);
  v172 = __dst[0];
  v173 = __dst[1];
  v174 = __dst[2];
  *v292 = __dst[0];
  *v293 = __dst[1];
  v294 = __dst[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v175 = OUTLINED_FUNCTION_15_64();
  v176(v175, 21);

  v142();
  *v292 = 0;
  v307 = *sub_1E3E5FD88();
  v304[0] = v307;
  v301[0] = v307;
  v177 = v307;
  sub_1E3C2FC98();
  v295[0] = v298[0];
  sub_1E3C3DE00(v131);
  v178 = OUTLINED_FUNCTION_17_57();
  sub_1E3C2FCB8(v178, v179);
  v180 = __dst[0];
  v181 = __dst[1];
  v182 = __dst[2];
  *v292 = __dst[0];
  *v293 = __dst[1];
  v294 = __dst[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v183 = OUTLINED_FUNCTION_15_64();
  v184(v183, 29);

  type metadata accessor for RelationalLayout();
  sub_1E4177030();
  sub_1E3952C88();
  nullsub_1(v185, v186);
  sub_1E41776B0(v187, v188, v189, v190);
  OUTLINED_FUNCTION_9_2();
  (*(v191 + 1888))();
  OUTLINED_FUNCTION_2_1();
  v193 = *(v192 + 1424);

  v193(v194);

  sub_1E3A07120();
  OUTLINED_FUNCTION_9_2();
  v196 = (*(v195 + 2008))();
  sub_1E3A0958C();

  OUTLINED_FUNCTION_9_2();
  v198 = *(v197 + 2080);
  v199 = v198();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v200 = *(*v199 + 680);
  v201 = v196;
  v200(v196);

  (v198)(v202);
  OUTLINED_FUNCTION_2_1();
  (*(v203 + 312))(0x3FF0000000000000, 0);

  (v198)(v204);
  sub_1E3952C78();
  OUTLINED_FUNCTION_7_95(v205, v206, v207, v208);
  (*(v209 + 184))(__dst);

  OUTLINED_FUNCTION_9_2();
  (*(v210 + 2104))();
  sub_1E3952C94();
  OUTLINED_FUNCTION_7_95(v211, v212, v213, v214);
  (*(v215 + 160))(__dst);

  sub_1E3A06C60();
  v216 = [objc_opt_self() blackColor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_1E42B2A10;
  *(v217 + 32) = [v216 colorWithAlphaComponent_];
  *(v217 + 40) = [v216 colorWithAlphaComponent_];
  *(v217 + 48) = [v216 colorWithAlphaComponent_];
  *(v217 + 56) = [v216 colorWithAlphaComponent_];
  *(v217 + 64) = [v216 colorWithAlphaComponent_];
  *(v217 + 72) = [v216 colorWithAlphaComponent_];
  sub_1E40C3088();
  OUTLINED_FUNCTION_2_1();
  (*(v218 + 1776))(2);
  OUTLINED_FUNCTION_36();
  (*(v219 + 1728))(0x3FF0000000000000, 0, 0);
  OUTLINED_FUNCTION_36();
  (*(v220 + 1848))(0x403E000000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v221 + 1872))(0x4050400000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v222 + 1800))(v217);
  OUTLINED_FUNCTION_36();
  (*(v223 + 1824))(&unk_1F5D68C00);

  v2[24] = v269;

  OUTLINED_FUNCTION_9_2();
  v225 = *(v224 + 1960);
  v225();
  OUTLINED_FUNCTION_2_1();
  (*(v226 + 1656))();

  (v225)(v227);
  sub_1E3952C78();
  OUTLINED_FUNCTION_7_95(v228, v229, v230, v231);
  (*(v232 + 160))(__dst);

  v234 = (v225)(v233);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v235 = *(*v234 + 680);
  v236 = v216;
  v235(v216);

  v238 = (v225)(v237);
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v239 = *(*v238 + 872);
  v240 = v216;
  v239(v216);

  OUTLINED_FUNCTION_9_2();
  (*(v241 + 2200))();
  OUTLINED_FUNCTION_25_43();
  switch(v242)
  {
    case 1:
      break;
    case 3:
      OUTLINED_FUNCTION_6_77();
      goto LABEL_20;
    default:
LABEL_20:
      OUTLINED_FUNCTION_40_5();
      break;
  }

  v244 = (v225)(v243);
  OUTLINED_FUNCTION_3_0();
  __asm { FMOV            V0.2D, #25.0 }

  *(v244 + 208) = _Q0;
  *(v244 + 224) = _Q0;

  v247 = (v225)(v246);
  OUTLINED_FUNCTION_3_0();
  *(v247 + 201) = 0;

  OUTLINED_FUNCTION_111();
  v249 = (*(v248 + 1888))();
  sub_1E3C37CBC(v249, 23);

  OUTLINED_FUNCTION_9_2();
  v251 = (*(v250 + 1912))();
  sub_1E3C37CBC(v251, 15);

  OUTLINED_FUNCTION_9_2();
  v253 = (*(v252 + 1864))();
  sub_1E3C37CBC(v253, 17);

  OUTLINED_FUNCTION_9_2();
  v255 = (*(v254 + 1936))();
  sub_1E3C37CBC(v255, 39);

  OUTLINED_FUNCTION_9_2();
  v257 = (*(v256 + 1960))();
  sub_1E3C37CBC(v257, 67);

  OUTLINED_FUNCTION_9_2();
  v259 = (*(v258 + 2008))();
  sub_1E3C37CBC(v259, 40);

  OUTLINED_FUNCTION_9_2();
  v261 = (*(v260 + 1984))();
  sub_1E3C37CBC(v261, 96);

  OUTLINED_FUNCTION_9_2();
  v263 = (*(v262 + 2104))();
  sub_1E3C37CBC(v263, 185);
}

void sub_1E3A0958C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v2 += 275;
  v3 = *v2;
  switch((*v2)())
  {
    case 1u:

      v5 = xmmword_1E42B2A20;
      v6 = xmmword_1E42B2A30;
      if (v1)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    case 2u:
      OUTLINED_FUNCTION_13_72();
      goto LABEL_6;
    case 3u:
      OUTLINED_FUNCTION_6_77();
      goto LABEL_6;
    default:
LABEL_6:
      v7 = OUTLINED_FUNCTION_40_5();

      if (v7)
      {
        v8 = -1;
      }

      else
      {
        v8 = 0;
      }

      v9 = vdupq_n_s64(v8);
      v6 = vbslq_s8(v9, xmmword_1E42B2A30, xmmword_1E42B2A40);
      v5 = vbslq_s8(v9, xmmword_1E42B2A20, xmmword_1E42B2A30);
      if (v1)
      {
LABEL_10:
        v35 = xmmword_1E42B29E0;
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v32 = v6;
        v31 = v6.i64[0];
        v33 = v6.i64[0];
        v34 = 0;
        v28 = v5;
        v27 = v5.i64[0];
        v29 = v5.i64[0];
        v30 = 0;
        __asm { FMOV            V0.2D, #18.0 }

        v24 = _Q0;
        v25 = xmmword_1E42B2A50;
        v26 = 0;
        switch((v3)(v4))
        {
          case 2u:

            v16 = 0x4020000000000000;
            break;
          case 3u:
            OUTLINED_FUNCTION_6_77();
            goto LABEL_13;
          default:
LABEL_13:
            v17 = OUTLINED_FUNCTION_38_23();

            v16 = 0x4024000000000000;
            if (v17)
            {
              v16 = 0x4020000000000000;
            }

            break;
        }

        v21 = xmmword_1E42B2A00;
        __dst[30] = v16;
        v22 = 0x4028000000000000;
        v23 = 0;
        (v3)(v15);
        OUTLINED_FUNCTION_25_43();
        switch(v18)
        {
          case 2:

            break;
          default:
            OUTLINED_FUNCTION_38_23();
            OUTLINED_FUNCTION_28_3();
            break;
        }

        type metadata accessor for UIEdgeInsets();
        sub_1E3C2FCB8(&v35, __src);
        memcpy(__dst, __src, 0xE9uLL);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_9_2();
        OUTLINED_FUNCTION_42_31();
        v19();
      }

LABEL_19:
      OUTLINED_FUNCTION_25_2();
      return;
  }
}

uint64_t sub_1E3A098D4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E3A098D0(*a1);
  *a2 = 0;
  return result;
}

void sub_1E3A09908()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_8();
  v0 += 233;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  v2 = OUTLINED_FUNCTION_15_8();
  v3(v2);

  (v1)(v4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_10_7();
  v6(v5);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  v8 = OUTLINED_FUNCTION_10_7();
  v9(v8);

  (v1)(v10);
  v11 = sub_1E3C3DE00(&qword_1F5D54AF8);
  v208 = v182;
  v19 = OUTLINED_FUNCTION_4_96(v11, v12, v13, v14, v15, v16, v17, v18, v159, v170, 11);
  sub_1E3C2FCB8(v19, v20);
  OUTLINED_FUNCTION_11_70();
  OUTLINED_FUNCTION_14();
  v29 = OUTLINED_FUNCTION_4_68(v21, v22, v23, v24, v25, v26, v27, v28, v160, v171, __dst[0]);
  v30(v29, 54);

  v32 = (v1)(v31);
  LOBYTE(v182) = 22;
  v40 = OUTLINED_FUNCTION_4_96(v32, v33, v34, v35, v36, v37, v38, v39, v161, v172, 21);
  OUTLINED_FUNCTION_20_51(v40, v41);
  OUTLINED_FUNCTION_11_70();
  OUTLINED_FUNCTION_14();
  v50 = OUTLINED_FUNCTION_4_68(v42, v43, v44, v45, v46, v47, v48, v49, v162, v173, __dst[0]);
  v51(v50, 48);

  (v1)(v52);
  *&v53 = OUTLINED_FUNCTION_45_24();
  __dst[0] = v53;
  __dst[1] = v53;
  LOBYTE(__dst[2]) = 1;
  v202 = 0x4020000000000000;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v206 = 0;
  v197 = 0x4020000000000000;
  v198 = 0;
  v199 = 0;
  v200 = 0;
  v201 = 0;
  v192 = 0x402C000000000000;
  v193 = 0;
  v194 = 0;
  v195 = 0;
  v196 = 0;
  v187 = 0x4024000000000000;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  v191 = 0;
  v54 = *MEMORY[0x1E69DDCE0];
  v55 = *(MEMORY[0x1E69DDCE0] + 8);
  v57 = *(MEMORY[0x1E69DDCE0] + 16);
  v56 = *(MEMORY[0x1E69DDCE0] + 24);
  v182 = *MEMORY[0x1E69DDCE0];
  v183 = v55;
  v184 = v57;
  v185 = v56;
  v186 = 0;
  type metadata accessor for UIEdgeInsets();
  v59 = v58;
  v67 = OUTLINED_FUNCTION_4_96(v58, v60, v61, v62, v63, v64, v65, v66, v163, v174, __dst[0]);
  OUTLINED_FUNCTION_20_51(v67, v68);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v77 = OUTLINED_FUNCTION_4_68(v69, v70, v71, v72, v73, v74, v75, v76, v164, v175, __dst[0]);
  v78(v77, 0);

  OUTLINED_FUNCTION_9_2();
  v80 = (*(v79 + 2224))();
  if ((v80 & 1) == 0)
  {
    v1();
    *&v81 = OUTLINED_FUNCTION_45_24();
    *(&__dst[0] + 1) = *(&v81 + 1);
    __dst[1] = v81;
    LOBYTE(__dst[2]) = 1;
    v202 = v54;
    v203 = v55;
    v204 = v57;
    v205 = v56;
    v206 = 0;
    v197 = v54;
    v198 = v55;
    v199 = v57;
    v200 = v56;
    v201 = 0;
    v192 = v54;
    v193 = v55;
    v194 = v57;
    v195 = v56;
    v196 = 0;
    v187 = v54;
    v188 = v55;
    v189 = v57;
    v190 = v56;
    v191 = 0;
    v182 = v54;
    v183 = v55;
    v184 = v57;
    v185 = v56;
    v186 = 0;
    v90 = OUTLINED_FUNCTION_4_96(v82, v83, v84, v85, v86, v87, v88, v89, v165, v176, v81);
    OUTLINED_FUNCTION_20_51(v90, v91);
    memcpy(__dst, __src, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v100 = OUTLINED_FUNCTION_4_68(v92, v93, v94, v95, v96, v97, v98, v99, v166, v177, __dst[0]);
    v101(v100, 0);
  }

  v102 = (v1)(v80);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v103 = *(*v102 + 680);
  v104 = v59;
  v103(v59);

  (v1)(v105);
  LOBYTE(__dst[0]) = 11;
  LOBYTE(v202) = 2;
  LOBYTE(v197) = 0;
  LOBYTE(v192) = 0;
  sub_1E3C3DE00(&unk_1F5D999E0);
  v106 = OUTLINED_FUNCTION_52_19();
  HIBYTE(v176) = v208;
  v114 = OUTLINED_FUNCTION_4_96(v106, v107, v108, v109, v110, v111, v112, v113, v165, v176, __dst[0]);
  OUTLINED_FUNCTION_51_19(v114, v115);
  OUTLINED_FUNCTION_11_70();
  OUTLINED_FUNCTION_14();
  v124 = OUTLINED_FUNCTION_4_68(v116, v117, v118, v119, v120, v121, v122, v123, v167, v178, __dst[0]);
  v125(v124, 23);

  (v1)(v126);
  LOBYTE(__dst[0]) = 4;
  LOBYTE(v202) = 1;
  LOBYTE(v197) = 1;
  LOBYTE(v192) = 1;
  sub_1E3C3DE00(&unk_1F5D99950);
  v127 = OUTLINED_FUNCTION_52_19();
  HIBYTE(v179) = v208;
  v135 = OUTLINED_FUNCTION_4_96(v127, v128, v129, v130, v131, v132, v133, v134, v168, v179, __dst[0]);
  OUTLINED_FUNCTION_51_19(v135, v136);
  OUTLINED_FUNCTION_11_70();
  OUTLINED_FUNCTION_14();
  v145 = OUTLINED_FUNCTION_4_68(v137, v138, v139, v140, v141, v142, v143, v144, v169, v180, __dst[0]);
  v146(v145, 22);

  (v1)(v147);
  OUTLINED_FUNCTION_2_1();
  (*(v148 + 1936))(2);

  (v1)(v149);
  OUTLINED_FUNCTION_2_1();
  (*(v150 + 2008))(1);

  v152 = (v1)(v151);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v153 = *(*v152 + 872);
  v154 = &unk_1F5D99950;
  v153(&unk_1F5D99950);

  (v1)(v155);
  OUTLINED_FUNCTION_2_1();
  (*(v156 + 1984))(5);

  (v1)(v157);
  OUTLINED_FUNCTION_2_1();
  (*(v158 + 1936))(2);

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3A0A0B8(double a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1576))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 preferredContentSizeCategory];

    v6 = [objc_opt_self() defaultMetrics];
    sub_1E42067C4();
    a1 = v7;
  }

  return a1;
}

void sub_1E3A0A19C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33_0();
  v10 = sub_1E3A06FE4(v6, v4);
  OUTLINED_FUNCTION_36();
  v12 = (*(v11 + 2224))() & 1;
  (*(*v1 + 2104))();
  v13 = sub_1E39DFD08();

  v14 = (v12 != v10) | v13;
  v15 = sub_1E324FBDC();
  (*(v8 + 16))(v2, v15, v0);
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v12 != v10;
    v19 = swift_slowAlloc();
    *v19 = 67109632;
    *(v19 + 4) = v18;
    *(v19 + 8) = 1024;
    *(v19 + 10) = v13 & 1;
    *(v19 + 14) = 1024;
    *(v19 + 16) = v14 & 1;
    _os_log_impl(&dword_1E323F000, v16, v17, "SportsLockup:: requiresReconfiguration shouldReconfigure:%{BOOL}d,\nshouldScoreboardReconfigure:%{BOOL}d, result:%{BOOL}d)", v19, 0x14u);
    MEMORY[0x1E69143B0](v19, -1, -1);
  }

  (*(v8 + 8))(v2, v0);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3A0A3E8()
{
  result = qword_1ECF30B18;
  if (!qword_1ECF30B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B18);
  }

  return result;
}

unint64_t sub_1E3A0A440()
{
  result = qword_1ECF30B20;
  if (!qword_1ECF30B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30B20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsLockupCellLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}