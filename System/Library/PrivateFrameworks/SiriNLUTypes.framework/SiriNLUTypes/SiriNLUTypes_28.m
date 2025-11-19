uint64_t sub_1C8A47B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE08, type metadata accessor for Siri_Nlu_Internal_TurnInputRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A47BBC(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B4910, type metadata accessor for Siri_Nlu_Internal_TurnInputRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A47C2C()
{
  sub_1C8776B78(&qword_1EC2B4910, type metadata accessor for Siri_Nlu_Internal_TurnInputRule);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A47CF8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEA60);
  __swift_project_value_buffer(v0, qword_1EC2BEA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "turn_context";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "matching_spans";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "apply_to_prompt_scenarios";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sda_comparison_mode";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_TurnInputRule.ContextRule.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_127_2();
  v10 = type metadata accessor for Siri_Nlu_External_TurnContext(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v14 = OUTLINED_FUNCTION_66();
  v17 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v14);
  OUTLINED_FUNCTION_218_4(v17[6]);
  if (__swift_getEnumTagSinglePayload(v2, 1, v10) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6010, &unk_1C8BF5040);
  }

  else
  {
    sub_1C8791864();
    sub_1C8776B78(&qword_1EDACC650, type metadata accessor for Siri_Nlu_External_TurnContext);
    OUTLINED_FUNCTION_328();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_136();
    sub_1C8A43180();
    if (v1)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_514();
  if (!v15 || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8776B78(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_445(), sub_1C8BD4E0C(), !v1))
  {
    if (*(v0 + v17[7]) == 2 || (OUTLINED_FUNCTION_170_3(), sub_1C8BD4D3C(), !v1))
    {
      if (*(v0 + v17[8]) == 2 || (sub_1C879EEEC(), OUTLINED_FUNCTION_445(), sub_1C8BD4D4C(), !v1))
      {
        v16 = v0 + v17[5];
        sub_1C8BD49DC();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_TurnInputRule.ContextRule.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_102();
  v4 = type metadata accessor for Siri_Nlu_External_TurnContext(v3);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_212();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6018, &qword_1C8BE6CD0) - 8;
  v13 = *(*v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_45();
  v35 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v15);
  v16 = v35[6];
  OUTLINED_FUNCTION_192_3();
  OUTLINED_FUNCTION_222_3();
  v17 = OUTLINED_FUNCTION_43_1(v2);
  if (v19)
  {
    OUTLINED_FUNCTION_43_1(v2 + v12);
    if (v19)
    {
      sub_1C8778ED8(v2, &qword_1EC2B6010, &unk_1C8BF5040);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v2, &qword_1EC2B6018, &qword_1C8BE6CD0);
LABEL_23:
    v34 = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_226_3(v17, v18, &qword_1EC2B6010, &unk_1C8BF5040);
  OUTLINED_FUNCTION_43_1(v2 + v12);
  if (v19)
  {
    OUTLINED_FUNCTION_202_3();
    goto LABEL_9;
  }

  sub_1C8791864();
  OUTLINED_FUNCTION_246();
  static Siri_Nlu_External_TurnContext.== infix(_:_:)();
  v21 = v20;
  OUTLINED_FUNCTION_268();
  sub_1C8A43180();
  OUTLINED_FUNCTION_516();
  sub_1C8A43180();
  sub_1C8778ED8(v2, &qword_1EC2B6010, &unk_1C8BF5040);
  if ((v21 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  v22 = *v1;
  v23 = *v0;
  sub_1C87D27C0();
  if ((v24 & 1) == 0)
  {
    goto LABEL_23;
  }

  v25 = v35[7];
  v26 = *(v1 + v25);
  v27 = *(v0 + v25);
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      goto LABEL_23;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    goto LABEL_23;
  }

  v28 = v35[8];
  v29 = *(v1 + v28);
  v30 = *(v0 + v28);
  if (v29 == 2)
  {
    if (v30 != 2)
    {
      goto LABEL_23;
    }
  }

  else if (v30 == 2 || ((v30 ^ v29) & 1) != 0)
  {
    goto LABEL_23;
  }

  v31 = v35[5];
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  sub_1C8776B78(v32, v33);
  v34 = OUTLINED_FUNCTION_299();
LABEL_24:
  OUTLINED_FUNCTION_157(v34);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A48504(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEE00, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A48584(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B49D0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A485F4()
{
  sub_1C8776B78(&qword_1EC2B49D0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A48674()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEA78);
  __swift_project_value_buffer(v0, qword_1EC2BEA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "COMPARISON_MODE_SHALLOW";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "COMPARISON_MODE_DEEP";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A48894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1CCA7E2D0](a2, a3);
  *a4 = 0xD00000000000001FLL;
  *a5 = 0x80000001C8C27600;
  return result;
}

uint64_t sub_1C8A48920()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEAA0);
  __swift_project_value_buffer(v0, qword_1EC2BEAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pattern";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "compare_options";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "spans_for_named_capture_groups";
  *(v15 + 1) = 30;
  v15[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A48B94()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(0) + 32);
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
  sub_1C8776B78(&qword_1EC2BEC18, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_450();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEBA8, &qword_1C8C10AD8);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v8);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v13 = OUTLINED_FUNCTION_127_2();
  v14 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v13);
  OUTLINED_FUNCTION_513(v14[6]);
  if (!v16 || (OUTLINED_FUNCTION_120_2(v15), sub_1C8BD4DDC(), (v0 = v1) == 0))
  {
    if (*(v3 + v14[7]) == 3 || (sub_1C8782BA4(), OUTLINED_FUNCTION_445(), sub_1C8BD4D4C(), (v0 = v1) == 0))
    {
      sub_1C87867A0(v3 + v14[8], v2, &qword_1EC2BEBA8, &qword_1C8C10AD8);
      if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
      {
        sub_1C8778ED8(v2, &qword_1EC2BEBA8, &qword_1C8C10AD8);
      }

      else
      {
        sub_1C8791864();
        sub_1C8776B78(&qword_1EC2BEC18, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions);
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_206_1();
        sub_1C8A43180();
        if (v0)
        {
          goto LABEL_11;
        }
      }

      OUTLINED_FUNCTION_514();
      if (!v17 || (type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(0), sub_1C8776B78(&qword_1EC2B49B0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans), OUTLINED_FUNCTION_117(), sub_1C8BD4E0C(), !v0))
      {
        OUTLINED_FUNCTION_212_2();
        OUTLINED_FUNCTION_136();
        sub_1C8BD49DC();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  v4 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v3);
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEBA8, &qword_1C8C10AD8);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_212();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BEC20, &qword_1C8C10AF8);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v16);
  v18 = v17[6];
  OUTLINED_FUNCTION_1();
  if (v21)
  {
    if (!v19)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_35(v20);
    v24 = v24 && v22 == v23;
    if (!v24 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v19)
  {
    goto LABEL_26;
  }

  v25 = v17[7];
  v26 = *(v1 + v25);
  v27 = *(v0 + v25);
  if (v26 != 3)
  {
    if (v26 == v27)
    {
      goto LABEL_14;
    }

LABEL_26:
    v38 = 0;
    goto LABEL_27;
  }

  if (v27 != 3)
  {
    goto LABEL_26;
  }

LABEL_14:
  v28 = v17[8];
  v29 = *(v12 + 48);
  sub_1C87867A0(v1 + v28, v2, &qword_1EC2BEBA8, &qword_1C8C10AD8);
  sub_1C87867A0(v0 + v28, v2 + v29, &qword_1EC2BEBA8, &qword_1C8C10AD8);
  v30 = OUTLINED_FUNCTION_43_1(v2);
  if (v24)
  {
    OUTLINED_FUNCTION_43_1(v2 + v29);
    if (v24)
    {
      sub_1C8778ED8(v2, &qword_1EC2BEBA8, &qword_1C8C10AD8);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_226_3(v30, v31, &qword_1EC2BEBA8, &qword_1C8C10AD8);
  OUTLINED_FUNCTION_43_1(v2 + v29);
  if (v32)
  {
    OUTLINED_FUNCTION_202_3();
LABEL_22:
    sub_1C8778ED8(v2, &qword_1EC2BEC20, &qword_1C8C10AF8);
    goto LABEL_26;
  }

  sub_1C8791864();
  OUTLINED_FUNCTION_246();
  v33 = static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.== infix(_:_:)();
  OUTLINED_FUNCTION_268();
  sub_1C8A43180();
  OUTLINED_FUNCTION_516();
  sub_1C8A43180();
  sub_1C8778ED8(v2, &qword_1EC2BEBA8, &qword_1C8C10AD8);
  if ((v33 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_24:
  OUTLINED_FUNCTION_204_2();
  sub_1C87DDF24();
  if ((v34 & 1) == 0)
  {
    goto LABEL_26;
  }

  v35 = v17[5];
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  sub_1C8776B78(v36, v37);
  v38 = OUTLINED_FUNCTION_64_0();
LABEL_27:
  OUTLINED_FUNCTION_157(v38);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A491F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEDF8, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A49278(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B4938, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A492E8()
{
  sub_1C8776B78(&qword_1EC2B4938, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A49368()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEAB8);
  __swift_project_value_buffer(v0, qword_1EC2BEAB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "COMPARISON_TYPE_UNSPECIFIED";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "COMPARISON_TYPE_EXACT_LITERAL";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "COMPARISON_TYPE_REGULAR_EXPRESSION";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A495E4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEAE0);
  __swift_project_value_buffer(v0, qword_1EC2BEAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "case_insensitive";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "diacritic_insensitive";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width_insensitive";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.decodeMessage<A>(decoder:)()
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
        sub_1C87866FC();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A49904();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A498A0();
        break;
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  v3 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v2);
  if (*(v1 + v3[5]) == 2 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), !v0))
  {
    if (*(v1 + v3[6]) == 2 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), !v0))
    {
      if (*(v1 + v3[7]) == 2)
      {
        return OUTLINED_FUNCTION_15();
      }

      OUTLINED_FUNCTION_48_0();
      result = sub_1C8BD4D3C();
      if (!v0)
      {
        return OUTLINED_FUNCTION_15();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(v0);
  OUTLINED_FUNCTION_47(*(v1 + 20));
  if (v5)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else if (v3 == 2 || ((v4 ^ v3) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47(*(v2 + 24));
  if (v5)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v8 ^ v7) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47(*(v6 + 28));
  if (v5)
  {
    if (v9 == 2)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v9 == 2 || ((v10 ^ v9) & 1) != 0)
  {
    return 0;
  }

LABEL_20:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  sub_1C8776B78(v12, v13);
  return OUTLINED_FUNCTION_159() & 1;
}

uint64_t sub_1C8A49B88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEDF0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A49C08(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2BEC18, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A49C78()
{
  sub_1C8776B78(&qword_1EC2BEC18, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A49D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (qword_1EC2B5D88 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC2BEA90;
  v10 = *algn_1EC2BEA98;
  swift_bridgeObjectRetain_n();
  v7 = OUTLINED_FUNCTION_97();
  MEMORY[0x1CCA7E2D0](v7);

  *a4 = v9;
  *a5 = v10;
  return result;
}

uint64_t sub_1C8A49DF8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEB08);
  __swift_project_value_buffer(v0, qword_1EC2BEB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "capture_group_name";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spans";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_53_7();
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(v1);
  OUTLINED_FUNCTION_25_0(v2);
  if (!v3[1] || (v4 = *v3, OUTLINED_FUNCTION_195(), result = sub_1C8BD4DDC(), !v0))
  {
    OUTLINED_FUNCTION_514();
    if (!v6 || (type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0), sub_1C8776B78(&qword_1EC2B4958, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup), OUTLINED_FUNCTION_117(), result = OUTLINED_FUNCTION_69_6(), !v0))
    {
      OUTLINED_FUNCTION_212_2();
      OUTLINED_FUNCTION_119();
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(v0);
  v2 = *(v1 + 24);
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

  OUTLINED_FUNCTION_204_2();
  sub_1C87DE35C();
  if (v9)
  {
    v10 = *(v1 + 20);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_28();
    sub_1C8776B78(v11, v12);
    return OUTLINED_FUNCTION_64_0() & 1;
  }

  return 0;
}

uint64_t sub_1C8A4A1E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEDE8, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A4A268(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B49B0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A4A2D8()
{
  sub_1C8776B78(&qword_1EC2B49B0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A4A358()
{
  if (qword_1EC2B5D88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2BEA90;
  v2 = *algn_1EC2BEA98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD00000000000001DLL, 0x80000001C8C27840);

  qword_1EC2BEB20 = v1;
  *algn_1EC2BEB28 = v2;
  return result;
}

uint64_t sub_1C8A4A420()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEB30);
  __swift_project_value_buffer(v0, qword_1EC2BEB30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target_node_idx";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "target_uda_idx";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  v3 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v2);
  v4 = v1 + v3[5];
  if (!*(v4 + 8) || (OUTLINED_FUNCTION_120_2(v4), result = sub_1C8BD4DDC(), !v0))
  {
    v6 = (v1 + v3[6]);
    if ((v6[1] & 1) != 0 || (v7 = *v6, OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D8C(), !v0))
    {
      v8 = (v1 + v3[7]);
      if (v8[1])
      {
        return OUTLINED_FUNCTION_15();
      }

      v9 = *v8;
      OUTLINED_FUNCTION_48_0();
      result = sub_1C8BD4D8C();
      if (!v0)
      {
        return OUTLINED_FUNCTION_15();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  v1 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(v0);
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
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_1();
    if ((v11 & 1) == 0)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

LABEL_14:
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
    if (v15)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_28();
  sub_1C8776B78(v16, v17);
  return OUTLINED_FUNCTION_159() & 1;
}

uint64_t sub_1C8A4A830()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  sub_1C8BD530C();
  v1(0);
  v2 = OUTLINED_FUNCTION_184();
  sub_1C8776B78(v2, v3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A4A8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776B78(&qword_1EC2BEDE0, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A4A948(uint64_t a1)
{
  v2 = sub_1C8776B78(&qword_1EC2B4958, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A4A9B8()
{
  sub_1C8776B78(&qword_1EC2B4958, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup);

  return sub_1C8BD4CFC();
}

unint64_t sub_1C8A4AA38()
{
  result = qword_1EC2B40D8;
  if (!qword_1EC2B40D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B40D8);
  }

  return result;
}

unint64_t sub_1C8A4AA90()
{
  result = qword_1EC2B40C8;
  if (!qword_1EC2B40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B40C8);
  }

  return result;
}

unint64_t sub_1C8A4AAE8()
{
  result = qword_1EC2B40D0;
  if (!qword_1EC2B40D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B40D0);
  }

  return result;
}

unint64_t sub_1C8A4AB40()
{
  result = qword_1EC2B40C0;
  if (!qword_1EC2B40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B40C0);
  }

  return result;
}

unint64_t sub_1C8A4AB98()
{
  result = qword_1EC2BEC48;
  if (!qword_1EC2BEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BEC48);
  }

  return result;
}

unint64_t sub_1C8A4ABF0()
{
  result = qword_1EC2BEC50;
  if (!qword_1EC2BEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BEC50);
  }

  return result;
}

unint64_t sub_1C8A4AC48()
{
  result = qword_1EC2BEC58;
  if (!qword_1EC2BEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BEC58);
  }

  return result;
}

unint64_t sub_1C8A4AD00()
{
  result = qword_1EC2B4178;
  if (!qword_1EC2B4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4178);
  }

  return result;
}

unint64_t sub_1C8A4AD58()
{
  result = qword_1EC2B4180;
  if (!qword_1EC2B4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4180);
  }

  return result;
}

unint64_t sub_1C8A4ADB0()
{
  result = qword_1EC2B4170;
  if (!qword_1EC2B4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4170);
  }

  return result;
}

unint64_t sub_1C8A4AE08()
{
  result = qword_1EC2B4968;
  if (!qword_1EC2B4968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4968);
  }

  return result;
}

unint64_t sub_1C8A4AE60()
{
  result = qword_1EC2B4970;
  if (!qword_1EC2B4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4970);
  }

  return result;
}

unint64_t sub_1C8A4AEB8()
{
  result = qword_1EC2B4960;
  if (!qword_1EC2B4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4960);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_OverrideMetadata.OverrideNamespace(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_OverrideMetadata.OverrideSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C8A4C244()
{
  sub_1C8A4C390(319, &qword_1EC2BED68, type metadata accessor for Siri_Nlu_Internal_ParseOverride, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8A4C390(319, &qword_1EC2BED70, type metadata accessor for Siri_Nlu_Internal_ComponentOverride, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD378);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACD3E8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A4C390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C8A4C45C()
{
  sub_1C8A4C390(319, &qword_1EC2BED78, type metadata accessor for Siri_Nlu_Internal_NluRequestRule, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2BED80);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACA2B8);
          if (v4 <= 0x3F)
          {
            sub_1C87EB4B0(319, &qword_1EDACD378);
            if (v5 <= 0x3F)
            {
              sub_1C8A4C390(319, &qword_1EC2B4060, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1C87EB4B0(319, &qword_1EC2B4228);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_118Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = *(v3 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_119Tm()
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
    *(v0 + *(v1 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1C8A4C790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C8BD49FC();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_145Tm(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_18_0(v4);
  if (*(v6 + 84) == a2)
  {
    v7 = v5;
    v8 = v2;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    OUTLINED_FUNCTION_227();
    v8 = v2 + v11;
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_index_146Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_17();
  v6 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0(v6);
  if (*(v7 + 84) == a3)
  {
    v8 = OUTLINED_FUNCTION_117();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_226_2();
    v8 = v3 + v12;
  }

  return __swift_storeEnumTagSinglePayload(v8, a2, a2, v9);
}

void sub_1C8A4C9D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C8BD49FC();
  if (v7 <= 0x3F)
  {
    sub_1C8A4C390(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
    }
  }
}

void sub_1C8A4CA88()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD3E8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A4CB1C()
{
  sub_1C8A4C390(319, &qword_1EC2B2F40, type metadata accessor for Siri_Nlu_Internal_TurnInputRule, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A4CC24()
{
  sub_1C8A4C390(319, &qword_1EC2B2F58, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8A4C390(319, &qword_1EC2B4918, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A4CD48()
{
  sub_1C8A4C390(319, &qword_1EC2B2F60, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8A4C390(319, qword_1EDACC600, type metadata accessor for Siri_Nlu_External_TurnContext, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACA2B8);
        if (v3 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EC2B4168);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A4CEA4()
{
  sub_1C8A4C390(319, &qword_1EC2B2F50, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8);
      if (v2 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2B4160);
        if (v3 <= 0x3F)
        {
          sub_1C8A4C390(319, &qword_1EC2B4980, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A4D000()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACA2B8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A4D0C4()
{
  sub_1C8A4C390(319, &qword_1EC2B2F48, type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A4D1A8()
{
  sub_1C8A4C390(319, &qword_1EC2B41D0, type metadata accessor for Siri_Nlu_External_UserParse, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C8A4D2AC()
{
  sub_1C8A4C390(319, &qword_1EC2B4088, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.CCQROverrideTemplate, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1C8A4C390(319, &qword_1EC2B41D0, type metadata accessor for Siri_Nlu_External_UserParse, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1C8A4C390(319, &qword_1EC2BEDD0, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.LVCOverrideValue, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1C8A4C390(319, &qword_1EC2BEDD8, type metadata accessor for Siri_Nlu_Internal_ComponentOverride.OverrideValue.PlanOverrideValue, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

unint64_t sub_1C8A4D4AC()
{
  result = qword_1EC2BEE58;
  if (!qword_1EC2BEE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BEE58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_90_4()
{
  sub_1C87A8FA8(v1, v0);
  sub_1C87A8FA8(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_112_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_133_1(uint64_t a1@<X8>)
{
  v3 = *(v2 + a1);
  *(v1 + 8) = a1;
  *(v1 + 12) = (v3 == 2) | v3 & 1;
}

uint64_t OUTLINED_FUNCTION_167_3(uint64_t a1, uint64_t a2)
{

  return sub_1C87867A0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_173_4(uint64_t a1)
{
  v7 = *(a1 + 20);
  *(v5 - 88) = v1;

  return sub_1C87867A0(v1 + v7, v3, v4, v2);
}

uint64_t OUTLINED_FUNCTION_174_3()
{

  return sub_1C8791864();
}

uint64_t OUTLINED_FUNCTION_190_3(uint64_t a1, uint64_t a2)
{

  return sub_1C87867A0(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_192_3()
{
  v7 = *(v5 + 56);

  return sub_1C87867A0(v1 + v0, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_204_2()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_220_1()
{

  return sub_1C8776B78(v1, v0);
}

uint64_t OUTLINED_FUNCTION_222_3()
{

  return sub_1C87867A0(v1 + v0, v2 + v5, v3, v4);
}

uint64_t OUTLINED_FUNCTION_223_3()
{

  return sub_1C8A408E0(v0);
}

uint64_t OUTLINED_FUNCTION_226_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C87867A0(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_227_2()
{

  return sub_1C8791864();
}

uint64_t Siri_Nlu_External_SemVer.majorVersion.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_SemVer();
  OUTLINED_FUNCTION_4(*(v0 + 20));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t (*Siri_Nlu_External_SemVer.majorVersion.modify(void *a1))(uint64_t result)
{
  v2 = *(OUTLINED_FUNCTION_8_20(a1) + 20);
  *(v1 + 12) = v2;
  OUTLINED_FUNCTION_4(v2);
  OUTLINED_FUNCTION_26_2();
  return sub_1C87FE8F0;
}

uint64_t Siri_Nlu_External_SemVer.minorVersion.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_SemVer();
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

uint64_t (*Siri_Nlu_External_SemVer.minorVersion.modify(void *a1))(uint64_t result)
{
  v2 = *(OUTLINED_FUNCTION_8_20(a1) + 24);
  *(v1 + 12) = v2;
  OUTLINED_FUNCTION_4(v2);
  OUTLINED_FUNCTION_26_2();
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_SemVer.patchVersion.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_SemVer();
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

uint64_t (*Siri_Nlu_External_SemVer.patchVersion.modify(void *a1))(uint64_t result)
{
  v2 = *(OUTLINED_FUNCTION_8_20(a1) + 28);
  *(v1 + 12) = v2;
  OUTLINED_FUNCTION_4(v2);
  OUTLINED_FUNCTION_26_2();
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_SemVer.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Siri_Nlu_External_SemVer.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C8A4DB3C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACCD80);
  __swift_project_value_buffer(v0, qword_1EDACCD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major_version";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor_version";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch_version";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_External_SemVer._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDACCD78 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EDACCD80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_External_SemVer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_17();
  v2 = type metadata accessor for Siri_Nlu_External_SemVer();
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = OUTLINED_FUNCTION_30(), !v1))
  {
    v6 = (v0 + v2[6]);
    if ((v6[1] & 1) != 0 || (v7 = *v6, result = OUTLINED_FUNCTION_30(), !v1))
    {
      v8 = (v0 + v2[7]);
      if (v8[1])
      {
        return sub_1C8BD49DC();
      }

      v9 = *v8;
      result = OUTLINED_FUNCTION_30();
      if (!v1)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_SemVer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_17();
  v0 = type metadata accessor for Siri_Nlu_External_SemVer();
  OUTLINED_FUNCTION_11(*(v0 + 20));
  if (v3)
  {
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v4)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11(*(v1 + 24));
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_1();
    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

LABEL_9:
  OUTLINED_FUNCTION_11(*(v5 + 28));
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
    if (v12)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776BC0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_External_SemVer.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_SemVer();
  sub_1C8776BC0(&qword_1EC2BEE80, type metadata accessor for Siri_Nlu_External_SemVer);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A4E068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776BC0(&qword_1EC2BEE90, type metadata accessor for Siri_Nlu_External_SemVer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A4E0E8(uint64_t a1)
{
  v2 = sub_1C8776BC0(&qword_1EDACCD70, type metadata accessor for Siri_Nlu_External_SemVer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A4E158()
{
  sub_1C8776BC0(&qword_1EDACCD70, type metadata accessor for Siri_Nlu_External_SemVer);

  return sub_1C8BD4CFC();
}

void sub_1C8A4E2F8()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8A4E384();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A4E384()
{
  if (!qword_1EDACD380)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDACD380);
    }
  }
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_7_27();
  sub_1C87E8DEC(v1 + *(v8 + 24), v2);
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    return sub_1C87E8E5C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_313(a1 + v9[5]);
  OUTLINED_FUNCTION_313(a1 + v9[6]);
  *(a1 + v9[7]) = 6;
  result = __swift_getEnumTagSinglePayload(v2, 1, v9);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse()
{
  result = qword_1EC2BEED0;
  if (!qword_1EC2BEED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8A4E52C(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C87E9210(a1, v5);
  return Siri_Nlu_Internal_UaapParser_UaaPParserResponse.requestID.setter(v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.requestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse() + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_UUID();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserResponse.requestID.modify(void *a1))(uint64_t **a1, char a2)
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse() + 24);
  *(v3 + 10) = v11;
  sub_1C87E8DEC(v1 + v11, v6);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
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

  return sub_1C87E9130;
}

BOOL Siri_Nlu_Internal_UaapParser_UaaPParserResponse.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_7_27();
  sub_1C87E8DEC(v0 + *(v6 + 24), v1);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  v8 = __swift_getEnumTagSinglePayload(v1, 1, v7) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v8;
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserResponse.clearRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse() + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.hypotheses.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse() + 20);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse();
  v3 = a1 + *(v2 + 20);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Siri_Nlu_External_UUID();

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1C8A4EAC4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BEE98);
  __swift_project_value_buffer(v0, qword_1EC2BEE98);
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
  *v10 = "hypotheses";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_UaapParser_UaaPParserResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5DD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BEE98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_8();
      sub_1C8A4EE64();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8A4EDB0();
    }
  }

  return result;
}

uint64_t sub_1C8A4EDB0()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse() + 24);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8A4F89C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A4EE64()
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8A4F89C(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse();
  sub_1C87E8DEC(v2 + *(v15 + 24), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v8, v14);
    sub_1C8A4F89C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_9_1();
    sub_1C8BD4E2C();
    result = sub_1C87E9274(v14);
    if (v1)
    {
      return result;
    }
  }

  if (!*(*v2 + 16) || (type metadata accessor for Siri_Nlu_External_UserParse(0), sub_1C8A4F89C(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
  {
    v17 = v2 + *(v15 + 20);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_UaapParser_UaaPParserResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UUID();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse();
  v22 = *(v21 + 24);
  v23 = v16[14];
  sub_1C87E8DEC(a1 + v22, v20);
  sub_1C87E8DEC(a2 + v22, &v20[v23]);
  OUTLINED_FUNCTION_73(v20);
  if (v24)
  {
    OUTLINED_FUNCTION_73(&v20[v23]);
    if (v24)
    {
      sub_1C8778ED8(v20, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v20, &qword_1EC2B5EE8, &unk_1C8BE6F90);
LABEL_13:
    v30 = 0;
    return v30 & 1;
  }

  sub_1C87E8DEC(v20, v15);
  OUTLINED_FUNCTION_73(&v20[v23]);
  if (v24)
  {
    sub_1C87E9274(v15);
    goto LABEL_9;
  }

  sub_1C87E8E5C(&v20[v23], v9);
  v25 = static Siri_Nlu_External_UUID.== infix(_:_:)(v15, v9);
  sub_1C87E9274(v9);
  sub_1C87E9274(v15);
  sub_1C8778ED8(v20, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v26 = *a1;
  v27 = *a2;
  sub_1C87D2A98();
  if ((v28 & 1) == 0)
  {
    goto LABEL_13;
  }

  v29 = *(v21 + 20);
  sub_1C8BD49FC();
  sub_1C8A4F89C(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  v30 = sub_1C8BD517C();
  return v30 & 1;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse();
  sub_1C8A4F89C(&qword_1EC2BEEB0, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A4F484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A4F89C(&qword_1EC2BEEE0, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A4F504(uint64_t a1)
{
  v2 = sub_1C8A4F89C(&qword_1EC2BEEC0, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A4F574()
{
  sub_1C8A4F89C(&qword_1EC2BEEC0, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse);

  return sub_1C8BD4CFC();
}

void sub_1C8A4F73C()
{
  sub_1C8A4F838(319, &qword_1EC2B4238, type metadata accessor for Siri_Nlu_External_UserParse, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8A4F838(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A4F838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C8A4F89C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_27()
{

  return type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserResponse();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_18_2(v0);
  OUTLINED_FUNCTION_18_2(*(v1 + 24));
  v3 = *(v2 + 28);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.originalUtterance.getter()
{
  OUTLINED_FUNCTION_40_9();
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    v2 = *v1;
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A4F9C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Nlv4Parser_Tokenisation.originalUtterance.setter();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.originalUtterance.setter()
{
  OUTLINED_FUNCTION_731();
  OUTLINED_FUNCTION_40_9();
  v4 = (v1 + v3);
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.originalUtterance.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 16) = v0;
  OUTLINED_FUNCTION_40_9();
  *(v1 + 32) = v3;
  v4 = OUTLINED_FUNCTION_8_0(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v1 + 24) = v4;
  *v1 = v6;
  *(v1 + 8) = v7;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Nlv4Parser_Tokenisation.clearOriginalUtterance()()
{
  OUTLINED_FUNCTION_40_9();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.normalisedUtterance.getter()
{
  OUTLINED_FUNCTION_50_9();
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    v2 = *v1;
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A4FB58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Nlv4Parser_Tokenisation.normalisedUtterance.setter();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.normalisedUtterance.setter()
{
  OUTLINED_FUNCTION_731();
  OUTLINED_FUNCTION_50_9();
  v4 = (v1 + v3);
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.normalisedUtterance.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 16) = v0;
  OUTLINED_FUNCTION_50_9();
  *(v1 + 32) = v3;
  v4 = OUTLINED_FUNCTION_8_0(v3);
  if (v4)
  {
    v6 = *v5;
    v7 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v1 + 24) = v4;
  *v1 = v6;
  *(v1 + 8) = v7;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Nlv4Parser_Tokenisation.clearNormalisedUtterance()()
{
  OUTLINED_FUNCTION_50_9();
  v2 = (v0 + v1);
  v3 = *(v0 + v1 + 8);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  v11 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v10);
  sub_1C87867A0(v1 + *(v11 + 28), v2, &qword_1EC2B6048, &unk_1C8BE6F80);
  v12 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_1_0();
  if (v13)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v14 = a1 + v12[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v12[6]);
    OUTLINED_FUNCTION_18_2(v12[7]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v13)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_29();
    OUTLINED_FUNCTION_121();
    return sub_1C8797800();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.tokenChain.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v1) + 28);
  sub_1C8778ED8(v0 + v2, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_0_29();
  OUTLINED_FUNCTION_200();
  sub_1C8797800();
  v3 = type metadata accessor for Siri_Nlu_Internal_TokenChain();

  return __swift_storeEnumTagSinglePayload(v0 + v2, 0, 1, v3);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.tokenChain.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v3[2] = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0) + 28);
  *(v3 + 10) = v11;
  sub_1C87867A0(v1 + v11, v6, &qword_1EC2B6048, &unk_1C8BE6F80);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v15 = v10 + v7[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[6]);
    OUTLINED_FUNCTION_26(v7[7]);
    v16 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v16, v17, v7);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_29();
    sub_1C8797800();
  }

  return OUTLINED_FUNCTION_31();
}

void sub_1C8A4FFA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    v9 = (*a1)[4];
    sub_1C8A53384();
    sub_1C8778ED8(v8 + v3, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C8797800();
    OUTLINED_FUNCTION_67_10();
    sub_1C8A533D8();
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2B6048, &unk_1C8BE6F80);
    OUTLINED_FUNCTION_0_29();
    sub_1C8797800();
    OUTLINED_FUNCTION_67_10();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.hasTokenChain.getter()
{
  v2 = OUTLINED_FUNCTION_12();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v8);
  sub_1C87867A0(v0 + *(v9 + 28), v1, &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v15, v16, &unk_1C8BE6F80);
  return v14;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Nlv4Parser_Tokenisation.clearTokenChain()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_14_15(v9);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
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
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_121();
    return sub_1C8797800();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.requestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_14();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A52DB8(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_56_8();
  v11 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_33_1(v11);
  OUTLINED_FUNCTION_15_3();
  v12 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v12, v13, v14, v15);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.requestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v11[v7[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_28();
    OUTLINED_FUNCTION_57_10();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.tokenisedUtterance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  OUTLINED_FUNCTION_5_19();
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  OUTLINED_FUNCTION_16_0();
  sub_1C87867A0(v1 + v11, v10, &qword_1EC2B6538, &qword_1C8C12C80);
  v12 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  OUTLINED_FUNCTION_76(v10, 1, v12);
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = (a1 + v12[5]);
    *v14 = 0;
    v14[1] = 0;
    v15 = (a1 + v12[6]);
    *v15 = 0;
    v15[1] = 0;
    v16 = v12[7];
    type metadata accessor for Siri_Nlu_Internal_TokenChain();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    result = OUTLINED_FUNCTION_76(v10, 1, v12);
    if (!v13)
    {
      return sub_1C8778ED8(v10, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_19();
    return sub_1C8797800();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.tokenisedUtterance.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_14();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A52DB8(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_56_8();
  v11 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  OUTLINED_FUNCTION_33_1(v11);
  OUTLINED_FUNCTION_15_3();
  v12 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v12, v13, v14, v15);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.tokenisedUtterance.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v7);
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    OUTLINED_FUNCTION_26(v8[6]);
    v13 = v8[7];
    type metadata accessor for Siri_Nlu_Internal_TokenChain();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_19();
    OUTLINED_FUNCTION_57_10();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8A50910(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1C8A53384();
    a3(v5);
    sub_1C8A533D8();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t sub_1C8A509F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_731();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  OUTLINED_FUNCTION_5_19();
  v17 = *a3;
  OUTLINED_FUNCTION_277();
  sub_1C87867A0(v5 + v17, v16, v6, v4);
  v18 = a4(0);
  OUTLINED_FUNCTION_76(v16, 1, v18);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_1C8778ED8(v16, v6, v4);
  return v20;
}

uint64_t sub_1C8A50AF0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_731();
  v9 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0) + 20);
  v19 = *(v5 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v5 + v18);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v22 = OUTLINED_FUNCTION_2();
    v21 = sub_1C8A52DB8(v22);
    *(v9 + v18) = v21;
  }

  a3(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = *a4;
  swift_beginAccess();
  sub_1C878656C(v17, v21 + v27, v6, v4);
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.embeddings.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_14_15(v9);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v10 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v12 = a1 + v10[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v10[6]);
    OUTLINED_FUNCTION_15_2(v10[7]);
    OUTLINED_FUNCTION_15_2(v10[8]);
    OUTLINED_FUNCTION_18_2(v10[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_21();
    OUTLINED_FUNCTION_121();
    return sub_1C8797800();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.embeddings.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_14();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A52DB8(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_8_21();
  OUTLINED_FUNCTION_56_8();
  v11 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_33_1(v11);
  OUTLINED_FUNCTION_15_3();
  v12 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v12, v13, v14, v15);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.embeddings.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    *v11 = MEMORY[0x1E69E7CC0];
    v13 = v11 + v7[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[6]);
    OUTLINED_FUNCTION_11_0(v7[7]);
    OUTLINED_FUNCTION_11_0(v7[8]);
    OUTLINED_FUNCTION_26(v7[9]);
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_21();
    OUTLINED_FUNCTION_57_10();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.getter()
{
  OUTLINED_FUNCTION_12_20();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  OUTLINED_FUNCTION_277();
  v4 = *(v2 + v3);
}

uint64_t sub_1C8A50FE0(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.setter();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C8A52DB8(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  OUTLINED_FUNCTION_37_0();
  v10 = *(v7 + v9);
  *(v7 + v9) = v0;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_12_20();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  OUTLINED_FUNCTION_277();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

void sub_1C8A51110(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.matchingSpans.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_13_21();
      v14 = OUTLINED_FUNCTION_2();
      v11 = sub_1C8A52DB8(v14);
      *(v13 + v12) = v11;
    }

    v15 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
    OUTLINED_FUNCTION_37_0();
    v16 = *(v11 + v15);
    *(v11 + v15) = v3;
  }

  free(v2);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_14_15(v9);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
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
    OUTLINED_FUNCTION_11_24();
    OUTLINED_FUNCTION_121();
    return sub_1C8797800();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.turnInput.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_14();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A52DB8(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_56_8();
  v11 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_33_1(v11);
  OUTLINED_FUNCTION_15_3();
  v12 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v12, v13, v14, v15);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.turnInput.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(v7);
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *&v12[v14] = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_24();
    OUTLINED_FUNCTION_57_10();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.maxNumParses.getter()
{
  OUTLINED_FUNCTION_12_20();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses);
  OUTLINED_FUNCTION_277();
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.maxNumParses.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C8A52DB8(v8);
    *(v2 + v4) = v7;
  }

  v9 = v7 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  result = OUTLINED_FUNCTION_37_0();
  *v9 = v0;
  *(v9 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.maxNumParses.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_12_20();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  OUTLINED_FUNCTION_277();
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  *(v1 + 72) = v5;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8A51700(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_13_21();
    v10 = OUTLINED_FUNCTION_2();
    v7 = sub_1C8A52DB8(v10);
    *(v9 + v8) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  OUTLINED_FUNCTION_37_0();
  *v11 = v2;
  *(v11 + 8) = 0;

  free(v1);
}

BOOL Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.hasMaxNumParses.getter()
{
  OUTLINED_FUNCTION_12_20();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  OUTLINED_FUNCTION_277();
  return (*(v2 + 8) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.clearMaxNumParses()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v6 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8A52DB8(v6);
    *(v1 + v2) = v5;
  }

  v7 = v5 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  OUTLINED_FUNCTION_37_0();
  *v7 = 0;
  *(v7 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_14_15(v9);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v10 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v10[5]);
    v12 = v10[6];
    type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_18_2(v10[7]);
    OUTLINED_FUNCTION_18_2(v10[8]);
    OUTLINED_FUNCTION_18_2(v10[9]);
    OUTLINED_FUNCTION_18_2(v10[10]);
    *(a1 + v10[11]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_121();
    return sub_1C8797800();
  }

  return result;
}

uint64_t sub_1C8A519B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C8A53384();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.nluRequestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_14();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_21();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A52DB8(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_9_23();
  OUTLINED_FUNCTION_56_8();
  v11 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_33_1(v11);
  OUTLINED_FUNCTION_15_3();
  v12 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v12, v13, v14, v15);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.nluRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_13_2(v6);
  v7 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_21(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_19();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
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
    v11[v7[11]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v12)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_57_10();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0) + 20);
  if (qword_1EC2B4468 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2B4470;
}

uint64_t sub_1C8A51DBC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B45F8);
  __swift_project_value_buffer(v0, qword_1EC2B45F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "original_utterance";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "normalised_utterance";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "token_chain";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.decodeMessage<A>(decoder:)()
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
        sub_1C8A5213C();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A520D8();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A52074();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8A5213C()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0) + 28);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C8A5342C(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_Tokenisation.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  v13 = (v0 + v12[5]);
  if (!v13[1] || (v14 = *v13, result = sub_1C8BD4DDC(), !v1))
  {
    v16 = (v0 + v12[6]);
    if (!v16[1] || (v17 = *v16, result = sub_1C8BD4DDC(), !v1))
    {
      sub_1C87867A0(v0 + v12[7], v7, &qword_1EC2B6048, &unk_1C8BE6F80);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        sub_1C8778ED8(v7, &qword_1EC2B6048, &unk_1C8BE6F80);
      }

      else
      {
        sub_1C8797800();
        sub_1C8A5342C(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
        sub_1C8BD4E2C();
        result = sub_1C8A533D8();
        if (v1)
        {
          return result;
        }
      }

      return sub_1C8BD49DC();
    }
  }

  return result;
}

void static Siri_Nlu_Internal_Nlv4Parser_Tokenisation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_84();
  v25 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v26 = OUTLINED_FUNCTION_21(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&a9 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v40);
  v41 = OUTLINED_FUNCTION_74();
  v42 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v41);
  v43 = v42[5];
  OUTLINED_FUNCTION_1();
  if (!v44)
  {
    if (v45)
    {
      goto LABEL_28;
    }

LABEL_10:
    v49 = v42[6];
    OUTLINED_FUNCTION_1();
    if (v50)
    {
      if (!v51)
      {
        goto LABEL_28;
      }

      v54 = *v52 == *v53 && v50 == v51;
      if (!v54 && (sub_1C8BD529C() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v51)
    {
      goto LABEL_28;
    }

    v55 = v42[7];
    v56 = *(v37 + 48);
    sub_1C87867A0(v21 + v55, v22, &qword_1EC2B6048, &unk_1C8BE6F80);
    sub_1C87867A0(v20 + v55, v22 + v56, &qword_1EC2B6048, &unk_1C8BE6F80);
    v57 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v57, v58, v25);
    if (v48)
    {
      OUTLINED_FUNCTION_76(v22 + v56, 1, v25);
      if (v48)
      {
        sub_1C8778ED8(v22, &qword_1EC2B6048, &unk_1C8BE6F80);
        goto LABEL_30;
      }
    }

    else
    {
      sub_1C87867A0(v22, v36, &qword_1EC2B6048, &unk_1C8BE6F80);
      OUTLINED_FUNCTION_76(v22 + v56, 1, v25);
      if (!v59)
      {
        sub_1C8797800();
        v60 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v36, v30);
        OUTLINED_FUNCTION_220();
        sub_1C8A533D8();
        sub_1C8A533D8();
        sub_1C8778ED8(v22, &qword_1EC2B6048, &unk_1C8BE6F80);
        if ((v60 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_30:
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_29_11();
        sub_1C8A5342C(v61, v62);
        OUTLINED_FUNCTION_159();
        goto LABEL_28;
      }

      sub_1C8A533D8();
    }

    sub_1C8778ED8(v22, &qword_1EC2B6050, &qword_1C8BE6D00);
    goto LABEL_28;
  }

  if (v45)
  {
    v48 = *v46 == *v47 && v44 == v45;
    if (v48 || (sub_1C8BD529C() & 1) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A527CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A5342C(&qword_1EC2BEF18, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A5284C(uint64_t a1)
{
  v2 = sub_1C8A5342C(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A528BC()
{
  sub_1C8A5342C(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A52958()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4438);
  __swift_project_value_buffer(v0, qword_1EC2B4438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C8BE7150;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "request_id";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "tokenised_utterance";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v21 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "embeddings";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADC8];
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "matching_spans";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "turn_input";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "max_num_parses";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "nlu_request_id";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A52C70()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C8A52CB0();
  qword_1EC2B4470 = result;
  return result;
}

uint64_t sub_1C8A52CB0()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  v4 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  v11 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  return v0;
}

uint64_t sub_1C8A52DB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v48 - v17;
  v19 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  v20 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  v22 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  v24 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v26 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  v50 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  v27 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v28 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  v52 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  v30 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v1 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v31, v18, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_beginAccess();
  sub_1C878656C(v18, v1 + v19, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v33 = v49;
  sub_1C87867A0(a1 + v32, v49, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_beginAccess();
  sub_1C878656C(v33, v1 + v21, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  swift_beginAccess();
  v35 = v51;
  sub_1C87867A0(a1 + v34, v51, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_beginAccess();
  sub_1C878656C(v35, v1 + v23, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  swift_beginAccess();
  v37 = *(a1 + v36);
  swift_beginAccess();
  v38 = *(v1 + v25);
  *(v1 + v25) = v37;

  v39 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  swift_beginAccess();
  v40 = v53;
  sub_1C87867A0(a1 + v39, v53, &qword_1EC2B6038, &unk_1C8BE8850);
  v41 = v50;
  swift_beginAccess();
  sub_1C878656C(v40, v1 + v41, &qword_1EC2B6038, &unk_1C8BE8850);
  swift_endAccess();
  v42 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses);
  swift_beginAccess();
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 8);
  swift_beginAccess();
  *v28 = v43;
  *(v28 + 8) = v42;
  v44 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  swift_beginAccess();
  v45 = v54;
  sub_1C87867A0(a1 + v44, v54, &qword_1EC2B64B0, &unk_1C8BF3F40);

  v46 = v52;
  swift_beginAccess();
  sub_1C878656C(v45, v1 + v46, &qword_1EC2B64B0, &unk_1C8BF3F40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C8A53384()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C8A533D8()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A5342C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8A53474()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings, &qword_1EC2B64A8, &unk_1C8BE7670);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v0;
}

uint64_t sub_1C8A5353C()
{
  v0 = sub_1C8A53474();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2();
    *(v1 + v2) = sub_1C8A52DB8(v9);
  }

  return sub_1C8A53630();
}

uint64_t sub_1C8A53630()
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
        sub_1C8A53764();
        break;
      case 2:
        sub_1C8A53840();
        break;
      case 3:
        sub_1C8A5391C();
        break;
      case 4:
        sub_1C8A539F8();
        break;
      case 5:
        sub_1C8A53AD4();
        break;
      case 6:
        sub_1C8A53BB0();
        break;
      case 7:
        sub_1C8A53C3C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A53764()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8A5342C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A53840()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  sub_1C8A5342C(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A5391C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  sub_1C8A5342C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A539F8()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8A5342C(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C8A53AD4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8A5342C(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A53BB0()
{
  swift_beginAccess();
  sub_1C8BD4C4C();
  return swift_endAccess();
}

uint64_t sub_1C8A53C3C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C8A5342C(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest(0);
  result = sub_1C8A53D84(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A53D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v66 = a3;
  v68 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v54 - v7;
  v56 = type metadata accessor for Siri_Nlu_External_RequestID();
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v61 = &v54 - v12;
  v58 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v63 = &v54 - v17;
  v64 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v18 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v54 - v22;
  v62 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  v24 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v54 - v28;
  v30 = type metadata accessor for Siri_Nlu_External_UUID();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v32, v29, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_1C8778ED8(v29, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v33 = v65;
  }

  else
  {
    sub_1C8797800();
    sub_1C8A5342C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    v34 = v65;
    sub_1C8BD4E2C();
    v33 = v34;
    result = sub_1C8A533D8();
    if (v34)
    {
      return result;
    }
  }

  v36 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  v37 = v68;
  swift_beginAccess();
  sub_1C87867A0(v37 + v36, v23, &qword_1EC2B6538, &qword_1C8C12C80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v62);
  v39 = v64;
  v40 = v63;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v23, &qword_1EC2B6538, &qword_1C8C12C80);
  }

  else
  {
    sub_1C8797800();
    sub_1C8A5342C(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    sub_1C8BD4E2C();
    result = sub_1C8A533D8();
    if (v33)
    {
      return result;
    }
  }

  v41 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  v42 = v68;
  swift_beginAccess();
  sub_1C87867A0(v42 + v41, v40, &qword_1EC2B64A8, &unk_1C8BE7670);
  v43 = __swift_getEnumTagSinglePayload(v40, 1, v39);
  v44 = v61;
  if (v43 == 1)
  {
    sub_1C8778ED8(v40, &qword_1EC2B64A8, &unk_1C8BE7670);
  }

  else
  {
    sub_1C8797800();
    sub_1C8A5342C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8BD4E2C();
    result = sub_1C8A533D8();
    if (v33)
    {
      return result;
    }
  }

  v45 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  v46 = v68;
  swift_beginAccess();
  if (!*(*(v46 + v45) + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8A5342C(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), , sub_1C8BD4E0C(), result = , !v33))
  {
    v47 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
    v48 = v68;
    swift_beginAccess();
    sub_1C87867A0(v48 + v47, v44, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v44, 1, v58) == 1)
    {
      sub_1C8778ED8(v44, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C8797800();
      sub_1C8A5342C(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
      sub_1C8BD4E2C();
      result = sub_1C8A533D8();
      if (v33)
      {
        return result;
      }
    }

    v49 = (v68 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses);
    swift_beginAccess();
    if ((v49[1] & 1) != 0 || (v50 = *v49, result = sub_1C8BD4DFC(), !v33))
    {
      v51 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
      v52 = v68;
      swift_beginAccess();
      v53 = v55;
      sub_1C87867A0(v52 + v51, v55, &qword_1EC2B64B0, &unk_1C8BF3F40);
      if (__swift_getEnumTagSinglePayload(v53, 1, v56) == 1)
      {
        return sub_1C8778ED8(v53, &qword_1EC2B64B0, &unk_1C8BF3F40);
      }

      else
      {
        sub_1C8797800();
        sub_1C8A5342C(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
        sub_1C8BD4E2C();
        return sub_1C8A533D8();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_20();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1C8A54854(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_29_11();
  sub_1C8A5342C(v9, v10);
  return OUTLINED_FUNCTION_159() & 1;
}

BOOL sub_1C8A54854(uint64_t a1, uint64_t a2)
{
  v150 = a2;
  v127 = type metadata accessor for Siri_Nlu_External_RequestID();
  v3 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  v5 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v124 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v125 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v130 = &v124 - v11;
  v133 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v12 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v129 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  v14 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v134 = &v124 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v131 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v136 = &v124 - v20;
  v140 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v21 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v135 = (&v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  v23 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139);
  v141 = &v124 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v137 = (&v124 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v148 = &v124 - v29;
  v146 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  v30 = *(*(v146 - 8) + 64);
  MEMORY[0x1EEE9AC00](v146);
  v138 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6570, &unk_1C8C13000);
  v32 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v147 = &v124 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v142 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v145 = &v124 - v38;
  v39 = type metadata accessor for Siri_Nlu_External_UUID();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v143 = &v124 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v43 = v42 - 8;
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v124 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v149 = &v124 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v124 - v51;
  v53 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v53, v52, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v54 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__requestID;
  v55 = v150;
  swift_beginAccess();
  v56 = *(v43 + 56);
  sub_1C87867A0(v52, v46, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87867A0(v55 + v54, &v46[v56], &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v46, 1, v39) == 1)
  {

    sub_1C8778ED8(v52, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(&v46[v56], 1, v39) == 1)
    {
      sub_1C8778ED8(v46, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_8;
    }

LABEL_6:
    v58 = &qword_1EC2B5EE8;
    v59 = &unk_1C8BE6F90;
    v60 = v46;
LABEL_22:
    sub_1C8778ED8(v60, v58, v59);
    goto LABEL_23;
  }

  v57 = v149;
  sub_1C87867A0(v46, v149, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(&v46[v56], 1, v39) == 1)
  {

    sub_1C8778ED8(v52, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C8A533D8();
    goto LABEL_6;
  }

  v61 = v143;
  sub_1C8797800();

  v62 = static Siri_Nlu_External_UUID.== infix(_:_:)(v57, v61);
  sub_1C8A533D8();
  sub_1C8778ED8(v52, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8A533D8();
  sub_1C8778ED8(v46, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v62 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v63 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v64 = v145;
  sub_1C87867A0(a1 + v63, v145, &qword_1EC2B6538, &qword_1C8C12C80);
  v65 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v66 = *(v144 + 48);
  v67 = v147;
  sub_1C87867A0(v64, v147, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C87867A0(v55 + v65, v67 + v66, &qword_1EC2B6538, &qword_1C8C12C80);
  v68 = v146;
  if (__swift_getEnumTagSinglePayload(v67, 1, v146) == 1)
  {
    sub_1C8778ED8(v64, &qword_1EC2B6538, &qword_1C8C12C80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67 + v66, 1, v68);
    v70 = v148;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v67, &qword_1EC2B6538, &qword_1C8C12C80);
      goto LABEL_15;
    }

LABEL_13:
    v58 = &qword_1EC2B6570;
    v59 = &unk_1C8C13000;
LABEL_21:
    v60 = v67;
    goto LABEL_22;
  }

  v71 = v142;
  sub_1C87867A0(v67, v142, &qword_1EC2B6538, &qword_1C8C12C80);
  v72 = __swift_getEnumTagSinglePayload(v67 + v66, 1, v68);
  v70 = v148;
  if (v72 == 1)
  {
    sub_1C8778ED8(v64, &qword_1EC2B6538, &qword_1C8C12C80);
    sub_1C8A533D8();
    goto LABEL_13;
  }

  v73 = v138;
  sub_1C8797800();
  static Siri_Nlu_Internal_Nlv4Parser_Tokenisation.== infix(_:_:)(v71, v73, v74, v75, v76, v77, v78, v79, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
  v81 = v80;
  sub_1C8A533D8();
  sub_1C8778ED8(v64, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C8A533D8();
  sub_1C8778ED8(v67, &qword_1EC2B6538, &qword_1C8C12C80);
  if ((v81 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v82 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  swift_beginAccess();
  sub_1C87867A0(a1 + v82, v70, &qword_1EC2B64A8, &unk_1C8BE7670);
  v83 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__embeddings;
  swift_beginAccess();
  v84 = *(v139 + 48);
  v67 = v141;
  sub_1C87867A0(v70, v141, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87867A0(v55 + v83, v67 + v84, &qword_1EC2B64A8, &unk_1C8BE7670);
  v85 = v140;
  if (__swift_getEnumTagSinglePayload(v67, 1, v140) == 1)
  {
    sub_1C8778ED8(v70, &qword_1EC2B64A8, &unk_1C8BE7670);
    if (__swift_getEnumTagSinglePayload(v67 + v84, 1, v85) == 1)
    {
      sub_1C8778ED8(v67, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v86 = v137;
  sub_1C87867A0(v67, v137, &qword_1EC2B64A8, &unk_1C8BE7670);
  if (__swift_getEnumTagSinglePayload(v67 + v84, 1, v85) == 1)
  {
    sub_1C8778ED8(v70, &qword_1EC2B64A8, &unk_1C8BE7670);
    sub_1C8A533D8();
LABEL_20:
    v58 = &qword_1EC2B64E0;
    v59 = &unk_1C8BE7880;
    goto LABEL_21;
  }

  v88 = v135;
  sub_1C8797800();
  v89 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v86, v88);
  sub_1C8A533D8();
  sub_1C8778ED8(v70, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C8A533D8();
  sub_1C8778ED8(v67, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v89 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_27:
  v90 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  swift_beginAccess();
  v91 = *(a1 + v90);
  v92 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__matchingSpans;
  swift_beginAccess();
  v93 = *(v55 + v92);

  sub_1C87D27C0();
  v95 = v94;

  if ((v95 & 1) == 0)
  {
    goto LABEL_23;
  }

  v96 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  swift_beginAccess();
  v97 = v136;
  sub_1C87867A0(a1 + v96, v136, &qword_1EC2B6038, &unk_1C8BE8850);
  v98 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__turnInput;
  swift_beginAccess();
  v99 = *(v132 + 48);
  v100 = v134;
  sub_1C87867A0(v97, v134, &qword_1EC2B6038, &unk_1C8BE8850);
  v101 = v55 + v98;
  v102 = v100;
  sub_1C87867A0(v101, v100 + v99, &qword_1EC2B6038, &unk_1C8BE8850);
  v103 = v133;
  if (__swift_getEnumTagSinglePayload(v100, 1, v133) == 1)
  {
    sub_1C8778ED8(v97, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v100 + v99, 1, v103) == 1)
    {
      sub_1C8778ED8(v100, &qword_1EC2B6038, &unk_1C8BE8850);
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  v104 = v131;
  sub_1C87867A0(v100, v131, &qword_1EC2B6038, &unk_1C8BE8850);
  if (__swift_getEnumTagSinglePayload(v100 + v99, 1, v103) == 1)
  {
    sub_1C8778ED8(v136, &qword_1EC2B6038, &unk_1C8BE8850);
    sub_1C8A533D8();
LABEL_33:
    v58 = &qword_1EC2B6040;
    v59 = &unk_1C8BE6CF0;
    v60 = v100;
    goto LABEL_22;
  }

  v105 = v129;
  sub_1C8797800();
  if (*(v104 + *(v103 + 20)) != *(v105 + *(v103 + 20)))
  {

    sub_1C88AD618();
    v107 = v106;

    if ((v107 & 1) == 0)
    {
      sub_1C8A533D8();
      sub_1C8778ED8(v136, &qword_1EC2B6038, &unk_1C8BE8850);
      sub_1C8A533D8();
      v60 = v102;
      v58 = &qword_1EC2B6038;
      v59 = &unk_1C8BE8850;
      goto LABEL_22;
    }
  }

  sub_1C8BD49FC();
  sub_1C8A5342C(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  v108 = sub_1C8BD517C();
  sub_1C8A533D8();
  sub_1C8778ED8(v136, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C8A533D8();
  sub_1C8778ED8(v102, &qword_1EC2B6038, &unk_1C8BE8850);
  if ((v108 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_37:
  v109 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses);
  swift_beginAccess();
  v110 = *v109;
  v111 = *(v109 + 8);
  v112 = v55 + OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__maxNumParses;
  swift_beginAccess();
  v113 = *(v112 + 8);
  if ((v111 & 1) == 0)
  {
    if ((*(v112 + 8) & 1) == 0 && v110 == *v112)
    {
      goto LABEL_42;
    }

LABEL_23:

    return 0;
  }

  if ((*(v112 + 8) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_42:
  v114 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  swift_beginAccess();
  v115 = v130;
  sub_1C87867A0(a1 + v114, v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v116 = OBJC_IVAR____TtCV12SiriNLUTypes46Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequestP33_213882D7DA20741D131C3E8D875D2EAB13_StorageClass__nluRequestID;
  swift_beginAccess();
  v117 = *(v126 + 48);
  v118 = v115;
  v119 = v128;
  sub_1C87867A0(v118, v128, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C87867A0(v55 + v116, v119 + v117, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v120 = v127;
  if (__swift_getEnumTagSinglePayload(v119, 1, v127) == 1)
  {

    sub_1C8778ED8(v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v119 + v117, 1, v120) == 1)
    {
      sub_1C8778ED8(v119, &qword_1EC2B64B0, &unk_1C8BF3F40);
      return 1;
    }

    goto LABEL_48;
  }

  v121 = v125;
  sub_1C87867A0(v119, v125, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v119 + v117, 1, v120) == 1)
  {

    sub_1C8778ED8(v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C8A533D8();
LABEL_48:
    sub_1C8778ED8(v119, &qword_1EC2B64D8, &unk_1C8BEAC20);
    return 0;
  }

  v122 = v124;
  sub_1C8797800();
  v123 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v121, v122);

  sub_1C8A533D8();
  sub_1C8778ED8(v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C8A533D8();
  sub_1C8778ED8(v119, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return (v123 & 1) != 0;
}

uint64_t sub_1C8A55AC8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8A5342C(a2, a3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A55BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A5342C(&qword_1EC2BEF10, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A55C24(uint64_t a1)
{
  v2 = sub_1C8A5342C(&qword_1EC2BEF00, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A55C94()
{
  sub_1C8A5342C(&qword_1EC2BEF00, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest);

  return sub_1C8BD4CFC();
}

void sub_1C8A55F7C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v1 <= 0x3F)
    {
      sub_1C8A56304(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8A5605C()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_NLv4ParserRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C8A560E8()
{
  sub_1C8A56304(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1C8A56304(319, &qword_1EC2B45C8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1C8A56304(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1C8A56304(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1C8A56304(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1C8A56304(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_56_8()
{

  return sub_1C8797800();
}

uint64_t sub_1C8A56A18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1C8BD530C();
  a3(v4);
  OUTLINED_FUNCTION_243_4();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A56B10()
{
  OUTLINED_FUNCTION_225_3();
  v1 = sub_1C8BD530C();
  v0(v1);
  OUTLINED_FUNCTION_135_2();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A56B80()
{
  OUTLINED_FUNCTION_225_3();
  v1 = sub_1C8BD530C();
  v0(v1);
  OUTLINED_FUNCTION_135_2();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A571EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1C8BD530C();
  a4(v5);
  OUTLINED_FUNCTION_243_4();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A572C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1C8BD530C();
  a3(v4);
  OUTLINED_FUNCTION_135_2();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A573B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1C8BD530C();
  a3(v4);
  OUTLINED_FUNCTION_135_2();
  return sub_1C8BD531C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.getter()
{
  OUTLINED_FUNCTION_63_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_277();
  if (*(v2 + 24))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A57474(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.setter();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.setter()
{
  v4 = OUTLINED_FUNCTION_68();
  v5 = OUTLINED_FUNCTION_222_4(v4);
  v6 = *(v1 + v3);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v7 = OUTLINED_FUNCTION_2();
    v8 = sub_1C8A5F93C(v7);
    OUTLINED_FUNCTION_40(v8);
  }

  OUTLINED_FUNCTION_37_0();
  v9 = *(v6 + 24);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
}

void (*Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_63_6();
  *(v3 + 18) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_277();
  if (*(v5 + 24))
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C8A575DC;
}

void sub_1C8A575DC(uint64_t a1)
{
  OUTLINED_FUNCTION_732(a1);
  if (v4)
  {
    v5 = *(v1 + 64);

    OUTLINED_FUNCTION_184();
    Siri_Nlu_External_NluRouter_NLRouterServiceRequest.currentUserQuery.setter();
    v6 = *(v1 + 56);
  }

  else
  {
    v7 = *(v1 + 72);
    v8 = *(v1 + 64);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 72);
      v13 = *(v1 + 64);
      OUTLINED_FUNCTION_72_6();
      v14 = OUTLINED_FUNCTION_2();
      v11 = sub_1C8A5F93C(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_37_0();
    v15 = *(v11 + 24);
    *(v11 + 16) = v3;
    *(v11 + 24) = v2;
  }

  free(v1);
}

BOOL Siri_Nlu_External_NluRouter_NLRouterServiceRequest.hasCurrentUserQuery.getter()
{
  OUTLINED_FUNCTION_63_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_277();
  return *(v2 + 24) != 0;
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRouterServiceRequest.clearCurrentUserQuery()()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20);
  v2 = *(v0 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v4 = sub_1C8A5F93C(v4);
    *(v0 + v1) = v4;
  }

  OUTLINED_FUNCTION_37_0();
  v5 = *(v4 + 24);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.turnContext.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  v11 = *(v1 + *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v10) + 20));
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_84_1();
  sub_1C8778810();
  v12 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  OUTLINED_FUNCTION_1_0();
  if (v13)
  {
    OUTLINED_FUNCTION_227_3(MEMORY[0x1E69E7CC0]);
    v14 = a1 + *(v12 + 32);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v13)
    {
      return sub_1C8778ED8(v2, &qword_1EC2BF178, &qword_1C8C13010);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.turnContext.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF178, &qword_1C8C13010);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_222_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A5F93C(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_54_8();
  OUTLINED_FUNCTION_196_0();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_227_3(MEMORY[0x1E69E7CC0]);
  v2 = a1 + *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0) + 32);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

void Siri_Nlu_External_NluRouter_NLRouterServiceRequest.turnContext.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(v9);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_63_6();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v13 = MEMORY[0x1E69E7CC0];
    v13[1] = v17;
    v13[2] = v17;
    v13[3] = v17;
    v18 = v13 + *(v10 + 32);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_0_0();
    if (!v16)
    {
      sub_1C8778ED8(v1, &qword_1EC2BF178, &qword_1C8C13010);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_8();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.getter()
{
  OUTLINED_FUNCTION_63_6();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
  OUTLINED_FUNCTION_277();
  v4 = *(v2 + v3);
}

uint64_t sub_1C8A57B84(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.setter();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C8A5F93C(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
  OUTLINED_FUNCTION_37_0();
  v10 = *(v7 + v9);
  *(v7 + v9) = v0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  OUTLINED_FUNCTION_63_6();
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
  OUTLINED_FUNCTION_277();
  v3[6] = *(v5 + v6);

  return OUTLINED_FUNCTION_12();
}

void sub_1C8A57CB8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Siri_Nlu_External_NluRouter_NLRouterServiceRequest.conversationHistory.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_72_6();
      v14 = OUTLINED_FUNCTION_2();
      v11 = sub_1C8A5F93C(v14);
      *(v13 + v12) = v11;
    }

    v15 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
    OUTLINED_FUNCTION_37_0();
    v16 = *(v11 + v15);
    *(v11 + v15) = v3;
  }

  free(v2);
}

uint64_t sub_1C8A57D80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_NLRouterServiceRequest.requestID.setter(v1, v2);
}

void (*Siri_Nlu_External_NluRouter_NLRouterServiceRequest.requestID.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_63_6();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_277();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C8A57E6C;
}

uint64_t sub_1C8A57EB0(void *a1)
{
  OUTLINED_FUNCTION_63_6();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_277();
  if (v4[1])
  {
    v5 = *v4;
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A57F14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_NLRouterServiceRequest.trpCandidateID.setter(v1, v2);
}

uint64_t sub_1C8A57F60(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  v8 = OUTLINED_FUNCTION_68();
  v9 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v8) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v13 = OUTLINED_FUNCTION_2();
    v12 = sub_1C8A5F93C(v13);
    *(v7 + v9) = v12;
  }

  v14 = (v12 + *a3);
  OUTLINED_FUNCTION_37_0();
  v15 = v14[1];
  *v14 = v5;
  v14[1] = v3;
}

void (*Siri_Nlu_External_NluRouter_NLRouterServiceRequest.trpCandidateID.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_63_6();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_277();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C8A5808C;
}

void sub_1C8A580AC()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_732(v3);
  if (v6)
  {
    v7 = v5;
    v8 = *(v0 + 64);

    v9 = OUTLINED_FUNCTION_184();
    v7(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    v11 = v4;
    v12 = *(v0 + 72);
    v13 = *(v0 + 64);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v0 + 72);
      v18 = *(v0 + 64);
      OUTLINED_FUNCTION_72_6();
      v19 = OUTLINED_FUNCTION_2();
      v16 = sub_1C8A5F93C(v19);
      *(v18 + v17) = v16;
    }

    v20 = (v16 + *v11);
    OUTLINED_FUNCTION_37_0();
    v21 = v20[1];
    *v20 = v2;
    v20[1] = v1;
  }

  OUTLINED_FUNCTION_260();

  free(v22);
}

BOOL sub_1C8A5817C(void *a1)
{
  OUTLINED_FUNCTION_63_6();
  v4 = *(v1 + v3) + *a1;
  OUTLINED_FUNCTION_277();
  return *(v4 + 8) != 0;
}

uint64_t sub_1C8A581D8(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C8A5F93C(v8);
    *(v3 + v4) = v7;
  }

  v9 = (v7 + *a1);
  OUTLINED_FUNCTION_37_0();
  v10 = v9[1];
  *v9 = 0;
  v9[1] = 0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.probingResult.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_170();
  v9 = *(v1 + *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v8) + 20));
  OUTLINED_FUNCTION_277();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_65(v0);
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(v11);
    v12 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_313_0();
    v17 = type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(v16);
    result = OUTLINED_FUNCTION_9_13(v17);
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF180, &qword_1C8C13018);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_4();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.probingResult.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF180, &qword_1C8C13018);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_222_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A5F93C(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_196_0();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_External_NluRouter_NLRouterServiceRequest.probingResult.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v9);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_63_6();
  v14 = *(v0 + v13);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v10 + 20);
    type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = *(v10 + 24);
    type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(0);
    v22 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v1, &qword_1EC2BF180, &qword_1C8C13018);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8A5860C()
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
    sub_1C8A5FE98();
    v2(v3);
    sub_1C8A5FEEC();
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

uint64_t sub_1C8A586E0(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_63_6();
  v13 = *(v4 + v12);
  v14 = *a3;
  OUTLINED_FUNCTION_277();
  sub_1C8778810();
  a4(0);
  v15 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v15, v16, v17);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = OUTLINED_FUNCTION_100();
  sub_1C8778ED8(v20, v21, a2);
  return v19;
}

void sub_1C8A587D8()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v16 = OUTLINED_FUNCTION_2();
    *(v5 + v12) = sub_1C8A5F93C(v16);
  }

  v4(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = *v2;
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.queryDecorationOutput.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_74();
  v11 = *(v1 + *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v10) + 20));
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_84_1();
  sub_1C8778810();
  DecorationOutput = type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  OUTLINED_FUNCTION_1_0();
  if (v13)
  {
    OUTLINED_FUNCTION_227_3(MEMORY[0x1E69E7CC0]);
    a1[4] = v14;
    a1[5] = v14;
    a1[6] = v14;
    a1[7] = v14;
    v15 = a1 + *(DecorationOutput + 48);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v13)
    {
      return sub_1C8778ED8(v2, &qword_1EC2BF188, &qword_1C8C13020);
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_11();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.queryDecorationOutput.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF188, &qword_1C8C13020);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = OUTLINED_FUNCTION_222_4(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_72_6();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A5F93C(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_57_11();
  OUTLINED_FUNCTION_196_0();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_227_3(MEMORY[0x1E69E7CC0]);
  a1[4] = v2;
  a1[5] = v2;
  a1[6] = v2;
  a1[7] = v2;
  v3 = a1 + *(type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0) + 48);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

void Siri_Nlu_External_NluRouter_NLRouterServiceRequest.queryDecorationOutput.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  DecorationOutput = type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(v9);
  OUTLINED_FUNCTION_21(DecorationOutput);
  v12 = *(v11 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v2 + 48) = v13;
  OUTLINED_FUNCTION_63_6();
  v15 = *(v0 + v14);
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v13 = MEMORY[0x1E69E7CC0];
    v13[1] = v17;
    v13[2] = v17;
    v13[3] = v17;
    v13[4] = v17;
    v13[5] = v17;
    v13[6] = v17;
    v13[7] = v17;
    v18 = v13 + *(DecorationOutput + 48);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_0_0();
    if (!v16)
    {
      sub_1C8778ED8(v1, &qword_1EC2BF188, &qword_1C8C13020);
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_11();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20);
  if (qword_1EC2B37B0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2B37B8;
}

uint64_t Siri_Nlu_External_NluRouter_NLParseResponse.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8A58E30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_PommesResponse.metadataDomainName.setter();
}

uint64_t Siri_Nlu_External_NluRouter_PommesResponse.metadataDomainName.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(v2);
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

uint64_t Siri_Nlu_External_NluRouter_TypedValue.primitive.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_170();
  v10 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v9) + 20);
  OUTLINED_FUNCTION_84_5();
  v11 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v11 + 20)) = 2;
    v13 = OUTLINED_FUNCTION_313_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(v13);
    v14 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = *(v11 + 28);
    v19 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
    result = OUTLINED_FUNCTION_9_13(v19);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF190, &qword_1C8C13028);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_9();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.primitive.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BF190, &qword_1C8C13028);
  OUTLINED_FUNCTION_55_9();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
  *(a1 + v2[5]) = 2;
  v3 = v2[6];
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = v2[7];
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
  v9 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void Siri_Nlu_External_NluRouter_TypedValue.primitive.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v6);
  OUTLINED_FUNCTION_51_0(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v12);
  OUTLINED_FUNCTION_130_3(*(v13 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = OUTLINED_FUNCTION_198_1();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(v15);
    v16 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = *(v7 + 28);
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
    v21 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF190, &qword_1C8C13028);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_9();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.entityIdentifier.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v7) + 24);
  OUTLINED_FUNCTION_57_0();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0);
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v11);
    v12 = OUTLINED_FUNCTION_27_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    OUTLINED_FUNCTION_18_2(*(v9 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF198, &qword_1C8C13030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.entityIdentifier.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BF198, &qword_1C8C13030);
  OUTLINED_FUNCTION_53_8();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0);
  v1 = *(v0 + 20);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_18_2(*(v0 + 24));
}

void Siri_Nlu_External_NluRouter_TypedValue.entityIdentifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v6);
  OUTLINED_FUNCTION_51_0(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v13);
  OUTLINED_FUNCTION_130_3(*(v14 + 24));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v7 + 20);
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = (v9 + *(v7 + 24));
    *v21 = 0;
    v21[1] = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF198, &qword_1C8C13030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_53_8();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.BOOLValue.setter(char a1)
{
  result = OUTLINED_FUNCTION_202_4();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.BOOLValue.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v1);
  OUTLINED_FUNCTION_173_5(v2);
  return j__OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.hasBoolValue.getter()
{
  OUTLINED_FUNCTION_202_4();
  OUTLINED_FUNCTION_195_3(v0);
  return !v1;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.person.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v9) + 24);
  OUTLINED_FUNCTION_57_0();
  v11 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_1_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v11 + 20)) = xmmword_1C8BFA8E0;
    result = OUTLINED_FUNCTION_1_0();
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF1A0, &qword_1C8C13038);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_8();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.person.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BF1A0, &qword_1C8C13038);
  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

double Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.init()@<D0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  result = 0.0;
  *(a1 + *(v2 + 20)) = xmmword_1C8BFA8E0;
  return result;
}

void Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.person.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(v7);
  OUTLINED_FUNCTION_47_3(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v14);
  OUTLINED_FUNCTION_85(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v10 + *(v1 + 20)) = xmmword_1C8BFA8E0;
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1A0, &qword_1C8C13038);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_8();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A59A7C()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211();
  v9 = *(v1(0) + 24);
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v0(0);
  v10 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = OUTLINED_FUNCTION_258();
  sub_1C8778ED8(v15, v16, v2);
  return v14;
}

uint64_t sub_1C8A59B68()
{
  OUTLINED_FUNCTION_50();
  v1 = OUTLINED_FUNCTION_167();
  v3 = *(v2(v1) + 24);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v4, v5, v6);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.app.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v7) + 28);
  OUTLINED_FUNCTION_57_0();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v9 + 20));
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF1A8, &qword_1C8C13040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_15();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.app.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2BF1A8, &qword_1C8C13040);
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1C8A59D38(uint64_t (*a1)(void))
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = a1(0);
  result = OUTLINED_FUNCTION_10_1(v2);
  *v4 = 0;
  v4[1] = 0;
  return result;
}

void Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.app.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_43_0(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(v6);
  OUTLINED_FUNCTION_47_3(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v12);
  OUTLINED_FUNCTION_85(*(v13 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1A8, &qword_1C8C13040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_15();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A59F50()
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

uint64_t sub_1C8A59F98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App.bundleIdentifier.setter();
}

uint64_t sub_1C8A59FF0()
{
  v3 = OUTLINED_FUNCTION_68();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_24_0(*(v5 + 20));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.App(v2);
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

uint64_t sub_1C8A5A0DC()
{
  v1 = OUTLINED_FUNCTION_167();
  v3 = v2(v1);
  result = OUTLINED_FUNCTION_25_2(*(v3 + 20));
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.person.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_10_1(v0);
  sub_1C87A8FA8(*v1, *(v1 + 8));
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.person.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = v1 + *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(v3) + 20);
  result = sub_1C87A9A24(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.person.modify(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0) + 20);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_1C87A8FA8(v5, v6);
  return OUTLINED_FUNCTION_74_0();
}

BOOL Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.hasPerson.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0);
  OUTLINED_FUNCTION_10_1(v0);
  return *(v1 + 8) >> 60 != 15;
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person.clearPerson()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue.Person(0) + 20);
  sub_1C87A9A24(*v1, *(v1 + 8));
  *v1 = xmmword_1C8BFA8E0;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.type.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v7) + 20);
  OUTLINED_FUNCTION_84_5();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = OUTLINED_FUNCTION_332_0();
    v11 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v10);
    result = OUTLINED_FUNCTION_9_13(v11);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF1B0, &qword_1C8C13048);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_10();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.type.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BF1B0, &qword_1C8C13048);
  OUTLINED_FUNCTION_50_10();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.type.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v7);
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v13);
  OUTLINED_FUNCTION_85(*(v14 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v1 + 20);
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1B0, &qword_1C8C13048);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_10();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A5A5E8()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211();
  v9 = *(v1(0) + 20);
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v0(0);
  v10 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = OUTLINED_FUNCTION_258();
  sub_1C8778ED8(v15, v16, v2);
  return v14;
}

uint64_t sub_1C8A5A6D4()
{
  OUTLINED_FUNCTION_50();
  v1 = OUTLINED_FUNCTION_167();
  v3 = *(v2(v1) + 20);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v4, v5, v6);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C8A5A760(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.identifier.setter();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v2);
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

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.custom.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v7) + 20);
  OUTLINED_FUNCTION_57_0();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(0);
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v9 + 20));
    OUTLINED_FUNCTION_18_2(*(v9 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF1B8, &unk_1C8C13050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_10();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.custom.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BF1B8, &unk_1C8C13050);
  OUTLINED_FUNCTION_49_10();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(0);
  return OUTLINED_FUNCTION_89_4(v0);
}

void Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.custom.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v7);
  OUTLINED_FUNCTION_47_3(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_140_3();
    v17 = (v10 + *(v1 + 24));
    *v17 = 0;
    v17[1] = 0;
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1B8, &unk_1C8C13050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_10();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A5ABF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.bundleIdentifier.setter();
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v2);
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

uint64_t sub_1C8A5AD14()
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

uint64_t sub_1C8A5AD5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.typeName.setter();
}

uint64_t sub_1C8A5ADB4()
{
  v3 = OUTLINED_FUNCTION_68();
  v5 = v4(v3);
  result = OUTLINED_FUNCTION_24_0(*(v5 + 24));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom.typeName.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue.TypeIdentifier.Custom(v2);
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

uint64_t sub_1C8A5AEA0()
{
  v1 = OUTLINED_FUNCTION_167();
  v3 = v2(v1);
  result = OUTLINED_FUNCTION_25_2(*(v3 + 24));
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_1C8A5AF34()
{
  OUTLINED_FUNCTION_225_3();
  v3 = v2;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = *(v3(0) + 20);
  v1(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OUTLINED_FUNCTION_313_0();
  v0(v9);
  v10 = OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void Siri_Nlu_External_NluRouter_RetrievedContext.type.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v1);
  OUTLINED_FUNCTION_141_3(*(v2 + 20));
  *v0 = v3;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_RetrievedContext.type.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v2) + 20);
  *(v1 + 8) = v3;
  OUTLINED_FUNCTION_141_3(v3);
  *(v1 + 12) = v4;
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.typedValue.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v7) + 24);
  OUTLINED_FUNCTION_84_5();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = OUTLINED_FUNCTION_332_0();
    v11 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v10);
    result = OUTLINED_FUNCTION_9_13(v11);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5F88, &qword_1C8BE6C38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_11();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.typedValue.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5F88, &qword_1C8BE6C38);
  OUTLINED_FUNCTION_47_11();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1C8A5B2A8()
{
  OUTLINED_FUNCTION_12_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(v1(0) + 20);
  v0(0);
  v3 = OUTLINED_FUNCTION_73_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_RetrievedContext.typedValue.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v7);
  OUTLINED_FUNCTION_47_3(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext(v13);
  OUTLINED_FUNCTION_85(*(v14 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v1 + 20);
    type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_5_6();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5F88, &qword_1C8BE6C38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_11();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

SiriNLUTypes::Siri_Nlu_External_NluRouter_RetrievedContext::ContextType_optional __swiftcall Siri_Nlu_External_NluRouter_RetrievedContext.ContextType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 28)
  {
    v2 = 2;
  }

  else
  {
    v2 = 5;
  }

  if (rawValue == 29)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if (rawValue == 50)
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (rawValue == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (!rawValue)
  {
    v5 = 0;
  }

  *v1 = v5;
  return rawValue;
}

uint64_t sub_1C8A5B57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A6F4F0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8A5B610@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_RetrievedContext.ContextType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.primitive.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_170();
  v10 = *(type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v9) + 20);
  OUTLINED_FUNCTION_84_5();
  v11 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v11 + 20)) = 2;
    v13 = OUTLINED_FUNCTION_313_0();
    v14 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v13);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5F78, &unk_1C8C13060);
    }
  }

  else
  {
    OUTLINED_FUNCTION_59_10();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.primitive.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5F78, &unk_1C8C13060);
  OUTLINED_FUNCTION_59_10();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.primitive.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v6);
  OUTLINED_FUNCTION_51_0(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue(v12);
  OUTLINED_FUNCTION_130_3(*(v13 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = OUTLINED_FUNCTION_198_1();
    type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v15);
    v16 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5F78, &unk_1C8C13060);
    }
  }

  else
  {
    OUTLINED_FUNCTION_59_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.BOOLValue.setter(char a1)
{
  result = OUTLINED_FUNCTION_168_3();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.BOOLValue.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v1);
  OUTLINED_FUNCTION_173_5(v2);
  return j_j__OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.hasBoolValue.getter()
{
  OUTLINED_FUNCTION_168_3();
  OUTLINED_FUNCTION_195_3(v0);
  return !v1;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.app.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v7) + 24);
  OUTLINED_FUNCTION_57_0();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(0);
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v9 + 20));
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5F68, &qword_1C8BE6C18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.app.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5F68, &qword_1C8BE6C18);
  OUTLINED_FUNCTION_30_11();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.app.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_43_0(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v6);
  OUTLINED_FUNCTION_47_3(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue(v12);
  OUTLINED_FUNCTION_85(*(v13 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5F68, &qword_1C8BE6C18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_11();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A5BD90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App.bundleIdentifier.setter();
}

uint64_t Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_RetrievedContext.TypedValue.PrimitiveValue.App(v2);
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

uint64_t sub_1C8A5BEE8@<X0>(uint64_t (*a1)(void)@<X0>, char a2@<W1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v8 = a1(0);
  *(a4 + *(v8 + 20)) = a2;
  v9 = *(v8 + 24);
  a3(0);
  v10 = OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.typedValue.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(v7) + 24);
  OUTLINED_FUNCTION_84_5();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(v10);
    v11 = OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_313_0();
    v16 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(v15);
    result = OUTLINED_FUNCTION_9_13(v16);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5F58, &qword_1C8C13070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_8();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.typedValue.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5F58, &qword_1C8C13070);
  OUTLINED_FUNCTION_58_8();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.typedValue.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(v6);
  OUTLINED_FUNCTION_51_0(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(v12);
  OUTLINED_FUNCTION_130_3(*(v13 + 24));
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = *(v7 + 20);
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.PrimitiveValue(0);
    v16 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = *(v7 + 24);
    type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue.EntityIdentifierValue(0);
    v21 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5F58, &qword_1C8C13070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_58_8();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A5C2D0()
{
  v0 = OUTLINED_FUNCTION_207();
  v2 = *(v1(v0) + 20);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_196();

  return v7(v6);
}

uint64_t sub_1C8A5C35C()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 20);
  v5 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8A5C428(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.sourceItemIdentifier.setter();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.sourceItemIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
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

uint64_t sub_1C8A5C548(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.entityName.setter();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.entityName.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
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

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.startIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  OUTLINED_FUNCTION_0(*(v0 + 28));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.startIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v0);
  OUTLINED_FUNCTION_7_19(*(v1 + 28));
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.startIndex.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2) + 28);
  *(v1 + 16) = v3;
  OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_233_1();
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.endIndex.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  OUTLINED_FUNCTION_0(*(v0 + 32));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.endIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v0);
  OUTLINED_FUNCTION_7_19(*(v1 + 32));
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.endIndex.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2) + 32);
  *(v1 + 16) = v3;
  OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_233_1();
  return OUTLINED_FUNCTION_74_0();
}

float Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchScore.getter()
{
  OUTLINED_FUNCTION_181_2();
  result = OUTLINED_FUNCTION_32_11(v0);
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchScore.setter(float a1)
{
  result = OUTLINED_FUNCTION_181_2();
  *v3 = a1;
  *(v3 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchScore.modify(void *a1))(uint64_t result)
{
  v3 = OUTLINED_FUNCTION_55_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v3) + 36);
  *(v1 + 12) = v4;
  v5 = OUTLINED_FUNCTION_32_11(v2 + v4);
  if (!v7)
  {
    v5 = v6;
  }

  *(v1 + 8) = v5;
  return sub_1C87FE8F0;
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.clearMatchScore()()
{
  OUTLINED_FUNCTION_181_2();
  *v0 = 0;
  *(v0 + 4) = 1;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_170();
  v10 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v9) + 40);
  OUTLINED_FUNCTION_84_5();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + matched[5]);
    OUTLINED_FUNCTION_313(a1 + matched[6]);
    v13 = matched[7];
    v14 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF1C0, &qword_1C8C13078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_12();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchProperties.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2BF1C0, &qword_1C8C13078);
  OUTLINED_FUNCTION_27_12();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_109_0(matched);
  OUTLINED_FUNCTION_2_1(v3);
  v5 = a1 + *(v4 + 24);
  *v5 = 0;
  *(v5 + 8) = v6;
  v7 = *(v4 + 28);
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
  v8 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matchProperties.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v6);
  OUTLINED_FUNCTION_51_0(matched);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v13);
  OUTLINED_FUNCTION_130_3(*(v14 + 40));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(v9 + matched[5]);
    OUTLINED_FUNCTION_313(v9 + matched[6]);
    v16 = matched[7];
    type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1C0, &qword_1C8C13078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.hasMatchProperties.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v7) + 40);
  OUTLINED_FUNCTION_242_3();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_76(v0, 1, matched);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v12, v13, &qword_1C8C13078);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.clearMatchProperties()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  sub_1C8778ED8(v0 + *(v1 + 40), &qword_1EC2BF1C0, &qword_1C8C13078);
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matcherType.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
  v4 = *(v1 + *(result + 44));
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *v0 = v4;
  return result;
}

uint64_t sub_1C8A5CD74@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matcherType.getter();
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matcherType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.matcherType.modify(void *a1))(uint64_t result)
{
  v3 = OUTLINED_FUNCTION_55_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v3) + 44);
  *(v1 + 8) = v4;
  v5 = *(v2 + v4);
  if (v5 == 3)
  {
    LOBYTE(v5) = 0;
  }

  *(v1 + 12) = v5;
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.originAppBundleID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 48)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A5CF08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.originAppBundleID.setter();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.originAppBundleID.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 48));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.originAppBundleID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 48)))
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

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.clearOriginAppBundleID()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 48));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.userUtterance.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 52)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A5D08C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.userUtterance.setter();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.userUtterance.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 52));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.userUtterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 52)))
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

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.clearUserUtterance()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 52));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.identifier.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 56)))
  {
    OUTLINED_FUNCTION_20(v1);
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A5D210(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.identifier.setter();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.identifier.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  v4 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v3);
  result = OUTLINED_FUNCTION_24_0(*(v4 + 56));
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.identifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 56)))
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

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.clearIdentifier()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  OUTLINED_FUNCTION_25_2(*(v1 + 56));
  *v0 = 0;
  v0[1] = 0;
}

uint64_t sub_1C8A5D3B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A6F544();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.maxTokenCount.getter()
{
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_0(*(matched + 20));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.maxTokenCount.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v1);
  result = OUTLINED_FUNCTION_10_1(matched);
  *v4 = v0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.maxTokenCount.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v2) + 20);
  *(v1 + 16) = v3;
  OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_233_1();
  return OUTLINED_FUNCTION_74_0();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.clearMaxTokenCount()()
{
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_10_1(matched);
  OUTLINED_FUNCTION_2_1(v1);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedTokenCount.getter()
{
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_0(*(matched + 24));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedTokenCount.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v0);
  OUTLINED_FUNCTION_7_19(*(matched + 24));
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedTokenCount.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v2) + 24);
  *(v1 + 16) = v3;
  OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_233_1();
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedAliasTypes.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v9) + 28);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_386();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF1C8, &qword_1C8C13080);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_14();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedAliasTypes.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v1);
  sub_1C8778ED8(v0 + *(matched + 28), &qword_1EC2BF1C8, &qword_1C8C13080);
  OUTLINED_FUNCTION_25_14();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1C8A5D780@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a1(0);
  OUTLINED_FUNCTION_109_0(v2);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.matchedAliasTypes.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  matched = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(v7);
  OUTLINED_FUNCTION_47_3(matched);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(v14);
  OUTLINED_FUNCTION_85(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v17 = v10 + *(v1 + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1C8, &qword_1C8C13080);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_14();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8A5D938()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211();
  v9 = *(v1(0) + 28);
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v0(0);
  v10 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = OUTLINED_FUNCTION_258();
  sub_1C8778ED8(v15, v16, v2);
  return v14;
}

