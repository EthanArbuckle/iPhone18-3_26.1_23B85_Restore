void sub_1E3E84AD0()
{
  OUTLINED_FUNCTION_9_4();
  v1 = v0;
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  if (sub_1E39C408C(67))
  {

    OUTLINED_FUNCTION_8();
    v10 = *(v9 + 152);

    v10(&v35, v11);

    if (v36)
    {
      v16 = OUTLINED_FUNCTION_5_8();
    }

    else
    {
      OUTLINED_FUNCTION_13_3(v12, v13, v14, v15);
    }

    v24 = v16;
    v25 = v17;
    type metadata accessor for ExtrasContextMenuButton(0);
    sub_1E3746E10(v8);
    v26 = sub_1E3B0352C();
    (*(v4 + 8))(v8, v2);

    v27 = OUTLINED_FUNCTION_74();
    sub_1E397F070(v27, v28, v29);
    v33 = v38;
    v34 = v37;
    v30 = v39;
    v31 = (v26 & 1) == 0;
    if (v26)
    {
      v18 = v24;
    }

    else
    {
      v18 = 0.0;
    }

    if (v31)
    {
      v19 = v25;
    }

    else
    {
      v19 = 0;
    }

    v32 = sub_1E4202734();
    v23 = v33;
    v22 = v34;
    v21 = v30;
    v20 = v32;
  }

  else
  {
    v18 = 0.0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  *v1 = v22;
  *(v1 + 16) = v23;
  *(v1 + 32) = v21;
  *(v1 + 40) = v20;
  *(v1 + 48) = v18;
  *(v1 + 56) = v19;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  OUTLINED_FUNCTION_10_3();
}

unint64_t sub_1E3E84CB0()
{
  result = qword_1ECF667C0;
  if (!qword_1ECF667C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF667C0);
  }

  return result;
}

unint64_t sub_1E3E84D04()
{
  result = qword_1ECF667C8;
  if (!qword_1ECF667C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF667C8);
  }

  return result;
}

unint64_t sub_1E3E84D7C()
{
  result = qword_1ECF3AA38;
  if (!qword_1ECF3AA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA30);
    sub_1E3E84E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AA38);
  }

  return result;
}

unint64_t sub_1E3E84E08()
{
  result = qword_1ECF3AA40;
  if (!qword_1ECF3AA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA50);
    sub_1E3743478(&unk_1ECF3AA58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AA40);
  }

  return result;
}

unint64_t sub_1E3E84F24()
{
  result = qword_1ECF3AAB8;
  if (!qword_1ECF3AAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AAA8);
    sub_1E3E81644(&unk_1ECF667D0);
    sub_1E3743478(&qword_1ECF2E7A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AAB8);
  }

  return result;
}

uint64_t sub_1E3E85014@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[1];
  v5 = v3[27];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  v6 = *(type metadata accessor for ExtrasContextMenuButton(0) + 28);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_1E3E850DC()
{
  result = qword_1ECF3AAD0;
  if (!qword_1ECF3AAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AAD8);
    sub_1E3E85198(qword_1EE282150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AAD0);
  }

  return result;
}

unint64_t sub_1E3E85198(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E3E851DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockupList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_22Tm()
{
  OUTLINED_FUNCTION_27_48();
  if (v1)
  {
    return OUTLINED_FUNCTION_41_10();
  }

  OUTLINED_FUNCTION_28_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
  v3 = OUTLINED_FUNCTION_60_4(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_23Tm()
{
  OUTLINED_FUNCTION_55_2();
  if (v1)
  {
    OUTLINED_FUNCTION_58_3();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8);
    v3 = OUTLINED_FUNCTION_20_7(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void sub_1E3E85370()
{
  OUTLINED_FUNCTION_58_32();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StandardExtrasLockupCellLayout();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel();
      if (v2 <= 0x3F)
      {
        sub_1E38D5D68();
        if (v3 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_165();
        }
      }
    }
  }
}

void sub_1E3E85438()
{
  OUTLINED_FUNCTION_58_32();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StandardExtrasLockupCellLayout();
    if (v1 <= 0x3F)
    {
      sub_1E38D5D68();
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

unint64_t sub_1E3E854C0()
{
  result = qword_1ECF3AAF8;
  if (!qword_1ECF3AAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AB00);
    sub_1E3E84CB0();
    sub_1E3E84D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AAF8);
  }

  return result;
}

unint64_t sub_1E3E8554C()
{
  result = qword_1ECF3AB08;
  if (!qword_1ECF3AB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AA20);
    sub_1E3743478(&unk_1ECF3AA60);
    swift_getOpaqueTypeConformance2();
    sub_1E3743478(&unk_1ECF3AB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AB08);
  }

  return result;
}

uint64_t sub_1E3E856D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3E85730(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3E857A8()
{
  result = qword_1ECF3ABD0;
  if (!qword_1ECF3ABD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ABD8);
    sub_1E3E85908(&unk_1ECF3ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ABD0);
  }

  return result;
}

unint64_t sub_1E3E85858()
{
  result = qword_1EE289738;
  if (!qword_1EE289738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32A38);
    sub_1E3E85908(&unk_1EE289740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289738);
  }

  return result;
}

unint64_t sub_1E3E85908(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3E859C4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_32()
{

  return type metadata accessor for ViewModel();
}

uint64_t sub_1E3E85A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v559 = a7;
  v560 = a8;
  LODWORD(v583) = a4;
  v582 = a3;
  v581 = a2;
  v580 = a9;
  sub_1E4202114();
  OUTLINED_FUNCTION_0_10();
  v521 = v14;
  v522 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  v520 = v15;
  v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC10);
  OUTLINED_FUNCTION_0_10();
  v523 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v540 = v18;
  v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v557 = v20;
  v536 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v538 = v22;
  v556 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v539 = v24;
  v579 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v558 = v26;
  v27 = OUTLINED_FUNCTION_138();
  v534 = type metadata accessor for ListTemplateView(v27);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_3();
  v537 = v29;
  v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v553 = v31;
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v532 = v33;
  v552 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  v535 = v35;
  *&v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v555 = v37;
  v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44();
  v565 = v39;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44();
  *&v570 = v41;
  OUTLINED_FUNCTION_138();
  v526 = type metadata accessor for ErrorTemplate();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_3();
  v531 = v43;
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v517 - v45;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v527 = v48;
  v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44();
  v544 = v50;
  v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v549 = v52;
  v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  v530 = v54;
  v551 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_44();
  v533 = v56;
  OUTLINED_FUNCTION_138();
  v528 = type metadata accessor for SearchTemplateView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9_3();
  v519 = v58;
  v576 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AC98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  v578 = v60;
  v571 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44();
  v573 = v62;
  v563 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_44();
  v566 = v64;
  v543 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_44();
  v546 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACB8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v517 - v68;
  v545 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v517 - v71;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_44();
  v550 = v74;
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_44();
  v569 = v76;
  v577 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_44();
  v575 = v78;
  OUTLINED_FUNCTION_138();
  v561 = type metadata accessor for StackTemplateView();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v517 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v517 - v83;
  v85 = sub_1E3E88C70(v581, v582, v583, a5, a1, a6);
  v583 = v86;
  switch(*(a1 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType))
  {
    case 1:

      sub_1E39B45E0(v89, v589);
      v584 = 1;
      v590[0] = *v589;
      v590[1] = *&v589[16];
      v590[2] = *&v589[32];
      *&v590[3] = *&v589[48];
      BYTE8(v590[3]) = 1;
      v90 = OUTLINED_FUNCTION_55_42();
      sub_1E3E89F9C(v90, v91);
      sub_1E3E89870();
      sub_1E3E898C4();
      OUTLINED_FUNCTION_54_36();
      sub_1E4201F44();
      *v587 = OUTLINED_FUNCTION_8_162();
      *&v587[16] = v92;
      *&v587[32] = OUTLINED_FUNCTION_48_40();
      *&v587[41] = *(&v586[2] + 9);
      v585 = 0;
      v587[58] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD28);
      sub_1E3E897E4();
      sub_1E3E89918();
      OUTLINED_FUNCTION_31_65();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      OUTLINED_FUNCTION_30_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_37_62();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v93, v94, v95);
      OUTLINED_FUNCTION_45_55();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_44_48();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v96, v97);
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v98, v99, v100);
      OUTLINED_FUNCTION_36_59();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_16_126();
      sub_1E3E89FF8(v589);
      goto LABEL_32;
    case 2:
    case 0xF:
      OUTLINED_FUNCTION_32_69(v85, v86, v87, v88);
      *&v570 = v396;

      v518 = a6;

      OUTLINED_FUNCTION_64_27();

      OUTLINED_FUNCTION_29_84(v397, v398, v399, v400, v401, v402, v403, v404, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528, v529);
      v405 = OUTLINED_FUNCTION_5_191();
      sub_1E3E8A164(v405, v69, v406);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_271();
      sub_1E3E89B70(v407, v408);
      sub_1E4201F44();
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v409, v410, v411);
      swift_storeEnumTagMultiPayload();
      sub_1E3E89154();
      sub_1E3E89208();
      sub_1E4201F44();
      v412 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v412, v413);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v414, v415, v416);
      swift_storeEnumTagMultiPayload();
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v417, v418);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v419, v420, v421);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      sub_1E4201F44();
      v422 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v422, v423);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v424, v425, v426);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();

      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v427, v428);
      v395 = type metadata accessor for StackTemplateView;
      goto LABEL_28;
    case 6:
      v585 = 0;
      BYTE9(v590[3]) = 0;
      sub_1E3E899A4();
      OUTLINED_FUNCTION_54_36();
      sub_1E4201F44();
      *v587 = OUTLINED_FUNCTION_8_162();
      *&v587[16] = v260;
      *&v587[32] = OUTLINED_FUNCTION_48_40();
      *&v587[42] = *(&v586[2] + 10);
      v589[0] = 1;
      v587[58] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD28);
      sub_1E3E897E4();
      sub_1E3E89918();
      OUTLINED_FUNCTION_31_65();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      OUTLINED_FUNCTION_30_69();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_37_62();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v261, v262, v263);
      OUTLINED_FUNCTION_45_55();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_44_48();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v264, v265);
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v266, v267, v268);
      OUTLINED_FUNCTION_36_59();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_16_126();
      goto LABEL_32;
    case 9:
      v582 = v88;

      sub_1E392A014(v229, v590);
      v230 = v590[1];
      *v46 = v590[0];
      *(v46 + 1) = v230;
      *(v46 + 2) = v590[2];
      *(v46 + 6) = *&v590[3];
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v231, v232, v233);
      v234 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v234);
      OUTLINED_FUNCTION_82();
      sub_1E3E89650(v235, v236, v237, v238);
      OUTLINED_FUNCTION_25_83();
      sub_1E3E89B70(v239, v240);
      v241 = v527;
      OUTLINED_FUNCTION_109_2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v242, v243, v244);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD00);
      sub_1E3E8945C();
      sub_1E3E89568();
      sub_1E4201F44();
      sub_1E325F6F0(v241, &qword_1ECF3AC70);
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v245, v246, v247);
      OUTLINED_FUNCTION_65_28();
      sub_1E3E890C8();
      sub_1E3E893D0();
      OUTLINED_FUNCTION_52_43();
      sub_1E4201F44();
      v248 = OUTLINED_FUNCTION_34_11();
      sub_1E325F6F0(v248, v249);
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v250, v251, v252);
      OUTLINED_FUNCTION_49_50();
      sub_1E3E8903C();
      sub_1E3E896CC();
      sub_1E4201F44();
      v253 = OUTLINED_FUNCTION_109_2();
      sub_1E325F6F0(v253, v254);
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v255, v256, v257);
      OUTLINED_FUNCTION_36_59();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_9_150();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v258, v259);

      goto LABEL_19;
    case 0xA:
      v582 = v88;

      v157 = v531;
      OUTLINED_FUNCTION_60_29();
      sub_1E38DF3F8();
      sub_1E3E8A164(v157, v46, type metadata accessor for ErrorTemplate);
      swift_storeEnumTagMultiPayload();
      v158 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v158);
      OUTLINED_FUNCTION_82();
      sub_1E3E89650(v159, v160, v161, v162);
      OUTLINED_FUNCTION_25_83();
      sub_1E3E89B70(v163, v164);
      OUTLINED_FUNCTION_109_2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v165, v166, v167);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD00);
      sub_1E3E8945C();
      sub_1E3E89568();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v168, v169);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v170, v171, v172);
      OUTLINED_FUNCTION_65_28();
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      v173 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v173, v174);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v175, v176, v177);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_7_193();
      v178 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v178, v179);
      v180 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v180, v181, v182);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();

      v183 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v183, v184);
      v185 = type metadata accessor for ErrorTemplate;
      v186 = v531;
      return sub_1E3E8A1C4(v186, v185);
    case 0xB:

      sub_1E37E1484(v586);
      memcpy(v587, v586, sizeof(v587));
      v589[0] = 0;
      v588 = 0;
      OUTLINED_FUNCTION_46_49();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v199, v200, v201);
      v202 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v202);
      OUTLINED_FUNCTION_23_88();
      OUTLINED_FUNCTION_82();
      sub_1E3E89650(v203, v204, v205, v206);
      sub_1E3E89514();
      OUTLINED_FUNCTION_31_65();
      sub_1E4201F44();
      memcpy(v544, v590, 0x49uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD00);
      sub_1E3E8945C();
      sub_1E3E89568();
      sub_1E4201F44();
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v207, v208, v209);
      OUTLINED_FUNCTION_65_28();
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      v210 = OUTLINED_FUNCTION_34_11();
      sub_1E325F6F0(v210, v211);
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v212, v213, v214);
      OUTLINED_FUNCTION_49_50();
      sub_1E3E8903C();
      sub_1E3E896CC();
      sub_1E4201F44();
      v215 = OUTLINED_FUNCTION_109_2();
      sub_1E325F6F0(v215, v216);
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v217, v218, v219);
      OUTLINED_FUNCTION_36_59();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_17_120();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v220, v221);

LABEL_19:

      v197 = OUTLINED_FUNCTION_34_11();
      return sub_1E325F6F0(v197, v198);
    case 0xD:
      OUTLINED_FUNCTION_32_69(v85, v86, v87, v88);
      v270 = v269;

      v271 = v559;

      OUTLINED_FUNCTION_64_27();

      v272 = v583;

      sub_1E3E6CE4C(a1, a6, v271, v81, a10, v581, v272, v270 & 1, v46, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527);
      v273 = OUTLINED_FUNCTION_5_191();
      sub_1E3E8A164(v273, v532, v274);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_271();
      sub_1E3E89B70(v275, v276);
      OUTLINED_FUNCTION_26_95();
      sub_1E3E89B70(v277, v278);
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v279, v280, v281);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD30);
      sub_1E3E89A84();
      sub_1E3E89BB8();
      OUTLINED_FUNCTION_52_43();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v282, v283);
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v284, v285, v286);
      OUTLINED_FUNCTION_38_52();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_19_119();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v287, v288);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v289, v290, v291);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_7_193();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v292, v293);
      v294 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v294, v295, v296);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();

      v297 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v297, v298);
      OUTLINED_FUNCTION_28_74();
      v186 = v84;
      return sub_1E3E8A1C4(v186, v185);
    case 0xE:
      v582 = v88;

      v299 = sub_1E3F02FF4();
      LOBYTE(v586[0]) = v300 & 1;
      v589[0] = 1;
      *v587 = v299;
      *&v587[8] = v301;
      v587[16] = v300 & 1;
      v588 = 1;
      sub_1E380E99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD08);
      OUTLINED_FUNCTION_23_88();
      OUTLINED_FUNCTION_40_13();
      sub_1E3E89650(v302, v303, v304, v305);
      sub_1E3E89514();
      OUTLINED_FUNCTION_31_65();
      sub_1E4201F44();
      memcpy(v544, v590, 0x49uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD00);
      sub_1E3E8945C();
      sub_1E3E89568();
      OUTLINED_FUNCTION_52_43();
      sub_1E4201F44();
      OUTLINED_FUNCTION_20_104();
      sub_1E3294EE4(v306, v307, v308);
      OUTLINED_FUNCTION_65_28();
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_40_13();
      sub_1E325F6F0(v309, v310);
      OUTLINED_FUNCTION_20_104();
      sub_1E3294EE4(v311, v312, v313);
      OUTLINED_FUNCTION_49_50();
      sub_1E3E8903C();
      sub_1E3E896CC();
      sub_1E4201F44();
      OUTLINED_FUNCTION_40_13();
      sub_1E325F6F0(v314, v315);
      OUTLINED_FUNCTION_20_104();
      sub_1E3294EE4(v316, v317, v318);
      OUTLINED_FUNCTION_36_59();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_17_120();
      sub_1E4201F44();
      OUTLINED_FUNCTION_57();
      sub_1E3264CE0();

      OUTLINED_FUNCTION_40_13();
      return sub_1E325F6F0(v197, v198);
    case 0x10:
      v367 = v88;
      v368 = v85;
      v369 = v87;

      v370 = v559;

      OUTLINED_FUNCTION_64_27();
      v371 = v583;

      v372 = v369 & 1;
      v46 = v519;
      sub_1E38F8CB0(a1, v368, v371, v372, v367, a6, v370, v81, v519);
      sub_1E3E8A164(v46, v530, type metadata accessor for SearchTemplateView);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACF0);
      OUTLINED_FUNCTION_24_91();
      sub_1E3E89B70(v373, v374);
      sub_1E3E892C4();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v375, v376, v377);
      swift_storeEnumTagMultiPayload();
      sub_1E3E89154();
      sub_1E3E89208();
      sub_1E4201F44();
      v378 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v378, v379);
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v380, v381, v382);
      swift_storeEnumTagMultiPayload();
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v383, v384);
      OUTLINED_FUNCTION_43_55();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v385, v386, v387);
      OUTLINED_FUNCTION_49_50();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_21_95();
      sub_1E4201F44();
      v388 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v388, v389);
      OUTLINED_FUNCTION_40_56();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v390, v391, v392);
      OUTLINED_FUNCTION_36_59();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_9_150();
      sub_1E4201F44();

      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v393, v394);
      v395 = type metadata accessor for SearchTemplateView;
LABEL_28:
      v185 = v395;
      v186 = v46;
      return sub_1E3E8A1C4(v186, v185);
    case 0x12:
      v130 = v88;
      v581 = v85;
      v131 = v87;

      v132 = v559;

      v133 = v560;

      v134 = v583;

      v582 = v130;
      sub_1E3E6CE4C(a1, a6, v132, v133, a10, v581, v134, v131 & 1, v130, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526, v527);
      v135 = sub_1E4202764();
      v136 = sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v135)
      {
        v136 = sub_1E4202774();
      }

      v137 = v520;
      sub_1E4202104();
      OUTLINED_FUNCTION_0_271();
      v140 = sub_1E3E89B70(v138, v139);
      v141 = v540;
      v142 = v561;
      MEMORY[0x1E690D880](v136, 0xC034000000000000, 0, v137, v561, v140);
      (*(v521 + 8))(v137, v522);
      OUTLINED_FUNCTION_28_74();
      sub_1E3E8A1C4(v81, v143);
      v144 = v523;
      v145 = v541;
      (*(v523 + 16))(v538, v141, v541);
      swift_storeEnumTagMultiPayload();
      sub_1E3E88EA4();
      *&v590[0] = v142;
      *(&v590[0] + 1) = v140;
      OUTLINED_FUNCTION_27_78();
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v146, v147, v148);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACE8);
      sub_1E3E88DB0();
      sub_1E3E88EF8();
      OUTLINED_FUNCTION_42_59();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      v149 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v149, v150);
      v151 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v151, v152, v153);
      OUTLINED_FUNCTION_63_27();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();

      v154 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v154, v155);
      return (*(v144 + 8))(v540, v145);
    case 0x15:
      v582 = v88;
      v222 = (*(*a1 + 1000))(v85);
      v224 = v223;
      v225 = sub_1E4205F14();
      if (!v224)
      {

        goto LABEL_39;
      }

      if (v222 != v225 || v224 != v226)
      {
        v228 = sub_1E42079A4();

        if (v228)
        {
          goto LABEL_41;
        }

LABEL_39:

        *v587 = sub_1E3915FEC();
        *&v587[8] = v475;
        *&v587[16] = v476;
        *&v587[24] = v477;
        v587[32] = 1;
        goto LABEL_42;
      }

LABEL_41:

      *v587 = sub_1E3A7E5A4(v478);
      *&v587[8] = v479;
      memset(&v587[16], 0, 17);
