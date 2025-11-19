uint64_t sub_2681BA170(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[65])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2681BA1B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

double sub_2681BA204(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *a1 = a2 + 1;
  }

  return result;
}

uint64_t sub_2681BA24C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2681BA28C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *sub_2681BA2D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2681BA3B0()
{
  result = qword_28024E990;
  if (!qword_28024E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E990);
  }

  return result;
}

uint64_t sub_2681BA404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E9A0, &qword_2683D8BD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = sub_2683CDE08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  if (!a1)
  {
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
    goto LABEL_5;
  }

  sub_2683CDDF8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {

LABEL_5:
    sub_2681BAB28(v5);
    return 0;
  }

  (*(v7 + 32))(v19, v5, v6);
  v21 = *(v7 + 16);
  v21(v17, v19, v6);
  v22 = (*(v7 + 88))(v17, v6);
  if (v22 == *MEMORY[0x277D5F0C0])
  {
    v23 = OUTLINED_FUNCTION_1_20();
    v24(v23);

    return 0;
  }

  if (v22 == *MEMORY[0x277D5F0B0])
  {
    v25 = OUTLINED_FUNCTION_1_20();
    v26(v25);

    return 2;
  }

  else
  {
    if (v22 != *MEMORY[0x277D5F0B8])
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v29 = sub_2683CF7E8();
      __swift_project_value_buffer(v29, qword_28027C958);
      v21(v14, v19, v6);
      v30 = sub_2683CF7C8();
      v43 = sub_2683CFE78();
      if (os_log_type_enabled(v30, v43))
      {
        v31 = swift_slowAlloc();
        v42 = v30;
        v32 = v31;
        v41 = swift_slowAlloc();
        v44 = v41;
        *v32 = 136315138;
        v21(v11, v14, v6);
        v40 = sub_2683CFAD8();
        v34 = v33;
        v35 = OUTLINED_FUNCTION_2_18();
        (v21)(v35);
        v36 = sub_2681610A0(v40, v34, &v44);

        *(v32 + 4) = v36;
        v37 = v42;
        _os_log_impl(&dword_2680EB000, v42, v43, "[INTaskStatus] Unknown completion status value: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {

        v38 = OUTLINED_FUNCTION_2_18();
        (v21)(v38);
      }

      (v21)(v19, v6);
      (v21)(v17, v6);
      return 0;
    }

    v27 = OUTLINED_FUNCTION_1_20();
    v28(v27);

    return 1;
  }
}

uint64_t INTaskStatus.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E752ELL;
    case 2:
      return 0x74656C706D6F632ELL;
    case 1:
      return 0x706D6F43746F6E2ELL;
  }

  sub_2683D0178();

  v2 = sub_2683D0568();
  MEMORY[0x26D616690](v2);

  MEMORY[0x26D616690](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_2681BA96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 2 || a1 == 1)
    {
      sub_2683CFB38();
      v4 = 0;
      goto LABEL_11;
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v5 = sub_2683CF7E8();
    __swift_project_value_buffer(v5, qword_28027C958);
    v6 = sub_2683CF7C8();
    v7 = sub_2683CFE78();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136446210;
      v10 = INTaskStatus.description.getter(a1);
      v12 = sub_2681610A0(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2680EB000, v6, v7, "[INTaskStatus asCATEnum] got unknown value: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }
  }

  v4 = 1;
LABEL_11:
  v13 = sub_2683CF168();

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v13);
}

uint64_t sub_2681BAB28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E9A0, &qword_2683D8BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2681BABB8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v4 = sub_2683CFA68();

    v2 = [v3 initWithSpokenPhrase_];
  }

  return v2;
}

uint64_t sub_2681BAC30()
{
  v1 = sub_2681BACB4(v0);
  if (v2)
  {
    if (v1 == 0xD000000000000012 && v2 == 0x80000002683FE5A0)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2683D0598();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2681BACB4(void *a1)
{
  v1 = [a1 vocabularyIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_2681BAD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  *(v4 + 32) = *a2;
  *(v4 + 48) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_2681BAD50, 0, 0);
}

uint64_t sub_2681BAD50()
{
  if (*(v0 + 48))
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v3 = *(v0 + 24);
    sub_268129504(0, &qword_280253380, 0x277D4C598);

    v4 = sub_2681C2F00(v2, v1, 0, 1);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 1;
    *(v5 + 32) = v4;
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 1;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    *(v5 + 96) = MEMORY[0x277D84F90];
    *(v5 + 104) = v3;
    v6 = &unk_2683D8170;
    v7 = &unk_2683DC930;
  }

  else
  {
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2683D2250;
    sub_268129504(0, &qword_28024E9A8, 0x277D4C6B8);
    *(v10 + 32) = sub_2681C8F60(v9);
    OUTLINED_FUNCTION_37_4();
    v5 = swift_allocObject();
    *(v5 + 16) = v10;
    *(v5 + 24) = 1;
    *(v5 + 32) = MEMORY[0x277D84F90];
    *(v5 + 40) = v8;
    v6 = &unk_2683D8C00;
    v7 = &unk_2683D8BF8;
  }

  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D1EC0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v5;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;

  v14 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2683D1EC0;
  *(v15 + 32) = v6;
  *(v15 + 40) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *v14 = &unk_2683D8BE8;
  v14[1] = v16;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2681BAFFC()
{
  OUTLINED_FUNCTION_14();
  memcpy((v0 + 16), v1, 0x60uLL);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_2681BB09C;

  return sub_26833D840();
}

uint64_t sub_2681BB09C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v4 = *(v3 + 112);
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_2681BB188(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = a2[2];
  v6 = a2[3];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2681865A4;

  return sub_26833D974();
}

uint64_t sub_2681BB248()
{
  OUTLINED_FUNCTION_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_20(v1);

  return v4(v3);
}

uint64_t sub_2681BB2F4(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2681BB314, 0, 0);
}

uint64_t sub_2681BB314()
{
  v1 = v0[9];
  swift_beginAccess();
  if (sub_2683ABE58(*(v1 + 16)))
  {
    v2 = v0[8];
    swift_beginAccess();
    sub_2682229A0();
    swift_endAccess();
    sub_2683CC3B8();
  }

  else
  {
    v3 = v0[8];
    sub_2683CC3F8();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2681BB3DC()
{
  type metadata accessor for EachFlow();
  sub_2681BB63C();
  return sub_2683CBF48();
}

uint64_t sub_2681BB438()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2681BB494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2681B7480;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2681BB568(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268195F80;

  return sub_2681BB2F4(a1);
}

uint64_t sub_2681BB604()
{
  type metadata accessor for EachFlow();

  return sub_2683CBF88();
}

unint64_t sub_2681BB63C()
{
  result = qword_28024DF00;
  if (!qword_28024DF00)
  {
    type metadata accessor for EachFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DF00);
  }

  return result;
}

uint64_t sub_2681BB690(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_2681BB6D0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2681BB738()
{
  v0 = sub_2683D0408();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2681BB78C(char a1)
{
  if (a1)
  {
    return 0x6F4E686372616573;
  }

  else
  {
    return 0x6F4E657461657263;
  }
}

uint64_t sub_2681BB7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2681BB738();
  *a2 = result;
  return result;
}

uint64_t sub_2681BB818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2681BB78C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2681BB850()
{
  sub_2683D0178();

  strcpy(v4, "NotesOnWatch[");
  HIWORD(v4[1]) = -4864;
  if (*(v0 + 104))
  {
    v1 = 0x6F4E686372616573;
  }

  else
  {
    v1 = 0x6F4E657461657263;
  }

  if (*(v0 + 104))
  {
    v2 = 0xEB00000000736574;
  }

  else
  {
    v2 = 0xEA00000000006574;
  }

  MEMORY[0x26D616690](v1, v2);

  MEMORY[0x26D616690](93, 0xE100000000000000);
  return v4[0];
}

uint64_t sub_2681BB924()
{
  v1 = v0;
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  if ((sub_2683CC0B8() & 1) == 0)
  {
    return 2;
  }

  v3 = v0[5];
  v8 = 1;
  if ((sub_26812A998(&v8) & 1) == 0)
  {
    return 2;
  }

  v4 = v1[11];
  v5 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v4);
  if (((*(v5 + 72))(v4, v5) & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 104) == 1)
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

uint64_t sub_2681BBA48()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 848) = v2;
  *(v1 + 336) = v3;
  *(v1 + 344) = v0;
  v4 = sub_2683CB668();
  *(v1 + 352) = v4;
  OUTLINED_FUNCTION_3_1(v4);
  *(v1 + 360) = v5;
  v7 = *(v6 + 64) + 15;
  *(v1 + 368) = swift_task_alloc();
  v8 = type metadata accessor for Snippet();
  *(v1 + 376) = v8;
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  *(v1 + 384) = OUTLINED_FUNCTION_55();
  *(v1 + 392) = swift_task_alloc();
  *(v1 + 400) = swift_task_alloc();
  *(v1 + 408) = swift_task_alloc();
  *(v1 + 416) = swift_task_alloc();
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  *(v1 + 440) = swift_task_alloc();
  v11 = sub_2683CC9A8();
  *(v1 + 448) = v11;
  OUTLINED_FUNCTION_3_1(v11);
  *(v1 + 456) = v12;
  v14 = *(v13 + 64);
  *(v1 + 464) = OUTLINED_FUNCTION_55();
  *(v1 + 472) = swift_task_alloc();
  v15 = sub_2683CC138();
  *(v1 + 480) = v15;
  OUTLINED_FUNCTION_3_1(v15);
  *(v1 + 488) = v16;
  v18 = *(v17 + 64);
  *(v1 + 496) = OUTLINED_FUNCTION_55();
  *(v1 + 504) = swift_task_alloc();
  *(v1 + 512) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v19);
  v21 = *(v20 + 64);
  *(v1 + 520) = OUTLINED_FUNCTION_55();
  *(v1 + 528) = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v22);
  v24 = *(v23 + 64);
  *(v1 + 536) = OUTLINED_FUNCTION_55();
  *(v1 + 544) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v25);
  v27 = *(v26 + 64);
  *(v1 + 552) = OUTLINED_FUNCTION_55();
  *(v1 + 560) = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v28);
  *(v1 + 568) = v29;
  *(v1 + 576) = *(v30 + 64);
  *(v1 + 584) = OUTLINED_FUNCTION_55();
  *(v1 + 592) = swift_task_alloc();
  *(v1 + 600) = swift_task_alloc();
  *(v1 + 608) = swift_task_alloc();
  *(v1 + 616) = swift_task_alloc();
  *(v1 + 624) = swift_task_alloc();
  *(v1 + 632) = swift_task_alloc();
  *(v1 + 640) = swift_task_alloc();
  *(v1 + 648) = swift_task_alloc();
  *(v1 + 656) = swift_task_alloc();
  *(v1 + 664) = swift_task_alloc();
  *(v1 + 672) = swift_task_alloc();
  *(v1 + 680) = swift_task_alloc();
  *(v1 + 688) = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_2681BBDCC()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 848);
  *(v0 + 696) = v1[7];
  v3 = *(v0 + 376);
  if (v2)
  {
    v4 = *(v0 + 624);
    v6 = *(v0 + 360);
    v5 = *(v0 + 368);
    v25 = *(v0 + 352);
    v26 = *(v0 + 616);
    v7 = v1[4];
    v8 = v1[5];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    sub_2683CC088();
    static Snippet.appPunchout(to:siriLocale:)(v8, v5, v4);
    (*(v6 + 8))(v5, v25);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
    v12 = v1[6];
    v13 = swift_task_alloc();
    *(v0 + 776) = v13;
    *v13 = v0;
    v13[1] = sub_2681BD480;

    return sub_268367C2C();
  }

  else
  {
    v15 = *(v0 + 688);
    v16 = *(v0 + 680);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v3);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v3);
    v23 = v1[6];
    v24 = swift_task_alloc();
    *(v0 + 704) = v24;
    *v24 = v0;
    v24[1] = sub_2681BBFA4;

    return sub_268367CD0();
  }
}

uint64_t sub_2681BBFA4()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 704);
  *v4 = *v1;
  v3[89] = v7;
  v3[90] = v0;

  if (v0)
  {
    v8 = v3[86];
    sub_2681433DC(v3[85], &qword_28024E770, &qword_2683D80D0);
    v9 = OUTLINED_FUNCTION_41_0();
    sub_2681433DC(v9, v10, &qword_2683D80D0);
    v11 = sub_2681BE968;
  }

  else
  {
    v11 = sub_2681BC0E8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

void sub_2681BC0E8()
{
  v1 = v0[89];
  v2 = v0[70];
  v3 = v0[68];
  v4 = v0[66];
  v5 = v0[64];
  sub_2683CC528();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_2683CED08();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_2683CC1D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v18 = swift_allocObject();
  v0[91] = v18;
  *(v18 + 16) = xmmword_2683D2250;
  *(v18 + 32) = v1;
  v19 = v1;
  if (sub_2683ABE58(v18))
  {
    OUTLINED_FUNCTION_52_2();
    if (v2)
    {
      v20 = MEMORY[0x26D616C90](0, v18);
    }

    else
    {
      v20 = *(v18 + 32);
    }

    v21 = v20;
    v22 = [v20 catId];

    v118 = sub_2683CFA78();
    v123 = v23;
  }

  else
  {
    v118 = 0;
    v123 = 0;
  }

  v24 = v0[87];
  v25 = v0[86];
  v26 = v0[84];
  v27 = v0[83];
  v28 = v0[82];
  v29 = v0[72];
  v30 = v0[71];
  v109 = v0[70];
  v111 = v0[68];
  v113 = v0[66];
  v31 = v0[63];
  v107 = v0[64];
  v33 = v0[60];
  v32 = v0[61];
  v34 = v0[59];
  OUTLINED_FUNCTION_51_3(v0[85]);
  sub_2681BED1C(v25, v27);
  OUTLINED_FUNCTION_34_5();
  v35 = swift_allocObject();
  v0[92] = v35;
  *(v35 + 16) = v24;
  sub_2681430AC(v26, v35 + v30);
  sub_2681430AC(v27, v35 + v25);
  v36 = OUTLINED_FUNCTION_49_3();
  v37(v36);
  v38 = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_18_13(v38, v39, v40, v41, v42, v43, v44, v45, v107, v109, v111, v113, v115, v116, v118, v119, v121, v123);
  *(v46 + 72) = sub_2681B5854;
  *(v46 + 80) = v35;
  OUTLINED_FUNCTION_38_5(v46, v47, v48, v49, v50, v51, v52, v53, v108, v110, v112, v114);
  OUTLINED_FUNCTION_53_1();

  sub_2681BED1C(v117, v122);
  if (__swift_getEnumTagSinglePayload(v122, 1, v120) == 1)
  {
    v54 = v0 + 82;
  }

  else
  {
    v55 = v0[85];
    v56 = v0[81];
    v57 = v0[47];
    sub_26814320C(v0[82], v0[55]);
    v58 = OUTLINED_FUNCTION_41_0();
    sub_2681BED1C(v58, v59);
    v60 = OUTLINED_FUNCTION_37_5();
    if (__swift_getEnumTagSinglePayload(v60, v61, v57) != 1)
    {
      v88 = v0[54];
      v89 = v0[47];
      sub_26814320C(v0[81], v88);
      v0[35] = v89;
      v90 = sub_268143270();
      v0[36] = v90;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 32);
      OUTLINED_FUNCTION_41_4(boxed_opaque_existential_0);
      v0[40] = v89;
      v0[41] = v90;
      v92 = __swift_allocate_boxed_opaque_existential_0(v0 + 37);
      sub_2681432C8(v88, v92);
      OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      v0[93] = v93;
      *v93 = v94;
      OUTLINED_FUNCTION_30_6(v93);
      v95 = v0[59];
      v96 = v0[42];
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X5 }
    }

    v54 = v0 + 81;
    sub_26814332C(v0[55]);
  }

  v62 = *v54;
  v63 = v0[86];
  v64 = v0[80];
  v65 = v0[47];
  sub_2681433DC(v62, &qword_28024E770, &qword_2683D80D0);
  v66 = OUTLINED_FUNCTION_41_0();
  sub_2681BED1C(v66, v67);
  v68 = OUTLINED_FUNCTION_37_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, v69, v65);
  v71 = v0[80];
  v72 = v0[47];
  if (EnumTagSinglePayload == 1)
  {
    v73 = v0[85];
    v74 = v0[79];
    sub_2681433DC(v71, &qword_28024E770, &qword_2683D80D0);
    sub_2681BED1C(v73, v74);
    v75 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v75, v76, v72) == 1)
    {
      sub_2681433DC(v0[79], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      v0[96] = v77;
      *v77 = v78;
      OUTLINED_FUNCTION_30_6(v77);
      v79 = v0[59];
      v80 = v0[42];
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X3 }
    }

    v99 = v0[47];
    sub_26814320C(v0[79], v0[52]);
    v0[25] = v99;
    v0[26] = sub_268143270();
    v100 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
    OUTLINED_FUNCTION_41_4(v100);
    OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    v0[95] = v101;
    *v101 = v102;
    OUTLINED_FUNCTION_30_6(v101);
    v103 = v0[59];
    v104 = v0[42];
  }

  else
  {
    sub_26814320C(v71, v0[53]);
    v0[30] = v72;
    v0[31] = sub_268143270();
    v83 = __swift_allocate_boxed_opaque_existential_0(v0 + 27);
    OUTLINED_FUNCTION_41_4(v83);
    OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    v0[94] = v84;
    *v84 = v85;
    OUTLINED_FUNCTION_30_6(v84);
    v86 = v0[59];
    v87 = v0[42];
  }

  OUTLINED_FUNCTION_48_3();

  __asm { BR              X4 }
}

