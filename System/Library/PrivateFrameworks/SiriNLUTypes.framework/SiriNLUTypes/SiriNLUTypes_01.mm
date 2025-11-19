size_t sub_1C878F30C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_105(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C878F400()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

size_t sub_1C878F458(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_1C878F30C(v14, v13, a5, a6, a7);
  v16 = *(*(a8(0) - 8) + 80);
  OUTLINED_FUNCTION_32();
  if (v11)
  {
    sub_1C8790ED4(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

uint64_t sub_1C878F564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_13()
{
  v0 = type metadata accessor for Siri_Nlu_External_Cdm_NluResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_16()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

unint64_t sub_1C878F6F0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0) + 20);
  if (qword_1EC2B4A68 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2B4A70;
}

uint64_t sub_1C878F828(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD48, &qword_1C8C0C1E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v35 - v8;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 60) = 1;
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  v36 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  v10 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v35 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  v38 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  v12 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  *v13 = 0;
  v13[1] = 0;
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v15;
  swift_beginAccess();
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v17;
  *(v1 + 40) = v16;
  swift_beginAccess();
  LODWORD(v17) = *(a1 + 48);
  v18 = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 48) = v17;
  *(v1 + 52) = v18;
  swift_beginAccess();
  v19 = *(a1 + 56);
  LOBYTE(v17) = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 56) = v19;
  *(v1 + 60) = v17;
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  swift_beginAccess();
  v21 = v37;
  sub_1C87867A0(a1 + v20, v37, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v22 = v36;
  swift_beginAccess();

  sub_1C878656C(v21, v1 + v22, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = v35;
  swift_beginAccess();
  v26 = *(v1 + v25);
  *(v1 + v25) = v24;

  v27 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  swift_beginAccess();
  v28 = v39;
  sub_1C87867A0(a1 + v27, v39, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  v29 = v38;
  swift_beginAccess();
  sub_1C878656C(v28, v1 + v29, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  swift_endAccess();
  v30 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];

  swift_beginAccess();
  v33 = v13[1];
  *v13 = v32;
  v13[1] = v31;

  return v1;
}

uint64_t sub_1C878FC70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17();
  v8 = sub_1C8BD49FC();
  v9 = OUTLINED_FUNCTION_18_0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD50, &qword_1C8C0C1F0);
    v14 = OUTLINED_FUNCTION_18_0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD58, &qword_1C8C0C1F8);
      v18 = OUTLINED_FUNCTION_18_0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD60, &qword_1C8C0C200);
        v21 = OUTLINED_FUNCTION_18_0(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD68, &qword_1C8C0C208);
          v24 = OUTLINED_FUNCTION_18_0(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[8];
          }

          else
          {
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD70, &qword_1C8C0C210);
            v16 = a4[9];
          }
        }
      }
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void *sub_1C878FE5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_65_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_65_5()
{
  v2 = *(v0 - 144);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_65_8()
{
}

uint64_t OUTLINED_FUNCTION_65_9(uint64_t a1)
{
  result = type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1C878FFC8()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C8793380();
        break;
      case 2:
        sub_1C8793404();
        break;
      case 3:
        sub_1C89FB184();
        break;
      case 4:
        sub_1C89FB208();
        break;
      case 5:
        sub_1C89FB28C();
        break;
      case 6:
        sub_1C879348C();
        break;
      case 7:
        sub_1C89FB368();
        break;
      case 8:
        sub_1C87A1DB8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8790158()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

unint64_t sub_1C87901B0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C8BD52FC();

  return sub_1C878F6F0(a1, v4);
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return sub_1C87F97EC();
}

uint64_t OUTLINED_FUNCTION_44_3()
{
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return sub_1C887D3FC();
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{

  return sub_1C8884444(v3, v4 + v5, a3);
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return sub_1C888A4E0(v0, v1 + v2);
}

uint64_t OUTLINED_FUNCTION_44_10@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1C87867A0(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_44_11(uint64_t a1)
{
  *(v3 - 96) = a1;
  *(v3 - 88) = v1;
  v5 = *(a1 + 20);
  v6 = *(v2 + 56);

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_1C87867A0(v0 + v4, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest();
}

uint64_t OUTLINED_FUNCTION_22_8(uint64_t a1)
{

  return sub_1C87AB9AC(a1, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_22_11()
{
  result = type metadata accessor for Siri_Common_BoolValue(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_22_14(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 4) = 1;
}

uint64_t OUTLINED_FUNCTION_33_2()
{
  result = type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return sub_1C8BD4E2C();
}

uint64_t OUTLINED_FUNCTION_33_10()
{
  result = v0;
  v3 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_3()
{
  v2 = *(v0 - 264);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t a1)
{

  return sub_1C87867A0(a1, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_51_5(uint64_t a1)
{
  *(v3 - 112) = a1;

  return sub_1C87A4F90(v2, 255, v1);
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  sub_1C87E4490(v5, v4, v1);
  sub_1C87E4490(v0, v3, v2);
  return v5;
}

uint64_t OUTLINED_FUNCTION_179()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_47_3(uint64_t result)
{
  *(v1 + 16) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_4()
{
  result = *(v0 - 304);
  v2 = *(v0 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_47_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_8@<X0>(uint64_t a1@<X8>)
{

  return sub_1C87867A0(v1 + a1, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_47_9()
{
  v2 = *(v0 - 336);
}

uint64_t OUTLINED_FUNCTION_135_1()
{
  v2 = *(v0 - 72);

  return sub_1C8BD4E2C();
}

uint64_t OUTLINED_FUNCTION_135_2()
{

  return sub_1C8BD515C();
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return sub_1C8BD4AFC();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return sub_1C8BD49DC();
}

uint64_t OUTLINED_FUNCTION_81_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  v3 = v1 + *(v2 + 20);

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_81_4(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*(*a1 + 72) + *(*a1 + 84));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C87909B4(uint64_t (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = a1(v9);
  OUTLINED_FUNCTION_13(*(v10 + 36));
  sub_1C8778810();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_37_4();
    return v15(v14);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_89_0()
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_89_3()
{

  return sub_1C8A1B55C();
}

uint64_t OUTLINED_FUNCTION_89_4(uint64_t result)
{
  v2 = (v1 + *(result + 20));
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + *(result + 24));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return sub_1C87E6710(v0, type metadata accessor for Siri_Nlu_External_UserDialogAct);
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for Siri_Nlu_External_RequestID();
}

uint64_t OUTLINED_FUNCTION_6_13()
{
  v4 = v1 + v3[5];
  *v4 = 0;
  *(v4 + 8) = v0;
  v5 = v1 + v3[6];
  *v5 = 0;
  *(v5 + 8) = v0;
  *(v1 + v3[7]) = 6;
  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_6_15()
{
  result = type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_6_17()
{
  result = type metadata accessor for Siri_Nlu_External_Cdm_NluResponse(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t result)
{
  v2 = v1 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return sub_1C87F97EC();
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return sub_1C887D3FC();
}

uint64_t OUTLINED_FUNCTION_39_5()
{

  return sub_1C8BD4E2C();
}

uint64_t OUTLINED_FUNCTION_39_6()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 - 176));
  v1 = *(v0 - 336);
}

uint64_t sub_1C8790ED4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_12_0();
  if (v9 < v8 || (v10 = (a4)(0), result = OUTLINED_FUNCTION_21(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    v14 = OUTLINED_FUNCTION_57_5();

    return MEMORY[0x1EEE6BD00](v14);
  }

  else if (a3 != v5)
  {
    v13 = OUTLINED_FUNCTION_57_5();

    return MEMORY[0x1EEE6BCF8](v13);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_index_135Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v4);
  if (*(v5 + 84) == a3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_248_0();
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void sub_1C8791094()
{
  v2 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_164_1(*(v0 + 20));
  }
}

uint64_t OUTLINED_FUNCTION_162_0()
{
  result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext(0);
  v1 = *(result + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_2()
{
  result = type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  v1 = *(result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_8()
{
  result = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  v1 = *(result + 32);
  return result;
}

float OUTLINED_FUNCTION_0_6@<S0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = *v2;
  v4 = *(v2 + 4);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_15@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_431()
{
  sub_1C87A8FA8(v1, v0);
  sub_1C87A8FA8(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C878656C(v4, v5 + v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_116_2(uint64_t a1)
{
  v3 = *(a1 + 20);
  *(v2 + 40) = v3;
  return v1 + v3;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.utteranceRule.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_170();
  v10 = *(type metadata accessor for Siri_Nlu_Internal_TurnInputRule(v9) + 28);
  OUTLINED_FUNCTION_232();
  sub_1C87867A0(v11, v12, v13, &qword_1C8BE6CD8);
  v14 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(0);
  OUTLINED_FUNCTION_65(v1);
  if (v15)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v16 = a1 + v14[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = (a1 + v14[6]);
    *v17 = 0;
    v17[1] = 0;
    *(a1 + v14[7]) = 3;
    v18 = v14[8];
    type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    result = OUTLINED_FUNCTION_65(v1);
    if (!v15)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6020, &qword_1C8BE6CD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_13();
    return OUTLINED_FUNCTION_227_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.caseInsensitive.getter()
{
  OUTLINED_FUNCTION_128_4();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_114_2();
  return v3 & 1;
}

uint64_t sub_1C8791864()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_123_0(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 20);

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0);
}

uint64_t OUTLINED_FUNCTION_9_18()
{

  return type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest();
}

uint64_t OUTLINED_FUNCTION_164_2(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_68_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_TokenChain()
{
  result = qword_1EC2B4B20;
  if (!qword_1EC2B4B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8791E24();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8791E88();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A281E4();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C878BF74();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8791E88()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0) + 28);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C8776AE8(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_TokenChain.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v3 = a1 + v2[5];
  result = _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = (a1 + v2[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v2[7]);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C8791FFC()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 24)))
  {
    OUTLINED_FUNCTION_20(v3);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.compareOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v9);
  v11 = OUTLINED_FUNCTION_13(*(v10 + 32));
  OUTLINED_FUNCTION_167_3(v11, v12);
  v13 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
  OUTLINED_FUNCTION_65(v1);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_206_2(v13[5]);
    *(a1 + v13[6]) = v15;
    *(a1 + v13[7]) = v15;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v14)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BEBA8, &qword_1C8C10AD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_11();
    OUTLINED_FUNCTION_121();
    return sub_1C8791864();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  v3 = a1 + v2[5];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v2[6]);
  v4 = v2[7];
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[8];
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void *sub_1C8792204(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8792330(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t Siri_Nlu_Internal_TokenChain.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C879B104();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8792284();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8791F98();
        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_213_1(uint64_t result)
{
  v2 = *(result + 20);
  v3 = *(v1 + 56);
  return result;
}

uint64_t sub_1C87924BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__systemDialogActGroup;
  v12 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities;
  v14 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities) = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks) = v14;
  v50 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks) = v14;
  v16 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs) = v14;
  v17 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext;
  v51 = v16;
  v52 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext;
  v18 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  *v19 = 0;
  v19[1] = 0;
  v53 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit) = 2;
  v20 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  v55 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride;
  v49[1] = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride;
  v22 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v56 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra) = 2;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities;
  swift_beginAccess();
  v24 = *(a1 + v23);
  swift_beginAccess();
  v25 = *(v1 + v13);
  *(v1 + v13) = v24;

  v26 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks;
  swift_beginAccess();
  v27 = *(a1 + v26);
  swift_beginAccess();
  v28 = *(v1 + v15);
  *(v1 + v15) = v27;

  v29 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks;
  swift_beginAccess();
  v30 = *(a1 + v29);
  v31 = v50;
  swift_beginAccess();
  v32 = *(v1 + v31);
  *(v1 + v31) = v30;

  v33 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs;
  swift_beginAccess();
  v34 = *(a1 + v33);
  v35 = v51;
  swift_beginAccess();
  v36 = *(v1 + v35);
  *(v1 + v35) = v34;

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v37 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];
  swift_beginAccess();
  v40 = v19[1];
  *v19 = v39;
  v19[1] = v38;

  v41 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v53;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v55;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v43;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v46 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra;
  swift_beginAccess();
  LOBYTE(v46) = *(a1 + v46);

  v47 = v56;
  swift_beginAccess();
  *(v1 + v47) = v46;
  return v1;
}

uint64_t sub_1C8792ADC()
{
  v4 = OUTLINED_FUNCTION_64();
  result = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 2;
  }

  return result;
}

uint64_t sub_1C8792B78(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_226();

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }

  else
  {
    v12 = *(v3 + *(a3 + 20));
    if (v12 <= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(v3 + *(a3 + 20));
    }

    v14 = v13 - 2;
    if (v12 >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C8792C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C88AC63C();
        break;
      case 2:
        sub_1C88AC718();
        break;
      case 3:
        sub_1C88AC7F4();
        break;
      case 4:
        sub_1C88AC8D0();
        break;
      case 5:
        sub_1C8792E48();
        break;
      case 6:
        sub_1C88AC9AC();
        break;
      case 7:
        sub_1C8793B58();
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
        goto LABEL_14;
      case 9:
        sub_1C88ACA88();
        break;
      case 10:
        sub_1C88ACB14();
        break;
      case 11:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra;
LABEL_14:
        sub_1C88ACBF0(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8792E48()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_AsrHypothesis(0);
  sub_1C8776788(&qword_1EDACC330, type metadata accessor for Siri_Nlu_External_AsrHypothesis);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

void Siri_Nlu_External_AsrHypothesis.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(0);
  v4 = a1 + v3[6];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = v3[7];
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_18_2(v3[8]);
  OUTLINED_FUNCTION_38(v3[9]);
  *(v10 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return sub_1C87F97EC();
}

uint64_t **OUTLINED_FUNCTION_154(uint64_t **result)
{
  v1 = *(*result + 10);
  v2 = (*result)[3];
  v3 = (*result)[4];
  v4 = (*result)[1];
  v5 = (*result)[2];
  v6 = **result;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_6()
{

  return sub_1C887D3FC();
}

uint64_t OUTLINED_FUNCTION_38_9()
{

  return sub_1C88DD078();
}

uint64_t OUTLINED_FUNCTION_447(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_38_11()
{
  v2 = *(v0 - 88);
  v3 = *(v0 - 72);

  return sub_1C8BD4E2C();
}

uint64_t OUTLINED_FUNCTION_38_12@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v6 = v1[1];
  v7 = (v2 + 32 * a1);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  *(v3 - 304) = *v1;
  *(v3 - 296) = v6;

  return sub_1C87A8FBC(v5, v6);
}

double sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(sirinluexternal::SystemDialogActGroup *this)
{
  *this = &unk_1F4878290;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4878290;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void Siri_Nlu_External_AsrHypothesis.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C87932CC();
        break;
      case 2:
        OUTLINED_FUNCTION_27_5();
        sub_1C878C33C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8797474();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C87A33F8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87932CC()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_AsrHypothesis(0) + 28);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8793380()
{
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t sub_1C8793404()
{
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t sub_1C879348C()
{
  swift_beginAccess();
  sub_1C8793528();
  sub_1C8BD4B1C();
  return swift_endAccess();
}

unint64_t sub_1C8793528()
{
  result = qword_1EC2B4AA8;
  if (!qword_1EC2B4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4AA8);
  }

  return result;
}

void Siri_Nlu_External_UUID.init()(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_2_1(a1 + *(v2 + 20));
  v4 = a1 + *(v3 + 24);
  *v4 = 0;
  *(v4 + 8) = v5;
  *(a1 + *(v3 + 28)) = 6;
}

uint64_t OUTLINED_FUNCTION_2_6()
{
  result = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

double OUTLINED_FUNCTION_2_12@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_15()
{
  result = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  __swift_storeEnumTagSinglePayload(v5 + *(v7 + 24), 1, 1, *(v4 + 408));
  return __swift_getEnumTagSinglePayload(v6, 1, v7);
}

uint64_t OUTLINED_FUNCTION_535@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1] >> 60;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_22()
{
  result = type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserRequest(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_2_24()
{
  result = type metadata accessor for Siri_Nlu_External_MultilingualVariant(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_257_0()
{

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_80_2()
{

  return type metadata accessor for Siri_Nlu_External_UUID();
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_85_3(uint64_t a1)
{

  return sub_1C8778ED8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_262()
{

  return sub_1C8778810();
}

void OUTLINED_FUNCTION_190_0(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_36_5()
{

  return sub_1C88DD078();
}

uint64_t OUTLINED_FUNCTION_36_8()
{
  result = type metadata accessor for Siri_Nlu_Internal_ParseOverride(0);
  v1 = *(result + 20);
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t sub_1C8793B58()
{
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

void *sub_1C8793BF8(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = OUTLINED_FUNCTION_18_0(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
      v14 = OUTLINED_FUNCTION_18_0(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
        v12 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C8793D28(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_68_0(*a1);
  }

  v7 = sub_1C8BD49FC();
  v8 = OUTLINED_FUNCTION_18_0(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
    v13 = OUTLINED_FUNCTION_18_0(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[7];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
      v11 = a3[8];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void sirinluinternalitfm::ITFMParserResponse::~ITFMParserResponse(sirinluinternalitfm::ITFMParserResponse *this)
{
  *this = &unk_1F4878DC8;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

{
  sirinluinternalitfm::ITFMParserResponse::~ITFMParserResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluinternalitfm::ITFMParserResponse::ITFMParserResponse(uint64_t this, const sirinluinternalitfm::ITFMParserResponse *a2)
{
  *this = &unk_1F4878DC8;
  *(this + 8) = 0u;
  *(this + 48) = 0;
  *(this + 24) = 0u;
  if ((*(a2 + 48) & 2) != 0)
  {
    v3 = *(a2 + 44);
    *(this + 48) = 2;
    *(this + 44) = v3;
    v2 = 3;
    if ((*(a2 + 48) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 48))
  {
LABEL_5:
    v4 = *(a2 + 10);
    *(this + 48) = v2;
    *(this + 40) = v4;
  }

LABEL_6:
  if (*(a2 + 4))
  {
    operator new();
  }

  v5 = *(a2 + 1);
  if (v5 != *(a2 + 2))
  {
    v6 = *v5;
    operator new();
  }

  return this;
}

void sirinluinternal::SubwordToken::~SubwordToken(sirinluinternal::SubwordToken *this)
{
  v2 = *(this + 1);
  *this = &unk_1F4877ED0;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

{
  sirinluinternal::SubwordToken::~SubwordToken(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluinternal::SubwordTokenChain::SubwordTokenChain(uint64_t this, const sirinluinternal::SubwordTokenChain *a2)
{
  *this = &unk_1F4875B60;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sirinluexternal::UUID::readFrom(sirinluexternal::UUID *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_87;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 28) |= 4u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v51 = 0;
          v52 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v39)
            {
              LODWORD(v43) = 0;
              *(a2 + 24) = 1;
              goto LABEL_81;
            }

            v53 = v39 + 1;
            v54 = *(v40 + v39);
            *(a2 + 1) = v53;
            v43 |= (v54 & 0x7F) << v51;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v39 = v53;
            v14 = v52++ > 8;
            if (v14)
            {
              LODWORD(v43) = 0;
              goto LABEL_80;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v43) = 0;
          }

LABEL_80:
          v3 = v53;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = (v40 + v39);
          v45 = v39 + 1;
          while (1)
          {
            v3 = v45;
            *(a2 + 1) = v45;
            v46 = *v44++;
            v43 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
              LODWORD(v43) = 0;
              break;
            }
          }
        }

LABEL_81:
        *(this + 6) = v43;
      }

      else if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v31)
            {
              v35 = 0;
              *(a2 + 24) = 1;
              goto LABEL_77;
            }

            v49 = v31 + 1;
            v50 = *(v32 + v31);
            *(a2 + 1) = v49;
            v35 |= (v50 & 0x7F) << v47;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v31 = v49;
            v14 = v48++ > 8;
            if (v14)
            {
              v35 = 0;
              goto LABEL_76;
            }
          }

          if (*(a2 + 24))
          {
            v35 = 0;
          }

LABEL_76:
          v3 = v49;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v3 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              v35 = 0;
              break;
            }
          }
        }

LABEL_77:
        *(this + 2) = v35;
      }

      else if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v55 = 0;
          v56 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v23)
            {
              v27 = 0;
              *(a2 + 24) = 1;
              goto LABEL_85;
            }

            v57 = v23 + 1;
            v58 = *(v24 + v23);
            *(a2 + 1) = v57;
            v27 |= (v58 & 0x7F) << v55;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v23 = v57;
            v14 = v56++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_84;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_84:
          v3 = v57;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              v27 = 0;
              break;
            }
          }
        }

LABEL_85:
        *(this + 1) = v27;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v59 = 0;
          return v59 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_87;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_87:
  v59 = v4 ^ 1;
  return v59 & 1;
}

uint64_t sirinluinternalnlv4_parser::Tokenisation::readFrom(sirinluinternalnlv4_parser::Tokenisation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) == 3)
      {
        operator new();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sirinluinternal::TokenChain::readFrom(sirinluinternal::TokenChain *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) == 3)
      {
        PB::PtrVector<sirinluinternal::Token>::emplace_back<>();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::readFrom(sirinluinternalitfm::ITFMParserRequest *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_40;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) <= 3)
      {
        switch(v21)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
            operator new();
        }
      }

      else if (v21 > 5)
      {
        if (v21 == 6)
        {
          operator new();
        }

        if (v21 == 7)
        {
          operator new();
        }
      }

      else
      {
        if (v21 == 4)
        {
          PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
        }

        if (v21 == 5)
        {
          operator new();
        }
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_40:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sirinluinternal::Token::readFrom(sirinluinternal::Token *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = (this + 40);
    v8 = (this + 16);
    do
    {
      v9 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v19 = (v9 + v2);
        v20 = v3 >= v2;
        v21 = v3 - v2;
        if (!v20)
        {
          v21 = 0;
        }

        v22 = v2 + 1;
        while (v21)
        {
          v23 = *v19;
          *(a2 + 1) = v22;
          v12 |= (v23 & 0x7F) << v17;
          if ((v23 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          v17 += 7;
          ++v19;
          --v21;
          ++v22;
          v16 = v18++ > 8;
          if (v16)
          {
            goto LABEL_18;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = (v9 + v2);
      v14 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v14;
        v15 = *v13++;
        v12 |= (v15 & 0x7F) << v10;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        ++v14;
        v16 = v11++ > 8;
        if (v16)
        {
          goto LABEL_18;
        }
      }

LABEL_22:
      if ((v12 & 7) == 4)
      {
        v4 = 0;
        break;
      }

      v24 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v24 <= 7)
        {
          if (v24 == 6)
          {
            v50 = *(this + 3);
            v51 = *(this + 4);
            if (v50 >= v51)
            {
              v87 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *v8) >> 3);
              v88 = v87 + 1;
              if (v87 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_152;
              }

              v89 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *v8) >> 3);
              if (2 * v89 > v88)
              {
                v88 = 2 * v89;
              }

              if (v89 >= 0x555555555555555)
              {
                v90 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v90 = v88;
              }

              v121.__end_cap_.__value_ = v8;
              if (v90)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v90);
              }

              v107 = 24 * v87;
              *v107 = 0;
              *(v107 + 8) = 0;
              *(v107 + 16) = 0;
              v52 = 24 * v87 + 24;
              v108 = *(this + 2);
              v109 = *(this + 3) - v108;
              v110 = 24 * v87 - v109;
              memcpy((v107 - v109), v108, v109);
              v111 = *(this + 2);
              *(this + 2) = v110;
              *(this + 3) = v52;
              v112 = *(this + 4);
              *(this + 4) = 0;
              v121.__end_ = v111;
              v121.__end_cap_.__value_ = v112;
              v121.__first_ = v111;
              v121.__begin_ = v111;
              std::__split_buffer<std::string>::~__split_buffer(&v121);
            }

            else
            {
              *v50 = 0;
              v50[1] = 0;
              v52 = (v50 + 3);
              v50[2] = 0;
            }

            *(this + 3) = v52;
LABEL_130:
            PB::Reader::read();
            goto LABEL_19;
          }

          if (v24 == 7)
          {
            *(this + 92) |= 8u;
            v42 = *(a2 + 1);
            v41 = *(a2 + 2);
            v43 = *a2;
            if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
            {
              v81 = 0;
              v82 = 0;
              v46 = 0;
              v83 = (v43 + v42);
              v20 = v41 >= v42;
              v84 = v41 - v42;
              if (!v20)
              {
                v84 = 0;
              }

              v85 = v42 + 1;
              while (1)
              {
                if (!v84)
                {
                  LODWORD(v46) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_140;
                }

                v86 = *v83;
                *(a2 + 1) = v85;
                v46 |= (v86 & 0x7F) << v81;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v81 += 7;
                ++v83;
                --v84;
                ++v85;
                v16 = v82++ > 8;
                if (v16)
                {
LABEL_89:
                  LODWORD(v46) = 0;
                  goto LABEL_140;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v46) = 0;
              }
            }

            else
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
              v47 = (v43 + v42);
              v48 = v42 + 1;
              while (1)
              {
                *(a2 + 1) = v48;
                v49 = *v47++;
                v46 |= (v49 & 0x7F) << v44;
                if ((v49 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                ++v48;
                v16 = v45++ > 8;
                if (v16)
                {
                  goto LABEL_89;
                }
              }
            }

LABEL_140:
            *(this + 21) = v46;
            goto LABEL_19;
          }
        }

        else
        {
          switch(v24)
          {
            case 8:
              *(this + 92) |= 4u;
              v63 = *(a2 + 1);
              v62 = *(a2 + 2);
              v64 = *a2;
              if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v62)
              {
                v97 = 0;
                v98 = 0;
                v67 = 0;
                v99 = (v64 + v63);
                v20 = v62 >= v63;
                v100 = v62 - v63;
                if (!v20)
                {
                  v100 = 0;
                }

                v101 = v63 + 1;
                while (1)
                {
                  if (!v100)
                  {
                    LODWORD(v67) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_146;
                  }

                  v102 = *v99;
                  *(a2 + 1) = v101;
                  v67 |= (v102 & 0x7F) << v97;
                  if ((v102 & 0x80) == 0)
                  {
                    break;
                  }

                  v97 += 7;
                  ++v99;
                  --v100;
                  ++v101;
                  v16 = v98++ > 8;
                  if (v16)
                  {
LABEL_113:
                    LODWORD(v67) = 0;
                    goto LABEL_146;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v67) = 0;
                }
              }

              else
              {
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v68 = (v64 + v63);
                v69 = v63 + 1;
                while (1)
                {
                  *(a2 + 1) = v69;
                  v70 = *v68++;
                  v67 |= (v70 & 0x7F) << v65;
                  if ((v70 & 0x80) == 0)
                  {
                    break;
                  }

                  v65 += 7;
                  ++v69;
                  v16 = v66++ > 8;
                  if (v16)
                  {
                    goto LABEL_113;
                  }
                }
              }

LABEL_146:
              *(this + 20) = v67;
              goto LABEL_19;
            case 9:
              operator new();
            case 0xA:
              v29 = *(this + 6);
              v30 = *(this + 7);
              if (v29 >= v30)
              {
                v103 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *v7) >> 3);
                v104 = v103 + 1;
                if (v103 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
LABEL_152:
                  std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
                }

                v105 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v7) >> 3);
                if (2 * v105 > v104)
                {
                  v104 = 2 * v105;
                }

                if (v105 >= 0x555555555555555)
                {
                  v106 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v106 = v104;
                }

                v121.__end_cap_.__value_ = v7;
                if (v106)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v106);
                }

                v113 = 24 * v103;
                *v113 = 0;
                *(v113 + 8) = 0;
                *(v113 + 16) = 0;
                v31 = 24 * v103 + 24;
                v114 = *(this + 5);
                v115 = *(this + 6) - v114;
                v116 = 24 * v103 - v115;
                memcpy((v113 - v115), v114, v115);
                v117 = *(this + 5);
                *(this + 5) = v116;
                *(this + 6) = v31;
                v118 = *(this + 7);
                *(this + 7) = 0;
                v121.__end_ = v117;
                v121.__end_cap_.__value_ = v118;
                v121.__first_ = v117;
                v121.__begin_ = v117;
                std::__split_buffer<std::string>::~__split_buffer(&v121);
              }

              else
              {
                *v29 = 0;
                v29[1] = 0;
                v31 = (v29 + 3);
                v29[2] = 0;
              }

              *(this + 6) = v31;
              goto LABEL_130;
          }
        }
      }

      else if (v24 <= 2)
      {
        if (v24 == 1)
        {
          operator new();
        }

        if (v24 == 2)
        {
          *(this + 92) |= 1u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v75 = 0;
            v76 = 0;
            v37 = 0;
            v77 = (v34 + v33);
            v20 = v32 >= v33;
            v78 = v32 - v33;
            if (!v20)
            {
              v78 = 0;
            }

            v79 = v33 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v37) = 0;
                *(a2 + 24) = 1;
                goto LABEL_137;
              }

              v80 = *v77;
              *(a2 + 1) = v79;
              v37 |= (v80 & 0x7F) << v75;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              ++v77;
              --v78;
              ++v79;
              v16 = v76++ > 8;
              if (v16)
              {
LABEL_81:
                LODWORD(v37) = 0;
                goto LABEL_137;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v37) = 0;
            }
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            while (1)
            {
              *(a2 + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v16 = v36++ > 8;
              if (v16)
              {
                goto LABEL_81;
              }
            }
          }

LABEL_137:
          *(this + 18) = v37;
          goto LABEL_19;
        }
      }

      else
      {
        switch(v24)
        {
          case 3:
            *(this + 92) |= 2u;
            v54 = *(a2 + 1);
            v53 = *(a2 + 2);
            v55 = *a2;
            if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v53)
            {
              v91 = 0;
              v92 = 0;
              v58 = 0;
              v93 = (v55 + v54);
              v20 = v53 >= v54;
              v94 = v53 - v54;
              if (!v20)
              {
                v94 = 0;
              }

              v95 = v54 + 1;
              while (1)
              {
                if (!v94)
                {
                  LODWORD(v58) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_143;
                }

                v96 = *v93;
                *(a2 + 1) = v95;
                v58 |= (v96 & 0x7F) << v91;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v91 += 7;
                ++v93;
                --v94;
                ++v95;
                v16 = v92++ > 8;
                if (v16)
                {
LABEL_105:
                  LODWORD(v58) = 0;
                  goto LABEL_143;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v58) = 0;
              }
            }

            else
            {
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = (v55 + v54);
              v60 = v54 + 1;
              while (1)
              {
                *(a2 + 1) = v60;
                v61 = *v59++;
                v58 |= (v61 & 0x7F) << v56;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                ++v60;
                v16 = v57++ > 8;
                if (v16)
                {
                  goto LABEL_105;
                }
              }
            }

LABEL_143:
            *(this + 19) = v58;
            goto LABEL_19;
          case 4:
            *(this + 92) |= 0x10u;
            v71 = *(a2 + 1);
            if (v71 >= *(a2 + 2))
            {
              v74 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v72 = v71 + 1;
              v73 = *(*a2 + v71);
              *(a2 + 1) = v72;
              v74 = v73 != 0;
            }

            *(this + 88) = v74;
            goto LABEL_19;
          case 5:
            *(this + 92) |= 0x20u;
            v25 = *(a2 + 1);
            if (v25 >= *(a2 + 2))
            {
              v28 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v26 = v25 + 1;
              v27 = *(*a2 + v25);
              *(a2 + 1) = v26;
              v28 = v27 != 0;
            }

            *(this + 89) = v28;
            goto LABEL_19;
        }
      }

LABEL_18:
      if (!PB::Reader::skip(a2))
      {
        v119 = 0;
        return v119 & 1;
      }

LABEL_19:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v119 = v4 ^ 1;
  return v119 & 1;
}

uint64_t sirinluexternal::SystemDialogActGroup::readFrom(sirinluexternal::SystemDialogActGroup *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_29;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sirinluexternal::TurnContext::readFrom(sirinluexternal::TurnContext *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_29;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sirinluexternal::NLContext::readFrom(sirinluexternal::NLContext *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) <= 2)
      {
        if (v21 == 1)
        {
          operator new();
        }

        if (v21 == 2)
        {
          PB::PtrVector<sirinluexternal::Task>::emplace_back<>();
        }
      }

      else
      {
        switch(v21)
        {
          case 3:
            PB::PtrVector<sirinluexternal::Task>::emplace_back<>();
          case 4:
            PB::PtrVector<sirinluexternal::EntityCandidate>::emplace_back<>();
          case 5:
            PB::PtrVector<sirinluexternal::SystemDialogAct>::emplace_back<>();
        }
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_35:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sirinluexternal::RequestID::readFrom(sirinluexternal::RequestID *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          operator new();
        case 2:
          operator new();
        case 3:
          operator new();
      }
    }

    else if (v22 > 10)
    {
      if (v22 == 11)
      {
        operator new();
      }

      if (v22 == 12)
      {
        *(this + 60) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v34 = (v25 + v24);
          v18 = v23 >= v24;
          v35 = v23 - v24;
          if (!v18)
          {
            v35 = 0;
          }

          v36 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_56;
            }

            v37 = *v34;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v34;
            --v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_52:
              LODWORD(v28) = 0;
              goto LABEL_56;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_56:
        *(this + 14) = v28;
        goto LABEL_41;
      }
    }

    else
    {
      if (v22 == 4)
      {
        operator new();
      }

      if (v22 == 5)
      {
        operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v39 = 0;
      return v39 & 1;
    }

LABEL_41:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.init()()
{
  v1 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(v1);
  OUTLINED_FUNCTION_702(v2);
  OUTLINED_FUNCTION_18_2(*(v0 + 24));
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C878301C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8782FD4();
    }
  }
}

uint64_t sub_1C8796AD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  while (1)
  {
    OUTLINED_FUNCTION_516();
    result = sub_1C8BD4AFC();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v11 = OUTLINED_FUNCTION_251_0();
      a5(v11);
    }

    else if (result == 1)
    {
      v10 = OUTLINED_FUNCTION_251_0();
      a4(v10);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_216_1(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t Siri_Nlu_External_NLContext.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  v4 = a1 + *(v3 + 32);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = *(v3 + 36);
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  v6 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sirinluinternal::SubwordTokenChain::operator=(uint64_t a1, const sirinluinternal::SubwordTokenChain *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::SubwordTokenChain::SubwordTokenChain(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternal::SubwordTokenChain::~SubwordTokenChain(v7);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siricommon::StringValue>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<siricommon::StringValue>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sirinluinternal::SubwordTokenChain::~SubwordTokenChain(sirinluinternal::SubwordTokenChain *this)
{
  *this = &unk_1F4875B60;
  v2 = (this + 16);
  if (*(this + 2))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 2);
    operator delete(*v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

{
  sirinluinternal::SubwordTokenChain::~SubwordTokenChain(this);

  JUMPOUT(0x1CCA7EC50);
}

double sirinluinternalitfm::ITFMParserRequest::ITFMParserRequest(sirinluinternalitfm::ITFMParserRequest *this)
{
  *this = &unk_1F4875AC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_1F4875AC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.init()(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0);
  OUTLINED_FUNCTION_18_2(*(v2 + 20));
  OUTLINED_FUNCTION_16_3(a1 + *(v3 + 24));
  v5 = a1 + *(v4 + 28);
  *v5 = 0;
  *(v5 + 4) = v6;
}

void OUTLINED_FUNCTION_63_2(char a1@<W8>)
{
  if (v1)
  {
    a1 = 0;
  }

  *v2 = a1;
}

void OUTLINED_FUNCTION_63_3(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = v1;
  *(v3 + 4) = 0;
}

uint64_t OUTLINED_FUNCTION_63_4()
{
  result = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  v1 = *(result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_63_5()
{

  return sub_1C8A0E760();
}

uint64_t OUTLINED_FUNCTION_63_6()
{
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0);
  v1 = *(result + 20);
  return result;
}

uint64_t sub_1C8797130()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_TurnContext(0) + 20);
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  sub_1C8776788(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NLContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C88AEF6C();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C87A33F8();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C88AF020();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8797350();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8797350()
{
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  sub_1C8776788(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct);
  return sub_1C8BD4C6C();
}

uint64_t OUTLINED_FUNCTION_404(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, a1);
  v4 = *(v2 + 28);
  return 0;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.hasTokenChain.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v6);
  OUTLINED_FUNCTION_13(*(v7 + 28));
  OUTLINED_FUNCTION_262();
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v8 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v13, v14, &unk_1C8BE6F80);
  return v12;
}

uint64_t sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876900;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  return a1;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v7);
  OUTLINED_FUNCTION_13(*(v8 + 28));
  OUTLINED_FUNCTION_49_8();
  v9 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_65(v1);
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v11 = a1 + v9[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v9[6]);
    OUTLINED_FUNCTION_18_2(v9[7]);
    result = OUTLINED_FUNCTION_65(v1);
    if (!v10)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_121();
    return sub_1C87977A8();
  }

  return result;
}

uint64_t sub_1C87976F8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_218();
  v9(v8);
  return a2;
}

uint64_t sub_1C8797750(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_218();
  v9(v8);
  return a2;
}

uint64_t sub_1C87977A8()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return v0;
}

uint64_t sub_1C8797800()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

void sirinluinternalitfm::ITFMHypothesis::~ITFMHypothesis(sirinluinternalitfm::ITFMHypothesis *this)
{
  v2 = *(this + 1);
  *this = &unk_1F4876900;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

{
  sirinluinternalitfm::ITFMHypothesis::~ITFMHypothesis(this);

  JUMPOUT(0x1CCA7EC50);
}

void sirinluinternalitfm::ITFMParserRequest::~ITFMParserRequest(sirinluinternalitfm::ITFMParserRequest *this)
{
  sirinluinternalitfm::ITFMParserRequest::~ITFMParserRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875AC0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v8 = (this + 16);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  PB::Base::~Base(this);
}

uint64_t Siri_Nlu_Internal_TokenChain.locale.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 28)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.utterance.getter()
{
  OUTLINED_FUNCTION_34_9();
  v2 = (v0 + v1);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8797B78@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.ComparisonType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_Internal_NluRequestRule.localeID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_NluRequestRule(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 28)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.type.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v1);
  result = OUTLINED_FUNCTION_134_4(v2);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_120_1()
{

  return sub_1C8BD4D3C();
}

uint64_t sirinluinternalitfm::ITFMParserResponse::ITFMParserResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878DC8;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*v4)
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t Siri_Nlu_External_UserWantedToProceed.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_418()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_203_0()
{
  v1 = *(v0 + *(type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_203_1()
{
  v0 = type metadata accessor for Siri_Nlu_External_SystemDialogAct._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t sub_1C8797F18@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_184();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_1C879804C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v55[16] = v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55[15] = v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v55[14] = v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v55[13] = v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55[12] = v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v55[11] = v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v55[10] = v55 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v55[6] = v55 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v55[3] = v55 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted;
  v33 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  __swift_storeEnumTagSinglePayload(v0 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected;
  v35 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  __swift_storeEnumTagSinglePayload(v0 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled;
  v37 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  __swift_storeEnumTagSinglePayload(v0 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
  v55[0] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
  v39 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  __swift_storeEnumTagSinglePayload(v0 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
  v55[1] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
  v41 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  __swift_storeEnumTagSinglePayload(v0 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
  v55[2] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
  v43 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  __swift_storeEnumTagSinglePayload(v0 + v42, 1, 1, v43);
  v44 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
  v55[4] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
  v45 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  __swift_storeEnumTagSinglePayload(v0 + v44, 1, 1, v45);
  v46 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated;
  v55[5] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated;
  v47 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  __swift_storeEnumTagSinglePayload(v0 + v46, 1, 1, v47);
  v48 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
  v55[7] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
  v49 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  __swift_storeEnumTagSinglePayload(v0 + v48, 1, 1, v49);
  v50 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
  v55[8] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
  v51 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  __swift_storeEnumTagSinglePayload(v0 + v50, 1, 1, v51);
  v52 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__alignment;
  v55[9] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__alignment;
  v53 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  __swift_storeEnumTagSinglePayload(v0 + v52, 1, 1, v53);
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v0;
}

void *sub_1C8798B88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_External_UUID()
{
  result = qword_1EDACE1D0;
  if (!qword_1EDACE1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_144()
{
  v2 = *(v0 - 88);

  return sub_1C8BD49DC();
}

uint64_t OUTLINED_FUNCTION_221_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_221_2(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  v4 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_1C8798CCC()
{
  OUTLINED_FUNCTION_12_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(v1(0) + 20);
  v0(0);
  v3 = OUTLINED_FUNCTION_73_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_SystemDialogAct.offered.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v10 = sub_1C879A880();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_94_3();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_25_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_199_2(uint64_t a1)
{
  result = type metadata accessor for Siri_Nlu_External_EntityCandidate(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

void sub_1C8798EFC()
{
  OUTLINED_FUNCTION_101_0();
  if (v0)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_226_2();
    v2 = OUTLINED_FUNCTION_102_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void OUTLINED_FUNCTION_42_2(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = *(v2 + 4);
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_42_5(uint64_t result)
{
  *(v1 + 16) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_7()
{
  result = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_42_8()
{

  return sub_1C8BD4AAC();
}

uint64_t sub_1C87990F4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v99 = a4;
  v102 = a2;
  v116 = *MEMORY[0x1E69E9840];
  v104 = sub_1C8BD51CC();
  v101 = *(v104 - 8);
  v9 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v105 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C8BD4A8C();
  v103 = *(v11 - 8);
  v12 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v97 - v17;
  v19 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a6;
  v115 = a7;
  __swift_allocate_boxed_opaque_existential_1(v113);
  (*(*(a6 - 8) + 16))();
  sub_1C8799CAC(v113, &v111);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7D8, &qword_1C8C10538);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
    sub_1C8778ED8(v18, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    __swift_project_boxed_opaque_existential_1Tm(v113, v114);
    sub_1C8BD4A7C();
    v23 = sub_1C8BD4C9C();
    v25 = v24;
    (*(v103 + 8))(v14, v11);
    v109 = v23;
    v110 = v25;
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    v26 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7E0, &unk_1C8C10540);
    sub_1C87A4F3C();
    *(v26 + 16) = sub_1C8BD513C();
    *(v26 + 24) = 0;
    v107 = v26;
    sub_1C87A4F90(qword_1EDACA548, v27, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor);
    sub_1C8BD4C8C();
    v97[1] = 0;
    v29 = v101;
    v30 = v107;
    swift_beginAccess();
    v98 = v30;
    v31 = *(v30 + 16);
    v32 = v31 + 64;
    v33 = 1 << *(v31 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v31 + 64);
    v36 = (v33 + 63) >> 6;
    v101 = v29 + 8;
    v100 = v31;

    v37 = 0;
    if (!v35)
    {
      while (1)
      {
LABEL_6:
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
LABEL_44:
          __break(1u);
        }

        if (v38 >= v36)
        {
          break;
        }

        v35 = *(v32 + 8 * v38);
        ++v37;
        if (v35)
        {
          v37 = v38;
          goto LABEL_10;
        }
      }

      v52 = objc_opt_self();
      v53 = v109;
      v54 = v110;
      v55 = sub_1C8BD3FEC();
      v106 = 0;
      v56 = [v52 JSONObjectWithData:v55 options:0 error:&v106];

      v57 = v106;
      if (v56)
      {
        sub_1C8BD523C();
        swift_unknownObjectRelease();
        sub_1C87A9D30(v108, &v111);
        __swift_project_boxed_opaque_existential_1Tm(&v111, v112);
        v58 = sub_1C8BD528C();
        v106 = 0;
        v59 = [v52 dataWithJSONObject:v58 options:1 error:&v106];
        swift_unknownObjectRelease();
        v60 = v106;
        if (v59)
        {
          v61 = sub_1C8BD400C();
          v63 = v62;

          *&v108[0] = v61;
          *(&v108[0] + 1) = v63;
          v64 = *(v98 + 16);
          v67 = *(v64 + 64);
          v66 = v64 + 64;
          v65 = v67;
          v68 = 1 << *(*(v98 + 16) + 32);
          v69 = -1;
          if (v68 < 64)
          {
            v69 = ~(-1 << v68);
          }

          v70 = v69 & v65;
          v71 = (v68 + 63) >> 6;
          v100 = *(v98 + 16);

          v72 = 0;
          v73 = v105;
          if (!v70)
          {
            while (1)
            {
LABEL_20:
              v74 = v72 + 1;
              if (__OFADD__(v72, 1))
              {
                goto LABEL_44;
              }

              if (v74 >= v71)
              {
                break;
              }

              v70 = *(v66 + 8 * v74);
              ++v72;
              if (v70)
              {
                v72 = v74;
                goto LABEL_24;
              }
            }

            v88 = v108[0];
            sub_1C8BD51BC();
            v89 = sub_1C8BD51AC();
            if (v90)
            {
              v28 = v89;
            }

            else
            {
              v28 = 0xD000000000000036;
            }

            sub_1C87A997C(v88, *(&v88 + 1));
            __swift_destroy_boxed_opaque_existential_1Tm(&v111);

            v91 = v109;
            v92 = v110;
            goto LABEL_38;
          }

LABEL_24:
          while (1)
          {
            v75 = __clz(__rbit64(v70)) | (v72 << 6);
            v76 = (*(v100 + 48) + 16 * v75);
            v77 = v76[1];
            v78 = (*(v100 + 56) + 32 * v75);
            v79 = *v78;
            v80 = v78[1];
            v81 = v78[2];
            v82 = v78[3];
            v102 = *v76;
            v103 = v77;
            sub_1C87A8FBC(v102, v77);

            sub_1C87A8FBC(v81, v82);
            sub_1C8BD51BC();
            v83 = sub_1C8BD519C();
            v85 = v84;
            (*v101)(v73, v104);
            if (v85 >> 60 == 15)
            {
              break;
            }

            type metadata accessor for SiriNLUTypesPrintUtils();
            if (v99)
            {
                ;
              }
            }

            else
            {
                ;
              }
            }

            v70 &= v70 - 1;
            sub_1C87A9A24(v83, v85);
            sub_1C87A997C(v102, v103);

            sub_1C87A997C(v81, v82);
            if (!v70)
            {
              goto LABEL_20;
            }
          }

          sub_1C87A997C(v102, v103);

          sub_1C87A997C(v81, v82);
          sub_1C87A997C(*&v108[0], *(&v108[0] + 1));
          __swift_destroy_boxed_opaque_existential_1Tm(&v111);
LABEL_42:

          sub_1C87A997C(v109, v110);
          v28 = 0xD000000000000022;
          goto LABEL_39;
        }

        v93 = v60;
        v28 = 0xD00000000000001ALL;
        v94 = sub_1C8BD3FCC();

        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(&v111);
      }

      else
      {
        v86 = v57;
        v28 = 0xD00000000000001ALL;
        v87 = sub_1C8BD3FCC();

        swift_willThrow();
      }

      v91 = v53;
      v92 = v54;
LABEL_38:
      sub_1C87A997C(v91, v92);
      goto LABEL_39;
    }

LABEL_10:
    while (1)
    {
      v39 = __clz(__rbit64(v35)) | (v37 << 6);
      v40 = (*(v100 + 48) + 16 * v39);
      v42 = *v40;
      v41 = v40[1];
      v43 = (*(v100 + 56) + 32 * v39);
      v45 = *v43;
      v44 = v43[1];
      v46 = v43[2];
      v47 = v43[3];
      sub_1C87A8FBC(*v40, v41);

      v103 = v46;
      v102 = v47;
      sub_1C87A8FBC(v46, v47);
      v48 = v105;
      sub_1C8BD51BC();
      v49 = sub_1C8BD519C();
      v51 = v50;
      (*v101)(v48, v104);
      if (v51 >> 60 == 15)
      {
        break;
      }

      type metadata accessor for SiriNLUTypesPrintUtils();
        ;
      }

      v35 &= v35 - 1;
      sub_1C87A9A24(v49, v51);
      sub_1C87A997C(v42, v41);

      sub_1C87A997C(v103, v102);
      if (!v35)
      {
        goto LABEL_6;
      }
    }

    sub_1C87A997C(v42, v41);

    sub_1C87A997C(v103, v102);
    goto LABEL_42;
  }

  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  sub_1C87A5594(v18, v22, type metadata accessor for Siri_Nlu_External_UsoGraph);
  static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)(v22, v102);
  v28 = sub_1C8BD426C();

  sub_1C87A9A38(v22, type metadata accessor for Siri_Nlu_External_UsoGraph);
LABEL_39:
  __swift_destroy_boxed_opaque_existential_1Tm(v113);
  v95 = *MEMORY[0x1E69E9840];
  return v28;
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

uint64_t sub_1C8799CAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C8799D10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C8BD512C();
  __swift_project_value_buffer(v5, a2);
  OUTLINED_FUNCTION_35_1();
  v7 = *(v6 + 16);

  return v7(a3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_12_3()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_10()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_11(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest();
}

uint64_t OUTLINED_FUNCTION_12_12(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_1C8778ED8(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_15()
{
  v3 = v1[7];
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v1[8];
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = v1[9];
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = v1[10];
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  return __swift_getEnumTagSinglePayload(v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_16()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_20()
{
  result = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0);
  v1 = *(result + 20);
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToProceed.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_375(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    OUTLINED_FUNCTION_2();
    v9 = sub_1C879804C();
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  v10 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void sub_1C879A2DC()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
      OUTLINED_FUNCTION_18_0(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_248_0();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
        OUTLINED_FUNCTION_18_0(v8);
        if (*(v9 + 84) == v1)
        {
          v5 = *(v0 + 36);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A78, &unk_1C8BF5080);
          v5 = *(v0 + 40);
        }
      }
    }

    v10 = OUTLINED_FUNCTION_102_0(v5);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t OUTLINED_FUNCTION_138()
{

  return sub_1C8BD49FC();
}

uint64_t Siri_Nlu_External_SystemOffered.offeredAct.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_SystemOffered(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &unk_1EC2B61F0, &qword_1C8BF50B0);
  OUTLINED_FUNCTION_55_5();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t static SiriNLUTypesPrintUtils.printableProtoObject(object:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  OUTLINED_FUNCTION_44_12();

  return sub_1C87990F4(v3, v4, v5, v6, v7, v1, v2);
}

uint64_t sub_1C879A6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_218();
  v8(v7);
  return a2;
}

uint64_t sub_1C879A720()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C879A880()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v40[9] = v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40[8] = v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v40[7] = v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40[6] = v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v40[5] = v40 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v40[2] = v40 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__id;
  v24 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted;
  v26 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  __swift_storeEnumTagSinglePayload(v0 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__offered;
  v28 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  __swift_storeEnumTagSinglePayload(v0 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__gaveOptions;
  v30 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__informed;
  v40[0] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__informed;
  v32 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  __swift_storeEnumTagSinglePayload(v0 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedSuccess;
  v40[1] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedSuccess;
  v34 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  __swift_storeEnumTagSinglePayload(v0 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedFailure;
  v40[3] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedFailure;
  v36 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  __swift_storeEnumTagSinglePayload(v0 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText;
  v40[4] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText;
  v38 = sub_1C8BD493C();
  __swift_storeEnumTagSinglePayload(v0 + v37, 1, 1, v38);
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v0;
}

uint64_t OUTLINED_FUNCTION_86_0()
{
  v3 = *(v1 - 96) + v0;

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_86_2(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 24);

  return sub_1C8778810();
}

uint64_t sub_1C879B104()
{
  type metadata accessor for Siri_Nlu_Internal_Token();
  sub_1C879B1F0(&qword_1EC2B4BE0, type metadata accessor for Siri_Nlu_Internal_Token);
  return sub_1C8BD4C6C();
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Token()
{
  result = qword_1EC2B4BC8;
  if (!qword_1EC2B4BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C879B1F0(unint64_t *a1, void (*a2)(uint64_t))
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

void Siri_Nlu_Internal_Token.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_Internal_Token();
  v4 = a1 + v3[6];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = (a1 + v3[7]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + v3[8];
  *v6 = 0;
  v6[4] = 1;
  OUTLINED_FUNCTION_11_4(v3[9]);
  *(a1 + v3[10]) = 2;
  *(a1 + v3[11]) = 2;
  OUTLINED_FUNCTION_11_4(v3[12]);
  OUTLINED_FUNCTION_11_4(v3[13]);
  v7 = (a1 + v3[14]);
  *v7 = 0;
  v7[1] = 0;
}

uint64_t Siri_Nlu_Internal_Token.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C879B428();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C879B48C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C879B4F0();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C878BF10();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C879B5B8();
        break;
      case 6:
      case 10:
        sub_1C8BD4BDC();
        break;
      case 7:
        OUTLINED_FUNCTION_8();
        sub_1C879B554();
        break;
      case 8:
        OUTLINED_FUNCTION_8();
        sub_1C879B61C();
        break;
      case 9:
        OUTLINED_FUNCTION_8();
        sub_1C879B680();
        break;
      default:
        continue;
    }
  }
}

uint64_t sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(uint64_t this, const sirinluinternalitfm::ITFMHypothesis *a2)
{
  *this = &unk_1F4876900;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (*(a2 + 24))
  {
    v3 = *(a2 + 4);
    *(this + 24) = 1;
    *(this + 16) = v3;
    v2 = 3;
    if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 5);
    *(this + 24) = v2;
    *(this + 20) = v4;
  }

LABEL_6:
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalitfm::ITFMHypothesis::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    v5 = *(this + 16);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 20));
  }

  if (*(v3 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t SIRINLUINTERNALITFMITFMParserResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v16 = objc_alloc_init(SIRINLUEXTERNALParser);
          objc_storeStrong((a1 + 24), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALParserReadFrom(v16, a2))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(SIRINLUINTERNALITFMITFMHypothesis);
          [a1 addHypotheses:v16];
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALITFMITFMHypothesisReadFrom(v16, a2))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              LOBYTE(v23) = 0;
              goto LABEL_43;
            }
          }

          v23 = (v19 != 0) & ~[a2 hasError];
LABEL_43:
          *(a1 + 32) = v23;
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          *(a1 + 36) |= 1u;
          LODWORD(v27) = 0;
          v14 = [a2 position] + 4;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v27;
          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __swift_get_extra_inhabitant_index_163Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_196();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1C879BD80()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 20)))
  {
    OUTLINED_FUNCTION_20(v3);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v7);
  OUTLINED_FUNCTION_13(*(v8 + 32));
  OUTLINED_FUNCTION_49_8();
  v9 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_65(v1);
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = *(v9 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *(a1 + v11) = qword_1EDACCB68;
    v12 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v9);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
    OUTLINED_FUNCTION_121();
    return sub_1C87977A8();
  }

  return result;
}

uint64_t sub_1C879BEFC()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1C87A9DC4();
        break;
      case 2:
        sub_1C879C53C();
        break;
      case 3:
        sub_1C879CAA8();
        break;
      case 4:
        sub_1C879D69C();
        break;
      case 5:
        sub_1C88BF0F4();
        break;
      case 6:
        sub_1C88BF1D0();
        break;
      case 7:
        sub_1C88BF2AC();
        break;
      default:
        if (result == 101)
        {
          sub_1C88BF388();
        }

        break;
    }
  }

  return result;
}

uint64_t SIRINLUINTERNALITFMITFMHypothesisReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = PBReaderReadString();
        v24 = *(a1 + 16);
        *(a1 + 16) = v23;
      }

      else if (v13 == 2)
      {
        *(a1 + 24) |= 2u;
        v28 = 0;
        v21 = [a2 position] + 4;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 12) = v28;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v30 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v30 & 0x7F) << v14;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_38:
        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t Siri_Nlu_External_TurnInput.turnContext.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(v7);
  OUTLINED_FUNCTION_215_1(v8);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_24_8();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_NLContext(v10);
    v11 = OUTLINED_FUNCTION_44();
    v15 = OUTLINED_FUNCTION_231_1(v11, v12, v13, v14);
    v16 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v15);
    result = OUTLINED_FUNCTION_9_13(v16);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t sub_1C879C53C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  sub_1C8776788(&qword_1EC2B48C0, type metadata accessor for Siri_Nlu_External_SystemPrompted);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_224_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_224_2(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1C89CBE2C();
}

uint64_t sub_1C879C850()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SystemPrompted(0) + 24);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_UsoGraph.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v4 = a1 + *(v3 + 36);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = *(v3 + 40);
  type metadata accessor for Siri_Nlu_External_SemVer();
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t type metadata accessor for Siri_Nlu_External_SemVer()
{
  result = qword_1EDACE080;
  if (!qword_1EDACE080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.hasTurnContext.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v6);
  v8 = OUTLINED_FUNCTION_13(*(v7 + 24));
  OUTLINED_FUNCTION_190_3(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_10(v10);
  return OUTLINED_FUNCTION_235();
}

uint64_t sub_1C879CA60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1C879CAA8()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  sub_1C8776788(qword_1EDACC1D8, type metadata accessor for Siri_Nlu_External_SystemOffered);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return type metadata accessor for Siri_Nlu_External_RequestID();
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_1C87AAA8C(v0, type metadata accessor for Siri_Nlu_External_SpanProperty);
}

uint64_t OUTLINED_FUNCTION_10_9()
{
  result = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_10()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t a1, uint64_t a2)
{
  *(v2 - 64) = a1;
  *(v2 - 56) = a2;
  *(v2 - 80) = 0;
  *(v2 - 112) = 0u;
  *(v2 - 96) = 0u;

  return sub_1C8BD4A9C();
}

uint64_t Siri_Nlu_External_UsoGraph.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C879CEC0();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C879D82C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C879E064();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C880F870();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C880F910();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C880F9B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C879CEC0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_UsoGraph(0) + 40);
  type metadata accessor for Siri_Nlu_External_SemVer();
  sub_1C879D08C(&qword_1EDACCD70, type metadata accessor for Siri_Nlu_External_SemVer);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.turnContext.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = *(type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v7) + 24);
  OUTLINED_FUNCTION_232();
  sub_1C87867A0(v9, v10, v11, &unk_1C8BF5040);
  v12 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_65(v0);
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v12 + 20);
    type metadata accessor for Siri_Nlu_External_NLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = *(v12 + 24);
    type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v13)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_14();
    return OUTLINED_FUNCTION_227_2();
  }

  return result;
}

uint64_t sub_1C879D08C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.sdaComparisonMode.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v2);
  *v0 = *(v1 + *(result + 32)) & 1;
  return result;
}

uint64_t sub_1C879D108(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_137_1();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_307();
      a4(v8);
    }
  }

  return result;
}

