void sub_1C8857ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C8857B7C()
{
  result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Utterance(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.UtteranceRegex(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterances(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousUtterancesRegex(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponses(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriResponsesRegex(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PlannerPrompting(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.LegacyNLPrompting(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PommesPrompting(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.SiriXSDAPrompting(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Excluding(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.Tools(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.HasAppInContext(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext(319);
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource(319);
                              if (v15 <= 0x3F)
                              {
                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                return 0;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C8857CF4()
{
  sub_1C8857ABC(319, &qword_1EC2B2F20, type metadata accessor for Siri_Nlu_Internal_NlRouter_SpansForNamedCaptureGroup, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8857DB8()
{
  sub_1C88580EC(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

uint64_t sub_1C8857FB0()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_83();
    return OUTLINED_FUNCTION_169_2();
  }

  return result;
}

void sub_1C8858008()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C88580EC(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C88580EC(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88580EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C8858170()
{
  result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.SiriX(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.Planner(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.PQASearch(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.PreviousExecutionSource.GenAI(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1C88582B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1C8857ABC(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

uint64_t sub_1C8858324()
{
  result = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.KeepModelDecision(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_NlRouter_NLRouterOverrideRoute.Change(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C88583C0()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_169_2();
  }

  return result;
}

void sub_1C8858428()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C8857ABC(319, &qword_1EC2B3128, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8858504()
{
  sub_1C8857ABC(319, &qword_1EC2B2EE0, MEMORY[0x1E69AAB10], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8857ABC(319, &qword_1EC2B2F30, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_133_0()
{
  result = type metadata accessor for Siri_Nlu_Internal_NlRouter_OverrideMatchRule.RetrievedContext(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_142_1()
{

  return sub_1C8779244();
}

uint64_t OUTLINED_FUNCTION_148_0()
{

  return sub_1C8779244();
}

uint64_t OUTLINED_FUNCTION_170_1()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_173_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_174_0()
{

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_175_0()
{

  return sub_1C8840550();
}

uint64_t OUTLINED_FUNCTION_176_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1C8779244();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.siriXfallback.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  if (OUTLINED_FUNCTION_217_0())
  {
    sub_1C8858F2C();
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_5_0();
  return sub_1C877B4F0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.siriXfallback.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.siriXfallback.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback(v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_35_3();
      OUTLINED_FUNCTION_82_3();
      sub_1C877B4F0();
      goto LABEL_7;
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C8858E2C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_35_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_35_3();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_1C8858F2C()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.siriXrewrite.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_3();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_217_0();
    if (v10 == 1)
    {
      OUTLINED_FUNCTION_29_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  *v0 = MEMORY[0x1E69E7CC0];
  v12 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(0);
  return OUTLINED_FUNCTION_260_1(v12);
}

uint64_t sub_1C8859070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_253();
  sub_1C88593CC();
  return a7(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.siriXrewrite.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.siriXrewrite.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(v9);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_110_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_43_3(v15);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
LABEL_7:
    *v12 = MEMORY[0x1E69E7CC0];
    v18 = v12 + *(v10 + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_29_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88592CC(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t sub_1C88593CC()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.planner.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_217_0();
    if (v9 == 2)
    {
      OUTLINED_FUNCTION_26_5();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.planner.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.planner.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner(v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_82_3();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88596B8(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.queryRewrite.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_3();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_217_0();
    if (v10 == 3)
    {
      OUTLINED_FUNCTION_25_6();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  *v0 = MEMORY[0x1E69E7CC0];
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite(0);
  return OUTLINED_FUNCTION_260_1(Rewrite);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.queryRewrite.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.queryRewrite.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite(v9);
  OUTLINED_FUNCTION_21(Rewrite);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_110_0(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_43_3(v15);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
LABEL_7:
    *v12 = MEMORY[0x1E69E7CC0];
    v18 = v12 + *(Rewrite + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_25_6();
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8859A5C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_25_6();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.ajax.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_217_0();
    if (v9 == 4)
    {
      OUTLINED_FUNCTION_24_7();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v11 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(0);
  v12 = OUTLINED_FUNCTION_207_1(v11);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.ajax.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.ajax.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(v9);
  OUTLINED_FUNCTION_21(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = OUTLINED_FUNCTION_214_1();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v17);
    OUTLINED_FUNCTION_157_1();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8859E0C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_24_7();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.search.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_217_0();
    if (v9 == 5)
    {
      OUTLINED_FUNCTION_23_7();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.search.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.search.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search(v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_23_7();
  OUTLINED_FUNCTION_82_3();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C885A1A4(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7ED0, &qword_1C8BF0220);
    OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v80 = v2;
  v81 = v3;
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search(0);
  v5 = OUTLINED_FUNCTION_80(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v79 = v8;
  v9 = OUTLINED_FUNCTION_86();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(v9);
  v11 = OUTLINED_FUNCTION_80(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v77 = v14;
  v15 = OUTLINED_FUNCTION_86();
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite(v15);
  v16 = OUTLINED_FUNCTION_21(Rewrite);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  v78 = v19;
  v20 = OUTLINED_FUNCTION_86();
  v21 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner(v20);
  v22 = OUTLINED_FUNCTION_80(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_0();
  v76 = v25;
  v26 = OUTLINED_FUNCTION_86();
  v72 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(v26);
  v27 = OUTLINED_FUNCTION_21(v72);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_0();
  v75 = v30;
  v31 = OUTLINED_FUNCTION_86();
  v32 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback(v31);
  v33 = OUTLINED_FUNCTION_80(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_0();
  v74 = v36;
  v37 = OUTLINED_FUNCTION_86();
  v38 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(v37);
  v39 = OUTLINED_FUNCTION_21(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_34();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = (&v72 - v45);
  v47 = MEMORY[0x1EEE9AC00](v44);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_200_1();
  MEMORY[0x1EEE9AC00](v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED8, &qword_1C8BF0228);
  OUTLINED_FUNCTION_80(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_112_0();
  v54 = *(v53 + 56);
  sub_1C88593CC();
  sub_1C88593CC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_16_6();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_257_1() != 1)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_29_3();
      v64 = v75;
      sub_1C877B4F0();
      if (sub_1C87D2814(*v1, *v64))
      {
        v65 = *(v72 + 20);
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_10();
        sub_1C8776620(v66, v67);
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_185_0();
      sub_1C8858F2C();
      goto LABEL_24;
    case 2u:
      OUTLINED_FUNCTION_16_6();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_257_1() != 2)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_26_5();
      sub_1C877B4F0();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v55, v56);
      OUTLINED_FUNCTION_261_1();
      sub_1C8858F2C();
      goto LABEL_24;
    case 3u:
      OUTLINED_FUNCTION_16_6();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_257_1() != 3)
      {
        OUTLINED_FUNCTION_86_1();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_25_6();
      v57 = v78;
      sub_1C877B4F0();
      v58 = *v46;
      v59 = *v57;
      sub_1C87D5EEC();
      if (v60)
      {
        v61 = *(Rewrite + 20);
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_10();
        sub_1C8776620(v62, v63);
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_184_0();
      sub_1C8858F2C();
      goto LABEL_24;
    case 4u:
      OUTLINED_FUNCTION_16_6();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_257_1() != 4)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_24_7();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_251_0();
      static Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax.== infix(_:_:)();
      sub_1C8858F2C();
      goto LABEL_24;
    case 5u:
      OUTLINED_FUNCTION_16_6();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_257_1() != 5)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_23_7();
      sub_1C877B4F0();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v68, v69);
      OUTLINED_FUNCTION_261_1();
      sub_1C8858F2C();
      goto LABEL_24;
    default:
      OUTLINED_FUNCTION_16_6();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_257_1())
      {
        OUTLINED_FUNCTION_199_1();
LABEL_21:
        sub_1C8858F2C();
        sub_1C8778ED8(v0, &qword_1EC2B7ED8, &qword_1C8BF0228);
      }

      else
      {
        OUTLINED_FUNCTION_35_3();
        sub_1C877B4F0();
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_10();
        sub_1C8776620(v70, v71);
        OUTLINED_FUNCTION_240();
        OUTLINED_FUNCTION_261_1();
        sub_1C8858F2C();
LABEL_24:
        sub_1C8858F2C();
        OUTLINED_FUNCTION_42_1();
        sub_1C8858F2C();
      }

      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t sub_1C885AAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_12_0();
  if ((v7(*v5, *v6) & 1) == 0)
  {
    return 0;
  }

  v8 = a4(0);
  OUTLINED_FUNCTION_165_1(v8);
  OUTLINED_FUNCTION_0_10();
  sub_1C8776620(v9, v10);
  return OUTLINED_FUNCTION_64_0() & 1;
}

void static Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7EE8, &qword_1C8BF0238);
  OUTLINED_FUNCTION_128_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_74();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(v16);
  OUTLINED_FUNCTION_213_1(v17);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_37_2();
    if (v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7EE0, &qword_1C8BF0230);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      OUTLINED_FUNCTION_5_0();
      v19 = OUTLINED_FUNCTION_232_1();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v18)
  {
    OUTLINED_FUNCTION_93_2();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B7EE8, &qword_1C8BF0238);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.== infix(_:_:)();
  v21 = v20;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7EE0, &qword_1C8BF0230);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v19);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite.utterances.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1C885ADF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1C8BD49FC();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1C885AE8C()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 20);
  v5 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7EE0, &qword_1C8BF0230);
  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax._0.modify()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_251();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = OUTLINED_FUNCTION_104_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_107(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v7);
  OUTLINED_FUNCTION_51_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(v13);
  OUTLINED_FUNCTION_116_2(v14);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_72(v6);
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = v8[5];
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = v8[6];
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(0);
    v22 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    v26 = v8[7];
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
    v27 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_72(v6);
    if (!v15)
    {
      sub_1C8778ED8(v6, &qword_1EC2B7EE0, &qword_1C8BF0230);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C885B1B4()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7EE0, &qword_1C8BF0230);
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_93_2();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7EE0, &qword_1C8BF0230);
    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.siriX.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
LABEL_6:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(0);
    v11 = OUTLINED_FUNCTION_207_1(v10);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v11);
    v12 = OUTLINED_FUNCTION_27_1();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  if (OUTLINED_FUNCTION_217_0())
  {
    sub_1C8858F2C();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_5_0();
  return sub_1C877B4F0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.siriX.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.siriX.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(v9);
  OUTLINED_FUNCTION_21(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_22_7();
      OUTLINED_FUNCTION_254_0();
      sub_1C877B4F0();
      goto LABEL_7;
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = OUTLINED_FUNCTION_214_1();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v17);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C885B634(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B6148, &qword_1C8BF0240);
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6148, &qword_1C8BF0240);
    OUTLINED_FUNCTION_22_7();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.planner.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_217_0();
    if (v9 == 1)
    {
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v11 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(0);
  v12 = OUTLINED_FUNCTION_207_1(v11);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.planner.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.planner.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v9);
  OUTLINED_FUNCTION_21(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = OUTLINED_FUNCTION_214_1();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(v17);
    OUTLINED_FUNCTION_157_1();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C885BA10(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B6148, &qword_1C8BF0240);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6148, &qword_1C8BF0240);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.search.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_217_0();
    if (v9 == 2)
    {
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v11 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(0);
  v12 = OUTLINED_FUNCTION_207_1(v11);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.search.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.search.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v9);
  OUTLINED_FUNCTION_21(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = OUTLINED_FUNCTION_214_1();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v17);
    OUTLINED_FUNCTION_157_1();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C885BDEC(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B6148, &qword_1C8BF0240);
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B6148, &qword_1C8BF0240);
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(0);
  v2 = OUTLINED_FUNCTION_80(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  v5 = OUTLINED_FUNCTION_86();
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v5);
  v7 = OUTLINED_FUNCTION_80(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_18_4();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(0);
  v11 = OUTLINED_FUNCTION_80(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_200_1();
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7EF0, &qword_1C8BF0248);
  OUTLINED_FUNCTION_80(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_112_0();
  v25 = *(v24 + 56);
  sub_1C88593CC();
  sub_1C88593CC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_87_1();
      sub_1C88593CC();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_21_3();
        sub_1C877B4F0();
        static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner.== infix(_:_:)();
        sub_1C8858F2C();
LABEL_11:
        sub_1C8858F2C();
        OUTLINED_FUNCTION_92_1();
        sub_1C8858F2C();
        goto LABEL_12;
      }
    }

    else
    {
      OUTLINED_FUNCTION_87_1();
      sub_1C88593CC();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_20_5();
        sub_1C877B4F0();
        static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search.== infix(_:_:)();
        sub_1C8858F2C();
        goto LABEL_11;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_87_1();
    sub_1C88593CC();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_22_7();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_206_1();
      static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX.== infix(_:_:)();
      sub_1C8858F2C();
      goto LABEL_11;
    }
  }

  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7EF0, &qword_1C8BF0248);
LABEL_12:
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F00, &qword_1C8BF0258);
  OUTLINED_FUNCTION_128_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_74();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(v16);
  OUTLINED_FUNCTION_213_1(v17);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_37_2();
    if (v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7EF8, &qword_1C8BF0250);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      OUTLINED_FUNCTION_5_0();
      v19 = OUTLINED_FUNCTION_232_1();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v18)
  {
    OUTLINED_FUNCTION_91_0();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B7F00, &qword_1C8BF0258);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.== infix(_:_:)();
  v21 = v20;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7EF8, &qword_1C8BF0250);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v19);
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_68();
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(v2);
  v4 = OUTLINED_FUNCTION_21(Rewrite);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  v7 = OUTLINED_FUNCTION_104_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_211();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F10, &qword_1C8BF0268);
  OUTLINED_FUNCTION_128_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_74();
  v18 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v17);
  OUTLINED_FUNCTION_213_1(v18);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_19(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_19(v0 + v1);
    if (v19)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F08, &qword_1C8BF0260);
LABEL_18:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v31, v32);
      v22 = OUTLINED_FUNCTION_191_0();
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_268();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0 + v1);
  if (v19)
  {
    OUTLINED_FUNCTION_90_1();
    sub_1C8858F2C();
LABEL_9:
    v20 = &qword_1EC2B7F10;
    v21 = &qword_1C8BF0268;
LABEL_10:
    sub_1C8778ED8(v0, v20, v21);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_9();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_233_0();
  if (v23)
  {
    v26 = v24 == v25;
  }

  else
  {
    v26 = 0;
  }

  if (!v26 && (sub_1C8BD529C() & 1) == 0)
  {
    sub_1C8858F2C();
    sub_1C8858F2C();
    v20 = &qword_1EC2B7F08;
    v21 = &qword_1C8BF0260;
    goto LABEL_10;
  }

  v27 = *(Rewrite + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  sub_1C8776620(v28, v29);
  v30 = OUTLINED_FUNCTION_220_0();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_230();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F08, &qword_1C8BF0260);
  if (v30)
  {
    goto LABEL_18;
  }

LABEL_11:
  v22 = 0;
LABEL_19:
  OUTLINED_FUNCTION_157(v22);
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_68();
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v2);
  v4 = OUTLINED_FUNCTION_21(Rewrite);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  v7 = OUTLINED_FUNCTION_104_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_211();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F20, &qword_1C8BF0278);
  OUTLINED_FUNCTION_128_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_74();
  v18 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v17);
  OUTLINED_FUNCTION_213_1(v18);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_19(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_19(v0 + v1);
    if (v19)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F18, &qword_1C8BF0270);
LABEL_18:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v31, v32);
      v22 = OUTLINED_FUNCTION_191_0();
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_268();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0 + v1);
  if (v19)
  {
    OUTLINED_FUNCTION_89_1();
    sub_1C8858F2C();
LABEL_9:
    v20 = &qword_1EC2B7F20;
    v21 = &qword_1C8BF0278;
LABEL_10:
    sub_1C8778ED8(v0, v20, v21);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_9();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_233_0();
  if (v23)
  {
    v26 = v24 == v25;
  }

  else
  {
    v26 = 0;
  }

  if (!v26 && (sub_1C8BD529C() & 1) == 0)
  {
    sub_1C8858F2C();
    sub_1C8858F2C();
    v20 = &qword_1EC2B7F18;
    v21 = &qword_1C8BF0270;
    goto LABEL_10;
  }

  v27 = *(Rewrite + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  sub_1C8776620(v28, v29);
  v30 = OUTLINED_FUNCTION_220_0();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_230();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F18, &qword_1C8BF0270);
  if (v30)
  {
    goto LABEL_18;
  }

LABEL_11:
  v22 = 0;
LABEL_19:
  OUTLINED_FUNCTION_157(v22);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7EF8, &qword_1C8BF0250);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX._0.modify()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_251();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = OUTLINED_FUNCTION_104_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_107(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v7);
  OUTLINED_FUNCTION_51_0(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(v14);
  OUTLINED_FUNCTION_116_2(v15);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_72(v6);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v17 = v10 + *(v8 + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = *(v8 + 24);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
    v19 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_72(v6);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B7EF8, &qword_1C8BF0250);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_168_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C885CBC4()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7EF8, &qword_1C8BF0250);
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_91_0();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7EF8, &qword_1C8BF0250);
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t sub_1C885CCD4()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_27_0();
  v9 = *(v1(v8) + 20);
  OUTLINED_FUNCTION_70_2();
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

  v15 = OUTLINED_FUNCTION_117_2();
  sub_1C8778ED8(v15, v16, v17);
  return v14;
}

uint64_t sub_1C885CDB4()
{
  OUTLINED_FUNCTION_50();
  v2 = *(v1(0) + 20);
  OUTLINED_FUNCTION_253_1();
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner._0.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v7) + 20);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_219_0();
    result = OUTLINED_FUNCTION_65(v0);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7F08, &qword_1C8BF0260);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7F08, &qword_1C8BF0260);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner._0.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(v8);
  OUTLINED_FUNCTION_47_3(Rewrite);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    OUTLINED_FUNCTION_218_1();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F08, &qword_1C8BF0260);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885D098()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F08, &qword_1C8BF0260);
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_90_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F08, &qword_1C8BF0260);
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search._0.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v7) + 20);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_219_0();
    result = OUTLINED_FUNCTION_65(v0);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7F18, &qword_1C8BF0270);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7F18, &qword_1C8BF0270);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search._0.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v8);
  OUTLINED_FUNCTION_47_3(Rewrite);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    OUTLINED_FUNCTION_218_1();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F18, &qword_1C8BF0270);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885D458()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F18, &qword_1C8BF0270);
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_89_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F18, &qword_1C8BF0270);
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.correctionOutcome.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v7) + 24);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(0);
    OUTLINED_FUNCTION_107_1(v10);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7F28, &qword_1C8BF0280);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.correctionOutcome.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B7F28, &qword_1C8BF0280);
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.correctionOutcome.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v14);
  OUTLINED_FUNCTION_85(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F28, &qword_1C8BF0280);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885D85C()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F28, &qword_1C8BF0280);
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_105_0();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F28, &qword_1C8BF0280);
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.undo.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_240_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_237_0(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_238_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v1[3] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_82_3();
  sub_1C8778810();
  v1[4] = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(0);
  v13 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_76(v13, v14, v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F30, &qword_1C8BF0288);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_251_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C885DBEC(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7F30, &qword_1C8BF0288);
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7F30, &qword_1C8BF0288);
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_67_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(v0);
  v2 = OUTLINED_FUNCTION_80(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_241_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_234_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F38, &qword_1C8BF0290);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_103();
  v11 = *(v10 + 56);
  sub_1C88593CC();
  OUTLINED_FUNCTION_256_1();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_258_1();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  sub_1C8776620(v12, v13);
  OUTLINED_FUNCTION_191_0();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_271();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.prescribedAjaxTool.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7F40, &qword_1C8BF0298);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.prescribedAjaxTool.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F40, &qword_1C8BF0298);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885E168()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F40, &qword_1C8BF0298);
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_104_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F40, &qword_1C8BF0298);
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.queryType.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B7F48, &qword_1C8BF02A0);
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.queryType.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  Type = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(v8);
  OUTLINED_FUNCTION_47_3(Type);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v14);
  OUTLINED_FUNCTION_85(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F48, &qword_1C8BF02A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885E428()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F48, &qword_1C8BF02A0);
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_103_2();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F48, &qword_1C8BF02A0);
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t sub_1C885E574()
{
  OUTLINED_FUNCTION_50();
  v2 = *(v1(0) + 24);
  OUTLINED_FUNCTION_253_1();
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.query.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v7) + 28);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
    OUTLINED_FUNCTION_107_1(v10);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7F50, &qword_1C8BF02A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.query.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B7F50, &qword_1C8BF02A8);
  OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.query.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v14);
  OUTLINED_FUNCTION_85(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F50, &qword_1C8BF02A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885E830()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F50, &qword_1C8BF02A8);
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_102_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F50, &qword_1C8BF02A8);
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentTool.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  if (OUTLINED_FUNCTION_217_0())
  {
    sub_1C8858F2C();
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_5_0();
  return sub_1C877B4F0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentTool.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentTool.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  RichContentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool(v8);
  OUTLINED_FUNCTION_80(RichContentTool);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_36_2();
      OUTLINED_FUNCTION_82_3();
      sub_1C877B4F0();
      goto LABEL_7;
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C885EC58(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentFromMediaIntentTool.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_217_0();
    if (v9 == 1)
    {
      OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentFromMediaIntentTool.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentFromMediaIntentTool.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  RichContentFromMediaIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool(v8);
  OUTLINED_FUNCTION_80(RichContentFromMediaIntentTool);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_82_3();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C885EFD0(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateImageIntentTool.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_217_0();
    if (v9 == 2)
    {
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateImageIntentTool.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateImageIntentTool.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  ImageIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool(v8);
  OUTLINED_FUNCTION_80(ImageIntentTool);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_82_3();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C885F348(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateKnowledgeResponseIntentTool.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_217_0();
    if (v9 == 3)
    {
      OUTLINED_FUNCTION_32_7();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateKnowledgeResponseIntentTool.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateKnowledgeResponseIntentTool.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  KnowledgeResponseIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool(v8);
  OUTLINED_FUNCTION_80(KnowledgeResponseIntentTool);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_82_3();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C885F6C0(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_32_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_32_7();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  KnowledgeResponseIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool(0);
  v2 = OUTLINED_FUNCTION_80(KnowledgeResponseIntentTool);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  v5 = OUTLINED_FUNCTION_86();
  ImageIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool(v5);
  v7 = OUTLINED_FUNCTION_80(ImageIntentTool);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v10 = OUTLINED_FUNCTION_86();
  RichContentFromMediaIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool(v10);
  v12 = OUTLINED_FUNCTION_80(RichContentFromMediaIntentTool);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  RichContentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool(0);
  v16 = OUTLINED_FUNCTION_80(RichContentTool);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33();
  v19 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  v20 = OUTLINED_FUNCTION_21(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_200_1();
  v25 = MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F60, &qword_1C8BF02B8);
  OUTLINED_FUNCTION_80(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_112_0();
  v31 = *(v30 + 56);
  sub_1C88593CC();
  sub_1C88593CC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_59_3();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_173_1() != 1)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_34_3();
      sub_1C877B4F0();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v36, v37);
      OUTLINED_FUNCTION_220();
      sub_1C8BD517C();
      sub_1C8858F2C();
      OUTLINED_FUNCTION_271();
      goto LABEL_14;
    case 2u:
      OUTLINED_FUNCTION_59_3();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_173_1() != 2)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_33_5();
      sub_1C877B4F0();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v32, v33);
      OUTLINED_FUNCTION_261_1();
      sub_1C8858F2C();
      goto LABEL_14;
    case 3u:
      OUTLINED_FUNCTION_59_3();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_173_1() == 3)
      {
        OUTLINED_FUNCTION_32_7();
        sub_1C877B4F0();
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_10();
        sub_1C8776620(v34, v35);
        OUTLINED_FUNCTION_240();
        OUTLINED_FUNCTION_261_1();
        sub_1C8858F2C();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_199_1();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_59_3();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_173_1())
      {
        OUTLINED_FUNCTION_86_1();
LABEL_12:
        sub_1C8858F2C();
        sub_1C8778ED8(v0, &qword_1EC2B7F60, &qword_1C8BF02B8);
      }

      else
      {
        OUTLINED_FUNCTION_36_2();
        sub_1C877B4F0();
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_10();
        sub_1C8776620(v38, v39);
        OUTLINED_FUNCTION_268();
        sub_1C8BD517C();
        sub_1C8858F2C();
LABEL_14:
        sub_1C8858F2C();
        OUTLINED_FUNCTION_101_1();
        sub_1C8858F2C();
      }

      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.implicit.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  v9 = OUTLINED_FUNCTION_217_0();
  if (v9 == 1)
  {
    sub_1C8858F2C();
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_5_0();
  return sub_1C877B4F0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.implicit.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryType.implicit.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit(v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_82_3();
      sub_1C877B4F0();
      goto LABEL_8;
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C886009C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7F68, &qword_1C8BF02C0);
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7F68, &qword_1C8BF02C0);
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.explicit.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_217_0();
    if (v9 == 1)
    {
      OUTLINED_FUNCTION_30_4();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v11 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(0);
  v12 = OUTLINED_FUNCTION_207_1(v11);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.explicit.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryType.explicit.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(v9);
  OUTLINED_FUNCTION_21(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = OUTLINED_FUNCTION_214_1();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v17);
    OUTLINED_FUNCTION_157_1();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C886044C(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7F68, &qword_1C8BF02C0);
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7F68, &qword_1C8BF02C0);
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(0);
  v2 = OUTLINED_FUNCTION_80(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit(0);
  v6 = OUTLINED_FUNCTION_80(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_4();
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F70, &qword_1C8BF02C8);
  OUTLINED_FUNCTION_80(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  v19 = *(v18 + 56);
  sub_1C88593CC();
  sub_1C88593CC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88593CC();
    if (OUTLINED_FUNCTION_268_0() == 1)
    {
      OUTLINED_FUNCTION_30_4();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_300();
      static Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit.== infix(_:_:)();
      sub_1C8858F2C();
      OUTLINED_FUNCTION_168_0();
LABEL_8:
      sub_1C8858F2C();
      OUTLINED_FUNCTION_100_2();
      sub_1C8858F2C();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88593CC();
    if (OUTLINED_FUNCTION_268_0() != 1)
    {
      OUTLINED_FUNCTION_31_4();
      sub_1C877B4F0();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v20, v21);
      OUTLINED_FUNCTION_184();
      sub_1C8BD517C();
      sub_1C8858F2C();
      OUTLINED_FUNCTION_254_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_86_1();
  }

  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F70, &qword_1C8BF02C8);
LABEL_9:
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_68();
  v3 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v2);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  v7 = OUTLINED_FUNCTION_104_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_211();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F80, &qword_1C8BF02D8);
  OUTLINED_FUNCTION_128_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_74();
  v18 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(v17);
  OUTLINED_FUNCTION_213_1(v18);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_19(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_19(v0 + v1);
    if (v19)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F78, &qword_1C8BF02D0);
LABEL_18:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v31, v32);
      v22 = OUTLINED_FUNCTION_191_0();
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_268();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0 + v1);
  if (v19)
  {
    OUTLINED_FUNCTION_99_1();
    sub_1C8858F2C();
LABEL_9:
    v20 = &qword_1EC2B7F80;
    v21 = &qword_1C8BF02D8;
LABEL_10:
    sub_1C8778ED8(v0, v20, v21);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_7();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_233_0();
  if (v23)
  {
    v26 = v24 == v25;
  }

  else
  {
    v26 = 0;
  }

  if (!v26 && (sub_1C8BD529C() & 1) == 0)
  {
    sub_1C8858F2C();
    sub_1C8858F2C();
    v20 = &qword_1EC2B7F78;
    v21 = &qword_1C8BF02D0;
    goto LABEL_10;
  }

  v27 = *(v3 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  sub_1C8776620(v28, v29);
  v30 = OUTLINED_FUNCTION_220_0();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_230();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F78, &qword_1C8BF02D0);
  if (v30)
  {
    goto LABEL_18;
  }

LABEL_11:
  v22 = 0;
LABEL_19:
  OUTLINED_FUNCTION_157(v22);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7F78, &qword_1C8BF02D0);
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit._0.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    OUTLINED_FUNCTION_218_1();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F78, &qword_1C8BF02D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8860CDC()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F78, &qword_1C8BF02D0);
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_99_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F78, &qword_1C8BF02D0);
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.chatgpt.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_240_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_237_0(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_238_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v1[3] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_82_3();
  sub_1C8778810();
  v1[4] = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(0);
  v13 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_76(v13, v14, v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F88, &qword_1C8BF02E0);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_64_4();
    OUTLINED_FUNCTION_251_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C88610E8(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7F88, &qword_1C8BF02E0);
    OUTLINED_FUNCTION_64_4();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7F88, &qword_1C8BF02E0);
    OUTLINED_FUNCTION_64_4();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_67_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(v0);
  v2 = OUTLINED_FUNCTION_80(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_241_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_234_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F90, &qword_1C8BF02E8);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_103();
  v11 = *(v10 + 56);
  sub_1C88593CC();
  OUTLINED_FUNCTION_256_1();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_258_1();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  sub_1C8776620(v12, v13);
  OUTLINED_FUNCTION_191_0();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_271();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.implicit.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
