BOOL sub_2681D1E3C()
{
  v0 = sub_2683CC748();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  sub_2683CC738();
  (*(v1 + 8))(v4, v0);
  return sub_2681E290C() != 0;
}

uint64_t sub_2681D1F40()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_2683CC748();
  v0[3] = v2;
  OUTLINED_FUNCTION_3_1(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2681D1FFC()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  v8 = *(v3 + 8);
  v8(v1, v2);

  v9 = sub_2681E290C();
  v10 = v0[5];
  v11 = v0[6];
  if (v9 == 8)
  {
    sub_26812C6B8();
    v12 = OUTLINED_FUNCTION_59_1();
    *v13 = v5;
    v13[1] = v7;
    OUTLINED_FUNCTION_16_1(v12, v13);

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_77();

    __asm { BRAA            X1, X16 }
  }

  v16 = v9;
  v17 = v0[2];
  v18 = v0[3];

  v19 = sub_2683CC9C8();
  sub_2683CC9E8();
  v20 = sub_2683CC728();
  v22 = v21;
  v8(v10, v18);
  sub_2682D3594(v16, v20, v22 & 1);

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_77();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2681D21B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2681CD5B0();
}

uint64_t sub_2681D225C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268137D60;

  return sub_2681D1F40();
}

uint64_t sub_2681D22F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2681D2338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2681D23D0(void *a1)
{
  v2 = [a1 targetTaskListMembers];

  if (!v2)
  {
    return 0;
  }

  sub_2681D2438();
  v3 = sub_2683CFCA8();

  return v3;
}

unint64_t sub_2681D2438()
{
  result = qword_28024EB60;
  if (!qword_28024EB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024EB60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_18()
{
  v1 = *(v0 + 280);
  __swift_project_boxed_opaque_existential_1((*(v0 + 288) + 48), *(*(v0 + 288) + 72));

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_17_10()
{
  v3 = *(v0 + 24);
  v4 = **(v0 + 32);

  return sub_2681D1A74(v1);
}

uint64_t OUTLINED_FUNCTION_18_14()
{
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
}

uint64_t OUTLINED_FUNCTION_19_14()
{
  result = v0[20];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  return result;
}

uint64_t OUTLINED_FUNCTION_23_11(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v3;
  v4 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_25_10()
{
  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
}

id sub_2681D2560(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v74 = a4;
  v77 = a3;
  v78 = a2;
  v7 = *(a5 + 8);
  v6 = *(a5 + 16);
  v79 = a1;
  v80 = v7;
  v73 = v6;
  v81 = *(a5 + 24);
  LODWORD(v61) = *(a5 + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_2_1();
  v76 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB68, &unk_2683D98E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v58 - v20;
  v22 = sub_2683CB0D8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_1();
  v75 = v25;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v58 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v58 - v30;
  v32 = [v82 dateComponentsRange];
  v33 = [v32 startDateComponents];

  if (v33)
  {
    sub_2683CAFE8();

    v70 = v23;
    v71 = v22;
    (*(v23 + 32))(v31, v29, v22);
    sub_2683CB0B8();
    sub_2683CB0C8();
    v67 = sub_2683CB008();
    v68 = v21;
    v66 = v34;
    v69 = v17;
    if (v74)
    {
      v79 = sub_2683CB038();
      v65 = v35;
      v78 = sub_2683CB048();
      v74 = v36;
      v77 = sub_2683CAFF8();
      v63 = v37;
    }

    else
    {
      v63 = 0;
      v74 = 0;
      v65 = 0;
    }

    v40 = *(a5 + 33);
    v72 = v13;
    if (v40)
    {
      v64 = sub_2683CB028();
      LODWORD(v73) = v41;
    }

    else
    {
      v64 = *a5;
      if ((v73 & 1) == 0)
      {
        v62 = 0;
        LODWORD(v73) = 0;
        v43 = 0;
        v44 = v81;
        if ((v61 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      LODWORD(v73) = 0;
    }

    v80 = sub_2683CB068();
    v62 = v42;
    if ((v40 & 1) == 0 && (*(a5 + 32) & 1) == 0)
    {
      v43 = 0;
      v44 = *(a5 + 24);
LABEL_17:
      v58[1] = v43;
      v81 = v44;
      v61 = sub_2683CAF88();
      v58[0] = v45;
      v60 = sub_2683CB098();
      v59 = sub_2683CAFB8();
      sub_2683CB088();
      sub_2683CAFA8();
      sub_2683CAF98();
      sub_2683CAFC8();
      v46 = v75;
      sub_2683CB0A8();
      v48 = v70;
      v47 = v71;
      v49 = v72;
      (*(v70 + 16))(v72, v46, v71);
      v50 = 1;
      __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
      v51 = [v82 dateComponentsRange];
      v52 = [v51 endDateComponents];

      v53 = v76;
      if (v52)
      {
        sub_2683CAFE8();

        v50 = 0;
      }

      __swift_storeEnumTagSinglePayload(v53, v50, 1, v47);
      v54 = objc_allocWithZone(MEMORY[0x277CD3B68]);
      v55 = sub_2681D2B74(v49, v53);
      v56 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];

      v57 = *(v48 + 8);
      v57(v46, v47);
      v57(v31, v47);
      return v56;
    }

LABEL_16:
    v44 = sub_2683CB078();
    goto LABEL_17;
  }

  v38 = v82;

  return v38;
}

id sub_2681D2B74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2683CB0D8();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) != 1)
  {
    v7 = sub_2683CAFD8();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v6) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_2683CAFD8();
    (*(*(v6 - 8) + 8))(a2, v6);
  }

  v9 = [v3 initWithStartDateComponents:v7 endDateComponents:v8];

  return v9;
}

uint64_t sub_2681D2C94(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = sub_2683CFA78();
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_2681D2D14(uint64_t a1, uint64_t a2)
{
  sub_268129504(0, &qword_28024D340, 0x277CD4058);

  v4 = sub_268175270(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, a1, a2);
  v5 = [v4 _metadata];
  if (v5)
  {
    v6 = v5;
    [v5 setBackgroundLaunch_];
  }

  v7 = [v4 _metadata];

  if (v7)
  {
    sub_2683CF258();
    if (v8)
    {
      v9 = sub_2683CFA68();
    }

    else
    {
      v9 = 0;
    }

    [v7 setLaunchId_];
  }

  sub_268129504(0, &unk_28024F9B0, 0x277D473F0);
  v10 = sub_2683CFF28();

  return v10;
}

id sub_2681D2E90()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return DirectInvocationCodable.serializeToStartLocalRequest(context:)(v0[5], v1, v2);
}

uint64_t sub_2681D2F00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_2681D2F40(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ContinueReadingPromptResponseTask(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2681D3080(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, void, void))
{
  v4 = sub_2683CCC18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = sub_2681D346C(a1, a2);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v13 = sub_2683CF7E8();
  __swift_project_value_buffer(v13, qword_28027C958);
  v14 = *(v5 + 16);
  v14(v11, a1, v4);
  v15 = sub_2683CF7C8();
  v16 = sub_2683CFE98();
  if (os_log_type_enabled(v15, v16))
  {
    v28 = v9;
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v17 = 136315394;
    v18 = 0xE600000000000000;
    v19 = 0x6C65636E6163;
    v29 = v12;
    switch(v12)
    {
      case 1:
        v18 = 0xE400000000000000;
        v19 = 1886352499;
        break;
      case 2:
        v18 = 0xE800000000000000;
        v19 = 0x65756E69746E6F63;
        break;
      case 3:
        v18 = 0xE300000000000000;
        v19 = 7104878;
        break;
      default:
        break;
    }

    v20 = sub_2681610A0(v19, v18, &v30);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v14(v28, v11, v4);
    v21 = sub_2683CFAD8();
    v23 = v22;
    (*(v5 + 8))(v11, v4);
    v24 = sub_2681610A0(v21, v23, &v30);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_2680EB000, v15, v16, "[ContinueReadingPromptResponseTask] Parsed [%s] from: %s", v17, 0x16u);
    v25 = v27;
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v25, -1, -1);
    MEMORY[0x26D617A40](v17, -1, -1);

    return v29;
  }

  else
  {

    (*(v5 + 8))(v11, v4);
  }

  return v12;
}

uint64_t sub_2681D33C0(char a1)
{
  if (!a1)
  {
    return 0x6C65636E6163;
  }

  if (a1 == 1)
  {
    return 1886352499;
  }

  return 0x65756E69746E6F63;
}

unint64_t sub_2681D3418()
{
  result = qword_28024EB70;
  if (!qword_28024EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EB70);
  }

  return result;
}

uint64_t sub_2681D346C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, void, void))
{
  v4 = sub_2683CCC68();
  v45 = *(v4 - 1);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2683CCBD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2683CCC18();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v44 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v47 = &v41 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  a2(__src, a1, 0, 0);
  if (LOBYTE(__src[0]) == 3)
  {
    v43 = a2;
    sub_26812C310(__src, &qword_28024D458, &unk_2683D2C60);
    v42 = *(v14 + 16);
    v42(v21, a1, v13);
    v22 = (*(v14 + 88))(v21, v13);
    if (v22 == *MEMORY[0x277D5C150])
    {
      (*(v14 + 96))(v21, v13);
      (*(v9 + 32))(v12, v21, v8);
      v23 = sub_2681D3A0C();
      (*(v9 + 8))(v12, v8);
    }

    else if (v22 == *MEMORY[0x277D5C160])
    {
      (*(v14 + 96))(v21, v13);
      v24 = v45;
      v25 = v21;
      v26 = v46;
      (*(v45 + 32))(v7, v25, v46);
      v23 = sub_2681D3B14();
      (*(v24 + 8))(v7, v26);
    }

    else
    {
      if (qword_28024C8E0 != -1)
      {
        swift_once();
      }

      v27 = sub_2683CF7E8();
      __swift_project_value_buffer(v27, qword_28027C958);
      v28 = v47;
      v29 = v42;
      v42(v47, a1, v13);
      v30 = sub_2683CF7C8();
      v31 = sub_2683CFE98();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        __src[0] = v46;
        *v32 = 136315138;
        v29(v44, v28, v13);
        v33 = sub_2683CFAD8();
        v34 = v28;
        v36 = v35;
        v37 = *(v14 + 8);
        v37(v34, v13);
        v38 = sub_2681610A0(v33, v36, __src);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_2680EB000, v30, v31, "[ContinueReadingPromptResponseTask] got unsupported parse type %s", v32, 0xCu);
        v39 = v46;
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x26D617A40](v39, -1, -1);
        MEMORY[0x26D617A40](v32, -1, -1);
      }

      else
      {

        v37 = *(v14 + 8);
        v37(v28, v13);
      }

      v37(v21, v13);
      return 3;
    }
  }

  else
  {
    memcpy(__dst, __src, 0x41uLL);
    if (__dst[0] == 2)
    {
      return 0;
    }

    else
    {
      if (__dst[0])
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      sub_26812C310(&__dst[8], &qword_28024D460, &qword_2683D5050);
    }
  }

  return v23;
}

uint64_t sub_2681D3A0C()
{
  v0 = sub_2683CCBB8();
  v2 = v1;
  if (qword_28024CC80 != -1)
  {
    swift_once();
  }

  v3 = qword_280254878;
  v4 = unk_280254880;
  v8 = qword_280254868;
  v9 = unk_280254870;

  MEMORY[0x26D616690](46, 0xE100000000000000);
  MEMORY[0x26D616690](v3, v4);
  if (v0 == v8 && v2 == v9)
  {

    return 2;
  }

  else
  {
    v6 = sub_2683D0598();

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

uint64_t sub_2681D3B14()
{
  v0 = sub_2683CCDD8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CCC58();
  v5 = sub_2683CCF78();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();
      return 2;
    }

    sub_2681D3CA8(&v9);
    swift_unknownObjectRelease();
    v8[0] = v9;
    v8[1] = v10;
    if (*(&v10 + 1))
    {
      sub_2683CDDA8();
      if (swift_dynamicCast())
      {

        return 2;
      }
    }

    else
    {
      sub_26812C310(v8, &qword_28024E370, &unk_2683D9AA0);
    }
  }

  return 3;
}

double sub_2681D3CA8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2683CD558();
  if (sub_2683ABE58(v2))
  {
    sub_2683ABE60(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D616C90](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E370, &unk_2683D9AA0);
    *a1 = swift_allocObject();

    sub_2683CD718();
  }

  else
  {

    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t type metadata accessor for NotebookBaseCATsSimple()
{
  result = qword_28024EB78;
  if (!qword_28024EB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681D3FB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2681D4004(a1, a2);
}

uint64_t sub_2681D4004(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_268163198(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_2683CF178();
  (*(v8 + 8))(a2, v2);
  sub_268163208(a1);
  return v16;
}

uint64_t sub_2681D4160(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2683CF188();
  (*(v8 + 8))(a2, v3);
  return v15;
}

BOOL sub_2681D4268(uint64_t a1)
{
  sub_26813A144(a1, v3);
  v1 = v3[56] == 1;
  sub_26813A1A0(v3);
  return v1;
}

uint64_t sub_2681D42B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_2681D42E0, 0, 0);
}

void sub_2681D42E0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[4];
  v4 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9B8();
  sub_2683CF258();
  v6 = v5;

  v0[10] = v6;
  v8 = v1 + 16;
  v7 = *(v1 + 16);
  v16 = (*(v8 + 8) + 24);
  v17 = *v16 + **v16;
  v9 = (*v16)[1];
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_26813A870;
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  v14 = v0[2];
  v15 = v0[3];

  __asm { BRAA            X8, X16 }
}

void *sub_2681D4464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_2683CC748();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  v13 = sub_2683CC9C8();
  v14 = *v3;
  v16 = *(a3 + 16);
  v15 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(type metadata accessor for SimpleDisambiguationItem() + 28);
  v26[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, v25 + v18, AssociatedTypeWitness);
  sub_2683CC9E8();
  v20 = sub_2683CC728();
  LOBYTE(v18) = v21;
  (*(v8 + 8))(v12, v5);
  v22 = sub_2682DD960(v14, v26, v20, v18 & 1);

  __swift_destroy_boxed_opaque_existential_0(v26);
  return v22;
}

uint64_t sub_2681D4628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 36);
  v8 = *(a4 + 40);
  v10 = *(a4 + 16);
  v9 = *(a4 + 24);
  v11 = *(v9 + 16);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_6_3(v13);
  *v14 = v15;
  v14[1] = sub_268133EC8;

  return v17(a1, a2, v4 + v8, v10, v9);
}

uint64_t sub_2681D476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2681342AC;

  return sub_2681D42B4(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2681D4864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return sub_2681D4628(a1, a2, v8, a4);
}

uint64_t sub_2681D4930(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB88, &unk_2683D9BB0);
  v3 = OUTLINED_FUNCTION_1(v52);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = (&v48 - v6);
  v7 = sub_2683CC748();
  v8 = OUTLINED_FUNCTION_0_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  v18 = a2;
  sub_2683CC9E8();
  sub_2683CC738();
  v19 = *(v10 + 8);
  v19(v17, v7);
  v20 = sub_268201068();
  if (v20 == 2)
  {
    sub_2683CC9E8();
    v21 = sub_2683CC738();
    v23 = v22;
    v19(v15, v7);
    sub_26812C6B8();
    v24 = swift_allocError();
    *v25 = v21;
    *(v25 + 8) = v23;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = 1;
    v26 = v51;
    *v51 = v24;
    *(v26 + 8) = 0;
    v27 = *MEMORY[0x277D5BC30];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB90, &unk_2683D9BC0);
    OUTLINED_FUNCTION_1(v28);
    (*(v29 + 104))(v26, v27);
    v30 = v24;
    sub_2681D52B0();
LABEL_6:
    v41 = sub_2683CBF38();
    sub_26812D9E0(v26, &qword_28024EB88, &unk_2683D9BB0);

    return v41;
  }

  v31 = v51;
  if ((v20 & 1) == 0)
  {
    sub_26812C6B8();
    v24 = swift_allocError();
    *v42 = xmmword_2683D9BA0;
    *(v42 + 16) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = 2;
    v26 = v31;
    *v31 = v24;
    *(v31 + 8) = 0;
    v43 = *MEMORY[0x277D5BC30];
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB90, &unk_2683D9BC0);
    OUTLINED_FUNCTION_1(v44);
    (*(v45 + 104))(v26, v43);
    v46 = v24;
    sub_2681D52B0();
    goto LABEL_6;
  }

  v32 = v49;
  sub_2681D4D50(v80);
  sub_26813CA00(v32 + 80, v77);
  sub_26813C7E0(v32 + 144, &v78);
  sub_26813CA00(v32 + 192, v79);
  v79[5] = sub_2683CC9B8();
  memcpy(v76, v80, sizeof(v76));
  LOBYTE(v75) = 1;
  __swift_project_boxed_opaque_existential_1((v32 + 232), *(v32 + 256));
  sub_2681D5314(v80, &v53);
  sub_26818A030(&v75, v33, v34, v35, v36, v37, v38, v39, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76[0], v76[1], v76[2], v76[3], v76[4], v76[5], v76[6], v76[7], v76[8], v76[9], v76[10], v76[11], v76[12], v76[13], v76[14], v76[15], v76[16], v76[17], v76[18], v76[19], v76[20], v76[21], v77[0], v77[1], v77[2], v77[3]);
  v41 = v40(v50, v18);

  sub_26812D9E0(v80, &qword_28024E060, &qword_2683D6110);
  sub_26812D9E0(&v75, &qword_28024E170, &unk_2683D9BD0);
  return v41;
}

uint64_t sub_2681D4D50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2683CB598();
  v5 = OUTLINED_FUNCTION_0_3(v4);
  v28 = v6;
  v29 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2683D1EC0;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  *(v11 + 32) = sub_2683CD158();
  *(v11 + 40) = v12;
  v13 = *__swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  v31[3] = type metadata accessor for SnoozeTasksCATPatternsExecutor();
  v31[4] = &off_287902B08;
  v31[0] = v13;
  sub_26813CA00(v31, v30);
  v14 = swift_allocObject();
  sub_268128148(v30, v14 + 16);

  __swift_destroy_boxed_opaque_existential_0(v31);
  v15 = *(v2 + 120);
  v16 = qword_28024C8C0;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = *algn_28027C8D8;
  v18 = unk_28027C8E8;
  v26 = qword_28027C8E0;
  v27 = qword_28027C8D0;
  v19 = *(v2 + 128);

  sub_2683CB588();
  v20 = sub_2683CB548();
  v22 = v21;
  result = (*(v28 + 8))(v10, v29);
  *a1 = v11;
  *(a1 + 8) = &unk_2683D9BE0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_2683D9BF0;
  *(a1 + 32) = v14;
  *(a1 + 40) = &unk_2683D9C00;
  *(a1 + 48) = v15;
  *(a1 + 56) = sub_2681D518C;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v24 = v26;
  v25 = v27;
  *(a1 + 80) = 0;
  *(a1 + 88) = v25;
  *(a1 + 96) = v17;
  *(a1 + 104) = v24;
  *(a1 + 112) = v18;
  *(a1 + 120) = &unk_2683D9C10;
  *(a1 + 128) = v19;
  *(a1 + 136) = 1;
  LODWORD(v24) = v31[0];
  *(a1 + 140) = *(v31 + 3);
  *(a1 + 137) = v24;
  *(a1 + 144) = sub_268377A04;
  *(a1 + 152) = 0;
  *(a1 + 160) = v20;
  *(a1 + 168) = v22;
  return result;
}