int *Siri_Nlu_External_SemVer.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = type metadata accessor for Siri_Nlu_External_SemVer();
  v3 = a1 + result[5];
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = a1 + result[6];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t Siri_Nlu_External_TurnContext.nlContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_170();
  v10 = *(type metadata accessor for Siri_Nlu_External_TurnContext(v9) + 20);
  OUTLINED_FUNCTION_232();
  sub_1C8778810();
  v11 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_24_8();
  if (v12)
  {
    v13 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v13;
    a1[2] = v13;
    a1[3] = v13;
    v14 = a1 + *(v11 + 32);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = *(v11 + 36);
    v16 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    result = OUTLINED_FUNCTION_9_13(v16);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t sub_1C879D330()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SystemOffered(0) + 20);
  type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  sub_1C8776788(&qword_1EDACBDF8, type metadata accessor for Siri_Nlu_External_UserDialogAct);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_SemVer.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C879D778();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C879D4FC();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C879D48C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C879D560()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211();
  v9 = v1(0);
  OUTLINED_FUNCTION_329_0(v9);
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v10 = v0(0);
  OUTLINED_FUNCTION_140_1(v2, v11, v10);
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v12, v13, v14);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C879D69C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  sub_1C8776788(&qword_1EC2B4850, type metadata accessor for Siri_Nlu_External_SystemGaveOptions);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemGaveOptions.init()()
{
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v1 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(v0);
  OUTLINED_FUNCTION_109_0(v1);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C879D82C()
{
  type metadata accessor for Siri_Nlu_External_UsoNode(0);
  sub_1C879D08C(&qword_1EDACCD10, type metadata accessor for Siri_Nlu_External_UsoNode);
  return sub_1C8BD4C6C();
}

uint64_t OUTLINED_FUNCTION_233_0()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

void OUTLINED_FUNCTION_233_1()
{
  if (v0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
}

uint64_t OUTLINED_FUNCTION_324()
{

  return sub_1C8BD517C();
}

void OUTLINED_FUNCTION_324_0()
{
  v1 = *(v0 - 72);
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
}

void Siri_Nlu_External_UsoNode.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v3 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  OUTLINED_FUNCTION_122_0(v3);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_16_3(a1 + v1[6]);
  v4 = v1[7];
  sub_1C8BD493C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v1[8];
  sub_1C8BD48BC();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v1[9];
  sub_1C8BD499C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_18_2(v1[10]);
  OUTLINED_FUNCTION_18_2(v1[11]);
}

uint64_t sub_1C879D9EC()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 36)))
  {
    OUTLINED_FUNCTION_20(v3);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

void Siri_Nlu_External_SystemGaveOptions.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_348();
      OUTLINED_FUNCTION_8();
      sub_1C879DC10();
    }
  }
}