LABEL_6:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(0);
    v11 = OUTLINED_FUNCTION_207_1(v10);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v11);
    v12 = OUTLINED_FUNCTION_27_1();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  v9 = OUTLINED_FUNCTION_217_0();
  if (v9 == 1)
  {
    sub_1C8858F2C();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_5_0();
  return sub_1C877B4F0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.implicit.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.implicit.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(v9);
  OUTLINED_FUNCTION_21(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_254_0();
      sub_1C877B4F0();
      goto LABEL_8;
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v17 = OUTLINED_FUNCTION_214_1();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v17);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8861724(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7F98, &qword_1C8BF02F0);
    OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7F98, &qword_1C8BF02F0);
    OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.explicit.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v7);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_217_0();
    if (v9 == 1)
    {
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v11 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(0);
  v12 = OUTLINED_FUNCTION_207_1(v11);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.explicit.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.explicit.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(v9);
  OUTLINED_FUNCTION_21(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_3(v14);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = OUTLINED_FUNCTION_214_1();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v17);
    OUTLINED_FUNCTION_157_1();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8861AD4(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7F98, &qword_1C8BF02F0);
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7F98, &qword_1C8BF02F0);
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(0);
  v2 = OUTLINED_FUNCTION_80(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(0);
  v6 = OUTLINED_FUNCTION_80(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_4();
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FA0, &qword_1C8BF02F8);
  OUTLINED_FUNCTION_80(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  v19 = *(v18 + 56);
  sub_1C88593CC();
  sub_1C88593CC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88593CC();
    if (OUTLINED_FUNCTION_268_0() == 1)
    {
      OUTLINED_FUNCTION_27_4();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_254_0();
      static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit.== infix(_:_:)();
      sub_1C8858F2C();
      OUTLINED_FUNCTION_184();
LABEL_8:
      sub_1C8858F2C();
      OUTLINED_FUNCTION_98_0();
      sub_1C8858F2C();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88593CC();
    if (OUTLINED_FUNCTION_268_0() != 1)
    {
      OUTLINED_FUNCTION_28_7();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_168_0();
      static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit.== infix(_:_:)();
      sub_1C8858F2C();
      OUTLINED_FUNCTION_300();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_169();
  }

  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7FA0, &qword_1C8BF02F8);
LABEL_9:
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FB0, &qword_1C8BF0308);
  OUTLINED_FUNCTION_128_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_74();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(v16);
  OUTLINED_FUNCTION_213_1(v17);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_37_2();
    if (v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FA8, &qword_1C8BF0300);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      OUTLINED_FUNCTION_5_0();
      v19 = OUTLINED_FUNCTION_232_1();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v18)
  {
    OUTLINED_FUNCTION_97_1();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B7FB0, &qword_1C8BF0308);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery.== infix(_:_:)();
  v21 = v20;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7FA8, &qword_1C8BF0300);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v19);
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC0, &qword_1C8BF0318);
  OUTLINED_FUNCTION_128_1(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_74();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(v16);
  OUTLINED_FUNCTION_213_1(v17);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_37_2();
    if (v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FB8, &qword_1C8BF0310);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      OUTLINED_FUNCTION_5_0();
      v19 = OUTLINED_FUNCTION_232_1();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v18)
  {
    OUTLINED_FUNCTION_96_1();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B7FC0, &qword_1C8BF0318);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.== infix(_:_:)();
  v21 = v20;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7FB8, &qword_1C8BF0310);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v19);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit._0.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_112_0();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(0);
  OUTLINED_FUNCTION_164_2(v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_255_1();
    v10 = *(v8 + 28);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7FA8, &qword_1C8BF0300);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_312();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7FA8, &qword_1C8BF0300);
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit._0.modify()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_251();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = OUTLINED_FUNCTION_104_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_107(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v7);
  OUTLINED_FUNCTION_51_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(v13);
  OUTLINED_FUNCTION_116_2(v14);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_72(v6);
  if (v15)
  {
    OUTLINED_FUNCTION_254_1();
    v16 = *(v8 + 28);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_72(v6);
    if (!v15)
    {
      sub_1C8778ED8(v6, &qword_1EC2B7FA8, &qword_1C8BF0300);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_168_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C886258C()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FA8, &qword_1C8BF0300);
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_97_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FA8, &qword_1C8BF0300);
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit._0.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_112_0();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(0);
  OUTLINED_FUNCTION_164_2(v7);
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_255_1();
    v10 = *(v8 + 28);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    v15 = *(v8 + 32);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7FB8, &qword_1C8BF0310);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_312();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7FB8, &qword_1C8BF0310);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit._0.modify()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_251();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = OUTLINED_FUNCTION_104_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_107(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v7);
  OUTLINED_FUNCTION_51_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(v13);
  OUTLINED_FUNCTION_116_2(v14);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_72(v6);
  if (v15)
  {
    OUTLINED_FUNCTION_254_1();
    v16 = *(v8 + 28);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = *(v8 + 32);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
    v22 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_72(v6);
    if (!v15)
    {
      sub_1C8778ED8(v6, &qword_1EC2B7FB8, &qword_1C8BF0310);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_168_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C88629AC()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FB8, &qword_1C8BF0310);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_96_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FB8, &qword_1C8BF0310);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t sub_1C8862B50(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(a1(v7) + 28);
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
  OUTLINED_FUNCTION_65(v1);
  if (v9)
  {
    v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
    OUTLINED_FUNCTION_107_1(v10);
    result = OUTLINED_FUNCTION_65(v1);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B7FC8, &qword_1C8BF0320);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t sub_1C8862C6C()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  sub_1C8778ED8(v0 + *(v3 + 28), &qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery.correctionOutcome.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v14);
  OUTLINED_FUNCTION_85(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FC8, &qword_1C8BF0320);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_14();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8862E4C()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_27_0();
  v9 = *(v1(v8) + 28);
  OUTLINED_FUNCTION_70_2();
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

  v15 = OUTLINED_FUNCTION_117_2();
  sub_1C8778ED8(v15, v16, v17);
  return v14;
}