uint64_t sub_2681BC678()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 744);
  v6 = *(v4 + 728);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  __swift_destroy_boxed_opaque_existential_0((v2 + 256));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681BC780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  v39 = v38[92];
  v40 = v38[89];
  v92 = v38[85];
  v93 = v38[86];
  v41 = v38[64];
  v43 = v38[60];
  v42 = v38[61];
  v44 = v38[59];
  v46 = v38[56];
  v45 = v38[57];
  v48 = v38[54];
  v47 = v38[55];

  sub_26814332C(v48);
  sub_26814332C(v47);
  v49 = *(v45 + 8);
  v50 = OUTLINED_FUNCTION_32_3();
  v51(v50);
  v52 = *(v42 + 8);
  v53 = OUTLINED_FUNCTION_74_0();
  v54(v53);
  OUTLINED_FUNCTION_33_6(v92);
  OUTLINED_FUNCTION_24_7();
  v55 = v38[70];
  v56 = v38[68];
  v57 = v38[66];
  v58 = v38[86];
  v59 = v38[85];
  v60 = v38[84];
  v61 = v38[83];
  v62 = v38[82];
  v63 = v38[81];
  OUTLINED_FUNCTION_1_21();
  v78 = v38[75];
  v79 = v38[74];
  v80 = v64;
  v81 = v38[73];
  v82 = v38[69];
  v83 = v38[67];
  v84 = v38[65];
  v85 = v38[64];
  v86 = v38[63];
  OUTLINED_FUNCTION_36_5();
  v87 = v65;
  v88 = v66;
  v89 = v67;
  v90 = v38[55];
  v91 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v68, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v56, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v55, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, a28, a29, a30, a31, a32, v92, v93, a35, a36, a37, a38);
}

uint64_t sub_2681BCA20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 752);
  v6 = *(v4 + 728);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 216));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681BCB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_26_8();
  v40 = v38[53];

  sub_26814332C(v40);
  v41 = OUTLINED_FUNCTION_25_9();
  v42(v41);
  v43 = OUTLINED_FUNCTION_21_8();
  v44(v43);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_7();
  v45 = v38[70];
  v46 = v38[68];
  v47 = v38[66];
  v48 = v38[86];
  v49 = v38[85];
  v50 = v38[84];
  v51 = v38[83];
  v52 = v38[82];
  v53 = v38[81];
  OUTLINED_FUNCTION_1_21();
  v68 = v38[75];
  v69 = v38[74];
  v70 = v54;
  v71 = v38[73];
  v72 = v38[69];
  v73 = v38[67];
  v74 = v38[65];
  v75 = v38[64];
  v76 = v38[63];
  OUTLINED_FUNCTION_36_5();
  v77 = v55;
  v78 = v56;
  v79 = v57;
  v80 = v38[55];
  v81 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v58, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v46, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v45, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BCD8C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 760);
  v6 = *(v4 + 728);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681BCE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_26_8();
  v40 = v38[52];

  sub_26814332C(v40);
  v41 = OUTLINED_FUNCTION_25_9();
  v42(v41);
  v43 = OUTLINED_FUNCTION_21_8();
  v44(v43);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_7();
  v45 = v38[70];
  v46 = v38[68];
  v47 = v38[66];
  v48 = v38[86];
  v49 = v38[85];
  v50 = v38[84];
  v51 = v38[83];
  v52 = v38[82];
  v53 = v38[81];
  OUTLINED_FUNCTION_1_21();
  v68 = v38[75];
  v69 = v38[74];
  v70 = v54;
  v71 = v38[73];
  v72 = v38[69];
  v73 = v38[67];
  v74 = v38[65];
  v75 = v38[64];
  v76 = v38[63];
  OUTLINED_FUNCTION_36_5();
  v77 = v55;
  v78 = v56;
  v79 = v57;
  v80 = v38[55];
  v81 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v58, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v46, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v45, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BD0F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 768);
  v3 = *(v1 + 728);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681BD1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  v39 = v38[92];
  v40 = v38[89];
  v41 = v38[86];
  v42 = v38[85];
  v43 = v38[64];
  v44 = v38[60];
  v45 = v38[61];
  v46 = v38[59];
  v47 = v38[56];
  v48 = v38[57];

  v49 = *(v48 + 8);
  v50 = OUTLINED_FUNCTION_32_3();
  v51(v50);
  v52 = *(v45 + 8);
  v53 = OUTLINED_FUNCTION_74_0();
  v54(v53);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_33_6(v41);
  v55 = v38[70];
  v56 = v38[68];
  v57 = v38[66];
  v58 = v38[86];
  v59 = v38[85];
  v60 = v38[84];
  v61 = v38[83];
  v62 = v38[82];
  v63 = v38[81];
  OUTLINED_FUNCTION_1_21();
  v78 = v38[75];
  v79 = v38[74];
  v80 = v64;
  v81 = v38[73];
  v82 = v38[69];
  v83 = v38[67];
  v84 = v38[65];
  v85 = v38[64];
  v86 = v38[63];
  OUTLINED_FUNCTION_36_5();
  v87 = v65;
  v88 = v66;
  v89 = v67;
  v90 = v38[55];
  v91 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v68, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v56, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v55, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BD480()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 776);
  *v4 = *v1;
  v3[98] = v7;
  v3[99] = v0;

  if (v0)
  {
    v8 = v3[78];
    sub_2681433DC(v3[77], &qword_28024E770, &qword_2683D80D0);
    v9 = OUTLINED_FUNCTION_41_0();
    sub_2681433DC(v9, v10, &qword_2683D80D0);
    v11 = sub_2681BEAD8;
  }

  else
  {
    v11 = sub_2681BD5C4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

void sub_2681BD5C4()
{
  v1 = v0[98];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[62];
  sub_2683CC528();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_2683CED08();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  sub_2683CC1D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v18 = swift_allocObject();
  v0[100] = v18;
  *(v18 + 16) = xmmword_2683D2250;
  *(v18 + 32) = v1;
  v19 = v1;
  if (sub_2683ABE58(v18))
  {
    OUTLINED_FUNCTION_52_2();
    if (v2)
    {
      v20 = MEMORY[0x26D616C90](0, v18);
    }

    else
    {
      v20 = *(v18 + 32);
    }

    v21 = v20;
    v22 = [v20 catId];

    v118 = sub_2683CFA78();
    v123 = v23;
  }

  else
  {
    v118 = 0;
    v123 = 0;
  }

  v24 = v0[87];
  v25 = v0[84];
  v26 = v0[83];
  v27 = v0[78];
  v28 = v0[76];
  v29 = v0[72];
  v30 = v0[71];
  v109 = v0[69];
  v111 = v0[67];
  v113 = v0[65];
  v31 = v0[63];
  v107 = v0[62];
  v33 = v0[60];
  v32 = v0[61];
  v34 = v0[58];
  OUTLINED_FUNCTION_51_3(v0[77]);
  sub_2681BED1C(v27, v26);
  OUTLINED_FUNCTION_34_5();
  v35 = swift_allocObject();
  v0[101] = v35;
  *(v35 + 16) = v24;
  sub_2681430AC(v25, v35 + v30);
  sub_2681430AC(v26, v35 + v27);
  v36 = OUTLINED_FUNCTION_49_3();
  v37(v36);
  v38 = swift_task_alloc();
  v46 = OUTLINED_FUNCTION_18_13(v38, v39, v40, v41, v42, v43, v44, v45, v107, v109, v111, v113, v115, v116, v118, v119, v121, v123);
  *(v46 + 72) = sub_2681B303C;
  *(v46 + 80) = v35;
  OUTLINED_FUNCTION_38_5(v46, v47, v48, v49, v50, v51, v52, v53, v108, v110, v112, v114);
  OUTLINED_FUNCTION_53_1();

  sub_2681BED1C(v117, v122);
  if (__swift_getEnumTagSinglePayload(v122, 1, v120) == 1)
  {
    v54 = v0 + 76;
  }

  else
  {
    v55 = v0[77];
    v56 = v0[75];
    v57 = v0[47];
    sub_26814320C(v0[76], v0[51]);
    v58 = OUTLINED_FUNCTION_41_0();
    sub_2681BED1C(v58, v59);
    v60 = OUTLINED_FUNCTION_37_5();
    if (__swift_getEnumTagSinglePayload(v60, v61, v57) != 1)
    {
      v88 = v0[50];
      v89 = v0[47];
      sub_26814320C(v0[75], v88);
      v0[15] = v89;
      v90 = sub_268143270();
      v0[16] = v90;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
      OUTLINED_FUNCTION_41_4(boxed_opaque_existential_0);
      v0[20] = v89;
      v0[21] = v90;
      v92 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v88, v92);
      OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      v0[102] = v93;
      *v93 = v94;
      OUTLINED_FUNCTION_30_6(v93);
      v95 = v0[58];
      v96 = v0[42];
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X5 }
    }

    v54 = v0 + 75;
    sub_26814332C(v0[51]);
  }

  v62 = *v54;
  v63 = v0[78];
  v64 = v0[74];
  v65 = v0[47];
  sub_2681433DC(v62, &qword_28024E770, &qword_2683D80D0);
  v66 = OUTLINED_FUNCTION_41_0();
  sub_2681BED1C(v66, v67);
  v68 = OUTLINED_FUNCTION_37_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, v69, v65);
  v71 = v0[74];
  v72 = v0[47];
  if (EnumTagSinglePayload == 1)
  {
    v73 = v0[77];
    v74 = v0[73];
    sub_2681433DC(v71, &qword_28024E770, &qword_2683D80D0);
    sub_2681BED1C(v73, v74);
    v75 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v75, v76, v72) == 1)
    {
      sub_2681433DC(v0[73], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      v0[105] = v77;
      *v77 = v78;
      OUTLINED_FUNCTION_30_6(v77);
      v79 = v0[58];
      v80 = v0[42];
      OUTLINED_FUNCTION_48_3();

      __asm { BR              X3 }
    }

    v99 = v0[47];
    sub_26814320C(v0[73], v0[48]);
    v0[5] = v99;
    v0[6] = sub_268143270();
    v100 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
    OUTLINED_FUNCTION_41_4(v100);
    OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    v0[104] = v101;
    *v101 = v102;
    OUTLINED_FUNCTION_30_6(v101);
    v103 = v0[58];
    v104 = v0[42];
  }

  else
  {
    sub_26814320C(v71, v0[49]);
    v0[10] = v72;
    v0[11] = sub_268143270();
    v83 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    OUTLINED_FUNCTION_41_4(v83);
    OUTLINED_FUNCTION_8_15(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    v0[103] = v84;
    *v84 = v85;
    OUTLINED_FUNCTION_30_6(v84);
    v86 = v0[58];
    v87 = v0[42];
  }

  OUTLINED_FUNCTION_48_3();

  __asm { BR              X4 }
}

uint64_t sub_2681BDB50()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 816);
  v6 = *(v4 + 800);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681BDC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  v39 = v38[101];
  v40 = v38[98];
  v87 = v38[77];
  v88 = v38[78];
  v41 = v38[61];
  v42 = v38[62];
  v43 = v38[60];
  v44 = v38[57];
  v45 = v38[58];
  v46 = v38[56];
  v48 = v38[50];
  v47 = v38[51];

  sub_26814332C(v48);
  sub_26814332C(v47);
  v49 = *(v44 + 8);
  v50 = OUTLINED_FUNCTION_32_3();
  v51(v50);
  v52 = *(v41 + 8);
  v53 = OUTLINED_FUNCTION_74_0();
  v54(v53);
  OUTLINED_FUNCTION_33_6(v87);
  OUTLINED_FUNCTION_24_7();
  v55 = v38[69];
  v56 = v38[67];
  v76 = v38[65];
  v57 = v38[86];
  v58 = v38[85];
  v59 = v38[84];
  v60 = v38[83];
  v61 = v38[82];
  v62 = v38[81];
  OUTLINED_FUNCTION_1_21();
  v73 = v38[75];
  v74 = v38[74];
  v75 = v38[73];
  v77 = v38[70];
  v78 = v38[68];
  v79 = v38[66];
  v80 = v38[64];
  v81 = v38[63];
  v82 = v38[62];
  v83 = v38[59];
  v84 = v38[58];
  v85 = v38[55];
  v86 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v63, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v56, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v55, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, a28, a29, a30, a31, a32, v87, v88, a35, a36, a37, a38);
}

uint64_t sub_2681BDEFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 824);
  v6 = *(v4 + 800);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681BDFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_22_7();
  v40 = v38[49];

  sub_26814332C(v40);
  v41 = OUTLINED_FUNCTION_25_9();
  v42(v41);
  v43 = OUTLINED_FUNCTION_21_8();
  v44(v43);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_7();
  v45 = v38[69];
  v46 = v38[67];
  v66 = v38[65];
  v47 = v38[86];
  v48 = v38[85];
  v49 = v38[84];
  v50 = v38[83];
  v51 = v38[82];
  v52 = v38[81];
  OUTLINED_FUNCTION_1_21();
  v63 = v38[75];
  v64 = v38[74];
  v65 = v38[73];
  v67 = v38[70];
  v68 = v38[68];
  v69 = v38[66];
  v70 = v38[64];
  v71 = v38[63];
  v72 = v38[62];
  v73 = v38[59];
  v74 = v38[58];
  v75 = v38[55];
  v76 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v53, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v46, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v45, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BE26C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v5 = *(v4 + 832);
  v6 = *(v4 + 800);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681BE36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_22_7();
  v40 = v38[48];

  sub_26814332C(v40);
  v41 = OUTLINED_FUNCTION_25_9();
  v42(v41);
  v43 = OUTLINED_FUNCTION_21_8();
  v44(v43);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_24_7();
  v45 = v38[69];
  v46 = v38[67];
  v66 = v38[65];
  v47 = v38[86];
  v48 = v38[85];
  v49 = v38[84];
  v50 = v38[83];
  v51 = v38[82];
  v52 = v38[81];
  OUTLINED_FUNCTION_1_21();
  v63 = v38[75];
  v64 = v38[74];
  v65 = v38[73];
  v67 = v38[70];
  v68 = v38[68];
  v69 = v38[66];
  v70 = v38[64];
  v71 = v38[63];
  v72 = v38[62];
  v73 = v38[59];
  v74 = v38[58];
  v75 = v38[55];
  v76 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v53, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v46, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v45, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BE5DC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 840);
  v3 = *(v1 + 800);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681BE6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  v39 = v38[101];
  v40 = v38[98];
  v41 = v38[78];
  v42 = v38[77];
  v44 = v38[61];
  v43 = v38[62];
  v45 = v38[60];
  v47 = v38[57];
  v46 = v38[58];
  v48 = v38[56];

  v49 = *(v47 + 8);
  v50 = OUTLINED_FUNCTION_32_3();
  v51(v50);
  v52 = *(v44 + 8);
  v53 = OUTLINED_FUNCTION_74_0();
  v54(v53);
  OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_33_6(v41);
  v55 = v38[69];
  v56 = v38[67];
  v76 = v38[65];
  v57 = v38[86];
  v58 = v38[85];
  v59 = v38[84];
  v60 = v38[83];
  v61 = v38[82];
  v62 = v38[81];
  OUTLINED_FUNCTION_1_21();
  v73 = v38[75];
  v74 = v38[74];
  v75 = v38[73];
  v77 = v38[70];
  v78 = v38[68];
  v79 = v38[66];
  v80 = v38[64];
  v81 = v38[63];
  v82 = v38[62];
  v83 = v38[59];
  v84 = v38[58];
  v85 = v38[55];
  v86 = v38[54];
  OUTLINED_FUNCTION_0_28();
  sub_2681433DC(v63, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v56, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v55, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_13_12();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BE968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_9_15(*(v38 + 720));

  v39 = *(v38 + 8);
  OUTLINED_FUNCTION_13_12();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BEAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_9_15(*(v38 + 792));

  v39 = *(v38 + 8);
  OUTLINED_FUNCTION_13_12();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_2681BEC4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2681BB924();
  *a1 = result;
  return result;
}