uint64_t sub_2681D5020(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2681D5040, 0, 0);
}

uint64_t sub_2681D5040()
{
  OUTLINED_FUNCTION_14();
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_26813C350;
  v3 = *(v0 + 16);

  return sub_2681C19B4(v3);
}

uint64_t sub_2681D50E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681342AC;

  return sub_2683C8A00(a1, a2);
}

uint64_t sub_2681D518C()
{
  v0 = sub_2683CE098();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_2683CE088();
  v4 = sub_2683CDD18();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2683CDD08();
  sub_2683CDCF8();
  sub_2683CE178();

  return v3;
}

uint64_t sub_2681D5218(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_268137D60;

  return sub_268183768(a1);
}

unint64_t sub_2681D52B0()
{
  result = qword_28024EB98[0];
  if (!qword_28024EB98[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024EB88, &unk_2683D9BB0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28024EB98);
  }

  return result;
}

uint64_t sub_2681D5314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E060, &qword_2683D6110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681D5384()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_3(v3);
  *v4 = v5;
  v4[1] = sub_26813D6E0;

  return sub_2681D5020(v2, v0 + 16);
}

uint64_t sub_2681D5414(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_3(v4);
  *v5 = v6;
  v5[1] = sub_268133EC8;

  return sub_2681D50E0(a1, a2);
}

uint64_t sub_2681D54BC()
{
  OUTLINED_FUNCTION_14();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_3(v2);
  *v3 = v4;
  v3[1] = sub_26813D0C0;

  return sub_2681D5218(v1);
}

uint64_t sub_2681D554C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2681D55D4(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(*(v4 - 8) + 64) + 7;
  if (v8 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 1) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((v9 + v18) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((v9 + ((v7 + 1) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 136;
    v11 = a2 - v8;
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

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v8 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2681D572C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64) + 7;
  v12 = ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
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
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 1] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = (v11 + v19) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 104) = 0u;
              *(v20 + 88) = 0u;
              *(v20 + 72) = 0u;
              *(v20 + 56) = 0u;
              *(v20 + 40) = 0u;
              *(v20 + 24) = 0u;
              *(v20 + 8) = 0u;
              *(v20 + 120) = 0u;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v20 + 24) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) == 0xFFFFFF78)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFF8) != 0xFFFFFF78)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((v11 + ((v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 136);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_2681D59CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x61507473614C7369 && a2 == 0xEA00000000006567)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2681D5A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681D59CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2681D5A98(uint64_t a1)
{
  v2 = sub_2681D5C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681D5AD4(uint64_t a1)
{
  v2 = sub_2681D5C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.PageInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC20, &qword_2683D9D88);
  OUTLINED_FUNCTION_0_3(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681D5C38();
  sub_2683D0718();
  sub_2683D0528();
  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_2681D5C38()
{
  result = qword_28024EC28;
  if (!qword_28024EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EC28);
  }

  return result;
}

uint64_t Snippet.PageInfo.hashValue.getter()
{
  v1 = *v0;
  sub_2683D0698();
  sub_2683D06B8();
  return sub_2683D06D8();
}

uint64_t Snippet.PageInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC30, &qword_2683D9D90);
  OUTLINED_FUNCTION_0_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681D5C38();
  sub_2683D06F8();
  if (!v2)
  {
    v14 = sub_2683D0488();
    (*(v7 + 8))(v12, v5);
    *a2 = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2681D5E80()
{
  v1 = *v0;
  sub_2683D0698();
  sub_2683D06B8();
  return sub_2683D06D8();
}

uint64_t sub_2681D5ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681D5F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Snippet.SearchResult3p.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippet.SearchResult3p() + 20));
}

uint64_t type metadata accessor for Snippet.SearchResult3p()
{
  result = qword_28024ECD8;
  if (!qword_28024ECD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.SearchResult3p.notes.setter()
{
  OUTLINED_FUNCTION_24_4();
  v2 = *(type metadata accessor for Snippet.SearchResult3p() + 20);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Snippet.SearchResult3p.notes.modify()
{
  OUTLINED_FUNCTION_24_4();
  v0 = *(type metadata accessor for Snippet.SearchResult3p() + 20);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.SearchResult3p.reminderSections.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippet.SearchResult3p() + 24));
}

uint64_t Snippet.SearchResult3p.reminderSections.setter()
{
  OUTLINED_FUNCTION_24_4();
  v2 = *(type metadata accessor for Snippet.SearchResult3p() + 24);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t Snippet.SearchResult3p.reminderSections.modify()
{
  OUTLINED_FUNCTION_24_4();
  v0 = *(type metadata accessor for Snippet.SearchResult3p() + 24);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.SearchResult3p.pageInfo.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Snippet.SearchResult3p();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t Snippet.SearchResult3p.pageInfo.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Snippet.SearchResult3p();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t Snippet.SearchResult3p.pageInfo.modify()
{
  OUTLINED_FUNCTION_24_4();
  v0 = *(type metadata accessor for Snippet.SearchResult3p() + 28);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.SearchResult3p.interaction.setter()
{
  OUTLINED_FUNCTION_24_4();
  v2 = v1 + *(type metadata accessor for Snippet.SearchResult3p() + 32);

  return sub_2681D62B8(v0, v2);
}

uint64_t sub_2681D62B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Interaction();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Snippet.SearchResult3p.interaction.modify()
{
  OUTLINED_FUNCTION_24_4();
  v0 = *(type metadata accessor for Snippet.SearchResult3p() + 32);
  return OUTLINED_FUNCTION_44_1();
}

uint64_t Snippet.SearchResult3p.init(primaryHeading:notes:reminderSections:pageInfo:interaction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a4;
  v12 = type metadata accessor for Snippet.SectionHeading();
  __swift_storeEnumTagSinglePayload(a6, 1, 1, v12);
  v13 = type metadata accessor for Snippet.SearchResult3p();
  v14 = v13[7];
  *(a6 + v14) = 2;
  sub_2681D5F4C(a1, a6);
  *(a6 + v13[5]) = a2;
  *(a6 + v13[6]) = a3;
  *(a6 + v14) = v11;
  v15 = v13[8];
  OUTLINED_FUNCTION_9_16();
  return sub_2681D8CEC(a5, a6 + v16, v17);
}

uint64_t sub_2681D6410(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x487972616D697270 && a2 == 0xEE00676E69646165;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365746F6ELL && a2 == 0xE500000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000002683FE7F0 == a2;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F666E4965676170 && a2 == 0xE800000000000000;
        if (v8 || (sub_2683D0598() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
        {

          return 4;
        }

        else
        {
          v10 = sub_2683D0598();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_2681D65C0(char a1)
{
  result = 0x487972616D697270;
  switch(a1)
  {
    case 1:
      result = 0x7365746F6ELL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6F666E4965676170;
      break;
    case 4:
      result = 0x7463617265746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2681D6678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681D6410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681D66A0(uint64_t a1)
{
  v2 = sub_2681D6A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681D66DC(uint64_t a1)
{
  v2 = sub_2681D6A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.SearchResult3p.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC38, &qword_2683D9D98);
  OUTLINED_FUNCTION_0_3(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_28_2();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681D6A10();
  sub_2683D0718();
  type metadata accessor for Snippet.SectionHeading();
  OUTLINED_FUNCTION_8_16();
  sub_2681D72EC(v13, v14);
  OUTLINED_FUNCTION_5_16();
  sub_2683D0508();
  if (!v2)
  {
    v15 = type metadata accessor for Snippet.SearchResult3p();
    v20 = *(v4 + v15[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC50, &qword_2683D9DA0);
    sub_2681D70E4(&qword_28024EC58, sub_2681D6A64);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
    v21 = *(v4 + v15[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
    sub_2681D6AB8(&qword_28024EC70, &qword_28024EC78);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
    v22 = *(v4 + v15[7]);
    sub_2681D6B54();
    sub_2683D0508();
    v16 = v15[8];
    type metadata accessor for Snippet.Interaction();
    OUTLINED_FUNCTION_10_6();
    sub_2681D72EC(v17, v18);
    OUTLINED_FUNCTION_5_16();
    sub_2683D0548();
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_2681D6A10()
{
  result = qword_28024EC40;
  if (!qword_28024EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EC40);
  }

  return result;
}

unint64_t sub_2681D6A64()
{
  result = qword_28024EC60;
  if (!qword_28024EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EC60);
  }

  return result;
}

uint64_t sub_2681D6AB8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024EC68, &unk_2683E3470);
    sub_2681D72EC(a2, type metadata accessor for Snippet.ReminderSearchResult.Section);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2681D6B54()
{
  result = qword_28024EC80;
  if (!qword_28024EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EC80);
  }

  return result;
}

uint64_t Snippet.SearchResult3p.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = type metadata accessor for Snippet.Interaction();
  v3 = OUTLINED_FUNCTION_1(v43);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v46 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC88, &qword_2683D9DA8);
  v13 = OUTLINED_FUNCTION_0_3(v12);
  v44 = v14;
  v45 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_28_2();
  v18 = type metadata accessor for Snippet.SearchResult3p();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_3();
  v24 = v23 - v22;
  v25 = type metadata accessor for Snippet.SectionHeading();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  v48 = v18;
  v49 = a1;
  v26 = *(v18 + 28);
  v27 = v24;
  *(v24 + v26) = 2;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681D6A10();
  v29 = v47;
  sub_2683D06F8();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_0(v49);
    return sub_26812D9E0(v27, &qword_28024DAF8, &qword_2683E3440);
  }

  else
  {
    LOBYTE(v51) = 0;
    OUTLINED_FUNCTION_8_16();
    sub_2681D72EC(v30, v31);
    sub_2683D0468();
    sub_2681D5F4C(v46, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC50, &qword_2683D9DA0);
    v50 = 1;
    sub_2681D70E4(&qword_28024EC98, sub_2681D715C);
    sub_2683D04A8();
    v32 = v48;
    *(v27 + *(v48 + 20)) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EC68, &unk_2683E3470);
    v50 = 2;
    sub_2681D6AB8(&qword_28024ECA8, &qword_28024ECB0);
    sub_2683D04A8();
    *(v27 + *(v32 + 24)) = v51;
    v50 = 3;
    sub_2681D71B0();
    sub_2683D0468();
    *(v27 + v26) = v51;
    LOBYTE(v51) = 4;
    OUTLINED_FUNCTION_10_6();
    sub_2681D72EC(v33, v34);
    sub_2683D04A8();
    v35 = OUTLINED_FUNCTION_6_18();
    v36(v35);
    v37 = *(v32 + 32);
    OUTLINED_FUNCTION_9_16();
    sub_2681D8CEC(v8, v27 + v38, v39);
    sub_2681D8C24(v27, v42, type metadata accessor for Snippet.SearchResult3p);
    __swift_destroy_boxed_opaque_existential_0(v49);
    return sub_2681D8C84();
  }
}

uint64_t sub_2681D70E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024EC50, &qword_2683D9DA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2681D715C()
{
  result = qword_28024ECA0;
  if (!qword_28024ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ECA0);
  }

  return result;
}

unint64_t sub_2681D71B0()
{
  result = qword_28024ECB8;
  if (!qword_28024ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ECB8);
  }

  return result;
}

unint64_t sub_2681D7208()
{
  result = qword_28024ECC0;
  if (!qword_28024ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ECC0);
  }

  return result;
}

uint64_t sub_2681D72EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s14descr2878F8F29V8PageInfoVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr2878F8F29V8PageInfoVwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2681D7500()
{
  sub_2681D7674(319, &qword_28024ECE8, type metadata accessor for Snippet.SectionHeading, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2681D76D8(319, &qword_28024ECF0, &type metadata for Snippet.Note, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2681D7674(319, &qword_28024ECF8, type metadata accessor for Snippet.ReminderSearchResult.Section, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2681D76D8(319, &qword_28024ED00, &type metadata for Snippet.PageInfo, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Snippet.Interaction();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2681D7674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2681D76D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_BYTE *_s14descr2878F8F29V14SearchResult3pV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V8PageInfoV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2681D78B4()
{
  result = qword_28024ED08;
  if (!qword_28024ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED08);
  }

  return result;
}

unint64_t sub_2681D790C()
{
  result = qword_28024ED10;
  if (!qword_28024ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED10);
  }

  return result;
}

unint64_t sub_2681D7964()
{
  result = qword_28024ED18;
  if (!qword_28024ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED18);
  }

  return result;
}

unint64_t sub_2681D79BC()
{
  result = qword_28024ED20;
  if (!qword_28024ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED20);
  }

  return result;
}

unint64_t sub_2681D7A14()
{
  result = qword_28024ED28;
  if (!qword_28024ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED28);
  }

  return result;
}

unint64_t sub_2681D7A6C()
{
  result = qword_28024ED30;
  if (!qword_28024ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED30);
  }

  return result;
}

uint64_t sub_2681D7AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v134 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  OUTLINED_FUNCTION_0_3(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_28_2();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DAF8, &qword_2683E3440) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v17 = (&v126 - v16);
  v138 = type metadata accessor for Snippet.SectionHeading();
  v18 = OUTLINED_FUNCTION_1(v138);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_1();
  v131 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v126 - v23);
  v144 = sub_2683CAEA8();
  v25 = OUTLINED_FUNCTION_0_3(v144);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_3();
  v143 = v31 - v30;
  v130 = type metadata accessor for Snippet.ReminderSearchResult(0);
  v32 = OUTLINED_FUNCTION_1(v130);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_1();
  v128 = v35;
  MEMORY[0x28223BE20](v36);
  v136 = (&v126 - v37);
  v137 = *a3;
  v139 = v8;
  v38 = sub_2683CC818();
  v39 = sub_2682DEB58(v38);
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v42 = sub_268229348(v41);
  v133 = v4;
  v132 = v10;
  v135 = v24;
  if (!v42)
  {

    v149 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v150 = v40;
  v145 = v42;
  result = sub_268390A50(0, v42 & ~(v42 >> 63), 0);
  if ((v145 & 0x8000000000000000) == 0)
  {
    v126 = v17;
    v127 = a1;
    v129 = a4;
    v44 = 0;
    v45 = v150;
    v140 = (v27 + 8);
    v141 = v41 & 0xC000000000000001;
    v46 = &unk_279C3A000;
    v142 = v41;
    do
    {
      v149 = v45;
      if (v141)
      {
        v47 = MEMORY[0x26D616C90](v44, v41);
      }

      else
      {
        v47 = *(v41 + 8 * v44 + 32);
      }

      v48 = v47;
      v49 = sub_2683BA54C(v47);
      v147 = v50;
      v148 = v49;
      v51 = [v48 title];
      v52 = [v51 v46[264]];

      v146 = sub_2683CFA78();
      v54 = v53;

      v55 = [v48 groupName];
      if (v55)
      {
        v56 = v55;
        v57 = [v55 v46[264]];

        v58 = sub_2683CFA78();
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      sub_2683B9E1C();
      *&v151[0] = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280253390, &qword_2683E2550);
      sub_2681D8BC0();
      v62 = sub_2683CFA38();
      v64 = v63;

      *&v151[0] = v62;
      *(&v151[0] + 1) = v64;
      v65 = v143;
      sub_2683CAE78();
      sub_26812A1AC();
      v66 = sub_2683CFFE8();
      v68 = v67;

      (*v140)(v65, v144);

      v45 = v149;
      v150 = v149;
      v70 = *(v149 + 16);
      v69 = *(v149 + 24);
      if (v70 >= v69 >> 1)
      {
        sub_268390A50((v69 > 1), v70 + 1, 1);
        v45 = v150;
      }

      ++v44;
      *(v45 + 16) = v70 + 1;
      v71 = (v45 + (v70 << 6));
      v72 = v147;
      v71[4] = v148;
      v71[5] = v72;
      v71[6] = v146;
      v71[7] = v54;
      v71[8] = v58;
      v71[9] = v60;
      v71[10] = v66;
      v71[11] = v68;
      v41 = v142;
      v46 = &unk_279C3A000;
    }

    while (v145 != v44);
    v149 = v45;

    a4 = v129;
    a1 = v127;
    v17 = v126;
LABEL_18:
    v73 = v134;
    sub_2681D85CC(a1);
    v75 = v74;
    v76 = sub_2683CC848();
    v77 = sub_268175DF4(v73);
    v79 = v78;

    v80 = *(v75 + 16);
    v152 = 0;
    memset(v151, 0, sizeof(v151));
    v147 = v80;
    v148 = v77;
    switch(v79)
    {
      case 0uLL:
        OUTLINED_FUNCTION_13_13();
        sub_2682B80C8();
        OUTLINED_FUNCTION_19_15(v102);
        OUTLINED_FUNCTION_3_17();
        goto LABEL_26;
      case 1uLL:
        OUTLINED_FUNCTION_13_13();
        sub_2682B96A4();
        OUTLINED_FUNCTION_19_15(v103);
        OUTLINED_FUNCTION_3_17();
        goto LABEL_26;
      case 2uLL:
        v93 = OUTLINED_FUNCTION_13_13();
        v94 = sub_2682B9E98(v93);
        OUTLINED_FUNCTION_19_15(v94);
        OUTLINED_FUNCTION_3_17();
        goto LABEL_26;
      case 3uLL:
      case 6uLL:
        OUTLINED_FUNCTION_13_13();
        sub_2682BA0C0();
        OUTLINED_FUNCTION_19_15(v81);
        v82 = v135;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_26();
        v83 = v131;
        sub_2681D8C24(v82, v131, v84);
        v85 = v79;
        v86 = a1;
        v87 = v17;
        v88 = v130;
        v89 = *(v130 + 24);
        OUTLINED_FUNCTION_18_15();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
        v129 = a4;
        v90 = v128;
        sub_2683CB838();
        v91 = *(v88 + 28);
        LOBYTE(v150) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
        sub_2683CB838();
        *v90 = v146;
        v92 = *(v88 + 20);
        v17 = v87;
        a1 = v86;
        v79 = v85;
        sub_2681D8C24(v83, v90 + v92, v75);
        OUTLINED_FUNCTION_17_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        LOBYTE(v150) = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        OUTLINED_FUNCTION_0_30();
        sub_2681D8C84();
        sub_2681D8C84();
        Snippet.ReminderSearchResult.promotingFirstHeadingIfSingleSectionWithHeading()();
        OUTLINED_FUNCTION_7_14();
        a4 = v129;
        break;
      case 4uLL:
        v104 = OUTLINED_FUNCTION_13_13();
        v105 = sub_2682B9EA0(v104);
        OUTLINED_FUNCTION_19_15(v105);
        OUTLINED_FUNCTION_3_17();
        goto LABEL_26;
      case 5uLL:
        v106 = OUTLINED_FUNCTION_13_13();
        v107 = sub_2682BA560(v106);
        OUTLINED_FUNCTION_19_15(v107);
        OUTLINED_FUNCTION_3_17();
LABEL_26:
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_26();
        v108 = v131;
        sub_2681D8C24(v76, v131, v109);
        v110 = v130;
        v111 = *(v130 + 24);
        OUTLINED_FUNCTION_18_15();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
        sub_2683CB838();
        v112 = *(v110 + 28);
        LOBYTE(v150) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
        sub_2683CB838();
        OUTLINED_FUNCTION_21_10();
        sub_2681D8C24(v108, v113, v75);
        OUTLINED_FUNCTION_17_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        LOBYTE(v150) = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        OUTLINED_FUNCTION_0_30();
        sub_2681D8C84();
        break;
      default:

        OUTLINED_FUNCTION_13_13();
        sub_2682BA0C0();
        OUTLINED_FUNCTION_19_15(v95);
        v96 = v135;
        *v135 = v77;
        *(v96 + 8) = v79;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_1_26();
        v97 = v131;
        sub_2681D8C24(v96, v131, v98);
        v99 = v130;
        v145 = *(v130 + 24);
        OUTLINED_FUNCTION_18_15();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED38, &unk_2683E3430);
        sub_2683CB838();
        v100 = *(v99 + 28);
        LOBYTE(v150) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED40, &qword_2683DA168);
        sub_2683CB838();
        OUTLINED_FUNCTION_21_10();
        sub_2681D8C24(v97, v101, v75);
        OUTLINED_FUNCTION_17_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D598, &unk_2683D2C20);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        LOBYTE(v150) = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E790, &unk_2683D8DD0);
        OUTLINED_FUNCTION_14_14();
        sub_2683CB868();
        OUTLINED_FUNCTION_0_30();
        sub_2681D8C84();
        break;
    }

    sub_2681D8C84();
    sub_26812D9E0(v151, &qword_28024ED48, &qword_2683E3D20);
    v114 = sub_2683CC818();
    v115 = sub_2682DEB58(v114);
    if (v115)
    {
      v116 = sub_2683ABE58(v115);

      v117 = v116 != 0;
    }

    else
    {
      v117 = 0;
    }

    if (v79 > 6)
    {
      *v17 = v148;
      v17[1] = v79;
    }

    else
    {
      if (v79 != 2)
      {
        sub_2681D8CD8(v148, v79);
LABEL_33:
        v118 = 1;
LABEL_34:
        v119 = v133;
        v120 = v132;
        v121 = v138;
        __swift_storeEnumTagSinglePayload(v17, v118, 1, v138);
        v122 = *v136;
        (*(v120 + 16))(v119, a1, v139);
        v123 = type metadata accessor for Snippet.SearchResult3p();
        v124 = v123[8];

        sub_268363B3C(v119, (a4 + v124));
        OUTLINED_FUNCTION_7_14();
        sub_2681D8C84();
        __swift_storeEnumTagSinglePayload(a4, 1, 1, v121);
        v125 = v123[7];
        *(a4 + v125) = 2;
        result = sub_2681D5F4C(v17, a4);
        *(a4 + v123[5]) = v149;
        *(a4 + v123[6]) = v122;
        *(a4 + v125) = v137;
        return result;
      }

      if (v117)
      {
        goto LABEL_33;
      }
    }

    swift_storeEnumTagMultiPayload();
    v118 = 0;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_2681D85CC(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Reminder(0);
  v3 = *(v2 - 8);
  v55 = v2;
  v56 = v3;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v47 = a1;
  v9 = sub_2683CC818();
  v10 = sub_2681D8B48(v9);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v62 = MEMORY[0x277D84F90];
  v12 = sub_2683ABE58(v11);
  v13 = 0;
  v51 = v11 & 0xC000000000000001;
  v52 = v12;
  v48 = v11;
  v49 = v11 + 32;
  v50 = v11 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v13 == v52)
    {

      v33 = v62;
      v34 = sub_2683CC818();
      sub_268185D44();
      v36 = v35;

      v37 = sub_268229348(v36);
      if (v37)
      {
        v38 = v37;
        __src[0] = MEMORY[0x277D84F90];
        sub_268390728();
        if (v38 < 0)
        {
          goto LABEL_41;
        }

        v39 = 0;
        v40 = __src[0];
        v41 = v45;
        do
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x26D616C90](v39, v36);
          }

          else
          {
            v42 = *(v36 + 8 * v39 + 32);
          }

          sub_26834A288(v42, v41);
          __src[0] = v40;
          v43 = *(v40 + 16);
          if (v43 >= *(v40 + 24) >> 1)
          {
            sub_268390728();
            v41 = v45;
            v40 = __src[0];
          }

          ++v39;
          *(v40 + 16) = v43 + 1;
          sub_2681D8CEC(v41, v40 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v43, type metadata accessor for Snippet.Reminder);
        }

        while (v38 != v39);
      }

      else
      {

        v40 = MEMORY[0x277D84F90];
      }

      __src[0] = v33;
      sub_2682C061C(v40);
      return;
    }

    if (v51)
    {
      v14 = MEMORY[0x26D616C90](v13, v48);
    }

    else
    {
      if (v13 >= *(v50 + 16))
      {
        goto LABEL_39;
      }

      v14 = *(v49 + 8 * v13);
    }

    if (__OFADD__(v13++, 1))
    {
      break;
    }

    v16 = v14;
    v17 = sub_26837D6CC(v16);
    v19 = v18;
    v20 = [v16 title];
    v21 = [v20 spokenPhrase];

    v22 = sub_2683CFA78();
    v24 = v23;

    sub_268151B3C(0, 0, 255);
    __src[0] = v17;
    __src[1] = v19;
    __src[2] = v22;
    __src[3] = v24;
    memset(&__src[4], 0, 40);
    LOBYTE(__src[9]) = 3;
    __src[10] = 0;
    __src[11] = 0;
    LOBYTE(__src[12]) = -1;
    v25 = [v16 tasks];
    sub_268129504(0, &qword_280253310, 0x277CD4220);
    v26 = sub_2683CFCA8();

    if (v26 >> 62)
    {
      v27 = sub_2683D00A8();
      if (!v27)
      {
LABEL_24:

        sub_26814F740(__src);

        v28 = MEMORY[0x277D84F90];
        goto LABEL_25;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_24;
      }
    }

    v60 = MEMORY[0x277D84F90];
    sub_268390728();
    if (v27 < 0)
    {
      goto LABEL_40;
    }

    v53 = v16;
    v54 = v13;
    v28 = v60;
    memcpy(v59, __src, sizeof(v59));
    v29 = 0;
    if ((v26 & 0xC000000000000001) != 0)
    {
LABEL_14:
      v30 = MEMORY[0x26D616C90](v29, v26);
      goto LABEL_16;
    }

    while (1)
    {
      v30 = *(v26 + 8 * v29 + 32);
LABEL_16:
      sub_26834A288(v30, v8);
      v31 = *(v55 + 32);
      memcpy(v58, &v8[v31], 0x61uLL);
      sub_26814FB60(__src, &v57);
      sub_26812D9E0(v58, &qword_28024D5C0, &unk_2683D2C80);
      memcpy(&v8[v31], v59, 0x61uLL);
      v60 = v28;
      v32 = *(v28 + 16);
      if (v32 >= *(v28 + 24) >> 1)
      {
        sub_268390728();
        v28 = v60;
      }

      *(v28 + 16) = v32 + 1;
      sub_2681D8CEC(v8, v28 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v32, type metadata accessor for Snippet.Reminder);
      if (v27 - 1 == v29)
      {
        break;
      }

      ++v29;
      if ((v26 & 0xC000000000000001) != 0)
      {
        goto LABEL_14;
      }
    }

    sub_26814F740(__src);

    v13 = v54;