uint64_t sub_1C8862F2C()
{
  OUTLINED_FUNCTION_50();
  v2 = *(v1(0) + 28);
  OUTLINED_FUNCTION_253_1();
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v0) + 24);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.rewrittenUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.correctionOutcome.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v14);
  OUTLINED_FUNCTION_85(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FC8, &qword_1C8BF0320);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_14();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88631B4()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FC8, &qword_1C8BF0320);
    OUTLINED_FUNCTION_2_14();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_43_4();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FC8, &qword_1C8BF0320);
    OUTLINED_FUNCTION_2_14();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.redactedUtterance.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.redactedUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.partner.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v7) + 32);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(0);
    OUTLINED_FUNCTION_107_1(v10);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7FD0, &qword_1C8BF0328);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.partner.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B7FD0, &qword_1C8BF0328);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.partner.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v14);
  OUTLINED_FUNCTION_85(*(v15 + 32));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FD0, &qword_1C8BF0328);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88635C8()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FD0, &qword_1C8BF0328);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_95_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FD0, &qword_1C8BF0328);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.hasPartner.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FD0, &qword_1C8BF0328);
  OUTLINED_FUNCTION_80(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v5) + 32);
  sub_1C8778810();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  OUTLINED_FUNCTION_76(v0, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v10, v11, &qword_1C8BF0328);
  return v9;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.clearPartner()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B7FD0, &qword_1C8BF0328);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C88637CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1C8BD49FC();
  v6 = OUTLINED_FUNCTION_21(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1C8863860()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 24);
  v5 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v0) + 24);
  return OUTLINED_FUNCTION_242();
}