uint64_t OUTLINED_FUNCTION_108_2(uint64_t a1)
{

  return sub_1C87867A0(a1, v3, v1, v2);
}

uint64_t sub_1C879DB88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void sub_1C879DC10()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  v2 = OUTLINED_FUNCTION_254_0();
  sub_1C8776788(v2, v3);
  OUTLINED_FUNCTION_491();
  OUTLINED_FUNCTION_529();
  OUTLINED_FUNCTION_190();
}

uint64_t Siri_Nlu_External_UsoNode.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C879DE30(v3, v4, v5, v6, v7, v8);
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C879DFB0();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C88101FC();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C879DF1C();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C88102B0();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C87A3B10();
        break;
      case 7:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BDC();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_Internal_Token.begin.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Token();
  OUTLINED_FUNCTION_4(*(v0 + 32));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_Internal_Token.end.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Token();
  OUTLINED_FUNCTION_4(*(v0 + 36));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_325()
{

  return sub_1C8BD517C();
}

uint64_t Siri_Nlu_Internal_MatchingSpan.label.setter()
{
  v4 = OUTLINED_FUNCTION_68_5();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v6 = OUTLINED_FUNCTION_2();
    v7 = sub_1C878F828(v6);
    OUTLINED_FUNCTION_40(v7);
  }

  OUTLINED_FUNCTION_178_0();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