LABEL_25:
    sub_2682C061C(v28);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_2681D8B48(void *a1)
{
  v2 = [a1 taskLists];

  if (!v2)
  {
    return 0;
  }

  sub_268129504(0, &qword_280253320, 0x277CD4228);
  v3 = sub_2683CFCA8();

  return v3;
}

unint64_t sub_2681D8BC0()
{
  result = qword_28024F9C0;
  if (!qword_28024F9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280253390, &qword_2683E2550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F9C0);
  }

  return result;
}

uint64_t sub_2681D8C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2681D8C84()
{
  v1 = OUTLINED_FUNCTION_24_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_2681D8CD8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t sub_2681D8CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_17()
{
  result = *(v0 - 264);
  v2 = *(v0 - 240);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_15(uint64_t a1)
{
  *(v1 - 176) = a1;
}

uint64_t sub_2681D8E78(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2681D8E9C, 0, 0);
}

uint64_t sub_2681D8E9C()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2681D8F34;

  return sub_26837E8B8();
}

uint64_t sub_2681D8F34(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  v10 = *v4;
  OUTLINED_FUNCTION_1_0();
  *v11 = v10;

  if (v3)
  {

    v12 = sub_2681D9128;
  }

  else
  {
    *(v8 + 64) = a3;
    *(v8 + 48) = a2;
    *(v8 + 56) = a1;
    v12 = sub_2681D906C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2681D906C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v5[3] = &type metadata for AddTriggerExecutionParameters;
  v5[4] = &off_287908A68;
  v6 = swift_allocObject();
  *v5 = v6;
  sub_2681D91D4(v4, v2, v1, v3 & 1, v6 + 16);
  OUTLINED_FUNCTION_40();

  return v7();
}

uint64_t sub_2681D9128()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v2[3] = &type metadata for AddTriggerExecutionParameters;
  v2[4] = &off_287908A68;
  v3 = swift_allocObject();
  *v2 = v3;
  sub_2681D91D4(v1, 0, 0, 1, v3 + 16);
  OUTLINED_FUNCTION_40();

  return v4();
}

void sub_2681D91D4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a1;
  v10 = [a1 targetTaskList];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 title];
    v13 = sub_2681BAC30();

    v8 = v12;
  }

  else
  {
    v13 = 0;
  }

  *a5 = v13 & 1;
  v14 = a4 & 1;
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2;
  }

  *(a5 + 8) = v15;
  if (a4)
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  *(a5 + 16) = v14;
  *(a5 + 24) = v16;
  *(a5 + 32) = v14;
}

uint64_t sub_2681D9298(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_1_3(v6);
  *v7 = v8;
  v7[1] = sub_2681D933C;

  return sub_2681D8E78(a1, a2);
}

uint64_t sub_2681D933C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681D9420@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  if (sub_26818598C() == 1)
  {
    v10 = sub_2682E5FA4(v1);
    if (v10)
    {
      v11 = v10;
      if (sub_2683ABE58(v10))
      {
        sub_2683ABE60(0, (v11 & 0xC000000000000001) == 0, v11);
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x26D616C90](0, v11);
        }

        else
        {
          v12 = *(v11 + 32);
        }

        v13 = v12;

        if ([v13 status] == 1 && objc_msgSend(v13, sel_taskType) == 2)
        {
          v14 = [v13 temporalEventTrigger];
          if (v14 && (v15 = v14, v16 = [v14 dateComponentsRange], v15, v17 = objc_msgSend(v16, sel_recurrenceRule), v16, v17))
          {
          }

          else
          {
            v22 = [v13 temporalEventTrigger];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 dateComponentsRange];

              v25 = [v24 startDateComponents];
              if (v25)
              {
                sub_2683CAFE8();

                v26 = sub_2683CB0D8();
                v27 = 0;
              }

              else
              {

                v26 = sub_2683CB0D8();
                v27 = 1;
              }

              __swift_storeEnumTagSinglePayload(v7, v27, 1, v26);
              sub_268176BC8(v7, v9);
              sub_2683CB0D8();
              if (__swift_getEnumTagSinglePayload(v9, 1, v26) != 1)
              {
                (*(*(v26 - 8) + 32))(a1, v9, v26);
                v19 = a1;
                v20 = 0;
                v18 = v26;
                return __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
              }
            }

            else
            {

              v28 = sub_2683CB0D8();
              __swift_storeEnumTagSinglePayload(v9, 1, 1, v28);
            }

            sub_2681D9984(v9);
          }
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

  v18 = sub_2683CB0D8();
  v19 = a1;
  v20 = 1;
  return __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
}

uint64_t sub_2681D973C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681D97E0, 0, 0);
}

uint64_t sub_2681D97E0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2681D9420(v1);
  sub_268176BC8(v1, v2);
  v4 = sub_2683CB0D8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    v5 = v0[2];
    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
  }

  else
  {
    v6 = v0[4];
    v7 = v0[2];
    v7[3] = type metadata accessor for UpdateReminderExecutionParameters();
    v7[4] = &off_287908A78;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v6, v4);
  }

  v10 = v0[4];
  v9 = v0[5];

  OUTLINED_FUNCTION_40();

  return v11();
}

uint64_t sub_2681D98F4()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_1_3(v2);
  *v3 = v4;
  v3[1] = sub_2681D99FC;

  return sub_2681D973C();
}

uint64_t sub_2681D9984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2681D9A00()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2681DA93C(0xD00000000000001BLL, 0x80000002683FE900);
  if (!v1)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v2 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v2, qword_28027C958);
    v3 = sub_2683CF7C8();
    v4 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_2681610A0(0xD00000000000001BLL, 0x80000002683FE900, &v8);
      _os_log_impl(&dword_2680EB000, v3, v4, "AnnouncementEventStore init | Unable to get an instance of UserDefaults with suite %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  return v1;
}

void sub_2681D9B5C(char a1, uint64_t a2, void *a3)
{
  v7 = sub_2683CB528();
  v8 = OUTLINED_FUNCTION_0_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2681DA4F0(a1, a3);
  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
LABEL_12:
    OUTLINED_FUNCTION_0_5();
    goto LABEL_8;
  }

  v45 = v14;
  v47 = v7;
  v17 = sub_2681D9F80(a1);
  v3 = v18;
  v48 = v17;
  v49 = v18;

  v19 = OUTLINED_FUNCTION_1_27();
  MEMORY[0x26D616690](v19);

  v20 = sub_2683CFA68();

  v46 = v16;
  [a3 setInteger:v16 forKey:v20];

  v21 = sub_2683CB4A8();
  v44 = v17;
  v48 = v17;
  v49 = v3;

  v22 = OUTLINED_FUNCTION_2_19();
  MEMORY[0x26D616690](v22);

  v23 = sub_2683CFA68();

  [a3 setObject:v21 forKey:v23];

  if (a1 < 0)
  {
    if ((a1 & 1) == 0)
    {
      v26 = sub_2681DA4F0(129, a3);
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        return;
      }

      v28 = sub_2683CFA68();
      [a3 setInteger:v27 forKey:v28];

      v29 = sub_2683CB4A8();
      v30 = sub_2683CFA68();
      OUTLINED_FUNCTION_4_19(v30);
    }
  }

  else
  {
    v24 = sub_2683CB4A8();
    OUTLINED_FUNCTION_7_15();
    v25 = sub_2683CFA68();
    OUTLINED_FUNCTION_4_19(v25);

    sub_2681DA62C(129, a3);
  }

  if (qword_28024C8E0 != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v31 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v31, qword_28027C958);
  v32 = v45;
  v33 = v47;
  (*(v10 + 16))(v45, a2, v47);
  v34 = sub_2683CF7C8();
  v35 = sub_2683CFE98();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v46;
  if (v36)
  {
    v38 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v38 = 136315650;
    v39 = sub_2681610A0(v44, v3, &v48);

    *(v38 + 4) = v39;
    *(v38 + 12) = 2048;
    *(v38 + 14) = v37;
    *(v38 + 22) = 2080;
    sub_2681DA9A0();
    v40 = sub_2683D0568();
    v42 = v41;
    (*(v10 + 8))(v32, v33);
    v43 = sub_2681610A0(v40, v42, &v48);

    *(v38 + 24) = v43;
    _os_log_impl(&dword_2680EB000, v34, v35, "AnnouncementEventStore storeUsage | Storing Event '%s' in the store with usageCount '%ld', lastUsageDate: %s", v38, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    (*(v10 + 8))(v32, v33);
  }
}

unint64_t sub_2681D9F80(char a1)
{
  v1 = 0x746E69486B636F4DLL;
  if ((a1 & 1) == 0)
  {
    v1 = 0xD00000000000001ELL;
  }

  v2 = 0xD00000000000001CLL;
  if (a1)
  {
    v2 = 0xD00000000000002ALL;
  }

  if (a1 < 0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2681DA004@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_2683CB528();
  v9 = OUTLINED_FUNCTION_0_3(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = sub_2683CFA68();
  v20 = [a1 objectForKey_];

  if (v20)
  {
    sub_2683D0038();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46[0] = v44;
  v46[1] = v45;
  if (*(&v45 + 1))
  {
    v21 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v7, v21 ^ 1u, 1, v8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      v43 = *(v11 + 32);
      v43(v18, v7, v8);
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v22 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v22, qword_28027C958);
      (*(v11 + 16))(v16, v18, v8);
      v23 = sub_2683CF7C8();
      v24 = sub_2683CFE98();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v42 = a2;
        v26 = v25;
        v41 = swift_slowAlloc();
        *&v46[0] = v41;
        *v26 = 136315394;
        OUTLINED_FUNCTION_7_15();
        *(v26 + 4) = sub_2681610A0(v27, v28, v29);
        *(v26 + 12) = 2080;
        sub_2681DA9A0();
        v30 = sub_2683D0568();
        v32 = v31;
        (*(v11 + 8))(v16, v8);
        v33 = sub_2681610A0(v30, v32, v46);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_2680EB000, v23, v24, "AnnouncementEventStore getDateOfLastHint | Read lastUsageTimestamp for %s: %s", v26, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_38();
        a2 = v42;
        OUTLINED_FUNCTION_38();
      }

      else
      {

        (*(v11 + 8))(v16, v8);
      }

      v43(a2, v18, v8);
      v38 = 0;
      return __swift_storeEnumTagSinglePayload(a2, v38, 1, v8);
    }
  }

  else
  {
    sub_26812C310(v46, &qword_28024E370, &unk_2683D9AA0);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  }

  sub_26812C310(v7, &qword_28024DB08, qword_2683D5760);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v34 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v34, qword_28027C958);
  v35 = sub_2683CF7C8();
  v36 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v36))
  {
    swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_27_3();
    *&v46[0] = v37;
    *v18 = 136315138;
    *(v18 + 4) = sub_2681610A0(0x614C664F65746144, 0xEE00746E69487473, v46);
    _os_log_impl(&dword_2680EB000, v35, v36, "AnnouncementEventStore getDateOfLastHint | No lastUsageTimestamp for event %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v38 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v38, 1, v8);
}

id sub_2681DA4F0(char a1, void *a2)
{
  sub_2681D9F80(a1);
  OUTLINED_FUNCTION_9_17();
  v4 = OUTLINED_FUNCTION_1_27();
  MEMORY[0x26D616690](v4);

  sub_2683CFA68();
  OUTLINED_FUNCTION_12_11();
  v5 = [a2 integerForKey_];

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v6 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v6, qword_28027C958);
  v7 = sub_2683CF7C8();
  v8 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v8))
  {
    swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_10_7(4.8151e-34, v9, v10, v11, v12, v13, v14, v15, v16, v9);

    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_11_19(&dword_2680EB000, v17, v18, "AnnouncementEventStore getUsageCount | Read usageCount for event %s: %ld");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  return v5;
}

