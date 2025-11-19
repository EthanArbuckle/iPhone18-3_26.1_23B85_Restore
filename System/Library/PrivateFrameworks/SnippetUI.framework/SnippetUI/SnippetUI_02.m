char *sub_26A4C2444(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_94(a3, result);
  }

  return result;
}

uint64_t sub_26A4C24D0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26A4C24DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26A4C2E0C()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *v0;
  if ((*(v0 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    OUTLINED_FUNCTION_112();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

uint64_t sub_26A4C2F28()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SummaryItemImageRightView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4D7EA8();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A4C3110@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SummaryItemImageRightView();
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t SummaryItemImageRightView.init(text1:text2:text3:text4:thumbnail1:thumbnail2:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = type metadata accessor for SummaryItemImageRightView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = v6[5];
  *(v10 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v12 = (v10 + v6[6]);
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v13, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4D7E54();
  sub_26A6AEE74(v40);
  memcpy(v12, v40, 0xBFuLL);
  OUTLINED_FUNCTION_136();
  sub_26A4D7D24();
  v14 = v6[7];
  *(v10 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v15 = (v10 + v6[8]);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v35 = OUTLINED_FUNCTION_74(xmmword_281588758);
  v36 = v16;
  sub_26A4D7E54();
  sub_26A6AEE74(v45);
  memcpy(v15, v45, 0xC0uLL);
  v15[12] = v36;
  v15[13] = v35;
  v17 = v42;
  v15[14] = v41;
  v15[15] = v17;
  v18 = v44;
  v15[16] = v43;
  v15[17] = v18;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  OUTLINED_FUNCTION_161();
  *(v10 + v6[9]) = v21(v19, v20);
  sub_26A4D7E54();
  if (v39)
  {
    v22 = OUTLINED_FUNCTION_68();
    v23(v22);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4D6FD8();
    v15 = 0;
  }

  *(v10 + v6[10]) = v15;
  sub_26A4D7E54();
  if (v39)
  {
    v24 = OUTLINED_FUNCTION_68();
    v25(v24);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4D6FD8();
    v15 = 0;
  }

  *(v10 + v6[11]) = v15;
  sub_26A4D7E54();
  if (v39)
  {
    v26 = OUTLINED_FUNCTION_68();
    v27(v26);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4D6FD8();
    v15 = 0;
  }

  *(v10 + v6[12]) = v15;
  sub_26A4D7E54();
  if (v39)
  {
    v28 = OUTLINED_FUNCTION_68();
    v29(v28);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4D6FD8();
    v15 = 0;
  }

  *(v10 + v6[13]) = v15;
  v30 = a6[3];
  v31 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, v30);
  OUTLINED_FUNCTION_161();
  v33 = v32(v30, v31);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_229();
  *(v10 + v6[14]) = v33;
  sub_26A4D3490();
  __swift_destroy_boxed_opaque_existential_1(a6);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SummaryItemImageRightView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A4C2F28();
  v18 = 0u;
  v19 = 0u;
  v20 = 1;
  sub_26A4C2E0C();
  sub_26A4C3110(v6);
  v9 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  v17 = v1;
  sub_26A4CFB8C();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_26A68CCBC;
  *(v10 + 24) = 0;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D0) + 36);
  *(v11 + 16) = swift_getKeyPath();
  *(v11 + 24) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v13 = *(v12 + 40);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v12 + 44);
  result = swift_getKeyPath();
  *v14 = result;
  *(v14 + 8) = 0;
  *v11 = sub_26A4D1F7C;
  *(v11 + 8) = v10;
  return result;
}

uint64_t sub_26A4C3A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA3D0);
  MEMORY[0x28223BE20](v26);
  v4 = &v24 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA408);
  MEMORY[0x28223BE20](v25);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA3C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA3B0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_26A84F3A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4C3110(v14);
  v15 = sub_26A84F388();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v16 = sub_26A84FC08();
    v17 = a1 + *(type metadata accessor for SummaryItemImageRightView() + 24);
    v18 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28));
    *v7 = v16;
    *(v7 + 1) = v18;
    v7[16] = 0;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA410);
    sub_26A4D0EF0(a1, &v7[*(v19 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    sub_26A4D7EA8();
    memcpy(&v10[*(v8 + 36)], __src, 0x70uLL);
  }

  else
  {
    sub_26A4C3E78(v4);
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();
    v22 = &v4[*(v26 + 36)];
    *v22 = KeyPath;
    v22[8] = 0;
    *(v22 + 2) = v21;
    *(v22 + 12) = 256;
  }

  sub_26A4D7E54();
  swift_storeEnumTagMultiPayload();
  sub_26A4D7A9C();
  sub_26A4D7B54();
  sub_26A84FDF8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A4C3E78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &__src[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA3F0);
  MEMORY[0x28223BE20](v7);
  v9 = &__src[-v8];
  if (sub_26A4C2E0C() == 7)
  {
    sub_26A4D7E10();
    switch(sub_26A63CD18())
    {
      case 1u:
      case 2u:
      case 3u:
        v10 = sub_26A852598();

        if ((v10 & 1) == 0)
        {
          goto LABEL_6;
        }

        break;
      case 4u:
        goto LABEL_6;
      default:

        break;
    }

    v11 = sub_26A84FA78();
  }

  else
  {
LABEL_6:
    if (qword_28157FC98 != -1)
    {
      swift_once();
    }

    v11 = qword_2815889D8;
  }

  v12 = v2 + *(type metadata accessor for SummaryItemImageRightView() + 24);
  v13 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28));
  *v6 = v11;
  *(v6 + 1) = v13;
  v6[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AA478);
  sub_26A4D036C(v2, &v6[*(v14 + 44)]);
  sub_26A851458();
  sub_26A84F628();
  sub_26A4D7EA8();
  memcpy(&v9[*(v7 + 36)], __src, 0x70uLL);
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA3E0);
  *(a1 + *(result + 36)) = 256;
  return result;
}

void sub_26A4C417C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6(v12, v58);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24(v15, v59);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25(v18, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA350);
  OUTLINED_FUNCTION_15();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9(v22, v61);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_12(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v63);
  memcpy((v1 + 16), v63, 0xC0uLL);
  OUTLINED_FUNCTION_23();
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA358);
  OUTLINED_FUNCTION_75();
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_173(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_140(v32);
  OUTLINED_FUNCTION_172();
  *(v2 + v0) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_171();
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_54(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_53(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_52(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_72(v36);
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_67();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_0(v62);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v37);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_40();
  v38();
  OUTLINED_FUNCTION_200();
  sub_26A4D78CC();
  OUTLINED_FUNCTION_45();
  sub_26A850AF8();
  OUTLINED_FUNCTION_152();
  v39 = OUTLINED_FUNCTION_17();
  v40(v39);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_118();
  v41 = OUTLINED_FUNCTION_51();
  v42(v41);
  OUTLINED_FUNCTION_73();
  if ((v43 & 1) == 0)
  {
    v47 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v47, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v48 = swift_allocObject();
      OUTLINED_FUNCTION_153(v48);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v49);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v50 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v50);
    if (v51)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v52 = OUTLINED_FUNCTION_116();
      v53(v52);
      if (&unk_26A855EC0)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v54 = swift_allocObject();
        OUTLINED_FUNCTION_147(v54);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v55 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_126();

        v56 = OUTLINED_FUNCTION_42();
        v57(v56);
        OUTLINED_FUNCTION_70();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v44 = OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_174(v44);
  OUTLINED_FUNCTION_1();
  v45 = sub_26A4D2D18();
  OUTLINED_FUNCTION_189(v45);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v46 = swift_getKeyPath();
  *v20 = &qword_2803AA360;
  OUTLINED_FUNCTION_4(v46);
  *(&qword_2803A91C8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_86();
}

void sub_26A4C48EC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_38(v3, v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_124(v11, v12, v13, v14);
  OUTLINED_FUNCTION_57();
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6(v16, v64);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_24(v19, v65);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v20);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25(v22, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA2D0);
  OUTLINED_FUNCTION_15();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9(v26, v67);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_74(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v71);
  memcpy((v0 + 16), v71, 0xC0uLL);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_215();
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v32);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA2D8);
  v36 = v0 + *(v35 + 80);
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  *(v36 + 24) = swift_getKeyPath();
  *(v36 + 32) = 0;
  type metadata accessor for ActionHandler(0);
  OUTLINED_FUNCTION_219();
  *(v36 + v1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_157(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v39);
  v40 = v36 + *(v2 + 40);
  v41 = swift_getKeyPath();
  OUTLINED_FUNCTION_123(v41);
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_78(v36 + v40);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_78(v36 + v40);
  OUTLINED_FUNCTION_0(*(v35 + 88));
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v42);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_125();
  v68(v69);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA2E0);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_212();
  v44 = sub_26A4D7DCC();
  OUTLINED_FUNCTION_45();
  sub_26A850AF8();
  memcpy(v70, v69, sizeof(v70));
  OUTLINED_FUNCTION_212();
  sub_26A4D6FD8();
  v45 = OUTLINED_FUNCTION_116();
  v46(v45);
  v69[0] = v43;
  v69[1] = v44;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_191();
  v47 = sub_26A851248();
  v48 = v24 + 8;
  v49 = OUTLINED_FUNCTION_128();
  v50(v49);
  OUTLINED_FUNCTION_149();
  if ((v51 & 1) == 0)
  {
    v54 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v54, &unk_287B13068))
    {
      v69[3] = &type metadata for CarPlayComponentWithAction;
      v69[4] = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v55 = swift_allocObject();
      OUTLINED_FUNCTION_153(v55);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v56);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_163();
    sub_26A84F3A8();
    OUTLINED_FUNCTION_34(v48);
    if (v57)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v58 = OUTLINED_FUNCTION_112();
      v59(v58);
      if (v48)
      {
        v69[3] = &type metadata for WatchComponentWithAction;
        v69[4] = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v60 = swift_allocObject();
        OUTLINED_FUNCTION_147(v60);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v61 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_126();

        v62 = OUTLINED_FUNCTION_42();
        v63(v62);
        OUTLINED_FUNCTION_120();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v69[3] = &type metadata for DefaultComponentWithAction;
    v69[4] = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v69[0] = swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v69[3] = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_1();
  v52 = sub_26A4D2D18();
  OUTLINED_FUNCTION_189(v52);
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_28();
  sub_26A4D7E54();
  v53 = swift_getKeyPath();
  *v44 = v47;
  OUTLINED_FUNCTION_22(v53);
  *(&qword_2803A91C8 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_86();
}

void sub_26A4C512C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_187();
  sub_26A4C5198();
}

