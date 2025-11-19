uint64_t sub_1DA3E6C14()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 256);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12_6();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA3E6D0C()
{
  if (!*(v0 + 40))
  {
    v45 = *(v0 + 176);
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    sub_1DA4219C4();
    v46 = sub_1DA421A74();
    v47 = sub_1DA421F54();
    if (OUTLINED_FUNCTION_8_11(v47))
    {
      v48 = OUTLINED_FUNCTION_19_4();
      OUTLINED_FUNCTION_15_3(v48);
      OUTLINED_FUNCTION_4_12();
      _os_log_impl(v49, v50, v51, v52, v53, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    v54 = *(v0 + 208);
    v55 = *(v0 + 216);
    v57 = *(v0 + 192);
    v56 = *(v0 + 200);
    v59 = *(v0 + 176);
    v58 = *(v0 + 184);
    v60 = *(v0 + 160);
    v61 = *(v0 + 168);
    v86 = *(v0 + 152);

    v55(v59, v60);

    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_16_3();

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 128);
  v4 = (v3 + *(v0 + 232));
  v5 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v5;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 120) = *(v0 + 64);
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_24();
  sub_1DA421934();
  v8 = v7;
  *(v0 + 264) = v7;
  v9 = vabdd_f64(v7, *(v3 + v2));
  if (v9 > 5.0)
  {
    v10 = *(v0 + 200);
    v11 = *(v0 + 128);
    sub_1DA4219C4();

    v12 = sub_1DA421A74();
    v13 = sub_1DA421F54();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 240);
      v15 = *(v0 + 128);
      v16 = swift_slowAlloc();
      *v16 = 134218752;
      *(v16 + 4) = v8;
      *(v16 + 12) = 2048;
      *(v16 + 14) = *(v15 + v14);
      *(v16 + 22) = 2048;
      *(v16 + 24) = v9;
      *(v16 + 32) = 2048;
      *(v16 + 34) = 0x4014000000000000;
      OUTLINED_FUNCTION_4_12();
      _os_log_impl(v17, v18, v19, v20, v21, 0x2Au);
      OUTLINED_FUNCTION_7_9();
    }

    v22 = *(v0 + 216);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v25 = *(v0 + 160);
    v26 = *(v0 + 168);

    v22(v23, v25);
    sub_1DA4219C4();
    v27 = sub_1DA421A74();
    v28 = sub_1DA421F54();
    if (OUTLINED_FUNCTION_8_11(v28))
    {
      v29 = OUTLINED_FUNCTION_19_4();
      OUTLINED_FUNCTION_15_3(v29);
      OUTLINED_FUNCTION_4_12();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    v35 = *(v0 + 216);
    v36 = *(v0 + 192);
    v37 = *(v0 + 160);

    v38 = OUTLINED_FUNCTION_24();
    v35(v38);
    v39 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), *(v0 + 96));
    v40 = *(v39 + 16);
    v85 = v40 + *v40;
    v41 = v40[1];
    v42 = swift_task_alloc();
    *(v0 + 272) = v42;
    *v42 = v0;
    v42[1] = sub_1DA3E71B0;
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_16_3();

    __asm { BRAA            X2, X16 }
  }

  v64 = *(v0 + 184);
  sub_1DA4219C4();
  sub_1DA421A74();
  v65 = sub_1DA421F54();
  if (OUTLINED_FUNCTION_8_11(v65))
  {
    v66 = OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_15_3(v66);
    OUTLINED_FUNCTION_4_12();
    _os_log_impl(v67, v68, v69, v70, v71, 2u);
    OUTLINED_FUNCTION_7_9();
  }

  OUTLINED_FUNCTION_18_5();
  v72 = OUTLINED_FUNCTION_24();
  v3(v72);
  v74 = *(v0 + 112);
  v73 = *(v0 + 120);
  v75 = *(v1 + v2);

  v74(v76);

  sub_1DA3E7FC4(v0 + 72);
  v77 = *(v0 + 224);
  v78 = *(v0 + 128);
  v79 = *(MEMORY[0x1E69E8678] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v0 + 256) = v80;
  *v80 = v81;
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_16_3();

  return MEMORY[0x1EEE6D9C8](v82);
}

uint64_t sub_1DA3E71B0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 272);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;
  *(v7 + 280) = v6;

  v8 = OUTLINED_FUNCTION_12_6();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DA3E72B0()
{
  v4 = v0[33];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[16];
  v8 = *(v7 + v5);
  *(v7 + v5) = v0[35];

  *(v7 + v6) = v4;
  v9 = v0[23];
  sub_1DA4219C4();
  sub_1DA421A74();
  v10 = sub_1DA421F54();
  if (OUTLINED_FUNCTION_8_11(v10))
  {
    v11 = OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_15_3(v11);
    OUTLINED_FUNCTION_4_12();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
    OUTLINED_FUNCTION_7_9();
  }

  OUTLINED_FUNCTION_18_5();
  v17 = OUTLINED_FUNCTION_24();
  v2(v17);
  v19 = v0[14];
  v18 = v0[15];
  v20 = *(v3 + v1);

  v19(v21);

  sub_1DA3E7FC4((v0 + 9));
  v22 = v0[28];
  v23 = v0[16];
  v24 = *(MEMORY[0x1E69E8678] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[32] = v25;
  *v25 = v26;
  v27 = OUTLINED_FUNCTION_0_14();

  return MEMORY[0x1EEE6D9C8](v27);
}

uint64_t SiriSuggestionsIntelligence.ContextExtractorQueueProcessor.deinit()
{
  v1 = OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_stream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D8, &qword_1DA427850);
  OUTLINED_FUNCTION_3_13(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_cachedResults);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence30ContextExtractorQueueProcessor_clock));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SiriSuggestionsIntelligence.ContextExtractorQueueProcessor.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.ContextExtractorQueueProcessor.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DA3E74C8()
{
  OUTLINED_FUNCTION_16();
  *(v0 + 16) = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6E8, &qword_1DA427AE0) - 8) + 64) + 15;
  *(v0 + 24) = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DA3E7558()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6F0, &qword_1DA427AE8);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = *(MEMORY[0x1E69D3018] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA30, &qword_1DA423970);
  v6 = type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
  *v4 = v0;
  v4[1] = sub_1DA3E7658;
  v9 = v0[2];
  v10 = v0[3];

  return MEMORY[0x1EEE40720](v9, v10, &unk_1DA427AF0, 0, v5, v6, v7, v8);
}

void sub_1DA3E7658(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *v2;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;

  if (v1)
  {
  }

  else
  {
    sub_1DA3E81A4(*(v5 + 24), &qword_1ECBAF6E8, &qword_1DA427AE0);

    v9 = *(v7 + 8);

    v9(a1);
  }
}

uint64_t sub_1DA3E77C4()
{
  v1 = v0[2];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService();
  sub_1DA3E7F7C(&qword_1EE102C78, 255, type metadata accessor for SiriSuggestionsIntelligence.DefaultSuggestionsFeatureService);
  v3 = *(v2 + 8);
  sub_1DA3AF774();
  v0[3] = v4;
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1DA3E7924;

  return sub_1DA3AC480();
}

uint64_t sub_1DA3E7924()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_7_0();

  return v7(v6);
}

uint64_t sub_1DA3E7A28()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3B2D04;

  return sub_1DA3E74C8();
}

uint64_t protocol witness for Destroyable.destroy() in conformance SiriSuggestionsIntelligence.DefaultContextFeatureExtractors()
{
  OUTLINED_FUNCTION_16();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3A8D08;

  return sub_1DA3E54E0();
}

uint64_t sub_1DA3E7B58(uint64_t a1, uint64_t a2)
{
  result = sub_1DA3E7F7C(qword_1EE101488, a2, type metadata accessor for SiriSuggestionsIntelligence.QueuedContextFeatureExtractors);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA3E7BD4(uint64_t a1)
{
  result = sub_1DA3E7BFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DA3E7BFC()
{
  result = qword_1EE102D70;
  if (!qword_1EE102D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102D70);
  }

  return result;
}

void sub_1DA3E7C78()
{
  sub_1DA3E7E60(319, &qword_1EE100FC0, MEMORY[0x1E69E8660]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DA3E7D4C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA3E7D84()
{
  sub_1DA3E7E60(319, &qword_1EE100FB8, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DA3E7E60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SiriSuggestionsIntelligence.ContextFeatureExtractionAction);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DA3E7ED0(uint64_t a1, int a2)
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

uint64_t sub_1DA3E7F10(uint64_t result, int a2, int a3)
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

uint64_t sub_1DA3E7F7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA3E7FFC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6F8, &qword_1DA427B10) - 8) + 80);

  return sub_1DA3E58C8();
}

uint64_t sub_1DA3E8088(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6D8, &qword_1DA427850);
  OUTLINED_FUNCTION_5_2(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v2 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1DA3A8004;

  return sub_1DA3E64A8(a1, v9, v10, v1 + v6, v1 + v8);
}

uint64_t sub_1DA3E81A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_13(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1)
{
  *(a1 + 8) = sub_1DA3E6C14;
  v2 = *(v1 + 152);
  v3 = *(v1 + 136);
  return v1 + 16;
}

void OUTLINED_FUNCTION_7_9()
{

  JUMPOUT(0x1DA74E430);
}

BOOL OUTLINED_FUNCTION_8_11(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_18_5()
{
  v3 = v1[31];
  v4 = v1[27];
  v5 = v1[23];
  v6 = v1[20];
  v7 = v1[21];
  v8 = v1[16];
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return swift_slowAlloc();
}

uint64_t sub_1DA3E8314()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v1(v6);
  v3 = v7;
  if (v7)
  {
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v3 = (*(v4 + 40))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_1DA3BA470(v6);
  }

  return v3;
}

uint64_t *sub_1DA3E83B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return a3;
  }

  v43 = a3;
  v44 = a4;
  sub_1DA3A6A84();
  v8 = &v43;
  result = sub_1DA421FC4();
  if (!result[2])
  {
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:

    v14 = sub_1DA3E97E8(v4, v5, 10);
    v42 = v41;

    if (v42)
    {
      goto LABEL_83;
    }

    goto LABEL_66;
  }

  v8 = result;
  v4 = result[4];
  v5 = result[5];
  v10 = HIBYTE(v5) & 0xF;
  v11 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v12 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_81;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {
    goto LABEL_82;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v4 & 0x1000000000000000) == 0)
    {
      goto LABEL_87;
    }

    for (result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32); ; result = sub_1DA422104())
    {
      v13 = *result;
      if (v13 == 43)
      {
        if (v11 < 1)
        {
          goto LABEL_90;
        }

        v10 = v11 - 1;
        if (v11 != 1)
        {
          v14 = 0;
          if (!result)
          {
            goto LABEL_56;
          }

          v21 = result + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v13 == 45)
      {
        if (v11 < 1)
        {
          __break(1u);
          goto LABEL_89;
        }

        v10 = v11 - 1;
        if (v11 != 1)
        {
          v14 = 0;
          if (!result)
          {
            goto LABEL_56;
          }

          v15 = result + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v11)
      {
        v14 = 0;
        if (!result)
        {
LABEL_56:
          LOBYTE(v10) = 0;
          goto LABEL_65;
        }

        while (1)
        {
          v27 = *result - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v28 + v27;
          if (__OFADD__(v28, v27))
          {
            break;
          }

          result = (result + 1);
          if (!--v11)
          {
            goto LABEL_56;
          }
        }
      }

LABEL_64:
      v14 = 0;
      LOBYTE(v10) = 1;
LABEL_65:
      if (v10)
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

LABEL_66:
      v32 = __OFSUB__(a1, v14);
      v33 = a1 - v14;
      if (v32)
      {
        goto LABEL_84;
      }

      if (v8[2] < 2)
      {
        goto LABEL_85;
      }

      v34 = v8[6];
      v35 = v8[7];

      result = sub_1DA3E8844(v34, v35);
      if (v36)
      {
        goto LABEL_95;
      }

      a1 = result;

      v37 = a2 - a1;
      if (!__OFSUB__(a2, a1))
      {
        if ((v33 & 0x8000000000000000) != 0 || !v33 && v37 < 0)
        {
          sub_1DA3BA340();
          swift_allocError();
          *v38 = 0;
          *(v38 + 8) = 1;
          swift_willThrow();
          return a3;
        }

        if ((v37 & 0x8000000000000000) == 0)
        {
LABEL_78:
          v43 = sub_1DA422364();
          v44 = v39;
          MEMORY[0x1DA74D370](46, 0xE100000000000000);
          v40 = sub_1DA422364();
          MEMORY[0x1DA74D370](v40);

          return v43;
        }

        if (__OFSUB__(7, a1))
        {
          goto LABEL_92;
        }

        if (!__OFADD__(7 - a1, 1))
        {
          if (__OFADD__(a2, 8 - a1))
          {
            goto LABEL_94;
          }

          goto LABEL_78;
        }

        goto LABEL_93;
      }

LABEL_86:
      __break(1u);
LABEL_87:
      ;
    }
  }

  v43 = result[4];
  v44 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v4 == 43)
  {
    if (v10)
    {
      if (--v10)
      {
        v14 = 0;
        v24 = &v43 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v10)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }
  }

  else
  {
    if (v4 != 45)
    {
      if (v10)
      {
        v14 = 0;
        v29 = &v43;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          v29 = (v29 + 1);
          if (!--v10)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v10)
    {
      if (--v10)
      {
        v14 = 0;
        v18 = &v43 + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            break;
          }

          v20 = 10 * v14;
          if ((v14 * 10) >> 64 != (10 * v14) >> 63)
          {
            break;
          }

          v14 = v20 - v19;
          if (__OFSUB__(v20, v19))
          {
            break;
          }

          ++v18;
          if (!--v10)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1DA3E8844(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v17 = v27 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v22 = v27;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v27 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1DA422104();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_53;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_53;
              }
            }
          }

          goto LABEL_53;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_53:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v25 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v7 = sub_1DA3E97E8(result, a2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1DA3E8B3C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DA3E8BCC;

  return sub_1DA3E8ED0();
}

uint64_t sub_1DA3E8BCC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 24);
  v8 = *v4;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *(v6 + 48) = v3;

  if (v3)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 56) = a3;

    return MEMORY[0x1EEE6DFA0](sub_1DA3E8D20, 0, 0);
  }
}

uint64_t sub_1DA3E8D20()
{
  if (*(v0 + 56))
  {
    if (qword_1EE102E00 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v1 = 3157552;
    v2 = sub_1DA421A94();
    __swift_project_value_buffer(v2, static Logger.extractionCategory);
    v3 = sub_1DA421A74();
    v4 = sub_1DA421F54();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DA39E000, v3, v4, "[warning] DeviceFeatureExtractor: No OS version available. Assuming the latest build is already installed", v5, 2u);
      MEMORY[0x1DA74E430](v5, -1, -1);
    }

    v6 = 0xE300000000000000;
    goto LABEL_12;
  }

  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  v11 = sub_1DA3E8314();
  v13 = sub_1DA3E83B0(v9, v7, v11, v12);
  if (!v8)
  {
    v1 = v13;
    v6 = v14;

LABEL_12:
    v17 = *(v0 + 8);

    return v17(v1, v6);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1DA3E8EF0()
{
  v1 = *(v0 + 48);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1DA3E9018;

  return v8(v2, v3);
}

uint64_t sub_1DA3E9018(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 56);
  v5 = *v3;
  v5[8] = a1;
  v5[9] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA3E914C, 0, 0);
  }
}