void sub_2681DA62C(char a1, void *a2)
{
  v4 = sub_2681D9F80(a1);
  v6 = v5;

  v7 = OUTLINED_FUNCTION_1_27();
  MEMORY[0x26D616690](v7);

  sub_2683CFA68();
  OUTLINED_FUNCTION_12_11();
  [a2 setInteger:0 forKey:v2];

  v15[0] = v4;
  v15[1] = v6;

  v8 = OUTLINED_FUNCTION_2_19();
  MEMORY[0x26D616690](v8);

  sub_2683CFA68();
  OUTLINED_FUNCTION_12_11();
  [a2 setURL:0 forKey:v2];

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v9 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v9, qword_28027C958);
  oslog = sub_2683CF7C8();
  v10 = sub_2683CFE98();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315138;
    v13 = sub_2681610A0(v4, v6, v15);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_2680EB000, oslog, v10, "AnnouncementEventStore resetUsage | Reset Event '%s' in the store setting date of occurence to nil and the usage count to 0", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }
}

BOOL sub_2681DA7FC(char a1, void *a2)
{
  sub_2681D9F80(a1);
  OUTLINED_FUNCTION_9_17();
  v4 = OUTLINED_FUNCTION_1_27();
  MEMORY[0x26D616690](v4);

  sub_2683CFA68();
  OUTLINED_FUNCTION_12_11();
  v5 = [a2 integerForKey_];

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v6 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v6, qword_28027C958);
  v7 = sub_2683CF7C8();
  v8 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v8))
  {
    swift_slowAlloc();
    v9 = OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_10_7(4.8151e-34, v9, v10, v11, v12, v13, v14, v15, v16, v9);

    OUTLINED_FUNCTION_6_19();
    OUTLINED_FUNCTION_11_19(&dword_2680EB000, v17, v18, "AnnouncementEventStore getEventHasOccurred | Read usageCount for event %s: %ld");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  return v5 != 0;
}

id sub_2681DA93C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_2683CFA68();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_2681DA9A0()
{
  result = qword_28024ED50;
  if (!qword_28024ED50)
  {
    sub_2683CB528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED50);
  }

  return result;
}

uint64_t sub_2681DA9F8(uint64_t *a1, int a2)
{
  if (a2)
  {
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2681DAA38(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id OUTLINED_FUNCTION_4_19(uint64_t a1)
{

  return [v3 (v1 + 2168)];
}

void OUTLINED_FUNCTION_6_19()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2048;
  *(v2 + 14) = v0;
}

uint64_t OUTLINED_FUNCTION_9_17()
{
}

uint64_t OUTLINED_FUNCTION_10_7(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v12 = a1;

  return sub_2681610A0(v11, v10, &a10);
}

void OUTLINED_FUNCTION_11_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_12_11()
{
}

uint64_t sub_2681DAB90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_2683CEBD8();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B8, &qword_2683D2330) - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681DAC9C, 0, 0);
}

uint64_t sub_2681DAC9C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v5 = *(v3 + 16);
  *(v0 + 80) = v5;
  *(v0 + 88) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_2681DADAC;
  v7 = *(v0 + 72);

  return sub_268131CEC();
}

uint64_t sub_2681DADAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 72);
  v8 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  sub_2681DB91C(v5);
  if (v1)
  {
    v6 = sub_2681DB1A4;
  }

  else
  {
    v6 = sub_2681DAEE0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2681DAEE0()
{
  v41 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = sub_2683CF7E8();
  __swift_project_value_buffer(v6, qword_28027C958);
  v2(v3, v5, v4);
  v7 = sub_2683CF7C8();
  v8 = sub_2683CFE58();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 80);
    v39 = *(v0 + 88);
    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v15;
    *v14 = 136315138;
    v9(v11, v10, v12);
    v16 = sub_2683CFAD8();
    v18 = v17;
    (*(v13 + 8))(v10, v12);
    v19 = sub_2681610A0(v16, v18, &v40);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2680EB000, v7, v8, "[IntentHelpers] Looking up location: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
    v20 = *(v0 + 64);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);

    (*(v22 + 8))(v20, v21);
  }

  v23 = sub_2683ABE58(*(v0 + 104));
  v24 = *(v0 + 104);
  if (v23)
  {
    v25 = v24 & 0xC000000000000001;
    sub_2683ABE60(0, (v24 & 0xC000000000000001) == 0, v24);
    if (v25)
    {
      v26 = MEMORY[0x26D616C90](0, *(v0 + 104));
      v38 = *(v0 + 104);
    }

    else
    {
      v26 = *(*(v0 + 104) + 32);
    }

    v27 = *(v0 + 120);
    v28 = *(v0 + 32);

    if (v27)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28;
    }

    v30 = objc_allocWithZone(MEMORY[0x277CD4178]);
    v31 = sub_26836D8DC(v26, v29, MEMORY[0x277D84F90], 0);
  }

  else
  {
    v32 = *(v0 + 104);

    v31 = 0;
  }

  v34 = *(v0 + 64);
  v33 = *(v0 + 72);
  v35 = *(v0 + 56);

  v36 = *(v0 + 8);

  return v36(v31);
}

uint64_t sub_2681DB1A4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[14];

  return v4();
}

id sub_2681DB21C(void *a1, id a2)
{
  v6 = sub_2683CB0D8();
  v7 = OUTLINED_FUNCTION_2_20(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_28();
  MEMORY[0x28223BE20](v12);
  v14 = v29 - v13;
  if (a1 && a2)
  {
    v15 = a2;
    v16 = a1;
    v17 = [v16 dateComponentsRange];
    v18 = [v17 startDateComponents];

    if (v18)
    {
      sub_2683CAFE8();

      (*(v9 + 32))(v14, v2, v3);
      v19 = sub_2683CB038();
      if ((v20 & 1) == 0)
      {
        v21 = v19;
        v22 = sub_2683CB048();
        if ((v23 & 1) == 0)
        {
          v24 = v22;
          v25 = sub_2683CAFF8();
          if ((v26 & 1) == 0)
          {
            memset(v29, 0, sizeof(v29));
            v30 = 256;
            a2 = sub_2681D2560(v21, v24, v25, 0, v29);

            (*(v9 + 8))(v14, v3);
            return a2;
          }
        }
      }

      (*(v9 + 8))(v14, v3);
    }
  }

  v27 = a2;
  return a2;
}

id sub_2681DB404(void *a1, id a2)
{
  v6 = sub_2683CB0D8();
  v7 = OUTLINED_FUNCTION_2_20(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_28();
  MEMORY[0x28223BE20](v12);
  v14 = &v30[-1] - v13;
  if (a1 && a2)
  {
    v15 = a2;
    v16 = a1;
    v17 = [v16 dateComponentsRange];
    v18 = [v17 startDateComponents];

    if (v18)
    {
      sub_2683CAFE8();

      (*(v9 + 32))(v14, v2, v3);
      v19 = sub_2683CB028();
      if ((v20 & 1) == 0)
      {
        v23 = v19;
        v24 = sub_2683CB068();
        v26 = v25;
        v27 = sub_2683CB078();
        v30[0] = v23;
        v30[1] = v24;
        v30[2] = v26 & 1;
        v30[3] = v27;
        v31 = v28 & 1;
        v32 = 0;
        a2 = sub_2681D2560(0, 0, 0, 1, v30);

        (*(v9 + 8))(v14, v3);
        return a2;
      }

      (*(v9 + 8))(v14, v3);
    }
  }

  v21 = a2;
  return a2;
}

id sub_2681DB5EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = a2;
  if (a5 & 1) != 0 && a3 != 2 && (a3)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v7 = sub_2683CF7E8();
    __swift_project_value_buffer(v7, qword_28027C958);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE58();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_2681610A0(0xD000000000000011, 0x80000002683FE920, &v20);
      _os_log_impl(&dword_2680EB000, v8, v9, "[IntentHelpers] Constructing list title with vocabulary identifier %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    if (v6)
    {
      v6 = sub_268129D44(a4);
      v13 = v12;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v19 = objc_allocWithZone(MEMORY[0x277CD4188]);
    return sub_2681DB858(0xD000000000000011, 0x80000002683FE920, v6, v13, 0, 0);
  }

  else if (a2)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v14 = sub_2683CF7E8();
    __swift_project_value_buffer(v14, qword_28027C958);
    v15 = sub_2683CF7C8();
    v16 = sub_2683CFE58();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2680EB000, v15, v16, "[IntentHelpers] Constructing regular list title", v17, 2u);
      OUTLINED_FUNCTION_38();
    }

    sub_268133FA8();
    sub_268129D44(a4);
    return sub_26835E5F8();
  }

  else
  {
    return 0;
  }
}

id sub_2681DB858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_2683CFA68();

  v9 = sub_2683CFA68();

  if (a6)
  {
    v10 = sub_2683CFA68();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithVocabularyIdentifier:v8 spokenPhrase:v9 pronunciationHint:v10];

  return v11;
}

uint64_t sub_2681DB91C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3B8, &qword_2683D2330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL static Snippet.ReminderPunchoutLocation.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_35;
      }

      if (v3)
      {
        if (v6)
        {
          if (v2 == v5 && v3 == v6)
          {
            v42 = 1;
            v114 = OUTLINED_FUNCTION_61_0();
            v116 = OUTLINED_FUNCTION_1_29(v114, v115, 1u);
            v118 = OUTLINED_FUNCTION_1_29(v116, v117, 1u);
            sub_2681DBDA8(v118, v119, 1u);
            v120 = OUTLINED_FUNCTION_61_0();
            sub_2681DBDA8(v120, v121, 1u);
          }

          else
          {
            OUTLINED_FUNCTION_61_0();
            v41 = OUTLINED_FUNCTION_11_20();
            v42 = 1;
            v43 = OUTLINED_FUNCTION_60();
            v45 = OUTLINED_FUNCTION_1_29(v43, v44, 1u);
            v47 = OUTLINED_FUNCTION_1_29(v45, v46, 1u);
            sub_2681DBDA8(v47, v48, 1u);
            v49 = OUTLINED_FUNCTION_60();
            sub_2681DBDA8(v49, v50, 1u);
            if ((v41 & 1) == 0)
            {
              return 0;
            }
          }

          return v42;
        }

        v102 = OUTLINED_FUNCTION_10_8();
        sub_2681DBD90(v102, v103, 1u);
        v104 = OUTLINED_FUNCTION_10_8();
        v106 = OUTLINED_FUNCTION_1_29(v104, v105, 1u);
        v108 = OUTLINED_FUNCTION_1_29(v106, v107, 1u);
        sub_2681DBDA8(v108, v109, 1u);
      }

      else
      {
        v76 = a2[1];

        v42 = 1;
        v77 = OUTLINED_FUNCTION_60();
        v79 = OUTLINED_FUNCTION_9_18(v77, v78, 1u);
        v81 = OUTLINED_FUNCTION_9_18(v79, v80, 1u);
        sub_2681DBDA8(v81, v82, 1u);
        v83 = OUTLINED_FUNCTION_60();
        sub_2681DBDA8(v83, v84, 1u);
        if (!v6)
        {
          return v42;
        }
      }

      v57 = OUTLINED_FUNCTION_60();
      v59 = 1;
      goto LABEL_36;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_35;
      }

      if (v3)
      {
        if (v6)
        {
          v20 = *a1;
          if (v2 != v5 || v3 != v6)
          {
            v10 = OUTLINED_FUNCTION_11_20();
            v22 = OUTLINED_FUNCTION_60();
            v24 = OUTLINED_FUNCTION_1_29(v22, v23, 2u);
            v26 = OUTLINED_FUNCTION_1_29(v24, v25, 2u);
            sub_2681DBDA8(v26, v27, 2u);
            v17 = OUTLINED_FUNCTION_60();
            v19 = 2;
            goto LABEL_18;
          }

          v110 = OUTLINED_FUNCTION_1_29(v20, v3, 2u);
          v112 = OUTLINED_FUNCTION_1_29(v110, v111, 2u);
          sub_2681DBDA8(v112, v113, 2u);
          v64 = OUTLINED_FUNCTION_61_0();
          v66 = 2;
          goto LABEL_55;
        }

        v94 = OUTLINED_FUNCTION_10_8();
        sub_2681DBD90(v94, v95, 2u);
        v96 = OUTLINED_FUNCTION_10_8();
        v98 = OUTLINED_FUNCTION_1_29(v96, v97, 2u);
        v100 = OUTLINED_FUNCTION_1_29(v98, v99, 2u);
        sub_2681DBDA8(v100, v101, 2u);
      }

      else
      {
        v67 = a2[1];

        v68 = OUTLINED_FUNCTION_60();
        v70 = OUTLINED_FUNCTION_9_18(v68, v69, 2u);
        v72 = OUTLINED_FUNCTION_9_18(v70, v71, 2u);
        sub_2681DBDA8(v72, v73, 2u);
        v74 = OUTLINED_FUNCTION_60();
        sub_2681DBDA8(v74, v75, 2u);
        if (!v6)
        {
          return 1;
        }
      }

      v57 = OUTLINED_FUNCTION_60();
      v59 = 2;
      goto LABEL_36;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_35;
      }

      v28 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v30 = OUTLINED_FUNCTION_11_20();
        v31 = OUTLINED_FUNCTION_60();
        v33 = OUTLINED_FUNCTION_1_29(v31, v32, 3u);
        v35 = OUTLINED_FUNCTION_1_29(v33, v34, 3u);
        sub_2681DBDA8(v35, v36, 3u);
        v37 = OUTLINED_FUNCTION_60();
        sub_2681DBDA8(v37, v38, 3u);
        return v30 & 1;
      }

      v60 = OUTLINED_FUNCTION_1_29(v28, v3, 3u);
      v62 = OUTLINED_FUNCTION_1_29(v60, v61, 3u);
      sub_2681DBDA8(v62, v63, 3u);
      v64 = OUTLINED_FUNCTION_61_0();
      v66 = 3;
      goto LABEL_55;
    default:
      if (*(a2 + 16))
      {
LABEL_35:
        v51 = OUTLINED_FUNCTION_60();
        v53 = OUTLINED_FUNCTION_1_29(v51, v52, v7);
        v55 = OUTLINED_FUNCTION_1_29(v53, v54, v4);
        sub_2681DBDA8(v55, v56, v4);
        v57 = OUTLINED_FUNCTION_60();
        v59 = v7;
LABEL_36:
        sub_2681DBDA8(v57, v58, v59);
        return 0;
      }

      if (!v3)
      {
        v85 = a2[1];

        v86 = OUTLINED_FUNCTION_60();
        v88 = OUTLINED_FUNCTION_9_18(v86, v87, 0);
        v90 = OUTLINED_FUNCTION_9_18(v88, v89, 0);
        sub_2681DBDA8(v90, v91, 0);
        v92 = OUTLINED_FUNCTION_60();
        sub_2681DBDA8(v92, v93, 0);
        if (!v6)
        {
          return 1;
        }

        goto LABEL_53;
      }

      if (!v6)
      {
        v122 = OUTLINED_FUNCTION_10_8();
        sub_2681DBD90(v122, v123, 0);
        v124 = OUTLINED_FUNCTION_10_8();
        v126 = OUTLINED_FUNCTION_1_29(v124, v125, 0);
        v128 = OUTLINED_FUNCTION_1_29(v126, v127, 0);
        sub_2681DBDA8(v128, v129, 0);
LABEL_53:
        v57 = OUTLINED_FUNCTION_60();
        v59 = 0;
        goto LABEL_36;
      }

      v8 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v10 = OUTLINED_FUNCTION_11_20();
        v11 = OUTLINED_FUNCTION_60();
        v13 = OUTLINED_FUNCTION_1_29(v11, v12, 0);
        v15 = OUTLINED_FUNCTION_1_29(v13, v14, 0);
        sub_2681DBDA8(v15, v16, 0);
        v17 = OUTLINED_FUNCTION_60();
        v19 = 0;
LABEL_18:
        sub_2681DBDA8(v17, v18, v19);
        return (v10 & 1) != 0;
      }

      v130 = OUTLINED_FUNCTION_1_29(v8, v3, 0);
      v132 = OUTLINED_FUNCTION_1_29(v130, v131, 0);
      sub_2681DBDA8(v132, v133, 0);
      v64 = OUTLINED_FUNCTION_61_0();
      v66 = 0;
LABEL_55:
      sub_2681DBDA8(v64, v65, v66);
      return 1;
  }
}

