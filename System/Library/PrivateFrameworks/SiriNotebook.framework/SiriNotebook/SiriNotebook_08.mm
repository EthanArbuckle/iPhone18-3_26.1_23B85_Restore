unint64_t sub_2681A3BD4()
{
  result = qword_28024E710;
  if (!qword_28024E710)
  {
    sub_2683CEB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E710);
  }

  return result;
}

uint64_t sub_2681A3C2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E708, &qword_2683D7EE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681A3C94(uint64_t a1, char a2, char a3)
{
  v48 = sub_2683CC318();
  v6 = OUTLINED_FUNCTION_0_3(v48);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_18();
  v47 = v11;
  v46 = sub_2683CC608();
  v12 = OUTLINED_FUNCTION_0_3(v46);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_18();
  v45 = v17;
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v18 setCanUseServerTTS_];
  v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v18 setListenAfterSpeaking_];

  [v18 setRepeatable_];
  v20 = sub_2683CC568();
  v42 = v18;
  sub_26813F2FC(v20, v21, v18, &selRef_setDialogIdentifier_);
  v22 = sub_2683CC588();
  v23 = *(v22 + 16);
  if (v23)
  {
    v41 = a1;
    v49 = MEMORY[0x277D84F90];
    sub_268390600(0, v23, 0);
    v24 = v49;
    v26 = *(v14 + 16);
    v25 = v14 + 16;
    v27 = v22 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v43 = *(v25 + 56);
    v44 = v26;
    do
    {
      v44(v45, v27, v46);
      sub_2683CC5F8();
      v28 = sub_2683CC308();
      v30 = v29;
      (*(v8 + 8))(v47, v48);
      (*(v25 - 8))(v45, v46);
      v32 = *(v49 + 16);
      v31 = *(v49 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_268390600((v31 > 1), v32 + 1, 1);
      }

      *(v49 + 16) = v32 + 1;
      v33 = v49 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v27 += v43;
      --v23;
    }

    while (v23);

    a1 = v41;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v35 = 0;
  v36 = *(v24 + 16);
  for (i = (v24 + 40); ; i += 2)
  {
    if (v36 == v35)
    {

      sub_26813F2FC(0, 0xE000000000000000, v42, &selRef_setMessage_);

      v40 = sub_2683CC598();
      (*(*(v40 - 8) + 8))(a1, v40);
      return v42;
    }

    if (v35 >= *(v24 + 16))
    {
      break;
    }

    ++v35;
    v39 = *(i - 1);
    v38 = *i;

    MEMORY[0x26D616690](v39, v38);
  }

  __break(1u);
  return result;
}

double sub_2681A4078()
{
  if (qword_28024C8F0 != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  v0 = sub_2683CF7E8();
  __swift_project_value_buffer(v0, qword_28027C988);
  v1 = sub_2683CF7C8();
  v2 = sub_2683CFE78();
  if (OUTLINED_FUNCTION_17_5(v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_15_7(&dword_2680EB000, v3, v4, "NoOp AppIntentHelper called");
    OUTLINED_FUNCTION_3_16();
  }

  return OUTLINED_FUNCTION_2_14();
}

double OUTLINED_FUNCTION_2_14()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_3_16()
{

  JUMPOUT(0x26D617A40);
}

uint64_t sub_2681A4154(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
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

uint64_t sub_2681A4194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
      *(result + 384) = 1;
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

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2681A4248(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_2683CB598();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681A4344, 0, 0);
}

uint64_t sub_2681A4344()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  v2 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v1[13]);
  v3 = *(v2 + 48);
  v4 = OUTLINED_FUNCTION_55_0();
  if ((v5(v4) & 1) == 0)
  {
    v21 = v0[2];
LABEL_11:
    sub_2683CF2F8();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = v0[8];
    v27 = v0[5];

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_20_9();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35);
  }

  sub_2683CEC88();
  sub_2683CEC78();
  sub_2683CEC38();
  OUTLINED_FUNCTION_97_0();

  sub_2683CF698();
  v7 = v6;

  v0[9] = v7;
  if (!v7)
  {
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v11 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v11, qword_28027C958);
    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_43(v13))
    {
      v14 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v14);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    v20 = v0[2];

    goto LABEL_11;
  }

  v9 = v0[5];
  v8 = v0[6];
  sub_2683CB538();
  if (__swift_getEnumTagSinglePayload(v9, 1, v8) == 1)
  {
    v10 = v0[5];

    sub_2681433DC(v10, &qword_28024DB50, &qword_2683D4250);
    goto LABEL_5;
  }

  (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  v37 = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_83_0(v37);
  *v38 = v39;
  v38[1] = sub_2681A45A0;
  v40 = v0[4];
  OUTLINED_FUNCTION_39_4(v0[3]);
  OUTLINED_FUNCTION_20_9();

  return sub_26820BC40(v41, v42, v43);
}

uint64_t sub_2681A45A0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  v4 = v1[10];
  v5 = v1[9];
  v6 = *v0;
  *v3 = *v0;

  v7 = swift_task_alloc();
  v2[11] = v7;
  *v7 = v6;
  v7[1] = sub_2681A471C;
  v8 = v1[8];
  v9 = v1[4];
  v10 = v1[2];
  OUTLINED_FUNCTION_20_9();

  return sub_268164EE4();
}

uint64_t sub_2681A471C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2681A4800()
{
  OUTLINED_FUNCTION_14();
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[8];
  v2 = v0[5];

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2681A487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681A4894()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  if ((sub_268200040(*(v0 + 40), *(v0 + 48)) & 1) == 0)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v18 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v18, qword_28027C958);
    v19 = sub_2683CF7C8();
    v20 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v20))
    {
      v21 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v21);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_11;
  }

  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_35_5(v1);
  if (sub_2683CC0B8())
  {
    OUTLINED_FUNCTION_8_14(dword_2683D83F0);
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_95_0(v4);
    *v5 = v6;
    v5[1] = sub_2681B5864;
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    OUTLINED_FUNCTION_39_4(*(v0 + 24));
    OUTLINED_FUNCTION_101();

    return v12(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v36 = v1[3];
  v35 = v1[4];
  OUTLINED_FUNCTION_35_5(*(v0 + 32));
  if (sub_2683CC0C8())
  {
    v37 = sub_268200914(*(v0 + 40), *(v0 + 48));
    v39 = v38;
    sub_2683210B4(v37, v38);
    OUTLINED_FUNCTION_9_10();

LABEL_11:
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_101();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  v40 = *(v0 + 24);
  if (!v40 || (sub_2681E73A0() & 1) == 0)
  {
LABEL_24:
    OUTLINED_FUNCTION_8_14(&unk_2683D83E8);
    v50 = swift_task_alloc();
    *(v0 + 64) = v50;
    *v50 = v0;
    v50[1] = sub_2681B5868;
    v51 = *(v0 + 48);
    OUTLINED_FUNCTION_39_4(*(v0 + 40));
    OUTLINED_FUNCTION_101();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34);
  }

  sub_2681B422C();
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_109_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (OUTLINED_FUNCTION_38_4())
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v41 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v41, qword_28027C958);
    v42 = sub_2683CF7C8();
    v43 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v43))
    {
      v44 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v44);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v45, v46, v47, v48, v49, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_101();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59);
}

uint64_t sub_2681A4BD4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_2681A4BF8, 0, 0);
}

uint64_t sub_2681A4F74()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *(v2 + 56);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_17_9();

    return v9(v8);
  }
}

uint64_t sub_2681A5084()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_17_9();

    return v13(v12);
  }
}

uint64_t sub_2681A5198()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (swift_dynamicCast())
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v3 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v3, qword_28027C958);
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v5))
    {
      v6 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v6);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    OUTLINED_FUNCTION_8_14(dword_2683D80F0);
    v27 = v12;
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_83_0(v13);
    *v14 = v15;
    v23 = OUTLINED_FUNCTION_40_4(v14, v16, v17, v18, v19, v20, v21, v22, v27);

    return v23();
  }

  else
  {

    v25 = *(v0 + 72);
    OUTLINED_FUNCTION_40();

    return v26();
  }
}

uint64_t sub_2681A531C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *(v2 + 80);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_17_9();

    return v9(v8);
  }
}

uint64_t sub_2681A542C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681A5444()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  if (!*(*(v0 + 40) + 16))
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v18 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v18, qword_28027C958);
    v19 = sub_2683CF7C8();
    v20 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v20))
    {
      v21 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v21);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_13;
  }

  v1 = *(v0 + 32);
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_35_5(v1);
  if (sub_2683CC0B8())
  {
    OUTLINED_FUNCTION_8_14(dword_2683D8428);
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_95_0(v4);
    *v5 = v6;
    v5[1] = sub_2681B5864;
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    OUTLINED_FUNCTION_39_4(*(v0 + 24));
    OUTLINED_FUNCTION_101();

    return v12(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v28 = v1[3];
  v27 = v1[4];
  OUTLINED_FUNCTION_35_5(*(v0 + 32));
  if (sub_2683CC0C8())
  {
    sub_2683210B4(*(v0 + 40), *(v0 + 48));
LABEL_13:
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_101();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36);
  }

  v37 = *(v0 + 24);
  if (!v37 || (sub_2681E73A0() & 1) == 0)
  {
LABEL_24:
    OUTLINED_FUNCTION_8_14(&unk_2683D8420);
    v47 = swift_task_alloc();
    *(v0 + 64) = v47;
    *v47 = v0;
    v47[1] = sub_2681A5770;
    v48 = *(v0 + 48);
    OUTLINED_FUNCTION_39_4(*(v0 + 40));
    OUTLINED_FUNCTION_101();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36);
  }

  sub_2681B422C();
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_109_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (OUTLINED_FUNCTION_38_4())
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v38 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v38, qword_28027C958);
    v39 = sub_2683CF7C8();
    v40 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v40))
    {
      v41 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v41);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_101();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56);
}

uint64_t sub_2681A5770()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *(v2 + 64);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v6();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_17_9();

    return v9(v8);
  }
}

uint64_t sub_2681A5880()
{
  OUTLINED_FUNCTION_14();
  v1[35] = v2;
  v1[36] = v0;
  v1[34] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E730, &unk_2683D8088) - 8) + 64);
  v1[38] = OUTLINED_FUNCTION_55();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v6 = sub_2683CC598();
  v1[41] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[42] = v7;
  v9 = *(v8 + 64);
  v1[43] = OUTLINED_FUNCTION_55();
  v1[44] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v1[45] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[46] = v11;
  v13 = *(v12 + 64);
  v1[47] = OUTLINED_FUNCTION_55();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2681A5A24()
{
  v66 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = v0[49];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[35];
  v5 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v5, qword_28027C958);
  v6 = *(v2 + 16);
  v0[50] = v6;
  v0[51] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_2683CF7C8();
  v63 = sub_2683CFE98();
  v8 = os_log_type_enabled(v7, v63);
  v9 = v0[49];
  v11 = v0[45];
  v10 = v0[46];
  if (v8)
  {
    OUTLINED_FUNCTION_87_0();
    buf = swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();
    v60 = swift_slowAlloc();
    v65 = v60;
    *buf = 136315138;
    v12 = sub_2683CC848();
    v13 = v6;
    v14 = [v12 description];
    v58 = sub_2683CFA78();
    v16 = v15;

    v6 = v13;
    v17 = *(v10 + 8);
    v17(v9, v11);
    v18 = v17;

    v19 = sub_2681610A0(v58, v16, &v65);

    *(buf + 4) = v19;
    _os_log_impl(&dword_2680EB000, v7, v63, "[SFNI HandleIntentStrategy] Intent: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  else
  {

    v20 = *(v10 + 8);
    v20(v9, v11);
    v18 = v20;
  }

  v0[52] = v18;
  v6(v0[48], v0[35], v0[45]);
  v21 = sub_2683CF7C8();
  v22 = sub_2683CFE98();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[48];
  v26 = v0[45];
  v25 = v0[46];
  if (v23)
  {
    OUTLINED_FUNCTION_87_0();
    v62 = v18;
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();
    v64 = swift_slowAlloc();
    v65 = v64;
    *v27 = 136315138;
    v28 = sub_2683CC818();
    v29 = [v28 description];
    v30 = sub_2683CFA78();
    v61 = v22;
    v32 = v31;

    v62(v24, v26);
    v33 = sub_2681610A0(v30, v32, &v65);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_2680EB000, v21, v61, "[SFNI HandleIntentStrategy] Intent Response: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  else
  {

    v18(v24, v26);
  }

  v34 = v0[35];
  v35 = v0[36];
  if (sub_2681A7274())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[53] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_112(v36);
    OUTLINED_FUNCTION_11_15();

    return sub_2681A7488(v38, v39);
  }

  else
  {
    v42 = v0[36];
    v43 = v42[26];
    __swift_project_boxed_opaque_existential_1(v42 + 22, v42[25]);
    v44 = *(v43 + 56);
    v45 = OUTLINED_FUNCTION_55_0();
    if (v46(v45))
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[54] = v47;
      *v47 = v48;
      OUTLINED_FUNCTION_112(v47);
      OUTLINED_FUNCTION_11_15();

      return sub_2681A8B40(v49, v50);
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[55] = v52;
      *v52 = v53;
      v52[1] = sub_2681A62CC;
      v54 = v0[44];
      v55 = v0[35];
      v56 = v0[36];
      OUTLINED_FUNCTION_11_15();

      return sub_2681AA4DC();
    }
  }
}

uint64_t sub_2681A5EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v13 = *v12;
  v14 = *(*v12 + 424);
  v15 = *v12;
  OUTLINED_FUNCTION_1_0();
  *v16 = v15;

  v17 = v13[49];
  v18 = v13[48];
  v19 = v13[47];
  v20 = v13[44];
  v21 = v13[43];
  v22 = v13[40];
  v23 = v13[39];
  v24 = v13[38];
  v25 = v13[37];

  v26 = *(v15 + 8);
  OUTLINED_FUNCTION_77();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_2681A60D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v37 = v12;
  v14 = *v13;
  v15 = *(*v13 + 432);
  v16 = *v13;
  OUTLINED_FUNCTION_1_0();
  *v17 = v16;

  v18 = v14[49];
  v19 = v14[48];
  v20 = v14[47];
  v21 = v14[44];
  v22 = v14[43];
  v23 = v14[40];
  v24 = v14[39];
  v25 = v14[38];
  v26 = v14[37];

  v27 = *(v16 + 8);
  OUTLINED_FUNCTION_77();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, a10, a11, a12);
}

uint64_t sub_2681A62CC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 448) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681A63C4()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 368);
  v4 = *(v0 + 288);
  (*(v0 + 400))(*(v0 + 376), *(v0 + 280), *(v0 + 360));
  sub_268134034(v4 + 56, v0 + 32);
  *(v0 + 16) = sub_2683CC848();
  *(v0 + 24) = sub_2683CC818();
  v5 = sub_2683CC828();
  v6 = OUTLINED_FUNCTION_61_0();
  v2(v6);
  *(v0 + 72) = v5;
  v7 = sub_2683CC818();
  v8 = sub_26818598C();

  if (v8 < 1)
  {
    *(v0 + 480) = 0;
    v16 = swift_task_alloc();
    *(v0 + 488) = v16;
    *v16 = v0;
    OUTLINED_FUNCTION_46_4(v16);
    v17 = *(v0 + 288);
    v18 = OUTLINED_FUNCTION_39_4(*(v0 + 280));

    return sub_2681AAC40(v18);
  }

  else
  {
    v9 = *(v0 + 360);
    v10 = *(v0 + 280);
    v11 = *(v0 + 288);
    v12 = sub_2683CC828();
    *(v0 + 456) = v12;
    OUTLINED_FUNCTION_8_14(dword_2683D80B8);
    v19 = v13;
    v14 = swift_task_alloc();
    *(v0 + 464) = v14;
    *v14 = v0;
    v14[1] = sub_2681A6588;

    return v19(v12, v11 + 16);
  }
}

uint64_t sub_2681A6588()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v7 = *(v6 + 464);
  v8 = *(v6 + 456);
  v9 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  v4[59] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v4[60] = v0;
    v14 = swift_task_alloc();
    v4[61] = v14;
    *v14 = v9;
    OUTLINED_FUNCTION_46_4(v14);
    v15 = v4[36];
    v16 = OUTLINED_FUNCTION_39_4(v4[35]);

    return sub_2681AAC40(v16);
  }
}

uint64_t sub_2681A66EC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 488);
  *v4 = *v1;
  v3[62] = v7;
  v3[63] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    v11 = v3[36];
    OUTLINED_FUNCTION_8_14(&unk_2683D80A8);
    v18 = v12;
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v3[64] = v13;
    *v13 = v14;
    v13[1] = sub_2681A6864;
    v15 = v3[40];
    v16 = v3[35];

    return v18(v15, v16);
  }
}