void sub_1C88639C8()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v1(0);
  v8 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_76(v8, v9, v10);
  if (v11)
  {
    OUTLINED_FUNCTION_119();
    sub_1C8778ED8(v12, v13, v14);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8863AD4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  sub_1C8778ED8(v5, a2, a3);
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
  a5(0);
  v7 = OUTLINED_FUNCTION_117();

  return __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.undo.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_240_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_237_0(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_238_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v1[3] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_82_3();
  sub_1C8778810();
  v1[4] = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
  v13 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_76(v13, v14, v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7FD8, &qword_1C8BF0330);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_62_2();
    OUTLINED_FUNCTION_251_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C8863C60(uint64_t **a1)
{
  OUTLINED_FUNCTION_32_6(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v5, &qword_1EC2B7FD8, &qword_1C8BF0330);
    OUTLINED_FUNCTION_62_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v5, &qword_1EC2B7FD8, &qword_1C8BF0330);
    OUTLINED_FUNCTION_62_2();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
  }

  free(v4);
  free(v3);
  free(v2);

  free(v1);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v0) + 20);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_67_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(v0);
  v2 = OUTLINED_FUNCTION_80(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_241_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_234_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FE0, &qword_1C8BF0338);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_103();
  v11 = *(v10 + 56);
  sub_1C88593CC();
  OUTLINED_FUNCTION_256_1();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_258_1();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  sub_1C8776620(v12, v13);
  OUTLINED_FUNCTION_191_0();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_271();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8863F28()
{
  OUTLINED_FUNCTION_84();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  sub_1C8776620(v0, v1);
  OUTLINED_FUNCTION_5_0();
  return OUTLINED_FUNCTION_232_1() & 1;
}