uint64_t sub_1C879DF1C()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = *(v1(v0) + 36);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_0_5();
  sub_1C879D08C(v3, v4);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C879DFB0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_UsoNode(0) + 28);
  sub_1C8BD493C();
  sub_1C879D08C(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C879E064()
{
  type metadata accessor for Siri_Nlu_External_UsoEdge(0);
  sub_1C879D08C(&qword_1EDACCD40, type metadata accessor for Siri_Nlu_External_UsoEdge);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C879E104()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = v1(0);
  OUTLINED_FUNCTION_16_3(v3 + *(v4 + 20));
  v6 = v3 + *(v5 + 24);
  *v6 = 0;
  *(v6 + 4) = v7;
  v8 = *(v5 + 28);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_178_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_178_4()
{

  return sub_1C8BD4E2C();
}

uint64_t Siri_Nlu_Internal_MatchingSpan.startTokenIndex.setter(int a1)
{
  v3 = v1;
  v5 = OUTLINED_FUNCTION_50_7();
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v7 = OUTLINED_FUNCTION_2();
    v6 = sub_1C878F828(v7);
    *(v3 + v2) = v6;
  }

  result = OUTLINED_FUNCTION_178_0();
  *(v6 + 48) = a1;
  *(v6 + 52) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.endTokenIndex.setter(int a1)
{
  v3 = v1;
  v5 = OUTLINED_FUNCTION_50_7();
  v6 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v7 = OUTLINED_FUNCTION_2();
    v6 = sub_1C878F828(v7);
    *(v3 + v2) = v6;
  }

  result = OUTLINED_FUNCTION_178_0();
  *(v6 + 56) = a1;
  *(v6 + 60) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.input.setter()
{
  v4 = OUTLINED_FUNCTION_68_5();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v6 = OUTLINED_FUNCTION_2();
    v7 = sub_1C878F828(v6);
    OUTLINED_FUNCTION_40(v7);
  }

  OUTLINED_FUNCTION_178_0();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
}

uint64_t __swift_store_extra_inhabitant_index_164Tm()
{
  OUTLINED_FUNCTION_149_0();
  v4 = v3;
  OUTLINED_FUNCTION_17();
  v5 = sub_1C8BD49FC();
  result = OUTLINED_FUNCTION_18_0(v5);
  if (*(v7 + 84) == v2)
  {
    v8 = OUTLINED_FUNCTION_147_2();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    *(v0 + *(v1 + 20) + 8) = v4;
  }

  return result;
}

uint64_t sub_1C879E498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  while (1)
  {
    OUTLINED_FUNCTION_234();
    result = sub_1C8BD4AFC();
    if (v6 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v16 = OUTLINED_FUNCTION_163_0();
        a6(v16);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_163_0();
        sub_1C879DE30(v11, v12, v13, v14, a5, v15);
        break;
      case 1:
        OUTLINED_FUNCTION_163_0();
        sub_1C879E5A8();
        break;
    }
  }

  return result;
}

uint64_t sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(uint64_t this)
{
  *this = &unk_1F4876900;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4876900;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetUdaIdx.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0);
  OUTLINED_FUNCTION_4(*(v0 + 28));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C879E5A8()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4C3C();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetNodeIdx.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0);
  OUTLINED_FUNCTION_4(*(v0 + 24));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_161_1()
{
  result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext(0);
  v1 = *(result + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_161_2()
{
  *(v1 - 88) = v0;

  return sub_1C8778810();
}

void OUTLINED_FUNCTION_96_0(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 4) = v2;
}

uint64_t OUTLINED_FUNCTION_96_4(uint64_t a1)
{

  return sub_1C87867A0(a1, v3, v1, v2);
}

uint64_t sub_1C879E720()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_UsoEdge(0) + 28);
  type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  sub_1C879D08C(&qword_1EDACC360, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C879E7F8()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__systemDialogActGroup, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities);

  v2 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks);

  v3 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks);

  v4 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext, &qword_1EC2B6010, &unk_1C8BF5040);
  v5 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale + 8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride, &qword_1EC2B6EF0, &unk_1C8BEBC70);
  return v0;
}

uint64_t sub_1C879E98C()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        sub_1C87A3BFC();
        break;
      case 4:
        sub_1C88B3ED4();
        break;
      case 5:
      case 11:
        continue;
      case 6:
        sub_1C88B3FB0();
        break;
      case 7:
        sub_1C88B408C();
        break;
      case 8:
        sub_1C88B4168();
        break;
      case 9:
        sub_1C879EB68();
        break;
      case 10:
        sub_1C88B4244();
        break;
      case 12:
        sub_1C88B4320();
        break;
      case 13:
        sub_1C879ECF0();
        break;
      case 14:
        sub_1C88B43FC();
        break;
      default:
        if (result == 101)
        {
          sub_1C88B44D8();
        }

        break;
    }
  }
}

uint64_t sub_1C879EB68()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  sub_1C8776788(qword_1EDACAB48, type metadata accessor for Siri_Nlu_External_UserWantedToProceed);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C879ECF0()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  sub_1C8776788(&qword_1EDACBA78, type metadata accessor for Siri_Nlu_External_UserStatedTask);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C879EE78()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(0) + 32);
  sub_1C879EEEC();
  return sub_1C8BD4B4C();
}

unint64_t sub_1C879EEEC()
{
  result = qword_1EC2B4188;
  if (!qword_1EC2B4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4188);
  }

  return result;
}

SiriNLUTypes::Siri_Nlu_Internal_TurnInputRule::ContextRule::SDAContextComparisonMode_optional __swiftcall Siri_Nlu_Internal_TurnInputRule.ContextRule.SDAContextComparisonMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C879F048()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0) + 24);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C879F0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_119();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Siri_Nlu_Internal_Queryrewrite_QRHypothesis.QRRewriteType(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C879F1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v84 = a3;
  v81 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v59 - v6;
  v64 = sub_1C8BD493C();
  v61 = *(v64 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v59 - v11;
  v67 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  v12 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v80 = &v59 - v16;
  v69 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  v17 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v65 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v74 = &v59 - v21;
  v71 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  v22 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v79 = &v59 - v26;
  v73 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  v27 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v76 = &v59 - v31;
  v77 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  v32 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v72 = &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v59 - v36;
  v78 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  v38 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v59 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v59 - v42;
  v44 = type metadata accessor for Siri_Nlu_External_UUID();
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v43, 1, v44) == 1)
  {
    sub_1C8778ED8(v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v46 = v82;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    v47 = v82;
    sub_1C8BD4E2C();
    v46 = v47;
    if (v47)
    {
      return sub_1C87A0410();
    }

    sub_1C87A0410();
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v37, 1, v78) == 1)
  {
    sub_1C8778ED8(v37, &dword_1EC2B86E8, &unk_1C8BF4630);
    v49 = v80;
    v50 = v79;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B48C0, type metadata accessor for Siri_Nlu_External_SystemPrompted);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    v49 = v80;
    v50 = v79;
    if (v46)
    {
      return result;
    }
  }

  swift_beginAccess();
  v51 = v76;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v51, 1, v77) == 1)
  {
    sub_1C8778ED8(v51, &qword_1EC2B86F0, &unk_1C8BF5030);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(qword_1EDACC1D8, type metadata accessor for Siri_Nlu_External_SystemOffered);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v46)
    {
      return result;
    }

    v49 = v80;
  }

  swift_beginAccess();
  sub_1C8778810();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v73);
  v53 = v74;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v50, &dword_1EC2B8A80, &unk_1C8BF5090);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B4850, type metadata accessor for Siri_Nlu_External_SystemGaveOptions);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v46)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v53, 1, v71) == 1)
  {
    sub_1C8778ED8(v53, &qword_1EC2B8A88, &unk_1C8C10560);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B8DA0, type metadata accessor for Siri_Nlu_External_SystemInformed);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v46)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v49, 1, v69) == 1)
  {
    sub_1C8778ED8(v49, &qword_1EC2B8A90, &unk_1C8BF50A0);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B8DB8, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v46)
    {
      return result;
    }
  }

  swift_beginAccess();
  v54 = v66;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v54, 1, v67) == 1)
  {
    sub_1C8778ED8(v54, &qword_1EC2B8A98, &unk_1C8C10550);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B8DD0, type metadata accessor for Siri_Nlu_External_SystemReportedFailure);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v46)
    {
      return result;
    }
  }

  swift_beginAccess();
  v55 = v63;
  sub_1C8778810();
  v56 = v64;
  if (__swift_getEnumTagSinglePayload(v55, 1, v64) == 1)
  {
    return sub_1C8778ED8(v55, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  v57 = v61;
  v58 = v60;
  (*(v61 + 32))(v60, v55, v56);
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0]);
  sub_1C8BD4E2C();
  return (*(v57 + 8))(v58, v56);
}