uint64_t sub_2681BEC74(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_268193D88;

  return sub_2681BBA48();
}

uint64_t sub_2681BED1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
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

_BYTE *sub_2681BFF88(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2681C0064()
{
  result = qword_28024E9B0;
  if (!qword_28024E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E9B0);
  }

  return result;
}

unint64_t sub_2681C00BC()
{
  result = qword_28024E9B8;
  if (!qword_28024E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E9B8);
  }

  return result;
}

void OUTLINED_FUNCTION_0_28()
{
  v2 = v0[52];
  *(v1 - 136) = v0[53];
  *(v1 - 128) = v2;
  v3 = v0[50];
  *(v1 - 120) = v0[51];
  *(v1 - 112) = v3;
  v4 = v0[48];
  *(v1 - 104) = v0[49];
  *(v1 - 96) = v4;
  *(v1 - 88) = v0[46];
}

void OUTLINED_FUNCTION_1_21()
{
  v1 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v2 = v0[77];
  v5 = v0[76];
}

uint64_t OUTLINED_FUNCTION_8_15@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_9_15@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v4 = v1[86];
  v5 = v1[85];
  v6 = v1[84];
  v7 = v1[83];
  v8 = v1[82];
  v9 = v1[81];
  v10 = v1[80];
  v11 = v1[79];
  v12 = v1[78];
  v13 = v1[77];
  v20 = v1[76];
  v21 = v1[75];
  v22 = v1[74];
  v23 = v1[73];
  v24 = v1[70];
  v25 = v1[69];
  v26 = v1[68];
  v27 = v1[67];
  v28 = v1[66];
  v29 = v1[65];
  v30 = v1[64];
  v31 = v1[63];
  v32 = v1[62];
  v33 = v1[59];
  v34 = v1[58];
  v35 = v1[55];
  v36 = v1[54];
  v37 = v1[53];
  v15 = v1[50];
  v14 = v1[51];
  *(v2 - 136) = v1[52];
  *(v2 - 128) = v14;
  v17 = v1[48];
  v16 = v1[49];
  *(v2 - 120) = v15;
  *(v2 - 112) = v16;
  v18 = v1[46];
  *(v2 - 104) = v17;
  *(v2 - 96) = v18;
}

uint64_t OUTLINED_FUNCTION_18_13(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a15;
  *(result + 48) = a18;
  *(result + 56) = a10;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_7()
{
  result = v0[101];
  v3 = v0[98];
  *(v1 - 88) = v0[78];
  v4 = v0[77];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[60];
  v8 = v0[57];
  v9 = v0[58];
  v10 = v0[56];
  return result;
}

uint64_t OUTLINED_FUNCTION_23_10()
{

  return sub_2681433DC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_7()
{
  v4 = *(v2 - 88);

  return sub_2681433DC(v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_26_8()
{
  result = v0[92];
  v3 = v0[89];
  *(v1 - 88) = v0[86];
  v4 = v0[85];
  v5 = v0[64];
  v6 = v0[60];
  v7 = v0[61];
  v8 = v0[59];
  v10 = v0[56];
  v9 = v0[57];
  return result;
}

uint64_t OUTLINED_FUNCTION_30_6(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 696);
  return result;
}

uint64_t OUTLINED_FUNCTION_33_6(uint64_t a1)
{

  return sub_2681433DC(a1, v1, v2);
}

void OUTLINED_FUNCTION_36_5()
{
  v1 = v0[62];
  v3 = v0[58];
  v2 = v0[59];
}

uint64_t OUTLINED_FUNCTION_38_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a1 + 88) = 0;
  *(a1 + 96) = a11;
  *(a1 + 104) = 2;
  *(a1 + 112) = a12;
}

uint64_t OUTLINED_FUNCTION_41_4(uint64_t a1)
{

  return sub_2681432C8(v1, a1);
}

uint64_t OUTLINED_FUNCTION_51_3(uint64_t a1)
{
  v5 = *(v2 + 376);

  return sub_2681BED1C(a1, v1);
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return sub_2683ABE60(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return sub_2683CC8E8();
}

uint64_t type metadata accessor for SnoozeTasksNLv3IntentWrapper()
{
  result = qword_28024E9C0;
  if (!qword_28024E9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681C04C8()
{
  result = type metadata accessor for NotebookNLv3Intent(319);
  if (v1 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024D380);
    if (v2 <= 0x3F)
    {
      result = sub_26812EB34(319, &qword_28024CDA0);
      if (v3 <= 0x3F)
      {
        result = sub_2683CB668();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2681C059C()
{
  v0 = type metadata accessor for AppIntentNode(0);
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024CE28, &qword_2683D1870);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_268356630();
  sub_26812958C(v15, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v0) == 1)
  {
    sub_26812D9E0(v15, &qword_28024CE28, &qword_2683D1870);
    return 0;
  }

  else
  {
    sub_268129664(v13, v8);
    sub_2681296C8(v8, v6, type metadata accessor for AppIntentNode);
    sub_2683533F0();
    v16 = v17;
    sub_2683CD078();
    sub_2683CD058();
    sub_2681C18A0(&qword_28024CE30, type metadata accessor for AppIntentNode);
    sub_2683CD5C8();

    sub_268129770(v6, type metadata accessor for AppIntentNode);
    sub_268129770(v8, type metadata accessor for AppIntentNode);
    sub_26812D9E0(v15, &qword_28024CE28, &qword_2683D1870);
  }

  return v16;
}

uint64_t sub_2681C07F0()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 784) = v0;
  *(v1 + 848) = v2;
  v3 = type metadata accessor for NotebookNLv3Intent(0);
  *(v1 + 792) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v1 + 800) = swift_task_alloc();
  *(v1 + 808) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681C0890, 0, 0);
}

uint64_t sub_2681C0890()
{
  v26 = v0;
  if (*(v0 + 848) == 1)
  {
    v1 = *(v0 + 784);
    sub_2683B3C5C(*(v0 + 808));
  }

  else
  {
    sub_2681296C8(*(v0 + 784), *(v0 + 808), type metadata accessor for NotebookNLv3Intent);
  }

  if (qword_28024C8D8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = sub_2683CF7E8();
  *(v0 + 816) = v4;
  __swift_project_value_buffer(v4, qword_28027C940);
  sub_2681296C8(v2, v3, type metadata accessor for NotebookNLv3Intent);
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE68();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 800);
  if (v7)
  {
    v9 = *(v0 + 792);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315138;
    OUTLINED_FUNCTION_0_29();
    sub_2681C18A0(v12, v13);
    v14 = sub_2683D0568();
    v16 = v15;
    OUTLINED_FUNCTION_1_22();
    v17 = sub_2681610A0(v14, v16, &v25);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_2680EB000, v5, v6, "[SnoozeTasksNLv3IntentWrapper] attempting to parse %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    OUTLINED_FUNCTION_1_22();
  }

  v18 = *(v0 + 808);
  v19 = *(v0 + 784);
  v20 = swift_task_alloc();
  *(v0 + 824) = v20;
  *(v20 + 16) = v19;
  *(v20 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3A0, &unk_2683D8F70);
  swift_asyncLet_begin();
  v21 = *(type metadata accessor for SnoozeTasksNLv3IntentWrapper() + 28);
  *(v0 + 728) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  v22 = sub_26836C418(v18, v19 + v21, v0 + 696);
  sub_26812D9E0(v0 + 696, &qword_28024E2C8, &unk_2683D6950);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_2683D2250;
    *(v23 + 32) = v22;
  }

  else
  {
    v23 = 0;
  }

  *(v0 + 832) = v23;

  return MEMORY[0x282200928](v0 + 16, v0 + 776, sub_2681C0BAC, v0 + 656);
}

uint64_t sub_2681C0BC0()
{
  v27 = v0;
  v1 = qword_28024CBF8;
  v2 = *(v0 + 776);
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 808);
  v4 = *(v0 + 792);
  OUTLINED_FUNCTION_0_29();
  sub_2681C18A0(v5, v6);
  v7 = sub_2683CD5D8();
  v8 = (v7 + 32);
  v9 = *(v7 + 16);
  while (2)
  {
    if (v9-- != 0)
    {
      switch(*v8)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
          v11 = sub_2683D0598();

          ++v8;
          if ((v11 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }
    }

    break;
  }

  v12 = *(v0 + 832);
  sub_268143430();
  v13 = sub_2683CFF18();
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 816), qword_28027C958);
  v14 = v13;
  v15 = sub_2683CF7C8();
  v16 = sub_2683CFE98();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v19 = v14;
    v20 = [v19 description];
    v21 = sub_2683CFA78();
    v23 = v22;

    v24 = sub_2681610A0(v21, v23, &v26);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2680EB000, v15, v16, "⚙️ [SnoozeTasksNLv3IntentWrapper] made intent: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  *(v0 + 840) = sub_26821AD1C();

  return MEMORY[0x282200920](v0 + 16, v0 + 776, sub_2681C1070, v0 + 736);
}

uint64_t sub_2681C1084()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[103];
  v2 = v0[101];
  v3 = v0[100];

  OUTLINED_FUNCTION_1_22();

  v4 = v0[1];
  v5 = v0[105];

  return v4(v5);
}

uint64_t sub_2681C1100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681C11A0, 0, 0);
}

uint64_t sub_2681C11A0()
{
  v1 = v0[8];
  v2 = type metadata accessor for SnoozeTasksNLv3IntentWrapper();
  sub_26813CA00(v1 + *(v2 + 20), (v0 + 2));
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (qword_28024CBA0 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  v5 = v0[10];
  type metadata accessor for NotebookNLv3Intent(0);
  OUTLINED_FUNCTION_0_29();
  sub_2681C18A0(v6, v7);
  sub_2683CD5C8();
  v8 = sub_2683CD358();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v8);
  v10 = v0[10];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812D9E0(v0[10], &qword_28024D398, &qword_2683D22F0);
    v11 = 0;
  }

  else
  {
    v12 = v0[10];
    v11 = sub_2683CD2E8();
    (*(*(v8 - 8) + 8))(v10, v8);
  }

  v0[11] = v11;
  if (qword_28024C960 != -1)
  {
    swift_once();
  }

  v13 = sub_2683CE918();
  __swift_project_value_buffer(v13, qword_28027CAC8);
  sub_26812A5A4();
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_2681C13F8;

  return sub_268131128();
}

uint64_t sub_2681C13F8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v6 + 104) = v5;

  return MEMORY[0x2822009F8](sub_2681C150C, 0, 0);
}

uint64_t sub_2681C150C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 80);
  **(v0 + 56) = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2681C1584()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681C1618;

  return sub_2681C07F0();
}

uint64_t sub_2681C1618()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_2681C170C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2681C17B8;

  return sub_2681C1100(a1, v5, v4);
}

uint64_t sub_2681C17B8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2681C18A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_22()
{

  return sub_268129770(v0, type metadata accessor for NotebookNLv3Intent);
}

uint64_t type metadata accessor for SnoozeTasksCATPatternsExecutor()
{
  result = qword_28024E9D8;
  if (!qword_28024E9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681C19B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2681C19D4, 0, 0);
}

uint64_t sub_2681C19D4()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x736D657469;
  *(v2 + 40) = 0xE500000000000000;
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  *(v2 + 48) = v1;
  v3 = *(MEMORY[0x277D55BE8] + 4);
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2681C1B14;
  v5 = v0[3];

  return v7(0xD00000000000001DLL, 0x80000002683FD900, v2);
}

uint64_t sub_2681C1B14(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_268162F6C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_2681C1C6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_2681C1CC0(a1, a2);
}

uint64_t sub_2681C1CC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_268163208(a1);
  return v12;
}

uint64_t sub_2681C1E34(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2681C1E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2681C1ED0()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_2683CCB88();
  v7(v37, v5, 0);
  (*(v2 + 8))(v5, v1);
  sub_268167C34(v37, v36);
  if (v36[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v36, v32);
  if (v35 != 4)
  {
    if (v35 == 7)
    {
      v8 = vorrq_s8(v33, v34);
      if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v32[2] | v32[1] | v32[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v24 = sub_2683CF7E8();
        __swift_project_value_buffer(v24, qword_28027C958);
        v25 = sub_2683CF7C8();
        v26 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_45(v26))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v27, v28, "[SetTaskAttribute FlowStrategy] returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v32);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    sub_268167C34(v37, v32);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      sub_268167C34(v32, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v14 = sub_2683CFAD8();
      v16 = v15;
      sub_268167CA4(v32);
      v17 = sub_2681610A0(v14, v16, &v31);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2680EB000, v10, v11, "[SetTaskAttribute FlowStrategy] unsupported task, ignoring: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v32);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_268167CA4(v37);
    return sub_268167CA4(v36);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C958);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v20))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v21, v22, "[SetTaskAttribute FlowStrategy] returning .handle() for supported task");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_268167CA4(v37);
  sub_26813A1A0(v32);
  return sub_268167CA4(v36);
}

uint64_t sub_2681C22C0(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681C22D8()
{
  v24 = v2;
  v3 = *(v2 + 328);
  v4 = *(v3 + 48);
  (*(v3 + 40))(*(v2 + 312), 0);
  sub_268167C34(v2 + 16, v2 + 80);
  v5 = *(v2 + 136);
  v6 = (v2 + 80);
  if (v5 == 4)
  {
    sub_268193F18(v6, v2 + 272);
    OUTLINED_FUNCTION_11_16();
    v22 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v2 + 336) = v9;
    *v9 = v2;
    v9[1] = sub_2681C25F8;

    return v22(1, v0, v1);
  }

  else
  {
    if (v5 == 255)
    {
      sub_268167CA4(v6);
    }

    else
    {
      sub_26813A1A0(v6);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v11 = sub_2683CF7E8();
    __swift_project_value_buffer(v11, qword_28027C958);
    sub_268167C34(v2 + 16, v2 + 144);
    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      sub_268167C34(v2 + 144, v2 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v16 = sub_2683CFAD8();
      v18 = v17;
      sub_268167CA4(v2 + 144);
      v19 = sub_2681610A0(v16, v18, &v23);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2680EB000, v12, v13, "[SetTaskAttribute FlowStrategy] Did not get setTaskAttribute task from parse. Got: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v2 + 144);
    }

    sub_26812C6B8();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 4;
    swift_willThrow();
    sub_268167CA4(v2 + 16);
    OUTLINED_FUNCTION_40();

    return v21();
  }
}

uint64_t sub_2681C25F8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 336);
  v8 = *v1;
  *(v3 + 344) = v5;
  *(v3 + 352) = v0;

  if (v0)
  {
    v6 = sub_2681C2B24;
  }

  else
  {
    v6 = sub_2681C2704;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2681C2704()
{
  OUTLINED_FUNCTION_11_16();
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 360) = v5;
  *v5 = v2;
  v5[1] = sub_2681C2814;

  return (v7)(0, v0, v1);
}