void sub_26A4C5198()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_127(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6(v13, v58);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_218(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_82();
  v20 = OUTLINED_FUNCTION_193(v19);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_106();
  __swift_instantiateConcreteTypeFromMangledNameV2(v22);
  OUTLINED_FUNCTION_15();
  v59 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_154(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v65);
  memcpy((v2 + 16), v65, 0xC0uLL);
  OUTLINED_FUNCTION_170();
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_143();
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_121(v35);
  OUTLINED_FUNCTION_220();
  *(v1 + v0) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_216();
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_105(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_103(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_104(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_72(v39);
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_76();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_0(v33[22]);
  OUTLINED_FUNCTION_20(v33[23]);
  v60 = v40;
  OUTLINED_FUNCTION_197(v33[16]);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_36(v2 + v33[18]);
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_214();
  v41();
  v42 = OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_117();
  sub_26A850AF8();
  OUTLINED_FUNCTION_151();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_213();
  v43 = OUTLINED_FUNCTION_112();
  v44(v43);
  v62[0] = v20;
  v62[1] = v42;
  OUTLINED_FUNCTION_2();
  swift_getOpaqueTypeConformance2();
  v45 = OUTLINED_FUNCTION_118();
  v46 = OUTLINED_FUNCTION_128();
  v47(v46);
  *(v2 + v33[17]) = v45;
  if ((v61 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_210(v33[19]);
    if (sub_26A61B05C(v49, &unk_287B13068))
    {
      v63 = &type metadata for CarPlayComponentWithAction;
      v64 = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v62[0] = swift_allocObject();
      OUTLINED_FUNCTION_83();

      OUTLINED_FUNCTION_166(v50);
      sub_26A4D6FD8();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_181();
    v51 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v51);
    if (v52)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v53 = OUTLINED_FUNCTION_116();
      v54(v53);
      if ((v59 + 8))
      {
        v63 = &type metadata for WatchComponentWithAction;
        v64 = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v62[0] = swift_allocObject();
        OUTLINED_FUNCTION_115();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v55 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_167();

        v56 = OUTLINED_FUNCTION_42();
        v57(v56);
        OUTLINED_FUNCTION_70();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v63 = &type metadata for DefaultComponentWithAction;
    v64 = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v62[0] = swift_allocObject();
    OUTLINED_FUNCTION_102();
    sub_26A4D1AD0();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v63 = OUTLINED_FUNCTION_176(v33[19]);
  OUTLINED_FUNCTION_1();
  v64 = sub_26A4D2D18();
  __swift_allocate_boxed_opaque_existential_1(v62);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_44();
  sub_26A4D7E54();
  v48 = swift_getKeyPath();
  *v3 = v45;
  OUTLINED_FUNCTION_4(v48);
  *(&qword_2803A91C8 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  sub_26A4D3270(v62, v60);
  OUTLINED_FUNCTION_86();
}

void sub_26A4C591C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_33(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6(v13, v60);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24(v16, v61);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25(v19, v62);
  type metadata accessor for FactItemStandardLayout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_180();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA248);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13(v23, v63);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_89();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_18(xmmword_281588758);
  OUTLINED_FUNCTION_198();
  sub_26A6AEE74(&v64);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_32();
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA250);
  OUTLINED_FUNCTION_88();
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v32);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_121(v33);
  OUTLINED_FUNCTION_185();
  *(v0 + v1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_184();
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_63(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_62(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_61(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_108(v37);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_69();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_0(*(v3 + 88));
  OUTLINED_FUNCTION_20(*(v3 + 92));
  OUTLINED_FUNCTION_178(v38);
  OUTLINED_FUNCTION_113(v39);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_60();
  v40();
  sub_26A4D2D18();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_202();
  v41 = OUTLINED_FUNCTION_35();
  v42(v41);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_131();
  v43 = OUTLINED_FUNCTION_64();
  v44(v43);
  OUTLINED_FUNCTION_91();
  if ((v45 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_90();
    if (sub_26A61B05C(v49, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_160(v50);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_203();

      OUTLINED_FUNCTION_166(v51);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_177();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v52 = sub_26A84F3A8();
    OUTLINED_FUNCTION_56(v52);
    if (v53)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_65();
      v54 = OUTLINED_FUNCTION_151();
      v55(v54);
      if (v2)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v56 = swift_allocObject();
        OUTLINED_FUNCTION_159(v56);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_208();
        sub_26A851EA8();
        v57 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_134();

        v58 = OUTLINED_FUNCTION_42();
        v59(v58);
        OUTLINED_FUNCTION_107();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_135();
  sub_26A4D6FD8();
  v46 = OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_188(v46);
  OUTLINED_FUNCTION_1();
  v47 = sub_26A4D2D18();
  OUTLINED_FUNCTION_194(v47);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v48 = swift_getKeyPath();
  *v21 = v1;
  OUTLINED_FUNCTION_4(v48);
  *(&qword_2803A91C8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_86();
}

void sub_26A4C605C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_33(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6(v13, v60);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24(v16, v61);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25(v19, v62);
  type metadata accessor for SummaryItemStandardLayout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_180();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B30);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13(v23, v63);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_89();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_18(xmmword_281588758);
  OUTLINED_FUNCTION_198();
  sub_26A6AEE74(&v64);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_32();
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9B38);
  OUTLINED_FUNCTION_88();
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v32);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_121(v33);
  OUTLINED_FUNCTION_185();
  *(v0 + v1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_184();
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_63(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_62(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_61(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_108(v37);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_69();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_0(*(v3 + 88));
  OUTLINED_FUNCTION_20(*(v3 + 92));
  OUTLINED_FUNCTION_178(v38);
  OUTLINED_FUNCTION_113(v39);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_60();
  v40();
  sub_26A4D2D18();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_202();
  v41 = OUTLINED_FUNCTION_35();
  v42(v41);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_131();
  v43 = OUTLINED_FUNCTION_64();
  v44(v43);
  OUTLINED_FUNCTION_91();
  if ((v45 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_90();
    if (sub_26A61B05C(v49, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_160(v50);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_203();

      OUTLINED_FUNCTION_166(v51);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_177();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v52 = sub_26A84F3A8();
    OUTLINED_FUNCTION_56(v52);
    if (v53)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_65();
      v54 = OUTLINED_FUNCTION_151();
      v55(v54);
      if (v2)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v56 = swift_allocObject();
        OUTLINED_FUNCTION_159(v56);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_208();
        sub_26A851EA8();
        v57 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_134();

        v58 = OUTLINED_FUNCTION_42();
        v59(v58);
        OUTLINED_FUNCTION_107();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_135();
  sub_26A4D6FD8();
  v46 = OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_188(v46);
  OUTLINED_FUNCTION_1();
  v47 = sub_26A4D2D18();
  OUTLINED_FUNCTION_194(v47);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v48 = swift_getKeyPath();
  *v21 = v1;
  OUTLINED_FUNCTION_4(v48);
  *(&qword_2803A91C8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_86();
}

void sub_26A4C679C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6(v12, v60);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24(v15, v61);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25(v18, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA208);
  OUTLINED_FUNCTION_15();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9(v22, v63);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_12(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v67);
  memcpy((v1 + 16), v67, 0xC0uLL);
  OUTLINED_FUNCTION_23();
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA210);
  OUTLINED_FUNCTION_75();
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_173(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_140(v32);
  OUTLINED_FUNCTION_172();
  *(v2 + v0) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_171();
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_54(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_53(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_52(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_72(v36);
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_67();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_0(v66);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v37);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_40();
  v38();
  v39 = OUTLINED_FUNCTION_200();
  v40 = sub_26A4D747C();
  OUTLINED_FUNCTION_45();
  sub_26A850AF8();
  memcpy(v65, v64, sizeof(v65));
  sub_26A4D6FD8();
  v41 = OUTLINED_FUNCTION_17();
  v42(v41);
  v64[0] = v39;
  v64[1] = v40;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_118();
  v43 = OUTLINED_FUNCTION_51();
  v44(v43);
  OUTLINED_FUNCTION_73();
  if ((v45 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v49, &unk_287B13068))
    {
      v64[3] = &type metadata for CarPlayComponentWithAction;
      v64[4] = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_153(v50);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v51);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v52 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v52);
    if (v53)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v54 = OUTLINED_FUNCTION_116();
      v55(v54);
      if (&unk_26A855DF0)
      {
        v64[3] = &type metadata for WatchComponentWithAction;
        v64[4] = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v56 = swift_allocObject();
        OUTLINED_FUNCTION_147(v56);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v57 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_126();

        v58 = OUTLINED_FUNCTION_42();
        v59(v58);
        OUTLINED_FUNCTION_70();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v64[3] = &type metadata for DefaultComponentWithAction;
    v64[4] = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v64[0] = swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v46 = OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_174(v46);
  OUTLINED_FUNCTION_1();
  v47 = sub_26A4D2D18();
  OUTLINED_FUNCTION_189(v47);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v48 = swift_getKeyPath();
  *v20 = &qword_2803AA218;
  OUTLINED_FUNCTION_4(v48);
  *(&qword_2803A91C8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_86();
}

void sub_26A4C7008()
{
  OUTLINED_FUNCTION_85();
  v64 = v4;
  OUTLINED_FUNCTION_66(v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_230(v11);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6(v13, v59);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24(v16, v60);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25(v19, v61);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA128);
  OUTLINED_FUNCTION_15();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_13(v24, v62);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v71 = xmmword_281588758[0];
  v72 = unk_281588768;
  v73 = xmmword_281588778;
  v74 = unk_281588788;
  v75 = xmmword_281588758[0];
  v76 = unk_281588768;
  v77 = xmmword_281588778;
  v78 = unk_281588788;
  v66 = xmmword_281588778;
  v63 = unk_281588788;
  sub_26A4D7E54();
  sub_26A6AEE74(v79);
  memcpy(v2 + 1, v79, 0xC0uLL);
  v2[13] = v66;
  v2[14] = v63;
  v27 = v76;
  v2[15] = v75;
  v2[16] = v27;
  v28 = v78;
  v2[17] = v77;
  v2[18] = v28;
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v32);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA130);
  OUTLINED_FUNCTION_122();
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_119(v35);
  v36 = swift_getKeyPath();
  v37 = OUTLINED_FUNCTION_164(v36);
  v38 = *(v37 + 24);
  *(v1 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v39);
  v40 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v40);
  v41 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v41);
  v42 = swift_getKeyPath();
  OUTLINED_FUNCTION_225(v42);
  v43 = *(v37 + 44);
  type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_78(v1 + v43);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_78(v1 + v43);
  OUTLINED_FUNCTION_0(v3[22]);
  OUTLINED_FUNCTION_20(v3[23]);
  v67 = v44;
  sub_26A4D7E54();
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_125();
  v64(v68);
  v45 = MEMORY[0x277CE11C8];
  v46 = MEMORY[0x277CE11C0];
  OUTLINED_FUNCTION_117();
  sub_26A850AF8();

  OUTLINED_FUNCTION_213();
  v47 = OUTLINED_FUNCTION_183();
  v48(v47);
  v68[0] = v45;
  v68[1] = v46;
  OUTLINED_FUNCTION_2();
  swift_getOpaqueTypeConformance2();
  v49 = OUTLINED_FUNCTION_131();
  (*(v22 + 8))(v0, v20);
  *(v2 + v3[17]) = v49;
  if ((v65 & 1) == 0)
  {
    v51 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v51, &unk_287B13068))
    {
      v69 = &type metadata for CarPlayComponentWithAction;
      v70 = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v68[0] = swift_allocObject();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v52);
      sub_26A4D6FD8();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_224();
    sub_26A84F3A8();
    OUTLINED_FUNCTION_34(v46);
    if (v53)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v54 = OUTLINED_FUNCTION_112();
      v55(v54);
      if (v46)
      {
        v69 = &type metadata for WatchComponentWithAction;
        v70 = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v68[0] = swift_allocObject();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v56 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_167();

        v57 = OUTLINED_FUNCTION_42();
        v58(v57);
        sub_26A771AB4();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v69 = &type metadata for DefaultComponentWithAction;
    v70 = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v68[0] = swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v69 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_1();
  v70 = sub_26A4D2D18();
  __swift_allocate_boxed_opaque_existential_1(v68);
  OUTLINED_FUNCTION_168();
  sub_26A4D7E54();
  v50 = swift_getKeyPath();
  *v20 = v49;
  OUTLINED_FUNCTION_22(v50);
  *(&qword_2803A91C8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  sub_26A4D3270(v68, v67);
  OUTLINED_FUNCTION_86();
}

void sub_26A4C7818()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_187();
  sub_26A4C5198();
}

void sub_26A4C7884()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_33(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6(v13, v60);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24(v16, v61);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25(v19, v62);
  type metadata accessor for SimpleItemStandardLayout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_180();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA0F0);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13(v23, v63);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_89();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_18(xmmword_281588758);
  OUTLINED_FUNCTION_198();
  sub_26A6AEE74(&v64);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_32();
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA0F8);
  OUTLINED_FUNCTION_88();
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v32);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_121(v33);
  OUTLINED_FUNCTION_185();
  *(v0 + v1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_184();
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_63(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_62(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_61(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_108(v37);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_69();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_0(*(v3 + 88));
  OUTLINED_FUNCTION_20(*(v3 + 92));
  OUTLINED_FUNCTION_178(v38);
  OUTLINED_FUNCTION_113(v39);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_60();
  v40();
  sub_26A4D2D18();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_202();
  v41 = OUTLINED_FUNCTION_35();
  v42(v41);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_131();
  v43 = OUTLINED_FUNCTION_64();
  v44(v43);
  OUTLINED_FUNCTION_91();
  if ((v45 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_90();
    if (sub_26A61B05C(v49, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_160(v50);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_203();

      OUTLINED_FUNCTION_166(v51);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_177();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v52 = sub_26A84F3A8();
    OUTLINED_FUNCTION_56(v52);
    if (v53)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_65();
      v54 = OUTLINED_FUNCTION_151();
      v55(v54);
      if (v2)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v56 = swift_allocObject();
        OUTLINED_FUNCTION_159(v56);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_208();
        sub_26A851EA8();
        v57 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_134();

        v58 = OUTLINED_FUNCTION_42();
        v59(v58);
        OUTLINED_FUNCTION_107();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_135();
  sub_26A4D6FD8();
  v46 = OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_188(v46);
  OUTLINED_FUNCTION_1();
  v47 = sub_26A4D2D18();
  OUTLINED_FUNCTION_194(v47);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v48 = swift_getKeyPath();
  *v21 = v1;
  OUTLINED_FUNCTION_4(v48);
  *(&qword_2803A91C8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_86();
}

void sub_26A4C8034()
{
  OUTLINED_FUNCTION_85();
  v70 = v4;
  OUTLINED_FUNCTION_66(v5, v6, v7, v8, v9, v10);
  v12 = v11;
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_230(v13);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6(v15, v66);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24(v18, v67);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_25(v21, v68);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA098);
  OUTLINED_FUNCTION_15();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_13(v26, v69);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v78 = OUTLINED_FUNCTION_48(xmmword_281588758);
  v79 = v29;
  v80 = v30;
  v81 = v31;
  v72 = v76;
  OUTLINED_FUNCTION_198();
  sub_26A6AEE74(&v82);
  OUTLINED_FUNCTION_142();
  v32 = v77;
  v2[13] = v76;
  v2[14] = v32;
  v33 = v79;
  v2[15] = v78;
  v2[16] = v33;
  v34 = v81;
  v2[17] = v80;
  v2[18] = v34;
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v39);
  v40 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA0A0);
  OUTLINED_FUNCTION_122();
  v41 = swift_getKeyPath();
  OUTLINED_FUNCTION_119(v41);
  v42 = swift_getKeyPath();
  v43 = OUTLINED_FUNCTION_164(v42);
  v44 = *(v43 + 24);
  *(v1 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v45 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v45);
  v46 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v46);
  v47 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v47);
  v48 = swift_getKeyPath();
  OUTLINED_FUNCTION_225(v48);
  v49 = *(v43 + 44);
  type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_78(v1 + v49);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_78(v1 + v49);
  OUTLINED_FUNCTION_0(v3[22]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_113(v50);
  sub_26A4D7E54();
  v51 = v2 + v3[18];
  v52 = *(v12 + 16);
  *v51 = *v12;
  *(v51 + 1) = v52;
  v51[32] = *(v12 + 32);
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_125();
  v70(v73);
  v53 = sub_26A4D6EA0();
  OUTLINED_FUNCTION_117();
  sub_26A850AF8();

  OUTLINED_FUNCTION_213();
  v54 = OUTLINED_FUNCTION_183();
  v55(v54);
  v73[0] = &type metadata for SimpleItemVisualView.ContentView;
  v73[1] = v53;
  OUTLINED_FUNCTION_2();
  swift_getOpaqueTypeConformance2();
  v56 = OUTLINED_FUNCTION_204();
  (*(v24 + 8))(v0, v22);
  *(v2 + v3[17]) = v56;
  if ((v71 & 1) == 0)
  {
    v58 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v58, &unk_287B13068))
    {
      v74 = &type metadata for CarPlayComponentWithAction;
      v75 = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v73[0] = swift_allocObject();
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v59);
      sub_26A4D6FD8();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_224();
    sub_26A84F3A8();
    OUTLINED_FUNCTION_34(&type metadata for SimpleItemVisualView.ContentView);
    if (v60)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v61 = OUTLINED_FUNCTION_112();
      v62(v61);
      if (&type metadata for SimpleItemVisualView.ContentView)
      {
        v74 = &type metadata for WatchComponentWithAction;
        v75 = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v73[0] = swift_allocObject();
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v63 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_167();

        v64 = OUTLINED_FUNCTION_42();
        v65(v64);
        sub_26A771AB4();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v74 = &type metadata for DefaultComponentWithAction;
    v75 = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v73[0] = swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v74 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_1();
  v75 = sub_26A4D2D18();
  __swift_allocate_boxed_opaque_existential_1(v73);
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_28();
  sub_26A4D7E54();
  v57 = swift_getKeyPath();
  *v53 = v56;
  OUTLINED_FUNCTION_22(v57);
  *(&qword_2803A91C8 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  sub_26A4D3270(v73, v72);
  OUTLINED_FUNCTION_86();
}

void sub_26A4C8830()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_33(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6(v13, v60);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24(v16, v61);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25(v19, v62);
  type metadata accessor for HorizontalListStandardView.ItemView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_180();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA080);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13(v23, v63);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_89();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_18(xmmword_281588758);
  OUTLINED_FUNCTION_198();
  sub_26A6AEE74(&v64);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_32();
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA088);
  OUTLINED_FUNCTION_88();
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v32);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_121(v33);
  OUTLINED_FUNCTION_185();
  *(v0 + v1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_184();
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_63(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_62(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_61(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_108(v37);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_69();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_0(*(v3 + 88));
  OUTLINED_FUNCTION_20(*(v3 + 92));
  OUTLINED_FUNCTION_178(v38);
  OUTLINED_FUNCTION_113(v39);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_60();
  v40();
  sub_26A4D2D18();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_202();
  v41 = OUTLINED_FUNCTION_35();
  v42(v41);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_131();
  v43 = OUTLINED_FUNCTION_64();
  v44(v43);
  OUTLINED_FUNCTION_91();
  if ((v45 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_90();
    if (sub_26A61B05C(v49, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_160(v50);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_203();

      OUTLINED_FUNCTION_166(v51);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_177();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v52 = sub_26A84F3A8();
    OUTLINED_FUNCTION_56(v52);
    if (v53)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_65();
      v54 = OUTLINED_FUNCTION_151();
      v55(v54);
      if (v2)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v56 = swift_allocObject();
        OUTLINED_FUNCTION_159(v56);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_208();
        sub_26A851EA8();
        v57 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_134();

        v58 = OUTLINED_FUNCTION_42();
        v59(v58);
        OUTLINED_FUNCTION_107();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_135();
  sub_26A4D6FD8();
  v46 = OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_188(v46);
  OUTLINED_FUNCTION_1();
  v47 = sub_26A4D2D18();
  OUTLINED_FUNCTION_194(v47);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v48 = swift_getKeyPath();
  *v21 = v1;
  OUTLINED_FUNCTION_4(v48);
  *(&qword_2803A91C8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_86();
}

void sub_26A4C90C0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6(v12, v58);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24(v15, v59);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25(v18, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9F18);
  OUTLINED_FUNCTION_15();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9(v22, v61);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_12(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v63);
  memcpy((v1 + 16), v63, 0xC0uLL);
  OUTLINED_FUNCTION_23();
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9F20);
  OUTLINED_FUNCTION_75();
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_173(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_140(v32);
  OUTLINED_FUNCTION_172();
  *(v2 + v0) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_171();
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_54(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_53(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_52(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_72(v36);
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_67();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_0(v62);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v37);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_40();
  v38();
  OUTLINED_FUNCTION_200();
  sub_26A4D66A4();
  OUTLINED_FUNCTION_45();
  sub_26A850AF8();
  OUTLINED_FUNCTION_152();
  v39 = OUTLINED_FUNCTION_17();
  v40(v39);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_118();
  v41 = OUTLINED_FUNCTION_51();
  v42(v41);
  OUTLINED_FUNCTION_73();
  if ((v43 & 1) == 0)
  {
    v47 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v47, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v48 = swift_allocObject();
      OUTLINED_FUNCTION_153(v48);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v49);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v50 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v50);
    if (v51)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v52 = OUTLINED_FUNCTION_116();
      v53(v52);
      if (&unk_26A855C28)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v54 = swift_allocObject();
        OUTLINED_FUNCTION_147(v54);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v55 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_126();

        v56 = OUTLINED_FUNCTION_42();
        v57(v56);
        OUTLINED_FUNCTION_70();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v44 = OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_174(v44);
  OUTLINED_FUNCTION_1();
  v45 = sub_26A4D2D18();
  OUTLINED_FUNCTION_189(v45);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v46 = swift_getKeyPath();
  *v20 = &qword_2803A9F28;
  OUTLINED_FUNCTION_4(v46);
  *(&qword_2803A91C8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_86();
}

void sub_26A4C98A0()
{
  OUTLINED_FUNCTION_85();
  v85 = v2;
  v86 = v1;
  v89 = v3;
  v87 = v4;
  v76 = v5;
  v83 = v6;
  v81 = v7;
  v82 = v8;
  OUTLINED_FUNCTION_110();
  v84 = v9;
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v75[3] = v11;
  v75[4] = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6(v12, v75[0]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24(v15, v75[0]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25(v18, v75[0]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9D98);
  OUTLINED_FUNCTION_15();
  v79 = v20;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v23 = v75 - v22;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9DA0);
  OUTLINED_FUNCTION_15();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_13(v27, v75[0]);
  MEMORY[0x28223BE20](v28);
  v30 = v75 - v29;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v94 = xmmword_281588758[0];
  v95 = unk_281588768;
  v96 = xmmword_281588778;
  v97 = unk_281588788;
  v98 = xmmword_281588758[0];
  v99 = unk_281588768;
  v100 = xmmword_281588778;
  v101 = unk_281588788;
  v88 = xmmword_281588778;
  v77 = unk_281588788;
  sub_26A4D7E54();
  sub_26A6AEE74(v102);
  memcpy(v0 + 1, v102, 0xC0uLL);
  v32 = v77;
  v0[13] = v88;
  v0[14] = v32;
  v33 = v99;
  v0[15] = v98;
  v0[16] = v33;
  v34 = v101;
  v0[17] = v100;
  v0[18] = v34;
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v39);
  v40 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9DA8);
  v42 = v0 + v41[20];
  *v42 = swift_getKeyPath();
  *(v42 + 1) = 0;
  v42[16] = 0;
  *(v42 + 3) = swift_getKeyPath();
  v42[32] = 0;
  v43 = type metadata accessor for ActionHandler(0);
  v44 = v43[6];
  *&v42[v44] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v45 = &v42[v43[7]];
  *v45 = swift_getKeyPath();
  *(v45 + 1) = 0;
  v45[16] = 0;
  v46 = &v42[v43[8]];
  *v46 = swift_getKeyPath();
  v46[8] = 0;
  v47 = &v42[v43[9]];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  v48 = &v42[v43[10]];
  *v48 = swift_getKeyPath();
  v48[9] = 0;
  swift_unknownObjectWeakInit();
  v49 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v49);
  OUTLINED_FUNCTION_0(v41[22]);
  OUTLINED_FUNCTION_20(v41[23]);
  *&v88 = v56;
  OUTLINED_FUNCTION_113(v41[16]);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_36(v0 + v41[18]);
  OUTLINED_FUNCTION_95();
  if (v59)
  {
    v60 = v57;
  }

  else
  {
    v60 = v58;
  }

  *(v0 + v41[21]) = v60;
  v85();
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9DB0);
  v62 = sub_26A4D5D20();
  v90 = v61;
  v91 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26A850AF8();
  (*(v79 + 8))(v23, v19);
  v64 = v80;
  (*(v25 + 16))(v78, v30, v80);
  v90 = v19;
  v91 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_2();
  swift_getOpaqueTypeConformance2();
  v65 = sub_26A851248();
  (*(v25 + 8))(v30, v64);
  *(v0 + v41[17]) = v65;
  if ((v87 & 1) == 0)
  {
    v68 = v76;
    *(v0 + v41[19]) = v76;
    if (sub_26A61B05C(v68, &unk_287B13068))
    {
      v92 = &type metadata for CarPlayComponentWithAction;
      v93 = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v90 = swift_allocObject();
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v69);
      sub_26A4D6FD8();
LABEL_18:
      sub_26A4D6FD8();
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_163();
    sub_26A84F3A8();
    OUTLINED_FUNCTION_34(v41);
    if (v59)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v70 = OUTLINED_FUNCTION_112();
      v71(v70);
      if (v41)
      {
        v92 = &type metadata for WatchComponentWithAction;
        v93 = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v90 = swift_allocObject();
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v72 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_167();

        v73 = OUTLINED_FUNCTION_42();
        v74(v73);
        OUTLINED_FUNCTION_120();
        sub_26A4D6FD8();
        goto LABEL_18;
      }
    }

    v92 = &type metadata for DefaultComponentWithAction;
    v93 = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v90 = swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_18;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v66 = qword_2815889C0;
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  *(v0 + v41[19]) = v66;
  v92 = type metadata accessor for RuntimeComponentWithAction(0);
  OUTLINED_FUNCTION_1();
  v93 = sub_26A4D2D18();
  __swift_allocate_boxed_opaque_existential_1(&v90);
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_28();
  sub_26A4D7E54();
  v67 = swift_getKeyPath();
  *v66 = v65;
  OUTLINED_FUNCTION_22(v67);
  *(&qword_2803A91C8 + v66) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_19:
  sub_26A4D3270(&v90, v88);
  OUTLINED_FUNCTION_86();
}

void sub_26A4CA2D4()
{
  OUTLINED_FUNCTION_85();
  v68 = v2;
  v69 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_110();
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6(v7, v65);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24(v10, v66);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25(v13, v67);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9CE8);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v75 = OUTLINED_FUNCTION_48(xmmword_281588758);
  v76 = v18;
  v77 = v19;
  v78 = v20;
  sub_26A4D7E54();
  sub_26A6AEE74(v79);
  memcpy(v1 + 1, v79, 0xC0uLL);
  v21 = v74;
  v1[13] = v73;
  v1[14] = v21;
  v22 = v76;
  v23 = v77;
  v1[15] = v75;
  v1[16] = v22;
  v24 = v78;
  v1[17] = v23;
  v1[18] = v24;
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9CF0);
  OUTLINED_FUNCTION_122();
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_119(v31);
  v32 = swift_getKeyPath();
  v33 = OUTLINED_FUNCTION_164(v32);
  v34 = *(v33 + 24);
  *(v0 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_207();
  v35 = v0 + *(v33 + 28);
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_123(v38);
  v39 = type metadata accessor for StandardActionHandler(0);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v39);
  OUTLINED_FUNCTION_0(v79[6]);
  v46 = v1 + v79[7];
  *(v46 + 32) = 0;
  *v46 = 0u;
  *(v46 + 16) = 0u;
  OUTLINED_FUNCTION_197(v79[0]);
  sub_26A4D7E54();
  v47 = v1 + v79[2];
  v48 = *(v5 + 16);
  *v47 = *v5;
  *(v47 + 1) = v48;
  v47[32] = *(v5 + 32);
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_125();
  v68(v70);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9CF8);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_135();
  v50 = sub_26A4D7DCC();
  OUTLINED_FUNCTION_117();
  sub_26A850AF8();

  v51 = OUTLINED_FUNCTION_183();
  v52(v51);
  v70[0] = v49;
  v70[1] = v50;
  OUTLINED_FUNCTION_2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_131();
  v53 = OUTLINED_FUNCTION_190();
  v54(v53, v14);
  *(v1 + v79[1]) = v50;
  if ((v69 & 1) == 0)
  {
    v56 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v56, &unk_287B13068))
    {
      v71 = &type metadata for CarPlayComponentWithAction;
      v72 = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v70[0] = swift_allocObject();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v57);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v58 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v58);
    if (v59)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v60 = OUTLINED_FUNCTION_116();
      v61(v60);
      if (v49)
      {
        v71 = &type metadata for WatchComponentWithAction;
        v72 = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v70[0] = swift_allocObject();
        sub_26A4D7E54();

        sub_26A851EA8();
        v62 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_167();

        v63 = OUTLINED_FUNCTION_42();
        v64(v63);
        OUTLINED_FUNCTION_112();
        sub_26A771AB4();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v71 = &type metadata for DefaultComponentWithAction;
    v72 = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v70[0] = swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v71 = OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_1();
  v72 = sub_26A4D2D18();
  __swift_allocate_boxed_opaque_existential_1(v70);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_44();
  sub_26A4D7E54();
  v55 = swift_getKeyPath();
  *v14 = v50;
  OUTLINED_FUNCTION_4(v55);
  *(&qword_2803A91C8 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  sub_26A4D3270(v70, v46);
  OUTLINED_FUNCTION_86();
}

void sub_26A4CAC38()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6(v12, v58);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24(v15, v59);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25(v18, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B90);
  OUTLINED_FUNCTION_15();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9(v22, v61);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_12(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v63);
  memcpy((v1 + 16), v63, 0xC0uLL);
  OUTLINED_FUNCTION_23();
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B98);
  OUTLINED_FUNCTION_75();
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_173(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_140(v32);
  OUTLINED_FUNCTION_172();
  *(v2 + v0) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_171();
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_54(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_53(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_52(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_72(v36);
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_67();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_0(v62);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v37);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_40();
  v38();
  OUTLINED_FUNCTION_200();
  sub_26A4D5340();
  OUTLINED_FUNCTION_45();
  sub_26A850AF8();
  OUTLINED_FUNCTION_152();
  v39 = OUTLINED_FUNCTION_17();
  v40(v39);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_118();
  v41 = OUTLINED_FUNCTION_51();
  v42(v41);
  OUTLINED_FUNCTION_73();
  if ((v43 & 1) == 0)
  {
    v47 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v47, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v48 = swift_allocObject();
      OUTLINED_FUNCTION_153(v48);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v49);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v50 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v50);
    if (v51)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v52 = OUTLINED_FUNCTION_116();
      v53(v52);
      if (&unk_26A855A18)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v54 = swift_allocObject();
        OUTLINED_FUNCTION_147(v54);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v55 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_126();

        v56 = OUTLINED_FUNCTION_42();
        v57(v56);
        OUTLINED_FUNCTION_70();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v44 = OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_174(v44);
  OUTLINED_FUNCTION_1();
  v45 = sub_26A4D2D18();
  OUTLINED_FUNCTION_189(v45);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v46 = swift_getKeyPath();
  *v20 = &qword_2803A9BA0;
  OUTLINED_FUNCTION_4(v46);
  *(&qword_2803A91C8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_86();
}

void sub_26A4CB338()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_33(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6(v13, v60);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24(v16, v61);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25(v19, v62);
  type metadata accessor for SimpleItemRichLayout(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_180();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B78);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13(v23, v63);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_89();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_18(xmmword_281588758);
  OUTLINED_FUNCTION_198();
  sub_26A6AEE74(&v64);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_32();
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B80);
  OUTLINED_FUNCTION_88();
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v32);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_121(v33);
  OUTLINED_FUNCTION_185();
  *(v0 + v1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_184();
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_63(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_62(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_61(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_108(v37);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_69();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_0(*(v3 + 88));
  OUTLINED_FUNCTION_20(*(v3 + 92));
  OUTLINED_FUNCTION_178(v38);
  OUTLINED_FUNCTION_113(v39);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_60();
  v40();
  sub_26A4D2D18();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_202();
  v41 = OUTLINED_FUNCTION_35();
  v42(v41);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_131();
  v43 = OUTLINED_FUNCTION_64();
  v44(v43);
  OUTLINED_FUNCTION_91();
  if ((v45 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_90();
    if (sub_26A61B05C(v49, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_160(v50);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_203();

      OUTLINED_FUNCTION_166(v51);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_177();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v52 = sub_26A84F3A8();
    OUTLINED_FUNCTION_56(v52);
    if (v53)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_65();
      v54 = OUTLINED_FUNCTION_151();
      v55(v54);
      if (v2)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v56 = swift_allocObject();
        OUTLINED_FUNCTION_159(v56);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_208();
        sub_26A851EA8();
        v57 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_134();

        v58 = OUTLINED_FUNCTION_42();
        v59(v58);
        OUTLINED_FUNCTION_107();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_135();
  sub_26A4D6FD8();
  v46 = OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_188(v46);
  OUTLINED_FUNCTION_1();
  v47 = sub_26A4D2D18();
  OUTLINED_FUNCTION_194(v47);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v48 = swift_getKeyPath();
  *v21 = v1;
  OUTLINED_FUNCTION_4(v48);
  *(&qword_2803A91C8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_86();
}

void sub_26A4CBA78()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6(v12, v58);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24(v15, v59);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25(v18, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B58);
  OUTLINED_FUNCTION_15();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9(v22, v61);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_12(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v63);
  memcpy((v1 + 16), v63, 0xC0uLL);
  OUTLINED_FUNCTION_23();
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B60);
  OUTLINED_FUNCTION_75();
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_173(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_140(v32);
  OUTLINED_FUNCTION_172();
  *(v2 + v0) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_171();
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_54(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_53(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_52(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_72(v36);
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_67();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_0(v62);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v37);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_40();
  v38();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_37();
  sub_26A4D7DCC();
  OUTLINED_FUNCTION_45();
  sub_26A850AF8();
  OUTLINED_FUNCTION_152();
  v39 = OUTLINED_FUNCTION_17();
  v40(v39);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_118();
  v41 = OUTLINED_FUNCTION_51();
  v42(v41);
  OUTLINED_FUNCTION_73();
  if ((v43 & 1) == 0)
  {
    v47 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v47, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v48 = swift_allocObject();
      OUTLINED_FUNCTION_153(v48);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v49);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v50 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v50);
    if (v51)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v52 = OUTLINED_FUNCTION_116();
      v53(v52);
      if (&unk_26A8559F0)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v54 = swift_allocObject();
        OUTLINED_FUNCTION_147(v54);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v55 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_126();

        v56 = OUTLINED_FUNCTION_42();
        v57(v56);
        OUTLINED_FUNCTION_70();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v44 = OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_174(v44);
  OUTLINED_FUNCTION_1();
  v45 = sub_26A4D2D18();
  OUTLINED_FUNCTION_189(v45);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v46 = swift_getKeyPath();
  *v20 = &qword_2803A9B68;
  OUTLINED_FUNCTION_4(v46);
  *(&qword_2803A91C8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_86();
}

void sub_26A4CC18C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_38(v5, v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_124(v13, v14, v15, v16);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_230(v17);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6(v19, v69);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v20);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_24(v22, v70);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v23);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25(v25, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B48);
  OUTLINED_FUNCTION_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9(v29, v72);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v78 = xmmword_281588758[0];
  v79 = unk_281588768;
  v80 = xmmword_281588778;
  v81 = xmmword_281588788;
  v82 = xmmword_281588758[0];
  v83 = unk_281588768;
  v84 = xmmword_281588778;
  v85 = xmmword_281588788;
  v74 = xmmword_281588788;
  sub_26A4D7E54();
  sub_26A6AEE74(v86);
  memcpy(v1 + 1, v86, 0xC0uLL);
  OUTLINED_FUNCTION_59();
  v32 = v83;
  v1[15] = v82;
  v1[16] = v32;
  v33 = v85;
  v1[17] = v84;
  v1[18] = v33;
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9B50);
  OUTLINED_FUNCTION_122();
  v40 = swift_getKeyPath();
  OUTLINED_FUNCTION_119(v40);
  v41 = swift_getKeyPath();
  OUTLINED_FUNCTION_164(v41);
  OUTLINED_FUNCTION_219();
  *(v0 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_207();
  v42 = swift_getKeyPath();
  OUTLINED_FUNCTION_157(v42);
  v43 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v43);
  v44 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v44);
  v45 = v0 + *(v4 + 40);
  v46 = swift_getKeyPath();
  OUTLINED_FUNCTION_123(v46);
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_78(v0 + v45);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_78(v0 + v45);
  OUTLINED_FUNCTION_0(*(v3 + 88));
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v47);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_125();
  v73(v75);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9990);
  v49 = sub_26A4D4BA8();
  OUTLINED_FUNCTION_117();
  sub_26A850AF8();
  sub_26A4D6FD8();
  v50 = OUTLINED_FUNCTION_17();
  v51(v50);
  v75[0] = v48;
  v75[1] = v49;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_195();
  v52 = OUTLINED_FUNCTION_118();
  v53 = (v27 + 8);
  v54 = OUTLINED_FUNCTION_128();
  v55(v54);
  OUTLINED_FUNCTION_149();
  if ((v56 & 1) == 0)
  {
    v59 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v59, &unk_287B13068))
    {
      v76 = &type metadata for CarPlayComponentWithAction;
      v77 = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v60 = swift_allocObject();
      OUTLINED_FUNCTION_160(v60);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v61);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_163();
    sub_26A84F3A8();
    OUTLINED_FUNCTION_34(&unk_26A8558C0);
    if (v62)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v63 = OUTLINED_FUNCTION_112();
      v64(v63);
      if (&unk_26A8558C0)
      {
        v76 = &type metadata for WatchComponentWithAction;
        v77 = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v65 = swift_allocObject();
        OUTLINED_FUNCTION_159(v65);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v66 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_134();

        v67 = OUTLINED_FUNCTION_42();
        v68(v67);
        OUTLINED_FUNCTION_120();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v76 = &type metadata for DefaultComponentWithAction;
    v77 = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v75[0] = swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v76 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_1();
  v57 = sub_26A4D2D18();
  OUTLINED_FUNCTION_194(v57);
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_28();
  sub_26A4D7E54();
  v58 = swift_getKeyPath();
  *v53 = v52;
  OUTLINED_FUNCTION_22(v58);
  *(&qword_2803A91C8 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  sub_26A4D3270(v75, v74);
  OUTLINED_FUNCTION_86();
}

void sub_26A4CCA70()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_187();
  sub_26A4C5198();
}

void sub_26A4CCADC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_187();
  sub_26A4C5198();
}

void sub_26A4CCB48()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6(v12, v58);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24(v15, v59);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25(v18, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A99C0);
  OUTLINED_FUNCTION_15();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9(v22, v61);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_12(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v63);
  memcpy((v1 + 16), v63, 0xC0uLL);
  OUTLINED_FUNCTION_23();
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A99C8);
  OUTLINED_FUNCTION_75();
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_173(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_140(v32);
  OUTLINED_FUNCTION_172();
  *(v2 + v0) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_171();
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_54(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_53(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_52(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_72(v36);
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_67();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_0(v62);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v37);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_40();
  v38();
  OUTLINED_FUNCTION_200();
  sub_26A4D4CEC();
  OUTLINED_FUNCTION_45();
  sub_26A850AF8();
  OUTLINED_FUNCTION_152();
  v39 = OUTLINED_FUNCTION_17();
  v40(v39);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_118();
  v41 = OUTLINED_FUNCTION_51();
  v42(v41);
  OUTLINED_FUNCTION_73();
  if ((v43 & 1) == 0)
  {
    v47 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v47, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v48 = swift_allocObject();
      OUTLINED_FUNCTION_153(v48);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v49);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v50 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v50);
    if (v51)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v52 = OUTLINED_FUNCTION_116();
      v53(v52);
      if (&unk_26A8558E8)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v54 = swift_allocObject();
        OUTLINED_FUNCTION_147(v54);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v55 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_126();

        v56 = OUTLINED_FUNCTION_42();
        v57(v56);
        OUTLINED_FUNCTION_70();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v44 = OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_174(v44);
  OUTLINED_FUNCTION_1();
  v45 = sub_26A4D2D18();
  OUTLINED_FUNCTION_189(v45);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v46 = swift_getKeyPath();
  *v20 = &qword_2803A99D0;
  OUTLINED_FUNCTION_4(v46);
  *(&qword_2803A91C8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_86();
}

void sub_26A4CD2B8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_38(v5, v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_124(v13, v14, v15, v16);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_230(v17);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6(v19, v69);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v20);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_24(v22, v70);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v23);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25(v25, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9928);
  OUTLINED_FUNCTION_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9(v29, v72);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v78 = xmmword_281588758[0];
  v79 = unk_281588768;
  v80 = xmmword_281588778;
  v81 = xmmword_281588788;
  v82 = xmmword_281588758[0];
  v83 = unk_281588768;
  v84 = xmmword_281588778;
  v85 = xmmword_281588788;
  v74 = xmmword_281588788;
  sub_26A4D7E54();
  sub_26A6AEE74(v86);
  memcpy(v1 + 1, v86, 0xC0uLL);
  OUTLINED_FUNCTION_59();
  v32 = v83;
  v1[15] = v82;
  v1[16] = v32;
  v33 = v85;
  v1[17] = v84;
  v1[18] = v33;
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9930);
  OUTLINED_FUNCTION_122();
  v40 = swift_getKeyPath();
  OUTLINED_FUNCTION_119(v40);
  v41 = swift_getKeyPath();
  OUTLINED_FUNCTION_164(v41);
  OUTLINED_FUNCTION_219();
  *(v0 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_207();
  v42 = swift_getKeyPath();
  OUTLINED_FUNCTION_157(v42);
  v43 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v43);
  v44 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v44);
  v45 = v0 + *(v4 + 40);
  v46 = swift_getKeyPath();
  OUTLINED_FUNCTION_123(v46);
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_78(v0 + v45);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_78(v0 + v45);
  OUTLINED_FUNCTION_0(*(v3 + 88));
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v47);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_125();
  v73(v75);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9938);
  v49 = sub_26A4D49A8();
  OUTLINED_FUNCTION_117();
  sub_26A850AF8();
  sub_26A4D6FD8();
  v50 = OUTLINED_FUNCTION_17();
  v51(v50);
  v75[0] = v48;
  v75[1] = v49;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_195();
  v52 = OUTLINED_FUNCTION_118();
  v53 = (v27 + 8);
  v54 = OUTLINED_FUNCTION_128();
  v55(v54);
  OUTLINED_FUNCTION_149();
  if ((v56 & 1) == 0)
  {
    v59 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v59, &unk_287B13068))
    {
      v76 = &type metadata for CarPlayComponentWithAction;
      v77 = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v60 = swift_allocObject();
      OUTLINED_FUNCTION_160(v60);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v61);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_163();
    sub_26A84F3A8();
    OUTLINED_FUNCTION_34(&unk_26A855890);
    if (v62)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v63 = OUTLINED_FUNCTION_112();
      v64(v63);
      if (&unk_26A855890)
      {
        v76 = &type metadata for WatchComponentWithAction;
        v77 = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v65 = swift_allocObject();
        OUTLINED_FUNCTION_159(v65);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v66 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_134();

        v67 = OUTLINED_FUNCTION_42();
        v68(v67);
        OUTLINED_FUNCTION_120();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v76 = &type metadata for DefaultComponentWithAction;
    v77 = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v75[0] = swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v76 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_1();
  v57 = sub_26A4D2D18();
  OUTLINED_FUNCTION_194(v57);
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_28();
  sub_26A4D7E54();
  v58 = swift_getKeyPath();
  *v53 = v52;
  OUTLINED_FUNCTION_22(v58);
  *(&qword_2803A91C8 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  sub_26A4D3270(v75, v74);
  OUTLINED_FUNCTION_86();
}

void sub_26A4CDA68()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_33(v4, v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6(v13, v60);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24(v16, v61);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_25(v19, v62);
  type metadata accessor for PrimaryHeaderStandardLayout();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_180();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9910);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13(v23, v63);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_89();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_18(xmmword_281588758);
  OUTLINED_FUNCTION_198();
  sub_26A6AEE74(&v64);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_32();
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9918);
  OUTLINED_FUNCTION_88();
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v32);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_121(v33);
  OUTLINED_FUNCTION_185();
  *(v0 + v1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_184();
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_63(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_62(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_61(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_108(v37);
  OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_69();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_0(*(v3 + 88));
  OUTLINED_FUNCTION_20(*(v3 + 92));
  OUTLINED_FUNCTION_178(v38);
  OUTLINED_FUNCTION_113(v39);
  sub_26A4D7E54();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_60();
  v40();
  sub_26A4D2D18();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_202();
  v41 = OUTLINED_FUNCTION_35();
  v42(v41);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_131();
  v43 = OUTLINED_FUNCTION_64();
  v44(v43);
  OUTLINED_FUNCTION_91();
  if ((v45 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_90();
    if (sub_26A61B05C(v49, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v50 = swift_allocObject();
      OUTLINED_FUNCTION_160(v50);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_203();

      OUTLINED_FUNCTION_166(v51);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_177();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v52 = sub_26A84F3A8();
    OUTLINED_FUNCTION_56(v52);
    if (v53)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_65();
      v54 = OUTLINED_FUNCTION_151();
      v55(v54);
      if (v2)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v56 = swift_allocObject();
        OUTLINED_FUNCTION_159(v56);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_208();
        sub_26A851EA8();
        v57 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_134();

        v58 = OUTLINED_FUNCTION_42();
        v59(v58);
        OUTLINED_FUNCTION_107();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_135();
  sub_26A4D6FD8();
  v46 = OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_188(v46);
  OUTLINED_FUNCTION_1();
  v47 = sub_26A4D2D18();
  OUTLINED_FUNCTION_194(v47);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v48 = swift_getKeyPath();
  *v21 = v1;
  OUTLINED_FUNCTION_4(v48);
  *(&qword_2803A91C8 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_86();
}

void sub_26A4CE218()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_38(v3, v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_124(v11, v12, v13, v14);
  OUTLINED_FUNCTION_57();
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6(v16, v64);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_24(v19, v65);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v20);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25(v22, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9878);
  OUTLINED_FUNCTION_15();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9(v26, v67);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_74(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v71);
  memcpy((v0 + 16), v71, 0xC0uLL);
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_215();
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v32);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9880);
  v36 = v0 + *(v35 + 80);
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  *(v36 + 24) = swift_getKeyPath();
  *(v36 + 32) = 0;
  type metadata accessor for ActionHandler(0);
  OUTLINED_FUNCTION_219();
  *(v36 + v1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_157(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v39);
  v40 = v36 + *(v2 + 40);
  v41 = swift_getKeyPath();
  OUTLINED_FUNCTION_123(v41);
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_78(v36 + v40);
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_78(v36 + v40);
  OUTLINED_FUNCTION_0(*(v35 + 88));
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v42);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_125();
  v68(v69);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9888);
  OUTLINED_FUNCTION_212();
  v44 = sub_26A4D7DCC();
  OUTLINED_FUNCTION_45();
  sub_26A850AF8();
  memcpy(v70, v69, sizeof(v70));
  OUTLINED_FUNCTION_212();
  sub_26A4D6FD8();
  v45 = OUTLINED_FUNCTION_116();
  v46(v45);
  v69[0] = v43;
  v69[1] = v44;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_191();
  v47 = sub_26A851248();
  v48 = v24 + 8;
  v49 = OUTLINED_FUNCTION_128();
  v50(v49);
  OUTLINED_FUNCTION_149();
  if ((v51 & 1) == 0)
  {
    v54 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v54, &unk_287B13068))
    {
      v69[3] = &type metadata for CarPlayComponentWithAction;
      v69[4] = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v55 = swift_allocObject();
      OUTLINED_FUNCTION_153(v55);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v56);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_163();
    sub_26A84F3A8();
    OUTLINED_FUNCTION_34(v48);
    if (v57)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v58 = OUTLINED_FUNCTION_112();
      v59(v58);
      if (v48)
      {
        v69[3] = &type metadata for WatchComponentWithAction;
        v69[4] = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v60 = swift_allocObject();
        OUTLINED_FUNCTION_147(v60);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v61 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_126();

        v62 = OUTLINED_FUNCTION_42();
        v63(v62);
        OUTLINED_FUNCTION_120();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v69[3] = &type metadata for DefaultComponentWithAction;
    v69[4] = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v69[0] = swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v69[3] = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_1();
  v52 = sub_26A4D2D18();
  OUTLINED_FUNCTION_189(v52);
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_28();
  sub_26A4D7E54();
  v53 = swift_getKeyPath();
  *v44 = v47;
  OUTLINED_FUNCTION_22(v53);
  *(&qword_2803A91C8 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_86();
}

void sub_26A4CEA68()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_187();
  sub_26A4C5198();
}

void sub_26A4CEAD4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_26A84F988();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6(v12, v58);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24(v15, v59);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25(v18, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A97C8);
  OUTLINED_FUNCTION_15();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9(v22, v61);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_12(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v63);
  memcpy((v1 + 16), v63, 0xC0uLL);
  OUTLINED_FUNCTION_23();
  v25 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v25);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A97D0);
  OUTLINED_FUNCTION_75();
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_173(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_140(v32);
  OUTLINED_FUNCTION_172();
  *(v2 + v0) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_171();
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_54(v33);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_53(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_52(v35);
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_72(v36);
  OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_67();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_0(v62);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_71(v37);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_40();
  v38();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_37();
  sub_26A4D7DCC();
  OUTLINED_FUNCTION_45();
  sub_26A850AF8();
  OUTLINED_FUNCTION_152();
  v39 = OUTLINED_FUNCTION_17();
  v40(v39);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_118();
  v41 = OUTLINED_FUNCTION_51();
  v42(v41);
  OUTLINED_FUNCTION_73();
  if ((v43 & 1) == 0)
  {
    v47 = OUTLINED_FUNCTION_50();
    if (sub_26A61B05C(v47, &unk_287B13068))
    {
      sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v48 = swift_allocObject();
      OUTLINED_FUNCTION_153(v48);
      OUTLINED_FUNCTION_16();
      sub_26A4D7E54();

      OUTLINED_FUNCTION_166(v49);
      sub_26A4D6FD8();
      OUTLINED_FUNCTION_130();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_109();
    v50 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v50);
    if (v51)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v52 = OUTLINED_FUNCTION_116();
      v53(v52);
      if (&unk_26A8557B8)
      {
        sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v54 = swift_allocObject();
        OUTLINED_FUNCTION_147(v54);
        OUTLINED_FUNCTION_27();
        sub_26A4D7E54();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v55 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_126();

        v56 = OUTLINED_FUNCTION_42();
        v57(v56);
        OUTLINED_FUNCTION_70();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    swift_allocObject();
    OUTLINED_FUNCTION_87();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v44 = OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_174(v44);
  OUTLINED_FUNCTION_1();
  v45 = sub_26A4D2D18();
  OUTLINED_FUNCTION_189(v45);
  OUTLINED_FUNCTION_10();
  sub_26A4D7E54();
  v46 = swift_getKeyPath();
  *v20 = &unk_2803A97D8;
  OUTLINED_FUNCTION_4(v46);
  *(&qword_2803A91C8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_86();
}

void sub_26A4CF2C8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_133(v5, v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6(v14, v58);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_218(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_206(v20);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_106();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v22);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_155(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v65);
  memcpy((v2 + 16), v65, 0xC0uLL);
  OUTLINED_FUNCTION_169();
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_143();
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_121(v35);
  OUTLINED_FUNCTION_220();
  *(v0 + v1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_216();
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_105(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_103(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_104(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_72(v39);
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_76();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_0(*(v33 + 88));
  OUTLINED_FUNCTION_20(*(v33 + 92));
  v60 = v40;
  OUTLINED_FUNCTION_197(*(v33 + 64));
  sub_26A4D7E54();
  OUTLINED_FUNCTION_36(v2 + *(v33 + 72));
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_217();
  v42 = v41();
  v43 = v59(v42);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_223();
  sub_26A4D6FD8();
  v44 = OUTLINED_FUNCTION_182();
  v45(v44);
  v62[0] = v1;
  v62[1] = v43;
  OUTLINED_FUNCTION_2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_204();
  v46 = OUTLINED_FUNCTION_190();
  v47(v46, v23);
  *(v2 + *(v33 + 68)) = v1;
  if ((v61 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_210(*(v33 + 76));
    if (sub_26A61B05C(v49, &unk_287B13068))
    {
      v63 = &type metadata for CarPlayComponentWithAction;
      v64 = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v62[0] = swift_allocObject();
      OUTLINED_FUNCTION_83();

      OUTLINED_FUNCTION_166(v50);
      sub_26A4D6FD8();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_181();
    v51 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v51);
    if (v52)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v53 = OUTLINED_FUNCTION_116();
      v54(v53);
      if (v3)
      {
        v63 = &type metadata for WatchComponentWithAction;
        v64 = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v62[0] = swift_allocObject();
        OUTLINED_FUNCTION_115();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v55 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_167();

        v56 = OUTLINED_FUNCTION_42();
        v57(v56);
        OUTLINED_FUNCTION_70();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v63 = &type metadata for DefaultComponentWithAction;
    v64 = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v62[0] = swift_allocObject();
    OUTLINED_FUNCTION_102();
    sub_26A4D1AD0();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v63 = OUTLINED_FUNCTION_176(*(v33 + 76));
  OUTLINED_FUNCTION_1();
  v64 = sub_26A4D2D18();
  __swift_allocate_boxed_opaque_existential_1(v62);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_44();
  sub_26A4D7E54();
  v48 = swift_getKeyPath();
  *v33 = v1;
  OUTLINED_FUNCTION_4(v48);
  *(&qword_2803A91C8 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  sub_26A4D3270(v62, v60);
  OUTLINED_FUNCTION_86();
}

void sub_26A4CFB8C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_133(v5, v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6(v14, v58);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_218(v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_206(v20);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_106();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v22);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_43(KeyPath);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  OUTLINED_FUNCTION_155(xmmword_281588758);
  sub_26A4D7E54();
  sub_26A6AEE74(v65);
  memcpy((v2 + 16), v65, 0xC0uLL);
  OUTLINED_FUNCTION_169();
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_101(v27);
  v28 = swift_getKeyPath();
  OUTLINED_FUNCTION_100(v28);
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_99(v29);
  v30 = swift_getKeyPath();
  OUTLINED_FUNCTION_98(v30);
  v31 = swift_getKeyPath();
  OUTLINED_FUNCTION_97(v31);
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_96(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  OUTLINED_FUNCTION_143();
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_132(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_121(v35);
  OUTLINED_FUNCTION_220();
  *(v0 + v1) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_216();
  v36 = swift_getKeyPath();
  OUTLINED_FUNCTION_105(v36);
  v37 = swift_getKeyPath();
  OUTLINED_FUNCTION_103(v37);
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_104(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_72(v39);
  OUTLINED_FUNCTION_227();
  OUTLINED_FUNCTION_76();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_0(*(v33 + 88));
  OUTLINED_FUNCTION_20(*(v33 + 92));
  v60 = v40;
  OUTLINED_FUNCTION_197(*(v33 + 64));
  sub_26A4D7E54();
  OUTLINED_FUNCTION_36(v2 + *(v33 + 72));
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_217();
  v42 = v41();
  v43 = v59(v42);
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_223();
  sub_26A4D6FD8();
  v44 = OUTLINED_FUNCTION_182();
  v45(v44);
  v62[0] = v1;
  v62[1] = v43;
  OUTLINED_FUNCTION_2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_204();
  v46 = OUTLINED_FUNCTION_190();
  v47(v46, v23);
  *(v2 + *(v33 + 68)) = v1;
  if ((v61 & 1) == 0)
  {
    v49 = OUTLINED_FUNCTION_210(*(v33 + 76));
    if (sub_26A61B05C(v49, &unk_287B13068))
    {
      v63 = &type metadata for CarPlayComponentWithAction;
      v64 = sub_26A4D33E8();
      OUTLINED_FUNCTION_80();
      v62[0] = swift_allocObject();
      OUTLINED_FUNCTION_83();

      OUTLINED_FUNCTION_166(v50);
      sub_26A4D6FD8();
LABEL_15:
      sub_26A4D6FD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_181();
    v51 = sub_26A84F3A8();
    OUTLINED_FUNCTION_21(v51);
    if (v52)
    {
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A84F388();
      OUTLINED_FUNCTION_29();
      v53 = OUTLINED_FUNCTION_116();
      v54(v53);
      if (v3)
      {
        v63 = &type metadata for WatchComponentWithAction;
        v64 = sub_26A4D3340();
        OUTLINED_FUNCTION_80();
        v62[0] = swift_allocObject();
        OUTLINED_FUNCTION_115();

        OUTLINED_FUNCTION_175();
        sub_26A851EA8();
        v55 = sub_26A8501F8();
        OUTLINED_FUNCTION_55();

        OUTLINED_FUNCTION_165();
        sub_26A4D3394();
        OUTLINED_FUNCTION_167();

        v56 = OUTLINED_FUNCTION_42();
        v57(v56);
        OUTLINED_FUNCTION_70();
        sub_26A4D6FD8();
        goto LABEL_15;
      }
    }

    v63 = &type metadata for DefaultComponentWithAction;
    v64 = sub_26A4D32E0();
    OUTLINED_FUNCTION_94();
    v62[0] = swift_allocObject();
    OUTLINED_FUNCTION_102();
    sub_26A4D1AD0();
    sub_26A4D6FD8();
    goto LABEL_15;
  }

  if (qword_28157F7C0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  sub_26A4D6FD8();
  OUTLINED_FUNCTION_111();
  sub_26A4D6FD8();
  v63 = OUTLINED_FUNCTION_176(*(v33 + 76));
  OUTLINED_FUNCTION_1();
  v64 = sub_26A4D2D18();
  __swift_allocate_boxed_opaque_existential_1(v62);
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_44();
  sub_26A4D7E54();
  v48 = swift_getKeyPath();
  *v33 = v1;
  OUTLINED_FUNCTION_4(v48);
  *(&qword_2803A91C8 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_84();

LABEL_16:
  sub_26A4D3270(v62, v60);
  OUTLINED_FUNCTION_86();
}

void sub_26A4D0300()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_187();
  sub_26A4C5198();
}

uint64_t sub_26A4D036C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v69 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA488);
  v3 = MEMORY[0x28223BE20](v66);
  v70 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = &v53 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA490);
  v6 = MEMORY[0x28223BE20](v63);
  v68 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v53 - v8;
  v9 = sub_26A84B1D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430);
  v14 = MEMORY[0x28223BE20](v13);
  v67 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v53 - v16);
  v61 = type metadata accessor for SummaryItemImageRightView();
  v18 = *(a1 + *(v61 + 52));
  v19 = *MEMORY[0x277D62B38];
  v60 = *(v10 + 104);
  v60(v12, v19, v9);
  KeyPath = swift_getKeyPath();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438);
  v21 = (v17 + *(v58 + 36));
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
  v22 = *(v56 + 28);
  v23 = *(v10 + 32);
  v59 = v10 + 32;
  v57 = v23;
  v23(v21 + v22, v12, v9);
  __swift_storeEnumTagSinglePayload(v21 + v22, 0, 1, v9);
  *v21 = KeyPath;
  *v17 = v18;
  v24 = swift_getKeyPath();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448);
  v25 = v17 + *(v55 + 36);
  *v25 = v24;
  v25[8] = 1;
  v26 = swift_getKeyPath();
  v62 = v13;
  v27 = *(v13 + 36);
  v64 = v17;
  v28 = v17 + v27;
  *v28 = v26;
  v28[8] = 0;
  v29 = v71;
  v30 = v54;

  sub_26A4D0A1C(v29);
  if (qword_28157FC78 != -1)
  {
    swift_once();
  }

  v31 = qword_28157FC80;
  v32 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA498) + 36)];
  *v32 = v31;
  v32[1] = sub_26A4D82F0;
  v32[2] = 0;
  v33 = sub_26A84FBD8();
  v34 = &v29[*(v63 + 36)];
  *v34 = v33;
  v34[1] = sub_26A4D82F0;
  v34[2] = 0;
  v35 = v61;
  v63 = *(v30 + *(v61 + 56));
  v36 = v63;
  v60(v12, *MEMORY[0x277D62B28], v9);
  v37 = swift_getKeyPath();
  v38 = v65;
  v39 = &v65[*(v58 + 36)];
  v40 = *(v56 + 28);
  v57(v39 + v40, v12, v9);
  __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v9);
  *v39 = v37;
  *v38 = v36;
  v41 = swift_getKeyPath();
  v42 = v38 + *(v55 + 36);
  *v42 = v41;
  v42[8] = 1;
  v43 = swift_getKeyPath();
  v44 = v38 + *(v62 + 36);
  *v44 = v43;
  v44[8] = 0;
  v45 = v30 + *(v35 + 24);
  v46 = *(v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28));
  v47 = swift_getKeyPath();
  v48 = v38 + *(v66 + 36);
  *v48 = v47;
  v48[8] = 0;
  *(v48 + 2) = v46;
  sub_26A4D7E54();
  sub_26A4D7E54();
  sub_26A4D7E54();
  v49 = v69;
  sub_26A4D7E54();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA4A0);
  sub_26A4D7E54();
  v51 = v49 + *(v50 + 64);
  *v51 = 0;
  *(v51 + 8) = 1;
  sub_26A4D7E54();

  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A4D0A1C@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SummaryItemImageRightView();
  v4 = v3[9];
  if (*(v1 + v3[10]))
  {
    v5 = &protocol witness table for AnyView;
    v6 = MEMORY[0x277CE11C8];
    v7 = *(v1 + v3[10]);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v58 = 0;
    v59 = 0;
  }

  v8 = *(v1 + v4);
  v57 = v7;
  v60 = v6;
  v61 = v5;
  if (*(v1 + v3[11]))
  {
    v9 = &protocol witness table for AnyView;
    v10 = MEMORY[0x277CE11C8];
    v11 = *(v1 + v3[11]);
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v53 = 0;
    v54 = 0;
  }

  v52 = v11;
  v55 = v10;
  v56 = v9;
  v12 = *(v1 + v3[12]);
  if (v12)
  {
    v13 = &protocol witness table for AnyView;
    v14 = MEMORY[0x277CE11C8];
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v48 = 0;
    v49 = 0;
  }

  v47 = v12;
  v50 = v14;
  v51 = v13;
  v15 = qword_28157E670;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v16 = OUTLINED_FUNCTION_183();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v16);
  __swift_project_value_buffer(v17, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy(a1, __src, 0xBFuLL);
  OUTLINED_FUNCTION_136();
  sub_26A4D7D24();
  v18 = type metadata accessor for SummaryItemStandardTextLayout();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v20);
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v21);
  v22 = v18[8];
  *&a1[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v23 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v23);
  v24 = &a1[v18[10]];
  v45 = 0;
  v46 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA470);
  sub_26A851048();
  v25 = v41;
  v26 = v42;
  *v24 = v40;
  v24[8] = v25;
  *(v24 + 2) = v26;
  *&a1[v18[12]] = v8;
  sub_26A4D7E54();
  v27 = v43;
  if (v43)
  {
    v28 = v44;
    __swift_project_boxed_opaque_existential_1(&v40, v43);
    v29 = *(v28 + 8);

    v30 = v29(v27, v28);
    __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  else
  {

    sub_26A4D6FD8();
    v30 = 0;
  }

  *&a1[v18[13]] = v30;
  sub_26A4D7E54();
  v31 = v43;
  if (v43)
  {
    v32 = v44;
    __swift_project_boxed_opaque_existential_1(&v40, v43);
    OUTLINED_FUNCTION_161();
    v34 = v33(v31, v32);
    __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  else
  {
    sub_26A4D6FD8();
    v34 = 0;
  }

  *&a1[v18[14]] = v34;
  sub_26A4D7E54();
  v35 = v43;
  if (v43)
  {
    v36 = v44;
    __swift_project_boxed_opaque_existential_1(&v40, v43);
    OUTLINED_FUNCTION_161();
    v38 = v37(v35, v36);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    result = __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  else
  {
    OUTLINED_FUNCTION_135();
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_135();
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_135();
    sub_26A4D6FD8();
    OUTLINED_FUNCTION_135();
    result = sub_26A4D6FD8();
    v38 = 0;
  }

  *&a1[v18[15]] = v38;
  a1[v18[11]] = 0;
  return result;
}

uint64_t sub_26A4D0EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA418);
  MEMORY[0x28223BE20](v64);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA420);
  MEMORY[0x28223BE20](v68);
  v70 = &v56 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA428);
  MEMORY[0x28223BE20](v69);
  v5 = &v56 - v4;
  v6 = type metadata accessor for SummaryItemStandardTextLayout();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v67 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v56 - v9;
  v10 = sub_26A84B1D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430);
  v14 = MEMORY[0x28223BE20](v71);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v63 = &v56 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v66 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  v73 = &v56 - v21;
  v22 = type metadata accessor for SummaryItemImageRightView();
  v23 = v22;
  v24 = *(a1 + *(v22 + 52));
  if (v24)
  {
    v25 = *MEMORY[0x277D62B38];
    v60 = *(v11 + 104);
    v60(v13, v25, v10);
    KeyPath = swift_getKeyPath();
    v62 = v5;
    v56 = KeyPath;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438);
    v27 = a1;
    v28 = v73;
    v29 = &v73[*(v59 + 36)];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
    v61 = v16;
    v31 = *(v30 + 28);
    v57 = *(v11 + 32);
    v58 = v30;
    v57(v29 + v31, v13, v10);
    __swift_storeEnumTagSinglePayload(v29 + v31, 0, 1, v10);
    *v29 = v56;
    *v28 = v24;
    v32 = swift_getKeyPath();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448);
    v33 = v28 + *(v56 + 36);
    *v33 = v32;
    v33[8] = 1;
    v34 = swift_getKeyPath();
    v35 = v28 + *(v71 + 36);
    *v35 = v34;
    v35[8] = 0;

    sub_26A4D0A1C(v72);
    v36 = *(v27 + *(v23 + 56));
    v60(v13, *MEMORY[0x277D62B28], v10);
    v37 = swift_getKeyPath();
    v38 = v66;
    v39 = &v66[*(v59 + 36)];
    v40 = *(v58 + 28);
    v57(v39 + v40, v13, v10);
    __swift_storeEnumTagSinglePayload(v39 + v40, 0, 1, v10);
    *v39 = v37;
    *v38 = v36;
    v41 = swift_getKeyPath();
    v42 = v38 + *(v56 + 36);
    *v42 = v41;
    v42[8] = 1;
    v43 = swift_getKeyPath();
    v44 = v38 + *(v71 + 36);
    *v44 = v43;
    v44[8] = 0;
    sub_26A4D7E54();
    sub_26A4D7D24();
    sub_26A4D7E54();
    sub_26A4D7E54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA468);
    sub_26A4D7D24();
    sub_26A4D7E54();

    sub_26A4D6FD8();
    sub_26A4D7D78();
    sub_26A4D6FD8();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    sub_26A84FDF8();
    sub_26A4D6FD8();
  }

  else
  {
    v45 = *(a1 + *(v22 + 56));
    (*(v11 + 104))(v13, *MEMORY[0x277D62B28], v10);
    v46 = swift_getKeyPath();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438);
    v48 = v73;
    v49 = &v73[*(v47 + 36)];
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    (*(v11 + 32))(v49 + v50, v13, v10);
    __swift_storeEnumTagSinglePayload(v49 + v50, 0, 1, v10);
    *v49 = v46;
    *v48 = v45;
    v51 = swift_getKeyPath();
    v52 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448) + 36);
    *v52 = v51;
    v52[8] = 1;
    v53 = swift_getKeyPath();
    v54 = v48 + *(v71 + 36);
    *v54 = v53;
    v54[8] = 0;

    sub_26A4D0A1C(v72);
    sub_26A4D7E54();
    sub_26A4D7D24();
    sub_26A4D7E54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA450);
    sub_26A4D7D24();
    sub_26A4D7D78();
    sub_26A4D6FD8();
    sub_26A4D7E54();
    swift_storeEnumTagMultiPayload();
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    sub_26A84FDF8();
  }

  sub_26A4D6FD8();
  sub_26A4D7D78();
  return sub_26A4D6FD8();
}

uint64_t sub_26A4D188C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.currentIdiom.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A4D18E0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.visualResponseLocation.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26A4D1958(uint64_t a1)
{
  sub_26A84F3A8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_26A84F758();
}

uint64_t sub_26A4D1A30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - v2;
  sub_26A4D7E54();
  return sub_26A6AD444(v3);
}

void sub_26A4D1AD0()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  v3 = type metadata accessor for ActionType();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19();
  v21 = v5;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v8 = OUTLINED_FUNCTION_79(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47();
  v12 = OUTLINED_FUNCTION_151();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v12);
  v14 = *(v0 + v13[17]);
  sub_26A4D7E54();
  v22 = *(v0 + v13[19]);
  v15 = *(v0 + v13[21]);
  *v2 = swift_getKeyPath();
  *(v2 + 8) = 0;
  *(v2 + 16) = swift_getKeyPath();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {

    sub_26A4D6FD8();
LABEL_6:
    KeyPath = swift_getKeyPath();
    *(v2 + 80) = &type metadata for DefaultComponentWithAction.WithoutAction;
    *(v2 + 88) = sub_26A4D343C();
    v20 = swift_allocObject();
    *(v2 + 56) = v20;
    *(v20 + 16) = KeyPath;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = v14;
    goto LABEL_7;
  }

  sub_26A4D3490();

  v16 = v22;
  if ((sub_26A6ACFB8(v22) & 1) == 0)
  {
    sub_26A4D7D78();
    goto LABEL_6;
  }

  v17 = v21;
  sub_26A4D7D24();
  *(v2 + 80) = type metadata accessor for DefaultComponentWithAction.WithAction(0);
  *(v2 + 88) = sub_26A4D2D18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 56));
  sub_26A773774(v14, v17, v16, boxed_opaque_existential_1, v15);
  sub_26A4D7D78();
LABEL_7:
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_86();
}

uint64_t type metadata accessor for SummaryItemImageRightView()
{
  result = qword_2803A9208;
  if (!qword_2803A9208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
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

uint64_t sub_26A4D1F84@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26A4D1FCC(uint64_t a1, id *a2)
{
  result = sub_26A851798();
  *a2 = 0;
  return result;
}

uint64_t sub_26A4D2044(uint64_t a1, id *a2)
{
  v3 = sub_26A8517A8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26A4D20C4()
{
  v0 = sub_26A8517B8();
  v1 = MEMORY[0x26D663B90](v0);

  return v1;
}

uint64_t sub_26A4D20FC()
{
  sub_26A8517B8();
  sub_26A851848();
}

uint64_t sub_26A4D2150()
{
  sub_26A8517B8();
  sub_26A8526B8();
  OUTLINED_FUNCTION_111();
  sub_26A851848();
  v0 = sub_26A8526F8();

  return v0;
}

uint64_t sub_26A4D21D8@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_26A4D2210(uint64_t a1)
{
  v2 = sub_26A4D2D18();
  v3 = sub_26A4D2D18();
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26A4D22CC(uint64_t a1)
{
  v2 = sub_26A4D2D18();
  v3 = sub_26A4D2D18();
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26A4D2388(uint64_t a1)
{
  v2 = sub_26A4D2D18();
  v3 = sub_26A4D2D18();
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26A4D2444@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26A851788();

  *a1 = v2;
  return result;
}

uint64_t sub_26A4D248C(uint64_t a1)
{
  v2 = sub_26A4D2D18();
  v3 = sub_26A4D2D18();
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_26A4D2548()
{
  result = qword_2803A91E0;
  if (!qword_2803A91E0)
  {
    sub_26A84F328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A91E0);
  }

  return result;
}

void sub_26A4D2600()
{
  sub_26A4D28A0(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26A4D27F4();
    if (v1 <= 0x3F)
    {
      sub_26A4D28A0(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
      if (v2 <= 0x3F)
      {
        sub_26A4D28A0(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A4D8274(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
          if (v4 <= 0x3F)
          {
            sub_26A4D8274(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
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

void sub_26A4D27F4()
{
  if (!qword_2803A9220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A91C8);
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803A9220);
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

void sub_26A4D28A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26A4D2904()
{
  result = qword_2803A9248;
  if (!qword_2803A9248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A91D0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9248);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
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

uint64_t sub_26A4D2BE4(uint64_t a1, int a2)
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

uint64_t sub_26A4D2C04(uint64_t result, int a2, int a3)
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

unint64_t sub_26A4D2D18()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A4D2E7C()
{
  result = qword_2803A93E0;
  if (!qword_2803A93E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A93B8);
    sub_26A4D2F34();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A93E0);
  }

  return result;
}

unint64_t sub_26A4D2F34()
{
  result = qword_2803A93E8;
  if (!qword_2803A93E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A93F0);
    sub_26A4D2FEC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A93E8);
  }

  return result;
}

unint64_t sub_26A4D2FEC()
{
  result = qword_2803A93F8;
  if (!qword_2803A93F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9400);
    sub_26A4D3078();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A93F8);
  }

  return result;
}

unint64_t sub_26A4D3078()
{
  result = qword_2803A9408;
  if (!qword_2803A9408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9410);
    sub_26A4D3104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9408);
  }

  return result;
}

unint64_t sub_26A4D3104()
{
  result = qword_2803A9418;
  if (!qword_2803A9418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9420);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9418);
  }

  return result;
}

unint64_t sub_26A4D31BC()
{
  result = qword_28157E068[0];
  if (!qword_28157E068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157E068);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_26A4D3270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9458);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A4D32E0()
{
  result = qword_2803A9460;
  if (!qword_2803A9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9460);
  }

  return result;
}

uint64_t sub_26A4D3334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26A4D3340()
{
  result = qword_2803A9468;
  if (!qword_2803A9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9468);
  }

  return result;
}

unint64_t sub_26A4D3394()
{
  result = qword_28157F7B0;
  if (!qword_28157F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F7B0);
  }

  return result;
}

unint64_t sub_26A4D33E8()
{
  result = qword_2803A9478;
  if (!qword_2803A9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9478);
  }

  return result;
}

unint64_t sub_26A4D343C()
{
  result = qword_2803A9480;
  if (!qword_2803A9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9480);
  }

  return result;
}

uint64_t sub_26A4D3490()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A4D34E4()
{
  sub_26A8517B8();
  v0 = sub_26A851788();

  return v0;
}

unint64_t sub_26A4D351C()
{
  result = qword_2803A9538;
  if (!qword_2803A9538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9520);
    sub_26A4D35A8();
    sub_26A4D36EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9538);
  }

  return result;
}

unint64_t sub_26A4D35A8()
{
  result = qword_2803A9540;
  if (!qword_2803A9540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9548);
    sub_26A4D3634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9540);
  }

  return result;
}

unint64_t sub_26A4D3634()
{
  result = qword_2803A9550;
  if (!qword_2803A9550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9558);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9550);
  }

  return result;
}

unint64_t sub_26A4D36EC()
{
  result = qword_2803A9570;
  if (!qword_2803A9570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9578);
    sub_26A4D3778();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9570);
  }

  return result;
}