uint64_t sub_1C87A0138()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_UserStatedTask(0) + 20);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_TurnInputRule.ContextRule.SDAContextComparisonMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C87A02B8);
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

uint64_t Siri_Nlu_External_UUID.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = sub_1C8BD4DFC(), !v1))
  {
    v6 = (v0 + v2[6]);
    if ((v6[1] & 1) != 0 || (v7 = *v6, result = sub_1C8BD4DFC(), !v1))
    {
      if (*(v0 + v2[7]) == 6)
      {
        return sub_1C8BD49DC();
      }

      v8 = *(v0 + v2[7]);
      sub_1C88208E4();
      result = sub_1C8BD4D4C();
      if (!v1)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t sub_1C87A0410()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void Siri_Nlu_External_SystemOffered.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61F0, &qword_1C8BF50B0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v14 = OUTLINED_FUNCTION_402();
  v15 = type metadata accessor for Siri_Nlu_External_SystemOffered(v14);
  OUTLINED_FUNCTION_82(v15);
  v16 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_188_0(v16, v17);
  if (v18)
  {
    sub_1C8778ED8(v1, &unk_1EC2B61F0, &qword_1C8BF50B0);
LABEL_5:
    OUTLINED_FUNCTION_260_0();
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_55_5();
  OUTLINED_FUNCTION_127_0();
  sub_1C879A720();
  OUTLINED_FUNCTION_174_1();
  sub_1C8776788(v19, v20);
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_504();
  OUTLINED_FUNCTION_356();
  sub_1C87A0410();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t OUTLINED_FUNCTION_25_10()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_MatchingSpan._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_1C87A3B74();
}

uint64_t OUTLINED_FUNCTION_156_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t sub_1C87A07FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a2;
  v107 = a4;
  v109 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = v78 - v7;
  v80 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  v8 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78[1] = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = v78 - v12;
  v83 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  v13 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v78[2] = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = v78 - v17;
  v86 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  v18 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v81 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v88 = v78 - v22;
  v89 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  v23 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v84 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v91 = v78 - v27;
  v92 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  v28 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v87 = v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v94 = v78 - v32;
  v95 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  v33 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v90 = v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v100 = v78 - v37;
  v97 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  v38 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v93 = v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v98 = v78 - v42;
  v99 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  v43 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v96 = v78 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v105 = v78 - v47;
  v102 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  v48 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v103 = v78 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v53 = v78 - v52;
  v104 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  v54 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v101 = v78 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v59 = v78 - v58;
  v60 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  swift_beginAccess();
  v108 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v59, 1, v60) == 1)
  {
    sub_1C8778ED8(v59, &unk_1EC2B6330, &unk_1C8BF4FE0);
    v62 = v110;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B4AF8, type metadata accessor for Siri_Nlu_External_UserAccepted);
    v63 = v110;
    sub_1C8BD4E2C();
    if (v63)
    {
      return sub_1C87A0410();
    }

    v62 = 0;
    sub_1C87A0410();
  }

  swift_beginAccess();
  sub_1C8778810();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v104);
  v65 = v105;
  if (EnumTagSinglePayload == 1)
  {
    v110 = v62;
    sub_1C8778ED8(v53, &qword_1EC2B6E28, &unk_1C8C10580);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(qword_1EDACC430, type metadata accessor for Siri_Nlu_External_UserRejected);
    sub_1C8BD4E2C();
    if (v62)
    {
      return sub_1C87A0410();
    }

    v110 = 0;
    sub_1C87A0410();
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v65, 1, v102) == 1)
  {
    sub_1C8778ED8(v65, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    v66 = v110;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B41C8, type metadata accessor for Siri_Nlu_External_UserCancelled);
    v67 = v110;
    sub_1C8BD4E2C();
    v66 = v67;
    if (v67)
    {
      return sub_1C87A0410();
    }

    sub_1C87A0410();
  }

  swift_beginAccess();
  v68 = v98;
  sub_1C8778810();
  v69 = __swift_getEnumTagSinglePayload(v68, 1, v99);
  v70 = v100;
  if (v69 == 1)
  {
    sub_1C8778ED8(v68, &qword_1EC2B6E10, &unk_1C8BF5000);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B4028, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat);
    sub_1C8BD4E2C();
    if (v66)
    {
      return sub_1C87A0410();
    }

    sub_1C87A0410();
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v70, 1, v97) == 1)
  {
    sub_1C8778ED8(v70, &qword_1EC2B86D8, &qword_1C8BF4620);
    goto LABEL_23;
  }

  sub_1C879A720();
  sub_1C8776788(&qword_1EC2B8D10, type metadata accessor for Siri_Nlu_External_UserAcknowledged);
  sub_1C8BD4E2C();
  if (v66)
  {
    return sub_1C87A0410();
  }

  sub_1C87A0410();
LABEL_23:
  swift_beginAccess();
  v72 = v94;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v72, 1, v95) == 1)
  {
    sub_1C8778ED8(v72, &qword_1EC2B86D0, &unk_1C8BF5010);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(qword_1EDACAB48, type metadata accessor for Siri_Nlu_External_UserWantedToProceed);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v66)
    {
      return result;
    }
  }

  swift_beginAccess();
  v73 = v91;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v73, 1, v92) == 1)
  {
    sub_1C8778ED8(v73, &qword_1EC2B6E18, &qword_1C8BEBC48);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B40B8, type metadata accessor for Siri_Nlu_External_UserWantedToPause);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v66)
    {
      return result;
    }
  }

  swift_beginAccess();
  v74 = v88;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v74, 1, v89) == 1)
  {
    sub_1C8778ED8(v74, &qword_1EC2B86C8, &unk_1C8C10570);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B4740, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v66)
    {
      return result;
    }
  }

  swift_beginAccess();
  v75 = v85;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v75, 1, v86) == 1)
  {
    sub_1C8778ED8(v75, &unk_1EC2B61D8, &unk_1C8BF4FD0);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACBA78, type metadata accessor for Siri_Nlu_External_UserStatedTask);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v66)
    {
      return result;
    }
  }

  swift_beginAccess();
  v76 = v82;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v76, 1, v83) == 1)
  {
    sub_1C8778ED8(v76, &qword_1EC2B86C0, &unk_1C8BF5020);
LABEL_38:
    swift_beginAccess();
    v77 = v79;
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v77, 1, v80) == 1)
    {
      return sub_1C8778ED8(v77, &qword_1EC2B8A68, &qword_1C8BF5068);
    }

    sub_1C879A720();
    sub_1C8776788(&qword_1EDACAC48, type metadata accessor for Siri_Nlu_External_UtteranceAlignment);
    sub_1C8BD4E2C();
    return sub_1C87A0410();
  }

  sub_1C879A720();
  sub_1C8776788(&qword_1EC2B8D60, type metadata accessor for Siri_Nlu_External_UserWantedToUndo);
  sub_1C8BD4E2C();
  result = sub_1C87A0410();
  if (!v66)
  {
    goto LABEL_38;
  }

  return result;
}

void Siri_Nlu_External_UserWantedToProceed.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph(v11);
  v13 = OUTLINED_FUNCTION_52_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v16);
  v17 = OUTLINED_FUNCTION_315();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
  OUTLINED_FUNCTION_80(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_87_2();
  v23 = type metadata accessor for Siri_Nlu_External_UUID();
  v24 = OUTLINED_FUNCTION_21(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = OUTLINED_FUNCTION_36_4();
  v28 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v27);
  OUTLINED_FUNCTION_78_2(v28);
  OUTLINED_FUNCTION_102_2();
  if (v29)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v30, v31);
    OUTLINED_FUNCTION_45_4();
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v32 = *(v3 + 24);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v29)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  sub_1C8776788(v33, v34);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C87A1DB8()
{
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_1_17()
{
  v4 = v1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = v0;
  v5 = v1 + v2[7];
  *v5 = 0;
  *(v5 + 8) = v0;
  v6 = v1 + v2[8];
  *v6 = 0;
  *(v6 + 8) = v0;
  v7 = (v1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  return __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 104) = a8;
  *(v9 - 96) = a3;
  *(v9 - 88) = v8;
  *(v9 - 72) = a4;

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

void Siri_Nlu_External_UsoGraph.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6138, &unk_1C8BE8D80);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_259_0();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v11 = OUTLINED_FUNCTION_66();
  v17 = type metadata accessor for Siri_Nlu_External_UsoGraph(v11);
  v12 = *(v17 + 40);
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v2, 1, v7);
  if (v13)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6138, &unk_1C8BE8D80);
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    sub_1C87A386C();
    OUTLINED_FUNCTION_137_0();
    sub_1C879D08C(v14, v15);
    OUTLINED_FUNCTION_118_0();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_136();
    sub_1C87A3B74();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_UsoNode(0), sub_1C879D08C(&qword_1EDACCD10, type metadata accessor for Siri_Nlu_External_UsoNode), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_87_0(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Siri_Nlu_External_UsoEdge(0), sub_1C879D08C(&qword_1EDACCD40, type metadata accessor for Siri_Nlu_External_UsoEdge), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_87_0(), !v1))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0), sub_1C879D08C(&qword_1EDACAA38, type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_87_0(), !v1))
      {
        if (!*(v0[3] + 16) || (type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0), sub_1C879D08C(&qword_1EDACAC48, type metadata accessor for Siri_Nlu_External_UtteranceAlignment), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_87_0(), !v1))
        {
          if (!*(v0[4] + 16) || (type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0), sub_1C879D08C(&qword_1EDACBCE0, type metadata accessor for Siri_Nlu_External_UsoEntitySpan), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_87_0(), !v1))
          {
            v16 = v0 + *(v17 + 36);
            sub_1C8BD49DC();
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_190();
}

uint64_t OUTLINED_FUNCTION_130_2()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_130_3@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_1C8778810();
}

void sub_1C87A2668()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    v3 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 20);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
      OUTLINED_FUNCTION_18_0(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_248_0();
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6940, &unk_1C8BE8D90);
        OUTLINED_FUNCTION_18_0(v8);
        if (*(v9 + 84) == v1)
        {
          OUTLINED_FUNCTION_249_0();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
          v10 = *(v0 + 36);
        }
      }
    }

    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

uint64_t sub_1C87A27C4()
{
  OUTLINED_FUNCTION_166();
  if (v3)
  {
    v4 = *v1;
    OUTLINED_FUNCTION_61_1();
    return (v5 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    v7 = sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0(v7);
    if (*(v8 + 84) == v0)
    {
      v9 = *(v2 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
      OUTLINED_FUNCTION_18_0(v10);
      if (*(v11 + 84) == v0)
      {
        OUTLINED_FUNCTION_240_0();
      }

      else
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6940, &unk_1C8BE8D90);
        OUTLINED_FUNCTION_18_0(v12);
        if (*(v13 + 84) == v0)
        {
          OUTLINED_FUNCTION_241_0();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
          v9 = *(v2 + 36);
        }
      }
    }

    v14 = OUTLINED_FUNCTION_21_0(v9);

    return __swift_getEnumTagSinglePayload(v14, v15, v16);
  }
}

void Siri_Nlu_External_UsoNode.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103_1(v7, v69);
  v73 = sub_1C8BD499C();
  v8 = OUTLINED_FUNCTION_13_1(v73);
  v77 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v70 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6940, &unk_1C8BE8D90);
  OUTLINED_FUNCTION_80(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v74 = v17;
  OUTLINED_FUNCTION_86();
  v75 = sub_1C8BD48BC();
  v18 = OUTLINED_FUNCTION_13_1(v75);
  v72 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_0();
  v71 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_74();
  v27 = sub_1C8BD493C();
  v28 = OUTLINED_FUNCTION_13_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_33();
  v78 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  v31 = v0 + v78[6];
  if (*(v31 + 4))
  {
    v32 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_227_1(v31);
    sub_1C8BD4DEC();
    v32 = v1;
    if (v1)
    {
      goto LABEL_30;
    }
  }

  OUTLINED_FUNCTION_13(v78[7]);
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v2, 1, v27);
  if (v33)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    OUTLINED_FUNCTION_201_0();
    v34 = OUTLINED_FUNCTION_260_0();
    v35(v34);
    OUTLINED_FUNCTION_3_6();
    sub_1C879D08C(v36, v37);
    OUTLINED_FUNCTION_130_0();
    v1 = v32;
    sub_1C8BD4E2C();
    if (v32)
    {
      v38 = OUTLINED_FUNCTION_252_0();
      v40 = v27;
LABEL_21:
      v39(v38, v40);
      goto LABEL_30;
    }

    v41 = OUTLINED_FUNCTION_252_0();
    v42(v41, v27);
  }

  v43 = v78;
  v44 = v78[8];
  sub_1C8778810();
  v45 = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_76(v45, v46, v75);
  v47 = v77;
  if (v33)
  {
    sub_1C8778ED8(v74, &qword_1EC2B6940, &unk_1C8BE8D90);
    v48 = v76;
  }

  else
  {
    OUTLINED_FUNCTION_154_1();
    v49(v71, v74, v75);
    OUTLINED_FUNCTION_145_0();
    sub_1C879D08C(v50, v51);
    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_225_0();
    sub_1C8BD4E2C();
    v48 = v76;
    if (v1)
    {
      v52 = *(v72 + 8);
      v53 = OUTLINED_FUNCTION_215_0();
      v54(v53);
      goto LABEL_30;
    }

    v55 = *(v72 + 8);
    v56 = OUTLINED_FUNCTION_215_0();
    v57(v56);
    v47 = v77;
    v43 = v78;
  }

  v58 = v43[9];
  sub_1C8778810();
  v59 = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_76(v59, v60, v73);
  if (v33)
  {
    sub_1C8778ED8(v48, &qword_1EC2B6948, &unk_1C8BF9F90);
  }

  else
  {
    OUTLINED_FUNCTION_201_0();
    v61();
    OUTLINED_FUNCTION_0_5();
    sub_1C879D08C(v62, v63);
    OUTLINED_FUNCTION_224_0();
    OUTLINED_FUNCTION_225_0();
    sub_1C8BD4E2C();
    if (v1)
    {
      v39 = *(v47 + 8);
      v38 = v70;
      v40 = v73;
      goto LABEL_21;
    }

    (*(v47 + 8))(v70, v73);
  }

  v64 = (v0 + v43[10]);
  if (!v64[1] || (v65 = *v64, OUTLINED_FUNCTION_225_0(), sub_1C8BD4DDC(), !v1))
  {
    v66 = (v0 + v43[11]);
    if (!v66[1] || (v67 = *v66, OUTLINED_FUNCTION_225_0(), sub_1C8BD4DDC(), !v1))
    {
      if (!*(*v0 + 16) || (OUTLINED_FUNCTION_225_0(), OUTLINED_FUNCTION_85_1(), sub_1C8BD4DAC(), !v1))
      {
        v68 = v0 + v43[5];
        OUTLINED_FUNCTION_119();
        sub_1C8BD49DC();
      }
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_190();
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_1C87EF7B0();
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for Siri_Nlu_Internal_Token();
}

uint64_t OUTLINED_FUNCTION_20_6@<X0>(uint64_t a1@<X8>)
{

  return sub_1C8786744(v2 + a1, v4, v1, v3);
}

uint64_t OUTLINED_FUNCTION_20_9()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return sub_1C8BD4C3C();
}

void sub_1C87A309C()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  OUTLINED_FUNCTION_220_1();
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

uint64_t Siri_Nlu_External_Task.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = type metadata accessor for Siri_Nlu_External_Task(0);
  OUTLINED_FUNCTION_485(v1);
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_524();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v6);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = *(v0 + 28);
  sub_1C8BD48FC();
  v12 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Siri_Nlu_External_Task.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C88CB844();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C87A3240();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C87A331C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C87A3240()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_Task(0) + 24);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87A331C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_Task(0) + 20);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

void sub_1C87A33F8()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  v2 = OUTLINED_FUNCTION_254_0();
  sub_1C8776788(v2, v3);
  OUTLINED_FUNCTION_529();
  OUTLINED_FUNCTION_190();
}

