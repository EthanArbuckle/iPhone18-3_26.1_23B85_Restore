uint64_t sub_220E90740(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v19 = a4;
  v10 = sub_220FC1670();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  (*(v11 + 16))(&v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a5, v10, v14);
  v15 = (*(v11 + 80) + 73) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  v17 = *(a1 + 16);
  *(v16 + 24) = *a1;
  *(v16 + 40) = v17;
  *(v16 + 56) = *(a1 + 32);
  *(v16 + 72) = *(a1 + 48);
  (*(v11 + 32))(v16 + v15, &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v10);

  sub_220E92C30(a1, v20);
  sub_220E91560(a2, a3, v19, sub_220E93530);
}

uint64_t sub_220E908D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v17;
  *(v8 + 136) = v18;
  *(v8 + 185) = v15;
  *(v8 + 112) = v14;
  *(v8 + 120) = v16;
  *(v8 + 80) = v12;
  *(v8 + 96) = v13;
  *(v8 + 64) = v11;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 184) = a6;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220E909B8, 0, 0);
}

uint64_t sub_220E909B8()
{
  OUTLINED_FUNCTION_19();
  v1 = sub_220E86820();
  v2 = sub_220F92B34(v1);
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_220E90A5C;

  return MEMORY[0x282200480](v2);
}

uint64_t sub_220E90A5C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220E90B58()
{
  v29 = v0;
  if (*(v0 + 184) == 1 && (sub_220E867C8() & 1) != 0)
  {
    if (qword_2812C5EE8 != -1)
    {
      OUTLINED_FUNCTION_23_2();
    }

    v1 = *(v0 + 160);
    v2 = __swift_project_value_buffer(*(v0 + 144), qword_27CF9CB98);
    sub_220E93294(v2, v1, &qword_27CF9CF70);
    v3 = sub_220FC17A0();
    v4 = OUTLINED_FUNCTION_49();
    if (__swift_getEnumTagSinglePayload(v4, v5, v3) == 1)
    {
      sub_220E3B2DC(*(v0 + 160), &qword_27CF9CF70);
    }

    else
    {

      v13 = sub_220FC1780();
      v14 = sub_220FC2E30();

      if (os_log_type_enabled(v13, v14))
      {
        v16 = *(v0 + 56);
        v15 = *(v0 + 64);
        v17 = OUTLINED_FUNCTION_54_1();
        v18 = OUTLINED_FUNCTION_54_1();
        v28 = v18;
        *v17 = 136446722;
        v19 = sub_220E20FF8(v16, v15, &v28);
        *(v17 + 14) = OUTLINED_FUNCTION_73(v19);

        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_71(&dword_220E15000, v20, v21, "Cancelled. rid=%{public}s, tryCount=%ld/%ld");
        __swift_destroy_boxed_opaque_existential_0(v18);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_32_1();
      }

      else
      {
      }

      OUTLINED_FUNCTION_12();
      (*(v22 + 8))();
    }

    sub_220FC2A60();
    OUTLINED_FUNCTION_20_4();
    sub_220E20470(v23, v24);
    v25 = OUTLINED_FUNCTION_53();
    sub_220FC2580();
    *(v0 + 24) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D858);
    sub_220FC2A40();
  }

  else
  {
    if (*(v0 + 88))
    {

      sub_220EE1160();
    }

    else
    {
      if (qword_2812C5F20 != -1)
      {
        OUTLINED_FUNCTION_2_15();
      }

      v6 = sub_220FC17A0();
      __swift_project_value_buffer(v6, qword_2812C5F28);

      v7 = sub_220FC1780();
      v8 = sub_220FC2E30();

      if (os_log_type_enabled(v7, v8))
      {
        v10 = *(v0 + 56);
        v9 = *(v0 + 64);
        v11 = swift_slowAlloc();
        v12 = OUTLINED_FUNCTION_54_1();
        v28 = v12;
        *v11 = 136446210;
        *(v11 + 4) = sub_220E20FF8(v10, v9, &v28);
        _os_log_impl(&dword_220E15000, v7, v8, "Request task was nil for requestId=%{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        OUTLINED_FUNCTION_15();
        OUTLINED_FUNCTION_32_1();
      }
    }

    sub_220E8D43C(*(v0 + 72), *(v0 + 40), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 185), *(v0 + 56), *(v0 + 64), *(v0 + 120), *(v0 + 128), *(v0 + 80), *(v0 + 32), *(v0 + 184), *(v0 + 48), *(v0 + 136));
  }

  OUTLINED_FUNCTION_32_0();

  return v26();
}

void sub_220E90F5C()
{
  OUTLINED_FUNCTION_38_0();
  v23 = v0;
  if (qword_2812C5EE8 != -1)
  {
    OUTLINED_FUNCTION_23_2();
  }

  v1 = v0[19];
  v2 = __swift_project_value_buffer(v0[18], qword_27CF9CB98);
  sub_220E93294(v2, v1, &qword_27CF9CF70);
  v3 = sub_220FC17A0();
  v4 = OUTLINED_FUNCTION_49();
  if (__swift_getEnumTagSinglePayload(v4, v5, v3) == 1)
  {
    sub_220E3B2DC(v0[19], &qword_27CF9CF70);
  }

  else
  {

    v6 = sub_220FC1780();
    v7 = sub_220FC2E30();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = v0[7];
      v8 = v0[8];
      v10 = OUTLINED_FUNCTION_54_1();
      v11 = OUTLINED_FUNCTION_54_1();
      v22 = v11;
      *v10 = 136446722;
      v12 = sub_220E20FF8(v9, v8, &v22);
      *(v10 + 14) = OUTLINED_FUNCTION_73(v12);

      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_71(&dword_220E15000, v13, v14, "Backoff Cancelled. rid=%{public}s, tryCount=%ld/%ld");
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_32_1();
    }

    else
    {
    }

    OUTLINED_FUNCTION_12();
    (*(v15 + 8))();
  }

  v16 = v0[22];
  sub_220FC2A60();
  OUTLINED_FUNCTION_20_4();
  sub_220E20470(v17, v18);
  v19 = OUTLINED_FUNCTION_53();
  sub_220FC2580();
  v0[2] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D858);
  sub_220FC2A40();

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_19_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_220E911DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_220FC0110();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_220E56854(v6, v10);
}

uint64_t sub_220E912A4(uint64_t result)
{
  if (result)
  {
    v1 = sub_220E86678();
    if (v1)
    {
      v2 = v1;
      [v1 cancel];
    }

    return sub_220E86878();
  }

  return result;
}

uint64_t sub_220E912F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_220FC1680();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220FC1620();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
  sub_220E914C8(a1, v10);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D868) + 48);
  sub_220E935A4(v10, v14, MEMORY[0x277D7B0A0]);
  v16 = sub_220FC1670();
  (*(*(v16 - 8) + 16))(&v14[v15], a4, v16);
  __swift_storeEnumTagSinglePayload(&v14[v15], 0, 1, v16);
  swift_storeEnumTagMultiPayload();
  sub_220FC1690();
  return sub_220E93600(v14, MEMORY[0x277D7AFD8]);
}

uint64_t sub_220E914C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_220FC12E0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_220FC1680();

  return swift_storeEnumTagMultiPayload();
}

void sub_220E91560(void *a1, void *a2, void *a3, void (*a4)(uint64_t *))
{
  v8 = sub_220FC12E0();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    *v13 = a3;
    (*(v9 + 104))(v13, *MEMORY[0x277D6CD88], v8, v11);
    v14 = a3;
    a4(v13);
LABEL_3:
    (*(v9 + 8))(v13, v8);
    return;
  }

  if (a1)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = a1;
      if ((sub_220FC2F00() & 1) == 0)
      {
        *v13 = v16;
        (*(v9 + 104))(v13, *MEMORY[0x277D6CD78], v8);
        v20 = v17;
        a4(v13);

        goto LABEL_3;
      }

      v32 = v17;
      v29 = v16;
      if (a2)
      {
        v18 = [a2 transactionMetrics];
        sub_220E1966C(0, &qword_2812C5BA0);
        v19 = sub_220FC2970();
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

      v33 = sub_220F43CDC(v19);
      v21 = 0;
      v30 = v19 & 0xFFFFFFFFFFFFFF8;
      v31 = v19 & 0xC000000000000001;
      HIDWORD(v28) = *MEMORY[0x277D6CD80];
      v22 = (v9 + 104);
      v23 = (v9 + 8);
      while (1)
      {
        if (v33 == v21)
        {
          goto LABEL_22;
        }

        if (v31)
        {
          v24 = MEMORY[0x223D9CB30](v21, v19);
        }

        else
        {
          if (v21 >= *(v30 + 16))
          {
            goto LABEL_24;
          }

          v24 = *(v19 + 8 * v21 + 32);
        }

        v25 = v24;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if ([v24 resourceFetchType] == 3)
        {

LABEL_22:

          return;
        }

        *v13 = v29;
        v13[1] = v25;
        (*v22)(v13, HIDWORD(v28), v8);
        v26 = v32;
        v27 = v25;
        a4(v13);

        (*v23)(v13, v8);
        ++v21;
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }
  }
}

uint64_t sub_220E91894()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_source;
  sub_220FC0C00();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_reachabilityMonitor);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps24WeatherMapOverlayService_networkActivityProvider);

  return v0;
}

uint64_t sub_220E91954()
{
  sub_220E91894();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_220E919D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_220E91A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_220E91ACC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D288);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v1, v2);
  OUTLINED_FUNCTION_4();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v32 - v8;
  type metadata accessor for WeatherMapOverlayServiceError(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_3();
  v14 = (v13 - v12);
  sub_220E91FB8(v0, v13 - v12);
  v15 = 0x6C616E7265746E49;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = *v14;
      v23 = v14[1];
      v24 = v14[2];
      OUTLINED_FUNCTION_22_3();
      sub_220FC35C0();

      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_50_1(v25);
      v32[0] = v22;
      v26 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D810);
      v27 = sub_220FC2750();
      MEMORY[0x223D9BD60](v27);

      MEMORY[0x223D9BD60](0x6E6F73616572202CLL, 0xE90000000000003DLL);
      v32[0] = v23;
      v32[1] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
      v28 = sub_220FC2750();
      MEMORY[0x223D9BD60](v28);

      goto LABEL_7;
    case 2u:
      v20 = *v14;
      OUTLINED_FUNCTION_22_3();
      sub_220FC35C0();

      OUTLINED_FUNCTION_25_0();
      v33 = 0xD000000000000027;
      v34 = v29;
      swift_getErrorValue();
      goto LABEL_6;
    case 3u:
      v20 = *v14;
      OUTLINED_FUNCTION_22_3();
      sub_220FC35C0();

      OUTLINED_FUNCTION_25_0();
      v33 = 0xD00000000000001ELL;
      v34 = v21;
      swift_getErrorValue();
LABEL_6:
      v30 = sub_220FC39D0();
      MEMORY[0x223D9BD60](v30);

LABEL_7:
      v15 = v33;
      break;
    case 4u:
      return v15;
    case 5u:
      v15 = 0xD000000000000010;
      break;
    case 6u:
      v15 = 0x20676E697373694DLL;
      break;
    case 7u:
      v15 = 0xD000000000000010;
      break;
    default:
      sub_220E93658(v14, v9, &qword_27CF9D288);
      OUTLINED_FUNCTION_22_3();
      sub_220FC35C0();

      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_50_1(v16);
      sub_220E93294(v9, v5, &qword_27CF9D288);
      OUTLINED_FUNCTION_60_1();
      v17 = sub_220FC2750();
      MEMORY[0x223D9BD60](v17);

      v15 = v33;
      v18 = OUTLINED_FUNCTION_61_1();
      sub_220E3B2DC(v18, v19);
      break;
  }

  return v15;
}

uint64_t sub_220E91E78()
{
  v0 = sub_220FC0C00();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  sub_220FC0D80();
  v8 = sub_220E85A74();
  (*(v2 + 8))(v7, v0);
  return v8 & 1;
}

uint64_t sub_220E91F5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);
  v7[0] = *(v0 + 32);
  v7[1] = v3;
  v8 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = v2;
  return v1(v7, &v5);
}

uint64_t sub_220E91FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayServiceError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E9201C()
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_19_2();

  return sub_220E86A6C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_220E920BC()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return sub_220E87528(v3, v4, v5);
}

unint64_t sub_220E92150()
{
  result = qword_27CF9D820;
  if (!qword_27CF9D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D820);
  }

  return result;
}

unint64_t sub_220E921A4()
{
  result = qword_2812C5DF0;
  if (!qword_2812C5DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5DF0);
  }

  return result;
}

