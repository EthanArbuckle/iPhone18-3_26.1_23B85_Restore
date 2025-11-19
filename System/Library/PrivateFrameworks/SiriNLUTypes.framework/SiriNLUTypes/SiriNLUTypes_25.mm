uint64_t Siri_Nlu_Internal_OvertonKGSpanData.confidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v2) + 24);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.features.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v2) + 20);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Siri_Nlu_Internal_OvertonKGSpanData.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v0) + 20);
  return nullsub_1;
}

double sub_1C89FA8D8(uint64_t (*a1)(void))
{
  v1 = a1(0);
  result = OUTLINED_FUNCTION_2_12(*(v1 + 20));
  if (!v4)
  {
    return v3;
  }

  return result;
}

void Siri_Nlu_Internal_MentionDetectorSpanData.score.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 20));
}

uint64_t Siri_Nlu_Internal_MentionDetectorSpanData.score.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(v2) + 20);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

void Siri_Nlu_Internal_MentionResolverSpanData.jointScore.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 20));
}

uint64_t Siri_Nlu_Internal_MentionResolverSpanData.jointScore.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v2) + 20);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

void Siri_Nlu_Internal_MentionResolverSpanData.modelScore.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 24));
}

uint64_t Siri_Nlu_Internal_MentionResolverSpanData.modelScore.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v2) + 24);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t sub_1C89FABDC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4A38);
  __swift_project_value_buffer(v0, qword_1EC2B4A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start_token_index";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "end_token_index";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "uso_graph";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "matcher_names";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "internal_span_data";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "semantic_value";
  *(v23 + 1) = 14;
  v23[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89FAF54()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_MatchingSpan._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C89FAF94();
  qword_1EC2B4A70 = result;
  return result;
}

uint64_t sub_1C89FAF94()
{
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 60) = 1;
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  v4 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  *v5 = 0;
  v5[1] = 0;
  return v0;
}

uint64_t sub_1C89FB0DC()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C89FB130()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C89FB184()
{
  swift_beginAccess();
  sub_1C8BD4C3C();
  return swift_endAccess();
}

uint64_t sub_1C89FB208()
{
  swift_beginAccess();
  sub_1C8BD4C3C();
  return swift_endAccess();
}

