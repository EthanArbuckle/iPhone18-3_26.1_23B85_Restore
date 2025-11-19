uint64_t sub_26837B664()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26837B768()
{
  OUTLINED_FUNCTION_14();
  sub_26837E250(v0[15], v0[16], 0);
  v1 = v0[3];
  OUTLINED_FUNCTION_35_16();

  return v2();
}

uint64_t sub_26837B7C8()
{
  OUTLINED_FUNCTION_14();
  sub_26837E250(v0[15], v0[16], 1u);
  v1 = v0[6];
  OUTLINED_FUNCTION_35_16();

  return v2();
}

uint64_t sub_26837B828()
{
  OUTLINED_FUNCTION_14();
  sub_26837E250(v0[15], v0[16], 2u);
  v1 = v0[9];
  OUTLINED_FUNCTION_35_16();

  return v2();
}

uint64_t sub_26837B888()
{
  OUTLINED_FUNCTION_14();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  v4 = OUTLINED_FUNCTION_9_0();
  sub_26837E250(v4, v5, 0);
  v6 = v0[19];
  OUTLINED_FUNCTION_40();

  return v7();
}

uint64_t sub_26837B8F4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];

  v4 = OUTLINED_FUNCTION_9_0();
  sub_26837E250(v4, v5, 1u);
  v6 = v0[22];
  OUTLINED_FUNCTION_40();

  return v7();
}

uint64_t sub_26837B960()
{
  OUTLINED_FUNCTION_14();
  sub_26837E250(v0[15], v0[16], 2u);
  v1 = v0[24];
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_26837B9C0(uint64_t a1, uint64_t a2)
{
  v7[5] = a1;
  v7[2] = *(a2 + 16);
  type metadata accessor for SimpleDisambiguationItem();
  type metadata accessor for IdentifiableItem();
  v2 = sub_2683CFD28();
  v3 = sub_2683CEE68();
  WitnessTable = swift_getWitnessTable();
  return sub_268167FAC(sub_26837E3DC, v7, v2, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);
}

uint64_t sub_26837BA84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_2683CEE58();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2683CEE48();
  type metadata accessor for SimpleDisambiguationItem();
  v13 = *(type metadata accessor for IdentifiableItem() + 28);
  v14 = sub_2683CF168();
  (*(*(v14 - 8) + 16))(v9, a1 + v13, v14);
  v15 = 1;
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  sub_2683CEE38();

  sub_2681433DC(v9, &unk_28024E7C0, &unk_2683D6CA0);
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = objc_allocWithZone(MEMORY[0x277D5C218]);

  v19 = [v18 init];
  v20 = objc_opt_self();
  v21 = sub_2683770B4(v16, v17);
  v22 = [v20 runSiriKitExecutorCommandWithContext:v19 payload:v21];

  sub_2683CFF78();
  v24 = v23;

  if (v24)
  {
    sub_2683CFB38();

    v15 = 0;
  }

  __swift_storeEnumTagSinglePayload(v7, v15, 1, v14);
  sub_2683CEE18();

  sub_2681433DC(v7, &unk_28024E7C0, &unk_2683D6CA0);
  v25 = sub_2683CEE28();

  *v28 = v25;
  return result;
}

uint64_t sub_26837BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26837BD3C, 0, 0);
}

uint64_t sub_26837BD3C()
{
  OUTLINED_FUNCTION_15();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  type metadata accessor for SimpleParameterDisambiguationStrategy();
  v6 = OUTLINED_FUNCTION_92_0();
  v8 = sub_26837B9C0(v6, v7);
  v0[6] = v8;
  v14 = (v4 + *v4);
  v9 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[7] = v10;
  *v10 = v11;
  v10[1] = sub_26837BE58;
  v12 = v0[2];

  return v14(v12, v8);
}

uint64_t sub_26837BE58()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    OUTLINED_FUNCTION_40();

    return v13();
  }
}

uint64_t sub_26837BF74()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_40();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_26837BFD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  type metadata accessor for SimpleDisambiguationItem();
  v5 = *(type metadata accessor for IdentifiableItem() + 28);

  result = sub_2683CF158();
  *a2 = v4;
  a2[1] = v3;
  a2[2] = result;
  a2[3] = v7;
  return result;
}

uint64_t sub_26837C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_26837C108;

  return sub_2681A542C(0, a4, a2, a3);
}

uint64_t sub_26837C108()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_26837C238()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_7_4();
  return v1();
}

uint64_t sub_26837C264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_2683CC968();
  v8 = *(a3 + 56);
  v9 = *(a3 + 64);
  sub_26816954C();
  v10 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  return sub_2683CC938();
}

uint64_t sub_26837C330()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v1[10] = v4;
  v1[11] = v0;
  v1[8] = v5;
  v1[9] = v6;
  v1[6] = v7;
  v1[7] = v8;
  v1[4] = v9;
  v1[5] = v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v13 = sub_2683CF168();
  v1[15] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[16] = v14;
  v16 = *(v15 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v17 = *(v3 + 16);
  v1[19] = v17;
  v18 = *(v17 - 8);
  v1[20] = v18;
  v19 = *(v18 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

void sub_26837C4F0()
{
  sub_2681A3020(*(v0 + 40), *(v0 + 152), *(v0 + 192));
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  v10 = *(v1 + 8) + **(v1 + 8);
  v3 = *(*(v1 + 8) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 200) = v4;
  *v4 = v5;
  v4[1] = sub_26837C6A0;
  v6 = *(v0 + 192);
  v7 = *(v0 + 144);
  OUTLINED_FUNCTION_2_16();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_26837C6A0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26837C79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_51_2();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_52_1();
  a28 = v30;
  v33 = v30[11];
  v34 = *(v33 + 72);
  if (!v34)
  {
    (*(v30[20] + 16))(v30[23], v30[24], v30[19]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F320, &qword_2683DB800);
    if (!swift_dynamicCast() || !v30[2])
    {
      goto LABEL_14;
    }

LABEL_6:
    v39 = v30[11];
    v38 = v30[12];
    v40 = v30[10];
    v41 = v30[8];
    v100 = v30[6];
    v102 = v30[7];
    v104 = v30[3];
    v106 = v30[14];
    if (v40)
    {
      v42 = v30[9];
    }

    else
    {
      v42 = 0xD000000000000013;
    }

    if (v40)
    {
      v43 = v30[10];
    }

    else
    {
      v43 = 0x80000002683FA8D0;
    }

    ObjectType = swift_getObjectType();
    v45 = *(v39 + 160);
    v46 = *(v39 + 168);

    sub_2683CF818();
    sub_2683CF828();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    sub_26816A834(v42, v43, v100, v102, v38, ObjectType, v104, v106);
    swift_unknownObjectRelease();

    sub_2681433DC(v38, &qword_28024DD70, &unk_2683D4E80);
    v51 = sub_2683CF8B8();
    if (__swift_getEnumTagSinglePayload(v106, 1, v51) != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v35 = *(v33 + 80);
  v36 = v34(v30[24]);
  v30[2] = v36;
  v30[3] = v37;
  if (v36)
  {
    goto LABEL_6;
  }

LABEL_14:
  v52 = v30[14];
  v53 = sub_2683CF8B8();
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v53);
LABEL_15:
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v54 = v30[24];
  v55 = v30[22];
  v56 = v30[19];
  v57 = v30[20];
  v58 = sub_2683CF7E8();
  __swift_project_value_buffer(v58, qword_28027C958);
  v59 = *(v57 + 16);
  v60 = OUTLINED_FUNCTION_9_0();
  v59(v60);
  v61 = sub_2683CF7C8();
  v62 = sub_2683CFE78();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v30[22];
  if (v63)
  {
    v65 = v30[20];
    v66 = v30[21];
    v67 = v30[19];
    v68 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    a18 = v107;
    *v68 = 136315138;
    (v59)(v66, v64, v67);
    v69 = sub_2683CFAD8();
    v71 = v70;
    (*(v65 + 8))(v64, v67);
    v72 = sub_2681610A0(v69, v71, &a18);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_2680EB000, v61, v62, "[SimpleParameterDisambiguationStrategy] Unable to create RR entity for item: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v107);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v73 = v30[19];
    v74 = v30[20];

    (*(v74 + 8))(v64, v73);
  }

LABEL_20:
  v75 = v30[26];
  v76 = v30[24];
  v77 = v30[21];
  v103 = v30[23];
  v105 = v30[22];
  v79 = v30[19];
  v78 = v30[20];
  v80 = v30[18];
  v96 = v77;
  v97 = v30[17];
  v81 = v30[16];
  v82 = v30[14];
  v98 = v30[13];
  v83 = v30[11];
  v108 = v30[12];
  v99 = v30[4];
  v101 = v30[15];
  (*(v81 + 16))();
  (*(v78 + 16))(v77, v76, v79);
  v84 = *v83;
  v85 = swift_task_alloc();
  *(v85 + 16) = v80;
  v86 = sub_2681527AC(sub_26837E230, v85, v84);

  (*(v78 + 8))(v76, v79);
  sub_26812DA38(v82, v98, &qword_28024DD28, &qword_2683D4CF0);
  sub_26837757C(v97, v96, v86, v98, v79, v99);
  sub_2681433DC(v82, &qword_28024DD28, &qword_2683D4CF0);
  (*(v81 + 8))(v80, v101);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v88(v87, v88, v89, v90, v91, v92, v93, v94, v76, v96, v97, v98, v99, v101, v103, v105, v108, a18, a19, a20, a21, a22);
}

uint64_t sub_26837CCA0()
{
  (*(v0[20] + 8))(v0[24], v0[19]);
  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];

  OUTLINED_FUNCTION_40();

  return v11();
}

uint64_t sub_26837CD88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_2683CF158();

  return sub_2683CC258();
}

uint64_t sub_26837CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy((v5 + 16), v4, 0xB0uLL);
  v10 = swift_task_alloc();
  *(v5 + 192) = v10;
  *v10 = v5;
  v10[1] = sub_26837CEC8;

  return sub_268377DF8(a1, a2, a3, a4);
}

uint64_t sub_26837CEC8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_26837CFA8()
{
  memcpy((v1 + 16), v0, 0xB0uLL);
  v2 = swift_task_alloc();
  *(v1 + 192) = v2;
  *v2 = v1;
  v2[1] = sub_26837E664;

  return sub_26837C330();
}

unint64_t sub_26837D0B0@<X0>(unint64_t result@<X0>, unint64_t a2@<X8>)
{
  v2 = result;
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    result = sub_268390808(0, v4 & ~(v4 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v22 = v2;
      v23 = v2 & 0xC000000000000001;
      v5 = v25;
      v20 = a2;
      v21 = v2 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v23)
        {
          v7 = MEMORY[0x26D616C90](v6, v2);
        }

        else
        {
          if ((v6 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            result = sub_2683D00A8();
            v4 = result;
            goto LABEL_3;
          }

          if (v6 >= *(v21 + 16))
          {
            goto LABEL_17;
          }

          v7 = *(v2 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = sub_26837D6D8(v8, &selRef_identifier);
        v11 = v10;
        v12 = [v8 title];
        v13 = [v12 spokenPhrase];

        v14 = sub_2683CFA78();
        v16 = v15;

        result = sub_268151B3C(0, 0, 255);
        v18 = *(v25 + 16);
        v17 = *(v25 + 24);
        a2 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          result = sub_268390808((v17 > 1), v18 + 1, 1);
        }

        ++v6;
        *(v25 + 16) = a2;
        v19 = v25 + 104 * v18;
        *(v19 + 32) = v9;
        *(v19 + 40) = v11;
        *(v19 + 48) = v14;
        *(v19 + 56) = v16;
        *(v19 + 64) = 0u;
        *(v19 + 80) = 0u;
        *(v19 + 96) = 0;
        *(v19 + 104) = 3;
        *(v19 + 108) = *&v24[3];
        *(v19 + 105) = *v24;
        *(v19 + 112) = 0;
        *(v19 + 120) = 0;
        *(v19 + 128) = -1;
        v2 = v22;
        if (v4 == v6)
        {
          a2 = v20;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    *a2 = v5;
    *(a2 + 8) = 0;
  }

  return result;
}

void sub_26837D2BC(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Snippet.Reminder(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v9 = sub_2683D00A8();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_12:
    *a2 = v10;
    *(a2 + 8) = 2;
    return;
  }

  v15 = MEMORY[0x277D84F90];
  sub_268390728();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v10 = v15;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D616C90](v11, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      sub_26834A288(v12, v8);
      v15 = v10;
      v13 = *(v10 + 16);
      if (v13 >= *(v10 + 24) >> 1)
      {
        sub_268390728();
        v10 = v15;
      }

      ++v11;
      *(v10 + 16) = v13 + 1;
      sub_26837E408(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, type metadata accessor for Snippet.Reminder);
    }

    while (v9 != v11);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_26837D488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253BB0, &qword_2683F55D0);
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v25);
  v8 = &v22 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = a2;
    v27 = MEMORY[0x277D84F90];
    sub_268390BF0(0, v9, 0);
    v10 = v27;
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v23 = *(v4 + 72);
    v24 = v8;
    do
    {
      sub_26812DA38(v11, v8, &qword_280253BB0, &qword_2683F55D0);
      v12 = [*&v8[*(v25 + 28) + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253BB8 &qword_2683F55D8) + 28)]];
      if (v12 && (v13 = sub_26837D6D8(v12, &selRef_contactIdentifier), v14))
      {
        v15 = v14;
        v26 = v13;
      }

      else
      {

        v26 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = sub_2683CF158();
      v18 = v17;
      result = sub_2681433DC(v8, &qword_280253BB0, &qword_2683F55D0);
      v27 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_268390BF0((v19 > 1), v20 + 1, 1);
        v10 = v27;
      }

      *(v10 + 16) = v20 + 1;
      v21 = (v10 + 32 * v20);
      v21[4] = v26;
      v21[5] = v15;
      v21[6] = v16;
      v21[7] = v18;
      v8 = v24;
      v11 += v23;
      --v9;
    }

    while (v9);
    a2 = v22;
  }

  *a2 = v10;
  *(a2 + 8) = 3;
  return result;
}

uint64_t sub_26837D6D8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2683CFA78();

  return v4;
}

uint64_t sub_26837D74C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26837D78C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26837D7FC(uint64_t a1)
{
  sub_2683CF168();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_26837E000(319, &qword_280253C60, MEMORY[0x277D5BCB0], MEMORY[0x277D83940]);
      if (v5 <= 0x3F)
      {
        sub_26837E000(319, qword_280253C68, MEMORY[0x277D5FEB0], MEMORY[0x277D83D88]);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_26837D914(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_2683CF168();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v38 = *(a3 + 16);
  v39 = v6;
  v9 = *(v38 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = sub_2683CF8B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v11 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v9 + 80);
  v19 = *(v13 + 80);
  if (v14)
  {
    v20 = *(*(v12 - 8) + 64);
  }

  else
  {
    v20 = *(*(v12 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v7 + 64) + v18;
  v22 = *(v9 + 64) + 7;
  v23 = v19 + 8;
  if (a2 <= v17)
  {
    goto LABEL_36;
  }

  v24 = v20 + ((v23 + ((v22 + (v21 & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v19);
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v17 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_36;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_36;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 <= 3)
        {
          v30 = v24;
        }

        else
        {
          v30 = 4;
        }

        switch(v30)
        {
          case 2:
            v31 = *a1;
            break;
          case 3:
            v31 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v31 = *a1;
            break;
          default:
            v31 = *a1;
            break;
        }
      }

      else
      {
        v31 = 0;
      }

      return v17 + (v31 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_36:
  if (v8 == v17)
  {
    v32 = a1;
    v33 = v8;
    v34 = v39;
LABEL_40:

    return __swift_getEnumTagSinglePayload(v32, v33, v34);
  }

  v32 = (a1 + v21) & ~v18;
  if (v10 == v17)
  {
    v33 = v10;
    v34 = v38;
    goto LABEL_40;
  }

  v35 = ((v22 + v32) & 0xFFFFFFFFFFFFFFF8);
  if ((v16 & 0x80000000) != 0)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v35 + v23) & ~v19, v14, v12);
    if (EnumTagSinglePayload >= 2)
    {
      return EnumTagSinglePayload - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v36 = *v35;
    if (*v35 >= 0xFFFFFFFF)
    {
      LODWORD(v36) = -1;
    }

    return (v36 + 1);
  }
}

void sub_26837DC3C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = sub_2683CF168();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v39 = *(a4 + 16);
  v40 = v7;
  v10 = *(v39 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = sub_2683CF8B8();
  v14 = 0;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v10 + 80);
  v20 = *(v8 + 64) + v19;
  v21 = *(v10 + 64) + 7;
  v22 = *(v15 + 80);
  v23 = (v22 + 8 + ((v21 + (v20 & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v22;
  v24 = *(*(v13 - 8) + 64);
  if (!v16)
  {
    ++v24;
  }

  v25 = v23 + v24;
  v26 = 8 * (v23 + v24);
  if (a3 > v18)
  {
    if (v25 <= 3)
    {
      v27 = ((a3 - v18 + ~(-1 << v26)) >> v26) + 1;
      if (HIWORD(v27))
      {
        v14 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v14 = v28;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  if (v18 >= a2)
  {
    v32 = ~v19;
    v33 = a1;
    switch(v14)
    {
      case 1:
        a1[v25] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        return;
      case 2:
        *&a1[v25] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        return;
      case 3:
LABEL_58:
        __break(1u);
        return;
      case 4:
        *&a1[v25] = 0;
        goto LABEL_35;
      default:
LABEL_35:
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v9 == v18)
        {
          v36 = a2;
          v16 = v9;
          v13 = v40;
        }

        else
        {
          v33 = &a1[v20] & v32;
          if (v11 == v18)
          {
            v36 = a2;
            v16 = v11;
            v13 = v39;
          }

          else
          {
            v37 = ((v21 + v33) & 0xFFFFFFFFFFFFFFF8);
            if ((v17 & 0x80000000) == 0)
            {
              if ((a2 & 0x80000000) != 0)
              {
                v38 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v38 = (a2 - 1);
              }

              *v37 = v38;
              return;
            }

            v33 = (v37 + v22 + 8) & ~v22;
            v36 = (a2 + 1);
          }
        }

        __swift_storeEnumTagSinglePayload(v33, v36, v16, v13);
        break;
    }
  }

  else
  {
    v29 = ~v18 + a2;
    if (v25 < 4)
    {
      v31 = (v29 >> v26) + 1;
      if (v25)
      {
        v34 = v14;
        v35 = v29 & ~(-1 << v26);
        bzero(a1, v25);
        if (v25 == 3)
        {
          *a1 = v35;
          a1[2] = BYTE2(v35);
          v14 = v34;
        }

        else
        {
          v14 = v34;
          if (v25 == 2)
          {
            *a1 = v35;
          }

          else
          {
            *a1 = v29;
          }
        }
      }
    }

    else
    {
      v30 = v14;
      bzero(a1, v25);
      v14 = v30;
      *a1 = v29;
      v31 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v25] = v31;
        break;
      case 2:
        *&a1[v25] = v31;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v25] = v31;
        break;
      default:
        return;
    }
  }
}

void sub_26837E000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26837E064()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26837E0AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 176))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26837E0EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26837E170(uint64_t a1, unsigned int a2)
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
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26837E1AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
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

uint64_t sub_26837E1F8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_26837E250(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_26837E268()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 200);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2681342AC;

  return sub_26837BD18(v3, v0 + 24, v5, v4);
}

uint64_t sub_26837E334()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_2681342AC;

  return sub_26837C040(v3, v4, v5, v0 + 32);
}

uint64_t sub_26837E408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_9_0();
  v8(v7);
  return a2;
}

unint64_t sub_26837E490()
{
  result = qword_280253CF8[0];
  if (!qword_280253CF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280253CF8);
  }

  return result;
}

uint64_t sub_26837E4E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26837E538()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26837E58C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26837E5C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26837E608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_2_58()
{
  v1 = v0[55];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[49];
  v10 = v0[47];
  v11 = v0[46];
  v12 = v0[45];
  v13 = v0[44];
  v14 = v0[43];
  v15 = v0[42];
  v16 = v0[41];
  v17 = v0[40];
  v7 = v0[36];
  v18 = v0[35];
  v8 = v0[31];
  v9 = v0[32];
  v19 = v0[30];
}

uint64_t OUTLINED_FUNCTION_20_35()
{

  return swift_getWitnessTable();
}

unint64_t OUTLINED_FUNCTION_25_27()
{

  return sub_2681E743C();
}

uint64_t OUTLINED_FUNCTION_30_18()
{
  type metadata accessor for SimpleDisambiguationItem();

  return type metadata accessor for IdentifiableItem();
}

uint64_t OUTLINED_FUNCTION_38_13()
{
  v2 = v0[255];
  v3 = v0[251];
  v4 = v0[250];
  v5 = v0[249];
  v6 = v0[246];
}

uint64_t OUTLINED_FUNCTION_39_16()
{
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
}

uint64_t OUTLINED_FUNCTION_49_9()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = *(v0[9] + 8);
  return v0[10];
}

uint64_t OUTLINED_FUNCTION_50_11(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[30];
  v4 = v2[24];
  return v2[22];
}

uint64_t OUTLINED_FUNCTION_57_7()
{
  *v0 = v2;
  *(v0 + 8) = v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;

  return type metadata accessor for Snippet();
}

uint64_t OUTLINED_FUNCTION_58_6()
{

  return sub_2683CFA28();
}

uint64_t sub_26837E8D8()
{
  v1 = v0[2];
  sub_268129504(0, &qword_280253E80, 0x277D47310);
  v2 = sub_2681E7238(4, 300.0, 0.5);
  v0[3] = v2;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(MEMORY[0x277D5BFB8] + 4);
  v6 = swift_task_alloc();
  v0[4] = v6;
  v7 = sub_268129504(0, &qword_280253E88, 0x277D477E8);
  *v6 = v0;
  v6[1] = sub_26837E9F8;

  return MEMORY[0x2821BB6A0](v2, v3, v7, v4);
}

uint64_t sub_26837E9F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_26837EDF4;
  }

  else
  {
    v5 = sub_26837EB0C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26837EB0C()
{
  v35 = v0;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 134284035;
    [v6 latitude];
    *(v7 + 4) = v9;
    *(v7 + 12) = 2049;
    [v6 longitude];
    *(v7 + 14) = v10;
    *(v7 + 22) = 2080;
    v11 = sub_26837EE58(v6);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 0x3E6C696E3CLL;
      v13 = 0xE500000000000000;
    }

    v14 = sub_2681610A0(v11, v13, &v34);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_2680EB000, v4, v5, "[AceUserLocationProvider] SAGetRequestOrigin returned lat:%{private}f long:%{private}f status: %s", v7, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D617A40](v8, -1, -1);
    MEMORY[0x26D617A40](v7, -1, -1);
  }

  [*(v0 + 40) latitude];
  if (v15 == 0.0 && ([*(v0 + 40) longitude], v16 == 0.0))
  {
    v17 = sub_2683CF7C8();
    v18 = sub_2683CFE78();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 40);
    v21 = *(v0 + 24);
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2680EB000, v17, v18, "[AceUserLocationProvider] Lat and Long are both zero returning nil", v22, 2u);
      MEMORY[0x26D617A40](v22, -1, -1);
    }

    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  else
  {
    v26 = *(v0 + 40);
    v27 = *(v0 + 24);
    [v26 latitude];
    v29 = v28;
    [v26 longitude];
    v31 = v30;

    v25 = 0;
    v23 = v29;
    v24 = v31;
  }

  v32 = *(v0 + 8);

  return v32(v23, v24, v25);
}