uint64_t sub_1C8A5DA24()
{
  OUTLINED_FUNCTION_50();
  v1 = OUTLINED_FUNCTION_167();
  v3 = *(v2(v1) + 28);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v4, v5, v6);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1C8A5DB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A6F598();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties.AliasTypes(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.init()(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch(0);
  v3 = OUTLINED_FUNCTION_89_4(v2);
  OUTLINED_FUNCTION_2_1(a1 + *(v3 + 28));
  v5 = a1 + v4[8];
  *v5 = 0;
  *(v5 + 8) = v6;
  v7 = a1 + v4[9];
  *v7 = 0;
  *(v7 + 4) = v6;
  v8 = v4[10];
  type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity.EntityMatch.MatchProperties(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *(a1 + v2[11]) = 3;
  OUTLINED_FUNCTION_18_2(v2[12]);
  OUTLINED_FUNCTION_18_2(v2[13]);
  OUTLINED_FUNCTION_18_2(v2[14]);
}

uint64_t Siri_Nlu_External_NluRouter_SpanMatchedEntity.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_SpanMatchedEntity(0);
  OUTLINED_FUNCTION_109_0(v1);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(v1 + 24);
  type metadata accessor for Siri_Nlu_External_NluRouter_TypedValue(0);
  v3 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.originalRankedSpans.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.adjustedRankedSpans.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.spans.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.context.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(v0) + 48);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_196();

  return v6(v5);
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(v2) + 48);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Siri_Nlu_External_NluRouter_QueryDecorationOutput.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(v0) + 48);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.nlParseResponse.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  v10 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v9) + 20);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_386();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BF1D0, &qword_1C8C13088);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.nlParseResponse.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BF1D0, &qword_1C8C13088);
  OUTLINED_FUNCTION_23_18();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.nlParseResponse.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLParseResponse(v7);
  OUTLINED_FUNCTION_47_3(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v17 = v10 + *(v1 + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1D0, &qword_1C8C13088);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.pommesResponse.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v7) + 24);
  OUTLINED_FUNCTION_57_0();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(0);
  OUTLINED_FUNCTION_1_0();
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v9 + 20));
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BF1D8, &unk_1C8C13090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_121();
    return sub_1C8A5FE44();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.pommesResponse.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BF1D8, &unk_1C8C13090);
  OUTLINED_FUNCTION_22_17();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.pommesResponse.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_43_0(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_PommesResponse(v6);
  OUTLINED_FUNCTION_47_3(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(v12);
  OUTLINED_FUNCTION_85(*(v13 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_140_3();
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BF1D8, &unk_1C8C13090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_184();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.executedTasks.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.systemDialogActs.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.salientEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(v0) + 32);
  v2 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_196();

  return v6(v5);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(v2) + 32);
  v4 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterTurnContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(v0) + 32);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8A5E86C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_RequestSummary.userQuery.setter();
}

