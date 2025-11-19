uint64_t sub_1DCC880D8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1DCC88110(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1DCC87D10(a1);
}

uint64_t objectdestroy_4Tm()
{
  if (v0[2] >= 2uLL)
  {
    v1 = v0[3];
  }

  if (v0[4] >= 2uLL)
  {
    v2 = v0[5];
  }

  return swift_deallocObject();
}

uint64_t sub_1DCC88174(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1DCC87E18(a1);
}

BOOL sub_1DCC88180(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1DCC87EE4(a1);
}

unint64_t sub_1DCC88188(uint64_t a1)
{
  result = sub_1DCC881B0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCC881B0()
{
  result = qword_1ECCA2CA0;
  if (!qword_1ECCA2CA0)
  {
    type metadata accessor for CompanionCompatibilityCheckFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2CA0);
  }

  return result;
}

uint64_t dispatch thunk of CompanionCompatibilityCheckFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(*v0 + 184);
  v9 = (v4 + *v4);
  v5 = v4[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return v9(v3);
}

void *destroy for CompanionDeviceInfoRequirement(void *result)
{
  if (*result >= 0xFFFFFFFFuLL)
  {
    v1 = result[1];
  }

  return result;
}

_OWORD *sub_1DCC883F8(_OWORD *result, void *a2)
{
  v2 = result;
  if (*a2 >= 0xFFFFFFFFuLL)
  {
    v3 = a2[1];
    *v2 = *a2;
    v2[1] = v3;
    sub_1DD0DCF8C();
  }

  *result = *a2;
  return result;
}

unint64_t *assignWithCopy for CompanionDeviceInfoRequirement(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v7 = a2[1];
      *a1 = v4;
      a1[1] = v7;
      sub_1DD0DCF8C();
    }
  }

  else
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v5 = a2[1];
      v6 = a1[1];
      *a1 = v4;
      a1[1] = v5;
      sub_1DD0DCF8C();
    }

    v8 = a1[1];
  }

  *a1 = *a2;
  return a1;
}

unint64_t *assignWithTake for CompanionDeviceInfoRequirement(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v7 = a2[1];
      *a1 = v4;
      a1[1] = v7;
      return a1;
    }

LABEL_7:
    *a1 = *a2;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    v8 = a1[1];

    goto LABEL_7;
  }

  v5 = a2[1];
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for CompanionDeviceInfoRequirement(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CompanionDeviceInfoRequirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
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

uint64_t sub_1DCC88608(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DCC88620(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1DCC88654()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCCDC444();
}

uint64_t sub_1DCC886E0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  type metadata accessor for SimpleComposedRequestFlowStrategy();
  return sub_1DCC88710();
}

uint64_t sub_1DCC88738(uint64_t a1)
{
  result = type metadata accessor for ParameterClause();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1DCC88840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCC88654();
}

uint64_t sub_1DCC888D8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for ComposedRequestFlow.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  result = v9(v20, &v1[v4], v7);
  if (v21 == 2)
  {
    v17 = *&v20[32];
    v18 = *&v20[16];
    *a1 = *v20;
    *(a1 + 16) = v18;
    v19 = *(v1 + 4);
    *(a1 + 32) = *(v1 + 3);
    *(a1 + 40) = v19;
    *(a1 + 48) = v17;
    *(a1 + 56) = 0;
  }

  else
  {
    if (v21 == 4)
    {
      v16 = v20[8];
      *a1 = *v20;
      *(a1 + 8) = v16;
      v12 = 1;
    }

    else
    {
      if (v21 != 5 || *v20 != 2 || (v11 = vorrq_s8(*&v20[8], *&v20[24]), *&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL))))
      {
        type metadata accessor for ComposedRequestFlow.ComposedRequestFlowError();
        OUTLINED_FUNCTION_1_31();
        swift_getWitnessTable();
        v13 = OUTLINED_FUNCTION_34();
        v15 = v14;
        v9(v14, &v1[v4], v7);
        v15[41] = 0;
        *a1 = v13;
        *(a1 + 8) = 0;
        *(a1 + 56) = 1;
        return (*(v8 + 8))(v20, v7);
      }

      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      v12 = 2;
    }

    *(a1 + 56) = v12;
  }

  return result;
}

void sub_1DCC88AE4()
{
  v1 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCC88D00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for ComposedRequestFlow.State();
  (*(*(v7 - 8) + 24))(v1 + v4, a1, v7);
  swift_endAccess();
  sub_1DCC88AE4();
}

uint64_t sub_1DCC88E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, __int128 *a10)
{
  v18 = *(v10 + 48);
  v19 = *(v10 + 52);
  v20 = swift_allocObject();
  sub_1DCC88EAC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v20;
}

char *sub_1DCC88EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, __int128 *a10)
{
  v16 = *v10;
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  *(v10 + 4) = a3;
  sub_1DCC8BC94(a4, &v10[qword_1ECCD25E0]);
  OUTLINED_FUNCTION_66();
  v18 = *(v16 + 80);
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v10[*(v17 + 120)], a5, v18);
  OUTLINED_FUNCTION_66();
  *&v10[*(v20 + 128)] = a6;
  OUTLINED_FUNCTION_66();
  sub_1DCB17CA0(a7, &v10[*(v21 + 136)]);
  OUTLINED_FUNCTION_66();
  *&v10[*(v22 + 144)] = a8;
  OUTLINED_FUNCTION_66();
  sub_1DCB17CA0(a9, &v10[*(v23 + 152)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a10, &v10[*(v24 + 160)]);
  __swift_destroy_boxed_opaque_existential_1Tm(a9);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  (*(v19 + 8))(a5, v18);
  OUTLINED_FUNCTION_5_29();
  sub_1DCB28430(a4, v25);
  OUTLINED_FUNCTION_66();
  v27 = &v10[*(v26 + 168)];
  *v27 = 12589;
  *(v27 + 1) = 0xE200000000000000;
  OUTLINED_FUNCTION_66();
  v29 = &v10[*(v28 + 176)];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 4) = 0;
  v29[40] = 5;
  return v10;
}

void sub_1DCC8908C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v12 - v8;
  v10 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = &unk_1DD0E8AC8;
  v11[7] = v2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC8919C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCC89238(a1);
}

uint64_t sub_1DCC89238(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC89280, 0, 0);
}

uint64_t sub_1DCC89280()
{
  v93 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(*v2 + 176);
  swift_beginAccess();
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = type metadata accessor for ComposedRequestFlow.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(v0 + 16, v2 + v3, v6);
  v9 = *(v0 + 16);
  *(v0 + 216) = v9;
  switch(*(v0 + 56))
  {
    case 0:
      v10 = *(v0 + 32);
      *(v0 + 104) = *(v0 + 16);
      *(v0 + 120) = v10;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v11 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v11, qword_1EDE57E00);
      v12 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v14);
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v15, v16, "ComposedRequestFlow got subflow result.");
        OUTLINED_FUNCTION_62();
      }

      v17 = *(v0 + 192);
      v18 = *(v0 + 200);

      sub_1DCC89DD4();
    case 2:

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v38 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v38, qword_1EDE57E00);
      v39 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v41);
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v42, v43, "ComposedRequestFlow complete. Exiting.");
        OUTLINED_FUNCTION_62();
      }

      v44 = *(v0 + 192);

      static ExecuteResponse.complete()();
      sub_1DCC8BC14(v0 + 16);
      goto LABEL_42;
    case 3:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v19 = sub_1DD0DD8FC();
      *(v0 + 224) = OUTLINED_FUNCTION_92(v19, qword_1EDE57E00);
      v20 = v9;
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6DC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v87 = v24;
        *v23 = 136315138;
        swift_getErrorValue();
        v26 = *(v0 + 160);
        v25 = *(v0 + 168);
        v27 = *(v0 + 176);
        v28 = sub_1DD0DF18C();
        v30 = sub_1DCB10E9C(v28, v29, &v87);

        *(v23 + 4) = v30;
        _os_log_impl(&dword_1DCAFC000, v21, v22, "ComposedRequestFlow attempting to send error dialog for error: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1E12A8390](v24, -1, -1);
        MEMORY[0x1E12A8390](v23, -1, -1);
      }

      v31 = *(v0 + 200);
      v32 = (v31 + *(*v31 + 160));
      v33 = v32[3];
      v34 = v32[4];
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v35 = swift_task_alloc();
      *(v0 + 232) = v35;
      *(v35 + 16) = v31;
      *(v35 + 24) = v9;
      v36 = swift_task_alloc();
      *(v0 + 240) = v36;
      *v36 = v0;
      v36[1] = sub_1DCC899B8;

      return sub_1DCB63BBC(v0 + 64, &unk_1DD0E8A90, v35, v33, v34);
    case 4:
      (*(v7 + 8))(v0 + 16, v6);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v45 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v45, qword_1EDE57E00);
      v46 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (!os_log_type_enabled(v46, v47))
      {
        goto LABEL_31;
      }

      v48 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v48);
      v51 = "ComposedRequestFlow is in an error state. Exiting.";
      goto LABEL_30;
    case 5:
      v52 = *(v0 + 24);
      v53 = *(v0 + 32) | *(v0 + 40) | *(v0 + 48);
      if (!(v53 | v9 | v52))
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v75 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v75, qword_1EDE57E00);
        v76 = sub_1DD0DD8EC();
        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_8_5();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = OUTLINED_FUNCTION_50_0();
          OUTLINED_FUNCTION_46(v78);
          OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v79, v80, "ComposedRequestFlow started.");
          OUTLINED_FUNCTION_62();
        }

        v81 = *(v0 + 192);
        v82 = *(v0 + 200);

        sub_1DCC89CA4();
      }

      if (v9 != 2 || v53 | v52)
      {
        goto LABEL_32;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v54 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v54, qword_1EDE57E00);
      v46 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_8_5();
      if (!os_log_type_enabled(v46, v55))
      {
        goto LABEL_31;
      }

      v56 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v56);
      v51 = "ComposedRequestFlow was cancelled. Exiting.";
LABEL_30:
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v49, v50, v51);
      OUTLINED_FUNCTION_62();
LABEL_31:
      v57 = *(v0 + 192);

      static ExecuteResponse.complete()();
LABEL_42:
      OUTLINED_FUNCTION_29();

      return v83();
    default:
LABEL_32:
      v85 = v8;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v58 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v58, qword_1EDE57E00);
      v59 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      OUTLINED_FUNCTION_8_5();
      log = v59;
      if (os_log_type_enabled(v59, v60))
      {
        v61 = OUTLINED_FUNCTION_50_0();
        *v61 = 0;
        _os_log_impl(&dword_1DCAFC000, log, v9, "ComposedRequestFlow called in unexpected state. Exiting.", v61, 2u);
        MEMORY[0x1E12A8390](v61, -1, -1);
      }

      v62 = *(v0 + 192);
      v63 = *(v0 + 200);

      type metadata accessor for ComposedRequestFlow.ComposedRequestFlowError();
      OUTLINED_FUNCTION_1_31();
      swift_getWitnessTable();
      v64 = OUTLINED_FUNCTION_34();
      v66 = v65;
      v67 = v85(v65, v2 + v3, v6);
      *(v66 + 41) = 0;
      OUTLINED_FUNCTION_17_12(v67, v68, v69, v70, v71, v72, v73, v74, v84, v85, log, v64, SHIDWORD(v64), v88, v89, v90, v91, v92);
  }
}

uint64_t sub_1DCC899B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = v2[30];
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  v3[31] = v0;

  if (v0)
  {
    v7 = sub_1DCC89BB4;
  }

  else
  {
    v8 = v3[29];
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 8);

    v7 = sub_1DCC89AD0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCC89AD0()
{
  v13 = v0;
  v1 = v0[28];
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v5, v6, "ComposedRequestFlow successfully sent error dialog. Exiting.");
    OUTLINED_FUNCTION_62();
  }

  v7 = v0[27];
  v8 = v0[25];

  v10 = v7;
  v11 = 1;
  v12 = 4;
  v9 = v7;
  sub_1DCC88D00(&v10);
}

void sub_1DCC89BB4()
{
  v15 = v0;
  v2 = v0[28];
  v1 = v0[29];

  v3 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_8_5();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v6, v7, "ComposedRequestFlow failed to send error dialog. Exiting.");
    OUTLINED_FUNCTION_62();
  }

  v8 = v0[31];
  v9 = v0[27];
  v10 = v0[25];

  v12 = v8;
  v13 = 0;
  v14 = 4;
  v11 = v8;
  sub_1DCC88D00(&v12);
}

void sub_1DCC89CA4()
{
  v0 = sub_1DCC8A7C4();
  if (v1)
  {
    v3 = v0;
    LOBYTE(v4) = 0;
    v6 = 4;
    v2 = v0;
    sub_1DCC88D00(&v3);
  }

  v3 = 1;
  v4 = 0u;
  v5 = 0u;
  v6 = 5;
  sub_1DCC88D00(&v3);
}

uint64_t sub_1DCC8A648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a2 + 120);
  v7 = *(*a2 + 88);
  v8 = *(v7 + 24);
  v9 = *(*a2 + 80);
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DCB4AD3C;

  return v13(a1, a3, v9, v7);
}

uint64_t sub_1DCC8A7C4()
{
  v1 = *v0;
  v2 = type metadata accessor for ParameterClause();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCC8BC94(v0 + qword_1ECCD25E0, v7);
  sub_1DCB541FC(&v7[*(v3 + 28)], v12);
  if (qword_1EDE4F518 != -1)
  {
    swift_once();
  }

  v13 = (v0 + *(*v0 + 168));
  v14 = *v13;
  v15 = v13[1];
  v16 = sub_1DCD3B154();
  if (v16)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DCAFC000, v18, v19, "ComposedRequestFlow found a flow for the input", v20, 2u);
      MEMORY[0x1E12A8390](v20, -1, -1);
    }

    sub_1DCB28430(v12, type metadata accessor for Parse);
    return v16;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v22, qword_1EDE57E00);
    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DCAFC000, v23, v24, "ComposedRequestFlow failed to find flow for input", v25, 2u);
      MEMORY[0x1E12A8390](v25, -1, -1);
    }

    v26 = *(v1 + 80);
    v27 = *(v1 + 88);
    type metadata accessor for ComposedRequestFlow.ComposedRequestFlowError();
    swift_getWitnessTable();
    v21 = swift_allocError();
    *v28 = 1;
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    *(v28 + 40) = 512;
    sub_1DCB28430(v12, type metadata accessor for Parse);
  }

  return v21;
}

void sub_1DCC8AB7C(uint64_t a1)
{
  sub_1DCB192E4(a1, v1);
  v1[40] = 0;
  sub_1DCC88D00(v1);
}

uint64_t sub_1DCC8ABAC(uint64_t a1, void (*a2)(_BYTE *))
{
  sub_1DCB0DF6C(a1, v4);
  a2(v4);
  return sub_1DCC8BC14(v4);
}

void sub_1DCC8ADC8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *v4;
  v8 = *(*v4 + 176);
  swift_beginAccess();
  v9 = *(v7 + 80);
  v10 = *(v7 + 88);
  OUTLINED_FUNCTION_12_21();
  v11 = type metadata accessor for ComposedRequestFlow.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v34, &v4[v8], v11);
  if (v35 == 1)
  {
    v36[0] = *v34;
    v36[1] = *&v34[16];
    switch(a4)
    {
      case 1:
        goto LABEL_5;
      case 2:
        *v34 = a1;
        v34[8] = a2 & 1;
        v35 = 4;
        v27 = a1;
        goto LABEL_11;
      case 3:
        *v34 = 2;
        memset(&v34[8], 0, 32);
        v28 = 5;
        goto LABEL_10;
      default:
        if (a3 != 5 && a3)
        {
          OUTLINED_FUNCTION_12_21();
          type metadata accessor for ComposedRequestFlow.ComposedRequestFlowError();
          OUTLINED_FUNCTION_1_31();
          swift_getWitnessTable();
          v29 = OUTLINED_FUNCTION_34();
          *v30 = a3;
          *(v30 + 41) = 1;
          *v34 = v29;
          v34[8] = 0;
          v28 = 4;
LABEL_10:
          v35 = v28;
        }

        else
        {
LABEL_5:
          sub_1DCB192E4(v36, v34);
          OUTLINED_FUNCTION_66();
          *&v34[32] = *(*&v4[*(v14 + 144)] + 24);
          v35 = 2;
          v15 = *&v34[32];
        }

LABEL_11:
        sub_1DCC88D00(v34);
    }
  }

  (*(v12 + 8))(v34, v11);
  OUTLINED_FUNCTION_12_21();
  type metadata accessor for ComposedRequestFlow.ComposedRequestFlowError();
  OUTLINED_FUNCTION_1_31();
  swift_getWitnessTable();
  v16 = OUTLINED_FUNCTION_34();
  v18 = v17;
  v19 = v13(v17, &v4[v8], v11);
  *(v18 + 41) = 0;
  OUTLINED_FUNCTION_17_12(v19, v20, v21, v22, v23, v24, v25, v26, v31, a2, a3, v16, SHIDWORD(v16), v34[8], *&v34[16], *&v34[24], *&v34[32], v35);
}