uint64_t sub_2681DBD90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_2681DBDA8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t sub_2681DBDC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265646E696D6572 && a2 == 0xEE006C6961746544;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7265646E696D6572 && a2 == 0xEC0000007473694CLL;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2683D0598();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2681DBF14(char a1)
{
  result = 0x7265646E696D6572;
  switch(a1)
  {
    case 3:
      result = 0x686372616573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2681DBF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681DBDC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681DBFB8(uint64_t a1)
{
  v2 = sub_2681DC62C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681DBFF4(uint64_t a1)
{
  v2 = sub_2681DC62C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681DC030(uint64_t a1)
{
  v2 = sub_2681DC77C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681DC06C(uint64_t a1)
{
  v2 = sub_2681DC77C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681DC0A8(uint64_t a1)
{
  v2 = sub_2681DC728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681DC0E4(uint64_t a1)
{
  v2 = sub_2681DC728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681DC120(uint64_t a1)
{
  v2 = sub_2681DC6D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681DC15C(uint64_t a1)
{
  v2 = sub_2681DC6D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681DC198(uint64_t a1)
{
  v2 = sub_2681DC680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681DC1D4(uint64_t a1)
{
  v2 = sub_2681DC680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.ReminderPunchoutLocation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED58, &qword_2683DA2D0);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v53 = v5;
  v54 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v52 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED60, &qword_2683DA2D8);
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v50 = v12;
  v51 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  v49 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED68, &qword_2683DA2E0);
  v18 = OUTLINED_FUNCTION_0_3(v17);
  v47 = v19;
  v48 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED70, &qword_2683DA2E8);
  OUTLINED_FUNCTION_0_3(v25);
  v46 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v46 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024ED78, &qword_2683DA2F0);
  v33 = OUTLINED_FUNCTION_0_3(v32);
  v57 = v34;
  v58 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v37);
  v39 = &v46 - v38;
  v40 = v1[1];
  v55 = *v1;
  v56 = v40;
  v41 = *(v1 + 16);
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681DC62C();
  sub_2683D0718();
  switch(v41)
  {
    case 1:
      v60 = 1;
      sub_2681DC728();
      OUTLINED_FUNCTION_6_20();
      v43 = v48;
      OUTLINED_FUNCTION_12_12();
      sub_2683D04D8();
      v44 = v47;
      goto LABEL_6;
    case 2:
      v61 = 2;
      sub_2681DC6D4();
      v24 = v49;
      OUTLINED_FUNCTION_6_20();
      v43 = v51;
      OUTLINED_FUNCTION_12_12();
      sub_2683D04D8();
      v44 = v50;
      goto LABEL_6;
    case 3:
      v62 = 3;
      sub_2681DC680();
      v24 = v52;
      OUTLINED_FUNCTION_6_20();
      v43 = v54;
      OUTLINED_FUNCTION_12_12();
      sub_2683D0518();
      v44 = v53;
LABEL_6:
      (*(v44 + 8))(v24, v43);
      break;
    default:
      v59 = 0;
      sub_2681DC77C();
      OUTLINED_FUNCTION_6_20();
      sub_2683D04D8();
      (*(v46 + 8))(v31, v25);
      break;
  }

  return (*(v57 + 8))(v39, v41);
}

unint64_t sub_2681DC62C()
{
  result = qword_28024ED80;
  if (!qword_28024ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED80);
  }

  return result;
}

unint64_t sub_2681DC680()
{
  result = qword_28024ED88;
  if (!qword_28024ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED88);
  }

  return result;
}

unint64_t sub_2681DC6D4()
{
  result = qword_28024ED90;
  if (!qword_28024ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED90);
  }

  return result;
}

unint64_t sub_2681DC728()
{
  result = qword_28024ED98;
  if (!qword_28024ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024ED98);
  }

  return result;
}

unint64_t sub_2681DC77C()
{
  result = qword_28024EDA0;
  if (!qword_28024EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDA0);
  }

  return result;
}

uint64_t Snippet.ReminderPunchoutLocation.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      v3 = 1;
      goto LABEL_6;
    case 2:
      v3 = 2;
      goto LABEL_6;
    case 3:
      MEMORY[0x26D617190](3);
      goto LABEL_8;
    default:
      v3 = 0;
LABEL_6:
      MEMORY[0x26D617190](v3);
      if (!v1)
      {
        return sub_2683D06B8();
      }

      sub_2683D06B8();
LABEL_8:
      OUTLINED_FUNCTION_61_0();

      return sub_2683CFB48();
  }
}

uint64_t Snippet.ReminderPunchoutLocation.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_2683D0698();
  Snippet.ReminderPunchoutLocation.hash(into:)();
  return sub_2683D06D8();
}

uint64_t Snippet.ReminderPunchoutLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EDA8, &qword_2683DA2F8);
  OUTLINED_FUNCTION_0_3(v91);
  v87 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v90 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EDB0, &qword_2683DA300);
  v85 = OUTLINED_FUNCTION_0_3(v8);
  v86 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v89 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EDB8, &qword_2683DA308);
  v15 = OUTLINED_FUNCTION_0_3(v14);
  v83 = v16;
  v84 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EDC0, &qword_2683DA310);
  OUTLINED_FUNCTION_0_3(v22);
  v82 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v74 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EDC8, &unk_2683DA318);
  OUTLINED_FUNCTION_0_3(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v74 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_2681DC62C();
  v39 = v93;
  sub_2683D06F8();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_0(v92);
  }

  v79 = v22;
  v80 = v28;
  v81 = v21;
  v41 = v89;
  v40 = v90;
  v42 = v91;
  v93 = v31;
  v43 = v36;
  v44 = sub_2683D04B8();
  result = sub_268151B7C(v44, 0);
  if (v47 == v48 >> 1)
  {
LABEL_8:
    v56 = sub_2683D01D8();
    swift_allocError();
    v58 = v57;
    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
    *v58 = &type metadata for Snippet.ReminderPunchoutLocation;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D84160], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v93 + 8))(v43, v29);
    return __swift_destroy_boxed_opaque_existential_0(v92);
  }

  if (v47 >= (v48 >> 1))
  {
    __break(1u);
    return result;
  }

  v77 = *(v46 + v47);
  v49 = sub_268151B68(v47 + 1);
  v51 = v50;
  v53 = v52;
  swift_unknownObjectRelease();
  v78 = v49;
  if (v51 != v53 >> 1)
  {
    v43 = v36;
    goto LABEL_8;
  }

  v54 = v88;
  switch(v77)
  {
    case 1:
      v95 = 1;
      sub_2681DC728();
      OUTLINED_FUNCTION_8_17();
      v75 = sub_2683D0438();
      v76 = 0;
      OUTLINED_FUNCTION_16_18();
      v70 = OUTLINED_FUNCTION_15_14();
      v71(v70);
      v72 = OUTLINED_FUNCTION_5_17();
      v73(v72);
      v55 = v92;
      break;
    case 2:
      v96 = 2;
      sub_2681DC6D4();
      v60 = v41;
      OUTLINED_FUNCTION_8_17();
      v55 = v92;
      v61 = v85;
      v75 = sub_2683D0438();
      v76 = 0;
      OUTLINED_FUNCTION_16_18();
      (*(v86 + 8))(v60, v61);
      v62 = OUTLINED_FUNCTION_5_17();
      v63(v62);
      v54 = v88;
      break;
    case 3:
      v97 = 3;
      sub_2681DC680();
      OUTLINED_FUNCTION_8_17();
      v55 = v92;
      v75 = sub_2683D0478();
      v76 = 0;
      OUTLINED_FUNCTION_16_18();
      (*(v87 + 8))(v40, v42);
      v64 = OUTLINED_FUNCTION_5_17();
      v65(v64);
      break;
    default:
      v94 = 0;
      sub_2681DC77C();
      OUTLINED_FUNCTION_8_17();
      v55 = v92;
      v75 = sub_2683D0438();
      v76 = 0;
      OUTLINED_FUNCTION_16_18();
      v66 = OUTLINED_FUNCTION_13_14();
      v67(v66);
      v68 = OUTLINED_FUNCTION_2_21();
      v69(v68);
      break;
  }

  *v54 = v75;
  *(v54 + 8) = v42;
  *(v54 + 16) = v77;
  return __swift_destroy_boxed_opaque_existential_0(v55);
}

uint64_t sub_2681DD0AC()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_2683D0698();
  Snippet.ReminderPunchoutLocation.hash(into:)();
  return sub_2683D06D8();
}

unint64_t sub_2681DD104()
{
  result = qword_28024EDD0;
  if (!qword_28024EDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDD0);
  }

  return result;
}

uint64_t sub_2681DD164(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_2681DD1A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

_BYTE *_s14descr2878F8F29V24ReminderPunchoutLocationO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2681DD30C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2681DD3BC()
{
  result = qword_28024EDD8;
  if (!qword_28024EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDD8);
  }

  return result;
}

unint64_t sub_2681DD414()
{
  result = qword_28024EDE0;
  if (!qword_28024EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDE0);
  }

  return result;
}

unint64_t sub_2681DD46C()
{
  result = qword_28024EDE8;
  if (!qword_28024EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDE8);
  }

  return result;
}

unint64_t sub_2681DD4C4()
{
  result = qword_28024EDF0;
  if (!qword_28024EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDF0);
  }

  return result;
}

unint64_t sub_2681DD51C()
{
  result = qword_28024EDF8;
  if (!qword_28024EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EDF8);
  }

  return result;
}

unint64_t sub_2681DD574()
{
  result = qword_28024EE00;
  if (!qword_28024EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE00);
  }

  return result;
}

unint64_t sub_2681DD5CC()
{
  result = qword_28024EE08;
  if (!qword_28024EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE08);
  }

  return result;
}

unint64_t sub_2681DD624()
{
  result = qword_28024EE10;
  if (!qword_28024EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE10);
  }

  return result;
}

unint64_t sub_2681DD67C()
{
  result = qword_28024EE18;
  if (!qword_28024EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE18);
  }

  return result;
}

unint64_t sub_2681DD6D4()
{
  result = qword_28024EE20;
  if (!qword_28024EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE20);
  }

  return result;
}

unint64_t sub_2681DD72C()
{
  result = qword_28024EE28;
  if (!qword_28024EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE28);
  }

  return result;
}

unint64_t sub_2681DD784()
{
  result = qword_28024EE30;
  if (!qword_28024EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE30);
  }

  return result;
}

unint64_t sub_2681DD7DC()
{
  result = qword_28024EE38;
  if (!qword_28024EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE38);
  }

  return result;
}

unint64_t sub_2681DD834()
{
  result = qword_28024EE40;
  if (!qword_28024EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE40);
  }

  return result;
}

unint64_t sub_2681DD88C()
{
  result = qword_28024EE48;
  if (!qword_28024EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EE48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_20()
{
  v2 = *(v0 - 96);

  return sub_2683D04C8();
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return sub_2683D0418();
}

uint64_t OUTLINED_FUNCTION_11_20()
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_16_18()
{
  v2 = *(v0 - 208);

  return swift_unknownObjectRelease();
}

uint64_t sub_2681DD9F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681DDBCC;

  return sub_2681DDAA0(0, a1, a2);
}

uint64_t sub_2681DDAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_268129B00;

  return (v11)(a1, 0, a2, a3);
}

uint64_t sub_2681DDBD0()
{
  OUTLINED_FUNCTION_14();
  v14 = *MEMORY[0x277D85DE8];
  v1[16] = v2;
  v1[17] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250) - 8) + 64);
  v1[18] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CB598();
  v1[19] = v4;
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_3_18();
  v1[20] = v6;
  v8 = *(v7 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681DDCEC()
{
  v131 = v0;
  v130[1] = *MEMORY[0x277D85DE8];
  if (qword_28024C8E0 != -1)
  {
LABEL_79:
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);
  sub_268191E3C(v1, (v0 + 2));
  v3 = sub_2683CF7C8();
  v4 = sub_2683CFE98();
  v126 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v130[0] = v6;
    *v5 = 136315138;
    v123 = v0[2];
    v7 = sub_268229348(v123);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = v7;
      v127 = MEMORY[0x277D84F90];
      sub_268390600(0, v7 & ~(v7 >> 63), 0);
      if (v9 < 0)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
      }

      v116 = v5;
      v118 = v4;
      v121 = v3;
      v10 = 0;
      v8 = v127;
      do
      {
        if ((v123 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x26D616C90](v10, v123);
        }

        else
        {
          v11 = *(v123 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = [v12 title];
        v14 = [v13 spokenPhrase];
        v15 = sub_2683CFA78();
        v17 = v16;

        v127 = v8;
        v19 = *(v8 + 16);
        v18 = *(v8 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_268390600((v18 > 1), v19 + 1, 1);
          v8 = v127;
        }

        ++v10;
        *(v8 + 16) = v19 + 1;
        v20 = v8 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
        v0 = v126;
      }

      while (v9 != v10);
      v3 = v121;
      v4 = v118;
      v5 = v116;
    }

    v21 = MEMORY[0x26D6167A0](v8, MEMORY[0x277D837D0]);
    v23 = v22;

    sub_268191EE8((v0 + 2));
    v24 = sub_2681610A0(v21, v23, v130);

    *(v5 + 4) = v24;
    _os_log_impl(&dword_2680EB000, v3, v4, "[UndoTasks] Tasks to undo: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    sub_268191EE8((v0 + 2));
  }

  v25 = sub_268229348(v0[16]);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v27 = v25;
    v127 = MEMORY[0x277D84F90];
    sub_2683D0228();
    if (v27 < 0)
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v28 = 0;
    v29 = v0[16];
    v30 = v29 & 0xC000000000000001;
    v122 = v29 + 32;
    v124 = (v29 & 0xFFFFFFFFFFFFFF8);
    v31 = v0[20];
    v117 = (v31 + 16);
    v119 = (v31 + 32);
    v115 = (v31 + 8);
    do
    {
      if (v30)
      {
        v32 = MEMORY[0x26D616C90](v28, v0[16]);
      }

      else
      {
        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_77;
        }

        if (v28 >= v124[2])
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v32 = *(v122 + 8 * v28);
      }

      v33 = v32;
      sub_26834AFCC(v32);
      if (v34)
      {
        v36 = v0[18];
        v35 = v0[19];
        sub_2683CB538();

        if (__swift_getEnumTagSinglePayload(v36, 1, v35) == 1)
        {
          sub_26812C310(v0[18], &qword_28024DB50, &qword_2683D4250);
        }

        else
        {
          v38 = v0[21];
          v37 = v0[22];
          v39 = v0[19];
          (*v119)(v37, v0[18], v39);
          (*v117)(v38, v37, v39);
          v40 = [objc_opt_self() cdEntityName];
          sub_2683CFA78();

          v41 = objc_allocWithZone(MEMORY[0x277D44700]);
          v0 = v126;
          sub_2681DEEC0(v38);
          (*v115)(v37, v39);
        }
      }

      ++v28;
      sub_2683D01F8();
      v42 = *(v127 + 16);
      sub_2683D0238();
      sub_2683D0248();
      sub_2683D0208();
    }

    while (v27 != v28);
    v43 = v127;
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v44 = 0;
  v120 = v0 + 10;
  v127 = v26;
  v45 = *(v43 + 16);
  v46 = v26;
  while (v45 != v44)
  {
    if (v44 >= *(v43 + 16))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v47 = *(v43 + 8 * v44++ + 32);
    if (v47)
    {
      v48 = v47;
      MEMORY[0x26D616770]();
      if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      sub_2683CFD08();
      v26 = v127;
    }
  }

  v49 = sub_2683CF7C8();
  v50 = sub_2683CFE98();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v127 = v52;
    *v51 = 136315138;
    v53 = sub_268129504(0, &qword_28024DB40, 0x277D44700);
    v54 = MEMORY[0x26D6167A0](v26, v53);
    v56 = sub_2681610A0(v54, v55, &v127);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_2680EB000, v49, v50, "reminderIds %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    v0 = v126;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v57 = *(v0[17] + 56);
  v125 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  v58 = sub_2683CFC98();

  v0[14] = 0;
  v59 = [v57 fetchRemindersWithObjectIDs:v58 error:v0 + 14];

  v60 = v0[14];
  if (!v59)
  {
    v94 = v126;
LABEL_69:
    v109 = v60;
    sub_2683CB388();

    swift_willThrow();
    v111 = v94[21];
    v110 = v94[22];
    v112 = v94[18];

    OUTLINED_FUNCTION_40();
    v113 = *MEMORY[0x277D85DE8];
    goto LABEL_70;
  }

  sub_268129504(0, &qword_28024DB60, 0x277D44750);
  sub_26815E368();
  v61 = sub_2683CF9C8();
  v62 = v60;

  v63 = sub_2683CF7C8();
  v64 = sub_2683CFE98();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_2680EB000, v63, v64, "Fetching reminders", v65, 2u);
    OUTLINED_FUNCTION_38();
  }

  v67 = sub_2681DF144(v66);
  if (!v67)
  {
    swift_bridgeObjectRelease_n();
    v93 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v68 = v67;
  v130[0] = v46;
  sub_2683D0228();
  v127 = sub_2681DF0E4(v61);
  v128 = v69;
  v129 = v70 & 1;
  if (v68 < 0)
  {
    goto LABEL_81;
  }

  v0 = 0;
  do
  {
    v71 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      goto LABEL_76;
    }

    v72 = v129;
    v73 = OUTLINED_FUNCTION_5_18();
    sub_2681DF164(v73, v74, v75, v61);
    v77 = v76;
    v78 = [v125 updateReminder_];

    sub_2683D01F8();
    v79 = *(v130[0] + 16);
    sub_2683D0238();
    sub_2683D0248();
    sub_2683D0208();
    if ((v61 & 0xC000000000000001) != 0)
    {
      if (!v72)
      {
        goto LABEL_83;
      }

      if (sub_2683D02F8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EE50, &qword_2683DAAE0);
      v92 = sub_2683CF9E8();
      sub_2683D0378();
      v92(v120, 0);
    }

    else
    {
      v80 = OUTLINED_FUNCTION_5_18();
      sub_2681DEF7C(v80, v81, v82, v61);
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v89 = OUTLINED_FUNCTION_5_18();
      sub_2681DF2FC(v89, v90, v91);
      v127 = v84;
      v128 = v86;
      v129 = v88 & 1;
    }

    v0 = (v0 + 1);
  }

  while (v71 != v68);
  swift_bridgeObjectRelease_n();
  sub_2681DF2FC(v127, v128, v129);
  v93 = v130[0];
LABEL_57:
  v95 = sub_2683ABE58(v93);
  v96 = 0;
  v0 = (v93 & 0xC000000000000001);
  while (v95 != v96)
  {
    if (v0)
    {
      v97 = MEMORY[0x26D616C90](v96, v93);
    }

    else
    {
      if (v96 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      v97 = *(v93 + 8 * v96 + 32);
    }

    v98 = v97;
    if (__OFADD__(v96, 1))
    {
      goto LABEL_74;
    }

    [v97 removeFromList];

    ++v96;
  }

  v94 = v126;
  v126[15] = 0;
  v99 = [v125 saveSynchronouslyWithError_];
  v60 = v126[15];
  if (!v99)
  {
    goto LABEL_69;
  }

  v100 = v60;
  v101 = sub_2683CF7C8();
  v102 = sub_2683CFE98();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_2680EB000, v101, v102, "Reminder successfully removed", v103, 2u);
    OUTLINED_FUNCTION_38();
  }

  v105 = v126[21];
  v104 = v126[22];
  v106 = v126[18];

  OUTLINED_FUNCTION_40();
  v108 = *MEMORY[0x277D85DE8];
LABEL_70:

  return v107();
}

uint64_t sub_2681DE84C()
{
  OUTLINED_FUNCTION_14();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC598();
  v1[10] = v4;
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_3_18();
  v1[11] = v6;
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681DE928()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0[8] + 48);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[13] = v2;
  *v2 = v3;
  v2[1] = sub_2681DE9BC;
  v4 = v0[12];

  return sub_26821AA80(v4);
}

uint64_t sub_2681DE9BC()
{
  OUTLINED_FUNCTION_14();
  v2 = *(*v1 + 104);
  v3 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v5 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681DEAC0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = v6[5];
  __swift_project_boxed_opaque_existential_1(v6 + 1, v6[4]);
  sub_2683CC0A8();
  v8 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  v9 = sub_2683CCC98();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v5[3] = v9;
  v5[4] = v10;
  __swift_allocate_boxed_opaque_existential_0(v5);
  sub_2683CC328();
  sub_26812C310(v0 + 16, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v3, &qword_28024D400, &qword_2683D2460);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_40();

  return v11();
}

uint64_t sub_2681DEC3C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[12];
  v2 = v0[9];

  OUTLINED_FUNCTION_40();
  v4 = v0[14];

  return v3();
}