uint64_t Siri_Nlu_External_NluRouter_RequestSummary.userQuery.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(v2);
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

uint64_t Siri_Nlu_External_NluRouter_RequestSummary.turnSummaries.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_RequestSummary.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_NluRouter_RequestSummary.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(0);
  OUTLINED_FUNCTION_109_0(v1);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(*(v1 + 24));
}

uint64_t sub_1C8A5EA98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_TurnSummary.executedQuery.setter();
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.executedQuery.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v2);
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

uint64_t sub_1C8A5EBB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_TurnSummary.responseText.setter();
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.responseText.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v2);
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

void Siri_Nlu_External_NluRouter_TurnSummary.executionSource.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v1);
  OUTLINED_FUNCTION_141_3(*(v2 + 28));
  *v0 = v3;
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.executionSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_TurnSummary.executionSource.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v2) + 28);
  *(v1 + 8) = v3;
  OUTLINED_FUNCTION_141_3(v3);
  *(v1 + 12) = v4;
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.genAiMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_170();
  v10 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v9) + 32);
  OUTLINED_FUNCTION_84_5();
  v11 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + v11[5]) = 5;
    *(a1 + v11[6]) = 3;
    v13 = v11[7];
    v14 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
    result = OUTLINED_FUNCTION_9_13(v14);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5FA8, &unk_1C8BEBC60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_12();
    return OUTLINED_FUNCTION_190_4();
  }

  return result;
}