unsigned __int8 *sub_220E921F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_220FC28C0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_220E92780();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_220FC3620();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_220E92780()
{
  v0 = sub_220E927EC();
  v4 = sub_220E92820(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_220E92820(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_220FC33B0();
    if (!v9 || (v10 = v9, v11 = sub_220E20F88(v9, 0), v12 = sub_220E92980(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_220FC27C0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_220FC27C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_220FC3620();
LABEL_4:

  return sub_220FC27C0();
}

unint64_t sub_220E92980(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_220E92B90(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_220FC2860();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_220FC3620();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_220E92B90(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_220FC2840();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_220E92B90(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_220FC2870();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x223D9BDA0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_220E92C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a7 || a7 == 2 || a7 == 1)
  {
  }

  return result;
}

uint64_t sub_220E92CB4()
{
  OUTLINED_FUNCTION_59_1();
  v1 = sub_220FC0C00();
  OUTLINED_FUNCTION_29(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  OUTLINED_FUNCTION_8_0(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_220E5B490;
  OUTLINED_FUNCTION_68();

  return sub_220E89D80(v4, v5, v6, v7, v8, v9, v10, v11);
}

unint64_t sub_220E92E7C()
{
  result = qword_2812C5DF8;
  if (!qword_2812C5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5DF8);
  }

  return result;
}

unint64_t sub_220E92ED0()
{
  result = qword_2812C5E00;
  if (!qword_2812C5E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5E00);
  }

  return result;
}

uint64_t sub_220E92F24(uint64_t a1)
{
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v14 = *(v1 + 56);
  v12 = *(v1 + 64);
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43(v6);
  *v7 = v8;
  v7[1] = sub_220E5B490;

  return sub_220E8CE98(a1, v11, v10, v3, v4, v5, v14, v12);
}

void sub_220E9308C(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D858);
  OUTLINED_FUNCTION_29(v7);
  v9 = (*(v8 + 80) + 128) & ~*(v8 + 80);
  v11 = v9 + *(v10 + 64);
  v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = sub_220FBFC00();
  OUTLINED_FUNCTION_29(v14);
  v16 = (v13 + *(v15 + 80) + 8) & ~*(v15 + 80);
  v18 = (*(v17 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  OUTLINED_FUNCTION_8_0(v19);
  v35 = v4 + ((v18 + *(v20 + 80) + 17) & ~*(v20 + 80));
  v34 = *(v4 + v18 + 16);
  v32 = *(v4 + v18);
  v33 = *(v4 + v18 + 8);
  v31 = *(v4 + v13);
  v30 = *(v4 + v12 + 8);
  v29 = *(v4 + v12);
  v28 = *(v4 + 120);
  v27 = *(v4 + 104);
  v21 = OUTLINED_FUNCTION_60_1();
  sub_220E8E844(v21, v22, a3, a4, v23, v24, v25, v26, v4 + 48, v27, *(&v27 + 1), v28, v4 + v9, v29, v30, v31, v4 + v16, v32, v33, v34, v35);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220E93294(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_74(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return v3;
}

uint64_t sub_220E932E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D858);
  OUTLINED_FUNCTION_29(v2);
  v3 = sub_220FBFC00();
  OUTLINED_FUNCTION_29(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D818);
  OUTLINED_FUNCTION_8_0(v4);
  v11 = *(v1 + 24);
  v12 = *(v1 + 16);
  v9 = *(v1 + 40);
  v10 = *(v1 + 32);
  v15 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v13 + 16) = v5;
  *v5 = v13;
  v5[1] = sub_220E5B0F0;

  return sub_220E908D4(a1, v12, v11, v10, v9, v15, v8, v7);
}

uint64_t sub_220E93530(uint64_t a1)
{
  v3 = sub_220FC1670();
  OUTLINED_FUNCTION_8_0(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 73) & ~*(v4 + 80));

  return sub_220E912F8(a1, v5, v1 + 24, v6);
}

uint64_t sub_220E935A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

uint64_t sub_220E93600(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220E93658(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_74(a1, a2, a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return v3;
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  sub_220E5AE5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220E93718()
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_4(v1);
  OUTLINED_FUNCTION_19_2();

  return sub_220E887BC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_220E937B8()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_1(v1);

  return sub_220E88C28(v3, v4, v5);
}

void sub_220E93848()
{
  sub_220E938D0();
  if (v0 <= 0x3F)
  {
    sub_220E93928();
    if (v1 <= 0x3F)
    {
      sub_220E55624();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220E938D0()
{
  if (!qword_2812CA2A0)
  {
    sub_220FC0090();
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812CA2A0);
    }
  }
}

void sub_220E93928()
{
  if (!qword_2812C5CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9D810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9CFD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812C5CE8);
    }
  }
}

uint64_t sub_220E939B0(uint64_t a1, int a2)
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

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_24_2(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

uint64_t OUTLINED_FUNCTION_26_2()
{
  *(v3 - 200) = v0;
  *(v3 - 192) = v1;
  *(v3 - 184) = v2;
  return v3 - 200;
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return sub_220FC3940();
}

void OUTLINED_FUNCTION_32_1()
{

  JUMPOUT(0x223D9DDF0);
}

uint64_t OUTLINED_FUNCTION_33_1()
{

  return swift_task_create();
}

void OUTLINED_FUNCTION_38_1()
{
  *(v3 - 152) = v2;
  *(v3 - 144) = v1;
  *(v3 - 136) = v0;
}

void OUTLINED_FUNCTION_44_0()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void OUTLINED_FUNCTION_45_0()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

void OUTLINED_FUNCTION_71(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_72()
{
  *(v0 + 22) = v1;
  *(v0 + 24) = 5;
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2048;

  return sub_220E86820();
}

uint64_t OUTLINED_FUNCTION_75@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);

  return sub_220E92C8C(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_76()
{
}

uint64_t OUTLINED_FUNCTION_77(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t sub_220E93E58()
{
  v0 = sub_220FC37A0();

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

uint64_t sub_220E93EAC(char a1)
{
  if (a1)
  {
    return 12918;
  }

  else
  {
    return 12662;
  }
}

uint64_t sub_220E93EE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220E93E58();
  *a1 = result;
  return result;
}

uint64_t sub_220E93F18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220E93EAC(*v1);
  *a1 = result;
  a1[1] = 0xE200000000000000;
  return result;
}

uint64_t sub_220E93F48@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = 12918;
  }

  else
  {
    v3 = 12662;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = 0xE200000000000000;
  sub_220FC2600();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D8E0);
  a2[4] = sub_220E98864();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_220FC12A0();
}

uint64_t sub_220E9404C()
{
  sub_220E988C8();

  return sub_220FC1290();
}

void sub_220E94088(void *a1)
{
  sub_220FC3200();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (v3 * 255.0 <= -1.0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v3 * 255.0 >= 256.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 * 255.0 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 * 255.0 >= 256.0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 * 255.0 <= -1.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 * 255.0 >= 256.0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = COERCE_UNSIGNED_INT64(fabs(v7 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v11 = COERCE_UNSIGNED_INT64(fabs(v5 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v12 = COERCE_UNSIGNED_INT64(fabs(v3 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v13 = v9 * 255.0;
  if (COERCE_UNSIGNED_INT64(fabs(v9 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL || v10 || v12 || v11)
  {
    goto LABEL_20;
  }

  if (v13 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 >= 256.0)
  {
LABEL_22:
    __break(1u);
  }
}

void sub_220E941E4()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  sub_220F1505C(&v186);
  memcpy(__dst, v7, sizeof(__dst));
  LODWORD(v7) = sub_220E435CC(__dst);
  v8 = sub_220E22B0C(__dst);
  switch(v7)
  {
    case 1:
      if (qword_2812C7508 != -1)
      {
        swift_once();
      }

      v102 = sub_220E1B804();

      if (v102 & 1) != 0 || (, v103 = sub_220E20F44(), , (v103))
      {
        v104 = OUTLINED_FUNCTION_36_1();
        v112 = OUTLINED_FUNCTION_12_6(v104, v105, v106, v107, v108, v109, v110, v111, v154, v156, v158, v160, v162, v165, v167, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], v183, v184, v185, v186);
        sub_220E31B58(v112, v113);
        sub_220FC1130();
        OUTLINED_FUNCTION_33_2();
        v39 = v1[6];
        OUTLINED_FUNCTION_34_2();
        OUTLINED_FUNCTION_45_1();

        OUTLINED_FUNCTION_3_13();
        v200[0] = v114;
        v200[1] = v115;
        MEMORY[0x223D9BD60](v186, v187);
        OUTLINED_FUNCTION_2_16();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_23_3();
        v118 = v117 | 0x6B720000u;
        if (v116)
        {
          v119 = v118;
        }

        else
        {
          v119 = 0x746867696CLL;
        }

        if (v116)
        {
          v120 = 0xE400000000000000;
        }

        else
        {
          v120 = 0xE500000000000000;
        }

        MEMORY[0x223D9BD60](v119, v120);

        OUTLINED_FUNCTION_1_21();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_22_4();
        if (v22)
        {
          v48 = v121;
        }

        else
        {
          v48 = 12918;
        }

        goto LABEL_53;
      }

      v135 = OUTLINED_FUNCTION_36_1();
      v143 = OUTLINED_FUNCTION_12_6(v135, v136, v137, v138, v139, v140, v141, v142, v154, v156, v158, v160, v162, v165, v167, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], v183, v184, v185, v186);
      sub_220E31B58(v143, v144);
      sub_220FC1130();
      swift_beginAccess();
      v19 = v1[6];

      sub_220FC35C0();

      OUTLINED_FUNCTION_3_13();
      __src[0] = v145;
      __src[1] = v146;
      MEMORY[0x223D9BD60](v186, v187);
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_23_3();
      v149 = v148 | 0x6B720000u;
      if (v147)
      {
        v150 = v149;
      }

      else
      {
        v150 = 0x746867696CLL;
      }

      if (v147)
      {
        v151 = 0xE400000000000000;
      }

      else
      {
        v151 = 0xE500000000000000;
      }

      MEMORY[0x223D9BD60](v150, v151);

      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_22_4();
      if (v22)
      {
        v28 = v152;
      }

      else
      {
        v28 = 12918;
      }

      goto LABEL_69;
    case 2:
      v49 = OUTLINED_FUNCTION_36_1();
      v57 = OUTLINED_FUNCTION_12_6(v49, v50, v51, v52, v53, v54, v55, v56, v154, v156, v158, v160, v162, v165, v167, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], v183, v184, v185, v186);
      sub_220E31B58(v57, v58);
      sub_220FC1130();
      OUTLINED_FUNCTION_33_2();
      v39 = v1[4];
      OUTLINED_FUNCTION_34_2();
      OUTLINED_FUNCTION_45_1();

      OUTLINED_FUNCTION_3_13();
      v200[0] = v59;
      v200[1] = v60;
      MEMORY[0x223D9BD60](v186, v187);
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_23_3();
      v63 = v62 | 0x6B720000u;
      if (v61)
      {
        v64 = v63;
      }

      else
      {
        v64 = 0x746867696CLL;
      }

      if (v61)
      {
        v65 = 0xE400000000000000;
      }

      else
      {
        v65 = 0xE500000000000000;
      }

      MEMORY[0x223D9BD60](v64, v65);

      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_22_4();
      if (v22)
      {
        v48 = v66;
      }

      else
      {
        v48 = 12918;
      }

      goto LABEL_53;
    case 3:
      v67 = *(v8 + 128);
      v68 = v1[14];

      v77 = OUTLINED_FUNCTION_12_6(v69, v70, v71, v72, v73, v74, v75, v76, v154, v156, v158, v160, v162, v165, v167, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], v183, v184, v185, v186);
      sub_220E31B58(v77, v78);

      sub_220FC1130();
      swift_beginAccess();
      v79 = v1[10];
      v200[0] = 0;
      v200[1] = 0xE000000000000000;

      OUTLINED_FUNCTION_45_1();

      OUTLINED_FUNCTION_3_13();
      v200[0] = v80;
      v200[1] = v81;
      v82 = v186;
      v83 = v187;
      MEMORY[0x223D9BD60](v186, v187);
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_23_3();
      v86 = v85 | 0x6B720000u;
      if (v84)
      {
        v87 = v86;
      }

      else
      {
        v87 = 0x746867696CLL;
      }

      if (v84)
      {
        v88 = 0xE400000000000000;
      }

      else
      {
        v88 = 0xE500000000000000;
      }

      MEMORY[0x223D9BD60](v87, v88);

      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_22_4();
      if (v22)
      {
        v90 = v89;
      }

      else
      {
        v90 = 12918;
      }

      MEMORY[0x223D9BD60](v90, 0xE200000000000000);

      v91 = OUTLINED_FUNCTION_15_2();
      v93 = sub_220F6DAB0(v91, v92, v79);

      if (v93)
      {
      }

      else
      {
        v166 = v68;
        if (*(v67 + 16) && (v94 = sub_220F191E0(1), (v95 & 1) != 0))
        {
          memcpy(v200, (*(v67 + 56) + 96 * v94), 0x60uLL);
          v124 = v200[10];
          v125 = v200[11];
          v164 = v200[9];
          v159 = v200[7];
          v161 = v200[8];
          v155 = v200[6];
          v157 = v200[5];
          v126 = BYTE1(v200[4]);
          v127 = v200[4];
          v128 = v200[2];
          v129 = v200[3];
          v82 = v200[0];
          v83 = v200[1];
          v130 = v200;
          v131 = __src;
        }

        else
        {
          v124 = v197;
          v125 = v198;
          HIDWORD(v163) = v196;
          v126 = v191;
          v127 = v190;
          v128 = v188;
          v129 = v189;
          v130 = OUTLINED_FUNCTION_12_6(v94, v95, v96, v97, v98, v99, v100, v101, v193, v192, v194, v195, v163, v166, v168, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], v183, v184, v185, v186);
        }

        sub_220E31B58(v130, v131);
        __src[0] = v82;
        __src[1] = v83;
        __src[2] = v128;
        __src[3] = v129;
        LOBYTE(__src[4]) = v127;
        BYTE1(__src[4]) = v126;
        __src[5] = v157;
        __src[6] = v155;
        __src[7] = v159;
        __src[8] = v161;
        LOBYTE(__src[9]) = v164;
        __src[10] = v124;
        __src[11] = v125;
        memcpy(v200, __src, 0x60uLL);

        sub_220E31B58(__src, &v170);
        v132 = sub_220E96254(v200, 1, v1, v200);
        sub_220E31784(__src);
        v133 = sub_220E94DB0(v132);

        OUTLINED_FUNCTION_32_2();

        if (v133)
        {
          v134 = v133;
          swift_isUniquelyReferenced_nonNull_native();
          v169 = v1[10];
          sub_220E978F8(v134, v5, v3);
          v1[10] = v169;
        }

        else
        {
          v153 = sub_220E96D70(v5, v3);
        }

        swift_endAccess();
      }

      sub_220FC1140();

      goto LABEL_74;
    case 4:
      v29 = OUTLINED_FUNCTION_36_1();
      v37 = OUTLINED_FUNCTION_12_6(v29, v30, v31, v32, v33, v34, v35, v36, v154, v156, v158, v160, v162, v165, v167, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], v183, v184, v185, v186);
      sub_220E31B58(v37, v38);
      sub_220FC1130();
      OUTLINED_FUNCTION_33_2();
      v39 = v1[12];
      OUTLINED_FUNCTION_34_2();
      OUTLINED_FUNCTION_45_1();

      OUTLINED_FUNCTION_3_13();
      v200[0] = v40;
      v200[1] = v41;
      MEMORY[0x223D9BD60](v186, v187);
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_23_3();
      v44 = v43 | 0x6B720000u;
      if (v42)
      {
        v45 = v44;
      }

      else
      {
        v45 = 0x746867696CLL;
      }

      if (v42)
      {
        v46 = 0xE400000000000000;
      }

      else
      {
        v46 = 0xE500000000000000;
      }

      MEMORY[0x223D9BD60](v45, v46);

      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_22_4();
      if (v22)
      {
        v48 = v47;
      }

      else
      {
        v48 = 12918;
      }

LABEL_53:
      MEMORY[0x223D9BD60](v48, 0xE200000000000000);

      v122 = OUTLINED_FUNCTION_15_2();
      sub_220F6DAB0(v122, v123, v39);
      OUTLINED_FUNCTION_29_3();
      break;
    default:
      v9 = OUTLINED_FUNCTION_36_1();
      v17 = OUTLINED_FUNCTION_12_6(v9, v10, v11, v12, v13, v14, v15, v16, v154, v156, v158, v160, v162, v165, v167, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], v183, v184, v185, v186);
      sub_220E31B58(v17, v18);
      sub_220FC1130();
      swift_beginAccess();
      v19 = v1[2];

      sub_220FC35C0();

      OUTLINED_FUNCTION_3_13();
      __src[0] = v20;
      __src[1] = v21;
      MEMORY[0x223D9BD60](v186, v187);
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_23_3();
      v24 = v23 | 0x6B720000u;
      if (v22)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0x746867696CLL;
      }

      if (v22)
      {
        v26 = 0xE400000000000000;
      }

      else
      {
        v26 = 0xE500000000000000;
      }

      MEMORY[0x223D9BD60](v25, v26);

      OUTLINED_FUNCTION_1_21();
      OUTLINED_FUNCTION_24_3();
      OUTLINED_FUNCTION_22_4();
      if (v22)
      {
        v28 = v27;
      }

      else
      {
        v28 = 12918;
      }

LABEL_69:
      MEMORY[0x223D9BD60](v28, 0xE200000000000000);

      sub_220F6DAB0(__src[0], __src[1], v19);
      OUTLINED_FUNCTION_29_3();
      break;
  }

  sub_220FC1140();
LABEL_74:

  sub_220E31784(&v186);
  sub_220E31784(&v186);
  OUTLINED_FUNCTION_67();
}

uint64_t sub_220E94CC4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {

LABEL_7:
    if (*(a1 + 32) == 1)
    {
      sub_220E31B58(a1, v6);

      return sub_220E95844(a1, 1, v2, a1);
    }

    else
    {
      sub_220E31B58(a1, v6);

      return sub_220E96254(a1, 1, v2, a1);
    }
  }

  v4 = sub_220FC3940();

  if (v4)
  {
    goto LABEL_7;
  }

  return sub_220E9535C(a1);
}

void *sub_220E94DB0(void *result)
{
  if (!result)
  {
    return 0;
  }

  v1 = result[2];
  if (v1)
  {
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v2 = sub_220FC17A0();
    __swift_project_value_buffer(v2, qword_2812C5ED0);

    v3 = sub_220FC1780();
    v4 = sub_220FC2E10();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134349056;
      *(v5 + 4) = v1;

      _os_log_impl(&dword_220E15000, v3, v4, "Cannot return color map, colorCount=%{public}ld", v5, 0xCu);
      MEMORY[0x223D9DDF0](v5, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (!(v1 >> 61))
  {
    v6 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:result + 4 length:4 * v1];
    v7 = CGDataProviderCreateWithCFData(v6);
    if (v7)
    {
      v8 = v7;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v10 = CGImageCreate(0x100uLL, v1 >> 8, 8uLL, 0x20uLL, 0x400uLL, DeviceRGB, 1u, v8, 0, 1, kCGRenderingIntentDefault);
      if (v10)
      {
        v11 = v10;
        v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v10 scale:0 orientation:1.0];

        return v12;
      }
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_220E94FBC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = 256;
  v5[3] = v2;
  v5[4] = a2;

  sub_220E96558(a1, sub_220E9882C, v5, 256, sub_220E98838);
  v7 = v6;

  return v7;
}

uint64_t sub_220E9506C()
{
  sub_220FC1130();
  sub_220E1966C(0, &qword_2812C5B50);
  v1 = OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_44_1();
  v0[2] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D8B0);
  v0[3] = OUTLINED_FUNCTION_4_14();

  v2 = OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_44_1();
  v0[6] = v2;

  v0[7] = OUTLINED_FUNCTION_4_14();

  v3 = OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_44_1();
  v0[4] = v3;

  v0[5] = OUTLINED_FUNCTION_4_14();

  v0[8] = OUTLINED_FUNCTION_5_10();

  v0[9] = OUTLINED_FUNCTION_4_14();

  v4 = OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_44_1();
  v0[10] = v4;

  v0[11] = OUTLINED_FUNCTION_4_14();

  return sub_220FC1140();
}

void sub_220E95234(uint64_t a1, uint64_t a2, void *a3)
{
  sub_220E1966C(0, &qword_2812C5B58);
  v4 = sub_220FC3220();
  v5 = [v4 colorWithAlphaComponent_];

  *a3 = v5;
}

id sub_220E952B8(uint64_t a1)
{
  if (a1 == 2)
  {
    if (qword_27CF9C060 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CF9D8A8;
  }

  else
  {
    if (qword_27CF9C058 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CF9D8A0;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_220E9535C(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    sub_220E31B58(a1, v9);
    sub_220E31B58(a1, v9);
    sub_220E31B58(a1, v9);
    sub_220E31B58(a1, v9);
    v3 = sub_220E954B0(a1, 0, v1, a1, 255);
  }

  else
  {
    sub_220E31B58(a1, v9);
    sub_220E31B58(a1, v9);
    sub_220E31B58(a1, v9);
    sub_220E31B58(a1, v9);
    v3 = sub_220E95BF8(a1, 0, v1, a1);
  }

  v4 = v3;
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    sub_220E96558(a1, sub_220E987D4, v5, 0, nullsub_1);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  sub_220E31784(a1);
  sub_220E31784(a1);
  sub_220E31784(a1);
  return v7;
}

uint64_t sub_220E954B0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 255;
  if ((a2 & 1) == 0)
  {
    v6 = 256;
  }

  v38 = v6;
  v7 = *(a1 + 56);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  v37 = v8;
  if (v8)
  {
    v39 = MEMORY[0x277D84F90];
    sub_220FC3670();
    sub_220E1966C(0, &qword_2812C5B58);
    v10 = v7 + 56;
    do
    {
      v10 += 56;

      swift_bridgeObjectRetain_n();
      v11 = sub_220FC3220();
      sub_220FC3210();

      sub_220FC3640();
      sub_220FC3680();
      sub_220FC3690();
      sub_220FC3650();
      --v8;
    }

    while (v8);
    v12 = v39;
    v8 = v37;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  sub_220F0B3C8(0, v38, 0);
  v13 = 0;
  v14 = 0;
  v15 = v9;
  v16 = v8 - 1;
  v17 = *(a4 + 80);
  v18 = *(a4 + 88) - v17;
  v19 = a5;
  v20 = v7 + 64;
  v36 = v7 + 120;
  do
  {
    if (v14 >= v16)
    {
      if (v14 >= v8)
      {
        goto LABEL_34;
      }

      v21 = *(v20 + 56 * v14);
    }

    else
    {
      if (v14 >= v8)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        sub_220F37604();
        v15 = v32;
        goto LABEL_29;
      }

      v21 = (*(v20 + 56 * v14) + *(v36 + 56 * v14)) * 0.5;
    }

    if (v21 <= v17 + v18 * (v13 / v19))
    {
      if (__OFADD__(v14, 1))
      {
        goto LABEL_35;
      }

      if (v16 >= (v14 + 1))
      {
        ++v14;
      }

      else
      {
        v14 = v16;
      }
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x223D9CB30](v14, v12);
    }

    else
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v22 = *(v12 + 32 + 8 * v14);
    }

    sub_220E94088(v22);
    v24 = v23;
    v26 = *(v9 + 16);
    v25 = *(v9 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_220F0B3C8((v25 > 1), v26 + 1, 1);
    }

    *(v9 + 16) = v26 + 1;
    *(v9 + 4 * v26 + 32) = v24;
    ++v13;
    v8 = v37;
  }

  while (v38 != v13);

  if ((a2 & 1) == 0)
  {
    goto LABEL_32;
  }

  v27 = [objc_opt_self() clearColor];
  sub_220E94088(v27);
  LODWORD(v16) = v28;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_29:
  v29 = *(v15 + 16);
  if (v29 >= *(v15 + 24) >> 1)
  {
    sub_220F37604();
    v15 = v33;
  }

  *(v15 + 16) = v29 + 1;
  v30 = v15 + 4 * v29;
  *(v30 + 32) = v16;
  *(v30 + 34) = BYTE2(v16);
  *(v30 + 35) = BYTE3(v16);
LABEL_32:
  sub_220E31784(a4);
  return v15;
}

uint64_t sub_220E95844(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = 255;
  if ((a2 & 1) == 0)
  {
    v5 = 256;
  }

  v41 = v5;
  v6 = *(a1 + 56);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v42 = MEMORY[0x277D84F90];
    sub_220FC3670();
    sub_220E1966C(0, &qword_2812C5B58);
    v9 = v6 + 56;
    v10 = v7;
    do
    {
      v9 += 56;

      swift_bridgeObjectRetain_n();
      v11 = sub_220FC3220();
      sub_220FC3210();

      sub_220FC3640();
      sub_220FC3680();
      sub_220FC3690();
      sub_220FC3650();
      --v10;
    }

    while (v10);
    v12 = v42;
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v43 = v8;
  sub_220F0B3C8(0, v41, 0);
  v13 = 0;
  v14 = 0;
  v15 = v43;
  v16 = v7 - 1;
  v17 = v12 & 0xC000000000000001;
  v18 = *(a4 + 80);
  v36 = a4;
  v19 = *(a4 + 88) - v18;
  v20 = v6 + 64;
  v37 = v12 + 32;
  v38 = v12 & 0xFFFFFFFFFFFFFF8;
  v39 = v6 + 120;
  v40 = v12;
  v21 = v7;
  do
  {
    if (v14 >= v16)
    {
      if (v14 >= v7)
      {
        goto LABEL_34;
      }

      v22 = *(v20 + 56 * v14);
    }

    else
    {
      if (v14 >= v7)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        sub_220F37604();
        v15 = v33;
        goto LABEL_29;
      }

      v22 = (*(v20 + 56 * v14) + *(v39 + 56 * v14)) * 0.5;
    }

    if (v22 <= v18 + v19 * (v13 / 254.0))
    {
      if (__OFADD__(v14, 1))
      {
        goto LABEL_35;
      }

      if (v16 >= (v14 + 1))
      {
        ++v14;
      }

      else
      {
        v14 = v16;
      }
    }

    if (v17)
    {
      v23 = MEMORY[0x223D9CB30](v14, v40);
    }

    else
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (v14 >= *(v38 + 16))
      {
        goto LABEL_37;
      }

      v23 = *(v37 + 8 * v14);
    }

    sub_220E94088(v23);
    v25 = v24;
    v27 = *(v43 + 16);
    v26 = *(v43 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_220F0B3C8((v26 > 1), v27 + 1, 1);
    }

    *(v43 + 16) = v27 + 1;
    *(v43 + 4 * v27 + 32) = v25;
    ++v13;
    v7 = v21;
  }

  while (v41 != v13);

  if ((a2 & 1) == 0)
  {
    goto LABEL_32;
  }

  v28 = [objc_opt_self() clearColor];
  sub_220E94088(v28);
  LODWORD(v16) = v29;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_29:
  v30 = *(v15 + 16);
  if (v30 >= *(v15 + 24) >> 1)
  {
    sub_220F37604();
    v15 = v34;
  }

  *(v15 + 16) = v30 + 1;
  v31 = v15 + 4 * v30;
  *(v31 + 32) = v16;
  *(v31 + 34) = BYTE2(v16);
  *(v31 + 35) = BYTE3(v16);
LABEL_32:
  sub_220E31784(v36);

  return v15;
}

uint64_t sub_220E95BF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = 255;
  }

  else
  {
    v6 = 256;
  }

  sub_220E30510();
  v21 = MEMORY[0x277D84F90];
  sub_220F0B3C8(0, v6, 0);
  v7 = 0;
  v8 = v21;
  do
  {
    v9 = sub_220FC2A00();
    sub_220E94088(v9);
    v11 = v10;
    v13 = *(v21 + 16);
    v12 = *(v21 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_220F0B3C8((v12 > 1), v13 + 1, 1);
    }

    *(v21 + 16) = v13 + 1;
    *(v21 + 4 * v13 + 32) = v11;
    ++v7;
  }

  while (v6 != v7);

  if (a2)
  {
    v14 = [objc_opt_self() clearColor];
    sub_220E94088(v14);
    v16 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220F37604();
      v8 = v19;
    }

    v17 = *(v8 + 16);
    if (v17 >= *(v8 + 24) >> 1)
    {
      sub_220F37604();
      v8 = v20;
    }

    *(v8 + 16) = v17 + 1;
    *(v8 + 4 * v17 + 32) = v16;
  }

  sub_220E31784(a4);
  return v8;
}

uint64_t sub_220E95E0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = 255;
  }

  else
  {
    v6 = 256;
  }

  sub_220E30510();
  v24 = MEMORY[0x277D84F90];
  sub_220F0B3C8(0, v6, 0);
  v7 = v24;
  v8 = *(a4 + 88);
  v9 = log(*(a4 + 80));
  v10 = 0;
  v11 = 254.0 / (log(v8) - v9);
  do
  {
    exp(v9 + v10 / v11);
    v12 = sub_220FC2A00();
    sub_220E94088(v12);
    v14 = v13;
    v16 = *(v24 + 16);
    v15 = *(v24 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_220F0B3C8((v15 > 1), v16 + 1, 1);
    }

    *(v24 + 16) = v16 + 1;
    *(v24 + 4 * v16 + 32) = v14;
    ++v10;
  }

  while (v6 != v10);

  if (a2)
  {
    v17 = [objc_opt_self() clearColor];
    sub_220E94088(v17);
    v19 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220F37604();
      v7 = v22;
    }

    v20 = *(v7 + 16);
    if (v20 >= *(v7 + 24) >> 1)
    {
      sub_220F37604();
      v7 = v23;
    }

    *(v7 + 16) = v20 + 1;
    *(v7 + 4 * v20 + 32) = v19;
  }

  sub_220E31784(a4);

  return v7;
}