uint64_t sub_1DA3E914C()
{
  v52 = v0;
  v1 = v0[9];
  if (v1)
  {
    v0[2] = v0[8];
    v0[3] = v1;
    v0[4] = 46;
    v0[5] = 0xE100000000000000;
    sub_1DA3A6A84();
    v2 = sub_1DA421FC4();
    v3 = v2;
    if (v2[2] <= 1uLL)
    {
      goto LABEL_3;
    }

    v18 = v2[4];
    v17 = v2[5];
    v19 = HIBYTE(v17) & 0xF;
    v20 = v18 & 0xFFFFFFFFFFFFLL;
    if (!((v17 & 0x2000000000000000) != 0 ? HIBYTE(v17) & 0xF : v18 & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_3;
    }

    v23 = v2[6];
    v22 = v2[7];
    if ((v17 & 0x1000000000000000) != 0)
    {
      v47 = v2[5];

      v1 = sub_1DA3E97E8(v18, v17, 10);
      v44 = v48;
LABEL_82:

      if ((v44 & 1) == 0)
      {
        v45 = sub_1DA3E8844(v23, v22);
        if ((v46 & 1) == 0)
        {
          v13 = v45;

          v14 = 0;
          goto LABEL_11;
        }

        goto LABEL_4;
      }

LABEL_3:

LABEL_4:
      if (qword_1EE102E00 != -1)
      {
        OUTLINED_FUNCTION_12();
      }

      v4 = sub_1DA421A94();
      __swift_project_value_buffer(v4, static Logger.extractionCategory);

      v5 = sub_1DA421A74();
      v6 = sub_1DA421F54();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v51[0] = v8;
        *v7 = 136315138;
        v9 = MEMORY[0x1DA74D4B0](v3, MEMORY[0x1E69E6158]);
        v11 = v10;

        v12 = sub_1DA3A5FE8(v9, v11, v51);

        *(v7 + 4) = v12;
        _os_log_impl(&dword_1DA39E000, v5, v6, "BuildVersionService: Unable to extract latest install from %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x1DA74E430](v8, -1, -1);
        MEMORY[0x1DA74E430](v7, -1, -1);
      }

      else
      {
      }

      v1 = 0;
      goto LABEL_10;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {
      v32 = v2[5];

      v51[0] = v18;
      v51[1] = v17 & 0xFFFFFFFFFFFFFFLL;
      if (v18 == 43)
      {
        if (v19)
        {
          if (v19 != 1)
          {
            OUTLINED_FUNCTION_4_13();
            while (1)
            {
              OUTLINED_FUNCTION_1_13();
              if (!v28 & v27)
              {
                break;
              }

              OUTLINED_FUNCTION_0_15();
              if (!v28)
              {
                break;
              }

              v1 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              OUTLINED_FUNCTION_3_14();
              if (v28)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_80;
        }

LABEL_90:
        __break(1u);
        return result;
      }

      if (v18 != 45)
      {
        if (v19)
        {
          v1 = 0;
          v41 = v51;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v1;
            if ((v1 * 10) >> 64 != (10 * v1) >> 63)
            {
              break;
            }

            v1 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            v41 = (v41 + 1);
            if (!--v19)
            {
              goto LABEL_79;
            }
          }
        }

        goto LABEL_80;
      }

      if (v19)
      {
        if (v19 != 1)
        {
          OUTLINED_FUNCTION_4_13();
          while (1)
          {
            OUTLINED_FUNCTION_1_13();
            if (!v28 & v27)
            {
              break;
            }

            OUTLINED_FUNCTION_0_15();
            if (!v28)
            {
              break;
            }

            v1 = v34 - v33;
            if (__OFSUB__(v34, v33))
            {
              break;
            }

            OUTLINED_FUNCTION_3_14();
            if (v28)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }
    }

    else
    {
      if ((v18 & 0x1000000000000000) != 0)
      {
        v24 = ((v17 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v25 = v2[5];
      }

      else
      {
        v49 = v2[5];

        result = sub_1DA422104();
        v24 = result;
        v20 = v50;
      }

      v26 = *v24;
      if (v26 == 43)
      {
        if (v20 >= 1)
        {
          if (v20 != 1)
          {
            v1 = 0;
            if (v24)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_13();
                if (!v28 & v27)
                {
                  goto LABEL_80;
                }

                OUTLINED_FUNCTION_0_15();
                if (!v28)
                {
                  goto LABEL_80;
                }

                v1 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_80;
                }

                OUTLINED_FUNCTION_3_14();
                if (v28)
                {
                  goto LABEL_81;
                }
              }
            }

            goto LABEL_79;
          }

          goto LABEL_80;
        }

        goto LABEL_89;
      }

      if (v26 != 45)
      {
        if (v20)
        {
          v1 = 0;
          if (v24)
          {
            while (1)
            {
              v39 = *v24 - 48;
              if (v39 > 9)
              {
                goto LABEL_80;
              }

              v40 = 10 * v1;
              if ((v1 * 10) >> 64 != (10 * v1) >> 63)
              {
                goto LABEL_80;
              }

              v1 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_80;
              }

              ++v24;
              if (!--v20)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_79;
        }

LABEL_80:
        v1 = 0;
        v31 = 1;
        goto LABEL_81;
      }

      if (v20 >= 1)
      {
        if (v20 != 1)
        {
          v1 = 0;
          if (v24)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_13();
              if (!v28 & v27)
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_0_15();
              if (!v28)
              {
                goto LABEL_80;
              }

              v1 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_3_14();
              if (v28)
              {
                goto LABEL_81;
              }
            }
          }

LABEL_79:
          v31 = 0;
LABEL_81:
          v44 = v31;
          goto LABEL_82;
        }

        goto LABEL_80;
      }

      __break(1u);
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

LABEL_10:
  v13 = 0;
  v14 = 1;
LABEL_11:
  v15 = v0[1];

  return v15(v1, v13, v14);
}

uint64_t SiriSuggestionsIntelligence.BuildVersionService.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.BuildVersionService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t _s24BuildVersionServiceErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s24BuildVersionServiceErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1DA3E972C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA3E9748(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

void *sub_1DA3E9778(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEAB0, &qword_1DA423398);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_1DA3E97E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1DA421C94();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DA3E9D70(result, v5);
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
      result = sub_1DA422104();
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

uint64_t sub_1DA3E9D70(uint64_t a1, unint64_t a2)
{
  v2 = sub_1DA3E9DDC(sub_1DA3E9DD8, 0, a1, a2);
  v6 = sub_1DA3E9E10(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1DA3E9DDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x1EEE69100](15, v5 | (v4 << 16));
}

uint64_t sub_1DA3E9E10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DA421BE4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1DA421FA4();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1DA3E9778(v9, 0);
  v12 = sub_1DA3E9F70(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1DA421BE4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1DA422104();
LABEL_4:

  return sub_1DA421BE4();
}

unint64_t sub_1DA3E9F70(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1DA3EA180(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DA421C44();
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
          result = sub_1DA422104();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1DA3EA180(v12, a6, a7);
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

    result = sub_1DA421C24();
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

uint64_t sub_1DA3EA180(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DA421C54();
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
    v5 = MEMORY[0x1DA74D3A0](15, a1 >> 16);
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

void *sub_1DA3EA240(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1DA3B74F4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_1DA3EA288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1DA3B7764(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1DA3A69D0(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1DA3EA2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DA3B76EC(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1DA4213B4();
    OUTLINED_FUNCTION_9(v10);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = sub_1DA4213B4();
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

void *sub_1DA3EA3A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v6 = sub_1DA3B77A8(a1, a2, a3, a4);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(a5 + 56) + 8 * v6);
  v9 = v8;
  return v8;
}

uint64_t sub_1DA3EA3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DA3B76EC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_1DA3EA440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DA3B76EC(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

double sub_1DA3EA498@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DA3B76EC(a1, a2), (v7 & 1) != 0))
  {
    sub_1DA3A7ED4(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DA3EA4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DA4212E4();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Interaction.getSiriSuggestionFeatures()()
{
  v113[4] = *MEMORY[0x1E69E9840];
  v108 = sub_1DA421A94();
  v0 = OUTLINED_FUNCTION_3_1(v108);
  v2 = v1;
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v0);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v104 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v104 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v104 - v15;
  v17 = sub_1DA4213B4();
  v18 = OUTLINED_FUNCTION_3_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DA4211C4();
  sub_1DA3EA2EC(0xD000000000000019, 0x80000001DA42C860, v25, v16);

  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1DA3A6A2C(v16, &qword_1ECBAF718, &unk_1DA4293F0);
    sub_1DA4219A4();
    v26 = sub_1DA421A74();
    v27 = sub_1DA421F54();
    v28 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_23_2();
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DA39E000, v26, v27, "[warning] No FeatureField for interaction", v30, 2u);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    (*(v2 + 8))(v7, v108);
    goto LABEL_20;
  }

  v107 = v20;
  (*(v20 + 32))(v24, v16, v17);
  v32 = sub_1DA421394();
  if (!v33)
  {
    sub_1DA4219A4();
    v61 = sub_1DA421A74();
    v62 = sub_1DA421F74();
    v63 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v63, v64))
    {
      OUTLINED_FUNCTION_23_2();
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1DA39E000, v61, v62, "json result in Interaction Features record is not of type array", v65, 2u);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    (*(v2 + 8))(v10, v108);
    goto LABEL_19;
  }

  v34 = v32;
  v35 = v33;
  sub_1DA3EE47C();
  v36 = sub_1DA3EE3F8(v34, v35, 0);
  if (!v36)
  {
    sub_1DA4219A4();
    v66 = sub_1DA421A74();
    v67 = sub_1DA421F74();
    v68 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v68, v69))
    {
      OUTLINED_FUNCTION_23_2();
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_1DA39E000, v66, v67, "unable to get data from string as it is not base64 encoded", v70, 2u);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    (*(v2 + 8))(v12, v108);
LABEL_19:
    v71 = OUTLINED_FUNCTION_29_1();
    v72(v71);
LABEL_20:
    v35 = 0;
    goto LABEL_21;
  }

  v37 = v36;
  v113[0] = 0;
  v38 = [v36 decompressedDataUsingAlgorithm:0 error:v113];
  v39 = v113[0];
  if (!v38)
  {
    v75 = v113[0];
    sub_1DA420FB4();

    swift_willThrow();
LABEL_24:
    v77 = OUTLINED_FUNCTION_29_1();
    v78(v77);
    goto LABEL_21;
  }

  v35 = v38;
  v40 = sub_1DA420F54();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = v39;
  v44 = sub_1DA420F44();
  v45 = objc_opt_self();
  v112[0] = 0;
  v46 = [v45 propertyListWithData:v35 options:2 format:0 error:v112];
  v47 = v112[0];
  if (!v46)
  {
    v76 = v47;
    sub_1DA420FB4();

    swift_willThrow();

    goto LABEL_24;
  }

  sub_1DA421FF4();
  swift_unknownObjectRelease();
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_4_1();
    swift_once();
  }

  v106 = v24;
  v48 = __swift_project_value_buffer(v108, static Logger.extractionCategory);
  sub_1DA3A69D0(v113, v112);
  v108 = v48;
  v49 = sub_1DA421A74();
  v50 = sub_1DA421F64();
  v51 = OUTLINED_FUNCTION_31_0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v105 = v17;
    v54 = v111;
    *v53 = 136315138;
    sub_1DA3A69D0(v112, v110);
    v55 = v44;
    v56 = sub_1DA421BB4();
    v57 = v37;
    v59 = v58;
    __swift_destroy_boxed_opaque_existential_0(v112);
    v60 = sub_1DA3A5FE8(v56, v59, &v111);
    v37 = v57;

    *(v53 + 4) = v60;
    v44 = v55;
    _os_log_impl(&dword_1DA39E000, v49, v50, "Decoding payload of: \n\n%s\n\n", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v17 = v105;
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v112);
  }

  v79 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  v80 = v35;
  v81 = sub_1DA421014();
  v83 = v82;

  sub_1DA3EE878(&qword_1ECBAF728, &qword_1ECBAF730);
  v84 = v109;
  sub_1DA420F34();
  if (v84)
  {
    sub_1DA3B5D30(v81, v83);
    v85 = v84;
    v86 = sub_1DA421A74();
    v87 = sub_1DA421F64();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = v80;
      v90 = swift_slowAlloc();
      *v88 = 138412290;
      v91 = v84;
      v92 = _swift_stdlib_bridgeErrorToNSError();
      *(v88 + 4) = v92;
      *v90 = v92;
      _os_log_impl(&dword_1DA39E000, v86, v87, "Unable to decode for record due to %@", v88, 0xCu);
      sub_1DA3A6A2C(v90, &qword_1ECBAEC70, &qword_1DA42A510);
      v80 = v89;
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
      v79 = v107;
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    __swift_destroy_boxed_opaque_existential_0(v113);
    (*(v79 + 8))(v106, v17);
    v35 = 0;
  }

  else
  {
    v109 = 0;
    sub_1DA3B5D30(v81, v83);
    v35 = v112[0];

    v93 = sub_1DA421A74();
    v94 = sub_1DA421F64();

    v95 = v93;
    if (os_log_type_enabled(v93, v94))
    {
      v96 = swift_slowAlloc();
      v108 = v37;
      v97 = v96;
      v98 = swift_slowAlloc();
      v107 = v44;
      v99 = v98;
      v112[0] = v98;
      *v97 = 136315138;
      v100 = type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
      v101 = MEMORY[0x1DA74D4B0](v35, v100);
      v105 = v80;
      v103 = sub_1DA3A5FE8(v101, v102, v112);

      *(v97 + 4) = v103;
      _os_log_impl(&dword_1DA39E000, v95, v94, "Successfully decoded payload as: \n\n%s\n\n", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v99);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v113);
    (*(v79 + 8))(v106, v17);
  }

LABEL_21:
  v73 = *MEMORY[0x1E69E9840];
  v74 = v35;
  result.value._rawValue = v74;
  result.is_nil = v31;
  return result;
}

void *SiriSuggestionsIntelligence.FeatureLogger.__allocating_init(featureService:siriRemembersLogger:loggingPolicy:)()
{
  OUTLINED_FUNCTION_20_3();
  v1 = v0;
  v2 = swift_allocObject();
  sub_1DA3A1FF8(v1, v2 + 16);
  return OUTLINED_FUNCTION_25_2();
}

void *SiriSuggestionsIntelligence.FeatureLogger.init(featureService:siriRemembersLogger:loggingPolicy:)()
{
  OUTLINED_FUNCTION_20_3();
  sub_1DA3A1FF8(v1, v0 + 16);
  return OUTLINED_FUNCTION_25_2();
}

uint64_t SiriSuggestionsIntelligence.FeatureLogger.log(from:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_16();
  v1[106] = v0;
  v1[105] = v2;
  v1[99] = v3;
  v1[93] = v4;
  v5 = sub_1DA421374();
  v1[107] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_14_5();
  v1[108] = v7;
  v9 = *(v8 + 64) + 15;
  v1[109] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA3EB0B8()
{
  v1 = v0[106];
  if (*(v1 + 72) == 1)
  {
    if (qword_1EE102E00 != -1)
    {
      OUTLINED_FUNCTION_4_1();
      swift_once();
    }

    v2 = sub_1DA421A94();
    v0[110] = __swift_project_value_buffer(v2, static Logger.extractionCategory);
    v3 = sub_1DA421A74();
    sub_1DA421F54();
    v4 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_23_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v6, v7, "inserting core interaction prior to the feature extraction process");
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    v8 = v0[106];

    v9 = *(v8 + 56);
    v10 = *(MEMORY[0x1E69D2C80] + 4);
    v11 = swift_task_alloc();
    v0[111] = v11;
    *v11 = v0;
    v11[1] = sub_1DA3EB2F8;
    v12 = v0[105];
    v13 = v0[99];
    OUTLINED_FUNCTION_13_5(v0[93]);
    OUTLINED_FUNCTION_24_2();

    return MEMORY[0x1EEE403C8]();
  }

  else
  {
    v15 = v0[109];
    v16 = v0[105];
    v17 = v0[99];
    v18 = v0[93];
    v19 = swift_allocObject();
    v0[113] = v19;
    *(v19 + 16) = v1;
    *(v19 + 24) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
    OUTLINED_FUNCTION_8_12();
    swift_asyncLet_begin();
    v20 = OUTLINED_FUNCTION_27_1();
    sub_1DA3EBC2C(v20, v21, v22);
    v0[114] = 0;
    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_24_2();

    return MEMORY[0x1EEE6DEB8](v23, v24, v25, v26);
  }
}

uint64_t sub_1DA3EB2F8()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 888);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v3 + 896) = v0;

  if (v0)
  {
    v9 = *(v3 + 872);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_17_5();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1DA3EB42C()
{
  v1 = v0[110];
  v2 = sub_1DA421A74();
  sub_1DA421F54();
  v3 = OUTLINED_FUNCTION_31_0();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_23_2();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v5, v6, "finished inserting non featurised interaction");
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  v7 = v0[112];
  v8 = v0[109];
  v9 = v0[106];
  v10 = v0[105];
  v11 = v0[99];
  v12 = v0[93];
  v13 = swift_allocObject();
  v0[113] = v13;
  *(v13 + 16) = v9;
  *(v13 + 24) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  OUTLINED_FUNCTION_8_12();
  swift_asyncLet_begin();
  sub_1DA3EBC2C(v12, v10, v8);
  v0[114] = v7;
  if (v7)
  {
    v14 = OUTLINED_FUNCTION_15_4();

    return MEMORY[0x1EEE6DEB0](v14, v15, v16, v0 + 82);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_15_4();

    return MEMORY[0x1EEE6DEB8](v17, v18, v19, v0 + 88);
  }
}

uint64_t sub_1DA3EB5C0()
{
  OUTLINED_FUNCTION_6_0();
  v1 = v0[87];
  v0[115] = v1;

  v2 = swift_task_alloc();
  v0[116] = v2;
  *v2 = v0;
  v2[1] = sub_1DA3EB670;
  v3 = v0[109];
  v4 = v0[106];

  return sub_1DA3EBFAC(v1, v3);
}

uint64_t sub_1DA3EB670()
{
  OUTLINED_FUNCTION_6_0();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *(v2 + 928);
  *v4 = *v1;
  *(v3 + 936) = v0;

  v6 = *(v2 + 920);

  OUTLINED_FUNCTION_17_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA3EB794()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_28_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x1EEE6DEB0](v3, v4, v5, v0 + 800);
}