unint64_t sub_26A4D3778()
{
  result = qword_2803A9580;
  if (!qword_2803A9580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9588);
    sub_26A4D3804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9580);
  }

  return result;
}

unint64_t sub_26A4D3804()
{
  result = qword_2803A9590;
  if (!qword_2803A9590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9598);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9590);
  }

  return result;
}

unint64_t sub_26A4D38BC()
{
  result = qword_28157F3F0;
  if (!qword_28157F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157F3F0);
  }

  return result;
}

unint64_t sub_26A4D3910()
{
  result = qword_2803A95D0;
  if (!qword_2803A95D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A95B8);
    sub_26A4D399C();
    sub_26A4D3A54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A95D0);
  }

  return result;
}

unint64_t sub_26A4D399C()
{
  result = qword_2803A95D8;
  if (!qword_2803A95D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A95E0);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A95D8);
  }

  return result;
}

unint64_t sub_26A4D3A54()
{
  result = qword_2803A95F8;
  if (!qword_2803A95F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9600);
    sub_26A4D7DCC();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A95F8);
  }

  return result;
}

unint64_t sub_26A4D3B0C()
{
  result = qword_2803A9630;
  if (!qword_2803A9630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9618);
    sub_26A4D3B98();
    sub_26A4D3D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9630);
  }

  return result;
}