uint64_t sub_220E96038(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = 255;
  }

  else
  {
    v6 = 256;
  }

  sub_220E30510();
  v21 = MEMORY[0x277D84F90];
  sub_220F0B3C8(0, v6, 0);
  v7 = 0;
  v8 = v21;
  do
  {
    v9 = sub_220FC2A00();
    sub_220E94088(v9);
    v11 = v10;
    v13 = *(v21 + 16);
    v12 = *(v21 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_220F0B3C8((v12 > 1), v13 + 1, 1);
    }

    *(v21 + 16) = v13 + 1;
    *(v21 + 4 * v13 + 32) = v11;
    ++v7;
  }

  while (v6 != v7);

  if (a2)
  {
    v14 = [objc_opt_self() clearColor];
    sub_220E94088(v14);
    v16 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220F37604();
      v8 = v19;
    }

    v17 = *(v8 + 16);
    if (v17 >= *(v8 + 24) >> 1)
    {
      sub_220F37604();
      v8 = v20;
    }

    *(v8 + 16) = v17 + 1;
    *(v8 + 4 * v17 + 32) = v16;
  }

  sub_220E31784(a4);
  return v8;
}

uint64_t sub_220E96254(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = 255;
  }

  else
  {
    v6 = 256;
  }

  sub_220E30510();
  v21 = MEMORY[0x277D84F90];
  sub_220F0B3C8(0, v6, 0);
  v7 = 0;
  v8 = v21;
  do
  {
    v9 = sub_220FC2A00();
    sub_220E94088(v9);
    v11 = v10;
    v13 = *(v21 + 16);
    v12 = *(v21 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_220F0B3C8((v12 > 1), v13 + 1, 1);
    }

    *(v21 + 16) = v13 + 1;
    *(v21 + 4 * v13 + 32) = v11;
    ++v7;
  }

  while (v6 != v7);

  if (a2)
  {
    v14 = [objc_opt_self() clearColor];
    sub_220E94088(v14);
    v16 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_220F37604();
      v8 = v19;
    }

    v17 = *(v8 + 16);
    if (v17 >= *(v8 + 24) >> 1)
    {
      sub_220F37604();
      v8 = v20;
    }

    *(v8 + 16) = v17 + 1;
    *(v8 + 4 * v17 + 32) = v16;
  }

  sub_220E31784(a4);

  return v8;
}