uint64_t sub_2681A6864()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 512);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

id sub_2681A6948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v21 = *(v20 + 360);
  v22 = *(v20 + 280);
  __swift_project_boxed_opaque_existential_1((*(v20 + 288) + 224), *(*(v20 + 288) + 248));
  v23 = sub_2683CC848();
  v24 = sub_2683CC818();
  sub_26832A218();
  LOBYTE(v22) = v25;

  if (v22)
  {
    v26 = *(v20 + 496);
    v27 = *(v20 + 480);
    v29 = *(v20 + 312);
    v28 = *(v20 + 320);
    v30 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E740, &qword_2683D80B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2683D1ED0;
    *(inited + 32) = v27;
    *(inited + 40) = v26;
    sub_26818F510(v28, v29, &unk_28024E730, &unk_2683D8088);
    v32 = sub_2683CF2F8();
    LODWORD(v29) = __swift_getEnumTagSinglePayload(v29, 1, v32);
    v33 = v26;
    v34 = v27;
    v35 = *(v20 + 312);
    if (v29 == 1)
    {
      result = sub_2681433DC(*(v20 + 312), &unk_28024E730, &unk_2683D8088);
      *(inited + 48) = 0;
    }

    else
    {
      *(inited + 48) = sub_2683CF2E8();
      OUTLINED_FUNCTION_23_0(v32);
      v44 = *(v43 + 8);
      v45 = OUTLINED_FUNCTION_61_0();
      result = v46(v45);
    }

    v47 = 0;
    v48 = MEMORY[0x277D84F90];
    v111 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v47 == 3)
      {
        v110 = *(v20 + 480);
        v50 = *(v20 + 344);
        v51 = *(v20 + 352);
        v53 = *(v20 + 328);
        v52 = *(v20 + 336);
        v108 = *(v20 + 496);
        v109 = *(v20 + 320);
        v54 = *(v20 + 272);
        v106 = *(v20 + 296);
        v107 = *(v20 + 280);
        swift_setDeallocating();
        sub_2681F5544();
        sub_26813F26C(v48, v30);
        v55 = *MEMORY[0x277D48BE8];
        v56 = sub_2683CFA78();
        sub_26813F2F0(v56, v57, v30);
        sub_268129504(0, &unk_28024E750, 0x277D47B10);
        (*(v52 + 16))(v50, v51, v53);
        v58 = OUTLINED_FUNCTION_33_1();
        v60 = sub_2681A3C94(v58, v59, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
        OUTLINED_FUNCTION_37_4();
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_2683D6890;
        *(v61 + 32) = v30;
        *(v61 + 40) = v60;
        a17 = 0;
        a15 = 0u;
        a16 = 0u;
        v62 = v30;
        v63 = v60;
        sub_2682EBBF4(v107);
        sub_2683CC528();
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
        v68 = sub_2683CCC98();
        v69 = MEMORY[0x277D5C1D8];
        v54[3] = v68;
        v54[4] = v69;
        __swift_allocate_boxed_opaque_existential_0(v54);
        sub_2683CCC78();

        sub_2681433DC(v109, &unk_28024E730, &unk_2683D8088);
        sub_2681AC044(v20 + 16);
        (*(v52 + 8))(v51, v53);
        goto LABEL_24;
      }

      if (v47 > 2)
      {
        break;
      }

      v49 = *(inited + 8 * v47++ + 32);
      if (v49)
      {
        v49;
        MEMORY[0x26D616770]();
        if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        result = sub_2683CFD08();
        v48 = v111;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v37 = *(v20 + 320);
    v38 = *(v20 + 304);
    v39 = *(v20 + 288);
    sub_268134034((v39 + 2), v20 + 192);
    v40 = v39[6];
    __swift_project_boxed_opaque_existential_1(v39 + 2, v39[5]);
    sub_2683CC0A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E740, &qword_2683D80B0);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_2683D1ED0;
    sub_26818F510(v37, v38, &unk_28024E730, &unk_2683D8088);
    v42 = sub_2683CF2F8();
    if (__swift_getEnumTagSinglePayload(v38, 1, v42) == 1)
    {
      sub_2681433DC(*(v20 + 304), &unk_28024E730, &unk_2683D8088);
      *(v41 + 32) = 0;
    }

    else
    {
      *(v41 + 32) = sub_2683CF2E8();
      OUTLINED_FUNCTION_23_0(v42);
      v71 = *(v70 + 8);
      v72 = OUTLINED_FUNCTION_61_0();
      v73(v72);
    }

    v74 = *(v20 + 496);
    v75 = *(v20 + 480);
    *(v41 + 40) = v75;
    *(v41 + 48) = v74;
    *&a15 = MEMORY[0x277D84F90];
    v76 = v74;
    result = v75;
    v110 = result;
    for (i = 0; i != 3; ++i)
    {
      if (i > 2)
      {
        goto LABEL_28;
      }

      v78 = *(v41 + 8 * i + 32);
      if (v78)
      {
        v78;
        MEMORY[0x26D616770]();
        if (*((a15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        result = sub_2683CFD08();
      }
    }

    v106 = *(v20 + 352);
    v107 = v76;
    v79 = *(v20 + 336);
    v108 = *(v20 + 320);
    v109 = *(v20 + 328);
    v80 = *(v20 + 296);
    v82 = *(v20 + 272);
    v81 = *(v20 + 280);
    swift_setDeallocating();
    sub_2681F5544();
    sub_2682EBBF4(v81);
    sub_2683CC528();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
    v87 = sub_2683CCC98();
    *(v20 + 232) = 0u;
    *(v20 + 248) = 0u;
    *(v20 + 264) = 0;
    v88 = MEMORY[0x277D5C1D8];
    v82[3] = v87;
    v82[4] = v88;
    __swift_allocate_boxed_opaque_existential_0(v82);
    a9 = v20 + 232;
    sub_2683CC328();

    sub_2681433DC(v20 + 232, &qword_28024D408, &qword_2683D2470);
    sub_2681433DC(v80, &qword_28024D400, &qword_2683D2460);
    __swift_destroy_boxed_opaque_existential_0((v20 + 192));
    sub_2681433DC(v108, &unk_28024E730, &unk_2683D8088);
    sub_2681AC044(v20 + 16);
    (*(v79 + 8))(v106, v109);
LABEL_24:
    v90 = *(v20 + 384);
    v89 = *(v20 + 392);
    v91 = *(v20 + 376);
    v93 = *(v20 + 344);
    v92 = *(v20 + 352);
    v95 = *(v20 + 312);
    v94 = *(v20 + 320);
    v97 = *(v20 + 296);
    v96 = *(v20 + 304);

    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_48_3();

    return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, v106, v107, v108, v109, v110, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, a18, a19, a20);
  }

  return result;
}

uint64_t sub_2681A7044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v13 = *(v12 + 448);
  OUTLINED_FUNCTION_57_1();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_77();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_2681A70E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v13 = v12[44];
  v14 = v12[41];
  v15 = v12[42];
  sub_2681AC044((v12 + 2));
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_41_0();
  v18(v17);
  v19 = v12[59];
  OUTLINED_FUNCTION_57_1();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_77();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_2681A71A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v13 = *(v12 + 352);
  v14 = *(v12 + 328);
  v15 = *(v12 + 336);

  sub_2681AC044(v12 + 16);
  v16 = *(v15 + 8);
  v17 = OUTLINED_FUNCTION_41_0();
  v18(v17);
  v19 = *(v12 + 504);
  OUTLINED_FUNCTION_57_1();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_77();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_2681A7274()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  sub_2683CC828();
  v17 = 1;
  v1 = sub_26812A998(&v17);

  if (v1 & 1) != 0 && (v2 = v0[6], __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), (sub_2683CC0B8()))
  {
    v3 = sub_2683CC818();
    v4 = sub_2682DEB58(v3);
    if (v4)
    {
      v5 = sub_268229348(v4);

      v6 = v5 > 1;
    }

    else
    {
      v6 = 0;
    }

    __swift_project_boxed_opaque_existential_1(v0 + 28, v0[31]);
    v8 = sub_2683CC848();
    v9 = sub_2683CC818();
    sub_26832A218();
    v11 = v10;

    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v7 = (v6 | v11) ^ 1;
    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);
    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE98();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109632;
      *(v15 + 4) = v7 & 1;
      *(v15 + 8) = 1024;
      *(v15 + 10) = v6;
      *(v15 + 14) = 1024;
      *(v15 + 16) = v11 & 1;
      _os_log_impl(&dword_2680EB000, v13, v14, "[SFNI HandleIntentStrategy] Should send punchout on watch: %{BOOL}d \n{ hasMultipleNotes: %{BOOL}d, willRead: %{BOOL}d }", v15, 0x14u);
      MEMORY[0x26D617A40](v15, -1, -1);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2681A7488(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for Snippet();
  v3[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v6 = sub_2683CC9A8();
  v3[30] = v6;
  v7 = *(v6 - 8);
  v3[31] = v7;
  v8 = *(v7 + 64) + 15;
  v3[32] = swift_task_alloc();
  v9 = sub_2683CC138();
  v3[33] = v9;
  v10 = *(v9 - 8);
  v3[34] = v10;
  v11 = *(v10 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v3[40] = v15;
  v3[41] = *(v15 + 64);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v16 = sub_2683CB438();
  v3[50] = v16;
  v17 = *(v16 - 8);
  v3[51] = v17;
  v18 = *(v17 + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681A77D8, 0, 0);
}

void sub_2681A77D8()
{
  v157 = v0;
  v1 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v2 = sub_2683CC818();
  v3 = sub_2682DEB58(v2);
  v4 = v3;
  if (v3)
  {
    if (sub_2683ABE58(v3))
    {
      sub_2683ABE60(0, (v4 & 0xC000000000000001) == 0, v4);
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D616C90](0, v4);
      }

      else
      {
        v5 = *(v4 + 32);
      }

      v6 = v5;

      sub_2681B2FCC(v6);
    }

    else
    {
    }
  }

  v7 = v0[53];
  sub_268129504(0, &qword_28024E778, 0x277D479F0);
  v8 = OUTLINED_FUNCTION_9_0();
  sub_2683963B4(v8, v9, 0, v10);

  v11 = sub_26816B2DC(v7);
  v0[54] = v11;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v12 = sub_2683CF7E8();
  __swift_project_value_buffer(v12, qword_28027C958);
  v13 = v11;
  v14 = sub_2683CF7C8();
  v15 = sub_2683CFE98();
  if (!os_log_type_enabled(v14, v15))
  {

LABEL_14:
    v27 = v0[48];
    v26 = v0[49];
    v29 = v0[38];
    v28 = v0[39];
    v30 = v0[36];
    v31 = v0[37];
    v32 = v0[25];
    v33 = v0[23];
    v155 = *(v0[24] + 216);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v32);
    v37 = OUTLINED_FUNCTION_33_1();
    __swift_storeEnumTagSinglePayload(v37, v38, 1, v32);
    sub_2682EBBF4(v33);
    sub_2683CC528();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    sub_2683CED08();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    sub_2683CC1D8();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_2683D2250;
    *(v51 + 32) = v13;
    v52 = v13;
    sub_2683CC108();
    v53 = MEMORY[0x277D84F90];
    v153 = v51;
    if (sub_2683ABE58(MEMORY[0x277D84F90]))
    {
      sub_2683ABE60(0, v53 >> 62 == 0, v53);
      if (v53 >> 62)
      {
        v54 = MEMORY[0x26D616C90](0, MEMORY[0x277D84F90]);
      }

      else
      {
        v54 = *(v53 + 32);
      }

      v55 = v54;
      v56 = [v54 catId];

      v147 = sub_2683CFA78();
      v152 = v57;
    }

    else
    {
      v147 = 0;
      v152 = 0;
    }

    v58 = v0[49];
    v60 = v0[46];
    v59 = v0[47];
    v62 = v0[40];
    v61 = v0[41];
    v139 = v0[39];
    v140 = v0[38];
    v142 = v0[37];
    v63 = v0[34];
    v64 = v0[35];
    v137 = v0[33];
    v138 = v0[36];
    v144 = v0[32];
    v145 = v58;
    v148 = v0[25];
    v150 = v0[45];
    sub_26818F510(v0[48], v59, &qword_28024E770, &qword_2683D80D0);
    sub_26818F510(v58, v60, &qword_28024E770, &qword_2683D80D0);
    v65 = *(v62 + 80);
    v66 = (v65 + 24) & ~v65;
    v67 = (v61 + v65 + v66) & ~v65;
    v68 = swift_allocObject();
    v0[55] = v68;
    *(v68 + 16) = v155;
    sub_2681430AC(v59, v68 + v66);
    sub_2681430AC(v60, v68 + v67);
    (*(v63 + 16))(v64, v138, v137);
    v69 = swift_task_alloc();
    v77 = OUTLINED_FUNCTION_66_0(v69, v70, v71, v72, v73, v74, v75, v76, v136, v137, v138, v139, v140, v142, v144, v145, v147, v148, v150, v152);
    *(v77 + 64) = 514;
    *(v77 + 72) = sub_2681B303C;
    *(v77 + 80) = v68;
    *(v77 + 88) = v153;
    *(v77 + 96) = v141;
    *(v77 + 104) = 2;
    *(v77 + 112) = v143;

    sub_2683CC8E8();

    sub_26818F510(v146, v151, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v151, 1, v149) == 1)
    {
      v78 = v0 + 45;
    }

    else
    {
      v79 = v0[48];
      v80 = v0[44];
      v81 = v0[25];
      sub_26814320C(v0[45], v0[29]);
      v82 = OUTLINED_FUNCTION_41_0();
      sub_26818F510(v82, v83, v84, v85);
      if (OUTLINED_FUNCTION_88_0() != 1)
      {
        v114 = v0[29];
        v115 = v0[25];
        sub_26814320C(v0[44], v0[28]);
        v0[15] = v115;
        v116 = sub_268143270();
        v0[16] = v116;
        __swift_allocate_boxed_opaque_existential_0(v0 + 12);
        v117 = OUTLINED_FUNCTION_56_1();
        sub_2681432C8(v117, v118);
        v0[20] = v115;
        v0[21] = v116;
        __swift_allocate_boxed_opaque_existential_0(v0 + 17);
        v119 = OUTLINED_FUNCTION_92_0();
        sub_2681432C8(v119, v120);
        OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD30]);
        swift_task_alloc();
        OUTLINED_FUNCTION_10_2();
        v0[56] = v121;
        *v121 = v122;
        v121[1] = sub_2681A80E0;
        v123 = v0[32];
        v124 = v0[22];
        OUTLINED_FUNCTION_72_0();

        __asm { BR              X5 }
      }

      v78 = v0 + 44;
      sub_26814332C(v0[29]);
    }

    v86 = *v78;
    v87 = v0[49];
    v88 = v0[43];
    v89 = v0[25];
    OUTLINED_FUNCTION_130_0(v86);
    v90 = OUTLINED_FUNCTION_41_0();
    sub_26818F510(v90, v91, &qword_28024E770, &qword_2683D80D0);
    v92 = OUTLINED_FUNCTION_88_0();
    v93 = v0[43];
    v94 = v0[25];
    if (v92 == 1)
    {
      v95 = v0[48];
      v96 = v0[42];
      OUTLINED_FUNCTION_130_0(v93);
      v97 = OUTLINED_FUNCTION_30_5();
      sub_26818F510(v97, v98, v99, &qword_2683D80D0);
      v100 = OUTLINED_FUNCTION_33_1();
      if (__swift_getEnumTagSinglePayload(v100, v101, v94) == 1)
      {
        sub_2681433DC(v0[42], &qword_28024E770, &qword_2683D80D0);
        OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD50]);
        swift_task_alloc();
        OUTLINED_FUNCTION_10_2();
        v0[59] = v102;
        *v102 = v103;
        v102[1] = sub_2681A88AC;
        v104 = v0[32];
        v105 = v0[22];
        OUTLINED_FUNCTION_72_0();

        __asm { BR              X3 }
      }

      v127 = v0[25];
      sub_26814320C(v0[42], v0[26]);
      v0[5] = v127;
      v0[6] = sub_268143270();
      __swift_allocate_boxed_opaque_existential_0(v0 + 2);
      v128 = OUTLINED_FUNCTION_56_1();
      sub_2681432C8(v128, v129);
      OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD40]);
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[58] = v130;
      *v130 = v131;
      v130[1] = sub_2681A8620;
      v132 = v0[32];
      v133 = v0[22];
    }

    else
    {
      sub_26814320C(v93, v0[27]);
      v0[10] = v94;
      v0[11] = sub_268143270();
      __swift_allocate_boxed_opaque_existential_0(v0 + 7);
      v108 = OUTLINED_FUNCTION_92_0();
      sub_2681432C8(v108, v109);
      OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD38]);
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[57] = v110;
      *v110 = v111;
      v110[1] = sub_2681A8394;
      v112 = v0[32];
      v113 = v0[22];
    }

    OUTLINED_FUNCTION_72_0();

    __asm { BR              X4 }
  }

  OUTLINED_FUNCTION_87_0();
  v16 = swift_slowAlloc();
  OUTLINED_FUNCTION_86_0();
  v17 = swift_slowAlloc();
  v156 = v17;
  *v16 = 136315138;
  v18 = [v13 punchOutUri];
  v154 = v13;

  if (v18)
  {
    v19 = v0[51];
    v20 = v0[52];
    v21 = v0[50];
    sub_2683CB3E8();

    v22 = sub_2683CB3A8();
    v24 = v23;
    (*(v19 + 8))(v20, v21);
    v25 = sub_2681610A0(v22, v24, &v156);

    *(v16 + 4) = v25;
    _os_log_impl(&dword_2680EB000, v14, v15, "[SFNI HandleIntentStrategy] Sending punchout to %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();

    v13 = v154;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_2681A80E0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2681A81CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v25 = v24[55];
  v26 = v24[48];
  v56 = v24[49];
  v27 = v24[36];
  v28 = v24[33];
  v29 = v24[34];
  v30 = v24[31];
  v31 = v24[32];
  v33 = v24[29];
  v32 = v24[30];
  v34 = v24[28];

  sub_26814332C(v34);
  sub_26814332C(v33);
  v35 = *(v30 + 8);
  v36 = OUTLINED_FUNCTION_32_3();
  v37(v36);
  v38 = *(v29 + 8);
  v39 = OUTLINED_FUNCTION_74_0();
  v40(v39);
  v41 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v41, v42, v43);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v44, v45, v46);
  OUTLINED_FUNCTION_4_17();
  sub_2681433DC(v34, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v29 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v30 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v56, a22, a23, a24);
}