uint64_t *sub_1DCC8B078()
{
  v1 = *v0;

  v2 = v0[4];

  OUTLINED_FUNCTION_5_29();
  sub_1DCB28430(v0 + v3, v4);
  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v5 + 120), *(v1 + 80));
  OUTLINED_FUNCTION_66();
  v7 = *(v0 + *(v6 + 128));

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v8 + 136)));
  OUTLINED_FUNCTION_66();
  v10 = *(v0 + *(v9 + 144));

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v11 + 152)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v12 + 160)));
  OUTLINED_FUNCTION_66();
  v14 = *(v0 + *(v13 + 168) + 8);

  OUTLINED_FUNCTION_66();
  v16 = *(v15 + 176);
  v17 = *(v1 + 88);
  v18 = type metadata accessor for ComposedRequestFlow.State();
  OUTLINED_FUNCTION_13_1(v18);
  (*(v19 + 8))(v0 + v16);
  return v0;
}

uint64_t sub_1DCC8B204()
{
  sub_1DCC8B078();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCC8B274(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 5)
  {
    v2 = *a1 + 5;
  }

  switch(v2)
  {
    case 0u:
    case 1u:
      if (*(a1 + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      break;
    case 2u:
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v3 = *(a1 + 32);

      goto LABEL_9;
    case 3u:
    case 4u:
      v3 = *a1;

LABEL_9:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCC8B33C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 40);
  if (v4 >= 5)
  {
    v4 = *a2 + 5;
  }

  switch(v4)
  {
    case 0u:
      v5 = a2[3];
      if (v5 < 0xFFFFFFFF)
      {
        v14 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v14;
      }

      else
      {
        *(a1 + 24) = v5;
        (**(v5 - 8))(a1, a2);
      }

      *(a1 + 40) = 0;
      return a1;
    case 1u:
      v12 = a2[3];
      if (v12 < 0xFFFFFFFF)
      {
        v15 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v15;
      }

      else
      {
        *(a1 + 24) = v12;
        (**(v12 - 8))(a1, a2);
      }

      v8 = 1;
      goto LABEL_17;
    case 2u:
      v9 = a2[3];
      if (v9)
      {
        *(a1 + 24) = v9;
        (**(v9 - 8))(a1, a2);
      }

      else
      {
        v16 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v16;
      }

      v17 = a2[4];
      *(a1 + 32) = v17;
      *(a1 + 40) = 2;
      v18 = v17;
      return a1;
    case 3u:
      v10 = *a2;
      v11 = *a2;
      *a1 = v10;
      v8 = 3;
      goto LABEL_17;
    case 4u:
      v6 = *a2;
      v7 = *a2;
      *a1 = v6;
      *(a1 + 8) = *(a2 + 8);
      v8 = 4;
LABEL_17:
      *(a1 + 40) = v8;
      break;
    default:
      v13 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v13;
      *(a1 + 25) = *(a2 + 25);
      break;
  }

  return a1;
}

uint64_t sub_1DCC8B508(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 5)
    {
      v4 = *a1 + 5;
    }

    switch(v4)
    {
      case 0u:
      case 1u:
        if (*(a1 + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 2u:
        if (*(a1 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 3u:
      case 4u:

        break;
      default:
        break;
    }

    v5 = *(a2 + 40);
    if (v5 >= 5)
    {
      v5 = *a2 + 5;
    }

    switch(v5)
    {
      case 0u:
        v6 = a2[3];
        if (v6 < 0xFFFFFFFF)
        {
          v16 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v16;
        }

        else
        {
          *(a1 + 24) = v6;
          (**(v6 - 8))(a1, a2);
        }

        *(a1 + 40) = 0;
        return a1;
      case 1u:
        v13 = a2[3];
        if (v13 < 0xFFFFFFFF)
        {
          v17 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v17;
        }

        else
        {
          *(a1 + 24) = v13;
          (**(v13 - 8))(a1, a2);
        }

        v9 = 1;
        goto LABEL_27;
      case 2u:
        v10 = a2[3];
        if (v10)
        {
          *(a1 + 24) = v10;
          (**(v10 - 8))(a1, a2);
        }

        else
        {
          v18 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v18;
        }

        v19 = a2[4];
        *(a1 + 32) = v19;
        *(a1 + 40) = 2;
        v20 = v19;
        return a1;
      case 3u:
        v11 = *a2;
        v12 = v11;
        *a1 = v11;
        v9 = 3;
        goto LABEL_27;
      case 4u:
        v7 = *a2;
        v8 = *a2;
        *a1 = v7;
        *(a1 + 8) = *(a2 + 8);
        v9 = 4;
LABEL_27:
        *(a1 + 40) = v9;
        break;
      default:
        v14 = *a2;
        v15 = *(a2 + 1);
        *(a1 + 25) = *(a2 + 25);
        *a1 = v14;
        *(a1 + 16) = v15;
        break;
    }
  }

  return a1;
}

uint64_t sub_1DCC8B75C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 5)
    {
      v4 = *a1 + 5;
    }

    switch(v4)
    {
      case 0u:
      case 1u:
        if (*(a1 + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 2u:
        if (*(a1 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 3u:
      case 4u:

        break;
      default:
        break;
    }

    v5 = *(a2 + 40);
    if (v5 >= 5)
    {
      v5 = *a2 + 5;
    }

    switch(v5)
    {
      case 0u:
        v6 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v6;
        *(a1 + 40) = 0;
        return a1;
      case 1u:
        v9 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v9;
        v7 = 1;
        goto LABEL_19;
      case 2u:
        v8 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v8;
        *(a1 + 32) = *(a2 + 32);
        v7 = 2;
        goto LABEL_19;
      case 3u:
        *a1 = *a2;
        v7 = 3;
        goto LABEL_19;
      case 4u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        v7 = 4;
LABEL_19:
        *(a1 + 40) = v7;
        break;
      default:
        v11 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v11;
        *(a1 + 25) = *(a2 + 25);
        break;
    }
  }

  return a1;
}

uint64_t sub_1DCC8B8C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 41))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 40);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC8B8FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_1DCC8B948(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 5)
  {
    return (*a1 + 5);
  }

  return result;
}

uint64_t sub_1DCC8B964(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

void sub_1DCC8B9A4(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCC8BA40(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCC89238(a1);
}

uint64_t sub_1DCC8BB00(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCC8BB78()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCC8A648(v6, v2, v1);
}

uint64_t sub_1DCC8BC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCC8BC7C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1DCC8BC94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterClause();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCC8BD00()
{
  result = qword_1ECCA2E38;
  if (!qword_1ECCA2E38)
  {
    sub_1DD0DCE2C();
  }

  return result;
}

uint64_t sub_1DCC8BD5C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCC8919C(v3);
}

uint64_t sub_1DCC8BDE4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_13_17(v8);

  return sub_1DCCBEEE0();
}

void sub_1DCC8BEA8(uint64_t a1)
{
  v2 = *(a1 + 41);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (!v2)
  {
    v3 = *(a1 + 40);
    if (v3 >= 5)
    {
      v3 = *a1 + 5;
    }

    switch(v3)
    {
      case 0u:
      case 1u:
        if (*(a1 + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 2u:
        if (*(a1 + 24))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        v4 = *(a1 + 32);

        goto LABEL_12;
      case 3u:
      case 4u:
        v4 = *a1;

LABEL_12:

        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCC8BF8C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 41);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    *a1 = *a2;
    *(a1 + 41) = 1;
  }

  else if (v4)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 26) = *(a2 + 26);
  }

  else
  {
    v5 = *(a2 + 40);
    if (v5 >= 5)
    {
      v5 = *a2 + 5;
    }

    switch(v5)
    {
      case 0u:
        v6 = a2[3];
        if (v6 < 0xFFFFFFFF)
        {
          v16 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v16;
        }

        else
        {
          *(a1 + 24) = v6;
          (**(v6 - 8))(a1, a2);
        }

        *(a1 + 40) = 0;
        break;
      case 1u:
        v14 = a2[3];
        if (v14 < 0xFFFFFFFF)
        {
          v17 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v17;
        }

        else
        {
          *(a1 + 24) = v14;
          (**(v14 - 8))(a1, a2);
        }

        v10 = 1;
        goto LABEL_23;
      case 2u:
        v11 = a2[3];
        if (v11)
        {
          *(a1 + 24) = v11;
          (**(v11 - 8))(a1, a2);
        }

        else
        {
          v18 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v18;
        }

        v19 = a2[4];
        *(a1 + 32) = v19;
        *(a1 + 40) = 2;
        v20 = v19;
        break;
      case 3u:
        v12 = *a2;
        v13 = *a2;
        *a1 = v12;
        v10 = 3;
        goto LABEL_23;
      case 4u:
        v8 = *a2;
        v9 = *a2;
        *a1 = v8;
        *(a1 + 8) = *(a2 + 8);
        v10 = 4;
LABEL_23:
        *(a1 + 40) = v10;
        break;
      default:
        v15 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v15;
        *(a1 + 25) = *(a2 + 25);
        break;
    }

    *(a1 + 41) = 0;
  }

  return a1;
}

uint64_t sub_1DCC8C1A4(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 41);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (!v4)
    {
      v8 = *(a1 + 40);
      if (v8 >= 5)
      {
        v8 = *a1 + 5;
      }

      switch(v8)
      {
        case 0u:
        case 1u:
          if (*(a1 + 24) >= 0xFFFFFFFFuLL)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          break;
        case 2u:
          if (*(a1 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          break;
        case 3u:
        case 4u:

          break;
        default:
          break;
      }
    }

    v5 = *(a2 + 41);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 41) = 1;
    }

    else if (v5)
    {
      v9 = *a2;
      v10 = a2[1];
      *(a1 + 26) = *(a2 + 26);
      *a1 = v9;
      *(a1 + 16) = v10;
    }

    else
    {
      v6 = *(a2 + 40);
      if (v6 >= 5)
      {
        v6 = *a2 + 5;
      }

      switch(v6)
      {
        case 0u:
          v7 = *(a2 + 3);
          if (v7 < 0xFFFFFFFF)
          {
            v20 = a2[1];
            *a1 = *a2;
            *(a1 + 16) = v20;
          }

          else
          {
            *(a1 + 24) = v7;
            (**(v7 - 8))(a1, a2);
          }

          *(a1 + 40) = 0;
          break;
        case 1u:
          v17 = *(a2 + 3);
          if (v17 < 0xFFFFFFFF)
          {
            v21 = a2[1];
            *a1 = *a2;
            *(a1 + 16) = v21;
          }

          else
          {
            *(a1 + 24) = v17;
            (**(v17 - 8))(a1, a2);
          }

          v13 = 1;
          goto LABEL_36;
        case 2u:
          v14 = *(a2 + 3);
          if (v14)
          {
            *(a1 + 24) = v14;
            (**(v14 - 8))(a1, a2);
          }

          else
          {
            v22 = a2[1];
            *a1 = *a2;
            *(a1 + 16) = v22;
          }

          v23 = *(a2 + 4);
          *(a1 + 32) = v23;
          *(a1 + 40) = 2;
          v24 = v23;
          break;
        case 3u:
          v15 = *a2;
          v16 = v15;
          *a1 = v15;
          v13 = 3;
          goto LABEL_36;
        case 4u:
          v11 = *a2;
          v12 = *a2;
          *a1 = v11;
          *(a1 + 8) = *(a2 + 8);
          v13 = 4;
LABEL_36:
          *(a1 + 40) = v13;
          break;
        default:
          v18 = *a2;
          v19 = a2[1];
          *(a1 + 25) = *(a2 + 25);
          *a1 = v18;
          *(a1 + 16) = v19;
          break;
      }

      *(a1 + 41) = 0;
    }
  }

  return a1;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DCC8C474(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 41);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (!v4)
    {
      v8 = *(a1 + 40);
      if (v8 >= 5)
      {
        v8 = *a1 + 5;
      }

      switch(v8)
      {
        case 0u:
        case 1u:
          if (*(a1 + 24) >= 0xFFFFFFFFuLL)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          break;
        case 2u:
          if (*(a1 + 24))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          break;
        case 3u:
        case 4u:

          break;
        default:
          break;
      }
    }

    v5 = *(a2 + 41);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *a1 = *a2;
      *(a1 + 41) = 1;
    }

    else if (v5)
    {
      v9 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v9;
      *(a1 + 26) = *(a2 + 26);
    }

    else
    {
      v6 = *(a2 + 40);
      if (v6 >= 5)
      {
        v6 = *a2 + 5;
      }

      switch(v6)
      {
        case 0u:
          v7 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v7;
          *(a1 + 40) = 0;
          break;
        case 1u:
          v12 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v12;
          v10 = 1;
          goto LABEL_28;
        case 2u:
          v11 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v11;
          *(a1 + 32) = *(a2 + 32);
          v10 = 2;
          goto LABEL_28;
        case 3u:
          *a1 = *a2;
          v10 = 3;
          goto LABEL_28;
        case 4u:
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          v10 = 4;
LABEL_28:
          *(a1 + 40) = v10;
          break;
        default:
          v14 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v14;
          *(a1 + 25) = *(a2 + 25);
          break;
      }

      *(a1 + 41) = 0;
    }
  }

  return a1;
}

uint64_t sub_1DCC8C640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC8C67C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC8C6C8(uint64_t a1)
{
  result = *(a1 + 41);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1DCC8C6E4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 41) = a2;
  return result;
}

void sub_1DCC8C70C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {
    v4 = *a1;
  }

  else
  {
    if (v2)
    {
      return;
    }

    if (*(a1 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
    }

    v3 = *(a1 + 40);

    v4 = *(a1 + 48);
  }
}

uint64_t sub_1DCC8C7A4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 56);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    v6 = *a2;
    v7 = *a2;
    *a1 = v6;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 56) = 1;
  }

  else if (v4)
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 41) = *(a2 + 41);
  }

  else
  {
    v5 = a2[3];
    if (v5)
    {
      *(a1 + 24) = v5;
      (**(v5 - 8))(a1, a2);
    }

    else
    {
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v9;
    }

    v10 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v10;
    v11 = a2[6];
    *(a1 + 48) = v11;
    *(a1 + 56) = 0;

    v12 = v11;
  }

  return a1;
}

uint64_t sub_1DCC8C898(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 56);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else if (!v4)
    {
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v5 = *(a1 + 40);
    }

    v6 = *(a2 + 56);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      v8 = *a2;
      v9 = *a2;
      *a1 = v8;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 56) = 1;
    }

    else if (v6)
    {
      v10 = *a2;
      v11 = *(a2 + 1);
      v12 = *(a2 + 2);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v11;
      *(a1 + 32) = v12;
      *a1 = v10;
    }

    else
    {
      v7 = a2[3];
      if (v7)
      {
        *(a1 + 24) = v7;
        (**(v7 - 8))(a1, a2);
      }

      else
      {
        v13 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v13;
      }

      *(a1 + 32) = a2[4];
      *(a1 + 40) = a2[5];
      v14 = a2[6];
      *(a1 + 48) = v14;
      *(a1 + 56) = 0;

      v15 = v14;
    }
  }

  return a1;
}