uint64_t sub_1C8A5EF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_253();
  sub_1C8A5FE98();
  return a7(v7);
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.genAiMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B5FA8, &unk_1C8BEBC60);
  OUTLINED_FUNCTION_48_12();
  OUTLINED_FUNCTION_200();
  sub_1C8A5FE44();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_TurnSummary.genAiMetadata.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_30_6(v5);
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v6);
  OUTLINED_FUNCTION_51_0(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v13);
  OUTLINED_FUNCTION_130_3(*(v14 + 32));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v9 + v7[5]) = 5;
    *(v9 + v7[6]) = 3;
    v16 = v7[7];
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FA8, &unk_1C8BEBC60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C8A5FE44();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C8A5F184()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C8A5FE98();
    sub_1C8778ED8(v10 + v5, v3, v2);
    sub_1C8A5FE44();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    OUTLINED_FUNCTION_253();
    sub_1C8A5FEEC();
  }

  else
  {
    sub_1C8778ED8(v10 + v5, v0, v1);
    sub_1C8A5FE44();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v18);
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.hasGenAiMetadata.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(v7) + 32);
  OUTLINED_FUNCTION_242_3();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
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
  sub_1C8778ED8(v12, v13, &unk_1C8BEBC60);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_TurnSummary.clearGenAiMetadata()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B5FA8, &unk_1C8BEBC60);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C8A5F3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A6F5EC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_TurnSummary.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_TurnSummary(0);
  v3 = OUTLINED_FUNCTION_89_4(v2);
  *(a1 + *(v3 + 28)) = 5;
  v4 = *(v3 + 32);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  v5 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1C8A5F514()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3778);
  __swift_project_value_buffer(v0, qword_1EC2B3778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "current_user_query";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "turn_context";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "conversation_history";
  *(v12 + 1) = 20;
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
  *v16 = "trp_candidate_id";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "probing_result";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "query_decoration_output";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A5F838()
{
  v0 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C8A5F878();
  qword_1EC2B37B8 = result;
  return result;
}

uint64_t sub_1C8A5F878()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__turnContext;
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory) = MEMORY[0x1E69E7CC0];
  v3 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__probingResult;
  v6 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__queryDecorationOutput;
  DecorationOutput = type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, DecorationOutput);
  return v0;
}