uint64_t sub_26837EDF4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_26837EE58(void *a1)
{
  v1 = [a1 status];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_26837EED0()
{
  OUTLINED_FUNCTION_14();
  v0[86] = v1;
  v0[85] = v2;
  v3 = sub_2683CB668();
  v0[87] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v0[88] = v4;
  v6 = *(v5 + 64) + 15;
  v0[89] = swift_task_alloc();
  v7 = sub_2683CCBA8();
  v0[90] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v0[91] = v8;
  v10 = *(v9 + 64) + 15;
  v0[92] = swift_task_alloc();
  v0[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26837EFE8, 0, 0);
}

uint64_t sub_26837EFE8()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 688);
  v39 = (*(v0 + 728) + 16);
  v37 = *v39;
  (*v39)(*(v0 + 744), *(v0 + 680), *(v0 + 720));
  sub_26813CA00(v2, v0 + 384);
  OUTLINED_FUNCTION_20_2();
  v38 = swift_allocObject();
  sub_268193F18((v0 + 384), v38 + 16);
  v3 = v2[3];
  v4 = v2[4];
  v5 = __swift_project_boxed_opaque_existential_1(v2, v3);
  *(v0 + 448) = v3;
  *(v0 + 456) = *(v4 + 16);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 424));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v5, v3);
  *(v0 + 664) = sub_268129504(0, &qword_28024F098, 0x277CD4108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F20, &unk_2683F5C78);
  v7 = sub_2683CFAD8();
  v35 = v8;
  v36 = v7;
  v9 = sub_2683CF6C8();
  v10 = sub_2683CF6B8();
  v11 = MEMORY[0x277D5FDD8];
  *(v0 + 488) = v9;
  *(v0 + 496) = v11;
  *(v0 + 464) = v10;
  sub_2683CCC48();
  v12 = *(v0 + 536);
  __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  sub_2681340E8(v0 + 464, v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
  if (*(v0 + 608))
  {
    OUTLINED_FUNCTION_20_2();
    v13 = swift_allocObject();
    v14 = *(v0 + 600);
    *(v13 + 16) = *(v0 + 584);
    *(v13 + 32) = v14;
    *(v13 + 48) = *(v0 + 616);
    v15 = &off_287900140;
    v16 = &type metadata for NotebookReferenceResolver;
  }

  else
  {
    sub_26812D9E0(v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
    v13 = 0;
    v16 = 0;
    v15 = 0;
    *(v0 + 552) = 0u;
  }

  v33 = *(v0 + 736);
  v34 = *(v0 + 744);
  v17 = *(v0 + 728);
  v32 = *(v0 + 720);
  v18 = *(v0 + 712);
  v19 = *(v0 + 704);
  v20 = *(v0 + 696);
  *(v0 + 544) = v13;
  *(v0 + 568) = v16;
  *(v0 + 576) = v15;
  v21 = type metadata accessor for InstalledAppProvider();
  *(v0 + 648) = v21;
  *(v0 + 656) = &off_2879042B8;
  v22 = __swift_allocate_boxed_opaque_existential_0((v0 + 624));
  v23 = *(v19 + 16);
  v23(v22 + *(v21 + 20), v18, v20);
  *v22 = 0;
  v24 = type metadata accessor for RegexAppSearcher();
  *(v0 + 80) = v24;
  *(v0 + 88) = &off_28790BB20;
  v25 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_26813CA00(v0 + 624, v25);
  v23(v25 + *(v24 + 20), v18, v20);
  *(v0 + 120) = &type metadata for InferredAppResolver;
  *(v0 + 128) = &off_287902D60;
  v26 = swift_allocObject();
  *(v0 + 96) = v26;
  sub_26813CA00(v0 + 624, v26 + 32);
  sub_2681340E8(v0 + 544, v26 + 72, &qword_28024E2C8, &unk_2683D6950);
  *(v26 + 16) = 0xD000000000000013;
  *(v26 + 24) = 0x80000002683FA8D0;
  (*(v19 + 8))(v18, v20);
  sub_26813CA00(v0 + 624, v0 + 16);
  sub_26812D9E0(v0 + 544, &qword_28024E2C8, &unk_2683D6950);
  __swift_destroy_boxed_opaque_existential_0((v0 + 624));
  *(v0 + 136) = 0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 504));
  *(v0 + 168) = &type metadata for AppResolver;
  *(v0 + 176) = &off_28790B8A0;
  v27 = swift_allocObject();
  *(v0 + 144) = v27;
  sub_26818CE54(v0 + 16, v27 + 16);
  sub_2681340E8(v0 + 424, v0 + 224, &qword_28024E2D0, &qword_2683D66E0);
  *(v0 + 184) = v36;
  *(v0 + 192) = v35;
  *(v0 + 200) = 1;
  *(v0 + 208) = &unk_2683F5C60;
  *(v0 + 216) = 0;
  sub_26818CEB0(v0 + 144, v0 + 264);
  v37(v33, v34, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F28, &qword_2683F5C88);
  swift_allocObject();
  v28 = sub_2681E51AC((v0 + 264), v33, &unk_2683F5C70, v38);
  (*(v17 + 8))(v34, v32);
  sub_26812D9E0(v0 + 424, &qword_28024E2D0, &qword_2683D66E0);
  sub_26818DAA0(v0 + 144);
  sub_26818DAF4(v0 + 16);
  sub_26812D9E0(v0 + 464, &qword_28024E2C0, &unk_2683D66D0);
  *(v0 + 672) = v28;
  sub_26818A0C8(&qword_280253F30, &qword_280253F28, &qword_2683F5C88);
  sub_2683CBF28();

  v29 = OUTLINED_FUNCTION_1_16();

  return v30(v29);
}

uint64_t sub_26837F580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253E90, &unk_2683F5C10);
  v63 = *(v57 - 8);
  v3 = *(v63 + 64);
  v4 = MEMORY[0x28223BE20](v57);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v53 = &v52 - v7;
  MEMORY[0x28223BE20](v6);
  v61 = &v52 - v8;
  v9 = type metadata accessor for SnippetFormatter();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_2683CF238();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_2683CCC48();
  type metadata accessor for SetTaskAttributeV2CATs();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_25_28();
  v68 = sub_2683CF0B8();
  type metadata accessor for SetTaskAttributeV2CATsSimple();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_25_28();
  v52 = sub_2683CF198();
  type metadata accessor for NotebookBaseCATs();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_25_28();
  v17 = sub_2683CF0B8();
  type metadata accessor for NotebookLabelsV2CATs();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_25_28();
  v18 = sub_2683CF0B8();
  type metadata accessor for SetTaskAttributeCATPatternsExecutor();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_25_28();
  v55 = v2;
  v67 = sub_2683CF0B8();
  v19 = sub_2683CC548();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v66 = sub_2683CC538();
  __swift_project_boxed_opaque_existential_1(v117, v117[3]);
  v22 = v9[7];

  sub_2683CC088();
  v56 = v17;
  *v14 = v17;
  v14[1] = v18;
  v14[2] = 0;
  v23 = v9[8];
  *(v14 + v23) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v24 = v14 + v9[9];
  sub_2683CB768();
  sub_26813CA00(v117, v113);
  v115 = &type metadata for TCCTemplateProvider;
  v116 = &off_287902CB8;
  v114 = v18;
  v112[3] = &type metadata for SiriKitExecutionProvider;
  v112[4] = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v25 = swift_allocObject();
  v112[0] = v25;
  *(v25 + 40) = &type metadata for NotebookFeatureManager;
  *(v25 + 48) = &protocol witness table for NotebookFeatureManager;
  v112[5] = sub_268372484;
  v112[6] = 0;
  sub_26813CA00(v117, v111);
  v110[3] = &type metadata for TCCTemplateProvider;
  v110[4] = &off_287902CB8;
  v109[3] = v9;
  v109[4] = &off_28790D590;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v109);
  v60 = v14;
  sub_268203294(v14, boxed_opaque_existential_0);
  v108[3] = &type metadata for NotebookButtonProvider;
  v108[4] = &off_287902C78;
  v108[0] = swift_allocObject();
  sub_26818EE98(v113, v108[0] + 16);
  v107[3] = &type metadata for NotebookFeatureManager;
  v107[4] = &protocol witness table for NotebookFeatureManager;
  v27 = sub_268129504(0, &qword_28024F098, 0x277CD4108);
  v28 = sub_268129504(0, &qword_280251F18, 0x277CD4110);

  v29 = v52;

  v30 = v53;
  v64 = v28;
  v65 = v27;
  sub_2683CBEB8();
  sub_2683CEC88();
  if (sub_2683CEC58())
  {
    sub_2683CEC18();

    sub_2683CBEE8();
  }

  else
  {
    v106 = 0;
    memset(v105, 0, sizeof(v105));
  }

  v31 = *(v19 + 48);
  v32 = *(v19 + 52);
  swift_allocObject();
  v33 = sub_2683CC538();
  v34 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v104[5] = &off_28790DB88;
  v104[4] = &unk_28790DB70;
  v104[1] = v34;
  v104[0] = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  v54 = sub_2683CEC78();
  sub_26813CA00(v111, v95);
  sub_2681340E8(v105, v96, &qword_28024F020, &unk_2683E6AA0);
  v96[8] = &type metadata for NotebookFlowCreator;
  v96[9] = &off_287900FD8;
  v98 = &type metadata for SiriKitExecutionProvider;
  v99 = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v97 = swift_allocObject();
  sub_26813CA00(v107, v97 + 16);
  v101 = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  v102 = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v100 = swift_allocObject();
  sub_26818EE34(v104, v100 + 16);
  v35 = v29;
  v95[5] = v29;
  v103 = v33;
  sub_2683806E4();

  sub_2683CBDA8();
  v36 = v57;
  OUTLINED_FUNCTION_10_35();
  sub_2683CBE48();
  v90 = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  v91 = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v89 = swift_allocObject();
  sub_26818EE34(v104, v89 + 16);

  v37 = sub_2683CEC48();
  v88[0] = v35;
  v88[1] = v33;
  v92 = v37;
  v93 = sub_268372484;
  v94 = 0;
  sub_268380738();
  v38 = sub_2683CBD98();
  v40 = v39;
  OUTLINED_FUNCTION_37_4();
  v41 = swift_allocObject();
  v41[2] = v38;
  v41[3] = v40;
  v41[4] = sub_268372484;
  v41[5] = 0;
  OUTLINED_FUNCTION_10_35();
  sub_2683CBE38();
  *&v73 = v35;
  *(&v73 + 1) = v33;
  *&v74 = sub_2681B86A4;
  *(&v74 + 1) = 0;
  sub_26838196C();

  sub_2683CBDD8();
  OUTLINED_FUNCTION_10_35();
  sub_2683CBE88();
  sub_26813CA00(v111, v87);
  v42 = v68;
  v87[5] = v68;
  sub_2683819C0(v87, &v73);
  OUTLINED_FUNCTION_19_11();
  v43 = swift_allocObject();
  v44 = v74;
  v43[1] = v73;
  v43[2] = v44;
  v43[3] = v75;

  OUTLINED_FUNCTION_10_35();
  sub_2683CBE78();
  sub_26813CA00(v109, &v73);
  v77 = &off_2878FFB60;
  v76 = v55;
  *(&v75 + 1) = v67;
  sub_26813CA00(v111, v78);
  v78[8] = v33;
  v79 = 1;
  v81 = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  v82 = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v80 = swift_allocObject();
  sub_26818EE34(v104, v80 + 16);
  v84 = &type metadata for NotebookDisambiguationFlowProducer;
  v85 = &off_28790CD48;
  OUTLINED_FUNCTION_20_2();
  v83 = swift_allocObject();
  sub_26813CA00(v111, v83 + 16);
  v78[5] = v42;
  v78[6] = v35;
  v78[7] = v56;
  v86 = 0;
  sub_268189954(&v73, v72);
  v45 = swift_allocObject();
  memcpy((v45 + 16), v72, 0x118uLL);
  OUTLINED_FUNCTION_10_35();
  sub_2683CBE98();
  sub_26813CA00(v111, v69);
  sub_26813CA00(v110, &v70);
  sub_26813CA00(v108, v71);
  v71[5] = v65;
  v71[6] = sub_2681B86A4;
  v71[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253EB0, &qword_2683F5C20);
  sub_26818A0C8(&qword_280253EB8, &qword_280253EB0, &qword_2683F5C20);
  sub_2683CBDF8();
  OUTLINED_FUNCTION_10_35();
  sub_2683CBEA8();
  sub_26813CA00(v111, v72);
  sub_26813CA00(v108, &v72[5]);
  v72[13] = &type metadata for CommonResponseGenerator;
  v72[14] = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v72[10] = swift_allocObject();
  sub_26813CA00(v111, v72[10] + 16);
  v72[18] = &type metadata for CommonLabelGenerator;
  v72[19] = &off_28790E058;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253EC0, &qword_2683F5C28);
  sub_26818A0C8(&qword_280253EC8, &qword_280253EC0, &qword_2683F5C28);
  sub_2683CBDC8();
  sub_26812D9E0(v72, &qword_280253EC0, &qword_2683F5C28);
  OUTLINED_FUNCTION_10_35();
  sub_2683CBE68();

  sub_26812D9E0(v69, &qword_280253EB0, &qword_2683F5C20);
  sub_268381A70(v87);
  sub_26812D9E0(v105, &qword_28024F020, &unk_2683E6AA0);
  __swift_destroy_boxed_opaque_existential_0(v111);
  __swift_destroy_boxed_opaque_existential_0(v107);
  __swift_destroy_boxed_opaque_existential_0(v108);
  __swift_destroy_boxed_opaque_existential_0(v109);
  __swift_destroy_boxed_opaque_existential_0(v110);
  sub_268381AC4(&v73);
  sub_268381B18(v88);
  sub_2682EF8BC(v95);
  sub_26818F1A8(v104);
  v46 = v63;
  v47 = v61;
  (*(v63 + 32))(v61, v30, v36);
  sub_2683CBDB8();
  sub_2683CBE58();
  (*(v46 + 16))(v59, v47, v36);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253ED0, &qword_2683F5C30);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_2683CBEC8();
  sub_268381B6C(v112, &v73);
  sub_268381BC8();
  sub_2683CC2E8();

  (*(v46 + 8))(v47, v36);
  sub_268381C1C(v112);
  sub_26818F000(v113);
  sub_2681E5F4C(v60, type metadata accessor for SnippetFormatter);
  return __swift_destroy_boxed_opaque_existential_0(v117);
}

uint64_t sub_268380174()
{
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v0 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v0, qword_28027C958);
  v1 = sub_2683CF7C8();
  v2 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_13_37(v2))
  {
    v3 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_29_20(v3);
    OUTLINED_FUNCTION_3_54(&dword_2680EB000, v4, v5, "[UnsupportedValueBehaviorStrategy] Making Punchout flow.");
    OUTLINED_FUNCTION_12_31();
  }

  sub_268381FA0();
  sub_2683CBE08();
  v6 = OUTLINED_FUNCTION_7_35();
  v8 = v7(v6);

  return v8;
}