uint64_t sub_1DCC8C9E8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 56);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
    }

    else if (!v4)
    {
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v5 = *(a1 + 40);
    }

    v6 = *(a2 + 56);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 56) = 1;
    }

    else
    {
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      if (v6)
      {
        *(a1 + 41) = *(a2 + 41);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = 0;
      }
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for CorrectionsActionOutcome(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CorrectionsActionOutcome(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC8CB64(uint64_t a1)
{
  result = *(a1 + 56);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1DCC8CB80(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t CompositionResolutionFeatureFlags.isEnabled.getter()
{
  v2[3] = &type metadata for CompositionResolutionFeatureFlags;
  v2[4] = sub_1DCC8CC40();
  v0 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

unint64_t sub_1DCC8CC40()
{
  result = qword_1ECCA2F40;
  if (!qword_1ECCA2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2F40);
  }

  return result;
}

uint64_t CompositionResolutionFeatureFlags.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCC8CD3C()
{
  result = qword_1ECCA2F48;
  if (!qword_1ECCA2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2F48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompositionResolutionFeatureFlags(_BYTE *result, int a2, int a3)
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

void sub_1DCC8D13C()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCC8D2F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_state;
  swift_beginAccess();
  sub_1DCC91930(a1, v1 + v3);
  swift_endAccess();
  sub_1DCC8D13C();
}

uint64_t sub_1DCC8D35C()
{
  v1 = OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_state;
  OUTLINED_FUNCTION_156();
  sub_1DCC8D410(v0 + v1, v5);
  if (v6 == 2)
  {
    v2 = v5[0];
    v3 = 11;
  }

  else
  {
    sub_1DCC8D448(v5);
    sub_1DCC8D410(v0 + v1, v5);
    if (v6 == 3)
    {
      v3 = v5[0];
    }

    else
    {
      sub_1DCC8D448(v5);
      v3 = 11;
    }

    v2 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CompositionResolutionResponse();
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

void CompositionResolutionFlow.__allocating_init(from:to:expectMultipleResolutionResults:nlContextUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  CompositionResolutionFlow.init(from:to:expectMultipleResolutionResults:nlContextUpdate:)(a1, a2, a3);
}

void CompositionResolutionFlow.init(from:to:expectMultipleResolutionResults:nlContextUpdate:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  sub_1DD0DCF8C();
}

void CompositionResolutionFlow.__allocating_init(from:to:expectMultipleResolutionResults:nlContextUpdate:targetedRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  CompositionResolutionFlow.init(from:to:expectMultipleResolutionResults:nlContextUpdate:targetedRequest:)(a1, a2, a3);
}

void CompositionResolutionFlow.init(from:to:expectMultipleResolutionResults:nlContextUpdate:targetedRequest:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  sub_1DD0DCF8C();
}

void sub_1DCC8D76C()
{
  v1 = OUTLINED_FUNCTION_26_6();
  v2 = type metadata accessor for Input(v1);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57E00);
  sub_1DCC91788(v0, v9);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC8D980()
{
  OUTLINED_FUNCTION_42();
  v1[37] = v2;
  v1[38] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v1[39] = OUTLINED_FUNCTION_38();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F70, &qword_1DD0E8C70);
  v1[40] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCC8DA48()
{
  v3 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = *(v0 + 304);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC8E080()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 344);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC8E164()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[37];
  sub_1DCB0E9D8((v0 + 27), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  static ExecuteResponse.complete()();
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[39];

  OUTLINED_FUNCTION_29();

  return v5();
}

void sub_1DCC8E1F4(uint64_t a1)
{
  sub_1DCB0DF6C(a1, v1);
  v1[32] = 1;
  sub_1DCC8D2F0(v1);
}

void sub_1DCC8E238(uint64_t a1)
{
  v27[1] = a1;
  v2 = type metadata accessor for FlowSearchResult();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v27[0] = type metadata accessor for Parse(0);
  v7 = OUTLINED_FUNCTION_2(v27[0]);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
  v12 = OUTLINED_FUNCTION_20_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v27 - v16;
  v18 = type metadata accessor for USOParse();
  v19 = OUTLINED_FUNCTION_2(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  OUTLINED_FUNCTION_16();
  v23 = sub_1DD0DC6EC();
  LOWORD(v35) = 1;
  *(&v35 + 1) = v23;
  *v36 = v24;
  *&v36[8] = xmmword_1DD0E8C50;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v25 = *(v1 + 16);
  v28[0] = v35;
  v28[1] = *v36;
  v29[0] = 0xE600000000000000;
  *(v29 + 9) = 0u;
  sub_1DCD3C748(v28, v30);
  sub_1DCB340B4(&v35);
  if (v30[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F90, &qword_1DD0EFFF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F98, &qword_1DD0E8CA0);
    if (swift_dynamicCast())
    {
      if (*(&v32 + 1))
      {
        sub_1DCAFF9E8(&v31, &v34);
        sub_1DCC8E7A0(v17);
      }
    }

    else
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
    }
  }

  else
  {
    sub_1DCB0E9D8(v30, &qword_1ECCA2F80, &unk_1DD0EFEC0);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
  }

  sub_1DCB0E9D8(&v31, &qword_1ECCA2F88, &unk_1DD0E8C90);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v26 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v26, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCC8E7A0(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = sub_1DD0DB4BC();
  v2 = OUTLINED_FUNCTION_9(v1);
  v57[10] = v3;
  v57[11] = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  OUTLINED_FUNCTION_16();
  v57[9] = v8 - v7;
  v9 = sub_1DD0DB5BC();
  v10 = OUTLINED_FUNCTION_9(v9);
  v57[7] = v11;
  v57[8] = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10, v14);
  OUTLINED_FUNCTION_16();
  v57[6] = v16 - v15;
  v58 = sub_1DD0DB66C();
  v17 = OUTLINED_FUNCTION_9(v58);
  v57[5] = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17, v21);
  OUTLINED_FUNCTION_44_0();
  v57[2] = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v57[4] = v57 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FD8, &qword_1DD0FDDF0);
  v27 = OUTLINED_FUNCTION_20_0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27, v30);
  v60 = sub_1DD0DB44C();
  v31 = OUTLINED_FUNCTION_9(v60);
  v57[3] = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31, v35);
  OUTLINED_FUNCTION_44_0();
  v57[1] = v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v57[12] = v57 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  v41 = OUTLINED_FUNCTION_20_0(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41, v44);
  sub_1DD0DC6EC();
  v45 = sub_1DD0DBBEC();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = OUTLINED_FUNCTION_33_1();
  v49 = MEMORY[0x1E12A4230](v48);
  sub_1DD0DBE0C();
  v50 = sub_1DD0DC6EC();
  v52 = v51;
  v53 = sub_1DD0DBB6C();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  MEMORY[0x1E12A41B0](v50, v52, 0x627265566F6ELL, 0xE600000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v56 = swift_allocObject();
  v59 = xmmword_1DD0E15D0;
  *(v56 + 16) = xmmword_1DD0E15D0;
  *(v56 + 32) = v49;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC8EFDC()
{
  OUTLINED_FUNCTION_42();
  v1[6] = v2;
  v1[7] = v0;
  v3 = sub_1DD0DD9BC();
  v1[8] = v3;
  OUTLINED_FUNCTION_99(v3);
  v1[9] = v4;
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_38();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FE8, &qword_1DD0E8E40);
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_38();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FF0, &qword_1DD0E8E48);
  v1[12] = v10;
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

void sub_1DCC8F0F0()
{
  v60 = v0;
  sub_1DCB09970(*(v0 + 48), v0 + 16, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  if (*(v0 + 40))
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v1, v5 ^ 1u, 1, v2);
    if (__swift_getEnumTagSinglePayload(v1, 1, v2) != 1)
    {
      v6 = *(v0 + 56);
      sub_1DCC91890(*(v0 + 88), *(v0 + 112), &qword_1ECCA2FF0, &qword_1DD0E8E48);
      v7 = *(v6 + 24);
      sub_1DD0DC6EC();
      v8 = sub_1DD0DBEAC();

      if (!v8 || (v9 = *(*(v0 + 56) + 32), sub_1DD0DC6EC(), v10 = sub_1DD0DBEAC(), , !v10))
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v30 = *(v0 + 56);
        v31 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v31, qword_1EDE57E00);
        sub_1DD0DCF8C();
      }

      v11 = *(v0 + 96);
      sub_1DCB09970(*(v0 + 112), *(v0 + 104), &qword_1ECCA2FF0, &qword_1DD0E8E48);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 104), *(v0 + 64));
        v32 = swift_task_alloc();
        *(v0 + 120) = v32;
        *v32 = v0;
        v32[1] = sub_1DCC8F7C8;
        v33 = *(v0 + 80);
        v34 = *(v0 + 56);

        sub_1DCC8F95C();
      }

      v12 = **(v0 + 104);
      switch(v12)
      {
        case 10:
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v42 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v42, qword_1EDE57E00);
          v43 = sub_1DD0DD8EC();
          v44 = sub_1DD0DE6CC();
          if (OUTLINED_FUNCTION_15_19(v44))
          {
            v45 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v45);
            OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v46, v47, "#CompositionResolutionFlow search flow was canceled by user");
            OUTLINED_FUNCTION_62();
          }

          OUTLINED_FUNCTION_23_10();

          v41 = 10;
          break;
        case 9:
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v35 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
          v36 = sub_1DD0DD8EC();
          v37 = sub_1DD0DE6CC();
          if (OUTLINED_FUNCTION_15_19(v37))
          {
            v38 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v38);
            OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v39, v40, "#CompositionResolutionFlow search flow is not supported");
            OUTLINED_FUNCTION_62();
          }

          OUTLINED_FUNCTION_23_10();

          v41 = 9;
          break;
        case 2:
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v13 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v13, qword_1EDE57E00);
          v14 = sub_1DD0DD8EC();
          v15 = sub_1DD0DE6CC();
          if (OUTLINED_FUNCTION_15_19(v15))
          {
            v16 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v16);
            OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v17, v18, "#CompositionResolutionFlow search flow returned 0 search result");
            OUTLINED_FUNCTION_62();
          }

          OUTLINED_FUNCTION_23_10();

          v58[0] = MEMORY[0x1E69E7CC0];
          v19 = 2;
LABEL_24:
          v59 = v19;
          sub_1DCC8D2F0(v58);
        default:
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0();
          }

          v48 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v48, qword_1EDE57E00);
          v49 = sub_1DD0DD8EC();
          v50 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = OUTLINED_FUNCTION_151();
            v52 = OUTLINED_FUNCTION_83();
            v58[0] = v52;
            *v51 = 136315138;
            *(v0 + 128) = v12;
            sub_1DCC918DC();
            v53 = sub_1DD0DF18C();
            v55 = sub_1DCB10E9C(v53, v54, v58);

            *(v51 + 4) = v55;
            OUTLINED_FUNCTION_88(&dword_1DCAFC000, v56, v57, "#CompositionResolutionFlow search flow has failed with error: %s");
            __swift_destroy_boxed_opaque_existential_1Tm(v52);
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_92_0();
          }

          OUTLINED_FUNCTION_23_10();
          v41 = 1;
          break;
      }

      LOBYTE(v58[0]) = v41;
      v19 = 3;
      goto LABEL_24;
    }
  }

  else
  {
    sub_1DCB0E9D8(v0 + 16, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v2);
  }

  sub_1DCB0E9D8(*(v0 + 88), &qword_1ECCA2FE8, &qword_1DD0E8E40);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v23 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_15_19(v25))
  {
    v26 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v26);
    OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v27, v28, "#CompositionResolutionFlow failed to cast search result to Result<RREntity, CompositionResolutionError>");
    OUTLINED_FUNCTION_62();
  }

  v29 = *(v0 + 56);

  LOBYTE(v58[0]) = 1;
  v59 = 3;
  sub_1DCC8D2F0(v58);
}

uint64_t sub_1DCC8F7C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCC8F8AC()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[14];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1DCB0E9D8(v1, &qword_1ECCA2FF0, &qword_1DD0E8E48);
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[10];
  v4 = v0[11];

  OUTLINED_FUNCTION_29();

  return v6();
}

void sub_1DCC8F95C()
{
  OUTLINED_FUNCTION_42();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v5 = sub_1DD0DB04C();
  v1[24] = v5;
  OUTLINED_FUNCTION_99(v5);
  v1[25] = v6;
  v8 = *(v7 + 64);
  v1[26] = OUTLINED_FUNCTION_38();
  sub_1DD0DCE2C();
}

void sub_1DCC8FA50()
{
  v9 = v0;
  v2 = v0[20];
  v1 = v0[21];
  sub_1DD0DD9AC();
  v3 = sub_1DD0DBA2C();
  sub_1DD0DBEBC();

  v4 = v0[17];
  v0[30] = v4;
  if (v4)
  {
    v0[6] = v4;
    v5 = v0[29];
    v6 = v0[22];
    v0[9] = v3;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = v0[23];
  v8 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC900A8()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);

  if (v0)
  {
    v6 = sub_1DCC90260;
  }

  else
  {
    v6 = sub_1DCC901D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DCC901D8()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[29];
  v5 = v0[26];

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCC90260()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6EC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[35];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];
  if (v4)
  {
    v9 = OUTLINED_FUNCTION_50_0();
    *v9 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "#CompositionResolutionFlow failed to donate transformed result to SRR", v9, 2u);
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v10 = v0[32];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v11 = v0[29];
  v12 = v0[26];

  OUTLINED_FUNCTION_29();

  return v13();
}

uint64_t sub_1DCC903CC(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCC903EC, 0, 0);
}

uint64_t sub_1DCC903EC()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1DCC904E0;

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCC904E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *(v2 + 40);
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v7 = sub_1DCC90610;
  }

  else
  {
    v8 = *(v3 + 32);

    v7 = sub_1DCC905EC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCC90610()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 48);

  return v2();
}

void *CompositionResolutionFlow.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_1DCB0E9D8(v0 + OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_nlContextUpdate, &unk_1ECCA3270, &qword_1DD0E0F70);
  v4 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_targetedRequest);

  sub_1DCC8D448(v0 + OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_state);
  v5 = *(v0 + OBJC_IVAR____TtC11SiriKitFlow25CompositionResolutionFlow_rrClient);

  return v0;
}

uint64_t CompositionResolutionFlow.__deallocating_deinit()
{
  CompositionResolutionFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCC90744(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCC90808()
{
  OUTLINED_FUNCTION_42();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCC8D980();
}

uint64_t sub_1DCC908A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCC8D35C();
  *a1 = result;
  return result;
}

uint64_t CompositionSearchFlow.findFlowForPommesResponse(_:)(void *a1)
{
  v2 = type metadata accessor for Parse(0);
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_16();
  v9 = (v8 - v7);
  v10 = type metadata accessor for FlowSearchResult();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  OUTLINED_FUNCTION_16();
  v17 = (v16 - v15);
  v18 = sub_1DD0DD73C();
  if (v19)
  {
    *v35 = 261;
    memset(&v35[8], 0, 32);
    *&v35[40] = v18;
    *&v35[48] = v19;
    v35[56] = 0;
    if (qword_1EDE4F518 != -1)
    {
      OUTLINED_FUNCTION_3_0();
    }

    v26[0] = *v35;
    v26[1] = *&v35[16];
    v27[0] = *&v35[32];
    *(v27 + 9) = *&v35[41];
    sub_1DCD3C748(v26, v28);
    sub_1DCB340B4(v35);
    if (v28[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F90, &qword_1DD0EFFF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2F98, &qword_1DD0E8CA0);
      if (swift_dynamicCast())
      {
        if (*(&v30 + 1))
        {
          sub_1DCAFF9E8(&v29, v32);
          v20 = v33;
          v21 = v34;
          __swift_project_boxed_opaque_existential_1(v32, v33);
          *v9 = a1;
          swift_storeEnumTagMultiPayload();
          v22 = *(v21 + 16);
          v23 = a1;
          v22(v9, v20, v21);
          sub_1DCC917E0(v9, type metadata accessor for Parse);
          v24 = *v17;
          sub_1DD0DCF8C();
        }
      }

      else
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }
    }

    else
    {
      sub_1DCB0E9D8(v28, &qword_1ECCA2F80, &unk_1DD0EFEC0);
      v29 = 0u;
      v30 = 0u;
      v31 = 0;
    }

    sub_1DCB0E9D8(&v29, &qword_1ECCA2F88, &unk_1DD0E8C90);
  }

  return 0;
}

uint64_t sub_1DCC90B68()
{
  sub_1DCB0DF6C(v0 + 32, v2);
  type metadata accessor for ActingFlowToFlowShim();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCC90BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FC0, &qword_1DD0E8E08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v17 - v11;
  v13 = sub_1DD0DD9CC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  (*(v3 + 16))(v7, a1, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, v7, v2);
  sub_1DD0DD75C();

  return sub_1DCB0E9D8(v12, &qword_1ECCA2FC0, &qword_1DD0E8E08);
}

unint64_t sub_1DCC90DA8(uint64_t a1)
{
  result = sub_1DCC90DD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCC90DD0()
{
  result = qword_1ECCA2FA0;
  if (!qword_1ECCA2FA0)
  {
    type metadata accessor for CompositionResolutionFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2FA0);
  }

  return result;
}

uint64_t type metadata accessor for CompositionResolutionFlow()
{
  result = qword_1ECCA2FA8;
  if (!qword_1ECCA2FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCC90E7C()
{
  sub_1DCC91108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of CompositionResolutionFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *(*v0 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DCB4AD3C;

  return v8(v3);
}

void sub_1DCC91108()
{
  if (!qword_1EDE49560)
  {
    type metadata accessor for NLContextUpdate();
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE49560);
    }
  }
}

uint64_t destroy for CompositionResolutionFlow.State(uint64_t result)
{
  v2 = *(result + 32);
  if (v2 >= 4)
  {
    v2 = *result + 4;
  }

  switch(v2)
  {
    case 1u:
      if (*(result + 24) >= 0xFFFFFFFFuLL)
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(result);
      }

      break;
    case 2u:
      v4 = *result;

      break;
    case 3u:
      return result;
    default:
      v3 = *result;

      break;
  }

  return result;
}

uint64_t initializeWithCopy for CompositionResolutionFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3 >= 4)
  {
    v3 = *a2 + 4;
  }

  switch(v3)
  {
    case 1u:
      v5 = *(a2 + 24);
      if (v5 < 0xFFFFFFFF)
      {
        v6 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v6;
      }

      else
      {
        *(a1 + 24) = v5;
        (**(v5 - 8))(a1);
      }

      v4 = 1;
      goto LABEL_11;
    case 2u:
      *a1 = *a2;
      *(a1 + 32) = 2;

      return a1;
    case 3u:
      *a1 = *a2;
      v4 = 3;
LABEL_11:
      *(a1 + 32) = v4;
      return a1;
    default:
      *a1 = *a2;
      *(a1 + 32) = 0;
      sub_1DD0DCF8C();
  }
}