unint64_t sub_26A4D3B98()
{
  result = qword_2803A9638;
  if (!qword_2803A9638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9640);
    sub_26A4D3C24();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9638);
  }

  return result;
}

unint64_t sub_26A4D3C24()
{
  result = qword_2803A9648;
  if (!qword_2803A9648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9650);
    sub_26A4D3CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9648);
  }

  return result;
}

unint64_t sub_26A4D3CB0()
{
  result = qword_2803A9658;
  if (!qword_2803A9658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9660);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9658);
  }

  return result;
}

unint64_t sub_26A4D3D68()
{
  result = qword_2803A9678;
  if (!qword_2803A9678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9680);
    sub_26A4D3DF4();
    sub_26A4D3EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9678);
  }

  return result;
}

unint64_t sub_26A4D3DF4()
{
  result = qword_2803A9688;
  if (!qword_2803A9688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9690);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9688);
  }

  return result;
}

unint64_t sub_26A4D3EAC()
{
  result = qword_2803A96A8;
  if (!qword_2803A96A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A96B0);
    sub_26A4D3F38();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A96A8);
  }

  return result;
}

unint64_t sub_26A4D3F38()
{
  result = qword_2803A96B8;
  if (!qword_2803A96B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A96C0);
    sub_26A4D3FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A96B8);
  }

  return result;
}