void Siri_Nlu_External_UsoEdge.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_9_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_66();
  v9 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v8);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v13 = OUTLINED_FUNCTION_165_0();
  v14 = type metadata accessor for Siri_Nlu_External_UsoEdge(v13);
  OUTLINED_FUNCTION_209_0(v14);
  if ((*(v15 + 4) & 1) != 0 || (OUTLINED_FUNCTION_227_1(v15), OUTLINED_FUNCTION_30(), !v0))
  {
    v16 = (v1 + *(v3 + 24));
    if ((v16[1] & 1) != 0 || (v17 = *v16, OUTLINED_FUNCTION_30(), !v0))
    {
      v18 = *(v3 + 28);
      sub_1C8778810();
      OUTLINED_FUNCTION_17_6(v2);
      if (v19)
      {
        sub_1C8778ED8(v2, &qword_1EC2B61B0, &qword_1C8BE6E40);
LABEL_9:
        OUTLINED_FUNCTION_15();
        goto LABEL_10;
      }

      sub_1C87A386C();
      sub_1C879D08C(&qword_1EDACC360, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_213_0();
      sub_1C8BD4E2C();
      sub_1C87A3B74();
      if (!v0)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t OUTLINED_FUNCTION_202()
{
  v2 = *(*(v0 - 112) + 20);

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_202_1()
{
  v0 = type metadata accessor for Siri_Nlu_External_TurnInput._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_202_2(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
  v4 = *(v3 + 36);
  return 0;
}

uint64_t OUTLINED_FUNCTION_202_3()
{

  return sub_1C8A43180();
}

uint64_t OUTLINED_FUNCTION_202_4()
{
  result = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return type metadata accessor for Siri_Nlu_External_RequestID();
}

uint64_t OUTLINED_FUNCTION_28_3()
{
  result = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v1 = *(result + 28);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_5@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1C8786744(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_28_8()
{
  v2 = *(v0 + 40);

  return type metadata accessor for Siri_Nlu_External_SemVer();
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
}

uint64_t OUTLINED_FUNCTION_28_13(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest();
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return sub_1C888D594(v0);
}

uint64_t sub_1C87A386C()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_166_2(uint64_t a1)
{
  result = type metadata accessor for Siri_Nlu_External_SystemDialogAct(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_166_4(uint64_t a1, uint64_t a2)
{

  return sub_1C87867A0(a1, a2, v2, v3);
}

void Siri_Nlu_External_UsoEdgeLabel.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_9_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6950, &unk_1C8BF4880);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_66();
  v9 = type metadata accessor for Siri_Nlu_External_UsoLabel(v8);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v13 = OUTLINED_FUNCTION_165_0();
  v14 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v13);
  OUTLINED_FUNCTION_209_0(v14);
  if ((*(v15 + 4) & 1) != 0 || (OUTLINED_FUNCTION_227_1(v15), OUTLINED_FUNCTION_30(), !v0))
  {
    v16 = (v1 + *(v3 + 24));
    if ((v16[1] & 1) != 0 || (v17 = *v16, OUTLINED_FUNCTION_30(), !v0))
    {
      v18 = *(v3 + 28);
      sub_1C8778810();
      OUTLINED_FUNCTION_17_6(v2);
      if (v19)
      {
        sub_1C8778ED8(v2, &qword_1EC2B6950, &unk_1C8BF4880);
LABEL_9:
        OUTLINED_FUNCTION_15();
        goto LABEL_10;
      }

      sub_1C87A386C();
      sub_1C879D08C(&qword_1EC2B4BC0, type metadata accessor for Siri_Nlu_External_UsoLabel);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_213_0();
      sub_1C8BD4E2C();
      sub_1C87A3B74();
      if (!v0)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C87A3B74()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C87A3BFC()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  sub_1C8776788(&qword_1EC2B4AF8, type metadata accessor for Siri_Nlu_External_UserAccepted);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_145_1(uint64_t a1)
{
  result = type metadata accessor for Siri_Nlu_External_UserDialogAct(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

void Siri_Nlu_External_LegacyNLContext.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  v4 = a1 + v3[6];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + v3[7]) = 2;
  *(a1 + v3[8]) = 2;
  OUTLINED_FUNCTION_18_2(v3[9]);
  *(a1 + v3[10]) = v5;
  OUTLINED_FUNCTION_464(v3[11]);
}

uint64_t Siri_Nlu_External_LegacyNLContext.dictationPrompt.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t Siri_Nlu_External_LegacyNLContext.strictPrompt.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t Siri_Nlu_External_LegacyNLContext.previousDomainName.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t Siri_Nlu_External_LegacyNLContext.legacyContextSource.setter(unsigned __int8 *a1)
{
  v3 = OUTLINED_FUNCTION_54_2(a1);
  result = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v3);
  *(v2 + *(result + 44)) = v1;
  return result;
}

uint64_t Siri_Nlu_External_NLContext.executedTasks.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_83_1()
{
  v2 = *(v0 - 720);

  return sub_1C8BD494C();
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return sub_1C8776A10(v1, v0);
}

uint64_t OUTLINED_FUNCTION_106_1(uint64_t a1)
{
  *(v1 + 32) = a1;
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v3 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_67@<X0>(uint64_t a1@<X8>)
{

  return sub_1C87E8DEC(v1 + a1, v2);
}

uint64_t OUTLINED_FUNCTION_69_4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;

  return sub_1C8BD4DDC();
}

uint64_t OUTLINED_FUNCTION_69_5()
{
}

uint64_t OUTLINED_FUNCTION_69_6()
{

  return sub_1C8BD4E0C();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_79_1()
{
  result = type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t sirinluinternal::SubwordTokenChain::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::SubwordTokenChain::SubwordTokenChain(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternal::SubwordTokenChain::~SubwordTokenChain(v7);
  }

  return a1;
}

uint64_t sirinluinternal::SubwordTokenChain::SubwordTokenChain(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875B60;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
    v6 = (a1 + 16);
    if (*(a1 + 16))
    {
      std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 16));
      operator delete(*v6);
      *v6 = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
    }
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sub_1C87A4314()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_TurnContext(0) + 24);
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  sub_1C8776788(&qword_1EDACB6D0, type metadata accessor for Siri_Nlu_External_LegacyNLContext);
  return sub_1C8BD4C7C();
}

void static ConversionUtils.convertUuidToProto(uuid:)(uint64_t a1@<X8>)
{
  v2 = sub_1C8BD4AAC();
  v3 = OUTLINED_FUNCTION_80(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v6 = objc_opt_self();
  v7 = sub_1C8BD402C();
  v8 = [v6 convertFromUUID_];

  if (v8)
  {
    v9 = v8;
    sub_1C87A458C(v9);
    OUTLINED_FUNCTION_13_5();
    if (!v11 & v10)
    {
      __break(1u);
    }

    else
    {
      v12 = type metadata accessor for Siri_Nlu_External_UUID();
      sub_1C8BD4A9C();
      OUTLINED_FUNCTION_3_0();
      sub_1C87A4A08(v13, v14);
      sub_1C8BD4CDC();

      __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
    }
  }

  else
  {
    type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_5();

    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }
}

uint64_t sub_1C87A458C(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C8BD400C();

  return v3;
}

void Siri_Nlu_External_LegacyNLContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C88AFB78();
        break;
      case 2:
        OUTLINED_FUNCTION_27_5();
        sub_1C87A4C50();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C87A4C94();
        break;
      case 4:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CE06C();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 7:
        OUTLINED_FUNCTION_8();
        sub_1C88AFBDC();
        break;
      case 8:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BDC();
        break;
      default:
        continue;
    }
  }
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  result = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  result = type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_1036(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);
  v3 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v7 = *v5;
  v6 = v5[1];
}

uint64_t OUTLINED_FUNCTION_3_17()
{
  result = type metadata accessor for Siri_Nlu_External_MultilingualVariant(0);
  v2 = v0 + *(result + 24);
  return result;
}

uint64_t sub_1C87A4A08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C87A4A50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C87A4A98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C87A4AE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C87A4B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Siri_Nlu_External_SystemDialogAct.id.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v6);
  v8 = OUTLINED_FUNCTION_41_1(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    OUTLINED_FUNCTION_2();
    v10 = sub_1C879A880();
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID();
  v11 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C87A4C50()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 32));
  return sub_1C8BD4B2C();
}

uint64_t sub_1C87A4CF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C8BD512C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C87A4D90()
{
  OUTLINED_FUNCTION_9_2();
  v1 = v0(0);
  OUTLINED_FUNCTION_75_1(*(v1 + 36));
  return sub_1C8BD4C1C();
}

unint64_t sub_1C87A4F3C()
{
  result = qword_1EDACCF20;
  if (!qword_1EDACCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCF20);
  }

  return result;
}