uint64_t assignWithCopy for CompositionResolutionFlow.State(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    if (v4 >= 4)
    {
      v4 = *a1 + 4;
    }

    switch(v4)
    {
      case 1u:
        if (*(a1 + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 2u:
        v6 = *a1;

        break;
      case 3u:
        break;
      default:
        v5 = *a1;

        break;
    }

    v7 = *(a2 + 32);
    if (v7 >= 4)
    {
      v7 = *a2 + 4;
    }

    switch(v7)
    {
      case 1u:
        v9 = *(a2 + 24);
        if (v9 < 0xFFFFFFFF)
        {
          v10 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v10;
        }

        else
        {
          *(a1 + 24) = v9;
          (**(v9 - 8))(a1, a2);
        }

        v8 = 1;
        goto LABEL_19;
      case 2u:
        *a1 = *a2;
        *(a1 + 32) = 2;

        return a1;
      case 3u:
        *a1 = *a2;
        v8 = 3;
LABEL_19:
        *(a1 + 32) = v8;
        break;
      default:
        *a1 = *a2;
        *(a1 + 32) = 0;
        sub_1DD0DCF8C();
    }
  }

  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for CompositionResolutionFlow.State(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 32);
    if (v4 >= 4)
    {
      v4 = *a1 + 4;
    }

    switch(v4)
    {
      case 1u:
        if (*(a1 + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        break;
      case 2u:
        v6 = *a1;

        break;
      case 3u:
        break;
      default:
        v5 = *a1;

        break;
    }

    v7 = *(a2 + 32);
    if (v7 >= 4)
    {
      v7 = *a2 + 4;
    }

    switch(v7)
    {
      case 1u:
        v9 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v9;
        v8 = 1;
        break;
      case 2u:
        *a1 = *a2;
        v8 = 2;
        break;
      case 3u:
        *a1 = *a2;
        v8 = 3;
        break;
      default:
        v8 = 0;
        *a1 = *a2;
        break;
    }

    *(a1 + 32) = v8;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for CompositionResolutionFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CompositionResolutionFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCC91660(uint64_t a1)
{
  result = *(a1 + 32);
  if (result >= 4)
  {
    return (*a1 + 4);
  }

  return result;
}

uint64_t sub_1DCC9167C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 32) = a2;
  return result;
}

void sub_1DCC916B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCC94E94();
}

void sub_1DCC916B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCC951BC();
}

void sub_1DCC916C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCC95A4C();
}

void sub_1DCC916C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCC9353C();
}

uint64_t sub_1DCC916E0(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C58, &unk_1DD0E32A0);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 80);

  return sub_1DCE2140C(a1, a2 & 1);
}

void sub_1DCC91768()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCC94B6C();
}

void sub_1DCC91770()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCC94730();
}

void sub_1DCC91778()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCC95D74();
}

void sub_1DCC91780()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCC94334();
}

uint64_t sub_1DCC91788(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return a2;
}

uint64_t sub_1DCC917E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCC91838(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return a2;
}

uint64_t sub_1DCC91890(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_33_1();
  v9(v8);
  return v4;
}

unint64_t sub_1DCC918DC()
{
  result = qword_1ECCA2FF8;
  if (!qword_1ECCA2FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA2FF8);
  }

  return result;
}

uint64_t CompositionResolutionResponse.__allocating_init(entities:error:)(uint64_t a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 16) = a1;
  *(result + 24) = v5;
  return result;
}

void *CompositionResolutionEntity.__allocating_init(id:appBundleId:usoEntity:dataType:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  result[9] = a8;
  result[10] = a9;
  return result;
}

void CompositionResolutionEntity.toRREntity()(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3000, &qword_1DD0E8E50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v17 - v5;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v14 = v1[8];
  v13 = v1[9];
  v15 = v1[10];
  v16 = sub_1DD0DD93C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);

  sub_1DD0DCF8C();
}

uint64_t CompositionResolutionResponse.init(entities:error:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

BOOL static CompositionResolutionResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1DCC0CF54(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  v6 = v5 == 11;
  v7 = v4 == v5;
  if (v4 == 11)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t CompositionResolutionResponse.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CompositionResolutionResponse.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CompositionResolutionEntity.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t CompositionResolutionEntity.appBundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t CompositionResolutionEntity.dataType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t CompositionResolutionEntity.data.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = OUTLINED_FUNCTION_33_1();
  sub_1DCC91E6C(v3, v4);
  return OUTLINED_FUNCTION_33_1();
}

uint64_t CompositionResolutionEntity.description.getter()
{
  v1 = v0;
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](v1[2], v1[3]);
  MEMORY[0x1E12A6780](0x646E75427070610ALL, 0xEE00203A6449656CLL);
  MEMORY[0x1E12A6780](v1[4], v1[5]);
  MEMORY[0x1E12A6780](0x69746E456F73750ALL, 0xEC000000203A7974);
  v2 = v0[6];
  v3 = sub_1DD0DC7BC();
  MEMORY[0x1E12A6780](v3);

  MEMORY[0x1E12A6780](0x707954617461640ALL, 0xEB00000000203A65);
  if (v1[8])
  {
    v4 = v1[7];
    v5 = v1[8];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x1E12A6780](v4, v5);

  return 540697705;
}

void *CompositionResolutionEntity.init(id:appBundleId:usoEntity:dataType:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = a5;
  v9[7] = a6;
  v9[8] = a7;
  v9[9] = a8;
  v9[10] = a9;
  return v9;
}

void sub_1DCC91E6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1DCC91E80(a1, a2);
  }
}

void sub_1DCC91E80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {

    sub_1DD0DCF8C();
  }

  if (a2 >> 62 == 2)
  {
    sub_1DD0DCF8C();
  }
}

uint64_t static CompositionResolutionEntity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = sub_1DD0DC7BC();
  v9 = v8;
  v10 = a2[6];
  if (v7 == sub_1DD0DC7BC() && v9 == v11)
  {
  }

  else
  {
    v13 = sub_1DD0DF0AC();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = a1[8];
  v15 = a2[8];
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = a1[7] == a2[7] && v14 == v15;
    if (!v16 && (sub_1DD0DF0AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v18 = a1[9];
  v17 = a1[10];
  v20 = a2[9];
  v19 = a2[10];
  if (v17 >> 60 == 15)
  {
    if (v19 >> 60 == 15)
    {
      v21 = OUTLINED_FUNCTION_0_26();
      sub_1DCB2C520(v21, v22);
      return 1;
    }

    goto LABEL_31;
  }

  if (v19 >> 60 == 15)
  {
LABEL_31:
    v24 = OUTLINED_FUNCTION_0_26();
    sub_1DCB2C520(v24, v25);
    sub_1DCB2C520(v20, v19);
    return 0;
  }

  v26 = OUTLINED_FUNCTION_0_26();
  v27 = MEMORY[0x1E12A3570](v26);
  sub_1DCB2C520(v20, v19);
  sub_1DCB2C520(v18, v17);
  return v27 & 1;
}

void *CompositionResolutionEntity.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  sub_1DCB2C520(v0[9], v0[10]);
  return v0;
}

uint64_t CompositionResolutionEntity.__deallocating_deinit()
{
  CompositionResolutionEntity.deinit();

  return swift_deallocClassInstance();
}

uint64_t CompositionResolutionError.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCC921EC()
{
  result = qword_1ECCA3008;
  if (!qword_1ECCA3008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA3008);
  }

  return result;
}

unint64_t sub_1DCC92244()
{
  result = qword_1ECCA3010;
  if (!qword_1ECCA3010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3018, &qword_1DD0E8F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA3010);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CompositionResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void *sub_1DCC9242C()
{
  OUTLINED_FUNCTION_66();
  v2 = *(v0 + *(v1 + 104));
  sub_1DCC93338(v2);
  return v2;
}

void sub_1DCC92468()
{
  OUTLINED_FUNCTION_66();
  v2 = *(v1 + 104);
  v3 = *(v0 + v2);
  *(v0 + v2) = v4;
  sub_1DCC22568(v3);
}

uint64_t ConcludingInform.__allocating_init(value:outputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  ConcludingInform.init(value:outputGenerator:)(a1, a2, a3);
  return v9;
}

uint64_t ConcludingInform.init(value:outputGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v3 + *(*v3 + 96), a1, v7);
  v12 = &type metadata for ClosureOutputGenerator;
  v13 = &off_1F5860950;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  (*(v8 + 8))(a1, v7);
  sub_1DCAFF9E8(&v11, v3 + 16);
  OUTLINED_FUNCTION_66();
  *(v3 + *(v9 + 104)) = 0;
  return v3;
}

uint64_t ConcludingInform.__allocating_init(value:outputGenerator:)(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ConcludingInform.init(value:outputGenerator:)(a1, a2);
  return v7;
}

uint64_t ConcludingInform.init(value:outputGenerator:)(uint64_t a1, __int128 *a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  sub_1DCAFF9E8(a2, v2 + 16);
  OUTLINED_FUNCTION_66();
  *(v2 + *(v4 + 104)) = 0;
  return v2;
}

void sub_1DCC92700(uint64_t *a1@<X8>)
{
  v2 = v1;
  OUTLINED_FUNCTION_66();
  v5 = v4;
  v6 = sub_1DCC9242C();
  if (!v6)
  {
    sub_1DCB17CA0(v1 + 16, &v13);
    type metadata accessor for Inform();
    swift_allocObject();
    Inform.init(_:)(&v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3020, &qword_1DD0E90D0);
    swift_allocObject();
    sub_1DD0DCF8C();
  }

  v7 = v6;
  if (v6 == 1)
  {
    v8 = *(*v1 + 96);
    v9 = *(v5 + 80);
    a1[3] = type metadata accessor for Conclude();
    a1[4] = &protocol witness table for Conclude<A>;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for ConcludingInform();
    OUTLINED_FUNCTION_2_39();
    swift_getWitnessTable();
    ActingFlow.conclude(with:)(v2 + v8, boxed_opaque_existential_1Tm);
  }

  else
  {
    a1[3] = type metadata accessor for Abort(0);
    a1[4] = &protocol witness table for Abort;
    v11 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    v12 = *(v5 + 80);
    type metadata accessor for ConcludingInform();
    OUTLINED_FUNCTION_2_39();
    swift_getWitnessTable();
    ActingFlow.abort(reason:)(v7, v11);
    sub_1DCC22568(v7);
  }
}

void sub_1DCC929B8(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = *a1;
  }

  sub_1DCC92468();
}

void *ConcludingInform.deinit()
{
  v1 = *v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 96));
  OUTLINED_FUNCTION_66();
  sub_1DCC22568(*(v0 + *(v3 + 104)));
  return v0;
}

uint64_t ConcludingInform.__deallocating_deinit()
{
  ConcludingInform.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCC92B64()
{
  OUTLINED_FUNCTION_0_27();
  v0[17] = sub_1DCC932E0;
  v0[18] = 0;
  v0[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3130, &unk_1DD0E9170);
  v0[16] = sub_1DCBF7DC0(&qword_1ECCA3138, &qword_1ECCA3130, &unk_1DD0E9170);
  OUTLINED_FUNCTION_8_30();
}

uint64_t sub_1DCC92C4C(char a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = nullsub_1;
  *(v1 + 88) = 0;
  *(v1 + 136) = j_nullsub_1;
  *(v1 + 144) = 0;
  *(v1 + 120) = &type metadata for NoopFlow;
  *(v1 + 128) = &off_1EECFDA08;
  *(v1 + 96) = a1;
  sub_1DD0DEC1C();

  OUTLINED_FUNCTION_1_32();
  v2 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v2);

  OUTLINED_FUNCTION_6_25();
  return OUTLINED_FUNCTION_5_30(v3, v4, v5, v6, v7, v8, v9, v10, v12, 0, 0xE000000000000000);
}

void sub_1DCC92D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = OUTLINED_FUNCTION_0_27();
  v4[17] = v7;
  v4[18] = 0;
  v4[15] = v8(0, v6);
  v4[16] = a4;
  OUTLINED_FUNCTION_8_30();
}

uint64_t sub_1DCC92E08(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ConcludingInform.__allocating_init(value:outputGenerator:)()
{
  return (*(v0 + 136))();
}

{
  return (*(v0 + 144))();
}

void sub_1DCC92F14(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

void **sub_1DCC92F2C(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v7 = v4;
    }

    *a1 = v4;
  }

  else if (v4 < 0xFFFFFFFF)
  {

    *a1 = *a2;
  }

  else
  {
    v5 = v4;
    v6 = *a1;
    *a1 = v4;
  }

  return a1;
}

void **sub_1DCC92FBC(void **a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    goto LABEL_6;
  }

  if (v4 < 0xFFFFFFFF)
  {

LABEL_6:
    *a1 = v4;
    return a1;
  }

  *a1 = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for AttachmentOption(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AttachmentOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1DCC930D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1DCC93148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = *(v4 + 136);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v4 + 136) = a4;
  *(v4 + 144) = v8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCC931B4(uint64_t a1, char a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = a1;
  v8 = a2 & 1;
  a3(&v7);
  return a5(&v7);
}

uint64_t sub_1DCC93258(char a1, void (*a2)(char *), uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = a1;
  a2(&v6);
  return a4(&v6);
}

uint64_t sub_1DCC932E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 9);
  return nullsub_1(*a1);
}

id sub_1DCC93338(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1DCC933F0()
{
  v1 = *(*v0 + 80);
  type metadata accessor for ConditionalFlow();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

void sub_1DCC9347C(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

void sub_1DCC9353C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_14_23();
  v11 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v11, v12, v13, v14);
  OUTLINED_FUNCTION_47_7();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E48, &qword_1DD0E24D0);
  if (!OUTLINED_FUNCTION_34_12() || v49 == 1)
  {
    OUTLINED_FUNCTION_48_8();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    v17 = OUTLINED_FUNCTION_59_0(v16, qword_1EDE57E00);
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v18))
    {
      OUTLINED_FUNCTION_43_0();
      v50 = OUTLINED_FUNCTION_24_14();
      *v15 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3188, &unk_1DD0E9330);
      v19 = OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_62_4(v19, v20);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v51 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v21 = OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_62_4(v21, v22);
      OUTLINED_FUNCTION_148();
      *(v15 + 14) = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v23, v24, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v26 = *(v25 + 16);
    v27 = OUTLINED_FUNCTION_10_23();
    v28(v27);
    v29 = OUTLINED_FUNCTION_8_31();
    v32 = __swift_storeEnumTagSinglePayload(v29, v30, v31, v16);
    OUTLINED_FUNCTION_44_6(v32, v33, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v34)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v35 = sub_1DD0DD8EC();
      v36 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v36))
      {
        OUTLINED_FUNCTION_83();
        v50 = OUTLINED_FUNCTION_54();
        *v48 = 136315650;
        v37 = OUTLINED_FUNCTION_45_6();
        sub_1DCB10E9C(v37, v38, &v50);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v39 = OUTLINED_FUNCTION_21_7();
        *(v48 + 24) = sub_1DCB10E9C(v39, v40, v41);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v42, v43, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v44 = OUTLINED_FUNCTION_13_18();
      v45(v44);
    }

    v46 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v46, v47);
  }

  v51 = v49;
  v1(&v51);
  sub_1DCC99E48(v49);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC93880(uint64_t a1, void (*a2)(id *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v40 - v11;
  sub_1DCB09910(a1, v44, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E10, &qword_1DD0E23A0);
  if (!swift_dynamicCast())
  {
    v17 = v14;
    v18 = v13;
    v41 = v12;
    v42 = 0;
    v16 = 0;
    v15 = 65280;
    v43 = -256;
    goto LABEL_6;
  }

  v15 = v43;
  v16 = v42;
  if (HIBYTE(v43) > 0xFEu)
  {
    v17 = v14;
    v18 = v13;
    v41 = v12;
LABEL_6:
    sub_1DCB96104(v16, v15);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    v20 = __swift_project_value_buffer(v19, qword_1EDE57E00);
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44[0] = v24;
      *v23 = 136315394;
      v45 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3168, &qword_1DD0E92F8);
      v25 = sub_1DD0DE02C();
      v27 = sub_1DCB10E9C(v25, v26, v44);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v45 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v28 = sub_1DD0DE02C();
      v30 = sub_1DCB10E9C(v28, v29, v44);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1DCAFC000, v21, v22, "Expected exitValue of type %s but instead got value of type %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v24, -1, -1);
      MEMORY[0x1E12A8390](v23, -1, -1);
    }

    v31 = *(v19 - 8);
    v32 = v41;
    (*(v31 + 16))(v41, v20, v19);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v19);
    sub_1DCB09910(v32, v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v19) == 1)
    {
      sub_1DCB0E9D8(v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v44[0] = v36;
        *v35 = 136315650;
        v37 = sub_1DD0DEC3C();
        v39 = sub_1DCB10E9C(v37, v38, v44);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2048;
        *(v35 + 14) = 446;
        *(v35 + 22) = 2080;
        *(v35 + 24) = sub_1DCB10E9C(0xD00000000000004CLL, 0x80000001DD1167C0, v44);
        _os_log_impl(&dword_1DCAFC000, v33, v34, "FatalError at %s:%lu - %s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v36, -1, -1);
        MEMORY[0x1E12A8390](v35, -1, -1);
      }

      (*(v31 + 8))(v9, v19);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004CLL, 0x80000001DD1167C0);
  }

  v45 = v42;
  v46 = v43;
  a2(&v45);
  sub_1DCBB12E0(v45, v46, SHIBYTE(v46));
}