uint64_t sub_2681A8394()
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

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2681A8478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_81();
  v29 = *(v25 + 216);

  sub_26814332C(v29);
  v30 = *(v28 + 8);
  v31 = OUTLINED_FUNCTION_32_3();
  v32(v31);
  v33 = *(v27 + 8);
  v34 = OUTLINED_FUNCTION_74_0();
  v35(v34);
  v36 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v36, v37, v38);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v39, v40, v41);
  OUTLINED_FUNCTION_4_17();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2681A8620()
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

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2681A8704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_81();
  v29 = *(v25 + 208);

  sub_26814332C(v29);
  v30 = *(v28 + 8);
  v31 = OUTLINED_FUNCTION_32_3();
  v32(v31);
  v33 = *(v27 + 8);
  v34 = OUTLINED_FUNCTION_74_0();
  v35(v34);
  v36 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v36, v37, v38);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v39, v40, v41);
  OUTLINED_FUNCTION_4_17();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2681A88AC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 472);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2681A8990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v26 = v24[55];
  v27 = v24[48];
  v28 = v24[49];
  v29 = v24[36];
  v30 = v24[33];
  v31 = v24[34];
  v33 = v24[31];
  v32 = v24[32];
  v34 = v24[30];

  v35 = *(v33 + 8);
  v36 = OUTLINED_FUNCTION_32_3();
  v37(v36);
  v38 = *(v31 + 8);
  v39 = OUTLINED_FUNCTION_74_0();
  v40(v39);
  v41 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v41, v42, v43);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v44, v45, v46);
  OUTLINED_FUNCTION_4_17();
  sub_2681433DC(v33 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v28, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2681A8B40(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v5 = type metadata accessor for Snippet();
  v3[30] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = sub_2683CC9A8();
  v3[35] = v7;
  v8 = *(v7 - 8);
  v3[36] = v8;
  v9 = *(v8 + 64) + 15;
  v3[37] = swift_task_alloc();
  v10 = sub_2683CC138();
  v3[38] = v10;
  v11 = *(v10 - 8);
  v3[39] = v11;
  v12 = *(v11 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0) - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v16 = sub_2683CB528();
  v3[45] = v16;
  v17 = *(v16 - 8);
  v3[46] = v17;
  v18 = *(v17 + 64) + 15;
  v3[47] = swift_task_alloc();
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v3[48] = v19;
  v3[49] = *(v19 + 64);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v20 = swift_task_alloc();
  v3[58] = v20;
  *v20 = v3;
  v20[1] = sub_2681A8EC0;

  return sub_2681AB040(a2);
}

uint64_t sub_2681A8EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_42();
  v25 = v24;
  OUTLINED_FUNCTION_2_0();
  *v26 = v25;
  v28 = *(v27 + 464);
  v29 = *v23;
  *v26 = v29;
  v25[59] = v30;

  if (v22)
  {
    v32 = v25[56];
    v31 = v25[57];
    v33 = v25[54];
    v34 = v25[55];
    v36 = v25[52];
    v35 = v25[53];
    v38 = v25[50];
    v37 = v25[51];
    v54 = v22;
    v39 = v25[47];
    a10 = v25[44];
    a11 = v25[43];
    a12 = v25[42];
    a13 = v25[41];
    a14 = v25[40];
    a15 = v25[37];
    a16 = v25[34];
    a17 = v25[33];
    v41 = v25 + 31;
    v40 = v25[31];
    a18 = v41[1];

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48_3();
  }

  else
  {
    v50 = v25[29];
    OUTLINED_FUNCTION_8_14(dword_2683DD890);
    v54 = v51;
    v52 = swift_task_alloc();
    v25[60] = v52;
    *v52 = v29;
    v52[1] = sub_2681A910C;
    OUTLINED_FUNCTION_39_4(v25[28]);
    OUTLINED_FUNCTION_48_3();
  }

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v54, a20, a21, a22);
}

uint64_t sub_2681A910C()
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

void sub_2681A91F0()
{
  v1 = v0[28];
  v2 = v0[29];
  __swift_project_boxed_opaque_existential_1((v2 + 224), *(v2 + 248));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v3 = sub_2683CC848();
  v4 = sub_2683CC818();
  OUTLINED_FUNCTION_19_2();
  sub_26832A218();
  v6 = v5;

  v7 = v0[57];
  if (v6)
  {
    v8 = v0[30];
    v9 = v0[57];
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    v15 = v0[46];
    v14 = v0[47];
    v16 = v0[45];
    v17 = v0[28];
    __swift_project_boxed_opaque_existential_1((v2 + 224), *(v2 + 248));
    sub_2683CB508();
    sub_268335558();
    (*(v15 + 8))(v14, v16);
  }

  v18 = v0[56];
  v20 = v0[46];
  v19 = v0[47];
  v22 = v0[44];
  v21 = v0[45];
  v24 = v0[29];
  v23 = v0[30];
  v25 = v0[28];
  sub_2683CB508();
  v26 = sub_2681A4078();
  (*(v20 + 8))(v19, v21, v26);
  v149 = v24[27];
  v27 = 1;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v23);
  sub_2682EBBF4(v25);
  sub_2683CC528();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = v24[6];
  __swift_project_boxed_opaque_existential_1(v24 + 2, v24[5]);
  OUTLINED_FUNCTION_19_2();
  v36 = sub_2683CC0B8();
  if (v6)
  {
    v37 = v0[43];
    sub_2683CECD8();
    v27 = 0;
  }

  v38 = v0[59];
  v40 = v0[42];
  v39 = v0[43];
  v41 = v0[41];
  v42 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v39, v27, 1, v42);
  v148 = v36 & 1;
  sub_2683CC1D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v47 = swift_allocObject();
  v0[61] = v47;
  *(v47 + 16) = xmmword_2683D2250;
  *(v47 + 32) = v38;
  v48 = v38;
  if (sub_2683ABE58(v47))
  {
    sub_2683ABE60(0, (v47 & 0xC000000000000001) == 0, v47);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x26D616C90](0, v47);
    }

    else
    {
      v49 = *(v47 + 32);
    }

    v50 = v49;
    v51 = [v49 catId];

    v142 = sub_2683CFA78();
    v147 = v52;
  }

  else
  {
    v142 = 0;
    v147 = 0;
  }

  v53 = v0[57];
  v55 = v0[54];
  v54 = v0[55];
  v57 = v0[48];
  v56 = v0[49];
  v134 = v0[44];
  v135 = v0[43];
  v137 = v0[42];
  v58 = v0[39];
  v59 = v0[40];
  v132 = v0[38];
  v133 = v0[41];
  v139 = v0[37];
  v140 = v53;
  v143 = v0[30];
  v145 = v0[53];
  sub_26818F510(v0[56], v54, &qword_28024E770, &qword_2683D80D0);
  sub_26818F510(v53, v55, &qword_28024E770, &qword_2683D80D0);
  v60 = *(v57 + 80);
  v61 = (v60 + 24) & ~v60;
  v62 = (v56 + v60 + v61) & ~v60;
  v63 = swift_allocObject();
  v0[62] = v63;
  *(v63 + 16) = v149;
  sub_2681430AC(v54, v63 + v61);
  sub_2681430AC(v55, v63 + v62);
  (*(v58 + 16))(v59, v133, v132);
  v64 = swift_task_alloc();
  v72 = OUTLINED_FUNCTION_66_0(v64, v65, v66, v67, v68, v69, v70, v71, v131, v132, v133, v134, v135, v137, v139, v140, v142, v143, v145, v147);
  *(v72 + 64) = 2;
  *(v72 + 65) = v148;
  *(v72 + 72) = sub_2681B5854;
  *(v72 + 80) = v63;
  *(v72 + 88) = 0;
  *(v72 + 96) = v136;
  *(v72 + 104) = 2;
  *(v72 + 112) = v138;

  sub_2683CC8E8();

  sub_26818F510(v141, v146, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v146, 1, v144) == 1)
  {
    v73 = v0 + 53;
  }

  else
  {
    v74 = v0[56];
    v75 = v0[52];
    v76 = v0[30];
    sub_26814320C(v0[53], v0[34]);
    v77 = OUTLINED_FUNCTION_41_0();
    sub_26818F510(v77, v78, v79, v80);
    if (OUTLINED_FUNCTION_88_0() != 1)
    {
      v109 = v0[34];
      v110 = v0[30];
      sub_26814320C(v0[52], v0[33]);
      v0[20] = v110;
      v111 = sub_268143270();
      v0[21] = v111;
      __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      v112 = OUTLINED_FUNCTION_56_1();
      sub_2681432C8(v112, v113);
      v0[25] = v110;
      v0[26] = v111;
      __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      v114 = OUTLINED_FUNCTION_92_0();
      sub_2681432C8(v114, v115);
      OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD30]);
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[63] = v116;
      *v116 = v117;
      v116[1] = sub_2681A9998;
      v118 = v0[37];
      v119 = v0[27];
      OUTLINED_FUNCTION_72_0();

      __asm { BR              X5 }
    }

    v73 = v0 + 52;
    sub_26814332C(v0[34]);
  }

  v81 = *v73;
  v82 = v0[57];
  v83 = v0[51];
  v84 = v0[30];
  OUTLINED_FUNCTION_130_0(v81);
  v85 = OUTLINED_FUNCTION_41_0();
  sub_26818F510(v85, v86, &qword_28024E770, &qword_2683D80D0);
  v87 = OUTLINED_FUNCTION_88_0();
  v88 = v0[51];
  v89 = v0[30];
  if (v87 == 1)
  {
    v90 = v0[56];
    v91 = v0[50];
    OUTLINED_FUNCTION_130_0(v88);
    v92 = OUTLINED_FUNCTION_30_5();
    sub_26818F510(v92, v93, v94, &qword_2683D80D0);
    v95 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v95, v96, v89) == 1)
    {
      sub_2681433DC(v0[50], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD50]);
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[66] = v97;
      *v97 = v98;
      v97[1] = sub_2681AA218;
      v99 = v0[37];
      v100 = v0[27];
      OUTLINED_FUNCTION_72_0();

      __asm { BR              X3 }
    }

    v122 = v0[30];
    sub_26814320C(v0[50], v0[31]);
    v0[10] = v122;
    v0[11] = sub_268143270();
    __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    v123 = OUTLINED_FUNCTION_56_1();
    sub_2681432C8(v123, v124);
    OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD40]);
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[65] = v125;
    *v125 = v126;
    v125[1] = sub_2681A9F48;
    v127 = v0[37];
    v128 = v0[27];
  }

  else
  {
    sub_26814320C(v88, v0[32]);
    v0[15] = v89;
    v0[16] = sub_268143270();
    __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    v103 = OUTLINED_FUNCTION_92_0();
    sub_2681432C8(v103, v104);
    OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD38]);
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[64] = v105;
    *v105 = v106;
    v105[1] = sub_2681A9C78;
    v107 = v0[37];
    v108 = v0[27];
  }

  OUTLINED_FUNCTION_72_0();

  __asm { BR              X4 }
}