void *sub_220E96474(void *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = result;
    v5 = *result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_17:
      sub_220E98818();
      v5 = v16;
    }

    v6 = 0;
    do
    {
      if (v6 == v2)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = 0;
      v8 = 0;
      v9 = v6 + 1;
      v10 = (a2 + 32 + 4 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      do
      {
        v14 = v7 + v6;
        if (__OFADD__(v7, v6))
        {
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        if (v14 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v15 = (v5 + 32 + 4 * v14);
        *v15 = v11;
        v15[3] = v8;
        result = (v8 + 1);
        v15[1] = v12;
        v15[2] = v13;
        v7 += 256;
        v8 = result;
      }

      while (result != 256);
      ++v6;
    }

    while (v9 != v2);
    *v4 = v5;
  }

  return result;
}

void sub_220E96558(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, void (*a5)(uint64_t, double))
{
  v9 = [objc_opt_self() blackColor];
  sub_220E94088(v9);
  v11 = v10;
  v12 = sub_220FC29E0();
  *(v12 + 16) = 0x10000;
  v13 = vdupq_n_s8(v11);
  v14 = vdupq_n_s8(v11 >> 8);
  v15 = vdupq_n_s8(HIBYTE(v11));
  v16 = 32;
  v17 = vdupq_n_s8(HIWORD(v11));
  do
  {
    v18 = (v12 + v16);
    vst4q_s8(v18, *v13.i8);
    v16 += 64;
  }

  while (v16 != 262176);
  v28 = v12;
  sub_220E30510();
  a2(&v28);
  if ((a4 & 0x8000000000000000) == 0)
  {
    v19 = sub_220E31B58(a1, v27);
    v20 = 0;
    v21 = 0;
    v22 = v28;
    while (1)
    {
      if (a4 == v21)
      {
        sub_220E31784(a1);

        return;
      }

      a5(v19, v21);
      v23 = sub_220FC2A00();
      sub_220E94088(v23);
      v25 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220E98818();
        v22 = v26;
      }

      if (v21 >= *(v22 + 16))
      {
        break;
      }

      *(v22 + v20 + 32) = v25;
      v20 += 4;
      ++v21;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_220E96710(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x2821F9378](isUniquelyReferenced_nonNull_native);
  }

  v4 = a4;
  v5 = a3;
  v7 = isUniquelyReferenced_nonNull_native;
  if (a2)
  {
    v8 = objc_opt_self();
    v9 = 0;
    v10 = *v7;
    v11 = 0x80000000000000;
    v12 = -256;
    v13 = a2;
    while (1)
    {
      sub_220E94088([v8 clearColor]);
      v15 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_220E98818();
        v10 = isUniquelyReferenced_nonNull_native;
        if (!v11)
        {
LABEL_10:
          __break(1u);
LABEL_11:
          *v7 = v10;
          v5 = a3;
          v4 = a4;
          goto LABEL_12;
        }
      }

      v12 += 256;
      if (v12 >= *(v10 + 16))
      {
        break;
      }

      --v11;
      v16 = v10 + v9;
      v9 += 1024;
      *(v16 + 32) = v15;
      if (!--v13)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_12:
  v17 = MEMORY[0x223D9D510]();
  sub_220E96848(v5, v4, a2, v7);
  isUniquelyReferenced_nonNull_native = v17;

  return MEMORY[0x2821F9378](isUniquelyReferenced_nonNull_native);
}

void sub_220E96848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = sub_220E952B8(a2);
  sub_220FC3200();
  v14 = v10 * 255.0;
  if (v10 * 255.0 <= -1.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v14 >= 256.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = v11 * 255.0;
  if (v11 * 255.0 <= -1.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5 >= 256.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = COERCE_UNSIGNED_INT64(fabs(v11 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL;
  v6 = v12 * 255.0;
  if (COERCE__INT64(fabs(v12 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL || COERCE_UNSIGNED_INT64(fabs(v10 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL || v15)
  {
    goto LABEL_30;
  }

  if (v6 <= -1.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v6 >= 256.0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a3 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v4 = v13;
  v16 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_34:
    sub_220E98818();
    v16 = v26;
  }

  v18 = 1;
  v19 = 1059;
  v20 = 256;
  *a4 = v16;
  do
  {
    if (a3)
    {
      v21 = v4 * (v18 / 255.0) * 255.0;
      if (COERCE__INT64(fabs(v21)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v21 <= -1.0)
        {
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        if (v21 >= 256.0)
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v22 = a3;
        v23 = v20;
        v24 = v19;
        while (1)
        {
          *a4 = v16;
          if (v23 >= *(v16 + 16))
          {
            break;
          }

          v25 = (v16 + v24);
          *(v25 - 3) = v14;
          *(v25 - 2) = v5;
          *(v25 - 1) = v6;
          *v25 = v21;
          v16 = *a4;
          v24 += 4;
          ++v23;
          if (!--v22)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_20:
    ++v18;
    v19 += 1024;
    v20 += 256;
  }

  while (v18 != 256);
}

uint64_t sub_220E96A68()
{

  return v0;
}

uint64_t sub_220E96AE8()
{
  sub_220E96A68();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

void sub_220E96B5C()
{
  OUTLINED_FUNCTION_48_2();
  v1 = sub_220FC1160();
  MEMORY[0x28223BE20](v1 - 8, v2);
  sub_220E1966C(0, &qword_2812C5B50);
  v0[2] = OUTLINED_FUNCTION_5_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D8B0);
  v0[3] = OUTLINED_FUNCTION_4_14();
  v0[4] = OUTLINED_FUNCTION_5_10();
  v0[5] = OUTLINED_FUNCTION_4_14();
  v0[6] = OUTLINED_FUNCTION_5_10();
  v0[7] = OUTLINED_FUNCTION_4_14();
  v0[8] = OUTLINED_FUNCTION_5_10();
  v0[9] = OUTLINED_FUNCTION_4_14();
  v0[10] = OUTLINED_FUNCTION_5_10();
  v0[11] = OUTLINED_FUNCTION_4_14();
  v0[12] = OUTLINED_FUNCTION_5_10();
  v0[13] = OUTLINED_FUNCTION_4_14();
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  v0[14] = sub_220FC1170();
  OUTLINED_FUNCTION_35_4();
}

void sub_220E96CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_37_2();
  sub_220F19244(v11, v12, v13, v14);
  if (v15)
  {
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_13_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D958);
    OUTLINED_FUNCTION_19_5();
    sub_220FC3710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960);
    sub_220E304BC();
    sub_220FC3730();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_43_0();
}

uint64_t sub_220E96D70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_220F19120(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D8C0);
  sub_220FC3710();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_220E1966C(0, &qword_2812C5B50);
  sub_220FC3730();
  *v3 = v9;
  return v7;
}

uint64_t sub_220E96E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_47_1();
  v11 = v10;
  v16 = sub_220F19444(v12, v13, v14, v15);
  if (v17)
  {
    v18 = v16;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_39_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D930);
    OUTLINED_FUNCTION_19_5();
    sub_220FC3710();

    v19 = *(a10 + 56);
    type metadata accessor for SnapshotManager.Options(0);
    OUTLINED_FUNCTION_2();
    sub_220E98B6C(v19 + *(v20 + 72) * v18, v11, type metadata accessor for SnapshotManager.Options);
    sub_220E98BCC();
    sub_220FC3730();
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    type metadata accessor for SnapshotManager.Options(0);
    OUTLINED_FUNCTION_38_2();
  }

  OUTLINED_FUNCTION_43_0();

  return __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

void sub_220E96F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_37_2();
  sub_220F19614();
  if (v12)
  {
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_13_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D920);
    OUTLINED_FUNCTION_19_5();
    sub_220FC3710();
    v13 = *(a10 + 48);
    type metadata accessor for SnapshotManager.Options.Key(0);
    OUTLINED_FUNCTION_2();
    sub_220E98A68(v13 + *(v14 + 72) * v11);
    sub_220E98AC4(qword_2812C7048, type metadata accessor for SnapshotManager.Options.Key);
    sub_220FC3730();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_43_0();
}

void sub_220E9706C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_37_2();
  sub_220F19120(v11, v12);
  if (v13)
  {
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_13_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D8F0);
    OUTLINED_FUNCTION_19_5();
    sub_220FC3710();

    type metadata accessor for WeatherMapOverlayServiceTask();
    sub_220FC3730();
    *v10 = a10;
  }

  OUTLINED_FUNCTION_43_0();
}

uint64_t sub_220E97124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_47_1();
  v11 = v10;
  v12 = sub_220F196C4();
  if (v13)
  {
    v14 = v12;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_39_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D8C8);
    OUTLINED_FUNCTION_19_5();
    sub_220FC3710();

    v15 = *(a10 + 56);
    type metadata accessor for WeatherMapAnnotationViewModel();
    OUTLINED_FUNCTION_2();
    sub_220E98B6C(v15 + *(v16 + 72) * v14, v11, type metadata accessor for WeatherMapAnnotationViewModel);
    type metadata accessor for WeatherMapAnnotationView();
    sub_220E98AC4(&unk_27CF9D8D0, type metadata accessor for WeatherMapAnnotationView);
    sub_220FC3730();
    OUTLINED_FUNCTION_30_2();
  }

  else
  {
    type metadata accessor for WeatherMapAnnotationViewModel();
    OUTLINED_FUNCTION_38_2();
  }

  OUTLINED_FUNCTION_43_0();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void sub_220E97264()
{
  OUTLINED_FUNCTION_47_1();
  v3 = v2;
  sub_220F19704(v4, v5);
  if (v6)
  {
    OUTLINED_FUNCTION_46_2();
    v7 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D940);
    OUTLINED_FUNCTION_19_5();
    sub_220FC3710();
    sub_220E5E3BC(*(*(v7 + 48) + 16 * v1), *(*(v7 + 48) + 16 * v1 + 8));
    sub_220E1E72C((*(v7 + 56) + 40 * v1), v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D948);
    sub_220E98C20();
    sub_220FC3730();
    *v0 = v7;
  }

  else
  {
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  OUTLINED_FUNCTION_43_0();
}

uint64_t sub_220E97398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_37_2();
  v13 = sub_220F19244(v9, v10, v11, v12);
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = v13;
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  OUTLINED_FUNCTION_19_5();
  sub_220FC3710();
  v16 = *(*(v18 + 56) + 8 * v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  sub_220E304BC();
  sub_220FC3730();
  *v6 = v18;
  return v16;
}

unint64_t sub_220E9747C()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_9_9();
  v4 = OUTLINED_FUNCTION_8_9(v2, v3);
  sub_220F19244(v4, v5, v6, v7);
  OUTLINED_FUNCTION_0_25();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA70);
  if (OUTLINED_FUNCTION_21_3())
  {
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_28_4();
    if (!v14)
    {
      goto LABEL_14;
    }

    v11 = v13;
  }

  if (v12)
  {
    *(*(*v1 + 56) + 8 * v11) = v0;
    OUTLINED_FUNCTION_67();
  }

  else
  {
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_67();

    return sub_220E98244(v17, v18, v19, v20, v21, v22, v23);
  }
}

void sub_220E9755C(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  sub_220F19244(a1, a2, a3, a5);
  OUTLINED_FUNCTION_0_25();
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_220FC3990();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEA8);
  if (OUTLINED_FUNCTION_42_2())
  {
    sub_220F19244(a1, a2, a3, a5);
    OUTLINED_FUNCTION_27_5();
    if (!v17)
    {
      goto LABEL_12;
    }

    v14 = v16;
  }

  v18 = *v5;
  if (v15)
  {
    *(v18[7] + 4 * v14) = a4;
  }

  else
  {

    sub_220E98294(v14, a1, a2, a3, v18, a5, a4);
  }
}

unint64_t sub_220E97678()
{
  OUTLINED_FUNCTION_48_2();
  v4 = OUTLINED_FUNCTION_6_10(v2, v3);
  sub_220F192DC(v4);
  OUTLINED_FUNCTION_0_25();
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D978);
  v8 = OUTLINED_FUNCTION_11_5();
  if (v8)
  {
    sub_220F192DC(v0);
    OUTLINED_FUNCTION_16_4();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    OUTLINED_FUNCTION_25_4(v8, v9, v10, *v1);
    OUTLINED_FUNCTION_35_4();

    return swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_35_4();

    return sub_220E982E4(v14, v15, v16, v17);
  }
}

uint64_t sub_220E97748()
{
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_6_10(v1, v2);
  sub_220F1937C();
  OUTLINED_FUNCTION_0_25();
  if (v4)
  {
    __break(1u);
LABEL_13:
    type metadata accessor for MTLPixelFormat(0);
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D980);
  v6 = OUTLINED_FUNCTION_11_5();
  if (v6)
  {
    sub_220F1937C();
    OUTLINED_FUNCTION_16_4();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    OUTLINED_FUNCTION_25_4(v6, v7, v8, *v0);
    OUTLINED_FUNCTION_35_4();
  }

  else
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_35_4();

    return sub_220E9833C(v12, v13, v14, v15);
  }
}

unint64_t sub_220E97818()
{
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_9_9();
  v4 = OUTLINED_FUNCTION_8_9(v2, v3);
  sub_220F19244(v4, v5, v6, v7);
  OUTLINED_FUNCTION_0_25();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D958);
  if (OUTLINED_FUNCTION_21_3())
  {
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_28_4();
    if (!v14)
    {
      goto LABEL_14;
    }

    v11 = v13;
  }

  if (v12)
  {
    *(*(*v1 + 56) + 8 * v11) = v0;
    OUTLINED_FUNCTION_67();

    return swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_10_8();
    OUTLINED_FUNCTION_67();

    return sub_220E98244(v17, v18, v19, v20, v21, v22, v23);
  }
}

void sub_220E978F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_220F19120(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D8C0);
  if ((sub_220FC3710() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_220F19120(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_220FC3990();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = *(v15 + 56);
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_220E98594(v11, a2, a3, a1, v15);
  }
}

void sub_220E97A34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = OUTLINED_FUNCTION_8_9(a1, a2);
  sub_220F19444(v11, v12, v13, v14);
  OUTLINED_FUNCTION_0_25();
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D930);
  if ((sub_220FC3710() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = sub_220F19444(a2, a3, a4, a5);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    sub_220FC3990();
    __break(1u);
    return;
  }

  v18 = v20;
LABEL_5:
  v22 = *v6;
  if (v19)
  {
    v23 = v22[7];
    v24 = type metadata accessor for SnapshotManager.Options(0);
    sub_220E98B0C(v5, v23 + *(*(v24 - 8) + 72) * v18, type metadata accessor for SnapshotManager.Options);
    OUTLINED_FUNCTION_22();
  }

  else
  {
    sub_220E983CC(v18, a2, a3, a4, a5, v5, v22);
    OUTLINED_FUNCTION_22();
  }
}

void sub_220E97B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SnapshotManager.Options.Key(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220F19614();
  OUTLINED_FUNCTION_0_25();
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D920);
  if ((sub_220FC3710() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_220F19614();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_220FC3990();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v3;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
    OUTLINED_FUNCTION_22();
  }

  else
  {
    sub_220E98A04(a3, v10);
    sub_220E98480(v14, v10, a1, a2, v18);
    OUTLINED_FUNCTION_22();
  }
}

unint64_t sub_220E97D08()
{
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_6_10(v1, v2);
  sub_220F1966C();
  OUTLINED_FUNCTION_0_25();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D970);
  v6 = OUTLINED_FUNCTION_11_5();
  if (v6)
  {
    sub_220F1966C();
    OUTLINED_FUNCTION_16_4();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    OUTLINED_FUNCTION_25_4(v6, v7, v8, *v0);
    OUTLINED_FUNCTION_35_4();
  }

  else
  {
    OUTLINED_FUNCTION_26_3();
    OUTLINED_FUNCTION_35_4();

    return sub_220E9853C(v12, v13, v14, v15);
  }
}

uint64_t sub_220E97DD8()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_220F19120(v3, v1);
  OUTLINED_FUNCTION_0_25();
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D8F0);
  if (OUTLINED_FUNCTION_42_2())
  {
    sub_220F19120(v4, v2);
    OUTLINED_FUNCTION_27_5();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  v14 = *v0;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = v6;
    OUTLINED_FUNCTION_35_4();
  }

  else
  {
    sub_220E98594(v10, v4, v2, v6, v14);
    OUTLINED_FUNCTION_35_4();
  }
}

void sub_220E97EE4()
{
  OUTLINED_FUNCTION_47_1();
  v2 = v1;
  v17 = v3;
  sub_220F196C4();
  OUTLINED_FUNCTION_0_25();
  if (v6)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for WeatherMapAnnotationView();
    sub_220FC3990();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D8C8);
  if (sub_220FC3710())
  {
    sub_220F196C4();
    OUTLINED_FUNCTION_16_4();
    if (!v10)
    {
      goto LABEL_12;
    }

    v7 = v9;
  }

  v11 = *v0;
  if (v8)
  {
    v12 = v11[7];
    v13 = type metadata accessor for WeatherMapAnnotationViewModel();
    sub_220E98B0C(v2, v12 + *(*(v13 - 8) + 72) * v7, type metadata accessor for WeatherMapAnnotationViewModel);
    OUTLINED_FUNCTION_43_0();
  }

  else
  {
    sub_220E985DC(v7, v17, v2, v11);
    OUTLINED_FUNCTION_43_0();

    v16 = v14;
  }
}