void sub_1DCC93DE8(uint64_t a1, void (*a2)(__int128 *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v38 - v11;
  sub_1DCB09910(a1, v41, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  if (!swift_dynamicCast())
  {
    v16 = v13;
    v39 = v12;
    v15 = 0;
    v40 = xmmword_1DD0E9180;
    v14 = 0xF000000000000007;
    goto LABEL_6;
  }

  v15 = *(&v40 + 1);
  v14 = v40;
  if ((~v40 & 0xF000000000000007) == 0)
  {
    v16 = v13;
    v39 = v12;
LABEL_6:
    sub_1DCC99DF4(v14, v15);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD0DD8FC();
    v18 = __swift_project_value_buffer(v17, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41[0] = v22;
      *v21 = 136315394;
      *&v42 = &type metadata for AppResolutionFlowResult;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3160, &unk_1DD0E92E8);
      v23 = sub_1DD0DE02C();
      v25 = sub_1DCB10E9C(v23, v24, v41);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      *&v42 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v26 = sub_1DD0DE02C();
      v28 = sub_1DCB10E9C(v26, v27, v41);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_1DCAFC000, v19, v20, "Expected exitValue of type %s but instead got value of type %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v22, -1, -1);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    v29 = *(v17 - 8);
    v30 = v39;
    (*(v29 + 16))(v39, v18, v17);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v17);
    sub_1DCB09910(v30, v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v17) == 1)
    {
      sub_1DCB0E9D8(v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v31 = sub_1DD0DD8EC();
      v32 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v41[0] = v34;
        *v33 = 136315650;
        v35 = sub_1DD0DEC3C();
        v37 = sub_1DCB10E9C(v35, v36, v41);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2048;
        *(v33 + 14) = 446;
        *(v33 + 22) = 2080;
        *(v33 + 24) = sub_1DCB10E9C(0xD00000000000004CLL, 0x80000001DD1167C0, v41);
        _os_log_impl(&dword_1DCAFC000, v31, v32, "FatalError at %s:%lu - %s", v33, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v34, -1, -1);
        MEMORY[0x1E12A8390](v33, -1, -1);
      }

      (*(v29 + 8))(v9, v17);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004CLL, 0x80000001DD1167C0);
  }

  v42 = v40;
  a2(&v42);
  sub_1DCC2315C(v42, *(&v42 + 1));
}

void sub_1DCC94334()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_14_23();
  v10 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_47_7();
  v15 = MEMORY[0x1E69E7CA0];
  if (!swift_dynamicCast())
  {
    v51 = v14;
    memset(v52, 0, sizeof(v52));
    sub_1DCB0E9D8(v52, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    v17 = OUTLINED_FUNCTION_59_0(v16, qword_1EDE57E00);
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v18))
    {
      OUTLINED_FUNCTION_43_0();
      *&v54[0] = OUTLINED_FUNCTION_24_14();
      dword_1ECCA3CE0 = 136315394;
      v53 = v15 + 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA31B0, qword_1DD0E9370);
      v19 = sub_1DD0DE02C();
      v21 = sub_1DCB10E9C(v19, v20, v54);

      *algn_1ECCA3CE4 = v21;
      word_1ECCA3CEC = 2080;
      v53 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v22 = sub_1DD0DE02C();
      v24 = sub_1DCB10E9C(v22, v23, v54);

      *algn_1ECCA3CEE = v24;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v25, v26, "Expected exitValue of type %s but instead got value of type %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_0_1();
    v28 = v27;
    v30 = *(v29 + 16);
    v31 = OUTLINED_FUNCTION_10_23();
    v32(v31);
    v33 = OUTLINED_FUNCTION_8_31();
    v36 = __swift_storeEnumTagSinglePayload(v33, v34, v35, v16);
    OUTLINED_FUNCTION_44_6(v36, v37, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v38)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v39 = sub_1DD0DD8EC();
      v40 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v40))
      {
        OUTLINED_FUNCTION_83();
        *&v54[0] = OUTLINED_FUNCTION_54();
        *v2 = 136315650;
        v41 = OUTLINED_FUNCTION_45_6();
        v43 = sub_1DCB10E9C(v41, v42, v54);

        *(v2 + 4) = v43;
        *(v2 + 12) = 2048;
        *(v2 + 14) = 446;
        *(v2 + 22) = 2080;
        v44 = OUTLINED_FUNCTION_21_7();
        *(v2 + 24) = sub_1DCB10E9C(v44, v45, v46);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v47, v48, "FatalError at %s:%lu - %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_92_0();
        OUTLINED_FUNCTION_52();
      }

      (*(v28 + 8))(v0, v16);
    }

    v49 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v49, v50);
  }

  sub_1DCB20B30(v52, v54);
  v1(v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC94730()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v66 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3198, &qword_1DD0E9348);
  v15 = OUTLINED_FUNCTION_20_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E80, &qword_1DD0E9350);
  v22 = OUTLINED_FUNCTION_2(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v66 - v26;
  sub_1DCB09910(v4, v70, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  OUTLINED_FUNCTION_11_23();
  if (!swift_dynamicCast())
  {
    v67 = v28;
    v68 = v13;
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    sub_1DCB0E9D8(v20, &qword_1ECCA3198, &qword_1DD0E9348);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v32 = sub_1DD0DD8FC();
    v33 = OUTLINED_FUNCTION_59_0(v32, qword_1EDE57E00);
    v34 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v34))
    {
      OUTLINED_FUNCTION_43_0();
      v35 = OUTLINED_FUNCTION_24_14();
      v69 = v21;
      v70[0] = v35;
      *v28 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA31A0, &qword_1DD0E9358);
      v36 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_61_7(v36, v37);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v69 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v38 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_61_7(v38, v39);
      OUTLINED_FUNCTION_148();
      *(v28 + 14) = &unk_1DD0E4F80;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v40, v41, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v43 = *(v42 + 16);
    v44 = v68;
    v45 = OUTLINED_FUNCTION_10_23();
    v46(v45);
    v47 = OUTLINED_FUNCTION_8_31();
    v50 = __swift_storeEnumTagSinglePayload(v47, v48, v49, v32);
    OUTLINED_FUNCTION_44_6(v50, v51, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v52)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v53 = sub_1DD0DD8EC();
      v54 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v54))
      {
        OUTLINED_FUNCTION_83();
        v70[0] = OUTLINED_FUNCTION_54();
        *v44 = 136315650;
        v55 = OUTLINED_FUNCTION_45_6();
        sub_1DCB10E9C(v55, v56, v70);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v57 = OUTLINED_FUNCTION_21_7();
        *(v44 + 3) = sub_1DCB10E9C(v57, v58, v59);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v60, v61, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v62 = OUTLINED_FUNCTION_13_18();
      v63(v62);
    }

    v64 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v64, v65);
  }

  v29 = OUTLINED_FUNCTION_8_31();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v21);
  sub_1DCBF55E4(v20, v27);
  v2(v27);
  sub_1DCB0E9D8(v27, &qword_1ECCA1E80, &qword_1DD0E9350);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC94B6C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_14_23();
  v10 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v10, v11, v12, v13);
  OUTLINED_FUNCTION_47_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E60, &qword_1DD0E2548);
  if (!OUTLINED_FUNCTION_16_13())
  {
    v23 = OUTLINED_FUNCTION_9_21();
    goto LABEL_6;
  }

  v14 = OUTLINED_FUNCTION_20_13();
  if (!v18 & v17)
  {
    OUTLINED_FUNCTION_27_11();
LABEL_6:
    sub_1DCB96104(v23, v24);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v25 = sub_1DD0DD8FC();
    v26 = OUTLINED_FUNCTION_59_0(v25, qword_1EDE57E00);
    v27 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v27))
    {
      OUTLINED_FUNCTION_43_0();
      v28 = OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_53_3(v28);
      OUTLINED_FUNCTION_52_7(4.8151e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3190, &qword_1DD0E9340);
      v29 = OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_41_10(v29, v30);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v31 = OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_41_10(v31, v32);
      OUTLINED_FUNCTION_148();
      *algn_1ECCA3CEE = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v33, v34, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v36 = *(v35 + 16);
    v37 = OUTLINED_FUNCTION_10_23();
    v38(v37);
    v39 = OUTLINED_FUNCTION_8_31();
    v42 = __swift_storeEnumTagSinglePayload(v39, v40, v41, v25);
    OUTLINED_FUNCTION_44_6(v42, v43, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v18)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v44 = sub_1DD0DD8EC();
      v45 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v45))
      {
        OUTLINED_FUNCTION_83();
        v46 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54_8(v46);
        *v58 = 136315650;
        v47 = OUTLINED_FUNCTION_45_6();
        OUTLINED_FUNCTION_58_5(v47, v48);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v49 = OUTLINED_FUNCTION_21_7();
        *(v58 + 24) = sub_1DCB10E9C(v49, v50, v51);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v52, v53, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v54 = OUTLINED_FUNCTION_13_18();
      v55(v54);
    }

    v56 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v56, v57);
  }

  v19 = OUTLINED_FUNCTION_19_14(v14, v15, v16);
  v1(v19);
  v20 = OUTLINED_FUNCTION_36_14();
  sub_1DCBB12E0(v20, v21, v22);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC94E94()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_14_23();
  v10 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v10, v11, v12, v13);
  OUTLINED_FUNCTION_47_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D58, &qword_1DD0E1F88);
  if (!OUTLINED_FUNCTION_16_13())
  {
    v23 = OUTLINED_FUNCTION_9_21();
    goto LABEL_6;
  }

  v14 = OUTLINED_FUNCTION_20_13();
  if (!v18 & v17)
  {
    OUTLINED_FUNCTION_27_11();
LABEL_6:
    sub_1DCB960DC(v23, v24);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v25 = sub_1DD0DD8FC();
    v26 = OUTLINED_FUNCTION_59_0(v25, qword_1EDE57E00);
    v27 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v27))
    {
      OUTLINED_FUNCTION_43_0();
      v28 = OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_53_3(v28);
      OUTLINED_FUNCTION_52_7(4.8151e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3150, &unk_1DD0E92D0);
      v29 = OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_41_10(v29, v30);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v31 = OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_41_10(v31, v32);
      OUTLINED_FUNCTION_148();
      *algn_1ECCA3CEE = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v33, v34, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v36 = *(v35 + 16);
    v37 = OUTLINED_FUNCTION_10_23();
    v38(v37);
    v39 = OUTLINED_FUNCTION_8_31();
    v42 = __swift_storeEnumTagSinglePayload(v39, v40, v41, v25);
    OUTLINED_FUNCTION_44_6(v42, v43, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v18)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v44 = sub_1DD0DD8EC();
      v45 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v45))
      {
        OUTLINED_FUNCTION_83();
        v46 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54_8(v46);
        *v58 = 136315650;
        v47 = OUTLINED_FUNCTION_45_6();
        OUTLINED_FUNCTION_58_5(v47, v48);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v49 = OUTLINED_FUNCTION_21_7();
        *(v58 + 24) = sub_1DCB10E9C(v49, v50, v51);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v52, v53, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v54 = OUTLINED_FUNCTION_13_18();
      v55(v54);
    }

    v56 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v56, v57);
  }

  v19 = OUTLINED_FUNCTION_19_14(v14, v15, v16);
  v1(v19);
  v20 = OUTLINED_FUNCTION_36_14();
  sub_1DCC334C8(v20, v21, v22);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC951BC()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_14_23();
  v10 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v10, v11, v12, v13);
  OUTLINED_FUNCTION_47_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D78, &qword_1DD0E20B8);
  if (!OUTLINED_FUNCTION_16_13())
  {
    v23 = OUTLINED_FUNCTION_9_21();
    goto LABEL_6;
  }

  v14 = OUTLINED_FUNCTION_20_13();
  if (!v18 & v17)
  {
    OUTLINED_FUNCTION_27_11();
LABEL_6:
    sub_1DCB960DC(v23, v24);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v25 = sub_1DD0DD8FC();
    v26 = OUTLINED_FUNCTION_59_0(v25, qword_1EDE57E00);
    v27 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v27))
    {
      OUTLINED_FUNCTION_43_0();
      v28 = OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_53_3(v28);
      OUTLINED_FUNCTION_52_7(4.8151e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3158, &qword_1DD0E92E0);
      v29 = OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_41_10(v29, v30);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v31 = OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_41_10(v31, v32);
      OUTLINED_FUNCTION_148();
      *algn_1ECCA3CEE = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v33, v34, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v36 = *(v35 + 16);
    v37 = OUTLINED_FUNCTION_10_23();
    v38(v37);
    v39 = OUTLINED_FUNCTION_8_31();
    v42 = __swift_storeEnumTagSinglePayload(v39, v40, v41, v25);
    OUTLINED_FUNCTION_44_6(v42, v43, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v18)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v44 = sub_1DD0DD8EC();
      v45 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v45))
      {
        OUTLINED_FUNCTION_83();
        v46 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54_8(v46);
        *v58 = 136315650;
        v47 = OUTLINED_FUNCTION_45_6();
        OUTLINED_FUNCTION_58_5(v47, v48);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v49 = OUTLINED_FUNCTION_21_7();
        *(v58 + 24) = sub_1DCB10E9C(v49, v50, v51);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v52, v53, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v54 = OUTLINED_FUNCTION_13_18();
      v55(v54);
    }

    v56 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v56, v57);
  }

  v19 = OUTLINED_FUNCTION_19_14(v14, v15, v16);
  v1(v19);
  v20 = OUTLINED_FUNCTION_36_14();
  sub_1DCC334C8(v20, v21, v22);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC954E4(uint64_t a1, void (*a2)(id *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v40 - v11;
  sub_1DCB09910(a1, v44, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1ECCA3CE0, &unk_1DD0E4F80);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F58, &qword_1DD0E2B80);
  if (!swift_dynamicCast())
  {
    v17 = v14;
    v18 = v13;
    v41 = v12;
    v42 = 0;
    v16 = 0;
    v15 = 65280;
    v43 = -256;
    goto LABEL_6;
  }

  v15 = v43;
  v16 = v42;
  if (HIBYTE(v43) > 0xFEu)
  {
    v17 = v14;
    v18 = v13;
    v41 = v12;
LABEL_6:
    sub_1DCB96104(v16, v15);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    v20 = __swift_project_value_buffer(v19, qword_1EDE57E00);
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44[0] = v24;
      *v23 = 136315394;
      v45 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3178, &unk_1DD0E9310);
      v25 = sub_1DD0DE02C();
      v27 = sub_1DCB10E9C(v25, v26, v44);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v45 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v28 = sub_1DD0DE02C();
      v30 = sub_1DCB10E9C(v28, v29, v44);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1DCAFC000, v21, v22, "Expected exitValue of type %s but instead got value of type %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v24, -1, -1);
      MEMORY[0x1E12A8390](v23, -1, -1);
    }

    v31 = *(v19 - 8);
    v32 = v41;
    (*(v31 + 16))(v41, v20, v19);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v19);
    sub_1DCB09910(v32, v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v19) == 1)
    {
      sub_1DCB0E9D8(v9, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v44[0] = v36;
        *v35 = 136315650;
        v37 = sub_1DD0DEC3C();
        v39 = sub_1DCB10E9C(v37, v38, v44);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2048;
        *(v35 + 14) = 446;
        *(v35 + 22) = 2080;
        *(v35 + 24) = sub_1DCB10E9C(0xD00000000000004CLL, 0x80000001DD1167C0, v44);
        _os_log_impl(&dword_1DCAFC000, v33, v34, "FatalError at %s:%lu - %s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v36, -1, -1);
        MEMORY[0x1E12A8390](v35, -1, -1);
      }

      (*(v31 + 8))(v9, v19);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004CLL, 0x80000001DD1167C0);
  }

  v45 = v42;
  v46 = v43;
  a2(&v45);
  sub_1DCBB12E0(v45, v46, SHIBYTE(v46));
}

void sub_1DCC95A4C()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = OUTLINED_FUNCTION_20_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_14_23();
  v10 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v10, v11, v12, v13);
  OUTLINED_FUNCTION_47_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DE8, &qword_1DD0E2268);
  if (!OUTLINED_FUNCTION_16_13())
  {
    v23 = OUTLINED_FUNCTION_9_21();
    goto LABEL_6;
  }

  v14 = OUTLINED_FUNCTION_20_13();
  if (!v18 & v17)
  {
    OUTLINED_FUNCTION_27_11();
LABEL_6:
    sub_1DCC99E18(v23, v24);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v25 = sub_1DD0DD8FC();
    v26 = OUTLINED_FUNCTION_59_0(v25, qword_1EDE57E00);
    v27 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v27))
    {
      OUTLINED_FUNCTION_43_0();
      v28 = OUTLINED_FUNCTION_24_14();
      OUTLINED_FUNCTION_53_3(v28);
      OUTLINED_FUNCTION_52_7(4.8151e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3180, &unk_1DD0E9320);
      v29 = OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_41_10(v29, v30);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v31 = OUTLINED_FUNCTION_42_9();
      OUTLINED_FUNCTION_41_10(v31, v32);
      OUTLINED_FUNCTION_148();
      *algn_1ECCA3CEE = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v33, v34, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v36 = *(v35 + 16);
    v37 = OUTLINED_FUNCTION_10_23();
    v38(v37);
    v39 = OUTLINED_FUNCTION_8_31();
    v42 = __swift_storeEnumTagSinglePayload(v39, v40, v41, v25);
    OUTLINED_FUNCTION_44_6(v42, v43, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v18)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v44 = sub_1DD0DD8EC();
      v45 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v45))
      {
        OUTLINED_FUNCTION_83();
        v46 = OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_54_8(v46);
        *v58 = 136315650;
        v47 = OUTLINED_FUNCTION_45_6();
        OUTLINED_FUNCTION_58_5(v47, v48);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v49 = OUTLINED_FUNCTION_21_7();
        *(v58 + 24) = sub_1DCB10E9C(v49, v50, v51);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v52, v53, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v54 = OUTLINED_FUNCTION_13_18();
      v55(v54);
    }

    v56 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v56, v57);
  }

  v19 = OUTLINED_FUNCTION_19_14(v14, v15, v16);
  v1(v19);
  v20 = OUTLINED_FUNCTION_36_14();
  sub_1DCC99E2C(v20, v21, v22);
  OUTLINED_FUNCTION_49();
}