uint64_t sub_2681A9998()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 504);
  v6 = *(v4 + 488);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681A9AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_60_0();
  v24 = v23[38];
  v25 = v23[39];
  v27 = v23[36];
  v26 = v23[37];
  v29 = v23[34];
  v28 = v23[35];
  v30 = v23[33];

  sub_26814332C(v30);
  sub_26814332C(v29);
  v31 = *(v27 + 8);
  v32 = OUTLINED_FUNCTION_19_2();
  v33(v32);
  v34 = *(v25 + 8);
  v35 = OUTLINED_FUNCTION_55_0();
  v36(v35);
  sub_2681433DC(v22, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_5_14();
  sub_2681433DC(v25 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v27 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC((v23 + 2), &qword_28024E7B8, &unk_2683D80E0);
  sub_2681433DC(v26, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2681A9C78()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 512);
  v6 = *(v4 + 488);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681A9D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_60_0();
  v25 = v23[38];
  v26 = v23[39];
  v28 = v23[36];
  v27 = v23[37];
  v29 = v23[35];
  v30 = v23[32];

  sub_26814332C(v30);
  v31 = *(v28 + 8);
  v32 = OUTLINED_FUNCTION_19_2();
  v33(v32);
  v34 = *(v26 + 8);
  v35 = OUTLINED_FUNCTION_55_0();
  v36(v35);
  sub_2681433DC(v22, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_5_14();
  sub_2681433DC(v28 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC((v23 + 2), &qword_28024E7B8, &unk_2683D80E0);
  sub_2681433DC(v27, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2681A9F48()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 520);
  v6 = *(v4 + 488);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681AA048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_60_0();
  v25 = v23[38];
  v26 = v23[39];
  v28 = v23[36];
  v27 = v23[37];
  v29 = v23[35];
  v30 = v23[31];

  sub_26814332C(v30);
  v31 = *(v28 + 8);
  v32 = OUTLINED_FUNCTION_19_2();
  v33(v32);
  v34 = *(v26 + 8);
  v35 = OUTLINED_FUNCTION_55_0();
  v36(v35);
  sub_2681433DC(v22, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_5_14();
  sub_2681433DC(v28 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC((v23 + 2), &qword_28024E7B8, &unk_2683D80E0);
  sub_2681433DC(v27, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2681AA218()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 528);
  v3 = *(v1 + 488);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681AA318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_60_0();
  v26 = v23[38];
  v27 = v23[39];
  v29 = v23[36];
  v28 = v23[37];
  v30 = v23[35];

  v31 = *(v29 + 8);
  v32 = OUTLINED_FUNCTION_19_2();
  v33(v32);
  v34 = *(v27 + 8);
  v35 = OUTLINED_FUNCTION_55_0();
  v36(v35);
  sub_2681433DC(v22, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_5_14();
  sub_2681433DC(v24, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC((v23 + 2), &qword_28024E7B8, &unk_2683D80E0);
  sub_2681433DC(v28, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2681AA4DC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64);
  v1[5] = OUTLINED_FUNCTION_55();
  v1[6] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2681AA574()
{
  OUTLINED_FUNCTION_52_1();
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v2 = sub_2683CC848();
  *(v0 + 56) = v2;
  v3 = sub_2683CC818();
  *(v0 + 64) = v3;
  sub_268185828();
  v5 = v4;
  v6 = sub_2682E5D30(v3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = [v2 title];
  if (v8)
  {
    v9 = v8;
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_2683CFEA8();

    v12 = sub_2683CF168();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_23_0(v12);
    (*(v16 + 32))(v10, v11, v12);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  else
  {
    v20 = *(v0 + 40);
    v21 = sub_2683CF168();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    sub_268176AD8(v2);
    if (v25)
    {
      v26 = *(v0 + 48);
      sub_2683CFB38();
    }

    v27 = *(v0 + 40);
    OUTLINED_FUNCTION_103_0(*(v0 + 48));
    if (!v28)
    {
      sub_2681433DC(*(v0 + 40), &unk_28024E7C0, &unk_2683D6CA0);
    }
  }

  v29 = **(v0 + 32);
  v30 = sub_268229348(v5);

  v31 = sub_268229348(v7);

  if (__OFADD__(v30, v31))
  {
    __break(1u);
  }

  else
  {
    sub_268185F90();
    if (v33)
    {
      sub_268229348(v33);
      OUTLINED_FUNCTION_97_0();
    }

    v34 = *(v0 + 32);
    v35 = OUTLINED_FUNCTION_18_10();
    sub_2681AB7CC(v35, v36);
    v37 = OUTLINED_FUNCTION_18_10();
    sub_2681AB868(v37, v38);
    v39 = OUTLINED_FUNCTION_18_10();
    sub_2681AB8F8(v39);
    [v2 status];
    [v2 dateSearchType];
    [v2 taskPriority];
    sub_26818598C();
    sub_268185F40();
    sub_268185F40();
    v53 = sub_26818598C();
    OUTLINED_FUNCTION_102_0();
    if ((OUTLINED_FUNCTION_102_0() & 4) != 0)
    {
      OUTLINED_FUNCTION_102_0();
    }

    v40 = [v2 dateTime];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 allDay];

      if (v42)
      {
        [v42 BOOLValue];
      }
    }

    v43 = *(v0 + 24);
    sub_2683CF138();
    v44 = sub_2683CC828();
    *(v0 + 72) = sub_26818F730(v44);
    v45 = [v2 dateTime];
    if (v45)
    {
      v46 = v45;
      v47 = sub_2683608FC();
    }

    else
    {
      v47 = 0;
    }

    *(v0 + 80) = v47;
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    *(v0 + 88) = v48;
    *v48 = v49;
    v48[1] = sub_2681AA9E4;
    v50 = *(v0 + 48);
    v51 = *(v0 + 16);
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_133();

    return sub_26819E9AC();
  }

  return result;
}

uint64_t sub_2681AA9E4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v10 + 96) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2681AAB1C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  sub_2681433DC(v3, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_7_4();

  return v4();
}

uint64_t sub_2681AABAC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  sub_2681433DC(v3, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_40();
  v5 = *(v0 + 96);

  return v4();
}

uint64_t sub_2681AAC40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AAC54()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v2 = sub_2683CC818();
  v3 = sub_26818598C();

  v4 = sub_2683CC818();
  v5 = sub_268185F40();

  if (v5 >= v3)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v11 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v11, qword_28027C958);
    v8 = sub_2683CF7C8();
    v12 = sub_2683CFE98();
    if (!OUTLINED_FUNCTION_43(v12))
    {
      goto LABEL_14;
    }

    v10 = "[SFNI HandleIntentStrategy] Not creating see all in app button, total count is less than display threshold";
    goto LABEL_13;
  }

  v6 = v0[3];
  v5 = *(v6 + 40);
  __swift_project_boxed_opaque_existential_1((v6 + 16), v5);
  OUTLINED_FUNCTION_55_0();
  if (sub_2683CC0B8() & 1) != 0 || (v5 = *(v6 + 40), __swift_project_boxed_opaque_existential_1((v6 + 16), v5), OUTLINED_FUNCTION_55_0(), (sub_2683CC0D8()) || (v5 = *(v6 + 40), __swift_project_boxed_opaque_existential_1((v6 + 16), v5), OUTLINED_FUNCTION_55_0(), (sub_2683CC0C8()))
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v7 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v7, qword_28027C958);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (!OUTLINED_FUNCTION_43(v9))
    {
      goto LABEL_14;
    }

    v10 = "[SFNI HandleIntentStrategy] Not creating see all in app button, button not supported on platform";
LABEL_13:
    v13 = OUTLINED_FUNCTION_21_5();
    *v13 = 0;
    _os_log_impl(&dword_2680EB000, v8, v5, v10, v13, 2u);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
LABEL_14:

    OUTLINED_FUNCTION_37();

    return v14(0);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v16 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v16, qword_28027C958);
  v17 = sub_2683CF7C8();
  v18 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_43(v18))
  {
    v19 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_32_5(v19);
    OUTLINED_FUNCTION_29();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  v25 = v0[3];

  __swift_project_boxed_opaque_existential_1((v25 + 96), *(v25 + 120));
  v26 = swift_task_alloc();
  v0[4] = v26;
  *v26 = v0;
  v26[1] = sub_2681AAF58;
  OUTLINED_FUNCTION_39_4(v0[2]);

  return sub_2681C482C();
}

uint64_t sub_2681AAF58()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v4 = *(v3 + 32);
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_2681AB040(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681AB0E8, 0, 0);
}

uint64_t sub_2681AB0E8()
{
  OUTLINED_FUNCTION_52_1();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v2 = sub_2683CC848();
  v0[6] = v2;
  v3 = sub_2683CC818();
  v0[7] = v3;
  sub_268185828();
  v5 = v4;
  v6 = sub_2682E5D30(v3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = [v2 title];
  if (v8)
  {
    v9 = v8;
    v11 = v0[4];
    v10 = v0[5];
    sub_2683CFEA8();

    v12 = sub_2683CF168();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
    OUTLINED_FUNCTION_23_0(v12);
    (*(v16 + 32))(v10, v11, v12);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  else
  {
    v20 = v0[4];
    v21 = sub_2683CF168();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
    sub_268176AD8(v2);
    if (v25)
    {
      v26 = v0[5];
      sub_2683CFB38();
    }

    v27 = v0[4];
    OUTLINED_FUNCTION_103_0(v0[5]);
    if (!v28)
    {
      sub_2681433DC(v0[4], &unk_28024E7C0, &unk_2683D6CA0);
    }
  }

  v29 = *(v0[3] + 8);
  v30 = sub_268229348(v5);

  v31 = sub_268229348(v7);

  if (__OFADD__(v30, v31))
  {
    __break(1u);
  }

  else
  {
    sub_268185F90();
    if (v33)
    {
      sub_268229348(v33);
      OUTLINED_FUNCTION_97_0();
    }

    v34 = v0[3];
    v35 = OUTLINED_FUNCTION_18_10();
    sub_2681AB7CC(v35, v36);
    v37 = OUTLINED_FUNCTION_18_10();
    sub_2681AB868(v37, v38);
    v39 = OUTLINED_FUNCTION_18_10();
    sub_2681AB8F8(v39);
    [v2 status];
    [v2 dateSearchType];
    [v2 taskPriority];
    sub_26818598C();
    sub_268185F40();
    sub_268185F40();
    sub_26818598C();
    OUTLINED_FUNCTION_102_0();
    if ((OUTLINED_FUNCTION_102_0() & 4) != 0)
    {
      OUTLINED_FUNCTION_102_0();
    }

    v40 = [v2 dateTime];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 allDay];

      if (v42)
      {
        [v42 BOOLValue];
      }
    }

    v43 = v0[2];
    sub_2683CF138();
    v44 = sub_2683CC828();
    v0[8] = sub_26818F730(v44);
    v45 = [v2 dateTime];
    if (v45)
    {
      v46 = v45;
      v47 = sub_2683608FC();
    }

    else
    {
      v47 = 0;
    }

    v0[9] = v47;
    v48 = swift_task_alloc();
    v49 = OUTLINED_FUNCTION_83_0(v48);
    *v49 = v50;
    v49[1] = sub_2681AB54C;
    v51 = v0[5];
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_39_4(v52);
    OUTLINED_FUNCTION_133();

    return sub_2681FF57C();
  }

  return result;
}

uint64_t sub_2681AB54C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = v4[10];
  *v6 = *v1;
  v5[11] = v0;

  v8 = v4[9];
  v9 = v4[8];
  if (!v0)
  {
    v5[12] = v3;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681AB6A0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  sub_2681433DC(v3, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_37();
  v5 = *(v0 + 96);

  return v4(v5);
}

uint64_t sub_2681AB738()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  sub_2681433DC(v3, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_40();
  v5 = *(v0 + 88);

  return v4();
}

BOOL sub_2681AB7CC(uint64_t a1, void *a2)
{
  v3 = sub_2682E5CA0(a2);
  v4 = v3;
  if (v3)
  {
    v5 = sub_268229348(v3);

    v4 = v5 == 1;
  }

  v6 = sub_2682E5FA4(a2);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v4)
  {
    v8 = sub_268229348(v7);

    return v8 == 0;
  }

  else
  {

    return 0;
  }
}

BOOL sub_2681AB868(void *a1, void *a2)
{
  v3 = sub_2682E5D30(a2);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = sub_26818598C();
  if (v5 < 1)
  {

    return [a1 itemType] == 1;
  }

  else
  {
    v6 = v5;
    v7 = sub_268229348(v4);

    return v6 == v7;
  }
}

BOOL sub_2681AB8F8(void *a1)
{
  sub_268185828();
  v3 = v2;
  v4 = sub_26818598C();
  if (v4 < 1)
  {

    return [a1 itemType] == 3;
  }

  else
  {
    v5 = v4;
    v6 = sub_268229348(v3);

    return v5 == v6;
  }
}

uint64_t sub_2681AB978(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AB990()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v2 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[4] + 136), *(v0[4] + 160));
  v3 = OUTLINED_FUNCTION_9_0();
  sub_2682B28A0(v3, v4);
  OUTLINED_FUNCTION_37();

  return v5();
}

uint64_t sub_2681ABA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268133EC8;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_2681ABACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3D0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9C70](a1, a2, a3, a4);
}

uint64_t sub_2681ABB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9C48](a1, a2, a3, a4);
}

uint64_t sub_2681ABC54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2681A5880();
}

uint64_t sub_2681ABCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3C0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9C60](a1, a2, a3, a4);
}

uint64_t sub_2681ABDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3B8] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9C58](a1, a2, a3, a4);
}

uint64_t sub_2681ABE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B3A0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9C38](a1, a2, a3, a4);
}

uint64_t sub_2681ABF48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268167A44;

  return sub_2681AB978(a1, a2);
}

unint64_t sub_2681ABFF0()
{
  result = qword_28024E720;
  if (!qword_28024E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E720);
  }

  return result;
}

void *sub_2681AC098()
{
  v1 = v0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v32 = *v0;
  v26 = *(v32 + 16);
  v4 = (v32 + 48);
  while (v26 != v2)
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v28 = v4;
    v29 = v2;
    v7 = *v4;
    v9 = v1[2];
    v8 = v1[3];
    v27 = v3;
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E830, &unk_2683E65B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2683D1EC0;
      sub_2681B4774(v5, v6, v7);
      sub_2681B4C18(v9);
      *(v10 + 32) = v9(v2);
      *(v10 + 40) = v11;
      sub_268128194(v9);
    }

    else
    {
      sub_2681B4774(v5, v6, v7);
      v10 = MEMORY[0x277D84F90];
    }

    v31 = v1[1];
    v12 = v1[5];
    v30[0] = v7;
    v13 = swift_allocObject();
    v14 = *(v1 + 1);
    *(v13 + 16) = *v1;
    *(v13 + 32) = v14;
    *(v13 + 48) = *(v1 + 2);
    *(v13 + 64) = v5;
    *(v13 + 72) = v6;
    *(v13 + 80) = v30[0];
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = &unk_2683D8188;
    v15[4] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2683D1EC0;
    *(v16 + 32) = &unk_2683D8198;
    *(v16 + 40) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    sub_2681B4C18(v9);
    sub_26818F510(&v32, v30, &qword_28024E820, &qword_2683D81A8);
    sub_26818F510(&v31, v30, &qword_28024E828, &unk_2683D81B0);

    sub_2681B4774(v5, v6, v7);

    v3 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v27 + 16) + 1, 1, v27);
      v3 = v21;
    }

    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_2682E511C(v18 > 1, v19 + 1, 1, v3);
      v3 = v22;
    }

    sub_2681B4940(v5, v6, v7);
    *(v3 + 16) = v19 + 1;
    v20 = v3 + 16 * v19;
    *(v20 + 32) = &unk_2683D81A0;
    *(v20 + 40) = v17;
    v4 = v28 + 24;
    v2 = v29 + 1;
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2683D1EC0;
  *(v24 + 32) = &unk_2683D81C0;
  *(v24 + 40) = v23;
  *(swift_allocObject() + 16) = v24;
  return &unk_2683D81C8;
}

void *sub_2681AC418()
{
  v1 = v0;
  v2 = v0[1];
  v29[0] = *v0;
  v29[1] = v2;
  v3 = v2;
  v27 = *(&v2 + 1) >> 1;
  result = swift_unknownObjectRetain();
  v5 = 0;
  v26 = *(&v29[0] + 1) + 8 * v3;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (!(v3 - (*(&v3 + 1) >> 1) + v5))
    {
      sub_2681433DC(v29, &unk_28024E8A0, &qword_2683D83A0);
      v24 = swift_allocObject();
      *(v24 + 16) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2683D1EC0;
      *(v25 + 32) = &unk_2683D83A8;
      *(v25 + 40) = v24;
      *(swift_allocObject() + 16) = v25;
      return &unk_2683D83B0;
    }

    if (v3 + v5 >= v27)
    {
      break;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v26 + 8 * v5);
    v8 = v1[5];
    if (v8)
    {
      v9 = v1[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E830, &unk_2683E65B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2683D1EC0;
      v11 = v7;
      sub_2681B4C18(v8);
      *(v10 + 32) = v8(v5);
      *(v10 + 40) = v12;
      sub_268128194(v8);
    }

    else
    {
      v13 = v7;
      v10 = MEMORY[0x277D84F90];
    }

    v14 = swift_allocObject();
    memcpy((v14 + 16), v1, 0x48uLL);
    *(v14 + 88) = v7;
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = &unk_2683D8380;
    v15[4] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2683D1EC0;
    *(v16 + 32) = &unk_2683D8388;
    *(v16 + 40) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    sub_26818F510(v1, v28, &qword_28024E898, &qword_2683D8398);
    v18 = v7;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v6 + 16) + 1, 1, v6);
      v6 = v22;
    }

    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2682E511C(v19 > 1, v20 + 1, 1, v6);
      v6 = v23;
    }

    *(v6 + 16) = v20 + 1;
    v21 = v6 + 16 * v20;
    *(v21 + 32) = &unk_2683D8390;
    *(v21 + 40) = v17;
    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_2681AC75C()
{
  v1 = v0;
  v2 = v0[1];
  v29[0] = *v0;
  v29[1] = v2;
  v3 = v2;
  v27 = *(&v2 + 1) >> 1;
  result = swift_unknownObjectRetain();
  v5 = 0;
  v26 = *(&v29[0] + 1) + 8 * v3;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (!(v3 - (*(&v3 + 1) >> 1) + v5))
    {
      sub_2681433DC(v29, &qword_28024E890, &unk_2683D82F0);
      v24 = swift_allocObject();
      *(v24 + 16) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2683D1EC0;
      *(v25 + 32) = &unk_2683F1CF0;
      *(v25 + 40) = v24;
      *(swift_allocObject() + 16) = v25;
      return &unk_2683D8300;
    }

    if (v3 + v5 >= v27)
    {
      break;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v26 + 8 * v5);
    v8 = v1[5];
    if (v8)
    {
      v9 = v1[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E830, &unk_2683E65B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2683D1EC0;
      v11 = v7;
      sub_2681B4C18(v8);
      *(v10 + 32) = v8(v5);
      *(v10 + 40) = v12;
      sub_268128194(v8);
    }

    else
    {
      v13 = v7;
      v10 = MEMORY[0x277D84F90];
    }

    v14 = swift_allocObject();
    memcpy((v14 + 16), v1, 0x48uLL);
    *(v14 + 88) = v7;
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = &unk_2683D82D0;
    v15[4] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2683D1EC0;
    *(v16 + 32) = &unk_2683D82D8;
    *(v16 + 40) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    sub_26818F510(v1, v28, &qword_28024E888, &qword_2683D82E8);
    v18 = v7;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v6 + 16) + 1, 1, v6);
      v6 = v22;
    }

    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2682E511C(v19 > 1, v20 + 1, 1, v6);
      v6 = v23;
    }

    *(v6 + 16) = v20 + 1;
    v21 = v6 + 16 * v20;
    *(v21 + 32) = &unk_2683D82E0;
    *(v21 + 40) = v17;
    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_2681ACAA0()
{
  v1 = v0;
  v2 = v0[1];
  v29[0] = *v0;
  v29[1] = v2;
  v3 = v2;
  v27 = *(&v2 + 1) >> 1;
  result = swift_unknownObjectRetain();
  v5 = 0;
  v26 = *(&v29[0] + 1) + 8 * v3;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (!(v3 - (*(&v3 + 1) >> 1) + v5))
    {
      sub_2681433DC(v29, &qword_28024E880, &qword_2683D8260);
      v24 = swift_allocObject();
      *(v24 + 16) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2683D1EC0;
      *(v25 + 32) = &unk_2683D8268;
      *(v25 + 40) = v24;
      *(swift_allocObject() + 16) = v25;
      return &unk_2683D8270;
    }

    if (v3 + v5 >= v27)
    {
      break;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v26 + 8 * v5);
    v8 = v1[5];
    if (v8)
    {
      v9 = v1[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E830, &unk_2683E65B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2683D1EC0;
      v11 = v7;
      sub_2681B4C18(v8);
      *(v10 + 32) = v8(v5);
      *(v10 + 40) = v12;
      sub_268128194(v8);
    }

    else
    {
      v13 = v7;
      v10 = MEMORY[0x277D84F90];
    }

    v14 = swift_allocObject();
    memcpy((v14 + 16), v1, 0x48uLL);
    *(v14 + 88) = v7;
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = &unk_2683D8240;
    v15[4] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2683D1EC0;
    *(v16 + 32) = &unk_2683D8248;
    *(v16 + 40) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    sub_26818F510(v1, v28, &qword_28024E878, &qword_2683D8258);
    v18 = v7;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v6 + 16) + 1, 1, v6);
      v6 = v22;
    }

    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2682E511C(v19 > 1, v20 + 1, 1, v6);
      v6 = v23;
    }

    *(v6 + 16) = v20 + 1;
    v21 = v6 + 16 * v20;
    *(v21 + 32) = &unk_2683D8250;
    *(v21 + 40) = v17;
    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