LABEL_42:
      v480 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v480);
      OUTLINED_FUNCTION_82();
      sub_1E3E89650(v481, v482, v483, v484);
      sub_1E3E8937C();
      OUTLINED_FUNCTION_31_65();
      sub_1E4201F44();
      v485 = v590[1];
      v486 = v590[2];
      v570 = v590[0];
      v567 = v590[1];
      v487 = v530;
      *v530 = v590[0];
      v487[1] = v485;
      *(v487 + 32) = v486;
      swift_storeEnumTagMultiPayload();
      v581 = v570;
      *&v570 = *(&v570 + 1);
      OUTLINED_FUNCTION_50_41();
      OUTLINED_FUNCTION_50_41();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACF0);
      OUTLINED_FUNCTION_24_91();
      sub_1E3E89B70(v488, v489);
      sub_1E3E892C4();
      OUTLINED_FUNCTION_49_5();
      sub_1E4201F44();
      OUTLINED_FUNCTION_49_5();
      sub_1E3294EE4(v490, v491, v492);
      swift_storeEnumTagMultiPayload();
      sub_1E3E89154();
      sub_1E3E89208();
      sub_1E4201F44();
      OUTLINED_FUNCTION_33_4();
      sub_1E325F6F0(v493, v494);
      OUTLINED_FUNCTION_49_5();
      sub_1E3294EE4(v495, v496, v497);
      swift_storeEnumTagMultiPayload();
      sub_1E3E890C8();
      sub_1E3E893D0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_33_4();
      sub_1E325F6F0(v498, v499);
      OUTLINED_FUNCTION_49_5();
      sub_1E3294EE4(v500, v501, v502);
      OUTLINED_FUNCTION_49_50();
      sub_1E3E8903C();
      sub_1E3E896CC();
      sub_1E4201F44();
      OUTLINED_FUNCTION_33_4();
      sub_1E325F6F0(v503, v504);
      OUTLINED_FUNCTION_49_5();
      sub_1E3294EE4(v505, v506, v507);
      OUTLINED_FUNCTION_36_59();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_17_120();
      sub_1E4201F44();
      OUTLINED_FUNCTION_20_104();
      sub_1E3E8A0FC(v508, v509, v510, v511, v486);
      OUTLINED_FUNCTION_20_104();
      sub_1E3E8A0FC(v512, v513, v514, v515, v486);

      OUTLINED_FUNCTION_33_4();
      return sub_1E325F6F0(v197, v198);
    case 0x16:
      OUTLINED_FUNCTION_51_39();

      v189 = nullsub_1(v187, v188);
      v585 = 0;
      *&v590[0] = v189;
      BYTE8(v590[3]) = 0;
      sub_1E3E89870();
      sub_1E3E898C4();

      OUTLINED_FUNCTION_54_36();
      sub_1E4201F44();
      *v587 = OUTLINED_FUNCTION_8_162();
      *&v587[16] = v190;
      *&v587[32] = OUTLINED_FUNCTION_48_40();
      *&v587[41] = *(&v586[2] + 9);
      v589[0] = 0;
      v587[58] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD28);
      sub_1E3E897E4();
      sub_1E3E89918();
      OUTLINED_FUNCTION_31_65();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      v191 = v590[1];
      v192 = v565;
      *v565 = v590[0];
      v192[1] = v191;
      v192[2] = v590[2];
      *(v192 + 43) = *(&v590[2] + 11);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_41_57();
      sub_1E4201F44();
      v193 = OUTLINED_FUNCTION_43_55();
      sub_1E3294EE4(v193, v194, &qword_1ECF3AC60);
      OUTLINED_FUNCTION_45_55();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_21_95();
      sub_1E4201F44();
      sub_1E325F6F0(v72, &qword_1ECF3AC60);
      v195 = OUTLINED_FUNCTION_40_56();
      sub_1E3294EE4(v195, v196, &qword_1ECF3ACD8);
      OUTLINED_FUNCTION_36_59();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_9_150();
      sub_1E4201F44();

      v197 = a10;
      v198 = &qword_1ECF3ACD8;
      return sub_1E325F6F0(v197, v198);
    case 0x17:
      v113 = v88;
      v114 = v85;
      v115 = v87;

      v116 = v583;

      sub_1E41DA798(a1, v114, v116, v115 & 1, v113, v589);
      v590[0] = *v589;
      v590[1] = *&v589[16];
      v590[2] = *&v589[32];
      *(&v590[2] + 9) = *&v589[41];
      v584 = 1;
      BYTE9(v590[3]) = 1;
      v117 = OUTLINED_FUNCTION_55_42();
      sub_1E3E89EEC(v117, v118);
      sub_1E3E899A4();
      OUTLINED_FUNCTION_54_36();
      sub_1E4201F44();
      *v587 = OUTLINED_FUNCTION_8_162();
      *&v587[16] = v119;
      *&v587[32] = OUTLINED_FUNCTION_48_40();
      *&v587[42] = *(&v586[2] + 10);
      v585 = 1;
      v587[58] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD28);
      sub_1E3E897E4();
      sub_1E3E89918();
      OUTLINED_FUNCTION_31_65();
      OUTLINED_FUNCTION_82();
      sub_1E4201F44();
      v120 = v590[1];
      v121 = v565;
      *v565 = v590[0];
      v121[1] = v120;
      v121[2] = v590[2];
      *(v121 + 43) = *(&v590[2] + 11);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_41_57();
      OUTLINED_FUNCTION_37_62();
      OUTLINED_FUNCTION_43_55();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v122, v123, v124);
      OUTLINED_FUNCTION_45_55();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_21_95();
      sub_1E4201F44();
      v125 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v125, v126);
      OUTLINED_FUNCTION_40_56();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v127, v128, v129);
      OUTLINED_FUNCTION_36_59();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_9_150();
      sub_1E4201F44();
      sub_1E3E89F48(v589);

      goto LABEL_33;
    case 0x18:
      v319 = v88;

      v320 = v537;
      OUTLINED_FUNCTION_60_29();
      sub_1E3845C70(v321, v322, v323, v319, v324);
      sub_1E3E8A164(v320, v532, type metadata accessor for ListTemplateView);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_271();
      sub_1E3E89B70(v325, v326);
      OUTLINED_FUNCTION_26_95();
      sub_1E3E89B70(v327, v328);
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v329, v330, v331);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD30);
      sub_1E3E89A84();
      sub_1E3E89BB8();
      OUTLINED_FUNCTION_52_43();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      v332 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v332, v333);
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v334, v335, v336);
      OUTLINED_FUNCTION_38_52();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_41_57();
      sub_1E4201F44();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v337, v338);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v339, v340, v341);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_7_193();
      v342 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v342, v343);
      v344 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v344, v345, v346);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();

      v347 = OUTLINED_FUNCTION_10_13();
      sub_1E325F6F0(v347, v348);
      v185 = type metadata accessor for ListTemplateView;
      v186 = v537;
      return sub_1E3E8A1C4(v186, v185);
    case 0x19:
      OUTLINED_FUNCTION_51_39();

      sub_1E3758D00(v349, v589);
      memcpy(v590, v589, 0x78uLL);
      sub_1E3E89EE4(v590);
      v350 = OUTLINED_FUNCTION_46_49();
      memcpy(v350, v351, 0x92uLL);
      v352 = OUTLINED_FUNCTION_55_42();
      sub_1E375B52C(v352, v353);
      sub_1E3E89C44();
      sub_1E3E89C98();
      sub_1E4201F44();
      OUTLINED_FUNCTION_62_31();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD30);
      sub_1E3E89A84();
      sub_1E3E89BB8();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v354, v355, v356);
      OUTLINED_FUNCTION_38_52();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_19_119();
      v357 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v357, v358);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v359, v360, v361);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_7_193();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v362, v363);
      v364 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v364, v365, v366);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();
      sub_1E375B564(v589);
      goto LABEL_32;
    case 0x1A:
      OUTLINED_FUNCTION_51_39();

      sub_1E403A40C(v449, v589);
      memcpy(v590, v589, 0x91uLL);
      sub_1E3E89E28(v590);
      v450 = OUTLINED_FUNCTION_46_49();
      memcpy(v450, v451, 0x92uLL);
      v452 = OUTLINED_FUNCTION_55_42();
      sub_1E3E89E34(v452, v453);
      sub_1E3E89C44();
      sub_1E3E89C98();
      sub_1E4201F44();
      OUTLINED_FUNCTION_62_31();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD30);
      sub_1E3E89A84();
      sub_1E3E89BB8();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v454, v455, v456);
      OUTLINED_FUNCTION_38_52();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD18);
      sub_1E3E89758();
      sub_1E3E899F8();
      OUTLINED_FUNCTION_19_119();
      v457 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v457, v458);
      OUTLINED_FUNCTION_32_3();
      sub_1E3294EE4(v459, v460, v461);
      OUTLINED_FUNCTION_39_54();
      swift_storeEnumTagMultiPayload();
      sub_1E3E8903C();
      sub_1E3E896CC();
      OUTLINED_FUNCTION_7_193();
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v462, v463);
      v464 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v464, v465, v466);
      OUTLINED_FUNCTION_33_68();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();
      sub_1E3E89E90(v589);
LABEL_32:

LABEL_33:
      OUTLINED_FUNCTION_82();
      return sub_1E325F6F0(v197, v198);
    case 0x1C:

      sub_1E3A27280(v429, v586);
      *v587 = OUTLINED_FUNCTION_8_162();
      *&v587[16] = v430;
      *&v587[32] = OUTLINED_FUNCTION_48_40();
      *&v587[48] = v586[3];
      v589[0] = 0;
      v587[64] = 0;
      OUTLINED_FUNCTION_46_49();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v431, v432, v433);
      OUTLINED_FUNCTION_46_49();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v434, v435, v436);
      v437 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v437);
      OUTLINED_FUNCTION_82();
      sub_1E3E89650(v438, v439, v440, v441);
      OUTLINED_FUNCTION_31_65();
      sub_1E4201F44();
      memcpy(v557, v590, 0x41uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACE8);
      sub_1E3E88DB0();
      sub_1E3E88EF8();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      OUTLINED_FUNCTION_69_0();
      sub_1E3294EE4(v442, v443, v444);
      OUTLINED_FUNCTION_63_27();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_17_120();
      sub_1E4201F44();

      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v445, v446);
      OUTLINED_FUNCTION_82();
      sub_1E325F6F0(v447, v448);
      v197 = OUTLINED_FUNCTION_34_11();
      return sub_1E325F6F0(v197, v198);
    case 0x1D:
      OUTLINED_FUNCTION_51_39();

      sub_1E4190260(v101, v590);
      memcpy(v538, v590, 0x181uLL);
      swift_storeEnumTagMultiPayload();
      sub_1E3E89D78(v590, v587);
      sub_1E3E88EA4();
      OUTLINED_FUNCTION_0_271();
      v104 = sub_1E3E89B70(v102, v103);
      *v587 = v561;
      *&v587[8] = v104;
      OUTLINED_FUNCTION_27_78();
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v105, v106, v107);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACE8);
      sub_1E3E88DB0();
      sub_1E3E88EF8();
      OUTLINED_FUNCTION_42_59();
      OUTLINED_FUNCTION_69_0();
      sub_1E4201F44();
      v108 = OUTLINED_FUNCTION_6_181();
      sub_1E325F6F0(v108, v109);
      v110 = OUTLINED_FUNCTION_1_241();
      sub_1E3294EE4(v110, v111, v112);
      OUTLINED_FUNCTION_63_27();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_3_206();
      sub_1E3E89DD4(v590);

      goto LABEL_36;
    default:
      LOBYTE(v586[0]) = 1;
      v587[64] = 1;
      v467 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v467);
      OUTLINED_FUNCTION_82();
      sub_1E3E89650(v468, v469, v470, v471);
      OUTLINED_FUNCTION_31_65();
      sub_1E4201F44();
      memcpy(v557, v590, 0x41uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ACE8);
      sub_1E3E88DB0();
      sub_1E3E88EF8();
      OUTLINED_FUNCTION_42_59();
      OUTLINED_FUNCTION_18_5();
      sub_1E4201F44();
      OUTLINED_FUNCTION_18_5();
      sub_1E3294EE4(v472, v473, v474);
      OUTLINED_FUNCTION_63_27();
      sub_1E3E88FB0();
      sub_1E3E89CEC();
      OUTLINED_FUNCTION_18_108();
      OUTLINED_FUNCTION_16_126();

LABEL_36:

      v197 = OUTLINED_FUNCTION_10_13();
      return sub_1E325F6F0(v197, v198);
  }
}

uint64_t sub_1E3E88C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a5 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType) == 6)
  {
    (*(*a6 + 328))(1);
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 mediaShowcaseConfig];

    v10 = [v9 navigationBarTransitionDistance];
    v12.n128_f64[0] = v11;
    (*(*a6 + 352))(v10, v12);
  }

  return a1;
}

unint64_t sub_1E3E88DB0()
{
  result = qword_1EE2890A8;
  if (!qword_1EE2890A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC28);
    sub_1E3E88EA4();
    type metadata accessor for StackTemplateView();
    sub_1E3E89B70(qword_1EE279920, type metadata accessor for StackTemplateView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890A8);
  }

  return result;
}

unint64_t sub_1E3E88EA4()
{
  result = qword_1EE273160;
  if (!qword_1EE273160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE273160);
  }

  return result;
}

unint64_t sub_1E3E88EF8()
{
  result = qword_1EE289008;
  if (!qword_1EE289008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACE8);
    sub_1E3E89650(&qword_1EE24DF88, &qword_1ECF3ACE0, &unk_1E42D9080, sub_1E3A28794);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289008);
  }

  return result;
}

unint64_t sub_1E3E88FB0()
{
  result = qword_1EE288AB0;
  if (!qword_1EE288AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACD8);
    sub_1E3E8903C();
    sub_1E3E896CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AB0);
  }

  return result;
}

unint64_t sub_1E3E8903C()
{
  result = qword_1EE288B30;
  if (!qword_1EE288B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACD0);
    sub_1E3E890C8();
    sub_1E3E893D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B30);
  }

  return result;
}

unint64_t sub_1E3E890C8()
{
  result = qword_1EE288CA8;
  if (!qword_1EE288CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACC8);
    sub_1E3E89154();
    sub_1E3E89208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CA8);
  }

  return result;
}

unint64_t sub_1E3E89154()
{
  result = qword_1EE2890E8;
  if (!qword_1EE2890E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACC0);
    sub_1E3E89B70(qword_1EE279920, type metadata accessor for StackTemplateView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890E8);
  }

  return result;
}

unint64_t sub_1E3E89208()
{
  result = qword_1EE2890D0;
  if (!qword_1EE2890D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC90);
    sub_1E3E89B70(qword_1EE276618, type metadata accessor for SearchTemplateView);
    sub_1E3E892C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890D0);
  }

  return result;
}

unint64_t sub_1E3E892C4()
{
  result = qword_1EE289170;
  if (!qword_1EE289170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ACF0);
    sub_1E3E89650(&qword_1EE2846A0, &qword_1ECF3ACF8, &unk_1E42D9098, sub_1E3A89034);
    sub_1E3E8937C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289170);
  }

  return result;
}

unint64_t sub_1E3E8937C()
{
  result = qword_1EE259C78[0];
  if (!qword_1EE259C78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE259C78);
  }

  return result;
}

unint64_t sub_1E3E893D0()
{
  result = qword_1EE288C28;
  if (!qword_1EE288C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC80);
    sub_1E3E8945C();
    sub_1E3E89568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C28);
  }

  return result;
}

unint64_t sub_1E3E8945C()
{
  result = qword_1EE289010;
  if (!qword_1EE289010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD00);
    sub_1E3E89650(&qword_1EE24EBB8, &qword_1ECF3AD08, &unk_1E42D90A8, sub_1E37E6668);
    sub_1E3E89514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289010);
  }

  return result;
}

unint64_t sub_1E3E89514()
{
  result = qword_1EE24D468[0];
  if (!qword_1EE24D468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE24D468);
  }

  return result;
}

unint64_t sub_1E3E89568()
{
  result = qword_1EE2890C0;
  if (!qword_1EE2890C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC70);
    sub_1E3E89650(&qword_1EE274960, &qword_1ECF3AD10, &unk_1E42D90B0, sub_1E392AC84);
    sub_1E3E89B70(qword_1EE284560, type metadata accessor for ErrorTemplate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890C0);
  }

  return result;
}

uint64_t sub_1E3E89650(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3E896CC()
{
  result = qword_1EE288AE8;
  if (!qword_1EE288AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC60);
    sub_1E3E89758();
    sub_1E3E899F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AE8);
  }

  return result;
}

unint64_t sub_1E3E89758()
{
  result = qword_1EE288BF8;
  if (!qword_1EE288BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD18);
    sub_1E3E897E4();
    sub_1E3E89918();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BF8);
  }

  return result;
}

unint64_t sub_1E3E897E4()
{
  result = qword_1EE288FA0;
  if (!qword_1EE288FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD20);
    sub_1E3E89870();
    sub_1E3E898C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288FA0);
  }

  return result;
}

unint64_t sub_1E3E89870()
{
  result = qword_1EE23DDF8;
  if (!qword_1EE23DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23DDF8);
  }

  return result;
}

unint64_t sub_1E3E898C4()
{
  result = qword_1EE25E370;
  if (!qword_1EE25E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE25E370);
  }

  return result;
}

unint64_t sub_1E3E89918()
{
  result = qword_1EE288D58;
  if (!qword_1EE288D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD28);
    sub_1E3E899A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D58);
  }

  return result;
}

unint64_t sub_1E3E899A4()
{
  result = qword_1EE27E318[0];
  if (!qword_1EE27E318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE27E318);
  }

  return result;
}

unint64_t sub_1E3E899F8()
{
  result = qword_1EE288CB0;
  if (!qword_1EE288CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC50);
    sub_1E3E89A84();
    sub_1E3E89BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288CB0);
  }

  return result;
}

unint64_t sub_1E3E89A84()
{
  result = qword_1EE2890F0;
  if (!qword_1EE2890F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC48);
    sub_1E3E89B70(qword_1EE279920, type metadata accessor for StackTemplateView);
    sub_1E3E89B70(qword_1EE27E3A8, type metadata accessor for ListTemplateView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890F0);
  }

  return result;
}

uint64_t sub_1E3E89B70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3E89BB8()
{
  result = qword_1EE2890F8;
  if (!qword_1EE2890F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD30);
    sub_1E3E89C44();
    sub_1E3E89C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2890F8);
  }

  return result;
}

unint64_t sub_1E3E89C44()
{
  result = qword_1EE27AA90;
  if (!qword_1EE27AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27AA90);
  }

  return result;
}

unint64_t sub_1E3E89C98()
{
  result = qword_1EE269D80;
  if (!qword_1EE269D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE269D80);
  }

  return result;
}

unint64_t sub_1E3E89CEC()
{
  result = qword_1EE288C68;
  if (!qword_1EE288C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AC30);
    sub_1E3E88DB0();
    sub_1E3E88EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288C68);
  }

  return result;
}

id sub_1E3E8A04C(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_1E3E8A0BC(a1, a2);
  }
}

id sub_1E3E8A0BC(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

void sub_1E3E8A0FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    sub_1E3BBA468(a1, a2);
  }
}

uint64_t sub_1E3E8A164(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E3E8A1C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3E8A22C()
{
  result = qword_1EE288A50;
  if (!qword_1EE288A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD38);
    sub_1E3E88FB0();
    sub_1E3E89CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288A50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 528) = a1;
  result = a4;
  *(v4 + 536) = a4;
  return result;
}

void *OUTLINED_FUNCTION_62_31()
{
  v2 = *(v0 + 288);

  return memcpy(v2, (v0 + 720), 0x92uLL);
}

unint64_t sub_1E3E8A2F8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22StackTemplateCellCache____lazy_storage___prefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22StackTemplateCellCache____lazy_storage___prefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](14906, 0xE200000000000000);
    v2 = 0xD000000000000018;
    *v1 = 0xD000000000000018;
    v1[1] = 0x80000001E4286B30;
  }

  return v2;
}

uint64_t sub_1E3E8A3D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v87 - v11;
  v13 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = VUISignpostLogObject();
  swift_unknownObjectRetain();
  v94 = v2;
  sub_1E41FFBB4();
  sub_1E4206BA4();
  v20 = VUISignpostLogObject();
  sub_1E41FFBA4();

  v21 = (*(*a1 + 464))();
  v92 = v13;
  if (!v21)
  {
    goto LABEL_38;
  }

  v22 = v21;
  v90 = v15;
  v23 = sub_1E32AE9B0(v21);
  if (!v23)
  {

    v15 = v90;
LABEL_38:
    v75 = sub_1E324FBDC();
    (*(v6 + 16))(v9, v75, v4);
    v76 = v6;

    v77 = sub_1E41FFC94();
    v78 = sub_1E4206814();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v91 = v4;
      v80 = v79;
      v81 = swift_slowAlloc();
      v98 = v81;
      *v80 = 136315138;
      v82 = sub_1E3E8A2F8();
      v84 = v18;
      v85 = sub_1E3270FC8(v82, v83, &v98);

      *(v80 + 4) = v85;
      v18 = v84;
      _os_log_impl(&dword_1E323F000, v77, v78, "%s cleanCacheIfNeeded: template children is empty, ignore it", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v76 + 8))(v9, v91);
    }

    else
    {

      (*(v6 + 8))(v9, v4);
    }

    v74 = v92;
LABEL_42:
    sub_1E4206B94();
    v86 = VUISignpostLogObject();
    sub_1E41FFBA4();

    return (*(v15 + 8))(v18, v74);
  }

  v24 = v23;
  v88 = v12;
  v89 = v6;
  v91 = v4;
  v87 = v18;
  v97 = v22;
  v25 = OBJC_IVAR____TtC8VideosUI22StackTemplateCellCache_viewControllers;
  swift_beginAccess();
  v93 = v25;
  v26 = v97;

  result = sub_1E3E8AC5C(v27);
  v29 = result;
  v30 = 0;
  v31 = v26 & 0xC000000000000001;
  v100 = MEMORY[0x1E69E7CD0];
  v95 = v26 + 32;
  v96 = v26 & 0xFFFFFFFFFFFFFF8;
  v32 = result + 56;
  do
  {
    if (v31)
    {
      result = MEMORY[0x1E6911E60](v30, v26);
      v33 = result;
    }

    else
    {
      if (v30 >= *(v96 + 16))
      {
        goto LABEL_45;
      }

      v33 = *(v95 + 8 * v30);
    }

    if (__OFADD__(v30++, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    v35 = *(v33 + 24);
    if (v35 && *(v29 + 16))
    {
      v36 = *(v33 + 16);
      sub_1E4207B44();

      sub_1E4206014();
      v37 = sub_1E4207BA4();
      v38 = ~(-1 << *(v29 + 32));
      while (1)
      {
        v39 = v37 & v38;
        if (((*(v32 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
        {
          break;
        }

        v40 = (*(v29 + 48) + 16 * v39);
        if (*v40 != v36 || v35 != v40[1])
        {
          v42 = sub_1E42079A4();
          v37 = v39 + 1;
          if ((v42 & 1) == 0)
          {
            continue;
          }
        }

        sub_1E3277398(&v98, v36, v35);

        goto LABEL_21;
      }

LABEL_21:

      v26 = v97;
    }

    else
    {
    }
  }

  while (v30 != v24);

  v43 = sub_1E397015C(v100, v29);

  v44 = sub_1E324FBDC();
  v45 = v89;
  v46 = v88;
  v47 = v91;
  (*(v89 + 16))(v88, v44, v91);

  v48 = sub_1E41FFC94();
  v49 = sub_1E4206814();

  v50 = os_log_type_enabled(v48, v49);
  v96 = v43;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v51 = 136315394;
    v52 = sub_1E3E8A2F8();
    v54 = sub_1E3270FC8(v52, v53, &v98);

    *(v51 + 4) = v54;
    *(v51 + 12) = 2080;
    v55 = sub_1E4206634();
    v57 = sub_1E3270FC8(v55, v56, &v98);

    *(v51 + 14) = v57;
    v43 = v96;
    _os_log_impl(&dword_1E323F000, v48, v49, "%s cleanCacheIfNeeded: removedIds=%s", v51, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  result = (*(v45 + 8))(v46, v47);
  v58 = 0;
  v59 = v43 + 56;
  v60 = 1 << *(v43 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v43 + 56);
  v63 = (v60 + 63) >> 6;
  if (v62)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v64 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v64 >= v63)
    {

      v74 = v92;
      v15 = v90;
      v18 = v87;
      goto LABEL_42;
    }

    v62 = *(v59 + 8 * v64);
    ++v58;
    if (v62)
    {
      v58 = v64;
      do
      {
LABEL_32:
        v65 = (*(v43 + 48) + ((v58 << 10) | (16 * __clz(__rbit64(v62)))));
        v67 = *v65;
        v66 = v65[1];
        swift_beginAccess();

        v68 = sub_1E327D33C(v67, v66);
        if (v69)
        {
          v70 = v68;
          v71 = v93;
          v72 = v94;
          LODWORD(v97) = swift_isUniquelyReferenced_nonNull_native();
          v99 = *(v72 + v71);
          *(v72 + v71) = 0x8000000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD40);
          v43 = v96;
          sub_1E4207644();
          v73 = v99;

          sub_1E38DA110();
          sub_1E4207664();
          *(v72 + v71) = v73;
        }

        v62 &= v62 - 1;
        swift_endAccess();
      }

      while (v62);
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1E3E8AC5C(uint64_t a1)
{
  result = MEMORY[0x1E6910FA0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1E3277398(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3E8ADAC()
{
  v1 = OBJC_IVAR____TtC8VideosUI22StackTemplateCellCache_viewControllers;
  sub_1E38DA110();
  *(v0 + v1) = sub_1E4205CB4();
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI22StackTemplateCellCache____lazy_storage___prefix);
  *v2 = 0;
  v2[1] = 0;

  return sub_1E3B500B4();
}

uint64_t sub_1E3E8AE24()
{
}

uint64_t sub_1E3E8AE70()
{
  v0 = sub_1E3B4FF80();

  return v0;
}

uint64_t sub_1E3E8AEBC()
{
  v0 = sub_1E3E8AE70();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E8AF10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD40);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_1E38DA110();
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

void sub_1E3E8AFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD40);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

uint64_t type metadata accessor for StackTemplateCellCache()
{
  result = qword_1EE299840;
  if (!qword_1EE299840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E8B1CC()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, aVuiMetrics);
  swift_endAccess();
  if (v1)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for Metrics();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E329505C(v6);
    return 0;
  }
}

uint64_t sub_1E3E8B2A4(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(v1, aVuiMetrics, a1, 1);
  swift_endAccess();
}

uint64_t sub_1E3E8B314()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v1 + 528))();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1E3E8B388@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3E8B420(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  if (*(v1 + 24) == v2)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_5_192();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    OUTLINED_FUNCTION_8_90();
    v6();
  }

  return result;
}

void (*sub_1E3E8B504())(void *a1)
{
  v1 = OUTLINED_FUNCTION_33_69();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_31_66(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_70();
  (*(v3 + 528))();

  OUTLINED_FUNCTION_37_63();
  OUTLINED_FUNCTION_0_272();
  v6 = sub_1E3E8C7A8(v4, v5);
  OUTLINED_FUNCTION_22_81(v6);

  *(v0 + 56) = sub_1E385A934();
  return sub_1E3E8B5F4;
}

double sub_1E3E8B620()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v1 + 528))();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t sub_1E3E8B728(double a1)
{
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_5_192();
    *(v5 - 16) = v1;
    *(v5 - 8) = a1;
    OUTLINED_FUNCTION_8_90();
    v6();
  }

  return result;
}

uint64_t sub_1E3E8B814()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

void (*sub_1E3E8B864())(void *a1)
{
  v1 = OUTLINED_FUNCTION_33_69();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_31_66(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_70();
  (*(v3 + 528))();

  OUTLINED_FUNCTION_37_63();
  OUTLINED_FUNCTION_0_272();
  v6 = sub_1E3E8C7A8(v4, v5);
  OUTLINED_FUNCTION_22_81(v6);

  *(v0 + 56) = sub_1E3BA50BC();
  return sub_1E3E8B954;
}

uint64_t sub_1E3E8B960()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v1 + 528))();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 40);
}

uint64_t sub_1E3E8B9D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3E8BA7C(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  if (*(v1 + 40) == v2)
  {
    *(v1 + 40) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_5_192();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    OUTLINED_FUNCTION_8_90();
    v6();
  }

  return result;
}

uint64_t sub_1E3E8BB60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  *(v1 + 40) = v2;
  return result;
}

void (*sub_1E3E8BBB0())(void *a1)
{
  v1 = OUTLINED_FUNCTION_33_69();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_31_66(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_70();
  (*(v3 + 528))();

  OUTLINED_FUNCTION_37_63();
  OUTLINED_FUNCTION_0_272();
  v6 = sub_1E3E8C7A8(v4, v5);
  OUTLINED_FUNCTION_22_81(v6);

  *(v0 + 56) = sub_1E3A0B5A0();
  return sub_1E3E8BCA0;
}

void sub_1E3E8BCAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E41FE904();

  free(v1);
}