uint64_t sub_1C8863FD0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7A08);
  __swift_project_value_buffer(v0, qword_1EC2B7A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriXFallback";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "siriXRewrite";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "planner";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryRewrite";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ajax";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "search";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88642B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84F0, &qword_1C8BF3C40);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v23, &qword_1EC2B84F0, &qword_1C8BF3C40);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B81C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B84F0, &qword_1C8BF3C40);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B84F0, &qword_1C8BF3C40);
  }

  sub_1C877B4F0();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B7ED0, &qword_1C8BF0220);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C886476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84F8, &qword_1C8BF3C48);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v23, &qword_1EC2B84F8, &qword_1C8BF3C48);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B3168, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B84F8, &qword_1C8BF3C48);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B84F8, &qword_1C8BF3C48);
  }

  sub_1C877B4F0();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B7ED0, &qword_1C8BF0220);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8864C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8510, &unk_1C8BF3C60);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8778ED8(v23, &qword_1EC2B8510, &unk_1C8BF3C60);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B81F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B8510, &unk_1C8BF3C60);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B8510, &unk_1C8BF3C60);
  }

  sub_1C877B4F0();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B7ED0, &qword_1C8BF0220);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_72_2(v1);
  if (v8)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_104_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25 = OUTLINED_FUNCTION_9_4();
      sub_1C886541C(v25, v26, v27, v28);
      break;
    case 2u:
      v17 = OUTLINED_FUNCTION_9_4();
      sub_1C8865630(v17, v18, v19, v20);
      break;
    case 3u:
      v21 = OUTLINED_FUNCTION_9_4();
      sub_1C8865844(v21, v22, v23, v24);
      break;
    case 4u:
      v13 = OUTLINED_FUNCTION_9_4();
      sub_1C8865A58(v13, v14, v15, v16);
      break;
    case 5u:
      v29 = OUTLINED_FUNCTION_9_4();
      sub_1C8865C6C(v29, v30, v31, v32);
      break;
    default:
      v9 = OUTLINED_FUNCTION_9_4();
      sub_1C886520C(v9, v10, v11, v12);
      break;
  }

  OUTLINED_FUNCTION_42_1();
  sub_1C8858F2C();
  if (!v0)
  {
LABEL_10:
    v33 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(0);
    OUTLINED_FUNCTION_113_1(v33);
  }

  OUTLINED_FUNCTION_245_1();
}