uint64_t sub_1C87A4F90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C87A4FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v8 = sub_1C8BD51CC();
  v9 = OUTLINED_FUNCTION_13_1(v8);
  v69 = v10;
  v70 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v68 = v14 - v13;
  v71 = sub_1C8BD4A8C();
  v15 = OUTLINED_FUNCTION_13_1(v71);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_33();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_112_0();
  v22 = *(a3 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33();
  v27 = v26 - v25;
  v28 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v29 = OUTLINED_FUNCTION_21(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_33();
  v34 = v33 - v32;
  (*(v22 + 16))(v27, a1, a3);

  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v28);
    sub_1C8778ED8(v3, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    OUTLINED_FUNCTION_1_19();
    sub_1C87A4F90(v48, v49, v50);
    sub_1C8BD4C8C();
  }

  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v28);
  OUTLINED_FUNCTION_11_23();
  v38 = OUTLINED_FUNCTION_218();
  sub_1C87A5594(v38, v39, v40);
  sub_1C8BD4A7C();
  sub_1C87A4F90(&qword_1EDACCCE0, 255, type metadata accessor for Siri_Nlu_External_UsoGraph);
  v41 = sub_1C8BD4C9C();
  if (v72)
  {

    v43 = OUTLINED_FUNCTION_57_9();
    v44(v43);
    OUTLINED_FUNCTION_0_27();
    sub_1C87A9A38(v34, v55);
  }

  v51 = v41;
  v52 = v42;
  v53 = OUTLINED_FUNCTION_57_9();
  v54(v53);
  type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
  swift_initStackObject();
  sub_1C87A5614(v34);
  v57 = sub_1C8BD426C();
  MEMORY[0x1CCA7E2D0](v57);

  MEMORY[0x1CCA7E2D0](2570, 0xE200000000000000);
  sub_1C8BD51BC();
  OUTLINED_FUNCTION_49_9();
  v58 = sub_1C8BD519C();
  v60 = v59;

  (*(v69 + 8))(v68, v70);
  if (v60 >> 60 == 15)
  {
    OUTLINED_FUNCTION_0_27();
    sub_1C87A9A38(v34, v61);

    sub_1C87A997C(v51, v52);
  }

  v73 = *(v5 + 24);
  v62 = sub_1C8BD527C();
  MEMORY[0x1CCA7E2D0](v62);

  MEMORY[0x1CCA7E2D0](572728099, 0xE400000000000000);
  swift_beginAccess();
  sub_1C87A8FA8(v58, v60);
  v63 = *(v5 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v74 = *(v5 + 16);
  sub_1C87A9014(0x7061726723232322, 0xE900000000000068, v58, v60, v51, v52);
  *(v5 + 16) = v74;
  sub_1C87A997C(v51, v52);
  swift_endAccess();

  sub_1C87A9A24(v58, v60);
  OUTLINED_FUNCTION_0_27();
  result = sub_1C87A9A38(v34, v64);
  v65 = *(v5 + 24);
  v66 = __OFADD__(v65, 1);
  v67 = v65 + 1;
  if (!v66)
  {
    *(v5 + 24) = v67;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C87A5594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_218();
  v8(v7);
  return a2;
}

void sub_1C87A5614(uint64_t a1)
{
  v646 = a1;
  v1 = sub_1C8BD439C();
  v2 = OUTLINED_FUNCTION_0_15(v1, &v675);
  v614 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v6);
  v7 = sub_1C8BD42EC();
  v714 = OUTLINED_FUNCTION_13_1(v7);
  v715 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v714);
  OUTLINED_FUNCTION_9_0();
  v716 = v11;
  v12 = OUTLINED_FUNCTION_86();
  v13 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v12);
  v14 = OUTLINED_FUNCTION_13_1(v13);
  v643 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  v19 = OUTLINED_FUNCTION_63_0(v18);
  v20 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v19);
  v21 = OUTLINED_FUNCTION_0_15(v20, &v706);
  v657 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v25);
  v26 = sub_1C8BD419C();
  v27 = OUTLINED_FUNCTION_0_15(v26, &v709);
  v616 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_0();
  v32 = OUTLINED_FUNCTION_63_0(v31);
  v33 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan(v32);
  v34 = OUTLINED_FUNCTION_0_15(v33, &v710);
  v615 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_33();
  v40 = (v39 - v38);
  v41 = sub_1C8BD425C();
  v42 = OUTLINED_FUNCTION_0_15(v41, &v716);
  v619 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v46);
  v47 = sub_1C8BD48FC();
  v48 = OUTLINED_FUNCTION_0_15(v47, &v714);
  v618 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  v54 = OUTLINED_FUNCTION_80(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87B0, &qword_1C8BF4878);
  v60 = OUTLINED_FUNCTION_80(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_96();
  v706 = v65;
  v66 = OUTLINED_FUNCTION_86();
  v67 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v66);
  v68 = OUTLINED_FUNCTION_0_15(v67, v651);
  v617 = v69;
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_9_0();
  v700 = v72;
  OUTLINED_FUNCTION_86();
  v73 = sub_1C8BD448C();
  v74 = OUTLINED_FUNCTION_0_15(v73, &v684);
  v628 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6950, &unk_1C8BF4880);
  v80 = OUTLINED_FUNCTION_80(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v84 = OUTLINED_FUNCTION_63_0(v613 - v83);
  v672 = type metadata accessor for Siri_Nlu_External_UsoLabel(v84);
  v85 = OUTLINED_FUNCTION_21(v672);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  v90 = OUTLINED_FUNCTION_80(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_96();
  v98 = OUTLINED_FUNCTION_63_0(v97);
  v694 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v98);
  v99 = OUTLINED_FUNCTION_21(v694);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_96();
  v699 = v106;
  v107 = OUTLINED_FUNCTION_86();
  v108 = type metadata accessor for Siri_Nlu_External_UsoEdge(v107);
  v109 = OUTLINED_FUNCTION_0_15(v108, &v726);
  v662 = v110;
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v113);
  v114 = sub_1C8BD48BC();
  v115 = OUTLINED_FUNCTION_0_15(v114, &v657);
  v713 = v116;
  v118 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v119);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6940, &unk_1C8BE8D90);
  v121 = OUTLINED_FUNCTION_80(v120);
  v123 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v125);
  v126 = sub_1C8BD493C();
  v127 = OUTLINED_FUNCTION_0_15(v126, &v727);
  v701 = v128;
  v130 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v134 = OUTLINED_FUNCTION_80(v133);
  v136 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v140);
  v710 = sub_1C8BD461C();
  v141 = OUTLINED_FUNCTION_13_1(v710);
  v143 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v153);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87B8, &unk_1C8BF4890);
  v155 = OUTLINED_FUNCTION_80(v154);
  v157 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v158);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v159);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v161);
  v162 = sub_1C8BD44EC();
  v163 = OUTLINED_FUNCTION_0_15(v162, &v697);
  v708 = v164;
  v166 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v163);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v167);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v168);
  v169 = sub_1C8BD499C();
  v170 = OUTLINED_FUNCTION_0_15(v169, &v702);
  v172 = v171;
  v174 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v170);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v175);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v176);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v177);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v178);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v179);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
  v181 = OUTLINED_FUNCTION_80(v180);
  v183 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v181);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v184);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v185);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v186);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v187);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v189);
  v190 = sub_1C8BD456C();
  v191 = OUTLINED_FUNCTION_13_1(v190);
  v193 = v192;
  v195 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v196);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v197);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v199);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v200);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_96();
  v203 = OUTLINED_FUNCTION_63_0(v202);
  v704 = type metadata accessor for Siri_Nlu_External_UsoNode(v203);
  v204 = OUTLINED_FUNCTION_13_1(v704);
  v206 = v205;
  v208 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v204);
  OUTLINED_FUNCTION_33();
  v211 = (v210 - v209);
  v212 = sub_1C8BD46CC();
  v213 = *(v212 + 48);
  v214 = *(v212 + 52);
  v620 = v212;
  v215 = swift_allocObject();
  v702 = sub_1C8BD46BC();
  OUTLINED_FUNCTION_61_4();
  v217 = *v216;
  v218 = *(*v216 + 16);
  v711 = v219;
  v712 = v40;
  v707 = v190;
  v627 = v193;
  v690 = v218;
  v703 = v13;
  if (!v218)
  {
    v713 = MEMORY[0x1E69E7CC0];
    v215 = v699;
    v227 = v190;
LABEL_86:
    OUTLINED_FUNCTION_61_4();
    v693 = *(v378 + 8);
    v379 = v700;
    v380 = v661;
    v690 = v693[2];
    if (v690)
    {
      v381 = 0;
      OUTLINED_FUNCTION_69_2();
      v383 = *(v382 + 80);
      OUTLINED_FUNCTION_32();
      v691 = v693 + v384;
      v671 = (v627 + 32);
      v689 = v711 + 16;
      v687 = v711 + 8;
      v686 = v628 + 8;
      v688 = v627 + 8;
      v385 = &qword_1EC2B61B0;
      while (v381 < v693[2])
      {
        OUTLINED_FUNCTION_69_2();
        v387 = *(v386 + 72);
        v708 = v381;
        sub_1C87A88B8();
        v709 = v695[7];
        OUTLINED_FUNCTION_192(&v689);
        sub_1C8778810();
        OUTLINED_FUNCTION_199();
        OUTLINED_FUNCTION_79_0(&v725);
        OUTLINED_FUNCTION_76(v388, v389, v390);
        if (v234)
        {
          _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
          OUTLINED_FUNCTION_81_2();
          OUTLINED_FUNCTION_16_3(v391);
          OUTLINED_FUNCTION_59_4(v215 + v40[6]);
          v393 = OUTLINED_FUNCTION_14_8(v392);
          OUTLINED_FUNCTION_84_2(v393, v394, v395);
          OUTLINED_FUNCTION_17_6(v381);
          v396 = v659;
          if (!v234)
          {
            OUTLINED_FUNCTION_85_3(v381);
          }
        }

        else
        {
          OUTLINED_FUNCTION_4_14();
          OUTLINED_FUNCTION_218();
          sub_1C87A8E58();
          v396 = v659;
        }

        OUTLINED_FUNCTION_81_2();
        v398 = *v397;
        v399 = *(v397 + 4);
        OUTLINED_FUNCTION_1_12();
        sub_1C87A8B2C(v400, v401);
        if ((v399 & 1) != 0 || !v398)
        {
          OUTLINED_FUNCTION_74_2();
          OUTLINED_FUNCTION_192(v669);
          sub_1C8778810();
          OUTLINED_FUNCTION_17_6(v398);
          if (v234)
          {
            _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
            OUTLINED_FUNCTION_16_3(v396 + v40[5]);
            OUTLINED_FUNCTION_59_4(v396 + v40[6]);
            OUTLINED_FUNCTION_5();
            v412 = v672;
            __swift_storeEnumTagSinglePayload(v407, v408, v409, v672);
            OUTLINED_FUNCTION_17_6(v398);
            v410 = v642;
            v411 = v641;
            if (!v234)
            {
              OUTLINED_FUNCTION_85_3(v644);
            }
          }

          else
          {
            OUTLINED_FUNCTION_4_14();
            sub_1C87A8E58();
            v410 = v642;
            v411 = v641;
            v412 = v672;
          }

          v413 = v40[7];
          sub_1C8778810();
          OUTLINED_FUNCTION_73(v410);
          if (v234)
          {
            _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
            OUTLINED_FUNCTION_1_12();
            sub_1C87A8B2C(v396, v414);
            v415 = (v411 + *(v412 + 20));
            *v415 = 0;
            v415[1] = 0;
            OUTLINED_FUNCTION_73(v410);
            if (!v234)
            {
              sub_1C8778ED8(v410, &qword_1EC2B6950, &unk_1C8BF4880);
            }
          }

          else
          {
            OUTLINED_FUNCTION_1_12();
            sub_1C87A8B2C(v396, v416);
            OUTLINED_FUNCTION_218();
            sub_1C87A8E58();
          }

          v417 = (v411 + *(v412 + 20));
          v418 = v411;
          v420 = *v417;
          v419 = v417[1];

          sub_1C87A8B2C(v418, type metadata accessor for Siri_Nlu_External_UsoLabel);
          OUTLINED_FUNCTION_55_4(&v728);
          sub_1C8BD44DC();
          sub_1C8BD454C();
          v421 = v713;
          v227 = v707;
        }

        else
        {
          OUTLINED_FUNCTION_74_2();
          OUTLINED_FUNCTION_192(&v666);
          sub_1C8778810();
          OUTLINED_FUNCTION_17_6(v398);
          if (v234)
          {
            OUTLINED_FUNCTION_35_4(v665);
            _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
            OUTLINED_FUNCTION_81_2();
            OUTLINED_FUNCTION_16_3(v402);
            OUTLINED_FUNCTION_59_4(v399 + v40[6]);
            v404 = OUTLINED_FUNCTION_14_8(v403);
            OUTLINED_FUNCTION_84_2(v404, v405, v406);
            OUTLINED_FUNCTION_17_6(v398);
            v422 = v640;
            if (!v234)
            {
              OUTLINED_FUNCTION_85_3(v398);
            }
          }

          else
          {
            OUTLINED_FUNCTION_4_14();
            OUTLINED_FUNCTION_238(v665);
            sub_1C87A8E58();
            v422 = v640;
          }

          OUTLINED_FUNCTION_81_2();
          v424 = *v423;
          v425 = *(v423 + 4);
          OUTLINED_FUNCTION_1_12();
          sub_1C87A8B2C(v426, v427);
          if (v425)
          {
            v428 = 0;
          }

          else
          {
            v428 = v424;
          }

          sub_1C87A8910(v428, v422);
          OUTLINED_FUNCTION_73(v422);
          if (v234)
          {
            sub_1C8778ED8(v422, &qword_1EC2B87B8, &unk_1C8BF4890);
            OUTLINED_FUNCTION_74_2();
            OUTLINED_FUNCTION_238(v635);
            sub_1C8778810();
            OUTLINED_FUNCTION_17_6(v425);
            if (v234)
            {
              OUTLINED_FUNCTION_55_4(v634);
              _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
              v593 = &qword_1EC2B61B0 + v40[5];
              *v593 = 0;
              v593[4] = 1;
              v594 = &qword_1EC2B61B0 + v40[6];
              *v594 = 0;
              v594[4] = 1;
              v595 = v40[7];
              OUTLINED_FUNCTION_5();
              OUTLINED_FUNCTION_84_2(v596, v597, v598);
              OUTLINED_FUNCTION_17_6(v425);
              if (!v234)
              {
                sub_1C8778ED8(v425, &qword_1EC2B61B0, &qword_1C8BE6E40);
              }
            }

            else
            {
              OUTLINED_FUNCTION_4_14();
              v385 = v613[3];
              sub_1C87A8E58();
            }

            v602 = &v385[v40[5]];
            v603 = *v602;
            v604 = v602[4];
            OUTLINED_FUNCTION_1_12();
            sub_1C87A8B2C(v385, v605);
            sub_1C888D6F8();
            v606 = OUTLINED_FUNCTION_66_4();
            OUTLINED_FUNCTION_53_4(v606, v607);

            v592 = OUTLINED_FUNCTION_11_11();
            goto LABEL_184;
          }

          OUTLINED_FUNCTION_22_9(&v703);
          v429(v685, v422, v227);
          v421 = v713;
        }

        v430 = (v380 + v695[5]);
        v431 = *(v421 + 16);
        if (*(v430 + 4))
        {
          v432 = 0;
        }

        else
        {
          v432 = *v430;
        }

        if (v432 >= v431 || (v433 = (v380 + v695[6]), v434 = *(v433 + 4), (v434 & 1) == 0) && v431 <= *v433)
        {
          sub_1C888D6F8();
          OUTLINED_FUNCTION_66_4();
          *v583 = 0;
          *(v583 + 8) = 0;
          *(v583 + 16) = 3;
          swift_willThrow();

          OUTLINED_FUNCTION_22_9(v720);
          v584(v685, v227);
          v585 = OUTLINED_FUNCTION_11_11();
          sub_1C87A8B2C(v585, v586);
          goto LABEL_185;
        }

        v435 = v710;
        v436 = v711;
        v437 = v421 + ((*(v711 + 80) + 32) & ~*(v711 + 80));
        v438 = *(v711 + 72);
        v439 = *(v711 + 16);
        v705 = *v433;
        v439(v692, v437 + v438 * v432, v710);
        v440 = sub_1C8BD460C();
        v441 = v692;
        v704 = v440;
        v442 = *(v436 + 8);
        v443 = OUTLINED_FUNCTION_251_0();
        v442(v443);
        v444 = v705;
        if (v434)
        {
          v444 = 0;
        }

        if (v444 >= *(v713 + 16))
        {
          goto LABEL_197;
        }

        v439(v441, v437 + v438 * v444, v435);
        sub_1C8BD460C();
        (v442)(v441, v435);
        v380 = v661;
        OUTLINED_FUNCTION_74_2();
        OUTLINED_FUNCTION_231(&v682);
        v385 = &qword_1EC2B61B0;
        sub_1C8778810();
        v445 = OUTLINED_FUNCTION_109();
        v446 = v694;
        OUTLINED_FUNCTION_76(v445, v447, v694);
        if (v234)
        {
          OUTLINED_FUNCTION_56_2(v681);
          _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
          OUTLINED_FUNCTION_16_3(v442 + v446[5]);
          v448 = v442 + v446[6];
          *v448 = 0;
          v448[4] = v449;
          v450 = v446[7];
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_84_2(v451, v452, v453);
          v454 = OUTLINED_FUNCTION_109();
          v455 = v446;
          v446 = v442;
          OUTLINED_FUNCTION_76(v454, v456, v455);
          v40 = v712;
          v13 = v703;
          v379 = v700;
          if (!v234)
          {
            OUTLINED_FUNCTION_85_3(v435);
          }
        }

        else
        {
          OUTLINED_FUNCTION_4_14();
          OUTLINED_FUNCTION_192(v681);
          sub_1C87A8E58();
          v40 = v712;
          v13 = v703;
          v379 = v700;
        }

        v457 = v708 + 1;
        v458 = (v446 + v694[6]);
        v459 = *v458;
        v460 = *(v458 + 4);
        OUTLINED_FUNCTION_1_12();
        sub_1C87A8B2C(v461, v462);
        OUTLINED_FUNCTION_70_3(v683);
        v463 = v685;
        sub_1C8BD462C();
        OUTLINED_FUNCTION_22_9(&v718);
        v464 = v459;
        v381 = v457;
        v465(v464, v655);
        OUTLINED_FUNCTION_22_9(v720);
        v466 = v463;
        v227 = v707;
        v467(v466, v707);
        v468 = OUTLINED_FUNCTION_11_11();
        sub_1C87A8B2C(v468, v469);
        v215 = v699;
        if (v690 == v457)
        {
          goto LABEL_127;
        }
      }
    }

    else
    {
LABEL_127:
      OUTLINED_FUNCTION_61_4();
      v471 = *(*(v470 + 16) + 16);
      v472 = v713;
      v473 = v626;
      v474 = v710;
      if (v471)
      {
        OUTLINED_FUNCTION_40_3();
        v477 = (v475 + v476);
        OUTLINED_FUNCTION_17_3();
        v695 = (v472 + v478);
        v694 = *(v479 + 72);
        v693 = (v480 + 16);
        v688 = v481 + 32;
        v690 = v481 + 8;
        v687 = v618 + 32;
        v689 = v618 + 8;
        v692 = v619 + 8;
        v691 = (v480 + 8);
        while (1)
        {
          sub_1C87A88B8();
          v482 = (v379 + v473[5]);
          v483 = *(v482 + 4) ? 0 : *v482;
          if (v483 >= *(v472 + 16))
          {
            break;
          }

          (*(v711 + 16))(v698, v695 + *(v711 + 72) * v483, v474);
          v484 = (v379 + v473[7]);
          v485 = v484[1];
          if (v485)
          {
            v707 = *v484;
            v705 = v485;
          }

          else
          {
            v707 = 0;
            v705 = 0xE000000000000000;
          }

          v486 = v696;
          v487 = (v379 + v473[6]);
          v488 = v487[1];
          v708 = v477;
          v709 = v471;
          if (v488)
          {
            v704 = *v487;
            v701 = v488;
          }

          else
          {
            v704 = 0;
            v701 = 0xE000000000000000;
          }

          sub_1C8BD41FC();
          OUTLINED_FUNCTION_5();
          __swift_storeEnumTagSinglePayload(v489, v490, v491, v492);
          v493 = v473[8];
          OUTLINED_FUNCTION_231(&v711);
          sub_1C8778810();
          v494 = OUTLINED_FUNCTION_109();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v494, v495, v486);

          sub_1C8778ED8(v471, &qword_1EC2B6110, &qword_1C8BF5070);
          v497 = 0;
          v234 = EnumTagSinglePayload == 1;
          v498 = v682;
          if (!v234)
          {
            OUTLINED_FUNCTION_192(v676);
            sub_1C8778810();
            v499 = OUTLINED_FUNCTION_199();
            v493 = v696;
            OUTLINED_FUNCTION_76(v499, v500, v696);
            if (v234)
            {
              OUTLINED_FUNCTION_35_4(&v677);
              sub_1C8BD492C();
              v501 = OUTLINED_FUNCTION_199();
              OUTLINED_FUNCTION_76(v501, v502, v493);
              if (!v234)
              {
                sub_1C8778ED8(0, &qword_1EC2B6110, &qword_1C8BF5070);
              }
            }

            else
            {
              OUTLINED_FUNCTION_22_9(v720);
              v503 = OUTLINED_FUNCTION_44_7();
              v504(v503);
            }

            v497 = sub_1C8BD490C();
            v505 = OUTLINED_FUNCTION_18_11(&v722);
            v506(v505, v493);
            v379 = v700;
          }

          v699 = v497;
          v507 = v473[9];
          OUTLINED_FUNCTION_257(&v713);
          sub_1C8778810();
          v508 = OUTLINED_FUNCTION_213();
          v510 = __swift_getEnumTagSinglePayload(v508, v509, v498);
          sub_1C8778ED8(v493, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
          if (v510 == 1)
          {
            v697 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_257(v679);
            sub_1C8778810();
            v511 = OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_76(v511, v512, v498);
            if (v234)
            {
              OUTLINED_FUNCTION_35_4(v680);
              MEMORY[0x1CCA7D9E0](v513, v514, v515);
              v516 = OUTLINED_FUNCTION_213();
              OUTLINED_FUNCTION_76(v516, v517, v498);
              if (!v234)
              {
                sub_1C8778ED8(v493, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
              }
            }

            else
            {
              OUTLINED_FUNCTION_22_9(v719);
              v518(v652, v493, v498);
            }

            sub_1C8BD48CC();
            v520 = v519;
            v521 = OUTLINED_FUNCTION_18_11(&v721);
            v522(v521, v498);
            v697 = v520;
          }

          if (*(v379 + v473[10]) != 7)
          {
            OUTLINED_FUNCTION_49_4(&v678);
            sub_1C8BD41DC();
            sub_1C8778ED8(v706, &qword_1EC2B87B0, &qword_1C8BF4878);
            sub_1C87791EC();
          }

          v523 = v473[12];
          v524 = (v379 + v473[11]);
          v525 = *v524;
          v526 = *(v524 + 4);
          v527 = *(v379 + v523);
          v528 = *(v379 + v523 + 4);
          v529 = v706;
          sub_1C8778810();
          LOBYTE(v717) = v528;
          v379 = v700;
          OUTLINED_FUNCTION_49_4(&v715);
          sub_1C8BD422C();
          sub_1C8BD45CC();
          OUTLINED_FUNCTION_22_9(&v724);
          v530(v527, v684);
          sub_1C8778ED8(v529, &qword_1EC2B87B0, &qword_1C8BF4878);
          v531 = OUTLINED_FUNCTION_18_11(&v723);
          v474 = v710;
          v532(v531, v710);
          sub_1C87A8B2C(v379, type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier);
          v477 = v694 + v708;
          v471 = v709 - 1;
          v40 = v712;
          v472 = v713;
          v13 = v703;
          if (v709 == 1)
          {
            goto LABEL_155;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_155:
        OUTLINED_FUNCTION_61_4();
        v534 = *(*(v533 + 32) + 16);
        v535 = v625;
        if (!v534)
        {
LABEL_161:
          OUTLINED_FUNCTION_61_4();
          v709 = *(v551 + 24);
          v211 = v658;
          v552 = v710;
          v553 = v711;
          v708 = *(v709 + 16);
          if (!v708)
          {
            goto LABEL_185;
          }

          v554 = 0;
          v707 = *(v713 + 16);
          v555 = *(v657 + 80);
          OUTLINED_FUNCTION_32();
          v706 = v709 + v556;
          v705 = v553 + 16;
          v704 = (v614 + 8);
          v701 = (v553 + 8);
          while (v554 < *(v709 + 16))
          {
            v557 = *(v657 + 72);
            sub_1C87A88B8();
            v558 = (v211 + *(v674 + 28));
            if (*(v558 + 4) == 1)
            {
              if (!v707)
              {
                goto LABEL_182;
              }

              v559 = 0;
            }

            else
            {
              v559 = *v558;
              if (v707 <= v559)
              {
LABEL_182:
                sub_1C888D6F8();
                OUTLINED_FUNCTION_66_4();
                *v590 = xmmword_1C8BF4830;
                *(v590 + 16) = 3;
                swift_willThrow();

                v589 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment;
                goto LABEL_183;
              }
            }

            if (v559 >= *(v713 + 16))
            {
              goto LABEL_199;
            }

            v712 = v554;
            (*(v553 + 16))(v673, v713 + ((*(v553 + 80) + 32) & ~*(v553 + 80)) + *(v553 + 72) * v559, v552);
            v560 = *(*v211 + 16);
            if (v560)
            {
              OUTLINED_FUNCTION_40_3();
              v563 = v561 + v562;
              v565 = *(v564 + 72);
              v566 = MEMORY[0x1E69E7CC0];
              do
              {
                sub_1C87A88B8();
                v567 = v13[6];
                OUTLINED_FUNCTION_42_2(v13[5]);
                OUTLINED_FUNCTION_41_5((v535 + v568));
                v569 = v13[8];
                OUTLINED_FUNCTION_42_2(v13[7]);
                OUTLINED_FUNCTION_41_5((v535 + v570));
                v571 = v13[10];
                OUTLINED_FUNCTION_42_2(v13[9]);
                OUTLINED_FUNCTION_41_5((v535 + v572));
                sub_1C8BD427C();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v577 = *(v566 + 16);
                  v578 = OUTLINED_FUNCTION_13_0();
                  v566 = sub_1C88DB208(v578, v579, v580, v566);
                }

                v574 = *(v566 + 16);
                v573 = *(v566 + 24);
                v534 = v574 + 1;
                if (v574 >= v573 >> 1)
                {
                  v581 = OUTLINED_FUNCTION_38_7(v573);
                  v566 = sub_1C88DB208(v581, v574 + 1, 1, v566);
                }

                sub_1C87A8B2C(v535, type metadata accessor for Siri_Nlu_External_UtteranceSpan);
                *(v566 + 16) = v534;
                OUTLINED_FUNCTION_17_3();
                (*(v576 + 32))(v566 + v575 + *(v576 + 72) * v574, v716);
                v563 += v565;
                --v560;
              }

              while (v560);
            }

            v554 = v712 + 1;
            v211 = v658;
            OUTLINED_FUNCTION_41_5((v658 + *(v674 + 24)));
            OUTLINED_FUNCTION_49_4(&v674);
            sub_1C8BD436C();
            v582 = v673;
            sub_1C8BD45EC();
            (*v704)(v534, v650);
            v552 = v710;
            (*v701)(v582, v710);
            sub_1C87A8B2C(v211, type metadata accessor for Siri_Nlu_External_UtteranceAlignment);
            v553 = v711;
            if (v554 == v708)
            {
              goto LABEL_185;
            }
          }

          goto LABEL_198;
        }

        OUTLINED_FUNCTION_40_3();
        v538 = v536 + v537;
        OUTLINED_FUNCTION_17_3();
        v709 = v713 + v539;
        v541 = *(v540 + 72);
        v707 = v542 + 16;
        v708 = v541;
        v543 = (v616 + 8);
        v706 = v542 + 8;
        while (1)
        {
          sub_1C87A88B8();
          v544 = *(v40 + *(v678 + 20));
          OUTLINED_FUNCTION_36_3();
          swift_beginAccess();
          v545 = *(v544 + 16);
          if (*(v544 + 20))
          {
            v545 = 0;
          }

          if (v545 >= *(v713 + 16))
          {
            break;
          }

          v547 = v710;
          v546 = v711;
          v548 = v675;
          (*(v711 + 16))(v675, v709 + *(v711 + 72) * v545, v710);
          OUTLINED_FUNCTION_56_2(&v708);
          sub_1C888B410(v712, v549);
          sub_1C8BD45BC();
          v550 = v40;
          v40 = v712;
          (*v543)(v550, v677);
          (*(v546 + 8))(v548, v547);
          sub_1C87A8B2C(v40, type metadata accessor for Siri_Nlu_External_UsoEntitySpan);
          v538 += v708;
          if (!--v534)
          {
            goto LABEL_161;
          }
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
    return;
  }

  v220 = *(v206 + 80);
  OUTLINED_FUNCTION_32();
  v689 = v217 + v221;
  v671 = (v193 + 32);
  v705 = v193 + 8;
  v664 = (v708 + 8);
  v639 = v172 + 32;
  v660 = (v172 + 8);
  v222 = 0;
  v686 = v223 + 32;
  v613[0] = v713 + 32;
  v613[2] = v713 + 8;
  v613[1] = v224 + 32;
  v622 = v224 + 8;
  v713 = MEMORY[0x1E69E7CC0];
  v709 = v211;
  v225 = v704;
  v687 = v206;
  v227 = v226;
  v229 = v228;
  v688 = v217;
  while (v222 < *(v217 + 16))
  {
    v230 = *(v229 + 72);
    v708 = v222;
    v211 = v709;
    sub_1C87A88B8();
    v231 = v211 + v225[6];
    if ((v231[4] & 1) != 0 || (v232 = *v231) == 0)
    {
      v253 = v225[9];
      OUTLINED_FUNCTION_52_2(&v700);
      sub_1C8778810();
      OUTLINED_FUNCTION_193_0();
      OUTLINED_FUNCTION_79_0(&v702);
      v257 = __swift_getEnumTagSinglePayload(v254, v255, v256);
      v258 = OUTLINED_FUNCTION_80_1();
      sub_1C8778ED8(v258, v259, &unk_1C8BF9F90);
      if (v257 == 1)
      {
        v260 = (v211 + v225[10]);
        v261 = v668;
        if (v260[1])
        {
          v262 = *v260;
          v263 = v260[1];
        }

        OUTLINED_FUNCTION_56_2(&v728);
        sub_1C8BD44CC();
        OUTLINED_FUNCTION_218();
LABEL_32:
        sub_1C8BD454C();
        v227 = v707;
        v274 = v688;
      }

      else
      {
        OUTLINED_FUNCTION_231(&v671);
        sub_1C8778810();
        OUTLINED_FUNCTION_17_6(v211);
        v264 = v648;
        if (v234)
        {
          sub_1C8BD486C();
          OUTLINED_FUNCTION_17_6(v211);
          if (!v234)
          {
            sub_1C8778ED8(v211, &qword_1EC2B6948, &unk_1C8BF9F90);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9(&v663);
          v267(v264, v211, v40);
        }

        OUTLINED_FUNCTION_83_1();
        v268 = MEMORY[0x1CCA7DA50](v264, v253);
        v269 = *v660;
        (*v660)(v253, v40);
        v269(v264, v40);
        if (v268)
        {
          v717 = 0;
          v718 = 0xE000000000000000;
          v270 = v704;
          OUTLINED_FUNCTION_73_4(v704[11]);

          v271 = OUTLINED_FUNCTION_196_0();
          MEMORY[0x1CCA7E2D0](v271);

          v272 = sub_1C8BD433C();
          MEMORY[0x1CCA7E2D0](v272);

          OUTLINED_FUNCTION_73_4(*(v270 + 40));

          v273 = OUTLINED_FUNCTION_196_0();
          MEMORY[0x1CCA7E2D0](v273);

          OUTLINED_FUNCTION_49_4(&v728);
          sub_1C8BD44AC();
          v261 = v668;
          OUTLINED_FUNCTION_218();
          goto LABEL_32;
        }

        v211 = v709;
        OUTLINED_FUNCTION_238(&v660);
        sub_1C8778810();
        OUTLINED_FUNCTION_17_6(&unk_1C8BF9F90);
        v274 = v688;
        if (v234)
        {
          OUTLINED_FUNCTION_70_3(&v661);
          sub_1C8BD486C();
          OUTLINED_FUNCTION_17_6(&unk_1C8BF9F90);
          if (!v234)
          {
            sub_1C8778ED8(&unk_1C8BF9F90, &qword_1EC2B6948, &unk_1C8BF9F90);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9(&v663);
          v264 = v637;
          v281 = OUTLINED_FUNCTION_218();
          v282(v281);
        }

        v283 = v264;
        v284 = sub_1C8BD484C();
        OUTLINED_FUNCTION_76_2();
        (v269)(v285, v286, v287);
        OUTLINED_FUNCTION_35_4(&v662);
        sub_1C87A8910(v284, v288);
        v289 = OUTLINED_FUNCTION_155_0();
        v290 = v707;
        OUTLINED_FUNCTION_76(v289, v291, v707);
        v292 = v704;
        if (v234)
        {
          sub_1C8778ED8(v283, &qword_1EC2B87B8, &unk_1C8BF4890);
          OUTLINED_FUNCTION_55_4(&v673);
          Siri_Nlu_External_UsoNode.usoVerbElementID.getter();
          sub_1C8BD484C();
          OUTLINED_FUNCTION_76_2();
          (v269)(v599, v600, v601);
          goto LABEL_180;
        }

        OUTLINED_FUNCTION_22_9(&v703);
        v293 = OUTLINED_FUNCTION_218();
        v294(v293);
        v717 = sub_1C8BD455C();
        v718 = v295;
        v296 = sub_1C8BD433C();
        MEMORY[0x1CCA7E2D0](v296);

        v297 = (v211 + *(v292 + 40));
        v227 = v290;
        if (v297[1])
        {
          v298 = *v297;
          v299 = v297[1];
        }

        v261 = v668;

        v310 = OUTLINED_FUNCTION_196_0();
        MEMORY[0x1CCA7E2D0](v310);

        OUTLINED_FUNCTION_56_2(&v728);
        sub_1C8BD44AC();
        OUTLINED_FUNCTION_218();
        sub_1C8BD454C();
        (*v705)(v645, v290);
      }

      v311 = v702;
      sub_1C8BD463C();
      if ((OUTLINED_FUNCTION_65_5() & 1) == 0)
      {
        v358 = *(v311 + 16);
        v359 = OUTLINED_FUNCTION_13_0();
        v311 = sub_1C87A8A00(v359, v360, v361, v311);
      }

      v236 = *(v311 + 16);
      v312 = *(v311 + 24);
      v211 = (v236 + 1);
      v190 = v274;
      if (v236 >= v312 >> 1)
      {
        v713 = OUTLINED_FUNCTION_15_7(v312);
      }

      else
      {
        v713 = v311;
      }

      (*v705)(v261, v227);
      v252 = v691;
      v225 = v704;
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_35_4(&v701);
    sub_1C87A8910(v232, v233);
    OUTLINED_FUNCTION_73(v215);
    if (v234)
    {
      sub_1C8778ED8(v215, &qword_1EC2B87B8, &unk_1C8BF4890);
LABEL_180:
      sub_1C888D6F8();
      v587 = OUTLINED_FUNCTION_66_4();
      OUTLINED_FUNCTION_53_4(v587, v588);

      goto LABEL_181;
    }

    v235 = *v671;
    v236 = v693;
    OUTLINED_FUNCTION_50_5();
    v663 = v237;
    v237(v238, v239, v240);
    OUTLINED_FUNCTION_55_4(&v728);
    sub_1C8BD452C();
    OUTLINED_FUNCTION_49_4(&v695);
    sub_1C8BD453C();
    v241 = v666;
    OUTLINED_FUNCTION_60_2();
    sub_1C8BD452C();
    v211 = v705;
    v225 = *v705;
    (*v705)(v227, v227);
    v242 = sub_1C8BD449C();
    v243 = *v664;
    v244 = v241;
    v245 = v667;
    (*v664)(v244, v667);
    v243(v190, v245);
    if (v242)
    {
      v246 = v225;
      v247 = v702;
      sub_1C8BD46AC();
      if ((OUTLINED_FUNCTION_65_5() & 1) == 0)
      {
        v362 = *(v247 + 16);
        v363 = OUTLINED_FUNCTION_13_0();
        v247 = sub_1C87A8A00(v363, v364, v365, v247);
      }

      v227 = v707;
      v13 = v703;
      v225 = v704;
      v190 = v688;
      OUTLINED_FUNCTION_30_7();
      if (v249)
      {
        v713 = OUTLINED_FUNCTION_15_7(v248);
      }

      else
      {
        v713 = v247;
      }

      v250 = OUTLINED_FUNCTION_47_4();
      v246(v250);
      v251 = &v698;
      goto LABEL_13;
    }

    sub_1C8BD44FC();
    MEMORY[0x1CCA7D610](v236, v227);
    v265 = OUTLINED_FUNCTION_67_3();
    v266 = v707;
    (v225)(v265, v707);
    v190 = v225;
    sub_1C8BD450C();
    MEMORY[0x1CCA7D610](v236, v227);
    v275 = OUTLINED_FUNCTION_67_3();
    (v225)(v275, v266);
    v276 = v709;
    v13 = v703;
    if (v242)
    {
      v227 = v266;
      v656 = v225;
      v277 = v704[8];
      OUTLINED_FUNCTION_52_2(&v656);
      sub_1C8778810();
      v278 = OUTLINED_FUNCTION_193_0();
      v211 = v632;
      v280 = __swift_getEnumTagSinglePayload(v278, v279, v632);
      v236 = &unk_1C8BE8D90;
      sub_1C8778ED8(v225, &qword_1EC2B6940, &unk_1C8BE8D90);
      if (v280 != 1)
      {
        OUTLINED_FUNCTION_52_2(&v648);
        sub_1C8778810();
        OUTLINED_FUNCTION_219();
        OUTLINED_FUNCTION_76(v317, v318, v319);
        if (v234)
        {
          OUTLINED_FUNCTION_35_4(v649);
          MEMORY[0x1CCA7D9A0](v320, v321, v322);
          OUTLINED_FUNCTION_219();
          OUTLINED_FUNCTION_76(v323, v324, v325);
          if (!v234)
          {
            sub_1C8778ED8(v225, &qword_1EC2B6940, &unk_1C8BE8D90);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9(v631);
          v329(v624, v225, v211);
        }

        sub_1C8BD488C();
        OUTLINED_FUNCTION_22_9(v633);
        v330 = OUTLINED_FUNCTION_80_1();
        v331(v330);
      }

      v332 = v702;
      sub_1C8BD464C();
      v333 = OUTLINED_FUNCTION_65_5();
      v225 = v704;
      if ((v333 & 1) == 0)
      {
        v366 = *(v332 + 16);
        v367 = OUTLINED_FUNCTION_13_0();
        v332 = sub_1C87A8A00(v367, v368, v369, v332);
      }

      OUTLINED_FUNCTION_30_7();
      v190 = v688;
      if (v249)
      {
        v713 = OUTLINED_FUNCTION_15_7(v334);
      }

      else
      {
        v713 = v332;
      }

      v335 = OUTLINED_FUNCTION_47_4();
      v656(v335);
      v251 = &v659;
      goto LABEL_13;
    }

    v300 = v704[9];
    OUTLINED_FUNCTION_52_2(v653);
    v211 = &qword_1EC2B6948;
    v236 = &unk_1C8BF9F90;
    sub_1C8778810();
    v301 = OUTLINED_FUNCTION_193_0();
    v302 = v670;
    v304 = __swift_getEnumTagSinglePayload(v301, v303, v670);
    v305 = OUTLINED_FUNCTION_80_1();
    sub_1C8778ED8(v305, v306, &unk_1C8BF9F90);
    if (v304 == 1)
    {
      v307 = v702;
      sub_1C8BD463C();
      if ((OUTLINED_FUNCTION_65_5() & 1) == 0)
      {
        v370 = *(v307 + 16);
        v371 = OUTLINED_FUNCTION_13_0();
        v307 = sub_1C87A8A00(v371, v372, v373, v307);
      }

      OUTLINED_FUNCTION_58_3();
      OUTLINED_FUNCTION_30_7();
      v227 = v707;
      if (v249)
      {
        v713 = OUTLINED_FUNCTION_15_7(v308);
      }

      else
      {
        v713 = v307;
      }

      v309 = OUTLINED_FUNCTION_47_4();
      (v225)(v309);
      v251 = &v654;
LABEL_13:
      v252 = *(v251 - 32);
LABEL_48:
      v313 = v710;
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_52_2(v647);
    sub_1C8778810();
    OUTLINED_FUNCTION_73(v225);
    v326 = v623;
    v656 = v225;
    if (v234)
    {
      sub_1C8BD486C();
      OUTLINED_FUNCTION_73(v225);
      if (!v234)
      {
        v327 = OUTLINED_FUNCTION_80_1();
        sub_1C8778ED8(v327, v328, &unk_1C8BF9F90);
      }
    }

    else
    {
      OUTLINED_FUNCTION_22_9(&v663);
      v336(v326, v225, v302);
    }

    OUTLINED_FUNCTION_83_1();
    v337 = MEMORY[0x1CCA7DA50](v326, v276);
    v338 = *v660;
    (*v660)(v276, v302);
    v339 = v338;
    (v338)(v326, v302);
    v340 = v707;
    if (v337)
    {
      v225 = v704;
      v211 = v709;
      v341 = (v709 + v704[11]);
      v236 = v630;
      if (v341[1])
      {
        v342 = *v341;
        v343 = v341[1];
      }

      v353 = v621;

      OUTLINED_FUNCTION_55_4(&v728);
      sub_1C8BD44BC();
      OUTLINED_FUNCTION_218();
      sub_1C8BD454C();
      v340 = v707;
    }

    else
    {
      OUTLINED_FUNCTION_238(v636);
      sub_1C8778810();
      OUTLINED_FUNCTION_73(v300);
      v236 = v630;
      if (v234)
      {
        OUTLINED_FUNCTION_70_3(&v637);
        sub_1C8BD486C();
        OUTLINED_FUNCTION_73(v300);
        v225 = v339;
        if (!v234)
        {
          sub_1C8778ED8(v300, &qword_1EC2B6948, &unk_1C8BF9F90);
        }
      }

      else
      {
        OUTLINED_FUNCTION_22_9(&v663);
        v326 = v613[6];
        v344 = OUTLINED_FUNCTION_218();
        v345(v344);
        v225 = v339;
      }

      v215 = v326;
      v346 = sub_1C8BD484C();
      OUTLINED_FUNCTION_251_0();
      OUTLINED_FUNCTION_76_2();
      (v225)(v347, v348, v349);
      OUTLINED_FUNCTION_35_4(v638);
      sub_1C87A8910(v346, v350);
      v351 = OUTLINED_FUNCTION_155_0();
      v222 = v340;
      OUTLINED_FUNCTION_76(v351, v352, v340);
      v211 = v709;
      if (v234)
      {
        goto LABEL_193;
      }

      v663(v236, v215, v340);
      v353 = v621;
      v225 = v704;
    }

    sub_1C8BD467C();
    v354 = v702;
    sub_1C8BD463C();
    if ((OUTLINED_FUNCTION_65_5() & 1) == 0)
    {
      v374 = *(v354 + 16);
      v375 = OUTLINED_FUNCTION_13_0();
      v354 = sub_1C87A8A00(v375, v376, v377, v354);
    }

    OUTLINED_FUNCTION_30_7();
    if (v249)
    {
      v713 = OUTLINED_FUNCTION_15_7(v355);
    }

    else
    {
      v713 = v354;
    }

    v356 = v353;
    v227 = v340;
    v357 = v656;
    (v656)(v356, v340);
    v357(v630, v340);
    v357(v693, v340);
    v252 = v629;
    v313 = v710;
    v190 = v688;
LABEL_49:
    v222 = v708 + 1;
    sub_1C87A8B2C(v709, type metadata accessor for Siri_Nlu_External_UsoNode);
    *(v713 + 16) = v211;
    OUTLINED_FUNCTION_17_3();
    (*(v316 + 32))(v315 + v314 + *(v316 + 72) * v236, v252, v313);
    v40 = v712;
    v215 = v699;
    v229 = v687;
    v217 = v190;
    if (v690 == v222)
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_193:
  sub_1C8778ED8(v215, &qword_1EC2B87B8, &unk_1C8BF4890);
  OUTLINED_FUNCTION_49_4(&v673);
  Siri_Nlu_External_UsoNode.usoVerbElementID.getter();
  sub_1C8BD484C();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_2();
  (v225)(v608, v609, v610);
  sub_1C888D6F8();
  v611 = OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_53_4(v611, v612);

  (v656)(v693, v222);
LABEL_181:
  v589 = type metadata accessor for Siri_Nlu_External_UsoNode;
LABEL_183:
  v591 = v589;
  v592 = v211;
LABEL_184:
  sub_1C87A8B2C(v592, v591);
LABEL_185:
}