uint64_t sub_1E3E8BD40()
{
  sub_1E42074B4();

  strcpy(v7, "Toast=[title: ");
  HIBYTE(v7[1]) = -18;
  if (sub_1E3E8C298())
  {
    sub_1E3C27024();
  }

  MEMORY[0x1E69109E0]();

  MEMORY[0x1E69109E0](0x776F726265796520, 0xEA0000000000203ALL);
  if (sub_1E3E8C0BC())
  {
    sub_1E3C27024();
  }

  MEMORY[0x1E69109E0]();

  v1 = MEMORY[0x1E69109E0](0x6F69746341736920, 0xEF203A656C62616ELL);
  v2 = (*(*v0 + 272))(v1);
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v4, v5);

  MEMORY[0x1E69109E0](93, 0xE100000000000000);
  return v7[0];
}

void *sub_1E3E8BF18()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v1 + 528))();

  v2 = *(v0 + 48);
  sub_1E3E90E80(v2, *(v0 + 56));
  return v2;
}

void *sub_1E3E8BF8C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E3E8BF18();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1E3E8BFBC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  sub_1E3E90E80(*a1, v2);
  return sub_1E3E8C004(v1, v2);
}

uint64_t sub_1E3E8C004(void *a1, char a2)
{
  swift_getKeyPath();
  v7 = v2;
  v8 = a1;
  v9 = a2;
  OUTLINED_FUNCTION_8();
  (*(v5 + 536))();
  sub_1E3E8D2B0(a1, a2);
}

uint64_t sub_1E3E8C0BC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v0 + 528))();
}

uint64_t sub_1E3E8C128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E8C0BC();
  *a1 = result;
  return result;
}

uint64_t sub_1E3E8C180(uint64_t a1)
{

  v4 = sub_1E3E8D174(v3, a1);

  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_23();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_5_192();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_8_90();
    v7();
  }

  else
  {
    *(v1 + 64) = a1;
  }
}

uint64_t sub_1E3E8C298()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v0 + 528))();
}

uint64_t sub_1E3E8C304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E8C298();
  *a1 = result;
  return result;
}

uint64_t sub_1E3E8C35C(uint64_t a1)
{

  v4 = sub_1E3E8D174(v3, a1);

  if (v4)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_23();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_5_192();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_8_90();
    v7();
  }

  else
  {
    *(v1 + 72) = a1;
  }
}

uint64_t sub_1E3E8C474()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_6();
  (*(v0 + 528))();
}

uint64_t sub_1E3E8C4E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E8C474();
  *a1 = result;
  return result;
}

uint64_t sub_1E3E8C538(uint64_t a1)
{
  v2 = v1;
  v4 = v1[10];

  if (v4)
  {
    v12 = v4;
    if (!a1)
    {

      goto LABEL_8;
    }

    v11 = a1;
    type metadata accessor for ImageViewModel();
    sub_1E3E8C7A8(&qword_1EE282FC0, type metadata accessor for ImageViewModel);

    v5 = sub_1E4205E84();
  }

  else
  {
    v5 = a1 == 0;
  }

  if (v5)
  {
    v2[10] = a1;
  }

LABEL_8:
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_23();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = v2;
  v10 = a1;
  (*(*v2 + 536))(v8);
}

uint64_t sub_1E3E8C6D0()
{
  v0 = sub_1E3E8C298();
  v1 = sub_1E3E8C298();
  if (!v0)
  {
    if (!v1)
    {
      v4 = 1;
      return v4 & 1;
    }

    goto LABEL_5;
  }

  if (!v1)
  {
LABEL_5:

    v4 = 0;
    return v4 & 1;
  }

  type metadata accessor for TextViewModel();
  OUTLINED_FUNCTION_18_109();
  sub_1E3E8C7A8(v2, v3);
  v4 = sub_1E4205E84();

  return v4 & 1;
}

uint64_t sub_1E3E8C7A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3E8C7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = swift_allocObject();
  sub_1E3E8C894(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

uint64_t sub_1E3E8C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_44_49();
  v11 = v10;
  v45 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0x4008000000000000;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = -1;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 64) = 0;
  sub_1E41FE924();
  *(v11 + 16) = a10;
  v25 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v25 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    type metadata accessor for TextViewModel();
    v26 = a10[14];

    OUTLINED_FUNCTION_25();
    v31 = sub_1E3C27638(v27, v28, v29, v30, v26);
    sub_1E3E8C35C(v31);
  }

  else
  {
  }

  switch(v16)
  {
    case 1:
      v32 = sub_1E3F52F2C();
      goto LABEL_12;
    case 2:
      if (sub_1E3E8CF6C(v20, v18, 39))
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    case 3:
      v33 = v20;
      sub_1E3E8C004(v20, 1);
      goto LABEL_14;
    default:
      (*(*a10 + 1752))(1);
      v32 = sub_1E3F52F38();
LABEL_12:
      v46 = *v32;
      v48 = v32[1];

      MEMORY[0x1E69109E0](v20, v18);
      v34 = sub_1E3E8CF6C(v46, v48, 39);

      if (v34)
      {
LABEL_13:

        sub_1E3E8C004(v35, 0);
      }

LABEL_14:
      if (v14)
      {
        type metadata accessor for TextViewModel();
        v36 = a10[13];

        OUTLINED_FUNCTION_25();
        v41 = sub_1E3C27638(v37, v38, v39, v40, v36);
        sub_1E3E8C180(v41);
      }

      if (a9)
      {
        v42 = sub_1E3F52F38();
        v47 = *v42;
        v49 = v42[1];

        MEMORY[0x1E69109E0](v45, a9);

        v43 = sub_1E3E8CF6C(v47, v49, 31);

        sub_1E3E8C538(v43);
      }

      sub_1E3E8CB54(v20, v18, v16);

      return v11;
  }
}

void sub_1E3E8CB54(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:

      break;
    case 3:

      break;
    default:
      return;
  }
}

uint64_t sub_1E3E8CB94(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3E8CBE4(a1, a2);
  return v4;
}

uint64_t sub_1E3E8CBE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 32) = 0x4008000000000000;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = -1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 64) = 0;
  sub_1E41FE924();
  *(v2 + 16) = a2;

  v4 = sub_1E3E8CD8C();
  if (v4 && *v4 != _TtC8VideosUI13TextViewModel)
  {

    v4 = 0;
  }

  sub_1E3E8C35C(v4);
  v5 = sub_1E3E8CD8C();
  if (v5 && *v5 != _TtC8VideosUI13TextViewModel)
  {

    v5 = 0;
  }

  sub_1E3E8C180(v5);
  if (sub_1E3E8CD8C())
  {
    type metadata accessor for ImageViewModel();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;

      sub_1E3E8C004(v7, 0);
    }
  }

  v8 = sub_1E3E8CD8C();
  if (v8)
  {
    type metadata accessor for ImageViewModel();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {

      v8 = 0;
    }
  }

  sub_1E3E8C538(v8);

  return v2;
}

uint64_t sub_1E3E8CD8C()
{
  OUTLINED_FUNCTION_44_49();
  v1 = v0;
  OUTLINED_FUNCTION_30();
  v3 = (*(v2 + 488))();
  if (v3)
  {
    v4 = sub_1E373E010(v1, v3);

    if (v4)
    {
      return v4;
    }
  }

  OUTLINED_FUNCTION_8();
  v6 = (*(v5 + 464))();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  result = sub_1E32AE9B0(v6);
  v9 = result;
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      return 0;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v7);
      v4 = result;
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v4 = *(v7 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v15 == v13 && v16 == v14)
    {

LABEL_20:

      return v4;
    }

    v12 = sub_1E42079A4();

    if (v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1E3E8CF6C(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (!sub_1E38504FC())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = sub_1E3C7CCAC(0);
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v8 = sub_1E4205CB4();
  type metadata accessor for ImageViewModel();
  return sub_1E3F5321C(a3, v8, 0);
}

uint64_t sub_1E3E8D054()
{
  OUTLINED_FUNCTION_0_272();
  sub_1E3E8C7A8(v0, v1);
  return sub_1E41FE8F4();
}

uint64_t sub_1E3E8D0C8()
{
  OUTLINED_FUNCTION_0_272();
  sub_1E3E8C7A8(v0, v1);
  return sub_1E41FE8E4();
}

BOOL sub_1E3E8D174(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      type metadata accessor for TextViewModel();
      OUTLINED_FUNCTION_18_109();
      sub_1E3E8C7A8(v2, v3);

      v4 = sub_1E4205E84();
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = a2 == 0;
  }

  return (v4 & 1) == 0;
}

uint64_t sub_1E3E8D22C()
{

  sub_1E3E8D2B0(*(v0 + 48), *(v0 + 56));

  v1 = OBJC_IVAR____TtC8VideosUI10ToastModel___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

void sub_1E3E8D2B0(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1E3E8D2C8(a1, a2 & 1);
  }
}

void sub_1E3E8D2C8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1E3E8D2D4()
{
  sub_1E3E8D22C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3E8D398@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34070);
  v8 = OUTLINED_FUNCTION_6_4(v7, &v97);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v10);
  v87 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v90 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34008);
  OUTLINED_FUNCTION_6_4(v15, &v95);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v18 = type metadata accessor for ToastContent(0);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v22 = (v21 - v20);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD60);
  OUTLINED_FUNCTION_6_4(v23, &v98);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v81 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD68);
  OUTLINED_FUNCTION_17_2(v27);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD70);
  OUTLINED_FUNCTION_6_4(v30, &v99);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v81 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD78);
  OUTLINED_FUNCTION_6_4(v34, &v100);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v81 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD80);
  OUTLINED_FUNCTION_6_4(v38, &v101);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v40);
  *v22 = a1;
  v22[1] = a2;
  v41 = a3;
  v22[2] = a3;
  v42 = *(v19 + 32);
  *(v22 + v42) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v43 = a1[2];
  v44 = *(*v43 + 328);

  v45 = sub_1E37FAED4(a2, v41);
  v44(v45);
  sub_1E4203DA4();
  while (1)
  {
    OUTLINED_FUNCTION_51_3();
    sub_1E42015C4();
    sub_1E3E8F3C4(v22, v26);
    OUTLINED_FUNCTION_141();
    v47 = memcpy(&v26[v46], __src, 0x70uLL);
    v48 = (*(*v43 + 792))(v47);
    v49 = v86;
    sub_1E3E8DC98(v48, v86);
    v50 = sub_1E325F69C(v26, &qword_1ECF3AD60);
    (*(*v43 + 552))(v94, v50);
    v51 = 0.0;
    v52 = 0.0;
    if ((v96 & 1) == 0)
    {
      v52 = sub_1E3952BE8(v94[0], v94[1], v94[2], v95);
    }

    OUTLINED_FUNCTION_141();
    v54 = &v33[v53];
    v55 = *(sub_1E4201534() + 20);
    v56 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v57 + 104))(v54 + v55, v56);
    *v54 = v52;
    v54[1] = v52;
    *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
    v58 = sub_1E329E454(v49, v33, &qword_1ECF3AD68);
    v59 = *(*a1 + 176);
    if ((v59)(v58))
    {
      v51 = 1.0;
    }

    sub_1E329E454(v33, v37, &qword_1ECF3AD70);
    OUTLINED_FUNCTION_141();
    *&v37[v60] = v51;
    v61 = (v59() & 1) != 0 ? 1.0 : 0.75;
    sub_1E4203F64();
    v63 = v62;
    v65 = v64;
    v66 = v91;
    sub_1E329E454(v37, v91, &qword_1ECF3AD78);
    v67 = v66 + *(v92 + 36);
    *v67 = v61;
    *(v67 + 8) = v61;
    *(v67 + 16) = v63;
    *(v67 + 24) = v65;
    v26 = v90;
    a1 = v90 + 104;
    v68 = *(v90 + 13);
    v69 = v88;
    v22 = v87;
    v68(v88, *MEMORY[0x1E697E718], v87);
    v37 = v89;
    v68(v89, *MEMORY[0x1E697E6C8], v22);
    sub_1E3E8C7A8(&qword_1EE289CD0, MEMORY[0x1E697E730]);
    if (sub_1E4205E34())
    {
      break;
    }

    __break(1u);
    sub_1E4206804();
    v80 = sub_1E42026D4();
    sub_1E41FFB84();
  }

  v70 = *(v26 + 4);
  v71 = v82;
  v70(v82, v69, v22);
  v72 = v84;
  v70(v71 + *(v84 + 48), v37, v22);
  v73 = v83;
  sub_1E3E8F428(v71, v83);
  v74 = *(v72 + 48);
  v75 = v81[0];
  v70(v81[0], v73, v22);
  v76 = *(v26 + 1);
  v76(v73 + v74, v22);
  sub_1E3B6C31C(v71, v73);
  v70(v75 + *(v81[1] + 36), v73 + *(v72 + 48), v22);
  v76(v73, v22);
  sub_1E3E8F498();
  OUTLINED_FUNCTION_4_130();
  sub_1E3A1558C(v77, &qword_1ECF34008);
  v78 = v91;
  sub_1E4202FA4();
  sub_1E325F69C(v75, &qword_1ECF34008);
  return sub_1E325F69C(v78, &qword_1ECF3AD80);
}

uint64_t sub_1E3E8DC98@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36[2] = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEC0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v36 - v6;
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEC8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - v9;
  v11 = sub_1E4203AF4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AED0);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v36 - v20;
  if (sub_1E39DFFC8())
  {
    v22 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v23 + 104))(v15, v22);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD60);
    v25 = sub_1E3E8F7A0();
    OUTLINED_FUNCTION_17_121();
    v28 = sub_1E3E8C7A8(v26, v27);
    OUTLINED_FUNCTION_3_24();
    sub_1E3E36744();
    sub_1E3E90E98(v15);
    (*(v18 + 16))(v10, v21, v16);
    swift_storeEnumTagMultiPayload();
    *&v42 = v24;
    *(&v42 + 1) = v11;
    *&v43 = v25;
    *(&v43 + 1) = v28;
    OUTLINED_FUNCTION_16_3();
    swift_getOpaqueTypeConformance2();
    *&v42 = v24;
    *(&v42 + 1) = v25;
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v18 + 8))(v21, v16);
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v44 = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AD60);
    v31 = sub_1E3E8F7A0();
    sub_1E3A6929C(a1, 0, 0, 1, &v42, v30, v31);
    v32 = v37;
    (*(v4 + 16))(v10, v7, v37);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_17_121();
    v35 = sub_1E3E8C7A8(v33, v34);
    v38 = v30;
    v39 = v11;
    v40 = v31;
    v41 = v35;
    OUTLINED_FUNCTION_16_3();
    swift_getOpaqueTypeConformance2();
    v38 = v30;
    v39 = v31;
    OUTLINED_FUNCTION_8_3();
    swift_getOpaqueTypeConformance2();
    sub_1E4201F44();
    return (*(v4 + 8))(v7, v32);
  }
}

uint64_t sub_1E3E8E0C0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ToastContent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E3E8FAEC(v1, &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1E3E8F3C4(&v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6);
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADB8);
  sub_1E3E8FBDC();
  v8 = sub_1E4203964();
  v9 = (*(**v1 + 272))(v8);
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = (v9 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE08);
  v13 = (a1 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_1E37E09AC;
  v13[2] = v11;
  return result;
}

void sub_1E3E8E2AC()
{
  OUTLINED_FUNCTION_44_49();
  v176 = v1;
  v177 = v2;
  v3 = v0;
  v159 = v4;
  v157 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v155 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v165 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v167 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE10);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v136 - v16;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v137 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE18);
  OUTLINED_FUNCTION_6_4(v25, v169);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v136 - v27);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE20);
  OUTLINED_FUNCTION_0_10();
  v144 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE28);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE30);
  v37 = OUTLINED_FUNCTION_17_2(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADF8);
  OUTLINED_FUNCTION_6_4(v40, &v171);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v42);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE38);
  OUTLINED_FUNCTION_0_10();
  v151 = v43;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADF0);
  OUTLINED_FUNCTION_6_4(v46, &v173);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADE0);
  OUTLINED_FUNCTION_6_4(v49, &v174);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v136 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADD0);
  OUTLINED_FUNCTION_6_4(v53, &v175);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v136 - v55;
  v57 = *v0;
  v164 = sub_1E3E8C0BC();
  v163 = sub_1E3E8C298();
  v162 = sub_1E3E8C474();
  v58 = sub_1E3E8C0BC();
  v59 = sub_1E3E8C298();
  v60 = v59;
  if (v58 && (, v61 = sub_1E3C27528(), v59 = , v61))
  {
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_20_2();
    v59 = swift_dynamicCastClass();
    v62 = v59;
    if (!v59)
    {
    }
  }

  else
  {
    v62 = 0;
  }

  v161 = v57;
  v158 = v56;
  v156 = v52;
  if (v60 && (, v63 = sub_1E3C27528(), v59 = , v63))
  {
    type metadata accessor for TextLayout();
    OUTLINED_FUNCTION_20_2();
    v59 = swift_dynamicCastClass();
    v64 = v59;
    if (!v59)
    {
    }

    if (!v62)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v64 = 0;
    if (!v62)
    {
      goto LABEL_14;
    }
  }

  v65 = *(*v62 + 152);

  v65(&v168, v66);

  if ((v169[8] & 1) == 0)
  {
    if (v64)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_14:
  if (v64)
  {
    (*(*v64 + 152))(v170, v59);
LABEL_17:
    v67 = *(*v64 + 152);

    v67(&v172, v68);

    OUTLINED_FUNCTION_39_55();
    goto LABEL_19;
  }

LABEL_18:

LABEL_19:
  v69 = v3;
  if (sub_1E3E8FE7C())
  {
    OUTLINED_FUNCTION_30();
    (*(v70 + 152))(&v172);

    OUTLINED_FUNCTION_39_55();
    if (v72)
    {
      v73 = v71;
    }

    else
    {
      v73 = 0.0;
    }
  }

  else
  {
    v73 = 0.0;
  }

  v74 = v139;
  v75 = 2.0;
  if (sub_1E3E8C0BC())
  {
    if (sub_1E3C27528())
    {
      type metadata accessor for TextLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        v77 = *(v76 + 152);

        v77(&v172, v78);

        OUTLINED_FUNCTION_39_55();
        if (v72)
        {
          v75 = v79;
        }

        else
        {
          v75 = 2.0;
        }

        goto LABEL_32;
      }
    }
  }

LABEL_32:
  v80 = sub_1E4201B84();
  v81 = v166;
  *v166 = v80;
  *(v81 + 1) = v73;
  *(v81 + 16) = 0;
  v82 = sub_1E3E8BF18();
  v84 = v83;
  sub_1E3E8FF88();
  sub_1E3E8D2B0(v82, v84);
  *v28 = sub_1E4201D54();
  v28[1] = v75;
  *(v28 + 16) = 0;
  if (v164)
  {

    OUTLINED_FUNCTION_18();
    v85 = v136;
    sub_1E3F23370();

    v86 = v138;
    (*(v137 + 32))(v74, v85, v138);
    v87 = 0;
  }

  else
  {
    v87 = 1;
    v86 = v138;
  }

  __swift_storeEnumTagSinglePayload(v74, v87, 1, v86);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE40);
  v139 = v166 + *(v88 + 44);
  v89 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE48) + 44);
  *v17 = sub_1E4201B84();
  *(v17 + 1) = 0x4000000000000000;
  v17[16] = 0;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE50);
  sub_1E3E90748(v69, v163, v162, &v17[*(v90 + 44)]);
  v91 = v140;
  sub_1E3294EE4(v74, v140, &qword_1ECF29210);
  v92 = v141;
  sub_1E3294EE4(v17, v141, &qword_1ECF3AE10);
  sub_1E3294EE4(v91, v89, &qword_1ECF29210);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE58);
  sub_1E3294EE4(v92, v89 + *(v93 + 48), &qword_1ECF3AE10);
  sub_1E325F69C(v17, &qword_1ECF3AE10);
  sub_1E325F69C(v74, &qword_1ECF29210);
  sub_1E325F69C(v92, &qword_1ECF3AE10);
  sub_1E325F69C(v91, &qword_1ECF29210);
  v94 = v143;
  *(v28 + *(v143 + 36)) = 256;
  v95 = v148;
  sub_1E4202474();
  v96 = sub_1E3E90C3C();
  v97 = v142;
  sub_1E4203224();
  v98 = *(v167 + 8);
  v167 += 8;
  v141 = v98;
  v98(v95, v165);
  sub_1E325F69C(v28, &qword_1ECF3AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35270);
  v99 = v155;
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1E4297BE0;
  sub_1E4201C74();
  v172 = v100;
  sub_1E3E8C7A8(&qword_1EE289298, MEMORY[0x1E697F5E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35278);
  sub_1E3A1558C(&qword_1EE23B5D8, &qword_1ECF35278);
  v101 = v154;
  v102 = v157;
  sub_1E42072E4();
  v172 = v94;
  v173 = v96;
  swift_getOpaqueTypeConformance2();
  v103 = v147;
  v104 = v146;
  sub_1E4203294();
  (*(v99 + 8))(v101, v102);
  (*(v144 + 8))(v97, v104);
  v105 = v160;
  v106 = v145;
  sub_1E3294EE4(v160, v145, &qword_1ECF3AE30);
  v107 = v149;
  sub_1E3294EE4(v103, v149, &qword_1ECF3AE28);
  v108 = v139;
  sub_1E3294EE4(v106, v139, &qword_1ECF3AE30);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE78);
  sub_1E3294EE4(v107, v108 + *(v109 + 48), &qword_1ECF3AE28);
  sub_1E325F69C(v103, &qword_1ECF3AE28);
  sub_1E325F69C(v105, &qword_1ECF3AE30);
  sub_1E325F69C(v107, &qword_1ECF3AE28);
  sub_1E325F69C(v106, &qword_1ECF3AE30);
  sub_1E4202474();
  sub_1E3A1558C(&qword_1ECF3AE00, &qword_1ECF3ADF8);
  v110 = v150;
  v111 = v166;
  sub_1E4203224();
  v141(v95, v165);
  sub_1E325F69C(v111, &qword_1ECF3ADF8);
  sub_1E4202744();
  v112 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v72)
  {
    v112 = sub_1E4202774();
  }

  sub_1E4200A54();
  v114 = v113;
  v116 = v115;
  v118 = v117;
  v120 = v119;
  v121 = v153;
  (*(v151 + 32))(v153, v110, v152);
  OUTLINED_FUNCTION_141();
  v123 = v121 + v122;
  *v123 = v112;
  *(v123 + 8) = v114;
  *(v123 + 16) = v116;
  *(v123 + 24) = v118;
  *(v123 + 32) = v120;
  *(v123 + 40) = 0;
  sub_1E4202754();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  v124 = v158;
  v125 = v156;
  if (!v72)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E329E454(v121, v125, &qword_1ECF3ADF0);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_32_4(v125 + v126);
  sub_1E4202764();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v72)
  {
    sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v128 = *(v127 + 152);

  v128(v170, v129);

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E329E454(v125, v124, &qword_1ECF3ADE0);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_32_4(v124 + v130);
  sub_1E4202784();
  OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v72)
  {
    sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v132 = *(v131 + 152);

  v132(&v172, v133);

  OUTLINED_FUNCTION_39_55();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v134 = v159;
  sub_1E329E454(v124, v159, &qword_1ECF3ADD0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ADB8);
  OUTLINED_FUNCTION_32_4(v134 + *(v135 + 36));
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3E8F3C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToastContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E8F428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3E8F498()
{
  result = qword_1ECF3AD88;
  if (!qword_1ECF3AD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD80);
    sub_1E3E8F524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AD88);
  }

  return result;
}

unint64_t sub_1E3E8F524()
{
  result = qword_1ECF3AD90;
  if (!qword_1ECF3AD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD78);
    sub_1E3E8F5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AD90);
  }

  return result;
}

unint64_t sub_1E3E8F5B0()
{
  result = qword_1ECF3AD98;
  if (!qword_1ECF3AD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD70);
    sub_1E3E8F668();
    sub_1E3A1558C(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AD98);
  }

  return result;
}

unint64_t sub_1E3E8F668()
{
  result = qword_1ECF3ADA0;
  if (!qword_1ECF3ADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD60);
    sub_1E4203AF4();
    sub_1E3E8F7A0();
    sub_1E3E8C7A8(&qword_1ECF3ADB0, MEMORY[0x1E6981998]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADA0);
  }

  return result;
}

unint64_t sub_1E3E8F7A0()
{
  result = qword_1ECF3ADA8;
  if (!qword_1ECF3ADA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AD60);
    sub_1E3E8F82C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADA8);
  }

  return result;
}

unint64_t sub_1E3E8F82C()
{
  result = qword_1ECF66BA8[0];
  if (!qword_1ECF66BA8[0])
  {
    type metadata accessor for ToastContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF66BA8);
  }

  return result;
}