uint64_t sub_1C886520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B31F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B81C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8865630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3168, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8865844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite(0);
  v9 = *(*(Rewrite - 8) + 64);
  MEMORY[0x1EEE9AC00](Rewrite);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B31D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8865A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3198, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8865C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B81F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FE8, &unk_1C8BF0340);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_57_3(v16);
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(0);
      OUTLINED_FUNCTION_165_1(v21);
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_42_1();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B7FE8, &unk_1C8BF0340);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value.== infix(_:_:)();
  v20 = v19;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8866100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8470, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8866180(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3148, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88661F0()
{
  sub_1C8776620(&qword_1EC2B3148, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886633C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8468, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88663BC(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B31F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886642C()
{
  sub_1C8776620(&qword_1EC2B31F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback);

  return sub_1C8BD4CFC();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite.decodeMessage<A>(decoder:)()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4BDC();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*(*v1 + 16) || (result = sub_1C8BD4DAC(), !v0))
  {
    v3 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(0) + 20);
    return OUTLINED_FUNCTION_69();
  }

  return result;
}

uint64_t sub_1C8866688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8460, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8866708(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B81C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8866778()
{
  sub_1C8776620(&qword_1EC2B81C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88668B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8458, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8866938(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3168, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88669A8()
{
  sub_1C8776620(&qword_1EC2B3168, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8866A24()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000015, 0x80000001C8C20EB0);
  qword_1EC2B7A98 = 0xD000000000000034;
  unk_1EC2B7AA0 = 0x80000001C8C20A10;
  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite(0), sub_1C8776620(&qword_1EC2B3220, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
  {
    v3 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite(0) + 20);
    return OUTLINED_FUNCTION_69();
  }

  return result;
}

uint64_t sub_1C8866C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8450, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8866CA0(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B31D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8866D10()
{
  sub_1C8776620(&qword_1EC2B31D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_206_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v12 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v11);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_50_4();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(v16);
  OUTLINED_FUNCTION_82(v17);
  OUTLINED_FUNCTION_72_2(v1);
  if (v18)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7EE0, &qword_1C8BF0230);
LABEL_5:
    OUTLINED_FUNCTION_144();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_252_1();
  sub_1C8776620(&qword_1EC2B32E0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_93_2();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8866FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8448, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8867034(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3198, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88670A4()
{
  sub_1C8776620(&qword_1EC2B3198, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax);

  return sub_1C8BD4CFC();
}

void sub_1C8867148(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_235_1(a1, a2);
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_193_1();
  v2 = MEMORY[0x1CCA7E2D0]();
  OUTLINED_FUNCTION_192_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8867234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8440, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88672B4(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B81F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8867324()
{
  sub_1C8776620(&qword_1EC2B81F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88673AC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7B10);
  __swift_project_value_buffer(v0, qword_1EC2B7B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "siriX";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "planner";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "search";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88675D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84D8, &qword_1C8BF3C28);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v23, &qword_1EC2B84D8, &qword_1C8BF3C28);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B8218, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B84D8, &qword_1C8BF3C28);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B84D8, &qword_1C8BF3C28);
  }

  sub_1C877B4F0();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6148, &qword_1C8BF0240);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8867A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84E0, &qword_1C8BF3C30);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v23, &qword_1EC2B84E0, &qword_1C8BF3C30);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B8230, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B84E0, &qword_1C8BF3C30);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B84E0, &qword_1C8BF3C30);
  }

  sub_1C877B4F0();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6148, &qword_1C8BF0240);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_72_2(v1);
  if (v8)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_104_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = OUTLINED_FUNCTION_9_4();
      sub_1C886824C(v10, v11, v12, v13);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_9_4();
      sub_1C8868460(v18, v19, v20, v21);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_9_4();
    sub_1C886803C(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_92_1();
  sub_1C8858F2C();
  if (!v0)
  {
LABEL_8:
    Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite(0);
    OUTLINED_FUNCTION_113_1(Rewrite);
  }

  OUTLINED_FUNCTION_245_1();
}

uint64_t sub_1C886803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3278, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B8218, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8868460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B8230, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6150, &unk_1C8BE6DF0);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_57_3(v16);
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
LABEL_12:
      Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite(0);
      OUTLINED_FUNCTION_165_1(Rewrite);
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_92_1();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B6150, &unk_1C8BE6DF0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value.== infix(_:_:)();
  v20 = v19;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88688F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8438, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8868974(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3220, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88689E4()
{
  sub_1C8776620(&qword_1EC2B3220, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_206_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v12 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v11);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_50_4();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(v16);
  OUTLINED_FUNCTION_82(v17);
  OUTLINED_FUNCTION_72_2(v1);
  if (v18)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7EF8, &qword_1C8BF0250);
LABEL_5:
    OUTLINED_FUNCTION_144();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_252_1();
  sub_1C8776620(&qword_1EC2B2FD8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_91_0();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8868C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8430, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8868D08(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3278, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8868D78()
{
  sub_1C8776620(&qword_1EC2B3278, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8868EAC()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(0);
  sub_1C8776620(&qword_1EC2B8038, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_206_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(v11);
  v13 = OUTLINED_FUNCTION_21(Rewrite);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_50_4();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v16);
  OUTLINED_FUNCTION_82(v17);
  OUTLINED_FUNCTION_72_2(v1);
  if (v18)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7F08, &qword_1C8BF0260);
LABEL_5:
    OUTLINED_FUNCTION_144();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_252_1();
  sub_1C8776620(&qword_1EC2B8038, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_90_1();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C886911C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8428, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886919C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8218, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886920C()
{
  sub_1C8776620(&qword_1EC2B8218, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner);

  return sub_1C8BD4CFC();
}

void sub_1C88692B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_235_1(a1, a2);
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_193_1();
  v2 = MEMORY[0x1CCA7E2D0]();
  OUTLINED_FUNCTION_192_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8869390()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(0) + 20);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(0);
  sub_1C8776620(&qword_1EC2B8048, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_206_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v11);
  v13 = OUTLINED_FUNCTION_21(Rewrite);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_50_4();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v16);
  OUTLINED_FUNCTION_82(v17);
  OUTLINED_FUNCTION_72_2(v1);
  if (v18)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7F18, &qword_1C8BF0270);
LABEL_5:
    OUTLINED_FUNCTION_144();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_252_1();
  sub_1C8776620(&qword_1EC2B8048, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_89_1();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8869600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8420, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8869680(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8230, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88696F0()
{
  sub_1C8776620(&qword_1EC2B8230, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8869788()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7BA0);
  __swift_project_value_buffer(v0, qword_1EC2B7BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewrittenUtterance";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "correctionOutcome";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8869974()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(0) + 24);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
  sub_1C8776620(&qword_1EC2B8058, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F28, &qword_1C8BF0280);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_239_1();
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_212_1();
  v11 = *v0;
  v12 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (!v13 || (sub_1C8BD4DDC(), !v1))
  {
    v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(0);
    v15 = *(v14 + 24);
    sub_1C8778810();
    OUTLINED_FUNCTION_76(v2, 1, v7);
    if (v16)
    {
      sub_1C8778ED8(v2, &qword_1EC2B7F28, &qword_1C8BF0280);
LABEL_7:
      v17 = v0 + *(v14 + 20);
      sub_1C8BD49DC();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3_9();
    sub_1C877B4F0();
    sub_1C8776620(&qword_1EC2B8058, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome);
    OUTLINED_FUNCTION_240();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_105_0();
    sub_1C8858F2C();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F28, &qword_1C8BF0280);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_103();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8060, &qword_1C8BF0350);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_229_1();
  v16 = v16 && v14 == v15;
  if (!v16 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v26 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(0);
  v17 = *(v26 + 24);
  v18 = *(v10 + 48);
  OUTLINED_FUNCTION_196_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_196_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_43_1(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_43_1(v0 + v18);
    if (v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F28, &qword_1C8BF0280);
LABEL_17:
      v23 = *(v26 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v24, v25);
      v20 = OUTLINED_FUNCTION_64_0();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_43_1(v0 + v18);
  if (v19)
  {
    OUTLINED_FUNCTION_105_0();
    sub_1C8858F2C();
LABEL_14:
    sub_1C8778ED8(v0, &qword_1EC2B8060, &qword_1C8BF0350);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_9();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.== infix(_:_:)();
  v22 = v21;
  sub_1C8858F2C();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F28, &qword_1C8BF0280);
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_15:
  v20 = 0;
LABEL_18:
  OUTLINED_FUNCTION_157(v20);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8869EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8418, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8869F64(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B2FD8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8869FD4()
{
  sub_1C8776620(&qword_1EC2B2FD8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886A054()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C20CB0);
  qword_1EC2B7BB8 = 0xD000000000000036;
  unk_1EC2B7BC0 = 0x80000001C8C20A90;
  return result;
}

uint64_t sub_1C886A15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F30, &qword_1C8BF0288);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84C8, &qword_1C8BF3C18);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  __swift_storeEnumTagSinglePayload(&v27 - v23, 1, 1, v6);
  v31 = a1;
  sub_1C8778810();
  v29 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v28 = v22;
    sub_1C8778ED8(v14, &qword_1EC2B7F30, &qword_1C8BF0288);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      return sub_1C8778ED8(v24, &qword_1EC2B84C8, &qword_1C8BF3C18);
    }

    v28 = v22;
    sub_1C877B4F0();
    sub_1C8778ED8(v24, &qword_1EC2B84C8, &qword_1C8BF3C18);
    sub_1C877B4F0();
    sub_1C877B4F0();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v6);
  }

  sub_1C8776620(&qword_1EC2B8070, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo);
  sub_1C8BD4C7C();
  if (v4)
  {
    return sub_1C8778ED8(v24, &qword_1EC2B84C8, &qword_1C8BF3C18);
  }

  v24 = v28;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    return sub_1C8778ED8(v24, &qword_1EC2B84C8, &qword_1C8BF3C18);
  }

  sub_1C877B4F0();
  v26 = v31;
  sub_1C8778ED8(v31, &qword_1EC2B7F30, &qword_1C8BF0288);
  sub_1C877B4F0();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);
}

void Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_197_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F30, &qword_1C8BF0288);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_161_2();
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(0);
  OUTLINED_FUNCTION_76(v1, 1, v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7F30, &qword_1C8BF0288);
LABEL_5:
    v16 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
    OUTLINED_FUNCTION_163_2(v16);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_65_4();
  sub_1C877B4F0();
  sub_1C8776620(&qword_1EC2B8070, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo);
  OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_199_1();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8078, &qword_1C8BF0358);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_57_3(v16);
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F30, &qword_1C8BF0288);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
      OUTLINED_FUNCTION_165_1(v21);
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_169();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B8078, &qword_1C8BF0358);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value.== infix(_:_:)();
  v20 = v19;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F30, &qword_1C8BF0288);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C886A9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8410, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886AA3C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8058, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886AAAC()
{
  sub_1C8776620(&qword_1EC2B8058, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886AB2C()
{
  if (qword_1EC2B4FE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B7BB8;
  v2 = unk_1EC2B7BC0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6F646E552ELL, 0xE500000000000000);

  qword_1EC2B7BE0 = v1;
  *algn_1EC2B7BE8 = v2;
  return result;
}

uint64_t sub_1C886AC68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8408, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886ACE8(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8070, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886AD58()
{
  sub_1C8776620(&qword_1EC2B8070, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886AF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8400, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886AF80(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8038, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886AFF0()
{
  sub_1C8776620(&qword_1EC2B8038, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886B0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_50_2();
  v7 = *v4;
  v8 = v4[1];
  OUTLINED_FUNCTION_88_0();
  if (!v9 || (OUTLINED_FUNCTION_195(), result = sub_1C8BD4DDC(), !v5))
  {
    v11 = *(a4(0) + 20);
    return OUTLINED_FUNCTION_69();
  }

  return result;
}

uint64_t sub_1C886B218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83F8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886B298(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8048, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886B308()
{
  sub_1C8776620(&qword_1EC2B8048, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886B394()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7C38);
  __swift_project_value_buffer(v0, qword_1EC2B7C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prescribedAjaxTool";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "queryType";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "query";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F50, &qword_1C8BF02A8);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v37 = v7;
  v8 = OUTLINED_FUNCTION_86();
  v38 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(v8);
  v9 = OUTLINED_FUNCTION_21(v38);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F48, &qword_1C8BF02A0);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_27_0();
  Type = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(v16);
  v17 = OUTLINED_FUNCTION_21(Type);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F40, &qword_1C8BF0298);
  OUTLINED_FUNCTION_80(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_74();
  v25 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(v24);
  v26 = OUTLINED_FUNCTION_21(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_212_1();
  v29 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(0);
  v30 = v29[5];
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v1, 1, v25);
  if (v31)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7F40, &qword_1C8BF0298);
    v32 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    sub_1C877B4F0();
    sub_1C8776620(&qword_1EC2B30A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool);
    OUTLINED_FUNCTION_240();
    sub_1C8BD4E2C();
    v32 = v0;
    OUTLINED_FUNCTION_104_1();
    sub_1C8858F2C();
    if (v0)
    {
      goto LABEL_14;
    }
  }

  v33 = v29[6];
  sub_1C8778810();
  v34 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v34, v35, Type);
  if (v31)
  {
    sub_1C8778ED8(v2, &qword_1EC2B7F48, &qword_1C8BF02A0);
  }

  else
  {
    OUTLINED_FUNCTION_13_12();
    sub_1C877B4F0();
    sub_1C8776620(&qword_1EC2B3330, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType);
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_103_2();
    sub_1C8858F2C();
    if (v32)
    {
      goto LABEL_14;
    }
  }

  v36 = v29[7];
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v37, 1, v38);
  if (v31)
  {
    sub_1C8778ED8(v37, &qword_1EC2B7F50, &qword_1C8BF02A8);
LABEL_13:
    sub_1C8BD49DC();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_12_9();
  sub_1C877B4F0();
  sub_1C8776620(&qword_1EC2B33B0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery);
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_102_1();
  sub_1C8858F2C();
  if (!v32)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v59 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
  v1 = OUTLINED_FUNCTION_21(v59);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_9_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F50, &qword_1C8BF02A8);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B80A0, &qword_1C8BF0360);
  OUTLINED_FUNCTION_21(v58);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v60 = v11;
  v12 = OUTLINED_FUNCTION_86();
  Type = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(v12);
  v13 = OUTLINED_FUNCTION_21(Type);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F48, &qword_1C8BF02A0);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_81();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B80A8, &qword_1C8BF0368);
  OUTLINED_FUNCTION_21(v61);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_81();
  v64 = v23;
  v24 = OUTLINED_FUNCTION_86();
  v25 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(v24);
  v26 = OUTLINED_FUNCTION_21(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F40, &qword_1C8BF0298);
  OUTLINED_FUNCTION_80(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v32);
  v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B80B0, &qword_1C8BF0370) - 8);
  v34 = *(*v33 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v35);
  v36 = OUTLINED_FUNCTION_27_0();
  v62 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v36);
  v37 = v62[5];
  v38 = v33[14];
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_72(v0);
  if (v39)
  {
    OUTLINED_FUNCTION_72(v0 + v38);
    if (v39)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F40, &qword_1C8BF0298);
      goto LABEL_11;
    }