uint64_t sub_1DA3EB814()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 904);
  v2 = *(v0 + 872);

  OUTLINED_FUNCTION_4_0();

  return v3();
}

uint64_t sub_1DA3EB890()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[113];

  v2 = v0[114];
  v3 = v0[109];

  OUTLINED_FUNCTION_4_0();

  return v4();
}

uint64_t sub_1DA3EB8F4()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_28_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_15_4();

  return MEMORY[0x1EEE6DEB0](v3, v4, v5, v0 + 752);
}

uint64_t sub_1DA3EB974()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[113];

  v2 = v0[117];
  v3 = v0[109];

  OUTLINED_FUNCTION_4_0();

  return v4();
}

uint64_t sub_1DA3EB9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3EB9FC, 0, 0);
}

uint64_t sub_1DA3EB9FC()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_3(*(v2 + 24));
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_14_5();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v2 + 40) = v7;
  *v7 = v2;
  v7[1] = sub_1DA3EBB10;
  v8 = OUTLINED_FUNCTION_13_5(*(v2 + 32));

  return v10(v8, v0, v1);
}

uint64_t sub_1DA3EBB10()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA3EBBFC()
{
  **(v0 + 16) = *(v0 + 48);
  OUTLINED_FUNCTION_4_0();
  return v1();
}

uint64_t sub_1DA3EBC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v32 = a1;
  v5 = sub_1DA4217B4();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA4210F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DA4211F4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3[9];
  if (v18)
  {
    if (v18 == 1)
    {
      sub_1DA421604();
      v19 = sub_1DA4215C4();
      v20 = v37;
      sub_1DA3ED1D8(v19, v21, v35);
      v37 = v20;
    }

    else
    {
      v24 = v3[11];
      v28 = v4[10];
      v31 = v4[8];
      v32 = v24;
      v30 = v17;
      v29 = sub_1DA421604();

      v28(v34);
      v34 = sub_1DA4215C4();
      (*(v10 + 8))(v13, v9);
      v25 = v33;
      (*(v33 + 104))(v8, *MEMORY[0x1E69D2FD0], v5);
      v26 = v4[7];
      sub_1DA4215E4();
      sub_1DA421584();

      __swift_destroy_boxed_opaque_existential_0(v36);
      (*(v25 + 8))(v8, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF750, qword_1DA429290);
      sub_1DA421AE4();
      sub_1DA421324();
    }
  }

  else
  {
    sub_1DA421604();
    v23 = v3[7];
    sub_1DA4215E4();
    sub_1DA421564();
    return __swift_destroy_boxed_opaque_existential_0(v36);
  }
}

uint64_t sub_1DA3EBFAC(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = *v2;
  v4 = sub_1DA421374();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3EC098, 0, 0);
}

uint64_t sub_1DA3EC098()
{
  v1 = v0[14];
  v2 = v0[11];
  (*(v0[16] + 16))(v0[17], v0[12], v0[15]);
  v3 = sub_1DA421334();
  sub_1DA3EDDC8(v2);
  v4 = v0[13];
  v5 = v0[11];
  v3(v0 + 7, 0);
  v6 = *(v4 + 56);
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  v0[6] = sub_1DA3EE814();
  v0[2] = v5;
  v7 = *(MEMORY[0x1E69D2C88] + 4);

  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_1DA3EC248;
  OUTLINED_FUNCTION_13_5(v0[17]);
  OUTLINED_FUNCTION_24_2();

  return MEMORY[0x1EEE403D8]();
}

uint64_t sub_1DA3EC248()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (v0)
  {
    v9 = sub_1DA3EC3C8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 16));
    v9 = sub_1DA3EC350;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DA3EC350()
{
  OUTLINED_FUNCTION_16();
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_4_0();

  return v1();
}

uint64_t sub_1DA3EC3C8()
{
  OUTLINED_FUNCTION_16();
  (*(v0[16] + 8))(v0[17], v0[15]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[19];
  v2 = v0[17];

  OUTLINED_FUNCTION_4_0();

  return v3();
}

uint64_t SiriSuggestionsIntelligence.FeatureLogger.logEngagementInProcess(for:with:)()
{
  OUTLINED_FUNCTION_16();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1DA4217B4();
  v1[5] = v4;
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_14_5();
  v1[6] = v6;
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA3EC4F8()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF738, &qword_1DA427C30) + 48);
  v5 = *MEMORY[0x1E69D3148];
  v6 = sub_1DA421844();
  OUTLINED_FUNCTION_9(v6);
  (*(v7 + 104))(v1, v5);
  v8 = *MEMORY[0x1E69D3118];
  v9 = sub_1DA421824();
  OUTLINED_FUNCTION_9(v9);
  (*(v10 + 104))(v1, v8);
  v11 = *MEMORY[0x1E69D3140];
  v12 = sub_1DA421834();
  OUTLINED_FUNCTION_9(v12);
  (*(v13 + 104))(v1 + v4, v11);
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2FB0], v3);
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = sub_1DA3EC6A0;
  v15 = v0[7];
  v16 = v0[3];
  v17 = v0[4];
  OUTLINED_FUNCTION_13_5(v0[2]);

  return SiriSuggestionsIntelligence.FeatureLogger.logEngagement(for:with:invocationType:)();
}

uint64_t sub_1DA3EC6A0()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = v5[8];
  v7 = v5[7];
  v8 = v5[6];
  v9 = v5[5];
  v10 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v11 = v10;
  *(v3 + 72) = v0;

  (*(v8 + 8))(v7, v9);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA3EC830, 0, 0);
  }

  else
  {
    v12 = *(v3 + 56);

    OUTLINED_FUNCTION_4_0();

    return v13();
  }
}

uint64_t sub_1DA3EC830()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_4_0();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t SiriSuggestionsIntelligence.FeatureLogger.logEngagement(for:with:invocationType:)()
{
  OUTLINED_FUNCTION_16();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = sub_1DA421374();
  v1[11] = v5;
  v6 = *(v5 - 8);
  OUTLINED_FUNCTION_14_5();
  v1[12] = v7;
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA3EC940()
{
  v2 = v1[10];
  if (v2[9] != 1)
  {
    v9 = v1[7];
    OUTLINED_FUNCTION_22_3(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF740, qword_1DA427C40);
    v10 = sub_1DA421974();
    OUTLINED_FUNCTION_3_1(v10);
    v12 = *(v11 + 72);
    v13 = OUTLINED_FUNCTION_18_6();
    v1[15] = v13;
    v14 = OUTLINED_FUNCTION_21_4(v13, xmmword_1DA4238F0);
    v15(v14);
    v16 = *(v0 + 40);
    OUTLINED_FUNCTION_14_5();
    v24 = v17 + *v17;
    v19 = *(v18 + 4);
    v20 = swift_task_alloc();
    v1[16] = v20;
    *v20 = v1;
    OUTLINED_FUNCTION_4_14(v20);
    OUTLINED_FUNCTION_30_2();

    __asm { BRAA            X3, X16 }
  }

  v3 = v2[7];
  v4 = *(MEMORY[0x1E69D2C78] + 4);
  v5 = swift_task_alloc();
  v1[14] = v5;
  *v5 = v1;
  v5[1] = sub_1DA3ECB40;
  v6 = v1[8];
  v7 = v1[9];
  OUTLINED_FUNCTION_13_5(v1[7]);
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x1EEE40378]();
}

uint64_t sub_1DA3ECB40()
{
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 104);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_17_5();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

void sub_1DA3ECC70()
{
  v2 = *(v1 + 56);
  OUTLINED_FUNCTION_22_3(*(v1 + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF740, qword_1DA427C40);
  v3 = sub_1DA421974();
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_18_6();
  *(v1 + 120) = v6;
  v7 = OUTLINED_FUNCTION_21_4(v6, xmmword_1DA4238F0);
  v8(v7);
  v9 = *(v0 + 40);
  OUTLINED_FUNCTION_14_5();
  v16 = v10 + *v10;
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  *(v1 + 128) = v13;
  *v13 = v1;
  OUTLINED_FUNCTION_4_14(v13);
  OUTLINED_FUNCTION_30_2();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1DA3ECDEC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 128);
  v5 = *(v3 + 120);
  v6 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v9 + 136) = v8;

  v10 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA3ECEF0()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  sub_1DA421604();
  v6 = *(v2 + 56);
  sub_1DA4215E4();
  OUTLINED_FUNCTION_27_1();
  sub_1DA421574();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1DA3ECFD0;
  v8 = v0[13];
  v9 = v0[10];
  v10 = OUTLINED_FUNCTION_13_5(v0[17]);

  return sub_1DA3EBFAC(v10, v11);
}

uint64_t sub_1DA3ECFD0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *(v4 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v9 + 152) = v0;

  if (v0)
  {
    v10 = sub_1DA3ED164;
  }

  else
  {
    v10 = sub_1DA3ED0EC;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DA3ED0EC()
{
  OUTLINED_FUNCTION_16();
  (*(v0[12] + 8))(v0[13], v0[11]);

  OUTLINED_FUNCTION_4_0();

  return v1();
}

uint64_t sub_1DA3ED164()
{
  OUTLINED_FUNCTION_16();
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[19];
  v2 = v0[13];

  OUTLINED_FUNCTION_4_0();

  return v3();
}

uint64_t sub_1DA3ED1D8@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = a1;
  v93 = a3;
  v4 = sub_1DA421A94();
  v89 = *(v4 - 8);
  v5 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v88 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1DA421204();
  v86 = *(v87 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v85 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA4211F4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v84[2] = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA421374();
  v91 = *(v12 - 8);
  v13 = *(v91 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v84[0] = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v84 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF758, "Ɗ");
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v96 = v84 - v20;
  v21 = sub_1DA4212E4();
  v97 = *(v21 - 8);
  v98 = v21;
  v22 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v94 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DA4212A4();
  v25 = *(v24 - 8);
  v100 = v24;
  v101 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v108 = v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF760, "Ɗ");
  v28 = *(v102 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v31 = (v84 - v30);
  v32 = sub_1DA421294();
  v105 = *(v32 - 8);
  v106 = v32;
  v33 = *(v105 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v99 = v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = v84 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v107 = v84 - v39;
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v90 = v4;
  v40 = __swift_project_value_buffer(v4, static Logger.extractionCategory);

  v84[1] = v40;
  v41 = sub_1DA421A74();
  v42 = sub_1DA421F54();

  v43 = os_log_type_enabled(v41, v42);
  v95 = v17;
  v92 = v12;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v109[0] = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_1DA3A5FE8(v110, a2, v109);
    _os_log_impl(&dword_1DA39E000, v41, v42, "fetching existing interaction of id: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1DA74E430](v45, -1, -1);
    v46 = v44;
    v47 = v110;
    MEMORY[0x1DA74E430](v46, -1, -1);
  }

  else
  {

    v47 = v110;
  }

  sub_1DA421284();
  *v31 = v47;
  v31[1] = a2;
  v48 = v102;
  (*(v28 + 104))(v31, *MEMORY[0x1E69D29B0], v102);

  v49 = v107;
  sub_1DA421244();
  (*(v28 + 8))(v31, v48);
  v50 = v106;
  v52 = v105 + 8;
  v51 = *(v105 + 8);
  v51(v38, v106);
  v53 = *(v103 + 7);
  v54 = sub_1DA421544();
  v55 = v104;
  v54();
  if (v55)
  {
    v51(v49, v50);
  }

  else
  {

    v57 = v99;
    sub_1DA421214();
    v58 = sub_1DA421224();
    v104 = v51;
    v51(v57, v50);
    v59 = v96;
    sub_1DA3EA4F0(v58, v96);

    v60 = v98;
    if (__swift_getEnumTagSinglePayload(v59, 1, v98) == 1)
    {
      sub_1DA3A6A2C(v59, &qword_1ECBAF758, "Ɗ");
      v61 = v88;
      sub_1DA4219A4();

      v62 = sub_1DA421A74();
      v63 = sub_1DA421F74();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v109[0] = v65;
        *v64 = 136315138;
        *(v64 + 4) = sub_1DA3A5FE8(v110, a2, v109);
        _os_log_impl(&dword_1DA39E000, v62, v63, "Unknown interaction for id: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x1DA74E430](v65, -1, -1);
        v66 = v64;
        v50 = v106;
        MEMORY[0x1DA74E430](v66, -1, -1);
      }

      (*(v89 + 8))(v61, v90);
      sub_1DA3EE944();
      swift_allocError();
      *v67 = 0;
      swift_willThrow();
      (*(v101 + 8))(v108, v100);
      return (v104)(v107, v50);
    }

    else
    {
      v68 = v94;
      (*(v97 + 32))(v94, v59, v60);
      sub_1DA4212D4();
      sub_1DA4212B4();
      v69 = v95;
      sub_1DA421324();
      (*(v86 + 104))(v85, *MEMORY[0x1E69D2A30], v87);
      sub_1DA421354();
      v70 = v60;
      v71 = sub_1DA421A74();
      v72 = sub_1DA421F54();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v103 = v73;
        v110 = swift_slowAlloc();
        v109[0] = v110;
        *v73 = 136315138;
        swift_beginAccess();
        v74 = v91;
        v75 = v92;
        (*(v91 + 16))(v84[0], v69, v92);
        v76 = sub_1DA421BB4();
        v105 = v52;
        v78 = sub_1DA3A5FE8(v76, v77, v109);
        v79 = v101;
        v80 = v97;
        LOBYTE(v73) = v72;
        v81 = v78;

        v82 = v103;
        *(v103 + 1) = v81;
        _os_log_impl(&dword_1DA39E000, v71, v73, "got existing interaction: %s", v82, 0xCu);
        v83 = v110;
        __swift_destroy_boxed_opaque_existential_0(v110);
        MEMORY[0x1DA74E430](v83, -1, -1);
        MEMORY[0x1DA74E430](v82, -1, -1);

        (*(v80 + 8))(v94, v98);
        (*(v79 + 8))(v108, v100);
        v69 = v95;
        v104(v107, v106);
      }

      else
      {

        (*(v97 + 8))(v68, v70);
        (*(v101 + 8))(v108, v100);
        v104(v107, v50);
        v75 = v92;
        v74 = v91;
      }

      swift_beginAccess();
      (*(v74 + 16))(v93, v69, v75);
      return (*(v74 + 8))(v69, v75);
    }
  }
}

uint64_t sub_1DA3EDDC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10[-v5];
  result = sub_1DA3EDED8(a1, &v10[-v5]);
  if (!v1)
  {
    v8 = sub_1DA4213B4();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
    v9 = sub_1DA4211B4();
    sub_1DA3F82C0(v6, 0xD000000000000019, 0x80000001DA42C860);
    return v9(v10, 0);
  }

  return result;
}