uint64_t sub_2681C2814()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 360);
  v8 = *v1;
  *(v3 + 368) = v5;
  *(v3 + 376) = v0;

  if (v0)
  {
    v6 = sub_2681C2B88;
  }

  else
  {
    v6 = sub_2681C2920;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2681C2920()
{
  v22 = v0;
  if (*(v0 + 320))
  {
    v1 = sub_2681DFEB4(*(v0 + 344));
  }

  else
  {
    v1 = *(v0 + 368);
  }

  v2 = v1;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);
  v4 = v2;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 344);
  if (v7)
  {
    v20 = *(v0 + 368);
    v19 = *(v0 + 344);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = v4;
    v12 = [v11 description];
    v13 = sub_2683CFA78();
    v15 = v14;

    v16 = sub_2681610A0(v13, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v5, v6, "[SetTaskAttribute FlowStrategy] Updated intent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
  }

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_37();

  return v17(v4);
}

uint64_t sub_2681C2B24()
{
  OUTLINED_FUNCTION_14();
  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  v1 = *(v0 + 352);
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681C2B88()
{
  OUTLINED_FUNCTION_14();

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  v1 = *(v0 + 376);
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681C2BF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681C2C0C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_2682B28A0(v2, v1);
  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_2681C2C84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268132F90;

  return sub_2681C22C0(a1, a2);
}

uint64_t sub_2681C2D28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268167A44;

  return sub_2681C2BF4(a1, a2);
}

unint64_t sub_2681C2DD0()
{
  result = qword_28024E9E8;
  if (!qword_28024E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E9E8);
  }

  return result;
}

unint64_t sub_2681C2E28()
{
  result = qword_28024E9F0;
  if (!qword_28024E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E9F0);
  }

  return result;
}

unint64_t sub_2681C2E80()
{
  result = qword_28024E9F8;
  if (!qword_28024E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E9F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_16()
{
  v1 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v0[37]);
  result = v1 + 24;
  v3 = *(v1 + 24);
  return result;
}

id sub_2681C2F00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2681C3150(a1, a2, v8);
  if ((a4 & 1) == 0)
  {
    [v8 setMaxLines_];
  }

  return v8;
}

id sub_2681C2F84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2681C3150(a1, a2, v12);
  [v12 setIsBold_];

  if ((a5 & 1) == 0)
  {
    [v12 setMaxLines_];
  }

  if ((a6 & 0x100000000) == 0)
  {
    [v12 setTextColor_];
  }

  return v12;
}

id sub_2681C3050(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, unint64_t a6)
{
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D2250;
  sub_2681C31B4();
  v14 = v12;
  *(v13 + 32) = sub_2681C2F84(a1, a2, a3, a4, a5 & 1, a6 | ((HIDWORD(a6) & 1) << 32));
  sub_2681C31F8(v13, v14);

  return v14;
}

void sub_2681C3150(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setText_];
}

unint64_t sub_2681C31B4()
{
  result = qword_28024EA00;
  if (!qword_28024EA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024EA00);
  }

  return result;
}

void sub_2681C31F8(uint64_t a1, void *a2)
{
  sub_2681C31B4();
  v3 = sub_2683CFC98();

  [a2 setFormattedTextPieces_];
}

uint64_t sub_2681C326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = a2;
  v5 = sub_2683CE058();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA08, &qword_2683D9180);
  v10 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_2_1();
  v68 = v11;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v62[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA10, &qword_2683D9188);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_2_1();
  v64 = v17;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v18);
  v66 = &v62[-v19];
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v20);
  v67 = &v62[-v21];
  OUTLINED_FUNCTION_8_0();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v62[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v62[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v62[-v29];
  v70 = type metadata accessor for IntentTriggerModel(0);
  v31 = *(v70 + 32);
  v74 = a3;
  v32 = (a3 + v31);
  v33 = type metadata accessor for NetworkAvailabilityProvider();
  v34 = swift_allocObject();
  v32[3] = v33;
  v32[4] = &off_28790D868;
  *v32 = v34;
  if (a1 && (, v35 = sub_2683CD9E8(), , v35))
  {
    sub_2683CE048();
  }

  else
  {
    OUTLINED_FUNCTION_6_17(v30, 1);
  }

  v36 = *MEMORY[0x277D5F310];
  v69 = v6;
  v65 = *(v6 + 104);
  v65(v28, v36, v5);
  OUTLINED_FUNCTION_6_17(v28, 0);
  v37 = *(v73 + 48);
  sub_2681C3A28(v30, v14);
  sub_2681C3A28(v28, &v14[v37]);
  OUTLINED_FUNCTION_3_5(v14);
  v72 = a1;
  if (v38)
  {
    sub_26812C310(v28, &qword_28024EA10, &qword_2683D9188);
    sub_26812C310(v30, &qword_28024EA10, &qword_2683D9188);
    OUTLINED_FUNCTION_3_5(&v14[v37]);
    if (v38)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_2681C3A28(v14, v25);
    OUTLINED_FUNCTION_3_5(&v14[v37]);
    if (!v38)
    {
      v44 = OUTLINED_FUNCTION_1_23();
      v45(v44);
      sub_2681C4180();
      v63 = sub_2683CFA58();
      v46 = *(a1 + 8);
      v46(v9, v5);
      sub_26812C310(v28, &qword_28024EA10, &qword_2683D9188);
      sub_26812C310(v30, &qword_28024EA10, &qword_2683D9188);
      v46(v25, v5);
      a1 = v72;
      sub_26812C310(v14, &qword_28024EA10, &qword_2683D9188);
      if (v63)
      {
        goto LABEL_28;
      }

      goto LABEL_14;
    }

    sub_26812C310(v28, &qword_28024EA10, &qword_2683D9188);
    sub_26812C310(v30, &qword_28024EA10, &qword_2683D9188);
    (*(v69 + 8))(v25, v5);
  }

  sub_26812C310(v14, &qword_28024EA08, &qword_2683D9180);
LABEL_14:
  if (a1 && sub_2683CD9E8())
  {
    v39 = v67;
    sub_2683CE048();
  }

  else
  {
    v39 = v67;
    OUTLINED_FUNCTION_6_17(v67, 1);
  }

  v14 = v68;
  v40 = v66;
  v65(v66, *MEMORY[0x277D5F318], v5);
  OUTLINED_FUNCTION_6_17(v40, 0);
  v41 = *(v73 + 48);
  sub_2681C3A28(v39, v14);
  sub_2681C3A28(v40, &v14[v41]);
  OUTLINED_FUNCTION_3_5(v14);
  if (!v38)
  {
    v42 = v64;
    sub_2681C3A28(v14, v64);
    OUTLINED_FUNCTION_3_5(&v14[v41]);
    if (!v43)
    {
      v47 = OUTLINED_FUNCTION_1_23();
      v48(v47);
      sub_2681C4180();
      v49 = sub_2683CFA58();
      v50 = v40;
      v51 = *(a1 + 8);
      v51(v9, v5);
      sub_26812C310(v50, &qword_28024EA10, &qword_2683D9188);
      sub_26812C310(v39, &qword_28024EA10, &qword_2683D9188);
      v51(v42, v5);
      a1 = v72;
      sub_26812C310(v14, &qword_28024EA10, &qword_2683D9188);
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_7_13(v40);
    OUTLINED_FUNCTION_7_13(v39);
    (*(v69 + 8))(v42, v5);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_7_13(v40);
  OUTLINED_FUNCTION_7_13(v39);
  OUTLINED_FUNCTION_3_5(&v14[v41]);
  if (!v38)
  {
LABEL_26:
    sub_26812C310(v14, &qword_28024EA08, &qword_2683D9180);
    v49 = 0;
    goto LABEL_29;
  }

LABEL_22:
  sub_26812C310(v14, &qword_28024EA10, &qword_2683D9188);
LABEL_28:
  v49 = 1;
LABEL_29:
  v53 = v70;
  v52 = v71;
  *(v74 + *(v70 + 36)) = a1;
  if (v52)
  {

    v54 = sub_2683CD758();
LABEL_39:

    goto LABEL_40;
  }

  if (a1)
  {

    if (sub_2683CDA58())
    {
      v55 = sub_2683CD758();
LABEL_38:
      v54 = v55;
      goto LABEL_39;
    }

    if (sub_2683CD9F8())
    {
      v55 = sub_2683CDB18();
      goto LABEL_38;
    }

    if (sub_2683CDA28())
    {
      v55 = sub_2683CDED8();
      goto LABEL_38;
    }
  }

  v54 = 0;
LABEL_40:
  v56 = v74;
  *v74 = v54;
  v57 = v53[5];

  v58 = v56 + v57;
  v59 = v72;
  sub_2681C3A98(v72, v58);
  sub_2681C4120(v49 & 1, v59, v56 + v53[6]);

  if (v54)
  {
    v60 = sub_2682DA400();
  }

  else
  {
    v60 = 0;
  }

  *(v74 + v53[7]) = v60 & 1;
  return result;
}

uint64_t sub_2681C3A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA10, &qword_2683D9188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681C3A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D2E8, &qword_2683D9190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v53 - v6;
  v7 = sub_2683CE628();
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EA20, &unk_2683D9198);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v53 - v15;
  v17 = sub_2683CD038();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  if (!a1)
  {
    goto LABEL_12;
  }

  v25 = sub_2683CDA68();
  if (!v25)
  {
    goto LABEL_12;
  }

  v26 = v25;
  if (!sub_2683ABE58())
  {

LABEL_12:
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    goto LABEL_13;
  }

  v56 = v7;
  sub_2683ABE60(0, (v26 & 0xC000000000000001) == 0, v26);
  if ((v26 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D616C90](0, v26);
  }

  else
  {
    v27 = *(v26 + 32);
  }

  sub_2683CD448();

  if (!v60)
  {
    v7 = v56;
    goto LABEL_12;
  }

  sub_2683CD028();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v17);
  v7 = v56;
  if (EnumTagSinglePayload != 1)
  {
    (*(v18 + 32))(v24, v16, v17);
    (*(v18 + 16))(v14, v24, v17);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v17);
    v29 = sub_2683C7C94(v14);
    v55 = v30;
    v31 = *MEMORY[0x277D5E3C8];
    v54 = *(v18 + 104);
    v54(v22, v31, v17);
    v32 = sub_2681EB8A4(v24, v22);
    v33 = *(v18 + 8);
    v33(v22, v17);
    if (v32)
    {
      v33(v24, v17);
LABEL_25:
      v50 = type metadata accessor for LocationQuery(0);
      v51 = *(v50 + 20);
      v52 = sub_2683CEBD8();
      __swift_storeEnumTagSinglePayload(a2 + v51, 1, 1, v52);
      *a2 = v29;
      *(a2 + 8) = v55 & 1;
      *(a2 + *(v50 + 24)) = 2;
      v45 = a2;
      v46 = 0;
      v47 = v50;
      return __swift_storeEnumTagSinglePayload(v45, v46, 1, v47);
    }

    v54(v22, *MEMORY[0x277D5E3D0], v17);
    v49 = sub_2681EB8A4(v24, v22);
    v33(v22, v17);
    v33(v24, v17);
    if (v49)
    {
      goto LABEL_25;
    }

    v7 = v56;
    v34 = v55;
    goto LABEL_15;
  }

LABEL_13:
  sub_26812C310(v16, &qword_28024EA20, &unk_2683D9198);
  if (!a1)
  {
    goto LABEL_22;
  }

  v29 = 0;
  v34 = 1;
LABEL_15:
  if (!sub_2683CDA18())
  {
    if (sub_2683CDA38())
    {
      v38 = v57;
      sub_2683CD6B8();
      v35 = type metadata accessor for LocationQuery(0);
      v39 = *(v35 + 20);
      v41 = v58;
      v40 = v59;
      (*(v58 + 16))(v59, v38, v7);
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v7);
      sub_26812CA54(v40, a2 + v39);

      sub_26812C310(v40, &qword_28024D2E8, &qword_2683D9190);
      (*(v41 + 8))(v38, v7);
      v42 = sub_2683CEBD8();
      __swift_storeEnumTagSinglePayload(a2 + v39, 0, 1, v42);
      *a2 = v29;
      *(a2 + 8) = v34 & 1;
      *(a2 + *(v35 + 24)) = 2;
      goto LABEL_21;
    }

    if (sub_2683CDA08())
    {
      v35 = type metadata accessor for LocationQuery(0);
      v43 = *(v35 + 20);
      sub_2683C94E8(a2 + v43);
      v44 = sub_2683CEBD8();
      __swift_storeEnumTagSinglePayload(a2 + v43, 0, 1, v44);
      LOBYTE(v43) = sub_2683CA724();

      *a2 = v29;
      *(a2 + 8) = v34 & 1;
      *(a2 + *(v35 + 24)) = v43;
      goto LABEL_21;
    }

LABEL_22:
    v47 = type metadata accessor for LocationQuery(0);
    v45 = a2;
    v46 = 1;
    return __swift_storeEnumTagSinglePayload(v45, v46, 1, v47);
  }

  v35 = type metadata accessor for LocationQuery(0);
  v36 = *(v35 + 20);
  sub_26821BFB0(a2 + v36);

  v37 = sub_2683CEBD8();
  __swift_storeEnumTagSinglePayload(a2 + v36, 0, 1, v37);
  *a2 = v29;
  *(a2 + 8) = v34 & 1;
  *(a2 + *(v35 + 24)) = 0;
LABEL_21:
  v45 = a2;
  v46 = 0;
  v47 = v35;
  return __swift_storeEnumTagSinglePayload(v45, v46, 1, v47);
}

double sub_2681C4120@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a1 & 1) != 0 && a2 && (v4 = sub_2683CDA48()) != 0)
  {
    v5 = v4;
    v6 = sub_2683CD6E8();
    v8 = MEMORY[0x277D55FA8];
    *(a3 + 24) = v6;
    *(a3 + 32) = v8;
    *a3 = v5;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

unint64_t sub_2681C4180()
{
  result = qword_28024EA18;
  if (!qword_28024EA18)
  {
    sub_2683CE058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EA18);
  }

  return result;
}

void sub_2681C4240()
{
  sub_2681C4518(319, &qword_28024EA38, type metadata accessor for INSpatialEvent);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationQuery.QueryType(319);
    if (v1 <= 0x3F)
    {
      sub_2681C42F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2681C42F8()
{
  if (!qword_28024EA40)
  {
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28024EA40);
    }
  }
}

uint64_t sub_2681C4370()
{
  v0 = sub_2683CEBD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_2681C43F0()
{
  sub_2681C4518(319, &qword_28024EA70, MEMORY[0x277D56498]);
  if (v0 <= 0x3F)
  {
    sub_2681C4518(319, &qword_28024EA78, type metadata accessor for LocationQuery);
    if (v1 <= 0x3F)
    {
      sub_2681C456C();
      if (v2 <= 0x3F)
      {
        sub_2681C45D0();
        if (v3 <= 0x3F)
        {
          sub_2681C4518(319, &qword_28024E400, MEMORY[0x277D5EB38]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2681C4518(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2683CFFA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2681C456C()
{
  if (!qword_28024EA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024EA88, &qword_2683E6560);
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28024EA80);
    }
  }
}

unint64_t sub_2681C45D0()
{
  result = qword_28024EA90;
  if (!qword_28024EA90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28024EA90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_17(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1)
{

  return sub_26812C310(a1, v1, v2);
}

uint64_t sub_2681C4694(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2681C46D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_2681C4748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D47760]) init];
  v7 = objc_allocWithZone(MEMORY[0x277D47A40]);

  v8 = [v7 init];
  sub_2681C3150(a1, a2, v8);
  [v6 setDecoratedLabel_];

  v9 = [objc_allocWithZone(MEMORY[0x277D47770]) init];
  sub_2681C5D88(a3, v9);
  [v6 setAction_];

  return v6;
}

uint64_t sub_2681C482C()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2683CC598();
  OUTLINED_FUNCTION_21_9(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2681C48D8()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[2];
  v2 = *(v0[3] + 40);
  sub_2683CF138();
  v0[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v3 = sub_2683CC828();
  v4 = sub_26818F730(v3);
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2681C49B8;
  v6 = v0[6];

  return sub_268196074(v6, v4);
}

uint64_t sub_2681C49B8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681C4ABC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_2681A1544();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = v0[7];
    v8 = v0[2];
    sub_268129504(0, &unk_28024F9B0, 0x277D473F0);
    sub_2683CC828();
    v9 = sub_2683CC848();
    v10 = sub_2683CC818();
    v11 = sub_2683CFF28();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2683D2250;
    *(v12 + 32) = v11;
    v13 = objc_allocWithZone(MEMORY[0x277D47A18]);
    v14 = v11;
    v15 = [v13 init];
    sub_2681C5D30(v4, v6, v15);

    sub_2681C5D88(v12, v15);

    v16 = *MEMORY[0x277D47C68];
    v17 = sub_2683CFA78();
    v19 = v18;
    v20 = v15;
    sub_26813F2FC(v17, v19, v20, &selRef_setItemType_);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v21 = sub_2683CF7E8();
    __swift_project_value_buffer(v21, qword_28027C958);
    v22 = sub_2683CF7C8();
    v23 = sub_2683CFE88();
    if (OUTLINED_FUNCTION_43(v23))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v24, v25, "[NotebookButtonProvider] Got nil label for SeeAllInApp button");
      OUTLINED_FUNCTION_36();
    }

    v20 = 0;
  }

  v26 = v0[6];

  OUTLINED_FUNCTION_37();

  return v27(v20);
}

uint64_t sub_2681C4D28()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[8];
  v2 = v0[6];

  OUTLINED_FUNCTION_40();
  v4 = v0[10];

  return v3();
}