unint64_t sub_26A4D3FC4()
{
  result = qword_2803A96C8;
  if (!qword_2803A96C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A96D0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A96C8);
  }

  return result;
}

unint64_t sub_26A4D40A8()
{
  result = qword_2803A9710;
  if (!qword_2803A9710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A96F8);
    sub_26A4D4134();
    sub_26A4D41EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9710);
  }

  return result;
}

unint64_t sub_26A4D4134()
{
  result = qword_2803A9718;
  if (!qword_2803A9718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9720);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9718);
  }

  return result;
}

unint64_t sub_26A4D41EC()
{
  result = qword_2803A9738;
  if (!qword_2803A9738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9740);
    sub_26A4D4278();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9738);
  }

  return result;
}

unint64_t sub_26A4D4278()
{
  result = qword_2803A9748;
  if (!qword_2803A9748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9750);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9748);
  }

  return result;
}

unint64_t sub_26A4D4330()
{
  result = qword_2803A9780;
  if (!qword_2803A9780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9768);
    sub_26A4D43E8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9780);
  }

  return result;
}

unint64_t sub_26A4D43E8()
{
  result = qword_2803A9788;
  if (!qword_2803A9788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9790);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9788);
  }

  return result;
}

unint64_t sub_26A4D44C8()
{
  result = qword_2803A9820;
  if (!qword_2803A9820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9808);
    sub_26A4D4554();
    sub_26A4D460C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9820);
  }

  return result;
}