uint64_t sub_1C8A5F93C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF188, &qword_1C8C13020);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34[4] = v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF180, &qword_1C8C13018);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34[3] = v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF178, &qword_1C8C13010);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__turnContext;
  v34[0] = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__turnContext;
  v12 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory) = MEMORY[0x1E69E7CC0];
  v14 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__probingResult;
  v34[1] = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__probingResult;
  v17 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__queryDecorationOutput;
  v34[2] = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__queryDecorationOutput;
  DecorationOutput = type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, DecorationOutput);
  swift_beginAccess();
  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 24) = v20;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();

  sub_1C8786514();
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
  swift_beginAccess();
  v23 = *(a1 + v22);
  swift_beginAccess();
  v24 = *(v1 + v13);
  *(v1 + v13) = v23;

  v25 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];
  swift_beginAccess();
  v28 = v14[1];
  *v14 = v27;
  v14[1] = v26;

  v29 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];
  swift_beginAccess();
  v32 = v15[1];
  *v15 = v31;
  v15[1] = v30;

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
  return v1;
}

uint64_t sub_1C8A5FE44()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C8A5FE98()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C8A5FEEC()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A60180()
{
  v1 = *(v0 + 24);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__turnContext, &qword_1EC2BF178, &qword_1C8C13010);
  v2 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory);

  v3 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID + 8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__probingResult, &qword_1EC2BF180, &qword_1C8C13018);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__queryDecorationOutput, &qword_1EC2BF188, &qword_1C8C13020);
  return v0;
}