uint64_t sub_26838024C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_30_19(a1, a2);
  v2 = sub_2681D1E3C();
  if (v2)
  {
    if (v2)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v3 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v3, qword_28027C958);
      v4 = sub_2683CF7C8();
      v5 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_13_37(v5))
      {
        v6 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_29_20(v6);
        OUTLINED_FUNCTION_3_54(&dword_2680EB000, v7, v8, "[UnsupportedValueBehaviorStrategy] Making Prompt for New Value flow.");
        OUTLINED_FUNCTION_12_31();
      }

      sub_268381DC0();
      sub_2683CBE28();
    }

    else
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v15 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v15, qword_28027C958);
      v16 = sub_2683CF7C8();
      v17 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_13_37(v17))
      {
        v18 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_29_20(v18);
        OUTLINED_FUNCTION_3_54(&dword_2680EB000, v19, v20, "[UnsupportedValueBehaviorStrategy] Making Punchout flow.");
        OUTLINED_FUNCTION_12_31();
      }

      sub_268381DC0();
      sub_2683CBE08();
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v9, qword_28027C958);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_13_37(v11))
    {
      v12 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_29_20(v12);
      OUTLINED_FUNCTION_3_54(&dword_2680EB000, v13, v14, "[UnsupportedValueBehaviorStrategy] Making Dialog and Cancel flow.");
      OUTLINED_FUNCTION_12_31();
    }

    sub_268381DC0();
    sub_2683CBE18();
  }

  v21 = OUTLINED_FUNCTION_7_35();
  v23 = v22(v21);

  return v23;
}

uint64_t sub_268380468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = OUTLINED_FUNCTION_30_19(a1, a2);
  v8 = v7(v6);
  if (v8)
  {
    if (v8 == 1)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v9 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v9, qword_28027C958);
      v10 = sub_2683CF7C8();
      v11 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_45(v11))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_11_43(&dword_2680EB000, v12, v13, "[UnsupportedValueBehaviorStrategy] Making Prompt for New Value flow.");
        OUTLINED_FUNCTION_38();
      }

      a5();
      OUTLINED_FUNCTION_20_36();
      sub_2683CBE28();
    }

    else
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v19 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v19, qword_28027C958);
      v20 = sub_2683CF7C8();
      v21 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_45(v21))
      {
        *OUTLINED_FUNCTION_21_5() = 0;
        OUTLINED_FUNCTION_11_43(&dword_2680EB000, v22, v23, "[UnsupportedValueBehaviorStrategy] Making Punchout flow.");
        OUTLINED_FUNCTION_38();
      }

      a5();
      OUTLINED_FUNCTION_20_36();
      sub_2683CBE08();
    }
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v14 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v14, qword_28027C958);
    v15 = sub_2683CF7C8();
    v16 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v16))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_11_43(&dword_2680EB000, v17, v18, "[UnsupportedValueBehaviorStrategy] Making Dialog and Cancel flow.");
      OUTLINED_FUNCTION_38();
    }

    a5();
    OUTLINED_FUNCTION_20_36();
    sub_2683CBE18();
  }

  v24 = OUTLINED_FUNCTION_7_35();
  v26 = v25(v24);

  return v26;
}

void *sub_268380670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(*v5 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  swift_storeEnumTagMultiPayload();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  return v5;
}

unint64_t sub_2683806E4()
{
  result = qword_280253E98;
  if (!qword_280253E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253E98);
  }

  return result;
}

unint64_t sub_268380738()
{
  result = qword_280253EA0;
  if (!qword_280253EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253EA0);
  }

  return result;
}

uint64_t sub_26838078C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F88, &qword_2683F5C90);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268380858, 0, 0);
}

uint64_t sub_268380858()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  v2 = v0[3];
  v3 = v0[4];
  sub_26837F580(v2, v1);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_26838092C;

  return sub_2681347D4(dword_2683F5CA0);
}

uint64_t sub_26838092C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v7 + 80) = v6;

  return MEMORY[0x2822009F8](sub_268380A3C, 0, 0);
}

uint64_t sub_268380A3C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v0[2] = v1;
  sub_2683CBC28();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  v2 = OUTLINED_FUNCTION_1_16();

  return v3(v2);
}

uint64_t sub_268380AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_268380B04, 0, 0);
}

uint64_t sub_268380B04()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 88);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_268380BB4;

  return sub_26822A1A0(v3, v2);
}

uint64_t sub_268380BB4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 112);
  v5 = *v1;
  *(v3 + 120) = v6;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_268380CE0, 0, 0);
  }
}

uint64_t sub_268380CE0()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F88, &qword_2683F5C90);
  v4 = sub_2683CC2D8();
  v5 = [v1 targetTask];
  if (v5 && (sub_2681B2FCC(v5), v6))
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v7 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v7, qword_28027C958);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v9))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_13_10(&dword_2680EB000, v10, v11, "[SetTaskAttribute] initial intent has fully resolved task. Skipping unlock.");
      OUTLINED_FUNCTION_38();
    }

    v12 = v0[15];

    v0[10] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F90, &qword_2683F5CB0);
    OUTLINED_FUNCTION_2_59();
    sub_26818A0C8(v13, v14, &qword_2683F5CB0);
    sub_2683CBF28();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v15 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v15, qword_28027C958);
    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v17))
    {
      *OUTLINED_FUNCTION_21_5() = 0;
      OUTLINED_FUNCTION_13_10(&dword_2680EB000, v18, v19, "[SetTaskAttribute] initial intent does not have a fully resolved task. Requiring unlock.");
      OUTLINED_FUNCTION_38();
    }

    v12 = v0[15];

    v0[7] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E380, &qword_2683D68F0);
    v20 = sub_2683CBCE8();
    OUTLINED_FUNCTION_3_1(v20);
    v22 = *(v21 + 72);
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    *(swift_allocObject() + 16) = xmmword_2683D1EC0;
    v0[5] = &type metadata for NotebookUnlockDeviceStrategy;
    v0[6] = sub_26818DBD4();
    sub_2683CBCD8();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v25 = sub_2683CB8B8();

    v0[8] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F90, &qword_2683F5CB0);
    sub_2683CBC78();
    OUTLINED_FUNCTION_2_59();
    sub_26818A0C8(v26, v27, &qword_2683F5CB0);
    v28 = sub_2683CBF68();

    v0[9] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F38, &qword_2683F5CB8);
    sub_26818A0C8(&qword_280253F40, &qword_280253F38, &qword_2683F5CB8);
    sub_2683CBF28();
    OUTLINED_FUNCTION_9_10();
  }

  v29 = OUTLINED_FUNCTION_1_16();

  return v30(v29);
}

unint64_t sub_26838109C(char a1)
{
  result = 0x6154746567726174;
  switch(a1)
  {
    case 1:
      result = 0x6C7469546B736174;
      break;
    case 2:
      result = 0x737574617473;
      break;
    case 3:
      result = 0x797469726F697270;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268381174()
{
  sub_2683D0408();
  OUTLINED_FUNCTION_9_10();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2683811BC(char a1)
{
  v1 = MEMORY[0x277D84F90];
  switch(a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBD0 != -1)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBF8 != -1)
      {
        swift_once();
      }

      v2 = sub_2681E20E4();
      goto LABEL_15;
    case 3:
    case 6:
      return v1;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBA0 != -1)
      {
        swift_once();
      }

      v2 = sub_2681E20C8();
      goto LABEL_15;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBB8 != -1)
      {
        swift_once();
      }

      v2 = sub_2681E1FB8();
      goto LABEL_15;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBE0 != -1)
      {
LABEL_17:
        swift_once();
      }

LABEL_5:
      v2 = sub_2681E1F9C();
LABEL_15:
      *(v1 + 32) = v2;
      *(v1 + 40) = v3;
      return v1;
  }
}

uint64_t sub_268381424(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 0:
      v8 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v8, v9, v10, v11);
      if (!v38)
      {
        goto LABEL_15;
      }

      sub_2683CDBE8();
      if ((OUTLINED_FUNCTION_0_33() & 1) == 0)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_18_16();
      sub_2683CDDE8();
      goto LABEL_13;
    case 1:
      v12 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v12, v13, v14, v15);
      if (!v38)
      {
        goto LABEL_15;
      }

      sub_2683CDBE8();
      if ((OUTLINED_FUNCTION_0_33() & 1) == 0)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_18_16();
      sub_2683CDDD8();
LABEL_13:

      if (!v37[0])
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    case 4:
    case 5:
      v3 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v3, v4, v5, v6);
      if (v38)
      {
        sub_2683CDBE8();
        if (OUTLINED_FUNCTION_0_33())
        {
          OUTLINED_FUNCTION_22_8();
          OUTLINED_FUNCTION_18_16();
          sub_2683CDDD8();

          if (v37[0])
          {
            v7 = sub_2683CD7C8();

            if (v7)
            {
              goto LABEL_19;
            }
          }

LABEL_14:
        }
      }

      else
      {
LABEL_15:
        sub_26812D9E0(v37, &qword_28024E370, &unk_2683D9AA0);
      }

LABEL_16:
      v16 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v16, v17, v18, v19);
      if (v38)
      {
        sub_2683CD938();
        if (OUTLINED_FUNCTION_0_33())
        {
          OUTLINED_FUNCTION_22_8();
          OUTLINED_FUNCTION_18_16();
          sub_2683CCFF8();

          if (v37[0])
          {
LABEL_19:

            v20 = sub_2683CD1A8();

            return v20;
          }
        }
      }

      else
      {
        sub_26812D9E0(v37, &qword_28024E370, &unk_2683D9AA0);
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v21 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v21, qword_28027C958);
      v22 = OUTLINED_FUNCTION_10_10();
      sub_26818F56C(v22, v23);
      v24 = sub_2683CF7C8();
      v25 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v25))
      {
        v26 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v26 = 136315394;
        v27 = sub_26838109C(a2);
        v29 = sub_2681610A0(v27, v28, &v36);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2080;
        sub_2681340E8(v37, v35, &qword_28024E370, &unk_2683D9AA0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
        v30 = sub_2683CFAD8();
        v32 = v31;
        sub_26818F5C8(v37);
        v33 = sub_2681610A0(v30, v32, &v36);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_2680EB000, v24, v25, "[SetTask resolveSelectedEntity] Unable to resolve entity for %s from intent %s", v26, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {

        sub_26818F5C8(v37);
      }

      return 0;
    default:
      goto LABEL_16;
  }
}

uint64_t sub_2683817CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2681E9E0C();
}

uint64_t sub_2683817F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268381174();
  *a2 = result;
  return result;
}

unint64_t sub_268381820@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26838109C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268381864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253EE8, &qword_2683F5C38);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_268380670(v8, a5, a6, &qword_280253EF8, &qword_2683F5C40);
  sub_26818A0C8(&qword_280253EF0, &qword_280253EE8, &qword_2683F5C38);

  v12 = sub_2683CBF38();

  return v12;
}

unint64_t sub_26838196C()
{
  result = qword_280253EA8;
  if (!qword_280253EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253EA8);
  }

  return result;
}

unint64_t sub_268381BC8()
{
  result = qword_280253ED8;
  if (!qword_280253ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253ED8);
  }

  return result;
}

unint64_t sub_268381C70()
{
  result = qword_280253EE0;
  if (!qword_280253EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253EE0);
  }

  return result;
}

uint64_t sub_268381CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F08, &qword_2683F5C48);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_268380670(v8, a5, a6, &qword_280253F18, &qword_2683F5C50);
  sub_26818A0C8(&qword_280253F10, &qword_280253F08, &qword_2683F5C48);

  v12 = sub_2683CBF38();

  return v12;
}

unint64_t sub_268381DC0()
{
  result = qword_280253F00;
  if (!qword_280253F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253F00);
  }

  return result;
}

uint64_t sub_268381E14()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26818C8B4;

  return sub_26838078C(v3, v0 + 16);
}

uint64_t sub_268381EA8()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26813D0C0;

  return sub_268380AE0(v2, v3, v4);
}

unint64_t sub_268381F4C()
{
  result = qword_280253F48;
  if (!qword_280253F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253F48);
  }

  return result;
}

unint64_t sub_268381FA0()
{
  result = qword_280253F50;
  if (!qword_280253F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253F50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SetTaskAttribute.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2683820E4()
{
  result = qword_280253F58;
  if (!qword_280253F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253F58);
  }

  return result;
}

void OUTLINED_FUNCTION_3_54(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_11_43(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_12_31()
{

  JUMPOUT(0x26D617A40);
}

BOOL OUTLINED_FUNCTION_13_37(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return sub_2683CF228();
}

uint64_t sub_268382244(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268382284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2683822E4()
{
  v1 = sub_2683CCC18();
  v2 = OUTLINED_FUNCTION_0_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  sub_2683CCB88();
  v10(v51, v8, 1);
  (*(v4 + 8))(v8, v1);
  sub_2681340E8(v51, v50, &qword_28024D460, &qword_2683D5050);
  if (v50[56] == 255)
  {
    goto LABEL_6;
  }

  sub_2681340E8(v50, v46, &qword_28024D460, &qword_2683D5050);
  if (v49 != 2)
  {
    if (v49 == 7)
    {
      v11 = vorrq_s8(v47, v48);
      if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v46[2] | v46[1] | v46[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v39 = sub_2683CF7E8();
        __swift_project_value_buffer(v39, qword_28027C958);
        v40 = sub_2683CF7C8();
        v41 = sub_2683CFE98();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_2680EB000, v40, v41, "[CreateNote NeedsValueStrategy] Returning .cancel().", v42, 2u);
          OUTLINED_FUNCTION_38();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v46);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);
    sub_2681340E8(v51, v46, &qword_28024D460, &qword_2683D5050);
    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE98();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_49();
      v16 = OUTLINED_FUNCTION_53();
      v43[0] = v16;
      *v15 = 136315138;
      sub_2681340E8(v46, v45, &qword_28024D460, &qword_2683D5050);
      v17 = OUTLINED_FUNCTION_44();
      __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
      v19 = sub_2683CFAD8();
      v21 = v20;
      sub_2681433DC(v46, &qword_28024D460, &qword_2683D5050);
      v22 = sub_2681610A0(v19, v21, v43);

      *(v15 + 4) = v22;
      OUTLINED_FUNCTION_65(&dword_2680EB000, v23, v24, "[CreateNote NeedsValueStrategy] Returning .ignore() for task: %s.");
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_2681433DC(v46, &qword_28024D460, &qword_2683D5050);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_2681433DC(v51, &qword_28024D460, &qword_2683D5050);
    return sub_2681433DC(v50, &qword_28024D460, &qword_2683D5050);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v25 = sub_2683CF7E8();
  __swift_project_value_buffer(v25, qword_28027C958);
  sub_2681340E8(v51, v45, &qword_28024D460, &qword_2683D5050);
  v26 = sub_2683CF7C8();
  v27 = sub_2683CFE98();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_49();
    v29 = OUTLINED_FUNCTION_53();
    v44 = v29;
    *v28 = 136315138;
    sub_2681340E8(v45, v43, &qword_28024D460, &qword_2683D5050);
    v30 = OUTLINED_FUNCTION_44();
    __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
    v32 = sub_2683CFAD8();
    v34 = v33;
    sub_2681433DC(v45, &qword_28024D460, &qword_2683D5050);
    v35 = sub_2681610A0(v32, v34, &v44);

    *(v28 + 4) = v35;
    OUTLINED_FUNCTION_65(&dword_2680EB000, v36, v37, "[CreateNote NeedsValueStrategy] Returning .handle() for task: %s.");
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    sub_2681433DC(v45, &qword_28024D460, &qword_2683D5050);
  }

  sub_2683CC2A8();
  sub_2681433DC(v51, &qword_28024D460, &qword_2683D5050);
  sub_26813A1A0(v46);
  return sub_2681433DC(v50, &qword_28024D460, &qword_2683D5050);
}

uint64_t sub_268382828()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2683CCC18();
  v1[19] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[20] = v6;
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_15_1();
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2683828D0()
{
  v38 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v7 = *(v3 + 56);
  v6 = *(v3 + 64);
  sub_2683CCB88();
  v7(v1, 0);
  (*(v2 + 8))(v1, v4);
  v8 = *(v0 + 72);
  if (v8 == 2)
  {
    v9 = *(v0 + 136);
    sub_268128148((v0 + 16), v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
    v10 = sub_2683CC9C8();
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    __swift_project_boxed_opaque_existential_1((v0 + 80), v11);
    v13 = (*(v12 + 16))(1, v11, v12);
    v14 = sub_2682F0120(v13);

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    v16 = v14;
    v17 = sub_2683CF7C8();
    v18 = sub_2683CFE98();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_49();
      v36 = OUTLINED_FUNCTION_53();
      v37 = v36;
      *v19 = 136315138;
      v20 = v16;
      v21 = [v20 description];
      v22 = sub_2683CFA78();
      v24 = v23;

      v25 = sub_2681610A0(v22, v24, &v37);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_2680EB000, v17, v18, "[CreateNote NeedsValueStrategy] Parsed response and updated intent: %s.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v26 = *(v0 + 168);
    v27 = *(v0 + 136);
    v28 = *(v0 + 120);
    v29 = sub_2683CC9D8();
    v30 = [v29 resolvedValue];

    sub_2683D0038();
    swift_unknownObjectRelease();
    sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
    sub_2683CC618();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F68, &qword_2683F5F18);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v31);
    __swift_destroy_boxed_opaque_existential_0((v0 + 80));

    OUTLINED_FUNCTION_7_4();
  }

  else
  {
    if (v8 == 255)
    {
      sub_2681433DC(v0 + 16, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 16);
    }

    v33 = *(v0 + 168);
    sub_26812C6B8();
    swift_allocError();
    *v34 = 0u;
    *(v34 + 16) = 0u;
    *(v34 + 32) = 4;
    swift_willThrow();

    OUTLINED_FUNCTION_40();
  }

  return v32();
}

uint64_t sub_268382C60()
{
  OUTLINED_FUNCTION_14();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = type metadata accessor for Snippet();
  v1[30] = v4;
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  v1[31] = OUTLINED_FUNCTION_55();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v7 = sub_2683CC9A8();
  v1[35] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[36] = v8;
  v10 = *(v9 + 64);
  v1[37] = OUTLINED_FUNCTION_15_1();
  v11 = sub_2683CC138();
  v1[38] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[39] = v12;
  v14 = *(v13 + 64);
  v1[40] = OUTLINED_FUNCTION_55();
  v1[41] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64);
  v1[42] = OUTLINED_FUNCTION_15_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v18);
  v20 = *(v19 + 64);
  v1[43] = OUTLINED_FUNCTION_15_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v21);
  v23 = *(v22 + 64);
  v1[44] = OUTLINED_FUNCTION_15_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v24);
  v1[45] = v25;
  v1[46] = *(v26 + 64);
  v1[47] = OUTLINED_FUNCTION_55();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v27 = sub_2683CC748();
  v1[55] = v27;
  OUTLINED_FUNCTION_3_1(v27);
  v1[56] = v28;
  v30 = *(v29 + 64);
  v1[57] = OUTLINED_FUNCTION_55();
  v1[58] = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D470, &qword_2683DEA10);
  v1[59] = v31;
  OUTLINED_FUNCTION_3_1(v31);
  v1[60] = v32;
  v34 = *(v33 + 64);
  v1[61] = OUTLINED_FUNCTION_15_1();
  v35 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_268382F8C()
{
  v78 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 224);
  v5 = sub_2683CF7E8();
  __swift_project_value_buffer(v5, qword_28027C958);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2683CF7C8();
  v7 = sub_2683CFE98();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 480);
  v10 = *(v0 + 488);
  v11 = *(v0 + 472);
  if (v8)
  {
    v12 = *(v0 + 464);
    v13 = *(v0 + 448);
    v71 = *(v0 + 440);
    v14 = OUTLINED_FUNCTION_49();
    v75 = OUTLINED_FUNCTION_53();
    v77[0] = v75;
    *v14 = 136315138;
    v73 = v7;
    sub_2683CC9E8();
    v15 = sub_2683CC738();
    v17 = v16;
    (*(v13 + 8))(v12, v71);
    v18 = *(v9 + 8);
    v19 = OUTLINED_FUNCTION_44();
    v20(v19);
    v21 = sub_2681610A0(v15, v17, v77);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_2680EB000, v6, v73, "[CreateNote NeedsValueStrategy] Making prompt for %s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v22 = *(v9 + 8);
    v23 = OUTLINED_FUNCTION_44();
    v24(v23);
  }

  v25 = *(v0 + 472);
  v27 = *(v0 + 448);
  v26 = *(v0 + 456);
  v28 = *(v0 + 440);
  v29 = *(v0 + 224);
  sub_2683CC9E8();
  v30 = sub_2683CC738();
  v32 = v31;
  (*(v27 + 8))(v26, v28);

  v33 = sub_2683B48FC();
  *(v0 + 576) = v33;
  if (v33 == 3)
  {
    sub_26812C6B8();
    swift_allocError();
    *v34 = v30;
    *(v34 + 8) = v32;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 1;
    swift_willThrow();
    v35 = *(v0 + 488);
    v37 = *(v0 + 456);
    v36 = *(v0 + 464);
    v38 = *(v0 + 424);
    v39 = *(v0 + 432);
    OUTLINED_FUNCTION_12_32();

    OUTLINED_FUNCTION_40();
LABEL_8:

    return v40();
  }

  v42 = v33;
  v43 = *(v0 + 472);
  v44 = *(v0 + 224);

  sub_2683CC9B8();
  LOBYTE(v77[0]) = 1;
  v45 = sub_26812A998(v77);

  if (v45)
  {
    v46 = *(v0 + 232);
    v47 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v46[3]);
    if (sub_2683CC0B8())
    {
      sub_268384890(*(v0 + 216));
      v48 = *(v0 + 488);
      v49 = *(v0 + 456);
      v50 = *(v0 + 464);
      v52 = *(v0 + 424);
      v51 = *(v0 + 432);
      v54 = *(v0 + 408);
      v53 = *(v0 + 416);
      v56 = *(v0 + 392);
      v55 = *(v0 + 400);
      v57 = *(v0 + 384);
      v63 = *(v0 + 376);
      v64 = *(v0 + 352);
      v65 = *(v0 + 344);
      v66 = *(v0 + 336);
      v67 = *(v0 + 328);
      v68 = *(v0 + 320);
      v69 = *(v0 + 296);
      v70 = *(v0 + 272);
      v72 = *(v0 + 264);
      v74 = *(v0 + 256);
      v76 = *(v0 + 248);

      OUTLINED_FUNCTION_7_4();
      goto LABEL_8;
    }
  }

  v59 = *(v0 + 424);
  v58 = *(v0 + 432);
  v60 = *(v0 + 240);
  *(v0 + 496) = *(*(v0 + 232) + 48);
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v60);
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v60);
  v61 = swift_task_alloc();
  *(v0 + 504) = v61;
  *v61 = v0;
  v61[1] = sub_2683834EC;
  v62 = *(v0 + 232);

  return sub_268384BB4(v42);
}