unint64_t sub_26A4D4554()
{
  result = qword_2803A9828;
  if (!qword_2803A9828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9830);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9828);
  }

  return result;
}

unint64_t sub_26A4D460C()
{
  result = qword_2803A9848;
  if (!qword_2803A9848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9850);
    sub_26A4D4698();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9848);
  }

  return result;
}

unint64_t sub_26A4D4698()
{
  result = qword_2803A9858;
  if (!qword_2803A9858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9860);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9858);
  }

  return result;
}

unint64_t sub_26A4D4750()
{
  result = qword_2803A98B0;
  if (!qword_2803A98B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9898);
    sub_26A4D4808();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A98B0);
  }

  return result;
}

unint64_t sub_26A4D4808()
{
  result = qword_2803A98B8;
  if (!qword_2803A98B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A98C0);
    sub_26A4D7DCC();
    sub_26A4D48C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A98B8);
  }

  return result;
}

unint64_t sub_26A4D48C0()
{
  result = qword_2803A98D8;
  if (!qword_2803A98D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A98E0);
    sub_26A4D2D18();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A98D8);
  }

  return result;
}

unint64_t sub_26A4D49A8()
{
  result = qword_2803A9940;
  if (!qword_2803A9940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9938);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9940);
  }

  return result;
}

unint64_t sub_26A4D4A60()
{
  result = qword_2803A9970;
  if (!qword_2803A9970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9958);
    sub_26A4D4AEC();
    sub_26A4D4BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9970);
  }

  return result;
}

unint64_t sub_26A4D4AEC()
{
  result = qword_2803A9978;
  if (!qword_2803A9978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9980);
    sub_26A4D4BA8();
    sub_26A4D2D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9978);
  }

  return result;
}

unint64_t sub_26A4D4BA8()
{
  result = qword_2803A9988;
  if (!qword_2803A9988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9990);
    sub_26A4D4C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9988);
  }

  return result;
}

unint64_t sub_26A4D4C34()
{
  result = qword_2803A9998;
  if (!qword_2803A9998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A99A0);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9998);
  }

  return result;
}

unint64_t sub_26A4D4CEC()
{
  result = qword_2803A99D8;
  if (!qword_2803A99D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A99D0);
    sub_26A4D4BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A99D8);
  }

  return result;
}

unint64_t sub_26A4D4D78()
{
  result = qword_2803A9A38;
  if (!qword_2803A9A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9A20);
    sub_26A4D4E04();
    sub_26A4D4EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9A38);
  }

  return result;
}

unint64_t sub_26A4D4E04()
{
  result = qword_2803A9A40;
  if (!qword_2803A9A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9A48);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9A40);
  }

  return result;
}

unint64_t sub_26A4D4EBC()
{
  result = qword_2803A9A60;
  if (!qword_2803A9A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9A68);
    sub_26A4D4F48();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9A60);
  }

  return result;
}

unint64_t sub_26A4D4F48()
{
  result = qword_2803A9A70;
  if (!qword_2803A9A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9A78);
    sub_26A4D4FD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9A70);
  }

  return result;
}

unint64_t sub_26A4D4FD4()
{
  result = qword_2803A9A80;
  if (!qword_2803A9A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9A88);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9A80);
  }

  return result;
}

unint64_t sub_26A4D508C()
{
  result = qword_2803A9AB8;
  if (!qword_2803A9AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9AA0);
    sub_26A4D5118();
    sub_26A4D51D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9AB8);
  }

  return result;
}

unint64_t sub_26A4D5118()
{
  result = qword_2803A9AC0;
  if (!qword_2803A9AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9AC8);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9AC0);
  }

  return result;
}

unint64_t sub_26A4D51D0()
{
  result = qword_2803A9AE0;
  if (!qword_2803A9AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9AE8);
    sub_26A4D7DCC();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9AE0);
  }

  return result;
}

unint64_t sub_26A4D5288()
{
  result = qword_2803A9B18;
  if (!qword_2803A9B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9B00);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9B18);
  }

  return result;
}

unint64_t sub_26A4D5340()
{
  result = qword_2803A9BA8;
  if (!qword_2803A9BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9BA0);
    sub_26A4D53CC();
    sub_26A4D5484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9BA8);
  }

  return result;
}

unint64_t sub_26A4D53CC()
{
  result = qword_2803A9BB0;
  if (!qword_2803A9BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9BB8);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9BB0);
  }

  return result;
}

unint64_t sub_26A4D5484()
{
  result = qword_2803A9BD0;
  if (!qword_2803A9BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9BD8);
    sub_26A4D5510();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9BD0);
  }

  return result;
}

unint64_t sub_26A4D5510()
{
  result = qword_2803A9BE0;
  if (!qword_2803A9BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9BE8);
    sub_26A4D55C8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9BE0);
  }

  return result;
}

unint64_t sub_26A4D55C8()
{
  result = qword_2803A9BF0;
  if (!qword_2803A9BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9BF8);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9BF0);
  }

  return result;
}

unint64_t sub_26A4D56AC()
{
  result = qword_2803A9C48;
  if (!qword_2803A9C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9C30);
    sub_26A4D5738();
    sub_26A4D578C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9C48);
  }

  return result;
}

unint64_t sub_26A4D5738()
{
  result = qword_2803A9C50;
  if (!qword_2803A9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9C50);
  }

  return result;
}

unint64_t sub_26A4D578C()
{
  result = qword_2803A9C58;
  if (!qword_2803A9C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9C60);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9C58);
  }

  return result;
}

unint64_t sub_26A4D5870()
{
  result = qword_2803A9CA0;
  if (!qword_2803A9CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9C88);
    sub_26A4D7DCC();
    sub_26A4D5928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9CA0);
  }

  return result;
}

unint64_t sub_26A4D5928()
{
  result = qword_2803A9CB8;
  if (!qword_2803A9CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9CC0);
    sub_26A4D59B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9CB8);
  }

  return result;
}

unint64_t sub_26A4D59B4()
{
  result = qword_2803A9CC8;
  if (!qword_2803A9CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9CD0);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9CC8);
  }

  return result;
}

unint64_t sub_26A4D5A6C()
{
  result = qword_2803A9D20;
  if (!qword_2803A9D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9D08);
    sub_26A4D4808();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9D20);
  }

  return result;
}

unint64_t sub_26A4D5B24()
{
  result = qword_2803A9D50;
  if (!qword_2803A9D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9D38);
    sub_26A4D5BB0();
    sub_26A4D5C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9D50);
  }

  return result;
}

unint64_t sub_26A4D5BB0()
{
  result = qword_2803A9D58;
  if (!qword_2803A9D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9D60);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9D58);
  }

  return result;
}

unint64_t sub_26A4D5C68()
{
  result = qword_2803A9D78;
  if (!qword_2803A9D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9D80);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9D78);
  }

  return result;
}

unint64_t sub_26A4D5D20()
{
  result = qword_2803A9DB8;
  if (!qword_2803A9DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9DB0);
    sub_26A4D5DD8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9DB8);
  }

  return result;
}

unint64_t sub_26A4D5DD8()
{
  result = qword_2803A9DC0;
  if (!qword_2803A9DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9DC8);
    sub_26A4D5E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9DC0);
  }

  return result;
}

unint64_t sub_26A4D5E64()
{
  result = qword_2803A9DD0;
  if (!qword_2803A9DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9DD8);
    sub_26A4D5F20();
    sub_26A4D2D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9DD0);
  }

  return result;
}

unint64_t sub_26A4D5F20()
{
  result = qword_2803A9DE0;
  if (!qword_2803A9DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9DE8);
    sub_26A4D5FD8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9DE0);
  }

  return result;
}

unint64_t sub_26A4D5FD8()
{
  result = qword_2803A9DF0;
  if (!qword_2803A9DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9E00);
    sub_26A4D60CC();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9DF0);
  }

  return result;
}

unint64_t sub_26A4D60CC()
{
  result = qword_2803A9E08;
  if (!qword_2803A9E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9E00);
    sub_26A4D6184();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9E08);
  }

  return result;
}

unint64_t sub_26A4D6184()
{
  result = qword_2803A9E10;
  if (!qword_2803A9E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803A9E18);
    sub_26A4D6208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9E10);
  }

  return result;
}

unint64_t sub_26A4D6208()
{
  result = qword_28157FB10;
  if (!qword_28157FB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803A9E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FB10);
  }

  return result;
}

unint64_t sub_26A4D6284()
{
  result = qword_2803A9E78;
  if (!qword_2803A9E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9E60);
    sub_26A4D6310();
    sub_26A4D63C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9E78);
  }

  return result;
}

unint64_t sub_26A4D6310()
{
  result = qword_2803A9E80;
  if (!qword_2803A9E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9E88);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9E80);
  }

  return result;
}

unint64_t sub_26A4D63C8()
{
  result = qword_2803A9EA0;
  if (!qword_2803A9EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9EA8);
    sub_26A4D7DCC();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9EA0);
  }

  return result;
}

unint64_t sub_26A4D6480()
{
  result = qword_2803A9ED8;
  if (!qword_2803A9ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9EC0);
    sub_26A4D650C();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9ED8);
  }

  return result;
}

unint64_t sub_26A4D650C()
{
  result = qword_2803A9EE0;
  if (!qword_2803A9EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9EE8);
    sub_26A4D65C4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9EE0);
  }

  return result;
}

unint64_t sub_26A4D65C4()
{
  result = qword_2803A9EF0;
  if (!qword_2803A9EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9EF8);
    sub_26A4D6650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9EF0);
  }

  return result;
}

unint64_t sub_26A4D6650()
{
  result = qword_2803A9F00;
  if (!qword_2803A9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9F00);
  }

  return result;
}

unint64_t sub_26A4D66A4()
{
  result = qword_2803A9F30;
  if (!qword_2803A9F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9F28);
    sub_26A4D6730();
    sub_26A4D6874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9F30);
  }

  return result;
}

unint64_t sub_26A4D6730()
{
  result = qword_2803A9F38;
  if (!qword_2803A9F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9F40);
    sub_26A4D67BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9F38);
  }

  return result;
}

unint64_t sub_26A4D67BC()
{
  result = qword_2803A9F48;
  if (!qword_2803A9F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9F50);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9F48);
  }

  return result;
}

unint64_t sub_26A4D6874()
{
  result = qword_2803A9F68;
  if (!qword_2803A9F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9F70);
    sub_26A4D6900();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9F68);
  }

  return result;
}

unint64_t sub_26A4D6900()
{
  result = qword_2803A9F78;
  if (!qword_2803A9F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9F80);
    sub_26A4D698C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9F78);
  }

  return result;
}

unint64_t sub_26A4D698C()
{
  result = qword_2803A9F88;
  if (!qword_2803A9F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9F90);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9F88);
  }

  return result;
}

unint64_t sub_26A4D6A44()
{
  result = qword_2803A9FC0;
  if (!qword_2803A9FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9FA8);
    sub_26A4D7DCC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9FD8);
    sub_26A4D6B40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9FC0);
  }

  return result;
}

unint64_t sub_26A4D6B40()
{
  result = qword_2803A9FE0;
  if (!qword_2803A9FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803A9FD8);
    sub_26A4D7DCC();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803A9FE0);
  }

  return result;
}

unint64_t sub_26A4D6BF8()
{
  result = qword_28157DCE8[0];
  if (!qword_28157DCE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28157DCE8);
  }

  return result;
}

unint64_t sub_26A4D6C4C()
{
  result = qword_2803AA018;
  if (!qword_2803AA018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA000);
    sub_26A4D2D18();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA018);
  }

  return result;
}

unint64_t sub_26A4D6D08()
{
  result = qword_2803AA038;
  if (!qword_2803AA038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA020);
    sub_26A4D6DC0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA038);
  }

  return result;
}

unint64_t sub_26A4D6DC0()
{
  result = qword_2803AA040;
  if (!qword_2803AA040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA048);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA040);
  }

  return result;
}

unint64_t sub_26A4D6EA0()
{
  result = qword_2803AA0A8;
  if (!qword_2803AA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA0A8);
  }

  return result;
}

unint64_t sub_26A4D6EF4()
{
  result = qword_2803AA0C8;
  if (!qword_2803AA0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA0B0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA0C8);
  }

  return result;
}

uint64_t sub_26A4D6FD8()
{
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A4D702C()
{
  result = qword_2803AA150;
  if (!qword_2803AA150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA138);
    sub_26A4D7DCC();
    sub_26A4D70E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA150);
  }

  return result;
}

unint64_t sub_26A4D70E4()
{
  result = qword_2803AA168;
  if (!qword_2803AA168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA170);
    sub_26A4D7170();
    sub_26A4D7228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA168);
  }

  return result;
}

unint64_t sub_26A4D7170()
{
  result = qword_2803AA178;
  if (!qword_2803AA178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA180);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA178);
  }

  return result;
}

unint64_t sub_26A4D7228()
{
  result = qword_2803AA198;
  if (!qword_2803AA198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA1A0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA198);
  }

  return result;
}

unint64_t sub_26A4D730C()
{
  result = qword_2803AA1D0;
  if (!qword_2803AA1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA1B8);
    sub_26A4D73C4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA1D0);
  }

  return result;
}

unint64_t sub_26A4D73C4()
{
  result = qword_2803AA1D8;
  if (!qword_2803AA1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA1E0);
    sub_26A4D7DCC();
    sub_26A4D5738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA1D8);
  }

  return result;
}

unint64_t sub_26A4D747C()
{
  result = qword_2803AA220;
  if (!qword_2803AA220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA218);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA220);
  }

  return result;
}

unint64_t sub_26A4D7560()
{
  result = qword_2803AA298;
  if (!qword_2803AA298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA280);
    sub_26A4D7618();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA298);
  }

  return result;
}

unint64_t sub_26A4D7618()
{
  result = qword_2803AA2A0;
  if (!qword_2803AA2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA2A8);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA2A0);
  }

  return result;
}

unint64_t sub_26A4D76D0()
{
  result = qword_2803AA308;
  if (!qword_2803AA308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA2F0);
    sub_26A4D775C();
    sub_26A4D7814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA308);
  }

  return result;
}

unint64_t sub_26A4D775C()
{
  result = qword_2803AA310;
  if (!qword_2803AA310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA318);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA310);
  }

  return result;
}

unint64_t sub_26A4D7814()
{
  result = qword_2803AA330;
  if (!qword_2803AA330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA338);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA330);
  }

  return result;
}

unint64_t sub_26A4D78CC()
{
  result = qword_2803AA368;
  if (!qword_2803AA368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA360);
    sub_26A4D7958();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA368);
  }

  return result;
}

unint64_t sub_26A4D7958()
{
  result = qword_2803AA370;
  if (!qword_2803AA370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA378);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA370);
  }

  return result;
}

unint64_t sub_26A4D7A10()
{
  result = qword_2803AA3A0;
  if (!qword_2803AA3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA390);
    sub_26A4D7A9C();
    sub_26A4D7B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA3A0);
  }

  return result;
}