LABEL_9:
    v40 = &qword_1EC2B80B0;
    v41 = &qword_1C8BF0370;
    v42 = v0;
LABEL_30:
    sub_1C8778ED8(v42, v40, v41);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_230();
  sub_1C8778810();
  OUTLINED_FUNCTION_72(v0 + v38);
  if (v39)
  {
    OUTLINED_FUNCTION_104_1();
    sub_1C8858F2C();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_6();
  sub_1C877B4F0();
  static Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.== infix(_:_:)();
  v44 = v43;
  sub_1C8858F2C();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F40, &qword_1C8BF0298);
  if ((v44 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v45 = v62[6];
  v46 = *(v61 + 48);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v64, 1, Type);
  if (v39)
  {
    OUTLINED_FUNCTION_76(v64 + v46, 1, Type);
    if (v39)
    {
      sub_1C8778ED8(v64, &qword_1EC2B7F48, &qword_1C8BF02A0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_76(v64 + v46, 1, Type);
  if (v47)
  {
    OUTLINED_FUNCTION_103_2();
    sub_1C8858F2C();
LABEL_19:
    v40 = &qword_1EC2B80A8;
    v41 = &qword_1C8BF0368;
    v42 = v64;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_13_12();
  sub_1C877B4F0();
  static Siri_Nlu_Internal_SiriMessageTypes_QueryType.== infix(_:_:)();
  v49 = v48;
  sub_1C8858F2C();
  sub_1C8858F2C();
  sub_1C8778ED8(v64, &qword_1EC2B7F48, &qword_1C8BF02A0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v50 = v62[7];
  v51 = *(v58 + 48);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v60, 1, v59);
  if (v39)
  {
    OUTLINED_FUNCTION_76(v60 + v51, 1, v59);
    if (v39)
    {
      sub_1C8778ED8(v60, &qword_1EC2B7F50, &qword_1C8BF02A8);
LABEL_34:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v56, v57);
      OUTLINED_FUNCTION_258();
      v53 = sub_1C8BD517C();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_76(v60 + v51, 1, v59);
  if (v52)
  {
    OUTLINED_FUNCTION_102_1();
    sub_1C8858F2C();
LABEL_29:
    v40 = &qword_1EC2B80A0;
    v41 = &qword_1C8BF0360;
    v42 = v60;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_12_9();
  sub_1C877B4F0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.== infix(_:_:)();
  v55 = v54;
  sub_1C8858F2C();
  sub_1C8858F2C();
  sub_1C8778ED8(v60, &qword_1EC2B7F50, &qword_1C8BF02A8);
  if (v55)
  {
    goto LABEL_34;
  }

LABEL_31:
  v53 = 0;
LABEL_32:
  OUTLINED_FUNCTION_157(v53);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C886C13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886C1BC(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B32E0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886C22C()
{
  sub_1C8776620(&qword_1EC2B32E0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886C2C4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7C50);
  __swift_project_value_buffer(v0, qword_1EC2B7C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "generateRichContentTool";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "generateRichContentFromMediaIntentTool";
  *(v10 + 8) = 38;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "generateImageIntentTool";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "generateKnowledgeResponseIntentTool";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C886C52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  RichContentFromMediaIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool(0);
  v7 = *(*(RichContentFromMediaIntentTool - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](RichContentFromMediaIntentTool);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84B0, &qword_1C8BF3C00);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, RichContentFromMediaIntentTool);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v23, &qword_1EC2B84B0, &qword_1C8BF3C00);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, RichContentFromMediaIntentTool);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B82A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B84B0, &qword_1C8BF3C00);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, RichContentFromMediaIntentTool) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B84B0, &qword_1C8BF3C00);
  }

  sub_1C877B4F0();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B7F58, &qword_1C8BF02B0);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C886C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  ImageIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool(0);
  v7 = *(*(ImageIntentTool - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](ImageIntentTool);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84B8, &qword_1C8BF3C08);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, ImageIntentTool);
  v29 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v23, &qword_1EC2B84B8, &qword_1C8BF3C08);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, ImageIntentTool);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B82C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2B84B8, &qword_1C8BF3C08);
  }

  v24 = v30;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, ImageIntentTool) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2B84B8, &qword_1C8BF3C08);
  }

  sub_1C877B4F0();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B7F58, &qword_1C8BF02B0);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_72_2(v1);
  if (v8)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_104_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = OUTLINED_FUNCTION_9_4();
      sub_1C886D1C4(v21, v22, v23, v24);
      break;
    case 2u:
      v13 = OUTLINED_FUNCTION_9_4();
      sub_1C886D3D8(v13, v14, v15, v16);
      break;
    case 3u:
      v17 = OUTLINED_FUNCTION_9_4();
      sub_1C886D5EC(v17, v18, v19, v20);
      break;
    default:
      v9 = OUTLINED_FUNCTION_9_4();
      sub_1C886CFB4(v9, v10, v11, v12);
      break;
  }

  OUTLINED_FUNCTION_101_1();
  sub_1C8858F2C();
  if (!v0)
  {
LABEL_8:
    v25 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(0);
    OUTLINED_FUNCTION_113_1(v25);
  }

  OUTLINED_FUNCTION_245_1();
}