uint64_t sub_2683834EC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 504);
  *v4 = *v1;
  v3[64] = v7;
  v3[65] = v0;

  if (v0)
  {
    v8 = v3[54];
    sub_2681433DC(v3[53], &qword_28024E770, &qword_2683D80D0);
    sub_2681433DC(v8, &qword_28024E770, &qword_2683D80D0);
    v9 = sub_26838476C;
  }

  else
  {
    v9 = sub_268383634;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_268383634()
{
  *(v0 + 16) = *(v0 + 576);
  v1 = *(v0 + 512);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  *(v0 + 40) = &type metadata for CreateNote.Parameter;
  *(v0 + 48) = &off_28790DD70;
  sub_268168B1C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v6 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  sub_2683CED08();
  v7 = OUTLINED_FUNCTION_33_1();
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  v10 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v11 = swift_allocObject();
  *(v0 + 528) = v11;
  *(v11 + 16) = xmmword_2683D2250;
  *(v11 + 32) = v1;
  v12 = v1;
  if (sub_2683ABE58(v11))
  {
    sub_2683ABE60(0, (v11 & 0xC000000000000001) == 0, v11);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26D616C90](0, v11);
    }

    else
    {
      v13 = *(v11 + 32);
    }

    v14 = v13;
    v15 = [v13 catId];

    v85 = sub_2683CFA78();
    v88 = v16;
  }

  else
  {
    v85 = 0;
    v88 = 0;
  }

  v17 = *(v0 + 496);
  v18 = *(v0 + 432);
  v84 = v18;
  v20 = *(v0 + 408);
  v19 = *(v0 + 416);
  v22 = *(v0 + 360);
  v21 = *(v0 + 368);
  v80 = *(v0 + 352);
  v81 = *(v0 + 344);
  v23 = *(v0 + 312);
  v77 = *(v0 + 320);
  v78 = *(v0 + 304);
  v79 = *(v0 + 328);
  v82 = *(v0 + 336);
  v83 = *(v0 + 296);
  v86 = *(v0 + 240);
  v87 = *(v0 + 400);
  sub_2681340E8(*(v0 + 424), v19, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v18, v20, &qword_28024E770, &qword_2683D80D0);
  v24 = *(v22 + 80);
  v25 = (v24 + 24) & ~v24;
  v26 = (v21 + v24 + v25) & ~v24;
  v27 = swift_allocObject();
  *(v0 + 536) = v27;
  *(v27 + 16) = v17;
  sub_2681430AC(v19, v27 + v25);
  sub_2681430AC(v20, v27 + v26);
  (*(v23 + 16))(v77, v79, v78);
  v28 = swift_task_alloc();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = v85;
  *(v28 + 48) = v88;
  *(v28 + 56) = v80;
  *(v28 + 64) = 513;
  *(v28 + 72) = sub_26814311C;
  *(v28 + 80) = v27;
  *(v28 + 88) = 0;
  *(v28 + 96) = v81;
  *(v28 + 104) = 2;
  *(v28 + 112) = v82;

  sub_2683CC8E8();

  sub_2681340E8(v84, v87, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v87, 1, v86) == 1)
  {
    v29 = (v0 + 400);
  }

  else
  {
    v30 = *(v0 + 424);
    v31 = *(v0 + 392);
    v32 = *(v0 + 240);
    sub_26814320C(*(v0 + 400), *(v0 + 272));
    sub_2681340E8(v30, v31, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
    {
      v56 = *(v0 + 264);
      v57 = *(v0 + 272);
      v58 = *(v0 + 240);
      sub_26814320C(*(v0 + 392), v56);
      *(v0 + 160) = v58;
      v59 = sub_268143270();
      *(v0 + 168) = v59;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 136));
      sub_2681432C8(v57, boxed_opaque_existential_0);
      *(v0 + 200) = v58;
      *(v0 + 208) = v59;
      v61 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
      sub_2681432C8(v56, v61);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      *(v0 + 544) = v62;
      *v62 = v63;
      OUTLINED_FUNCTION_35_17(v62);
      v64 = *(v0 + 296);
      v65 = *(v0 + 216);
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v29 = (v0 + 392);
    sub_26814332C(*(v0 + 272));
  }

  v33 = *v29;
  v34 = *(v0 + 432);
  v35 = *(v0 + 384);
  v36 = *(v0 + 240);
  sub_2681433DC(v33, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v34, v35, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v36);
  v38 = *(v0 + 384);
  v39 = *(v0 + 240);
  if (EnumTagSinglePayload == 1)
  {
    v40 = *(v0 + 424);
    v41 = *(v0 + 376);
    sub_2681433DC(v38, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v40, v41, &qword_28024E770, &qword_2683D80D0);
    v42 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v42, v43, v39) == 1)
    {
      sub_2681433DC(*(v0 + 376), &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      *(v0 + 568) = v44;
      *v44 = v45;
      OUTLINED_FUNCTION_35_17(v44);
      v46 = *(v0 + 296);
      v47 = *(v0 + 216);
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v68 = *(v0 + 240);
    v69 = *(v0 + 248);
    sub_26814320C(*(v0 + 376), v69);
    *(v0 + 80) = v68;
    *(v0 + 88) = sub_268143270();
    v70 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    sub_2681432C8(v69, v70);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    *(v0 + 560) = v71;
    *v71 = v72;
    OUTLINED_FUNCTION_35_17(v71);
    v73 = *(v0 + 296);
    v74 = *(v0 + 216);
  }

  else
  {
    v50 = *(v0 + 256);
    sub_26814320C(v38, v50);
    *(v0 + 120) = v39;
    *(v0 + 128) = sub_268143270();
    v51 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
    sub_2681432C8(v50, v51);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    *(v0 + 552) = v52;
    *v52 = v53;
    OUTLINED_FUNCTION_35_17(v52);
    v54 = *(v0 + 296);
    v55 = *(v0 + 216);
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_268383CFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *(v4 + 528);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268383E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v25 = v22[67];
  v26 = v22[64];
  v27 = v22[33];
  v28 = v22[34];

  sub_26814332C(v27);
  sub_26814332C(v28);
  v29 = OUTLINED_FUNCTION_4_53();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_35();
  v32(v31);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_21_25();
  sub_2681433DC(v24, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v26, &qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_2_60();

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_268383FA8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 552);
  v6 = *(v4 + 528);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2683840AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v26 = v23[67];
  v27 = v23[64];
  v28 = v23[32];

  sub_26814332C(v28);
  v29 = OUTLINED_FUNCTION_4_53();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_35();
  v32(v31);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_21_25();
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_2_60();

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_268384244()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *(v4 + 528);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268384348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v26 = v23[67];
  v27 = v23[64];
  v28 = v23[31];

  sub_26814332C(v28);
  v29 = OUTLINED_FUNCTION_4_53();
  v30(v29);
  v31 = OUTLINED_FUNCTION_18_35();
  v32(v31);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_21_25();
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_2_60();

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2683844E0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 568);
  v3 = *(v1 + 528);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2683845E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v26 = *(v23 + 536);
  v27 = *(v23 + 512);

  v28 = OUTLINED_FUNCTION_4_53();
  v29(v28);
  v30 = OUTLINED_FUNCTION_18_35();
  v31(v30);
  OUTLINED_FUNCTION_22_24();
  OUTLINED_FUNCTION_21_25();
  sub_2681433DC(v25, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_2_60();

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_26838476C()
{
  v8 = v0[65];
  v1 = v0[61];
  v3 = v0[57];
  v2 = v0[58];
  v5 = v0[53];
  v4 = v0[54];
  OUTLINED_FUNCTION_12_32();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  __asm { BRAA            X1, X16 }
}

void sub_268384890(uint64_t *a1@<X8>)
{
  v2 = sub_2683CB438();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  sub_268129504(0, &qword_28024E778, 0x277D479F0);
  if (qword_28024CC60 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_28027CEB8);
  (*(v5 + 16))(v12, v13, v2);
  v14 = sub_26816B2DC(v12);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v15 = sub_2683CF7E8();
  __swift_project_value_buffer(v15, qword_28027C958);
  v16 = v14;
  v17 = sub_2683CF7C8();
  v18 = sub_2683CFE98();
  if (!os_log_type_enabled(v17, v18))
  {

    goto LABEL_9;
  }

  v30 = a1;
  v19 = OUTLINED_FUNCTION_49();
  v20 = OUTLINED_FUNCTION_53();
  *&v31[0] = v20;
  *v19 = 136315138;
  v21 = [v16 punchOutUri];

  if (v21)
  {
    sub_2683CB3E8();

    v22 = sub_2683CB3A8();
    v24 = v23;
    (*(v5 + 8))(v10, v2);
    v25 = sub_2681610A0(v22, v24, v31);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_2680EB000, v17, v18, "[CreateNote NeedsValueStrategy] skipping prompt for 1p notes and punching out to %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    a1 = v30;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2683D2250;
    *(v26 + 32) = v16;
    v27 = sub_2683CCC98();
    memset(v31, 0, sizeof(v31));
    v32 = 0;
    v28 = MEMORY[0x277D5C1D8];
    a1[3] = v27;
    a1[4] = v28;
    __swift_allocate_boxed_opaque_existential_0(a1);
    sub_2683CCC88();
    return;
  }

  __break(1u);
}

uint64_t sub_268384BB4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268384BE0()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*(v0 + 16) + 40);
  if (*(v0 + 48))
  {
    if (*(v0 + 48) == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 32) = v2;
      *v2 = v0;
      v2[1] = sub_26813C350;

      return sub_26812BCA4();
    }

    else
    {
      v5 = swift_task_alloc();
      *(v0 + 40) = v5;
      *v5 = v0;
      v5[1] = sub_268384E38;

      return sub_26812BD54();
    }
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 24) = v4;
    *v4 = v0;
    v4[1] = sub_268384D48;

    return sub_26812BE04();
  }
}

uint64_t sub_268384D48()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_268384E38()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_268384F2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_268382828();
}

uint64_t sub_268384FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_268382C60();
}

unint64_t sub_268385088()
{
  result = qword_280253F60;
  if (!qword_280253F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253F60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_60()
{
  v2 = v0[61];
  v3 = v0[57];
  v4 = v0[58];
  v6 = v0[53];
  v5 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
  v10 = v0[49];
  v9 = v0[50];
  v11 = v0[48];
  v13 = v0[47];
  v14 = v0[44];
  v15 = v0[43];
  v16 = v0[42];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[34];
  v21 = v0[33];
  v22 = v0[32];
  v23 = v0[31];
}

uint64_t OUTLINED_FUNCTION_4_53()
{
  v1 = v0[53];
  v2 = v0[54];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[38];
  v8 = v0[39];
  result = v0[37];
  v10 = v0[35];
  v11 = *(v0[36] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_32()
{
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v6 = v0[48];
  v8 = v0[47];
  v9 = v0[44];
  v10 = v0[43];
  v11 = v0[42];
  v12 = v0[41];
  v13 = v0[40];
  v14 = v0[37];
  v15 = v0[34];
  v16 = v0[33];
  v17 = v0[32];
  v18 = v0[31];
}

uint64_t OUTLINED_FUNCTION_21_25()
{

  return sub_2681433DC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_22_24()
{

  return sub_2681433DC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_35_17(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 496);
  return result;
}

uint64_t sub_2683851F4@<X0>(char a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (a1)
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  }

  else
  {
    sub_2683CFD28();
    swift_getWitnessTable();
    sub_2683CFDC8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F70, &unk_2683F5F20);
    if (sub_2683CFE38())
    {
      sub_2683CFD38();
      v6 = a3;
      v7 = 0;
    }

    else
    {
      v6 = a3;
      v7 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v6, v7, 1, a2);
  }
}

uint64_t sub_268385338()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253798, &unk_2683F3DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  sub_2681340E8(v1, v5, &qword_28024D398, &qword_2683D22F0);
  v10 = sub_2683CD358();
  if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
  {
    sub_26812D9E0(v5, &qword_28024D398, &qword_2683D22F0);
    v11 = sub_2683CD398();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
  }

  else
  {
    sub_2683CD2C8();
    (*(*(v10 - 8) + 8))(v5, v10);
    v12 = sub_2683CD398();
    if (__swift_getEnumTagSinglePayload(v9, 1, v12) != 1)
    {
      sub_26812D9E0(v9, &qword_280253798, &unk_2683F3DC0);
      goto LABEL_7;
    }
  }

  sub_26812D9E0(v9, &qword_280253798, &unk_2683F3DC0);
  if ((sub_2681E6E54() & 1) == 0)
  {
LABEL_7:
    v13 = 0;
    return v13 & 1;
  }

  v13 = sub_2681E6E90() ^ 1;
  return v13 & 1;
}

uint64_t sub_268385528()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253798, &unk_2683F3DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  sub_2681340E8(v1, v5, &qword_28024D398, &qword_2683D22F0);
  v10 = sub_2683CD358();
  if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
  {
    sub_26812D9E0(v5, &qword_28024D398, &qword_2683D22F0);
    v11 = sub_2683CD398();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v11);
LABEL_4:
    sub_26812D9E0(v9, &qword_280253798, &unk_2683F3DC0);
    goto LABEL_5;
  }

  sub_2683CD2C8();
  (*(*(v10 - 8) + 8))(v5, v10);
  v12 = sub_2683CD398();
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  sub_26812D9E0(v9, &qword_280253798, &unk_2683F3DC0);
  if ((sub_2681E6E54() & 1) == 0)
  {
    v13 = sub_2681E6E90() ^ 1;
    return v13 & 1;
  }

LABEL_5:
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_26838573C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v68 = a3;
  v69 = a4;
  v8 = v5;
  v10 = sub_2683CC768();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v70 = (v13 - v12);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FA8, &qword_2683F6128);
  v14 = OUTLINED_FUNCTION_1(v67);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v66 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v66 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v66 - v26;
  *(v8 + *a2) = 1;
  sub_26813CC6C(a1, v74);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FB0, &qword_2683F6130);
  v29 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v27, v29 ^ 1u, 1, v28);
  sub_2681340E8(v27, v25, &qword_280253FA8, &qword_2683F6128);
  if (__swift_getEnumTagSinglePayload(v25, 1, v28) == 1)
  {
    sub_26812D9E0(v25, &qword_280253FA8, &qword_2683F6128);
LABEL_10:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v49 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v49, qword_28027C958);
    sub_2681340E8(v27, v22, &qword_280253FA8, &qword_2683F6128);

    v50 = sub_2683CF7C8();
    v51 = sub_2683CFE98();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v66 = v53;
      *v52 = 136315394;
      v73 = *v8;
      v74[0] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(v68, v69);
      v54 = sub_2683CFAD8();
      v56 = sub_2681610A0(v54, v55, v74);
      v69 = v8;
      v57 = v56;

      *(v52 + 4) = v57;
      *(v52 + 12) = 2082;
      sub_2681340E8(v22, v19, &qword_280253FA8, &qword_2683F6128);
      v58 = sub_2683CFAD8();
      v59 = a5;
      v61 = v60;
      sub_26812D9E0(v22, &qword_280253FA8, &qword_2683F6128);
      v62 = sub_2681610A0(v58, v61, v74);
      a5 = v59;

      *(v52 + 14) = v62;
      v8 = v69;
      _os_log_impl(&dword_2680EB000, v50, v51, "[%s] RCHFlow did not exit with complete value. ExitValue: %{public}s", v52, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26812D9E0(v22, &qword_280253FA8, &qword_2683F6128);
    }

    v48 = v70;
    v47 = v71;
    *v70 = 0xD000000000000028;
    v48[1] = 0x8000000268401A40;
    v46 = *MEMORY[0x277D5BF08];
    goto LABEL_16;
  }

  v30 = a5;
  v31 = *(v28 - 8);
  v32 = (*(v31 + 88))(v25, v28);
  v33 = v8;
  v34 = *MEMORY[0x277D5BCA0];
  (*(v31 + 8))(v25, v28);
  a5 = v30;
  v35 = v32 == v34;
  v8 = v33;
  if (!v35)
  {
    goto LABEL_10;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v36 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v36, qword_28027C958);

  v37 = sub_2683CF7C8();
  v38 = sub_2683CFE98();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_49();
    v40 = OUTLINED_FUNCTION_53();
    *v39 = 136315138;
    v73 = *v33;
    v74[0] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(v68, v69);
    v41 = sub_2683CFAD8();
    v43 = sub_2681610A0(v41, v42, v74);

    *(v39 + 4) = v43;
    OUTLINED_FUNCTION_13_4(&dword_2680EB000, v44, v45, "[%s] Correction successful");
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_38();
  }

  v46 = *MEMORY[0x277D5BF10];
  v48 = v70;
  v47 = v71;