unint64_t sub_26A4D7A9C()
{
  result = qword_2803AA3A8;
  if (!qword_2803AA3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA3B0);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA3A8);
  }

  return result;
}

unint64_t sub_26A4D7B54()
{
  result = qword_2803AA3C8;
  if (!qword_2803AA3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA3D0);
    sub_26A4D7BE0();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA3C8);
  }

  return result;
}

unint64_t sub_26A4D7BE0()
{
  result = qword_2803AA3D8;
  if (!qword_2803AA3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA3E0);
    sub_26A4D7C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA3D8);
  }

  return result;
}

unint64_t sub_26A4D7C6C()
{
  result = qword_2803AA3E8;
  if (!qword_2803AA3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA3F0);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA3E8);
  }

  return result;
}

uint64_t sub_26A4D7D24()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A4D7D78()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

unint64_t sub_26A4D7DCC()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A4D7E10()
{
  result = qword_28157D880;
  if (!qword_28157D880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28157D880);
  }

  return result;
}

uint64_t sub_26A4D7E54()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A4D7EA8()
{
  OUTLINED_FUNCTION_145();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

void sub_26A4D8274(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void OUTLINED_FUNCTION_0(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = sub_26A778EE0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4(uint64_t result)
{
  *(v2 + *(v1 + 24)) = v3;
  v4 = v2 + *(v1 + 28);
  *v4 = result;
  *(v4 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_once();
}

double OUTLINED_FUNCTION_7()
{
  v3 = v1 + *(v2 + 92);
  *(v3 + 32) = 0;
  result = 0.0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v0 + 128) = v3;
  return result;
}

void OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a8;
  *(v8 + 152) = a7;
  *(v8 + 124) = a6;
  *(v8 + 56) = a5;
  *(v8 + 108) = a4;
  *(v8 + 96) = a3;
  *(v8 + 88) = *(v9 + 16);
}

double OUTLINED_FUNCTION_11()
{
  v4 = v1 + *(v3 + 72);
  v5 = *(v2 + 16);
  *v4 = *v2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(v2 + 32);
  return *(v0 + 96);
}

__n128 OUTLINED_FUNCTION_12@<Q0>(__n128 *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *v2 = *a1;
  v2[1] = v4;
  v5 = a1[2];
  v6 = a1[3];
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  result = v2[3];
  v1[10] = v2[2];
  v1[8] = result;
  return result;
}

double OUTLINED_FUNCTION_14()
{
  v3 = v1 + *(v2 + 72);
  v4 = *(v0 + 96);
  v5 = *(v4 + 16);
  *v3 = *v4;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v4 + 32);
  return *(v0 + 104);
}

__n128 OUTLINED_FUNCTION_18@<Q0>(__int128 *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 + 224) = *a1;
  *(v1 + 240) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(v1 + 256) = v4;
  *(v1 + 272) = v5;
  *(v1 + 288) = v2;
  *(v1 + 304) = v3;
  *(v1 + 320) = v4;
  *(v1 + 336) = v5;
  result = *(v1 + 272);
  *(v1 + 144) = *(v1 + 256);
  *(v1 + 64) = result;
  return result;
}

double OUTLINED_FUNCTION_20@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *(v2 + 32) = 0;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_22(uint64_t result)
{
  *(v2 + *(v1 + 24)) = v3;
  v4 = v2 + *(v1 + 28);
  *v4 = result;
  *(v4 + 8) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_23()
{
  v3 = *(v0 + 128);
  *(v1 + 208) = *(v0 + 160);
  *(v1 + 224) = v3;
  v4 = *(v2 + 80);
  *(v1 + 240) = *(v2 + 64);
  *(v1 + 256) = v4;
  result = *(v2 + 96);
  v6 = *(v2 + 112);
  *(v1 + 272) = result;
  *(v1 + 288) = v6;
  return result;
}

double OUTLINED_FUNCTION_30()
{
  v4 = v1 + *(v2 + 72);
  v5 = *(v3 + 16);
  *v4 = *v3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(v3 + 32);
  return *(v0 + 88);
}

__n128 OUTLINED_FUNCTION_32()
{
  v2 = *(v0 + 64);
  *(v1 + 208) = *(v0 + 144);
  *(v1 + 224) = v2;
  v3 = *(v0 + 304);
  *(v1 + 240) = *(v0 + 288);
  *(v1 + 256) = v3;
  result = *(v0 + 320);
  v5 = *(v0 + 336);
  *(v1 + 272) = result;
  *(v1 + 288) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a8;
  *(v8 + 160) = a7;
  *(v8 + 168) = a1;
  *(v8 + 140) = a6;
  *(v8 + 56) = a5;
  *(v8 + 116) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 120) = *(v9 + 16);

  return sub_26A84F988();
}

__n128 OUTLINED_FUNCTION_36@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(v1 + 32);
  return result;
}

void OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = a8;
  *(v8 + 152) = a7;
  *(v8 + 124) = a6;
  *(v8 + 56) = a5;
}