uint64_t sub_2681C4D90()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2683CC598();
  OUTLINED_FUNCTION_21_9(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2681C4E48()
{
  OUTLINED_FUNCTION_14();
  v0[8] = *(v0[3] + 40);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_2681C4EE4;
  v2 = v0[7];

  return sub_2681964D8();
}

uint64_t sub_2681C4EE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681C4FE0()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_2681A1544();
  v6 = v5;
  v0[11] = v4;
  v0[12] = v5;
  v7 = *(v3 + 8);
  v0[13] = v7;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (v6)
  {
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_2681C5180;
    v9 = v0[8];
    v10 = v0[6];

    return sub_268195E28();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);
    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE88();
    if (OUTLINED_FUNCTION_43(v14))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v15, v16, "[NotebookButtonProvider] Got nil labels for makeTCCAcceptanceConfirmationButtons");
      OUTLINED_FUNCTION_36();
    }

    v18 = v0[6];
    v17 = v0[7];

    OUTLINED_FUNCTION_37();
    v20 = MEMORY[0x277D84F90];

    return v19(v20);
  }
}

uint64_t sub_2681C5180()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 96);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681C5284()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[6];
  v4 = v0[4];
  v5 = sub_2681A1544();
  v7 = v6;
  v0[17] = v6;
  v2(v3, v4);
  v8 = v0[12];
  if (!v7)
  {
    v34 = v0[12];

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v35 = sub_2683CF7E8();
    __swift_project_value_buffer(v35, qword_28027C958);
    v36 = sub_2683CF7C8();
    v37 = sub_2683CFE88();
    if (OUTLINED_FUNCTION_43(v37))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v38, v39, "[NotebookButtonProvider] Got nil labels for makeTCCAcceptanceConfirmationButtons");
      OUTLINED_FUNCTION_36();
    }

    v33 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v64 = v5;
  v9 = v0[3];
  v10 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v11 = sub_268129C00();
  v12 = objc_opt_self();
  v13 = sub_268376C40();
  v14 = [v12 runSiriKitExecutorCommandWithContext:v11 payload:{v13, v64}];

  v15 = [v12 wrapCommandInStartLocalRequest_];
  v0[18] = v15;

  v16 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v17 = sub_268129C00();
  v18 = sub_268376C40();
  v19 = [v12 runSiriKitExecutorCommandWithContext:v17 payload:v18];

  v20 = [v12 wrapCommandInStartLocalRequest_];
  v0[19] = v20;

  v21 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  LOBYTE(v18) = sub_2683CC0B8();

  v22 = v15;

  v23 = v20;
  v24 = v0[11];
  v25 = v0[12];
  v26 = v0[3];
  if (v18)
  {
    OUTLINED_FUNCTION_16_15();
    v33 = sub_2681C5E80(v27, v28, v29, v30, v31, v32);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
LABEL_14:
    v61 = v0[6];
    v60 = v0[7];

    OUTLINED_FUNCTION_37();

    return v62(v33);
  }

  OUTLINED_FUNCTION_16_15();
  v46 = sub_2681C6010(v40, v41, v42, v43, v44, v45);
  v0[20] = v46;
  v47 = v9[3];
  v48 = v9[4];
  __swift_project_boxed_opaque_existential_1(v26, v47);
  if ((sub_2683CC0C8() & 1) == 0)
  {
    v56 = v0[19];
    v55 = v0[20];
    v57 = v0[17];
    v58 = v0[18];
    v59 = v0[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_2683D2250;
    *(v33 + 32) = v55;

    goto LABEL_14;
  }

  v49 = *MEMORY[0x277D48BA8];
  v50 = sub_2683CFA78();
  sub_26813F2FC(v50, v51, v46, &selRef_setStyle_);
  v52 = *(MEMORY[0x277D5BC78] + 4);
  v53 = swift_task_alloc();
  v0[21] = v53;
  *v53 = v0;
  v54 = OUTLINED_FUNCTION_9_3(v53);

  return MEMORY[0x2821BAE00](v54);
}

uint64_t sub_2681C569C()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_42();
  v7 = v6;
  OUTLINED_FUNCTION_26();
  *v8 = v7;
  v10 = *(v9 + 168);
  v11 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v12 = v11;
  v7[22] = v0;

  if (!v0)
  {
    v7[23] = v3;
    v7[24] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2681C57B8()
{
  OUTLINED_FUNCTION_14();
  sub_26813F2FC(*(v0 + 192), *(v0 + 184), *(v0 + 160), &selRef_setTitle_);
  v1 = *(MEMORY[0x277D5BC78] + 4);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_9_3(v2);

  return MEMORY[0x2821BAE00](v3);
}

uint64_t sub_2681C5854()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_42();
  v7 = v6;
  OUTLINED_FUNCTION_26();
  *v8 = v7;
  v10 = *(v9 + 200);
  v11 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v12 = v11;
  v7[26] = v0;

  if (!v0)
  {
    v7[27] = v3;
    v7[28] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2681C5970()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 96);

  v5 = *(v0 + 176);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);

  OUTLINED_FUNCTION_40();

  return v8();
}

uint64_t sub_2681C5A04()
{
  OUTLINED_FUNCTION_15();
  sub_26813F2FC(*(v0 + 224), *(v0 + 216), *(v0 + 160), &selRef_setSubtitle_);
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2683D2250;
  *(v6 + 32) = v1;

  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  OUTLINED_FUNCTION_37();

  return v9(v6);
}

uint64_t sub_2681C5AE8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 96);

  v5 = *(v0 + 208);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);

  OUTLINED_FUNCTION_40();

  return v8();
}

uint64_t sub_2681C5B7C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681C5BE0()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[16];
  v3 = v0[6];
  v2 = v0[7];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681C5C44(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
  v4 = sub_2683CFCA8();

  return v4;
}

void sub_2681C5CAC(uint64_t a1, void *a2)
{
  sub_268129504(0, &qword_28024EB28, 0x277D47A28);
  v3 = sub_2683CFC98();

  [a2 setAllConfirmationOptions_];
}

void sub_2681C5D30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();
  [a3 setText_];
}

void sub_2681C5D88(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
  v3 = sub_2683CFC98();
  [a2 setCommands_];
}

void sub_2681C5E00(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = sub_2683CFC98();

  [a2 *a5];
}

uint64_t sub_2681C5E80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2683D2250;
  *(v12 + 32) = a3;
  v13 = a3;
  v14 = sub_2681C4748(a1, a2, v12);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2683D2250;
  *(v15 + 32) = a6;
  v16 = a6;
  v17 = sub_2681C4748(a4, a5, v15);

  v18 = [objc_allocWithZone(MEMORY[0x277D47780]) init];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2683D6890;
  *(v19 + 32) = v14;
  *(v19 + 40) = v17;
  v20 = v14;
  v21 = v17;
  sub_2681C5E00(v19, v18, &qword_28024EB20, &unk_2683D92E0, &selRef_setTemplateItems_);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2683D2250;
  *(v22 + 32) = v18;

  return v22;
}

id sub_2681C6010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277D47A38]) init];

  sub_26813F2FC(a1, a2, v12, &selRef_setConfirmText_);

  sub_26813F2FC(a4, a5, v12, &selRef_setDenyText_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D2250;

  *(v13 + 32) = a3;
  sub_2681C5E00(v13, v12, &qword_28024E7F8, &unk_2683F0F30, &selRef_setConfirmCommands_);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2683D2250;

  *(v14 + 32) = a6;
  sub_2681C5E00(v14, v12, &qword_28024E7F8, &unk_2683F0F30, &selRef_setDenyCommands_);
  v15 = [objc_allocWithZone(MEMORY[0x277D47A28]) init];
  sub_26812E98C(v12, &selRef_confirmText);
  if (v16)
  {
    v17 = sub_2683CFA68();
  }

  else
  {
    v17 = 0;
  }

  [v15 setLabel_];

  v18 = *MEMORY[0x277D48B88];
  v19 = sub_2683CFA78();
  sub_26813F2FC(v19, v20, v15, &selRef_setType_);
  if (sub_2681C5C44(v12, &selRef_confirmCommands))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
    v21 = sub_2683CFC98();
  }

  else
  {
    v21 = 0;
  }

  [v15 setCommands_];

  v22 = [objc_allocWithZone(MEMORY[0x277D47A28]) init];
  sub_26812E98C(v12, &selRef_denyText);
  if (v23)
  {
    v24 = sub_2683CFA68();
  }

  else
  {
    v24 = 0;
  }

  [v22 setLabel_];

  v25 = *MEMORY[0x277D48B90];
  v26 = sub_2683CFA78();
  sub_26813F2FC(v26, v27, v22, &selRef_setType_);
  if (sub_2681C5C44(v12, &selRef_denyCommands))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
    v28 = sub_2683CFC98();
  }

  else
  {
    v28 = 0;
  }

  [v22 setCommands_];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2683D6890;
  *(v29 + 32) = v15;
  *(v29 + 40) = v22;
  v30 = v15;
  v31 = v22;
  sub_2681C5CAC(v29, v12);

  return v12;
}

void OUTLINED_FUNCTION_11_17(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{
  *(v1 + 32) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

uint64_t sub_2681C63DC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2681C66EC(a1, a2);
  if (v6)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB30, &unk_2683D92F0);
    result = swift_allocObject();
    *(result + 16) = xmmword_2683D1EC0;
    *(result + 32) = v10;
    *(result + 40) = v11;
    *(result + 48) = v12;
    *(result + 56) = v13;
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);
    sub_2681C6C68(v2, v37);

    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE98();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136315394;
      v20 = v37[0];
      v21 = v37[1];

      sub_2681C6CA0(v37);
      v22 = sub_2681610A0(v20, v21, &v36);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_2681610A0(a1, a2, &v36);
      _os_log_impl(&dword_2680EB000, v16, v17, "[InferredAppResolver] Attempting to resolve %s for %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v19, -1, -1);
      MEMORY[0x26D617A40](v18, -1, -1);
    }

    else
    {

      sub_2681C6CA0(v37);
    }

    v23 = v3[5];
    v24 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v23);
    v25 = (*(v24 + 8))(*v3, v3[1], v23, v24);
    if (v25)
    {
      v29 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB30, &unk_2683D92F0);
      result = swift_allocObject();
      *(result + 16) = xmmword_2683D1EC0;
      *(result + 32) = v29;
      *(result + 40) = v30;
      *(result + 48) = v31;
      *(result + 56) = v32;
    }

    else
    {
      v33 = sub_2683CF7C8();
      v34 = sub_2683CFE98();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2680EB000, v33, v34, "[InferredAppResolver] App not installed", v35, 2u);
        MEMORY[0x26D617A40](v35, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_2681C66EC(uint64_t a1, unint64_t a2)
{
  sub_2681C6CD0((v2 + 7), &v36);
  if (!v37)
  {
    sub_2681C6D40(&v36);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v19 = sub_2683CF7E8();
    __swift_project_value_buffer(v19, qword_28027C958);
    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE98();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2680EB000, v20, v21, "[InferredAppResolver] Skipping contextual app lookup.", v22, 2u);
      MEMORY[0x26D617A40](v22, -1, -1);
    }

    return 0;
  }

  sub_268128148(&v36, v38);
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_26816FB84();
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v5;
  v8 = v6;
  v9 = v2[5];
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
  v11 = (*(v10 + 8))(v7, v8, v9, v10);
  if (!v11)
  {

LABEL_15:
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
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2680EB000, v24, v25, "[InferredAppResolver] Did not find app in context. Falling back to default app.", v26, 2u);
      MEMORY[0x26D617A40](v26, -1, -1);
    }

    goto LABEL_28;
  }

  v13 = v11;
  if (!sub_2681F6FC4(a1, a2, v12))
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v27 = sub_2683CF7E8();
    __swift_project_value_buffer(v27, qword_28027C958);

    v28 = sub_2683CF7C8();
    v29 = sub_2683CFE98();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v36 = v35;
      *v30 = 136446466;
      v31 = sub_2681610A0(v7, v8, &v36);

      *(v30 + 4) = v31;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_2681610A0(a1, a2, &v36);
      _os_log_impl(&dword_2680EB000, v28, v29, "[InferredAppResolver] Found contextual app %{public}s which DOES NOT support %{public}s. Falling back to default app.", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D617A40](v35, -1, -1);
      MEMORY[0x26D617A40](v30, -1, -1);
    }

    else
    {
    }

LABEL_28:
    __swift_destroy_boxed_opaque_existential_0(v38);
    return 0;
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v14 = sub_2683CF7E8();
  __swift_project_value_buffer(v14, qword_28027C958);

  v15 = sub_2683CF7C8();
  v16 = sub_2683CFE98();

  if (os_log_type_enabled(v15, v16))
  {
    log = v15;
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v36 = v34;
    *v17 = 136446466;
    v18 = sub_2681610A0(v7, v8, &v36);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_2681610A0(a1, a2, &v36);
    _os_log_impl(&dword_2680EB000, log, v16, "[InferredAppResolver] Found contextual app %{public}s which supports %{public}s.", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v34, -1, -1);
    MEMORY[0x26D617A40](v17, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v38);
  return v13;
}

uint64_t sub_2681C6CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2C8, &unk_2683D6950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681C6D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2C8, &unk_2683D6950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook0B18ReferenceResolving_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2681C6DC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2681C6E00(uint64_t result, int a2, int a3)
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

id sub_2681C6E68(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_2681C7074([a1 backingStore]);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    v5 = sub_2683CB448();
    sub_26814F5CC(v6, v7);
  }

  [v2 setData_];

  v8 = [a1 typeName];
  v9 = sub_2683CFA78();
  v11 = v10;

  sub_2681C70E4(v9, v11, v2);
  return v2;
}