void *sub_220E98014()
{
  OUTLINED_FUNCTION_48_2();
  v1 = v0;
  sub_220F191E0(v0);
  OUTLINED_FUNCTION_0_25();
  if (v3)
  {
    __break(1u);
LABEL_13:
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D8E8);
  if (OUTLINED_FUNCTION_11_5())
  {
    sub_220F191E0(v1);
    OUTLINED_FUNCTION_27_5();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v4)
  {
    OUTLINED_FUNCTION_35_4();

    return sub_220E9891C(v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_35_4();

    return sub_220E98684(v10, v11, v12, v13);
  }
}

uint64_t sub_220E98134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_9_9();
  v26 = v8;
  sub_220F19244(v9, v10, v11, v12);
  OUTLINED_FUNCTION_0_25();
  if (v15)
  {
    __break(1u);
LABEL_12:
    result = sub_220FC3990();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  if (OUTLINED_FUNCTION_21_3())
  {
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_28_4();
    if (!v19)
    {
      goto LABEL_12;
    }

    v16 = v18;
  }

  if (v17)
  {
    *(*(*v6 + 56) + 8 * v16) = v26;
  }

  else
  {
    OUTLINED_FUNCTION_10_8();
    return sub_220E986F4(v21, v22, v23, v24, v26, v25);
  }
}

unint64_t sub_220E98244(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, float a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = a6[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  *(a6[7] + 8 * result) = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_220E98294(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, float a6, float a7)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v7 = a5[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 24) = a6;
  *(a5[7] + 4 * result) = a7;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_220E982E4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_220E9833C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_31_3(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

uint64_t sub_220E98380(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_31_3(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + result) = v7 & 1;
  v8 = (v6[7] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_220E983CC(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a7[6] + 32 * a1;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = a7[7];
  v12 = type metadata accessor for SnapshotManager.Options(0);
  result = sub_220E98B6C(a6, v11 + *(*(v12 - 8) + 72) * a1, type metadata accessor for SnapshotManager.Options);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

uint64_t sub_220E98480(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for SnapshotManager.Options.Key(0);
  result = sub_220E98B6C(a2, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for SnapshotManager.Options.Key);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_220E9853C(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_220E98594(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_31_3(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_220E985DC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for WeatherMapAnnotationViewModel();
  result = sub_220E98B6C(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for WeatherMapAnnotationViewModel);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_220E98684(unint64_t a1, char a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = memcpy((a4[7] + 96 * a1), __src, 0x60uLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_220E986F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_31_3(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 32 * result;
  *v8 = v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v8 + 24) = v12;
  *(v7[7] + 8 * result) = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_220E98744(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_31_3(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

uint64_t sub_220E98788(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_31_3(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 32 * result);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  *(v8[7] + 8 * result) = v14;
  v15 = v8[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v17;
  }

  return result;
}

unint64_t sub_220E98864()
{
  result = qword_2812C5F78;
  if (!qword_2812C5F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9D8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5F78);
  }

  return result;
}

unint64_t sub_220E988C8()
{
  result = qword_2812C75C0;
  if (!qword_2812C75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C75C0);
  }

  return result;
}

uint64_t sub_220E9898C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_220FC34C0();
  }

  return sub_220FC35F0();
}

uint64_t sub_220E98A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotManager.Options.Key(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E98A68(uint64_t a1)
{
  v2 = type metadata accessor for SnapshotManager.Options.Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220E98AC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220E98B0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 40))(a2, a1);
  return a2;
}

uint64_t sub_220E98B6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_220E98BCC()
{
  result = qword_2812C9C08[0];
  if (!qword_2812C9C08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C9C08);
  }

  return result;
}

unint64_t sub_220E98C20()
{
  result = qword_2812C66A0;
  if (!qword_2812C66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C66A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapOverlayColorMapVersion(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220E98D54()
{
  result = qword_27CF9D990;
  if (!qword_27CF9D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D990);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_5()
{

  return sub_220FC3710();
}

unint64_t OUTLINED_FUNCTION_17_3()
{

  return sub_220F19244(v2, v1, v0, v4);
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_220FC3710();
}

void OUTLINED_FUNCTION_24_3()
{

  JUMPOUT(0x223D9BD60);
}

uint64_t OUTLINED_FUNCTION_29_3()
{
}

uint64_t OUTLINED_FUNCTION_32_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_34_2()
{
  *(v0 - 200) = 0;
  *(v0 - 192) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_36_1()
{
}

uint64_t OUTLINED_FUNCTION_42_2()
{

  return sub_220FC3710();
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_220FC35C0();
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_220E990B0@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_27();
  *a1 = result & 1;
  return result;
}

uint64_t sub_220E990DC(uint64_t a1)
{
  v2 = sub_220E9987C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220E99118(uint64_t a1)
{
  v2 = sub_220E9987C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220E99154(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1869903201 && a2 == 0xE400000000000000;
  if (v3 || (sub_220FC3940() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7261646172 && a2 == 0xE500000000000000;
    if (v6 || (sub_220FC3940() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7473616365726F66 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_220FC3940();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_220E99268(char a1)
{
  if (!a1)
  {
    return 1869903201;
  }

  if (a1 == 1)
  {
    return 0x7261646172;
  }

  return 0x7473616365726F66;
}

uint64_t sub_220E992BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220E99154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220E99304@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220E99260();
  *a1 = result;
  return result;
}

uint64_t sub_220E9932C(uint64_t a1)
{
  v2 = sub_220E99780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220E99368(uint64_t a1)
{
  v2 = sub_220E99780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220E993A4(uint64_t a1)
{
  v2 = sub_220E997D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220E993E0(uint64_t a1)
{
  v2 = sub_220E997D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220E9941C(uint64_t a1)
{
  v2 = sub_220E99828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220E99458(uint64_t a1)
{
  v2 = sub_220E99828();

  return MEMORY[0x2821FE720](a1, v2);
}

void WeatherMapPrecipitationOverlayKind.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_5_0();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D9A0);
  OUTLINED_FUNCTION_6();
  v62 = v30;
  v63 = v29;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v31, v32);
  v61 = &v55 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D9A8);
  OUTLINED_FUNCTION_6();
  v59 = v35;
  v60 = v34;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v36, v37);
  v58 = &v55 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D9B0);
  OUTLINED_FUNCTION_6();
  v56 = v40;
  v57 = v39;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v55 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D9B8);
  OUTLINED_FUNCTION_6();
  v47 = v46;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v55 - v50;
  v52 = *v24;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_220E99780();
  sub_220FC3AB0();
  if (v52)
  {
    if (v52 == 1)
    {
      a13 = 1;
      sub_220E99828();
      v44 = v58;
      OUTLINED_FUNCTION_3_14(&type metadata for WeatherMapPrecipitationOverlayKind.RadarCodingKeys, &a13);
      v54 = v59;
      v53 = v60;
    }

    else
    {
      a14 = 2;
      sub_220E997D4();
      v44 = v61;
      OUTLINED_FUNCTION_3_14(&type metadata for WeatherMapPrecipitationOverlayKind.ForecastCodingKeys, &a14);
      v54 = v62;
      v53 = v63;
    }
  }

  else
  {
    a12 = 0;
    sub_220E9987C();
    OUTLINED_FUNCTION_3_14(&type metadata for WeatherMapPrecipitationOverlayKind.AutoCodingKeys, &a12);
    v54 = v56;
    v53 = v57;
  }

  (*(v54 + 8))(v44, v53);
  (*(v47 + 8))(v51, v45);
  OUTLINED_FUNCTION_8_10();
}

unint64_t sub_220E99780()
{
  result = qword_2812C8038[0];
  if (!qword_2812C8038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812C8038);
  }

  return result;
}

unint64_t sub_220E997D4()
{
  result = qword_2812C7FF8;
  if (!qword_2812C7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C7FF8);
  }

  return result;
}

unint64_t sub_220E99828()
{
  result = qword_27CF9D9C0;
  if (!qword_27CF9D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D9C0);
  }

  return result;
}

unint64_t sub_220E9987C()
{
  result = qword_2812C8020;
  if (!qword_2812C8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C8020);
  }

  return result;
}

void WeatherMapPrecipitationOverlayKind.init(from:)()
{
  OUTLINED_FUNCTION_5_0();
  v66 = v0;
  v2 = v1;
  v61 = v3;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D9C8);
  OUTLINED_FUNCTION_6();
  v62 = v4;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5, v6);
  v64 = &v53 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D9D0);
  OUTLINED_FUNCTION_6();
  v59 = v9;
  v60 = v8;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D9D8);
  OUTLINED_FUNCTION_6();
  v58 = v15;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D9E0);
  OUTLINED_FUNCTION_6();
  v63 = v21;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v53 - v24;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_220E99780();
  v26 = v66;
  sub_220FC3AA0();
  if (v26)
  {
    goto LABEL_10;
  }

  v55 = v14;
  v56 = v19;
  v57 = v13;
  v28 = v64;
  v27 = v65;
  v66 = v2;
  v29 = sub_220FC3860();
  v33 = sub_220E9AD20(v29, 0);
  if (v31 == v32 >> 1)
  {
    goto LABEL_9;
  }

  v54 = 0;
  if (v31 < (v32 >> 1))
  {
    LODWORD(v34) = *(v30 + v31);
    sub_220E9AD68(v31 + 1, v32 >> 1, v33, v30, v31, v32);
    v36 = v35;
    v38 = v37;
    swift_unknownObjectRelease();
    v39 = v36 == v38 >> 1;
    v40 = v62;
    if (v39)
    {
      if (v34)
      {
        if (v34 == 1)
        {
          sub_220E99828();
          v41 = v57;
          OUTLINED_FUNCTION_7_8();
          v42 = v61;
          v43 = v20;
          v44 = v63;
          swift_unknownObjectRelease();
          (*(v59 + 8))(v41, v60);
          (*(v44 + 8))(v25, v43);
        }

        else
        {
          LODWORD(v60) = v34;
          sub_220E997D4();
          v49 = v54;
          sub_220FC37C0();
          v42 = v61;
          v34 = v20;
          v50 = v63;
          if (v49)
          {
            (*(v63 + 8))(v25, v34);
            swift_unknownObjectRelease();
            v2 = v66;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v40 + 8))(v28, v27);
          (*(v50 + 8))(v25, v34);
          LOBYTE(v34) = v60;
        }
      }

      else
      {
        sub_220E9987C();
        v48 = v56;
        OUTLINED_FUNCTION_7_8();
        swift_unknownObjectRelease();
        (*(v58 + 8))(v48, v55);
        v51 = OUTLINED_FUNCTION_4_15();
        v52(v51);
        v42 = v61;
      }

      *v42 = v34;
      __swift_destroy_boxed_opaque_existential_0(v66);
      goto LABEL_11;
    }

LABEL_9:
    v45 = sub_220FC3610();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D9E8);
    *v47 = &type metadata for WeatherMapPrecipitationOverlayKind;
    sub_220FC37D0();
    sub_220FC3600();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v63 + 8))(v25, v20);
    v2 = v66;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v2);
LABEL_11:
    OUTLINED_FUNCTION_8_10();
    return;
  }

  __break(1u);
}

uint64_t WeatherMapOverlayKind.supportsRadarRegionLabel.getter()
{
  v1 = *v0;
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  v2 = sub_220E1B804();

  return v2 & (v1 == 1);
}

BOOL WeatherMapOverlayKind.isSameKind(as:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 6)
  {
    return 0;
  }

  v4 = *v1;
  switch(v4)
  {
    case 3:
      return v2 == 3;
    case 4:
      return v2 == 4;
    case 5:
      return v2 == 5;
  }

  return (v2 - 3) >= 3;
}

void WeatherMapOverlayKind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_5_0();
  v16 = v15;
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D9F0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v19, v20);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_220E9ADE4();
  sub_220FC3AA0();
  if (!v14)
  {
    sub_220E9AE38();
    OUTLINED_FUNCTION_6_11();
    switch(a14)
    {
      case 1:
        v28 = OUTLINED_FUNCTION_1_22();
        v29(v28);
        a12 = 3;
        break;
      case 2:
        v24 = OUTLINED_FUNCTION_1_22();
        v25(v24);
        a12 = 4;
        break;
      case 3:
        v26 = OUTLINED_FUNCTION_1_22();
        v27(v26);
        a12 = 5;
        break;
      default:
        sub_220E9AE8C();
        OUTLINED_FUNCTION_6_11();
        v21 = OUTLINED_FUNCTION_1_22();
        v22(v21);
        break;
    }

    *v18 = a12;
  }

  __swift_destroy_boxed_opaque_existential_0(v16);
  OUTLINED_FUNCTION_8_10();
}

void WeatherMapOverlayKind.encode(to:)()
{
  OUTLINED_FUNCTION_5_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DA08);
  OUTLINED_FUNCTION_6();
  v6 = v5;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v12[-v9];
  v11 = *v0;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_220E9ADE4();
  sub_220FC3AB0();
  if (v11 == 3 || v11 == 4 || v11 == 5)
  {
    sub_220E9AEE0();
LABEL_9:
    sub_220FC38D0();
    goto LABEL_10;
  }

  sub_220E9AEE0();
  sub_220FC38D0();
  if (!v1)
  {
    v12[15] = v11;
    v12[14] = 1;
    sub_220E9AF34();
    goto LABEL_9;
  }

LABEL_10:
  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_8_10();
}

uint64_t sub_220E9A3A0()
{
  v0 = sub_220FC37A0();

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

uint64_t sub_220E9A3FC()
{
  v0 = sub_220FC37A0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_220E9A448(char a1)
{
  result = 0x7469706963657270;
  switch(a1)
  {
    case 1:
      result = 0x696C617551726961;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 1684957559;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220E9A500@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220E9A3A0();
  *a1 = result;
  return result;
}

uint64_t sub_220E9A530@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220E256E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_220E9A564@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220E9A3A0();
  *a1 = result;
  return result;
}

uint64_t sub_220E9A58C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220E9A3F4();
  *a1 = result;
  return result;
}

uint64_t sub_220E9A5B4(uint64_t a1)
{
  v2 = sub_220E9ADE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220E9A5F0(uint64_t a1)
{
  v2 = sub_220E9ADE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_220E9A650@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220E9A3FC();
  *a1 = result;
  return result;
}

uint64_t sub_220E9A680@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220E9A448(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t WeatherMapOverlayKind.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  switch(v3)
  {
    case 5:
      v4 = 0xE400000000000000;
      v5 = 1684957559;
      break;
    case 4:
      v4 = 0xEB00000000657275;
      v5 = 0x74617265706D6574;
      break;
    case 3:
      v4 = 0xEA00000000007974;
      v5 = 0x696C617551726961;
      break;
    default:
      v4 = 0xED00006E6F697461;
      v5 = 0x7469706963657270;
      break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DA10);
  a1[4] = sub_220E5D7E8(&qword_2812C5F98, &qword_27CF9DA10);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220E9A920()
{
  sub_220E9B878();

  return sub_220FC1290();
}

uint64_t WeatherMapPrecipitationOverlayKind.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    if (*v1 == 1)
    {
      v3 = 0xE500000000000000;
      v4 = 0x7261646172;
    }

    else
    {
      v3 = 0xE800000000000000;
      v4 = 0x7473616365726F66;
    }
  }

  else
  {
    v4 = 1869903201;
    v3 = 0xE400000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E30;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DA18);
  a1[4] = sub_220E5D7E8(&qword_27CF9DA20, &qword_27CF9DA18);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220E9AAB0()
{
  sub_220E9B824();

  return sub_220FC1290();
}

uint64_t WeatherMapOverlayKind.hash(into:)()
{
  v1 = *v0;
  if ((v1 - 3) >= 3u)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    v1 = qword_220FCC7F0[(v1 - 3)];
  }

  return MEMORY[0x223D9CFA0](v1);
}

uint64_t WeatherMapOverlayKind.hashValue.getter()
{
  v1 = *v0;
  sub_220FC3A40();
  if ((v1 - 3) >= 3u)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    v1 = qword_220FCC7F0[(v1 - 3)];
  }

  MEMORY[0x223D9CFA0](v1);
  return sub_220FC3A90();
}

uint64_t sub_220E9ABD0()
{
  v1 = *v0;
  sub_220FC3A40();
  if ((v1 - 3) >= 3u)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    v1 = qword_220FCC7F0[(v1 - 3)];
  }

  MEMORY[0x223D9CFA0](v1);
  return sub_220FC3A90();
}

uint64_t WeatherMapPrecipitationOverlayKind.hashValue.getter()
{
  v1 = *v0;
  sub_220FC3A40();
  MEMORY[0x223D9CFA0](v1);
  return sub_220FC3A90();
}

uint64_t sub_220E9AD20(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_220E9AD68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_220E9ADE4()
{
  result = qword_2812C9F08;
  if (!qword_2812C9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9F08);
  }

  return result;
}

unint64_t sub_220E9AE38()
{
  result = qword_27CF9D9F8;
  if (!qword_27CF9D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9D9F8);
  }

  return result;
}

unint64_t sub_220E9AE8C()
{
  result = qword_27CF9DA00;
  if (!qword_27CF9DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DA00);
  }

  return result;
}

unint64_t sub_220E9AEE0()
{
  result = qword_2812C9EF0;
  if (!qword_2812C9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9EF0);
  }

  return result;
}

unint64_t sub_220E9AF34()
{
  result = qword_2812C7FE0;
  if (!qword_2812C7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C7FE0);
  }

  return result;
}

unint64_t sub_220E9AF90()
{
  result = qword_27CF9DA28;
  if (!qword_27CF9DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DA28);
  }

  return result;
}

unint64_t sub_220E9AFE8()
{
  result = qword_27CF9DA30;
  if (!qword_27CF9DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DA30);
  }

  return result;
}

unint64_t sub_220E9B040()
{
  result = qword_27CF9DA38;
  if (!qword_27CF9DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DA38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapOverlayKind.CodingType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherMapOverlayKind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_220E9B24C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220E9B35C()
{
  result = qword_27CF9DA40;
  if (!qword_27CF9DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DA40);
  }

  return result;
}

unint64_t sub_220E9B3B4()
{
  result = qword_27CF9DA48;
  if (!qword_27CF9DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DA48);
  }

  return result;
}