uint64_t sub_1DA3EDED8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DA420F94();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1DA420F84();
  sub_1DA420F64();
  v24[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
  sub_1DA3EE878(&qword_1EE100090, &qword_1EE100810);
  v8 = sub_1DA420F74();
  if (!v2)
  {
    v11 = v8;
    v12 = v9;
    v13 = sub_1DA420FF4();
    v24[0] = 0;
    v14 = [v13 compressedDataUsingAlgorithm:0 error:v24];

    if (v14)
    {
      v15 = v24[0];
      v16 = [v14 base64EncodedStringWithOptions_];
      v17 = sub_1DA421B94();
      v19 = v18;
      sub_1DA3B5D30(v11, v12);

      *a2 = v17;
      a2[1] = v19;
      v20 = *MEMORY[0x1E69D2AE8];
      v21 = sub_1DA4213B4();
      result = (*(*(v21 - 8) + 104))(a2, v20, v21);
      goto LABEL_5;
    }

    v23 = v24[0];
    sub_1DA420FB4();

    swift_willThrow();
    sub_1DA3B5D30(v11, v12);
  }

LABEL_5:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void *SiriSuggestionsIntelligence.FeatureLogger.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[10];
  v3 = v0[11];
  sub_1DA3EE568(v0[8], v0[9]);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.FeatureLogger.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.FeatureLogger.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t sub_1DA3EE170()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3A8D08;

  return SiriSuggestionsIntelligence.FeatureLogger.log(from:deliveryVehicle:generationId:)();
}

uint64_t sub_1DA3EE220()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3A8004;

  return SiriSuggestionsIntelligence.FeatureLogger.logEngagement(for:with:invocationType:)();
}

uint64_t SiriSuggestionsIntelligence.Errors.hashValue.getter(unsigned __int8 a1)
{
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](a1);
  return sub_1DA422474();
}

uint64_t sub_1DA3EE36C()
{
  v1 = *v0;
  sub_1DA422434();
  SiriSuggestionsIntelligence.Errors.hash(into:)(v3, v1);
  return sub_1DA422474();
}

id sub_1DA3EE3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1DA421B64();

  v6 = [v4 initWithBase64EncodedString:v5 options:a3];

  return v6;
}

unint64_t sub_1DA3EE47C()
{
  result = qword_1ECBAF720;
  if (!qword_1ECBAF720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAF720);
  }

  return result;
}

uint64_t sub_1DA3EE4C0()
{
  OUTLINED_FUNCTION_6_0();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DA3A8004;

  return sub_1DA3EB9D8(v3, v5, v4);
}

uint64_t sub_1DA3EE568(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1DA3EE5B4()
{
  result = qword_1ECBAF748;
  if (!qword_1ECBAF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF748);
  }

  return result;
}

_BYTE *_s6ErrorsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_27SiriSuggestionsIntelligenceAAO13LoggingPolicyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA3EE72C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DA3EE780(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1DA3EE7E0(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1DA3EE814()
{
  result = qword_1EE100088;
  if (!qword_1EE100088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAED00, &qword_1DA423CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100088);
  }

  return result;
}

uint64_t sub_1DA3EE878(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAED00, &qword_1DA423CD0);
    sub_1DA3EE900(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA3EE900(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA3EE944()
{
  result = qword_1ECBAF768;
  if (!qword_1ECBAF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF768);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_6()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_21_4(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 16);
  return a1 + v3;
}

void *OUTLINED_FUNCTION_25_2()
{
  v1[7] = v5;
  v1[8] = v4;
  v1[9] = v3;
  v1[10] = v2;
  v1[11] = v0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_28_1()
{
  result = v0[109];
  v2 = v0[107];
  v3 = *(v0[108] + 8);
  return result;
}

uint64_t SiriSuggestionsIntelligence.AppTransitionStateMachine.__allocating_init(clock:)(uint64_t *a1)
{
  v2 = type metadata accessor for SiriSuggestionsIntelligence.DefaultTimePartitionExtractor();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DA3B6FC8;
  *(v3 + 24) = 0;
  sub_1DA3A7ED4(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 40) = v2;
  *(v4 + 48) = &protocol witness table for SiriSuggestionsIntelligence.DefaultTimePartitionExtractor;
  *(v4 + 16) = v3;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = xmmword_1DA427DD0;
  sub_1DA3A1FF8(v6, v4 + 56);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_1DA3EEC20(uint64_t *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a3(v12, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v14;
}

Swift::Double __swiftcall SiriSuggestionsIntelligence.AppTransitionStateMachine.getStartDate()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v0 + 7, v1, v2);
  return result;
}

uint64_t SiriSuggestionsIntelligence.AppTransitionStateMachine.transition(nextState:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v10 = v4[14];
  if (*(v4 + 112) != 0xFF)
  {
    if (*(v4 + 15) <= a4)
    {
      v5 = v4[15];
      v18 = v4[12];
      v17 = v4[13];
      if (!v4[14])
      {
        if (a3)
        {
          if (a3 != 1 && !(a1 ^ 1 | a2))
          {
            goto LABEL_3;
          }
        }

        else
        {
          if (v18 == a1 && v17 == a2)
          {
            goto LABEL_3;
          }

          v35 = v4[12];
          v36 = v4[13];
          if (sub_1DA4223A4())
          {
            goto LABEL_3;
          }
        }

        v23 = OUTLINED_FUNCTION_1_14();
        sub_1DA3EF9CC(v23, v24, 0);
        v25 = OUTLINED_FUNCTION_0_16();
        v5 = sub_1DA3EF018(v26, v27, v25, a4);
        v28 = OUTLINED_FUNCTION_1_14();
        sub_1DA3D3BF8(v28, v29, v10);
        v30 = v4[12];
        v31 = v4[13];
        v32 = v4[14];
        v33 = v4[15];
        v4[12] = 0;
        v4[13] = 0;
        *(v4 + 7) = xmmword_1DA427DD0;
        sub_1DA3D3BF8(v30, v31, v32);
        goto LABEL_4;
      }

      sub_1DA3EF964();
      swift_allocError();
      *v19 = v18;
      *(v19 + 8) = v17;
      *(v19 + 16) = v10;
      v20 = OUTLINED_FUNCTION_1_14();
      sub_1DA3EF9B8(v20, v21, v10);
LABEL_15:
      swift_willThrow();
      return v5;
    }

LABEL_8:
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v12 = sub_1DA421A94();
    __swift_project_value_buffer(v12, static Logger.extractionCategory);
    v13 = sub_1DA421A74();
    v14 = sub_1DA421F74();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1DA39E000, v13, v14, "AppTransitionStateMachine:: ERROR!!!! events are not in ascending order!!!", v15, 2u);
      MEMORY[0x1DA74E430](v15, -1, -1);
    }

    sub_1DA3EF964();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = -1;
    goto LABEL_15;
  }

  if (a4 < 0.0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = 0;
LABEL_4:
  v11 = ~*(v4 + 28);
  if (*(v4 + 112) == 0xFF && !a3)
  {
    v4[12] = a1;
    v4[13] = a2;
    v4[14] = 0;
    *(v4 + 15) = a4;
  }

  return v5;
}

uint64_t sub_1DA3EF018(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v7);
  v9 = (*(v8 + 8))(v4 + 7, v7, v8, a3);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1DA3B02D0(0, v10, 0);
    v12 = v42;
    v13 = (v9 + 64);
    do
    {
      v14 = *(v13 - 4);
      v15 = *(v13 - 3);
      v16 = *(v13 - 16);
      v17 = *(v13 - 1);
      v18 = *v13;
      v20 = *(v42 + 16);
      v19 = *(v42 + 24);

      if (v20 >= v19 >> 1)
      {
        sub_1DA3B02D0((v19 > 1), v20 + 1, 1);
      }

      v13 += 5;
      *(v42 + 16) = v20 + 1;
      v21 = v42 + 56 * v20;
      *(v21 + 32) = a1;
      *(v21 + 40) = a2;
      *(v21 + 48) = v14;
      *(v21 + 56) = v15;
      *(v21 + 64) = v16;
      *(v21 + 72) = v17;
      *(v21 + 80) = v18;
      --v10;
    }

    while (v10);

    v11 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v12 + 16);
  if (v22)
  {
    sub_1DA3B02B0();
    v23 = v11;
    v24 = a4 - a3;
    v39 = v22 - 1;
    v25 = (v12 + 80);
    v26 = a2;
    while (1)
    {
      v27 = *(v25 - 6);
      v28 = *(v25 - 5);
      v29 = *(v25 - 4);
      v30 = *(v25 - 3);
      v31 = *(v25 - 16);
      v32 = *v25;
      v38 = *(v25 - 1);
      v33 = *(v23 + 16);
      v34 = *(v23 + 24);

      if (v33 >= v34 >> 1)
      {
        sub_1DA3B02B0();
      }

      *(v23 + 16) = v33 + 1;
      v35 = v23 + 88 * v33;
      *(v35 + 32) = v27;
      *(v35 + 40) = v28;
      *(v35 + 48) = v29;
      *(v35 + 56) = v30;
      *(v35 + 64) = v31;
      *(v35 + 65) = *v41;
      *(v35 + 68) = *&v41[3];
      *(v35 + 72) = v38;
      *(v35 + 80) = v32;
      *(v35 + 88) = a1;
      *(v35 + 96) = v26;
      *(v35 + 104) = 1;
      *(v35 + 112) = v24;
      if (!v39)
      {
        break;
      }

      v25 += 7;
      --v39;
    }
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  return sub_1DA3D59A8(v23);
}

uint64_t *SiriSuggestionsIntelligence.AppTransitionStateMachine.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[15];
  sub_1DA3D3BF8(v0[12], v0[13], v0[14]);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.AppTransitionStateMachine.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.AppTransitionStateMachine.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t SiriSuggestionsIntelligence.AppFocusState.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1DA422094();
  MEMORY[0x1DA74D370](0x203A65707974, 0xE600000000000000);
  v6 = SiriSuggestionsIntelligence.StateType.description.getter(a1, a2, a3);
  MEMORY[0x1DA74D370](v6);

  MEMORY[0x1DA74D370](0x7453656D6974202CLL, 0xED0000203A706D61);
  sub_1DA421E94();
  return 0;
}

uint64_t SiriSuggestionsIntelligence.StateType.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v3 = 0x286E65704F707061;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v3 = 0x65736F6C43707061;
LABEL_5:
    v6 = v3;
    MEMORY[0x1DA74D370]();
    MEMORY[0x1DA74D370](41, 0xE100000000000000);
    return v6;
  }

  if (a1 ^ 1 | a2)
  {
    v5 = 0x736E617254646E65;
  }

  else
  {
    v5 = 0x6E556E6565726373;
  }

  if (a1 | a2)
  {
    return v5;
  }

  else
  {
    return 0x6F4C6E6565726373;
  }
}

uint64_t static SiriSuggestionsIntelligence.StateType.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(a1 | a2))
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a1 ^ 1 | a2)
    {
      if (a6 != 2 || a4 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 2 || a4 != 1)
    {
      return 0;
    }

    if (!a5)
    {
      return 1;
    }
  }

  else if (!a6)
  {
LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return sub_1DA4223A4();
    }

    return 1;
  }

  return 0;
}

uint64_t SiriSuggestionsIntelligence.StateType.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v4 = 2;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v4 = 3;
LABEL_5:
    MEMORY[0x1DA74DBB0](v4);

    return sub_1DA421BF4();
  }

  if (a2 | a3)
  {
    if (a2 ^ 1 | a3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1DA74DBB0](v6);
}

uint64_t SiriSuggestionsIntelligence.StateType.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1DA422434();
  SiriSuggestionsIntelligence.StateType.hash(into:)(v7, a1, a2, a3);
  return sub_1DA422474();
}

uint64_t sub_1DA3EF740()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1DA422434();
  SiriSuggestionsIntelligence.StateType.hash(into:)(v5, v1, v2, v3);
  return sub_1DA422474();
}

uint64_t sub_1DA3EF7B4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  v14 = sub_1DA3EF8D4(v12, a2, v13, a4, a5);
  (*(v9 + 8))(a1, a4);
  return v14;
}

uint64_t sub_1DA3EF8D4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + 40) = a4;
  *(a3 + 48) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a3 + 16));
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = xmmword_1DA427DD0;
  sub_1DA3A1FF8(a2, a3 + 56);
  return a3;
}

unint64_t sub_1DA3EF964()
{
  result = qword_1ECBAF770;
  if (!qword_1ECBAF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF770);
  }

  return result;
}

uint64_t sub_1DA3EF9B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1DA3EF9CC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1DA3EF9CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1DA3EF9E8()
{
  result = qword_1ECBAF778;
  if (!qword_1ECBAF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF778);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriSuggestionsIntelligenceAAO9StateTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1DA3EFA7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 32))
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

uint64_t sub_1DA3EFABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriSuggestionsIntelligenceAAO24StateMachinePrerequisiteO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA3EFB34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA3EFB7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
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
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1DA3EFBC4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

uint64_t sub_1DA3EFBF8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DA3EFC38(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DA3EFC7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1DA3EFCD0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = &type metadata for SiriSuggestionsIntelligence.MotionActivity;
  *(a3 + 48) = sub_1DA3F163C();
  result = sub_1DA3F1690();
  *(a3 + 24) = a2;
  strcpy(a3, "motionActivity");
  *(a3 + 15) = -18;
  *(a3 + 16) = a1;
  *(a3 + 56) = result;
  *(a3 + 64) = 0;
  return result;
}

uint64_t sub_1DA3EFD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[5] = &type metadata for SiriSuggestionsIntelligence.FocusMode;
  a5[6] = sub_1DA3F1594();
  a5[7] = sub_1DA3F15E8();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  *a5 = 0x646F4D7375636F66;
  a5[1] = 0xE900000000000065;
  a5[2] = v10;
  a5[8] = 0;
}