id sub_2681C6F68(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [a1 backingStore];
  if (result)
  {
    v4 = sub_2681C7074(result);
    if (v5 >> 60 == 15)
    {
      v6 = 0;
    }

    else
    {
      v7 = v4;
      v8 = v5;
      v6 = sub_2683CB448();
      sub_26814F5CC(v7, v8);
    }

    [v2 setData_];

    sub_2681C7148(a1);
    if (v9)
    {
      v10 = sub_2683CFA68();
    }

    else
    {
      v10 = 0;
    }

    [v2 setTypeName_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2681C7074(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CB468();

  return v3;
}

void sub_2681C70E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setTypeName_];
}

uint64_t sub_2681C7148(void *a1)
{
  v1 = [a1 _payloadResponseTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook14NLAppProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2681C71D4()
{
  v0 = sub_2681C72D8();
  v2 = v1;
  v3 = sub_2681C721C(v0, v1);
  sub_2681C8EA8(v0, v2);
  return v3;
}

uint64_t sub_2681C721C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_2683CC6D8();
      OUTLINED_FUNCTION_9_10();
      result = sub_2683CC6C8();
      break;
    case 2:
      sub_2683CC6D8();
      OUTLINED_FUNCTION_9_10();
      result = sub_2683CC688();
      break;
    case 3:
      sub_2683CC6D8();
      OUTLINED_FUNCTION_9_10();
      result = sub_2683CC698();
      break;
    case 4:
      sub_2683CC6D8();
      OUTLINED_FUNCTION_9_10();
      result = sub_2683CC6A8();
      break;
    case 5:
      sub_2683CC6D8();
      result = sub_2683CC678();
      break;
    default:
      sub_2683CC6D8();
      OUTLINED_FUNCTION_9_10();
      result = sub_2683CC6B8();
      break;
  }

  return result;
}

uint64_t sub_2681C72D8()
{
  v19 = sub_2683CB528();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2683CB518();
  sub_26813CA00(v0, v23);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_2681C8DD0(v0 + 80, v20);
  v5 = v21;
  if (v21)
  {
    v6 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    sub_2681C8E40(v20);
  }

  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = OUTLINED_FUNCTION_4_18();
  v13 = sub_26835C42C(v9, v10, v11, v12, v8, v7);
  v14 = OUTLINED_FUNCTION_4_18();
  sub_2681C8EE4(v14, v15);
  __swift_destroy_boxed_opaque_existential_0(v23);
  v16 = sub_2681C76D4(v13, v8, v7);

  sub_2681C74A4(v4);
  (*(v1 + 8))(v4, v19);
  return v16;
}

void sub_2681C74A4(uint64_t a1)
{
  v2 = sub_2683CB528();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v10 = sub_2683CF7E8();
  __swift_project_value_buffer(v10, qword_28027C958);
  (*(v3 + 16))(v9, a1, v2);
  v11 = sub_2683CF7C8();
  v12 = sub_2683CFE68();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    sub_2683CB518();
    sub_2683CB498();
    v15 = v14;
    v16 = *(v3 + 8);
    v16(v7, v2);
    v16(v9, v2);
    *(v13 + 4) = v15 * 1000.0;
    _os_log_impl(&dword_2680EB000, v11, v12, "NotebookAppResolutionStrategy#resolveApp complete in %fms", v13, 0xCu);
    MEMORY[0x26D617A40](v13, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_2681C76D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v25 = *(result + 16);
  if (!v25)
  {
    return 0;
  }

  v5 = 0;
  v24 = (result + 32);
  v6 = MEMORY[0x277D84F90];
LABEL_3:
  v7 = v5;
  while (v7 != v25)
  {
    if (v7 >= v25)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    v5 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_27;
    }

    v8 = &v24[4 * v7];
    v9 = v8[3];
    ++v7;
    if (*(v9 + 16))
    {
      v10 = *v8;
      v23 = v8[1];
      v11 = v8[2];
      v12 = *(v9 + 40);
      sub_2683D0698();

      sub_2683CFB48();
      v13 = sub_2683D06D8();
      v14 = ~(-1 << *(v9 + 32));
      do
      {
        v15 = v13 & v14;
        if (((*(v9 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {

          goto LABEL_3;
        }

        v16 = (*(v9 + 48) + 16 * v15);
        if (*v16 == a2 && v16[1] == a3)
        {
          break;
        }

        v18 = sub_2683D0598();
        v13 = v15 + 1;
      }

      while ((v18 & 1) == 0);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_268390920(0, v6[2] + 1, 1);
      }

      v20 = v6[2];
      v19 = v6[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_268390920((v19 > 1), v20 + 1, 1);
      }

      v6[2] = v20 + 1;
      v21 = &v6[4 * v20];
      v21[4] = v10;
      v21[5] = v23;
      v21[6] = v11;
      v21[7] = v9;
      goto LABEL_3;
    }
  }

  if (v6[2])
  {
    v22 = v6[4];
  }

  else
  {

    v22 = *v24;
  }

  return v22;
}

uint64_t sub_2681C7908(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_1(sub_2681C7920);
}

uint64_t sub_2681C7920()
{
  v1 = v0[3];
  v2 = sub_2681C7FA8();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v0[5] = v3;
    v6 = *(MEMORY[0x277D5C040] + 4);
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_2681C7C30;
    v8 = v0[2];

    return MEMORY[0x2821BB9F8](v8, v4, v5);
  }

  else
  {
    v9 = v0[3];
    v10 = *(v9 + 72);
    v14 = (*(v9 + 64) + **(v9 + 64));
    v11 = *(*(v9 + 64) + 4);
    v12 = swift_task_alloc();
    v0[4] = v12;
    *v12 = v0;
    v12[1] = sub_2681C7AA4;

    return v14();
  }
}

uint64_t sub_2681C7AA4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  v8 = *v3;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;

  if (v2)
  {
    v10 = *(v8 + 8);

    return v10();
  }

  else
  {
    v6[5] = a2;
    v12 = *(MEMORY[0x277D5C040] + 4);
    v13 = swift_task_alloc();
    v6[6] = v13;
    *v13 = v8;
    v13[1] = sub_2681C7C30;
    v14 = v6[2];

    return MEMORY[0x2821BB9F8](v14, a1, a2);
  }
}

uint64_t sub_2681C7C30()
{
  OUTLINED_FUNCTION_14();
  v2 = *(*v1 + 48);
  v3 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *(v5 + 56) = v0;

  if (v0)
  {
    v6 = sub_2681C7D98;
  }

  else
  {
    v6 = sub_2681C7D38;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2681C7D38()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2681C7D98()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2681C7FA8()
{
  sub_2681C8DD0(v0 + 80, v15);
  v1 = v16;
  if (!v16)
  {
    sub_2681C8E40(v15);
    goto LABEL_9;
  }

  v2 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v2 + 8))(v1, v2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (v4 == 1)
  {
    goto LABEL_9;
  }

  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

LABEL_9:
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2680EB000, v11, v12, "No 3P app name found.", v13, 2u);
      MEMORY[0x26D617A40](v13, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_2681C8148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B3F8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2681C17B8;

  return MEMORY[0x2821B9CD8](a1, a2, a3);
}

uint64_t sub_2681C81FC()
{
  v1 = sub_2681C71D4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2681C8258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B620] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681C8F2C;

  return MEMORY[0x2821BA000](a1, a2, a3, a4);
}

uint64_t sub_2681C831C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2681C8F2C;

  return sub_2681C7908(a1);
}

uint64_t sub_2681C83B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B630] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681C8F2C;

  return MEMORY[0x2821BA010](a1, a2, a3, a4);
}

uint64_t sub_2681C8488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681C8F2C;

  return sub_2681C7E48();
}

uint64_t sub_2681C8514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C030] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681C8F2C;

  return MEMORY[0x2821BB9E8](a1, a2, a3, a4);
}

uint64_t sub_2681C85D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C038] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681C8F2C;

  return MEMORY[0x2821BB9F0](a1, a2, a3, a4);
}

uint64_t sub_2681C869C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C020] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681C8F2C;

  return MEMORY[0x2821BB9D8](a1, a2, a3, a4);
}

uint64_t sub_2681C8760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C028] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681C8F2C;

  return MEMORY[0x2821BB9E0](a1, a2, a3, a4);
}

uint64_t sub_2681C8824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5C018] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2681C8F2C;

  return MEMORY[0x2821BB9D0](a1, a2, a3, a4, a5);
}

uint64_t sub_2681C8900()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681C8F2C;

  return sub_2681C7F20();
}

uint64_t sub_2681C898C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C078] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681C8F2C;

  return MEMORY[0x2821BBAB0](a1, a2, a3, a4);
}

uint64_t sub_2681C8A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C080] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681C8F2C;

  return MEMORY[0x2821BBAB8](a1, a2, a3, a4);
}

uint64_t sub_2681C8B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5C070] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681C8F2C;

  return MEMORY[0x2821BBAA8](a1, a2, a3, a4);
}

uint64_t sub_2681C8BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5C068] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2681C8F2C;

  return MEMORY[0x2821BBAA0](a1, a2, a3, a4, a5);
}

unint64_t sub_2681C8CA4(uint64_t a1)
{
  result = sub_2681C8CCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2681C8CCC()
{
  result = qword_28024EB38;
  if (!qword_28024EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EB38);
  }

  return result;
}

unint64_t sub_2681C8D24()
{
  result = qword_28024EB40;
  if (!qword_28024EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EB40);
  }

  return result;
}

unint64_t sub_2681C8D7C()
{
  result = qword_28024EB48;
  if (!qword_28024EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EB48);
  }

  return result;
}

uint64_t sub_2681C8DD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2D0, &qword_2683D66E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681C8E40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E2D0, &qword_2683D66E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681C8EA8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 0:
    case 1:
    case 3:
    case 4:

      break;
    case 2:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2681C8EE4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_24()
{

  return sub_2683D0388();
}

id sub_2681C8F60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_2681C9140(a1);
  if (v8 >> 60 == 15)
  {
    sub_2681C91A4(a1);
    if (v9)
    {
      sub_2681C9208(0x7079546567616D49, 0xEC0000004C525565, v6);
      sub_2683CB418();

      v10 = sub_2683CB438();
      v11 = 0;
      if (__swift_getEnumTagSinglePayload(v5, 1, v10) != 1)
      {
        v11 = sub_2683CB3C8();
        (*(*(v10 - 8) + 8))(v5, v10);
      }

      [v6 setUrlValue_];
    }
  }

  else
  {
    v12 = v7;
    v13 = v8;
    sub_2681C926C(v7, v8, v6);
    sub_26814F5CC(v12, v13);
  }

  [a1 _imageSize];
  v15 = v14;
  [a1 _imageSize];
  [v6 setSize_];

  return v6;
}

uint64_t sub_2681C9140(void *a1)
{
  v1 = [a1 _imageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CB468();

  return v3;
}

uint64_t sub_2681C91A4(void *a1)
{
  v1 = [a1 _identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

void sub_2681C9208(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setContentType_];
}

void sub_2681C926C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CB448();
  [a3 setImageData_];
}

uint64_t sub_2681C92CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2681C930C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2681C936C()
{
  v29 = sub_2683CCC18();
  v1 = OUTLINED_FUNCTION_0_3(v29);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v9 = sub_2683CC748();
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v17 = v16 - v15;
  v18 = *(v0 + 48);
  v19 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v20 = sub_2683CC738();
  v22 = v21;
  (*(v12 + 8))(v17, v9);
  sub_2683CCB88();
  v18(v32, v8, v20, v22);

  (*(v3 + 8))(v8, v29);
  sub_2681340E8(v32, &v30, &qword_28024D458, &unk_2683D2C60);
  v23 = v30;
  if (v30 == 2)
  {
    sub_268143388(&v30);
    goto LABEL_12;
  }

  if (v30 == 3)
  {
    sub_2681433DC(&v30, &qword_28024D458, &unk_2683D2C60);
LABEL_12:
    sub_268138DC8();
    return sub_2681433DC(v32, &qword_28024D458, &unk_2683D2C60);
  }

  sub_2681433DC(&v31, &qword_28024D460, &qword_2683D5050);
  if ((v23 & 1) == 0 || !sub_2681C9678())
  {
    goto LABEL_12;
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v24 = sub_2683CF7E8();
  __swift_project_value_buffer(v24, qword_28027C958);
  v25 = sub_2683CF7C8();
  v26 = sub_2683CFE98();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2680EB000, v25, v26, "[AddTasks NeedsConfirmation] Got reject parse, but treating as .cancel()", v27, 2u);
    OUTLINED_FUNCTION_38();
  }

  sub_2683CC298();
  return sub_2681433DC(v32, &qword_28024D458, &unk_2683D2C60);
}

BOOL sub_2681C9678()
{
  v0 = sub_2683CC748();
  v1 = OUTLINED_FUNCTION_0_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  sub_2683CC738();
  (*(v3 + 8))(v8, v0);
  if (sub_2681E290C() != 3)
  {
    return 0;
  }

  v9 = sub_2683CC9D8();
  v10 = [v9 confirmationReason];

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v11 = sub_2683CF7E8();
  __swift_project_value_buffer(v11, qword_28027C958);
  v12 = sub_2683CF7C8();
  v13 = sub_2683CFE98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024EB58, &unk_2683D97C8);
    v16 = sub_2683CFAD8();
    v18 = sub_2681610A0(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2680EB000, v12, v13, "[AddTasks NeedsConfirmation shouldTreatRejectAsCancel] Parameter is .targetTaskList and reason is %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  return v10 == 1;
}

uint64_t sub_2681C98C0()
{
  OUTLINED_FUNCTION_14();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v5 = sub_2683CCBA8();
  v1[49] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[50] = v6;
  v8 = *(v7 + 64);
  v1[51] = OUTLINED_FUNCTION_15_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5B0, &qword_2683D97C0);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  v1[52] = OUTLINED_FUNCTION_15_1();
  v12 = sub_2683CCC18();
  v1[53] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[54] = v13;
  v15 = *(v14 + 64);
  v1[55] = OUTLINED_FUNCTION_15_1();
  v16 = sub_2683CC748();
  v1[56] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v1[57] = v17;
  v19 = *(v18 + 64);
  v1[58] = OUTLINED_FUNCTION_55();
  v1[59] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_2681C9A38()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 368);
  v86 = *(v6 + 48);
  v87 = *(v0 + 424);
  v85 = *(v6 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v9 = sub_2683CC738();
  v11 = v10;
  v84 = *(v3 + 8);
  v84(v1, v2);
  sub_2683CCB88();
  v86(v4, v9, v11);

  (*(v5 + 8))(v4, v87);
  sub_2681340E8(v0 + 16, v0 + 88, &qword_28024D458, &unk_2683D2C60);
  v12 = *(v0 + 88);
  *(v0 + 480) = v12;
  if (v12 == 2)
  {
    sub_268143388(v0 + 88);
    goto LABEL_5;
  }

  if (v12 == 3)
  {
    sub_2681433DC(v0 + 88, &qword_28024D458, &unk_2683D2C60);
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v14 = *(v0 + 400);
    v13 = *(v0 + 408);
    v15 = *(v0 + 392);
    v16 = *(v0 + 368);
    v17 = sub_2683CF7E8();
    __swift_project_value_buffer(v17, qword_28027C958);
    v18 = OUTLINED_FUNCTION_32_1();
    v19(v18);
    v20 = sub_2683CF7C8();
    v21 = sub_2683CFE78();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 440);
      v23 = *(v0 + 424);
      v25 = *(v0 + 400);
      v24 = *(v0 + 408);
      v26 = *(v0 + 392);
      v27 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v27 = 136315138;
      sub_2683CCB88();
      OUTLINED_FUNCTION_44();
      sub_2683CFAD8();
      (*(v25 + 8))(v24, v26);
      v28 = OUTLINED_FUNCTION_44();
      v31 = sub_2681610A0(v28, v29, v30);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2680EB000, v20, v21, "[AddTasks.NeedsConfirmation parseResponse] Did not get ConfirmationTask from parse: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
      v33 = *(v0 + 400);
      v32 = *(v0 + 408);
      v34 = *(v0 + 392);

      (*(v33 + 8))(v32, v34);
    }

    sub_26812C6B8();
    OUTLINED_FUNCTION_59_1();
    *v35 = 0u;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 4;
    swift_willThrow();
    goto LABEL_16;
  }

  v36 = *(v0 + 464);
  v37 = *(v0 + 448);
  v38 = *(v0 + 376);
  v39 = *(v0 + 112);
  *(v0 + 160) = *(v0 + 96);
  *(v0 + 176) = v39;
  *(v0 + 192) = *(v0 + 128);
  *(v0 + 201) = *(v0 + 137);
  sub_2683CC9E8();
  v40 = sub_2683CC738();
  v42 = v41;
  v84(v36, v37);

  v43 = sub_2681E290C();
  if (v43 == 8)
  {
    sub_26812C6B8();
    v44 = OUTLINED_FUNCTION_59_1();
    *v45 = v40;
    v45[1] = v42;
    OUTLINED_FUNCTION_16_1(v44, v45);
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
LABEL_16:
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);
    v60 = *(v0 + 464);
    v59 = *(v0 + 472);
    v61 = *(v0 + 440);
    v63 = *(v0 + 408);
    v62 = *(v0 + 416);

    OUTLINED_FUNCTION_40();