id sub_2681ACDE4()
{
  v1 = v0;
  v2 = *v0;
  result = sub_2683ABE58(*v0);
  v4 = 0;
  v27 = v2 & 0xC000000000000001;
  v28 = result;
  v5 = MEMORY[0x277D84F90];
  v26 = v2 & 0xFFFFFFFFFFFFFF8;
  v25 = v2;
  while (1)
  {
    if (v28 == v4)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_2683D1EC0;
      *(v24 + 32) = &unk_2683D8348;
      *(v24 + 40) = v23;
      *(swift_allocObject() + 16) = v24;
      return &unk_2683D8350;
    }

    if (v27)
    {
      result = MEMORY[0x26D616C90](v4, v2);
    }

    else
    {
      if (v4 >= *(v26 + 16))
      {
        goto LABEL_18;
      }

      result = *(v2 + 8 * v4 + 32);
    }

    v6 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v8 = v1[2];
    v7 = v1[3];
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E830, &unk_2683E65B0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_2683D1EC0;

      *(v9 + 32) = v8(v4);
      *(v9 + 40) = v10;
      sub_268128194(v8);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v30 = v1[1];
    v11 = v1[5];
    v12 = swift_allocObject();
    v13 = *(v1 + 1);
    *(v12 + 16) = *v1;
    *(v12 + 32) = v13;
    *(v12 + 48) = *(v1 + 2);
    *(v12 + 64) = v6;
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = &unk_2683D8330;
    v14[4] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2683D1EC0;
    *(v15 + 32) = &unk_2683D8338;
    *(v15 + 40) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_2681B4C18(v8);
    v2 = v25;

    sub_26818F510(&v30, v29, &qword_28024E828, &unk_2683D81B0);

    v17 = v6;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v5 + 16) + 1, 1, v5);
      v5 = v21;
    }

    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_2682E511C(v18 > 1, v19 + 1, 1, v5);
      v5 = v22;
    }

    *(v5 + 16) = v19 + 1;
    v20 = v5 + 16 * v19;
    *(v20 + 32) = &unk_2683D8340;
    *(v20 + 40) = v16;
    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2681AD14C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4 & 1;
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v4 + 56) = v8;
  *v8 = v4;
  v8[1] = sub_2681AD258;

  return v10(v4 + 40, v4 + 16);
}

uint64_t sub_2681AD258()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681AD350()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  *(v1 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = &unk_2683D81E0;
  *(v2 + 40) = v1;
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_12(v3);
  v4 = OUTLINED_FUNCTION_94_0();

  return v5(v4);
}

uint64_t sub_2681AD420()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 64);
  return v2();
}

uint64_t sub_2681AD444(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v3 = *(a1 + 64);
  v7 = (*(a1 + 56) + **(a1 + 56));
  v4 = *(*(a1 + 56) + 4);
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_2681AD544;

  return v7(v2 + 16, v2 + 32);
}

uint64_t sub_2681AD544()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681AD63C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_63_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = &unk_2683D83C0;
  *(v2 + 40) = v0;
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_12(v3);
  v4 = OUTLINED_FUNCTION_94_0();

  return v5(v4);
}

uint64_t sub_2681AD704(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v3 = *(a1 + 64);
  v7 = (*(a1 + 56) + **(a1 + 56));
  v4 = *(*(a1 + 56) + 4);
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_2681AD804;

  return v7(v2 + 16, v2 + 32);
}

uint64_t sub_2681AD804()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681AD8FC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_63_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = &unk_2683D8310;
  *(v2 + 40) = v0;
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_12(v3);
  v4 = OUTLINED_FUNCTION_94_0();

  return v5(v4);
}

uint64_t sub_2681AD9C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v3 = *(a1 + 64);
  v7 = (*(a1 + 56) + **(a1 + 56));
  v4 = *(*(a1 + 56) + 4);
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_2681ADAC4;

  return v7(v2 + 16, v2 + 32);
}

uint64_t sub_2681ADAC4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681ADBBC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_63_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = &unk_2683D8280;
  *(v2 + 40) = v0;
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_12(v3);
  v4 = OUTLINED_FUNCTION_94_0();

  return v5(v4);
}

uint64_t sub_2681ADC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(v2 + 32) = a2;
  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v2 + 40) = v6;
  *v6 = v2;
  v6[1] = sub_2681ADD84;

  return v8(v2 + 16, v2 + 32);
}

uint64_t sub_2681ADD84()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681ADE7C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_63_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = &unk_2683D8360;
  *(v2 + 40) = v0;
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_12(v3);
  v4 = OUTLINED_FUNCTION_94_0();

  return v5(v4);
}

uint64_t sub_2681ADF44()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 48);
  return v2();
}

uint64_t sub_2681ADF68(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681ADF7C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  v1 = v0[8];
  v10 = v0[7];

  sub_2682C038C(MEMORY[0x277D84F90]);
  v0[9] = v10;
  v0[5] = &unk_28790BA10;
  v0[6] = &off_28790BA28;
  v0[2] = v1;
  v2 = *__swift_project_boxed_opaque_existential_1(v0 + 2, &unk_28790BA10);

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_83_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_26_4(v4);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_101();

  return sub_26835E928(v6, v7);
}

uint64_t sub_2681AE05C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v6 + 72);
  v9 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2681AE17C()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_2681AE1DC()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_2681AE238(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AE24C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 176);
  v2 = *(v1 + 40);
  v14 = *(v0 + 168);

  sub_2682C038C(v2);
  *(v0 + 184) = v14;
  *(v0 + 152) = &_s9DetailRowVN;
  *(v0 + 160) = &off_28790B800;
  OUTLINED_FUNCTION_113_0();
  v3 = swift_allocObject();
  *(v0 + 128) = v3;
  v5 = *(v1 + 16);
  v4 = *(v1 + 32);
  v6 = *v1;
  *(v3 + 64) = *(v1 + 48);
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
  *(v3 + 16) = v6;
  v7 = __swift_project_boxed_opaque_existential_1((v0 + 128), &_s9DetailRowVN);
  v9 = *(v7 + 1);
  v8 = *(v7 + 2);
  v10 = *v7;
  *(v0 + 64) = v7[6];
  *(v0 + 32) = v9;
  *(v0 + 48) = v8;
  *(v0 + 16) = v10;
  sub_2681B54D4(v1, v0 + 72);
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_58_1(v11);

  return sub_26835C190(v12);
}

uint64_t sub_2681AE37C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v7 = *(v6 + 192);
  v8 = *(v6 + 184);
  v9 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v4 + 200) = v0;

  if (!v0)
  {
    *(v4 + 208) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2681AE49C()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 208);

  return v1(v2);
}

uint64_t sub_2681AE4FC()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 200);

  return v1();
}

uint64_t sub_2681AE558()
{
  OUTLINED_FUNCTION_14();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = sub_2683CAEA8();
  v0[7] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v0[8] = v5;
  v7 = *(v6 + 64) + 15;
  v0[9] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_2681AE608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_51_2();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_52_1();
  a28 = v30;
  v33 = v30[8];
  v34 = v30[5];
  a19 = v30[4];

  v35 = MEMORY[0x277D84F90];
  sub_2682C038C(MEMORY[0x277D84F90]);
  v92 = a19;
  v30[10] = a19;
  v36 = sub_2683ABE58(v34);
  v37 = 0;
  v38 = v34 & 0xC000000000000001;
  v96 = v34 & 0xFFFFFFFFFFFFFF8;
  v97 = v34 + 32;
  v91 = (v33 + 8);
  *&v39 = 136315138;
  v93 = v39;
  v94 = v35;
  v95 = v30;
LABEL_2:
  v40 = v96;
  while (v36 != v37)
  {
    if (v38)
    {
      v41 = MEMORY[0x26D616C90](v37, v30[5]);
    }

    else
    {
      if (v37 >= *(v40 + 16))
      {
        goto LABEL_31;
      }

      v41 = *(v97 + 8 * v37);
    }

    v42 = v41;
    v43 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    v45 = v44;
    if (v44)
    {
      v46 = sub_26813CCC8(v44);
      if (v47)
      {
        v63 = v30[9];
        v64 = v38;
        v65 = v30[7];
        v30[2] = v46;
        v30[3] = v47;
        sub_2683CAE78();
        sub_26812A1AC();
        v49 = sub_2683CFFE8();
        a11 = v66;
        v67 = *v91;
        v68 = OUTLINED_FUNCTION_18_10();
        v38 = v64;
        v69(v68);

        goto LABEL_22;
      }
    }

    else
    {
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
        v49 = [v48 image];

        if (v49)
        {
          a11 = 0;
LABEL_22:
          v70 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = *(v94 + 16);
            sub_2682E514C();
            v70 = v74;
          }

          v30 = v95;
          v71 = *(v70 + 16);
          if (v71 >= *(v70 + 24) >> 1)
          {
            sub_2682E514C();
            v70 = v75;
          }

          *(v70 + 16) = v71 + 1;
          v94 = v70;
          v72 = v70 + 24 * v71;
          *(v72 + 32) = v49;
          *(v72 + 40) = a11;
          *(v72 + 48) = v45 != 0;
          v37 = v43;
          goto LABEL_2;
        }
      }

      else
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v51 = v30[5];
        v50 = v30[6];
        v52 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v52, qword_28027C958);

        v53 = sub_2683CF7C8();
        v54 = sub_2683CFE78();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = v30[5];
          OUTLINED_FUNCTION_87_0();
          v56 = swift_slowAlloc();
          OUTLINED_FUNCTION_86_0();
          v57 = v38;
          v58 = swift_slowAlloc();
          a19 = v58;
          *v56 = v93;
          sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
          v59 = OUTLINED_FUNCTION_92_0();
          v60 = MEMORY[0x26D6167A0](v59);
          v62 = sub_2681610A0(v60, v61, &a19);

          *(v56 + 4) = v62;
          _os_log_impl(&dword_2680EB000, v53, v54, "[CasinoCards.NoteContent] unknown noteContent type: %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v58);
          v38 = v57;
          v30 = v95;
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        v40 = v96;
      }
    }

    ++v37;
  }

  v77 = v30[5];
  v76 = v30[6];
  OUTLINED_FUNCTION_69_0();
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  *(v78 + 24) = v76;
  v79 = swift_allocObject();
  v79[2] = v94;
  v79[3] = MEMORY[0x277D84F90];
  v79[4] = sub_2681B4280;
  v79[5] = 0;
  v79[6] = &unk_2683D8150;
  v79[7] = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_2683D1EC0;
  *(v80 + 32) = &unk_2683D8160;
  *(v80 + 40) = v79;
  OUTLINED_FUNCTION_68_0();
  v81 = swift_allocObject();
  v30[11] = v81;
  *(v81 + 16) = v80;

  v82 = swift_task_alloc();
  v30[12] = v82;
  *v82 = v30;
  v82[1] = sub_2681AEB14;
  OUTLINED_FUNCTION_48_3();

  v86(v83, v84, v85, v86, v87, v88, v89, v90, a9, v91, a11, v92, v93, *(&v93 + 1), v94, v95, v96, sub_2681AEC74, a19, a20, a21, a22);
}

uint64_t sub_2681AEB14()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 80);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;

  v10 = *(v4 + 72);

  v12 = *(v8 + 8);
  if (!v0)
  {
    v11 = v3;
  }

  return v12(v11);
}

uint64_t sub_2681AEC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AEC8C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  v2 = v0[8];
  v1 = v0[9];
  v18 = v0[7];

  sub_2682C038C(MEMORY[0x277D84F90]);
  v0[10] = v18;
  v0[5] = &_s16AnyCardComponentVN;
  v0[6] = &off_287908C10;
  v0[2] = v2;
  v0[3] = v1;
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, &_s16AnyCardComponentVN);
  v5 = *v3;
  v4 = v3[1];

  v17 = v5 + *v5;
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_26_4(v7);
  OUTLINED_FUNCTION_101();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_2681AEDCC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681AEED0()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  OUTLINED_FUNCTION_37();
  v3 = v0[13];

  return v2(v3);
}

uint64_t sub_2681AEF38()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  OUTLINED_FUNCTION_40();
  v3 = v0[12];

  return v2();
}

uint64_t sub_2681AEF9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AEFB0()
{
  OUTLINED_FUNCTION_15();
  v1 = *(*(v0 + 24) + 8);
  v21 = *(v0 + 16);

  v3 = sub_2682C038C(v2);
  OUTLINED_FUNCTION_44_3(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21);
  v11 = sub_2681AC098();
  OUTLINED_FUNCTION_42_5(v11, v12);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_22(v13);
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_9_14(v14);

  return v17(v16);
}

uint64_t sub_2681AF06C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  v4 = v3[6];
  v5 = v3[5];
  v6 = v3[4];
  v7 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v9 = v0;
  }

  return v10(v9);
}

uint64_t sub_2681AF194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AF1AC()
{
  OUTLINED_FUNCTION_15();
  v2 = v0[5];
  v1 = v0[6];
  v10 = v0[4];

  sub_2682C038C(v3);
  v0[8] = v10;
  v9 = (v1 + *v1);
  v4 = v1[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[9] = v5;
  *v5 = v6;
  v5[1] = sub_2681AF2C4;
  v7 = v0[7];

  return v9(v0 + 2);
}

uint64_t sub_2681AF2C4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681AF3C4()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[2];
  v0[11] = v0[3];
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_2681AF468;
  OUTLINED_FUNCTION_39_4(v0[8]);
  OUTLINED_FUNCTION_91_0();

  return v3();
}

uint64_t sub_2681AF468()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  v4 = v3[12];
  v5 = v3[11];
  v6 = v3[8];
  v7 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v9 = v0;
  }

  return v10(v9);
}

uint64_t sub_2681AF598(uint64_t a1)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AF5AC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  v1 = v0[26];
  v2 = v1[7];
  v9 = v0[25];

  sub_2682C038C(v2);
  v0[27] = v9;
  v0[23] = &_s16RichTitleSectionVN;
  v0[24] = &off_2879050A8;
  v3 = swift_allocObject();
  v0[20] = v3;
  memcpy((v3 + 16), v1, 0x48uLL);
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 20, &_s16RichTitleSectionVN);
  memcpy(v0 + 2, v4, 0x48uLL);
  sub_2681B4E8C(v1, (v0 + 11));
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_58_1(v5);
  OUTLINED_FUNCTION_101();

  return sub_26820B2FC(v6);
}

uint64_t sub_2681AF6D0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v7 = *(v6 + 224);
  v8 = *(v6 + 216);
  v9 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v4 + 232) = v0;

  if (!v0)
  {
    *(v4 + 240) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2681AF7F0()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 240);

  return v1(v2);
}

uint64_t sub_2681AF850()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 232);

  return v1();
}

uint64_t sub_2681AF8AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AF8C0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_106_0();

  v1 = sub_2682C038C(v0);
  OUTLINED_FUNCTION_44_3(v1, v2, v3, v4, v5, v6, v7, v8, v17, v18, v19);
  v9 = sub_2681AC418();
  OUTLINED_FUNCTION_42_5(v9, v10);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_9_14(v12);

  return v15(v14);
}