_OWORD *sub_1DA3EFDF8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v10 = &type metadata for SiriSuggestionsIntelligence.CarPlayConnection;
  v11 = sub_1DA3F1540();
  v12 = sub_1DA3D99E8();
  *&v9 = a1;
  BYTE8(v9) = a2 & 1;
  if (a2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
  v7 = OUTLINED_FUNCTION_8_13();
  *(v7 + 16) = xmmword_1DA4238F0;
  *(v7 + 32) = v6;
  *a3 = 0xD000000000000011;
  *(a3 + 8) = 0x80000001DA42C1F0;
  result = sub_1DA3B3334(&v9, (a3 + 16));
  *(a3 + 64) = v7;
  return result;
}

uint64_t SiriSuggestionsIntelligence.EnvironmentFeatureExtractor.extract(_:)()
{
  *(v1 + 496) = v0;
  v2 = OUTLINED_FUNCTION_15();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DA3EFF0C()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*(v0 + 496) + 16);
  v2 = swift_task_alloc();
  *(v0 + 504) = v2;
  *v2 = v0;
  v2[1] = sub_1DA3EFFA4;

  return sub_1DA408B88(v0 + 376);
}

uint64_t sub_1DA3EFFA4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 504);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DA3F0088()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*(v0 + 496) + 24);
  v2 = swift_task_alloc();
  *(v0 + 512) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_6_12(v2);

  return sub_1DA3CD2E0();
}

uint64_t sub_1DA3F0114()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  v4 = *(v3 + 512);
  *v2 = *v0;
  *(v1 + 520) = v5;
  *(v1 + 632) = v6;

  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA3F0200()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*(v0 + 496) + 32);
  v2 = swift_task_alloc();
  *(v0 + 528) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_6_12(v2);

  return sub_1DA41023C();
}

uint64_t sub_1DA3F028C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  v4 = *(v3 + 528);
  *v2 = *v0;
  v1[67] = v5;
  v1[68] = v6;
  v1[69] = v7;
  v1[70] = v8;

  v9 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DA3F0380()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*(v0 + 496) + 40);
  v2 = swift_task_alloc();
  *(v0 + 568) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_6_12(v2);

  return sub_1DA3F1750();
}

uint64_t sub_1DA3F040C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  v4 = *(v3 + 568);
  *v2 = *v0;
  *(v1 + 576) = v5;
  *(v1 + 633) = v6;

  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA3F04F8()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*(v0 + 496) + 48);
  v2 = swift_task_alloc();
  *(v0 + 584) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_6_12(v2);

  return sub_1DA41DA3C();
}

uint64_t sub_1DA3F0584()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  v4 = *(v3 + 584);
  *v2 = *v0;
  *(v1 + 592) = v5;
  *(v1 + 634) = v6;

  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA3F0670()
{
  v1 = *(v0 + 496);
  v2 = v1[22];
  v3 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v2);
  *(v0 + 635) = (*(v3 + 8))(v2, v3);
  v4 = v1[10];
  v5 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v4);
  v6 = *(v5 + 8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 600) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_6_12(v8);

  return v10(v4, v5);
}

uint64_t sub_1DA3F07D0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  v4 = *(v3 + 600);
  *v2 = *v0;
  *(v1 + 636) = v5;

  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA3F0B44()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_17();
  *v2 = v1;
  v4 = *(v3 + 616);
  v5 = *(v3 + 608);
  v6 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v9 + 624) = v8;

  v10 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DA3F0C44()
{
  v1 = *(v0 + 496);
  v2 = *(v1 + 104);
  (*(v1 + 96))();
  if (*(v0 + 480))
  {
    v3 = *(v0 + 624);
    sub_1DA3A1FF8((v0 + 456), v0 + 416);
    v4 = *(v0 + 440);
    v5 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), v4);
    v6 = (*(v5 + 56))(v4, v5);
    v7 = MEMORY[0x1E69E6370];
    *(v0 + 232) = v6 & 1;
    v8 = MEMORY[0x1E69E6390];
    *(v0 + 256) = v7;
    *(v0 + 264) = v8;
    v9 = MEMORY[0x1E69E6378];
    *(v0 + 272) = MEMORY[0x1E69E6378];
    if (v6)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
    v11 = OUTLINED_FUNCTION_8_13();
    *(v11 + 16) = xmmword_1DA4238F0;
    *(v11 + 32) = v10;
    *(v0 + 16) = 0xD000000000000012;
    *(v0 + 24) = 0x80000001DA42C270;
    sub_1DA3B3334((v0 + 232), (v0 + 32));
    *(v0 + 80) = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v0 + 624);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = *(v13 + 16);
      v30 = *(v0 + 624);
      sub_1DA3A5520();
      v13 = v31;
    }

    if (*(v13 + 16) >= *(v13 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_15();
      v13 = v32;
    }

    v14 = OUTLINED_FUNCTION_7_10();
    memcpy(v14, (v0 + 16), 0x48uLL);
    v15 = *(v0 + 440);
    v16 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), v15);
    v17 = (*(v16 + 48))(v15, v16);
    *(v0 + 304) = v7;
    *(v0 + 312) = v8;
    *(v0 + 320) = v9;
    *(v0 + 280) = v17 & 1;
    v18 = 0.0;
    if (v17)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.0;
    }

    v20 = OUTLINED_FUNCTION_8_13();
    *(v20 + 16) = xmmword_1DA4238F0;
    *(v20 + 32) = v19;
    *(v0 + 88) = 0xD000000000000011;
    *(v0 + 96) = 0x80000001DA42C290;
    sub_1DA3B3334((v0 + 280), (v0 + 104));
    *(v0 + 152) = v20;
    if (*(v13 + 16) >= *(v13 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_15();
      v13 = v33;
    }

    v21 = OUTLINED_FUNCTION_7_10();
    memcpy(v21, (v0 + 88), 0x48uLL);
    v22 = *(v0 + 440);
    v23 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), v22);
    v24 = (*(v23 + 64))(v22, v23);
    *(v0 + 352) = v7;
    *(v0 + 360) = v8;
    *(v0 + 368) = v9;
    *(v0 + 328) = v24 & 1;
    if (v24)
    {
      v18 = 1.0;
    }

    v25 = OUTLINED_FUNCTION_8_13();
    *(v25 + 16) = xmmword_1DA4238F0;
    *(v25 + 32) = v18;
    strcpy((v0 + 160), "inAirplayMode");
    *(v0 + 174) = -4864;
    sub_1DA3B3334((v0 + 328), (v0 + 176));
    *(v0 + 224) = v25;
    v26 = *(v13 + 16);
    if (v26 >= *(v13 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_15();
      v13 = v34;
    }

    *(v13 + 16) = v26 + 1;
    memcpy((v13 + 72 * v26 + 32), (v0 + 160), 0x48uLL);
    __swift_destroy_boxed_opaque_existential_0((v0 + 416));
  }

  else
  {
    sub_1DA3BA470(v0 + 456);
    v13 = *(v0 + 624);
  }

  v27 = *(v0 + 8);

  return v27(v13);
}

unint64_t sub_1DA3F0FBC()
{
  result = qword_1EE102AE0;
  if (!qword_1EE102AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102AE0);
  }

  return result;
}

uint64_t *SiriSuggestionsIntelligence.EnvironmentFeatureExtractor.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v6 = v0[13];

  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.EnvironmentFeatureExtractor.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.EnvironmentFeatureExtractor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 192, 7);
}

uint64_t sub_1DA3F10A4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3F1134;

  return SiriSuggestionsIntelligence.EnvironmentFeatureExtractor.extract(_:)();
}

uint64_t sub_1DA3F1134()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

void *sub_1DA3F1248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a7;
  v38 = a1;
  v47[3] = a8;
  v47[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  (*(*(a8 - 8) + 16))(boxed_opaque_existential_1, a3, a8);
  v46[3] = a9;
  v46[4] = a11;
  v18 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(a9 - 8) + 16))(v18, a4, a9);
  type metadata accessor for SiriSuggestionsIntelligence.NowPlayingService();
  v36 = sub_1DA408D88(a5, a6);
  type metadata accessor for SiriSuggestionsIntelligence.MotionService();
  v19 = sub_1DA3CD4AC();
  type metadata accessor for SiriSuggestionsIntelligence.FocusModeService();
  v20 = sub_1DA410420();
  type metadata accessor for SiriSuggestionsIntelligence.CarPlayService();
  v21 = sub_1DA3F191C();
  type metadata accessor for SiriSuggestionsIntelligence.LocationService();
  v22 = sub_1DA41DD70();
  sub_1DA3A7ED4(v46, v45);
  v23 = _s19DefaultAudioServiceCMa();
  v24 = swift_allocObject();
  sub_1DA3A7ED4(v47, &v42);
  v25 = type metadata accessor for SiriSuggestionsIntelligence.DefaultScreenService();
  v26 = swift_allocObject();
  sub_1DA3A1FF8(&v42, v26 + 16);
  v43 = v23;
  v44 = &off_1F55E9E60;
  *&v42 = v24;
  v41 = &protocol witness table for SiriSuggestionsIntelligence.DefaultScreenService;
  v40 = v25;
  *&v39 = v26;
  v27 = swift_allocObject();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v42, v23);
  v29 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v35 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  v27[17] = v23;
  v27[18] = &off_1F55E9E60;
  v27[14] = v33;
  v27[2] = v36;
  v27[3] = v19;
  v27[4] = v20;
  v27[5] = v21;
  v27[6] = v22;
  sub_1DA3A1FF8(v45, (v27 + 7));
  v27[12] = v38;
  v27[13] = a2;
  sub_1DA3A1FF8(&v39, (v27 + 19));

  __swift_destroy_boxed_opaque_existential_0(&v42);
  __swift_destroy_boxed_opaque_existential_0(v47);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v27;
}

unint64_t sub_1DA3F1540()
{
  result = qword_1EE102228;
  if (!qword_1EE102228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102228);
  }

  return result;
}

unint64_t sub_1DA3F1594()
{
  result = qword_1EE101010;
  if (!qword_1EE101010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101010);
  }

  return result;
}

unint64_t sub_1DA3F15E8()
{
  result = qword_1EE101018;
  if (!qword_1EE101018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101018);
  }

  return result;
}

unint64_t sub_1DA3F163C()
{
  result = qword_1EE102670;
  if (!qword_1EE102670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102670);
  }

  return result;
}

unint64_t sub_1DA3F1690()
{
  result = qword_1EE102678;
  if (!qword_1EE102678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102678);
  }

  return result;
}

void OUTLINED_FUNCTION_3_15()
{

  sub_1DA3A5520();
}

uint64_t OUTLINED_FUNCTION_8_13()
{

  return swift_allocObject();
}

uint64_t sub_1DA3F1770()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DA3F1818;

  return sub_1DA41D598();
}

uint64_t sub_1DA3F1818(uint64_t a1, char a2)
{
  v5 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2 & 1);
}

uint64_t sub_1DA3F191C()
{
  v0 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v1 = [v0 Connected];
  swift_unknownObjectRelease();
  v2 = swift_allocObject();
  sub_1DA3F19B4(v1);
  return v2;
}

uint64_t sub_1DA3F19B4(uint64_t a1)
{
  v2 = v1;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7C8, &qword_1DA4285E8);
  swift_allocObject();
  *(v2 + 16) = sub_1DA420960(a1, v5, sub_1DA3F1A40, 0);
  return v2;
}

uint64_t sub_1DA3F1A40@<X0>(id a1@<X1>, uint64_t result@<X0>, uint64_t a3@<X8>)
{
  if (a1 && (v4 = result, result = [a1 starting], (result & 1) != 0))
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  return result;
}

uint64_t SiriSuggestionsIntelligence.CarPlayService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.CarPlayService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DA3F1AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6E6F43746F6ELL && a2 == 0xEC00000064657463;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA3F1BC4(char a1)
{
  if (a1)
  {
    return 0x657463656E6E6F63;
  }

  else
  {
    return 0x656E6E6F43746F6ELL;
  }
}

uint64_t sub_1DA3F1C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3F1AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3F1C38(uint64_t a1)
{
  v2 = sub_1DA3F20A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F1C74(uint64_t a1)
{
  v2 = sub_1DA3F20A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F1CB0(uint64_t a1)
{
  v2 = sub_1DA3F20FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F1CEC(uint64_t a1)
{
  v2 = sub_1DA3F20FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F1D28(uint64_t a1)
{
  v2 = sub_1DA3F2150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F1D64(uint64_t a1)
{
  v2 = sub_1DA3F2150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.CarPlayConnection.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

uint64_t SiriSuggestionsIntelligence.CarPlayConnection.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v35 = a3;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF780, &qword_1DA428210);
  v5 = OUTLINED_FUNCTION_3_1(v4);
  v33 = v6;
  v34 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF788, &qword_1DA428218);
  OUTLINED_FUNCTION_3_1(v31);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF790, &qword_1DA428220);
  OUTLINED_FUNCTION_3_1(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v30 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F20A8();
  sub_1DA422494();
  if (v35)
  {
    v36 = 0;
    sub_1DA3F2150();
    sub_1DA4222D4();
    (*(v13 + 8))(v18, v31);
  }

  else
  {
    v37 = 1;
    sub_1DA3F20FC();
    sub_1DA4222D4();
    v29 = v34;
    sub_1DA422314();
    (*(v33 + 8))(v11, v29);
  }

  return (*(v21 + 8))(v26, v19);
}

unint64_t sub_1DA3F20A8()
{
  result = qword_1EE102270;
  if (!qword_1EE102270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102270);
  }

  return result;
}

unint64_t sub_1DA3F20FC()
{
  result = qword_1ECBAF798;
  if (!qword_1ECBAF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF798);
  }

  return result;
}

unint64_t sub_1DA3F2150()
{
  result = qword_1EE102248;
  if (!qword_1EE102248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102248);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.CarPlayConnection.init(from:)(uint64_t *a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7A0, &qword_1DA428228);
  OUTLINED_FUNCTION_3_1(v65);
  v63 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7A8, &qword_1DA428230);
  OUTLINED_FUNCTION_3_1(v8);
  v62 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7B0, &unk_1DA428238);
  OUTLINED_FUNCTION_3_1(v15);
  v64 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v57 - v20;
  v22 = a1[4];
  v23 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F20A8();
  v24 = v66;
  sub_1DA422484();
  if (v24)
  {
    goto LABEL_8;
  }

  v59 = v8;
  v60 = v14;
  v66 = v7;
  v25 = v65;
  v26 = sub_1DA4222C4();
  result = sub_1DA3C2AA0(v26, 0);
  v61 = a1;
  if (v29 == v30 >> 1)
  {
LABEL_7:
    v40 = sub_1DA4220F4();
    swift_allocError();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620) + 48);
    *v42 = &type metadata for SiriSuggestionsIntelligence.CarPlayConnection;
    v23 = v21;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = *(v64 + 8);
    v45 = OUTLINED_FUNCTION_3_5();
    v46(v45);
    a1 = v61;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v23;
  }

  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    v32 = sub_1DA3C2A9C(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    v37 = v63;
    if (v34 == v36 >> 1)
    {
      v58 = v32;
      v57[3] = v31;
      if (v31)
      {
        v68 = 1;
        sub_1DA3F20FC();
        v38 = v66;
        OUTLINED_FUNCTION_4_4();
        v39 = v64;
        sub_1DA422294();
        v53 = v52;
        swift_unknownObjectRelease();
        (*(v37 + 8))(v38, v25);
        v54 = *(v39 + 8);
        v55 = OUTLINED_FUNCTION_3_5();
        v56(v55);
        v23 = v53;
      }

      else
      {
        v67 = 0;
        sub_1DA3F2150();
        v47 = v60;
        OUTLINED_FUNCTION_4_4();
        v48 = v64;
        swift_unknownObjectRelease();
        (*(v62 + 8))(v47, v59);
        v49 = *(v48 + 8);
        v50 = OUTLINED_FUNCTION_3_5();
        v51(v50);
        v23 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0(v61);
      return v23;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3F26D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SiriSuggestionsIntelligence.CarPlayConnection.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

_BYTE *_s17CarPlayConnectionO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s17CarPlayConnectionO19ConnectedCodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA3F28F8()
{
  result = qword_1ECBAF7B8;
  if (!qword_1ECBAF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF7B8);
  }

  return result;
}

unint64_t sub_1DA3F2950()
{
  result = qword_1ECBAF7C0;
  if (!qword_1ECBAF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF7C0);
  }

  return result;
}

unint64_t sub_1DA3F29A8()
{
  result = qword_1EE102238;
  if (!qword_1EE102238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102238);
  }

  return result;
}