LABEL_16:
  v63 = v72;
  (*(v47 + 104))(v48, v46, v72);
  v64 = *a5;
  swift_beginAccess();
  (*(v47 + 40))(v8 + v64, v48, v63);
  swift_endAccess();
  return sub_26812D9E0(v27, &qword_280253FA8, &qword_2683F6128);
}

uint64_t sub_268385DA8(uint64_t a1)
{
  sub_26813A144(a1, v5);
  v2 = v6;
  sub_26813A1A0(v5);
  if (!v2)
  {
    return 1;
  }

  sub_26813A144(a1, v5);
  v3 = v6 == 4;
  sub_26813A1A0(v5);
  return v3;
}

uint64_t sub_268385E14()
{
  type metadata accessor for CorrectingAddTasksFlow();
  sub_2683882A4(&qword_280253F88);
  OUTLINED_FUNCTION_0_0();
  return sub_2683CBF48();
}

uint64_t sub_268385E8C()
{
  OUTLINED_FUNCTION_14();
  v1[32] = v2;
  v1[33] = v0;
  v3 = sub_2683CC768();
  v1[34] = v3;
  v4 = *(v3 - 8);
  v1[35] = v4;
  v5 = *(v4 + 64);
  v1[36] = OUTLINED_FUNCTION_15_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F88, &qword_2683F5C90);
  v1[37] = v6;
  v7 = *(v6 - 8);
  v1[38] = v7;
  v8 = *(v7 + 64);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268385F98()
{
  v49 = v0;
  v2 = *(v0 + 264);
  if (*(v2 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_state))
  {
    v3 = *(v0 + 256);
    sub_2683CC3F8();
    goto LABEL_30;
  }

  v4 = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask;
  *(v0 + 320) = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask;
  swift_beginAccess();
  sub_2681340E8(v2 + v4, v0 + 16, &qword_28024D460, &qword_2683D5050);
  v5 = *(v0 + 72);
  sub_26812D9E0(v0 + 16, &qword_28024D460, &qword_2683D5050);
  if (v5 == 255 || (v6 = *(*(v0 + 264) + 16), sub_268229348(v6) != 1) || !sub_2683ABE58(v6))
  {
    v13 = *(v0 + 264);
    OUTLINED_FUNCTION_34_18(*(v0 + 320));
    OUTLINED_FUNCTION_38_14();
    if (v5 == 255 && (v14 = *(*(v0 + 264) + 24), (sub_2681E73A0() & 1) != 0))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v15 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v15, qword_28027C958);
      v16 = sub_2683CF7C8();
      v17 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_43(v17))
      {
        v18 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_32_5(v18);
        OUTLINED_FUNCTION_11_17(&dword_2680EB000, v19, v20, "[CorrectingAddTasksFlow.execute] handling an undo task");
        OUTLINED_FUNCTION_36();
      }

      v22 = *(v0 + 256);
      v21 = *(v0 + 264);

      __swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator), *(v21 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator + 24));
      v23 = *(v21 + 16);
      sub_268191B5C();
      *(v0 + 232) = v24;
      sub_2683CBC28();

      OUTLINED_FUNCTION_4_54();
    }

    else
    {
      sub_268229348(*(*(v0 + 264) + 16));
      OUTLINED_FUNCTION_28_21();
      v30 = v29 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
      if (v26 ^ v27 | v25)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0x7420656C62616E55;
      }

      if (v26 ^ v27 | v25)
      {
        v32 = v28;
      }

      else
      {
        v32 = 0xEE006F646E75206FLL;
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v33 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v33, qword_28027C958);

      v34 = sub_2683CF7C8();
      v35 = sub_2683CFE78();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_49();
        v48 = OUTLINED_FUNCTION_53();
        *v36 = 136315138;
        *(v36 + 4) = sub_2681610A0(v31, v32, &v48);
        OUTLINED_FUNCTION_16_9(&dword_2680EB000, v37, v38, "[CorrectingAddTasksFlow.execute] %s");
        OUTLINED_FUNCTION_7_36();
        OUTLINED_FUNCTION_12_31();
      }

      OUTLINED_FUNCTION_31_16();
      v39 = *MEMORY[0x277D5BF08];
      v40 = OUTLINED_FUNCTION_30_20();
      v41(v40);
      OUTLINED_FUNCTION_37_11();
      v42 = OUTLINED_FUNCTION_29_21();
      v43(v42);
      swift_endAccess();
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator), *(v1 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator + 24));
      OUTLINED_FUNCTION_35_18(&type metadata for UnsupportedIntentWrapper);
      sub_26812D9E0(v0 + 144, &qword_28024E3C0, &qword_2683D6990);
      sub_2683CC3E8();
    }

LABEL_30:
    v44 = *(v0 + 312);
    v45 = *(v0 + 288);

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_12_0();

    __asm { BRAA            X1, X16 }
  }

  sub_2683ABE60(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26D616C90](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  *(v0 + 328) = v7;
  v8 = swift_task_alloc();
  *(v0 + 336) = v8;
  *v8 = v0;
  v8[1] = sub_2683863E8;
  v9 = *(v0 + 264);
  OUTLINED_FUNCTION_12_0();

  return sub_2683868F0(v10);
}

uint64_t sub_2683863E8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v2 = v1;
  v4 = *(v3 + 336);
  *v2 = *v0;
  *(v1 + 344) = v5;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2683864D4()
{
  v46 = v1;
  v3 = *(v1 + 344);
  if (v3)
  {
    v44 = *(v1 + 328);
    v5 = *(v1 + 304);
    v4 = *(v1 + 312);
    v6 = *(v1 + 296);
    v7 = *(v1 + 256);
    sub_26837F580(*(*(v1 + 264) + 24), v4);
    *(v1 + 240) = sub_2683CC2D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280252F90, &qword_2683F5CB0);
    sub_2683209A8();
    v8 = sub_2683CBF28();

    (*(v5 + 8))(v4, v6);
    *(v1 + 248) = v8;
    sub_2683CBC28();

    sub_2683CC398();

LABEL_3:

    goto LABEL_22;
  }

  v9 = *(v1 + 264);
  OUTLINED_FUNCTION_34_18(*(v1 + 320));
  OUTLINED_FUNCTION_38_14();
  if (v0 == 255)
  {
    v10 = *(*(v1 + 264) + 24);
    if (sub_2681E73A0())
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v11 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v11, qword_28027C958);
      v12 = sub_2683CF7C8();
      v13 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_43(v13))
      {
        v14 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_32_5(v14);
        OUTLINED_FUNCTION_11_17(&dword_2680EB000, v15, v16, "[CorrectingAddTasksFlow.execute] handling an undo task");
        OUTLINED_FUNCTION_36();
      }

      v18 = *(v1 + 256);
      v17 = *(v1 + 264);

      __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator), *(v17 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator + 24));
      v19 = *(v17 + 16);
      sub_268191B5C();
      *(v1 + 232) = v20;
      sub_2683CBC28();

      OUTLINED_FUNCTION_4_54();
      goto LABEL_3;
    }
  }

  sub_268229348(*(*(v1 + 264) + 16));
  OUTLINED_FUNCTION_28_21();
  v26 = v25 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  if (v22 ^ v23 | v21)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0x7420656C62616E55;
  }

  if (v22 ^ v23 | v21)
  {
    v28 = v24;
  }

  else
  {
    v28 = 0xEE006F646E75206FLL;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v29 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v29, qword_28027C958);

  v30 = sub_2683CF7C8();
  v31 = sub_2683CFE78();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_49();
    v45 = OUTLINED_FUNCTION_53();
    *v32 = 136315138;
    *(v32 + 4) = sub_2681610A0(v27, v28, &v45);
    OUTLINED_FUNCTION_16_9(&dword_2680EB000, v33, v34, "[CorrectingAddTasksFlow.execute] %s");
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_12_31();
  }

  OUTLINED_FUNCTION_31_16();
  v35 = *MEMORY[0x277D5BF08];
  v36 = OUTLINED_FUNCTION_30_20();
  v37(v36);
  OUTLINED_FUNCTION_37_11();
  v38 = OUTLINED_FUNCTION_29_21();
  v39(v38);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator), *(v2 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator + 24));
  OUTLINED_FUNCTION_35_18(&type metadata for UnsupportedIntentWrapper);
  sub_26812D9E0(v1 + 144, &qword_28024E3C0, &qword_2683D6990);
  sub_2683CC3E8();
LABEL_22:

  v40 = *(v1 + 312);
  v41 = *(v1 + 288);

  OUTLINED_FUNCTION_40();

  return v42();
}

uint64_t sub_2683868F0(uint64_t a1)
{
  *(v2 + 288) = a1;
  *(v2 + 296) = v1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268386918()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 296);
  v2 = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask;
  swift_beginAccess();
  sub_2681340E8(v1 + v2, v0 + 16, &qword_28024D460, &qword_2683D5050);
  if (*(v0 + 72) == 255)
  {
LABEL_19:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v23 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v23, qword_28027C958);
    v24 = sub_2683CF7C8();
    v25 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_43(v25))
    {
      v26 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v26);
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v27, v28, "[CorrectingAddTasksFlow.execute] unexpected task type.");
      OUTLINED_FUNCTION_36();
    }

    sub_26812D9E0(v0 + 16, &qword_28024D460, &qword_2683D5050);
    OUTLINED_FUNCTION_37();

    return v29(0);
  }

  sub_2681340E8(v0 + 16, v0 + 80, &qword_28024D460, &qword_2683D5050);
  v3 = (v0 + 80);
  if (*(v0 + 136) != 4)
  {
    if (!*(v0 + 136))
    {
      sub_268128148(v3, v0 + 184);
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v4 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v4, qword_28027C958);
      v5 = sub_2683CF7C8();
      v6 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_43(v6))
      {
        v7 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_32_5(v7);
        OUTLINED_FUNCTION_11_17(&dword_2680EB000, v8, v9, "[CorrectingAddTasksFlow.execute] handling add task steering intent");
        OUTLINED_FUNCTION_36();
      }

      v10 = swift_task_alloc();
      *(v0 + 304) = v10;
      *v10 = v0;
      v10[1] = sub_268386C48;
      v11 = *(v0 + 288);

      return sub_26838742C();
    }

    sub_26813A1A0(v3);
    goto LABEL_19;
  }

  sub_268128148(v3, v0 + 144);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v13 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v13, qword_28027C958);
  v14 = sub_2683CF7C8();
  v15 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_43(v15))
  {
    v16 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_32_5(v16);
    OUTLINED_FUNCTION_11_17(&dword_2680EB000, v17, v18, "[CorrectingAddTasksFlow.execute] handling set task attribute steering intent");
    OUTLINED_FUNCTION_36();
  }

  v19 = *(v0 + 176);
  __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
  v20 = swift_task_alloc();
  *(v0 + 328) = v20;
  *v20 = v0;
  v21 = OUTLINED_FUNCTION_19_35(v20);

  return sub_26822A1A0(v21, v22);
}

uint64_t sub_268386C48()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  OUTLINED_FUNCTION_26();
  *v6 = v5;
  v8 = *(v7 + 304);
  v9 = *v1;
  OUTLINED_FUNCTION_26();
  *v10 = v9;
  *(v5 + 312) = v0;

  if (v0)
  {
    v11 = sub_2683870F4;
  }

  else
  {
    *(v5 + 320) = v3;
    v11 = sub_268386D60;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_268386D60()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  sub_26812D9E0(v0 + 16, &qword_28024D460, &qword_2683D5050);
  OUTLINED_FUNCTION_37();

  return v2(v1);
}

uint64_t sub_268386DD8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 328);
  *v3 = *v1;
  *(v2 + 336) = v6;
  *(v2 + 344) = v0;

  if (v0)
  {
    v7 = sub_268387290;
  }

  else
  {
    v7 = sub_268386EE0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268386EE0()
{
  v22 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 288);
  v4 = sub_268129504(0, &qword_280253310, 0x277CD4220);
  *(v0 + 224) = v3;
  *(v0 + 248) = v4;
  v5 = v3;
  v6 = sub_2681DFC70(0, (v0 + 224));

  __swift_destroy_boxed_opaque_existential_0((v0 + 224));
  v7 = (v0 + 144);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    sub_26812D9E0(v0 + 16, &qword_28024D460, &qword_2683D5050);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v8 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v8, qword_28027C958);
    v9 = v2;
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE78();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_49();
      v21 = OUTLINED_FUNCTION_53();
      *v12 = 136315138;
      *(v0 + 280) = v2;
      v13 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v14 = sub_2683CFAD8();
      v16 = sub_2681610A0(v14, v15, &v21);

      *(v12 + 4) = v16;
      OUTLINED_FUNCTION_16_9(&dword_2680EB000, v17, v18, "[CorrectingAddTasksFlow] failed create steering intent: %s");
      OUTLINED_FUNCTION_7_36();
      OUTLINED_FUNCTION_12_31();
    }

    else
    {
    }

    v6 = 0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    sub_26812D9E0(v0 + 16, &qword_28024D460, &qword_2683D5050);
  }

  OUTLINED_FUNCTION_37();

  return v19(v6);
}

void sub_2683870F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  v1 = v0[39];
  sub_26812D9E0((v0 + 2), &qword_28024D460, &qword_2683D5050);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v2, qword_28027C958);
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_49();
    v7 = OUTLINED_FUNCTION_53();
    v16 = v7;
    *v6 = 136315138;
    v0[35] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v9 = sub_2683CFAD8();
    v11 = sub_2681610A0(v9, v10, &v16);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_13_4(&dword_2680EB000, v12, v13, "[CorrectingAddTasksFlow] failed create steering intent: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();

  __asm { BRAA            X2, X16 }
}

void sub_268387290()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v1 = v0[43];
  sub_26812D9E0((v0 + 2), &qword_28024D460, &qword_2683D5050);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v2, qword_28027C958);
  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_49();
    v7 = OUTLINED_FUNCTION_53();
    v16 = v7;
    *v6 = 136315138;
    v0[35] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v9 = sub_2683CFAD8();
    v11 = sub_2681610A0(v9, v10, &v16);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_13_4(&dword_2680EB000, v12, v13, "[CorrectingAddTasksFlow] failed create steering intent: %s");
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_12_31();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_12_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_26838742C()
{
  OUTLINED_FUNCTION_14();
  v0[12] = v1;
  v0[13] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F90, &qword_2683F6110);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  v0[14] = OUTLINED_FUNCTION_15_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253F98, &qword_2683F6118);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  v0[15] = OUTLINED_FUNCTION_15_1();
  v9 = type metadata accessor for IntentTriggerModel(0);
  v0[16] = v9;
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  v0[17] = OUTLINED_FUNCTION_15_1();
  v12 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_268387500()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 96);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_19_35(v3);

  return sub_2681DD9F8(v4, v5);
}

uint64_t sub_2683875A0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 144);
  *v4 = *v1;
  v3[19] = v7;

  if (v0)
  {
    v8 = v3[17];
    v11 = v3 + 14;
    v9 = v3[14];
    v10 = v11[1];

    OUTLINED_FUNCTION_40();

    return v12();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2683876EC, 0, 0);
  }
}

uint64_t sub_2683876EC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = [*(v0 + 152) temporalEventTrigger];
  sub_26813CA00(v2, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FA0, &qword_2683F6120);
  v4 = type metadata accessor for AddTasksIntentWrapper();
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v7 = *(v0 + 112);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v4);
    sub_26813CA00(v7, v0 + 56);
    sub_2683886B8(v7, type metadata accessor for AddTasksIntentWrapper);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
    (*(v9 + 40))(v8, v9);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    if (__swift_getEnumTagSinglePayload(v6, 1, v5) != 1)
    {
      v10 = *(v0 + 136);
      v11 = *(v0 + 104);
      sub_2683883D4(*(v0 + 120), v10);
      v12 = [v11 temporalEventTrigger];
      v13 = sub_268388438(v12, v3, v10);

      OUTLINED_FUNCTION_1_63();
      sub_2683886B8(v10, v14);
      v3 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 112);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v4);
    sub_26812D9E0(v17, &qword_280253F90, &qword_2683F6110);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v15);
  }

  sub_26812D9E0(*(v0 + 120), &qword_280253F98, &qword_2683F6118);
LABEL_6:
  v18 = sub_268388364(*(v0 + 152));
  if (v18)
  {
    v19 = v18;
    if (sub_2683ABE58(v18))
    {
      sub_2683ABE60(0, (v19 & 0xC000000000000001) == 0, v19);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26D616C90](0, v19);
      }

      else
      {
        v20 = *(v19 + 32);
      }

      v21 = v20;
      v22 = v3;

      goto LABEL_14;
    }

    v22 = v3;
  }

  else
  {
    v22 = v3;
  }

  v21 = 0;
LABEL_14:
  v23 = *(v0 + 152);
  v24 = *(v0 + 136);
  v35 = *(v0 + 120);
  v36 = *(v0 + 112);
  v25 = *(v0 + 104);
  v26 = [v23 priority];
  v27 = [v23 spatialEventTrigger];
  v28 = objc_allocWithZone(MEMORY[0x277CD4108]);
  v29 = v22;
  v30 = v25;
  v31 = sub_2683882E8(v25, v21, 0, v26, v27, v22);
  v32 = [v23 contactEventTrigger];
  [v31 setContactEventTrigger_];

  OUTLINED_FUNCTION_37();

  return v33(v31);
}

uint64_t sub_268387A84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_correctionsExitValue;
  v4 = sub_2683CC768();
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(v0 + v3);
  sub_26812D9E0(v0 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask, &qword_28024D460, &qword_2683D5050);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_notebookFlowCreator));
  v6 = *(v0 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_taskParser + 8);

  return v0;
}