uint64_t sub_2681AF970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AF98C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v24 = v0[12];

  sub_2682C038C(v5);
  v0[5] = &_s13HeaderSectionVN;
  v0[6] = &off_2878FFA70;
  OUTLINED_FUNCTION_37_4();
  v6 = swift_allocObject();
  v0[2] = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v2;
  v6[5] = v1;
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 2, &_s13HeaderSectionVN);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];

  v11 = [objc_allocWithZone(MEMORY[0x277D4C600]) init];
  v12 = sub_2683CC208();
  [v11 setText_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  OUTLINED_FUNCTION_37_4();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_41_3(v13, xmmword_2683D1EC0);
  v0[10] = sub_26816B19C;
  v0[11] = 0;
  v14 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E840, &qword_2683D8200);
  sub_2681B4CB8();
  v15 = OUTLINED_FUNCTION_127();
  v17 = v16;

  v13[2].n128_u64[0] = v15;
  v13[2].n128_u64[1] = v17;
  sub_2681B2EE4(v13, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  OUTLINED_FUNCTION_37_4();
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  *(v18 + 32) = sub_26839EEEC(v14, v10);
  *(v18 + 40) = v19;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v20 = OUTLINED_FUNCTION_37_0();

  return v21(v20);
}

uint64_t sub_2681AFBC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AFBD4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_106_0();

  v1 = sub_2682C038C(v0);
  OUTLINED_FUNCTION_44_3(v1, v2, v3, v4, v5, v6, v7, v8, v17, v18, v19);
  v9 = sub_2681AC75C();
  OUTLINED_FUNCTION_42_5(v9, v10);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_9_14(v12);

  return v15(v14);
}

uint64_t sub_2681AFC84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AFC98()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_106_0();

  v1 = sub_2682C038C(v0);
  OUTLINED_FUNCTION_44_3(v1, v2, v3, v4, v5, v6, v7, v8, v17, v18, v19);
  v9 = sub_2681ACAA0();
  OUTLINED_FUNCTION_42_5(v9, v10);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_9_14(v12);

  return v15(v14);
}

uint64_t sub_2681AFD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AFD60()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v18 = v0[4];

  sub_2682C038C(v4);
  v0[8] = v18;
  sub_2681861B0(v3, v2, v0 + 2);
  v5 = v0[2];
  v0[9] = v0[3];
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_83_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_26_4(v7);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_101();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_2681AFE40()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[9];
  v7 = v4[8];
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  *(v10 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_17_9();

    return v15(v14);
  }
}

uint64_t sub_2681AFF98()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 88);
  return v2();
}

uint64_t sub_2681AFFBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AFFD0()
{
  OUTLINED_FUNCTION_15();
  v1 = *(*(v0 + 24) + 8);
  v21 = *(v0 + 16);

  v3 = sub_2682C038C(v2);
  OUTLINED_FUNCTION_44_3(v3, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21);
  v11 = sub_2681ACDE4();
  OUTLINED_FUNCTION_42_5(v11, v12);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_22(v13);
  *v14 = v15;
  v16 = OUTLINED_FUNCTION_9_14(v14);

  return v17(v16);
}

uint64_t sub_2681B008C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681B00A0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[3];
  v2 = v1[5];
  v17 = v0[2];

  sub_2682C038C(v3);
  v0[4] = v17;
  v5 = *v1;
  v4 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = *(v1 + 32);
  v9 = v1[6];
  OUTLINED_FUNCTION_113_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  *(v10 + 32) = v7;
  *(v10 + 40) = v6;
  *(v10 + 48) = v8;
  *(v10 + 56) = MEMORY[0x277D84F90];
  *(v10 + 64) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2683D1EC0;
  *(v11 + 32) = &unk_2683D82A0;
  *(v11 + 40) = v10;
  OUTLINED_FUNCTION_68_0();
  v12 = swift_allocObject();
  v0[5] = v12;
  *(v12 + 16) = v11;

  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_22(v13);
  *v14 = v15;
  v14[1] = sub_2681AF06C;

  return sub_2681AEC74(v17, &unk_2683D82A8, v12);
}

uint64_t sub_2681B0250(uint64_t a1)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681B0264()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  v1 = v0[32];
  v2 = v1[10];
  v9 = v0[31];

  sub_2682C038C(v2);
  v0[33] = v9;
  v0[29] = &_s3RowVN;
  v0[30] = &off_28790A910;
  v3 = swift_allocObject();
  v0[26] = v3;
  memcpy((v3 + 16), v1, 0x60uLL);
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 26, &_s3RowVN);
  memcpy(v0 + 2, v4, 0x60uLL);
  sub_2681B4E30(v1, (v0 + 14));
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_58_1(v5);
  OUTLINED_FUNCTION_101();

  return sub_268345310(v6);
}

uint64_t sub_2681B0388()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v7 = *(v6 + 272);
  v8 = *(v6 + 264);
  v9 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v4 + 280) = v0;

  if (!v0)
  {
    *(v4 + 288) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2681B04A8()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 288);

  return v1(v2);
}

uint64_t sub_2681B0508()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 280);

  return v1();
}

uint64_t sub_2681B0564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681B057C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v10 = v0[7];

  sub_2682C038C(MEMORY[0x277D84F90]);
  v0[11] = v10;
  v0[5] = &_s10MapItemRowVN;
  v0[6] = &off_287907498;
  v0[2] = v3;
  v0[3] = v2;
  v0[4] = v1;
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, &_s10MapItemRowVN);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  sub_26814F3C8(v3, v2);

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_26_4(v8);

  return sub_2682B1EF4(v10, v5, v6, v7);
}

uint64_t sub_2681B0698()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *(v6 + 88);
  v9 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2681B07B8()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_2681B0818()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_40();
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_2681B0874(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 128) = a3;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681B0890()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v22 = *(v0 + 96);

  sub_2682C038C(v2);
  *(v0 + 40) = &_s13ImagesSectionVN;
  *(v0 + 48) = &off_28790AE20;
  OUTLINED_FUNCTION_37_4();
  v5 = swift_allocObject();
  *(v0 + 16) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 16), &_s13ImagesSectionVN);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = v6[3];

  v10 = [objc_allocWithZone(MEMORY[0x277D4C3D0]) init];
  sub_2681B2F50(v7, v10);
  [v10 setBorderless_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  OUTLINED_FUNCTION_37_4();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_41_3(v11, xmmword_2683D1EC0);
  *(v0 + 80) = sub_26816B19C;
  *(v0 + 88) = 0;
  v12 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E840, &qword_2683D8200);
  sub_2681B4CB8();
  v13 = OUTLINED_FUNCTION_127();
  v15 = v14;

  v11[2].n128_u64[0] = v13;
  v11[2].n128_u64[1] = v15;
  sub_2681B2EE4(v11, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  OUTLINED_FUNCTION_37_4();
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 32) = sub_26839EEEC(v12, v9);
  *(v16 + 40) = v17;

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v18 = OUTLINED_FUNCTION_37_0();

  return v19(v18);
}

uint64_t sub_2681B0AC0(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_2681B422C();
  v8 = swift_allocError();
  swift_willThrow();
  v26 = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (swift_dynamicCast())
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    swift_bridgeObjectRetain_n();
    v11 = a2;
    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE98();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_87_0();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_86_0();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v16 = sub_2683CFAD8();
      v18 = v17;

      v19 = sub_2681610A0(v16, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2680EB000, v12, v13, "%{public}s.sash is unimplemented. Skipping Sash.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40](v20, v21);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40](v22, v23);
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2681B0CF4()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 64) = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v1 + 72) = v2;
  *v2 = v3;
  v2[1] = sub_2681B0D84;

  return sub_26833DE0C(v1 + 48);
}

uint64_t sub_2681B0D84()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = v3[6];
    v13 = v3[7];
    v3[11] = v13;
    OUTLINED_FUNCTION_8_14(&dword_2683D8120);
    v18 = v14;
    v15 = swift_task_alloc();
    v3[12] = v15;
    *v15 = v7;
    v15[1] = sub_2681B0F00;
    v16 = OUTLINED_FUNCTION_39_4(&unk_2878FB3B8);

    return v18(v16, v12, v13);
  }
}

uint64_t sub_2681B0F00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *(v4 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v10 + 104) = v9;
  *(v10 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2681B1018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v23 = v22 + 16;
  v24 = *(v22 + 104);
  v72 = v22;
  v25 = *(v22 + 64);
  v71 = sub_26839F0F8(v24);
  v26 = *(v25 + 56);
  v27 = sub_2683CF258();
  v70 = sub_26839F6D0(v27, v28);

  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v74 = v24 + 32;
  v75 = *(v24 + 16);
  v31 = &qword_28024E7E8;
  v73 = v24;
  while (1)
  {
    v32 = v30 >> 62;
    if (v29 == v75)
    {
      break;
    }

    if (v29 >= *(v24 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v33 = v31;
    v34 = *(v74 + 16 * v29 + 8);
    if (v34 >> 62)
    {
      if (v34 < 0)
      {
        v59 = *(v74 + 16 * v29 + 8);
      }

      v35 = sub_2683D00A8();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v32)
    {
      v36 = sub_2683D00A8();
    }

    else
    {
      v36 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_44;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v32)
      {
LABEL_16:
        sub_2683D00A8();
      }

      else
      {
        v38 = v30 & 0xFFFFFFFFFFFFFF8;
LABEL_15:
        v40 = *(v38 + 16);
      }

      v30 = sub_2683D01B8();
      v38 = v30 & 0xFFFFFFFFFFFFFF8;
      OUTLINED_FUNCTION_85();
      goto LABEL_18;
    }

    if (v32)
    {
      goto LABEL_16;
    }

    v38 = v30 & 0xFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_85();
    if (v39 < v37)
    {
      goto LABEL_15;
    }

LABEL_18:
    a18 = v35;
    a19 = v29 + 1;
    v41 = *(v38 + 16);
    v42 = v39 - v41;
    v43 = v38 + 8 * v41;
    if (v34 >> 62)
    {
      v45 = sub_2683D00A8();
      if (!v45)
      {
        goto LABEL_32;
      }

      v46 = v45;
      a15 = sub_2683D00A8();
      if (v42 < a15)
      {
        goto LABEL_48;
      }

      if (v46 < 1)
      {
        goto LABEL_49;
      }

      a13 = v38;
      a14 = v30;
      v47 = v43 + 32;
      OUTLINED_FUNCTION_14_12();
      sub_2681B4DEC(&qword_28024E7F0, v31, qword_2683D8128);
      for (i = 0; i != v46; ++i)
      {
        v49 = OUTLINED_FUNCTION_41_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
        v51 = OUTLINED_FUNCTION_32_3();
        v53 = sub_2683ABDEC(v51, v52, v34);
        v55 = *v54;
        (v53)(v23, 0);
        v31 = v33;
        *(v47 + 8 * i) = v55;
      }

      v24 = v73;
      v44 = a15;
LABEL_28:

      v29 = a19;
      if (v44 < a18)
      {
        goto LABEL_45;
      }

      if (v44 > 0)
      {
        v56 = *(v38 + 16);
        v57 = __OFADD__(v56, v44);
        v58 = v56 + v44;
        if (v57)
        {
          goto LABEL_46;
        }

        *(v38 + 16) = v58;
      }
    }

    else
    {
      v44 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
        if (v42 < v44)
        {
          goto LABEL_47;
        }

        sub_268129504(0, &qword_28024E7E0, 0x277D471A8);
        swift_arrayInitWithCopy();
        goto LABEL_28;
      }

LABEL_32:

      v29 = a19;
      if (a18 > 0)
      {
        goto LABEL_45;
      }
    }
  }

  v60 = *(v72 + 104);

  if (!v32)
  {

    sub_2683D05C8();
    goto LABEL_40;
  }

LABEL_50:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
  OUTLINED_FUNCTION_56_1();
  sub_2683D0398();

LABEL_40:

  sub_268129504(0, &unk_28024E800, 0x277D47200);
  OUTLINED_FUNCTION_33_1();
  sub_2683CFE48();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_48_3();

  return v63(v61, v62, v63, v64, v65, v66, v67, v68, v70, v71, v72, v73, a13, a14, a15, v74, v75, a18, a19, a20, a21, a22);
}

uint64_t sub_2681B1400(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_2681B14B8;

  return (sub_2681B24D4)(a1, a2);
}

uint64_t sub_2681B14B8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2681B1968(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_2681B1A20;

  return (sub_2681B26E0)(a1, a2);
}

uint64_t sub_2681B1A20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 72) = v6;
  *(v2 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2681B1ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2681B1F7C;

  return sub_2681B28EC(a1, a2, a3);
}

uint64_t sub_2681B1F7C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 16);
  *v3 = *v1;
  *(v2 + 24) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2681B2098(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2681B212C;

  return sub_2681B2AA0(a1);
}

uint64_t sub_2681B212C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 16);
  *v3 = *v1;
  *(v2 + 24) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2681B2248()
{
  v22 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v2, qword_28027C958);

  v3 = sub_2683CF7C8();
  v4 = sub_2683CFE98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    OUTLINED_FUNCTION_87_0();
    v1 = swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v1 = 136315138;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB20, &unk_2683D92E0);
    v8 = MEMORY[0x26D6167A0](v5, v7);
    v10 = sub_2681610A0(v8, v9, &v21);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_29();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  v16 = *(v0 + 24);
  v17 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB20, &unk_2683D92E0);
  OUTLINED_FUNCTION_56_1();
  sub_2683CFC98();
  OUTLINED_FUNCTION_97_0();

  [v17 setTemplateItems_];

  v18 = OUTLINED_FUNCTION_17_9();

  return v19(v18);
}

uint64_t sub_2681B2428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2681B1F7C;

  return sub_2681B2D4C(a1, a2, a3);
}

uint64_t sub_2681B24D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_2681B24F4, 0, 0);
}

uint64_t sub_2681B24F4()
{
  OUTLINED_FUNCTION_7();
  sub_268200288(*(v0 + 32), *(v0 + 40), (v0 + 16));
  v1 = *(v0 + 16);
  *(v0 + 48) = *(v0 + 24);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_95_0(v2);
  *v3 = v4;
  v3[1] = sub_2681B25A4;
  OUTLINED_FUNCTION_39_4(&unk_2878FB358);
  OUTLINED_FUNCTION_91_0();

  return v5();
}

uint64_t sub_2681B25A4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_17_9();

    return v14(v13);
  }
}

uint64_t sub_2681B26E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_2681B2700, 0, 0);
}

uint64_t sub_2681B2700()
{
  OUTLINED_FUNCTION_7();
  sub_268321358(*(v0 + 32), *(v0 + 40), (v0 + 16));
  v1 = *(v0 + 16);
  *(v0 + 48) = *(v0 + 24);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_95_0(v2);
  *v3 = v4;
  v3[1] = sub_2681B27B0;
  OUTLINED_FUNCTION_39_4(&unk_2878FB3E8);
  OUTLINED_FUNCTION_91_0();

  return v5();
}

uint64_t sub_2681B27B0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *(v4 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_17_9();

    return v14(v13);
  }
}

uint64_t sub_2681B28EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2681B2910, 0, 0);
}

uint64_t sub_2681B2910()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 24);
  if (!v2 || (sub_2681E73A0() & 1) == 0)
  {
LABEL_9:
    v12 = sub_268200914(*(v1 + 32), *(v1 + 40));
    v14 = v13;
    sub_268320E94(v12, v13);
    OUTLINED_FUNCTION_97_0();

    OUTLINED_FUNCTION_37();

    return v15(v0);
  }

  sub_2681B422C();
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_109_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (OUTLINED_FUNCTION_38_4())
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v3 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v3, qword_28027C958);
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v5))
    {
      v6 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v6);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40();

  return v17();
}

uint64_t sub_2681B2AA0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2681B2AC0, 0, 0);
}

uint64_t sub_2681B2AC0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);
  if (!v1 || (sub_2681E73A0() & 1) == 0)
  {
LABEL_9:
    v11 = swift_task_alloc();
    *(v0 + 40) = v11;
    *v11 = v0;
    v11[1] = sub_2681B2C64;
    v12 = *(v0 + 32);

    return sub_268340BC4();
  }

  sub_2681B422C();
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_109_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (OUTLINED_FUNCTION_38_4())
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v2 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v2, qword_28027C958);
    v3 = sub_2683CF7C8();
    v4 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v4))
    {
      v5 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v5);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40();

  return v14();
}

uint64_t sub_2681B2C64()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v4 = *(v3 + 40);
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_2681B2D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2681B2D70, 0, 0);
}

uint64_t sub_2681B2D70()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 24);
  if (!v1 || (sub_2681E73A0() & 1) == 0)
  {
LABEL_9:
    sub_268320E94(*(v0 + 32), *(v0 + 40));
    OUTLINED_FUNCTION_37();

    return v11();
  }

  sub_2681B422C();
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_109_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (OUTLINED_FUNCTION_38_4())
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v2 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v2, qword_28027C958);
    v3 = sub_2683CF7C8();
    v4 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v4))
    {
      v5 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v5);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40();

  return v13();
}