uint64_t sub_1C8A60238()
{
  v0 = sub_1C8A60180();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2();
    *(v1 + v2) = sub_1C8A5F93C(v9);
  }

  OUTLINED_FUNCTION_85_1();
  return sub_1C8A60328();
}

uint64_t sub_1C8A60328()
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
        sub_1C8A60474();
        break;
      case 3:
        sub_1C8A60550();
        break;
      case 4:
      case 5:
        sub_1C8A6062C();
        break;
      case 6:
        sub_1C8A606A0();
        break;
      case 7:
        sub_1C8A6077C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A60474()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  sub_1C8776C08(&qword_1EC2B3848, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A60550()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(0);
  sub_1C8776C08(&qword_1EC2B39F8, type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C8A6062C()
{
  OUTLINED_FUNCTION_9_2();
  v1 = *v0;
  swift_beginAccess();
  OUTLINED_FUNCTION_119();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t sub_1C8A606A0()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  sub_1C8776C08(&qword_1EC2B34F0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A6077C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  sub_1C8776C08(&qword_1EC2B3800, type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceRequest.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(0) + 20));
  OUTLINED_FUNCTION_119();
  result = sub_1C8A608BC(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A608BC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF188, &qword_1C8C13020);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = v32 - v6;
  DecorationOutput = type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  v7 = *(*(DecorationOutput - 8) + 64);
  MEMORY[0x1EEE9AC00](DecorationOutput);
  v32[1] = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF180, &qword_1C8C13018);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = v32 - v11;
  v36 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  v12 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v32[2] = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF178, &qword_1C8C13010);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v32 - v16;
  v18 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  swift_beginAccess();
  if (!*(a1 + 24) || (v20 = *(a1 + 16), v21 = *(a1 + 24), , sub_1C8BD4DDC(), result = , !v2))
  {
    swift_beginAccess();
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      sub_1C8778ED8(v17, &qword_1EC2BF178, &qword_1C8C13010);
    }

    else
    {
      sub_1C8A5FE44();
      sub_1C8776C08(&qword_1EC2B3848, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext);
      sub_1C8BD4E2C();
      result = sub_1C8A5FEEC();
      if (v2)
      {
        return result;
      }
    }

    v23 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
    swift_beginAccess();
    if (!*(*(a1 + v23) + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary(0), sub_1C8776C08(&qword_1EC2B39F8, type metadata accessor for Siri_Nlu_External_NluRouter_RequestSummary), , sub_1C8BD4E0C(), result = , !v2))
    {
      v24 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
      swift_beginAccess();
      if (!v24[1] || (v25 = *v24, v26 = v24[1], , sub_1C8BD4DDC(), result = , !v2))
      {
        v27 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
        swift_beginAccess();
        if (!v27[1] || (v28 = *v27, v29 = v27[1], , sub_1C8BD4DDC(), result = , !v2))
        {
          swift_beginAccess();
          v30 = v35;
          sub_1C8778810();
          if (__swift_getEnumTagSinglePayload(v30, 1, v36) == 1)
          {
            sub_1C8778ED8(v30, &qword_1EC2BF180, &qword_1C8C13018);
          }

          else
          {
            sub_1C8A5FE44();
            sub_1C8776C08(&qword_1EC2B34F0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult);
            sub_1C8BD4E2C();
            result = sub_1C8A5FEEC();
            if (v2)
            {
              return result;
            }
          }

          swift_beginAccess();
          v31 = v33;
          sub_1C8778810();
          if (__swift_getEnumTagSinglePayload(v31, 1, DecorationOutput) == 1)
          {
            return sub_1C8778ED8(v31, &qword_1EC2BF188, &qword_1C8C13020);
          }

          else
          {
            sub_1C8A5FE44();
            sub_1C8776C08(&qword_1EC2B3800, type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput);
            sub_1C8BD4E2C();
            return sub_1C8A5FEEC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_NluRouter_NLRouterServiceRequest.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceRequest(v2) + 20);
  if (*(v1 + v3) != *(v0 + v3))
  {
    v4 = *(v1 + v3);

    v5 = OUTLINED_FUNCTION_271();
    v7 = sub_1C8A6108C(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_30();
  sub_1C8776C08(v8, v9);
  return OUTLINED_FUNCTION_159() & 1;
}

BOOL sub_1C8A6108C(uint64_t a1, uint64_t a2)
{
  DecorationOutput = type metadata accessor for Siri_Nlu_External_NluRouter_QueryDecorationOutput(0);
  v4 = *(*(DecorationOutput - 8) + 64);
  MEMORY[0x1EEE9AC00](DecorationOutput);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF5D0, &qword_1C8C15B20);
  v7 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v9 = &v80 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF188, &qword_1C8C13020);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v80 - v14;
  v88 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult(0);
  v15 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF5D8, &qword_1C8C15B28);
  v17 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF180, &qword_1C8C13018);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v86 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v90 = &v80 - v23;
  v94 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterTurnContext(0);
  v24 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF5E0, &unk_1C8C15B30);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v80 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BF178, &qword_1C8C13010);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v93 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v80 - v34;
  swift_beginAccess();
  v37 = *(a1 + 16);
  v36 = *(a1 + 24);
  swift_beginAccess();
  v38 = *(a2 + 24);
  if (v36)
  {
    if (!v38)
    {
      return 0;
    }

    v39 = v37 == *(a2 + 16) && v36 == v38;
    if (!v39 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }

LABEL_10:
    v80 = v6;
    v81 = v9;
    swift_beginAccess();
    sub_1C8778810();
    swift_beginAccess();
    v40 = *(v26 + 48);
    sub_1C8778810();
    sub_1C8778810();
    v41 = v94;
    if (__swift_getEnumTagSinglePayload(v29, 1, v94) == 1)
    {

      sub_1C8778ED8(v35, &qword_1EC2BF178, &qword_1C8C13010);
      if (__swift_getEnumTagSinglePayload(&v29[v40], 1, v41) == 1)
      {
        sub_1C8778ED8(v29, &qword_1EC2BF178, &qword_1C8C13010);
        goto LABEL_18;
      }
    }

    else
    {
      sub_1C8778810();
      if (__swift_getEnumTagSinglePayload(&v29[v40], 1, v41) != 1)
      {
        sub_1C8A5FE44();

        v42 = static Siri_Nlu_External_NluRouter_NLRouterTurnContext.== infix(_:_:)();
        sub_1C8A5FEEC();
        sub_1C8778ED8(v35, &qword_1EC2BF178, &qword_1C8C13010);
        sub_1C8A5FEEC();
        sub_1C8778ED8(v29, &qword_1EC2BF178, &qword_1C8C13010);
        if ((v42 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_18:
        v43 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
        swift_beginAccess();
        v44 = *(a1 + v43);
        v45 = OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__conversationHistory;
        swift_beginAccess();
        v46 = *(a2 + v45);

        sub_1C87E3B08(v44, v46, v47, v48, v49, v50, v51, v52, v80, v81, v82, v83, v84, DecorationOutput, v86, v87, v88, v89, v90, v91);
        v53 = a1;
        v55 = v54;

        if ((v55 & 1) == 0)
        {
          goto LABEL_44;
        }

        v56 = (v53 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
        swift_beginAccess();
        v57 = *v56;
        v58 = v56[1];
        v59 = (a2 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__requestID);
        swift_beginAccess();
        v60 = v59[1];
        if (v58)
        {
          v61 = v90;
          v62 = v91;
          if (!v60)
          {
            goto LABEL_44;
          }

          v63 = v57 == *v59 && v58 == v60;
          if (!v63 && (sub_1C8BD529C() & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v61 = v90;
          v62 = v91;
          if (v60)
          {
            goto LABEL_44;
          }
        }

        v64 = (v53 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
        swift_beginAccess();
        v65 = *v64;
        v66 = v64[1];
        v67 = (a2 + OBJC_IVAR____TtCV12SiriNLUTypes50Siri_Nlu_External_NluRouter_NLRouterServiceRequestP33_0F5CDCF6D3D901BFB1AB4DDB2D13BDDA13_StorageClass__trpCandidateID);
        swift_beginAccess();
        v68 = v67[1];
        if (v66)
        {
          if (!v68)
          {
            goto LABEL_44;
          }

          v69 = v65 == *v67 && v66 == v68;
          if (!v69 && (sub_1C8BD529C() & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (v68)
        {
          goto LABEL_44;
        }

        swift_beginAccess();
        sub_1C8778810();
        swift_beginAccess();
        v70 = *(v87 + 48);
        v71 = v89;
        sub_1C8778810();
        sub_1C8778810();
        v72 = v88;
        if (__swift_getEnumTagSinglePayload(v71, 1, v88) == 1)
        {
          sub_1C8778ED8(v61, &qword_1EC2BF180, &qword_1C8C13018);
          if (__swift_getEnumTagSinglePayload(v71 + v70, 1, v72) == 1)
          {
            sub_1C8778ED8(v71, &qword_1EC2BF180, &qword_1C8C13018);
            goto LABEL_48;
          }

          goto LABEL_43;
        }

        sub_1C8778810();
        if (__swift_getEnumTagSinglePayload(v71 + v70, 1, v72) == 1)
        {
          sub_1C8778ED8(v61, &qword_1EC2BF180, &qword_1C8C13018);
          sub_1C8A5FEEC();
LABEL_43:
          sub_1C8778ED8(v71, &qword_1EC2BF5D8, &qword_1C8C15B28);
          goto LABEL_44;
        }

        sub_1C8A5FE44();
        static Siri_Nlu_External_NluRouter_NLRouterTurnProbingResult.== infix(_:_:)();
        v75 = v74;
        sub_1C8A5FEEC();
        sub_1C8778ED8(v61, &qword_1EC2BF180, &qword_1C8C13018);
        sub_1C8A5FEEC();
        sub_1C8778ED8(v71, &qword_1EC2BF180, &qword_1C8C13018);
        if (v75)
        {
LABEL_48:
          swift_beginAccess();
          sub_1C8778810();
          swift_beginAccess();
          v76 = *(v84 + 48);
          v77 = v81;
          sub_1C8778810();
          sub_1C8778810();
          v78 = DecorationOutput;
          if (__swift_getEnumTagSinglePayload(v77, 1, DecorationOutput) == 1)
          {

            sub_1C8778ED8(v62, &qword_1EC2BF188, &qword_1C8C13020);
            if (__swift_getEnumTagSinglePayload(v77 + v76, 1, v78) == 1)
            {
              sub_1C8778ED8(v77, &qword_1EC2BF188, &qword_1C8C13020);
              return 1;
            }
          }

          else
          {
            sub_1C8778810();
            if (__swift_getEnumTagSinglePayload(v77 + v76, 1, v78) != 1)
            {
              sub_1C8A5FE44();
              v79 = static Siri_Nlu_External_NluRouter_QueryDecorationOutput.== infix(_:_:)();

              sub_1C8A5FEEC();
              sub_1C8778ED8(v62, &qword_1EC2BF188, &qword_1C8C13020);
              sub_1C8A5FEEC();
              sub_1C8778ED8(v77, &qword_1EC2BF188, &qword_1C8C13020);
              return (v79 & 1) != 0;
            }

            sub_1C8778ED8(v62, &qword_1EC2BF188, &qword_1C8C13020);
            sub_1C8A5FEEC();
          }

          sub_1C8778ED8(v77, &qword_1EC2BF5D0, &qword_1C8C15B20);
          return 0;
        }

LABEL_44:

        return 0;
      }

      sub_1C8778ED8(v35, &qword_1EC2BF178, &qword_1C8C13010);
      sub_1C8A5FEEC();
    }

    sub_1C8778ED8(v29, &qword_1EC2BF5E0, &unk_1C8C15B30);
    goto LABEL_44;
  }

  if (!v38)
  {
    goto LABEL_10;
  }

  return 0;
}