unint64_t sub_220E9B40C()
{
  result = qword_27CF9DA50;
  if (!qword_27CF9DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DA50);
  }

  return result;
}

unint64_t sub_220E9B464()
{
  result = qword_2812C9EF8;
  if (!qword_2812C9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9EF8);
  }

  return result;
}

unint64_t sub_220E9B4BC()
{
  result = qword_2812C9F00;
  if (!qword_2812C9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9F00);
  }

  return result;
}

unint64_t sub_220E9B514()
{
  result = qword_2812C8010;
  if (!qword_2812C8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C8010);
  }

  return result;
}

unint64_t sub_220E9B56C()
{
  result = qword_2812C8018;
  if (!qword_2812C8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C8018);
  }

  return result;
}

unint64_t sub_220E9B5C4()
{
  result = qword_2812C8000;
  if (!qword_2812C8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C8000);
  }

  return result;
}

unint64_t sub_220E9B61C()
{
  result = qword_2812C8008;
  if (!qword_2812C8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C8008);
  }

  return result;
}

unint64_t sub_220E9B674()
{
  result = qword_2812C7FE8;
  if (!qword_2812C7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C7FE8);
  }

  return result;
}

unint64_t sub_220E9B6CC()
{
  result = qword_2812C7FF0;
  if (!qword_2812C7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C7FF0);
  }

  return result;
}

unint64_t sub_220E9B724()
{
  result = qword_2812C8028;
  if (!qword_2812C8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C8028);
  }

  return result;
}

unint64_t sub_220E9B77C()
{
  result = qword_2812C8030;
  if (!qword_2812C8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C8030);
  }

  return result;
}

unint64_t sub_220E9B7D0()
{
  result = qword_2812C9EE8;
  if (!qword_2812C9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9EE8);
  }

  return result;
}

unint64_t sub_220E9B824()
{
  result = qword_27CF9DA58;
  if (!qword_27CF9DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DA58);
  }

  return result;
}

unint64_t sub_220E9B878()
{
  result = qword_2812C9EE0;
  if (!qword_2812C9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C9EE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_220FC3850();
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_220E9B910(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_220E9B950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_220E9B9C8@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DA60);
  v3 = (type metadata accessor for ParticleBucketConfiguration(0) - 8);
  v4 = *(*v3 + 72);
  v5 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_220FCC840;
  v6 = v35 + v5;
  v7 = objc_opt_self();
  v8 = [v7 metersPerSecond];
  sub_220E1966C(0, &qword_2812C5D00);
  sub_220FBFC70();
  sub_220E1966C(0, &qword_2812C5B58);
  v9 = OUTLINED_FUNCTION_1_23();
  v10 = [v9 CGColor];

  *(v6 + v3[7]) = v10;
  *(v6 + v3[8]) = 1071225242;
  *(v6 + v3[9]) = 1065353216;
  v11 = v35 + v5 + v4;
  v12 = OUTLINED_FUNCTION_4_16();
  sub_220FBFC70();
  v13 = OUTLINED_FUNCTION_1_23();
  v14 = [v13 CGColor];

  *(v11 + v3[7]) = v14;
  *(v11 + v3[8]) = 1071225242;
  *(v11 + v3[9]) = 1065353216;
  v15 = OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_2_17();
  v16 = OUTLINED_FUNCTION_1_23();
  v17 = [v16 CGColor];

  *(v6 + 2 * v4 + v3[7]) = v17;
  OUTLINED_FUNCTION_0_26(v3[8]);
  v18 = OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_2_17();
  v19 = OUTLINED_FUNCTION_3_15();
  v20 = [v19 CGColor];

  *(v6 + 3 * v4 + v3[7]) = v20;
  OUTLINED_FUNCTION_0_26(v3[8]);
  v21 = OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_2_17();
  v22 = OUTLINED_FUNCTION_3_15();
  v23 = [v22 CGColor];

  *(v6 + 4 * v4 + v3[7]) = v23;
  OUTLINED_FUNCTION_0_26(v3[8]);
  v24 = v6 + 5 * v4;
  v25 = [v7 0x1FB197664];
  OUTLINED_FUNCTION_2_17();
  v26 = sub_220FC3220();
  v27 = [v26 CGColor];

  *(v24 + v3[7]) = v27;
  *(v24 + v3[8]) = 1069547520;
  *(v24 + v3[9]) = 1065353216;
  v28 = v6 + 6 * v4;
  v29 = [v7 metersPerSecond];
  OUTLINED_FUNCTION_2_17();
  v30 = sub_220FC3220();
  v31 = [v30 CGColor];

  *(v28 + v3[7]) = v31;
  *(v28 + v3[8]) = 1069547520;
  *(v28 + v3[9]) = 1065353216;
  IsSlow = DeviceIsSlow();
  v33 = 60;
  if (IsSlow)
  {
    v33 = 30;
  }

  *a1 = 0;
  *(a1 + 8) = xmmword_220FCC850;
  *(a1 + 24) = v35;
  *(a1 + 32) = v33;
  *&result = 16843008;
  *(a1 + 40) = 16843008;
  *(a1 + 44) = a2;
  return result;
}

void sub_220E9BE0C()
{
  sub_220E1966C(0, &qword_2812C5B80);
  v0 = *MEMORY[0x277D74410];
  v1 = *MEMORY[0x277D76800];
  v2 = *MEMORY[0x277D76968];
  v3 = v1;
  v4 = sub_220E417BC(v2, 0, 0x4023000000000000, 0, v1, 0, v0);

  sub_220E1966C(0, &qword_2812C5B58);
  v5 = sub_220FC3220();
  v6 = sub_220FC3220();
  v7 = [v6 colorWithAlphaComponent_];

  v8 = sub_220FC3220();
  v9 = sub_220FC3220();
  v10 = [v9 colorWithAlphaComponent_];

  v11 = [objc_opt_self() whiteColor];
  v12 = sub_220FC3220();
  v13 = [v12 colorWithAlphaComponent_];

  *&xmmword_27CFAF4A0 = v4;
  *(&xmmword_27CFAF4A0 + 1) = v5;
  qword_27CFAF4B0 = v7;
  unk_27CFAF4B8 = v8;
  *&xmmword_27CFAF4C0 = v10;
  *(&xmmword_27CFAF4C0 + 1) = v11;
  qword_27CFAF4D0 = v13;
  unk_27CFAF4D8 = 0x4034000000000000;
}

id sub_220E9BFF8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model];
  v3 = *&v0[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model + 8];
  if (v3)
  {
    v4 = *v2;
    v5 = &v1[16 * *(v2 + 16) + OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_configuration];
    v6 = *(v5 + 16);
    v7 = *(v5 + 8);
    v35 = v6;
    v8 = v7;
    sub_220E3B040(v4, v3);
    result = [v1 font];
    if (result)
    {
      v10 = result;
      [result pointSize];
      v12 = v11;

      v13 = &v1[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_configuration];
      v14 = *&v1[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_configuration + 56];
      *&v1[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_insetAmount] = round(v12 * (v14 / 100.0));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DA80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_220FC9880;
      v16 = *MEMORY[0x277D740C0];
      *(inited + 32) = *MEMORY[0x277D740C0];
      v17 = sub_220E1966C(0, &qword_2812C5B58);
      *(inited + 40) = v8;
      v34 = v8;
      v18 = *MEMORY[0x277D74160];
      *(inited + 64) = v17;
      *(inited + 72) = v18;
      v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v20 = v16;
      v21 = v18;
      v22 = [v19 initWithDouble_];
      v23 = sub_220E1966C(0, &qword_2812C5B28);
      *(inited + 80) = v22;
      v24 = *MEMORY[0x277D74158];
      *(inited + 104) = v23;
      *(inited + 112) = v24;
      *(inited + 120) = v35;
      v25 = *MEMORY[0x277D740A8];
      *(inited + 144) = v17;
      *(inited + 152) = v25;
      v26 = *v13;
      *(inited + 184) = sub_220E1966C(0, &qword_2812C5B80);
      *(inited + 160) = v26;
      type metadata accessor for Key(0);
      sub_220E9C9F8();
      v27 = v24;
      v28 = v25;
      v29 = v26;
      OUTLINED_FUNCTION_0_27();
      sub_220FC2600();
      sub_220E1966C(0, &qword_2812C5BD8);
      v30 = sub_220E533F0();

      OUTLINED_FUNCTION_0_27();
      v31 = sub_220FC25B0();

      v32 = v30;
      [v32 addAttributes:v31 range:{0, objc_msgSend(v32, sel_length)}];

      [v1 setAttributedText_];
      return [v1 setNeedsDisplay];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    [v1 setAttributedText_];

    return [v1 setNeedsDisplay];
  }

  return result;
}

id sub_220E9C384(_OWORD *a1, uint64_t *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  *&v2[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_insetAmount] = 0;
  v10 = &v2[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 16) = 0;
  v11 = &v2[OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_configuration];
  v12 = a1[1];
  *v11 = *a1;
  *(v11 + 1) = v12;
  v13 = a1[3];
  *(v11 + 2) = a1[2];
  *(v11 + 3) = v13;
  if (v9)
  {
    v14 = 256;
  }

  else
  {
    v14 = 0;
  }

  *v10 = v6;
  *(v10 + 1) = v7;
  *(v10 + 1) = *(a2 + 1);
  *(v10 + 16) = v14 | v8;
  sub_220E9CA50(a1, v18);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v15 setTextAlignment_];
  sub_220E9CA88(a1);

  return v15;
}

void sub_220E9C48C()
{
  *(v0 + OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_insetAmount) = 0;
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps33WeatherMapAnnotationLocationLabel_model;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_220FC3740();
  __break(1u);
}

void sub_220E9C524()
{
  ObjectType = swift_getObjectType();
  v2 = UIGraphicsGetCurrentContext();
  if (v2)
  {
    v3 = v2;
    v4 = [v0 attributedText];
    if (v4)
    {
      v5 = v4;
      v6 = OUTLINED_FUNCTION_6_0();
      UIEdgeInsetsInsetRect(v6, v7, v8, v9, v10, v10);
      CGContextSetLineJoin(v3, kCGLineJoinRound);
      CGContextSetTextDrawingMode(v3, kCGTextFill);
      v16.receiver = v0;
      v16.super_class = ObjectType;
      OUTLINED_FUNCTION_3_16(&v16, sel_drawTextInRect_);
      v11 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      [v5 length];
      OUTLINED_FUNCTION_2_18();
      [v5 length];
      OUTLINED_FUNCTION_2_18();
      [v0 setAttributedText_];
      CGContextSetTextDrawingMode(v3, kCGTextFill);
      v15.receiver = v0;
      v15.super_class = ObjectType;
      OUTLINED_FUNCTION_3_16(&v15, sel_drawTextInRect_);
      [v0 setAttributedText_];

      return;
    }
  }

  v12 = OUTLINED_FUNCTION_6_0();
  objc_msgSendSuper2(v13, v14, v12);
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220E9C8C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_220E9C904(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220E9C958(uint64_t *a1, int a2)
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

uint64_t sub_220E9C998(uint64_t result, int a2, int a3)
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

unint64_t sub_220E9C9F8()
{
  result = qword_2812C5C40;
  if (!qword_2812C5C40)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C5C40);
  }

  return result;
}

uint64_t sub_220E9CAB8(uint64_t *a1, int a2)
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

uint64_t sub_220E9CAF8(uint64_t result, int a2, int a3)
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

void *sub_220E9CB44()
{
  v1 = type metadata accessor for WeatherMapPreviewLocationState();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC11WeatherMaps30ContextMenuInteractionDelegate_currentPreviewViewController;
  v6 = *(v0 + OBJC_IVAR____TtC11WeatherMaps30ContextMenuInteractionDelegate_currentPreviewViewController);
  if (v6)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
    v10 = *(v7 + 16);
    v11 = v6;
    v10(v4, ObjectType, v7);
  }

  else if (swift_unknownObjectWeakLoadStrong() && (v6 = sub_220F03DD4(), v13 = v12, swift_unknownObjectRelease(), v6))
  {
    v14 = swift_getObjectType();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v15);
    (*(v13 + 16))(v4, v14, v13);
    v16 = *v5;
    *v5 = v6;
    *(v5 + 8) = v13;
    v17 = v6;
  }

  else
  {
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v18 = sub_220FC17A0();
    __swift_project_value_buffer(v18, qword_2812C5ED0);
    v19 = sub_220FC1780();
    v20 = sub_220FC2E30();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_220E15000, v19, v20, "Not making a preview since a datasource didn't provide one", v21, 2u);
      MEMORY[0x223D9DDF0](v21, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_220E9CDA8(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = sub_220F03E80(a2, a1);
    swift_unknownObjectRelease();
    if (v5)
    {
      sub_220E9D008(a1, a2);
      MEMORY[0x223D9BEA0]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
      v4 = v8;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = sub_220F03FD8(a2, a1);
    swift_unknownObjectRelease();
    if (v6)
    {
      sub_220E9D310(a1, a2);
      MEMORY[0x223D9BEA0]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_220FC29C0();
      }

      sub_220FC29F0();
      v4 = v8;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    sub_220E9D620(a1);
    MEMORY[0x223D9BEA0]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_220FC29C0();
    }

    sub_220FC29F0();
    v4 = v8;
  }

  if (sub_220E9D92C(a1))
  {
    MEMORY[0x223D9BEA0]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_220FC29C0();
    }

    sub_220FC29F0();
    return v8;
  }

  return v4;
}

uint64_t sub_220E9D008(uint64_t a1, uint64_t a2)
{
  v18[2] = a2;
  v19 = sub_220FC1070();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v19, v5);
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v6 = qword_2812CE4B0;
  sub_220FBFF80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220FC8E30;
  v8 = sub_220FC1040();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_220E69720();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v11 = sub_220FC2720();
  v18[0] = v12;
  v18[1] = v11;

  sub_220E1966C(0, &qword_2812C5B50);
  sub_220F349B0();
  sub_220E1966C(0, &qword_27CF9DBE0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v19;
  (*(v3 + 16))(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v3 + 32))(v16 + v15, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  return sub_220FC3260();
}

uint64_t sub_220E9D310(uint64_t a1, uint64_t a2)
{
  v18[2] = a2;
  v19 = sub_220FC1070();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v19, v5);
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v6 = qword_2812CE4B0;
  sub_220FBFF80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220FC8E30;
  v8 = sub_220FC1040();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_220E69720();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v11 = sub_220FC2720();
  v18[0] = v12;
  v18[1] = v11;

  sub_220E1966C(0, &qword_2812C5B50);
  sub_220F349B0();
  sub_220E1966C(0, &qword_27CF9DBE0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v19;
  (*(v3 + 16))(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19);
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v3 + 32))(v16 + v15, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  return sub_220FC3260();
}

uint64_t sub_220E9D620(uint64_t a1)
{
  v13 = a1;
  v1 = sub_220FC1070();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v14 = sub_220E1966C(0, &qword_27CF9CAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220FC8F40;
  v12[1] = sub_220E1966C(0, &qword_27CF9DBE0);
  if (qword_2812C5B30 != -1)
  {
    swift_once();
  }

  v6 = qword_2812CE4B0;
  sub_220FBFF80();
  v12[0] = v7;

  sub_220E1966C(0, &qword_2812C5B50);
  sub_220F349B0();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v2 + 16))(v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v1);
  v9 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v2 + 32))(v10 + v9, v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  *(v5 + 32) = sub_220FC3260();
  return sub_220FC31A0();
}