uint64_t sub_268387B30()
{
  sub_268387A84();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CorrectingAddTasksFlow()
{
  result = qword_280253F78;
  if (!qword_280253F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268387BDC()
{
  result = sub_2683CC768();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_268387CB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_taskParser);
  v2 = *(v0 + OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_taskParser + 8);

  return v1;
}

uint64_t sub_268387CF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_steeringTask;
  swift_beginAccess();
  sub_268320938(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_268387D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12SiriNotebook22CorrectingAddTasksFlow_correctionsExitValue;
  swift_beginAccess();
  v5 = sub_2683CC768();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_268387DF8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  return sub_26835E158(a1, a2, WitnessTable) & 1;
}

uint64_t sub_268387E54()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_26812A5A4() & 1;
}

uint64_t sub_268387EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_268387F60;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268387F60()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_26();
  *v6 = v5;

  OUTLINED_FUNCTION_37();

  return v7(v2);
}

uint64_t sub_268388070()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26838810C;

  return sub_268385E8C();
}

uint64_t sub_26838810C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_26();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2683881F0()
{
  type metadata accessor for CorrectingAddTasksFlow();

  return sub_2683CBF88();
}

uint64_t sub_268388260(uint64_t a1)
{
  result = sub_2683882A4(&qword_28024F988);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2683882A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CorrectingAddTasksFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2683882E8(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = [v6 initWithTargetTask:a1 taskTitle:a2 status:a3 priority:a4 spatialEventTrigger:a5 temporalEventTrigger:a6];

  return v11;
}

uint64_t sub_268388364(void *a1)
{
  v1 = [a1 taskTitles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v3 = sub_2683CFCA8();

  return v3;
}

uint64_t sub_2683883D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentTriggerModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_268388438(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for IntentTriggerModel(0);
  v6 = OUTLINED_FUNCTION_23(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v11 = (v10 - v9);
  sub_268388658(a3, v10 - v9, type metadata accessor for IntentTriggerModel);
  if (!*v11)
  {
    goto LABEL_8;
  }

  if (sub_2683CEB58())
  {
LABEL_3:

    goto LABEL_4;
  }

  if (sub_2683CEB68())
  {

    if (!sub_2683CEB28())
    {
      OUTLINED_FUNCTION_1_63();
      sub_2683886B8(v11, v15);
      v16 = OUTLINED_FUNCTION_0_0();
      return sub_2681DB21C(v16, v17);
    }

    goto LABEL_3;
  }

LABEL_4:
  if (sub_2683CEB58())
  {

    if (sub_2683CEB68() || sub_2683CEB28())
    {

      goto LABEL_8;
    }

    OUTLINED_FUNCTION_1_63();
    sub_2683886B8(v11, v19);
    v20 = OUTLINED_FUNCTION_0_0();
    return sub_2681DB404(v20, v21);
  }

LABEL_8:
  OUTLINED_FUNCTION_1_63();
  sub_2683886B8(v11, v12);
  v13 = a2;
  return a2;
}

id sub_26838858C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for IntentTriggerTemporalModelNLv3();
  v6 = OUTLINED_FUNCTION_23(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  sub_268388658(a3, v10 - v9, type metadata accessor for IntentTriggerTemporalModelNLv3);
  if (sub_268385338())
  {
    OUTLINED_FUNCTION_5_51();
    v11 = OUTLINED_FUNCTION_0_0();
    return sub_2681DB21C(v11, v12);
  }

  else
  {
    v14 = sub_268385528();
    OUTLINED_FUNCTION_5_51();
    if ((v14 & 1) == 0)
    {
      v17 = a2;
      return a2;
    }

    v15 = OUTLINED_FUNCTION_0_0();
    return sub_2681DB404(v15, v16);
  }
}

uint64_t sub_268388658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2683886B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_54()
{

  return MEMORY[0x2821BB0A8](v1 + 232, sub_268388554, v0, v2);
}

uint64_t OUTLINED_FUNCTION_5_51()
{

  return sub_2683886B8(v0, type metadata accessor for IntentTriggerTemporalModelNLv3);
}

void OUTLINED_FUNCTION_7_36()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D617A40);
}

void OUTLINED_FUNCTION_31_16()
{
  v4 = v2[35];
  v3 = v2[36];
  v6 = v2[33];
  v5 = v2[34];
  v7 = v2[32];
  *v3 = v0;
  v3[1] = v1;
}

uint64_t OUTLINED_FUNCTION_34_18@<X0>(uint64_t a1@<X8>)
{

  return sub_2681340E8(v1 + a1, v4 + 80, v3, v2);
}

void OUTLINED_FUNCTION_35_18(uint64_t a1@<X8>)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  *(v2 + 144) = 10;

  sub_2681913CC();
}

uint64_t OUTLINED_FUNCTION_37_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_38_14()
{
  v4 = *(v2 + 136);

  return sub_26812D9E0(v2 + 80, v1, v0);
}

uint64_t INTaskPriority.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E752ELL;
    case 1:
      return 0x67616C46746F6E2ELL;
    case 2:
      return 0x64656767616C662ELL;
  }

  sub_2683D0178();

  v2 = sub_2683D0568();
  MEMORY[0x26D616690](v2);

  MEMORY[0x26D616690](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_2683889B8()
{
  v0 = sub_2683CF258();
  if (v1)
  {
    if (v0 == 0xD000000000000015 && v1 == 0x80000002683FCFF0)
    {

      return 1;
    }

    v3 = sub_2683D0598();

    if (v3)
    {

      return 1;
    }
  }

  v4 = sub_2683CF258();
  if (!v5)
  {

    return 2;
  }

  if (v4 == 0xD000000000000013 && v5 == 0x80000002683FA8D0)
  {

    return 0;
  }

  v7 = sub_2683D0598();

  result = 0;
  if ((v7 & 1) == 0)
  {
    return 2;
  }

  return result;
}

uint64_t sub_268388ADC(uint64_t a1, char a2)
{
  *(v2 + 96) = a2;
  *(v2 + 64) = a1;
  v3 = sub_2683CB668();
  *(v2 + 72) = v3;
  v4 = *(v3 - 8);
  *(v2 + 80) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268388BA0, 0, 0);
}

id sub_268388BA0()
{
  v1 = 0xD000000000000020;
  v2 = *(v0 + 96);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 64), *(*(v0 + 64) + 24));
  if (!v2)
  {
    v1 = 0xD000000000000024;
    v4 = "REMINDERS_ACTIVITY_NOTIFICATION_BODY";
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v4 = "NOTES_ACTIVITY_NOTIFICATION_BODY";
LABEL_5:
    v5 = (v4 - 32);
    goto LABEL_7;
  }

  v5 = "exit with complete value";
  v1 = 0xD000000000000022;
LABEL_7:
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  sub_2683CB628();
  *(v0 + 16) = sub_2683CB5A8();
  *(v0 + 24) = v9;
  *(v0 + 32) = 45;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 95;
  *(v0 + 56) = 0xE100000000000000;
  v25 = sub_26812A1AC();
  v24 = MEMORY[0x277D837D0];
  v10 = sub_2683CFFF8();
  v12 = v11;
  (*(v7 + 8))(v6, v8);

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v14 = result;
    v15 = v5 | 0x8000000000000000;
    v16 = type metadata accessor for StringLocalizer();
    v17 = sub_2681E59E0(v1, v5 | 0x8000000000000000, 0x617A696C61636F4CLL, 0xEB00000000656C62, *(v3 + *(v16 + 20)), v10, v12, v14);
    v19 = v18;

    v20 = *(v0 + 88);
    if (v19)
    {

      v21 = *(v0 + 8);

      return v21(v17, v19);
    }

    else
    {
      sub_2681E6004();
      swift_allocError();
      *v22 = v1;
      v22[1] = v15;
      v22[2] = 0x617A696C61636F4CLL;
      v22[3] = 0xEB00000000656C62;
      v22[4] = v10;
      v22[5] = v12;
      swift_willThrow();

      v23 = *(v0 + 8);

      return v23();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268388E40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268388E80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268388F00()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2683CC528();
  v1[5] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F28, &unk_2683E6AB0);
  v1[8] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[9] = v9;
  v11 = *(v10 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26838901C()
{
  v82 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[3];
  v5 = sub_2683CF7E8();
  __swift_project_value_buffer(v5, qword_28027C958);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2683CF7C8();
  v8 = sub_2683CFE98();
  v9 = OUTLINED_FUNCTION_43(v8);
  v10 = v0[11];
  if (v9)
  {
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v81[0] = v80;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2683CFAD8();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_2681610A0(v15, v17, v81);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v7, v2, "[CreateNote HandleIntentStrategy] Creating intent handled response for: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v19 = v0[8];
    v20 = v0[9];

    (*(v20 + 8))(v10, v19);
  }

  v21 = v0[8];
  v22 = v0[3];
  v23 = sub_2683CC818();
  v24 = [v23 createdNote];
  v0[12] = v24;

  if (!v24)
  {
    v59 = sub_2683CF7C8();
    v60 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_43(v60))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v61, v62, "[CreateNote HandleIntentStrategy] Created Note is nil in the intent response");
      OUTLINED_FUNCTION_38();
    }

    sub_26812C6B8();
    swift_allocError();
    *v63 = 0u;
    *(v63 + 16) = 0u;
    *(v63 + 32) = 4;
    swift_willThrow();
    OUTLINED_FUNCTION_57_8();

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X1, X16 }
  }

  if (*(v0[4] + 136))
  {
    v25 = v0[8];
    v26 = v0[3];
    v27 = sub_2683CC848();
    sub_2682176E4(v27);
  }

  v28 = v0[7];
  v29 = v0[8];
  sub_2682EBF74(v0[3]);
  sub_2683CC828();
  LOBYTE(v81[0]) = 1;
  v30 = sub_26812A998(v81);

  if (v30 & 1) != 0 && (v31 = v0[4], v32 = v31[16], __swift_project_boxed_opaque_existential_1(v31 + 12, v31[15]), OUTLINED_FUNCTION_74_0(), (sub_2683CC0B8()))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[13] = v33;
    *v33 = v34;
    v33[1] = sub_2683895A0;
    v35 = v0[7];
    v36 = v0[4];
    v37 = v0[2];
    OUTLINED_FUNCTION_64();

    return sub_268389C28(v38, v39, v40);
  }

  else
  {
    v43 = v0[4];
    v44 = v43[22];
    __swift_project_boxed_opaque_existential_1(v43 + 18, v43[21]);
    v45 = *(v44 + 56);
    v46 = OUTLINED_FUNCTION_74_0();
    if (v47(v46))
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[14] = v48;
      *v48 = v49;
      v48[1] = sub_268389724;
      v50 = v0[7];
      v51 = v0[3];
      v52 = v0[4];
      v53 = v0[2];
      OUTLINED_FUNCTION_64();

      return sub_26838B1E4(v54, v55, v56, v57);
    }

    else
    {
      v66 = v0[8];
      v67 = v0[3];
      sub_2683CC828();
      v68 = sub_2681E73A0();

      v0[16] = sub_2683CC828();
      v0[17] = sub_2683CC848();
      if (v68)
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_10_2();
        v0[18] = v69;
        *v69 = v70;
        OUTLINED_FUNCTION_27_18(v69);
        OUTLINED_FUNCTION_64();

        return sub_26838CA1C(v71, v72, v73, v74, v75);
      }

      else
      {
        swift_task_alloc();
        OUTLINED_FUNCTION_10_2();
        v0[20] = v77;
        *v77 = v78;
        OUTLINED_FUNCTION_27_18(v77);
        OUTLINED_FUNCTION_64();

        return sub_26838D0CC();
      }
    }
  }
}

uint64_t sub_2683895A0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268389684()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_74_0();
  v8(v7);

  OUTLINED_FUNCTION_7_4();

  return v9();
}

uint64_t sub_268389724()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268389820()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = v4[18];
  v6 = v4[17];
  v7 = v4[16];
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v10 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268389958()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[17];
  v7 = v4[16];
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v10 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268389A90()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_44_14();
  v2 = *(v0 + 8);
  v3 = OUTLINED_FUNCTION_41_0();
  v4(v3);
  v5 = *(v1 + 120);
  OUTLINED_FUNCTION_57_8();

  OUTLINED_FUNCTION_40();

  return v6();
}

uint64_t sub_268389B18()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_44_14();
  v2 = *(v0 + 8);
  v3 = OUTLINED_FUNCTION_41_0();
  v4(v3);
  v5 = *(v1 + 152);
  OUTLINED_FUNCTION_57_8();

  OUTLINED_FUNCTION_40();

  return v6();
}

uint64_t sub_268389BA0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_44_14();
  v2 = *(v0 + 8);
  v3 = OUTLINED_FUNCTION_41_0();
  v4(v3);
  v5 = *(v1 + 168);
  OUTLINED_FUNCTION_57_8();

  OUTLINED_FUNCTION_40();

  return v6();
}

uint64_t sub_268389C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = type metadata accessor for Snippet();
  v4[26] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v7 = sub_2683CC9A8();
  v4[31] = v7;
  v8 = *(v7 - 8);
  v4[32] = v8;
  v9 = *(v8 + 64) + 15;
  v4[33] = swift_task_alloc();
  v10 = sub_2683CC138();
  v4[34] = v10;
  v11 = *(v10 - 8);
  v4[35] = v11;
  v12 = *(v11 + 64) + 15;
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v4[41] = v16;
  v4[42] = *(v16 + 64);
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v17 = sub_2683CB438();
  v4[51] = v17;
  v18 = *(v17 - 8);
  v4[52] = v18;
  v19 = *(v18 + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268389F78, 0, 0);
}

uint64_t sub_26838A7B0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26838A89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v25 = v24[56];
  v26 = v24[49];
  v50 = v24[50];
  v27 = v24[37];
  v28 = v24[34];
  v29 = v24[35];
  v30 = v24[32];
  v31 = v24[33];
  v33 = v24[30];
  v32 = v24[31];
  v34 = v24[29];

  sub_26814332C(v34);
  sub_26814332C(v33);
  v35 = *(v30 + 8);
  v36 = OUTLINED_FUNCTION_32_3();
  v37(v36);
  v38 = *(v29 + 8);
  v39 = OUTLINED_FUNCTION_74_0();
  v40(v39);
  OUTLINED_FUNCTION_23_10();
  sub_2681433DC(v50, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_1_64();
  sub_2681433DC(v34, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v29 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v30 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v50, a22, a23, a24);
}

uint64_t sub_26838AA64()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 464);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26838AB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_38_15();
  v29 = *(v25 + 224);

  sub_26814332C(v29);
  v30 = OUTLINED_FUNCTION_40_14();
  v31(v30);
  v32 = *(v27 + 8);
  v33 = OUTLINED_FUNCTION_74_0();
  v34(v33);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_1_64();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26838ACE0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26838ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_38_15();
  v29 = *(v25 + 216);

  sub_26814332C(v29);
  v30 = OUTLINED_FUNCTION_40_14();
  v31(v30);
  v32 = *(v27 + 8);
  v33 = OUTLINED_FUNCTION_74_0();
  v34(v33);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_1_64();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26838AF5C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 480);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26838B040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v26 = v24[56];
  v27 = v24[49];
  v28 = v24[50];
  v29 = v24[37];
  v30 = v24[34];
  v31 = v24[35];
  v33 = v24[32];
  v32 = v24[33];
  v34 = v24[31];

  v35 = *(v33 + 8);
  v36 = OUTLINED_FUNCTION_32_3();
  v37(v36);
  v38 = *(v31 + 8);
  v39 = OUTLINED_FUNCTION_74_0();
  v40(v39);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_1_64();
  sub_2681433DC(v33 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v28, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26838B1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for Snippet();
  v5[27] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v8 = sub_2683CC9A8();
  v5[32] = v8;
  v9 = *(v8 - 8);
  v5[33] = v9;
  v10 = *(v9 + 64) + 15;
  v5[34] = swift_task_alloc();
  v11 = sub_2683CC138();
  v5[35] = v11;
  v12 = *(v11 - 8);
  v5[36] = v12;
  v13 = *(v12 + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0) - 8) + 64) + 15;
  v5[39] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0) - 8) + 64) + 15;
  v5[40] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v5[41] = swift_task_alloc();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v5[42] = v17;
  v5[43] = *(v17 + 64);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26838B4D0, 0, 0);
}

uint64_t sub_26838B4D0()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[24];
  v2 = *(v0[26] + 88);
  sub_2683CF138();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F28, &unk_2683E6AB0);
  v3 = sub_2683CC828();
  v4 = sub_26818F730(v3);
  v0[52] = v4;
  v5 = sub_2683CC848();
  v6 = [v5 groupName];

  if (v6)
  {
  }

  v7 = v6 != 0;
  v8 = v0[23];
  type metadata accessor for NotebookNoteConcept(0);
  v9 = sub_268397584(v8);
  v0[53] = v9;
  v10 = swift_task_alloc();
  v0[54] = v10;
  *v10 = v0;
  v10[1] = sub_26838B61C;

  return sub_26812B948(v4, v7, v9);
}

uint64_t sub_26838B61C()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = v5[54];
  v7 = v5[53];
  v8 = v5[52];
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  v3[55] = v11;
  v3[56] = v0;

  if (v0)
  {
    v13 = v3[50];
    v12 = v3[51];
    v15 = v3[48];
    v14 = v3[49];
    v16 = v3[46];
    v17 = v3[47];
    v19 = v3[44];
    v18 = v3[45];
    v27 = v3[41];
    v28 = v3[40];
    v29 = v3[39];
    v30 = v3[38];
    v31 = v3[37];
    v32 = v3[34];
    v33 = v3[31];
    v34 = v3[30];
    v21 = v3 + 28;
    v20 = v3[28];
    v35 = v21[1];

    OUTLINED_FUNCTION_40();

    return v22();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v24, v25, v26);
  }
}

uint64_t sub_26838BFB8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 472);
  v6 = *(v4 + 456);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26838C0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v23 = v22[58];
  v24 = v22[50];
  v48 = v22[51];
  v25 = v22[38];
  v26 = v22[35];
  v27 = v22[36];
  v28 = v22[33];
  v29 = v22[34];
  v31 = v22[31];
  v30 = v22[32];
  v32 = v22[30];

  sub_26814332C(v32);
  sub_26814332C(v31);
  v33 = *(v28 + 8);
  v34 = OUTLINED_FUNCTION_32_3();
  v35(v34);
  v36 = *(v27 + 8);
  v37 = OUTLINED_FUNCTION_74_0();
  v38(v37);
  OUTLINED_FUNCTION_23_10();
  sub_2681433DC(v48, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_2_61();
  sub_2681433DC(v32, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v27 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v28 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v48, a20, a21, a22);
}

uint64_t sub_26838C278()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *(v4 + 456);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26838C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_35_19();
  v26 = *(v23 + 232);

  sub_26814332C(v26);
  v27 = OUTLINED_FUNCTION_40_14();
  v28(v27);
  v29 = *(v24 + 8);
  v30 = OUTLINED_FUNCTION_74_0();
  v31(v30);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_2_61();
  sub_2681433DC(v24 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26838C500()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 488);
  v6 = *(v4 + 456);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26838C600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_35_19();
  v26 = *(v23 + 224);

  sub_26814332C(v26);
  v27 = OUTLINED_FUNCTION_40_14();
  v28(v27);
  v29 = *(v24 + 8);
  v30 = OUTLINED_FUNCTION_74_0();
  v31(v30);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_2_61();
  sub_2681433DC(v24 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26838C788()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 496);
  v3 = *(v1 + 456);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26838C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v24 = v22[58];
  v25 = v22[50];
  v26 = v22[51];
  v27 = v22[38];
  v28 = v22[35];
  v29 = v22[36];
  v31 = v22[33];
  v30 = v22[34];
  v32 = v22[32];

  v33 = *(v31 + 8);
  v34 = OUTLINED_FUNCTION_32_3();
  v35(v34);
  v36 = *(v29 + 8);
  v37 = OUTLINED_FUNCTION_74_0();
  v38(v37);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_2_61();
  sub_2681433DC(v31 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v23, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v26, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26838CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v8 = sub_2683CC598();
  v6[19] = v8;
  v9 = *(v8 - 8);
  v6[20] = v9;
  v10 = *(v9 + 64) + 15;
  v6[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26838CB1C, 0, 0);
}