LABEL_17:

    return v64();
  }

  v46 = v43;
  v47 = *(v0 + 376);

  v48 = sub_2683CC9C8();
  if (v12)
  {
    v49 = *(v0 + 472);
    v50 = *(v0 + 448);
    v51 = *(v0 + 376);
    sub_2683CC9E8();
    v52 = sub_2683CC728();
    v54 = v53;
    v84(v49, v50);
    v55 = sub_2682D3594(v46, v52, v54 & 1);
  }

  else
  {
    v56 = *(v0 + 376);
    v57 = sub_2683CC9D8();
    v58 = [v57 itemToConfirm];

    sub_2683D0038();
    swift_unknownObjectRelease();
    v55 = sub_2682D3714(v46, (v0 + 328), 0, 1);
    __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  }

  *(v0 + 488) = v55;
  sub_2681340E8(v0 + 160, v0 + 224, &qword_28024D460, &qword_2683D5050);
  if (*(v0 + 280))
  {
    if (*(v0 + 280) == 255)
    {
      sub_2681433DC(v0 + 224, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 224);
    }

    v73 = *(v0 + 480);
    v74 = *(v0 + 464);
    v75 = *(v0 + 472);
    v76 = OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_1(v76);
    v78 = *(v77 + 104);
    v79 = OUTLINED_FUNCTION_38_6();
    v80(v79);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v76);
    sub_26816E814();
    sub_2683CC8D8();
    sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
    sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

    OUTLINED_FUNCTION_7_4();
    goto LABEL_17;
  }

  v66 = *(v0 + 376);
  sub_268128148((v0 + 224), v0 + 288);
  v67 = *(v0 + 312);
  v68 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v67);
  v69 = sub_2683CC9B8();
  *(v0 + 496) = v69;
  v70 = *(v68 + 24);
  v88 = (v70 + *v70);
  v71 = v70[1];
  v72 = swift_task_alloc();
  *(v0 + 504) = v72;
  *v72 = v0;
  v72[1] = sub_2681CA1A8;

  return v88(1, v69, v67, v68);
}

uint64_t sub_2681CA1A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *(v4 + 504);
  *v6 = *v2;
  *(v5 + 512) = v1;

  v8 = *(v4 + 496);

  if (!v1)
  {
    *(v5 + 520) = a1;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681CA2DC()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  sub_2682D33A8(v1);

  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  v3 = *(v0 + 480);
  v4 = *(v0 + 464);
  v5 = *(v0 + 472);
  v6 = OUTLINED_FUNCTION_54_1();
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 104);
  v9 = OUTLINED_FUNCTION_38_6();
  v10(v9);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
  sub_26816E814();
  sub_2683CC8D8();
  sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
  sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);

  OUTLINED_FUNCTION_7_4();

  return v14();
}

void sub_2681CA43C()
{
  sub_2681433DC(v0 + 160, &qword_28024D460, &qword_2683D5050);
  sub_2681433DC(v0 + 16, &qword_28024D458, &unk_2683D2C60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 288));
  v1 = *(v0 + 512);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v4 = *(v0 + 440);
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681CA510()
{
  OUTLINED_FUNCTION_14();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v5 = type metadata accessor for Snippet();
  v1[31] = v5;
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  v1[32] = OUTLINED_FUNCTION_55();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v8 = sub_2683CC9A8();
  v1[36] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[37] = v9;
  v11 = *(v10 + 64);
  v1[38] = OUTLINED_FUNCTION_15_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v12);
  v14 = *(v13 + 64);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v15);
  v17 = *(v16 + 64);
  v1[40] = OUTLINED_FUNCTION_15_1();
  v18 = sub_2683CC138();
  v1[41] = v18;
  OUTLINED_FUNCTION_3_1(v18);
  v1[42] = v19;
  v21 = *(v20 + 64);
  v1[43] = OUTLINED_FUNCTION_55();
  v1[44] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v22);
  v24 = *(v23 + 64);
  v1[45] = OUTLINED_FUNCTION_15_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v25);
  v1[46] = v26;
  v1[47] = *(v27 + 64);
  v1[48] = OUTLINED_FUNCTION_55();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v28 = sub_2683CC528();
  v1[56] = v28;
  OUTLINED_FUNCTION_3_1(v28);
  v1[57] = v29;
  v31 = *(v30 + 64);
  v1[58] = OUTLINED_FUNCTION_15_1();
  v32 = sub_2683CC748();
  v1[59] = v32;
  OUTLINED_FUNCTION_3_1(v32);
  v1[60] = v33;
  v35 = *(v34 + 64);
  v1[61] = OUTLINED_FUNCTION_55();
  v1[62] = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v1[63] = v36;
  OUTLINED_FUNCTION_3_1(v36);
  v1[64] = v37;
  v39 = *(v38 + 64);
  v1[65] = OUTLINED_FUNCTION_15_1();
  v40 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v40, v41, v42);
}

uint64_t sub_2681CA888()
{
  v63 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[29];
  v5 = sub_2683CF7E8();
  __swift_project_value_buffer(v5, qword_28027C958);
  v6 = OUTLINED_FUNCTION_32_1();
  v7(v6);
  v8 = sub_2683CF7C8();
  v9 = sub_2683CFE98();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[65];
  v13 = v0[63];
  v12 = v0[64];
  if (v10)
  {
    v14 = v0[62];
    v15 = v0[60];
    v58 = v0[59];
    v16 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v62 = v60;
    *v16 = 136315138;
    v59 = v9;
    sub_2683CC9E8();
    v17 = sub_2683CC738();
    v19 = v18;
    (*(v15 + 8))(v14, v58);
    v20 = *(v12 + 8);
    v21 = OUTLINED_FUNCTION_44();
    v22(v21);
    v23 = sub_2681610A0(v17, v19, &v62);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_2680EB000, v8, v59, "AddTasks making prompt for confirming %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {

    v24 = *(v12 + 8);
    v25 = OUTLINED_FUNCTION_44();
    v26(v25);
  }

  v27 = v0[63];
  v29 = v0[60];
  v28 = v0[61];
  v30 = v0[59];
  v31 = v0[29];
  sub_2683CC9E8();
  v32 = sub_2683CC738();
  v34 = v33;
  (*(v29 + 8))(v28, v30);

  v35 = sub_2681E290C();
  if (v35 == 8)
  {
    sub_26812C6B8();
    v61 = OUTLINED_FUNCTION_59_1();
    *v36 = v32;
    v36[1] = v34;
    OUTLINED_FUNCTION_16_1(v61, v36);
    v37 = v0[65];
    v39 = v0[61];
    v38 = v0[62];
    v40 = v0[58];
    v42 = v0[54];
    v41 = v0[55];
    v44 = v0[52];
    v43 = v0[53];
    v46 = v0[50];
    v45 = v0[51];
    OUTLINED_FUNCTION_15_13();

    OUTLINED_FUNCTION_40();

    return v47();
  }

  else
  {
    v49 = v35;
    v50 = v0[63];
    v51 = v0[58];
    v52 = v0[29];

    v0[5] = &type metadata for AddTasks.Parameter;
    v0[6] = &off_287903B10;
    *(v0 + 16) = v49;
    sub_2681686A4(v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v53 = sub_2683CC9D8();
    v54 = [v53 confirmationReason];

    v55 = swift_task_alloc();
    v0[66] = v55;
    *v55 = v0;
    v55[1] = sub_2681CACBC;
    v56 = v0[30];
    v57 = OUTLINED_FUNCTION_39_4(v0[28]);

    return sub_2681CC0F0(v57, v49, v54);
  }
}

uint64_t sub_2681CACBC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 528);
  *v3 = *v1;
  *(v2 + 536) = v6;
  *(v2 + 544) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2681CADC4()
{
  v1 = v0[67];
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[56];
  v5 = v0[54];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[40];
  v94 = v0[39];
  v9 = v0[31];
  v95 = *(v0[30] + 64);
  __swift_storeEnumTagSinglePayload(v0[55], 1, 1, v9);
  *v5 = 1541;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  (*(v3 + 16))(v6, v2, v4);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  sub_2683CC118();
  v16 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  v17 = sub_2683CC1D8();
  __swift_storeEnumTagSinglePayload(v94, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v18 = swift_allocObject();
  v0[69] = v18;
  *(v18 + 16) = xmmword_2683D2250;
  *(v18 + 32) = v1;
  v19 = v1;
  if (sub_2683ABE58(v18))
  {
    sub_2683ABE60(0, (v18 & 0xC000000000000001) == 0, v18);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x26D616C90](0, v18);
    }

    else
    {
      v20 = *(v18 + 32);
    }

    v21 = v20;
    v22 = [v20 catId];

    v90 = sub_2683CFA78();
    v93 = v23;
  }

  else
  {
    v90 = 0;
    v93 = 0;
  }

  v24 = v0[55];
  v26 = v0[52];
  v25 = v0[53];
  v28 = v0[46];
  v27 = v0[47];
  v85 = v0[44];
  v86 = v0[45];
  v29 = v0[42];
  v30 = v0[43];
  v84 = v0[41];
  v87 = v0[40];
  v88 = v0[39];
  v89 = v24;
  v91 = v0[31];
  v92 = v0[51];
  sub_2681340E8(v0[54], v25, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v24, v26, &qword_28024E770, &qword_2683D80D0);
  v31 = *(v28 + 80);
  v32 = (v31 + 24) & ~v31;
  v33 = (v27 + v31 + v32) & ~v31;
  v34 = swift_allocObject();
  v0[70] = v34;
  *(v34 + 16) = v95;
  sub_2681430AC(v25, v34 + v32);
  sub_2681430AC(v26, v34 + v33);
  (*(v29 + 16))(v30, v85, v84);
  v35 = swift_task_alloc();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = v90;
  *(v35 + 48) = v93;
  *(v35 + 56) = v86;
  *(v35 + 64) = 257;
  *(v35 + 72) = sub_26814311C;
  *(v35 + 80) = v34;
  *(v35 + 88) = 0;
  *(v35 + 96) = v87;
  *(v35 + 104) = 2;
  *(v35 + 112) = v88;

  sub_2683CC8E8();

  sub_2681340E8(v89, v92, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v92, 1, v91) == 1)
  {
    v36 = v0 + 51;
  }

  else
  {
    v37 = v0[54];
    v38 = v0[50];
    v39 = v0[31];
    sub_26814320C(v0[51], v0[35]);
    sub_2681340E8(v37, v38, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
    {
      v63 = v0[34];
      v64 = v0[35];
      v65 = v0[31];
      sub_26814320C(v0[50], v63);
      v0[20] = v65;
      v66 = sub_268143270();
      v0[21] = v66;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v64, boxed_opaque_existential_0);
      v0[25] = v65;
      v0[26] = v66;
      v68 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      sub_2681432C8(v63, v68);
      OUTLINED_FUNCTION_16_16(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      v0[71] = v69;
      *v69 = v70;
      v69[1] = sub_2681CB4B0;
      v71 = v0[38];
      v72 = v0[27];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v36 = v0 + 50;
    sub_26814332C(v0[35]);
  }

  v40 = *v36;
  v41 = v0[55];
  v42 = v0[49];
  v43 = v0[31];
  sub_2681433DC(v40, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v41, v42, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, 1, v43);
  v45 = v0[49];
  v46 = v0[31];
  if (EnumTagSinglePayload == 1)
  {
    v47 = v0[54];
    v48 = v0[48];
    sub_2681433DC(v45, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v47, v48, &qword_28024E770, &qword_2683D80D0);
    v49 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v49, v50, v46) == 1)
    {
      sub_2681433DC(v0[48], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_16_16(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      v0[74] = v51;
      *v51 = v52;
      v51[1] = sub_2681CBCF4;
      v53 = v0[38];
      v54 = v0[27];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v75 = v0[31];
    v76 = v0[32];
    sub_26814320C(v0[48], v76);
    v0[10] = v75;
    v0[11] = sub_268143270();
    v77 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v76, v77);
    OUTLINED_FUNCTION_16_16(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    v0[73] = v78;
    *v78 = v79;
    v78[1] = sub_2681CBA38;
    v80 = v0[38];
    v81 = v0[27];
  }

  else
  {
    v57 = v0[33];
    sub_26814320C(v45, v57);
    v0[15] = v46;
    v0[16] = sub_268143270();
    v58 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2681432C8(v57, v58);
    OUTLINED_FUNCTION_16_16(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    v0[72] = v59;
    *v59 = v60;
    v59[1] = sub_2681CB77C;
    v61 = v0[38];
    v62 = v0[27];
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_2681CB4B0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 568);
  v6 = *(v4 + 552);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681CB77C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *(v4 + 552);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681CBA38()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 584);
  v6 = *(v4 + 552);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681CBCF4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 592);
  v3 = *(v1 + 552);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_2681CBFA0()
{
  (*(v0[57] + 8))(v0[58], v0[56]);
  v13 = v0[68];
  v1 = v0[65];
  v3 = v0[61];
  v2 = v0[62];
  v4 = v0[58];
  v6 = v0[54];
  v5 = v0[55];
  v8 = v0[52];
  v7 = v0[53];
  v10 = v0[50];
  v9 = v0[51];
  OUTLINED_FUNCTION_15_13();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681CC0F0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 144) = a3;
  *(v4 + 152) = v3;
  *(v4 + 336) = a2;
  *(v4 + 136) = a1;
  v5 = sub_2683CF168();
  *(v4 + 160) = v5;
  v6 = *(v5 - 8);
  *(v4 + 168) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0) - 8) + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681CC208, 0, 0);
}

uint64_t sub_2681CC208()
{
  switch(*(v2 + 336))
  {
    case 2:
      v7 = OUTLINED_FUNCTION_44_4();
      *(v2 + 208) = sub_2681DF4C8(v7);
      if (v1)
      {
        goto LABEL_17;
      }

      v8 = *(v2 + 200);
      v9 = *(v2 + 160);
      v10 = **(v2 + 152);
      sub_2683CFEA8();
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v9);
      v14 = swift_task_alloc();
      *(v2 + 216) = v14;
      *v14 = v2;
      v14[1] = sub_2681CC630;
      OUTLINED_FUNCTION_39_4(*(v2 + 200));
      OUTLINED_FUNCTION_20_9();

      result = sub_268324300();
      break;
    case 3:
      v22 = OUTLINED_FUNCTION_44_4();
      v23 = sub_2681DFA18(v22);
      *(v2 + 232) = v23;
      if (v1)
      {
        goto LABEL_17;
      }

      v25 = *(v2 + 168);
      v24 = *(v2 + 176);
      v27 = *(v2 + 144);
      v26 = *(v2 + 152);
      v28 = [v23 title];
      sub_2683CFEA8();

      v29 = *v26;
      v30 = *(v25 + 16);
      v31 = *(v2 + 176);
      v32 = *(v2 + 160);
      if (v27 == 1)
      {
        v30(*(v2 + 192), v31, *(v2 + 160));
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
        v36 = swift_task_alloc();
        *(v2 + 240) = v36;
        *v36 = v2;
        v36[1] = sub_2681CC7DC;
        OUTLINED_FUNCTION_39_4(*(v2 + 192));
        OUTLINED_FUNCTION_20_9();

        result = sub_268324114();
      }

      else
      {
        v30(*(v2 + 184), v31, *(v2 + 160));
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v44, v45, v46, v32);
        v47 = swift_task_alloc();
        *(v2 + 256) = v47;
        *v47 = v2;
        v47[1] = sub_2681CC994;
        OUTLINED_FUNCTION_39_4(*(v2 + 184));
        OUTLINED_FUNCTION_20_9();

        result = sub_268323F28();
      }

      break;
    case 5:
      v38 = OUTLINED_FUNCTION_44_4();
      *(v2 + 272) = sub_2681DF970(v38);
      if (v1)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_43_4();
      type metadata accessor for NotebookTemporalEventTriggerConcept();
      *(v2 + 280) = sub_2681A2C04(v0);
      v41 = swift_task_alloc();
      *(v2 + 288) = v41;
      *v41 = v2;
      OUTLINED_FUNCTION_42_6(v41);
      OUTLINED_FUNCTION_20_9();

      result = sub_2683244EC(v42);
      break;
    case 6:
      v17 = OUTLINED_FUNCTION_44_4();
      *(v2 + 304) = sub_2681DF5DC(v17);
      if (v1)
      {
        goto LABEL_17;
      }

      v18 = OUTLINED_FUNCTION_43_4();
      type metadata accessor for NotebookSpatialEventTriggerConcept(v18);
      *(v2 + 312) = sub_268163274(v0);
      v19 = swift_task_alloc();
      *(v2 + 320) = v19;
      *v19 = v2;
      OUTLINED_FUNCTION_42_6(v19);
      OUTLINED_FUNCTION_20_9();

      result = sub_268323E08(v20);
      break;
    default:
      v3 = sub_2681E27F8(*(v2 + 336));
      v5 = v4;
      sub_26816E7C0();
      OUTLINED_FUNCTION_59_1();
      *v6 = v3;
      *(v6 + 8) = v5;
      *(v6 + 16) = 0;
      swift_willThrow();