uint64_t sub_1E3E8F8C0()
{
  result = sub_1E41FE934();
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

uint64_t sub_1E3E8F9AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1E3E8FA34()
{
  type metadata accessor for ToastModel(319);
  if (v0 <= 0x3F)
  {
    sub_1E381ECE4();
    if (v1 <= 0x3F)
    {
      sub_1E38D5D68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E3E8FAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToastContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E8FB50()
{
  v1 = type metadata accessor for ToastContent(0);
  result = OUTLINED_FUNCTION_17_2(v1);
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 8);
  if (v4)
  {
    return v4(result);
  }

  return result;
}

unint64_t sub_1E3E8FBDC()
{
  result = qword_1ECF3ADC0;
  if (!qword_1ECF3ADC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ADB8);
    sub_1E3E8FC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADC0);
  }

  return result;
}

unint64_t sub_1E3E8FC68()
{
  result = qword_1ECF3ADC8;
  if (!qword_1ECF3ADC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ADD0);
    sub_1E3E8FCF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADC8);
  }

  return result;
}

unint64_t sub_1E3E8FCF4()
{
  result = qword_1ECF3ADD8;
  if (!qword_1ECF3ADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ADE0);
    sub_1E3E8FD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADD8);
  }

  return result;
}

unint64_t sub_1E3E8FD80()
{
  result = qword_1ECF3ADE8;
  if (!qword_1ECF3ADE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ADF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ADF8);
    sub_1E3A1558C(&qword_1ECF3AE00, &qword_1ECF3ADF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ADE8);
  }

  return result;
}

uint64_t sub_1E3E8FE7C()
{
  v1 = *v0;
  v2 = sub_1E3E8BF18();
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  if ((v3 & 1) != 0 || !(*(*v2 + 392))(v2))
  {
    goto LABEL_6;
  }

  type metadata accessor for ImageLayout();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

LABEL_6:
    v7 = *(**(v1 + 16) + 1776);

    v6 = v7(v8);
  }

  sub_1E3E8D2B0(v4, v5);
  return v6;
}

void sub_1E3E8FF88()
{
  OUTLINED_FUNCTION_44_49();
  v77 = v0;
  v78 = v1;
  v3 = v2;
  v4 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE88);
  OUTLINED_FUNCTION_0_10();
  v65 = v12;
  v66 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v64 = v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v63 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v67 = v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v70 = v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v69 = v28;
  v29 = sub_1E3E8BF18();
  if (v30 == 0xFF)
  {
    OUTLINED_FUNCTION_20_0();

    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  }

  else
  {
    v31 = v29;
    v62 = v26;
    v32 = v30;
    if (v30)
    {
      v61 = v30;
      sub_1E3E90CF4(v29, 1);
      v60 = v31;
      sub_1E42037B4();
      (*(v6 + 104))(v10, *MEMORY[0x1E6981630], v4);
      v33 = sub_1E4203824();

      (*(v6 + 8))(v10, v4);
      if (sub_1E3E8FE7C())
      {
        OUTLINED_FUNCTION_30();
        (*(v34 + 200))();
      }

      v35 = v64;
      sub_1E4203DA4();
      OUTLINED_FUNCTION_51_3();
      sub_1E42015C4();
      v75[118] = 1;
      memcpy(&v75[6], v76, 0x70uLL);
      v73[0] = v33;
      v73[1] = 0;
      LOWORD(v73[2]) = 1;
      memcpy(&v73[2] + 2, v75, 0x76uLL);
      sub_1E3E8FE7C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEA8);
      sub_1E3E90D00();
      sub_1E39B8C98();

      memcpy(v74, v73, sizeof(v74));
      sub_1E325F69C(v74, &qword_1ECF3AEA8);
      v47 = 4.0;
      if (sub_1E3E8FE7C())
      {
        OUTLINED_FUNCTION_30();
        (*(v48 + 552))(v73);
        v49 = *v73;
        v50 = *&v73[1];
        v51 = *&v73[2];
        v52 = *&v73[3];

        v46 = v62;
        v45 = v69;
        if ((v73[4] & 1) == 0)
        {
          v47 = sub_1E3952BE8(v49, v50, v51, v52);
        }
      }

      else
      {
        v46 = v62;
        v45 = v69;
      }

      v53 = v63;
      v54 = (v63 + *(v72 + 36));
      v55 = *(sub_1E4201534() + 20);
      v56 = *MEMORY[0x1E697F468];
      sub_1E4201C44();
      OUTLINED_FUNCTION_2();
      (*(v57 + 104))(v54 + v55, v56);
      *v54 = v47;
      v54[1] = v47;
      *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
      (*(v65 + 32))(v53, v35, v66);
      v58 = v53;
      v59 = v67;
      sub_1E329E454(v58, v67, &qword_1ECF3AE90);
      sub_1E3294EE4(v59, v70, &qword_1ECF3AE90);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_19_0();
      sub_1E3E90D8C();
      sub_1E4201F44();
      sub_1E3E8D2B0(v60, v61);
      sub_1E325F69C(v59, &qword_1ECF3AE90);
    }

    else
    {
      sub_1E3EB9BB4(v74);
      v41 = v31;
      v42 = sub_1E3E8FE7C();
      v43 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v41, v74, v42, v43 & 1, 0, 0, v25);

      sub_1E375C31C(v74);
      v44 = v71;
      (*(v22 + 16))(v70, v25, v71);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_19_0();
      sub_1E3E90D8C();
      v45 = v69;
      sub_1E4201F44();
      sub_1E3E8D2B0(v41, v32);
      (*(v22 + 8))(v25, v44);
      v46 = v62;
    }

    sub_1E329E454(v45, v3, &qword_1ECF3AEA0);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v46);
    OUTLINED_FUNCTION_20_0();
  }
}

uint64_t sub_1E3E90748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v32 - v27;
  if (a2)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v15 + 32))(v25, v18, v13);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v25, v29, 1, v13);
  sub_1E329E454(v25, v28, &qword_1ECF29210);
  sub_1E3E90A4C(v33, v12);
  sub_1E3294EE4(v28, v22, &qword_1ECF29210);
  sub_1E3294EE4(v12, v9, &qword_1ECF29938);
  sub_1E3294EE4(v22, a4, &qword_1ECF29210);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AE80);
  sub_1E3294EE4(v9, a4 + *(v30 + 48), &qword_1ECF29938);
  sub_1E325F69C(v12, &qword_1ECF29938);
  sub_1E325F69C(v28, &qword_1ECF29210);
  sub_1E325F69C(v9, &qword_1ECF29938);
  return sub_1E325F69C(v22, &qword_1ECF29210);
}

uint64_t sub_1E3E90A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  if (!a1 || (OUTLINED_FUNCTION_8(), !(*(v10 + 392))()))
  {
  }

  type metadata accessor for ImageLayout();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    if (a1)
    {
LABEL_6:

      sub_1E3EB9BB4(v14);
      v12 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(a1, v14, v11, v12 & 1, 0, 0, v9);

      sub_1E375C31C(v14);
      (*(v6 + 32))(a2, v9, v4);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
    }
  }

  else
  {

    if (a1)
    {
      goto LABEL_6;
    }
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

unint64_t sub_1E3E90C3C()
{
  result = qword_1ECF3AE60;
  if (!qword_1ECF3AE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AE18);
    sub_1E3A1558C(&qword_1ECF3AE68, &unk_1ECF3AE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AE60);
  }

  return result;
}

id sub_1E3E90CF4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_1E3E90D00()
{
  result = qword_1ECF3AEB0;
  if (!qword_1ECF3AEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AEA8);
    sub_1E37AE314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AEB0);
  }

  return result;
}

unint64_t sub_1E3E90D8C()
{
  result = qword_1ECF3AEB8;
  if (!qword_1ECF3AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AE90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AEA8);
    sub_1E3E90D00();
    swift_getOpaqueTypeConformance2();
    sub_1E3A1558C(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AEB8);
  }

  return result;
}

id sub_1E3E90E80(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1E3E90CF4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1E3E90E98(uint64_t a1)
{
  v2 = sub_1E4203AF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3E90EF4()
{
  v0 = OUTLINED_FUNCTION_43_56();
  *(v1 + 64) = v0;
}

uint64_t sub_1E3E90F2C()
{
  v0 = OUTLINED_FUNCTION_43_56();
  *(v1 + 80) = v0;
}

void sub_1E3E90F64()
{
  v1 = OUTLINED_FUNCTION_43_56();
  v3 = *(v2 + 48);
  v4 = *(v0 + 32);
  *(v2 + 48) = v1;
  v5 = *(v2 + 56);
  *(v2 + 56) = v4;
  sub_1E3E90E80(v1, v4);
  sub_1E3E8D2B0(v3, v5);
}

uint64_t sub_1E3E90FB4()
{
  v0 = OUTLINED_FUNCTION_43_56();
  *(v1 + 72) = v0;
}

unint64_t sub_1E3E90FEC()
{
  result = qword_1ECF3AED8;
  if (!qword_1ECF3AED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AE08);
    sub_1E3A1558C(&qword_1ECF3AEE0, &unk_1ECF3AEE8);
    sub_1E3A1558C(&qword_1EE288760, &qword_1ECF2A928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AED8);
  }

  return result;
}

unint64_t sub_1E3E910D0()
{
  result = qword_1EE27D1D8[0];
  if (!qword_1EE27D1D8[0])
  {
    type metadata accessor for SearchInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE27D1D8);
  }

  return result;
}

__n128 sub_1E3E91128@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for SearchInteractor();
  sub_1E3E910D0();
  v8 = sub_1E42010C4();
  v10 = v9;
  memcpy(__dst, a3, sizeof(__dst));
  memcpy(&__src[5], a3, 0xB2uLL);
  *v18 = *(a3 + 179);
  sub_1E375C1CC(a3, &v16);
  *a4 = v8;
  *(a4 + 8) = v10;
  memcpy((a4 + 16), __dst, 0xC3uLL);
  memcpy((a4 + 211), __src, 0xB7uLL);
  *(a4 + 394) = 1;
  *(a4 + 395) = *v18;
  *(a4 + 408) = *&v18[13];
  __asm { FMOV            V0.2D, #16.0 }

  *(a4 + 416) = result;
  *(a4 + 432) = a1;
  *(a4 + 440) = a2;
  return result;
}

uint64_t sub_1E3E91228@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  sub_1E4202434();
  OUTLINED_FUNCTION_0_10();
  v50 = v9;
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4201134();
  OUTLINED_FUNCTION_0_10();
  v43 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEF0);
  OUTLINED_FUNCTION_0_10();
  v42 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - v19;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AEF8);
  OUTLINED_FUNCTION_0_10();
  v45 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_26_2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_31_2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF08);
  OUTLINED_FUNCTION_0_10();
  v48 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v47 = &v42 - v27;
  v52 = v1;
  v54 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF10);
  sub_1E3E91880();
  sub_1E4202AE4();
  sub_1E4201124();
  v28 = sub_1E32752B0(&qword_1ECF3AF40, &qword_1ECF3AEF0);
  v29 = MEMORY[0x1E697C0D8];
  sub_1E42035B4();
  (*(v43 + 8))(v15, v11);
  (*(v42 + 8))(v20, v16);
  sub_1E4202734();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_3();
  v55 = v16;
  v56 = v11;
  v57 = v28;
  v58 = v29;
  v30 = v46;
  swift_getOpaqueTypeConformance2();
  v31 = v44;
  sub_1E4202E24();
  (*(v45 + 8))(v2, v31);
  KeyPath = swift_getKeyPath();
  v33 = v3 + *(v23 + 36);
  *v33 = KeyPath;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  sub_1E4201F94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v35 = sub_1E4202704();
  *(inited + 32) = v35;
  v36 = sub_1E42026E4();
  *(inited + 33) = v36;
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v35)
  {
    sub_1E42026F4();
  }

  sub_1E42026F4();
  if (sub_1E42026F4() != v36)
  {
    sub_1E42026F4();
  }

  sub_1E3E92718();
  v37 = v47;
  sub_1E4203084();
  (*(v50 + 8))(v30, v51);
  sub_1E325F6F0(v3, &qword_1ECF3AF00);
  v38 = sub_1E4202744();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v39 = v53;
  (*(v48 + 32))(v53, v37, v49);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF60);
  v41 = v39 + *(result + 36);
  *v41 = v38;
  *(v41 + 8) = v4;
  *(v41 + 16) = v5;
  *(v41 + 24) = v6;
  *(v41 + 32) = v7;
  *(v41 + 40) = 0;
  return result;
}

unint64_t sub_1E3E91880()
{
  result = qword_1ECF3AF18;
  if (!qword_1ECF3AF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF10);
    sub_1E3E91938();
    sub_1E32752B0(&qword_1ECF2D7B8, &qword_1ECF2D7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AF18);
  }

  return result;
}

unint64_t sub_1E3E91938()
{
  result = qword_1ECF3AF20;
  if (!qword_1ECF3AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF28);
    sub_1E32752B0(&qword_1ECF3AF30, &qword_1ECF3AF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AF20);
  }

  return result;
}

void sub_1E3E919E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFF0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  OUTLINED_FUNCTION_4_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFE8);
  OUTLINED_FUNCTION_0_10();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v37 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &a9 - v39;
  sub_1E3E91BE8();
  sub_1E3E91D0C();
  v41 = *(v33 + 16);
  v41(v37, v40, v31);
  sub_1E32D943C(v30, v27);
  v41(v23, v37, v31);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B020);
  sub_1E32D943C(v27, &v23[*(v42 + 48)]);
  sub_1E325F6F0(v30, &qword_1ECF3AFF0);
  v43 = *(v33 + 8);
  v43(v40, v31);
  sub_1E325F6F0(v27, &qword_1ECF3AFF0);
  v43(v37, v31);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E91BE8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 552))();
  result = sub_1E32AE9B0(v1);
  if (!result)
  {
    goto LABEL_5;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v1);
    goto LABEL_5;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:

    MEMORY[0x1EEE9AC00](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF68);
    sub_1E3E92A60();
    sub_1E4203BB4();
  }

  __break(1u);
  return result;
}

void sub_1E3E91D0C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFA0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31_2();
  v10 = (*(**(v0 + 8) + 600))();

  swift_beginAccess();
  v11 = *(v10 + 96);

  if (!v11)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8();
  v13 = (*(v12 + 1040))();
  if (!v13 || (v14 = sub_1E32AE9B0(v13), v15 = , !v14))
  {

LABEL_6:
    v16 = 1;
    goto LABEL_7;
  }

  v17[0] = v17;
  MEMORY[0x1EEE9AC00](v15);
  v17[-2] = v11;
  v17[-1] = v2;
  sub_1E3E92378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFA8);
  sub_1E3E92E18();
  sub_1E3E92F88();
  sub_1E4203B94();

  (*(v8 + 32))(v4, v1, v6);
  v16 = 0;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v4, v16, 1, v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E91F90()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B010);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  *v1 = sub_1E4201B84();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B018) + 44);

  sub_1E404AABC(v10, (v1 + v9));
  sub_1E4200D14();
  sub_1E32752B0(&qword_1ECF3AF90, &qword_1ECF3AF88);
  sub_1E4203074();
  sub_1E3E93278(v1);
  sub_1E4203DA4();
  sub_1E42015C4();
  (*(v7 + 32))(v3, v0, v5);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF80);
  memcpy((v3 + *(v11 + 36)), v12, 0x70uLL);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E92198(uint64_t *a1, uint64_t a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AB98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = *a1;
  if ((*(**a1 + 392))() && (OUTLINED_FUNCTION_8(), (*(v12 + 152))(__dst), (__dst[4] & 1) == 0))
  {
    v16.n128_u64[0] = __dst[3];
    v15.n128_u64[0] = __dst[2];
    v14.n128_u64[0] = __dst[1];
    v13.n128_u64[0] = __dst[0];
    j_nullsub_1(v13, v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_3();
  }

  memcpy(__dst, (a2 + 216), 0xC3uLL);
  sub_1E40EA03C(v11, __dst, 0, 0, v2);
  v17 = sub_1E4202734();
  v18 = v2 + *(v9 + 36);
  *v18 = v17;
  *(v18 + 8) = v3;
  *(v18 + 16) = v4;
  *(v18 + 24) = v5;
  *(v18 + 32) = v6;
  *(v18 + 40) = 0;
  sub_1E4200D14();
  sub_1E37E6E78();
  sub_1E4203074();
  return sub_1E325F6F0(v2, &qword_1ECF2AB98);
}

void sub_1E3E92378()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v37 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CBE0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFC0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v35 - v15;
  *v16 = sub_1E4201D44();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AFF8) + 44)];
  v18 = *(*v1 + 968);
  v35[1] = *v1 + 968;
  v36 = v18;
  v19 = v18();
  sub_1E39E19A0(v19, 0, v12);

  v20 = *(v5 + 16);
  v20(v9, v12, v3);
  v20(v17, v9, v3);
  v21 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B000) + 48)];
  *v21 = 0;
  v21[8] = 1;
  v22 = *(v5 + 8);
  v22(v12, v3);
  v22(v9, v3);
  sub_1E4203DA4();
  v23 = sub_1E4200D94();
  v24 = &v16[*(v13 + 44)];
  v25 = v39;
  *v24 = v38;
  *(v24 + 1) = v25;
  *(v24 + 2) = v40;
  v26 = (v36)(v23);
  if (!v26 || (v27 = (*(*v26 + 392))(), , !v27) || (OUTLINED_FUNCTION_8(), v29 = (*(v28 + 744))(), , !v29))
  {
    v30 = *sub_1E3E60480();
  }

  v31 = sub_1E4203644();
  v32 = sub_1E4202734();
  v33 = v37;
  sub_1E32D9378(v16, v37);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF98) + 36);
  *v34 = v31;
  *(v34 + 8) = v32;
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3E92718()
{
  result = qword_1ECF3AF48;
  if (!qword_1ECF3AF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AEF0);
    sub_1E4201134();
    sub_1E32752B0(&qword_1ECF3AF40, &qword_1ECF3AEF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF3AF50, &qword_1ECF3AF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AF48);
  }

  return result;
}

uint64_t sub_1E3E9289C()
{
  if (!*(v0 + 16))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1040))();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  result = sub_1E32AE9B0(v2);
  if (!result)
  {

    goto LABEL_10;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E6911E60](0, v3);
LABEL_7:

    v7 = (*(*v5 + 872))(v6);

    if (v7)
    {
LABEL_11:
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF80);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v8, &unk_1ECF2C790);
      sub_1E375BEF4();
      sub_1E3E92AE4();
      return sub_1E4203B34();
    }

LABEL_10:

    goto LABEL_11;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3E92A60()
{
  result = qword_1ECF3AF70;
  if (!qword_1ECF3AF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF68);
    sub_1E3E92AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AF70);
  }

  return result;
}

unint64_t sub_1E3E92AE4()
{
  result = qword_1ECF3AF78;
  if (!qword_1ECF3AF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF88);
    sub_1E32752B0(&qword_1ECF3AF90, &qword_1ECF3AF88);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AF78);
  }

  return result;
}

void sub_1E3E92BE0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = *(v0 + 24);
  v2 = (*(**(v0 + 16) + 1040))();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  if (!sub_1E32AE9B0(v2))
  {

    goto LABEL_9;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E6911E60](0, v3);
LABEL_6:

    v6 = (*(*v4 + 872))(v5);

    if (v6)
    {
LABEL_10:
      v11[56] = v6;
      swift_getKeyPath();
      v7 = swift_allocObject();
      memcpy((v7 + 16), v1, 0x1C0uLL);
      sub_1E3E93240(v1, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B008);
      OUTLINED_FUNCTION_14_11();
      sub_1E32752B0(v8, &unk_1ECF2C790);
      sub_1E375BEF4();
      v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AB98);
      v10 = sub_1E37E6E78();
      v11[0] = v9;
      v11[1] = v10;
      swift_getOpaqueTypeConformance2();
      sub_1E4203B34();
      OUTLINED_FUNCTION_25_2();
      return;
    }

LABEL_9:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);

    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_1E3E92E18()
{
  result = qword_1ECF3AFB0;
  if (!qword_1ECF3AFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF98);
    sub_1E3E92ED0();
    sub_1E32752B0(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AFB0);
  }

  return result;
}

unint64_t sub_1E3E92ED0()
{
  result = qword_1ECF3AFB8;
  if (!qword_1ECF3AFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AFC0);
    sub_1E32752B0(&qword_1ECF3AFC8, &qword_1ECF3AFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AFB8);
  }

  return result;
}

unint64_t sub_1E3E92F88()
{
  result = qword_1ECF3AFD8;
  if (!qword_1ECF3AFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AB98);
    sub_1E37E6E78();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AFD8);
  }

  return result;
}

uint64_t sub_1E3E9306C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 448))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3E930AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 440) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 448) = 1;
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

    *(result + 448) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3E93170()
{
  result = qword_1ECF3AFE0;
  if (!qword_1ECF3AFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3AF00);
    sub_1E3E92718();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3AFE0);
  }

  return result;
}

uint64_t sub_1E3E93278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3AF88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3E93310(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SportStatsViewModel();
  OUTLINED_FUNCTION_3_207();
  sub_1E3E95884(v4);

  v5 = sub_1E42010C4();
  if (!a2)
  {
    v6 = (*(*a1 + 392))();
    if (!v6)
    {
LABEL_5:
      type metadata accessor for SportStatsLayout();
      sub_1E3DA3A40();
      goto LABEL_6;
    }

    if (*v6 != _TtC8VideosUI16SportStatsLayout)
    {

      goto LABEL_5;
    }
  }

LABEL_6:
  type metadata accessor for SportStatsLayout();
  OUTLINED_FUNCTION_0_273();
  sub_1E3E95884(v7);
  sub_1E42010C4();

  return v5;
}

uint64_t sub_1E3E93480@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v73 = a1;
  v76 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B030);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v66 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v68 = v6;
  v69 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v66 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B038);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v66 - v11;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B040);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v71 = v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B048);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B050);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B058);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B060);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v66 - v23;
  OUTLINED_FUNCTION_36();
  if ((*(v25 + 888))())
  {
    v78 = 0;
    sub_1E42038E4();
    sub_1E3E94094();
    View.accessibilityIdentifier(key:location:)();

    v26 = sub_1E4203DA4();
    v28 = v27;
    type metadata accessor for SportStatsLayout();
    OUTLINED_FUNCTION_0_273();
    sub_1E3E95884(v29);
    v30 = sub_1E42010C4();
    v31 = &v24[*(v21 + 36)];
    *v31 = v30;
    v31[1] = v32;
    v31[2] = v26;
    v31[3] = v28;
    v33 = &qword_1ECF3B060;
    OUTLINED_FUNCTION_13_148();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    sub_1E3E93FDC();
    sub_1E3E9413C();
    sub_1E4201F44();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    sub_1E3E93F50();
    OUTLINED_FUNCTION_2_206();
    sub_1E3E942CC(v34);
    sub_1E4201F44();
    sub_1E325F69C(v20, &qword_1ECF3B058);
    v35 = v24;
LABEL_9:
    v61 = v33;
    return sub_1E325F69C(v35, v61);
  }

  v66[0] = v16;
  v66[1] = v21;
  v36 = v73;
  v67 = v20;
  OUTLINED_FUNCTION_8();
  if ((*(v37 + 936))())
  {
    OUTLINED_FUNCTION_8();
    v39 = 1;
    if ((*(v38 + 1080))())
    {
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      swift_getOpaqueTypeConformance2();
      v40 = v69;
      View.accessibilityIdentifier(key:location:)();
      (*(v68 + 8))(v9, v40);
      v41 = sub_1E4202734();
      v42 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B098) + 36)];
      *v42 = v41;
      *(v42 + 8) = 0u;
      *(v42 + 24) = 0u;
      v42[40] = 1;

      v43 = sub_1E4203DA4();
      v45 = v44;
      type metadata accessor for SportStatsLayout();
      OUTLINED_FUNCTION_0_273();
      sub_1E3E95884(v46);
      v47 = sub_1E42010C4();
      v49 = v48;

      v51 = v70;
      v50 = v71;
      v52 = &v12[*(v70 + 36)];
      *v52 = v47;
      v52[1] = v49;
      v52[2] = v43;
      v52[3] = v45;
      sub_1E32D94A0();
      v39 = 0;
    }

    else
    {
      v51 = v70;
      v50 = v71;
    }

    __swift_storeEnumTagSinglePayload(v50, v39, 1, v51);
    v62 = v50;
    v33 = &qword_1ECF3B040;
    OUTLINED_FUNCTION_13_148();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    sub_1E3E93FDC();
    sub_1E3E9413C();
    v63 = v67;
    sub_1E4201F44();
    sub_1E378249C();
    swift_storeEnumTagMultiPayload();
    sub_1E3E93F50();
    OUTLINED_FUNCTION_2_206();
    sub_1E3E942CC(v64);
    sub_1E4201F44();
    sub_1E325F69C(v63, &qword_1ECF3B058);
    v35 = v62;
    goto LABEL_9;
  }

  sub_1E3E93CC0(v36, v4);

  v53 = sub_1E4203D84();
  v55 = v54;
  type metadata accessor for SportStatsLayout();
  OUTLINED_FUNCTION_0_273();
  sub_1E3E95884(v56);
  v57 = sub_1E42010C4();
  v58 = &v4[*(v77 + 36)];
  *v58 = v57;
  v58[1] = v59;
  v58[2] = v53;
  v58[3] = v55;
  sub_1E378249C();
  swift_storeEnumTagMultiPayload();
  sub_1E3E93F50();
  OUTLINED_FUNCTION_2_206();
  sub_1E3E942CC(v60);
  sub_1E4201F44();
  v35 = v4;
  v61 = &qword_1ECF3B030;
  return sub_1E325F69C(v35, v61);
}