uint64_t sub_2681DECA4()
{
  OUTLINED_FUNCTION_14();
  v1[7] = v2;
  v1[8] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_15_1();
  v4 = sub_2683CC598();
  v1[10] = v4;
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_3_18();
  v1[11] = v6;
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_15_1();
  v1[12] = v9;
  v10 = *(MEMORY[0x277D5BCD0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v1[13] = v11;
  *v11 = v12;
  v11[1] = sub_2681DEDBC;

  return MEMORY[0x2821BAED8](v9);
}

uint64_t sub_2681DEDBC()
{
  OUTLINED_FUNCTION_14();
  v2 = *(*v1 + 104);
  v3 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v5 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

id sub_2681DEEC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2683CB558();
  v5 = sub_2683CFA68();

  v6 = [v2 initWithUUID:v4 entityName:v5];

  v7 = sub_2683CB598();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void sub_2681DEF7C(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_2683D0308() == *(a4 + 36))
    {
      sub_2683D0318();
      sub_268129504(0, &qword_28024DB40, 0x277D44700);
      swift_dynamicCast();
      sub_2682E186C();
      v6 = v5;

      if (v6)
      {
        sub_2683D02E8();
        sub_2683D0338();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(a4 + 36) == a2)
  {
    sub_2683D0078();
    v7 = *(a4 + 36);
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_2681DF0E4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_2683D02C8();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_2683D0068();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2681DF144(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_2683D00A8();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_2681DF164(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_2683D0348();
      sub_268129504(0, &qword_28024DB60, 0x277D44750);
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (sub_2683D0308() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_2683D0318();
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  swift_dynamicCast();
  a2 = v11;
  a1 = sub_2682E186C();
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v9 = *(*(a4 + 56) + 8 * a1);

  v10 = v9;
}

uint64_t sub_2681DF2FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2681DF308(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2681DF348(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_2681DF3CC(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = OUTLINED_FUNCTION_4_20();
      v2 = 1;
      goto LABEL_10;
    case 2:
      v1 = OUTLINED_FUNCTION_4_20();
      v2 = 0;
      v3 = 1;
      goto LABEL_11;
    case 3:
      v1 = OUTLINED_FUNCTION_0_31();
      v5 = 1;
      goto LABEL_12;
    case 4:
      OUTLINED_FUNCTION_0_31();
      OUTLINED_FUNCTION_9_19();
      v7 = 1;
      goto LABEL_13;
    case 5:
      OUTLINED_FUNCTION_0_31();
      OUTLINED_FUNCTION_9_19();
      v7 = 0;
      v8 = 1;
      return sub_2681E0038(v1, v2, v3, v4, v5, v6, v7, v8, v10);
    case 6:
      v10 = 1;
      v1 = 0;
      goto LABEL_9;
    default:
      v10 = 0;
      v1 = 1;
LABEL_9:
      v2 = 0;
LABEL_10:
      v3 = 0;
LABEL_11:
      v4 = 1;
      v5 = 0;
LABEL_12:
      v6 = 1;
      v7 = 0;
LABEL_13:
      v8 = 0;
      return sub_2681E0038(v1, v2, v3, v4, v5, v6, v7, v8, v10);
  }
}

uint64_t sub_2681DF500(void *a1, unint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_6_21(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E700, &qword_2683D7EE0);
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_11_21();
  sub_268129504(0, a2, a3);
  OUTLINED_FUNCTION_8_18();
  v5 = OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_7_16(v5, v6);
  if (OUTLINED_FUNCTION_3_19())
  {

    return v10;
  }

  else
  {
    sub_26812C6B8();
    v8 = OUTLINED_FUNCTION_59_1();
    return OUTLINED_FUNCTION_5_19(v8, v9);
  }
}

uint64_t sub_2681DF800(void *a1)
{
  OUTLINED_FUNCTION_6_21(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E700, &qword_2683D7EE0);
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_11_21();
  v10[0] = MEMORY[0x277D837D0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EEF0, &qword_2683DABD0);
  v4 = OUTLINED_FUNCTION_10_9();
  v6 = v5;
  sub_26813CC6C(a1, v10);
  if (OUTLINED_FUNCTION_3_19())
  {

    return v9;
  }

  else
  {
    sub_26812C6B8();
    OUTLINED_FUNCTION_59_1();
    *v8 = v2;
    *(v8 + 8) = v1;
    *(v8 + 16) = v4;
    *(v8 + 24) = v6;
    *(v8 + 32) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_2681DFA88(void *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_6_21(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E700, &qword_2683D7EE0);
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_11_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_18();
  v5 = OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_7_16(v5, v6);
  if (OUTLINED_FUNCTION_3_19())
  {

    return v10;
  }

  else
  {
    sub_26812C6B8();
    v8 = OUTLINED_FUNCTION_59_1();
    return OUTLINED_FUNCTION_5_19(v8, v9);
  }
}

uint64_t sub_2681DFB9C(void *a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_6_21(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E700, &qword_2683D7EE0);
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_11_21();
  a2(0);
  OUTLINED_FUNCTION_8_18();
  v3 = OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_7_16(v3, v4);
  if (OUTLINED_FUNCTION_3_19())
  {

    return v8;
  }

  else
  {
    sub_26812C6B8();
    v6 = OUTLINED_FUNCTION_59_1();
    return OUTLINED_FUNCTION_5_19(v6, v7);
  }
}

uint64_t sub_2681DFC70(char a1, void *a2)
{
  switch(a1)
  {
    case 1:
      result = sub_2681DF500(a2, &qword_28024CDB8, 0x277CD4188);
      if (!v2)
      {
        v4 = result;
        OUTLINED_FUNCTION_4_20();
        goto LABEL_18;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_1_30();
      result = sub_2681DFB9C(v13, v12);
      if (!v2)
      {
        OUTLINED_FUNCTION_4_20();
        OUTLINED_FUNCTION_9_19();
        goto LABEL_10;
      }

      break;
    case 3:
      OUTLINED_FUNCTION_2_22();
      result = sub_2681DFB9C(v21, v20);
      if (!v2)
      {
        v14 = OUTLINED_FUNCTION_0_31();
        v19 = 0;
LABEL_10:
        result = sub_2681E0038(v14, v15, v16, v17, v18, v19, 0, 0, v24);
      }

      break;
    case 4:
      result = sub_2681DF500(a2, &qword_28024EE70, 0x277CD4240);
      if (!v2)
      {
        v4 = result;
        OUTLINED_FUNCTION_0_31();
        OUTLINED_FUNCTION_9_19();
        v11 = v4;
        goto LABEL_19;
      }

      break;
    case 5:
      result = sub_2681DF500(a2, &qword_28024E438, 0x277CD4178);
      if (!v2)
      {
        v4 = result;
        OUTLINED_FUNCTION_0_31();
        OUTLINED_FUNCTION_9_19();
        v11 = 0;
        v22 = v4;
        goto LABEL_20;
      }

      break;
    case 6:
      result = sub_2681DF500(a2, &qword_28024EE88, 0x277CD3B08);
      if (!v2)
      {
        v4 = result;
        v24 = result;
        goto LABEL_18;
      }

      break;
    default:
      result = sub_2681DF500(a2, &qword_280253310, 0x277CD4220);
      if (!v2)
      {
        v4 = result;
        v24 = 0;
LABEL_18:
        OUTLINED_FUNCTION_9_19();
        v11 = 0;
LABEL_19:
        v22 = 0;
LABEL_20:
        v23 = sub_2681E0038(v5, v6, v7, v8, v9, v10, v11, v22, v24);

        result = v23;
      }

      break;
  }

  return result;
}

id sub_2681DFEB4(void *a1)
{
  v2 = [a1 targetTask];
  v3 = [a1 taskTitle];
  v4 = [a1 status];
  if (v4)
  {
    v5 = [a1 status];
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 priority];
  if (v6)
  {
    v7 = [a1 priority];
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 == 0;
  v9 = [a1 temporalEventTrigger];
  v10 = [a1 spatialEventTrigger];
  v11 = [a1 contactEventTrigger];
  v12 = sub_2681E0038(v2, v3, v5, v8, v7, v6 == 0, v9, v10, v11);

  return v12;
}

id sub_2681E0038(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, void *a8, void *a9)
{
  v10 = v9;
  v19 = [v10 targetTask];
  v20 = v19;
  if (a1 == 1)
  {
    v45 = 0;
  }

  else if (a1)
  {
    v45 = a1;
  }

  else
  {
    v21 = v19;
    v45 = v20;
  }

  sub_2680F1DAC(a1);

  v22 = [v10 taskTitle];
  v23 = v22;
  if (a2 == 1)
  {
    v25 = 0;
  }

  else if (a2)
  {
    v25 = a2;
  }

  else
  {
    v24 = v22;
    v25 = v23;
  }

  sub_2680F1DAC(a2);

  v26 = [v10 status];
  if (a3)
  {
    v27 = 0;
  }

  else
  {
    v27 = v26;
  }

  if (a4)
  {
    a3 = v27;
  }

  v28 = [v10 priority];
  if (a5)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  if (a6)
  {
    v30 = v29;
  }

  else
  {
    v30 = a5;
  }

  v31 = [v10 spatialEventTrigger];
  v32 = v31;
  if (a8 == 1)
  {
    v34 = 0;
  }

  else if (a8)
  {
    v34 = a8;
  }

  else
  {
    v33 = v31;
    v34 = v32;
  }

  sub_2680F1DAC(a8);

  v35 = [v10 temporalEventTrigger];
  v36 = v35;
  if (a7 == 1)
  {
    v38 = 0;
  }

  else if (a7)
  {
    v38 = a7;
  }

  else
  {
    v37 = v35;
    v38 = v36;
  }

  sub_2680F1DAC(a7);

  v39 = objc_allocWithZone(MEMORY[0x277CD4108]);
  v40 = sub_2683882E8(v45, v25, a3, v30, v34, v38);
  v41 = [v10 contactEventTrigger];
  v42 = v41;
  if (a9 == 1)
  {
    v43 = 0;
  }

  else if (a9)
  {
    v43 = a9;
  }

  else
  {
    v43 = v41;
  }

  sub_2680F1DAC(a9);

  [v40 setContactEventTrigger_];
  return v40;
}

uint64_t sub_2681E02AC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D1F0, &unk_2683F48B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = [v1 targetTask];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 title];

  v11 = [v10 spokenPhrase];
  v12 = sub_2683CFA78();
  v14 = v13;

  v35 = v12;
  v36 = v14;
  v15 = sub_2683CB668();
  v16 = *(*(v15 - 8) + 16);
  v16(v7, a1, v15);
  OUTLINED_FUNCTION_12_13();
  sub_26812A1AC();
  v34 = sub_2683CFFC8();
  v18 = v17;
  sub_268129F94(v7);

  v19 = [v2 taskTitle];
  if (!v19)
  {
LABEL_12:

LABEL_13:
    v31 = 0;
    return v31 & 1;
  }

  v20 = v19;
  v21 = [v19 spokenPhrase];

  v22 = sub_2683CFA78();
  v24 = v23;

  v35 = v22;
  v36 = v24;
  v16(v7, a1, v15);
  OUTLINED_FUNCTION_12_13();
  v25 = sub_2683CFFC8();
  v27 = v26;
  sub_268129F94(v7);

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28 || (v25 == v34 ? (v29 = v27 == v18) : (v29 = 0), v29))
  {

    goto LABEL_12;
  }

  v30 = sub_2683D0598();

  v31 = v30 ^ 1;
  return v31 & 1;
}

BOOL sub_2681E0550()
{
  v1 = [v0 temporalEventTrigger];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

BOOL sub_2681E0598()
{
  v1 = [v0 spatialEventTrigger];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

BOOL sub_2681E05E0()
{
  v1 = [v0 contactEventTrigger];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t OUTLINED_FUNCTION_3_19()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_19(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_6_21(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_26813CC6C(v2, va);
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_2683CFAD8();
}

uint64_t OUTLINED_FUNCTION_12_13()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t sub_2681E0784()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_event;
  v2 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_mobileSpace, 1, 1, v2);
  return v0;
}

uint64_t sub_2681E07F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2681E0838()
{
  v1 = *(v0 + 16);

  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_event);
  sub_26812E924(v0 + OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_mobileSpace);
  return v0;
}

uint64_t sub_2681E08AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10[-v5];
  *(v1 + 16) = 0;
  *(v1 + 24) = *(a1 + 16);
  v7 = OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_event;
  swift_beginAccess();
  sub_26816349C(a1 + v7, v1 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event);
  v8 = OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_mobileSpace;
  swift_beginAccess();
  sub_26816349C(a1 + v8, v6);

  sub_2681E1A1C(v6, v1 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace);
  return v1;
}

uint64_t sub_2681E09BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v30 - v13;
  if (a1 != 0x6E6F697461636F6CLL || a2 != 0xE800000000000000)
  {
    result = OUTLINED_FUNCTION_2_23();
    if ((result & 1) == 0)
    {
      v17 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
      if (v17 || (OUTLINED_FUNCTION_2_23() & 1) != 0)
      {
        sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event, v14);
        v18 = sub_2683CF168();
        if (__swift_getEnumTagSinglePayload(v14, 1, v18) != 1)
        {
          *(a3 + 24) = v18;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
          return (*(*(v18 - 8) + 32))(boxed_opaque_existential_0, v14, v18);
        }

        v19 = v14;
      }

      else
      {
        v21 = a1 == 0x7053656C69626F6DLL && a2 == 0xEB00000000656361;
        if (!v21 && (OUTLINED_FUNCTION_2_23() & 1) == 0)
        {
          v25 = a1 == (OUTLINED_FUNCTION_5_20() & 0xFFFFFFFFFFFFLL | 0x4174000000000000) && a2 == v24;
          if (v25 || (OUTLINED_FUNCTION_2_23() & 1) != 0)
          {
            result = sub_26816348C();
          }

          else
          {
            v27 = a1 == (OUTLINED_FUNCTION_5_20() & 0xFFFFFFFFFFFFLL | 0x4474000000000000) && a2 == v26;
            if (v27 || (OUTLINED_FUNCTION_2_23() & 1) != 0)
            {
              result = sub_268163564();
            }

            else
            {
              v28 = a1 == 0x6E6F437261437369 && a2 == 0xEF676E697463656ELL;
              if (v28 || (OUTLINED_FUNCTION_2_23() & 1) != 0)
              {
                result = sub_268163874();
              }

              else
              {
                if (a1 != 0xD000000000000012 || 0x80000002683FE9D0 != a2)
                {
                  result = OUTLINED_FUNCTION_2_23();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_18;
                  }
                }

                result = sub_268163884();
              }
            }
          }

          *(a3 + 24) = MEMORY[0x277D839B0];
          *a3 = result & 1;
          return result;
        }

        sub_26816349C(v3 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace, v11);
        v22 = sub_2683CF168();
        if (__swift_getEnumTagSinglePayload(v11, 1, v22) != 1)
        {
          *(a3 + 24) = v22;
          v23 = __swift_allocate_boxed_opaque_existential_0(a3);
          return (*(*(v22 - 8) + 32))(v23, v11, v22);
        }

        v19 = v11;
      }

      result = sub_26812E924(v19);
LABEL_18:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }
  }

  v16 = *(v3 + 24);
  if (!v16)
  {
    goto LABEL_18;
  }

  *(a3 + 24) = sub_2683CF088();
  *a3 = v16;
}

uint64_t sub_2681E0D24()
{
  v0 = sub_2683D0408();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2681E0D70(char a1)
{
  if (!a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x746E657665;
  }

  return 0x7053656C69626F6DLL;
}

uint64_t sub_2681E0DCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_2681EA810();
}

uint64_t sub_2681E0DF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2681E0D24();
  *a2 = result;
  return result;
}

uint64_t sub_2681E0E20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2681E0D70(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2681E0E54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2681E0D24();
  *a1 = result;
  return result;
}

uint64_t sub_2681E0E88(uint64_t a1)
{
  v2 = sub_2681E19C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681E0EC4(uint64_t a1)
{
  v2 = sub_2681E19C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681E0F00()
{
  v1 = *(v0 + 24);

  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event);
  sub_26812E924(v0 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace);
  return v0;
}

uint64_t sub_2681E0F60(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2681E0FE4()
{
  sub_2681E12BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2681E1080(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EF78, &qword_2683DAD68);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681E19C8();
  sub_2683D0718();
  v20 = *(v3 + 24);
  v19[7] = 0;
  sub_2683CF088();
  OUTLINED_FUNCTION_0_32();
  sub_2681E1980(v14, v15);
  sub_2683D0508();
  if (!v2)
  {
    v19[6] = 1;
    sub_2683CF168();
    OUTLINED_FUNCTION_1_31();
    sub_2681E1980(v16, v17);
    OUTLINED_FUNCTION_4_21();
    v19[5] = 2;
    OUTLINED_FUNCTION_4_21();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_2681E126C(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2681E13D8(a1);
  return v5;
}

void sub_2681E12BC()
{
  if (!qword_28024EF30)
  {
    sub_2683CF168();
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28024EF30);
    }
  }
}

void sub_2681E133C()
{
  sub_2681E12BC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2681E13D8(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EF58, &qword_2683DAD60);
  v12 = OUTLINED_FUNCTION_0_3(v32);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  *(v3 + 16) = 0;
  v18 = a1[3];
  v17 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2681E19C8();
  sub_2683D06F8();
  if (v2)
  {

    type metadata accessor for NotebookSpatialEventTriggerConcept(0);
    v21 = *(*v3 + 48);
    v22 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v9;
    v31 = v14;
    sub_2683CF088();
    v36 = 0;
    OUTLINED_FUNCTION_0_32();
    sub_2681E1980(v19, v20);
    sub_2683D0468();
    *(v3 + 24) = v37;
    sub_2683CF168();
    v35 = 1;
    OUTLINED_FUNCTION_1_31();
    sub_2681E1980(v24, v25);
    sub_2683D0468();
    sub_2681E1A1C(v11, v3 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event);
    v34 = 2;
    v26 = v30;
    sub_2683D0468();
    v27 = OUTLINED_FUNCTION_3_20();
    v28(v27);
    sub_2681E1A1C(v26, v3 + OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace);
  }

  __swift_destroy_boxed_opaque_existential_0(v33);
  return v3;
}

void *sub_2681E1794()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_2681E17DC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t (*sub_2681E1828())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2681E18A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2681E126C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2681E1980(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2681E19C8()
{
  result = qword_28024EF60;
  if (!qword_28024EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EF60);
  }

  return result;
}

uint64_t sub_2681E1A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for NotebookSpatialEventTriggerConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2681E1B6C()
{
  result = qword_28024EF90;
  if (!qword_28024EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EF90);
  }

  return result;
}

unint64_t sub_2681E1BC4()
{
  result = qword_28024EF98;
  if (!qword_28024EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EF98);
  }

  return result;
}

unint64_t sub_2681E1C1C()
{
  result = qword_28024EFA0;
  if (!qword_28024EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EFA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_23()
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_4_21()
{

  return sub_2683D0508();
}

uint64_t sub_2681E1D08(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_28_8();
    sub_2683CFC18();
    OUTLINED_FUNCTION_20_13();
    return OUTLINED_FUNCTION_23_12();
  }

  return result;
}

unint64_t sub_2681E1D8C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_25_11();
    if ((v2 & 0x2000000000000000) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v5 = 7;
    if (((v2 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
    {
      v5 = 11;
    }

    v6 = v5 | (v4 << 16);
    result = OUTLINED_FUNCTION_28_8();
    if (v7)
    {
      result = v6;
    }

    if (4 * v4 >= result >> 14)
    {
      sub_2683CFC18();
      OUTLINED_FUNCTION_20_13();
      return OUTLINED_FUNCTION_23_12();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2681E1E74(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  OUTLINED_FUNCTION_19_16();

  OUTLINED_FUNCTION_13_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_26818A0C8(a3, a1, a2);
  sub_2683CD168();

  v6 = OUTLINED_FUNCTION_5_21();
  sub_2681E1D08(v6);
  sub_2683CFFB8();

  v7 = OUTLINED_FUNCTION_5_21();
  sub_2681E1D8C(v7);
  OUTLINED_FUNCTION_27_6();

  sub_2683CFB98();

  MEMORY[0x26D616690]();

  return v9;
}

uint64_t sub_2681E1FD0(void (*a1)(void))
{
  OUTLINED_FUNCTION_19_16();

  OUTLINED_FUNCTION_13_15();
  a1(0);
  sub_2683CD168();

  v2 = OUTLINED_FUNCTION_5_21();
  sub_2681E1D08(v2);
  sub_2683CFFB8();

  v3 = OUTLINED_FUNCTION_5_21();
  sub_2681E1D8C(v3);
  OUTLINED_FUNCTION_27_6();

  sub_2683CFB98();

  MEMORY[0x26D616690]();

  return v5;
}

uint64_t sub_2681E2100()
{
  OUTLINED_FUNCTION_14();
  v0[86] = v1;
  v0[85] = v2;
  v3 = sub_2683CB668();
  v0[87] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v0[88] = v4;
  v6 = *(v5 + 64);
  v0[89] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CCBA8();
  v0[90] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v0[91] = v8;
  v10 = *(v9 + 64) + 15;
  v0[92] = swift_task_alloc();
  v0[93] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2681E2208()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 688);
  v6 = *(v0 + 680);
  type metadata accessor for AppSelectionTrainingLogger();
  v7 = sub_26821714C();
  v44 = *(v2 + 16);
  v44(v1, v6, v3);
  sub_26813CA00(v5, v0 + 384);
  OUTLINED_FUNCTION_19_11();
  v8 = swift_allocObject();
  sub_268128148((v0 + 384), v8 + 16);
  v45 = v8;
  *(v8 + 56) = v7;
  v9 = v5[3];
  v10 = v5[4];
  v11 = __swift_project_boxed_opaque_existential_1(v5, v9);
  *(v0 + 448) = v9;
  *(v0 + 456) = *(v10 + 16);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 424));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_0, v11, v9);
  *(v0 + 664) = sub_268129504(0, &qword_28024DD90, 0x277CD3A18);
  v46 = v7;
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFC8, &qword_2683DAF28);
  v13 = sub_2683CFAD8();
  v42 = v14;
  v43 = v13;
  v15 = sub_2683CF6C8();
  v16 = sub_2683CF6B8();
  v17 = MEMORY[0x277D5FDD8];
  *(v0 + 488) = v15;
  *(v0 + 496) = v17;
  *(v0 + 464) = v16;
  sub_2683CCC48();
  v18 = *(v0 + 536);
  __swift_project_boxed_opaque_existential_1((v0 + 504), *(v0 + 528));
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  sub_2681340E8(v0 + 464, v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
  if (*(v0 + 608))
  {
    OUTLINED_FUNCTION_20_2();
    v19 = swift_allocObject();
    v20 = *(v0 + 600);
    *(v19 + 16) = *(v0 + 584);
    *(v19 + 32) = v20;
    *(v19 + 48) = *(v0 + 616);
    v21 = &off_287900140;
    v22 = &type metadata for NotebookReferenceResolver;
  }

  else
  {
    sub_26812D9E0(v0 + 584, &qword_28024E2C0, &unk_2683D66D0);
    v19 = 0;
    v22 = 0;
    v21 = 0;
    *(v0 + 552) = 0u;
  }

  v39 = *(v0 + 736);
  v40 = *(v0 + 744);
  v41 = *(v0 + 728);
  v23 = *(v0 + 720);
  v24 = *(v0 + 712);
  v25 = *(v0 + 704);
  v26 = *(v0 + 696);
  *(v0 + 544) = v19;
  *(v0 + 568) = v22;
  *(v0 + 576) = v21;
  v27 = type metadata accessor for InstalledAppProvider();
  *(v0 + 648) = v27;
  *(v0 + 656) = &off_2879042B8;
  v28 = __swift_allocate_boxed_opaque_existential_0((v0 + 624));
  v29 = *(v25 + 16);
  v29(v28 + *(v27 + 20), v24, v26);
  *v28 = 0;
  v30 = type metadata accessor for RegexAppSearcher();
  *(v0 + 80) = v30;
  *(v0 + 88) = &off_28790BB20;
  v31 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  sub_26813CA00(v0 + 624, v31);
  v29(v31 + *(v30 + 20), v24, v26);
  *(v0 + 120) = &type metadata for InferredAppResolver;
  *(v0 + 128) = &off_287902D60;
  v32 = swift_allocObject();
  *(v0 + 96) = v32;
  sub_26813CA00(v0 + 624, v32 + 32);
  sub_2681340E8(v0 + 544, v32 + 72, &qword_28024E2C8, &unk_2683D6950);
  *(v32 + 16) = 0xD000000000000013;
  *(v32 + 24) = 0x80000002683FA8D0;
  (*(v25 + 8))(v24, v26);
  sub_26813CA00(v0 + 624, v0 + 16);
  sub_26812D9E0(v0 + 544, &qword_28024E2C8, &unk_2683D6950);
  __swift_destroy_boxed_opaque_existential_0((v0 + 624));
  *(v0 + 136) = v46;
  __swift_destroy_boxed_opaque_existential_0((v0 + 504));
  *(v0 + 168) = &type metadata for AppResolver;
  *(v0 + 176) = &off_28790B8A0;
  v33 = swift_allocObject();
  *(v0 + 144) = v33;
  sub_26818CE54(v0 + 16, v33 + 16);
  sub_2681340E8(v0 + 424, v0 + 224, &qword_28024E2D0, &qword_2683D66E0);
  *(v0 + 184) = v43;
  *(v0 + 192) = v42;
  *(v0 + 200) = 1;
  *(v0 + 208) = &unk_2683DAF10;
  *(v0 + 216) = 0;
  sub_26818CEB0(v0 + 144, v0 + 264);
  v34 = OUTLINED_FUNCTION_24_8();
  (v44)(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFD0, &qword_2683DAF30);
  swift_allocObject();
  v35 = sub_2681E51CC((v0 + 264), v39, &unk_2683DAF20, v45, &unk_287903BE0, sub_2681E54B0);
  (*(v41 + 8))(v40, v23);
  sub_26812D9E0(v0 + 424, &qword_28024E2D0, &qword_2683D66E0);
  sub_26818DAA0(v0 + 144);
  sub_26818DAF4(v0 + 16);
  sub_26812D9E0(v0 + 464, &qword_28024E2C0, &unk_2683D66D0);
  *(v0 + 672) = v35;
  sub_26818A0C8(&qword_28024EFD8, &qword_28024EFD0, &qword_2683DAF30);
  sub_2683CBF28();

  v36 = OUTLINED_FUNCTION_1_16();

  return v37(v36);
}

unint64_t sub_2681E27FC(char a1)
{
  result = 0x656665526B736174;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C7469546B736174;
      break;
    case 3:
      result = 0x6154746567726174;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x797469726F697270;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_2681E290C()
{
  sub_2683D0408();
  OUTLINED_FUNCTION_9_10();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2681E2978@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2681E290C();
  *a2 = result;
  return result;
}

unint64_t sub_2681E29A8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2681E27FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2681E29D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1EC0;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2683CFA78();
  *(inited + 40) = v2;
  sub_268151B34();
  v3 = sub_2683CFAD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  return sub_2683CF9D8();
}

uint64_t sub_2681E2AA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

LABEL_3:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_2683D0598();
  }
}

uint64_t sub_2681E2ADC(uint64_t a1)
{
  v2 = sub_2681E63E0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2681E2B18(uint64_t a1)
{
  v2 = sub_2681E63E0();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2681E2B70()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_2681E29D4();
}

uint64_t sub_2681E2B8C()
{
  v1 = type metadata accessor for StringLocalizer();
  *(v0 + 56) = v1;
  v2 = *(*(v1 - 8) + 64) + 15;
  *(v0 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681E2C1C, 0, 0);
}

uint64_t sub_2681E2C1C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[8];
  sub_2683CCC48();
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_9_10();
  sub_2683CC088();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_28024C8D0 != -1)
  {
    swift_once();
  }

  v3 = qword_28027C938;
  *(v0[8] + *(v0[7] + 20)) = qword_28027C938;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2681E2D4C;
  v6 = v0[8];

  return sub_2681E5AB8();
}

uint64_t sub_2681E2D4C()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_42();
  v6 = *(v5 + 72);
  v7 = *(v5 + 64);
  v8 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;

  sub_2681E5F4C(v7, type metadata accessor for StringLocalizer);

  v10 = *(v8 + 8);

  return v10(v4, v2);
}

uint64_t sub_2681E2E84()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2681E2F30;

  return sub_2681E3098();
}

uint64_t sub_2681E2F30()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 24);
  v9 = *v0;
  *(v2 + 32) = v4;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2681E3020()
{
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = *(v0 + 32);
  sub_2683CBC28();
  sub_2683CBF28();
  OUTLINED_FUNCTION_9_10();

  v1 = OUTLINED_FUNCTION_1_16();

  return v2(v1);
}

uint64_t sub_2681E3098()
{
  OUTLINED_FUNCTION_14();
  v0[299] = v1;
  v0[298] = v2;
  v0[297] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFF8, &qword_2683DAF50);
  v0[300] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v0[301] = v5;
  v7 = *(v6 + 64);
  v0[302] = OUTLINED_FUNCTION_15_1();
  v8 = type metadata accessor for SnippetFormatter();
  v0[303] = v8;
  v9 = *(*(v8 - 8) + 64);
  v0[304] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F000, &qword_2683DAF58);
  v0[305] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v0[306] = v11;
  v13 = *(v12 + 64) + 15;
  v0[307] = swift_task_alloc();
  v0[308] = swift_task_alloc();
  v0[309] = swift_task_alloc();
  v14 = *(*(sub_2683CF238() - 8) + 64);
  v0[310] = OUTLINED_FUNCTION_15_1();
  v15 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2681E3214()
{
  v64 = (v0 + 2336);
  v1 = *(v0 + 2480);
  v49 = *(v0 + 2464);
  v56 = *(v0 + 2432);
  v52 = *(v0 + 2440);
  v54 = *(v0 + 2424);
  v61 = *(v0 + 2384);
  sub_2683CCC48();
  type metadata accessor for AddTasksV2CATs();
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v2 = sub_2683CF0B8();
  *(v0 + 2488) = v2;
  v60 = v2;
  type metadata accessor for AddTasksV2CATsSimple();
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v3 = sub_2683CF198();
  *(v0 + 2496) = v3;
  type metadata accessor for NotebookBaseCATs();
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v63 = sub_2683CF0B8();
  *(v0 + 2504) = v63;
  type metadata accessor for NotebookLabelsV2CATs();
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_10_8();
  v58 = sub_2683CF0B8();
  *(v0 + 2512) = v58;
  v4 = type metadata accessor for AddTasksCATPatternsExecutor();
  sub_2683CF228();
  OUTLINED_FUNCTION_10_8();
  v5 = sub_2683CF0B8();
  *(v0 + 2520) = v5;
  v6 = sub_2683CC548();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2683CC538();
  *(v0 + 2528) = v9;
  *(v0 + 1912) = &type metadata for SiriKitExecutionProvider;
  *(v0 + 1920) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v10 = swift_allocObject();
  *(v0 + 1888) = v10;
  *(v10 + 40) = &type metadata for NotebookFeatureManager;
  *(v10 + 48) = &protocol witness table for NotebookFeatureManager;
  *(v0 + 1880) = v61;
  *(v0 + 1928) = sub_268372484;
  *(v0 + 1936) = 0;
  sub_26813CA00(v0 + 2056, v0 + 2096);
  *(v0 + 2160) = &type metadata for TCCTemplateProvider;
  *(v0 + 2168) = &off_287902CB8;
  *(v0 + 2200) = v6;
  *(v0 + 2208) = MEMORY[0x277D5BD58];
  *(v0 + 2176) = v9;
  *(v0 + 2240) = v4;
  *(v0 + 2248) = &off_28790AE38;
  *(v0 + 2216) = v5;
  *(v0 + 2280) = &type metadata for NotebookFeatureManager;
  *(v0 + 2288) = &protocol witness table for NotebookFeatureManager;
  v11 = sub_268129504(0, &qword_28024DD90, 0x277CD3A18);
  sub_268129504(0, &qword_28024F008, 0x277CD3A20);

  v62 = v11;
  sub_2683CBEB8();
  sub_26813CA00(v0 + 2096, v0 + 1720);
  sub_26813CA00(v0 + 2136, v0 + 1768);
  *(v0 + 1760) = v58;
  sub_2683CEC88();

  sub_2683CEC78();
  v12 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  *(v0 + 2040) = &unk_28790DB70;
  *(v0 + 2048) = &off_28790DB88;
  *(v0 + 2016) = v12;
  *(v0 + 2008) = [objc_allocWithZone(MEMORY[0x277D44850]) &selRef_setSubtitle_];
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  v15 = sub_2683CC538();
  *(v0 + 1664) = &type metadata for AceUserLocationProvider;
  *(v0 + 1672) = &off_28790C920;
  OUTLINED_FUNCTION_20_2();
  *(v0 + 1640) = swift_allocObject();
  sub_2683CC078();
  sub_26813CA00(v0 + 2256, v0 + 1680);
  sub_2683CF318();
  sub_2683CF308();

  v16 = sub_2683CEC48();
  *(v0 + 2296) = v3;
  *(v0 + 2304) = v15;
  *(v0 + 2312) = v16;
  *(v0 + 2320) = sub_268372484;
  *(v0 + 2328) = 0;
  sub_2681E5518();
  v17 = sub_2683CBD98();
  v19 = v18;
  OUTLINED_FUNCTION_37_4();
  v20 = swift_allocObject();
  v20[2] = v17;
  v20[3] = v19;
  v20[4] = sub_268372484;
  v20[5] = 0;
  sub_2683CBE38();
  sub_26813CA00(v0 + 2096, v0 + 968);
  sub_26813CA00(v0 + 2216, v0 + 1008);
  sub_26813CA00(v0 + 2176, v0 + 1048);
  sub_26813CA00(v0 + 2256, v0 + 1088);
  *(v0 + 960) = v60;
  sub_2681E5578(v0 + 960, v0 + 1128);
  v21 = swift_allocObject();
  memcpy((v21 + 16), (v0 + 1128), 0xA8uLL);

  sub_2683CBE78();
  sub_26813CA00(v0 + 2256, v0 + 1816);
  *(v0 + 1808) = v3;
  *(v0 + 1856) = sub_2681B86A4;
  *(v0 + 1864) = 0;
  *(v0 + 1872) = v15;
  sub_2681E55DC();

  v22 = v15;

  sub_2683CBDD8();
  sub_2683CBE88();
  v23 = *(v0 + 2128);
  __swift_project_boxed_opaque_existential_1((v0 + 2096), *(v0 + 2120));
  v24 = v54[7];

  sub_2683CC088();
  *v56 = v63;
  v56[1] = v58;
  v56[2] = 0;
  v25 = v54[8];
  *(v56 + v25) = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v26 = v56 + v54[9];
  sub_2683CB768();
  if (sub_2683CEC58())
  {
    sub_2683CEC18();

    sub_2683CBEE8();
  }

  else
  {
    *(v0 + 2368) = 0;
    *v64 = 0u;
    *(v0 + 2352) = 0u;
  }

  v27 = *(v0 + 2464);
  v50 = *(v0 + 2448);
  v51 = *(v0 + 2472);
  v28 = *(v0 + 2440);
  v29 = *(v0 + 2432);
  v30 = *(v0 + 2424);
  v55 = *(v0 + 2456);
  v57 = *(v0 + 2416);
  v31 = *(v0 + 2392);
  v53 = *(v0 + 2384);
  v59 = *(v0 + 2376);
  sub_2681340E8(v64, v0 + 16, &qword_28024F020, &unk_2683E6AA0);
  sub_26813CA00(v0 + 2096, v0 + 64);
  sub_26813CA00(v0 + 2256, v0 + 112);
  *(v0 + 176) = &type metadata for NotebookFlowCreator;
  *(v0 + 184) = &off_287900FD8;
  *(v0 + 216) = &type metadata for SiriKitExecutionProvider;
  *(v0 + 224) = &off_287907530;
  OUTLINED_FUNCTION_20_2();
  v32 = swift_allocObject();
  *(v0 + 192) = v32;
  sub_26813CA00(v0 + 2256, v32 + 16);
  *(v0 + 256) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v0 + 264) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v33 = swift_allocObject();
  *(v0 + 232) = v33;
  sub_26818EE34(v0 + 2008, v33 + 16);
  sub_26818EEF4(v0 + 1600, v0 + 280);
  *(v0 + 56) = v3;
  *(v0 + 104) = v31;
  *(v0 + 272) = v22;
  sub_2681E5630();

  sub_2683CBDA8();
  sub_2683CBE48();
  *(v0 + 424) = v30;
  *(v0 + 432) = &off_28790D590;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 400));
  sub_2681E5FA4(v29, boxed_opaque_existential_0, type metadata accessor for SnippetFormatter);
  sub_26813CA00(v0 + 2216, v0 + 440);
  sub_26813CA00(v0 + 2096, v0 + 480);
  *(v0 + 544) = v22;
  *(v0 + 584) = 1;
  *(v0 + 616) = &_s14descr2878F8F29V32RealReminderKitExtensionProviderVN;
  *(v0 + 624) = &off_2878FF928;
  OUTLINED_FUNCTION_19_11();
  v35 = swift_allocObject();
  *(v0 + 592) = v35;
  sub_26818EE34(v0 + 2008, v35 + 16);
  *(v0 + 656) = &type metadata for NotebookDisambiguationFlowProducer;
  *(v0 + 664) = &off_28790CD48;
  OUTLINED_FUNCTION_20_2();
  v36 = swift_allocObject();
  *(v0 + 632) = v36;
  sub_26813CA00(v0 + 2096, v36 + 16);
  *(v0 + 520) = v60;
  *(v0 + 528) = v3;
  *(v0 + 536) = v63;
  *(v0 + 672) = 0;
  sub_2681E5684(v0 + 400, v0 + 680);
  v37 = swift_allocObject();
  memcpy((v37 + 16), (v0 + 680), 0x118uLL);
  sub_2683CBE98();
  sub_26813CA00(v0 + 2096, v0 + 1456);
  sub_26813CA00(v0 + 2136, v0 + 1496);
  *(v0 + 1560) = &type metadata for NotebookButtonProvider;
  *(v0 + 1568) = &off_287902C78;
  v38 = swift_allocObject();
  *(v0 + 1536) = v38;
  sub_26818EE98(v0 + 1720, v38 + 16);
  *(v0 + 1576) = v62;
  *(v0 + 1584) = sub_2681B86A4;
  *(v0 + 1592) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F030, &qword_2683DAF60);
  sub_26818A0C8(&qword_28024F038, &qword_28024F030, &qword_2683DAF60);
  sub_2683CBDF8();
  sub_2683CBEA8();
  sub_26813CA00(v0 + 2096, v0 + 1296);
  *(v0 + 1360) = &type metadata for NotebookButtonProvider;
  *(v0 + 1368) = &off_287902C78;
  v39 = swift_allocObject();
  *(v0 + 1336) = v39;
  sub_26818EE98(v0 + 1720, v39 + 16);
  *(v0 + 1400) = &type metadata for CommonResponseGenerator;
  *(v0 + 1408) = &off_287908850;
  OUTLINED_FUNCTION_20_2();
  v40 = swift_allocObject();
  *(v0 + 1376) = v40;
  sub_26813CA00(v0 + 2096, v40 + 16);
  *(v0 + 1440) = &type metadata for CommonLabelGenerator;
  *(v0 + 1448) = &off_28790E058;
  v41 = OUTLINED_FUNCTION_24_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
  sub_26818A0C8(&qword_28024F048, &qword_28024F040, &qword_2683DAF68);
  sub_2683CBDC8();
  sub_26812D9E0(v0 + 1296, &qword_28024F040, &qword_2683DAF68);
  sub_2683CBE68();

  sub_26812D9E0(v64, &qword_28024F020, &unk_2683E6AA0);
  sub_2681E5F4C(v29, type metadata accessor for SnippetFormatter);
  sub_2681E56E8(v0 + 1808);
  sub_2681E573C(v0 + 960);
  sub_26818F000(v0 + 1720);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2256));
  __swift_destroy_boxed_opaque_existential_0((v0 + 2216));
  __swift_destroy_boxed_opaque_existential_0((v0 + 2176));
  __swift_destroy_boxed_opaque_existential_0((v0 + 2136));
  sub_26812D9E0(v0 + 1456, &qword_28024F030, &qword_2683DAF60);
  sub_2681E5790(v0 + 400);
  sub_2681E57E4(v0 + 16);
  sub_26818F1FC(v0 + 1600);
  sub_26818F1A8(v0 + 2008);
  (*(v50 + 32))(v51, v27, v28);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2096));
  sub_2683CBDB8();
  sub_2683CBE58();
  (*(v50 + 16))(v55, v51, v28);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F050, &qword_2683DAF70);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_9_10();
  *(v0 + 2536) = sub_2683CBEC8();
  sub_2681E5838(v0 + 1880, v0 + 1944);
  sub_2681E5894();

  sub_2683CC2E8();
  v46 = swift_task_alloc();
  *(v0 + 2544) = v46;
  v46[2] = v59;
  v46[3] = v53;
  v46[4] = v57;
  v47 = swift_task_alloc();
  *(v0 + 2552) = v47;
  *v47 = v0;
  v47[1] = sub_2681E3E98;

  return sub_2681347D4(&unk_2683DAF80);
}