LABEL_17:
      OUTLINED_FUNCTION_28_7();

      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_20_9();

      __asm { BRAA            X1, X16 }

      return result;
  }

  return result;
}

uint64_t sub_2681CC630()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 216);
  v8 = *(v7 + 200);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 224) = v0;

  sub_2681433DC(v8, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CC75C()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_28_7();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_2681CC7DC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 240);
  v8 = *(v7 + 192);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 248) = v0;

  sub_2681433DC(v8, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CC908()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_9();
  v1 = OUTLINED_FUNCTION_20_12();
  v2(v1);
  v3 = *(v0 + 48);
  OUTLINED_FUNCTION_28_7();

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CC994()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 256);
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 264) = v0;

  sub_2681433DC(v8, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CCAC0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_9();
  v1 = OUTLINED_FUNCTION_20_12();
  v2(v1);
  v3 = *(v0 + 72);
  OUTLINED_FUNCTION_28_7();

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CCB4C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v3[11] = v1;
  v3[12] = v5;
  v3[13] = v0;
  OUTLINED_FUNCTION_36_6();
  v7 = *(v6 + 288);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v3[37] = v0;

  if (!v0)
  {
    v10 = v3[35];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2681CCC54()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_28_7();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_2681CCCD4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v3[14] = v1;
  v3[15] = v5;
  v3[16] = v0;
  OUTLINED_FUNCTION_36_6();
  v7 = *(v6 + 320);
  v8 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v9 = v8;
  v3[41] = v0;

  if (!v0)
  {
    v10 = v3[39];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2681CCDDC()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_28_7();

  v2 = OUTLINED_FUNCTION_37_0();

  return v3(v2);
}

uint64_t sub_2681CCE5C()
{
  OUTLINED_FUNCTION_7();

  v1 = *(v0 + 224);
  OUTLINED_FUNCTION_28_7();

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681CCEDC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_9();
  v1 = OUTLINED_FUNCTION_20_12();
  v2(v1);
  v3 = *(v0 + 248);
  OUTLINED_FUNCTION_28_7();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CCF68()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26_9();
  v1 = OUTLINED_FUNCTION_20_12();
  v2(v1);
  v3 = *(v0 + 264);
  OUTLINED_FUNCTION_28_7();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CCFF4()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[34];
  v1 = v0[35];

  v3 = v0[37];
  OUTLINED_FUNCTION_28_7();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CD078()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[38];
  v1 = v0[39];

  v3 = v0[41];
  OUTLINED_FUNCTION_28_7();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CD0FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2681CD124()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 16);
  sub_2683CC188();
  sub_2683CC178();
  OUTLINED_FUNCTION_7_4();

  return v2();
}

uint64_t sub_2681CD190()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2681C98C0();
}

uint64_t sub_2681CD240()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2681CA510();
}

uint64_t sub_2681CD2F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2681342AC;

  return sub_2681CD0FC(a1);
}

unint64_t sub_2681CD38C()
{
  result = qword_28024EB50;
  if (!qword_28024EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024EB50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_25()
{
  v19 = v0[67];
  v20 = v0[65];
  v21 = v0[62];
  v22 = v0[61];
  v3 = v0[57];
  v2 = v0[58];
  v4 = v0[55];
  v5 = v0[54];
  v23 = v0[53];
  v24 = v0[52];
  v25 = v0[51];
  v26 = v0[50];
  v27 = v0[49];
  v6 = v0[44];
  v17 = v0[45];
  v18 = v0[56];
  v7 = v0[42];
  v29 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  result = v0[38];
  v11 = v0[39];
  v28 = v0[48];
  v12 = v0[36];
  v13 = v0[37];
  v14 = v0[34];
  *(v1 - 104) = v0[35];
  *(v1 - 96) = v14;
  v15 = v0[32];
  *(v1 - 88) = v0[33];
  *(v1 - 80) = v15;
  v16 = *(v13 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_13()
{
  v3 = v0[49];
  v4 = v0[48];
  v5 = v0[45];
  v6 = v0[44];
  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[39];
  v10 = v0[38];
  v11 = v0[35];
  v12 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
}

uint64_t OUTLINED_FUNCTION_16_16@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_26_9()
{
  v2 = v0[29];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
}

uint64_t OUTLINED_FUNCTION_28_7()
{
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
}

uint64_t OUTLINED_FUNCTION_38_6()
{
  if ((v3 & 1) == 0)
  {
    v0 = v1;
  }

  v4 = *v0;
  return v2;
}

uint64_t OUTLINED_FUNCTION_54_1()
{
  v2 = v0[55];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[45];

  return sub_2683CC758();
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return swift_allocError();
}

uint64_t sub_2681CD5B0()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64);
  v1[10] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CC598();
  v1[11] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = OUTLINED_FUNCTION_15_1();
  v9 = *(*(sub_2683CC138() - 8) + 64);
  v1[14] = OUTLINED_FUNCTION_15_1();
  v10 = sub_2683CC9A8();
  v1[15] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[16] = v11;
  v13 = *(v12 + 64);
  v1[17] = OUTLINED_FUNCTION_15_1();
  v14 = sub_2683CC748();
  v1[18] = v14;
  OUTLINED_FUNCTION_3_1(v14);
  v1[19] = v15;
  v17 = *(v16 + 64);
  v1[20] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2681CD748()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[9];
  v2 = v1[19];
  v3 = v1[20];
  __swift_project_boxed_opaque_existential_1(v1 + 16, v2);
  if ((*(v3 + 16))(v2, v3))
  {
    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_2681CD888;
    v5 = v0[8];
    v6 = v0[9];

    return sub_2681CE15C();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[25] = v8;
    *v8 = v9;
    v8[1] = sub_2681CDDA4;
    v10 = v0[13];
    v11 = v0[8];
    v12 = v0[9];

    return sub_2681CFEBC();
  }
}

uint64_t sub_2681CD888()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 168);
  *v4 = *v1;
  v3[22] = v7;

  if (v0)
  {
    v8 = v3[20];
    v9 = v3[17];
    v11 = v3[13];
    v10 = v3[14];
    v12 = v3[10];

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_20_9();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2681CD9E8()
{
  OUTLINED_FUNCTION_15();
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  v8 = sub_2681E290C();
  if (v8 == 8)
  {
    v9 = v0[22];
    sub_26812C6B8();
    v10 = OUTLINED_FUNCTION_59_1();
    *v11 = v5;
    v11[1] = v7;
    OUTLINED_FUNCTION_16_1(v10, v11);

    OUTLINED_FUNCTION_19_14();
    v12 = v0[10];

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_20_9();

    __asm { BRAA            X1, X16 }
  }

  v15 = v8;
  v16 = v0[17];
  v17 = v0[14];
  v18 = v0[9];

  sub_2683CC128();
  *(swift_task_alloc() + 16) = v15;
  sub_2683CC8E8();

  v19 = v18[15];
  __swift_project_boxed_opaque_existential_1(v18 + 11, v18[14]);
  v20 = *(MEMORY[0x277D5BE50] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[23] = v21;
  *v21 = v22;
  v21[1] = sub_2681CDBFC;
  v23 = v0[22];
  v24 = v0[17];
  v25 = v0[7];
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2821BB480]();
}

uint64_t sub_2681CDBFC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681CDCF4()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_19_14();
  v4 = *(v0 + 80);

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2681CDDA4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 208) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_2681CDE9C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = v5[5];
  __swift_project_boxed_opaque_existential_1(v5 + 1, v5[4]);
  sub_2683CC0A8();
  v8 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  v9 = sub_2683CCC98();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v10 = MEMORY[0x277D5C1D8];
  v6[3] = v9;
  v6[4] = v10;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_2683CC328();
  sub_26812C310(v0 + 16, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v4, &qword_28024D400, &qword_2683D2460);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_19_14();
  v11 = *(v0 + 80);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_77();

  __asm { BRAA            X1, X16 }
}

void sub_2681CE02C()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 192);
  OUTLINED_FUNCTION_25_10();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  __asm { BRAA            X1, X16 }
}

void sub_2681CE0D8()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_25_10();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_20_9();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681CE15C()
{
  OUTLINED_FUNCTION_14();
  v1[35] = v2;
  v1[36] = v0;
  v3 = sub_2683CC748();
  v1[37] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[38] = v4;
  v6 = *(v5 + 64);
  v1[39] = OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2681CE204()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = v0[35];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  if (sub_2681E290C() == 8)
  {
    sub_26812C6B8();
    v8 = OUTLINED_FUNCTION_59_1();
    *v9 = v5;
    v9[1] = v7;
    OUTLINED_FUNCTION_16_1(v8, v9);
  }

  else
  {

    v13 = swift_allocObject();
    v0[40] = v13;
    *(v13 + 16) = 1;
    v14 = sub_2681E27F8(1);
    v16 = v15;
    sub_26816E7C0();
    OUTLINED_FUNCTION_59_1();
    *v17 = v14;
    *(v17 + 8) = v16;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  v10 = v0[39];

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_16_17();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681CEA24()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 336) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681CEB20()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CEB84()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[42];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CEBE8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 344);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v9 + 352) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681CECE4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[6];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CED48()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[44];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CEDAC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[8] = v1;
  v2[9] = v4;
  v2[10] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 368);
  v8 = *(v7 + 360);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 376) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CEEC4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[9];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CEF28()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[47];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CEF8C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[11] = v1;
  v2[12] = v4;
  v2[13] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 392);
  v8 = *(v7 + 384);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 400) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CF0A4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[12];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CF108()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[50];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CF16C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[14] = v1;
  v2[15] = v4;
  v2[16] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 416);
  v8 = *(v7 + 408);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 424) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CF284()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[15];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CF2E8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[53];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CF34C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 440);
  v8 = *(v7 + 432);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 448) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CF464()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[18];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CF4C8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[56];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CF52C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[20] = v1;
  v2[21] = v4;
  v2[22] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 464);
  v8 = *(v7 + 456);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 472) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CF644()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[21];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CF6A8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[59];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CF70C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 480);
  v8 = *(v7 + 456);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 488) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CF824()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[24];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CF888()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[61];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CF8EC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[26] = v1;
  v2[27] = v4;
  v2[28] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 496);
  v8 = *(v7 + 456);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 504) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CFA04()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[27];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CFA68()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[63];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CFACC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[29] = v1;
  v2[30] = v4;
  v2[31] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 520);
  v8 = *(v7 + 512);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 528) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CFBE4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[30];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CFC48()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[66];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CFCAC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v2[32] = v1;
  v2[33] = v4;
  v2[34] = v0;
  OUTLINED_FUNCTION_36_6();
  v6 = *(v5 + 544);
  v8 = *(v7 + 536);
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;
  *(v11 + 552) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2681CFDC4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[33];
  v3 = v0[39];
  v2 = v0[40];

  v4 = OUTLINED_FUNCTION_37_0();

  return v5(v4);
}

uint64_t sub_2681CFE28()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[40];

  v2 = v0[69];
  v3 = v0[39];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681CFEBC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = *(*(sub_2683CB668() - 8) + 64);
  v1[5] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CC748();
  v1[6] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[7] = v6;
  v8 = *(v7 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_2681CFFA0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v3 + 8))(v1, v2);

  if (sub_2681E290C() == 8)
  {
    sub_26812C6B8();
    v8 = OUTLINED_FUNCTION_59_1();
    *v9 = v5;
    v9[1] = v7;
    OUTLINED_FUNCTION_16_1(v8, v9);
  }

  else
  {

    v12 = swift_allocObject();
    v0[10] = v12;
    *(v12 + 16) = 1;
    v13 = sub_2681E27F8(1);
    v15 = v14;
    sub_26816E7C0();
    OUTLINED_FUNCTION_59_1();
    *v16 = v13;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_10_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681D07DC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681D08D4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681D09CC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681D0AC4()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[15];
  v2 = v0[10];

  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  OUTLINED_FUNCTION_40();

  return v6();
}

uint64_t sub_2681D0B48()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (!v0)
  {
    v9 = *(v3 + 144);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681D0C48()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 184) = v0;

  if (!v0)
  {
    v9 = *(v3 + 168);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681D0D48()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[10];

  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2681D0DC0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2681D0EB8()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[10];

  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[5];

  OUTLINED_FUNCTION_40();

  return v7();
}

uint64_t sub_2681D0F40()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (!v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681D1040()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 256) = v0;

  if (!v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681D1140()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 272) = v0;

  if (!v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681D1240()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 296) = v0;

  if (!v0)
  {
    v9 = *(v3 + 280);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681D1340()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 320) = v0;

  if (!v0)
  {
    v9 = *(v3 + 304);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2681D1440()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 80);

  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2681D14B8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 80);

  v2 = *(v0 + 112);
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2681D1530()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[15];
  v2 = v0[10];

  v3 = v0[17];
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681D15B4()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[18];
  v2 = v0[10];

  v3 = v0[20];
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681D1638()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[21];
  v2 = v0[10];

  v3 = v0[23];
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681D16BC()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[10];

  v4 = v0[27];
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_2681D1744()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[28];
  v2 = v0[10];

  v3 = v0[30];
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681D17C8()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[28];
  v2 = v0[10];

  v3 = v0[32];
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681D184C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[28];
  v2 = v0[10];

  v3 = v0[34];
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681D18D0()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[35];
  v2 = v0[10];

  v3 = v0[37];
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681D1954()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[38];
  v2 = v0[10];

  v3 = v0[40];
  OUTLINED_FUNCTION_18_14();

  OUTLINED_FUNCTION_40();

  return v4();
}

id sub_2681D19D8(unint64_t a1, char a2, unint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  if (!(a3 >> 62))
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  v5 = sub_2683D00A8();
  if ((v5 & 0x8000000000000000) == 0)
  {
LABEL_4:
    if (v5 > a1)
    {
      sub_2683ABE60(a1, (a3 & 0xC000000000000001) == 0, a3);
      if ((a3 & 0xC000000000000001) == 0)
      {
        return *(a3 + 8 * a1 + 32);
      }

      return MEMORY[0x26D616C90](a1, a3);
    }

    return 0;
  }

  __break(1u);
  return MEMORY[0x26D616C90](a1, a3);
}

uint64_t sub_2681D1A74(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  v3 = v1;
  if (v1 == 1)
  {
    sub_2683CF138();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
    v4 = sub_2683CC9B8();
    v3 = sub_26818F730(v4);
    swift_beginAccess();
    v5 = *v2;
    *v2 = v3;

    sub_268137FB0(v5);
  }

  sub_268137FC0(v1);
  return v3;
}

uint64_t sub_2681D1B2C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = sub_2683CB668();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2683CEF98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v7 = sub_2683CC9C8();
  v8 = [v7 contactEventTrigger];

  v9 = [v8 triggerContact];
  v10 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3 + 1, a3[4]);
  sub_2683CC088();
  v11 = sub_2683CEF78();
  v12 = *a1;

  *a1 = v11;
  return result;
}

uint64_t sub_2681D1C60(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = sub_2683CB668();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2683CC748();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v12 = sub_2683CC9C8();
  v13 = sub_2681D23D0(v12);
  if (v13)
  {
    v14 = v13;
    sub_2683CC9E8();
    v15 = sub_2683CC728();
    v17 = v16;
    (*(v8 + 8))(v11, v7);
    sub_2681D19D8(v15, v17 & 1, v14);
  }

  sub_2683CEF98();
  v18 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3 + 1, a3[4]);
  sub_2683CC088();
  v19 = sub_2683CEF78();
  v20 = *a1;

  *a1 = v19;
  return result;
}