uint64_t sub_1E3E93CC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B188);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  OUTLINED_FUNCTION_36();
  if ((*(v11 + 1008))())
  {
    OUTLINED_FUNCTION_15_133();
    sub_1E382A9B4(v12, v22, *(a1 + 104), v10);
    v13 = OUTLINED_FUNCTION_18_110();
    v14(v13);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_14_141();
LABEL_5:

    (*(v7 + 8))(v10, v5);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0D0);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v19);
  }

  OUTLINED_FUNCTION_8();
  if ((*(v15 + 984))())
  {
    OUTLINED_FUNCTION_15_133();
    sub_1E382A9B4(v16, v22, *(a1 + 112), v10);
    v17 = OUTLINED_FUNCTION_18_110();
    v18(v17);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_14_141();
    goto LABEL_5;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0D0);

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v21);
}

unint64_t sub_1E3E93F50()
{
  result = qword_1ECF3B068;
  if (!qword_1ECF3B068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B058);
    sub_1E3E93FDC();
    sub_1E3E9413C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B068);
  }

  return result;
}

unint64_t sub_1E3E93FDC()
{
  result = qword_1ECF3B070;
  if (!qword_1ECF3B070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B060);
    sub_1E3E94094();
    swift_getOpaqueTypeConformance2();
    sub_1E3E940E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B070);
  }

  return result;
}

unint64_t sub_1E3E94094()
{
  result = qword_1ECF3B078;
  if (!qword_1ECF3B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B078);
  }

  return result;
}

unint64_t sub_1E3E940E8()
{
  result = qword_1ECF66F20[0];
  if (!qword_1ECF66F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF66F20);
  }

  return result;
}

unint64_t sub_1E3E9413C()
{
  result = qword_1ECF3B080;
  if (!qword_1ECF3B080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B040);
    sub_1E3E942CC(&unk_1ECF3B088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B080);
  }

  return result;
}

unint64_t sub_1E3E941EC()
{
  result = qword_1ECF3B090;
  if (!qword_1ECF3B090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28CB8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B090);
  }

  return result;
}

unint64_t sub_1E3E942CC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    sub_1E3E940E8();
    result = OUTLINED_FUNCTION_16_7();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3E9432C()
{
  result = qword_1ECF3B0A8;
  if (!qword_1ECF3B0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0B0);
    sub_1E3E943B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B0A8);
  }

  return result;
}

unint64_t sub_1E3E943B0()
{
  result = qword_1ECF3B0B8;
  if (!qword_1ECF3B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0C0);
    sub_1E3E94434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B0B8);
  }

  return result;
}

unint64_t sub_1E3E94434()
{
  result = qword_1ECF3B0C8;
  if (!qword_1ECF3B0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B0C8);
  }

  return result;
}

uint64_t sub_1E3E944DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v94 = a4;
  v95 = a3;
  v103 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B138);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v89 - v12;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B140);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v89 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B148);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_17_3(v89 - v26);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B150);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v28);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B158);
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v89 - v32;
  TVAppFeature.isEnabled.getter(10);
  OUTLINED_FUNCTION_8();
  v35 = *(v34 + 176);
  if (v36)
  {
    v35(&v110);
    v93 = a5;
    v92 = v7;
    v91 = v30;
    v90 = v33;
    if (v114)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v39.n128_u64[0] = v112;
      v40.n128_u64[0] = v113;
      v37.n128_u64[0] = v110;
      v38.n128_u64[0] = v111;
      j_nullsub_1(v37, v38, v39, v40);
    }

    OUTLINED_FUNCTION_41_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B160);
    OUTLINED_FUNCTION_2();
    v46 = v102;
    (*(v45 + 16))(v102, v103);
    OUTLINED_FUNCTION_11_148(v46 + *(v21 + 36));
    v48 = *(v47 + 200);
    v49 = v48();
    v51 = v50;
    v52 = v48();
    v54 = v53;
    OUTLINED_FUNCTION_36();
    v56 = *(v55 + 304);
    v103 = v56();
    v58 = v57;
    v59 = v56();
    v61 = *&v49;
    if (v51)
    {
      v61 = -INFINITY;
    }

    v62 = *&v52;
    if (v54)
    {
      v62 = v61;
    }

    if (v61 > v62)
    {
      goto LABEL_17;
    }

    v63 = *&v103;
    if (v58)
    {
      v63 = -INFINITY;
    }

    v64 = *&v59;
    if (v60)
    {
      v64 = v63;
    }

    if (v63 > v64)
    {
LABEL_17:
      v89[3] = v58;
      sub_1E4206804();
      v65 = v20;
      v66 = sub_1E42026D4();
      sub_1E41FFB84();

      v20 = v65;
    }

    sub_1E42015C4();
    v67 = v97;
    sub_1E3782004();
    memcpy((v67 + *(v104 + 36)), __src, 0x70uLL);
    swift_beginAccess();
    v68 = *(a2 + 120);
    v69 = v96;
    sub_1E4201304();
    v70 = sub_1E42012F4();
    if (__swift_getEnumTagSinglePayload(v69, 1, v70) == 1)
    {
      (*(*(v70 - 8) + 104))(v20, *MEMORY[0x1E697E6E0], v70);
      if (__swift_getEnumTagSinglePayload(v69, 1, v70) != 1)
      {
        sub_1E325F69C(v69, &qword_1ECF2A250);
      }
    }

    else
    {
      (*(*(v70 - 8) + 32))(v20, v69, v70);
    }

    sub_1E3E95884(&qword_1EE289CC8);
    result = sub_1E4205E84();
    if (result)
    {
      v80 = sub_1E3E95830(&unk_1ECF3B168);
      OUTLINED_FUNCTION_14_2();
      v82 = sub_1E3743478(v81);
      v83 = v90;
      v84 = v104;
      v85 = v99;
      v86 = v97;
      sub_1E4202FA4();
      sub_1E325F69C(v20, &qword_1ECF2A1F8);
      sub_1E325F69C(v86, &qword_1ECF3B150);
      v87 = v91;
      v88 = v98;
      (*(v91 + 16))(v101, v83, v98);
      swift_storeEnumTagMultiPayload();
      v105 = v84;
      v106 = v85;
      v107 = v80;
      v108 = v82;
      OUTLINED_FUNCTION_8_163();
      sub_1E3E95830(&unk_1ECF3B180);
      sub_1E4201F44();
      return (*(v87 + 8))(v83, v88);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v35(&v110);
    if (v114)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v43.n128_u64[0] = v112;
      v44.n128_u64[0] = v113;
      v41.n128_u64[0] = v110;
      v42.n128_u64[0] = v111;
      j_nullsub_1(v41, v42, v43, v44);
    }

    OUTLINED_FUNCTION_41_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B160);
    OUTLINED_FUNCTION_2();
    (*(v71 + 16))(v24, v103);
    OUTLINED_FUNCTION_11_148(&v24[*(v21 + 36)]);
    (*(v72 + 200))();
    OUTLINED_FUNCTION_36();
    (*(v73 + 304))();
    sub_1E4203DA4();
    sub_1E4200D94();
    sub_1E3782004();
    v74 = &v10[*(v7 + 36)];
    v75 = __src[1];
    *v74 = __src[0];
    *(v74 + 1) = v75;
    *(v74 + 2) = __src[2];
    OUTLINED_FUNCTION_13_148();
    sub_1E3782004();
    sub_1E3E95708(v13, v101);
    swift_storeEnumTagMultiPayload();
    v76 = sub_1E3E95830(&unk_1ECF3B168);
    OUTLINED_FUNCTION_14_2();
    v78 = sub_1E3743478(v77);
    v105 = v104;
    v106 = v99;
    v107 = v76;
    v108 = v78;
    OUTLINED_FUNCTION_8_163();
    sub_1E3E95830(&unk_1ECF3B180);
    sub_1E4201F44();
    return sub_1E325F69C(v13, &qword_1ECF3B138);
  }

  return result;
}

uint64_t sub_1E3E94FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1E4202404();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1C8);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  sub_1E4200CC4();
  sub_1E42023F4();
  sub_1E3743478(&qword_1ECF2E1D0);
  sub_1E3E95884(&unk_1ECF3B0E0);
  sub_1E4202CF4();
  (*(v8 + 8))(v11, v6);
  (*(v14 + 8))(v17, v12);
  v27 = a3;
  v28 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0D8);
  sub_1E42038F4();
  v18 = v26;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0E8) + 36)) = v18;
  sub_1E4203E44();
  v19 = sub_1E4203E04();

  v27 = a3;
  v28 = a1;
  sub_1E42038F4();
  v20 = v26;
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0F0) + 36));
  *v21 = v19;
  v21[1] = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a1;
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B0F8) + 36));
  *v23 = sub_1E3E952E0;
  v23[1] = v22;
  v23[2] = 0;
  v23[3] = 0;
}

unint64_t sub_1E3E95394()
{
  result = qword_1ECF3B100;
  if (!qword_1ECF3B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B108);
    sub_1E3E93F50();
    sub_1E3E942CC(&unk_1ECF3B0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B100);
  }

  return result;
}

unint64_t sub_1E3E9544C()
{
  result = qword_1ECF3B110;
  if (!qword_1ECF3B110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0F8);
    sub_1E3E954D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B110);
  }

  return result;
}

unint64_t sub_1E3E954D8()
{
  result = qword_1ECF3B118;
  if (!qword_1ECF3B118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0F0);
    sub_1E3E95590();
    sub_1E3743478(&unk_1ECF3B128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B118);
  }

  return result;
}

unint64_t sub_1E3E95590()
{
  result = qword_1ECF3B120;
  if (!qword_1ECF3B120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B0E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E1C8);
    sub_1E4202404();
    sub_1E3743478(&qword_1ECF2E1D0);
    sub_1E3E95884(&unk_1ECF3B0E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B120);
  }

  return result;
}

uint64_t sub_1E3E95708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3E95778()
{
  result = qword_1ECF3B170;
  if (!qword_1ECF3B170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B148);
    sub_1E3743478(&unk_1ECF3B178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B170);
  }

  return result;
}

unint64_t sub_1E3E95830(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    sub_1E3E95778();
    result = OUTLINED_FUNCTION_16_7();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3E95884(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3E958C8()
{
  result = qword_1ECF3B190;
  if (!qword_1ECF3B190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3B150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8);
    sub_1E3E95830(&unk_1ECF3B168);
    sub_1E3743478(&qword_1EE23ACD8);
    swift_getOpaqueTypeConformance2();
    sub_1E3E95830(&unk_1ECF3B180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B190);
  }

  return result;
}

size_t sub_1E3E95A6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    OUTLINED_FUNCTION_49_51();
    sub_1E41FDF44();
    v9 = sub_1E39E8924(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1E39E8924(v10 > 1, v11 + 1, 1, v9);
    }

    *(v9 + 16) = v11 + 1;
    (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v3);
    v15 = v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E4297BD0;
  sub_1E41FDF44();
  sub_1E41FDF44();
  v14 = &unk_1F5D8A490;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  sub_1E3924274();
  sub_1E4205DF4();
  sub_1E41FDF44();

  sub_1E3E95CE4(v12);
  return v15;
}

int64_t sub_1E3E95CE4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E3E9793C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1E41FDF74();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1E3E95DE4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v38 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_29_85(v7, v8, v9, v10, v11, v12, v13, v14, v38);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_84();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_54_37();
  OUTLINED_FUNCTION_37_64();

  OUTLINED_FUNCTION_71_3(v1);
  if (v18)
  {
    sub_1E325F748(v1, &qword_1ECF304A8);
    sub_1E41FDDF4();
    v19 = OUTLINED_FUNCTION_32_70();
LABEL_9:
    v37 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_142();
  OUTLINED_FUNCTION_52_44();
  v21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0);
  v22 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v22);
  OUTLINED_FUNCTION_12_139();
  v23 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_44_50(v23, xmmword_1E4299720);
  sub_1E41FDF44();
  OUTLINED_FUNCTION_27_79();
  sub_1E41FDF44();
  v24 = OUTLINED_FUNCTION_47_47();
  sub_1E3E95CE4(v24);
  sub_1E41FDF84();
  OUTLINED_FUNCTION_35_63();
  if (v25)
  {

    sub_1E3E95CE4(v26);
  }

  OUTLINED_FUNCTION_46_50();

  OUTLINED_FUNCTION_45_56();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  if (v18)
  {
    v27 = OUTLINED_FUNCTION_3_208();
    v28(v27);
    sub_1E325F748(v0, &unk_1ECF363C0);
    sub_1E41FDDF4();
    v19 = OUTLINED_FUNCTION_119_2();
    goto LABEL_9;
  }

  v29 = OUTLINED_FUNCTION_1_242();
  v30(v29);
  OUTLINED_FUNCTION_30_71();
  v31 = OUTLINED_FUNCTION_37_4();
  v32(v31);
  OUTLINED_FUNCTION_8_164();
  v33 = OUTLINED_FUNCTION_10_142();
  v34(v33);
  v35 = OUTLINED_FUNCTION_3_208();
  v36(v35);
  sub_1E41FDDF4();
  v19 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v19, v37, 1, v20);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E96184()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_19_120(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v40 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_29_85(v9, v10, v11, v12, v13, v14, v15, v16, v40);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_84();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_15_134("https://amp-api.videos.apple.com");
  OUTLINED_FUNCTION_54_37();
  OUTLINED_FUNCTION_37_64();

  OUTLINED_FUNCTION_71_3(v1);
  if (v20)
  {
    sub_1E325F748(v1, &qword_1ECF304A8);
    sub_1E41FDDF4();
    v21 = OUTLINED_FUNCTION_32_70();
LABEL_9:
    v39 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_142();
  OUTLINED_FUNCTION_52_44();
  v23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0);
  v24 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v24);
  OUTLINED_FUNCTION_12_139();
  v25 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_44_50(v25, xmmword_1E4298AD0);
  sub_1E41FDF44();
  OUTLINED_FUNCTION_27_79();
  sub_1E41FDF44();
  OUTLINED_FUNCTION_18_111();
  OUTLINED_FUNCTION_6_182();
  sub_1E41FDF44();
  v26 = OUTLINED_FUNCTION_47_47();
  sub_1E3E95CE4(v26);
  sub_1E41FDF84();
  OUTLINED_FUNCTION_35_63();
  if (v27)
  {

    sub_1E3E95CE4(v28);
  }

  OUTLINED_FUNCTION_46_50();

  OUTLINED_FUNCTION_45_56();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  if (v20)
  {
    v29 = OUTLINED_FUNCTION_3_208();
    v30(v29);
    sub_1E325F748(v0, &unk_1ECF363C0);
    sub_1E41FDDF4();
    v21 = OUTLINED_FUNCTION_119_2();
    goto LABEL_9;
  }

  v31 = OUTLINED_FUNCTION_1_242();
  v32(v31);
  OUTLINED_FUNCTION_30_71();
  v33 = OUTLINED_FUNCTION_37_4();
  v34(v33);
  OUTLINED_FUNCTION_8_164();
  v35 = OUTLINED_FUNCTION_10_142();
  v36(v35);
  v37 = OUTLINED_FUNCTION_3_208();
  v38(v37);
  sub_1E41FDDF4();
  v21 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v21, v39, 1, v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E96530()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_19_120(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_29_85(v8, v9, v10, v11, v12, v13, v14, v15, v39);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_84();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_15_134("https://amp-api.videos.apple.com");
  OUTLINED_FUNCTION_54_37();
  OUTLINED_FUNCTION_37_64();

  OUTLINED_FUNCTION_71_3(v1);
  if (v19)
  {
    sub_1E325F748(v1, &qword_1ECF304A8);
    sub_1E41FDDF4();
    v20 = OUTLINED_FUNCTION_32_70();
LABEL_9:
    v38 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_142();
  OUTLINED_FUNCTION_52_44();
  v22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0);
  v23 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v23);
  OUTLINED_FUNCTION_12_139();
  v24 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_51_40(v24, xmmword_1E4297BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  sub_1E3924274();
  OUTLINED_FUNCTION_28_75();
  OUTLINED_FUNCTION_7_194();

  OUTLINED_FUNCTION_27_79();
  sub_1E41FDF44();
  OUTLINED_FUNCTION_48_41();
  sub_1E41FDF44();
  v25 = OUTLINED_FUNCTION_47_47();
  sub_1E3E95CE4(v25);
  sub_1E41FDF84();
  OUTLINED_FUNCTION_35_63();
  if (v26)
  {

    sub_1E3E95CE4(v27);
  }

  OUTLINED_FUNCTION_46_50();

  OUTLINED_FUNCTION_45_56();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  if (v19)
  {
    v28 = OUTLINED_FUNCTION_3_208();
    v29(v28);
    sub_1E325F748(v0, &unk_1ECF363C0);
    sub_1E41FDDF4();
    v20 = OUTLINED_FUNCTION_119_2();
    goto LABEL_9;
  }

  v30 = OUTLINED_FUNCTION_1_242();
  v31(v30);
  OUTLINED_FUNCTION_30_71();
  v32 = OUTLINED_FUNCTION_37_4();
  v33(v32);
  OUTLINED_FUNCTION_8_164();
  v34 = OUTLINED_FUNCTION_10_142();
  v35(v34);
  v36 = OUTLINED_FUNCTION_3_208();
  v37(v36);
  sub_1E41FDDF4();
  v20 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v20, v38, 1, v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E9690C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_19_120(v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_84();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_15_134("https://amp-api.videos.apple.com");
  OUTLINED_FUNCTION_54_37();
  OUTLINED_FUNCTION_37_64();

  OUTLINED_FUNCTION_71_3(v1);
  if (v11)
  {
    sub_1E325F748(v1, &qword_1ECF304A8);
    sub_1E41FDDF4();
    v12 = OUTLINED_FUNCTION_32_70();
LABEL_9:
    v30 = 1;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_14_142();
  OUTLINED_FUNCTION_52_44();
  v14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0);
  v15 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v15);
  OUTLINED_FUNCTION_12_139();
  v16 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_51_40(v16, xmmword_1E4298AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  sub_1E3924274();
  OUTLINED_FUNCTION_28_75();
  OUTLINED_FUNCTION_7_194();

  OUTLINED_FUNCTION_27_79();
  sub_1E41FDF44();
  OUTLINED_FUNCTION_18_111();
  OUTLINED_FUNCTION_6_182();
  sub_1E41FDF44();
  v17 = OUTLINED_FUNCTION_47_47();
  sub_1E3E95CE4(v17);
  sub_1E41FDF84();
  OUTLINED_FUNCTION_35_63();
  if (v18)
  {

    sub_1E3E95CE4(v19);
  }

  OUTLINED_FUNCTION_46_50();

  OUTLINED_FUNCTION_45_56();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  if (v11)
  {
    v20 = OUTLINED_FUNCTION_3_208();
    v21(v20);
    sub_1E325F748(v0, &unk_1ECF363C0);
    sub_1E41FDDF4();
    v12 = OUTLINED_FUNCTION_119_2();
    goto LABEL_9;
  }

  v22 = OUTLINED_FUNCTION_1_242();
  v23(v22);
  OUTLINED_FUNCTION_30_71();
  v24 = OUTLINED_FUNCTION_37_4();
  v25(v24);
  OUTLINED_FUNCTION_8_164();
  v26 = OUTLINED_FUNCTION_10_142();
  v27(v26);
  v28 = OUTLINED_FUNCTION_3_208();
  v29(v28);
  sub_1E41FDDF4();
  v12 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v12, v30, 1, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E96CCC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v45 = v5;
  v46 = v6;
  v43[4] = v7;
  v43[5] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v44 = OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  v43[3] = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v43[1] = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v43[2] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v43 - v18;
  v20 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_9();
  if (v2)
  {
    v22 = v2;
  }

  else
  {
    v4 = 0xD00000000000001CLL;
    v22 = 0x80000001E4286C50;
  }

  v48 = 0xD000000000000020;
  v49 = 0x80000001E4286C00;

  MEMORY[0x1E69109E0](v4, v22);

  sub_1E41FDFF4();

  OUTLINED_FUNCTION_71_3(v19);
  if (v23)
  {
    sub_1E325F748(v19, &qword_1ECF304A8);
    sub_1E41FDDF4();
    v24 = OUTLINED_FUNCTION_32_70();
  }

  else
  {
    v26 = OUTLINED_FUNCTION_14_142();
    v27(v26, v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0);
    v28 = OUTLINED_FUNCTION_41_58();
    OUTLINED_FUNCTION_8_0(v28);
    OUTLINED_FUNCTION_12_139();
    *(OUTLINED_FUNCTION_42_60() + 16) = xmmword_1E4297BD0;
    OUTLINED_FUNCTION_40_57();
    sub_1E41FDF44();
    OUTLINED_FUNCTION_26_96();
    OUTLINED_FUNCTION_38_53();
    v29 = OUTLINED_FUNCTION_47_47();
    sub_1E3E95CE4(v29);
    sub_1E41FDF84();
    OUTLINED_FUNCTION_35_63();
    v47 = MEMORY[0x1E69E7CC0];
    if (v30)
    {

      sub_1E3E95CE4(v31);
    }

    OUTLINED_FUNCTION_46_50();

    OUTLINED_FUNCTION_45_56();
    sub_1E41FDFC4();
    if (__swift_getEnumTagSinglePayload(v0, 1, v44) != 1)
    {
      v35 = OUTLINED_FUNCTION_1_242();
      v36(v35);
      OUTLINED_FUNCTION_30_71();
      v37 = OUTLINED_FUNCTION_37_4();
      v38(v37);
      OUTLINED_FUNCTION_8_164();
      v39 = OUTLINED_FUNCTION_10_142();
      v40(v39);
      v41 = OUTLINED_FUNCTION_3_208();
      v42(v41);
      sub_1E41FDDF4();
      v24 = OUTLINED_FUNCTION_11_149();
      goto LABEL_13;
    }

    v32 = OUTLINED_FUNCTION_3_208();
    v33(v32);
    sub_1E325F748(v0, &unk_1ECF363C0);
    sub_1E41FDDF4();
    v24 = OUTLINED_FUNCTION_119_2();
  }

  v34 = 1;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v24, v34, 1, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E970EC()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_43_57(v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_53_40();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_15_134("https://amp-api.videos.apple.com");
  MEMORY[0x1E69109E0](v0, v3);
  sub_1E41FDFF4();

  OUTLINED_FUNCTION_71_3(v2);
  if (v16)
  {
    sub_1E325F748(v2, &qword_1ECF304A8);
    sub_1E41FDDF4();
    v17 = OUTLINED_FUNCTION_32_70();
LABEL_9:
    v36 = 1;
    goto LABEL_10;
  }

  v19 = OUTLINED_FUNCTION_14_142();
  v20(v19, v2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0);
  v21 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v21);
  OUTLINED_FUNCTION_12_139();
  v22 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_51_40(v22, xmmword_1E4298AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  sub_1E3924274();
  OUTLINED_FUNCTION_28_75();
  OUTLINED_FUNCTION_7_194();

  OUTLINED_FUNCTION_50_42();
  sub_1E41FDF44();
  OUTLINED_FUNCTION_18_111();
  OUTLINED_FUNCTION_6_182();
  sub_1E41FDF44();
  v23 = OUTLINED_FUNCTION_47_47();
  sub_1E3E95CE4(v23);
  sub_1E41FDF84();
  OUTLINED_FUNCTION_35_63();
  if (v24)
  {

    sub_1E3E95CE4(v25);
  }

  OUTLINED_FUNCTION_46_50();

  OUTLINED_FUNCTION_45_56();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  if (v16)
  {
    v26 = OUTLINED_FUNCTION_3_208();
    v27(v26);
    sub_1E325F748(v1, &unk_1ECF363C0);
    sub_1E41FDDF4();
    v17 = OUTLINED_FUNCTION_119_2();
    goto LABEL_9;
  }

  v28 = OUTLINED_FUNCTION_1_242();
  v29(v28);
  OUTLINED_FUNCTION_30_71();
  v30 = OUTLINED_FUNCTION_37_4();
  v31(v30);
  OUTLINED_FUNCTION_8_164();
  v32 = OUTLINED_FUNCTION_10_142();
  v33(v32);
  v34 = OUTLINED_FUNCTION_3_208();
  v35(v34);
  sub_1E41FDDF4();
  v17 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v17, v36, 1, v18);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E974C8()
{
  OUTLINED_FUNCTION_31_1();
  v48 = v1;
  v49 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_17_122();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v45 - v18;
  v20 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_40_57();
  sub_1E41FDFF4();
  OUTLINED_FUNCTION_71_3(v19);
  if (v22)
  {
    sub_1E325F748(v19, &qword_1ECF304A8);
    sub_1E41FDDF4();
    v23 = OUTLINED_FUNCTION_119_2();
LABEL_9:
    v44 = 1;
    goto LABEL_10;
  }

  v45[1] = v9;
  v46 = v12;
  v45[0] = v15;
  v47 = v4;
  v25 = OUTLINED_FUNCTION_14_142();
  v26(v25, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0);
  v27 = OUTLINED_FUNCTION_41_58();
  OUTLINED_FUNCTION_8_0(v27);
  OUTLINED_FUNCTION_12_139();
  v28 = OUTLINED_FUNCTION_42_60();
  OUTLINED_FUNCTION_51_40(v28, xmmword_1E4299720);
  v50 = &unk_1F5D8A5B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  sub_1E3924274();
  sub_1E4205DF4();
  OUTLINED_FUNCTION_7_194();

  OUTLINED_FUNCTION_27_79();
  sub_1E41FDF44();
  v51 = v28;
  v29 = sub_1E3E95A6C(v48, v49);
  sub_1E3E95CE4(v29);
  v30 = sub_1E41FDF84();
  v31 = v51;
  v50 = MEMORY[0x1E69E7CC0];
  if (v30)
  {

    sub_1E3E95CE4(v32);
  }

  sub_1E3E95CE4(v31);

  sub_1E41FDF94();
  sub_1E41FDFC4();
  OUTLINED_FUNCTION_5_193();
  v33 = v46;
  if (v22)
  {
    v34 = OUTLINED_FUNCTION_3_208();
    v35(v34);
    sub_1E325F748(v0, &unk_1ECF363C0);
    v24 = sub_1E41FDDF4();
    v23 = v47;
    goto LABEL_9;
  }

  v36 = v45[0];
  v37 = OUTLINED_FUNCTION_1_242();
  v38(v37);
  OUTLINED_FUNCTION_30_71();
  v39(v33, v36, v7);
  sub_1E41FDDB4();
  v40 = OUTLINED_FUNCTION_10_142();
  v41(v40);
  v42 = OUTLINED_FUNCTION_3_208();
  v43(v42);
  sub_1E41FDDF4();
  v23 = OUTLINED_FUNCTION_11_149();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v23, v44, 1, v24);
  OUTLINED_FUNCTION_25_2();
}

size_t sub_1E3E9793C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E39E8924(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_40()
{

  return sub_1E41FE004();
}

uint64_t sub_1E3E979F4()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3E97A40(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x6269726373627573;
  }

  return 0x7263736275736E75;
}

uint64_t sub_1E3E97AB0(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6269726373627573;
    }

    else
    {
      v4 = 0x7263736275736E75;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xEC00000064656269;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6269726373627573;
    }

    else
    {
      v2 = 0x7263736275736E75;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000006465;
    }

    else
    {
      v6 = 0xEC00000064656269;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3E97BE0()
{
  sub_1E4206014();
}

uint64_t sub_1E3E97C80()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3E97D2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3E979F4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3E97D5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E97A40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1E3E97DBC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8VideosUI24JSAppleMusicSubscription_musicSubscriptionStatusController;
  *&v1[v4] = [objc_opt_self() sharedStatusController];
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v10, sel_initWithAppContext_, a1);
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 defaultCenter];
  [v8 addObserver:v7 selector:sel_musicSubscriptionStatusHasChanged name:*MEMORY[0x1E69E41D8] object:0];

  return v7;
}