unint64_t sub_1DA3F2A00()
{
  result = qword_1EE102240;
  if (!qword_1EE102240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102240);
  }

  return result;
}

unint64_t sub_1DA3F2A58()
{
  result = qword_1EE102250;
  if (!qword_1EE102250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102250);
  }

  return result;
}

unint64_t sub_1DA3F2AB0()
{
  result = qword_1EE102258;
  if (!qword_1EE102258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102258);
  }

  return result;
}

unint64_t sub_1DA3F2B08()
{
  result = qword_1EE102260;
  if (!qword_1EE102260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102260);
  }

  return result;
}

unint64_t sub_1DA3F2B60()
{
  result = qword_1EE102268;
  if (!qword_1EE102268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102268);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor.__allocating_init(possibleOwners:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor.extract(_:)()
{
  OUTLINED_FUNCTION_16();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1DA4216E4();
  v1[14] = v3;
  OUTLINED_FUNCTION_5_2(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_40();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE10, &qword_1DA424078) - 8) + 64);
  v1[17] = OUTLINED_FUNCTION_40();
  v8 = sub_1DA421714();
  v1[18] = v8;
  OUTLINED_FUNCTION_5_2(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = OUTLINED_FUNCTION_40();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE08, &qword_1DA424070) - 8) + 64);
  v1[21] = OUTLINED_FUNCTION_40();
  v13 = sub_1DA421814();
  v1[22] = v13;
  OUTLINED_FUNCTION_5_2(v13);
  v1[23] = v14;
  v16 = *(v15 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v17 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
  v1[26] = v17;
  v18 = *(*(v17 - 8) + 64);
  v1[27] = OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](sub_1DA3F2ECC, 0, 0);
}

uint64_t sub_1DA3F2ECC()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[13];
  sub_1DA3F36F0(v0[12], v0[27]);
  v0[28] = *(v1 + 16);
  sub_1DA4217D4();
  sub_1DA3F3964(&qword_1ECBAF7D0, MEMORY[0x1E69D3008]);
  v3 = sub_1DA421DD4();

  return MEMORY[0x1EEE6DFA0](sub_1DA3F2F90, v3, v2);
}

uint64_t sub_1DA3F2F90()
{
  OUTLINED_FUNCTION_16();
  v1 = *(v0 + 224);
  *(v0 + 232) = sub_1DA4217C4();

  return MEMORY[0x1EEE6DFA0](sub_1DA3F2FF8, 0, 0);
}

uint64_t sub_1DA3F2FF8()
{
  v81 = v0;
  v1 = v0[29];
  v2 = *(v1 + 16);
  if (v2)
  {
    *__src = MEMORY[0x1E69E7CC0];
    sub_1DA3B0160();
    v3 = *__src;
    v4 = v1 + 32;
    do
    {
      sub_1DA3A7ED4(v4, (v0 + 2));
      v5 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      sub_1DA421774();
      v6 = v0[10];
      v7 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
      v8 = MEMORY[0x1DA74D0B0](v6, v7);
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
      __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      *__src = v3;
      v11 = *(v3 + 16);
      if (v11 >= *(v3 + 24) >> 1)
      {
        sub_1DA3B0160();
        v3 = *__src;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
      v4 += 40;
      --v2;
    }

    while (v2);
    v13 = v0[29];
  }

  else
  {
    v14 = v0[29];

    v3 = MEMORY[0x1E69E7CC0];
  }

  v15 = v0[26];
  v16 = v0[27];
  v17 = v0[21];
  v79 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DA4275F0;
  v19 = *v16;
  v20 = v16[1];
  v21 = MEMORY[0x1E69E6190];
  *(v18 + 72) = MEMORY[0x1E69E6158];
  *(v18 + 80) = v21;
  v22 = MEMORY[0x1E69E6160];
  *(v18 + 48) = v19;
  *(v18 + 56) = v20;
  strcpy((v18 + 32), "suggestionId");
  *(v18 + 45) = 0;
  *(v18 + 46) = -5120;
  *(v18 + 88) = v22;
  *(v18 + 96) = 0;
  v23 = v16[7];
  v24 = v16[8];
  __swift_project_boxed_opaque_existential_1(v16 + 4, v23);

  v25 = MEMORY[0x1DA74D0B0](v23, v24);
  static SiriSuggestionsIntelligence.createStringFeature(featureId:featureValue:possibleValues:)(2, v25, v26, v3, (v18 + 104));

  v27 = v16[12];
  v28 = v16[13];
  __swift_project_boxed_opaque_existential_1(v16 + 9, v27);
  v29 = MEMORY[0x1DA74D0B0](v27, v28);
  static SiriSuggestionsIntelligence.createStringFeature(featureId:featureValue:possibleValues:)(3, v29, v30, v3, (v18 + 176));

  sub_1DA3A88F8(v16 + *(v15 + 32), v17, &qword_1ECBAEE08, &qword_1DA424070);
  if (__swift_getEnumTagSinglePayload(v17, 1, v79) == 1)
  {
    sub_1DA3A8CA8(v0[21], &qword_1ECBAEE08, &qword_1DA424070);
    v31 = v18;
  }

  else
  {
    (*(v0[23] + 32))(v0[25], v0[21], v0[22]);
    v32 = sub_1DA421804();
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = v0[23];
      *__src = MEMORY[0x1E69E7CC0];
      sub_1DA3B0160();
      v35 = *__src;
      v36 = *(v34 + 16);
      v34 += 16;
      v37 = v32 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
      v77 = *(v34 + 56);
      v78 = v36;
      v38 = (v34 - 8);
      do
      {
        v39 = v0[24];
        v40 = v0[22];
        v78(v39, v37, v40);
        v41 = sub_1DA4217F4();
        v43 = v42;
        (*v38)(v39, v40);
        *__src = v35;
        v44 = *(v35 + 16);
        if (v44 >= *(v35 + 24) >> 1)
        {
          sub_1DA3B0160();
          v35 = *__src;
        }

        *(v35 + 16) = v44 + 1;
        v45 = v35 + 16 * v44;
        *(v45 + 32) = v41;
        *(v45 + 40) = v43;
        v37 += v77;
        --v33;
      }

      while (v33);
    }

    else
    {

      v35 = MEMORY[0x1E69E7CC0];
    }

    v46 = v0[25];
    v48 = v0[22];
    v47 = v0[23];
    v49 = sub_1DA4217F4();
    static SiriSuggestionsIntelligence.createStringFeature(featureId:featureValue:possibleValues:)(1, v49, v50, v35, __src);

    sub_1DA3A5520();
    v31 = v51;
    (*(v47 + 8))(v46, v48);
    v31[2] = 4;
    memcpy(v31 + 31, __src, 0x48uLL);
  }

  v53 = v0[17];
  v52 = v0[18];
  sub_1DA3A88F8(v0[27] + *(v0[26] + 36), v53, &qword_1ECBAEE10, &qword_1DA424078);
  if (__swift_getEnumTagSinglePayload(v53, 1, v52) == 1)
  {
    v54 = v0[17];
    sub_1DA3B2CA4(v0[27]);
    sub_1DA3A8CA8(v54, &qword_1ECBAEE10, &qword_1DA424078);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[17], v0[18]);
    v55 = sub_1DA4216F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1DA4238F0;
    *(v56 + 32) = v55;
    v57 = v31[2];
    if (v57 >= v31[3] >> 1)
    {
      sub_1DA3A5520();
      v31 = v75;
    }

    v58 = v0[20];
    v60 = v0[15];
    v59 = v0[16];
    v61 = v0[14];
    v31[2] = v57 + 1;
    v62 = &v31[9 * v57];
    v62[4] = 0x6E6F697469736F70;
    v62[5] = 0xE800000000000000;
    v62[6] = v55;
    *(v62 + 7) = *__src;
    v63 = MEMORY[0x1E69E6560];
    v62[9] = MEMORY[0x1E69E6530];
    v62[10] = v63;
    v62[11] = MEMORY[0x1E69E6538];
    v62[12] = v56;
    sub_1DA421704();
    sub_1DA3F2BB4(__src, 7, v59);
    (*(v60 + 8))(v59, v61);
    v64 = v31[2];
    if (v64 >= v31[3] >> 1)
    {
      sub_1DA3A5520();
      v31 = v76;
    }

    v65 = v0[27];
    (*(v0[19] + 8))(v0[20], v0[18]);
    v31[2] = v64 + 1;
    memcpy(&v31[9 * v64 + 4], __src, 0x48uLL);
    sub_1DA3B2CA4(v65);
  }

  v66 = v0[27];
  v68 = v0[24];
  v67 = v0[25];
  v70 = v0[20];
  v69 = v0[21];
  v72 = v0[16];
  v71 = v0[17];

  v73 = v0[1];

  return v73(v31);
}

uint64_t sub_1DA3F36F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DA3F37AC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3F3844;

  return SiriSuggestionsIntelligence.SuggestionDetailsFeatureExtractor.extract(_:)();
}

uint64_t sub_1DA3F3844()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = *(*v1 + 16);
  v8 = *v1;

  v6 = *(v8 + 8);
  if (!v0)
  {
    v5 = v3;
  }

  return v6(v5);
}

uint64_t sub_1DA3F3964(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA3F39AC()
{
  type metadata accessor for SiriSuggestionsIntelligence.NoopAccountService();
  result = swift_initStaticObject();
  static SiriSuggestionsIntelligence.noopAccountService = result;
  return result;
}

uint64_t *SiriSuggestionsIntelligence.noopAccountService.unsafeMutableAddressor()
{
  if (qword_1EE102098 != -1)
  {
    swift_once();
  }

  return &static SiriSuggestionsIntelligence.noopAccountService;
}

uint64_t static SiriSuggestionsIntelligence.noopAccountService.getter()
{
  type metadata accessor for SiriSuggestionsIntelligence.NoopAccountService();

  return swift_initStaticObject();
}

uint64_t sub_1DA3F3A9C()
{
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA421A94();
  __swift_project_value_buffer(v1, static Logger.extractionCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA39E000, v2, v3, "Account service not enabled", v4, 2u);
    MEMORY[0x1DA74E430](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(type metadata accessor for SiriSuggestionsIntelligence.AccountDetails() + 20);
  v7 = sub_1DA4210B4();
  __swift_storeEnumTagSinglePayload(v5 + v6, 1, 1, v7);
  *v5 = MEMORY[0x1E69E7CC0];
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DA3F3C04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3CC038;

  return SiriSuggestionsIntelligence.NoopAccountService.getAccountDetails()(a1);
}

uint64_t SiriSuggestionsIntelligence.TimePartition.featureName.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5[0] = 0;
    v5[1] = 0xE000000000000000;
    MEMORY[0x1DA74D370](14963, 0xE200000000000000);
    v2 = *v0;
    sub_1DA421E94();
    MEMORY[0x1DA74D370](3826988, 0xE300000000000000);
    v3 = *(v0 + 8);
    sub_1DA421E94();
    MEMORY[0x1DA74D370](3829548, 0xE300000000000000);
    v6 = *(v0 + 16);
    sub_1DA422194();
    v1 = 0;
  }

  sub_1DA3F3DAC(v0, v5);
  return v1;
}

void *sub_1DA3F3DE4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DA3F7198();
  v6 = sub_1DA421AE4();
  if ([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_])
  {
    swift_isUniquelyReferenced_nonNull_native();
    v7 = OUTLINED_FUNCTION_10_8();
    sub_1DA3E29CC(v7, v8, 0xE900000000000065, v9);
  }

  else
  {
    v10 = sub_1DA3B76EC(0x6D69546C61746F74, 0xE900000000000065);
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      v13 = v6[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF5D0, &unk_1DA427550);
      sub_1DA4221A4();
      v14 = *(v6[6] + 16 * v12 + 8);

      v15 = *(v6[7] + 8 * v12);
      sub_1DA4221C4();
    }
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (v16)
  {
    v17 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA3E29CC(v17, 0x65704F73656D6974, 0xEB0000000064656ELL, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_10_8();
    v21 = sub_1DA3B76EC(v19, v20);
    if (v22)
    {
      v23 = v21;
      swift_isUniquelyReferenced_nonNull_native();
      v24 = v6[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF5D0, &unk_1DA427550);
      sub_1DA4221A4();
      v25 = *(v6[6] + 16 * v23 + 8);

      v26 = *(v6[7] + 8 * v23);
      sub_1DA4221C4();
    }
  }

  return v6;
}