void sub_2681B2EE4(uint64_t a1, void *a2)
{
  v3 = sub_2683CFC98();

  [a2 setParameterKeyPaths_];
}

void sub_2681B2F50(uint64_t a1, void *a2)
{
  sub_268129504(0, &qword_28024E870, 0x277D4C3B0);
  v3 = sub_2683CFC98();
  [a2 setImages_];
}

uint64_t sub_2681B2FCC(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CFA78();

  return v3;
}

uint64_t objectdestroyTm()
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
          OUTLINED_FUNCTION_19_2();
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
          OUTLINED_FUNCTION_19_2();
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

unint64_t sub_2681B422C()
{
  result = qword_28024E7D0;
  if (!qword_28024E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E7D0);
  }

  return result;
}

uint64_t sub_2681B4284()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6_3(v7);
  *v8 = v9;
  v8[1] = sub_268133EC8;

  return sub_2681BAD20(v4, v2, v6, v5);
}

uint64_t sub_2681B4330()
{
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = *(v1 + 48);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_2681B43DC;

  return sub_26833CEC8();
}

uint64_t sub_2681B43DC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v4 = *(v3 + 72);
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_2681B44C4(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = a2[2];
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_2681B456C;

  return sub_26833D0A0();
}

uint64_t sub_2681B456C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v4 = *(v3 + 64);
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_2681B4654()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_2681B46E4()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

id sub_2681B4774(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

uint64_t sub_2681B4784(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = swift_task_alloc();
  *(v3 + 72) = v8;
  *v8 = v3;
  v8[1] = sub_2681B4848;

  return sub_2681AD14C(v3 + 16, v6, v5, v7);
}

uint64_t sub_2681B4848()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  OUTLINED_FUNCTION_3();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  v9 = *(v8 + 72);
  v10 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;

  if (!v0)
  {
    v12 = *(v6 + 64);
    *v12 = v1;
    v12[1] = v4;
  }

  v13 = *(v10 + 8);
  OUTLINED_FUNCTION_20_9();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

void sub_2681B4940(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2681B4950()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_19_12(v3);

  return v5(v1);
}

uint64_t sub_2681B49F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2681B4AA0;

  return sub_26833D138();
}

uint64_t sub_2681B4AA0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_2681B4B88()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_2681B4C18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2681B4C28()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

unint64_t sub_2681B4CB8()
{
  result = qword_28024E848;
  if (!qword_28024E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024E840, &qword_2683D8200);
    sub_2681B4D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E848);
  }

  return result;
}

unint64_t sub_2681B4D3C()
{
  result = qword_28024E850;
  if (!qword_28024E850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024E858, &qword_2683D8208);
    sub_2681B4DEC(&qword_28024E860, &qword_28024E828, &unk_2683D81B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E850);
  }

  return result;
}

uint64_t sub_2681B4DEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_56_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2681B4EE8(uint64_t a1, const void *a2, uint64_t *a3)
{
  v3[11] = a1;
  memcpy(v3 + 2, a2, 0x48uLL);
  v5 = *a3;
  v6 = swift_task_alloc();
  v3[12] = v6;
  *v6 = v3;
  v6[1] = sub_2681B586C;

  return sub_2681AD444((v3 + 2), v5);
}

uint64_t sub_2681B4F98(uint64_t a1, const void *a2, uint64_t *a3)
{
  v3[11] = a1;
  memcpy(v3 + 2, a2, 0x48uLL);
  v5 = *a3;
  v6 = swift_task_alloc();
  v3[12] = v6;
  *v6 = v3;
  v6[1] = sub_2681B5048;

  return sub_2681AD704((v3 + 2), v5);
}

uint64_t sub_2681B5048()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  OUTLINED_FUNCTION_3();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;
  v9 = *(v8 + 96);
  v10 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;

  if (!v0)
  {
    v12 = *(v6 + 88);
    *v12 = v1;
    v12[1] = v4;
  }

  v13 = *(v10 + 8);
  OUTLINED_FUNCTION_20_9();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_2681B5140(uint64_t a1, const void *a2, uint64_t *a3)
{
  v3[11] = a1;
  memcpy(v3 + 2, a2, 0x48uLL);
  v5 = *a3;
  v6 = swift_task_alloc();
  v3[12] = v6;
  *v6 = v3;
  v6[1] = sub_2681B586C;

  return sub_2681AD9C4((v3 + 2), v5);
}

uint64_t sub_2681B51F0()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_12(v1);
  v3 = OUTLINED_FUNCTION_90();

  return v4(v3);
}

uint64_t sub_2681B5288()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_2681B5318()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_17_9();

  return v6(v5);
}

uint64_t sub_2681B53F8()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t objectdestroy_164Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  OUTLINED_FUNCTION_113_0();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2681B5530()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_12(v1);
  v3 = OUTLINED_FUNCTION_90();

  return v4(v3);
}

uint64_t sub_2681B55C8(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  *(v3 + 64) = a1;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  v5 = *a3;
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  *v6 = v3;
  v6[1] = sub_2681B5870;

  return sub_2681ADC84(v3 + 16, v5);
}

uint64_t sub_2681B5678()
{
  OUTLINED_FUNCTION_7();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_19_12(v3);

  return v5(v1);
}

uint64_t objectdestroy_126Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  if (*(v0 + 56))
  {
    v3 = *(v0 + 64);
  }

  v4 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2681B5778()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_12(v1);
  v3 = OUTLINED_FUNCTION_90();

  return v4(v3);
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void OUTLINED_FUNCTION_4_17()
{
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[52];
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[47];
  v11 = v0[46];
  v12 = v0[45];
  v13 = v0[44];
  v14 = v0[43];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[37];
  v15 = v0[42];
  v16 = v0[36];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[29];
  v20 = v0[28];
  v21 = v0[27];
  *(v1 - 80) = v0[26];
}

void OUTLINED_FUNCTION_5_14()
{
  v1 = v0[59];
  v2 = v0[56];
  v3 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[53];
  v10 = v0[52];
  v11 = v0[51];
  v12 = v0[50];
  v13 = v0[47];
  v8 = v0[43];
  v7 = v0[44];
  v9 = v0[42];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[37];
  v17 = v0[34];
  v18 = v0[33];
  v19 = v0[32];
  v20 = v0[31];
}

uint64_t OUTLINED_FUNCTION_8_14@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_12(uint64_t result)
{
  *(result + 16) = v1;
  v3 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_12(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2 + *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_4()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_40_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(a1 + 8) = sub_2681A531C;
  v10 = *(v9 + 48);
  return a9;
}

__n128 *OUTLINED_FUNCTION_41_3(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3[7] = v2;
  v3[8] = sub_26816B178;
  v3[9] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_1()
{
  v3 = v0[48];
  v2 = v0[49];
  v4 = v0[47];
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[39];
  v7 = v0[40];
  v10 = v0[37];
  v9 = v0[38];
}

uint64_t OUTLINED_FUNCTION_60_0()
{
  result = v0[62];
  v2 = v0[56];
  v3 = v0[41];
  return result;
}

uint64_t OUTLINED_FUNCTION_61_1()
{

  return swift_allocError();
}

__n128 OUTLINED_FUNCTION_63_1(__n128 *a1)
{
  result = v1[1];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a17;
  *(result + 48) = a20;
  *(result + 56) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_81()
{
  result = v0[55];
  v2 = v0[48];
  v3 = v0[49];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];
  return result;
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

id OUTLINED_FUNCTION_102_0()
{

  return [v0 (v1 + 2135)];
}

void (*OUTLINED_FUNCTION_104_0())(id *a1)
{

  return sub_2683ABDEC(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_106_0()
{
  v2 = *(*(v0 + 24) + 32);
  v4 = *(v0 + 16);
}

id OUTLINED_FUNCTION_109_0()
{
  *(v1 + 16) = v0;

  return v0;
}

void OUTLINED_FUNCTION_110_0()
{
  *(v2 + 50) = v0;
  *(v2 + 49) = v1;
  *(v2 + 48) = 0;
  *(v2 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_112(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[35];
  v4 = v2[36];
  return v2[34];
}

uint64_t OUTLINED_FUNCTION_122_0()
{

  return sub_2683D01B8();
}

uint64_t OUTLINED_FUNCTION_123_0()
{
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return sub_2683D00A8();
}

uint64_t OUTLINED_FUNCTION_126_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_127()
{

  return sub_2683CFA38();
}

uint64_t OUTLINED_FUNCTION_129_0()
{

  return sub_2683D00A8();
}

uint64_t OUTLINED_FUNCTION_130_0(uint64_t a1)
{

  return sub_2681433DC(a1, v1, v2);
}

uint64_t static Snippet.simpleConfirmation(confirmLabel:rejectLabel:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *a1;
  a3[1] = v3;
  type metadata accessor for Snippet();

  return swift_storeEnumTagMultiPayload();
}

_BYTE *Snippet.SimpleConfirmation.init(confirmLabel:rejectLabel:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t sub_2681B601C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C7463656A6572 && a2 == 0xEB000000006C6562)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2681B60EC(char a1)
{
  if (a1)
  {
    return 0x614C7463656A6572;
  }

  else
  {
    return 0x4C6D7269666E6F63;
  }
}

uint64_t sub_2681B613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681B601C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681B6164(uint64_t a1)
{
  v2 = sub_2681B634C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681B61A0(uint64_t a1)
{
  v2 = sub_2681B634C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.SimpleConfirmation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E8C0, &qword_2683D8480);
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681B634C();
  sub_2683D0718();
  v20 = v12;
  v19 = 0;
  sub_2681B63A0();
  OUTLINED_FUNCTION_2_15();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    OUTLINED_FUNCTION_2_15();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_2681B634C()
{
  result = qword_28024E8C8;
  if (!qword_28024E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8C8);
  }

  return result;
}

unint64_t sub_2681B63A0()
{
  result = qword_28024E8D0;
  if (!qword_28024E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8D0);
  }

  return result;
}

uint64_t Snippet.SimpleConfirmation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E8D8, &qword_2683D8488);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681B634C();
  sub_2683D06F8();
  if (!v2)
  {
    v20 = 0;
    sub_2681B6594();
    OUTLINED_FUNCTION_0_26();
    v14 = v21;
    v18 = 1;
    OUTLINED_FUNCTION_0_26();
    (*(v8 + 8))(v12, v5);
    v15 = v19;
    *a2 = v14;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_2681B6594()
{
  result = qword_28024E8E0;
  if (!qword_28024E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8E0);
  }

  return result;
}

unint64_t sub_2681B65EC()
{
  result = qword_28024E8E8;
  if (!qword_28024E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8E8);
  }

  return result;
}

unint64_t sub_2681B6644()
{
  result = qword_28024E8F0;
  if (!qword_28024E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8F0);
  }

  return result;
}

uint64_t _s14descr2878F8F29V18SimpleConfirmationVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 65286 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65286 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65287;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s14descr2878F8F29V18SimpleConfirmationVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65286 < 0xFF0000)
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
    v6 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *_s14descr2878F8F29V18SimpleConfirmationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2681B691C()
{
  result = qword_28024E8F8;
  if (!qword_28024E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E8F8);
  }

  return result;
}

unint64_t sub_2681B6974()
{
  result = qword_28024E900;
  if (!qword_28024E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E900);
  }

  return result;
}

unint64_t sub_2681B69CC()
{
  result = qword_28024E908;
  if (!qword_28024E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E908);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_26()
{

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_2_15()
{

  return sub_2683D0548();
}

uint64_t sub_2681B6A64()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_2681B6AB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26813CA00(a1, a4);
  sub_26813CA00(a2, a4 + 40);
  v8 = *(type metadata accessor for SnoozeTasksIntentWrapper() + 24);
  v9 = sub_2683CB668();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a4 + v8, a3, v9);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v11 = sub_2683CF7E8();
  __swift_project_value_buffer(v11, qword_28027C958);
  v12 = sub_2683CF7C8();
  v13 = sub_2683CFE58();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2680EB000, v12, v13, "[SnoozeTasksIntentWrapper] Created", v14, 2u);
    OUTLINED_FUNCTION_38();
  }

  (*(v10 + 8))(a3, v9);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t type metadata accessor for SnoozeTasksIntentWrapper()
{
  result = qword_28024E910;
  if (!qword_28024E910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681B6C78()
{
  *(v1 + 16) = v0;
  v2 = *(*(type metadata accessor for IntentTriggerModel(0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681B6D08, 0, 0);
}

void sub_2681B6D08()
{
  v1 = v0[2];
  v2 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = sub_268162270(*v2);
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2683D2250;
    *(v6 + 32) = v7;
  }

  v0[4] = v6;
  v8 = v0[3];
  v9 = __swift_project_boxed_opaque_existential_1(v0[2], v1[3])[1];

  sub_2681C326C(v10, 0, v8);
  v11 = *v8;
  v0[5] = *v8;

  sub_2681B7664(v8);
  if (v11)
  {
    v12 = v0[2];
    v13 = v12[9];
    __swift_project_boxed_opaque_existential_1(v12 + 5, v12[8]);
    v14 = qword_28024C960;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_2683CE918();
    __swift_project_value_buffer(v15, qword_28027CAC8);
    sub_26812A5A4();
    v16 = swift_task_alloc();
    v0[6] = v16;
    *v16 = v0;
    v16[1] = sub_2681B70A0;
    OUTLINED_FUNCTION_2_16();

    __asm { BR              X3 }
  }

  v19 = v0[4];
  v20 = v0[2];
  sub_268143430();
  v21 = __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[3];
  sub_2681623EC(*v21);
  v25 = sub_2683CFF18();
  v26 = sub_26821AD1C();

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v27 = sub_2683CF7E8();
  __swift_project_value_buffer(v27, qword_28027C958);
  v28 = v26;
  v29 = sub_2683CF7C8();
  v30 = sub_2683CFE98();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136315138;
    v33 = v28;
    v34 = [v33 description];
    v35 = sub_2683CFA78();
    v37 = v36;

    v38 = sub_2681610A0(v35, v37, &v43);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_2680EB000, v29, v30, "⚙️ [SnoozeTasksIntentWrapper] made intent: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v39 = v0[3];

  v40 = v0[1];
  OUTLINED_FUNCTION_2_16();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2681B70A0(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_2681B71C0, 0, 0);
}

void sub_2681B71C0()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];
  sub_268143430();
  v5 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v2;
  sub_2681623EC(v6);
  v11 = sub_2683CFF18();
  v12 = sub_26821AD1C();

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v13 = sub_2683CF7E8();
  __swift_project_value_buffer(v13, qword_28027C958);
  v14 = v12;
  v15 = sub_2683CF7C8();
  v16 = sub_2683CFE98();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136315138;
    v19 = v14;
    v20 = [v19 description];
    v21 = sub_2683CFA78();
    v29 = v10;
    v23 = v22;

    v24 = sub_2681610A0(v21, v23, &v30);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2680EB000, v15, v16, "⚙️ [SnoozeTasksIntentWrapper] made intent: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  v25 = v0[3];

  v26 = v0[1];
  OUTLINED_FUNCTION_2_16();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2681B73F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681B7480;

  return sub_2681B6C78();
}

uint64_t sub_2681B7480(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2681B75A8()
{
  result = sub_26812EB34(319, &qword_28024E920);
  if (v1 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D380);
    if (v2 <= 0x3F)
    {
      result = sub_2683CB668();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2681B7664(uint64_t a1)
{
  v2 = type metadata accessor for IntentTriggerModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Snippet.ReminderDetail.reminders.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Snippet.ReminderDetail.list.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x61uLL);
  memcpy(a1, (v1 + 8), 0x61uLL);
  return sub_26814FB60(__dst, &v4);
}

void *Snippet.ReminderDetail.list.setter()
{
  memcpy(__dst, (v0 + 8), 0x61uLL);
  sub_26814F740(__dst);
  return OUTLINED_FUNCTION_2_17((v0 + 8));
}

BOOL static Snippet.ReminderDetail.== infix(_:_:)(uint64_t *__src, uint64_t *a2)
{
  v3 = (__src + 1);
  v4 = *__src;
  memcpy(__dst, __src + 1, 0x61uLL);
  v5 = *a2;
  OUTLINED_FUNCTION_2_17(v20);
  sub_26814B760(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9]);
  if (v12)
  {
    memcpy(__srca, v3, 0x61uLL);
    OUTLINED_FUNCTION_2_17(v15);
    sub_26814FB60(__dst, v18);
    sub_26814FB60(v20, v18);
    v13 = static Snippet.ReminderList.== infix(_:_:)(__srca, v15);
    memcpy(v17, v15, 0x61uLL);
    sub_26814F740(v17);
    memcpy(v18, __srca, 0x61uLL);
    sub_26814F740(v18);
  }

  else
  {
    return 0;
  }

  return v13;
}

uint64_t sub_2681B78E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E696D6572 && a2 == 0xE900000000000073;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953720684 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2681B79B4(char a1)
{
  if (a1)
  {
    return 1953720684;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_2681B79F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681B78E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681B7A18(uint64_t a1)
{
  v2 = sub_2681B7CE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681B7A54(uint64_t a1)
{
  v2 = sub_2681B7CE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.ReminderDetail.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E928, &qword_2683D86B0);
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  memcpy(__dst, v1 + 1, 0x61uLL);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681B7CE4();

  sub_2683D0718();
  v18[0] = v11;
  v17[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
  sub_2681B81A8(&qword_28024D880, &qword_28024D888);
  sub_2683D0548();

  if (v2)
  {
    return (*(v16 + 8))(v10, v4);
  }

  memcpy(v18, __dst, 0x61uLL);
  __dst[127] = 1;
  sub_26814FB60(__dst, v17);
  sub_26814F7E8();
  sub_2683D0548();
  v14 = (v16 + 8);
  memcpy(v17, v18, 0x61uLL);
  sub_26814F740(v17);
  return (*v14)(v10, v4);
}

unint64_t sub_2681B7CE4()
{
  result = qword_28024E930;
  if (!qword_28024E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E930);
  }

  return result;
}

uint64_t Snippet.ReminderDetail.hash(into:)(uint64_t a1)
{
  v3 = v1 + 1;
  v4 = *v1;
  memcpy(__dst, v3, sizeof(__dst));
  sub_26814E1A8(a1, v4);
  return Snippet.ReminderList.hash(into:)();
}

uint64_t Snippet.ReminderDetail.hashValue.getter()
{
  v1 = *v0;
  memcpy(v3, v0 + 1, sizeof(v3));
  sub_2683D0698();
  sub_26814E1A8(v4, v1);
  Snippet.ReminderList.hash(into:)();
  return sub_2683D06D8();
}

uint64_t Snippet.ReminderDetail.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E938, &qword_2683D86B8);
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681B7CE4();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D878, &unk_2683E40E0);
  LOBYTE(v14[0]) = 0;
  sub_2681B81A8(&qword_28024D8F8, &qword_28024D900);
  sub_2683D04A8();
  v9 = v15;
  __dst[127] = 1;
  sub_26814FCE8();
  sub_2683D04A8();
  v10 = OUTLINED_FUNCTION_0_27();
  v11(v10);
  memcpy(__dst, v17, 0x61uLL);
  v14[0] = v9;
  memcpy(&v14[1], v17, 0x61uLL);
  memcpy(a2, v14, 0x69uLL);
  sub_2681B8274(v14, &v15);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v15 = v9;
  memcpy(v16, __dst, sizeof(v16));
  return sub_2681B82AC(&v15);
}

uint64_t sub_2681B8090()
{
  v1 = v0 + 1;
  v2 = *v0;
  memcpy(v4, v1, sizeof(v4));
  sub_2683D0698();
  sub_26814E1A8(v5, v2);
  Snippet.ReminderList.hash(into:)();
  return sub_2683D06D8();
}

uint64_t static Snippet.reminderDetail(reminders:list:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, a2, 0x61uLL);
  *a3 = a1;
  OUTLINED_FUNCTION_2_17(a3 + 1);
  type metadata accessor for Snippet();
  swift_storeEnumTagMultiPayload();
  sub_26814FB60(__dst, &v6);
}