uint64_t sub_2681E3E98()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 2552);
  v3 = *(v1 + 2544);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v7 + 2560) = v6;

  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2681E3FA0()
{
  v1 = v0[317];
  v2 = v0[316];
  v3 = v0[315];
  v4 = v0[314];
  v5 = v0[313];
  v6 = v0[312];
  v7 = v0[311];
  v8 = v0[309];
  v17 = v0[310];
  v18 = v0[308];
  v9 = v0[306];
  v19 = v0[307];
  v20 = v0[304];
  v16 = v0[302];
  v10 = v0[301];
  v14 = v0[305];
  v15 = v0[300];

  (*(v9 + 8))(v8, v14);
  sub_2681E598C((v0 + 235));
  __swift_destroy_boxed_opaque_existential_0(v0 + 257);
  (*(v10 + 8))(v16, v15);

  v11 = v0[1];
  v12 = v0[320];

  return v11(v12);
}

uint64_t sub_2681E4114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2681E4138, 0, 0);
}

uint64_t sub_2681E4138()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_2681E4270;

  return (v9)(0, v2, v3, v4);
}

uint64_t sub_2681E4270()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *(v4 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 72) = v3;

    return MEMORY[0x2822009F8](sub_2681E43AC, 0, 0);
  }
}

uint64_t sub_2681E43AC()
{
  v1 = v0[9];
  v8 = v1;
  v3 = v0[6];
  v2 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EFF8, &qword_2683DAF50);
  v0[2] = sub_2683CC2D8();
  v0[3] = sub_2681E459C(v3, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F060, &qword_2683DAF88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DF18, &unk_2683D5B80);
  sub_26818A0C8(&qword_28024F068, &qword_28024F060, &qword_2683DAF88);
  sub_26818A0C8(&qword_28024E2F8, &qword_28024DF18, &unk_2683D5B80);
  v4 = sub_2683CBF68();

  v0[4] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F070, &qword_2683DAF90);
  sub_26818A0C8(&qword_28024F078, &qword_28024F070, &qword_2683DAF90);
  sub_2683CBF28();

  v5 = OUTLINED_FUNCTION_1_16();

  return v6(v5);
}