uint64_t sub_26838CB1C()
{
  OUTLINED_FUNCTION_15();
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = sub_2683CF7E8();
  __swift_project_value_buffer(v1, qword_28027C958);
  v2 = sub_2683CF7C8();
  v3 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_43(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11_17(&dword_2680EB000, v4, v5, "[CreateNote HandleIntentStrategy] Creating response for  first party");
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 136);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);

  sub_268129504(0, &qword_280253340, 0x277D47600);
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D2250;
  *(inited + 32) = v8;
  v10 = v8;
  *(v0 + 184) = sub_26836A8AC(inited);
  v11 = *(v6 + 80);
  sub_2683CF258();
  v13 = v12;
  if (v12)
  {
    sub_2683CF138();
    v13 = sub_26818FE4C();
  }

  *(v0 + 192) = v13;
  v14 = [*(v0 + 120) groupName];
  v15 = v14;
  if (v14)
  {
  }

  v16 = v15 != 0;
  v17 = *(v0 + 112);
  type metadata accessor for NotebookNoteConcept(0);
  v18 = sub_268397584(v17);
  *(v0 + 200) = v18;
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 208) = v19;
  *v19 = v20;
  v19[1] = sub_26838CD38;
  v21 = *(v0 + 168);

  return sub_2683B6F78(v21, v13, v16, v18);
}

uint64_t sub_26838CD38()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = v4[26];
  v6 = v4[25];
  v7 = v4[24];
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v10 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_26838CE74()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v19 = *(v0 + 168);
  v20 = *(v0 + 160);
  v3 = *(v0 + 144);
  v21 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 96);
  v7 = v4[16];
  __swift_project_boxed_opaque_existential_1(v4 + 12, v4[15]);
  sub_2683CC0A8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2683D2250;
  *(v8 + 32) = v1;
  v9 = sub_2683CC528();
  OUTLINED_FUNCTION_1(v9);
  (*(v10 + 16))(v3, v5, v9);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_11_23(v11, v12, v13, v9);
  v14 = sub_2683CCC98();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v15 = MEMORY[0x277D5C1D8];
  v6[3] = v14;
  v6[4] = v15;
  __swift_allocate_boxed_opaque_existential_0(v6);
  v16 = v1;
  sub_2683CC328();

  sub_2681433DC(v0 + 56, &qword_28024D408, &qword_2683D2470);
  sub_2681433DC(v3, &qword_28024D400, &qword_2683D2460);
  (*(v20 + 8))(v19, v21);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26838D058()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);

  OUTLINED_FUNCTION_40();
  v4 = *(v0 + 216);

  return v3();
}

uint64_t sub_26838D0CC()
{
  OUTLINED_FUNCTION_14();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = *(*(sub_2683CC138() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = sub_2683CC9A8();
  v1[14] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[15] = v9;
  v11 = *(v10 + 64) + 15;
  v1[16] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26838D1AC()
{
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = sub_2683CF7E8();
  __swift_project_value_buffer(v1, qword_28027C958);
  v2 = sub_2683CF7C8();
  v3 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_43(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_11_17(&dword_2680EB000, v4, v5, "[CreateNote HandleIntentStrategy] Creating response for third party");
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 72);

  v8 = v7;

  v9 = OUTLINED_FUNCTION_41_0();
  v11 = sub_2681D2F90(v9, v10);
  v13 = v12;
  sub_268129504(0, &qword_28024D340, 0x277CD4058);

  OUTLINED_FUNCTION_24();
  v17 = sub_268175270(v14, v15, v16, 0, 0, 0, 0, 0, 0, 0, 0, 0, v11, v13);
  v18 = [v17 _metadata];
  if (v18)
  {
    v19 = v18;
    [v18 setBackgroundLaunch_];
  }

  v20 = [v17 _metadata];

  if (v20)
  {
    sub_2683CF258();
    if (v21)
    {
      v22 = sub_2683CFA68();
    }

    else
    {
      v22 = 0;
    }

    [v20 setLaunchId_];
  }

  v23 = *(v0 + 96);
  v24 = *(v0 + 80);
  sub_268129504(0, &unk_28024F9B0, 0x277D473F0);
  v25 = sub_2683CFF28();

  v26 = sub_2683CFF78();
  v28 = v27;

  *(v0 + 136) = v28;
  sub_26813CA00(v23, v0 + 16);
  v29 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v30 = [v24 groupName];
  v31 = v30;
  if (v30)
  {
  }

  v32 = *(v0 + 64);
  v33 = *v29;
  v34 = *(v0 + 72);

  v35 = swift_task_alloc();
  *(v0 + 144) = v35;
  *v35 = v0;
  v35[1] = sub_26838D4E0;
  v37 = *(v0 + 64);
  v36 = *(v0 + 72);

  return sub_26834FF28(v31 != 0, v33, v36, v37, v26, v28);
}

uint64_t sub_26838D4E0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v10 + 152) = v9;
  *(v10 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26838D5FC()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2683CC108();
  *(swift_task_alloc() + 16) = v4;
  sub_2683CC8E8();

  v5 = v3[8];
  v6 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v5);
  v7 = *(MEMORY[0x277D5BE50] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[21] = v8;
  *v8 = v9;
  v8[1] = sub_26838D718;
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[7];

  return MEMORY[0x2821BB480](v12, v10, v11, v5, v6);
}

uint64_t sub_26838D718()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26838D814()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[13];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_26838D884()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_41_0();
  v7(v6);

  OUTLINED_FUNCTION_7_4();

  return v8();
}

uint64_t sub_26838D910()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);

  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_41_0();
  v6(v5);
  v7 = *(v0 + 176);
  v8 = *(v0 + 128);
  v9 = *(v0 + 104);

  OUTLINED_FUNCTION_40();

  return v10();
}

uint64_t sub_26838D9A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251F28, &unk_2683E6AB0);
  sub_2683CC828();
  v11 = 1;
  v6 = sub_26812A998(&v11);

  if ((v6 & 1) == 0)
  {
    return static Snippet.createNote3p(note:record:)(a1, a2, a3);
  }

  v7 = sub_2683BA54C(a1);
  if (v8)
  {
    *a3 = v7;
    *(a3 + 8) = v8;
    type metadata accessor for Snippet();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_26812C6B8();
    swift_allocError();
    *v10 = 0xD000000000000017;
    *(v10 + 8) = 0x8000000268401B00;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 3;
    return swift_willThrow();
  }
}

uint64_t sub_26838DABC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_2683CC528();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  return sub_2683CC938();
}

uint64_t sub_26838DB94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_268388F00();
}

uint64_t sub_26838DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C0D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26813F058;

  return MEMORY[0x2821BBB48](a1, a2, a3, a4);
}

unint64_t sub_26838DD00()
{
  result = qword_280253FC8;
  if (!qword_280253FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253FC8);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = (v5 + 24) & ~v5;
  v9 = (v7 + v5 + v8) & ~v5;
  v10 = *(v0 + 16);

  v11 = v0 + v8;
  v12 = type metadata accessor for Snippet();
  v13 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9(v21);
        (*(v22 + 8))(v11);
        v23 = type metadata accessor for Snippet.AppPunchout();
        OUTLINED_FUNCTION_8_5(v23);
        goto LABEL_41;
      case 1u:
        v107 = *v11;

        v108 = *(v11 + 24);
        goto LABEL_41;
      case 2u:
        v91 = *v11;

        v92 = *(v11 + 16);

        v93 = *(v11 + 32);

        v94 = *(v11 + 48);

        OUTLINED_FUNCTION_38_0();
        if (!v90)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:
        v99 = *v11;

        v100 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v101 = v100[5];
        OUTLINED_FUNCTION_31_1();
        type metadata accessor for Snippet.SectionHeading();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v216 = sub_2683CB528();
            OUTLINED_FUNCTION_0_9(v216);
            (*(v217 + 8))(v1);
            break;
          case 1u:
            v218 = *(v1 + 8);

            v219 = *(v1 + 24);

            v220 = *(v1 + 40);

            if (*(v1 + 96) != 255)
            {
              v221 = *(v1 + 80);
              v222 = *(v1 + 88);
              sub_26814304C();
            }

            break;
          case 2u:
          case 3u:
            v102 = *(v1 + 8);

            break;
          default:
            break;
        }

        v223 = v100[6];
        v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9(v224);
        (*(v225 + 8))(v11 + v223);
        v199 = v100[7];
        v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        goto LABEL_89;
      case 4u:
        v268 = v9;
        v54 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v54);
        (*(v55 + 8))(v11);
        v56 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v56);

        OUTLINED_FUNCTION_11_5(v56[6]);

        OUTLINED_FUNCTION_11_5(v56[7]);

        v57 = v11 + v56[8];
        if (*(v57 + 24))
        {
          v58 = *(v57 + 8);

          v59 = *(v57 + 24);

          v60 = *(v57 + 40);

          if (*(v57 + 96) != 255)
          {
            v61 = *(v57 + 80);
            v62 = *(v57 + 88);
            sub_26814304C();
          }
        }

        v63 = v56[9];
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v64);
        v66 = *(v65 + 8);
        v7 = v65 + 8;
        v66(v11 + v63, v64);
        v67 = OUTLINED_FUNCTION_43_0(v56[10]);
        (v66)(v67);
        v68 = OUTLINED_FUNCTION_43_0(v56[11]);
        (v66)(v68);
        v69 = v11 + v56[12];
        v70 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v70))
        {
          v71 = *(v69 + 8);

          v264 = *(v2 + 20);
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v72);
          (*(v73 + 8))(v69 + v264);
          v66(v69 + *(v2 + 24), v64);
        }

        v74 = v56[13];
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v75);
        (*(v76 + 8))(&v74[v11]);
        if (OUTLINED_FUNCTION_39_0())
        {

          v77 = *(v74 + 3);
        }

        v78 = *(v11 + v56[15]);

        v79 = v56[16];
        v80 = OUTLINED_FUNCTION_31_1();
        v81 = type metadata accessor for Snippet.Reminder.AppLink(v80);
        if (!OUTLINED_FUNCTION_16_4(v81))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v74, *(v74 + 1));
          }

          else
          {
            v230 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v230);
            (*(v231 + 8))(v74);
          }
        }

        v232 = *(v11 + v56[17]);

        goto LABEL_104;
      case 5u:
        v114 = *v11;

        if (*(v11 + 32))
        {
          v115 = *(v11 + 16);

          v116 = *(v11 + 32);

          v117 = *(v11 + 48);

          OUTLINED_FUNCTION_38_0();
          if (!v90)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v118 = *(type metadata accessor for Snippet.AddTasks3p() + 24);
        goto LABEL_76;
      case 6u:
        v268 = v9;
        v149 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v149);
        (*(v150 + 8))(v11);
        v151 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v151);

        OUTLINED_FUNCTION_11_5(v151[6]);

        OUTLINED_FUNCTION_11_5(v151[7]);

        v152 = v11 + v151[8];
        if (*(v152 + 24))
        {
          v153 = *(v152 + 8);

          v154 = *(v152 + 24);

          v155 = *(v152 + 40);

          if (*(v152 + 96) != 255)
          {
            v156 = *(v152 + 80);
            v157 = *(v152 + 88);
            sub_26814304C();
          }
        }

        v158 = v151[9];
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v159);
        v161 = *(v160 + 8);
        v7 = v160 + 8;
        v161(v11 + v158, v159);
        v162 = OUTLINED_FUNCTION_43_0(v151[10]);
        (v161)(v162);
        v163 = OUTLINED_FUNCTION_43_0(v151[11]);
        (v161)(v163);
        v164 = v11 + v151[12];
        v165 = type metadata accessor for Snippet.Reminder.LocationTrigger(0);
        if (!OUTLINED_FUNCTION_48_0(v165))
        {
          v166 = *(v164 + 8);

          v265 = *(v2 + 20);
          v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v167);
          (*(v168 + 8))(v164 + v265);
          v161(v164 + *(v2 + 24), v159);
        }

        v169 = v151[13];
        v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v170);
        (*(v171 + 8))(&v169[v11]);
        if (OUTLINED_FUNCTION_39_0())
        {

          v172 = *(v169 + 3);
        }

        v173 = *(v11 + v151[15]);

        v174 = v151[16];
        v175 = OUTLINED_FUNCTION_31_1();
        v176 = type metadata accessor for Snippet.Reminder.AppLink(v175);
        if (!OUTLINED_FUNCTION_16_4(v176))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v169, *(v169 + 1));
          }

          else
          {
            v241 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v241);
            (*(v242 + 8))(v169);
          }
        }

        v243 = *(v11 + v151[17]);

        v244 = v11 + *(type metadata accessor for Snippet.SetTaskAttribute3p() + 20);
        v245 = *(v244 + 8);

        v246 = *(type metadata accessor for Snippet.Interaction() + 20);
        v247 = sub_2683CB828();
        OUTLINED_FUNCTION_0_9(v247);
        (*(v248 + 8))(v244 + v246);
LABEL_104:
        v9 = v268;
        break;
      case 7u:
        v104 = *(v11 + 8);
        goto LABEL_41;
      case 8u:
        v194 = *(v11 + 8);

        v195 = *(v11 + 24);

        v196 = *(v11 + 40);

        v197 = *(v11 + 56);

        v118 = *(type metadata accessor for Snippet.CreateNote3p() + 20);
        goto LABEL_76;
      case 9u:
        v84 = *v11;

        v85 = *(v11 + 32);
LABEL_41:

        break;
      case 0xAu:
        v183 = type metadata accessor for Snippet.SectionHeading();
        v184 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v184, v185, v183))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v256 = sub_2683CB528();
              OUTLINED_FUNCTION_0_9(v256);
              (*(v257 + 8))(v11);
              break;
            case 1u:
              v258 = *(v11 + 8);

              v259 = *(v11 + 24);

              v260 = *(v11 + 40);

              if (*(v11 + 96) != 255)
              {
                v261 = *(v11 + 80);
                v262 = *(v11 + 88);
                sub_26814304C();
              }

              break;
            case 2u:
            case 3u:
              v202 = *(v11 + 8);

              break;
            default:
              break;
          }
        }

        v186 = type metadata accessor for Snippet.SearchResult3p();
        v187 = *(v11 + v186[5]);

        v188 = *(v11 + v186[6]);

        v118 = v186[8];
LABEL_76:
        v11 += v118;
        v198 = *(v11 + 8);

        v199 = *(type metadata accessor for Snippet.Interaction() + 20);
        v200 = sub_2683CB828();
LABEL_89:
        OUTLINED_FUNCTION_0_9(v200);
        (*(v226 + 8))(v11 + v199);
        break;
      default:
        break;
    }
  }

  v15 = (v0 + v9);
  v16 = OUTLINED_FUNCTION_33_1();
  if (!__swift_getEnumTagSinglePayload(v16, v17, v12))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E780, &unk_2683D8DC0);
        OUTLINED_FUNCTION_0_9(v18);
        (*(v19 + 8))(v0 + v9);
        v20 = type metadata accessor for Snippet.AppPunchout();
        OUTLINED_FUNCTION_8_5(v20);
        goto LABEL_92;
      case 1u:
        v105 = *v15;

        v106 = v15[3];
        goto LABEL_92;
      case 2u:
        v86 = *v15;

        v87 = v15[2];

        v88 = v15[4];

        v89 = v15[6];

        OUTLINED_FUNCTION_38_0();
        if (!v90)
        {
          OUTLINED_FUNCTION_50();
        }

        break;
      case 3u:
        v95 = *v15;

        v96 = type metadata accessor for Snippet.ReminderSearchResult(0);
        v97 = v15 + v96[5];
        type metadata accessor for Snippet.SectionHeading();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v203 = sub_2683CB528();
            OUTLINED_FUNCTION_0_9(v203);
            (*(v204 + 8))(v97);
            break;
          case 1u:
            v205 = *(v97 + 8);

            v206 = *(v97 + 24);

            v207 = *(v97 + 40);

            if (*(v97 + 96) != 255)
            {
              v208 = *(v97 + 80);
              v209 = *(v97 + 88);
              sub_26814304C();
            }

            break;
          case 2u:
          case 3u:
            v98 = *(v97 + 8);

            break;
          default:
            break;
        }

        v210 = v96[6];
        v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_0_9(v211);
        (*(v212 + 8))(v15 + v210);
        v213 = v96[7];
        v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_0_9(v214);
        (*(v215 + 8))(v15 + v213);
        break;
      case 4u:
        v24 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v24);
        (*(v25 + 8))(v0 + v9);
        v26 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v26);

        OUTLINED_FUNCTION_11_5(v26[6]);

        OUTLINED_FUNCTION_11_5(v26[7]);

        v27 = v15 + v26[8];
        if (*(v27 + 24))
        {
          v28 = *(v27 + 8);

          v29 = *(v27 + 24);

          v30 = *(v27 + 40);

          if (*(v27 + 96) != 255)
          {
            v31 = *(v27 + 80);
            v32 = *(v27 + 88);
            sub_26814304C();
          }
        }

        v33 = v26[9];
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v34);
        v36 = *(v35 + 8);
        v36(v15 + v33, v34);
        v37 = OUTLINED_FUNCTION_44_0(v26[10]);
        (v36)(v37);
        v38 = OUTLINED_FUNCTION_44_0(v26[11]);
        (v36)(v38);
        v39 = v26[12];
        v40 = OUTLINED_FUNCTION_31_1();
        v41 = type metadata accessor for Snippet.Reminder.LocationTrigger(v40);
        if (!OUTLINED_FUNCTION_16_4(v41))
        {
          v42 = *(v33 + 8);

          v266 = v7;
          v43 = *(v9 + 20);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v44);
          v46 = v33 + v43;
          v7 = v266;
          (*(v45 + 8))(v46);
          v36((v33 + *(v9 + 24)), v34);
        }

        v47 = v26[13];
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v48);
        (*(v49 + 8))(v15 + v47);
        if (OUTLINED_FUNCTION_42_0())
        {

          v50 = *(v47 + 24);
        }

        v51 = *(v15 + v26[15]);

        v52 = v15 + v26[16];
        v53 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v53))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v52, *(v52 + 8));
          }

          else
          {
            v227 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v227);
            (*(v228 + 8))(v52);
          }
        }

        v229 = *(v15 + v26[17]);
        goto LABEL_92;
      case 5u:
        v109 = *v15;

        if (v15[4])
        {
          v110 = v15[2];

          v111 = v15[4];

          v112 = v15[6];

          OUTLINED_FUNCTION_38_0();
          if (!v90)
          {
            OUTLINED_FUNCTION_50();
          }
        }

        v113 = *(type metadata accessor for Snippet.AddTasks3p() + 24);
        goto LABEL_98;
      case 6u:
        v119 = sub_2683CB598();
        OUTLINED_FUNCTION_0_9(v119);
        (*(v120 + 8))(v0 + v9);
        v121 = type metadata accessor for Snippet.Reminder(0);
        OUTLINED_FUNCTION_8_5(v121);

        OUTLINED_FUNCTION_11_5(v121[6]);

        OUTLINED_FUNCTION_11_5(v121[7]);

        v122 = v15 + v121[8];
        if (*(v122 + 24))
        {
          v123 = *(v122 + 8);

          v124 = *(v122 + 24);

          v125 = *(v122 + 40);

          if (*(v122 + 96) != 255)
          {
            v126 = *(v122 + 80);
            v127 = *(v122 + 88);
            sub_26814304C();
          }
        }

        v128 = v121[9];
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A0, &unk_2683D2C30);
        OUTLINED_FUNCTION_1(v129);
        v131 = *(v130 + 8);
        v131(v15 + v128, v129);
        v132 = OUTLINED_FUNCTION_44_0(v121[10]);
        (v131)(v132);
        v133 = OUTLINED_FUNCTION_44_0(v121[11]);
        (v131)(v133);
        v134 = v121[12];
        v135 = OUTLINED_FUNCTION_31_1();
        v136 = type metadata accessor for Snippet.Reminder.LocationTrigger(v135);
        if (!OUTLINED_FUNCTION_16_4(v136))
        {
          v137 = *(v128 + 8);

          v267 = v7;
          v138 = *(v9 + 20);
          v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7A0, &qword_2683D2CB0);
          OUTLINED_FUNCTION_0_9(v139);
          v141 = v128 + v138;
          v7 = v267;
          (*(v140 + 8))(v141);
          v131((v128 + *(v9 + 24)), v129);
        }

        v142 = v121[13];
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5A8, &unk_2683D2C40);
        OUTLINED_FUNCTION_0_9(v143);
        (*(v144 + 8))(v15 + v142);
        if (OUTLINED_FUNCTION_42_0())
        {

          v145 = *(v142 + 24);
        }

        v146 = *(v15 + v121[15]);

        v147 = v15 + v121[16];
        v148 = type metadata accessor for Snippet.Reminder.AppLink(0);
        if (!OUTLINED_FUNCTION_49_0(v148))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_268143054(*v147, *(v147 + 8));
          }

          else
          {
            v233 = sub_2683CB438();
            OUTLINED_FUNCTION_0_9(v233);
            (*(v234 + 8))(v147);
          }
        }

        v235 = *(v15 + v121[17]);

        Note3p = type metadata accessor for Snippet.SetTaskAttribute3p();
        goto LABEL_97;
      case 7u:
        v103 = v15[1];
        goto LABEL_92;
      case 8u:
        v189 = v15[1];

        v190 = v15[3];

        v191 = v15[5];

        v192 = v15[7];

        Note3p = type metadata accessor for Snippet.CreateNote3p();