uint64_t sub_1DA3F404C(uint64_t a1, uint64_t a2)
{
  if (qword_1EE101B90 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v4 = qword_1EE101B98;

    v5 = sub_1DA3F61A8(v4, a1, a2);
    a2 = v5;
    if (!*(v5 + 16))
    {
      break;
    }

    v34 = *(v5 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0360();
    a1 = v35;
    v6 = sub_1DA3E4130(a2);
    v8 = v7;
    v9 = v34;
    v10 = 0;
    v11 = a2 + 64;
    v12 = 1;
    v13 = -2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < v12 << *(a2 + 32))
      {
        v14 = v6 >> 6;
        v15 = v12 << v6;
        if ((*(v11 + 8 * (v6 >> 6)) & (v12 << v6)) == 0)
        {
          goto LABEL_29;
        }

        if (*(a2 + 36) != v8)
        {
          goto LABEL_30;
        }

        v16 = *(*(a2 + 48) + v6);
        v17 = *(v35 + 16);
        if (v17 >= *(v35 + 24) >> 1)
        {
          sub_1DA3B0360();
          OUTLINED_FUNCTION_7_11();
        }

        *(v35 + 16) = v17 + 1;
        *(v35 + v17 + 32) = v16;
        v18 = v12 << *(a2 + 32);
        if (v6 >= v18)
        {
          goto LABEL_31;
        }

        v19 = *(v11 + 8 * v14);
        if ((v19 & v15) == 0)
        {
          goto LABEL_32;
        }

        if (*(a2 + 36) != v8)
        {
          goto LABEL_33;
        }

        v20 = v19 & (v13 << (v6 & 0x3F));
        if (v20)
        {
          v18 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = v14 << 6;
          v22 = v14 + 1;
          v23 = (a2 + 72 + 8 * v14);
          while (v22 < (v18 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              v26 = OUTLINED_FUNCTION_10_8();
              sub_1DA3A2020(v26, v27, v28);
              OUTLINED_FUNCTION_7_11();
              v18 = __clz(__rbit64(v24)) + v21;
              goto LABEL_19;
            }
          }

          v29 = OUTLINED_FUNCTION_10_8();
          sub_1DA3A2020(v29, v30, v31);
          OUTLINED_FUNCTION_7_11();
        }

LABEL_19:
        if (++v10 == v9)
        {

          goto LABEL_24;
        }

        v8 = *(a2 + 36);
        v6 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
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
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_24:
  if (*(a1 + 16))
  {
    v32 = *(a1 + 32);
  }

  else
  {
    v32 = 5;
  }

  return v32;
}

uint64_t static SiriSuggestionsIntelligence.AggregationPartition.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1DA4223A4(), result = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (!v7 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0)
    {
      return 0;
    }

    v8 = *(a1 + 48);
    v9 = *(a2 + 48);
    if (v8)
    {
      if (v9)
      {
        v10 = *(a1 + 40) == *(a2 + 40) && v8 == v9;
        if (v10 || (sub_1DA4223A4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v9)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t static SiriSuggestionsIntelligence.TimePartition.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(a1 + 24) == *(a2 + 24) && v3 == v4;
    if (!v5 && (sub_1DA4223A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  return 1;
}

uint64_t SiriSuggestionsIntelligence.AggregationPartition.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DA421BF4();
  return SiriSuggestionsIntelligence.TimePartition.hash(into:)();
}

uint64_t SiriSuggestionsIntelligence.AggregationPartition.hashValue.getter()
{
  OUTLINED_FUNCTION_11_7();
  v1 = *v0;
  v2 = v0[1];
  sub_1DA421BF4();
  SiriSuggestionsIntelligence.TimePartition.hash(into:)();
  return sub_1DA422474();
}

uint64_t sub_1DA3F44B8()
{
  sub_1DA422434();
  SiriSuggestionsIntelligence.AggregationPartition.hash(into:)();
  return sub_1DA422474();
}

uint64_t SiriSuggestionsIntelligence.Origin.hashValue.getter(char a1)
{
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1DA74DBB0](a1 & 1);
  return sub_1DA422474();
}

uint64_t sub_1DA3F458C()
{
  v1 = *v0;
  sub_1DA422434();
  SiriSuggestionsIntelligence.Origin.hash(into:)(v3, v1);
  return sub_1DA422474();
}

uint64_t SiriSuggestionsIntelligence.TimePartition.label.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SiriSuggestionsIntelligence.TimePartition.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA74DBD0](*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1DA74DBD0](*&v2);
  MEMORY[0x1DA74DBB0](*(v0 + 16));
  if (!*(v0 + 32))
  {
    return sub_1DA422454();
  }

  v3 = *(v0 + 24);
  sub_1DA422454();

  return sub_1DA421BF4();
}

uint64_t SiriSuggestionsIntelligence.TimePartition.hashValue.getter()
{
  OUTLINED_FUNCTION_11_7();
  SiriSuggestionsIntelligence.TimePartition.hash(into:)();
  return sub_1DA422474();
}

uint64_t sub_1DA3F470C()
{
  sub_1DA422434();
  SiriSuggestionsIntelligence.TimePartition.hash(into:)();
  return sub_1DA422474();
}

uint64_t sub_1DA3F474C()
{
  sub_1DA3F71DC();
  result = sub_1DA421AE4();
  qword_1EE101B98 = result;
  return result;
}

uint64_t sub_1DA3F478C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E694D357473616CLL && a2 == 0xEC00000073657475;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72756F487473616CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7961447473616CLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6B6565577473616CLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1DA4223A4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DA4223A4();

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

uint64_t sub_1DA3F4930(char a1)
{
  result = 0x6E694D357473616CLL;
  switch(a1)
  {
    case 1:
      result = 0x72756F487473616CLL;
      break;
    case 2:
      result = 0x7961447473616CLL;
      break;
    case 3:
      result = 0x6B6565577473616CLL;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA3F49DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3F478C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3F4A04(uint64_t a1)
{
  v2 = sub_1DA3F5134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4A40(uint64_t a1)
{
  v2 = sub_1DA3F5134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F4A7C(uint64_t a1)
{
  v2 = sub_1DA3F52D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4AB8(uint64_t a1)
{
  v2 = sub_1DA3F52D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F4AF4(uint64_t a1)
{
  v2 = sub_1DA3F5230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4B30(uint64_t a1)
{
  v2 = sub_1DA3F5230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F4B6C(uint64_t a1)
{
  v2 = sub_1DA3F5284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4BA8(uint64_t a1)
{
  v2 = sub_1DA3F5284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F4BE4(uint64_t a1)
{
  v2 = sub_1DA3F51DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4C20(uint64_t a1)
{
  v2 = sub_1DA3F51DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3F4C5C(uint64_t a1)
{
  v2 = sub_1DA3F5188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F4C98(uint64_t a1)
{
  v2 = sub_1DA3F5188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.RelativeTimePartition.encode(to:)(void *a1, uint64_t a2)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7E0, &qword_1DA4286F0);
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v62 = v5;
  v63 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_5();
  v61 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7E8, &qword_1DA4286F8);
  v11 = OUTLINED_FUNCTION_3_1(v10);
  v59 = v12;
  v60 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_5();
  v58 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7F0, &qword_1DA428700);
  v18 = OUTLINED_FUNCTION_3_1(v17);
  v56 = v19;
  v57 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_10_5();
  v55 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF7F8, &qword_1DA428708);
  v25 = OUTLINED_FUNCTION_3_1(v24);
  v53 = v26;
  v54 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v52 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF800, &qword_1DA428710);
  OUTLINED_FUNCTION_3_1(v32);
  v52 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v52 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF808, &qword_1DA428718);
  OUTLINED_FUNCTION_3_1(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v52 - v45;
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F5134();
  sub_1DA422494();
  switch(v64)
  {
    case 1:
      v66 = 1;
      sub_1DA3F5284();
      sub_1DA4222D4();
      (*(v53 + 8))(v31, v54);
      return (*(v41 + 8))(v46, v39);
    case 2:
      v67 = 2;
      sub_1DA3F5230();
      v48 = v55;
      OUTLINED_FUNCTION_2_16();
      v50 = v56;
      v49 = v57;
      goto LABEL_6;
    case 3:
      v68 = 3;
      sub_1DA3F51DC();
      v48 = v58;
      OUTLINED_FUNCTION_2_16();
      v50 = v59;
      v49 = v60;
      goto LABEL_6;
    case 4:
      v69 = 4;
      sub_1DA3F5188();
      v48 = v61;
      OUTLINED_FUNCTION_2_16();
      v50 = v62;
      v49 = v63;
LABEL_6:
      (*(v50 + 8))(v48, v49);
      break;
    default:
      v65 = 0;
      sub_1DA3F52D8();
      OUTLINED_FUNCTION_2_16();
      (*(v52 + 8))(v38, v32);
      break;
  }

  return (*(v41 + 8))(v46, v39);
}

unint64_t sub_1DA3F5134()
{
  result = qword_1ECBAF810;
  if (!qword_1ECBAF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF810);
  }

  return result;
}

unint64_t sub_1DA3F5188()
{
  result = qword_1ECBAF818;
  if (!qword_1ECBAF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF818);
  }

  return result;
}

unint64_t sub_1DA3F51DC()
{
  result = qword_1ECBAF820;
  if (!qword_1ECBAF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF820);
  }

  return result;
}

unint64_t sub_1DA3F5230()
{
  result = qword_1ECBAF828;
  if (!qword_1ECBAF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF828);
  }

  return result;
}

unint64_t sub_1DA3F5284()
{
  result = qword_1ECBAF830;
  if (!qword_1ECBAF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF830);
  }

  return result;
}

unint64_t sub_1DA3F52D8()
{
  result = qword_1ECBAF838;
  if (!qword_1ECBAF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF838);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.RelativeTimePartition.init(from:)(uint64_t *a1)
{
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF840, &qword_1DA428720);
  OUTLINED_FUNCTION_3_1(v81);
  v76 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_5();
  v80 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF848, &qword_1DA428728);
  v8 = OUTLINED_FUNCTION_3_1(v7);
  v74 = v9;
  v75 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_5();
  v78 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF850, &qword_1DA428730);
  v15 = OUTLINED_FUNCTION_3_1(v14);
  v72 = v16;
  v73 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_5();
  v77 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF858, &qword_1DA428738);
  v22 = OUTLINED_FUNCTION_3_1(v21);
  v70 = v23;
  v71 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v65 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF860, &qword_1DA428740);
  OUTLINED_FUNCTION_3_1(v29);
  v69 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF868, &unk_1DA428748);
  OUTLINED_FUNCTION_3_1(v36);
  v79 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v65 - v41;
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F5134();
  v44 = v82;
  sub_1DA422484();
  if (v44)
  {
    goto LABEL_8;
  }

  v66 = v29;
  v67 = v35;
  v68 = v28;
  v46 = v80;
  v45 = v81;
  v82 = a1;
  v47 = v42;
  v48 = sub_1DA4222C4();
  result = sub_1DA3C2AA0(v48, 0);
  if (v51 == v52 >> 1)
  {
LABEL_7:
    v59 = sub_1DA4220F4();
    swift_allocError();
    v61 = v60;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620) + 48);
    *v61 = &type metadata for SiriSuggestionsIntelligence.RelativeTimePartition;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v79 + 8))(v47, v36);
    a1 = v82;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v35;
  }

  if (v51 < (v52 >> 1))
  {
    v35 = *(v50 + v51);
    sub_1DA3C2A9C(v51 + 1);
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    v47 = v42;
    if (v54 == v56 >> 1)
    {
      v57 = v79;
      switch(v35)
      {
        case 1uLL:
          v84 = 1;
          sub_1DA3F5284();
          v62 = v68;
          OUTLINED_FUNCTION_3_16();
          swift_unknownObjectRelease();
          v64 = v70;
          v63 = v71;
          goto LABEL_14;
        case 2uLL:
          v85 = 2;
          sub_1DA3F5230();
          v62 = v77;
          OUTLINED_FUNCTION_3_16();
          swift_unknownObjectRelease();
          v64 = v72;
          v63 = v73;
          goto LABEL_14;
        case 3uLL:
          v86 = 3;
          sub_1DA3F51DC();
          v62 = v78;
          OUTLINED_FUNCTION_3_16();
          swift_unknownObjectRelease();
          v64 = v74;
          v63 = v75;
LABEL_14:
          (*(v64 + 8))(v62, v63);
          break;
        case 4uLL:
          v87 = 4;
          sub_1DA3F5188();
          sub_1DA422244();
          swift_unknownObjectRelease();
          (*(v76 + 8))(v46, v45);
          break;
        default:
          v83 = 0;
          sub_1DA3F52D8();
          v58 = v67;
          OUTLINED_FUNCTION_3_16();
          swift_unknownObjectRelease();
          (*(v69 + 8))(v58, v66);
          break;
      }

      (*(v57 + 8))(v42, v36);
      __swift_destroy_boxed_opaque_existential_0(v82);
      return v35;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3F59F4()
{
  v1 = *v0;
  sub_1DA422434();
  SiriSuggestionsIntelligence.RelativeTimePartition.hash(into:)(v3, v1);
  return sub_1DA422474();
}

uint64_t sub_1DA3F5A38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.RelativeTimePartition.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DA3F5AC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656449707061 && a2 == 0xED00007265696669;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65704F73656D6974 && a2 == 0xEB0000000064656ELL;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA4223A4();

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

uint64_t _s27SiriSuggestionsIntelligenceAAO21RelativeTimePartitionO9hashValueSivg_0(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_11_7();
  MEMORY[0x1DA74DBB0](a1);
  return sub_1DA422474();
}

uint64_t sub_1DA3F5C24(char a1)
{
  if (!a1)
  {
    return 0x746E656449707061;
  }

  if (a1 == 1)
  {
    return 0x65704F73656D6974;
  }

  return 0x6D69546C61746F74;
}

uint64_t sub_1DA3F5C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3F5AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3F5CC4(uint64_t a1)
{
  v2 = sub_1DA3F6584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F5D00(uint64_t a1)
{
  v2 = sub_1DA3F6584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.AppStats.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a3 != a6)
    {
      return 0;
    }

    return a7 == a8;
  }

  v13 = sub_1DA4223A4();
  result = 0;
  if ((v13 & 1) != 0 && a3 == a6)
  {
    return a7 == a8;
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.AppStats.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF870, &qword_1DA428758);
  OUTLINED_FUNCTION_3_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F6584();
  sub_1DA422494();
  v19 = 0;
  sub_1DA4222F4();
  if (!v4)
  {
    v18 = 1;
    sub_1DA422324();
    v17 = 2;
    sub_1DA422314();
  }

  return (*(v8 + 8))(v13, v6);
}

double SiriSuggestionsIntelligence.AppStats.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF878, &qword_1DA428760);
  OUTLINED_FUNCTION_3_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F6584();
  sub_1DA422484();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_11();
    sub_1DA422274();
    OUTLINED_FUNCTION_9_11();
    sub_1DA4222A4();
    OUTLINED_FUNCTION_9_11();
    sub_1DA422294();
    v2 = v10;
    v11 = OUTLINED_FUNCTION_8_14();
    v12(v11);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

void sub_1DA3F612C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = SiriSuggestionsIntelligence.AppStats.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1DA3F61A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      a2 = sub_1DA3F64DC(v15, v9, a1, a2, a3);
      MEMORY[0x1DA74E430](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  v11 = v16 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1DA3D78F8(0, v9, v11);

  v12 = sub_1DA3F6380(v11, v9, a1, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v12;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v13 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1DA3F6380(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 56) + 16 * v18);
    result = *v19;
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_1DA4223A4();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:
      sub_1DA3C8A9C(v25, a2, v8, a3);
      v23 = v22;

      return v23;
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DA3F64DC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_1DA3F6380(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t sub_1DA3F6584()
{
  result = qword_1EE101080;
  if (!qword_1EE101080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101080);
  }

  return result;
}

unint64_t sub_1DA3F65DC()
{
  result = qword_1EE101EC8;
  if (!qword_1EE101EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101EC8);
  }

  return result;
}

unint64_t sub_1DA3F6634()
{
  result = qword_1ECBAF880;
  if (!qword_1ECBAF880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF880);
  }

  return result;
}

unint64_t sub_1DA3F668C()
{
  result = qword_1EE1028D8[0];
  if (!qword_1EE1028D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1028D8);
  }

  return result;
}

unint64_t sub_1DA3F66E4()
{
  result = qword_1EE101B78;
  if (!qword_1EE101B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101B78);
  }

  return result;
}

uint64_t sub_1DA3F6738(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DA3F6778(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *_s6OriginOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA3F68BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DA3F6910(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1DA3F6984(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DA3F69C4(uint64_t result, int a2, int a3)
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

_BYTE *_s8AppStatsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DA3F6AEC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3F6C1C()
{
  result = qword_1ECBAF888;
  if (!qword_1ECBAF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF888);
  }

  return result;
}

unint64_t sub_1DA3F6C74()
{
  result = qword_1ECBAF890;
  if (!qword_1ECBAF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF890);
  }

  return result;
}

unint64_t sub_1DA3F6CCC()
{
  result = qword_1EE101070;
  if (!qword_1EE101070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101070);
  }

  return result;
}

unint64_t sub_1DA3F6D24()
{
  result = qword_1EE101078;
  if (!qword_1EE101078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101078);
  }

  return result;
}

unint64_t sub_1DA3F6D7C()
{
  result = qword_1ECBAF898;
  if (!qword_1ECBAF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF898);
  }

  return result;
}

unint64_t sub_1DA3F6DD4()
{
  result = qword_1ECBAF8A0;
  if (!qword_1ECBAF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8A0);
  }

  return result;
}

unint64_t sub_1DA3F6E2C()
{
  result = qword_1ECBAF8A8;
  if (!qword_1ECBAF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8A8);
  }

  return result;
}