uint64_t sub_220E9D92C(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_220FC1070();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  sub_220FC11E0();
  if ((sub_220FC11D0() & 1) == 0)
  {
    return 0;
  }

  sub_220FC09D0();
  sub_220EA0370(&unk_27CF9DB80, type metadata accessor for ContextMenuInteractionDelegate);
  sub_220FC0A00();

  if (v27 != 1)
  {
    return 0;
  }

  v25 = sub_220E1966C(0, &qword_27CF9CAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_220FC8FA0;
  v26 = sub_220E1966C(0, &qword_27CF9DBE0);
  v22 = "on picked from the Map view";
  v23 = sub_220E1966C(0, &qword_2812C5B50);
  v19 = sub_220F349B0();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v3 + 16);
  v21(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v18 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = v18;
  v8 = swift_allocObject();
  v17 = a1;
  *(v8 + 16) = v6;
  v20 = *(v3 + 32);
  v20(v8 + v7, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v9 = sub_220FC3260();
  v10 = v24;
  *(v24 + 32) = v9;
  v22 = "Set as Mock Predicted Location";
  sub_220F349B0();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v2;
  v21(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v2);
  v13 = v18;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v20(v14 + v13, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *(v10 + 40) = sub_220FC3260();
  return sub_220FC31A0();
}

void sub_220E9DD70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a4(v7, a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_220E9DE10()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_220FC09C0();
    sub_220FC0FE0();
    sub_220FC2BB0();
    MEMORY[0x223D9BD60](44, 0xE100000000000000);
    sub_220FC0FE0();
    sub_220FC2BB0();
    type metadata accessor for ContextMenuInteractionDelegate();
    sub_220EA0370(&qword_27CF9DBE8, type metadata accessor for ContextMenuInteractionDelegate);
    sub_220FC0BB0();
  }

  return result;
}

uint64_t sub_220E9DF48()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_220FC09C0();
    type metadata accessor for ContextMenuInteractionDelegate();
    sub_220EA0370(&unk_27CF9DB80, type metadata accessor for ContextMenuInteractionDelegate);
    sub_220FC0A00();

    sub_220FC0FE0();
    sub_220FC2BB0();
    MEMORY[0x223D9BD60](44, 0xE100000000000000);
    sub_220FC0FE0();
    sub_220FC2BB0();
    sub_220FC09C0();
    v2 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v2 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      MEMORY[0x223D9BD60](59, 0xE100000000000000);
      MEMORY[0x223D9BD60](0, 0xE000000000000000);
    }

    sub_220EA0370(&qword_27CF9DBE8, type metadata accessor for ContextMenuInteractionDelegate);
    sub_220FC0BB0();
  }

  return result;
}

id sub_220E9E138()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC11WeatherMaps30ContextMenuInteractionDelegate_currentPreviewViewController];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = OBJC_IVAR____TtC11WeatherMaps30ContextMenuInteractionDelegate_location;
  v4 = sub_220FC1070();
  __swift_storeEnumTagSinglePayload(&v0[v3], 1, 1, v4);
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t type metadata accessor for ContextMenuInteractionDelegate()
{
  result = qword_27CF9DAA8;
  if (!qword_27CF9DAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220E9E27C()
{
  sub_220E9E318();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_220E9E318()
{
  if (!qword_2812CA068)
  {
    sub_220FC1070();
    v0 = sub_220FC33A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2812CA068);
    }
  }
}

uint64_t sub_220E9E370()
{
  swift_getObjectType();

  return sub_220FC0BB0();
}

uint64_t sub_220E9E3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2A10](a1, ObjectType, a5);
}

uint64_t sub_220E9E418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2A08](a1, ObjectType, a3);
}

id sub_220E9E468()
{
  v1 = sub_220FC2340();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_1_24();
  v19 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultStyle];
  sub_220E1966C(0, &qword_2812C5CA0);
  v13 = sub_220FC2FC0();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  aBlock[4] = sub_220EA0488;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220F6DA78;
  aBlock[3] = &block_descriptor_59;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  sub_220FC2350();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_220EA0370(&qword_2812C5E08, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
  sub_220E62E38();
  sub_220FC3430();
  MEMORY[0x223D9C530](0, v11, v0, v15);
  _Block_release(v15);

  (*(v3 + 8))(v0, v1);
  (*(v7 + 8))(v11, v19);
  return v16;
}

void sub_220E9E728(void *a1)
{
  v2 = sub_220FC1870();
  v4 = [a1 containerView];
  if (v4)
  {
    v5 = v4;
    sub_220F22204();
    sub_220FC31C0();
    sub_220FC1860();
    sub_220FC31D0();
  }
}

uint64_t sub_220E9E870(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v14 - v6;
  v8 = (v1 + OBJC_IVAR____TtC11WeatherMaps30ContextMenuInteractionDelegate_currentPreviewViewController);
  v9 = *(v1 + OBJC_IVAR____TtC11WeatherMaps30ContextMenuInteractionDelegate_currentPreviewViewController);
  *v8 = 0;
  v8[1] = 0;

  v10 = sub_220FC1070();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  v11 = OBJC_IVAR____TtC11WeatherMaps30ContextMenuInteractionDelegate_location;
  swift_beginAccess();
  sub_220EA01C0(v7, v1 + v11);
  swift_endAccess();
  type metadata accessor for ContextMenuInteraction();
  result = swift_dynamicCastClass();
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = a1;
      sub_220F04DD4();

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_220E9E9BC(void *a1, double a2, double a3)
{
  v4 = v3;
  type metadata accessor for ContextMenuInteraction();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    v10 = &result[OBJC_IVAR____TtC11WeatherMaps22ContextMenuInteraction_weatherDataSource];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = result;
      v12 = *(v10 + 1);
      v13 = a1;
      OUTLINED_FUNCTION_4_17();
      if (sub_220F04078())
      {
        OUTLINED_FUNCTION_4_17();
        sub_220F044F8();
        v15 = v14;
        v17 = v16;
        v18 = [v9 view];
        if (v18)
        {
          v19 = v18;
          [v18 bounds];
        }

        else
        {
          v20 = [objc_opt_self() sharedApplication];
          sub_220FC2DD0();

          __swift_project_boxed_opaque_existential_1(v29, v29[3]);
          sub_220FC2530();
          __swift_destroy_boxed_opaque_existential_0(v29);
        }

        v21 = sub_220E9CB44();
        v23 = v22;
        v24 = [objc_opt_self() valueWithCGPoint_];
        sub_220E1966C(0, &qword_27CF9DB98);
        v25 = swift_allocObject();
        *(v25 + 16) = v21;
        *(v25 + 24) = v23;
        v26 = swift_allocObject();
        v26[2] = v11;
        v26[3] = v12;
        v26[4] = v9;
        v26[5] = v15;
        v26[6] = v17;
        v26[7] = v4;
        v26[8] = v21;
        v26[9] = v23;
        v27 = v21;
        v28 = v4;
        return sub_220E9F5DC(v24, sub_220E9FF1C, v25, sub_220E9FF44, v26);
      }

      else
      {

        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_220E9EC34(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  sub_220E1966C(0, &qword_27CF9CAE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_220FC8F40;
  sub_220E1966C(0, &qword_27CF9DBB8);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = a6;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = a7;
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  v19 = a8;
  swift_unknownObjectRetain();
  v20 = a6;
  v21 = a7;
  *(v17 + 32) = sub_220E9F52C(sub_220EA00A4, v18);
  return sub_220FC31A0();
}

void sub_220E9ED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_220FC1070();
  sub_220FC1570();
  v12 = swift_allocObject();
  *(v12 + 24) = a8;
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a5;

  v14 = a5;
  v15 = sub_220FC13B0();
  type metadata accessor for ContextMenuInteractionDelegate();
  sub_220FC14B0();
}

uint64_t sub_220E9EED4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v42 = sub_220FC2340();
  v45 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v8);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220FC2390();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v40 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220FC1070();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v18 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, a1, v13, v17);
  v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  (*(v14 + 32))(v22 + v19, v18, v13);
  v23 = v37;
  *(v22 + v20) = v36;
  v24 = (v22 + v21);
  v26 = v38;
  v25 = v39;
  *v24 = v23;
  v24[1] = v26;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v25;
  sub_220E1966C(0, &qword_2812C5CA0);
  v27 = a2;

  v28 = v25;
  v29 = sub_220FC2FC0();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_220EA0114;
  *(v30 + 24) = v22;
  aBlock[4] = sub_220E451F0;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220F6DA78;
  aBlock[3] = &block_descriptor_29;
  v31 = _Block_copy(aBlock);

  v32 = v40;
  sub_220FC2350();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_220EA0370(&qword_2812C5E08, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
  sub_220E62E38();
  v34 = v41;
  v33 = v42;
  sub_220FC3430();
  MEMORY[0x223D9C530](0, v32, v34, v31);
  _Block_release(v31);

  (*(v45 + 8))(v34, v33);
  return (*(v43 + 8))(v32, v44);
}

uint64_t sub_220E9F300(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v27[1] = a5;
  v28 = a4;
  v10 = type metadata accessor for WeatherMapPreviewLocationState();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v27 - v16;
  v18 = sub_220FC1070();
  v19 = *(*(v18 - 8) + 16);
  v19(v17, a2, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  v20 = OBJC_IVAR____TtC11WeatherMaps30ContextMenuInteractionDelegate_location;
  swift_beginAccess();
  sub_220EA01C0(v17, a1 + v20);
  swift_endAccess();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    v19(v13, a2, v18);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D5B0);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
    (*(v23 + 16))(v13, ObjectType, v23);
  }

  sub_220E9CDA8(a2, a6);
  v28();
}

id sub_220E9F52C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_220E32710;
  v5[3] = &block_descriptor_14;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() elementWithProvider_];
  _Block_release(v2);

  return v3;
}

id sub_220E9F5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_220E9FF5C;
  v16 = &block_descriptor_8;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_220E9FFAC;
  v16 = &block_descriptor_5;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_220E2DD2C(a4);
  sub_220E2DD2C(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

id sub_220E9F7F4(void *a1, void *a2)
{
  v3 = [a1 identifier];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  result = [a2 view];
  if (result)
  {
    v7 = result;
    [v5 CGPointValue];
    v10 = [objc_allocWithZone(MEMORY[0x277D758E0]) initWithContainer:v7 center:{v8, v9}];

    v11 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
    v12 = [objc_allocWithZone(MEMORY[0x277D75208]) init];
    [v11 setShadowPath_];

    v13 = objc_opt_self();
    v14 = [v13 clearColor];
    [v11 setBackgroundColor_];

    v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v16 = [v13 clearColor];
    [v15 setBackgroundColor_];

    sub_220E1966C(0, &qword_27CF9DB90);
    v17 = sub_220E9FEB4(v15, v11, v10);
    swift_unknownObjectRelease();
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_220E9FB1C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v17 - v7;
  v9 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_1_24();
  type metadata accessor for ContextMenuInteraction();
  result = swift_dynamicCastClass();
  if (result)
  {
    v15 = OBJC_IVAR____TtC11WeatherMaps30ContextMenuInteractionDelegate_location;
    swift_beginAccess();
    sub_220E9FDDC(v1 + v15, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      return sub_220E9FE4C(v8);
    }

    else
    {
      (*(v11 + 32))(v2, v8, v9);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = a1;
        sub_220F04ACC();

        swift_unknownObjectRelease();
      }

      return (*(v11 + 8))(v2, v9);
    }
  }

  return result;
}

void sub_220E9FCF0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(id))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a7(v10);

  swift_unknownObjectRelease();
}

uint64_t sub_220E9FDDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220E9FE4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_220E9FEB4(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithView:a1 parameters:a2 target:a3];

  return v6;
}

void *sub_220E9FF1C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_220E9FF5C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_220E9FFAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_220E1966C(0, &unk_27CF9DBA0);
  v2 = sub_220FC2970();

  v3 = v1(v2);

  return v3;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220EA0114()
{
  v1 = *(sub_220FC1070() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_220E9F300(v6, v0 + v2, v5, v7, v8, v9);
}

uint64_t sub_220EA01C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_220EA0260(uint64_t a1, void (*a2)(void *, uint64_t))
{
  v4 = sub_220FC1070();
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_5_11();
  sub_220E9DD70(a1, v5, v6, a2);
}

uint64_t sub_220EA02E0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_220FC1070();
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_5_11();

  return a2(a1);
}

uint64_t sub_220EA0370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_34Tm()
{
  v1 = sub_220FC1070();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_220EA04C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 7;
      v2 = v3 - 7;
      if (!v4)
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

uint64_t sub_220EA0500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 6;
    }
  }

  return result;
}

uint64_t sub_220EA0554(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EA0574(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps21OverlayRenderResourceO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220EA05E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EA0620(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_220EA066C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11WeatherCore11CountryCodeOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps25OverlayRenderResourceTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_220EA06E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    v4 = v3 - 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 6)
  {
    return v4 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EA0758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

void *sub_220EA07A8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 2147483646;
  }

  else if (a2)
  {
    result[1] = a2 + 1;
  }

  return result;
}

uint64_t sub_220EA07EC()
{
  v2 = sub_220EEBA60();
  MEMORY[0x223D9BD60](45, 0xE100000000000000);
  v0 = sub_220FC38F0();
  MEMORY[0x223D9BD60](v0);

  return v2;
}

BOOL sub_220EA0870(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (*(a1 + 8) == *(a2 + 8) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 ? (v3 = *(a1 + 24) == *(a2 + 24)) : (v3 = 0), v3))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EA08F8()
{
  OUTLINED_FUNCTION_2_19();
  v1 = sub_220FC3A40();
  OUTLINED_FUNCTION_3_17(v1);
  MEMORY[0x223D9CFA0](v0);
  return sub_220FC3A90();
}

uint64_t sub_220EA0960()
{
  OUTLINED_FUNCTION_2_19();
  v1 = sub_220FC3A40();
  OUTLINED_FUNCTION_3_17(v1);
  MEMORY[0x223D9CFA0](v0);
  return sub_220FC3A90();
}

unint64_t sub_220EA09C8()
{
  result = qword_27CF9DBF0;
  if (!qword_27CF9DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DBF0);
  }

  return result;
}

unint64_t sub_220EA0A20()
{
  result = qword_2812C6698;
  if (!qword_2812C6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C6698);
  }

  return result;
}

void sub_220EA0A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a4)
  {
    case 2:
      if ((a1 - 0x800000000000000) >> 60 != 15)
      {
        goto LABEL_34;
      }

      if ((2 * a1 * a2) >> 64 != (2 * a1 * a2) >> 63)
      {
        goto LABEL_36;
      }

      return;
    case 3:
      goto LABEL_17;
    case 4:
      goto LABEL_10;
    case 5:
      goto LABEL_15;
    case 6:
      OUTLINED_FUNCTION_0_28();
      if (!v6)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_4_18();
      if (!v7)
      {
        return;
      }

      __break(1u);
LABEL_10:
      OUTLINED_FUNCTION_0_28();
      if (!v6)
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_4_18();
      if (!v7)
      {
        return;
      }

      __break(1u);
LABEL_15:
      if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
      {
        return;
      }

      __break(1u);
LABEL_17:
      if (qword_2812C7508 == -1)
      {
        goto LABEL_18;
      }

      while (2)
      {
        swift_once();
LABEL_18:

        v8 = sub_220E1B804();

        if (v8 & 1) != 0 || (, v9 = sub_220E20F44(), , (v9))
        {

          sub_220EA0C38(a1, a2, 8);
        }

        else
        {
          OUTLINED_FUNCTION_0_28();
          if (!v6)
          {
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_4_18();
          if (v7)
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            continue;
          }
        }

        return;
      }

    default:
      OUTLINED_FUNCTION_0_28();
      if (v6)
      {
        OUTLINED_FUNCTION_4_18();
        if (!v7)
        {
          return;
        }
      }

      else
      {
        __break(1u);
LABEL_36:
        __break(1u);
      }

      __break(1u);
LABEL_38:
      __break(1u);
      return;
  }
}

uint64_t sub_220EA0C38(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = 16 * result;
  if (16 * result == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_16;
  }

  v5 = v3 / a3;
  v6 = v3 / a3 * a2;
  if ((v5 * a2) >> 64 != v6 >> 63)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 != 0x8000000000000000 || a3 != -1)
  {
    return v6 / a3;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_220EA0CA4(uint64_t a1, uint64_t a2)
{
  result = 4804929;
  switch(a2)
  {
    case 1:
      return result;
    case 2:
      result = 0x7473616365726F46;
      break;
    case 3:
      result = 0x7261646152;
      break;
    case 4:
      result = 0x766F437261646152;
      break;
    case 5:
      result = 0x74617265706D6554;
      break;
    case 6:
      result = 0x74636556646E6957;
      break;
    default:
      sub_220EA1090();
      v3 = sub_220FC1290();
      MEMORY[0x223D9BD60](v3);

      result = 759779649;
      break;
  }

  return result;
}

uint64_t sub_220EA0DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  switch(a2)
  {
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    case 6:
      return a4 == 6;
    default:
      if ((a4 - 2) < 5)
      {
        return 0;
      }

      if (a2 != 1)
      {
        if (a4 == 1)
        {
          sub_220EA10E4(a3, 1);
        }

        else
        {
          sub_220EA10E4(a3, a4);
          v7 = sub_220FC0C10();
          sub_220E5E3BC(a3, v4);
          if (v7)
          {
            return 1;
          }
        }

        return 0;
      }

      if (a4 != 1)
      {
        return 0;
      }

      sub_220EA10E4(a3, 1);
      return v4;
  }
}