void sub_1DCC95D74()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_15_20();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = OUTLINED_FUNCTION_20_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_14_23();
  v11 = OUTLINED_FUNCTION_11_23();
  sub_1DCB09910(v11, v12, v13, v14);
  OUTLINED_FUNCTION_47_7();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1EB0, &qword_1DD0E9360);
  if (!OUTLINED_FUNCTION_34_12() || (v49 & 0xF000000000000006) == 0xB000000000000006)
  {
    OUTLINED_FUNCTION_48_8();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v16 = sub_1DD0DD8FC();
    v17 = OUTLINED_FUNCTION_59_0(v16, qword_1EDE57E00);
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v18))
    {
      OUTLINED_FUNCTION_43_0();
      v50 = OUTLINED_FUNCTION_24_14();
      *v15 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA31A8, &qword_1DD0E9368);
      v19 = OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_62_4(v19, v20);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_12_23();
      v51 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3148, &unk_1DD0E92C0);
      v21 = OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_62_4(v21, v22);
      OUTLINED_FUNCTION_148();
      *(v15 + 14) = v2;
      OUTLINED_FUNCTION_18_13(&dword_1DCAFC000, v23, v24, "Expected exitValue of type %s but instead got value of type %s");
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_3_36();
    v26 = *(v25 + 16);
    v27 = OUTLINED_FUNCTION_10_23();
    v28(v27);
    v29 = OUTLINED_FUNCTION_8_31();
    v32 = __swift_storeEnumTagSinglePayload(v29, v30, v31, v16);
    OUTLINED_FUNCTION_44_6(v32, v33, &unk_1ECCA7470, &qword_1DD0E16E0);
    OUTLINED_FUNCTION_6_26();
    if (v34)
    {
      sub_1DCB0E9D8(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v35 = sub_1DD0DD8EC();
      v36 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_61_1(v36))
      {
        OUTLINED_FUNCTION_83();
        v50 = OUTLINED_FUNCTION_54();
        *v48 = 136315650;
        v37 = OUTLINED_FUNCTION_45_6();
        sub_1DCB10E9C(v37, v38, &v50);
        OUTLINED_FUNCTION_92_1();
        OUTLINED_FUNCTION_1_33();
        v39 = OUTLINED_FUNCTION_21_7();
        *(v48 + 24) = sub_1DCB10E9C(v39, v40, v41);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v42, v43, "FatalError at %s:%lu - %s");
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_52();
      }

      v44 = OUTLINED_FUNCTION_13_18();
      v45(v44);
    }

    v46 = OUTLINED_FUNCTION_21_7();
    static SiriKitLifecycle._logCrashToEventBus(_:)(v46, v47);
  }

  v51 = v49;
  v1(&v51);
  sub_1DCC99E58(v49);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCC960C8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCC96128(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *sub_1DCC961A4(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(v6 + 64);
  if (v8)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (*(v6 + 80) > 7u || (*(v6 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (v8)
  {
    if (!__swift_getEnumTagSinglePayload(a2, *(v6 + 84), v5))
    {
LABEL_33:
      (*(v7 + 16))(a1, a2, v5);
      if (!v8)
      {
        *(a1 + v9) = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(a2 + v9))
    {
      goto LABEL_33;
    }

    v13 = (*(a2 + v9) - 1) << (8 * v9);
    if (v9 > 3)
    {
      v13 = 0;
    }

    if (v9)
    {
      v14 = v9 <= 3 ? v9 : 4;
      switch(v14)
      {
        case 2:
          v15 = *a2;
          break;
        case 3:
          v15 = *a2 | (*(a2 + 2) << 16);
          break;
        case 4:
          v15 = *a2;
          break;
        default:
          v15 = *a2;
          break;
      }
    }

    else
    {
      v15 = 0;
    }

    if ((v15 | v13) == 0xFFFFFFFF)
    {
      goto LABEL_33;
    }
  }

  return memcpy(a1, a2, v10);
}

uint64_t sub_1DCC9636C(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5)
  {
    v11 = *(v3 - 8);
    result = __swift_getEnumTagSinglePayload(a1, v5, v3);
    v4 = v11;
    if (result)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!*(a1 + v6))
  {
    goto LABEL_17;
  }

  v8 = (*(a1 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v8 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  v9 = v6 | v8;
  result = (v9 + 1);
  if (v9 == -1)
  {
LABEL_17:
    v10 = *(v4 + 8);

    return v10(a1, v3);
  }

  return result;
}

_BYTE *sub_1DCC964B4(_BYTE *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7)
  {
    if (!__swift_getEnumTagSinglePayload(a2, v7, v5))
    {
LABEL_24:
      (*(v6 + 16))(a1, a2, v5);
      if (!v7)
      {
        a1[v8] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(a2 + v8))
    {
      goto LABEL_24;
    }

    v9 = (*(a2 + v8) - 1) << (8 * v8);
    if (v8 > 3)
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v8 <= 3 ? *(v6 + 64) : 4;
      switch(v10)
      {
        case 2:
          v11 = *a2;
          break;
        case 3:
          v11 = *a2 | (*(a2 + 2) << 16);
          break;
        case 4:
          v11 = *a2;
          break;
        default:
          v11 = *a2;
          break;
      }
    }

    else
    {
      v11 = 0;
    }

    if ((v11 | v9) == 0xFFFFFFFF)
    {
      goto LABEL_24;
    }
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  return memcpy(a1, a2, v12);
}

unsigned __int16 *sub_1DCC96634(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (!v7)
  {
    v11 = 8 * v8;
    if (*(a1 + v8))
    {
      v12 = (*(a1 + v8) - 1) << v11;
      if (v8 > 3)
      {
        v12 = 0;
      }

      if (v8)
      {
        v13 = v8 <= 3 ? *(v6 + 64) : 4;
        switch(v13)
        {
          case 2:
            v14 = *a1;
            break;
          case 3:
            v14 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v14 = *a1;
            break;
          default:
            v14 = *a1;
            break;
        }
      }

      else
      {
        v14 = 0;
      }

      if ((v14 | v12) != 0xFFFFFFFF)
      {
        if (!*(a2 + v8))
        {
          goto LABEL_56;
        }

        v15 = (*(a2 + v8) - 1) << v11;
        if (v8 > 3)
        {
          v15 = 0;
        }

        if (v8)
        {
          v16 = v8 <= 3 ? *(v6 + 64) : 4;
          switch(v16)
          {
            case 2:
              v17 = *a2;
              break;
            case 3:
              v17 = *a2 | (*(a2 + 2) << 16);
              break;
            case 4:
              v17 = *a2;
              break;
            default:
              v17 = *a2;
              break;
          }
        }

        else
        {
          v17 = 0;
        }

        if ((v17 | v15) == 0xFFFFFFFF)
        {
          goto LABEL_56;
        }

        goto LABEL_45;
      }
    }

    if (!*(a2 + v8))
    {
LABEL_51:
      (*(v6 + 24))(a1, a2, v5);
      return a1;
    }

    v18 = (*(a2 + v8) - 1) << v11;
    if (v8 > 3)
    {
      v18 = 0;
    }

    if (v8)
    {
      if (v8 <= 3)
      {
        v19 = *(v6 + 64);
      }

      else
      {
        v19 = 4;
      }

      switch(v19)
      {
        case 2:
          v20 = *a2;
          break;
        case 3:
          v20 = *a2 | (*(a2 + 2) << 16);
          break;
        case 4:
          v20 = *a2;
          break;
        default:
          v20 = *a2;
          break;
      }
    }

    else
    {
      v20 = 0;
    }

    v10 = (v20 | v18) + 1;
LABEL_43:
    if (v10)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_45;
    }

    goto LABEL_51;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v5);
  v10 = __swift_getEnumTagSinglePayload(a2, v7, v5);
  if (!EnumTagSinglePayload)
  {
    goto LABEL_43;
  }

  if (!v10)
  {
LABEL_56:
    (*(v6 + 16))(a1, a2, v5);
    if (!v7)
    {
      *(a1 + v8) = 0;
    }

    return a1;
  }

LABEL_45:
  if (v7)
  {
    v21 = v8;
  }

  else
  {
    v21 = v8 + 1;
  }

  return memcpy(a1, a2, v21);
}

_BYTE *sub_1DCC96918(_BYTE *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7)
  {
    if (!__swift_getEnumTagSinglePayload(a2, v7, v5))
    {
LABEL_24:
      (*(v6 + 32))(a1, a2, v5);
      if (!v7)
      {
        a1[v8] = 0;
      }

      return a1;
    }
  }

  else
  {
    if (!*(a2 + v8))
    {
      goto LABEL_24;
    }

    v9 = (*(a2 + v8) - 1) << (8 * v8);
    if (v8 > 3)
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v8 <= 3 ? *(v6 + 64) : 4;
      switch(v10)
      {
        case 2:
          v11 = *a2;
          break;
        case 3:
          v11 = *a2 | (*(a2 + 2) << 16);
          break;
        case 4:
          v11 = *a2;
          break;
        default:
          v11 = *a2;
          break;
      }
    }

    else
    {
      v11 = 0;
    }

    if ((v11 | v9) == 0xFFFFFFFF)
    {
      goto LABEL_24;
    }
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  return memcpy(a1, a2, v12);
}

unsigned __int16 *sub_1DCC96A98(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (!v7)
  {
    v11 = 8 * v8;
    if (*(a1 + v8))
    {
      v12 = (*(a1 + v8) - 1) << v11;
      if (v8 > 3)
      {
        v12 = 0;
      }

      if (v8)
      {
        v13 = v8 <= 3 ? *(v6 + 64) : 4;
        switch(v13)
        {
          case 2:
            v14 = *a1;
            break;
          case 3:
            v14 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v14 = *a1;
            break;
          default:
            v14 = *a1;
            break;
        }
      }

      else
      {
        v14 = 0;
      }

      if ((v14 | v12) != 0xFFFFFFFF)
      {
        if (!*(a2 + v8))
        {
          goto LABEL_56;
        }

        v15 = (*(a2 + v8) - 1) << v11;
        if (v8 > 3)
        {
          v15 = 0;
        }

        if (v8)
        {
          v16 = v8 <= 3 ? *(v6 + 64) : 4;
          switch(v16)
          {
            case 2:
              v17 = *a2;
              break;
            case 3:
              v17 = *a2 | (*(a2 + 2) << 16);
              break;
            case 4:
              v17 = *a2;
              break;
            default:
              v17 = *a2;
              break;
          }
        }

        else
        {
          v17 = 0;
        }

        if ((v17 | v15) == 0xFFFFFFFF)
        {
          goto LABEL_56;
        }

        goto LABEL_45;
      }
    }

    if (!*(a2 + v8))
    {
LABEL_51:
      (*(v6 + 40))(a1, a2, v5);
      return a1;
    }

    v18 = (*(a2 + v8) - 1) << v11;
    if (v8 > 3)
    {
      v18 = 0;
    }

    if (v8)
    {
      if (v8 <= 3)
      {
        v19 = *(v6 + 64);
      }

      else
      {
        v19 = 4;
      }

      switch(v19)
      {
        case 2:
          v20 = *a2;
          break;
        case 3:
          v20 = *a2 | (*(a2 + 2) << 16);
          break;
        case 4:
          v20 = *a2;
          break;
        default:
          v20 = *a2;
          break;
      }
    }

    else
    {
      v20 = 0;
    }

    v10 = (v20 | v18) + 1;
LABEL_43:
    if (v10)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_45;
    }

    goto LABEL_51;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v5);
  v10 = __swift_getEnumTagSinglePayload(a2, v7, v5);
  if (!EnumTagSinglePayload)
  {
    goto LABEL_43;
  }

  if (!v10)
  {
LABEL_56:
    (*(v6 + 32))(a1, a2, v5);
    if (!v7)
    {
      *(a1 + v8) = 0;
    }

    return a1;
  }

LABEL_45:
  if (v7)
  {
    v21 = v8;
  }

  else
  {
    v21 = v8 + 1;
  }

  return memcpy(a1, a2, v21);
}

uint64_t sub_1DCC96D7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCC96EF4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            if (a2 >= v9)
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
                v23 = v22 & (a2 - v9);
                if (v11 <= 3)
                {
                  v24 = v11;
                }

                else
                {
                  v24 = 4;
                }

                bzero(a1, v11);
                switch(v24)
                {
                  case 2:
                    *a1 = v23;
                    break;
                  case 3:
                    *a1 = v23;
                    a1[2] = BYTE2(v23);
                    break;
                  case 4:
                    *a1 = v23;
                    break;
                  default:
                    *a1 = v23;
                    break;
                }
              }
            }

            else
            {
              v21 = a2 + 1;

              __swift_storeEnumTagSinglePayload(a1, v21, v9, v7);
            }
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCC9719C(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 84);
  v5 = *(v3 + 64);
  if (v4)
  {
    return __swift_getEnumTagSinglePayload(a1, v4, v2);
  }

  if (!*(a1 + v5))
  {
    return 0;
  }

  v7 = (*(a1 + v5) - 1) << (8 * v5);
  if (v5 > 3)
  {
    v7 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v7) + 1;
}

void sub_1DCC97274(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (v6 >= a2)
  {
    if (v6)
    {
      if (!a2)
      {
        return;
      }
    }

    else
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }
    }

    __swift_storeEnumTagSinglePayload(a1, a2, v6, v4);
    return;
  }

  v8 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v8;
    LOBYTE(v9) = 1;
    if (v6)
    {
      return;
    }

    goto LABEL_19;
  }

  v9 = (v8 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_18:
    if (v6)
    {
      return;
    }

    goto LABEL_19;
  }

  v10 = v8 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v10;
    a1[2] = BYTE2(v10);
    goto LABEL_18;
  }

  if (v7 == 2)
  {
    *a1 = v10;
    if (v6)
    {
      return;
    }

    goto LABEL_19;
  }

  *a1 = v8;
  if (!v6)
  {
LABEL_19:
    a1[v7] = v9;
  }
}

uint64_t sub_1DCC973C4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for ConditionalFlow.State();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ConditionalFlow.execute()(uint64_t a1)
{
  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DCB193FC;

  return v8(a1);
}

uint64_t sub_1DCC975FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for ConditionalFlowResult();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