uint64_t sub_2681B81A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024D878, &unk_2683E40E0);
    sub_2681B8230(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2681B8230(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Snippet.Reminder(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2681B82E0()
{
  result = qword_28024E940;
  if (!qword_28024E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E940);
  }

  return result;
}

unint64_t sub_2681B8338()
{
  result = qword_28024E948;
  if (!qword_28024E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E948);
  }

  return result;
}

unint64_t sub_2681B8390()
{
  result = qword_28024E950;
  if (!qword_28024E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E950);
  }

  return result;
}

uint64_t sub_2681B83EC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_2681B842C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V14ReminderDetailV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2681B8578()
{
  result = qword_28024E958;
  if (!qword_28024E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E958);
  }

  return result;
}

unint64_t sub_2681B85D0()
{
  result = qword_28024E960;
  if (!qword_28024E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E960);
  }

  return result;
}

unint64_t sub_2681B8628()
{
  result = qword_28024E968;
  if (!qword_28024E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E968);
  }

  return result;
}

void *OUTLINED_FUNCTION_2_17(void *a1)
{

  return memcpy(a1, v1, 0x61uLL);
}

void sub_2681B86A4(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (sub_2682206DC(a1, 0))
  {
    v8 = 2;
LABEL_5:
    *a4 = v8;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 49) = 0u;
    return;
  }

  v9 = sub_2681B878C(a1, a2, a3);
  if (v9 == 2)
  {
    v8 = 3;
    goto LABEL_5;
  }

  *a4 = v9 & 1;
  if (qword_28024CC48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for NotebookTaskParser();
  __swift_project_value_buffer(v10, qword_28027CE50);
  sub_268372510();
}

uint64_t sub_2681B878C(char *a1, uint64_t a2, unint64_t a3)
{
  v63 = a2;
  v64 = a3;
  v4 = sub_2683CCC68();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2683CCBD8();
  v66 = *(v7 - 1);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v65 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2683CE448();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2683CCC18();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v61 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v58 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v58 - v26;
  v28 = *(v16 + 16);
  v62 = a1;
  v29 = a1;
  v30 = v28;
  v28((&v58 - v26), v29, v15);
  v31 = (*(v16 + 88))(v27, v15);
  if (v31 == *MEMORY[0x277D5C128])
  {
    v30(v25, v27, v15);
    (*(v16 + 96))(v25, v15);
    (*(v11 + 32))(v14, v25, v10);
    v32 = sub_2681B8F98(v14);
    (*(v11 + 8))(v14, v10);
    goto LABEL_5;
  }

  if (v31 == *MEMORY[0x277D5C158])
  {
    v30(v25, v27, v15);
    (*(v16 + 96))(v25, v15);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E970, &unk_2683D8990);
    v32 = sub_2681B93D8(*(v25 + *(v33 + 48)), v63, v64);

    (*(v11 + 8))(v25, v10);
    goto LABEL_5;
  }

  if (v31 != *MEMORY[0x277D5C150])
  {
    if (v31 == *MEMORY[0x277D5C130])
    {
      v30(v25, v27, v15);
      (*(v16 + 96))(v25, v15);
      v42 = *v25;
      v32 = sub_2681B9D00();
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    if (v31 == *MEMORY[0x277D5C160])
    {
      v30(v25, v27, v15);
      (*(v16 + 96))(v25, v15);
      v45 = v58;
      v44 = v59;
      v46 = v60;
      (*(v59 + 32))(v58, v25, v60);
      v32 = sub_2681B9EC4();
      (*(v44 + 8))(v45, v46);
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  v64 = v30;
  v30(v22, v27, v15);
  (*(v16 + 96))(v22, v15);
  (*(v66 + 32))(v65, v22, v67);
  v35 = sub_2683CCBB8();
  v37 = v36;
  if (qword_28024CC68 != -1)
  {
    swift_once();
  }

  v39 = qword_2802540E0;
  v38 = unk_2802540E8;
  v68 = qword_2802540D0;
  v69 = *algn_2802540D8;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v39, v38);
  if (v35 == v68 && v37 == v69)
  {

    goto LABEL_18;
  }

  v41 = sub_2683D0598();

  if (v41)
  {
LABEL_18:
    v43 = v65;
    v32 = sub_2681B9A5C(v65);
    (*(v66 + 8))(v43, v67);
    goto LABEL_5;
  }

  (*(v66 + 8))(v65, v67);
  v30 = v64;
LABEL_21:
  v47 = v30;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v48 = sub_2683CF7E8();
  __swift_project_value_buffer(v48, qword_28027C958);
  v49 = v61;
  v30(v61, v62, v15);
  v50 = sub_2683CF7C8();
  v51 = sub_2683CFE98();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = v67;
    *v52 = 136315138;
    v47(v25, v49, v15);
    v53 = sub_2683CFAD8();
    v55 = v54;
    (*(v16 + 8))(v49, v15);
    v56 = sub_2681610A0(v53, v55, &v68);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_2680EB000, v50, v51, "[ConfirmationResponse] parse failed. Unsupported parse type: %s", v52, 0xCu);
    v57 = v67;
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x26D617A40](v57, -1, -1);
    MEMORY[0x26D617A40](v52, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v49, v15);
  }

  v32 = 2;
LABEL_5:
  (*(v16 + 8))(v27, v15);
  return v32;
}

uint64_t sub_2681B8F98(uint64_t a1)
{
  v2 = type metadata accessor for NotebookNLv3Intent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2683CE448();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v11 = sub_2683CF7E8();
  __swift_project_value_buffer(v11, qword_28027C958);
  v29 = *(v7 + 16);
  v29(v10, a1, v6);
  v12 = sub_2683CF7C8();
  v13 = sub_2683CFE98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v2;
    v15 = v14;
    v26 = swift_slowAlloc();
    v27 = v5;
    v30 = v26;
    *v15 = 136315138;
    sub_2681BA0DC(&qword_28024E980, MEMORY[0x277D5F458]);
    v16 = sub_2683D0568();
    v17 = a1;
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    v20 = sub_2681610A0(v16, v19, &v30);
    a1 = v17;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_2680EB000, v12, v13, "[ConfirmationResponse] parsing nlIntent %s", v15, 0xCu);
    v21 = v26;
    __swift_destroy_boxed_opaque_existential_0(v26);
    v5 = v27;
    MEMORY[0x26D617A40](v21, -1, -1);
    MEMORY[0x26D617A40](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v29(v5, a1, v6);
  if (qword_28024CB98 != -1)
  {
    swift_once();
  }

  sub_2681BA0DC(&qword_28024CDA8, type metadata accessor for NotebookNLv3Intent);
  sub_2683CD5C8();
  sub_2681BA080(v5);
  v22 = v31;
  result = 2;
  switch(v31)
  {
    case 2u:

      goto LABEL_13;
    case 3u:
      return result;
    default:
      v24 = sub_2683D0598();

      if (v24)
      {
LABEL_13:
        result = 2;
      }

      else if (v22)
      {
        v25 = sub_2683D0598();

        result = (v25 & 1) == 0;
      }

      else
      {

        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_2681B93D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2683CC018();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  if (qword_28024C8E0 != -1)
  {
LABEL_45:
    swift_once();
  }

  v14 = sub_2683CF7E8();
  v15 = __swift_project_value_buffer(v14, qword_28027C958);

  v55 = v15;
  v16 = sub_2683CF7C8();
  v17 = sub_2683CFE98();

  v18 = os_log_type_enabled(v16, v17);
  v54 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v52 = v7;
    v20 = v19;
    v21 = swift_slowAlloc();
    v53 = v6;
    v22 = v21;
    v56 = a1;
    v57 = v21;
    *v20 = 136315138;
    sub_2683CCC08();

    v23 = sub_2683CFAD8();
    v11 = v24;
    v25 = sub_2681610A0(v23, v24, &v57);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_2680EB000, v16, v17, "[ConfirmationResponse] parsing serverConversion %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v26 = v22;
    v6 = v53;
    MEMORY[0x26D617A40](v26, -1, -1);
    v27 = v20;
    v7 = v52;
    MEMORY[0x26D617A40](v27, -1, -1);
  }

  sub_2683CCBE8();
  v28 = (*(v7 + 88))(v13, v6);
  if (v28 != *MEMORY[0x277D5B960])
  {
    if (v28 != *MEMORY[0x277D5B970])
    {
      if (v28 == *MEMORY[0x277D5B978])
      {
        return 0;
      }

      if (v28 == *MEMORY[0x277D5B968])
      {
        return 1;
      }

      v32 = sub_2683CF7C8();
      v33 = sub_2683CFE78();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v57 = v35;
        *v34 = 136315138;
        sub_2683CCBE8();
        v36 = sub_2683CFAD8();
        v38 = sub_2681610A0(v36, v37, &v57);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_2680EB000, v32, v33, "[ConfirmationResponse] Parse ConfirmationResponse got unknown SirikitConfirmationState: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x26D617A40](v35, -1, -1);
        MEMORY[0x26D617A40](v34, -1, -1);
      }

      (*(v7 + 8))(v13, v6);
    }

    return 2;
  }

  if (!a3)
  {
LABEL_26:

    v39 = sub_2683CF7C8();
    v40 = sub_2683CFE78();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = v42;
      *v41 = 136315138;
      if (a3)
      {
        v43 = a3;
      }

      else
      {
        a2 = 0xD00000000000001BLL;
        v43 = 0x80000002683FE580;
      }

      v44 = sub_2681610A0(a2, v43, &v57);

      *(v41 + 4) = v44;
      _os_log_impl(&dword_2680EB000, v39, v40, "[ConfirmationResponse] Unable to get parameter metadata: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x26D617A40](v42, -1, -1);
      MEMORY[0x26D617A40](v41, -1, -1);
    }

    return 2;
  }

  v13 = sub_2683CCBF8();
  a1 = sub_2683ABE58(v13);
  v6 = 0;
  v7 = v13 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (a1 == v6)
    {

      goto LABEL_26;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D616C90](v6, v13);
    }

    else
    {
      if (v6 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v29 = *(v13 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (sub_2683CC028() == a2 && v30 == a3)
    {
      break;
    }

    v11 = sub_2683D0598();

    if (v11)
    {
      goto LABEL_34;
    }

    ++v6;
  }

LABEL_34:

  v46 = sub_2683CC038();
  v47 = sub_2683CF7C8();
  v48 = sub_2683CFE98();
  v49 = os_log_type_enabled(v47, v48);
  if (v46)
  {
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2680EB000, v47, v48, "[ConfirmationResponse] Received parameter metadata for the expected parameter from the server and it is marked shouldResolve. Treating as rejected", v50, 2u);
      MEMORY[0x26D617A40](v50, -1, -1);
    }

    return 1;
  }

  if (v49)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_2680EB000, v47, v48, "[ConfirmationResponse] Received parameter metadata for the expected parameter from the server and shouldResolve is false. Treating as confirmed", v51, 2u);
    MEMORY[0x26D617A40](v51, -1, -1);
  }

  return 0;
}

uint64_t sub_2681B9A5C(uint64_t a1)
{
  v2 = sub_2683CCBD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v10 = sub_2683CF7E8();
  __swift_project_value_buffer(v10, qword_28027C958);
  v11 = *(v3 + 16);
  v11(v9, a1, v2);
  v12 = sub_2683CF7C8();
  v13 = sub_2683CFE98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v7;
    v17 = v16;
    v29 = v16;
    *v15 = 136315138;
    v18 = sub_2683CCBB8();
    v26 = v11;
    v20 = v19;
    (*(v3 + 8))(v9, v2);
    v21 = sub_2681610A0(v18, v20, &v29);
    v11 = v26;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2680EB000, v12, v13, "[ConfirmationResponse] parsing direct invocation with id: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v22 = v17;
    v7 = v27;
    MEMORY[0x26D617A40](v22, -1, -1);
    v23 = v15;
    a1 = v28;
    MEMORY[0x26D617A40](v23, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }

  v11(v7, a1, v2);
  sub_26834CD60(v7, &v30);
  if ((v30 & 0xFE) == 2)
  {
    return 2;
  }

  else
  {
    return v30 != 0;
  }
}

uint64_t sub_2681B9D00()
{
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v0 = sub_2683CF7E8();
  __swift_project_value_buffer(v0, qword_28027C958);
  swift_unknownObjectRetain();
  v1 = sub_2683CF7C8();
  v2 = sub_2683CFE98();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E988, &qword_2683D89A0);
    v5 = sub_2683CFAD8();
    v7 = sub_2681610A0(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2680EB000, v1, v2, "[ConfirmationResponse] parsing userDialogAct %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x26D617A40](v4, -1, -1);
    MEMORY[0x26D617A40](v3, -1, -1);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 0;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2681B9EC4()
{
  v0 = sub_2683CCDD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CCC58();
  v5 = sub_2683CCF78();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = sub_2681B9D00();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v7 = sub_2683CF7E8();
    __swift_project_value_buffer(v7, qword_28027C958);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE78();
    if (os_log_type_enabled(v8, v9))
    {
      v6 = 2;
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2680EB000, v8, v9, "[ConfirmationResponse] Couldn't convert USO parse to dialog act", v10, 2u);
      MEMORY[0x26D617A40](v10, -1, -1);
    }

    else
    {

      return 2;
    }
  }

  return v6;
}

uint64_t sub_2681BA080(uint64_t a1)
{
  v2 = type metadata accessor for NotebookNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681BA0DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_12SiriNotebook0B4TaskO(uint64_t a1)
{
  if ((*(a1 + 56) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 56) & 7;
  }
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook0B4TaskOSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook16ConfirmationTaskO(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}