void sub_1E3E97EAC(void *a1)
{
  v3 = [objc_opt_self() activeAccount];
  v4 = [objc_allocWithZone(MEMORY[0x1E69E4618]) initWithIdentity_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69E44D8]) initWithStoreRequestContext_];
  v6 = *&v1[OBJC_IVAR____TtC8VideosUI24JSAppleMusicSubscription_musicSubscriptionStatusController];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v1;
  v11[4] = sub_1E3E9920C;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E39FE2F0;
  v11[3] = &block_descriptor_26_1;
  v8 = _Block_copy(v11);
  v9 = a1;
  v10 = v1;

  [v6 performSubscriptionStatusRequest:v5 withStatusHandler:v8];
  _Block_release(v8);
}

uint64_t sub_1E3E98080(void *a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v33 - v13;
  if (a1)
  {
    v15 = [a1 subscriptionStatus];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 statusType];

      if (v17 == 1)
      {
        v18 = 0x6269726373627573;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_4_32();
        v19(v14);
        v20 = sub_1E41FFC94();
        v21 = sub_1E4206814();
        if (!OUTLINED_FUNCTION_72_1(v21))
        {
LABEL_13:
          v7 = v14;
          goto LABEL_14;
        }

        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_8_165(&dword_1E323F000, v22, v7, "AppleMusicSubscriptionInterface: Subscribed");
LABEL_12:
        OUTLINED_FUNCTION_6_0();
        goto LABEL_13;
      }
    }

    v23 = [a1 subscriptionStatus];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 statusType];

      if (v25 == 2)
      {
        v18 = 0x7263736275736E75;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_4_32();
        v26(v10);
        v20 = sub_1E41FFC94();
        v27 = sub_1E4206814();
        if (!OUTLINED_FUNCTION_72_1(v27))
        {
          v7 = v10;
          goto LABEL_14;
        }

        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_8_165(&dword_1E323F000, v28, v7, "AppleMusicSubscriptionInterface: Not subscribed");
        v14 = v10;
        goto LABEL_12;
      }
    }
  }

  v18 = 0x6E776F6E6B6E75;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_4_32();
  v29(v7);
  v20 = sub_1E41FFC94();
  v30 = sub_1E4206814();
  if (os_log_type_enabled(v20, v30))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_8_165(&dword_1E323F000, v31, v30, "AppleMusicSubscriptionInterface: Status unknown");
    v14 = v7;
    goto LABEL_12;
  }

LABEL_14:

  (*(v4 + 8))(v7, v1);
  return v18;
}

void sub_1E3E9838C(void *a1, uint64_t a2, void *a3)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E4297BE0;
    *(v11 + 56) = MEMORY[0x1E69E6370];
    *(v11 + 32) = 1;
    v12 = sub_1E394E11C(v11, a3);
  }

  else
  {
    v13 = sub_1E3E98080(a1);
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1E4297BD0;
    v17 = MEMORY[0x1E69E6370];
    *(v16 + 32) = 0;
    *(v16 + 88) = MEMORY[0x1E69E6158];
    *(v16 + 56) = v17;
    *(v16 + 64) = v13;
    *(v16 + 72) = v15;
    *(v16 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34558);
    if (a1)
    {
      v18 = [a1 subscriptionStatus];
      a1 = v18;
      if (v18)
      {
        v19 = [v18 responseDictionary];

        a1 = sub_1E4205C64();
      }
    }

    *(v16 + 96) = a1;

    sub_1E324FBDC();
    v20 = OUTLINED_FUNCTION_43_0();
    v21(v20);
    v22 = sub_1E41FFC94();
    v23 = sub_1E4206814();
    if (os_log_type_enabled(v22, v23))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_14_143(&dword_1E323F000, v24, v25, "AppleMusicSubscriptionInterface: Succesfully refreshed subscription status");
      OUTLINED_FUNCTION_6_0();
    }

    (*(v9 + 8))(v4, v3);
  }
}

void sub_1E3E98620()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = aBlock - v1;
  if (TVAppFeature.isEnabled.getter(12))
  {
    v3 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    sub_1E376FE58(0, 0, v2, &unk_1E42D9D60, v4);
  }

  else
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E3E99138;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E39CF930;
    aBlock[3] = &block_descriptor_128;
    v7 = _Block_copy(aBlock);

    [v5 fetchConfigurationWithOptions:0 cachePolicy:0 queryParameters:0 completion:v7];

    _Block_release(v7);
  }
}

uint64_t sub_1E3E987E8()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FFCB4();
  v0[4] = v1;
  v0[5] = *(v1 - 8);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E3E988AC, 0, 0);
}

uint64_t sub_1E3E988AC()
{
  v1 = type metadata accessor for VUIUTSNetworkManagerProxy();
  v2 = OUTLINED_FUNCTION_18();
  v5 = (*(v1 + 96) + **(v1 + 96));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1E3E989D0;

  return v5(v2 & 1);
}

uint64_t sub_1E3E989D0()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    v7 = sub_1E3E98BE4;
  }

  else
  {

    v7 = sub_1E3E98ADC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3E98ADC()
{
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_43_0();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  v6 = OUTLINED_FUNCTION_72_1(v5);
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  if (v6)
  {
    v10 = OUTLINED_FUNCTION_125_0();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v4, v1, "AppleMusicSubscriptionInterface: Refreshed configuration after a subscription status change", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v9 + 8))(v7, v8);

  OUTLINED_FUNCTION_54();

  return v11();
}

uint64_t sub_1E3E98BE4()
{
  *(v0 + 16) = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  sub_1E3E991C8();
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v0 + 24);
    sub_1E324FBDC();
    v3 = OUTLINED_FUNCTION_43_0();
    v4(v3);
    v5 = v2;
    v6 = sub_1E41FFC94();
    v7 = sub_1E4206814();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_1E323F000, v6, v7, "AppleMusicSubscriptionInterface: Refreshed configuration failed with error %@", v8, 0xCu);
      sub_1E325F748(v9, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
      v10 = v6;
      v6 = v5;
    }

    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 32);

    (*(v12 + 8))(v11, v13);

    OUTLINED_FUNCTION_54();

    return v14();
  }

  return result;
}

void *sub_1E3E98DCC()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_1E324FBDC();
    v6 = OUTLINED_FUNCTION_43_0();
    v7(v6);
    v8 = sub_1E41FFC94();
    v9 = sub_1E4206814();
    if (os_log_type_enabled(v8, v9))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_14_143(&dword_1E323F000, v10, v11, "AppleMusicSubscriptionInterface: Refreshed configuration after a subscription status change");
      OUTLINED_FUNCTION_6_0();
    }

    return (*(v3 + 8))(v1, v0);
  }

  return result;
}

unint64_t sub_1E3E98FE4()
{
  result = qword_1ECF3B1A8;
  if (!qword_1ECF3B1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3B1A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppleMusicSubscriptionStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3E99140()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E3E987E8();
}

unint64_t sub_1E3E991C8()
{
  result = qword_1ECF30180;
  if (!qword_1ECF30180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF30180);
  }

  return result;
}

void sub_1E3E99224()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_82_1(36, 0x80000001E4287150);
  OUTLINED_FUNCTION_83();
  qword_1ECF71740 = v0;
  *algn_1ECF71748 = v1;
}

void sub_1E3E9928C()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_82_1(34, 0x80000001E4287120);
  OUTLINED_FUNCTION_83();
  qword_1ECF71750 = v0;
  *algn_1ECF71758 = v1;
}

void sub_1E3E992F4()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_82_1(51, 0x80000001E42870E0);
  OUTLINED_FUNCTION_83();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  v3 = 0xE000000000000000;
  if (v1)
  {
    v3 = v1;
  }

  qword_1ECF71760 = v2;
  *algn_1ECF71768 = v3;
}

void sub_1E3E9936C()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_82_1(50, 0x80000001E42870A0);
  OUTLINED_FUNCTION_83();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  v3 = 0xE000000000000000;
  if (v1)
  {
    v3 = v1;
  }

  qword_1ECF71770 = v2;
  *algn_1ECF71778 = v3;
}

void sub_1E3E993E4()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_82_1(24, 0x80000001E4287080);
  OUTLINED_FUNCTION_83();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  v3 = 0xE000000000000000;
  if (v1)
  {
    v3 = v1;
  }

  qword_1ECF71780 = v2;
  *algn_1ECF71788 = v3;
}

void sub_1E3E9945C()
{
  OUTLINED_FUNCTION_31_1();
  v149 = v0;
  v2 = v1;
  v4 = v3;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 appController];

  if (v6)
  {
    v7 = [v6 appContext];
  }

  else
  {
    v7 = 0;
  }

  v8 = type metadata accessor for DocumentServiceRequestContext();
  v166 = 0u;
  v167 = 0u;
  memset(v162, 0, 32);
  v9 = OUTLINED_FUNCTION_18();
  v139 = DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(0, 0, 0x74654D64656D6954, 0xED00006174616461, v7, &v166, v162, v9 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
  if (v4)
  {
    v10 = OUTLINED_FUNCTION_24_3();
    *(v10 + 16) = xmmword_1E4297BE0;
    sub_1E3E9A238();
    *(v10 + 32) = v11;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1E4299720;
    sub_1E3E9AD38();
    *(v10 + 32) = v12;
    sub_1E3E9B5B4();
    *(v10 + 40) = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  v15 = OUTLINED_FUNCTION_130(inited, xmmword_1E4297BE0);
  ViewModelKeys.rawValue.getter(v15);
  inited[2].n128_u64[0] = v16;
  inited[2].n128_u64[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1B0);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1E4297BE0;
  *(v18 + 32) = sub_1E4123DE4(27);
  *(v18 + 40) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCE0);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1E4297BE0;
  ViewModelKeys.rawValue.getter(13);
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  *(v20 + 48) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  *(v18 + 48) = OUTLINED_FUNCTION_67_24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1B8);
  OUTLINED_FUNCTION_34();
  v23 = sub_1E4205CB4();
  inited[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1C0);
  inited[3].n128_u64[0] = v23;
  OUTLINED_FUNCTION_67_24();
  type metadata accessor for Document();
  *(&v167 + 1) = v8;
  v168 = &off_1F5D583B8;
  *&v166 = v139;

  v24 = sub_1E4017924();
  swift_beginAccess();
  v138 = v24;
  v25 = MEMORY[0x1E69E7CC0];
  if (!*(v24 + 56) || (OUTLINED_FUNCTION_8(), v27 = *(v26 + 464), v28 = , v29 = v27(v28), , !v29))
  {
LABEL_96:
    sub_1E3C2AE10();
    v160 = v70;
    v161 = v71;
    LODWORD(v158) = v72;
    swift_beginAccess();
    v73 = *(v138 + 56);
    if (v73)
    {
      OUTLINED_FUNCTION_8();
      i = *(v74 + 464);

      v77 = (i)(v76);
      if (v77)
      {
        v78 = v77;
      }

      else
      {
        v78 = v25;
      }

      v79 = sub_1E32AE9B0(v78);
      if (v79)
      {
        v80 = v79;
        v81 = 0;
        v82 = v78 & 0xC000000000000001;
        v83 = v78 & 0xFFFFFFFFFFFFFF8;
        v157 = v78 + 32;
        v153 = v79;
        v154 = v78;
        v152 = v78 & 0xC000000000000001;
        v148 = v73;
        v150 = v78 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v82)
          {
            MEMORY[0x1E6911E60](v81, v78);
          }

          else
          {
            if (v81 >= *(v83 + 16))
            {
              goto LABEL_147;
            }
          }

          v32 = __OFADD__(v81++, 1);
          if (v32)
          {
            goto LABEL_145;
          }

          type metadata accessor for CollectionViewModel();
          v84 = swift_dynamicCastClass();
          if (v84)
          {
            break;
          }

LABEL_135:

          if (v81 == v80)
          {
            goto LABEL_139;
          }
        }

        v85 = v84;
        OUTLINED_FUNCTION_26_0();
        v88 = v87;
        v89 = (*(v86 + 1040))();
        if (v89)
        {
          OUTLINED_FUNCTION_32_71();
          if (v90)
          {
            if (OUTLINED_FUNCTION_83_17())
            {
              goto LABEL_111;
            }
          }

          else if (*(v88 + 16))
          {
LABEL_111:
            if ((i & 0xC000000000000001) != 0)
            {
              OUTLINED_FUNCTION_15_44();
              v88 = v133;
            }

            else
            {
              if (!*(v88 + 16))
              {
                goto LABEL_148;
              }

              OUTLINED_FUNCTION_13_49();
            }

            OUTLINED_FUNCTION_8();
            v92 = (*(v91 + 872))();
            if (v92)
            {
              v93 = v92;
              v155 = v88;
              v94 = sub_1E32AE9B0(v92);
              for (i = 0; v94 != i; ++i)
              {
                if ((v93 & 0xC000000000000001) != 0)
                {
                  v96 = MEMORY[0x1E6911E60](i, v93);
                  v95 = v96;
                }

                else
                {
                  if (i >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_143;
                  }

                  v95 = *(v93 + 8 * i + 32);
                }

                if (__OFADD__(i, 1))
                {
                  goto LABEL_142;
                }

                if ((*(*v95 + 392))(v96))
                {
                  OUTLINED_FUNCTION_26_0();
                  v105 = OUTLINED_FUNCTION_56_32(v97, v98, v99, v100, v101, v102, v103, v104, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v148, v150, v152, v153, v154, v155, v157, v158, v160);
                  v106(v105);
                }
              }

              v80 = v153;
              v78 = v154;
              v83 = v150;
              v82 = v152;
            }

            else
            {
            }

            goto LABEL_129;
          }
        }

LABEL_129:
        v107 = (*(*v85 + 968))(v89);
        if (v107)
        {
          i = v107;
          OUTLINED_FUNCTION_26_0();
          v109 = (*(v108 + 392))();

          if (v109)
          {
            OUTLINED_FUNCTION_8();
            v118 = OUTLINED_FUNCTION_56_32(v110, v111, v112, v113, v114, v115, v116, v117, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v148, v150, v152, v153, v154, v155, v157, v158, v160);
            v119(v118);
          }
        }

        v120 = (*(*v85 + 960))(v107);
        if (v120)
        {
          i = v120;
          OUTLINED_FUNCTION_26_0();
          v122 = (*(v121 + 392))();

          if (v122)
          {
            OUTLINED_FUNCTION_8();
            v131 = OUTLINED_FUNCTION_56_32(v123, v124, v125, v126, v127, v128, v129, v130, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v148, v150, v152, v153, v154, v155, v157, v158, v160);
            v132(v131);
          }
        }

        goto LABEL_135;
      }

LABEL_139:
    }

    else
    {
    }

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v147 = sub_1E32AE9B0(v29);
  if (!v147)
  {
LABEL_95:

    goto LABEL_96;
  }

  v30 = 0;
  v146 = v29 & 0xC000000000000001;
  v136 = v29 + 32;
  v137 = v29 & 0xFFFFFFFFFFFFFF8;
  v144 = v149 + 56;
  HIDWORD(v135) = v2;
  v140 = v29;
  while (1)
  {
    if (v146)
    {
      v31 = MEMORY[0x1E6911E60](v30, v29);
    }

    else
    {
      if (v30 >= *(v137 + 16))
      {
        goto LABEL_149;
      }

      v31 = *(v136 + 8 * v30);
    }

    v32 = __OFADD__(v30++, 1);
    if (v32)
    {
      goto LABEL_146;
    }

    type metadata accessor for CollectionViewModel();
    if (swift_dynamicCastClass())
    {
      break;
    }

LABEL_91:
    if (v30 == v147)
    {
      goto LABEL_95;
    }
  }

  v151 = v30;
  OUTLINED_FUNCTION_26_0();
  v142 = *(v33 + 1040);
  v143 = v34;
  v35 = v34;
  v141 = v33 + 1040;
  if (!v142())
  {
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_32_71();
  if (!v36)
  {
    if (*(v35 + 16))
    {
      goto LABEL_20;
    }

LABEL_67:

LABEL_68:

LABEL_90:
    v29 = v140;
    v30 = v151;
    goto LABEL_91;
  }

  if (!OUTLINED_FUNCTION_83_17())
  {
    goto LABEL_67;
  }

LABEL_20:
  if ((v29 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_15_44();
  }

  else
  {
    if (!*(v35 + 16))
    {
      goto LABEL_150;
    }

    OUTLINED_FUNCTION_13_49();
  }

  OUTLINED_FUNCTION_8();
  v38 = (*(v37 + 872))();

  if (!v38)
  {
    goto LABEL_68;
  }

  v165 = v25;
  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_26;
    }

LABEL_71:

    v65 = (v142)(v64);
    if (!v65)
    {
      goto LABEL_80;
    }

    OUTLINED_FUNCTION_32_71();
    if (v66)
    {
      if (OUTLINED_FUNCTION_83_17())
      {
        goto LABEL_74;
      }
    }

    else if (*(v143 + 16))
    {
LABEL_74:
      if ((v38 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_15_44();
      }

      else
      {
        if (!*(v143 + 16))
        {
          goto LABEL_151;
        }

        OUTLINED_FUNCTION_13_49();
      }

      OUTLINED_FUNCTION_8();
      (*(v67 + 1048))(OUTLINED_FUNCTION_51_1, 0);

LABEL_80:
      if ((v142)(v65))
      {
        OUTLINED_FUNCTION_32_71();
        if (v68)
        {
          if (OUTLINED_FUNCTION_83_17())
          {
            goto LABEL_83;
          }
        }

        else if (*(v143 + 16))
        {
LABEL_83:
          if ((v38 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_15_44();
          }

          else
          {
            if (!*(v143 + 16))
            {
              goto LABEL_152;
            }

            OUTLINED_FUNCTION_13_49();
          }

          OUTLINED_FUNCTION_8();
          (*(v69 + 1016))(v25);

          goto LABEL_89;
        }
      }

LABEL_89:

      v25 = MEMORY[0x1E69E7CC0];
      goto LABEL_90;
    }

    goto LABEL_80;
  }

  v39 = sub_1E4207384();
  if (!v39)
  {
    goto LABEL_71;
  }

LABEL_26:
  v40 = 0;
  HIDWORD(v158) = HIDWORD(v31);
  v159 = v38 & 0xC000000000000001;
  v145 = v38 + 32;
  v155 = v39;
  v156 = v38;
LABEL_27:
  sub_1E34AF4E4(v40, v159 == 0, v38);
  if (v159)
  {
    v41 = MEMORY[0x1E6911E60](v40, v38);
  }

  else
  {
    v41 = *(v145 + 8 * v40);
  }

  v32 = __OFADD__(v40++, 1);
  if (v32)
  {
    goto LABEL_144;
  }

  if ((v149 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    type metadata accessor for ViewModel();
    sub_1E3EA0AD8(qword_1EE23BA70, type metadata accessor for ViewModel);
    OUTLINED_FUNCTION_32_0();
    sub_1E4206664();
    v42 = *(&v166 + 1);
    v43 = v166;
    v44 = *(&v167 + 1);
    v45 = v167;
    v46 = v168;
  }

  else
  {
    v43 = v149;
    v47 = -1 << *(v149 + 32);
    v45 = ~v47;
    v48 = -v47;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v46 = (v49 & *(v149 + 56));

    v44 = 0;
    v42 = v149 + 56;
  }

  v50 = (v45 + 64) >> 6;
  if (v43 < 0)
  {
LABEL_44:
    v56 = sub_1E42073C4();
    if (!v56)
    {
      goto LABEL_57;
    }

    v163 = v56;
    type metadata accessor for ViewModel();
    swift_dynamicCast();
    v55 = v164;
    v53 = v44;
    v54 = v46;
    if (!v164)
    {
      goto LABEL_57;
    }

    goto LABEL_46;
  }

  while (1)
  {
    v51 = v44;
    v52 = v46;
    v53 = v44;
    if (!v46)
    {
      break;
    }

LABEL_42:
    v54 = (v52 - 1) & v52;
    v55 = *(*(v43 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v52)))));

    if (!v55)
    {
LABEL_57:
      v60 = OUTLINED_FUNCTION_66_29();
      MEMORY[0x1E6910BF0](v60);
      OUTLINED_FUNCTION_73_20();
      if (v62)
      {
        OUTLINED_FUNCTION_35(v61);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v25 = v165;
LABEL_60:
      v38 = v156;
      if (v40 == v155)
      {
        goto LABEL_71;
      }

      goto LABEL_27;
    }

LABEL_46:
    v57 = *(v55 + 24);
    v58 = *(v41 + 24);
    if (v57)
    {
      if (v58)
      {
        v59 = *(v55 + 16) == *(v41 + 16) && v57 == v58;
        if (v59 || (sub_1E42079A4() & 1) != 0)
        {
LABEL_62:
          OUTLINED_FUNCTION_66_29();
          sub_1E3EA002C();
          MEMORY[0x1E6910BF0]();
          OUTLINED_FUNCTION_73_20();
          if (v62)
          {
            OUTLINED_FUNCTION_35(v63);
            sub_1E42062F4();
          }

          sub_1E4206324();
          v25 = v165;

          goto LABEL_60;
        }
      }
    }

    else if (!v58)
    {
      goto LABEL_62;
    }

    v44 = v53;
    v46 = v54;
    if (v43 < 0)
    {
      goto LABEL_44;
    }
  }

  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v53 >= v50)
    {
      goto LABEL_57;
    }

    v52 = *(v42 + 8 * v53);
    ++v51;
    if (v52)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