uint64_t sub_2681E459C(uint64_t a1, void *a2)
{
  v3 = sub_2683CC668();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 taskReference];
  if ((sub_2681E73A0() & 1) != 0 && v8 == 1)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);

    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v35 = v13;
      *v12 = 136315394;
      v14 = sub_2683CF258();
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v14 = 7104878;
        v16 = 0xE300000000000000;
      }

      v17 = sub_2681610A0(v14, v16, &v35);

      *(v12 + 4) = v17;
      *(v12 + 12) = 1024;
      *(v12 + 14) = 1;
      _os_log_impl(&dword_2680EB000, v10, v11, "Adding unlock required for current activity. bundleId: %s, wantsCurrentActivity: %{BOOL}d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x26D617A40](v13, -1, -1);
      MEMORY[0x26D617A40](v12, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E380, &qword_2683D68F0);
    v18 = *(sub_2683CBCE8() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_2683D1EC0;
    sub_2683CC648();
    sub_2683CBCC8();
    (*(v4 + 8))(v7, v3);
    v21 = sub_2683CB8B8();

    v35 = v21;
    sub_2683CBC78();
    v22 = sub_2683CBF38();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v23 = sub_2683CF7E8();
    __swift_project_value_buffer(v23, qword_28027C958);

    v24 = sub_2683CF7C8();
    v25 = sub_2683CFE98();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v8 == 1;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315394;
      v29 = sub_2683CF258();
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v29 = 7104878;
        v31 = 0xE300000000000000;
      }

      v32 = sub_2681610A0(v29, v31, &v35);

      *(v27 + 4) = v32;
      *(v27 + 12) = 1024;
      *(v27 + 14) = v26;
      _os_log_impl(&dword_2680EB000, v24, v25, "Skipping current activity guard. bundleId: %s, wantsCurrentActivity: %{BOOL}d", v27, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x26D617A40](v28, -1, -1);
      MEMORY[0x26D617A40](v27, -1, -1);
    }

    LOBYTE(v35) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F080, &unk_2683F2760);
    sub_26818A0C8(&qword_28024F088, &qword_28024F080, &unk_2683F2760);
    return sub_2683CBF38();
  }

  return v22;
}

uint64_t sub_2681E4A68(char a1)
{
  v1 = MEMORY[0x277D84F90];
  switch(a1)
  {
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBC0 != -1)
      {
        swift_once();
      }

      v6 = &qword_28024EFA8;
      v7 = &unk_2683F32C0;
      v8 = &qword_28024EFB0;
      goto LABEL_16;
    case 3:
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_19_11();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D2890;
      if (qword_28024CBE0 != -1)
      {
        swift_once();
      }

      *(v1 + 32) = sub_2681E1E74(&qword_28024EFA8, &unk_2683F32C0, &qword_28024EFB0);
      *(v1 + 40) = v2;
      if (qword_28024CC20 != -1)
      {
        swift_once();
      }

      *(v1 + 48) = sub_2681E1E74(&qword_28024EFA8, &unk_2683F32C0, &qword_28024EFB0);
      *(v1 + 56) = v3;
      return v1;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBA0 != -1)
      {
        swift_once();
      }

      v6 = &qword_28024EFB8;
      v7 = &qword_2683DAF00;
      v8 = &qword_28024EFC0;
LABEL_16:
      v4 = sub_2681E1E74(v6, v7, v8);
      goto LABEL_17;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
      OUTLINED_FUNCTION_37_4();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_2683D1EC0;
      if (qword_28024CBB8 != -1)
      {
        swift_once();
      }

      v4 = sub_2681E1FD0(MEMORY[0x277D5E218]);
LABEL_17:
      *(v1 + 32) = v4;
      *(v1 + 40) = v5;
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_2681E4D1C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 0:
      v12 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v12, v13, v14, v15);
      if (!v46)
      {
        goto LABEL_21;
      }

      sub_2683CDBA8();
      if ((OUTLINED_FUNCTION_0_33() & 1) == 0)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_18_16();
      sub_2683CD6F8();

      if (!v45[0])
      {
        goto LABEL_20;
      }

      v16 = sub_2683CD7C8();

      if (!v16)
      {
        goto LABEL_20;
      }

      v7 = sub_2683CDA48();
      goto LABEL_14;
    case 2:
      v18 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v18, v19, v20, v21);
      if (!v46)
      {
        goto LABEL_21;
      }

      sub_2683CDBA8();
      if ((OUTLINED_FUNCTION_0_33() & 1) == 0)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_18_16();
      sub_2683CD6F8();
      goto LABEL_19;
    case 3:
      v8 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v8, v9, v10, v11);
      if (!v46)
      {
        goto LABEL_21;
      }

      sub_2683CDF38();
      if ((OUTLINED_FUNCTION_0_33() & 1) == 0)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_18_16();
      sub_2683CDDE8();
LABEL_19:

      if (!v45[0])
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    case 5:
    case 6:
      v3 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v3, v4, v5, v6);
      if (v46)
      {
        sub_2683CDBA8();
        if (OUTLINED_FUNCTION_0_33())
        {
          OUTLINED_FUNCTION_22_8();
          OUTLINED_FUNCTION_18_16();
          sub_2683CD6F8();

          if (v45[0])
          {
            v7 = sub_2683CD7C8();
LABEL_14:
            v17 = v7;

            if (v17)
            {
              goto LABEL_25;
            }
          }

LABEL_20:
        }
      }

      else
      {
LABEL_21:
        sub_26812D9E0(v45, &qword_28024E370, &unk_2683D9AA0);
      }

LABEL_22:
      v22 = OUTLINED_FUNCTION_10_10();
      sub_2681340E8(v22, v23, v24, v25);
      if (v46)
      {
        sub_2683CD938();
        if (OUTLINED_FUNCTION_0_33())
        {
          OUTLINED_FUNCTION_22_8();
          OUTLINED_FUNCTION_18_16();
          sub_2683CCFF8();

          if (v45[0])
          {
LABEL_25:

            v26 = sub_2683CD1A8();

            return v26;
          }
        }
      }

      else
      {
        sub_26812D9E0(v45, &qword_28024E370, &unk_2683D9AA0);
      }

      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v27 = sub_2683CF7E8();
      __swift_project_value_buffer(v27, qword_28027C958);
      v28 = OUTLINED_FUNCTION_10_10();
      sub_26818F56C(v28, v29);
      v30 = sub_2683CF7C8();
      v31 = sub_2683CFE78();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v32 = 136315394;
        v33 = sub_2681E27FC(a2);
        v35 = sub_2681610A0(v33, v34, &v44);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        sub_2681340E8(v45, v43, &qword_28024E370, &unk_2683D9AA0);
        v36 = OUTLINED_FUNCTION_24_8();
        __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
        sub_2683CFAD8();
        sub_26818F5C8(v45);
        v38 = OUTLINED_FUNCTION_24_8();
        v41 = sub_2681610A0(v38, v39, v40);

        *(v32 + 14) = v41;
        _os_log_impl(&dword_2680EB000, v30, v31, "[AddTasks resolveSelectedEntity] Unable to resolve entity for %s from intent %s", v32, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {

        sub_26818F5C8(v45);
      }

      return 0;
    default:
      goto LABEL_22;
  }
}

uint64_t sub_2681E51CC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = 0;
  *(v6 + 56) = 0x80;
  v11 = sub_2683CCBA8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v12 + 32))(v15 + v13, a2, v11);
  memcpy((v15 + v14), a1, 0x78uLL);
  *(v6 + 16) = a6;
  *(v6 + 24) = v15;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  return v6;
}

uint64_t sub_2681E52EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v12[3] = &type metadata for NotebookAppResolutionFlowStrategy;
  v12[4] = sub_2681C8CCC();
  v12[0] = swift_allocObject();
  sub_26818CEB0(a2, v12[0] + 16);
  v11[3] = &type metadata for NotebookAppResolutionFlowStrategy;
  v11[4] = sub_2681E54C4();
  v11[0] = swift_allocObject();
  sub_26818CEB0(a2, v11[0] + 16);
  sub_268129504(0, a3, a4);
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7 = sub_2683CBC58();
  sub_26812D9E0(v9, &qword_28024EFE8, &qword_2683DAF38);
  sub_26812D9E0(v11, &qword_28024EFF0, &qword_2683DAF40);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v7;
}

uint64_t sub_2681E540C()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26818C8B4;

  return sub_2681E2E84();
}

unint64_t sub_2681E54C4()
{
  result = qword_28024EFE0;
  if (!qword_28024EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EFE0);
  }

  return result;
}

unint64_t sub_2681E5518()
{
  result = qword_28024F010;
  if (!qword_28024F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F010);
  }

  return result;
}

unint64_t sub_2681E55DC()
{
  result = qword_28024F018;
  if (!qword_28024F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F018);
  }

  return result;
}

unint64_t sub_2681E5630()
{
  result = qword_28024F028;
  if (!qword_28024F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F028);
  }

  return result;
}

unint64_t sub_2681E5894()
{
  result = qword_28024F058;
  if (!qword_28024F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F058);
  }

  return result;
}

uint64_t sub_2681E58E8()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26813D0C0;

  return sub_2681E4114(v2, v3, v4);
}

uint64_t sub_2681E59E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_2683CFA68();
  v11 = sub_2683CFA68();
  v12 = sub_2683CFA68();
  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_2683CFA78();

  return v14;
}

uint64_t sub_2681E5AB8()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  *(v0 + 144) = v3;
  v4 = sub_2683CB668();
  *(v0 + 112) = v4;
  OUTLINED_FUNCTION_3_1(v4);
  *(v0 + 120) = v5;
  v7 = *(v6 + 64);
  *(v0 + 128) = OUTLINED_FUNCTION_15_1();
  v8 = type metadata accessor for StringLocalizer();
  *(v0 + 136) = v8;
  *(v0 + 40) = v8;
  *(v0 + 48) = &off_2878FE958;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  sub_2681E5FA4(v2, boxed_opaque_existential_0, type metadata accessor for StringLocalizer);
  v10 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

id sub_2681E5BA0()
{
  v35 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 144);
  v32 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2683CB628();
  *(v0 + 56) = sub_2683CB5A8();
  *(v0 + 64) = v5;
  v6 = 0xD000000000000012;
  if (v4)
  {
    v6 = 0x50415F5345544F4ELL;
  }

  v33 = v6;
  if (v4)
  {
    v7 = 0xEE00454D414E5F50;
  }

  else
  {
    v7 = 0x80000002683FEA40;
  }

  *(v0 + 72) = 45;
  *(v0 + 80) = 0xE100000000000000;
  *(v0 + 96) = 0xE100000000000000;
  *(v0 + 88) = 95;
  v31 = sub_26812A1AC();
  v30 = MEMORY[0x277D837D0];
  v8 = sub_2683CFFF8();
  v10 = v9;
  (*(v2 + 8))(v1, v3);

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v12 = result;
    v13 = sub_2681E59E0(v33, v7, 0x617A696C61636F4CLL, 0xEB00000000656C62, *(v32 + *(*(v0 + 136) + 20)), v8, v10, result);
    v15 = v14;

    if (v15)
    {
    }

    else
    {
      sub_2681E6004();
      v16 = swift_allocError();
      *v17 = v33;
      v17[1] = v7;
      v17[2] = 0x617A696C61636F4CLL;
      v17[3] = 0xEB00000000656C62;
      v17[4] = v8;
      v17[5] = v10;
      swift_willThrow();
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v18 = sub_2683CF7E8();
      __swift_project_value_buffer(v18, qword_28027C958);
      v19 = v16;
      v20 = sub_2683CF7C8();
      v21 = sub_2683CFE78();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34 = v23;
        *v22 = 136446210;
        *(v0 + 104) = v16;
        v24 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
        v25 = sub_2683CFAD8();
        v27 = sub_2681610A0(v25, v26, &v34);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_2680EB000, v20, v21, "Error while localizing inferred app name %{public}s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v23);
        OUTLINED_FUNCTION_38();
        v15 = 0;
        OUTLINED_FUNCTION_38();
      }

      else
      {
      }

      v13 = 0;
    }

    v28 = *(v0 + 128);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v29 = *(v0 + 8);

    return v29(v13, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2681E5F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2681E5FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2681E6004()
{
  result = qword_28024F090;
  if (!qword_28024F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F090);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{
  v1 = sub_2683CCBA8();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  v6 = *(v0 + v5 + 48);

  v7 = *(v0 + v5 + 72);

  if (*(v0 + v5 + 104))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 80));
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 120, v3 | 7);
}

uint64_t sub_2681E6160(unint64_t *a1, uint64_t *a2)
{
  v5 = sub_2683CCBA8();
  OUTLINED_FUNCTION_3_1(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_2681E52EC(v2 + v10, v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8), a1, a2);
}

uint64_t getEnumTagSinglePayload for AddTasks.Parameter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AddTasks.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2681E638C()
{
  result = qword_28024F0A0;
  if (!qword_28024F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F0A0);
  }

  return result;
}

unint64_t sub_2681E63E0()
{
  result = qword_28024F0B8;
  if (!qword_28024F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F0B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_33()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_19_16()
{
  *(v1 - 56) = v0;

  return sub_2683D0178();
}