uint64_t sub_220EA0EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 3:
      v3 = 2;
      goto LABEL_7;
    case 4:
      v3 = 3;
      goto LABEL_7;
    case 5:
      v3 = 4;
      goto LABEL_7;
    case 6:
      v3 = 5;
LABEL_7:
      result = MEMORY[0x223D9CFA0](v3);
      break;
    default:
      MEMORY[0x223D9CFA0](0);
      if (a3 == 1)
      {
        result = sub_220FC3A60();
      }

      else
      {
        sub_220FC3A60();

        result = sub_220FC0C20();
      }

      break;
  }

  return result;
}

uint64_t sub_220EA0FCC(uint64_t a1, uint64_t a2)
{
  sub_220FC3A40();
  sub_220EA0EF8(v5, a1, a2);
  return sub_220FC3A90();
}

uint64_t sub_220EA1048()
{
  v1 = *v0;
  v2 = v0[1];
  sub_220FC3A40();
  sub_220EA0EF8(v4, v1, v2);
  return sub_220FC3A90();
}

unint64_t sub_220EA1090()
{
  result = qword_27CF9DC00;
  if (!qword_27CF9DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DC00);
  }

  return result;
}

uint64_t sub_220EA10E4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_220EA1100(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 81))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 <= 4)
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

uint64_t sub_220EA1140(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_220EA11BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EA11DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_220EA1208(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220EA1224(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_220EA1264(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 13))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = ((*(a1 + 12) >> 7) & 0xFFFFFF81 | (2 * ((*(a1 + 12) >> 1) & 0x3F))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_220EA12B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 12) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_220EA1318(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x7F;
  return result;
}

uint64_t sub_220EA1334(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = a1 + 8;
  v4 = (v3 | (*(result + 4) << 32)) & 0x1FFFFFFFFLL | (a2 << 39);
  *result = v3;
  *(result + 4) = BYTE4(v4);
  return result;
}

uint64_t sub_220EA1364(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_220EA13A4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

_BYTE *sub_220EA13F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220EA14CC()
{
  result = qword_27CF9DC10;
  if (!qword_27CF9DC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DC10);
  }

  return result;
}

BOOL sub_220EA1520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x8000000000) != 0)
  {
    if ((a4 & 0x8000000000) == 0 || *&a1 != *&a3)
    {
      return 0;
    }

    if ((a2 & 0x100000000) == 0)
    {
      return (a4 & 0x100000000) == 0 && a2 == a4;
    }
  }

  else
  {
    if ((a4 & 0x8000000000) != 0 || *&a1 != *&a3)
    {
      return 0;
    }

    if ((a2 & 0x100000000) == 0)
    {
      return (a4 & 0x100000000) == 0 && a2 == a4;
    }
  }

  return (a4 & 0x100000000) != 0;
}

uint64_t sub_220EA1580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 & 0xFFFFFFFFFFLL;
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x223D9CFA0]((a3 & 0x8000000000) != 0);
  MEMORY[0x223D9CFD0](v4);
  if ((v3 & 0x100000000) != 0)
  {
    return MEMORY[0x223D9CFA0](1);
  }

  MEMORY[0x223D9CFA0](0);
  return sub_220FC3A70();
}

uint64_t sub_220EA15F4(uint64_t a1, uint64_t a2)
{
  sub_220FC3A40();
  sub_220EA1580(v5, a1, a2 & 0xFFFFFFFFFFLL);
  return sub_220FC3A90();
}

BOOL sub_220EA1644(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) == 0)
  {
    if ((a2 & 0x100000000) == 0)
    {
      return a1 == a2;
    }

    return 0;
  }

  return (a2 & 0x100000000) != 0;
}

uint64_t sub_220EA166C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    return MEMORY[0x223D9CFA0](1);
  }

  MEMORY[0x223D9CFA0](0);
  return sub_220FC3A70();
}

uint64_t sub_220EA16B0(uint64_t a1)
{
  sub_220FC3A40();
  if ((a1 & 0x100000000) != 0)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    MEMORY[0x223D9CFA0](0);
    sub_220FC3A70();
  }

  return sub_220FC3A90();
}

uint64_t sub_220EA173C()
{
  v1 = *v0;
  v2 = *(v0 + 8) | (*(v0 + 12) << 32);
  sub_220FC3A40();
  sub_220EA1580(v4, v1, v2);
  return sub_220FC3A90();
}

unint64_t sub_220EA17C0()
{
  result = qword_27CF9DC18;
  if (!qword_27CF9DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DC18);
  }

  return result;
}

uint64_t sub_220EA1888()
{
  v1 = *(v0 + 4);
  sub_220FC3A40();
  if (v1)
  {
    MEMORY[0x223D9CFA0](1);
  }

  else
  {
    MEMORY[0x223D9CFA0](0);
    sub_220FC3A70();
  }

  return sub_220FC3A90();
}

uint64_t sub_220EA18F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9EF0;
  strcpy((inited + 32), "baseMapStyle");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  type metadata accessor for UIUserInterfaceStyle(0);
  *(inited + 48) = a1;
  *(inited + 72) = v9;
  strcpy((inited + 80), "labelPositions");
  *(inited + 95) = -18;
  *(inited + 96) = a2 & 1;
  *(inited + 120) = &unk_28347FE58;
  *(inited + 128) = 0x73726579616CLL;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DC40);
  *(inited + 144) = a3;

  sub_220FC2600();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DC48);
  a4[4] = sub_220E5D7E8(&qword_27CF9DC50, &qword_27CF9DC48);
  __swift_allocate_boxed_opaque_existential_1(a4);
  return sub_220FC12A0();
}

uint64_t sub_220EA1AB8()
{
  sub_220EA1FA4();

  return sub_220FC1290();
}

uint64_t sub_220EA1AF4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = 0x65764F776F6C6562;
  }

  else
  {
    v3 = 0x65764F65766F6261;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_1_25(inited, xmmword_220FC8E30);
  v5[4].n128_u64[1] = MEMORY[0x277D837D0];
  v5[3].n128_u64[0] = v3;
  v5[3].n128_u64[1] = 0xEC00000079616C72;
  sub_220FC2600();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DC60);
  a2[4] = sub_220E5D7E8(&qword_27CF9DC68, &qword_27CF9DC60);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_220FC12A0();
}

uint64_t sub_220EA1C28()
{
  sub_220EA1FF8();

  return sub_220FC1290();
}

uint64_t sub_220EA1C64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 << 24 >> 24 < 0)
  {
    v6 = 0x72656874616577;
  }

  else
  {
    v6 = 0x746365666665;
  }

  if (a2 << 24 >> 24 < 0)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  v9 = OUTLINED_FUNCTION_1_25(inited, xmmword_220FC9EF0);
  v10 = MEMORY[0x277D837D0];
  v9[3].n128_u64[0] = v6;
  v9[3].n128_u64[1] = v7;
  v9[4].n128_u64[1] = v10;
  v9[5].n128_u64[0] = 0x7974696361706FLL;
  v11 = MEMORY[0x277D839F8];
  v9[5].n128_u64[1] = 0xE700000000000000;
  v9[6].n128_u64[0] = a1;
  v9[7].n128_u64[1] = v11;
  v9[8].n128_u64[0] = 0x646F4D646E656C62;
  v9[8].n128_u64[1] = 0xE900000000000065;
  v9[10].n128_u64[1] = &unk_28347FCA8;
  v9[9].n128_u32[0] = a2;
  v9[9].n128_u8[4] = BYTE4(a2) & 1;
  sub_220FC2600();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DC78);
  a3[4] = sub_220E5D7E8(&qword_27CF9DC80, &qword_27CF9DC78);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_220FC12A0();
}

uint64_t sub_220EA1E08()
{
  sub_220EA204C();

  return sub_220FC1290();
}

unint64_t sub_220EA1E48()
{
  result = qword_27CF9DC20;
  if (!qword_27CF9DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DC20);
  }

  return result;
}

unint64_t sub_220EA1EA0()
{
  result = qword_27CF9DC28;
  if (!qword_27CF9DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DC28);
  }

  return result;
}

unint64_t sub_220EA1EF8()
{
  result = qword_27CF9DC30;
  if (!qword_27CF9DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DC30);
  }

  return result;
}

unint64_t sub_220EA1F50()
{
  result = qword_27CF9DC38;
  if (!qword_27CF9DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DC38);
  }

  return result;
}

unint64_t sub_220EA1FA4()
{
  result = qword_27CF9DC58;
  if (!qword_27CF9DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DC58);
  }

  return result;
}

unint64_t sub_220EA1FF8()
{
  result = qword_27CF9DC70;
  if (!qword_27CF9DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DC70);
  }

  return result;
}

unint64_t sub_220EA204C()
{
  result = qword_27CF9DC88;
  if (!qword_27CF9DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9DC88);
  }

  return result;
}

uint64_t sub_220EA20A0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (v3 == 5)
  {
    if ((a2 - 1) < 2)
    {
      return 2;
    }
  }

  else if (v3 != 4 && v3 != 3)
  {
    if (qword_2812C7508 != -1)
    {
      swift_once();
    }

    v4 = sub_220E1B804();

    if ((v4 & 1) != 0 && !v3)
    {
      if (qword_2812C5EC8 != -1)
      {
        swift_once();
      }

      v5 = sub_220FC17A0();
      __swift_project_value_buffer(v5, qword_2812C5ED0);
      v6 = sub_220FC1780();
      v7 = sub_220FC2E10();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_220E15000, v6, v7, "Invalid precipitation kind supplied!", v8, 2u);
        MEMORY[0x223D9DDF0](v8, -1, -1);
      }
    }
  }

  return v2;
}

uint64_t sub_220EA22B8()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps8HintView_label];
  if (*&v0[OBJC_IVAR____TtC11WeatherMaps8HintView_title + 8])
  {

    v3 = sub_220FC26C0();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];

  v7.receiver = v0;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  [v0 bounds];
  return sub_220EA3A84(v4, v5);
}

uint64_t sub_220EA238C()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return sub_220EA3A84(v1, v2);
}

char *sub_220EA23E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v73 = a4;
  v74 = a2;
  v75 = a3;
  v76 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_220FC18A0();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v69 - v15;
  v17 = sub_220FC3320();
  OUTLINED_FUNCTION_6();
  v19 = v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v69 - v26;
  v28 = &v4[OBJC_IVAR____TtC11WeatherMaps8HintView_title];
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11WeatherMaps8HintView_image] = 0;
  v29 = &v4[OBJC_IVAR____TtC11WeatherMaps8HintView_subtitle];
  *v29 = 0;
  *(v29 + 1) = 0;
  v72 = OBJC_IVAR____TtC11WeatherMaps8HintView_dismissIcon;
  sub_220FC3280();
  sub_220FC32B0();
  sub_220E1966C(0, &qword_2812C5B50);
  v30 = *MEMORY[0x277D74418];
  v71 = *MEMORY[0x277D76968];
  sub_220F6DD88(0x6B72616D78, 0xE500000000000000, v71, -1, v30, 0, 0, 2);
  sub_220FC3310();
  sub_220FC1890();
  sub_220FC1880();
  (*(v8 + 16))(v12, v16, v6);
  sub_220FC3270();
  sub_220E1966C(0, &qword_27CF9CD50);
  (*(v19 + 16))(v23, v27, v17);
  v31 = sub_220FC3330();
  v32 = objc_opt_self();
  v33 = [v32 tertiaryLabelColor];
  [v31 setTintColor_];

  (*(v8 + 8))(v16, v6);
  (*(v19 + 8))(v27, v17);
  *&v5[v72] = v31;
  *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_iconSpacerWidth] = 0x4026000000000000;
  *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_titleSpacerHeight] = 0x4010000000000000;
  *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_dismissAffordancePadding] = 0x4020000000000000;
  v34 = OBJC_IVAR____TtC11WeatherMaps8HintView_borderLayer;
  *&v5[v34] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v35 = OBJC_IVAR____TtC11WeatherMaps8HintView_maskLayer;
  result = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *&v5[v35] = result;
  v37 = v76;
  if (*(v76 + 48) == 15)
  {
    __break(1u);
  }

  else
  {
    if (v73)
    {

      v38 = sub_220E3D488(0, 1);
    }

    else
    {
      v38 = [objc_allocWithZone(type metadata accessor for BackgroundEffectView()) init];
    }

    *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_backgroundEffectView] = v38;
    [v38 setTranslatesAutoresizingMaskIntoConstraints_];
    v39 = v37;
    memcpy(&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_configuration], v37, 0x51uLL);
    v40 = &v5[OBJC_IVAR____TtC11WeatherMaps8HintView_onDismissHandler];
    v42 = v74;
    v41 = v75;
    *v40 = v74;
    *(v40 + 1) = v41;
    *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_maxContentWidth] = v39[9];
    v43 = objc_allocWithZone(MEMORY[0x277D75D18]);
    sub_220E1AADC(v42);
    v44 = [v43 init];
    *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_contentView] = v44;
    v45 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_label] = v45;
    v46 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_subtitleLabel] = v46;
    v47 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    *&v5[OBJC_IVAR____TtC11WeatherMaps8HintView_icon] = v47;
    v77.receiver = v5;
    v77.super_class = ObjectType;
    v48 = objc_msgSendSuper2(&v77, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v49 = OBJC_IVAR____TtC11WeatherMaps8HintView_contentView;
    v50 = *&v48[OBJC_IVAR____TtC11WeatherMaps8HintView_contentView];
    v51 = v48;
    [v50 setTranslatesAutoresizingMaskIntoConstraints_];
    v52 = OBJC_IVAR____TtC11WeatherMaps8HintView_label;
    v53 = *&v51[OBJC_IVAR____TtC11WeatherMaps8HintView_label];
    sub_220E1966C(0, &qword_2812C5B80);
    v54 = *MEMORY[0x277D76918];
    v55 = *MEMORY[0x277D74410];
    v56 = v53;
    v57 = OUTLINED_FUNCTION_1_26(v54, v55);
    [v56 setFont_];

    v58 = *&v51[v52];
    v59 = [v32 labelColor];
    [v58 setTextColor_];

    [*&v51[v52] setNumberOfLines_];
    [*&v51[v52] setLineBreakMode_];
    v60 = OBJC_IVAR____TtC11WeatherMaps8HintView_subtitleLabel;
    v61 = *&v51[OBJC_IVAR____TtC11WeatherMaps8HintView_subtitleLabel];
    v62 = OUTLINED_FUNCTION_1_26(v71, v30);
    [v61 setFont_];

    v63 = *&v51[v60];
    v64 = [v32 secondaryLabelColor];
    [v63 setTextColor_];

    [*&v51[v60] setNumberOfLines_];
    [*&v51[v60] setLineBreakMode_];
    v65 = *&v51[OBJC_IVAR____TtC11WeatherMaps8HintView_backgroundEffectView];
    v66 = v51;
    [v66 addSubview_];
    [v66 addSubview_];
    if (*(v76 + 80))
    {
      [v66 addSubview_];
    }

    [*&v48[v49] addSubview_];
    [*&v48[v49] addSubview_];
    [*&v48[v49] addSubview_];
    v67 = [v66 layer];
    [v67 addSublayer_];

    sub_220EA2BC8();
    sub_220EA2CFC();
    v68 = *&v66[OBJC_IVAR____TtC11WeatherMaps8HintView_dismissIcon];
    [v68 addTarget:v66 action:sel_dismissTapped forControlEvents:64];

    sub_220E2DD2C(v74);

    return v66;
  }

  return result;
}