void sub_1E3E9A238()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v148 = v9;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1E8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v151 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34390);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v141 - v18;
  v20 = sub_1E41FEB94();
  OUTLINED_FUNCTION_0_10();
  v153.n128_u64[0] = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = (v24 - v23);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D10);
  OUTLINED_FUNCTION_17_2(v26);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v141 - v28;
  sub_1E41FEBE4();
  OUTLINED_FUNCTION_0_10();
  v154 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  v36 = *(v3 + 16);
  if (v36 || *(v1 + 16))
  {
    v146 = v25;
    v144 = v1;
    *&v155 = v36;
    v37 = v32;
    v38 = sub_1E4205CB4();
    OUTLINED_FUNCTION_18_112();
    sub_1E3E9BE50(v3, v39, v29);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v37);
    v147 = v20;
    v150 = v37;
    v145 = v3;
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F6F0(v29, &unk_1ECF32D10);
      OUTLINED_FUNCTION_17_123();
      v41 = v144;
      sub_1E3E9BE50(v144, v42, v19);
      OUTLINED_FUNCTION_11_150(v19);
      if (v43)
      {
        v143 = v38;
        sub_1E325F6F0(v19, &unk_1ECF34390);
      }

      else
      {

        v48 = v153.n128_u64[0];
        v49 = v146;
        (*(v153.n128_u64[0] + 32))(v146, v19, v20);
        sub_1E3E9D160();
        v143 = v50;
        (*(v48 + 8))(v49, v20);
      }
    }

    else
    {

      v44 = v154;
      v45 = OUTLINED_FUNCTION_35_4();
      v46(v45);
      sub_1E3E9C254();
      v143 = v47;
      v44[1](v35, v37);
      v41 = v144;
    }

    v51 = MEMORY[0x1E69E7CC0];
    if (v155)
    {
      v142 = v7;
      v156 = MEMORY[0x1E69E7CC0];
      sub_1E397A444(0, v155, 0);
      v52 = 0;
      v51 = v156;
      OUTLINED_FUNCTION_81();
      v54 = v145 + v53;
      v145 = *(v55 + 56);
      v146 = v56;
      v154 = v55;
      v57 = (v55 + 16);
      do
      {
        v59 = v151;
        v58 = v152;
        v60 = *(v152 + 48);
        v61 = v150;
        v146(v151 + v60, v54, v150);
        *v13 = v52;
        (*v57)(&v13[*(v58 + 48)], v59 + v60, v61);
        sub_1E3E9C254();
        v63 = v62;
        sub_1E325F6F0(v13, &qword_1ECF3B1E8);
        v156 = v51;
        v65 = *(v51 + 16);
        v64 = *(v51 + 24);
        if (v65 >= v64 >> 1)
        {
          v66 = OUTLINED_FUNCTION_35(v64);
          sub_1E397A444(v66, v65 + 1, 1);
          v51 = v156;
        }

        ++v52;
        *(v51 + 16) = v65 + 1;
        *(v51 + 8 * v65 + 32) = v63;
        v54 += v145;
      }

      while (v155 != v52);
      v7 = v142;
      v41 = v144;
    }

    v67 = *(v41 + 16);
    v68 = MEMORY[0x1E69E7CC0];
    if (v67)
    {
      v150 = v51;
      v156 = MEMORY[0x1E69E7CC0];
      sub_1E397A444(0, v67, 0);
      v69 = 0;
      v68 = v156;
      v154 = *(v153.n128_u64[0] + 16);
      OUTLINED_FUNCTION_81();
      v71 = v41 + v70;
      v73 = *(v72 + 56);
      v153.n128_u64[0] = v72;
      v151 = v73;
      v152 = v72 + 16;
      while (1)
      {
        v74 = v67;
        v76 = v148;
        v75 = v149;
        v77 = *(v149 + 48);
        v78 = v147;
        (v154)(v148 + v77, v71, v147);
        *v7 = v69;
        (*v152)(v7 + *(v75 + 48), v76 + v77, v78);
        if (__OFADD__(v155, v69))
        {
          break;
        }

        sub_1E3E9D160();
        v80 = v79;
        sub_1E325F6F0(v7, &qword_1ECF3B1E0);
        v156 = v68;
        v82 = *(v68 + 16);
        v81 = *(v68 + 24);
        if (v82 >= v81 >> 1)
        {
          v83 = OUTLINED_FUNCTION_35(v81);
          sub_1E397A444(v83, v82 + 1, 1);
          v68 = v156;
        }

        ++v69;
        *(v68 + 16) = v82 + 1;
        *(v68 + 8 * v82 + 32) = v80;
        v71 += v151;
        v67 = v74;
        if (v74 == v69)
        {
          v51 = v150;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_21:
      v156 = v51;
      sub_1E3EA0974(v68);
      v153.n128_u64[0] = v156;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
      inited = swift_initStackObject();
      v155 = xmmword_1E4297BE0;
      *(inited + 16) = xmmword_1E4297BE0;
      sub_1E384EE08(117);
      *(inited + 32) = v85;
      *(inited + 40) = v86;
      v87 = swift_initStackObject();
      OUTLINED_FUNCTION_117(v87, xmmword_1E429A200);
      v87[2].n128_u64[0] = v88;
      v87[2].n128_u64[1] = v89;
      v90 = MEMORY[0x1E69E6158];
      v87[4].n128_u64[1] = MEMORY[0x1E69E6158];
      v87[3].n128_u64[0] = 0xD000000000000016;
      v87[3].n128_u64[1] = 0x80000001E4286F10;
      ViewModelKeys.rawValue.getter(30);
      v87[5].n128_u64[0] = v91;
      v87[5].n128_u64[1] = v92;
      v93 = sub_1E4205F14();
      v87[7].n128_u64[1] = v90;
      v87[6].n128_u64[0] = v93;
      v87[6].n128_u64[1] = v94;
      ViewModelKeys.rawValue.getter(27);
      v87[8].n128_u64[0] = v95;
      v87[8].n128_u64[1] = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B588);
      v97 = OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_13_149(v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
      v98 = swift_initStackObject();
      OUTLINED_FUNCTION_13_149(v98);
      ViewModelKeys.rawValue.getter(28);
      v98[2].n128_u64[0] = v99;
      v98[2].n128_u64[1] = v100;
      v101 = swift_initStackObject();
      OUTLINED_FUNCTION_117(v101, xmmword_1E4299720);
      v101[2].n128_u64[0] = v102;
      v101[2].n128_u64[1] = v103;
      v101[4].n128_u64[1] = v90;
      v101[3].n128_u64[0] = 0xD000000000000016;
      v101[3].n128_u64[1] = 0x80000001E4286F10;
      ViewModelKeys.rawValue.getter(13);
      v101[5].n128_u64[0] = v104;
      v101[5].n128_u64[1] = v105;
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
      v101[7].n128_u64[1] = v154;
      v101[6].n128_u64[0] = v153.n128_u64[0];
      OUTLINED_FUNCTION_71_28();
      v98[3].n128_u64[0] = sub_1E4205CB4();
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      v97[2].n128_u64[0] = sub_1E4205CB4();
      v87[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F750);
      v87[9].n128_u64[0] = v97;
      ViewModelKeys.rawValue.getter(12);
      v87[11].n128_u64[0] = v107;
      v87[11].n128_u64[1] = v108;
      v109 = swift_initStackObject();
      v153 = xmmword_1E4298AD0;
      *(v109 + 16) = xmmword_1E4298AD0;
      *(v109 + 32) = sub_1E3D46F94(40);
      *(v109 + 40) = v110;
      [objc_opt_self() isTV];
      v111 = sub_1E4205F14();
      *(v109 + 72) = v90;
      *(v109 + 48) = v111;
      *(v109 + 56) = v112;
      *(v109 + 80) = sub_1E3D46F94(42);
      *(v109 + 88) = v113;
      v114 = sub_1E4205F14();
      *(v109 + 120) = v90;
      *(v109 + 96) = v114;
      *(v109 + 104) = v115;
      *(v109 + 128) = sub_1E3D46F94(43);
      *(v109 + 136) = v116;
      v117 = sub_1E4205F14();
      *(v109 + 168) = v90;
      *(v109 + 144) = v117;
      *(v109 + 152) = v118;
      *(v109 + 176) = sub_1E3D46F94(1);
      *(v109 + 184) = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36E30);
      v120 = swift_initStackObject();
      v121 = OUTLINED_FUNCTION_130(v120, v153);
      v120[2].n128_u64[0] = sub_1E4124534(v121);
      v120[2].n128_u64[1] = v122;
      v120[3].n128_u64[0] = 0;
      v120[3].n128_u64[1] = sub_1E4124534(1);
      v120[4].n128_u64[0] = v123;
      v120[4].n128_u64[1] = 0;
      v120[5].n128_u64[0] = sub_1E4124534(3);
      v120[5].n128_u64[1] = v124;
      v120[6].n128_u64[0] = 0;
      v120[6].n128_u64[1] = sub_1E4124534(2);
      v120[7].n128_u64[0] = v125;
      v120[7].n128_u64[1] = 0;
      OUTLINED_FUNCTION_71_28();
      v126 = sub_1E4205CB4();
      *(v109 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF389F0);
      *(v109 + 192) = v126;
      OUTLINED_FUNCTION_71_28();
      v127 = sub_1E4205CB4();
      v87[13].n128_u64[1] = v106;
      v87[12].n128_u64[0] = v127;
      ViewModelKeys.rawValue.getter(26);
      v87[14].n128_u64[0] = v128;
      v87[14].n128_u64[1] = v129;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCE0);
      v130 = swift_initStackObject();
      OUTLINED_FUNCTION_13_149(v130);
      ViewModelKeys.rawValue.getter(13);
      v130[2].n128_u64[0] = v131;
      v130[2].n128_u64[1] = v132;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
      v133 = OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_13_149(v133);
      *(v134 + 32) = v143;
      v130[3].n128_u64[0] = v134;
      v135 = sub_1E4205CB4();
      v87[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1B8);
      v87[15].n128_u64[0] = v135;
      ViewModelKeys.rawValue.getter(8);
      v87[17].n128_u64[0] = v136;
      v87[17].n128_u64[1] = v137;
      sub_1E3E9F5B4();
      v87[19].n128_u64[1] = v106;
      v87[18].n128_u64[0] = v138;
      OUTLINED_FUNCTION_59_30();
      v139 = sub_1E4205CB4();
      *(inited + 72) = v106;
      *(inited + 48) = v139;
      OUTLINED_FUNCTION_59_30();
      sub_1E4205CB4();
      OUTLINED_FUNCTION_25_2();
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E4205CB4();
  }
}

void sub_1E3E9AD38()
{
  OUTLINED_FUNCTION_31_1();
  v111 = v1;
  v3 = v2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1E8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v116 = (v5 - v6);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v117 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D10);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_2();
  v11 = sub_1E41FEBE4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = *(v3 + 16);
  v19 = MEMORY[0x1E69E6158];
  v20 = sub_1E4205CB4();
  if (v18)
  {
    OUTLINED_FUNCTION_18_112();
    sub_1E3E9BE50(v3, v21, v0);
    v119 = v11;
    if (__swift_getEnumTagSinglePayload(v0, 1, v11) == 1)
    {
      v110 = v20;
      sub_1E325F6F0(v0, &unk_1ECF32D10);
    }

    else
    {

      (*(v13 + 32))(v17, v0, v11);
      sub_1E3E9C254();
      v110 = v22;
      (*(v13 + 8))(v17, v11);
    }

    v23 = 0xD000000000000011;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    sub_1E384EE08(118);
    *(inited + 32) = v25;
    *(inited + 40) = v26;
    v109 = inited;
    v27 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v27, xmmword_1E42BF390);
    v27[2].n128_u64[0] = v28;
    v27[2].n128_u64[1] = v29;
    v27[4].n128_u64[1] = v19;
    v27[3].n128_u64[0] = 0xD000000000000011;
    v27[3].n128_u64[1] = 0x80000001E4286F30;
    ViewModelKeys.rawValue.getter(30);
    v27[5].n128_u64[0] = v30;
    v27[5].n128_u64[1] = v31;
    v32 = sub_1E4205F14();
    v27[7].n128_u64[1] = v19;
    v27[6].n128_u64[0] = v32;
    v27[6].n128_u64[1] = v33;
    ViewModelKeys.rawValue.getter(27);
    v27[8].n128_u64[0] = v34;
    v27[8].n128_u64[1] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B588);
    v108 = OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_10_143(v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
    v36 = swift_initStackObject();
    OUTLINED_FUNCTION_10_143(v36);
    ViewModelKeys.rawValue.getter(28);
    v36[2].n128_u64[0] = v37;
    v36[2].n128_u64[1] = v38;
    v107 = v36;
    v39 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v39, xmmword_1E4299720);
    v39[2].n128_u64[0] = v40;
    v39[2].n128_u64[1] = v41;
    v39[4].n128_u64[1] = v19;
    v39[3].n128_u64[0] = 0xD000000000000011;
    v39[3].n128_u64[1] = 0x80000001E4286F30;
    ViewModelKeys.rawValue.getter(13);
    v39[5].n128_u64[0] = v42;
    v39[5].n128_u64[1] = v43;
    v106 = v39;
    v120 = MEMORY[0x1E69E7CC0];
    sub_1E397A444(0, v18, 0);
    v44 = 0;
    v45 = v120;
    v46 = v13 + 16;
    OUTLINED_FUNCTION_81();
    v48 = (v3 + v47);
    v113 = *(v46 + 56);
    v114 = v49;
    v115 = v27;
    v112 = (v46 + 16);
    v50 = v119;
    do
    {
      if (v18 == v44)
      {
        __break(1u);
        goto LABEL_16;
      }

      v23 = v18;
      v51 = *(v118 + 48);
      v114(v117 + v51, v48, v50);
      v19 = v116;
      *v116 = v44;
      (*v112)(v116 + *(v118 + 48), v117 + v51, v50);
      sub_1E3E9C254();
      v53 = v52;
      sub_1E325F6F0(v116, &qword_1ECF3B1E8);
      v55 = *(v120 + 16);
      v54 = *(v120 + 24);
      if (v55 >= v54 >> 1)
      {
        v56 = OUTLINED_FUNCTION_35(v54);
        sub_1E397A444(v56, v55 + 1, 1);
      }

      v44 = (v44 + 1);
      *(v120 + 16) = v55 + 1;
      *(v120 + 8 * v55 + 32) = v53;
      v48 = (v48 + v113);
      v18 = v23;
      v27 = v115;
      v50 = v119;
    }

    while (v23 != v44);
    v106[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    v106[6].n128_u64[0] = v120;
    v57 = MEMORY[0x1E69E6158];
    v19 = v107;
    v107[3].n128_u64[0] = OUTLINED_FUNCTION_54_38();
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_18_5();
    v108[2].n128_u64[0] = sub_1E4205CB4();
    v115[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F750);
    v115[9].n128_u64[0] = v108;
    ViewModelKeys.rawValue.getter(24);
    v115[11].n128_u64[0] = v58;
    v115[11].n128_u64[1] = v59;
    v60 = swift_initStackObject();
    OUTLINED_FUNCTION_1_243(v60);
    sub_1E384EE08(138);
    v107[2].n128_u64[0] = v61;
    v107[2].n128_u64[1] = v62;
    v48 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v48, xmmword_1E4299720);
    v48[2].n128_u64[0] = v63;
    v48[2].n128_u64[1] = v64;
    OUTLINED_FUNCTION_41_7();
    v48[4].n128_u64[1] = v57;
    v48[3].n128_u64[0] = 0xD000000000000018;
    v48[3].n128_u64[1] = v65;
    ViewModelKeys.rawValue.getter(13);
    v48[5].n128_u64[0] = v66;
    v48[5].n128_u64[1] = v67;
    v23 = swift_initStackObject();
    OUTLINED_FUNCTION_10_143(v23);
    sub_1E384EE08(23);
    v50 = v115;
    v27 = OUTLINED_FUNCTION_78_19(v68, v69);
    OUTLINED_FUNCTION_45_57(v27, xmmword_1E4299720);
    v27[2].n128_u64[0] = v70;
    v27[2].n128_u64[1] = v71;
    if (qword_1ECF671B0 == -1)
    {
      goto LABEL_11;
    }

LABEL_16:
    OUTLINED_FUNCTION_31_68();
LABEL_11:
    v72 = OUTLINED_FUNCTION_72_25(&qword_1ECF71740);
    v74 = 0xE000000000000000;
    if (!v75)
    {
      v74 = v72;
    }

    v27[3].n128_u64[0] = v73;
    v27[3].n128_u64[1] = v74;

    ViewModelKeys.rawValue.getter(12);
    v27[5].n128_u64[0] = v76;
    v27[5].n128_u64[1] = v77;
    v78 = sub_1E3E9F810(v111);
    v27[7].n128_u64[1] = v45;
    v27[6].n128_u64[0] = v78;
    v23[3].n128_u64[0] = OUTLINED_FUNCTION_54_38();
    OUTLINED_FUNCTION_18_5();
    v79 = sub_1E4205CB4();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0);
    v48[7].n128_u64[1] = v80;
    v48[6].n128_u64[0] = v79;
    v19[3].n128_u64[0] = OUTLINED_FUNCTION_54_38();
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_18_5();
    v81 = sub_1E4205CB4();
    v50[13].n128_u64[1] = v80;
    v50[12].n128_u64[0] = v81;
    ViewModelKeys.rawValue.getter(12);
    v50[14].n128_u64[0] = v82;
    v50[14].n128_u64[1] = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v84 = swift_initStackObject();
    OUTLINED_FUNCTION_1_243(v84);
    v19[2].n128_u64[0] = sub_1E3D46F94(40);
    v19[2].n128_u64[1] = v85;
    v19[3].n128_u64[0] = sub_1E4205F14();
    v19[3].n128_u64[1] = v86;
    OUTLINED_FUNCTION_21_9();
    v87 = sub_1E4205CB4();
    v50[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
    v50[15].n128_u64[0] = v87;
    ViewModelKeys.rawValue.getter(11);
    v50[17].n128_u64[0] = v88;
    v50[17].n128_u64[1] = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8);
    v90 = OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_1_243(v90);
    sub_1E3853DA8(34);
    *(v87 + 32) = v91;
    *(v87 + 40) = v92;
    *(v87 + 48) = 1;
    OUTLINED_FUNCTION_21_9();
    v93 = sub_1E4205CB4();
    v50[19].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120);
    v50[18].n128_u64[0] = v93;
    ViewModelKeys.rawValue.getter(26);
    v50[20].n128_u64[0] = v94;
    v50[20].n128_u64[1] = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCE0);
    v96 = OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_1_243(v96);
    ViewModelKeys.rawValue.getter(13);
    v93[4] = v97;
    v93[5] = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
    v99 = OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_10_143(v99);
    *(v100 + 32) = v110;
    v93[6] = v100;
    OUTLINED_FUNCTION_21_9();
    v101 = sub_1E4205CB4();
    v50[22].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1B8);
    v50[21].n128_u64[0] = v101;
    ViewModelKeys.rawValue.getter(8);
    v50[23].n128_u64[0] = v102;
    v50[23].n128_u64[1] = v103;
    sub_1E3E9F5B4();
    v50[25].n128_u64[1] = v45;
    v50[24].n128_u64[0] = v104;
    v105 = OUTLINED_FUNCTION_54_38();
    *(v109 + 72) = v45;
    *(v109 + 48) = v105;
    OUTLINED_FUNCTION_54_38();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E9B5B4()
{
  OUTLINED_FUNCTION_31_1();
  v122 = v1;
  v3 = v2;
  v5 = v4;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v120 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34390);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_2();
  v14 = sub_1E41FEB94();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = *(v5 + 16);
  v22 = sub_1E4205CB4();
  v123 = v21;
  if (v21)
  {
    OUTLINED_FUNCTION_17_123();
    sub_1E3E9BE50(v5, v23, v0);
    v119 = v14;
    v113 = v3;
    v124 = v5;
    if (__swift_getEnumTagSinglePayload(v0, 1, v14) == 1)
    {
      v115 = v22;
      sub_1E325F6F0(v0, &unk_1ECF34390);
    }

    else
    {

      (*(v16 + 32))(v20, v0, v14);
      sub_1E3E9D160();
      v115 = v24;
      (*(v16 + 8))(v20, v14);
    }

    v25 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    sub_1E384EE08(118);
    *(inited + 32) = v27;
    *(inited + 40) = v28;
    v114 = inited;
    v29 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v29, xmmword_1E42BF390);
    v29[2].n128_u64[0] = v30;
    v29[2].n128_u64[1] = v31;
    v32 = MEMORY[0x1E69E6158];
    v29[4].n128_u64[1] = MEMORY[0x1E69E6158];
    v33 = 0xEF6E6F697463656CLL;
    v29[3].n128_u64[0] = 0x6C6F635F676E6F73;
    v29[3].n128_u64[1] = 0xEF6E6F697463656CLL;
    ViewModelKeys.rawValue.getter(30);
    v29[5].n128_u64[0] = v34;
    v29[5].n128_u64[1] = v35;
    v36 = sub_1E4205F14();
    v29[7].n128_u64[1] = v32;
    v29[6].n128_u64[0] = v36;
    v29[6].n128_u64[1] = v37;
    ViewModelKeys.rawValue.getter(27);
    v29[8].n128_u64[0] = v38;
    v29[8].n128_u64[1] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B588);
    v112 = OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_10_143(v112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
    v40 = swift_initStackObject();
    OUTLINED_FUNCTION_10_143(v40);
    ViewModelKeys.rawValue.getter(28);
    v40[2].n128_u64[0] = v41;
    v40[2].n128_u64[1] = v42;
    v111 = v40;
    v43 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v43, xmmword_1E4299720);
    v43[2].n128_u64[0] = v44;
    v43[2].n128_u64[1] = v45;
    v43[4].n128_u64[1] = v32;
    v43[3].n128_u64[0] = 0x6C6F635F676E6F73;
    v43[3].n128_u64[1] = 0xEF6E6F697463656CLL;
    ViewModelKeys.rawValue.getter(13);
    v43[5].n128_u64[0] = v46;
    v43[5].n128_u64[1] = v47;
    v110 = v43;
    v126[0] = v25;
    v48 = v126;
    v49 = v123;
    sub_1E397A444(0, v123, 0);
    v50 = 0;
    v51 = v126[0];
    v52 = v16 + 16;
    OUTLINED_FUNCTION_81();
    v54 = v124 + v53;
    v116 = *(v52 + 56);
    v117 = (v52 + 16);
    v118 = v55;
    do
    {
      if (v49 == v50)
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v25 = v121;
      v48 = *(v121 + 48);
      v49 = v9;
      v125 = v54;
      v118(v120 + v48);
      *v9 = v50;
      v33 = *(v121 + 48);
      (*v117)(v9 + v33, v120 + v48, v119);
      if (__OFADD__(v122, v50))
      {
        goto LABEL_17;
      }

      v25 = v29;
      sub_1E3E9D160();
      v57 = v56;
      sub_1E325F6F0(v9, &qword_1ECF3B1E0);
      v126[0] = v51;
      v59 = *(v51 + 16);
      v58 = *(v51 + 24);
      v33 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v60 = OUTLINED_FUNCTION_35(v58);
        v48 = v126;
        sub_1E397A444(v60, v59 + 1, 1);
        v51 = v126[0];
      }

      v50 = (v50 + 1);
      *(v51 + 16) = v33;
      *(v51 + 8 * v59 + 32) = v57;
      v49 = v123;
      v54 = v125 + v116;
      v29 = v25;
    }

    while (v123 != v50);
    v110[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    v110[6].n128_u64[0] = v51;
    v61 = MEMORY[0x1E69E6158];
    v25 = v111;
    v111[3].n128_u64[0] = OUTLINED_FUNCTION_54_38();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_18_5();
    v112[2].n128_u64[0] = sub_1E4205CB4();
    v29[10].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F750);
    v29[9].n128_u64[0] = v112;
    ViewModelKeys.rawValue.getter(24);
    v29[11].n128_u64[0] = v62;
    v29[11].n128_u64[1] = v63;
    v64 = swift_initStackObject();
    OUTLINED_FUNCTION_1_243(v64);
    sub_1E384EE08(138);
    v111[2].n128_u64[0] = v65;
    v111[2].n128_u64[1] = v66;
    v49 = swift_initStackObject();
    OUTLINED_FUNCTION_117(v49, xmmword_1E4299720);
    v49[2].n128_u64[0] = v67;
    v49[2].n128_u64[1] = v68;
    OUTLINED_FUNCTION_41_7();
    v49[4].n128_u64[1] = v61;
    v49[3].n128_u64[0] = 0xD000000000000016;
    v49[3].n128_u64[1] = v69;
    ViewModelKeys.rawValue.getter(13);
    v49[5].n128_u64[0] = v70;
    v49[5].n128_u64[1] = v71;
    v50 = swift_initStackObject();
    OUTLINED_FUNCTION_10_143(v50);
    sub_1E384EE08(23);
    v33 = OUTLINED_FUNCTION_78_19(v72, v73);
    OUTLINED_FUNCTION_45_57(v33, xmmword_1E4299720);
    *(v33 + 32) = v74;
    *(v33 + 40) = v75;
    if (qword_1ECF671B8 == -1)
    {
      goto LABEL_12;
    }