unint64_t sub_1DA3F6E84()
{
  result = qword_1ECBAF8B0;
  if (!qword_1ECBAF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8B0);
  }

  return result;
}

unint64_t sub_1DA3F6EDC()
{
  result = qword_1ECBAF8B8;
  if (!qword_1ECBAF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8B8);
  }

  return result;
}

unint64_t sub_1DA3F6F34()
{
  result = qword_1ECBAF8C0;
  if (!qword_1ECBAF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8C0);
  }

  return result;
}

unint64_t sub_1DA3F6F8C()
{
  result = qword_1ECBAF8C8;
  if (!qword_1ECBAF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8C8);
  }

  return result;
}

unint64_t sub_1DA3F6FE4()
{
  result = qword_1ECBAF8D0;
  if (!qword_1ECBAF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8D0);
  }

  return result;
}

unint64_t sub_1DA3F703C()
{
  result = qword_1ECBAF8D8;
  if (!qword_1ECBAF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8D8);
  }

  return result;
}

unint64_t sub_1DA3F7094()
{
  result = qword_1ECBAF8E0;
  if (!qword_1ECBAF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8E0);
  }

  return result;
}

unint64_t sub_1DA3F70EC()
{
  result = qword_1ECBAF8E8;
  if (!qword_1ECBAF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8E8);
  }

  return result;
}

unint64_t sub_1DA3F7144()
{
  result = qword_1ECBAF8F0;
  if (!qword_1ECBAF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF8F0);
  }

  return result;
}

unint64_t sub_1DA3F7198()
{
  result = qword_1ECBAF2A0;
  if (!qword_1ECBAF2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAF2A0);
  }

  return result;
}

unint64_t sub_1DA3F71DC()
{
  result = qword_1EE101B80;
  if (!qword_1EE101B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101B80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return sub_1DA4222D4();
}

uint64_t OUTLINED_FUNCTION_3_16()
{

  return sub_1DA422244();
}

uint64_t OUTLINED_FUNCTION_11_7()
{

  return sub_1DA422434();
}

uint64_t SiriSuggestionsIntelligence.AccountDetails.init(devices:createdDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for SiriSuggestionsIntelligence.AccountDetails() + 20);

  return sub_1DA3A6760(a2, v4);
}

uint64_t type metadata accessor for SiriSuggestionsIntelligence.AccountDetails()
{
  result = qword_1EE102DE8;
  if (!qword_1EE102DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t SiriSuggestionsIntelligence.AccountDetails.description.getter()
{
  v1 = v0;
  v2 = sub_1DA4210B4();
  v3 = OUTLINED_FUNCTION_3_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0) - 8) + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1DA422094();

  v22 = 0xD000000000000018;
  v23 = 0x80000001DA42E3B0;
  v14 = *v0;
  v15 = type metadata accessor for SiriSuggestionsIntelligence.Device();
  v16 = MEMORY[0x1DA74D4B0](v14, v15);
  MEMORY[0x1DA74D370](v16);

  MEMORY[0x1DA74D370](0x657461657263202CLL, 0xEF203A6574614464);
  v17 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  sub_1DA3F7598(v1 + *(v17 + 20), v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v2) == 1)
  {
    v18 = 0xE300000000000000;
    v19 = 7104878;
  }

  else
  {
    (*(v5 + 32))(v9, v13, v2);
    v19 = sub_1DA421044();
    v18 = v20;
    (*(v5 + 8))(v9, v2);
  }

  MEMORY[0x1DA74D370](v19, v18);

  MEMORY[0x1DA74D370](125, 0xE100000000000000);
  return v22;
}

uint64_t sub_1DA3F7598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriSuggestionsIntelligence.AccountDetails.getAccountDetails()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA3F7628, 0, 0);
}

uint64_t sub_1DA3F7628()
{
  sub_1DA3A50BC(v0[3], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1DA3F768C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656369766564 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA3F7758(char a1)
{
  if (a1)
  {
    return 0x4464657461657263;
  }

  else
  {
    return 0x73656369766564;
  }
}

uint64_t sub_1DA3F77A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3F768C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3F77C8(uint64_t a1)
{
  v2 = sub_1DA3F7A24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3F7804(uint64_t a1)
{
  v2 = sub_1DA3F7A24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.AccountDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF8F8, &qword_1DA429070);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F7A24();
  sub_1DA422494();
  v19 = *v3;
  v18[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF900, &qword_1DA429078);
  sub_1DA3F7D7C(&qword_1EE100FE0, &qword_1EE101130);
  OUTLINED_FUNCTION_4_15();
  sub_1DA422334();
  if (!v2)
  {
    v14 = *(type metadata accessor for SiriSuggestionsIntelligence.AccountDetails() + 20);
    v18[6] = 1;
    sub_1DA4210B4();
    OUTLINED_FUNCTION_0_18();
    sub_1DA3F7E18(v15, v16);
    OUTLINED_FUNCTION_4_15();
    sub_1DA4222E4();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t sub_1DA3F7A24()
{
  result = qword_1EE1028D0;
  if (!qword_1EE1028D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1028D0);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.AccountDetails.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0) - 8) + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF908, &qword_1DA429080);
  v9 = OUTLINED_FUNCTION_3_1(v8);
  v30 = v10;
  v31 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3F7A24();
  sub_1DA422484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = v16;
  v21 = v19;
  v22 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF900, &qword_1DA429078);
  v33 = 0;
  sub_1DA3F7D7C(&qword_1EE102D28, &qword_1EE102D48);
  v23 = v31;
  OUTLINED_FUNCTION_3_17();
  sub_1DA4222B4();
  v27 = v34;
  *v21 = v34;
  sub_1DA4210B4();
  v32 = 1;
  OUTLINED_FUNCTION_0_18();
  sub_1DA3F7E18(v24, v25);
  OUTLINED_FUNCTION_3_17();
  sub_1DA422264();
  (*(v22 + 8))(v15, v23);
  sub_1DA3A6760(v7, v21 + *(v28 + 20));
  sub_1DA3A50BC(v21, v29);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DA3A5120(v21);
}

uint64_t sub_1DA3F7D7C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF900, &qword_1DA429078);
    sub_1DA3F7E18(a2, type metadata accessor for SiriSuggestionsIntelligence.Device);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA3F7E18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA3F7E94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3CC038;

  return SiriSuggestionsIntelligence.AccountDetails.getAccountDetails()(a1);
}

void sub_1DA3F7F54()
{
  sub_1DA3F8038(319, &qword_1EE102D30, type metadata accessor for SiriSuggestionsIntelligence.Device, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1DA3F8038(319, &qword_1EE102E10, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DA3F8038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *_s14AccountDetailsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3F817C()
{
  result = qword_1ECBAF910;
  if (!qword_1ECBAF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF910);
  }

  return result;
}

unint64_t sub_1DA3F81D4()
{
  result = qword_1EE102DF8;
  if (!qword_1EE102DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102DF8);
  }

  return result;
}

unint64_t sub_1DA3F822C()
{
  result = qword_1EE1028C8;
  if (!qword_1EE1028C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1028C8);
  }

  return result;
}

uint64_t sub_1DA3F82C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF718, &unk_1DA4293F0);
  OUTLINED_FUNCTION_18(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_171();
  v13 = sub_1DA4213B4();
  v14 = OUTLINED_FUNCTION_3_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_7();
  v21 = v20 - v19;
  if (__swift_getEnumTagSinglePayload(a1, 1, v13) == 1)
  {
    sub_1DA4039D4(a1);
    v22 = OUTLINED_FUNCTION_169();
    sub_1DA4037B4(v22, v23, v24);

    return sub_1DA4039D4(v4);
  }

  else
  {
    (*(v16 + 32))(v21, a1, v13);
    v26 = *v5;
    swift_isUniquelyReferenced_nonNull_native();
    v27 = *v5;
    sub_1DA3E2C54(v21, a2, a3);

    *v5 = v27;
  }

  return result;
}

uint64_t sub_1DA3F8448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1DA421374();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3F8514, 0, 0);
}

uint64_t sub_1DA3F8514()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  v8 = *(v4 + 16);
  v9 = OUTLINED_FUNCTION_43_0();
  v10(v9);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = (v2 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v4 + 32))(v13 + v11, v1, v3);
  v14 = (v13 + v12);
  *v14 = v6;
  v14[1] = v5;

  sub_1DA421364();

  OUTLINED_FUNCTION_4_0();

  return v15();
}

void sub_1DA3F8640(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1DA4211F4();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DA421374();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  if (a2)
  {
    v61 = a4;
    if (qword_1EE100EF8 != -1)
    {
      swift_once();
    }

    v24 = sub_1DA421A94();
    __swift_project_value_buffer(v24, static Logger.conversionCategory);
    v25 = v14[2];
    v25(v21, a3, v13);
    v25(v18, a3, v13);

    v26 = sub_1DA421A74();
    v27 = sub_1DA421F74();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v60 = a5;
      v29 = v28;
      v59 = swift_slowAlloc();
      v64 = v59;
      *v29 = 136315650;
      v58 = v26;
      sub_1DA421344();
      v30 = sub_1DA421194();
      v32 = v31;
      v33 = *(v62 + 8);
      v56 = v30;
      v57 = v33;
      LODWORD(v62) = v27;
      v34 = v63;
      v33(v12, v63);
      v35 = v14[1];
      v35(v21, v13);
      v36 = v35;
      v37 = sub_1DA3A5FE8(v56, v32, &v64);

      *(v29 + 4) = v37;
      *(v29 + 12) = 2080;
      sub_1DA421344();
      v38 = sub_1DA4211A4();
      v40 = v39;
      v57(v12, v34);
      v36(v18, v13);
      v41 = sub_1DA3A5FE8(v38, v40, &v64);

      *(v29 + 14) = v41;
      *(v29 + 22) = 2080;
      *(v29 + 24) = sub_1DA3A5FE8(v61, v60, &v64);
      v42 = v58;
      _os_log_impl(&dword_1DA39E000, v58, v62, "error when donating %s with type as %s with contextForOsLog - %s", v29, 0x20u);
      v43 = v59;
      swift_arrayDestroy();
      MEMORY[0x1DA74E430](v43, -1, -1);
      MEMORY[0x1DA74E430](v29, -1, -1);
    }

    else
    {

      v54 = v14[1];
      v54(v18, v13);
      v54(v21, v13);
    }
  }

  else
  {
    if (qword_1EE100EF8 != -1)
    {
      swift_once();
    }

    v44 = sub_1DA421A94();
    __swift_project_value_buffer(v44, static Logger.conversionCategory);
    (v14[2])(v23, a3, v13);

    v45 = sub_1DA421A74();
    v46 = sub_1DA421F64();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v60 = a5;
      v49 = v48;
      v64 = v48;
      *v47 = 136315394;
      sub_1DA421344();
      v50 = sub_1DA421194();
      v61 = a4;
      v52 = v51;
      (*(v62 + 8))(v12, v63);
      (v14[1])(v23, v13);
      v53 = sub_1DA3A5FE8(v50, v52, &v64);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_1DA3A5FE8(v61, v60, &v64);
      _os_log_impl(&dword_1DA39E000, v45, v46, "Logged succesfully - interaction %s with contextForOsLog - %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA74E430](v49, -1, -1);
      MEMORY[0x1DA74E430](v47, -1, -1);
    }

    else
    {

      (v14[1])(v23, v13);
    }
  }
}

void DefaultConversionLogger.__allocating_init()()
{
  OUTLINED_FUNCTION_178();
  v0 = _s45FeatureEngagementBiomePostConversionProcessorCMa();
  sub_1DA3C8D54();
  v2 = v1;
  v3 = sub_1DA421904();
  v5 = v4;
  v6 = type metadata accessor for EngagementProcessedBookMarkDate();
  v58 = swift_allocObject();
  *(v58 + 16) = v3;
  *(v58 + 24) = v5;
  v7 = sub_1DA421904();
  v9 = v8;
  v10 = type metadata accessor for DefaultDawnCInstallationDateGetter();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  v12 = sub_1DA421904();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  v57 = type metadata accessor for DefaultDateRetriever();
  v16 = swift_allocObject();
  v16[5] = v10;
  v16[6] = &protocol witness table for DefaultDawnCInstallationDateGetter;
  v16[2] = v11;
  v16[10] = v6;
  v16[11] = &protocol witness table for EngagementProcessedBookMarkDate;
  v16[7] = v15;
  v16[12] = 0x413BAF8000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF918, &qword_1DA429260);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DA429250;
  *(v17 + 56) = v0;
  *(v17 + 64) = &off_1F55E9698;
  *(v17 + 32) = v2;
  v18 = type metadata accessor for SelfEmitter();
  v65 = v18;
  v66 = &off_1F55EC358;
  *&v64 = swift_allocObject();
  v19 = type metadata accessor for SELFConversionProcessor();
  v20 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v64, v18);
  OUTLINED_FUNCTION_6_1();
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_7();
  v26 = (v25 - v24);
  (*(v27 + 16))(v25 - v24);
  v28 = *v26;
  v20[4].i64[0] = v18;
  v20[4].i64[1] = &off_1F55EC358;
  v20[2].i64[1] = v28;
  v20[1] = vdupq_n_s64(0x413BAF8000000000uLL);
  v20[2].i8[0] = 1;

  __swift_destroy_boxed_opaque_existential_0(&v64);
  *(v17 + 96) = v19;
  *(v17 + 104) = &off_1F55EC330;
  *(v17 + 72) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF920, &qword_1DA429268);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DA4238F0;
  *(v29 + 56) = v0;
  *(v29 + 64) = &off_1F55E9688;
  *(v29 + 32) = v2;
  v30 = type metadata accessor for DefaultSiriRemembersDonator();
  v31 = swift_allocObject();
  v32 = sub_1DA421924();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_31_2();

  v35 = sub_1DA421914();
  v65 = v32;
  v66 = MEMORY[0x1E69D3190];
  *&v64 = v35;
  v36 = type metadata accessor for DefaultConversionCoreAnalyticsLogger();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  sub_1DA3B2454(&v64, &v61);
  v39 = sub_1DA4218A4();
  __swift_destroy_boxed_opaque_existential_0(&v64);
  v65 = v6;
  v66 = &protocol witness table for EngagementProcessedBookMarkDate;
  *&v64 = v58;
  v62 = v57;
  v63 = &protocol witness table for DefaultDateRetriever;
  v60[4] = &off_1F55EB298;
  *&v61 = v16;
  v60[3] = v30;
  v60[0] = v31;
  v59[3] = v36;
  v59[4] = &off_1F55E8E90;
  v59[0] = v39;
  type metadata accessor for DefaultConversionLogger();
  v40 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v60, v30);
  OUTLINED_FUNCTION_6_1();
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_4_7();
  v46 = (v45 - v44);
  (*(v47 + 16))(v45 - v44);
  __swift_mutable_project_boxed_opaque_existential_1(v59, v36);
  OUTLINED_FUNCTION_6_1();
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_4_7();
  v53 = (v52 - v51);
  (*(v54 + 16))(v52 - v51);
  v55 = *v46;
  v56 = *v53;
  v40[17] = v30;
  v40[18] = &off_1F55EB298;
  v40[14] = v55;
  v40[22] = v36;
  v40[23] = &off_1F55E8E90;

  v40[19] = v56;
  v40[12] = v17;
  v40[13] = v29;
  sub_1DA3A1FF8(&v64, (v40 + 2));
  sub_1DA3A1FF8(&v61, (v40 + 7));
  __swift_destroy_boxed_opaque_existential_0(v59);
  __swift_destroy_boxed_opaque_existential_0(v60);
  OUTLINED_FUNCTION_181();
}