uint64_t sub_1C886CFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  RichContentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool(0);
  v9 = *(*(RichContentTool - 8) + 64);
  MEMORY[0x1EEE9AC00](RichContentTool);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3110, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  RichContentFromMediaIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool(0);
  v9 = *(*(RichContentFromMediaIntentTool - 8) + 64);
  MEMORY[0x1EEE9AC00](RichContentFromMediaIntentTool);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B82A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886D3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  ImageIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool(0);
  v9 = *(*(ImageIntentTool - 8) + 64);
  MEMORY[0x1EEE9AC00](ImageIntentTool);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B82C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886D5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  KnowledgeResponseIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool(0);
  v9 = *(*(KnowledgeResponseIntentTool - 8) + 64);
  MEMORY[0x1EEE9AC00](KnowledgeResponseIntentTool);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B30F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B80C0, &qword_1C8BF0378);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_57_3(v16);
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(0);
      OUTLINED_FUNCTION_165_1(v21);
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_101_1();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B80C0, &qword_1C8BF0378);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value.== infix(_:_:)();
  v20 = v19;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C886DA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83E8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886DB00(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B30A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886DB70()
{
  sub_1C8776620(&qword_1EC2B30A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886DBF0()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000018, 0x80000001C8C20DD0);
  qword_1EC2B7C68 = 0xD000000000000037;
  unk_1EC2B7C70 = 0x80000001C8C20B90;
  return result;
}

uint64_t sub_1C886DD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83E0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886DD80(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3110, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886DDF0()
{
  sub_1C8776620(&qword_1EC2B3110, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886DE6C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000027, 0x80000001C8C20DA0);
  qword_1EC2B7C90 = 0xD000000000000037;
  *algn_1EC2B7C98 = 0x80000001C8C20B90;
  return result;
}

uint64_t sub_1C886DF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83D8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886DFFC(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B82A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886E06C()
{
  sub_1C8776620(&qword_1EC2B82A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886E0E8()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000018, 0x80000001C8C20D80);
  qword_1EC2B7CB8 = 0xD000000000000037;
  unk_1EC2B7CC0 = 0x80000001C8C20B90;
  return result;
}

uint64_t sub_1C886E1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886E278(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B82C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886E2E8()
{
  sub_1C8776620(&qword_1EC2B82C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886E364()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000024, 0x80000001C8C20D50);
  qword_1EC2B7CE0 = 0xD000000000000037;
  *algn_1EC2B7CE8 = 0x80000001C8C20B90;
  return result;
}

uint64_t sub_1C886E478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83C8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886E4F8(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B30F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886E568()
{
  sub_1C8776620(&qword_1EC2B30F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886E608(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_5_0();
  __swift_project_value_buffer(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C8BE74A0;
  v11 = (v10 + v9);
  v12 = v10 + v9 + v7[14];
  *v11 = 1;
  *v12 = "implicit";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = sub_1C8BD50FC();
  OUTLINED_FUNCTION_49_3(v14);
  v16 = *(v15 + 104);
  (v16)(v12, v13, v2);
  v17 = v11 + v8 + v7[14];
  *(v11 + v8) = 2;
  *v17 = "explicit";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v16();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryType.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_72_2(v1);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_9_4();
    sub_1C886EAD0(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_9_4();
    sub_1C886E8BC(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_100_2();
  sub_1C8858F2C();
  if (!v0)
  {
LABEL_6:
    Type = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(0);
    OUTLINED_FUNCTION_113_1(Type);
  }

  OUTLINED_FUNCTION_245_1();
}

uint64_t sub_1C886E8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F68, &qword_1C8BF02C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7F68, &qword_1C8BF02C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3350, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F68, &qword_1C8BF02C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7F68, &qword_1C8BF02C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3370, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B80F0, &qword_1C8BF0380);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_57_3(v16);
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
LABEL_12:
      Type = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(0);
      OUTLINED_FUNCTION_165_1(Type);
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_100_2();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B80F0, &qword_1C8BF0380);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value.== infix(_:_:)();
  v20 = v19;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C886EF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886EFE4(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3330, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886F054()
{
  sub_1C8776620(&qword_1EC2B3330, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886F190(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83B8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886F210(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3350, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886F280()
{
  sub_1C8776620(&qword_1EC2B3350, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit);

  return sub_1C8BD4CFC();
}

void sub_1C886F31C()
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_193_1();
  v0 = MEMORY[0x1CCA7E2D0]();
  OUTLINED_FUNCTION_192_1(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_206_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v12 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v11);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_50_4();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(v16);
  OUTLINED_FUNCTION_82(v17);
  OUTLINED_FUNCTION_72_2(v1);
  if (v18)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7F78, &qword_1C8BF02D0);
LABEL_5:
    OUTLINED_FUNCTION_144();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_252_1();
  sub_1C8776620(&qword_1EC2B3308, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_99_1();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C886F57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83B0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886F5FC(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3370, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886F66C()
{
  sub_1C8776620(&qword_1EC2B3370, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886F78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_12_0();
  v7 = *v6 == *v3 && *(v4 + 8) == v3[1];
  if (!v7 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  v8 = a3(0);
  OUTLINED_FUNCTION_165_1(v8);
  OUTLINED_FUNCTION_0_10();
  sub_1C8776620(v9, v10);
  return OUTLINED_FUNCTION_64_0() & 1;
}

uint64_t sub_1C886F8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886F92C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3308, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886F99C()
{
  sub_1C8776620(&qword_1EC2B3308, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886FA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F88, &qword_1C8BF02E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8490, &qword_1C8BF3BE0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  __swift_storeEnumTagSinglePayload(&v27 - v23, 1, 1, v6);
  v31 = a1;
  sub_1C8778810();
  v29 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v28 = v22;
    sub_1C8778ED8(v14, &qword_1EC2B7F88, &qword_1C8BF02E0);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      return sub_1C8778ED8(v24, &qword_1EC2B8490, &qword_1C8BF3BE0);
    }

    v28 = v22;
    sub_1C877B4F0();
    sub_1C8778ED8(v24, &qword_1EC2B8490, &qword_1C8BF3BE0);
    sub_1C877B4F0();
    sub_1C877B4F0();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v6);
  }

  sub_1C8776620(&qword_1EC2B8118, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT);
  sub_1C8BD4C7C();
  if (v4)
  {
    return sub_1C8778ED8(v24, &qword_1EC2B8490, &qword_1C8BF3BE0);
  }

  v24 = v28;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    return sub_1C8778ED8(v24, &qword_1EC2B8490, &qword_1C8BF3BE0);
  }

  sub_1C877B4F0();
  v26 = v31;
  sub_1C8778ED8(v31, &qword_1EC2B7F88, &qword_1C8BF02E0);
  sub_1C877B4F0();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);
}

void Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_197_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F88, &qword_1C8BF02E0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_161_2();
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(0);
  OUTLINED_FUNCTION_76(v1, 1, v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7F88, &qword_1C8BF02E0);
LABEL_5:
    v16 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
    OUTLINED_FUNCTION_163_2(v16);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_64_4();
  sub_1C877B4F0();
  sub_1C8776620(&qword_1EC2B8118, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT);
  OUTLINED_FUNCTION_135_1();
  OUTLINED_FUNCTION_199_1();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8120, &qword_1C8BF0388);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_57_3(v16);
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F88, &qword_1C8BF02E0);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
      OUTLINED_FUNCTION_165_1(v21);
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_169();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B8120, &qword_1C8BF0388);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value.== infix(_:_:)();
  v20 = v19;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F88, &qword_1C8BF02E0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8870314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83A0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8870394(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8170, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8870404()
{
  sub_1C8776620(&qword_1EC2B8170, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8870484()
{
  result = MEMORY[0x1CCA7E2D0](0x545047746168432ELL, 0xE800000000000000);
  qword_1EC2B7DA0 = 0xD000000000000031;
  *algn_1EC2B7DA8 = 0x80000001C8C20C40;
  return result;
}

uint64_t sub_1C887058C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8398, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C887060C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8118, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C887067C()
{
  sub_1C8776620(&qword_1EC2B8118, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_97_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_72_2(v1);
  if (v8)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = OUTLINED_FUNCTION_9_4();
    sub_1C8870A30(v9, v10, v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_9_4();
    sub_1C887081C(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_98_0();
  sub_1C8858F2C();
  if (!v0)
  {
LABEL_6:
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
    OUTLINED_FUNCTION_113_1(v17);
  }

  OUTLINED_FUNCTION_245_1();
}

uint64_t sub_1C887081C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F98, &qword_1C8BF02F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7F98, &qword_1C8BF02F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B33D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8870A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F98, &qword_1C8BF02F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B7F98, &qword_1C8BF02F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B33F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8138, &qword_1C8BF0390);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_57_3(v16);
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
      OUTLINED_FUNCTION_165_1(v21);
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v22, v23);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_98_0();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B8138, &qword_1C8BF0390);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value.== infix(_:_:)();
  v20 = v19;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8870EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8390, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8870F44(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B33B0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8870FB4()
{
  sub_1C8776620(&qword_1EC2B33B0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_206_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v12 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v11);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_50_4();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(v16);
  OUTLINED_FUNCTION_82(v17);
  OUTLINED_FUNCTION_72_2(v1);
  if (v18)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7FA8, &qword_1C8BF0300);
LABEL_5:
    OUTLINED_FUNCTION_144();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_252_1();
  sub_1C8776620(&qword_1EC2B3470, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_97_1();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8871260(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8388, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88712E0(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B33D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8871350()
{
  sub_1C8776620(&qword_1EC2B33D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_206_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v12 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v11);
  v13 = OUTLINED_FUNCTION_21(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = OUTLINED_FUNCTION_50_4();
  v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(v16);
  OUTLINED_FUNCTION_82(v17);
  OUTLINED_FUNCTION_72_2(v1);
  if (v18)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7FB8, &qword_1C8BF0310);
LABEL_5:
    OUTLINED_FUNCTION_144();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_252_1();
  sub_1C8776620(&qword_1EC2B3498, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery);
  OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_96_1();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C88715FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8380, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C887167C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B33F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88716EC()
{
  sub_1C8776620(&qword_1EC2B33F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88717BC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7E40);
  __swift_project_value_buffer(v0, qword_1EC2B7E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewrittenUtterance";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "correctionOutcome";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "redactedUtterance";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88719E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 28);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
  OUTLINED_FUNCTION_94_2();
  sub_1C8776620(v6, v7);
  OUTLINED_FUNCTION_195();
  return sub_1C8BD4C7C();
}