uint64_t sub_1C89FB28C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C87769C8(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89FB368()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  sub_1C87769C8(&qword_1EC2B3028, type metadata accessor for Siri_Nlu_Internal_InternalSpanData);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_MatchingSpan.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0) + 20));
  OUTLINED_FUNCTION_119();
  result = sub_1C89FB4A8(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C89FB4A8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD48, &qword_1C8C0C1E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = v30 - v6;
  v32 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  v7 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v30[1] = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v30 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  swift_beginAccess();
  if (!*(a1 + 24) || (v15 = *(a1 + 16), v16 = *(a1 + 24), , sub_1C8BD4DDC(), result = , !v2))
  {
    swift_beginAccess();
    if (!*(a1 + 40) || (v18 = *(a1 + 32), v19 = *(a1 + 40), , sub_1C8BD4DDC(), result = , !v2))
    {
      swift_beginAccess();
      if ((*(a1 + 52) & 1) != 0 || (v20 = *(a1 + 48), result = sub_1C8BD4DEC(), !v2))
      {
        swift_beginAccess();
        if ((*(a1 + 60) & 1) != 0 || (v21 = *(a1 + 56), result = sub_1C8BD4DEC(), !v2))
        {
          v22 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
          swift_beginAccess();
          sub_1C87867A0(a1 + v22, v12, &qword_1EC2B61D0, &qword_1C8C0C1E0);
          if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
          {
            sub_1C8778ED8(v12, &qword_1EC2B61D0, &qword_1C8C0C1E0);
          }

          else
          {
            sub_1C89FB0DC();
            sub_1C87769C8(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph);
            sub_1C8BD4E2C();
            result = sub_1C87A8BDC();
            if (v2)
            {
              return result;
            }
          }

          v23 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
          swift_beginAccess();
          v24 = v32;
          v25 = v31;
          if (!*(*(a1 + v23) + 16) || (sub_1C8793528(), , sub_1C8BD4D2C(), result = , !v2))
          {
            v26 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
            swift_beginAccess();
            sub_1C87867A0(a1 + v26, v25, &qword_1EC2BDD48, &qword_1C8C0C1E8);
            if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
            {
              sub_1C8778ED8(v25, &qword_1EC2BDD48, &qword_1C8C0C1E8);
            }

            else
            {
              sub_1C89FB0DC();
              sub_1C87769C8(&qword_1EC2B3028, type metadata accessor for Siri_Nlu_Internal_InternalSpanData);
              sub_1C8BD4E2C();
              result = sub_1C87A8BDC();
              if (v2)
              {
                return result;
              }
            }

            v27 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
            result = swift_beginAccess();
            if (v27[1])
            {
              v28 = *v27;
              v29 = v27[1];

              sub_1C8BD4DDC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MatchingSpan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_11();
  if (*(a1 + v4) != *(a2 + v4))
  {
    v5 = *(a1 + v4);

    sub_1C89FBAF0();
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  sub_1C87769C8(v8, v9);
  return OUTLINED_FUNCTION_159() & 1;
}

void sub_1C89FBAF0()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v84 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  v4 = OUTLINED_FUNCTION_21(v84);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  v81 = v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDE88, &unk_1C8C0CF70);
  OUTLINED_FUNCTION_21(v83);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v85 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD48, &qword_1C8C0C1E8);
  v13 = OUTLINED_FUNCTION_80(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v82 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v81 - v18;
  v19 = OUTLINED_FUNCTION_86();
  v20 = type metadata accessor for Siri_Nlu_External_UsoGraph(v19);
  v21 = OUTLINED_FUNCTION_21(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_21(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_81();
  v87 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v30 = OUTLINED_FUNCTION_80(v29);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v81 - v36;
  OUTLINED_FUNCTION_277();
  v38 = *(v3 + 16);
  v39 = *(v3 + 24);
  OUTLINED_FUNCTION_277();
  v40 = *(v1 + 24);
  if (v39)
  {
    if (!v40)
    {
      goto LABEL_61;
    }

    v41 = v38 == *(v1 + 16) && v39 == v40;
    if (!v41 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else if (v40)
  {
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_277();
  v42 = *(v3 + 32);
  v43 = *(v3 + 40);
  OUTLINED_FUNCTION_277();
  v44 = *(v1 + 40);
  if (v43)
  {
    if (!v44)
    {
      goto LABEL_61;
    }

    v45 = v42 == *(v1 + 32) && v43 == v44;
    if (!v45 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else if (v44)
  {
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_277();
  v46 = *(v3 + 48);
  v47 = *(v3 + 52);
  OUTLINED_FUNCTION_277();
  v48 = *(v1 + 52);
  if (v47)
  {
    if (!*(v1 + 52))
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v46 != *(v1 + 48))
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_61;
    }
  }

  OUTLINED_FUNCTION_277();
  v49 = *(v3 + 56);
  v50 = *(v3 + 60);
  OUTLINED_FUNCTION_277();
  v51 = *(v1 + 60);
  if (v50)
  {
    if (!*(v1 + 60))
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v49 != *(v1 + 56))
    {
      v51 = 1;
    }

    if (v51)
    {
      goto LABEL_61;
    }
  }

  v52 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  OUTLINED_FUNCTION_277();
  sub_1C87867A0(v3 + v52, v37, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v53 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  OUTLINED_FUNCTION_277();
  v54 = *(v24 + 48);
  v55 = v87;
  sub_1C87867A0(v37, v87, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  sub_1C87867A0(v1 + v53, v55 + v54, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_73(v55);
  if (!v41)
  {
    sub_1C87867A0(v55, v35, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_73(v55 + v54);
    if (!v56)
    {
      sub_1C89FB0DC();

      static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
      v61 = v60;
      sub_1C87A8BDC();
      sub_1C8778ED8(v37, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      sub_1C87A8BDC();
      sub_1C8778ED8(v55, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      if ((v61 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_42;
    }

    sub_1C8778ED8(v37, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    sub_1C87A8BDC();
LABEL_39:
    v57 = &qword_1EC2B5FD8;
    v58 = &unk_1C8BE6C90;
    v59 = v55;
LABEL_40:
    sub_1C8778ED8(v59, v57, v58);
    goto LABEL_60;
  }

  sub_1C8778ED8(v37, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_73(v55 + v54);
  if (!v41)
  {
    goto LABEL_39;
  }

  sub_1C8778ED8(v55, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_42:
  v62 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
  OUTLINED_FUNCTION_277();
  v63 = *(v3 + v62);
  v64 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
  OUTLINED_FUNCTION_277();
  if ((sub_1C87E4684(v63, *(v1 + v64)) & 1) == 0)
  {
    goto LABEL_60;
  }

  v65 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  OUTLINED_FUNCTION_277();
  v66 = v86;
  sub_1C87867A0(v3 + v65, v86, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  v67 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  OUTLINED_FUNCTION_277();
  v68 = *(v83 + 48);
  v69 = v85;
  sub_1C87867A0(v66, v85, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  sub_1C87867A0(v1 + v67, v69 + v68, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  if (__swift_getEnumTagSinglePayload(v69, 1, v84) == 1)
  {
    sub_1C8778ED8(v66, &qword_1EC2BDD48, &qword_1C8C0C1E8);
    OUTLINED_FUNCTION_72(v69 + v68);
    if (!v41)
    {
      goto LABEL_50;
    }

    sub_1C8778ED8(v69, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  }

  else
  {
    sub_1C87867A0(v69, v82, &qword_1EC2BDD48, &qword_1C8C0C1E8);
    OUTLINED_FUNCTION_72(v69 + v68);
    if (v41)
    {
      sub_1C8778ED8(v86, &qword_1EC2BDD48, &qword_1C8C0C1E8);
      sub_1C87A8BDC();
LABEL_50:
      v57 = &qword_1EC2BDE88;
      v58 = &unk_1C8C0CF70;
      v59 = v69;
      goto LABEL_40;
    }

    sub_1C89FB0DC();
    static Siri_Nlu_Internal_InternalSpanData.== infix(_:_:)();
    v71 = v70;
    sub_1C87A8BDC();
    sub_1C8778ED8(v86, &qword_1EC2BDD48, &qword_1C8C0C1E8);
    sub_1C87A8BDC();
    sub_1C8778ED8(v69, &qword_1EC2BDD48, &qword_1C8C0C1E8);
    if ((v71 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v72 = (v3 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  OUTLINED_FUNCTION_277();
  v73 = *v72;
  v74 = v72[1];
  v75 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  OUTLINED_FUNCTION_277();
  v76 = v75[1];
  if (v74)
  {
    if (v76)
    {
      if (v73 == *v75 && v74 == v76)
      {
        v80 = v75[1];
      }

      else
      {
        v78 = v75[1];
        sub_1C8BD529C();
      }

      goto LABEL_61;
    }

LABEL_60:

    goto LABEL_61;
  }

  v79 = v75[1];

  if (v76)
  {
  }

LABEL_61:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89FC3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE80, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FC428(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FC498()
{
  sub_1C87769C8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FC518()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4AB8);
  __swift_project_value_buffer(v0, qword_1EC2B4AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BFA930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DATADETECTOR_MATCHER";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLUM_MATCHER";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SIRI_VOCABULARY_MATCHER";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VOC_TRIE_MATCHER";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTEXT_MATCHER";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "OVERTON_KG_MATCHER";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "MRR_DETECTOR";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "MRR_MATCHER";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "REGEX_MATCHER";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89FC8D0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3038);
  __swift_project_value_buffer(v0, qword_1EC2B3038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siri_vocabulary_span_data";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "plum_span_data";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "overton_kg_span_data";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mention_detector_span_data";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "mention_resolver_span_data";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_InternalSpanData.decodeMessage<A>(decoder:)()
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
        sub_1C89FCC24();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C89FCCD8();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C89FCD8C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C89FCE40();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C89FCEF4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89FCC24()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  sub_1C87769C8(&qword_1EC2B34A8, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89FCCD8()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0) + 24);
  type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
  sub_1C87769C8(&qword_1EC2BDD90, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89FCD8C()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0) + 28);
  type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
  sub_1C87769C8(&qword_1EC2BDD88, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89FCE40()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0) + 32);
  type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(0);
  sub_1C87769C8(&qword_1EC2B3F10, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89FCEF4()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0) + 36);
  type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
  sub_1C87769C8(&qword_1EC2BDD80, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_InternalSpanData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a2;
  v74 = a3;
  v75 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD70, &qword_1C8C0C210);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81();
  v66 = v9;
  v10 = OUTLINED_FUNCTION_86();
  v64 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v10);
  v11 = OUTLINED_FUNCTION_21(v64);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v63[0] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD68, &qword_1C8C0C208);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_81();
  v69 = v19;
  v20 = OUTLINED_FUNCTION_86();
  v70 = type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(v20);
  v21 = OUTLINED_FUNCTION_21(v70);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_0();
  v63[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD60, &qword_1C8C0C200);
  OUTLINED_FUNCTION_80(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_81();
  v67 = v29;
  v30 = OUTLINED_FUNCTION_86();
  v68 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v30);
  v31 = OUTLINED_FUNCTION_21(v68);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_0();
  v65 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD58, &qword_1C8C0C1F8);
  OUTLINED_FUNCTION_80(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v63 - v39;
  v71 = type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
  v41 = OUTLINED_FUNCTION_21(v71);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_33();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD50, &qword_1C8C0C1F0);
  OUTLINED_FUNCTION_80(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v47);
  v48 = OUTLINED_FUNCTION_170();
  v49 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(v48);
  v50 = OUTLINED_FUNCTION_21(v49);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_33();
  v76 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  sub_1C87867A0(v4 + v76[5], v3, &qword_1EC2BDD50, &qword_1C8C0C1F0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v49) == 1)
  {
    sub_1C8778ED8(v3, &qword_1EC2BDD50, &qword_1C8C0C1F0);
    v53 = v72;
  }

  else
  {
    sub_1C89FB0DC();
    sub_1C87769C8(&qword_1EC2B34A8, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData);
    v54 = v72;
    sub_1C8BD4E2C();
    v53 = v54;
    result = sub_1C87A8BDC();
    if (v54)
    {
      return result;
    }
  }

  sub_1C87867A0(v4 + v76[6], v40, &qword_1EC2BDD58, &qword_1C8C0C1F8);
  if (__swift_getEnumTagSinglePayload(v40, 1, v71) == 1)
  {
    sub_1C8778ED8(v40, &qword_1EC2BDD58, &qword_1C8C0C1F8);
  }

  else
  {
    OUTLINED_FUNCTION_62_8();
    sub_1C89FB0DC();
    sub_1C87769C8(&qword_1EC2BDD90, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData);
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_121();
    result = sub_1C87A8BDC();
    if (v53)
    {
      return result;
    }
  }

  v56 = v67;
  v57 = v68;
  v58 = v76[7];
  v75 = v4;
  sub_1C87867A0(v4 + v58, v67, &qword_1EC2BDD60, &qword_1C8C0C200);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v57);
  v60 = v69;
  v61 = v70;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v56, &qword_1EC2BDD60, &qword_1C8C0C200);
  }

  else
  {
    OUTLINED_FUNCTION_61_7();
    sub_1C89FB0DC();
    sub_1C87769C8(&qword_1EC2BDD88, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData);
    sub_1C8BD4E2C();
    result = sub_1C87A8BDC();
    if (v53)
    {
      return result;
    }
  }

  sub_1C87867A0(v75 + v76[8], v60, &qword_1EC2BDD68, &qword_1C8C0C208);
  if (__swift_getEnumTagSinglePayload(v60, 1, v61) == 1)
  {
    sub_1C8778ED8(v60, &qword_1EC2BDD68, &qword_1C8C0C208);
    v62 = v66;
  }

  else
  {
    OUTLINED_FUNCTION_60_5();
    sub_1C89FB0DC();
    sub_1C87769C8(&qword_1EC2B3F10, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData);
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_121();
    result = sub_1C87A8BDC();
    v62 = v66;
    if (v53)
    {
      return result;
    }
  }

  sub_1C87867A0(v75 + v76[9], v62, &qword_1EC2BDD70, &qword_1C8C0C210);
  if (__swift_getEnumTagSinglePayload(v62, 1, v64) == 1)
  {
    sub_1C8778ED8(v62, &qword_1EC2BDD70, &qword_1C8C0C210);
  }

  else
  {
    OUTLINED_FUNCTION_59_8();
    sub_1C89FB0DC();
    sub_1C87769C8(&qword_1EC2BDD80, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData);
    sub_1C8BD4E2C();
    result = sub_1C87A8BDC();
    if (v53)
    {
      return result;
    }
  }

  return sub_1C8BD49DC();
}

void static Siri_Nlu_Internal_InternalSpanData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v136 = v1;
  v137 = v2;
  v121 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
  v3 = OUTLINED_FUNCTION_21(v121);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_0();
  v117 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD70, &qword_1C8C0C210);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v118 = v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD98, &qword_1C8C0C218);
  OUTLINED_FUNCTION_21(v120);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_81();
  v122 = v15;
  v16 = OUTLINED_FUNCTION_86();
  v126 = type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(v16);
  v17 = OUTLINED_FUNCTION_21(v126);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  v119 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD68, &qword_1C8C0C208);
  OUTLINED_FUNCTION_80(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_81();
  v123 = v25;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDDA0, &qword_1C8C0C220);
  OUTLINED_FUNCTION_21(v125);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_81();
  v127 = v29;
  v30 = OUTLINED_FUNCTION_86();
  v131 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v30);
  v31 = OUTLINED_FUNCTION_21(v131);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_0();
  v124 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD60, &qword_1C8C0C200);
  OUTLINED_FUNCTION_80(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_81();
  v128 = v39;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDDA8, &qword_1C8C0C228);
  OUTLINED_FUNCTION_21(v130);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_81();
  v132 = v43;
  v44 = OUTLINED_FUNCTION_86();
  v134 = type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(v44);
  v45 = OUTLINED_FUNCTION_21(v134);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9_0();
  v129 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD58, &qword_1C8C0C1F8);
  OUTLINED_FUNCTION_80(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_81();
  v133 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDDB0, &qword_1C8C0C230);
  OUTLINED_FUNCTION_21(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v117 - v58;
  v60 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  v61 = OUTLINED_FUNCTION_21(v60);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_33();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD50, &qword_1C8C0C1F0);
  OUTLINED_FUNCTION_80(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_60_1();
  v68 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDDB8, &qword_1C8C0C238) - 8);
  v69 = *(*v68 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v117 - v71;
  v135 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  v73 = *(v135 + 20);
  v74 = v68[14];
  sub_1C87867A0(v136 + v73, v72, &qword_1EC2BDD50, &qword_1C8C0C1F0);
  sub_1C87867A0(v137 + v73, &v72[v74], &qword_1EC2BDD50, &qword_1C8C0C1F0);
  OUTLINED_FUNCTION_73(v72);
  if (v75)
  {
    OUTLINED_FUNCTION_73(&v72[v74]);
    if (v75)
    {
      sub_1C8778ED8(v72, &qword_1EC2BDD50, &qword_1C8C0C1F0);
      goto LABEL_11;
    }

LABEL_9:
    v76 = &qword_1EC2BDDB8;
    v77 = &qword_1C8C0C238;
    v78 = v72;
LABEL_26:
    sub_1C8778ED8(v78, v76, v77);
    goto LABEL_27;
  }

  sub_1C87867A0(v72, v0, &qword_1EC2BDD50, &qword_1C8C0C1F0);
  OUTLINED_FUNCTION_73(&v72[v74]);
  if (v75)
  {
    sub_1C87A8BDC();
    goto LABEL_9;
  }

  sub_1C89FB0DC();
  v79 = static Siri_Nlu_Internal_SiriVocabularySpanData.== infix(_:_:)();
  sub_1C87A8BDC();
  OUTLINED_FUNCTION_121();
  sub_1C87A8BDC();
  sub_1C8778ED8(v72, &qword_1EC2BDD50, &qword_1C8C0C1F0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  v81 = v135;
  v80 = v136;
  v82 = *(v135 + 24);
  v83 = *(v54 + 48);
  sub_1C87867A0(v136 + v82, v59, &qword_1EC2BDD58, &qword_1C8C0C1F8);
  v84 = v137;
  sub_1C87867A0(v137 + v82, &v59[v83], &qword_1EC2BDD58, &qword_1C8C0C1F8);
  OUTLINED_FUNCTION_124_1(v59, 1);
  if (v75)
  {
    OUTLINED_FUNCTION_24(&v59[v83]);
    if (v75)
    {
      sub_1C8778ED8(v59, &qword_1EC2BDD58, &qword_1C8C0C1F8);
      goto LABEL_16;
    }

LABEL_24:
    v76 = &qword_1EC2BDDB0;
    v77 = &qword_1C8C0C230;
LABEL_25:
    v78 = v59;
    goto LABEL_26;
  }

  sub_1C87867A0(v59, v133, &qword_1EC2BDD58, &qword_1C8C0C1F8);
  OUTLINED_FUNCTION_24(&v59[v83]);
  if (v88)
  {
    sub_1C87A8BDC();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_4_21();
  sub_1C89FB0DC();
  OUTLINED_FUNCTION_87_4();
  if (v90)
  {
    if (!v89)
    {
LABEL_30:
      OUTLINED_FUNCTION_62_8();
      sub_1C87A8BDC();
      sub_1C87A8BDC();
      v76 = &qword_1EC2BDD58;
      v77 = &qword_1C8C0C1F8;
      goto LABEL_25;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v92)
    {
      goto LABEL_30;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  sub_1C87769C8(v93, v94);
  v95 = OUTLINED_FUNCTION_104_4();
  sub_1C87A8BDC();
  sub_1C87A8BDC();
  sub_1C8778ED8(v59, &qword_1EC2BDD58, &qword_1C8C0C1F8);
  if ((v95 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v85 = v81[7];
  v86 = *(v130 + 48);
  v87 = v132;
  OUTLINED_FUNCTION_96_4(v80 + v85);
  OUTLINED_FUNCTION_95_4(v84 + v85);
  OUTLINED_FUNCTION_124_1(v87, 1);
  if (v75)
  {
    OUTLINED_FUNCTION_24(v87 + v86);
    if (v75)
    {
      sub_1C8778ED8(v87, &qword_1EC2BDD60, &qword_1C8C0C200);
      goto LABEL_39;
    }

LABEL_34:
    v76 = &qword_1EC2BDDA8;
    v77 = &qword_1C8C0C228;
    v78 = v87;
    goto LABEL_26;
  }

  sub_1C87867A0(v87, v128, &qword_1EC2BDD60, &qword_1C8C0C200);
  OUTLINED_FUNCTION_24(v87 + v86);
  if (v91)
  {
    sub_1C87A8BDC();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_61_7();
  sub_1C89FB0DC();
  OUTLINED_FUNCTION_184();
  v96 = static Siri_Nlu_Internal_OvertonKGSpanData.== infix(_:_:)();
  OUTLINED_FUNCTION_196_0();
  sub_1C87A8BDC();
  OUTLINED_FUNCTION_121();
  sub_1C87A8BDC();
  sub_1C8778ED8(v87, &qword_1EC2BDD60, &qword_1C8C0C200);
  if ((v96 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_39:
  v97 = v81[8];
  v98 = *(v125 + 48);
  v99 = v127;
  OUTLINED_FUNCTION_96_4(v80 + v97);
  v100 = v84 + v97;
  v101 = v99;
  OUTLINED_FUNCTION_95_4(v100);
  OUTLINED_FUNCTION_124_1(v99, 1);
  if (v75)
  {
    OUTLINED_FUNCTION_24(v99 + v98);
    if (v75)
    {
      sub_1C8778ED8(v99, &qword_1EC2BDD68, &qword_1C8C0C208);
      goto LABEL_44;
    }

LABEL_52:
    v76 = &qword_1EC2BDDA0;
    v77 = &qword_1C8C0C220;
LABEL_60:
    v78 = v101;
    goto LABEL_26;
  }

  sub_1C87867A0(v99, v123, &qword_1EC2BDD68, &qword_1C8C0C208);
  OUTLINED_FUNCTION_24(v99 + v98);
  if (v106)
  {
    sub_1C87A8BDC();
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_3_16();
  sub_1C89FB0DC();
  OUTLINED_FUNCTION_87_4();
  if (v108)
  {
    if (!v107)
    {
LABEL_55:
      OUTLINED_FUNCTION_60_5();
      sub_1C87A8BDC();
      sub_1C87A8BDC();
      v76 = &qword_1EC2BDD68;
      v77 = &qword_1C8C0C208;
      goto LABEL_60;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v110)
    {
      goto LABEL_55;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  sub_1C87769C8(v111, v112);
  v113 = OUTLINED_FUNCTION_104_4();
  sub_1C87A8BDC();
  sub_1C87A8BDC();
  sub_1C8778ED8(v99, &qword_1EC2BDD68, &qword_1C8C0C208);
  if ((v113 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_44:
  v102 = v81[9];
  v103 = *(v120 + 48);
  v104 = v122;
  OUTLINED_FUNCTION_96_4(v80 + v102);
  v105 = v84 + v102;
  v101 = v104;
  OUTLINED_FUNCTION_95_4(v105);
  OUTLINED_FUNCTION_124_1(v104, 1);
  if (v75)
  {
    OUTLINED_FUNCTION_24(v104 + v103);
    if (v75)
    {
      sub_1C8778ED8(v104, &qword_1EC2BDD70, &qword_1C8C0C210);
LABEL_65:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_21();
      sub_1C87769C8(v115, v116);
      sub_1C8BD517C();
      goto LABEL_27;
    }

LABEL_59:
    v76 = &qword_1EC2BDD98;
    v77 = &qword_1C8C0C218;
    goto LABEL_60;
  }

  sub_1C87867A0(v104, v118, &qword_1EC2BDD70, &qword_1C8C0C210);
  OUTLINED_FUNCTION_24(v104 + v103);
  if (v109)
  {
    sub_1C87A8BDC();
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_59_8();
  sub_1C89FB0DC();
  v114 = static Siri_Nlu_Internal_MentionResolverSpanData.== infix(_:_:)();
  OUTLINED_FUNCTION_196_0();
  sub_1C87A8BDC();
  sub_1C87A8BDC();
  sub_1C8778ED8(v104, &qword_1EC2BDD70, &qword_1C8C0C210);
  if (v114)
  {
    goto LABEL_65;
  }

LABEL_27:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89FE2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE78, type metadata accessor for Siri_Nlu_Internal_InternalSpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FE374(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2B3028, type metadata accessor for Siri_Nlu_Internal_InternalSpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FE3E4()
{
  sub_1C87769C8(&qword_1EC2B3028, type metadata accessor for Siri_Nlu_Internal_InternalSpanData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FE47C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B34B8);
  __swift_project_value_buffer(v0, qword_1EC2B34B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prior_ordinality";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prior_score";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "match_score";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SiriVocabularySpanData.decodeMessage<A>(decoder:)()
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
        sub_1C89FE798();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C89FF0F4();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C89FE734();
        break;
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriVocabularySpanData.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  v3 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(v2);
  v4 = (v1 + v3[5]);
  if ((v4[1] & 1) != 0 || (v5 = *v4, result = sub_1C8BD4DEC(), !v0))
  {
    OUTLINED_FUNCTION_468(v3[6]);
    if ((v8 & 1) != 0 || (v9 = *v7, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
    {
      OUTLINED_FUNCTION_468(v3[7]);
      if ((v11 & 1) != 0 || (v12 = *v10, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
      {
        OUTLINED_FUNCTION_55();
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SiriVocabularySpanData.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(v2);
  v4 = *(v3 + 20);
  v5 = (v1 + v4);
  v6 = *(v1 + v4 + 4);
  v7 = (v0 + v4);
  v8 = *(v0 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0(*(v3 + 24));
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v12)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0(*(v9 + 28));
  if (v14)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v16)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  sub_1C87769C8(v17, v18);
  return OUTLINED_FUNCTION_159() & 1;
}

uint64_t sub_1C89FEA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE70, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FEAC0(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2B34A8, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FEB30()
{
  sub_1C87769C8(&qword_1EC2B34A8, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FED04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE68, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FED84(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2BDD90, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FEDF4()
{
  sub_1C87769C8(&qword_1EC2BDD90, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FEE8C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDD18);
  __swift_project_value_buffer(v0, qword_1EC2BDD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "confidence";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "features";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4BDC();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89FF0F4();
    }
  }

  return result;
}

uint64_t sub_1C89FF0F4()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = *(v1(v0) + 24);
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4BFC();
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
  v3 = (v0 + *(v2 + 24));
  if ((v3[1] & 1) != 0 || (v4 = *v3, OUTLINED_FUNCTION_119(), result = sub_1C8BD4DCC(), !v1))
  {
    if (!*(*v0 + 16) || (result = sub_1C8BD4DAC(), !v1))
    {
      v6 = v0 + *(v2 + 20);
      OUTLINED_FUNCTION_119();
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_OvertonKGSpanData.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v2);
  OUTLINED_FUNCTION_4_0(*(v3 + 24));
  if (v5)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v6)
    {
      return 0;
    }
  }

  if (sub_1C87D2814(*v1, *v0))
  {
    v7 = *(v3 + 20);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_21();
    sub_1C87769C8(v8, v9);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t sub_1C89FF36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE60, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FF3EC(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2BDD88, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FF45C()
{
  sub_1C87769C8(&qword_1EC2BDD88, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FF500(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C8BE6F30;
  v8 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v8 = "score";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADC8];
  v10 = sub_1C8BD50FC();
  OUTLINED_FUNCTION_21(v10);
  (*(v11 + 104))(v8, v9);
  return sub_1C8BD510C();
}

uint64_t sub_1C89FF6B0()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C89FF728();
    }
  }

  return result;
}

uint64_t sub_1C89FF728()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = *(v1(v0) + 20);
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4BFC();
}

uint64_t sub_1C89FF7A4()
{
  v1 = OUTLINED_FUNCTION_72_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_468(*(v3 + 20));
  if ((v5 & 1) != 0 || (v6 = *v4, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
  {
    OUTLINED_FUNCTION_55();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C89FF838()
{
  v0 = OUTLINED_FUNCTION_84();
  v2 = v1(v0);
  OUTLINED_FUNCTION_4_0(*(v2 + 20));
  if (v4)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v6)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  sub_1C87769C8(v7, v8);
  return OUTLINED_FUNCTION_159() & 1;
}

uint64_t sub_1C89FF95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE58, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FF9DC(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2B3F10, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FFA4C()
{
  sub_1C87769C8(&qword_1EC2B3F10, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FFAE4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDD30);
  __swift_project_value_buffer(v0, qword_1EC2BDD30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "joint_score";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_score";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_MentionResolverSpanData.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89FF0F4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89FF728();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_MentionResolverSpanData.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_72_4();
  v2 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v1);
  OUTLINED_FUNCTION_468(*(v2 + 20));
  if ((v4 & 1) != 0 || (v5 = *v3, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
  {
    OUTLINED_FUNCTION_468(*(v2 + 24));
    if ((v8 & 1) != 0 || (v9 = *v7, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
    {
      OUTLINED_FUNCTION_55();
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MentionResolverSpanData.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v0);
  OUTLINED_FUNCTION_4_0(*(v1 + 20));
  if (v4)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v5)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0(*(v2 + 24));
  if (v7)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v9)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  sub_1C87769C8(v10, v11);
  return OUTLINED_FUNCTION_159() & 1;
}

uint64_t sub_1C89FFEE8(void (*a1)(void))
{
  sub_1C8BD530C();
  a1(0);
  v2 = OUTLINED_FUNCTION_184();
  sub_1C87769C8(v2, v3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C89FFFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE50, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A00040(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2BDD80, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A000B0()
{
  sub_1C87769C8(&qword_1EC2BDD80, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData);

  return sub_1C8BD4CFC();
}

unint64_t sub_1C8A00134()
{
  result = qword_1EC2B4A98;
  if (!qword_1EC2B4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4A98);
  }

  return result;
}

unint64_t sub_1C8A0018C()
{
  result = qword_1EC2B4AA0;
  if (!qword_1EC2B4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4AA0);
  }

  return result;
}

unint64_t sub_1C8A001E4()
{
  result = qword_1EC2B4A90;
  if (!qword_1EC2B4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4A90);
  }

  return result;
}

unint64_t sub_1C8A0023C()
{
  result = qword_1EC2BDDF0;
  if (!qword_1EC2BDDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2BDDF8, &qword_1C8C0C328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDDF0);
  }

  return result;
}

uint64_t sub_1C8A00AA8()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_MatchingSpan._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_MatchingSpan.MatcherName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

void sub_1C8A00C08()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A00D78(319, &qword_1EC2B4558, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData);
    if (v1 <= 0x3F)
    {
      sub_1C8A00D78(319, &qword_1EC2B49F8, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData);
      if (v2 <= 0x3F)
      {
        sub_1C8A00D78(319, &qword_1EC2B4830, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData);
        if (v3 <= 0x3F)
        {
          sub_1C8A00D78(319, &qword_1EC2B4628, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData);
          if (v4 <= 0x3F)
          {
            sub_1C8A00D78(319, &qword_1EC2B4610, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData);
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

void sub_1C8A00D78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C8A00DF4()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A0108C(319, &qword_1EDACD380, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C8A0108C(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A00F00()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A0108C(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A00FA8()
{
  sub_1C8A0108C(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8A0108C(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A0108C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C8A0112C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A0108C(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A011DC()
{
  sub_1C8A00D78(319, qword_1EDACDE58, type metadata accessor for Siri_Nlu_External_UsoGraph);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C8A00D78(319, &qword_1EC2B4528, type metadata accessor for Siri_Nlu_Internal_InternalSpanData);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_21@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = v1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_68_5()
{
  v1 = *(v0 + *(type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_87_4()
{
  v3 = *(v0 + 20);
  v4 = *(v2 + v3 + 8);
  v5 = *(v1 + v3 + 8);
}

uint64_t OUTLINED_FUNCTION_95_4(uint64_t a1)
{

  return sub_1C87867A0(a1, v4 + v3, v1, v2);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.value.getter()
{
  OUTLINED_FUNCTION_42_7();
  v2 = (v0 + v1);
  if (v2[1])
  {
    OUTLINED_FUNCTION_20(v2);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A01418(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Queryrewrite_QRToken.value.setter();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.value.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.value.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRToken.clearValue()()
{
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_25_2(v1);
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.startIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.startIndex.setter(int a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  result = OUTLINED_FUNCTION_25_0(v2);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRToken.startIndex.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2) + 24);
  *(v1 + 12) = v3;
  OUTLINED_FUNCTION_4(v3);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  *(v1 + 8) = v6;
  return sub_1C87FE8F0;
}

BOOL Siri_Nlu_Internal_Queryrewrite_QRToken.hasStartIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_25_0(v0);
  return (*(v1 + 4) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRToken.clearStartIndex()()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_25_0(v0);
  OUTLINED_FUNCTION_16_3(v1);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.endIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.endIndex.setter(int a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  result = OUTLINED_FUNCTION_26_3(v2);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRToken.endIndex.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2) + 28);
  *(v1 + 12) = v3;
  OUTLINED_FUNCTION_4(v3);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  *(v1 + 8) = v6;
  return sub_1C8801920;
}

BOOL Siri_Nlu_Internal_Queryrewrite_QRToken.hasEndIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_26_3(v0);
  return (*(v1 + 4) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRToken.clearEndIndex()()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_26_3(v0);
  OUTLINED_FUNCTION_16_3(v1);
}

double Siri_Nlu_Internal_Queryrewrite_QRToken.asrConfidence.getter()
{
  OUTLINED_FUNCTION_63_4();
  result = OUTLINED_FUNCTION_2_12(v0);
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.asrConfidence.setter(double a1)
{
  result = OUTLINED_FUNCTION_63_4();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.asrConfidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2) + 32);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.phoneSequence.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_25_4(v0);
  if (v1[1])
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A01864(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Queryrewrite_QRToken.phoneSequence.setter();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.phoneSequence.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 36));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.phoneSequence.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 36)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRToken.clearPhoneSequence()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 36));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.removeSpaceAfter.setter(char a1)
{
  result = OUTLINED_FUNCTION_62_9();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRToken.removeSpaceAfter.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 40));
  return OUTLINED_FUNCTION_158;
}

void Siri_Nlu_Internal_Queryrewrite_QRToken.init()(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_18_2(v2);
  OUTLINED_FUNCTION_16_3(a1 + *(v3 + 24));
  v5 = a1 + *(v4 + 28);
  *v5 = 0;
  *(v5 + 4) = v6;
  OUTLINED_FUNCTION_38(*(v4 + 32));
  *(v7 + 8) = v8;
  OUTLINED_FUNCTION_18_2(*(v9 + 36));
  *(a1 + *(v10 + 40)) = 2;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v7);
  OUTLINED_FUNCTION_67(*(v8 + 28));
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_82_1(v10, v11);
  if (!v12)
  {
    return sub_1C87E8E5C(v1, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_15_2(v9[5]);
  OUTLINED_FUNCTION_15_2(v9[6]);
  *(a1 + v9[7]) = 6;
  v13 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_82_1(v13, v14);
  if (!v12)
  {
    return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.asrID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v2) + 28);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRUtterance.asrID.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0) + 28);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C87E8E5C(v6, v10);
  }

  return sub_1C8825A68;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.hasAsrID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v7);
  OUTLINED_FUNCTION_67(*(v8 + 28));
  type metadata accessor for Siri_Nlu_External_UUID();
  v9 = OUTLINED_FUNCTION_120();
  __swift_getEnumTagSinglePayload(v9, v10, v11);
  OUTLINED_FUNCTION_66_2();
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRUtterance.clearAsrID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.utterance.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0) + 32));
  if (v1[1])
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A01F08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Queryrewrite_QRUtterance.utterance.setter();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.utterance.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 32));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.utterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 32)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRUtterance.clearUtterance()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 32));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.utteranceTokens.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.asrUtteranceTokens.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

double Siri_Nlu_Internal_Queryrewrite_QRUtterance.confidence.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 36));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.confidence.setter(double a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  result = OUTLINED_FUNCTION_25_4(v2);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.confidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v2) + 36);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRUtterance.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v0) + 24);
  return nullsub_1;
}

void Siri_Nlu_Internal_Queryrewrite_QRUtterance.init()(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  v5 = a1 + v4[6];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v6 = v4[7];
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_65_3(v7);
  OUTLINED_FUNCTION_18_2(v4[8]);
  OUTLINED_FUNCTION_38(v4[9]);
  *(v8 + 8) = v1;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.locale.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
  OUTLINED_FUNCTION_26_3(v0);
  if (v1[1])
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A0235C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Queryrewrite_QRInteraction.locale.setter();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.locale.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 28));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.locale.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 28)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRInteraction.clearLocale()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 28));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.tap2Edit.setter(char a1)
{
  result = OUTLINED_FUNCTION_60_6();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRInteraction.tap2Edit.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.startTimestamp.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
  OUTLINED_FUNCTION_25_4(v0);
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.startTimestamp.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v1);
  result = OUTLINED_FUNCTION_25_4(v2);
  *v4 = v0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.startTimestamp.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_33_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v3) + 36);
  *(v1 + 16) = v4;
  v5 = (v2 + v4);
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *v1 = v6;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t sub_1C8A02680@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1C8BD49FC();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1C8A02714()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 24);
  v5 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRInteraction.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v0) + 24);
  return nullsub_1;
}

void Siri_Nlu_Internal_Queryrewrite_QRInteraction.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
  v4 = a1 + v3[6];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v3[7]);
  *(a1 + v3[8]) = 2;
  OUTLINED_FUNCTION_38(v3[9]);
  *(v5 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v7);
  OUTLINED_FUNCTION_67(*(v8 + 20));
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_82_1(v10, v11);
  if (!v12)
  {
    return sub_1C87E8E5C(v1, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_15_2(v9[5]);
  OUTLINED_FUNCTION_15_2(v9[6]);
  *(a1 + v9[7]) = 6;
  v13 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_82_1(v13, v14);
  if (!v12)
  {
    return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C8A0293C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v8 = OUTLINED_FUNCTION_80(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v13 = v12 - v11;
  sub_1C87E9210(a1, v12 - v11);
  return a5(v13);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.asrID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v2) + 20);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRHypothesis.asrID.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0) + 20);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C87E8E5C(v6, v10);
  }

  return sub_1C882AE18;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.hasAsrID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v7);
  OUTLINED_FUNCTION_67(*(v8 + 20));
  type metadata accessor for Siri_Nlu_External_UUID();
  v9 = OUTLINED_FUNCTION_120();
  __swift_getEnumTagSinglePayload(v9, v10, v11);
  OUTLINED_FUNCTION_66_2();
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRHypothesis.clearAsrID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.utterance.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  OUTLINED_FUNCTION_25_0(v0);
  if (v1[1])
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A02CC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Queryrewrite_QRHypothesis.utterance.setter();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.utterance.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.utterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1(v4);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v5, v6);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRHypothesis.clearUtterance()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 24));
  *v0 = 0;
  v0[1] = 0;
}

double Siri_Nlu_Internal_Queryrewrite_QRHypothesis.confidence.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 28));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.confidence.setter(double a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  result = OUTLINED_FUNCTION_26_3(v2);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.confidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v2) + 28);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.rewriteType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_61_8();
  *a1 = *(v1 + v4) & 1;
  return result;
}

uint64_t sub_1C8A02F24@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRHypothesis.rewriteType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.rewriteType.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_61_8();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRHypothesis.rewriteType.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

SiriNLUTypes::Siri_Nlu_Internal_Queryrewrite_QRHypothesis::QRRewriteType_optional __swiftcall Siri_Nlu_Internal_Queryrewrite_QRHypothesis.QRRewriteType.init(rawValue:)(Swift::Int rawValue)
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

uint64_t sub_1C8A03094(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A0620C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8A030FC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRHypothesis.QRRewriteType.rawValue.getter();
  *a1 = result;
  return result;
}

void Siri_Nlu_Internal_Queryrewrite_QRHypothesis.init()(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  v4 = v3[5];
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_65_3(v5);
  OUTLINED_FUNCTION_18_2(v3[6]);
  OUTLINED_FUNCTION_38(v3[7]);
  *(v6 + 8) = v1;
  *(a1 + v3[8]) = 2;
}

uint64_t sub_1C8A031C0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDE90);
  __swift_project_value_buffer(v0, qword_1EC2BDE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_index";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "end_index";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "asr_confidence";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "phone_sequence";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "remove_space_after";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A0356C();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A035D0();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A03634();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A03698();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8A036FC();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C8A03760();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_17();
  v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v3);
  v5 = (v0 + v4[5]);
  if (!v5[1] || (v6 = *v5, result = OUTLINED_FUNCTION_9_5(), (v2 = v1) == 0))
  {
    v8 = (v0 + v4[6]);
    if ((v8[1] & 1) != 0 || (v9 = *v8, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), (v2 = v1) == 0))
    {
      v10 = (v0 + v4[7]);
      if ((v10[1] & 1) != 0 || (v11 = *v10, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), (v2 = v1) == 0))
      {
        v12 = (v0 + v4[8]);
        if ((v12[1] & 1) != 0 || (v13 = *v12, v1 = v2, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v2))
        {
          v14 = (v0 + v4[9]);
          if (!v14[1] || (v15 = *v14, result = OUTLINED_FUNCTION_9_5(), !v1))
          {
            if (*(v0 + v4[10]) == 2 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), !v1))
            {
              OUTLINED_FUNCTION_55();
              return sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRToken.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_17();
  v1 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v0);
  v2 = v1[5];
  OUTLINED_FUNCTION_1();
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v4);
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11(v1[6]);
  if (v10)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v11)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(v1[7]);
  if (v13)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v14)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0(v1[8]);
  if (v16)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v17)
    {
      return 0;
    }
  }

  v18 = v1[9];
  OUTLINED_FUNCTION_1();
  if (v21)
  {
    if (!v19)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v20);
    v24 = v8 && v22 == v23;
    if (!v24 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47(v1[10]);
  if (v8)
  {
    if (v25 == 2)
    {
      goto LABEL_38;
    }

    return 0;
  }

  if (v25 == 2 || ((v26 ^ v25) & 1) != 0)
  {
    return 0;
  }

LABEL_38:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_15();
  sub_1C8776A10(v28, v29);
  OUTLINED_FUNCTION_117();
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A03B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A10(&qword_1EC2BE018, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A03B90(uint64_t a1)
{
  v2 = sub_1C8776A10(&qword_1EC2BDF10, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A03C00()
{
  sub_1C8776A10(&qword_1EC2BDF10, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A03C98()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDEA8);
  __swift_project_value_buffer(v0, qword_1EC2BDEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "utterance_tokens";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "asr_utterance_tokens";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "confidence";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_Queryrewrite_QRUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A040B0();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A04164();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A04D10();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A04D58();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A04E68(v3, v4, v5, v6, v7, v8);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A040B0()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0) + 28);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776A10(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_Queryrewrite_QRUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_80_2();
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v13 = v12 - v11;
  v14 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  sub_1C87E8DEC(v1 + v14[7], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v2, v13);
    OUTLINED_FUNCTION_22_13();
    sub_1C8776A10(v15, v16);
    OUTLINED_FUNCTION_9_1();
    sub_1C8BD4E2C();
    sub_1C87E9274(v13);
    if (v0)
    {
      goto LABEL_13;
    }
  }

  v17 = (v1 + v14[8]);
  if (!v17[1] || (v18 = *v17, OUTLINED_FUNCTION_29_1(), sub_1C8BD4DDC(), !v0))
  {
    if (!*(*v1 + 16) || (type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0), OUTLINED_FUNCTION_24_11(), sub_1C8776A10(v19, v20), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
    {
      if (!*(v1[1] + 16) || (type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0), OUTLINED_FUNCTION_24_11(), sub_1C8776A10(v21, v22), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
      {
        v23 = v1 + v14[9];
        if ((v23[8] & 1) != 0 || (v24 = *v23, OUTLINED_FUNCTION_29_1(), sub_1C8BD4DCC(), !v0))
        {
          OUTLINED_FUNCTION_49_0();
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_190();
}

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRUtterance.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v19 = *(*v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_27_0();
  v22 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v21);
  v23 = v22[7];
  v24 = v18[14];
  sub_1C87E8DEC(v2 + v23, v3);
  sub_1C87E8DEC(a2 + v23, v3 + v24);
  OUTLINED_FUNCTION_73(v3);
  if (!v25)
  {
    sub_1C87E8DEC(v3, v17);
    OUTLINED_FUNCTION_73(v3 + v24);
    if (!v25)
    {
      sub_1C87E8E5C(v3 + v24, v11);
      v28 = static Siri_Nlu_External_UUID.== infix(_:_:)(v17, v11);
      sub_1C87E9274(v11);
      sub_1C87E9274(v17);
      sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1C87E9274(v17);
LABEL_9:
    sub_1C8778ED8(v3, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v3 + v24);
  if (!v25)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_13:
  v29 = v22[8];
  OUTLINED_FUNCTION_1();
  if (v32)
  {
    if (!v30)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_35(v31);
    v35 = v25 && v33 == v34;
    if (!v35 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v30)
  {
    goto LABEL_10;
  }

  v36 = *v2;
  v37 = *a2;
  sub_1C87D8DF8();
  if (v38)
  {
    v39 = v2[1];
    v40 = a2[1];
    sub_1C87D8DF8();
    if (v41)
    {
      OUTLINED_FUNCTION_4_0(v22[9]);
      if (v43)
      {
        if (v42)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_36();
        if ((v44 & 1) == 0)
        {
LABEL_28:
          v45 = v22[6];
          sub_1C8BD49FC();
          OUTLINED_FUNCTION_1_15();
          sub_1C8776A10(v46, v47);
          v26 = OUTLINED_FUNCTION_64_0();
          return v26 & 1;
        }
      }
    }
  }

LABEL_10:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C8A04768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A10(&qword_1EC2BE010, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A047E8(uint64_t a1)
{
  v2 = sub_1C8776A10(&qword_1EC2BDF20, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A04858()
{
  sub_1C8776A10(&qword_1EC2BDF20, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A048F0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDEC0);
  __swift_project_value_buffer(v0, qword_1EC2BDEC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "original_utterances";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "siri_response";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "locale";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "tap2edit";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "start_timestamp";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_Queryrewrite_QRInteraction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A04D10();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A04D58();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A04DA0();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A04E04();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A04E68(v3, v4, v5, v6, v7, v8);
        break;
      default:
        continue;
    }
  }
}

void sub_1C8A04D10()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

void sub_1C8A04D58()
{
  OUTLINED_FUNCTION_189();
  v0 = OUTLINED_FUNCTION_129();
  v1(v0);
  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8A04E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *(a5(0) + 36);
  OUTLINED_FUNCTION_55();
  return a6();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0), sub_1C8776A10(&qword_1EC2BDF20, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Siri_Nlu_Internal_Token(), sub_1C8776A10(&qword_1EC2B4BE0, type metadata accessor for Siri_Nlu_Internal_Token), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
    {
      v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
      v5 = (v2 + v4[7]);
      if (!v5[1] || (v6 = *v5, OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4DDC(), !v1))
      {
        if (*(v2 + v4[8]) == 2 || (OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4D3C(), !v1))
        {
          v7 = (v2 + v4[9]);
          if (v7[1])
          {
            return OUTLINED_FUNCTION_49_0();
          }

          v8 = *v7;
          OUTLINED_FUNCTION_29_1();
          result = sub_1C8BD4DFC();
          if (!v1)
          {
            return OUTLINED_FUNCTION_49_0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRInteraction.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  sub_1C87D8598();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = a1[1];
  v8 = a2[1];
  sub_1C87D85EC();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
  v11 = v10[7];
  OUTLINED_FUNCTION_1();
  if (v14)
  {
    if (!v12)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v13);
    v17 = v17 && v15 == v16;
    if (!v17 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47(v10[8]);
  if (v17)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else if (v18 == 2 || ((v19 ^ v18) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_0(v10[9]);
  if (v23)
  {
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v22)
    {
      LOBYTE(v20) = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v25 = v10[6];
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_15();
  sub_1C8776A10(v26, v27);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t sub_1C8A05240(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A10(&qword_1EC2BE008, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A052C0(uint64_t a1)
{
  v2 = sub_1C8776A10(&qword_1EC2B71A0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A05330()
{
  sub_1C8776A10(&qword_1EC2B71A0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A053C8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDED8);
  __swift_project_value_buffer(v0, qword_1EC2BDED8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "confidence";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "rewrite_type";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A056D8();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A0578C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A057F0();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A05854();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A056D8()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0) + 20);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776A10(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A05854()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0) + 32);
  sub_1C8A0620C();
  return sub_1C8BD4B4C();
}

void Siri_Nlu_Internal_Queryrewrite_QRHypothesis.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_80_2();
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v14 = v13 - v12;
  v15 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  sub_1C87E8DEC(v0 + v15[5], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v2, v14);
    OUTLINED_FUNCTION_22_13();
    sub_1C8776A10(v16, v17);
    sub_1C8BD4E2C();
    sub_1C87E9274(v14);
    if (v1)
    {
      goto LABEL_11;
    }
  }

  v18 = (v0 + v15[6]);
  if (!v18[1] || (v19 = *v18, OUTLINED_FUNCTION_9_5(), (v3 = v1) == 0))
  {
    v20 = (v0 + v15[7]);
    if ((v20[1] & 1) != 0 || (v21 = *v20, OUTLINED_FUNCTION_55(), sub_1C8BD4DCC(), !v3))
    {
      if (*(v0 + v15[8]) == 2 || (sub_1C8A0620C(), sub_1C8BD4D4C(), !v3))
      {
        OUTLINED_FUNCTION_55();
        sub_1C8BD49DC();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_190();
}

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRHypothesis.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v19 = *(*v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_27_0();
  v22 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v21);
  v23 = v22[5];
  v24 = v18[14];
  sub_1C87E8DEC(v2 + v23, v3);
  sub_1C87E8DEC(a2 + v23, v3 + v24);
  OUTLINED_FUNCTION_73(v3);
  if (!v25)
  {
    sub_1C87E8DEC(v3, v17);
    OUTLINED_FUNCTION_73(v3 + v24);
    if (!v25)
    {
      sub_1C87E8E5C(v3 + v24, v11);
      v28 = static Siri_Nlu_External_UUID.== infix(_:_:)(v17, v11);
      sub_1C87E9274(v11);
      sub_1C87E9274(v17);
      sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1C87E9274(v17);
LABEL_9:
    sub_1C8778ED8(v3, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v3 + v24);
  if (!v25)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_13:
  v29 = v22[6];
  OUTLINED_FUNCTION_1();
  if (v32)
  {
    if (!v30)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_35(v31);
    v35 = v25 && v33 == v34;
    if (!v35 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v30)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_0(v22[7]);
  if (v37)
  {
    if (!v36)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v38)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_47(v22[8]);
  if (v25)
  {
    if (v39 == 2)
    {
LABEL_32:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_15();
      sub_1C8776A10(v41, v42);
      OUTLINED_FUNCTION_117();
      v26 = sub_1C8BD517C();
      return v26 & 1;
    }
  }

  else if (v39 != 2 && ((v39 ^ v40) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C8A05DD0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8776A10(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A05EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A10(&qword_1EC2BE000, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A05F2C(uint64_t a1)
{
  v2 = sub_1C8776A10(&qword_1EC2B5ED0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A05F9C()
{
  sub_1C8776A10(&qword_1EC2B5ED0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A0601C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDEF0);
  __swift_project_value_buffer(v0, qword_1EC2BDEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CORRECTION";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REFERENCE_RESOLUTION";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

unint64_t sub_1C8A0620C()
{
  result = qword_1EC2BDF30;
  if (!qword_1EC2BDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDF30);
  }

  return result;
}

unint64_t sub_1C8A06264()
{
  result = qword_1EC2BDF40;
  if (!qword_1EC2BDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDF40);
  }

  return result;
}

unint64_t sub_1C8A062BC()
{
  result = qword_1EC2BDF48;
  if (!qword_1EC2BDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDF48);
  }

  return result;
}

unint64_t sub_1C8A06314()
{
  result = qword_1EC2BDF50;
  if (!qword_1EC2BDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDF50);
  }

  return result;
}

unint64_t sub_1C8A0636C()
{
  result = qword_1EC2BDF58;
  if (!qword_1EC2BDF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2BDF60, &qword_1C8C0D068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDF58);
  }

  return result;
}

void sub_1C8A068A0()
{
  sub_1C8A069EC(319, &qword_1EC2BDFC8, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8A069EC(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD3E8);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACD390);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A069EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C8A06A78()
{
  sub_1C8A069EC(319, &qword_1EC2BDFE0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8A069EC(319, &qword_1EC2B2F68, type metadata accessor for Siri_Nlu_Internal_Token, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD3E8);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACA2B8);
          if (v4 <= 0x3F)
          {
            sub_1C87EB4B0(319, &qword_1EDACD378);
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

void sub_1C8A06C14()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A069EC(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD390);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EC2BDFF8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_Queryrewrite_QRHypothesis.QRRewriteType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Siri_Nlu_External_LanguageVariantResult.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
  v3 = a1 + *(v2 + 20);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Siri_Nlu_External_Parser(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t Siri_Nlu_External_LanguageVariantResult.multilingualVariant.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_LanguageVariantResult.parser.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
  sub_1C888EB30(v1 + *(v9 + 24), v8);
  v10 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v11 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v11, v12, v10);
  if (!v13)
  {
    return sub_1C888EBA0(v8, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + *(v10 + 20)) = 3;
  *(a1 + *(v10 + 24)) = 10;
  v14 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_76(v14, v15, v10);
  if (!v13)
  {
    return sub_1C8778ED8(v8, &qword_1EC2B6540, &unk_1C8BE7A40);
  }

  return result;
}

uint64_t sub_1C8A0701C(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C888EF40(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Siri_Nlu_External_LanguageVariantResult.parser.setter();
}

uint64_t Siri_Nlu_External_LanguageVariantResult.parser.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(v2) + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B6540, &unk_1C8BE7A40);
  sub_1C888EBA0(v0, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_External_LanguageVariantResult.parser.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0) + 24);
  *(v3 + 10) = v11;
  sub_1C888EB30(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10[*(v7 + 20)] = 3;
    v10[*(v7 + 24)] = 10;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v7);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    sub_1C888EBA0(v6, v10);
  }

  return sub_1C888EE60;
}

uint64_t Siri_Nlu_External_LanguageVariantResult.hasParser.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
  sub_1C888EB30(v0 + *(v7 + 24), v6);
  type metadata accessor for Siri_Nlu_External_Parser(0);
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

  sub_1C8778ED8(v6, &qword_1EC2B6540, &unk_1C8BE7A40);
  return v12;
}

Swift::Void __swiftcall Siri_Nlu_External_LanguageVariantResult.clearParser()()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0) + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B6540, &unk_1C8BE7A40);
  v2 = type metadata accessor for Siri_Nlu_External_Parser(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_External_LanguageVariantResult.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_External_LanguageVariantResult.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(v2) + 20);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Siri_Nlu_External_LanguageVariantResult.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(v0) + 20);
  return nullsub_1;
}

uint64_t Siri_Nlu_External_MultilingualVariant.languageVariantName.getter()
{
  OUTLINED_FUNCTION_2_24();
  v2 = (v0 + v1);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C8A07534(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_MultilingualVariant.languageVariantName.setter(v1, v2);
}

uint64_t Siri_Nlu_External_MultilingualVariant.languageVariantName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_24();
  v6 = (v2 + v5);
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Siri_Nlu_External_MultilingualVariant.languageVariantName.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_2_24();
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

Swift::Void __swiftcall Siri_Nlu_External_MultilingualVariant.clearLanguageVariantName()()
{
  OUTLINED_FUNCTION_2_24();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

double Siri_Nlu_External_MultilingualVariant.languageVariantScore.getter()
{
  OUTLINED_FUNCTION_3_17();
  result = OUTLINED_FUNCTION_37(v0);
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_External_MultilingualVariant.languageVariantScore.setter(double a1)
{
  result = OUTLINED_FUNCTION_3_17();
  *v3 = a1;
  *(v3 + 8) = 0;
  return result;
}

uint64_t (*Siri_Nlu_External_MultilingualVariant.languageVariantScore.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Siri_Nlu_External_MultilingualVariant(0) + 24);
  *(a1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_37(v1 + v3);
  if (!v6)
  {
    v4 = v5;
  }

  *a1 = v4;
  return sub_1C8820288;
}

Swift::Void __swiftcall Siri_Nlu_External_MultilingualVariant.clearLanguageVariantScore()()
{
  OUTLINED_FUNCTION_3_17();
  *v0 = 0;
  *(v0 + 8) = 1;
}

uint64_t Siri_Nlu_External_MultilingualVariant.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Siri_Nlu_External_MultilingualVariant.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_External_MultilingualVariant.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = OUTLINED_FUNCTION_2_24();
  v4 = (a1 + v3);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + *(result + 24);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t sub_1C8A078D0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4780);
  __swift_project_value_buffer(v0, qword_1EC2B4780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "multilingual_variant";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parser";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A07B04()
{
  type metadata accessor for Siri_Nlu_External_MultilingualVariant(0);
  sub_1C8A07E84(&qword_1EC2B4808, type metadata accessor for Siri_Nlu_External_MultilingualVariant);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8A07BA4()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0) + 24);
  type metadata accessor for Siri_Nlu_External_Parser(0);
  sub_1C8A07E84(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_LanguageVariantResult.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0;
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_MultilingualVariant(0), sub_1C8A07E84(&qword_1EC2B4808, type metadata accessor for Siri_Nlu_External_MultilingualVariant), OUTLINED_FUNCTION_10_14(), result = sub_1C8BD4E0C(), !v1))
  {
    v15 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
    sub_1C888EB30(v18 + *(v15 + 24), v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6540, &unk_1C8BE7A40);
    }

    else
    {
      sub_1C888EBA0(v7, v13);
      sub_1C8A07E84(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser);
      OUTLINED_FUNCTION_10_14();
      sub_1C8BD4E2C();
      result = sub_1C888EFA4(v13);
      if (v1)
      {
        return result;
      }
    }

    v16 = v18 + *(v15 + 20);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A07E84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Siri_Nlu_External_LanguageVariantResult.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_Parser(v4);
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6568, &unk_1C8BE7C10);
  OUTLINED_FUNCTION_21(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  v23 = *v2;
  v24 = *a2;
  sub_1C87DCECC();
  if ((v25 & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
  v27 = *(v26 + 24);
  v28 = *(v17 + 48);
  sub_1C888EB30(v2 + v27, v22);
  sub_1C888EB30(a2 + v27, &v22[v28]);
  OUTLINED_FUNCTION_76(v22, 1, v5);
  if (v29)
  {
    OUTLINED_FUNCTION_76(&v22[v28], 1, v5);
    if (v29)
    {
      sub_1C8778ED8(v22, &qword_1EC2B6540, &unk_1C8BE7A40);
LABEL_14:
      v33 = *(v26 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_16();
      sub_1C8A07E84(v34, v35);
      v30 = sub_1C8BD517C();
      return v30 & 1;
    }

    goto LABEL_10;
  }

  sub_1C888EB30(v22, v16);
  OUTLINED_FUNCTION_76(&v22[v28], 1, v5);
  if (v29)
  {
    sub_1C888EFA4(v16);
LABEL_10:
    sub_1C8778ED8(v22, &qword_1EC2B6568, &unk_1C8BE7C10);
    goto LABEL_11;
  }

  sub_1C888EBA0(&v22[v28], v10);
  v32 = static Siri_Nlu_External_Parser.== infix(_:_:)();
  sub_1C888EFA4(v10);
  sub_1C888EFA4(v16);
  sub_1C8778ED8(v22, &qword_1EC2B6540, &unk_1C8BE7A40);
  if (v32)
  {
    goto LABEL_14;
  }

LABEL_11:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1C8A081E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A07E84(&qword_1EC2BE048, type metadata accessor for Siri_Nlu_External_LanguageVariantResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A08264(uint64_t a1)
{
  v2 = sub_1C8A07E84(&qword_1EC2B4770, type metadata accessor for Siri_Nlu_External_LanguageVariantResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A082D4()
{
  sub_1C8A07E84(&qword_1EC2B4770, type metadata accessor for Siri_Nlu_External_LanguageVariantResult);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A08370()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4818);
  __swift_project_value_buffer(v0, qword_1EC2B4818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "language_variant_name";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "language_variant_score";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A0859C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v11 = OUTLINED_FUNCTION_578();
      a5(v11);
    }

    else if (result == 1)
    {
      v10 = OUTLINED_FUNCTION_578();
      a4(v10);
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_MultilingualVariant.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_17();
  v3 = type metadata accessor for Siri_Nlu_External_MultilingualVariant(v2);
  v4 = (v0 + *(v3 + 20));
  if (!v4[1] || (v5 = *v4, result = sub_1C8BD4DDC(), !v1))
  {
    v7 = (v0 + *(v3 + 24));
    if (v7[1])
    {
      return sub_1C8BD49DC();
    }

    v8 = *v7;
    result = sub_1C8BD4DCC();
    if (!v1)
    {
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_MultilingualVariant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_MultilingualVariant(v4);
  v6 = *(v5 + 20);
  v7 = (v2 + v6);
  v8 = *(v2 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(v5 + 24);
  v13 = (v2 + v12);
  v14 = *(v2 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_16();
  sub_1C8A07E84(v18, v19);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A088FC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8A07E84(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A089E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A07E84(&qword_1EC2BE040, type metadata accessor for Siri_Nlu_External_MultilingualVariant);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A08A60(uint64_t a1)
{
  v2 = sub_1C8A07E84(&qword_1EC2B4808, type metadata accessor for Siri_Nlu_External_MultilingualVariant);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A08AD0()
{
  sub_1C8A07E84(&qword_1EC2B4808, type metadata accessor for Siri_Nlu_External_MultilingualVariant);

  return sub_1C8BD4CFC();
}

void sub_1C8A08DA4()
{
  sub_1C8A08EA0(319, qword_1EDACD060, type metadata accessor for Siri_Nlu_External_MultilingualVariant, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8A08EA0(319, qword_1EDACE0E8, type metadata accessor for Siri_Nlu_External_Parser, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A08EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C8A08F2C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD3E8);
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD390);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t String.toProtobufStringValue()()
{
  sub_1C8BD492C();

  return sub_1C8BD491C();
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_9_19();
  sub_1C887DCFC(v1 + *(v8 + 20), v2);
  v9 = type metadata accessor for Siri_Nlu_External_RequestID();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    return sub_1C887DD6C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v9[5]);
  v10 = v9[6];
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_18_2(v9[7]);
  OUTLINED_FUNCTION_18_2(v9[8]);
  OUTLINED_FUNCTION_18_2(v9[9]);
  OUTLINED_FUNCTION_18_2(v9[10]);
  *(a1 + v9[11]) = 6;
  result = __swift_getEnumTagSinglePayload(v2, 1, v9);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B64B0, &unk_1C8BF3F40);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest()
{
  result = qword_1EC2BE088;
  if (!qword_1EC2BE088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8A091B4(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_RequestID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C887E14C(a1, v5);
  return Siri_Nlu_External_SsuInference_SsuInferenceRequest.requestID.setter(v5);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.requestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest() + 20);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C887DD6C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_RequestID();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_External_SsuInference_SsuInferenceRequest.requestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_RequestID();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest() + 20);
  *(v3 + 10) = v11;
  sub_1C887DCFC(v1 + v11, v6);
  OUTLINED_FUNCTION_72(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[5]);
    v13 = v7[6];
    type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_26(v7[7]);
    OUTLINED_FUNCTION_26(v7[8]);
    OUTLINED_FUNCTION_26(v7[9]);
    OUTLINED_FUNCTION_26(v7[10]);
    v10[v7[11]] = 6;
    OUTLINED_FUNCTION_72(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    sub_1C887DD6C(v6, v10);
  }

  return sub_1C887E06C;
}

BOOL Siri_Nlu_External_SsuInference_SsuInferenceRequest.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_19();
  sub_1C887DCFC(v0 + *(v6 + 20), v1);
  v7 = type metadata accessor for Siri_Nlu_External_RequestID();
  v8 = __swift_getEnumTagSinglePayload(v1, 1, v7) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v8;
}

Swift::Void __swiftcall Siri_Nlu_External_SsuInference_SsuInferenceRequest.clearRequestID()()
{
  v1 = type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest();
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B64B0, &unk_1C8BF3F40);
  type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.utterance.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C8A095B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_SsuInference_SsuInferenceRequest.utterance.setter(v1, v2);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.utterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_External_SsuInference_SsuInferenceRequest.utterance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest() + 24);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

Swift::Void __swiftcall Siri_Nlu_External_SsuInference_SsuInferenceRequest.clearUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.unknownFields.setter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_5_0();

  return v4(v3);
}

void Siri_Nlu_External_SsuInference_SsuInferenceRequest.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v0 = type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest();
  v1 = *(v0 + 20);
  type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_18_2(*(v0 + 24));
}

uint64_t sub_1C8A09894()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE050);
  __swift_project_value_buffer(v0, qword_1EC2BE050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_External_SsuInference_SsuInferenceRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5C20 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE050);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_5_0();
      sub_1C8A09C44();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_0();
      sub_1C8A09B90();
    }
  }

  return result;
}

uint64_t sub_1C8A09B90()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest() + 20);
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C8A0A56C(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_RequestID();
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest();
  sub_1C887DCFC(v0 + *(v14 + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C8778ED8(v7, &qword_1EC2B64B0, &unk_1C8BF3F40);
  }

  else
  {
    sub_1C887DD6C(v7, v13);
    sub_1C8A0A56C(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
    sub_1C8BD4E2C();
    result = sub_1C887E1B0(v13);
    if (v1)
    {
      return result;
    }
  }

  v16 = (v0 + *(v14 + 24));
  if (!v16[1])
  {
    return sub_1C8BD49DC();
  }

  v17 = *v16;
  result = sub_1C8BD4DDC();
  if (!v1)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_External_SsuInference_SsuInferenceRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_RequestID();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest();
  v22 = *(v21 + 20);
  v23 = v16[14];
  sub_1C887DCFC(a1 + v22, v20);
  sub_1C887DCFC(a2 + v22, &v20[v23]);
  OUTLINED_FUNCTION_72(v20);
  if (!v24)
  {
    sub_1C887DCFC(v20, v15);
    OUTLINED_FUNCTION_72(&v20[v23]);
    if (!v24)
    {
      sub_1C887DD6C(&v20[v23], v9);
      v27 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v15, v9);
      sub_1C887E1B0(v9);
      sub_1C887E1B0(v15);
      sub_1C8778ED8(v20, &qword_1EC2B64B0, &unk_1C8BF3F40);
      if ((v27 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1C887E1B0(v15);
LABEL_9:
    sub_1C8778ED8(v20, &qword_1EC2B64D8, &unk_1C8BEAC20);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_72(&v20[v23]);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v20, &qword_1EC2B64B0, &unk_1C8BF3F40);
LABEL_13:
  v28 = *(v21 + 24);
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (v32)
    {
      v33 = *v29 == *v31 && v30 == v32;
      if (v33 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v32)
  {
LABEL_22:
    sub_1C8BD49FC();
    sub_1C8A0A56C(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
    OUTLINED_FUNCTION_5_0();
    v25 = sub_1C8BD517C();
    return v25 & 1;
  }

LABEL_10:
  v25 = 0;
  return v25 & 1;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest();
  sub_1C8A0A56C(&qword_1EC2BE068, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A0A218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A0A56C(&qword_1EC2BE098, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A0A298(uint64_t a1)
{
  v2 = sub_1C8A0A56C(&qword_1EC2BE078, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A0A308()
{
  sub_1C8A0A56C(&qword_1EC2BE078, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest);

  return sub_1C8BD4CFC();
}

void sub_1C8A0A4D0()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C887F13C();
    if (v1 <= 0x3F)
    {
      sub_1C87E8A54();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8A0A56C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_18_2(v2[5]);
  v4 = *(v3 + 24);
  v5 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = v2[7];
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v10, v11, v12, v5);
  v14 = a1 + v2[8];
  *v14 = 0;
  *(v14 + 8) = 1;
  *(a1 + v2[9]) = 2;
  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0) + 20);
  if (qword_1EC2B5C38 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2BE0D0;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingVersion.getter()
{
  OUTLINED_FUNCTION_58_6();
  v2 = (v0 + v1);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A0A754(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingVersion.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingVersion.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58_6();
  v6 = (v2 + v5);
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingVersion.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 16) = v0;
  OUTLINED_FUNCTION_58_6();
  *(v1 + 32) = v3;
  v4 = (v0 + v3);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v1 + 24) = v5;
  *v1 = v6;
  *(v1 + 8) = v7;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.clearEmbeddingVersion()()
{
  OUTLINED_FUNCTION_58_6();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingTensor.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v6);
  OUTLINED_FUNCTION_38_1(v0 + *(v7 + 24));
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    OUTLINED_FUNCTION_40_7(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_15_2(v8[6]);
    OUTLINED_FUNCTION_15_2(v8[7]);
    OUTLINED_FUNCTION_15_2(v8[8]);
    OUTLINED_FUNCTION_18_2(v8[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_121();
    return sub_1C8A0E760();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingTensor.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_200();
  sub_1C8A0E760();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingTensor.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  v10 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_49(*(v10 + 24));
  OUTLINED_FUNCTION_0_0();
  if (v11)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_17();
    if (!v11)
    {
      sub_1C8778ED8(v6, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.hasEmbeddingTensor.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v7);
  OUTLINED_FUNCTION_62_7(*(v8 + 24));
  v9 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_76(v0, 1, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &unk_1C8BE7670);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.clearEmbeddingTensor()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B64A8, &unk_1C8BE7670);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.sentenceEmbeddingTensor.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v6);
  OUTLINED_FUNCTION_38_1(v0 + *(v7 + 28));
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    OUTLINED_FUNCTION_40_7(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_15_2(v8[6]);
    OUTLINED_FUNCTION_15_2(v8[7]);
    OUTLINED_FUNCTION_15_2(v8[8]);
    OUTLINED_FUNCTION_18_2(v8[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_121();
    return sub_1C8A0E760();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.sentenceEmbeddingTensor.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_200();
  sub_1C8A0E760();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.sentenceEmbeddingTensor.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  v10 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_49(*(v10 + 28));
  OUTLINED_FUNCTION_0_0();
  if (v11)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_17();
    if (!v11)
    {
      sub_1C8778ED8(v6, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8A0AF00()
{
  OUTLINED_FUNCTION_261();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    v8 = (*v0)[4];
    sub_1C8A0E7B4();
    sub_1C8778ED8(v6 + v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    sub_1C8A0E760();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v5);
    sub_1C8A0E808();
  }

  else
  {
    sub_1C8778ED8(v6 + v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_0_22();
    sub_1C8A0E760();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v5);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_260();

  free(v15);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.hasSentenceEmbeddingTensor.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v7);
  OUTLINED_FUNCTION_62_7(*(v8 + 28));
  v9 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_76(v0, 1, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &unk_1C8BE7670);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.clearSentenceEmbeddingTensor()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B64A8, &unk_1C8BE7670);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingDim.getter()
{
  OUTLINED_FUNCTION_50_8();
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingDim.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v2);
  v4 = v1 + *(result + 32);
  *v4 = v0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingDim.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_1C8820288;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.clearEmbeddingDim()()
{
  OUTLINED_FUNCTION_50_8();
  *v0 = 0;
  *(v0 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.isStableEmbeddingsVersion.setter(char a1)
{
  result = OUTLINED_FUNCTION_57_7();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.isStableEmbeddingsVersion.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_57_7();
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return OUTLINED_FUNCTION_158;
}

void Siri_Nlu_Internal_Embedding_EmbeddingResponse.embeddingTensor.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_13_2(v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  *(v2 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_13_18();
  v13 = *(v0 + v12);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_17();
    if (!v14)
    {
      sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.tokenChain.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = *(v0 + *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v6) + 20));
  v8 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_38_1(v7 + v8);
  v9 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    OUTLINED_FUNCTION_40_7(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_18_2(*(v9 + 24));
    OUTLINED_FUNCTION_18_2(*(v9 + 28));
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    OUTLINED_FUNCTION_121();
    return sub_1C8A0E760();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.tokenChain.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_73_8(0);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C8A0E174(v8);
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_11_18();
  sub_1C8A0E760();
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v14 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v14, v15, v16, v17);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Embedding_EmbeddingResponse.tokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_13_2(v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_13_18();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    v16 = &v12[*(v8 + 24)];
    *v16 = 0;
    *(v16 + 1) = 0;
    v17 = &v12[*(v8 + 28)];
    *v17 = 0;
    *(v17 + 1) = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A0B86C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  OUTLINED_FUNCTION_13_18();
  v16 = *(v4 + v15);
  v17 = *a3;
  OUTLINED_FUNCTION_277();
  sub_1C87867A0(v16 + v17, v14, a1, a2);
  v18 = a4(0);
  OUTLINED_FUNCTION_76(v14, 1, v18);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_1C8778ED8(v14, a1, a2);
  return v20;
}

void sub_1C8A0B974()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0) + 20);
  v17 = *(v0 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v0 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v20 = OUTLINED_FUNCTION_2();
    v19 = sub_1C8A0E174(v20);
    *(v9 + v16) = v19;
  }

  v4(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  v25 = *v2;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C878656C(v15, v19 + v25, v8, v6);
  swift_endAccess();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.numToken.modify()
{
  v1 = OUTLINED_FUNCTION_758();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_68_6(v3);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t sub_1C8A0BB1C(void *a1)
{
  OUTLINED_FUNCTION_13_18();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_277();
  if (v4[8])
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_1C8A0BB7C(uint64_t a1, void *a2)
{
  v6 = OUTLINED_FUNCTION_241();
  v7 = OUTLINED_FUNCTION_73_8(v6);
  v8 = *(v3 + v4);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A0E174(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  v11 = v8 + *a2;
  result = OUTLINED_FUNCTION_37_0();
  *v11 = v2;
  *(v11 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.numLayer.modify()
{
  v1 = OUTLINED_FUNCTION_758();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_68_6(v3);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

void sub_1C8A0BC68()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  v7 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 88);
    v11 = *(v3 + 80);
    OUTLINED_FUNCTION_20_9();
    v12 = OUTLINED_FUNCTION_2();
    v9 = sub_1C8A0E174(v12);
    *(v11 + v10) = v9;
  }

  v13 = v9 + *v1;
  OUTLINED_FUNCTION_37_0();
  *v13 = v4;
  *(v13 + 8) = 0;
  OUTLINED_FUNCTION_260();

  free(v14);
}

BOOL sub_1C8A0BD28(void *a1)
{
  OUTLINED_FUNCTION_13_18();
  v4 = *(v1 + v3) + *a1;
  OUTLINED_FUNCTION_277();
  return (*(v4 + 8) & 1) == 0;
}

uint64_t sub_1C8A0BD84(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C8A0E174(v8);
    *(v3 + v4) = v7;
  }

  v9 = v7 + *a1;
  result = OUTLINED_FUNCTION_37_0();
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.embeddingDim.modify()
{
  v1 = OUTLINED_FUNCTION_758();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_68_6(v3);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t sub_1C8A0BEB8(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = *(v1 + *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v8) + 20));
  v10 = *a1;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_301();
  sub_1C87867A0(v11, v12, v13, &unk_1C8BE7670);
  v14 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_1_0();
  if (v15)
  {
    OUTLINED_FUNCTION_40_7(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_15_2(v14[6]);
    OUTLINED_FUNCTION_15_2(v14[7]);
    OUTLINED_FUNCTION_15_2(v14[8]);
    OUTLINED_FUNCTION_18_2(v14[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v15)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C8A0E760();
  }

  return result;
}

uint64_t sub_1C8A0BFF4(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0) + 20);
  v12 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v15 = OUTLINED_FUNCTION_2();
    v14 = sub_1C8A0E174(v15);
    *(v4 + v11) = v14;
  }

  sub_1C8A0E760();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = *a2;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C878656C(v10, v14 + v20, &qword_1EC2B64A8, &unk_1C8BE7670);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Embedding_EmbeddingResponse.sentenceEmbeddingTensor.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_13_2(v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  *(v2 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_13_18();
  v13 = *(v0 + v12);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_17();
    if (!v14)
    {
      sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A0C2C8(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_Embedding_EmbeddingResponse.embeddingTensorOutputs.setter(v2);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.embeddingTensorOutputs.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_13_18();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs;
  OUTLINED_FUNCTION_277();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.subwordTokenChain.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = *(v0 + *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v6) + 20));
  v8 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_38_1(v7 + v8);
  v9 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    OUTLINED_FUNCTION_40_7(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_18_2(*(v9 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_20();
    OUTLINED_FUNCTION_121();
    return sub_1C8A0E760();
  }

  return result;
}

uint64_t sub_1C8A0C498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C8A0E7B4();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.subwordTokenChain.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_73_8(0);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C8A0E174(v8);
    OUTLINED_FUNCTION_40(v9);
  }

  OUTLINED_FUNCTION_9_20();
  sub_1C8A0E760();
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v14 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v14, v15, v16, v17);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Embedding_EmbeddingResponse.subwordTokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_13_2(v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v2 + 48) = v12;
  OUTLINED_FUNCTION_13_18();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    v16 = &v12[*(v8 + 24)];
    *v16 = 0;
    *(v16 + 1) = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_20();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8A0C780()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_97();
    sub_1C8A0E7B4();
    v2(v3);
    sub_1C8A0E808();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_260();

  free(v8);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.numSubwordToken.modify()
{
  v1 = OUTLINED_FUNCTION_758();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_68_6(v3);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t sub_1C8A0C934(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_18();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_277();
  v6 = *(v4 + v5);
}

uint64_t sub_1C8A0C97C(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_Embedding_EmbeddingResponse.subwordEmbeddingTensorOutputs.setter(v2);
}

uint64_t sub_1C8A0C9B4(uint64_t a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_241();
  v7 = OUTLINED_FUNCTION_73_8(v6);
  v8 = *(v3 + v4);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A0E174(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  v11 = *a2;
  OUTLINED_FUNCTION_37_0();
  v12 = *(v8 + v11);
  *(v8 + v11) = v2;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.subwordEmbeddingTensorOutputs.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_13_18();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs;
  OUTLINED_FUNCTION_277();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

void sub_1C8A0CAD0(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v7 = *(v4 + 56);
    v8 = *(*a1 + 48);

    a4(v9);
    v10 = *(v4 + 48);
  }

  else
  {
    v12 = *(v4 + 64);
    v13 = *(v4 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 64);
      v18 = *(v4 + 56);
      OUTLINED_FUNCTION_20_9();
      v19 = OUTLINED_FUNCTION_2();
      v16 = sub_1C8A0E174(v19);
      *(v18 + v17) = v16;
    }

    v20 = *a3;
    OUTLINED_FUNCTION_37_0();
    v21 = *(v16 + v20);
    *(v16 + v20) = v5;
  }

  free(v4);
}

uint64_t sub_1C8A0CBD0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE0A0);
  __swift_project_value_buffer(v0, qword_1EC2BE0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "embedding_version";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "embedding_tensor";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sentence_embedding_tensor";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "embedding_dim";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "is_stable_embeddings_version";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.decodeMessage<A>(decoder:)()
{
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
        sub_1C8A0CF34();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A0CF98();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A0D04C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A0D100();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8A0D164();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A0CF98()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0) + 24);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  sub_1C8A0E85C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A0D04C()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0) + 28);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  sub_1C8A0E85C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_34();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v14 = OUTLINED_FUNCTION_21(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v29[1] = v17 - v18;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v19);
  v30 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  v20 = (v0 + v30[5]);
  if (!v20[1] || (v21 = *v20, result = sub_1C8BD4DDC(), !v1))
  {
    sub_1C87867A0(v0 + v30[6], v12, &qword_1EC2B64A8, &unk_1C8BE7670);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_1C8778ED8(v12, &qword_1EC2B64A8, &unk_1C8BE7670);
    }

    else
    {
      v29[0] = v0;
      OUTLINED_FUNCTION_12_17();
      sub_1C8A0E760();
      OUTLINED_FUNCTION_10_15();
      sub_1C8A0E85C(v23, v24);
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_97();
      result = sub_1C8A0E808();
      if (v1)
      {
        return result;
      }

      v2 = v29[0];
    }

    sub_1C87867A0(v2 + v30[7], v9, &qword_1EC2B64A8, &unk_1C8BE7670);
    if (__swift_getEnumTagSinglePayload(v9, 1, v13) == 1)
    {
      sub_1C8778ED8(v9, &qword_1EC2B64A8, &unk_1C8BE7670);
    }

    else
    {
      OUTLINED_FUNCTION_12_17();
      sub_1C8A0E760();
      OUTLINED_FUNCTION_10_15();
      sub_1C8A0E85C(v25, v26);
      sub_1C8BD4E2C();
      result = sub_1C8A0E808();
      if (v1)
      {
        return result;
      }
    }

    v27 = (v2 + v30[8]);
    if ((v27[1] & 1) != 0 || (v28 = *v27, result = sub_1C8BD4DFC(), !v1))
    {
      if (*(v2 + v30[9]) == 2)
      {
        return sub_1C8BD49DC();
      }

      result = sub_1C8BD4D3C();
      if (!v1)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

void static Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v10 = OUTLINED_FUNCTION_80(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v60 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v60 - v27;
  v29 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  v30 = v29[5];
  v31 = (v1 + v30);
  v32 = *(v1 + v30 + 8);
  v33 = (v0 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_30;
    }

    v35 = *v31 == *v33 && v32 == v34;
    if (!v35 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v34)
  {
    goto LABEL_30;
  }

  v60 = v15;
  v61 = v8;
  v63 = v0;
  v36 = v29[6];
  v37 = *(v19 + 48);
  v62 = v1;
  OUTLINED_FUNCTION_80_4(v1 + v36, v28);
  OUTLINED_FUNCTION_80_4(v63 + v36, &v28[v37]);
  OUTLINED_FUNCTION_76(v28, 1, v2);
  if (v35)
  {
    OUTLINED_FUNCTION_76(&v28[v37], 1, v2);
    if (v35)
    {
      sub_1C8778ED8(v28, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_20;
    }

LABEL_18:
    v39 = v28;
LABEL_29:
    sub_1C8778ED8(v39, &qword_1EC2B64E0, &unk_1C8BE7880);
    goto LABEL_30;
  }

  sub_1C87867A0(v28, v18, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_76(&v28[v37], 1, v2);
  if (v38)
  {
    OUTLINED_FUNCTION_4_22();
    sub_1C8A0E808();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_29_7();
  v40 = v61;
  sub_1C8A0E760();
  v41 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v18, v40);
  sub_1C8A0E808();
  sub_1C8A0E808();
  sub_1C8778ED8(v28, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v41 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v42 = v29[7];
  v43 = *(v19 + 48);
  OUTLINED_FUNCTION_80_4(v62 + v42, v25);
  v44 = v63 + v42;
  v45 = v63;
  OUTLINED_FUNCTION_80_4(v44, v25 + v43);
  OUTLINED_FUNCTION_76(v25, 1, v2);
  if (v35)
  {
    OUTLINED_FUNCTION_76(v25 + v43, 1, v2);
    if (v35)
    {
      sub_1C8778ED8(v25, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v46 = v60;
  sub_1C87867A0(v25, v60, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_76(v25 + v43, 1, v2);
  if (v47)
  {
    OUTLINED_FUNCTION_4_22();
    sub_1C8A0E808();
LABEL_28:
    v39 = v25;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_29_7();
  v48 = v61;
  sub_1C8A0E760();
  v49 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v46, v48);
  sub_1C8A0E808();
  sub_1C8A0E808();
  sub_1C8778ED8(v25, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v49 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_32:
  v50 = v29[8];
  v51 = (v62 + v50);
  v52 = *(v62 + v50 + 8);
  v53 = (v45 + v50);
  v54 = *(v45 + v50 + 8);
  if (v52)
  {
    if (!v54)
    {
      goto LABEL_30;
    }

LABEL_38:
    v55 = v29[9];
    v56 = *(v62 + v55);
    v57 = *(v45 + v55);
    if (v56 == 2)
    {
      if (v57 != 2)
      {
        goto LABEL_30;
      }
    }

    else if (v57 == 2 || ((v56 ^ v57) & 1) != 0)
    {
      goto LABEL_30;
    }

    sub_1C8BD49FC();
    OUTLINED_FUNCTION_28_11();
    sub_1C8A0E85C(v58, v59);
    OUTLINED_FUNCTION_12();
    sub_1C8BD517C();
    goto LABEL_30;
  }

  if (*v51 != *v53)
  {
    LOBYTE(v54) = 1;
  }

  if ((v54 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_30:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A0DA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A0E85C(&qword_1EC2BE190, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A0DB0C(uint64_t a1)
{
  v2 = sub_1C8A0E85C(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A0DB7C()
{
  sub_1C8A0E85C(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A0DC18()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE0B8);
  __swift_project_value_buffer(v0, qword_1EC2BE0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "embedding_tensor";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_chain";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "num_token";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "num_layer";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "embedding_dim";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "sentence_embedding_tensor";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "embedding_tensor_outputs";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "subword_token_chain";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "num_subword_token";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "subword_embedding_tensor_outputs";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A0DFFC()
{
  OUTLINED_FUNCTION_20_9();
  result = sub_1C8A0E04C();
  qword_1EC2BE0D0 = result;
  return result;
}

uint64_t sub_1C8A0E04C()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  v2 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numToken;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numLayer;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingDim;
  *v7 = 0;
  *(v7 + 8) = 1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor, 1, 1, v2);
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  v10 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs) = v8;
  return v0;
}

uint64_t sub_1C8A0E174(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v53 - v11;
  v12 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  v13 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  v53 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  v15 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numToken;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numLayer;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingDim;
  *v18 = 0;
  *(v18 + 8) = 1;
  v55 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor, 1, 1, v13);
  v56 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs;
  v19 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs) = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  v57 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  v21 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v22 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken;
  v58 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken;
  *v22 = 0;
  *(v22 + 8) = 1;
  v59 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs) = v19;
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  swift_beginAccess();
  v24 = v61;
  sub_1C87867A0(a1 + v23, v61, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_beginAccess();
  sub_1C878656C(v24, v1 + v12, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  swift_beginAccess();
  v26 = v54;
  sub_1C87867A0(a1 + v25, v54, &qword_1EC2B6048, &unk_1C8BE6F80);
  v27 = v53;
  swift_beginAccess();
  sub_1C878656C(v26, v1 + v27, &qword_1EC2B6048, &unk_1C8BE6F80);
  swift_endAccess();
  v28 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numToken);
  swift_beginAccess();
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  swift_beginAccess();
  *v16 = v29;
  *(v16 + 8) = v28;
  v30 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numLayer);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  swift_beginAccess();
  *v17 = v31;
  *(v17 + 8) = v30;
  v32 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingDim);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  swift_beginAccess();
  *v18 = v33;
  *(v18 + 8) = v32;
  v34 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor;
  swift_beginAccess();
  v35 = a1 + v34;
  v36 = v61;
  sub_1C87867A0(v35, v61, &qword_1EC2B64A8, &unk_1C8BE7670);
  v37 = v55;
  swift_beginAccess();
  sub_1C878656C(v36, v1 + v37, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs;
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = v56;
  swift_beginAccess();
  v41 = *(v1 + v40);
  *(v1 + v40) = v39;

  v42 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  swift_beginAccess();
  v43 = v60;
  sub_1C87867A0(a1 + v42, v60, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  v44 = v57;
  swift_beginAccess();
  sub_1C878656C(v43, v1 + v44, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  swift_endAccess();
  v45 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken);
  swift_beginAccess();
  v46 = *v45;
  LOBYTE(v45) = *(v45 + 8);
  v47 = v58;
  swift_beginAccess();
  *v47 = v46;
  *(v47 + 8) = v45;
  v48 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs;
  swift_beginAccess();
  v49 = *(a1 + v48);

  v50 = v59;
  swift_beginAccess();
  v51 = *(v1 + v50);
  *(v1 + v50) = v49;

  return v1;
}

uint64_t sub_1C8A0E760()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C8A0E7B4()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C8A0E808()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A0E85C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8A0E8A4()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor, &qword_1EC2B64A8, &unk_1C8BE7670);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  v2 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs);

  return v0;
}

uint64_t sub_1C8A0E96C()
{
  v0 = sub_1C8A0E8A4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2();
    *(v1 + v2) = sub_1C8A0E174(v9);
  }

  return sub_1C8A0EA60();
}

uint64_t sub_1C8A0EA60()
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
      case 6:
        sub_1C8A0ED08();
        break;
      case 2:
        sub_1C8A0EC2C();
        break;
      case 3:
      case 4:
      case 5:
      case 9:
        sub_1C8A0EE80();
        break;
      case 7:
      case 10:
        sub_1C8A0EEF4();
        break;
      case 8:
        sub_1C8A0EDA4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A0EC2C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C8A0E85C(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A0ED08()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_10_15();
  sub_1C8A0E85C(v2, v3);
  OUTLINED_FUNCTION_30_1();
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A0EDA4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  sub_1C8A0E85C(&qword_1EC2B6478, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A0EE80()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8BD4C4C();
  return swift_endAccess();
}

uint64_t sub_1C8A0EEF4()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  sub_1C8A0E85C(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);
  OUTLINED_FUNCTION_30_1();
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  result = sub_1C8A0F008(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A0F008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = v47 - v7;
  v48 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47[1] = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v47 - v12;
  v53 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v14 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v51 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v50 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v47 - v20;
  v22 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v49 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  swift_beginAccess();
  v54 = a1;
  sub_1C87867A0(a1 + v26, v21, &qword_1EC2B64A8, &unk_1C8BE7670);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1C8778ED8(v21, &qword_1EC2B64A8, &unk_1C8BE7670);
    v27 = v55;
  }

  else
  {
    sub_1C8A0E760();
    sub_1C8A0E85C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    v28 = v55;
    sub_1C8BD4E2C();
    v27 = v28;
    result = sub_1C8A0E808();
    if (v28)
    {
      return result;
    }
  }

  v30 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  v31 = v54;
  swift_beginAccess();
  sub_1C87867A0(v31 + v30, v13, &qword_1EC2B6048, &unk_1C8BE6F80);
  if (__swift_getEnumTagSinglePayload(v13, 1, v53) == 1)
  {
    sub_1C8778ED8(v13, &qword_1EC2B6048, &unk_1C8BE6F80);
  }

  else
  {
    sub_1C8A0E760();
    sub_1C8A0E85C(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    sub_1C8BD4E2C();
    result = sub_1C8A0E808();
    if (v27)
    {
      return result;
    }
  }

  v32 = (v31 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numToken);
  swift_beginAccess();
  v33 = v52;
  if ((v32[1] & 1) != 0 || (v34 = *v32, result = sub_1C8BD4DFC(), !v27))
  {
    v35 = (v31 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numLayer);
    swift_beginAccess();
    if ((v35[1] & 1) != 0 || (v36 = *v35, result = sub_1C8BD4DFC(), !v27))
    {
      v37 = (v31 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingDim);
      swift_beginAccess();
      if ((v37[1] & 1) != 0 || (v38 = *v37, result = sub_1C8BD4DFC(), !v27))
      {
        v39 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor;
        swift_beginAccess();
        v40 = v31 + v39;
        v41 = v50;
        sub_1C87867A0(v40, v50, &qword_1EC2B64A8, &unk_1C8BE7670);
        if (__swift_getEnumTagSinglePayload(v41, 1, v22) == 1)
        {
          sub_1C8778ED8(v41, &qword_1EC2B64A8, &unk_1C8BE7670);
        }

        else
        {
          sub_1C8A0E760();
          sub_1C8A0E85C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
          sub_1C8BD4E2C();
          result = sub_1C8A0E808();
          if (v27)
          {
            return result;
          }
        }

        v42 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs;
        swift_beginAccess();
        if (*(*(v31 + v42) + 16))
        {
          type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
          sub_1C8A0E85C(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);

          sub_1C8BD4E0C();

          if (v27)
          {
            return result;
          }

          v31 = v54;
        }

        v43 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
        swift_beginAccess();
        sub_1C87867A0(v31 + v43, v33, &qword_1EC2B65E0, &qword_1C8BE7DD0);
        if (__swift_getEnumTagSinglePayload(v33, 1, v48) == 1)
        {
          sub_1C8778ED8(v33, &qword_1EC2B65E0, &qword_1C8BE7DD0);
        }

        else
        {
          sub_1C8A0E760();
          sub_1C8A0E85C(&qword_1EC2B6478, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);
          sub_1C8BD4E2C();
          result = sub_1C8A0E808();
          if (v27)
          {
            return result;
          }
        }

        v44 = (v31 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken);
        swift_beginAccess();
        if ((v44[1] & 1) != 0 || (v45 = *v44, result = sub_1C8BD4DFC(), !v27))
        {
          v46 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs;
          result = swift_beginAccess();
          if (*(*(v31 + v46) + 16))
          {
            type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
            sub_1C8A0E85C(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);

            sub_1C8BD4E0C();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Embedding_EmbeddingResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_18();
  if (*(a1 + v4) != *(a2 + v4))
  {
    v5 = *(a1 + v4);

    sub_1C8A0FA28();
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_28_11();
  sub_1C8A0E85C(v8, v9);
  return sub_1C8BD517C() & 1;
}

void sub_1C8A0FA28()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v135 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain();
  v4 = OUTLINED_FUNCTION_21(v135);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v132 = (v8 - v7);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6600, &qword_1C8BE7DE8);
  OUTLINED_FUNCTION_21(v134);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v132 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  v14 = OUTLINED_FUNCTION_80(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v133 = (v17 - v18);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v132 - v20;
  v147 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v21 = OUTLINED_FUNCTION_21(v147);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v142 = (v25 - v24);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21(v145);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v148 = &v132 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  v31 = OUTLINED_FUNCTION_80(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_34();
  v143 = (v34 - v35);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v36);
  v146 = &v132 - v37;
  v150 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v38 = OUTLINED_FUNCTION_21(v150);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_33();
  v144 = (v42 - v41);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  v44 = OUTLINED_FUNCTION_21(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_34();
  v140 = v47 - v48;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v132 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v53 = OUTLINED_FUNCTION_80(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_34();
  v138 = (v56 - v57);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v58);
  v141 = &v132 - v59;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v60);
  v149 = (&v132 - v61);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v132 - v63;
  v65 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  OUTLINED_FUNCTION_277();
  sub_1C87867A0(v3 + v65, v64, &qword_1EC2B64A8, &unk_1C8BE7670);
  v66 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  OUTLINED_FUNCTION_277();
  v139 = v43;
  v67 = *(v43 + 48);
  sub_1C87867A0(v64, v51, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87867A0(v1 + v66, &v51[v67], &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_72(v51);
  if (v69)
  {

    sub_1C8778ED8(v64, &qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_72(&v51[v67]);
    if (v69)
    {
      sub_1C8778ED8(v51, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_12;
    }

LABEL_9:
    sub_1C8778ED8(v51, &qword_1EC2B64E0, &unk_1C8BE7880);
    goto LABEL_69;
  }

  v68 = v149;
  sub_1C87867A0(v51, v149, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_72(&v51[v67]);
  if (v69)
  {

    sub_1C8778ED8(v64, &qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_4_22();
    sub_1C8A0E808();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_12_17();
  v70 = v144;
  sub_1C8A0E760();

  v71 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v68, v70);
  sub_1C8A0E808();
  sub_1C8778ED8(v64, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C8A0E808();
  sub_1C8778ED8(v51, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v71 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_12:
  v72 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  OUTLINED_FUNCTION_277();
  v73 = v146;
  OUTLINED_FUNCTION_52_6(v3 + v72, v146);
  v74 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  OUTLINED_FUNCTION_277();
  v75 = *(v145 + 48);
  v76 = v148;
  OUTLINED_FUNCTION_52_6(v73, v148);
  OUTLINED_FUNCTION_52_6(v1 + v74, v76 + v75);
  OUTLINED_FUNCTION_76(v76, 1, v147);
  v77 = v1;
  if (v69)
  {
    sub_1C8778ED8(v73, &qword_1EC2B6048, &unk_1C8BE6F80);
    OUTLINED_FUNCTION_18_15();
    if (v69)
    {
      v78 = v3;
      sub_1C8778ED8(v76, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_22;
    }

LABEL_20:
    sub_1C8778ED8(v76, &qword_1EC2B6050, &qword_1C8BE6D00);
LABEL_69:

    goto LABEL_70;
  }

  v79 = v143;
  sub_1C87867A0(v76, v143, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_18_15();
  if (v80)
  {
    sub_1C8778ED8(v73, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C8A0E808();
    goto LABEL_20;
  }

  v78 = v3;
  v81 = v142;
  sub_1C8A0E760();
  v82 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v79, v81);
  sub_1C8A0E808();
  sub_1C8778ED8(v73, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C8A0E808();
  v77 = v1;
  sub_1C8778ED8(v76, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v82 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_22:
  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_71_1();
  v83 = v77 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numToken;
  OUTLINED_FUNCTION_26_8();
  v84 = *(v83 + 8);
  if (v1)
  {
    if ((*(v83 + 8) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*(v83 + 8))
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_67_6();
    if (!v69)
    {
      goto LABEL_69;
    }
  }

  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_71_1();
  v85 = v77 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numLayer;
  OUTLINED_FUNCTION_26_8();
  v86 = *(v85 + 8);
  if (v1)
  {
    if ((*(v85 + 8) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*(v85 + 8))
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_67_6();
    if (!v69)
    {
      goto LABEL_69;
    }
  }

  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_71_1();
  v87 = v77 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingDim;
  OUTLINED_FUNCTION_26_8();
  v88 = *(v87 + 8);
  if (v1)
  {
    if ((*(v87 + 8) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*(v87 + 8))
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_67_6();
    if (!v69)
    {
      goto LABEL_69;
    }
  }

  v89 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor;
  OUTLINED_FUNCTION_277();
  v90 = v141;
  OUTLINED_FUNCTION_52_6(v78 + v89, v141);
  v91 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor;
  OUTLINED_FUNCTION_277();
  v92 = v140;
  v93 = *(v139 + 48);
  OUTLINED_FUNCTION_52_6(v90, v140);
  OUTLINED_FUNCTION_52_6(v77 + v91, v92 + v93);
  OUTLINED_FUNCTION_76(v92, 1, v150);
  if (v69)
  {
    sub_1C8778ED8(v90, &qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_18_15();
    if (v69)
    {
      sub_1C8778ED8(v92, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_51;
    }

LABEL_48:
    v96 = &qword_1EC2B64E0;
    v97 = &unk_1C8BE7880;
LABEL_49:
    sub_1C8778ED8(v92, v96, v97);
    goto LABEL_69;
  }

  v94 = v138;
  sub_1C87867A0(v92, v138, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_18_15();
  if (v95)
  {
    sub_1C8778ED8(v141, &qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_4_22();
    sub_1C8A0E808();
    goto LABEL_48;
  }

  v98 = v144;
  sub_1C8A0E760();
  v99 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v94, v98);
  sub_1C8A0E808();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v100, v101, v102);
  sub_1C8A0E808();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v103, v104, v105);
  if ((v99 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_51:
  v106 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs;
  OUTLINED_FUNCTION_277();
  v107 = *(v78 + v106);
  v108 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs;
  OUTLINED_FUNCTION_277();
  v109 = *(v77 + v108);

  sub_1C87E307C();
  v111 = v110;

  if ((v111 & 1) == 0)
  {
    goto LABEL_69;
  }

  v112 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  OUTLINED_FUNCTION_277();
  v113 = v137;
  OUTLINED_FUNCTION_52_6(v78 + v112, v137);
  v114 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  OUTLINED_FUNCTION_277();
  v115 = *(v134 + 48);
  v92 = v136;
  OUTLINED_FUNCTION_52_6(v113, v136);
  OUTLINED_FUNCTION_52_6(v114 + v77, v92 + v115);
  OUTLINED_FUNCTION_76(v92, 1, v135);
  if (v69)
  {
    sub_1C8778ED8(v113, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    OUTLINED_FUNCTION_18_15();
    if (v69)
    {
      sub_1C8778ED8(v92, &qword_1EC2B65E0, &qword_1C8BE7DD0);
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v116 = v133;
  sub_1C87867A0(v92, v133, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_18_15();
  if (v117)
  {
    sub_1C8778ED8(v137, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    sub_1C8A0E808();
LABEL_60:
    v96 = &qword_1EC2B6600;
    v97 = &qword_1C8BE7DE8;
    goto LABEL_49;
  }

  v118 = v132;
  sub_1C8A0E760();
  v119 = static Siri_Nlu_Internal_SubwordTokenChain.== infix(_:_:)(v116, v118);
  sub_1C8A0E808();
  v114 = &qword_1C8BE7DD0;
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v120, v121, v122);
  sub_1C8A0E808();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v123, v124, v125);
  if ((v119 & 1) == 0)
  {
    goto LABEL_69;
  }

LABEL_62:
  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_71_1();
  v126 = v77 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken;
  OUTLINED_FUNCTION_26_8();
  v127 = *(v126 + 8);
  if (v114)
  {
    if ((*(v126 + 8) & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    if (*(v126 + 8))
    {
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_67_6();
    if (!v69)
    {
      goto LABEL_69;
    }
  }

  v128 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs;
  OUTLINED_FUNCTION_277();
  v129 = *(v78 + v128);
  v130 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs;
  OUTLINED_FUNCTION_277();
  v131 = *(v77 + v130);

  sub_1C87E307C();

LABEL_70:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A106CC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8A0E85C(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A107A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A0E85C(&qword_1EC2BE188, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A10828(uint64_t a1)
{
  v2 = sub_1C8A0E85C(&qword_1EC2B8730, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A10898()
{
  sub_1C8A0E85C(&qword_1EC2B8730, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);

  return sub_1C8BD4CFC();
}

void sub_1C8A10B80()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD3E8);
    if (v1 <= 0x3F)
    {
      sub_1C8A10ECC(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD378);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACA2B8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C8A10CC0()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C8A10D4C()
{
  sub_1C8A10ECC(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1C8A10ECC(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v4 <= 0x3F)
    {
      v7 = *(v3 - 8) + 64;
      sub_1C8A10ECC(319, &qword_1EC2B6638, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C8A10ECC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_52_6(uint64_t a1, uint64_t a2)
{

  return sub_1C87867A0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_58_6()
{
  result = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  v1 = *(result + 20);
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.currentTurn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_4_23();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 28));
  sub_1C8786744(v8, v9, &qword_1EC2B6038, &unk_1C8BE8850);
  v10 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v10 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *(a1 + v12) = qword_1EDACCB68;
    v13 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v10);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    v16 = OUTLINED_FUNCTION_121();
    return sub_1C8A115B8(v16, v17, v18);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest()
{
  result = qword_1EC2BE1D0;
  if (!qword_1EC2BE1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.currentTurn.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 28);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_0_4();
  sub_1C8A115B8(v0, v1 + v2, v3);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.currentTurn.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v1 + 8) = v5;
  v6 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  *(v1 + 16) = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = *(OUTLINED_FUNCTION_30_9(v9) + 28);
  *(v1 + 40) = v10;
  sub_1C8786744(v0 + v10, v5, &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_76(v5, 1, v6);
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v6 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *(v8 + v12) = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v5, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    sub_1C8A115B8(v5, v8, v14);
  }

  return sub_1C8A112F8;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.hasCurrentTurn.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_4_23();
  v7 = OUTLINED_FUNCTION_13(*(v6 + 28));
  OUTLINED_FUNCTION_94_0(v7, v8);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v9 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v9, v10, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v14, v15, &unk_1C8BE8850);
  return v13;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.clearCurrentTurn()()
{
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest();
  sub_1C8778ED8(v0 + *(updated + 28), &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.previousTurns.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.qrHypotheses.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_4_23();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 32));
  sub_1C8786744(v8, v9, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v10 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v10[5]);
    OUTLINED_FUNCTION_15_2(v10[6]);
    *(a1 + v10[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    v12 = OUTLINED_FUNCTION_121();
    return sub_1C8A115B8(v12, v13, v14);
  }

  return result;
}

uint64_t sub_1C8A115B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_218();
  v8(v7);
  return a2;
}

uint64_t sub_1C8A11614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - v14;
  sub_1C8A11984(a1, &v17 - v14, a6);
  return a7(v15);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.requestID.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 32);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_2_2();
  sub_1C8A115B8(v0, v1 + v2, v3);
  type metadata accessor for Siri_Nlu_External_UUID();
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.requestID.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *(OUTLINED_FUNCTION_30_9(v8) + 32);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_13(v9);
  sub_1C8786744(v10, v11, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v5);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v5[5]);
    OUTLINED_FUNCTION_11_0(v5[6]);
    *(v7 + v5[7]) = 6;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v5);
    if (!v14)
    {
      sub_1C8778ED8(v4, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    sub_1C8A115B8(v4, v7, v17);
  }

  return sub_1C8A13D34;
}

void sub_1C8A11890(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = (*a1)[2];
  v14 = **a1;
  if (a2)
  {
    sub_1C8A11984((*a1)[4], v10, a5);
    sub_1C8778ED8(v14 + v9, a3, a4);
    sub_1C8A115B8(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_26_1();
    sub_1C8805EE4();
  }

  else
  {
    sub_1C8778ED8(v14 + v9, a3, a4);
    sub_1C8A115B8(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_26_1();
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t sub_1C8A11984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_218();
  v8(v7);
  return a2;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.hasRequestID.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_4_23();
  v7 = OUTLINED_FUNCTION_13(*(v6 + 32));
  OUTLINED_FUNCTION_94_0(v7, v8);
  type metadata accessor for Siri_Nlu_External_UUID();
  v9 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v9, v10, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v14, v15, &unk_1C8BE68C0);
  return v13;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.clearRequestID()()
{
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest();
  sub_1C8778ED8(v0 + *(updated + 32), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.resultCandidateID.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A11B28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.resultCandidateID.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.resultCandidateID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.resultCandidateID.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 36);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.clearResultCandidateID()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_4_23();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 40));
  sub_1C8786744(v8, v9, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v10 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v10[5]);
    OUTLINED_FUNCTION_15_2(v10[6]);
    *(a1 + v10[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    v12 = OUTLINED_FUNCTION_121();
    return sub_1C8A115B8(v12, v13, v14);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.nluRequestID.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 40);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_2_2();
  sub_1C8A115B8(v0, v1 + v2, v3);
  type metadata accessor for Siri_Nlu_External_UUID();
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.nluRequestID.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Siri_Nlu_External_UUID();
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *(OUTLINED_FUNCTION_30_9(v8) + 40);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_13(v9);
  sub_1C8786744(v10, v11, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v5);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v5[5]);
    OUTLINED_FUNCTION_11_0(v5[6]);
    *(v7 + v5[7]) = 6;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v5);
    if (!v14)
    {
      sub_1C8778ED8(v4, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    sub_1C8A115B8(v4, v7, v17);
  }

  return sub_1C8A11F88;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.hasNluRequestID.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_4_23();
  v7 = OUTLINED_FUNCTION_13(*(v6 + 40));
  OUTLINED_FUNCTION_94_0(v7, v8);
  type metadata accessor for Siri_Nlu_External_UUID();
  v9 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v9, v10, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v14, v15, &unk_1C8BE68C0);
  return v13;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.clearNluRequestID()()
{
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest();
  sub_1C8778ED8(v0 + *(updated + 40), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 24);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 24);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.unknownFields.modify())()
{
  OUTLINED_FUNCTION_241();
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 24);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest();
  v4 = a1 + updated[6];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = updated[7];
  v6 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
  v7 = updated[8];
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(a1 + v7, 1, 1, v8);
  v9 = (a1 + updated[9]);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1 + updated[10];

  return __swift_storeEnumTagSinglePayload(v10, 1, 1, v8);
}

uint64_t sub_1C8A122AC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE198);
  __swift_project_value_buffer(v0, qword_1EC2BE198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "current_turn";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "previous_turns";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "qr_hypotheses";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "request_id";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "result_candidate_id";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "nlu_request_id";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5C40 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE198);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.decodeMessage<A>(decoder:)()
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
        sub_1C8A126E4();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A12798();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A12838();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A128D8();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8A1298C();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C8A129F0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A126E4()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 28);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8A13CEC(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A12798()
{
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8A13CEC(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8A12838()
{
  type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  sub_1C8A13CEC(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8A128D8()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 32);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8A13CEC(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A129F0()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest() + 40);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8A13CEC(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v58 = a3;
  v57 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v8 = OUTLINED_FUNCTION_80(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_0();
  v53 = v11;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_96();
  v54 = v13;
  v55 = type metadata accessor for Siri_Nlu_External_UUID();
  v14 = OUTLINED_FUNCTION_21(v55);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_0();
  v51 = v17;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_96();
  v52 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  v26 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v27 = OUTLINED_FUNCTION_21(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_33();
  v32 = v31 - v30;
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateRequest();
  sub_1C8786744(v6 + updated[7], v25, &qword_1EC2B6038, &unk_1C8BE8850);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_1C8778ED8(v25, &qword_1EC2B6038, &unk_1C8BE8850);
  }

  else
  {
    sub_1C8A115B8(v25, v32, type metadata accessor for Siri_Nlu_External_TurnInput);
    OUTLINED_FUNCTION_10_16();
    sub_1C8A13CEC(v33, v34);
    sub_1C8BD4E2C();
    result = sub_1C8805EE4();
    if (v4)
    {
      return result;
    }
  }

  if (!*(*v6 + 16) || (OUTLINED_FUNCTION_10_16(), sub_1C8A13CEC(v36, v37), OUTLINED_FUNCTION_7_22(), result = sub_1C8BD4E0C(), (v5 = v4) == 0))
  {
    if (!*(v6[1] + 16) || (type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0), sub_1C8A13CEC(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis), OUTLINED_FUNCTION_7_22(), result = sub_1C8BD4E0C(), (v5 = v4) == 0))
    {
      v38 = v54;
      sub_1C8786744(v6 + updated[8], v54, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      v39 = OUTLINED_FUNCTION_120();
      v40 = v55;
      if (__swift_getEnumTagSinglePayload(v39, v41, v55) == 1)
      {
        sub_1C8778ED8(v38, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      }

      else
      {
        sub_1C8A115B8(v38, v52, type metadata accessor for Siri_Nlu_External_UUID);
        OUTLINED_FUNCTION_15_12();
        sub_1C8A13CEC(v42, v43);
        OUTLINED_FUNCTION_7_22();
        sub_1C8BD4E2C();
        v5 = v4;
        result = sub_1C8805EE4();
        if (v4)
        {
          return result;
        }
      }

      v44 = v53;
      v45 = (v6 + updated[9]);
      if (v45[1])
      {
        v46 = *v45;
        v4 = v5;
        result = sub_1C8BD4DDC();
        if (v5)
        {
          return result;
        }

        v40 = v55;
      }

      sub_1C8786744(v6 + updated[10], v44, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if (__swift_getEnumTagSinglePayload(v44, 1, v40) == 1)
      {
        sub_1C8778ED8(v44, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      }

      else
      {
        sub_1C8A115B8(v44, v51, type metadata accessor for Siri_Nlu_External_UUID);
        OUTLINED_FUNCTION_15_12();
        sub_1C8A13CEC(v47, v48);
        OUTLINED_FUNCTION_7_22();
        sub_1C8BD4E2C();
        result = sub_1C8805EE4();
        if (v4)
        {
          return result;
        }
      }

      v49 = v6 + updated[6];
      return sub_1C8BD49DC();
    }
  }

  return result;
}