LABEL_97:
        v113 = *(Note3p + 20);
        goto LABEL_98;
      case 9u:
        v82 = *v15;

        v83 = v15[4];
LABEL_92:

        break;
      case 0xAu:
        v177 = type metadata accessor for Snippet.SectionHeading();
        v178 = OUTLINED_FUNCTION_33_1();
        if (!__swift_getEnumTagSinglePayload(v178, v179, v177))
        {
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v249 = sub_2683CB528();
              OUTLINED_FUNCTION_0_9(v249);
              (*(v250 + 8))(v0 + v9);
              break;
            case 1u:
              v251 = v15[1];

              v252 = v15[3];

              v253 = v15[5];

              if (*(v15 + 96) != 255)
              {
                v254 = v15[10];
                v255 = v15[11];
                sub_26814304C();
              }

              break;
            case 2u:
            case 3u:
              v201 = v15[1];

              break;
            default:
              break;
          }
        }

        v180 = type metadata accessor for Snippet.SearchResult3p();
        v181 = *(v15 + v180[5]);

        v182 = *(v15 + v180[6]);

        v113 = v180[8];
LABEL_98:
        v236 = v15 + v113;
        v237 = *(v15 + v113 + 8);

        v238 = *(type metadata accessor for Snippet.Interaction() + 20);
        v239 = sub_2683CB828();
        OUTLINED_FUNCTION_0_9(v239);
        (*(v240 + 8))(v236 + v238);
        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v9 + v7, v5 | 7);
}

void OUTLINED_FUNCTION_1_64()
{
  v2 = v0[54];
  v3 = v0[55];
  v4 = v0[53];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[48];
  v11 = v0[47];
  v12 = v0[46];
  v13 = v0[45];
  v14 = v0[44];
  v9 = v0[39];
  v8 = v0[40];
  v10 = v0[38];
  v15 = v0[43];
  v16 = v0[37];
  v17 = v0[36];
  v18 = v0[33];
  v19 = v0[30];
  v20 = v0[29];
  v21 = v0[28];
  *(v1 - 80) = v0[27];
}

void OUTLINED_FUNCTION_2_61()
{
  v1 = v0[55];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  v10 = v0[46];
  v11 = v0[45];
  v8 = v0[40];
  v7 = v0[41];
  v9 = v0[39];
  v12 = v0[44];
  v13 = v0[38];
  v14 = v0[37];
  v15 = v0[34];
  v16 = v0[31];
  v17 = v0[30];
  v18 = v0[29];
  v19 = v0[28];
}

uint64_t OUTLINED_FUNCTION_24_21()
{

  return sub_2681433DC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_27_18(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[7];
  v4 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_35_19()
{
  result = v0[58];
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[32];
  return result;
}

uint64_t OUTLINED_FUNCTION_38_15()
{
  result = v0[56];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  return result;
}

void OUTLINED_FUNCTION_44_14()
{
  v2 = v0[12];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
}

uint64_t OUTLINED_FUNCTION_53_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(result + 104) = 2;
  *(result + 112) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_54_6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(result + 56) = a10;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_8()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
}

uint64_t sub_26838F0B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = result;
  v5 = 0;
  v18 = *(a3 + 16);
  v6 = (a3 + 56);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v18 == v5)
    {

      return v7;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v6 - 3);
    v8 = *(v6 - 2);
    v10 = *(v6 - 1);
    v11 = *v6;
    v19[0] = v9;
    v19[1] = v8;
    v19[2] = v10;
    v19[3] = v11;

    v12 = v17(v19);
    if (v3)
    {

      return v7;
    }

    if (v12)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v20 = v7;
      if ((result & 1) == 0)
      {
        result = sub_268390920(0, *(v7 + 16) + 1, 1);
        v7 = v20;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      v3 = 0;
      if (v14 >= v13 >> 1)
      {
        result = sub_268390920((v13 > 1), v14 + 1, 1);
        v3 = 0;
        v7 = v20;
      }

      *(v7 + 16) = v14 + 1;
      v15 = (v7 + 32 * v14);
      v15[4] = v9;
      v15[5] = v8;
      v15[6] = v10;
      v15[7] = v11;
      v4 = a3;
    }

    else
    {

      v3 = 0;
    }

    v6 += 4;
    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_26838F274(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  v12 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_13;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    v9 = *(a3 + v6 + 32);
    v13 = v9;
    result = v5(&v13);
    if (v3)
    {

LABEL_13:

      return v8;
    }

    if (result)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v14 = v8;
      if ((result & 1) == 0)
      {
        result = sub_268390BD0(0, *(v8 + 16) + 1, 1);
        v8 = v14;
      }

      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_268390BD0((v10 > 1), v11 + 1, 1);
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      *(v8 + v11 + 32) = v9;
      v5 = v12;
    }

    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_26838F3A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x277D84F90];
  v14 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_2681EFE4C(v8, __src);
    v10 = v5(__src);
    if (v3)
    {
      sub_2681EFEA8(__src);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      memcpy(__dst, __src, sizeof(__dst));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268390C10(0, *(v9 + 16) + 1, 1);
        v9 = v17;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_268390C10((v12 > 1), v13 + 1, 1);
        v9 = v17;
      }

      *(v9 + 16) = v13 + 1;
      result = memcpy((v9 + 168 * v13 + 32), __dst, 0xA8uLL);
      v5 = v14;
    }

    else
    {
      result = sub_2681EFEA8(__src);
    }

    v8 += 168;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_26838F518@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for NotebookSuggestion.SignalDefinition() + 20);
  v4 = sub_2683CF518();

  return __swift_storeEnumTagSinglePayload(a2 + v3, 1, 1, v4);
}

uint64_t sub_26838F570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FE0, &qword_2683F63B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  swift_bridgeObjectRetain_n();
  sub_2683CF508();
  sub_26813CA00(a3, v16);
  v10 = sub_2683CF4B8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_2683CF4A8();
  a4[5] = &type metadata for TrueResolver;
  v14 = sub_268391F84();
  a4[2] = a1;
  a4[3] = a2;
  *a4 = a1;
  a4[1] = a2;
  a4[6] = v14;
  a4[7] = v13;
  return sub_268128148(a3, (a4 + 8));
}

uint64_t sub_26838F684(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26838F698()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 24);
    v5 = [v3 targetTaskList];
    v6 = *(v0 + 24);
    if (v5)
    {
      v7 = v5;
      v8 = *(v0 + 16);
      v9 = [v5 title];

      v10 = [v9 description];
      v11 = sub_2683CFA78();
      v13 = v12;

      v8[3] = MEMORY[0x277D837D0];
      *v8 = v11;
      v8[1] = v13;
      v14 = MEMORY[0x277D60C38];
      goto LABEL_6;
    }
  }

  v8 = *(v0 + 16);
  v14 = MEMORY[0x277D60C40];
LABEL_6:
  v15 = *v14;
  v16 = sub_2683CF448();
  OUTLINED_FUNCTION_1(v16);
  (*(v17 + 104))(v8, v15);
  OUTLINED_FUNCTION_7_4();

  return v18();
}

uint64_t sub_26838F808(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26838F81C()
{
  v1 = *(v0 + 24);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 24);
    v5 = [v3 targetTaskList];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 tasks];

      sub_268186108();
      v8 = sub_2683CFCA8();

      if (sub_2683ABE58(v8))
      {
        sub_2683ABE60(0, (v8 & 0xC000000000000001) == 0, v8);
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x26D616C90](0, v8);
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v10 = v9;
        v11 = *(v0 + 16);
        v12 = *(v0 + 24);

        v13 = [v10 title];

        v14 = [v13 description];
        v15 = sub_2683CFA78();
        v17 = v16;

        v11[3] = MEMORY[0x277D837D0];
        *v11 = v15;
        v11[1] = v17;
        v18 = MEMORY[0x277D60C38];
        goto LABEL_11;
      }

      v19 = *(v0 + 24);
    }

    else
    {
      v19 = *(v0 + 24);
    }
  }

  v11 = *(v0 + 16);
  v18 = MEMORY[0x277D60C40];
LABEL_11:
  v20 = *v18;
  v21 = sub_2683CF448();
  OUTLINED_FUNCTION_1(v21);
  (*(v22 + 104))(v11, v20);
  OUTLINED_FUNCTION_7_4();

  return v23();
}

uint64_t sub_26838FA20(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2683CF408();
  v2[4] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v2[5] = v4;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26838FAD8, 0, 0);
}

uint64_t sub_26838FAD8()
{
  v1 = OUTLINED_FUNCTION_13_38();
  v2(v1);
  sub_2682DFCE0();
  *(v0 + 24) = MEMORY[0x277D839B0];
  *v0 = v8;
  v3 = *MEMORY[0x277D60C38];
  v4 = sub_2683CF448();
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 104))(v0, v3);

  OUTLINED_FUNCTION_7_4();

  return v6();
}

uint64_t sub_26838FBAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2683CF408();
  v2[4] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v2[5] = v4;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26838FC64, 0, 0);
}

uint64_t sub_26838FC64()
{
  v1 = OUTLINED_FUNCTION_13_38();
  v2(v1);
  sub_2682DFCE0();
  *(v0 + 24) = MEMORY[0x277D839B0];
  *v0 = v8;
  v3 = *MEMORY[0x277D60C38];
  v4 = sub_2683CF448();
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 104))(v0, v3);

  OUTLINED_FUNCTION_7_4();

  return v6();
}

uint64_t sub_26838FD38(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FD0, &qword_2683F6390);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  sub_2681EBBD8();
  v11 = v10;
  sub_2681EC754();
  v32[0] = v11;
  sub_2682C0648(v12);
  v31[2] = a2;
  v13 = sub_26838F3A8(sub_2683901D4, v31, v32[0]);
  sub_2682B2D1C(v13, v32);

  if (v32[1])
  {
    memcpy(v33, v32, 0xA8uLL);
    v14 = v33[20];
    *v9 = v33[19];
    *(v9 + 1) = v14;
    v15 = *MEMORY[0x277D61238];
    v16 = sub_2683CF528();
    OUTLINED_FUNCTION_1(v16);
    (*(v17 + 104))(v9, v15, v16);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v16);

    sub_2683CF538();
    return sub_2681EFEA8(v33);
  }

  else
  {
    sub_2683901F4(v32);
    if (qword_28024CC50 != -1)
    {
      swift_once();
    }

    v19 = sub_2683CF7E8();
    __swift_project_value_buffer(v19, qword_28027CE90);
    sub_26813CA00(a2, v33);
    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE78();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136315138;
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      v24 = sub_2683CF488();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_0(v33);
      v27 = sub_2681610A0(v24, v26, v32);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2680EB000, v20, v21, "[NotebookSuggestionsAssetProvider] Cannot get matching NotebookSuggestion for candidate '%s', default to Siri icon", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x26D617A40](v23, -1, -1);
      MEMORY[0x26D617A40](v22, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    strcpy(v9, "com.apple.siri");
    v9[15] = -18;
    v28 = *MEMORY[0x277D61238];
    v29 = sub_2683CF528();
    OUTLINED_FUNCTION_1(v29);
    (*(v30 + 104))(v9, v28, v29);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v29);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v29);
    return sub_2683CF538();
  }
}

uint64_t sub_2683900FC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (v2 == sub_2683CF488() && v3 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2683D0598();
  }

  return v7 & 1;
}

uint64_t sub_2683901F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FD8, &unk_2683F6398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_26839025C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_73(a3, result);
  }

  return result;
}

char *sub_2683902D8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_73(a3, result);
  }

  return result;
}

char *sub_268390360(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_73(a3, result);
  }

  return result;
}

uint64_t sub_2683903B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16_32();
  if (v8 && (v9 = (a4)(0), result = OUTLINED_FUNCTION_1(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_2_62();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_2_62();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_26839047C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_73(a3, result);
  }

  return result;
}

char *sub_2683904A4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[168 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_73(a3, result);
  }

  return result;
}

uint64_t sub_2683904E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_16_32();
  if (v10 && (v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_1(v11), v6 + *(v13 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_2_62();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_2_62();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

char *sub_268390600(char *a1, int64_t a2, char a3)
{
  result = sub_268390C30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_268390728()
{
  v1 = *v0;
  OUTLINED_FUNCTION_10_36();
  sub_268390D38(v2, v3, v4, v5, v6, v7, v8, type metadata accessor for Snippet.Reminder);
  *v0 = v9;
}

void sub_2683907C8()
{
  v1 = *v0;
  sub_268391130();
  *v0 = v2;
}

char *sub_268390808(char *a1, int64_t a2, char a3)
{
  result = sub_268390EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268390828(void *a1, int64_t a2, char a3)
{
  result = sub_268390FF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_268390848()
{
  v1 = *v0;
  sub_268391130();
  *v0 = v2;
}

char *sub_268390888(char *a1, int64_t a2, char a3)
{
  result = sub_268391290(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268390900(void *a1, int64_t a2, char a3)
{
  result = sub_268391398(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390920(char *a1, int64_t a2, char a3)
{
  result = sub_2683914C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268390940(void *a1, int64_t a2, char a3)
{
  result = sub_2683915D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_268390960()
{
  v1 = *v0;
  sub_268391950();
  *v0 = v2;
}

char *sub_268390A50(char *a1, int64_t a2, char a3)
{
  result = sub_268391848(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_268390A70()
{
  v1 = *v0;
  sub_268391950();
  *v0 = v2;
}

void *sub_268390AB0(void *a1, int64_t a2, char a3)
{
  result = sub_268391A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_268390AD0()
{
  v1 = *v0;
  sub_268391130();
  *v0 = v2;
}

void sub_268390B10()
{
  v1 = *v0;
  sub_268391B78();
  *v0 = v2;
}

void sub_268390B50()
{
  v1 = *v0;
  sub_268391130();
  *v0 = v2;
}

void sub_268390B90()
{
  v1 = *v0;
  sub_268391B78();
  *v0 = v2;
}

char *sub_268390BD0(char *a1, int64_t a2, char a3)
{
  result = sub_268391C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390BF0(char *a1, int64_t a2, char a3)
{
  result = sub_268391D64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390C10(char *a1, int64_t a2, char a3)
{
  result = sub_268391E6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_268390C30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268390D38(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_44();
    if (v14 != v15)
    {
      OUTLINED_FUNCTION_15_24();
      if (v14)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_55();
    }
  }

  OUTLINED_FUNCTION_15_37();
  if (v14 ^ v15 | v29)
  {
    v23 = v8;
  }

  else
  {
    v23 = v22;
  }

  if (!v23)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19_36(v16, v17, v18, v19, v20, v21);
  v24 = a7(0);
  OUTLINED_FUNCTION_3_1(v24);
  v26 = *(v25 + 72);
  v27 = OUTLINED_FUNCTION_12_33();
  v28 = _swift_stdlib_malloc_size_0(v27);
  if (!v26)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = v28 - v9 == 0x8000000000000000 && v26 == -1;
  if (v29)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_11_44(v28 - v9);
LABEL_17:
  v30 = *(a7(0) - 8);
  if (a1)
  {
    v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    sub_2683903B4(a4 + v31, v8, v27 + v31, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_36();
  }
}

char *sub_268390EE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253FF8, &qword_2683F63D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[104 * v8] <= v12)
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_268390FF8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280254000, &unk_2683F63E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[14 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 112 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB30, &unk_2683D4240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_268391130()
{
  OUTLINED_FUNCTION_8_41();
  if (v6)
  {
    OUTLINED_FUNCTION_1_44();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_15_24();
      if (v7)
      {
LABEL_23:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_55();
    }
  }

  OUTLINED_FUNCTION_15_37();
  if (v7 ^ v8 | v24)
  {
    v16 = v4;
  }

  else
  {
    v16 = v15;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_19_36(v9, v10, v11, v12, v13, v14);
  v17 = OUTLINED_FUNCTION_9_39();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_3_1(v19);
  v21 = *(v20 + 72);
  v22 = OUTLINED_FUNCTION_12_33();
  v23 = _swift_stdlib_malloc_size_0(v22);
  if (!v21)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v23 - v5 == 0x8000000000000000 && v21 == -1;
  if (v24)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_11_44(v23 - v5);
LABEL_17:
  v25 = OUTLINED_FUNCTION_9_39();
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v25, v26) - 8);
  if (v3)
  {
    v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    sub_2683904E0(v0 + v28, v4, v22 + v28, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_36();
  }
}

char *sub_268391290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251E20, &qword_2683E6580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_268391398(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280251DD0, &qword_2683E6310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802515E8, &unk_2683E6530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2683914C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB30, &unk_2683D92F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}