uint64_t OUTLINED_FUNCTION_43(uint64_t result)
{
  *(v1 + 8) = result;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_48@<Q0>(uint64_t a1@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v1[14] = *a1;
  v1[15] = v3;
  v4 = *(a1 + 48);
  v1[16] = *(a1 + 32);
  v1[17] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_49()
{

  return sub_26A850AF8();
}

uint64_t OUTLINED_FUNCTION_50()
{
  result = *(v0 + 56);
  *(v1 + *(v2 + 76)) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_52(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_53(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_54(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_55()
{

  return sub_26A84EA78();
}

__n128 OUTLINED_FUNCTION_59()
{
  v2 = *(v0 + 128);
  result = *(v0 + 160);
  *(v1 + 208) = result;
  *(v1 + 224) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_61(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_62(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_63(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

void OUTLINED_FUNCTION_66(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  *(v6 + 124) = a6;
  *(v6 + 56) = a5;
  *(v6 + 100) = a4;
  *(v6 + 88) = a3;
}

uint64_t OUTLINED_FUNCTION_67()
{

  return __swift_storeEnumTagSinglePayload(v2 + v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_69()
{

  return __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

void OUTLINED_FUNCTION_70()
{

  sub_26A771AB4();
}

uint64_t OUTLINED_FUNCTION_71@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 64) = a1;
  *(v1 + 160) = v2;

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_72(uint64_t a1)
{
  *v1 = a1;
  *(v1 + 9) = 0;

  return swift_unknownObjectWeakInit();
}

__n128 OUTLINED_FUNCTION_74@<Q0>(__n128 *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *v1 = *a1;
  v1[1] = v3;
  v4 = a1[2];
  v5 = a1[3];
  v1[2] = v4;
  v1[3] = v5;
  v1[4] = v2;
  v1[5] = v3;
  v1[6] = v4;
  v1[7] = v5;
  return v1[3];
}

uint64_t OUTLINED_FUNCTION_76()
{

  return __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return swift_storeEnumTagMultiPayload();
}

void OUTLINED_FUNCTION_87()
{

  sub_26A4D1AD0();
}

uint64_t OUTLINED_FUNCTION_90()
{
  result = *(v0 + 56);
  *(v1 + *(v2 + 76)) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_96(uint64_t result)
{
  *(v1 + 400) = result;
  *(v1 + 408) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_97(uint64_t result)
{
  *(v1 + 384) = result;
  *(v1 + 392) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_98(uint64_t result)
{
  *(v1 + 368) = result;
  *(v1 + 376) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_99(uint64_t result)
{
  *(v1 + 352) = result;
  *(v1 + 360) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_100(uint64_t result)
{
  *(v1 + 328) = result;
  *(v1 + 336) = 0;
  *(v1 + 344) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_101(uint64_t result)
{
  *(v1 + 304) = result;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_103(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_104(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_105(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

void OUTLINED_FUNCTION_107()
{

  sub_26A771AB4();
}

uint64_t OUTLINED_FUNCTION_108(uint64_t a1)
{
  *v1 = a1;
  *(v1 + 9) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_109()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_115()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_118()
{

  return sub_26A851248();
}

uint64_t OUTLINED_FUNCTION_119(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

void OUTLINED_FUNCTION_120()
{

  sub_26A771AB4();
}

uint64_t OUTLINED_FUNCTION_121(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;

  return type metadata accessor for ActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1)
{
  *v1 = a1;
  *(v1 + 9) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_126()
{

  return sub_26A84F998();
}

uint64_t OUTLINED_FUNCTION_127(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = a8;
  *(v8 + 224) = a7;
  *(v8 + 232) = a1;
  *(v8 + 220) = a6;
  *(v8 + 72) = a5;
  *(v8 + 148) = a4;
  *(v8 + 128) = a2;
  *(v8 + 136) = a3;
  *(v8 + 160) = v9[10];
  *(v8 + 152) = v9[9];
  *(v8 + 120) = v9[2];

  return sub_26A84F988();
}

uint64_t OUTLINED_FUNCTION_129()
{
  *(v0 + *(v2 + 76)) = v1;

  return type metadata accessor for RuntimeComponentWithAction(0);
}

uint64_t OUTLINED_FUNCTION_131()
{

  return sub_26A851248();
}

uint64_t OUTLINED_FUNCTION_132(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_133(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a8;
  *(v8 + 208) = a7;
  *(v8 + 216) = a1;
  *(v8 + 204) = a6;
  *(v8 + 72) = a5;
  *(v8 + 140) = a4;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 144) = *(v9 + 72);
  *(v8 + 112) = *(v9 + 16);

  return sub_26A84F988();
}

uint64_t OUTLINED_FUNCTION_134()
{

  return sub_26A84F998();
}

uint64_t OUTLINED_FUNCTION_140(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;

  return type metadata accessor for ActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_141()
{

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_142()
{

  return memcpy((v1 + 16), (v0 + 360), 0xC0uLL);
}

uint64_t OUTLINED_FUNCTION_144(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_146()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_148()
{
  *(v1 + *(v2 + 76)) = v0;

  return type metadata accessor for RuntimeComponentWithAction(0);
}

uint64_t OUTLINED_FUNCTION_152()
{

  return sub_26A4D6FD8();
}

__n128 OUTLINED_FUNCTION_154@<Q0>(__int128 *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 + 288) = *a1;
  *(v1 + 304) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(v1 + 320) = v4;
  *(v1 + 336) = v5;
  *(v1 + 352) = v2;
  *(v1 + 368) = v3;
  *(v1 + 384) = v4;
  *(v1 + 400) = v5;
  result = *(v1 + 336);
  *(v1 + 192) = *(v1 + 320);
  *(v1 + 80) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_155@<Q0>(__int128 *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 + 272) = *a1;
  *(v1 + 288) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(v1 + 304) = v4;
  *(v1 + 320) = v5;
  *(v1 + 336) = v2;
  *(v1 + 352) = v3;
  *(v1 + 368) = v4;
  *(v1 + 384) = v5;
  result = *(v1 + 320);
  *(v1 + 176) = *(v1 + 304);
  *(v1 + 80) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_156()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_157(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_158()
{
  *(v0 + *(v2 + 76)) = v1;

  return type metadata accessor for RuntimeComponentWithAction(0);
}

uint64_t OUTLINED_FUNCTION_162(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_163()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_164(uint64_t a1)
{
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;

  return type metadata accessor for ActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_165()
{

  return sub_26A84F978();
}

uint64_t OUTLINED_FUNCTION_166(uint64_t a1)
{

  return sub_26A772EB4(a1, v2, (v1 + 16));
}

uint64_t OUTLINED_FUNCTION_167()
{

  return sub_26A84F998();
}

__n128 OUTLINED_FUNCTION_169()
{
  v2 = *(v0 + 80);
  *(v1 + 208) = *(v0 + 176);
  *(v1 + 224) = v2;
  v3 = *(v0 + 352);
  *(v1 + 240) = *(v0 + 336);
  *(v1 + 256) = v3;
  result = *(v0 + 368);
  v5 = *(v0 + 384);
  *(v1 + 272) = result;
  *(v1 + 288) = v5;
  return result;
}

__n128 OUTLINED_FUNCTION_170()
{
  v2 = *(v0 + 80);
  *(v1 + 208) = *(v0 + 192);
  *(v1 + 224) = v2;
  v3 = *(v0 + 368);
  *(v1 + 240) = *(v0 + 352);
  *(v1 + 256) = v3;
  result = *(v0 + 384);
  v5 = *(v0 + 400);
  *(v1 + 272) = result;
  *(v1 + 288) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_173(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_175()
{
}

uint64_t OUTLINED_FUNCTION_176@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = v2;

  return type metadata accessor for RuntimeComponentWithAction(0);
}

uint64_t OUTLINED_FUNCTION_181()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_186()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t *OUTLINED_FUNCTION_189(uint64_t a1)
{
  *(v1 + 224) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 192));
}

uint64_t OUTLINED_FUNCTION_191()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_192()
{
  v2 = *(v0 + 128);

  return sub_26A4D3270(v0 + 192, v2);
}

uint64_t OUTLINED_FUNCTION_193@<X0>(uint64_t a1@<X8>)
{
  v1[8] = a1;
  v1[23] = v2;
  v1[21] = v3;

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2);
}

uint64_t *OUTLINED_FUNCTION_194(uint64_t a1)
{
  *(v1 + 216) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 184));
}

uint64_t OUTLINED_FUNCTION_195()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_198()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_199()
{

  return type metadata accessor for StandardActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_200()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t OUTLINED_FUNCTION_201()
{

  return type metadata accessor for StandardActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_202()
{

  return sub_26A4D7D78();
}

uint64_t OUTLINED_FUNCTION_203()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_204()
{

  return sub_26A851248();
}

unint64_t OUTLINED_FUNCTION_205()
{

  return sub_26A4D7DCC();
}

uint64_t OUTLINED_FUNCTION_206@<X0>(uint64_t a1@<X8>)
{
  v1[8] = a1;
  v1[19] = v3;
  v1[20] = v2;

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2);
}

uint64_t OUTLINED_FUNCTION_207()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_208()
{
}

uint64_t OUTLINED_FUNCTION_209()
{
  v2 = *(v0 + 144);

  return sub_26A4D3270(v0 + 184, v2);
}

uint64_t OUTLINED_FUNCTION_210@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 72);
  *(v2 + a1) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_215()
{
  v2 = *(v1 + 80);
  *(v0 + 240) = *(v1 + 64);
  *(v0 + 256) = v2;
  result = *(v1 + 96);
  v4 = *(v1 + 112);
  *(v0 + 272) = result;
  *(v0 + 288) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_222()
{

  return sub_26A84F4F8();
}

uint64_t OUTLINED_FUNCTION_223()
{

  return sub_26A850AF8();
}

uint64_t OUTLINED_FUNCTION_224()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_225(uint64_t a1)
{
  *v1 = a1;
  *(v1 + 9) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_226()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 88);
}

uint64_t OUTLINED_FUNCTION_227()
{

  return type metadata accessor for StandardActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_228()
{

  return type metadata accessor for StandardActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_229()
{

  return sub_26A4D6FD8();
}

uint64_t OUTLINED_FUNCTION_230@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 104) = a1;

  return sub_26A84F988();
}

uint64_t sub_26A4D97A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26A4DBD68(v2, &v13 - v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v10, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A4D9988()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SummaryItemTextView() + 20);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A4D9ADC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryItemTextView();
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t SummaryItemTextView.init(text1:text2:text3:text4:text5:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = type metadata accessor for SummaryItemTextView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = (v9 - v8);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v11 = v10 + v6[5];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v6[6];
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + v6[7];
  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v14, qword_281588798);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v16 = &v13[*(v15 + 32)];
  OUTLINED_FUNCTION_7_0();
  sub_26A4DBD68(v17, v18, v19);
  sub_26A6AEE74(v56);
  memcpy(v13, v56, 0xBFuLL);
  sub_26A4DB4E0(&v16[*(v14 + 36)], &v13[*(v15 + 28)]);
  v20 = (v10 + v6[8]);
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v57[0] = xmmword_281588758[0];
  v57[1] = unk_281588768;
  v57[2] = xmmword_281588778;
  v57[3] = unk_281588788;
  v58 = xmmword_281588758[0];
  v59 = unk_281588768;
  v60 = xmmword_281588778;
  v61 = unk_281588788;
  v46 = unk_281588788;
  v47 = xmmword_281588778;
  sub_26A4DBD68(v57, v62, &qword_2803A91B0);
  sub_26A6AEE74(v62);
  memcpy(v20, v62, 0xC0uLL);
  v20[12] = v47;
  v20[13] = v46;
  v21 = v59;
  v20[14] = v58;
  v20[15] = v21;
  v22 = v61;
  v20[16] = v60;
  v20[17] = v22;
  sub_26A4DBD68(a1, v54, &qword_2803A91B8);
  if (v55)
  {
    v23 = OUTLINED_FUNCTION_0_0();
    v25 = v24(v23);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    sub_26A4DBD10(v54, &qword_2803A91B8);
    v25 = 0;
  }

  *(v10 + v6[9]) = v25;
  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  *(v10 + v6[10]) = (*(v27 + 8))(v26, v27);
  sub_26A4DBD68(a3, v54, &qword_2803A91B8);
  if (v55)
  {
    v28 = OUTLINED_FUNCTION_0_0();
    v30 = v29(v28);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    sub_26A4DBD10(v54, &qword_2803A91B8);
    v30 = 0;
  }

  *(v10 + v6[11]) = v30;
  sub_26A4DBD68(a4, v54, &qword_2803A91B8);
  if (v55)
  {
    v31 = OUTLINED_FUNCTION_0_0();
    v33 = v32(v31);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    sub_26A4DBD10(v54, &qword_2803A91B8);
    v33 = 0;
  }

  *(v10 + v6[12]) = v33;
  sub_26A4DBD68(a5, v54, &qword_2803A91B8);
  if (v55)
  {
    v34 = OUTLINED_FUNCTION_0_0();
    v36 = v35(v34);
    OUTLINED_FUNCTION_7_0();
    sub_26A4DBD10(v37, v38);
    OUTLINED_FUNCTION_7_0();
    sub_26A4DBD10(v39, v40);
    OUTLINED_FUNCTION_7_0();
    sub_26A4DBD10(v41, v42);
    OUTLINED_FUNCTION_7_0();
    sub_26A4DBD10(v43, v44);
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(a5);
    OUTLINED_FUNCTION_9_0(a4);
    OUTLINED_FUNCTION_9_0(a3);
    OUTLINED_FUNCTION_9_0(a1);
    OUTLINED_FUNCTION_9_0(v54);
    v36 = 0;
  }

  *(v10 + v6[13]) = v36;
  sub_26A4DB544(v10, a6);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t type metadata accessor for SummaryItemTextView()
{
  result = qword_2803AA808;
  if (!qword_2803AA808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryItemTextView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A4D97A8(&v17[-v9]);
  sub_26A4DA454(v19);
  sub_26A4D9988();
  sub_26A4D9ADC(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v18 = v1;
  sub_26A4C417C();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA7F0) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA7F8);
  *(a1 + *(result + 36)) = 10;
  return result;
}

uint64_t sub_26A4DA454@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A4D9988();
  result = sub_26A61B05C(v3, &unk_287B13090);
  v5 = result;
  v6 = 0uLL;
  v7 = 0.0;
  if (result)
  {
    result = type metadata accessor for SummaryItemTextView();
    v8 = (v1 + *(result + 32));
    v6 = v8[12];
    v9 = v8[13].f64[1];
    if (qword_2803A8BF0 != -1)
    {
      v15 = v8[12];
      result = swift_once();
      v6 = v15;
    }

    if (byte_2803B0440 == 1)
    {
      __asm { FMOV            V1.2D, #10.0 }

      v6 = vaddq_f64(v6, _Q1);
      v7 = v8[13].f64[0] + 0.0;
      v9 = v9 + 10.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = (v5 & 1) == 0;
  return result;
}

void *sub_26A4DA544@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84FC08();
  v4 = v1 + *(type metadata accessor for SummaryItemTextView() + 28);
  v5 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28) + 32);
  __src[0] = v3;
  __src[1] = v5;
  LOBYTE(__src[2]) = 0;
  sub_26A4DA668(v1, &__src[3]);
  sub_26A851458();
  sub_26A84F628();
  memcpy(__dst, __src, 0x609uLL);
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  result = memcpy(a1, __dst, 0x680uLL);
  *(a1 + 1664) = KeyPath;
  *(a1 + 1672) = 0;
  *(a1 + 1680) = v7;
  *(a1 + 1688) = 256;
  return result;
}

uint64_t sub_26A4DA668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemTextView();
  v5 = *(a1 + v4[13]);
  if (v5)
  {
    if (qword_2803A9028 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D27B0, &v45[200], &qword_2803AA880);
    sub_26A6AEE74(__src);
    memcpy(&v45[8], __src, 0xBFuLL);
    *&v45[288] = 0;
    *&v45[280] = sub_26A80A810;
    *v45 = v5;
  }

  else
  {
    bzero(v45, 0x128uLL);
  }

  memcpy(__dst, v45, sizeof(__dst));
  v6 = *(a1 + v4[9]);
  if (v6)
  {
    v7 = qword_28157E6C0;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815888E8, &v45[200], &qword_2803AA880);
    sub_26A6AEE74(v57);
    memcpy(&v45[8], v57, 0xBFuLL);
    *&v45[288] = 0;
    *&v45[280] = sub_26A80A810;
    *v45 = v6;
  }

  else
  {
    bzero(v45, 0x128uLL);
  }

  memcpy(v54, v45, sizeof(v54));
  v8 = *(a1 + v4[10]);
  v9 = qword_2803A9018;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D2760, v53, &qword_2803AA880);
  sub_26A6AEE74(v58);
  memcpy(v52, v58, sizeof(v52));
  v53[11] = 0;
  v53[10] = sub_26A80A810;
  v51 = v8;
  v10 = *(a1 + v4[11]);
  if (v10)
  {
    v11 = qword_28157E6B0;

    if (v11 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588898, &v45[200], &qword_2803AA880);
    sub_26A6AEE74(v59);
    memcpy(&v45[8], v59, 0xBFuLL);
    *&v45[288] = 0;
    *&v45[280] = sub_26A80A810;
    *v45 = v10;
  }

  else
  {
    bzero(v45, 0x128uLL);
  }

  memcpy(v50, v45, sizeof(v50));
  v12 = *(a1 + v4[12]);
  if (v12)
  {
    v13 = qword_28157E6A0;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, &v45[200], &qword_2803AA880);
    sub_26A6AEE74(v60);
    memcpy(&v45[8], v60, 0xBFuLL);
    *&v45[288] = 0;
    *&v45[280] = sub_26A80A810;
    *v45 = v12;

    v14 = sub_26A850258();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
    sub_26A84ED48();
    *(&v16 + 1) = v15;
    *(&v18 + 1) = v17;
    v19 = *v45;
    v20 = *&v45[16];
    v21 = *&v45[32];
    v22 = *&v45[48];
    v23 = *&v45[64];
    v24 = *&v45[80];
    v25 = *&v45[96];
    v26 = *&v45[112];
    v27 = *&v45[128];
    v28 = *&v45[144];
    v29 = *&v45[160];
    v30 = *&v45[176];
    v31 = *&v45[192];
    v32 = *&v45[208];
    v33 = *&v45[224];
    v34 = *&v45[240];
    v35 = *&v45[256];
    v36 = *&v45[272];
    v37 = *&v45[288];
    v38 = v14;
    v40[0] = 0;
  }

  else
  {
    v40[0] = 0;

    v37 = 0;
    v38 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    v16 = 0uLL;
    v18 = 0uLL;
  }

  *v45 = v19;
  *&v45[16] = v20;
  *&v45[32] = v21;
  *&v45[48] = v22;
  *&v45[64] = v23;
  *&v45[80] = v24;
  *&v45[96] = v25;
  *&v45[112] = v26;
  *&v45[128] = v27;
  *&v45[144] = v28;
  *&v45[160] = v29;
  *&v45[176] = v30;
  *&v45[192] = v31;
  *&v45[208] = v32;
  *&v45[224] = v33;
  *&v45[240] = v34;
  *&v45[256] = v35;
  *&v45[272] = v36;
  *&v45[288] = v37;
  v46 = v38;
  v47 = v16;
  v48 = v18;
  v49 = v40[0];
  sub_26A4DBD68(__dst, v44, &qword_2803AA888);
  sub_26A4DBD68(v54, v43, &qword_2803AA888);
  sub_26A4DBD68(&v51, v42, &qword_2803A99A0);
  sub_26A4DBD68(v50, v41, &qword_2803AA888);
  sub_26A4DBD68(v45, v40, &qword_2803AA890);
  sub_26A4DBD68(v44, a2, &qword_2803AA888);
  sub_26A4DBD68(v43, a2 + 296, &qword_2803AA888);
  sub_26A4DBD68(v42, a2 + 592, &qword_2803A99A0);
  sub_26A4DBD68(v41, a2 + 888, &qword_2803AA888);
  sub_26A4DBD68(v40, a2 + 1184, &qword_2803AA890);
  sub_26A4DBD10(v45, &qword_2803AA890);
  sub_26A4DBD10(v50, &qword_2803AA888);
  sub_26A4DBD10(&v51, &qword_2803A99A0);
  sub_26A4DBD10(v54, &qword_2803AA888);
  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(v40, &qword_2803AA890);
  sub_26A4DBD10(v41, &qword_2803AA888);
  sub_26A4DBD10(v42, &qword_2803A99A0);
  sub_26A4DBD10(v43, &qword_2803AA888);
  return sub_26A4DBD10(v44, &qword_2803AA888);
}

uint64_t sub_26A4DACE0()
{
  v1 = v0;
  v88 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v80 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v87 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_0(&v79 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v24 = OUTLINED_FUNCTION_79(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v79 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v79 - v32;
  v34 = type metadata accessor for SummaryItemTextView();
  v35 = OUTLINED_FUNCTION_79(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v37 - v36);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA840);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v38);
  v40 = &v79 - v39;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA848);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  v85 = v42 - v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_0(&v79 - v45);
  sub_26A84BFE8();
  OUTLINED_FUNCTION_34(v33);
  if (v46)
  {
    sub_26A4DBD10(v33, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v93[1] = 0;
    v93[2] = 0;
  }

  else
  {
    v0 = TextProperty.asAnyView()();
    (*(v18 + 8))(v33, v16);
    v47 = &protocol witness table for AnyView;
    v48 = MEMORY[0x277CE11C8];
  }

  v93[0] = v0;
  v93[3] = v48;
  v93[4] = v47;
  sub_26A84BFF8();
  v49 = TextProperty.asAnyView()();
  v50 = *(v18 + 8);
  v50(v22, v16);
  v92[4] = &protocol witness table for AnyView;
  v92[3] = MEMORY[0x277CE11C8];
  v92[0] = v49;
  v51 = v1;
  sub_26A84C008();
  v52 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v15, 1, v52) == 1)
  {
    sub_26A4DBD10(v15, &qword_2803AA830);
    OUTLINED_FUNCTION_2_0();
    v91[1] = 0;
    v91[2] = 0;
  }

  else
  {
    v51 = MultilineTextProperty.asAnyView()();
    (*(*(v52 - 8) + 8))(v15, v52);
    v53 = &protocol witness table for AnyView;
    v54 = MEMORY[0x277CE11C8];
  }

  v91[0] = v51;
  v91[3] = v54;
  v91[4] = v53;
  v55 = v1;
  sub_26A84C018();
  OUTLINED_FUNCTION_34(v30);
  v56 = v83;
  if (v46)
  {
    sub_26A4DBD10(v30, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v90[1] = 0;
    v90[2] = 0;
  }

  else
  {
    v55 = TextProperty.asAnyView()();
    v50(v30, v16);
    v57 = &protocol witness table for AnyView;
    v58 = MEMORY[0x277CE11C8];
  }

  v90[0] = v55;
  v90[3] = v58;
  v90[4] = v57;
  v59 = v1;
  sub_26A84C028();
  OUTLINED_FUNCTION_34(v27);
  if (v46)
  {
    sub_26A4DBD10(v27, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v89[2] = 0;
    v89[1] = 0;
  }

  else
  {
    v59 = TextProperty.asAnyView()();
    v50(v27, v16);
    v60 = &protocol witness table for AnyView;
    v61 = MEMORY[0x277CE11C8];
  }

  v89[0] = v59;
  v89[3] = v61;
  v89[4] = v60;
  SummaryItemTextView.init(text1:text2:text3:text4:text5:)(v93, v92, v91, v90, v89, v56);
  v62 = v82;
  sub_26A84C038();
  v63 = v87;
  sub_26A4DBDB4(v62, v87, &qword_2803B3800);
  v64 = v88;
  if (__swift_getEnumTagSinglePayload(v63, 1, v88) == 1)
  {
    sub_26A4DBD10(v63, &qword_2803B3800);
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_0();
    v66 = &v40[v65];
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v68 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v66 + v67, 1, 1, v68);
    *v66 = v63;
  }

  else
  {
    v69 = *(v80 + 32);
    v70 = v79;
    v69(v79, v63, v64);
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_0();
    v72 = &v40[v71];
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v69(v72 + v73, v70, v64);
    v74 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v72 + v73, 0, 1, v74);
    *v72 = v63;
  }

  sub_26A4DB544(v56, v40);
  v75 = sub_26A84BFB8();
  v76 = v84;
  sub_26A4DBEBC(v75);

  sub_26A4DBD10(v40, &qword_2803AA840);
  sub_26A84BFC8();

  sub_26A4DBD68(v76, v85, &qword_2803AA848);
  sub_26A4DBA54();
  v77 = sub_26A851248();
  sub_26A4DBD10(v76, &qword_2803AA848);
  return v77;
}

uint64_t sub_26A4DB4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemConstants();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4DB544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A4DB5F4(uint64_t a1)
{
  result = sub_26A4DBC80(&qword_2803AA800, MEMORY[0x277D63208]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A4DB674()
{
  sub_26A4D27F4();
  if (v0 <= 0x3F)
  {
    sub_26A4D28A0(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A4D28A0(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A4D28A0(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
        if (v3 <= 0x3F)
        {
          sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
          if (v4 <= 0x3F)
          {
            sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
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

void sub_26A4DB840(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A4DB890()
{
  result = qword_2803AA818;
  if (!qword_2803AA818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA7F8);
    sub_26A4DB91C();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA818);
  }

  return result;
}

unint64_t sub_26A4DB91C()
{
  result = qword_2803AA820;
  if (!qword_2803AA820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA7F0);
    sub_26A4DBCC8(&qword_2803AA828, &qword_2803AA358);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA820);
  }

  return result;
}

unint64_t sub_26A4DBA00()
{
  result = qword_28157DED8;
  if (!qword_28157DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157DED8);
  }

  return result;
}

unint64_t sub_26A4DBA54()
{
  result = qword_2803AA850;
  if (!qword_2803AA850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA848);
    sub_26A4DBB0C();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA850);
  }

  return result;
}

unint64_t sub_26A4DBB0C()
{
  result = qword_2803AA858;
  if (!qword_2803AA858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA860);
    sub_26A4DBB98();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA858);
  }

  return result;
}

unint64_t sub_26A4DBB98()
{
  result = qword_2803AA868;
  if (!qword_2803AA868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA840);
    sub_26A4DBC80(&qword_2803AA870, type metadata accessor for SummaryItemTextView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA868);
  }

  return result;
}

uint64_t sub_26A4DBC80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A4DBCC8(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_26A4DBD10(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A4DBD68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8_0(a1, a2, a3);
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_26A4DBDB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_8_0(a1, a2, a3);
  OUTLINED_FUNCTION_46();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t sub_26A4DBFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA8D0) + 36);
  sub_26A851048();
  *v6 = v10;
  *(v6 + 8) = v11;
  *(v6 + 16) = swift_getKeyPath();
  *(v6 + 25) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 40) = swift_getKeyPath();
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = swift_getKeyPath();
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = swift_getKeyPath();
  *(v6 + 96) = 0;
  *(v6 + 104) = swift_getKeyPath();
  *(v6 + 112) = 0;
  sub_26A4E233C();
  KeyPath = swift_getKeyPath();
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA8C0) + 36));
  *v8 = KeyPath;
  v8[1] = a1;
  v8[2] = a2;
}

uint64_t sub_26A4DC580()
{
  OUTLINED_FUNCTION_16_0();
  v8 = 0;
  sub_26A851048();
  v4 = v7;
  *(v2 + 1056) = v6[0];
  *(v2 + 1064) = v4;
  *(v2 + 1072) = swift_getKeyPath();
  *(v2 + 1081) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 1096) = swift_getKeyPath();
  *(v2 + 1104) = 0;
  *(v2 + 1112) = 0;
  *(v2 + 1120) = swift_getKeyPath();
  *(v2 + 1128) = 0;
  *(v2 + 1136) = 0;
  *(v2 + 1144) = swift_getKeyPath();
  *(v2 + 1152) = 0;
  *(v2 + 1160) = swift_getKeyPath();
  *(v2 + 1168) = 0;
  memcpy(v2, v1, 0x420uLL);
  *(v2 + 1176) = swift_getKeyPath();
  *(v2 + 1184) = v3;
  *(v2 + 1192) = v0;
  sub_26A4E22E0(v1, v6);
}

uint64_t sub_26A4DD6E4()
{
  OUTLINED_FUNCTION_16_0();
  v9 = 0;
  sub_26A851048();
  v4 = v8;
  *(v2 + 40) = v7[0];
  *(v2 + 48) = v4;
  *(v2 + 56) = swift_getKeyPath();
  *(v2 + 65) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 80) = swift_getKeyPath();
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = swift_getKeyPath();
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = swift_getKeyPath();
  *(v2 + 136) = 0;
  *(v2 + 144) = swift_getKeyPath();
  *(v2 + 152) = 0;
  v5 = *(v1 + 16);
  *v2 = *v1;
  *(v2 + 16) = v5;
  *(v2 + 32) = *(v1 + 32);
  *(v2 + 160) = swift_getKeyPath();
  *(v2 + 168) = v3;
  *(v2 + 176) = v0;
  sub_26A4E2390(v1, v7);
}

uint64_t sub_26A4DEDF8()
{
  OUTLINED_FUNCTION_16_0();
  sub_26A851048();
  *(v2 + 328) = v5;
  *(v2 + 336) = v6;
  *(v2 + 344) = swift_getKeyPath();
  *(v2 + 353) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 368) = swift_getKeyPath();
  *(v2 + 376) = 0;
  *(v2 + 384) = 0;
  *(v2 + 392) = swift_getKeyPath();
  *(v2 + 400) = 0;
  *(v2 + 408) = 0;
  *(v2 + 416) = swift_getKeyPath();
  *(v2 + 424) = 0;
  *(v2 + 432) = swift_getKeyPath();
  *(v2 + 440) = 0;
  memcpy(v2, v1, 0x141uLL);
  *(v2 + 448) = swift_getKeyPath();
  *(v2 + 456) = v3;
  *(v2 + 464) = v0;
  sub_26A4E233C();
}