void *sub_1DCC97678(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  v12 = v10;
  if (v8 <= 1)
  {
    if (v10 <= 3)
    {
      v14 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v14 > 0xFFFE)
      {
        v13 = 4;
      }

      else
      {
        v15 = 1;
        if (v14 >= 0xFF)
        {
          v15 = 2;
        }

        if (v14)
        {
          v13 = v15;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }

    v12 = v13 + v10;
  }

  if (*(v6 + 80) > 7u || v12 > 0x18 || (*(v6 + 80) & 0x100000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (v8 <= 1)
  {
    if (v10 > 3)
    {
      goto LABEL_28;
    }

    v19 = (~(-1 << v11) - v8 + 2) >> v11;
    if (v19 > 0xFFFE)
    {
      v18 = *(a2 + v10);
      if (!v18)
      {
        goto LABEL_45;
      }

      goto LABEL_35;
    }

    if (v19 > 0xFE)
    {
      v18 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_45;
      }

      goto LABEL_35;
    }

    if (v19)
    {
LABEL_28:
      v18 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_45;
      }

LABEL_35:
      v20 = (v18 - 1) << v11;
      if (v10 > 3)
      {
        v20 = 0;
      }

      if (v10)
      {
        if (v10 <= 3)
        {
          v21 = v10;
        }

        else
        {
          v21 = 4;
        }

        switch(v21)
        {
          case 2:
            v22 = *a2;
            break;
          case 3:
            v22 = *a2 | (*(a2 + 2) << 16);
            break;
          case 4:
            v22 = *a2;
            break;
          default:
            v22 = *a2;
            break;
        }
      }

      else
      {
        v22 = 0;
      }

      if ((v22 | v20) + v8 != -1)
      {
        goto LABEL_53;
      }

LABEL_55:
      if (!v7)
      {
        if (*(a2 + v9))
        {
          v24 = (*(a2 + v9) - 1) << (8 * v9);
          if (v9 > 3)
          {
            v24 = 0;
          }

          if (v9)
          {
            v25 = v9 <= 3 ? *(v6 + 64) : 4;
            switch(v25)
            {
              case 2:
                v26 = *a2;
                break;
              case 3:
                v26 = *a2 | (*(a2 + 2) << 16);
                break;
              case 4:
                v26 = *a2;
                break;
              default:
                v26 = *a2;
                break;
            }
          }

          else
          {
            v26 = 0;
          }

          if ((v26 | v24) != 0xFFFFFFFF)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_83;
      }

LABEL_56:
      if (__swift_getEnumTagSinglePayload(a2, v7, v5))
      {
LABEL_57:
        memcpy(a1, a2, v10);
        goto LABEL_85;
      }

LABEL_83:
      (*(v6 + 16))(a1, a2, v5);
      if (!v7)
      {
        *(a1 + v9) = 0;
      }

LABEL_85:
      if (v8 <= 1)
      {
        if (v10 <= 3)
        {
          v30 = (~(-1 << v11) - v8 + 2) >> v11;
          if (v30 > 0xFFFE)
          {
            *(a1 + v10) = 0;
            return a1;
          }

          if (v30 > 0xFE)
          {
            *(a1 + v10) = 0;
            return a1;
          }

          if (!v30)
          {
            return a1;
          }
        }

        *(a1 + v10) = 0;
      }

      return a1;
    }
  }

LABEL_45:
  if (v7 < 2)
  {
    goto LABEL_55;
  }

  if (__swift_getEnumTagSinglePayload(a2, *(v6 + 84), v5) < 2)
  {
    goto LABEL_56;
  }

  if (v8 <= 1)
  {
LABEL_53:
    if (v10 <= 3)
    {
      v27 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v27 > 0xFFFE)
      {
        v23 = 4;
      }

      else
      {
        v28 = 1;
        if (v27 >= 0xFF)
        {
          v28 = 2;
        }

        if (v27)
        {
          v23 = v28;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }

    v10 += v23;
  }

  return memcpy(a1, a2, v10);
}

uint64_t sub_1DCC97A80(unsigned __int16 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = *(v3 - 8);
  v16 = result;
  v5 = *(result + 84);
  v6 = *(result + 64);
  v7 = v5 - 1;
  if (v5)
  {
    v8 = *(result + 64);
  }

  else
  {
    v7 = 0;
    v8 = v6 + 1;
  }

  if (v7 <= 1)
  {
    v9 = 8 * v8;
    if (v8 > 3)
    {
      goto LABEL_6;
    }

    v11 = (~(-1 << v9) - v7 + 2) >> v9;
    if (v11 > 0xFFFE)
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if (v11 > 0xFE)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    if (v11)
    {
LABEL_6:
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_21;
      }

LABEL_13:
      v12 = (v10 - 1) << v9;
      if (v8 > 3)
      {
        v12 = 0;
      }

      if (v8)
      {
        if (v8 > 3)
        {
          LODWORD(v8) = 4;
        }

        switch(v8)
        {
          case 2:
            LODWORD(v8) = *a1;
            break;
          case 3:
            LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v8) = *a1;
            break;
          default:
            LODWORD(v8) = *a1;
            break;
        }
      }

      if ((v8 | v12) + v7 != -1)
      {
        return result;
      }

      goto LABEL_28;
    }
  }

LABEL_21:
  if (v5 >= 2)
  {
    result = __swift_getEnumTagSinglePayload(a1, v5, v3);
    if (result >= 2)
    {
      return result;
    }

LABEL_29:
    result = __swift_getEnumTagSinglePayload(a1, v5, v3);
    if (result)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_28:
  if (v5)
  {
    goto LABEL_29;
  }

  if (!*(a1 + v6))
  {
    goto LABEL_43;
  }

  v13 = (*(a1 + v6) - 1) << (8 * v6);
  if (v6 > 3)
  {
    v13 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  v14 = v6 | v13;
  result = (v14 + 1);
  if (v14 == -1)
  {
LABEL_43:
    v15 = *(v16 + 8);

    return v15(a1, v3);
  }

  return result;
}

char *sub_1DCC97CE4(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  if (v8 <= 1)
  {
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v13 = (~(-1 << v11) - v8 + 2) >> v11;
    if (v13 > 0xFFFE)
    {
      v12 = *(a2 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFE)
    {
      v12 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v13)
    {
LABEL_9:
      v12 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_26;
      }

LABEL_16:
      v14 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v14 = 0;
      }

      if (v10)
      {
        if (v10 <= 3)
        {
          v15 = v10;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 2:
            v16 = *a2;
            break;
          case 3:
            v16 = *a2 | (*(a2 + 2) << 16);
            break;
          case 4:
            v16 = *a2;
            break;
          default:
            v16 = *a2;
            break;
        }
      }

      else
      {
        v16 = 0;
      }

      if ((v16 | v14) + v8 != -1)
      {
        goto LABEL_34;
      }

LABEL_36:
      if (!v7)
      {
        if (*(a2 + v9))
        {
          v18 = (*(a2 + v9) - 1) << (8 * v9);
          if (v9 > 3)
          {
            v18 = 0;
          }

          if (v9)
          {
            v19 = v9 <= 3 ? *(v6 + 64) : 4;
            switch(v19)
            {
              case 2:
                v20 = *a2;
                break;
              case 3:
                v20 = *a2 | (*(a2 + 2) << 16);
                break;
              case 4:
                v20 = *a2;
                break;
              default:
                v20 = *a2;
                break;
            }
          }

          else
          {
            v20 = 0;
          }

          if ((v20 | v18) != 0xFFFFFFFF)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_64;
      }

LABEL_37:
      if (__swift_getEnumTagSinglePayload(a2, v7, v5))
      {
LABEL_38:
        memcpy(a1, a2, v10);
        goto LABEL_66;
      }

LABEL_64:
      (*(v6 + 16))(a1, a2, v5);
      if (!v7)
      {
        a1[v9] = 0;
      }

LABEL_66:
      if (v8 <= 1)
      {
        if (v10 <= 3)
        {
          v24 = (~(-1 << v11) - v8 + 2) >> v11;
          if (v24 > 0xFFFE)
          {
            *&a1[v10] = 0;
            return a1;
          }

          if (v24 > 0xFE)
          {
            *&a1[v10] = 0;
            return a1;
          }

          if (!v24)
          {
            return a1;
          }
        }

        a1[v10] = 0;
      }

      return a1;
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    goto LABEL_36;
  }

  if (__swift_getEnumTagSinglePayload(a2, *(v6 + 84), v5) < 2)
  {
    goto LABEL_37;
  }

  if (v8 <= 1)
  {
LABEL_34:
    if (v10 <= 3)
    {
      v21 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v21 > 0xFFFE)
      {
        v17 = 4;
      }

      else
      {
        v22 = 1;
        if (v21 >= 0xFF)
        {
          v22 = 2;
        }

        if (v21)
        {
          v17 = v22;
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

    v10 += v17;
  }

  return memcpy(a1, a2, v10);
}

unsigned __int8 *sub_1DCC98054(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  v12 = 8 * v9;
  if (v8 <= 1)
  {
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v14 = (~(-1 << v11) - v8 + 2) >> v11;
    if (v14 > 0xFFFE)
    {
      v13 = *&a1[v10];
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v14 <= 0xFE)
      {
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_9:
        v13 = a1[v10];
        if (!a1[v10])
        {
          goto LABEL_26;
        }

LABEL_16:
        v15 = (v13 - 1) << v11;
        if (v10 > 3)
        {
          v15 = 0;
        }

        if (v10)
        {
          if (v10 <= 3)
          {
            v16 = v10;
          }

          else
          {
            v16 = 4;
          }

          switch(v16)
          {
            case 2:
              v17 = *a1;
              break;
            case 3:
              v17 = *a1 | (a1[2] << 16);
              break;
            case 4:
              v17 = *a1;
              break;
            default:
              v17 = *a1;
              break;
          }
        }

        else
        {
          v17 = 0;
        }

        if ((v17 | v15) + v8 == -1)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v13 = *&a1[v10];
      if (*&a1[v10])
      {
        goto LABEL_16;
      }
    }
  }

LABEL_26:
  if (v7 >= 2 && __swift_getEnumTagSinglePayload(a1, *(v6 + 84), v5) >= 2)
  {
    if (v8 > 1)
    {
LABEL_106:
      if (__swift_getEnumTagSinglePayload(a2, v7, v5) >= 2)
      {
        goto LABEL_163;
      }

      goto LABEL_114;
    }

LABEL_36:
    if (v10 <= 3)
    {
      v21 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v21 > 0xFFFE)
      {
        v18 = *&a2[v10];
        if (!v18)
        {
          goto LABEL_105;
        }

        goto LABEL_61;
      }

      if (v21 > 0xFE)
      {
        v18 = *&a2[v10];
        if (!*&a2[v10])
        {
          goto LABEL_105;
        }

        goto LABEL_61;
      }

      if (!v21)
      {
LABEL_105:
        if (v7 >= 2)
        {
          goto LABEL_106;
        }

LABEL_113:
        if (!v7)
        {
          if (a2[v9])
          {
            v36 = (a2[v9] - 1) << v12;
            if (v9 > 3)
            {
              v36 = 0;
            }

            if (v9)
            {
              v37 = v9 <= 3 ? v9 : 4;
              switch(v37)
              {
                case 2:
                  v38 = *a2;
                  break;
                case 3:
                  v38 = *a2 | (a2[2] << 16);
                  break;
                case 4:
                  v38 = *a2;
                  break;
                default:
                  v38 = *a2;
                  break;
              }
            }

            else
            {
              v38 = 0;
            }

            if ((v38 | v36) != 0xFFFFFFFF)
            {
              goto LABEL_115;
            }
          }

          goto LABEL_181;
        }

LABEL_114:
        if (__swift_getEnumTagSinglePayload(a2, v7, v5))
        {
LABEL_115:
          memcpy(a1, a2, v10);
          goto LABEL_183;
        }

LABEL_181:
        (*(v6 + 16))(a1, a2, v5);
        if (!v7)
        {
          a1[v9] = 0;
        }

LABEL_183:
        if (v8 <= 1)
        {
          if (v10 <= 3)
          {
            v49 = (~(-1 << v11) - v8 + 2) >> v11;
            if (v49 > 0xFFFE)
            {
              *&a1[v10] = 0;
              return a1;
            }

            if (v49 > 0xFE)
            {
              *&a1[v10] = 0;
              return a1;
            }

            if (!v49)
            {
              return a1;
            }
          }

          a1[v10] = 0;
        }

        return a1;
      }
    }

    v18 = a2[v10];
    if (!a2[v10])
    {
      goto LABEL_105;
    }

LABEL_61:
    v25 = (v18 - 1) << v11;
    if (v10 > 3)
    {
      v25 = 0;
    }

    if (v10)
    {
      if (v10 <= 3)
      {
        v26 = v10;
      }

      else
      {
        v26 = 4;
      }

      switch(v26)
      {
        case 2:
          v27 = *a2;
          break;
        case 3:
          v27 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v27 = *a2;
          break;
        default:
          v27 = *a2;
          break;
      }
    }

    else
    {
      v27 = 0;
    }

    if ((v27 | v25) + v8 != -1)
    {
      goto LABEL_164;
    }

    goto LABEL_113;
  }

  if (v8 > 1)
  {
    goto LABEL_71;
  }

LABEL_39:
  if (v10 > 3)
  {
    goto LABEL_40;
  }

  v20 = (~(-1 << v11) - v8 + 2) >> v11;
  if (v20 > 0xFFFE)
  {
    v19 = *&a2[v10];
    if (!v19)
    {
      goto LABEL_71;
    }

LABEL_51:
    v22 = (v19 - 1) << v11;
    if (v10 > 3)
    {
      v22 = 0;
    }

    if (v10)
    {
      if (v10 <= 3)
      {
        v23 = v10;
      }

      else
      {
        v23 = 4;
      }

      switch(v23)
      {
        case 2:
          v24 = *a2;
          break;
        case 3:
          v24 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v24 = *a2;
          break;
        default:
          v24 = *a2;
          break;
      }
    }

    else
    {
      v24 = 0;
    }

    if ((v24 | v22) + v8 == -1)
    {
      goto LABEL_81;
    }

    if (v7)
    {
      goto LABEL_79;
    }

    if (!a1[v9])
    {
      goto LABEL_162;
    }

    v33 = (a1[v9] - 1) << v12;
    if (v9 > 3)
    {
      v33 = 0;
    }

    if (v9)
    {
      v34 = v9 <= 3 ? v9 : 4;
      switch(v34)
      {
        case 2:
          v35 = *a1;
          break;
        case 3:
          v35 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v35 = *a1;
          break;
        default:
          v35 = *a1;
          break;
      }
    }

    else
    {
      v35 = 0;
    }

    if ((v35 | v33) == 0xFFFFFFFF)
    {
LABEL_162:
      (*(v6 + 8))(a1, v5);
    }

LABEL_163:
    if (v8 > 1)
    {
      goto LABEL_174;
    }

LABEL_164:
    if (v10 <= 3)
    {
      v46 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v46 > 0xFFFE)
      {
        v45 = 4;
      }

      else
      {
        v47 = 1;
        if (v46 >= 0xFF)
        {
          v47 = 2;
        }

        if (v46)
        {
          v45 = v47;
        }

        else
        {
          v45 = 0;
        }
      }
    }

    else
    {
      v45 = 1;
    }

    v10 += v45;
    goto LABEL_174;
  }

  if (v20 > 0xFE)
  {
    v19 = *&a2[v10];
    if (!*&a2[v10])
    {
      goto LABEL_71;
    }

    goto LABEL_51;
  }

  if (v20)
  {
LABEL_40:
    v19 = a2[v10];
    if (!a2[v10])
    {
      goto LABEL_71;
    }

    goto LABEL_51;
  }

LABEL_71:
  if (v7 >= 2)
  {
    if (__swift_getEnumTagSinglePayload(a2, v7, v5) < 2)
    {
      goto LABEL_82;
    }

LABEL_79:
    if (__swift_getEnumTagSinglePayload(a1, v7, v5))
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

LABEL_81:
  if (!v7)
  {
    if (a1[v9])
    {
      v30 = (a1[v9] - 1) << v12;
      if (v9 > 3)
      {
        v30 = 0;
      }

      if (v9)
      {
        v31 = v9 <= 3 ? v9 : 4;
        switch(v31)
        {
          case 2:
            v32 = *a1;
            break;
          case 3:
            v32 = *a1 | (a1[2] << 16);
            break;
          case 4:
            v32 = *a1;
            break;
          default:
            v32 = *a1;
            break;
        }
      }

      else
      {
        v32 = 0;
      }

      if ((v32 | v30) != 0xFFFFFFFF)
      {
        if (!a2[v9])
        {
          goto LABEL_84;
        }

        v39 = (a2[v9] - 1) << v12;
        if (v9 > 3)
        {
          v39 = 0;
        }

        if (v9)
        {
          v40 = v9 <= 3 ? v9 : 4;
          switch(v40)
          {
            case 2:
              v41 = *a2;
              break;
            case 3:
              v41 = *a2 | (a2[2] << 16);
              break;
            case 4:
              v41 = *a2;
              break;
            default:
              v41 = *a2;
              break;
          }
        }

        else
        {
          v41 = 0;
        }

        if ((v41 | v39) == 0xFFFFFFFF)
        {
          goto LABEL_84;
        }

        goto LABEL_174;
      }
    }

    if (!a2[v9])
    {
      goto LABEL_157;
    }

    v42 = (a2[v9] - 1) << v12;
    if (v9 > 3)
    {
      v42 = 0;
    }

    if (v9)
    {
      if (v9 <= 3)
      {
        v43 = v9;
      }

      else
      {
        v43 = 4;
      }

      switch(v43)
      {
        case 2:
          v44 = *a2;
          break;
        case 3:
          v44 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v44 = *a2;
          break;
        default:
          v44 = *a2;
          break;
      }
    }

    else
    {
      v44 = 0;
    }

    v29 = (v44 | v42) + 1;
LABEL_155:
    if (v29)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_174;
    }

LABEL_157:
    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

LABEL_82:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v5);
  v29 = __swift_getEnumTagSinglePayload(a2, v7, v5);
  if (!EnumTagSinglePayload)
  {
    goto LABEL_155;
  }

  if (!v29)
  {
LABEL_84:
    (*(v6 + 16))(a1, a2, v5);
    if (!v7)
    {
      a1[v9] = 0;
    }

    return a1;
  }

LABEL_174:

  return memcpy(a1, a2, v10);
}

char *sub_1DCC988AC(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  if (v8 <= 1)
  {
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v13 = (~(-1 << v11) - v8 + 2) >> v11;
    if (v13 > 0xFFFE)
    {
      v12 = *(a2 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFE)
    {
      v12 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v13)
    {
LABEL_9:
      v12 = *(a2 + v10);
      if (!*(a2 + v10))
      {
        goto LABEL_26;
      }

LABEL_16:
      v14 = (v12 - 1) << v11;
      if (v10 > 3)
      {
        v14 = 0;
      }

      if (v10)
      {
        if (v10 <= 3)
        {
          v15 = v10;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 2:
            v16 = *a2;
            break;
          case 3:
            v16 = *a2 | (*(a2 + 2) << 16);
            break;
          case 4:
            v16 = *a2;
            break;
          default:
            v16 = *a2;
            break;
        }
      }

      else
      {
        v16 = 0;
      }

      if ((v16 | v14) + v8 != -1)
      {
        goto LABEL_34;
      }

LABEL_36:
      if (!v7)
      {
        if (*(a2 + v9))
        {
          v18 = (*(a2 + v9) - 1) << (8 * v9);
          if (v9 > 3)
          {
            v18 = 0;
          }

          if (v9)
          {
            v19 = v9 <= 3 ? *(v6 + 64) : 4;
            switch(v19)
            {
              case 2:
                v20 = *a2;
                break;
              case 3:
                v20 = *a2 | (*(a2 + 2) << 16);
                break;
              case 4:
                v20 = *a2;
                break;
              default:
                v20 = *a2;
                break;
            }
          }

          else
          {
            v20 = 0;
          }

          if ((v20 | v18) != 0xFFFFFFFF)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_64;
      }

LABEL_37:
      if (__swift_getEnumTagSinglePayload(a2, v7, v5))
      {
LABEL_38:
        memcpy(a1, a2, v10);
        goto LABEL_66;
      }

LABEL_64:
      (*(v6 + 32))(a1, a2, v5);
      if (!v7)
      {
        a1[v9] = 0;
      }

LABEL_66:
      if (v8 <= 1)
      {
        if (v10 <= 3)
        {
          v24 = (~(-1 << v11) - v8 + 2) >> v11;
          if (v24 > 0xFFFE)
          {
            *&a1[v10] = 0;
            return a1;
          }

          if (v24 > 0xFE)
          {
            *&a1[v10] = 0;
            return a1;
          }

          if (!v24)
          {
            return a1;
          }
        }

        a1[v10] = 0;
      }

      return a1;
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    goto LABEL_36;
  }

  if (__swift_getEnumTagSinglePayload(a2, *(v6 + 84), v5) < 2)
  {
    goto LABEL_37;
  }

  if (v8 <= 1)
  {
LABEL_34:
    if (v10 <= 3)
    {
      v21 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v21 > 0xFFFE)
      {
        v17 = 4;
      }

      else
      {
        v22 = 1;
        if (v21 >= 0xFF)
        {
          v22 = 2;
        }

        if (v21)
        {
          v17 = v22;
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

    v10 += v17;
  }

  return memcpy(a1, a2, v10);
}

unsigned __int8 *sub_1DCC98C1C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v6 + 64);
  if (v7)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = 8 * v10;
  v12 = 8 * v9;
  if (v8 <= 1)
  {
    if (v10 > 3)
    {
      goto LABEL_9;
    }

    v14 = (~(-1 << v11) - v8 + 2) >> v11;
    if (v14 > 0xFFFE)
    {
      v13 = *&a1[v10];
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v14 <= 0xFE)
      {
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_9:
        v13 = a1[v10];
        if (!a1[v10])
        {
          goto LABEL_26;
        }

LABEL_16:
        v15 = (v13 - 1) << v11;
        if (v10 > 3)
        {
          v15 = 0;
        }

        if (v10)
        {
          if (v10 <= 3)
          {
            v16 = v10;
          }

          else
          {
            v16 = 4;
          }

          switch(v16)
          {
            case 2:
              v17 = *a1;
              break;
            case 3:
              v17 = *a1 | (a1[2] << 16);
              break;
            case 4:
              v17 = *a1;
              break;
            default:
              v17 = *a1;
              break;
          }
        }

        else
        {
          v17 = 0;
        }

        if ((v17 | v15) + v8 == -1)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v13 = *&a1[v10];
      if (*&a1[v10])
      {
        goto LABEL_16;
      }
    }
  }

LABEL_26:
  if (v7 >= 2 && __swift_getEnumTagSinglePayload(a1, *(v6 + 84), v5) >= 2)
  {
    if (v8 > 1)
    {
LABEL_106:
      if (__swift_getEnumTagSinglePayload(a2, v7, v5) >= 2)
      {
        goto LABEL_163;
      }

      goto LABEL_114;
    }

LABEL_36:
    if (v10 <= 3)
    {
      v21 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v21 > 0xFFFE)
      {
        v18 = *&a2[v10];
        if (!v18)
        {
          goto LABEL_105;
        }

        goto LABEL_61;
      }

      if (v21 > 0xFE)
      {
        v18 = *&a2[v10];
        if (!*&a2[v10])
        {
          goto LABEL_105;
        }

        goto LABEL_61;
      }

      if (!v21)
      {
LABEL_105:
        if (v7 >= 2)
        {
          goto LABEL_106;
        }

LABEL_113:
        if (!v7)
        {
          if (a2[v9])
          {
            v36 = (a2[v9] - 1) << v12;
            if (v9 > 3)
            {
              v36 = 0;
            }

            if (v9)
            {
              v37 = v9 <= 3 ? v9 : 4;
              switch(v37)
              {
                case 2:
                  v38 = *a2;
                  break;
                case 3:
                  v38 = *a2 | (a2[2] << 16);
                  break;
                case 4:
                  v38 = *a2;
                  break;
                default:
                  v38 = *a2;
                  break;
              }
            }

            else
            {
              v38 = 0;
            }

            if ((v38 | v36) != 0xFFFFFFFF)
            {
              goto LABEL_115;
            }
          }

          goto LABEL_181;
        }

LABEL_114:
        if (__swift_getEnumTagSinglePayload(a2, v7, v5))
        {
LABEL_115:
          memcpy(a1, a2, v10);
          goto LABEL_183;
        }

LABEL_181:
        (*(v6 + 32))(a1, a2, v5);
        if (!v7)
        {
          a1[v9] = 0;
        }

LABEL_183:
        if (v8 <= 1)
        {
          if (v10 <= 3)
          {
            v49 = (~(-1 << v11) - v8 + 2) >> v11;
            if (v49 > 0xFFFE)
            {
              *&a1[v10] = 0;
              return a1;
            }

            if (v49 > 0xFE)
            {
              *&a1[v10] = 0;
              return a1;
            }

            if (!v49)
            {
              return a1;
            }
          }

          a1[v10] = 0;
        }

        return a1;
      }
    }

    v18 = a2[v10];
    if (!a2[v10])
    {
      goto LABEL_105;
    }

LABEL_61:
    v25 = (v18 - 1) << v11;
    if (v10 > 3)
    {
      v25 = 0;
    }

    if (v10)
    {
      if (v10 <= 3)
      {
        v26 = v10;
      }

      else
      {
        v26 = 4;
      }

      switch(v26)
      {
        case 2:
          v27 = *a2;
          break;
        case 3:
          v27 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v27 = *a2;
          break;
        default:
          v27 = *a2;
          break;
      }
    }

    else
    {
      v27 = 0;
    }

    if ((v27 | v25) + v8 != -1)
    {
      goto LABEL_164;
    }

    goto LABEL_113;
  }

  if (v8 > 1)
  {
    goto LABEL_71;
  }

LABEL_39:
  if (v10 > 3)
  {
    goto LABEL_40;
  }

  v20 = (~(-1 << v11) - v8 + 2) >> v11;
  if (v20 > 0xFFFE)
  {
    v19 = *&a2[v10];
    if (!v19)
    {
      goto LABEL_71;
    }

LABEL_51:
    v22 = (v19 - 1) << v11;
    if (v10 > 3)
    {
      v22 = 0;
    }

    if (v10)
    {
      if (v10 <= 3)
      {
        v23 = v10;
      }

      else
      {
        v23 = 4;
      }

      switch(v23)
      {
        case 2:
          v24 = *a2;
          break;
        case 3:
          v24 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v24 = *a2;
          break;
        default:
          v24 = *a2;
          break;
      }
    }

    else
    {
      v24 = 0;
    }

    if ((v24 | v22) + v8 == -1)
    {
      goto LABEL_81;
    }

    if (v7)
    {
      goto LABEL_79;
    }

    if (!a1[v9])
    {
      goto LABEL_162;
    }

    v33 = (a1[v9] - 1) << v12;
    if (v9 > 3)
    {
      v33 = 0;
    }

    if (v9)
    {
      v34 = v9 <= 3 ? v9 : 4;
      switch(v34)
      {
        case 2:
          v35 = *a1;
          break;
        case 3:
          v35 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v35 = *a1;
          break;
        default:
          v35 = *a1;
          break;
      }
    }

    else
    {
      v35 = 0;
    }

    if ((v35 | v33) == 0xFFFFFFFF)
    {
LABEL_162:
      (*(v6 + 8))(a1, v5);
    }

LABEL_163:
    if (v8 > 1)
    {
      goto LABEL_174;
    }

LABEL_164:
    if (v10 <= 3)
    {
      v46 = (~(-1 << v11) - v8 + 2) >> v11;
      if (v46 > 0xFFFE)
      {
        v45 = 4;
      }

      else
      {
        v47 = 1;
        if (v46 >= 0xFF)
        {
          v47 = 2;
        }

        if (v46)
        {
          v45 = v47;
        }

        else
        {
          v45 = 0;
        }
      }
    }

    else
    {
      v45 = 1;
    }

    v10 += v45;
    goto LABEL_174;
  }

  if (v20 > 0xFE)
  {
    v19 = *&a2[v10];
    if (!*&a2[v10])
    {
      goto LABEL_71;
    }

    goto LABEL_51;
  }

  if (v20)
  {
LABEL_40:
    v19 = a2[v10];
    if (!a2[v10])
    {
      goto LABEL_71;
    }

    goto LABEL_51;
  }

LABEL_71:
  if (v7 >= 2)
  {
    if (__swift_getEnumTagSinglePayload(a2, v7, v5) < 2)
    {
      goto LABEL_82;
    }

LABEL_79:
    if (__swift_getEnumTagSinglePayload(a1, v7, v5))
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

LABEL_81:
  if (!v7)
  {
    if (a1[v9])
    {
      v30 = (a1[v9] - 1) << v12;
      if (v9 > 3)
      {
        v30 = 0;
      }

      if (v9)
      {
        v31 = v9 <= 3 ? v9 : 4;
        switch(v31)
        {
          case 2:
            v32 = *a1;
            break;
          case 3:
            v32 = *a1 | (a1[2] << 16);
            break;
          case 4:
            v32 = *a1;
            break;
          default:
            v32 = *a1;
            break;
        }
      }

      else
      {
        v32 = 0;
      }

      if ((v32 | v30) != 0xFFFFFFFF)
      {
        if (!a2[v9])
        {
          goto LABEL_84;
        }

        v39 = (a2[v9] - 1) << v12;
        if (v9 > 3)
        {
          v39 = 0;
        }

        if (v9)
        {
          v40 = v9 <= 3 ? v9 : 4;
          switch(v40)
          {
            case 2:
              v41 = *a2;
              break;
            case 3:
              v41 = *a2 | (a2[2] << 16);
              break;
            case 4:
              v41 = *a2;
              break;
            default:
              v41 = *a2;
              break;
          }
        }

        else
        {
          v41 = 0;
        }

        if ((v41 | v39) == 0xFFFFFFFF)
        {
          goto LABEL_84;
        }

        goto LABEL_174;
      }
    }

    if (!a2[v9])
    {
      goto LABEL_157;
    }

    v42 = (a2[v9] - 1) << v12;
    if (v9 > 3)
    {
      v42 = 0;
    }

    if (v9)
    {
      if (v9 <= 3)
      {
        v43 = v9;
      }

      else
      {
        v43 = 4;
      }

      switch(v43)
      {
        case 2:
          v44 = *a2;
          break;
        case 3:
          v44 = *a2 | (a2[2] << 16);
          break;
        case 4:
          v44 = *a2;
          break;
        default:
          v44 = *a2;
          break;
      }
    }

    else
    {
      v44 = 0;
    }

    v29 = (v44 | v42) + 1;
LABEL_155:
    if (v29)
    {
      (*(v6 + 8))(a1, v5);
      goto LABEL_174;
    }

LABEL_157:
    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

LABEL_82:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v7, v5);
  v29 = __swift_getEnumTagSinglePayload(a2, v7, v5);
  if (!EnumTagSinglePayload)
  {
    goto LABEL_155;
  }

  if (!v29)
  {
LABEL_84:
    (*(v6 + 32))(a1, a2, v5);
    if (!v7)
    {
      a1[v9] = 0;
    }

    return a1;
  }

LABEL_174:

  return memcpy(a1, a2, v10);
}

uint64_t sub_1DCC99474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 - 2;
  v8 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v6 <= 1)
  {
    v7 = 0;
    if (v8 <= 3)
    {
      v10 = (~(-1 << (8 * v8)) - v6 + 2) >> (8 * v8);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v8 += v9;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = a2 - v7;
  if (a2 > v7)
  {
    v13 = 8 * v8;
    if (v8 <= 3)
    {
      v15 = ((v12 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v15))
      {
        v14 = *(a1 + v8);
        if (!v14)
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      if (v15 > 0xFF)
      {
        v14 = *(a1 + v8);
        if (!*(a1 + v8))
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      if (v15 < 2)
      {
LABEL_35:
        if (!v7)
        {
          return 0;
        }

        goto LABEL_36;
      }
    }

    v14 = *(a1 + v8);
    if (!*(a1 + v8))
    {
      goto LABEL_35;
    }

LABEL_27:
    v16 = (v14 - 1) << v13;
    if (v8 > 3)
    {
      v16 = 0;
    }

    if (v8)
    {
      if (v8 > 3)
      {
        LODWORD(v8) = 4;
      }

      switch(v8)
      {
        case 2:
          LODWORD(v8) = *a1;
          break;
        case 3:
          LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
          break;
        case 4:
          LODWORD(v8) = *a1;
          break;
        default:
          LODWORD(v8) = *a1;
          break;
      }
    }

    return v7 + (v8 | v16) + 1;
  }

LABEL_36:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  v18 = EnumTagSinglePayload >= 3;
  result = EnumTagSinglePayload - 3;
  if (result == 0 || !v18)
  {
    return 0;
  }

  return result;
}

void sub_1DCC99650(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 - 2;
  v11 = *(v7 + 64);
  if (v8)
  {
    v12 = *(v7 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = v12;
  if (v9 <= 1)
  {
    v10 = 0;
    if (v12 <= 3)
    {
      v16 = (~(-1 << v13) - v9 + 2) >> v13;
      if (v16 > 0xFFFE)
      {
        v15 = 4;
      }

      else
      {
        v17 = 1;
        if (v16 >= 0xFF)
        {
          v17 = 2;
        }

        if (v16)
        {
          v15 = v17;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }

    v14 = v15 + v12;
  }

  v18 = 8 * v14;
  v19 = a3 >= v10;
  v20 = a3 - v10;
  if (v20 != 0 && v19)
  {
    if (v14 <= 3)
    {
      v24 = ((v20 + ~(-1 << v18)) >> v18) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v21 = v25;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v10 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_41;
        }

        break;
      case 3:
LABEL_77:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_40;
      default:
LABEL_40:
        if (a2)
        {
LABEL_41:
          v27 = a2 + 2;
          if (a2 + 2 <= v9)
          {
            if (v8 >= 2)
            {
              v31 = a2 + 3;
              if (v31 <= v8)
              {

                __swift_storeEnumTagSinglePayload(a1, v31, v8, v6);
              }

              else
              {
                if (v11 <= 3)
                {
                  v32 = ~(-1 << (8 * v11));
                }

                else
                {
                  v32 = -1;
                }

                if (v11)
                {
                  v29 = v32 & (v27 - v8);
                  if (v11 <= 3)
                  {
                    v33 = v11;
                  }

                  else
                  {
                    v33 = 4;
                  }

                  bzero(a1, v11);
                  switch(v33)
                  {
                    case 2:
LABEL_61:
                      *a1 = v29;
                      break;
                    case 3:
LABEL_75:
                      *a1 = v29;
                      a1[2] = BYTE2(v29);
                      break;
                    case 4:
LABEL_76:
                      *a1 = v29;
                      break;
                    default:
LABEL_50:
                      *a1 = v29;
                      break;
                  }
                }
              }
            }
          }

          else
          {
            if (v12 <= 3)
            {
              v28 = ~(-1 << v13);
            }

            else
            {
              v28 = -1;
            }

            if (v12)
            {
              v29 = v28 & (a2 - v9 + 1);
              if (v12 <= 3)
              {
                v30 = v12;
              }

              else
              {
                v30 = 4;
              }

              bzero(a1, v12);
              switch(v30)
              {
                case 2:
                  goto LABEL_61;
                case 3:
                  goto LABEL_75;
                case 4:
                  goto LABEL_76;
                default:
                  goto LABEL_50;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    v22 = ~v10 + a2;
    if (v14 < 4)
    {
      v23 = (v22 >> v18) + 1;
      if (v14)
      {
        v26 = v22 & ~(-1 << v18);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v14 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v14] = v23;
        break;
      case 2:
        *&a1[v14] = v23;
        break;
      case 3:
        goto LABEL_77;
      case 4:
        *&a1[v14] = v23;
        break;
      default:
        return;
    }
  }
}