LABEL_18:
    OUTLINED_FUNCTION_29_86();
LABEL_12:
    v76 = OUTLINED_FUNCTION_72_25(&qword_1ECF71750);
    v78 = 0xE000000000000000;
    if (!v79)
    {
      v78 = v76;
    }

    *(v33 + 48) = v77;
    *(v33 + 56) = v78;

    ViewModelKeys.rawValue.getter(12);
    *(v33 + 80) = v80;
    *(v33 + 88) = v81;
    v82 = sub_1E3E9F810(v113);
    *(v33 + 120) = v48;
    *(v33 + 96) = v82;
    v50[3].n128_u64[0] = OUTLINED_FUNCTION_54_38();
    OUTLINED_FUNCTION_18_5();
    v83 = sub_1E4205CB4();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0);
    v49[7].n128_u64[1] = v84;
    v49[6].n128_u64[0] = v83;
    v25[3].n128_u64[0] = OUTLINED_FUNCTION_54_38();
    OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_18_5();
    v85 = sub_1E4205CB4();
    v29[13].n128_u64[1] = v84;
    v29[12].n128_u64[0] = v85;
    ViewModelKeys.rawValue.getter(12);
    v29[14].n128_u64[0] = v86;
    v29[14].n128_u64[1] = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v88 = swift_initStackObject();
    OUTLINED_FUNCTION_1_243(v88);
    v25[2].n128_u64[0] = sub_1E3D46F94(40);
    v25[2].n128_u64[1] = v89;
    v25[3].n128_u64[0] = sub_1E4205F14();
    v25[3].n128_u64[1] = v90;
    OUTLINED_FUNCTION_21_9();
    v91 = sub_1E4205CB4();
    v29[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
    v29[15].n128_u64[0] = v91;
    ViewModelKeys.rawValue.getter(11);
    v29[17].n128_u64[0] = v92;
    v29[17].n128_u64[1] = v93;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8);
    v94 = OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_1_243(v94);
    sub_1E3853DA8(34);
    *(v91 + 32) = v95;
    *(v91 + 40) = v96;
    *(v91 + 48) = 1;
    OUTLINED_FUNCTION_21_9();
    v97 = sub_1E4205CB4();
    v29[19].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120);
    v29[18].n128_u64[0] = v97;
    ViewModelKeys.rawValue.getter(26);
    v29[20].n128_u64[0] = v98;
    v29[20].n128_u64[1] = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCE0);
    v100 = OUTLINED_FUNCTION_22_9();
    OUTLINED_FUNCTION_1_243(v100);
    ViewModelKeys.rawValue.getter(13);
    v97[4] = v101;
    v97[5] = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
    v103 = OUTLINED_FUNCTION_24_3();
    OUTLINED_FUNCTION_10_143(v103);
    *(v104 + 32) = v115;
    v97[6] = v104;
    OUTLINED_FUNCTION_21_9();
    v105 = sub_1E4205CB4();
    v29[22].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1B8);
    v29[21].n128_u64[0] = v105;
    ViewModelKeys.rawValue.getter(8);
    v29[23].n128_u64[0] = v106;
    v29[23].n128_u64[1] = v107;
    sub_1E3E9F5B4();
    v29[25].n128_u64[1] = v48;
    v29[24].n128_u64[0] = v108;
    v109 = OUTLINED_FUNCTION_54_38();
    *(v114 + 72) = v48;
    *(v114 + 48) = v109;
    OUTLINED_FUNCTION_54_38();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E9BE50@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

id sub_1E3E9BEFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_117(inited, xmmword_1E4299720);
  v1 = MEMORY[0x1E69E6158];
  inited[2].n128_u64[0] = v2;
  inited[2].n128_u64[1] = v3;
  inited[4].n128_u64[1] = v1;
  inited[3].n128_u64[0] = 0x74735F7974706D65;
  inited[3].n128_u64[1] = 0xEB00000000657461;
  ViewModelKeys.rawValue.getter(13);
  inited[5].n128_u64[0] = v4;
  inited[5].n128_u64[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1C8);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1E4299720;
  sub_1E384EE08(23);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301E8);
  v9 = swift_initStackObject();
  OUTLINED_FUNCTION_45_57(v9, xmmword_1E4297BE0);
  v9[2].n128_u64[0] = v10;
  v9[2].n128_u64[1] = v11;
  v12 = objc_opt_self();
  result = [v12 sharedInstance];
  if (result)
  {
    v14 = result;
    v15 = sub_1E3741090(0xD000000000000021, 0x80000001E4286FB0, result);
    v17 = v16;

    v9[3].n128_u64[0] = v15;
    v9[3].n128_u64[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    *(v6 + 48) = sub_1E4205CB4();
    sub_1E384EE08(15);
    *(v6 + 56) = v18;
    *(v6 + 64) = v19;
    v20 = swift_initStackObject();
    OUTLINED_FUNCTION_45_57(v20, xmmword_1E4297BE0);
    v20[2].n128_u64[0] = v21;
    v20[2].n128_u64[1] = v22;
    result = [v12 sharedInstance];
    if (result)
    {
      v23 = result;
      v24 = sub_1E3741090(0xD000000000000024, 0x80000001E4286FE0, result);
      v26 = v25;

      v20[3].n128_u64[0] = v24;
      v20[3].n128_u64[1] = v26;
      OUTLINED_FUNCTION_34();
      *(v6 + 72) = sub_1E4205CB4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1D0);
      v27 = OUTLINED_FUNCTION_67_24();
      inited[7].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1D8);
      inited[6].n128_u64[0] = v27;
      v28 = OUTLINED_FUNCTION_67_24();
      type metadata accessor for ViewModel();
      return sub_1E39BED80(248, v28, 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1E3E9C1C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimedMetadataViewModelCreator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1E3E9C21C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimedMetadataViewModelCreator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3E9C254()
{
  OUTLINED_FUNCTION_31_1();
  v347 = v0;
  LODWORD(v306) = v1;
  sub_1E384EE08(23);
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301E8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_45_57(inited, xmmword_1E4297BE0);
  inited[2].n128_u64[0] = v8;
  inited[2].n128_u64[1] = v9;
  inited[3].n128_u64[0] = sub_1E41FEBB4();
  inited[3].n128_u64[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  v11 = MEMORY[0x1E69E6158];
  v12 = sub_1E4205CB4();
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B1D0);
  *&v368 = v12;
  sub_1E329504C(&v368, v367);
  v13 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v370 = v13;
  v14 = OUTLINED_FUNCTION_74_20();
  sub_1E32A87C0(v14, v3, v5);

  v15 = v370;
  sub_1E384EE08(15);
  v17 = v16;
  v19 = v18;
  v20 = swift_initStackObject();
  OUTLINED_FUNCTION_15_135(v20, v21, v22, v23, v24, v25, v26, v27, v260, v269, v277, v286, v296, v306, v314, v322, v329, v338, v347, v357, v28);
  ViewModelKeys.rawValue.getter(14);
  v6[4] = v29;
  v6[5] = v30;
  v6[6] = sub_1E41FEBD4();
  v6[7] = v31;
  OUTLINED_FUNCTION_34();
  v32 = sub_1E4205CB4();
  OUTLINED_FUNCTION_82_18(v32);
  swift_isUniquelyReferenced_nonNull_native();
  v370 = v15;
  v33 = OUTLINED_FUNCTION_74_20();
  sub_1E32A87C0(v33, v17, v19);

  v34 = v370;
  sub_1E3E9F9F8();
  v36 = v35;
  sub_1E384EE08(41);
  v38 = v37;
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v369 = v41;
  *&v368 = v36;
  sub_1E329504C(&v368, v367);
  swift_isUniquelyReferenced_nonNull_native();
  v370 = v34;
  v42 = OUTLINED_FUNCTION_74_20();
  sub_1E32A87C0(v42, v38, v40);

  v43 = v370;
  if (([objc_opt_self() isTVApp] & 1) == 0)
  {
    v44 = MEMORY[0x1E69E6370];
    sub_1E384EE08(31);
    v46 = v45;
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    v49 = swift_initStackObject();
    v50 = OUTLINED_FUNCTION_50_43(v49, xmmword_1E4299720);
    *(v49 + 32) = sub_1E3C7CCAC(v50);
    *(v49 + 40) = v51;
    *(v49 + 72) = v44;
    *(v49 + 48) = 0;
    *(v49 + 80) = sub_1E3C7CCAC(0);
    *(v49 + 88) = v52;
    v53 = sub_1E3F52F38();
    v55 = *v53;
    v54 = *(v53 + 1);
    *&v368 = v55;
    *(&v368 + 1) = v54;

    MEMORY[0x1E69109E0](0xD000000000000019, 0x80000001E4287040);
    v56 = v368;
    *(v49 + 120) = v11;
    *(v49 + 96) = v56;
    v57 = sub_1E4205CB4();
    OUTLINED_FUNCTION_82_18(v57);
    swift_isUniquelyReferenced_nonNull_native();
    v370 = v43;
    v58 = OUTLINED_FUNCTION_74_20();
    sub_1E32A87C0(v58, v46, v48);

    v43 = v370;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  v59 = swift_initStackObject();
  OUTLINED_FUNCTION_21_96(v59, v60, v61, v62, v63, v64, v65, v66, v261, v270, v278, v287, v297, v307, v315, v323, v330, v339, v348, v358, v67);
  sub_1E384EE08(204);
  v59[2].n128_u64[0] = v68;
  v59[2].n128_u64[1] = v69;
  v70 = swift_initStackObject();
  OUTLINED_FUNCTION_117(v70, xmmword_1E429A230);
  v70[2].n128_u64[0] = v71;
  v70[2].n128_u64[1] = v72;
  v73 = sub_1E41FEBC4();
  v70[4].n128_u64[1] = v11;
  v70[3].n128_u64[0] = v73;
  v70[3].n128_u64[1] = v74;
  ViewModelKeys.rawValue.getter(9);
  v70[5].n128_u64[0] = v75;
  v70[5].n128_u64[1] = v76;
  v70[7].n128_u64[1] = v11;
  v70[6].n128_u64[0] = 0x3030312E363131;
  v70[6].n128_u64[1] = 0xE700000000000000;
  ViewModelKeys.rawValue.getter(13);
  v70[8].n128_u64[0] = v77;
  v70[8].n128_u64[1] = v78;
  v70[10].n128_u64[1] = v41;
  v70[9].n128_u64[0] = v43;
  ViewModelKeys.rawValue.getter(12);
  v70[11].n128_u64[0] = v79;
  v70[11].n128_u64[1] = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B218);
  v81 = OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_15_135(v81, v82, v83, v84, v85, v86, v87, v88, v262, v271, v279, v288, v298, v308, 7, 14, v331, v59, v349, v359, v89);
  v43[4] = sub_1E3D46F94(44);
  v43[5] = v90;
  v43[6] = 0x3FF0000000000000;
  OUTLINED_FUNCTION_34();
  v91 = sub_1E4205CB4();
  v70[13].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3B220);
  v70[12].n128_u64[0] = v91;
  ViewModelKeys.rawValue.getter(11);
  v70[14].n128_u64[0] = v92;
  v70[14].n128_u64[1] = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CED8);
  v94 = OUTLINED_FUNCTION_22_9();
  OUTLINED_FUNCTION_15_135(v94, v95, v96, v97, v98, v99, v100, v101, v263, v272, v280, v289, v299, v309, v316, v324, v332, v340, v350, v360, v102);
  *(v91 + 32) = j__OUTLINED_FUNCTION_20_30();
  *(v91 + 40) = v103;
  *(v91 + 48) = sub_1E34AF508(v310 & 1, 0);
  OUTLINED_FUNCTION_34();
  v104 = sub_1E4205CB4();
  v70[16].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120);
  v70[15].n128_u64[0] = v104;
  ViewModelKeys.rawValue.getter(15);
  v70[17].n128_u64[0] = v105;
  v70[17].n128_u64[1] = v106;
  if ([objc_opt_self() isTVApp])
  {
    v107 = sub_1E4205F14();
    v291 = v108;
    v301 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    v109 = swift_initStackObject();
    OUTLINED_FUNCTION_15_135(v109, v110, v111, v112, v113, v114, v115, v116, v264, v273, v281, v291, v301, v310, v317, v325, v333, v341, v351, v41, v117);
    ViewModelKeys.rawValue.getter(16);
    *(v91 + 32) = v118;
    *(v91 + 40) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
    v120 = swift_initStackObject();
    OUTLINED_FUNCTION_21_96(v120, v121, v122, v123, v124, v125, v126, v127, v265, v274, v282, v292, v302, v91, v318, v326, v334, v342, v352, v361, v128);
    OUTLINED_FUNCTION_41_7();
    OUTLINED_FUNCTION_48_42();
    *(v130 + 32) = v129 + 2;
    *(v130 + 40) = v131;
    v132 = swift_initStackObject();
    v266 = xmmword_1E4298AD0;
    *(v132 + 16) = xmmword_1E4298AD0;
    *(v132 + 32) = sub_1E4205F14();
    *(v132 + 40) = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v134 = swift_initStackObject();
    *(v134 + 16) = xmmword_1E4299720;
    *(v134 + 32) = 25705;
    *(v134 + 40) = 0xE200000000000000;
    *(v134 + 48) = sub_1E41FEBC4();
    *(v134 + 56) = v135;
    *(v134 + 64) = 1701869940;
    *(v134 + 72) = 0xE400000000000000;
    *(v134 + 80) = 0x6E6F73726550;
    *(v134 + 88) = 0xE600000000000000;
    v136 = sub_1E4205CB4();
    *(v132 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
    *(v132 + 48) = v136;
    *(v132 + 80) = sub_1E4205F14();
    *(v132 + 88) = v137;
    v138 = swift_initStackObject();
    *(v138 + 16) = xmmword_1E4298AD0;
    strcpy((v138 + 32), "transitionType");
    *(v138 + 47) = -18;
    *(v138 + 48) = 1752397136;
    *(v138 + 56) = 0xE400000000000000;
    OUTLINED_FUNCTION_41_7();
    v139[9] = v11;
    v139[10] = 0xD000000000000018;
    v139[11] = v140;
    *(v138 + 96) = sub_1E41FEBC4();
    *(v138 + 104) = v141;
    *(v138 + 120) = v11;
    *(v138 + 128) = 0x646574616D696E61;
    *(v138 + 136) = 0xE800000000000000;
    *(v138 + 144) = 1;
    *(v138 + 168) = MEMORY[0x1E69E6370];
    strcpy((v138 + 176), "documentType");
    *(v138 + 216) = v11;
    *(v138 + 189) = 0;
    *(v138 + 190) = -5120;
    *(v138 + 192) = v303;
    *(v138 + 200) = v293;

    v142 = sub_1E4205CB4();
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    *(v132 + 96) = v142;
    *(v132 + 120) = v143;
    strcpy((v132 + 128), "controllerRef");
    *(v132 + 142) = -4864;
    *(v132 + 144) = sub_1E4205F14();
    *(v132 + 152) = v144;
    *(v132 + 168) = v11;
    strcpy((v132 + 176), "documentType");
    *(v132 + 216) = v11;
    *(v132 + 189) = 0;
    *(v132 + 190) = -5120;
    *(v132 + 192) = v303;
    *(v132 + 200) = v293;
    v120[3].n128_u64[0] = sub_1E4205CB4();
    v41 = v362;
    v145 = sub_1E4205CB4();
    *(v311 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0);
    *(v311 + 48) = v145;
    v146 = v11;
    OUTLINED_FUNCTION_71_28();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    v147 = swift_initStackObject();
    OUTLINED_FUNCTION_15_135(v147, v148, v149, v150, v151, v152, v153, v154, v264, v273, v281, v290, v300, v310, v317, v325, v333, v341, v351, v41, v155);
    ViewModelKeys.rawValue.getter(16);
    *(v91 + 32) = v156;
    *(v91 + 40) = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
    v158 = swift_initStackObject();
    OUTLINED_FUNCTION_21_96(v158, v159, v160, v161, v162, v163, v164, v165, v267, v275, v284, v294, v304, v312, v320, v327, v336, v344, v354, v363, v166);
    OUTLINED_FUNCTION_41_7();
    *(v167 + 32) = 0xD000000000000010;
    *(v167 + 40) = v168;
    v169 = swift_initStackObject();
    *(v169 + 16) = xmmword_1E4299720;
    *(v169 + 32) = sub_1E4205F14();
    *(v169 + 40) = v170;
    v171 = sub_1E4205F14();
    *(v169 + 72) = v11;
    *(v169 + 48) = v171;
    *(v169 + 56) = v172;
    *(v169 + 80) = sub_1E4205F14();
    *(v169 + 88) = v173;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
    v174 = swift_initStackObject();
    OUTLINED_FUNCTION_21_96(v174, v175, v176, v177, v178, v179, v180, v181, v268, v276, v285, v295, v305, v313, v321, v328, v337, v345, v355, v364, v182);
    *(v183 + 32) = 0x6C72556E65706FLL;
    *(v183 + 40) = 0xE700000000000000;
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    v366 = v184;
    v185 = sub_1E41FEBC4();
    MEMORY[0x1E69109E0](v185);

    v174[3].n128_u64[0] = 0xD00000000000001CLL;
    v174[3].n128_u64[1] = v366;
    v186 = sub_1E4205CB4();
    *(v169 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
    *(v169 + 96) = v186;
    OUTLINED_FUNCTION_59_30();
    v158[3].n128_u64[0] = sub_1E4205CB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    OUTLINED_FUNCTION_59_30();
    v187 = sub_1E4205CB4();
    *(v91 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0);
    *(v91 + 48) = v187;
    v146 = v11;
    OUTLINED_FUNCTION_59_30();
  }

  v188 = sub_1E4205CB4();
  v70[19].n128_u64[1] = v41;
  v70[18].n128_u64[0] = v188;
  ViewModelKeys.rawValue.getter(8);
  v70[20].n128_u64[0] = v189;
  v70[20].n128_u64[1] = v190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  v191 = swift_initStackObject();
  v192 = OUTLINED_FUNCTION_130(v191, xmmword_1E4297BD0);
  v191[2].n128_u64[0] = sub_1E3BA363C(v192);
  v191[2].n128_u64[1] = v193;
  v194 = swift_initStackObject();
  *(v194 + 16) = v319;
  *(v194 + 32) = sub_1E4205F14();
  *(v194 + 40) = v195;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  v196 = swift_initStackObject();
  OUTLINED_FUNCTION_21_96(v196, v197, v198, v199, v200, v201, v202, v203, v266, *(&v266 + 1), v283, v293, v303, v311, v319, *(&v319 + 1), v335, v343, v353, v362, v204);
  v196[2].n128_u64[0] = sub_1E4205F14();
  v196[2].n128_u64[1] = v205;
  v206 = sub_1E41FEBB4();
  if (v207)
  {
    v208 = v146;
  }

  else
  {
    v206 = sub_1E41FEBD4();
    v208 = v146;
    if (!v207)
    {
      v206 = 0;
      v207 = 0xE000000000000000;
    }
  }

  v196[3].n128_u64[0] = v206;
  v196[3].n128_u64[1] = v207;
  v209 = sub_1E4205CB4();
  *(v194 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
  *(v194 + 48) = v209;
  *(v194 + 80) = sub_1E4205F14();
  *(v194 + 88) = v210;
  v211 = sub_1E4205F14();
  *(v194 + 120) = v208;
  *(v194 + 96) = v211;
  *(v194 + 104) = v212;
  *(v194 + 128) = sub_1E4205F14();
  *(v194 + 136) = v213;
  v214 = sub_1E4205F14();
  *(v194 + 168) = v208;
  *(v194 + 144) = v214;
  *(v194 + 152) = v215;
  *(v194 + 176) = sub_1E4205F14();
  *(v194 + 184) = v216;
  v217 = sub_1E41FEBC4();
  *(v194 + 216) = v208;
  *(v194 + 192) = v217;
  *(v194 + 200) = v218;
  *(v194 + 224) = sub_1E4205F14();
  *(v194 + 232) = v219;
  v220 = sub_1E4205F14();
  *(v194 + 264) = v208;
  *(v194 + 240) = v220;
  *(v194 + 248) = v221;
  *(v194 + 272) = sub_1E3F6ABA4(2);
  *(v194 + 280) = v222;
  v223 = [objc_opt_self() isTVApp];
  v224 = MEMORY[0x1E69E6370];
  *(v194 + 312) = MEMORY[0x1E69E6370];
  *(v194 + 288) = v223 ^ 1;
  *(v194 + 320) = sub_1E3F6ABA4(3);
  *(v194 + 328) = v225;
  *(v194 + 360) = v224;
  *(v194 + 336) = 1;
  OUTLINED_FUNCTION_34();
  v226 = sub_1E4205CB4();
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v191[4].n128_u64[1] = v227;
  v191[3].n128_u64[0] = v226;
  v191[5].n128_u64[0] = sub_1E3BA363C(1);
  v191[5].n128_u64[1] = v228;
  v229 = swift_initStackObject();
  *(v229 + 16) = xmmword_1E4298AD0;
  *(v229 + 32) = sub_1E4205F14();
  *(v229 + 40) = v230;
  v231 = sub_1E41FEBC4();
  *(v229 + 72) = v208;
  *(v229 + 48) = v231;
  *(v229 + 56) = v232;
  *(v229 + 80) = sub_1E4205F14();
  *(v229 + 88) = v233;
  v234 = sub_1E41FEBB4();
  *(v229 + 120) = v208;
  if (!v235)
  {
    v234 = sub_1E41FEBD4();
    if (!v235)
    {
      v234 = 0;
      v235 = 0xE000000000000000;
    }
  }

  *(v229 + 96) = v234;
  *(v229 + 104) = v235;
  *(v229 + 128) = sub_1E4205F14();
  *(v229 + 136) = v236;
  v237 = sub_1E4205F14();
  *(v229 + 168) = v208;
  *(v229 + 144) = v237;
  *(v229 + 152) = v238;
  *(v229 + 176) = sub_1E4205F14();
  *(v229 + 184) = v239;
  v240 = MEMORY[0x1E69E6530];
  *(v229 + 216) = MEMORY[0x1E69E6530];
  *(v229 + 192) = v356;
  v241 = sub_1E4205CB4();
  v191[7].n128_u64[1] = v227;
  v191[6].n128_u64[0] = v241;
  v191[8].n128_u64[0] = sub_1E3BA363C(2);
  v191[8].n128_u64[1] = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = xmmword_1E429A240;
  *(v243 + 32) = sub_1E4205F14();
  *(v243 + 40) = v244;
  v245 = sub_1E41FEBC4();
  *(v243 + 72) = v208;
  *(v243 + 48) = v245;
  *(v243 + 56) = v246;
  *(v243 + 80) = sub_1E4205F14();
  *(v243 + 88) = v247;
  v248 = sub_1E4205F14();
  *(v243 + 120) = v208;
  *(v243 + 96) = v248;
  *(v243 + 104) = v249;
  *(v243 + 128) = sub_1E4205F14();
  *(v243 + 136) = v250;
  *(v243 + 168) = v240;
  *(v243 + 144) = v356;
  *(v243 + 176) = sub_1E4205F14();
  *(v243 + 184) = v251;
  v252 = sub_1E41FEBB4();
  *(v243 + 216) = v208;
  if (v253)
  {
    v254 = v365;
  }

  else
  {
    v252 = sub_1E41FEBD4();
    v254 = v365;
    if (!v253)
    {
      v252 = 0;
      v253 = 0xE000000000000000;
    }
  }

  v255 = MEMORY[0x1E69E6370];
  *(v243 + 192) = v252;
  *(v243 + 200) = v253;
  *(v243 + 224) = sub_1E3F6ABA4(1);
  *(v243 + 232) = v256;
  *(v243 + 264) = v255;
  *(v243 + 240) = 1;
  v257 = OUTLINED_FUNCTION_85_19();
  v191[10].n128_u64[1] = v227;
  v191[9].n128_u64[0] = v257;
  v258 = OUTLINED_FUNCTION_85_19();
  v70[22].n128_u64[1] = v254;
  v70[21].n128_u64[0] = v258;
  v259 = OUTLINED_FUNCTION_85_19();
  *(v346 + 72) = v254;
  *(v346 + 48) = v259;
  OUTLINED_FUNCTION_85_19();
  OUTLINED_FUNCTION_25_2();
}