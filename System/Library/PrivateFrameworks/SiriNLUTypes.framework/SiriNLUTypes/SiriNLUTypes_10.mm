void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_50_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_212_1();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v12 = *v0;
  v13 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (!v14 || (OUTLINED_FUNCTION_195(), sub_1C8BD4DDC(), !v1))
  {
    v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(0);
    v16 = *(v15 + 28);
    sub_1C8778810();
    OUTLINED_FUNCTION_76(v3, 1, v8);
    if (v17)
    {
      sub_1C8778ED8(v3, &qword_1EC2B7FC8, &qword_1C8BF0320);
    }

    else
    {
      OUTLINED_FUNCTION_2_14();
      OUTLINED_FUNCTION_233();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_94_2();
      sub_1C8776620(v18, v19);
      OUTLINED_FUNCTION_9_1();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_43_4();
      sub_1C8858F2C();
      if (v1)
      {
        goto LABEL_10;
      }
    }

    v20 = *(v2 + 16);
    v21 = *(v2 + 24);
    OUTLINED_FUNCTION_88_0();
    if (!v22 || (OUTLINED_FUNCTION_195(), sub_1C8BD4DDC(), !v1))
    {
      v23 = *(v15 + 24);
      OUTLINED_FUNCTION_69();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v3);
  v5 = OUTLINED_FUNCTION_49_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8160, &qword_1C8BF0398);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_229_1();
  v18 = v18 && v16 == v17;
  if (!v18 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_15;
  }

  v29 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(0);
  v19 = *(v29 + 28);
  v20 = *(v12 + 48);
  OUTLINED_FUNCTION_196_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_196_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_43_1(v2);
  if (!v18)
  {
    OUTLINED_FUNCTION_253();
    sub_1C8778810();
    OUTLINED_FUNCTION_43_1(v2 + v20);
    if (!v21)
    {
      OUTLINED_FUNCTION_2_14();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_168_0();
      static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.== infix(_:_:)();
      v24 = v23;
      sub_1C8858F2C();
      sub_1C8858F2C();
      sub_1C8778ED8(v2, &qword_1EC2B7FC8, &qword_1C8BF0320);
      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_43_4();
    sub_1C8858F2C();
LABEL_14:
    sub_1C8778ED8(v2, &qword_1EC2B8160, &qword_1C8BF0398);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_43_1(v2 + v20);
  if (!v18)
  {
    goto LABEL_14;
  }

  sub_1C8778ED8(v2, &qword_1EC2B7FC8, &qword_1C8BF0320);
LABEL_17:
  v25 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (v25 || (sub_1C8BD529C() & 1) != 0)
  {
    v26 = *(v29 + 24);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_10();
    sub_1C8776620(v27, v28);
    v22 = OUTLINED_FUNCTION_64_0();
    goto LABEL_23;
  }

LABEL_15:
  v22 = 0;
LABEL_23:
  OUTLINED_FUNCTION_157(v22);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8871F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8378, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8871FB8(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3470, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8872028()
{
  sub_1C8776620(&qword_1EC2B3470, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery);

  return sub_1C8BD4CFC();
}

void sub_1C88720D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_235_1(a1, a2);
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_193_1();
  v2 = MEMORY[0x1CCA7E2D0]();
  OUTLINED_FUNCTION_192_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8872148()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7E68);
  __swift_project_value_buffer(v0, qword_1EC2B7E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
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
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "redactedUtterance";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "partner";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88723AC()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0) + 32);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  sub_1C8776620(&qword_1EC2B8170, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FD0, &qword_1C8BF0328);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_239_1();
  v33 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  v8 = OUTLINED_FUNCTION_21(v33);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_80(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_74();
  v16 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v15);
  v17 = OUTLINED_FUNCTION_21(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  v20 = *v0;
  v21 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (!v22 || (sub_1C8BD4DDC(), !v1))
  {
    v32 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
    v23 = v32[7];
    sub_1C8778810();
    OUTLINED_FUNCTION_76(v2, 1, v16);
    if (v24)
    {
      sub_1C8778ED8(v2, &qword_1EC2B7FC8, &qword_1C8BF0320);
    }

    else
    {
      OUTLINED_FUNCTION_2_14();
      OUTLINED_FUNCTION_253();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_94_2();
      sub_1C8776620(v25, v26);
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_43_4();
      sub_1C8858F2C();
      if (v1)
      {
        goto LABEL_14;
      }
    }

    v27 = v0[2];
    v28 = v0[3];
    OUTLINED_FUNCTION_88_0();
    if (!v29 || (sub_1C8BD4DDC(), !v1))
    {
      v30 = v32[8];
      sub_1C8778810();
      OUTLINED_FUNCTION_72_2(v3);
      if (v24)
      {
        sub_1C8778ED8(v3, &qword_1EC2B7FD0, &qword_1C8BF0328);
LABEL_13:
        v31 = v0 + v32[6];
        OUTLINED_FUNCTION_178_2();
        sub_1C8BD49DC();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_8_10();
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B8170, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner);
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_95_1();
      sub_1C8858F2C();
      if (!v1)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_84();
  v50 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(v4);
  v5 = OUTLINED_FUNCTION_21(v50);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FD0, &qword_1C8BF0328);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_212_1();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8178, &qword_1C8BF03A0);
  OUTLINED_FUNCTION_21(v49);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_27_0();
  v16 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v15);
  v17 = OUTLINED_FUNCTION_21(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_80(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8160, &qword_1C8BF0398);
  OUTLINED_FUNCTION_21(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_239_1();
  v28 = *v1 == *v0 && v1[1] == v0[1];
  if (!v28 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_31;
  }

  v48 = v2;
  v47 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
  v29 = v47[7];
  v30 = *(v24 + 48);
  OUTLINED_FUNCTION_265_0();
  sub_1C8778810();
  OUTLINED_FUNCTION_265_0();
  sub_1C8778810();
  OUTLINED_FUNCTION_73(v3);
  if (v28)
  {
    OUTLINED_FUNCTION_73(v3 + v30);
    if (v28)
    {
      sub_1C8778ED8(v3, &qword_1EC2B7FC8, &qword_1C8BF0320);
      goto LABEL_16;
    }

LABEL_14:
    v32 = &qword_1EC2B8160;
    v33 = &qword_1C8BF0398;
    v34 = v3;
LABEL_30:
    sub_1C8778ED8(v34, v32, v33);
    goto LABEL_31;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_73(v3 + v30);
  if (v31)
  {
    OUTLINED_FUNCTION_43_4();
    sub_1C8858F2C();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_14();
  sub_1C877B4F0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.== infix(_:_:)();
  v36 = v35;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_156_1();
  sub_1C8858F2C();
  sub_1C8778ED8(v3, &qword_1EC2B7FC8, &qword_1C8BF0320);
  if ((v36 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v37 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v37 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_31;
  }

  v38 = v47[8];
  v39 = *(v49 + 48);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v48, 1, v50);
  if (v28)
  {
    OUTLINED_FUNCTION_65(v48 + v39);
    if (v28)
    {
      sub_1C8778ED8(v48, &qword_1EC2B7FD0, &qword_1C8BF0328);
LABEL_34:
      v44 = v47[6];
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v45, v46);
      v41 = OUTLINED_FUNCTION_64_0();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(v48 + v39);
  if (v40)
  {
    OUTLINED_FUNCTION_95_1();
    sub_1C8858F2C();
LABEL_29:
    v32 = &qword_1EC2B8178;
    v33 = &qword_1C8BF03A0;
    v34 = v48;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_8_10();
  sub_1C877B4F0();
  static Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.== infix(_:_:)();
  v43 = v42;
  sub_1C8858F2C();
  sub_1C8858F2C();
  sub_1C8778ED8(v48, &qword_1EC2B7FD0, &qword_1C8BF0328);
  if (v43)
  {
    goto LABEL_34;
  }

LABEL_31:
  v41 = 0;
LABEL_32:
  OUTLINED_FUNCTION_157(v41);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8872CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8370, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8872D2C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3498, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8872D9C()
{
  sub_1C8776620(&qword_1EC2B3498, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8872E1C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C20CB0);
  qword_1EC2B7E80 = 0xD00000000000002ELL;
  *algn_1EC2B7E88 = 0x80000001C8C20C80;
  return result;
}

uint64_t sub_1C8872F20()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_254_0();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1C8872F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FD8, &qword_1C8BF0330);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8478, &qword_1C8BF3BC8);
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
    sub_1C8778ED8(v14, &qword_1EC2B7FD8, &qword_1C8BF0330);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      return sub_1C8778ED8(v24, &qword_1EC2B8478, &qword_1C8BF3BC8);
    }

    v28 = v22;
    sub_1C877B4F0();
    sub_1C8778ED8(v24, &qword_1EC2B8478, &qword_1C8BF3BC8);
    sub_1C877B4F0();
    sub_1C877B4F0();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v6);
  }

  sub_1C8776620(&qword_1EC2B8188, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo);
  sub_1C8BD4C7C();
  if (v4)
  {
    return sub_1C8778ED8(v24, &qword_1EC2B8478, &qword_1C8BF3BC8);
  }

  v24 = v28;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    return sub_1C8778ED8(v24, &qword_1EC2B8478, &qword_1C8BF3BC8);
  }

  sub_1C877B4F0();
  v26 = v31;
  sub_1C8778ED8(v31, &qword_1EC2B7FD8, &qword_1C8BF0330);
  sub_1C877B4F0();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_197_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FD8, &qword_1C8BF0330);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_161_2();
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
  OUTLINED_FUNCTION_76(v1, 1, v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7FD8, &qword_1C8BF0330);
LABEL_5:
    v16 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
    OUTLINED_FUNCTION_163_2(v16);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_62_2();
  sub_1C877B4F0();
  sub_1C8776620(&qword_1EC2B8188, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo);
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

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(v1);
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
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8190, &qword_1C8BF03A8);
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
      sub_1C8778ED8(v0, &qword_1EC2B7FD8, &qword_1C8BF0330);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
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
    sub_1C8778ED8(v0, &qword_1EC2B8190, &qword_1C8BF03A8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value.== infix(_:_:)();
  v20 = v19;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7FD8, &qword_1C8BF0330);
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

uint64_t sub_1C88737E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8368, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8873860(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8158, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88738D0()
{
  sub_1C8776620(&qword_1EC2B8158, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8873950()
{
  if (qword_1EC2B50F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B7E80;
  v2 = *algn_1EC2B7E88;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6F646E552ELL, 0xE500000000000000);

  qword_1EC2B7EA8 = v1;
  unk_1EC2B7EB0 = v2;
  return result;
}

uint64_t sub_1C8873AA0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  sub_1C8BD530C();
  v1(0);
  v2 = OUTLINED_FUNCTION_184();
  sub_1C8776620(v2, v3);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8873B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8360, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8873BA0(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8188, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8873C10()
{
  sub_1C8776620(&qword_1EC2B8188, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8876520()
{
  result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C887660C()
{
  sub_1C8876690();
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8876690()
{
  if (!qword_1EDACD398)
  {
    v0 = sub_1C8BD521C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDACD398);
    }
  }
}

void sub_1C887673C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C8876844()
{
  result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1C887697C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C887673C(319, &qword_1EC2B2FE0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C8876A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C87B5264);
}

uint64_t sub_1C8876ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C87B5290);
}

void sub_1C8876BC4()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C887673C(319, &qword_1EC2B3088, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C887673C(319, &qword_1EC2B3310, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C887673C(319, &qword_1EC2B3390, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C8876D3C()
{
  result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool(319);
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

uint64_t sub_1C8876EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C87B5274);
}

uint64_t sub_1C8876F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C87B52A0);
}

uint64_t sub_1C8876FB4()
{
  v1 = OUTLINED_FUNCTION_248_1();
  v3 = v2(v1);
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1C8BD49FC();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(v0 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1C88770F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_248_1();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_169_2();
    }
  }

  return result;
}

void sub_1C88771AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_248_1();
  sub_1C8BD49FC();
  if (v7 <= 0x3F)
  {
    sub_1C887673C(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v8 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

void sub_1C8877234()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C887673C(319, &qword_1EC2B33F8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C88772F8()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C887673C(319, &qword_1EC2B33F8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C887673C(319, &qword_1EC2B3280, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8877438()
{
  v0 = OUTLINED_FUNCTION_248_1();
  sub_1C887673C(v0, v1, v2, v3);
  if (v4 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_169_2();
    }
  }
}

uint64_t sub_1C88774A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C87B527C);
}

uint64_t sub_1C88774F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C87B52A8);
}

uint64_t sub_1C88775A0()
{
  OUTLINED_FUNCTION_248_1();
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_169_2();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  v3 = v1 + *(v2 + 20);

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_113_1(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_1C8BD49DC();
}

uint64_t OUTLINED_FUNCTION_122_1()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_168_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_219_0()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v3 = v0 + *(v1 + 20);

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_220_0()
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_222_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_223_2()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_229_1()
{
  result = *v1;
  v3 = v1[1];
  v4 = *v0;
  v5 = v0[1];
  return result;
}

void *OUTLINED_FUNCTION_237_0(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_252_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_253_1()
{

  return sub_1C8778ED8(v0 + v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_256_1()
{

  return sub_1C88593CC();
}

uint64_t OUTLINED_FUNCTION_257_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_258_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_260_1(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_261_1()
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_268_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t get_enum_tag_for_layout_string_12SiriNLUTypes28UsoGraphProtoConversionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C8877D68(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C8877DA8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8877DEC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v8[5]);
    OUTLINED_FUNCTION_15_2(v8[6]);
    *(a1 + v8[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    return OUTLINED_FUNCTION_44_4();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.requestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_8();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C887A054(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_39_4();
  v11 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.requestID.modify()
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
  OUTLINED_FUNCTION_2_15();
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
    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.tokenisedUtterance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  OUTLINED_FUNCTION_2_15();
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  OUTLINED_FUNCTION_16_0();
  sub_1C87867A0(v1 + v9, v8, &qword_1EC2B6538, &qword_1C8C12C80);
  v10 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = (a1 + v10[5]);
    *v11 = 0;
    v11[1] = 0;
    v12 = (a1 + v10[6]);
    *v12 = 0;
    v12[1] = 0;
    v13 = v10[7];
    v14 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
    OUTLINED_FUNCTION_43(a1 + v13, v15, v16, v14);
    result = __swift_getEnumTagSinglePayload(v8, 1, v10);
    if (result != 1)
    {
      return sub_1C8778ED8(v8, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_10();
    return sub_1C887D3FC();
  }

  return result;
}

uint64_t sub_1C8878310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C887D450();
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.tokenisedUtterance.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_8();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C887A054(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_39_4();
  v11 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B6538, &qword_1C8C12C80);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.tokenisedUtterance.modify()
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
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    OUTLINED_FUNCTION_26(v8[6]);
    v14 = v8[7];
    v15 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
    OUTLINED_FUNCTION_43(v12 + v14, v16, v17, v15);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

BOOL sub_1C8878608(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  OUTLINED_FUNCTION_2_15();
  v15 = *a3;
  swift_beginAccess();
  sub_1C87867A0(v4 + v15, v14, a1, a2);
  v16 = a4(0);
  v17 = __swift_getEnumTagSinglePayload(v14, 1, v16) != 1;
  sub_1C8778ED8(v14, a1, a2);
  return v17;
}

uint64_t sub_1C8878718(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0) + 20);
  v17 = *(v4 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v20 = OUTLINED_FUNCTION_2();
    v19 = sub_1C887A054(v20);
    *(v9 + v16) = v19;
  }

  v21 = a3(0);
  OUTLINED_FUNCTION_43(v15, v22, v23, v21);
  v24 = *a4;
  swift_beginAccess();
  sub_1C878656C(v15, v19 + v24, a1, a2);
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.embeddings.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v10 = a1 + v8[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v8[6]);
    OUTLINED_FUNCTION_15_2(v8[7]);
    OUTLINED_FUNCTION_15_2(v8[8]);
    OUTLINED_FUNCTION_18_2(v8[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
    return OUTLINED_FUNCTION_44_4();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.embeddings.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_8();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C887A054(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_39_4();
  v11 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B64A8, &unk_1C8BE7670);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.embeddings.modify()
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
  OUTLINED_FUNCTION_2_15();
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
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.matchingSpans.getter()
{
  v1 = *(v0 + *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0) + 20));
  v2 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1C8878C14(uint64_t *a1)
{
  v1 = *a1;

  return Siri_Nlu_Internal_Psc_PSCServiceRequest.matchingSpans.setter();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.matchingSpans.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C887A054(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  v10 = *(v7 + v9);
  *(v7 + v9) = v0;
}

void (*Siri_Nlu_Internal_Psc_PSCServiceRequest.matchingSpans.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0) + 20);
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  v3[6] = *(v5 + v6);

  return sub_1C8878D64;
}

void sub_1C8878D64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Siri_Nlu_Internal_Psc_PSCServiceRequest.matchingSpans.setter();
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
      OUTLINED_FUNCTION_12_10();
      v14 = OUTLINED_FUNCTION_2();
      v11 = sub_1C887A054(v14);
      *(v13 + v12) = v11;
    }

    v15 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
    swift_beginAccess();
    v16 = *(v11 + v15);
    *(v11 + v15) = v3;
  }

  free(v2);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *(a1 + v10) = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_10();
    return OUTLINED_FUNCTION_44_4();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.turnInput.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_8();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C887A054(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_39_4();
  v11 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B6038, &unk_1C8BE8850);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.turnInput.modify()
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
  OUTLINED_FUNCTION_2_15();
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
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.legacyContext.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    Siri_Nlu_External_LegacyNLContext.init()(a1);
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_11();
    return OUTLINED_FUNCTION_44_4();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.legacyContext.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_8();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C887A054(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_39_4();
  v11 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.legacyContext.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v7);
  OUTLINED_FUNCTION_21(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v14;
    v15 = v12 + v8[6];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v12 + v8[7]) = 2;
    *(v12 + v8[8]) = 2;
    OUTLINED_FUNCTION_26(v8[9]);
    *(v12 + v8[10]) = v16;
    *(v12 + v8[11]) = 4;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v8 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v8[5]);
    v10 = v8[6];
    v11 = type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_43(a1 + v10, v12, v13, v11);
    OUTLINED_FUNCTION_18_2(v8[7]);
    OUTLINED_FUNCTION_18_2(v8[8]);
    OUTLINED_FUNCTION_18_2(v8[9]);
    OUTLINED_FUNCTION_18_2(v8[10]);
    *(a1 + v8[11]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v7, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_13();
    return OUTLINED_FUNCTION_44_4();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.nluRequestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_8();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C887A054(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_39_4();
  v11 = type metadata accessor for Siri_Nlu_External_RequestID();
  OUTLINED_FUNCTION_33_1(v11);
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v12, v13, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.nluRequestID.modify()
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
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[5]);
    v13 = v7[6];
    v14 = type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_43(&v11[v13], v15, v16, v14);
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
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C88798EC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1C887D450();
    a3(v5);
    sub_1C887D4A4();
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

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0) + 20);
  if (qword_1EC2B5120 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EC2B8530;
}

uint64_t sub_1C8879B6C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8518);
  __swift_project_value_buffer(v0, qword_1EC2B8518);
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
  *v17 = "legacy_context";
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

uint64_t static Siri_Nlu_Internal_Psc_PSCServiceRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5118 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B8518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C8879F08()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C8879F48();
  qword_1EC2B8530 = result;
  return result;
}

uint64_t sub_1C8879F48()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  v4 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  v10 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  v12 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  return v0;
}

uint64_t sub_1C887A054(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v56 = &v53 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v53 - v21;
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  v24 = type metadata accessor for Siri_Nlu_External_UUID();
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  v26 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  v28 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v30 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  v54 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  v31 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  v55 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  v33 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  v57 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  v35 = type metadata accessor for Siri_Nlu_External_RequestID();
  __swift_storeEnumTagSinglePayload(v1 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v36, v22, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_beginAccess();
  sub_1C878656C(v22, v1 + v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  sub_1C87867A0(a1 + v37, v18, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_beginAccess();
  sub_1C878656C(v18, v1 + v25, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  swift_beginAccess();
  v39 = v56;
  sub_1C87867A0(a1 + v38, v56, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_beginAccess();
  sub_1C878656C(v39, v1 + v27, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_endAccess();
  v40 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  v41 = *(a1 + v40);
  swift_beginAccess();
  v42 = *(v1 + v29);
  *(v1 + v29) = v41;

  v43 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  swift_beginAccess();
  v44 = v58;
  sub_1C87867A0(a1 + v43, v58, &qword_1EC2B6038, &unk_1C8BE8850);
  v45 = v54;
  swift_beginAccess();
  sub_1C878656C(v44, v1 + v45, &qword_1EC2B6038, &unk_1C8BE8850);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  swift_beginAccess();
  v47 = v59;
  sub_1C87867A0(a1 + v46, v59, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  v48 = v55;
  swift_beginAccess();
  sub_1C878656C(v47, v1 + v48, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  swift_beginAccess();
  v50 = v60;
  sub_1C87867A0(a1 + v49, v60, &qword_1EC2B64B0, &unk_1C8BF3F40);

  v51 = v57;
  swift_beginAccess();
  sub_1C878656C(v50, v1 + v51, &qword_1EC2B64B0, &unk_1C8BF3F40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C887A6B8()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings, &qword_1EC2B64A8, &unk_1C8BE7670);
  v1 = *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v0;
}

uint64_t sub_1C887A7A0()
{
  v0 = sub_1C887A6B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_2();
    *(v1 + v2) = sub_1C887A054(v9);
  }

  return sub_1C887A894();
}

uint64_t sub_1C887A894()
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
        sub_1C887A9C8();
        break;
      case 2:
        sub_1C887AAA4();
        break;
      case 3:
        sub_1C887AB80();
        break;
      case 4:
        sub_1C887AC5C();
        break;
      case 5:
        sub_1C887AD38();
        break;
      case 6:
        sub_1C887AE14();
        break;
      case 7:
        sub_1C887AEF0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C887A9C8()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8776668(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C887AAA4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  sub_1C8776668(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C887AB80()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  sub_1C8776668(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C887AC5C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8776668(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C887AD38()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8776668(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C887AE14()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  sub_1C8776668(&qword_1EDACB6D0, type metadata accessor for Siri_Nlu_External_LegacyNLContext);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C887AEF0()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C8776668(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0);
  result = sub_1C887B038(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C887B038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v70 = a3;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v56 = v55 - v7;
  v57 = type metadata accessor for Siri_Nlu_External_RequestID();
  v8 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v55[1] = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = v55 - v12;
  v59 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  v13 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v55[2] = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = v55 - v17;
  v60 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v18 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v63 = v55 - v22;
  v66 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v23 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v61 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v55 - v27;
  v65 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  v29 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v62 = v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = v55 - v33;
  v35 = type metadata accessor for Siri_Nlu_External_UUID();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v37 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v37, v34, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_1C8778ED8(v34, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v38 = v68;
  }

  else
  {
    sub_1C887D3FC();
    sub_1C8776668(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    v39 = v68;
    sub_1C8BD4E2C();
    v38 = v39;
    result = sub_1C887D4A4();
    if (v39)
    {
      return result;
    }
  }

  v41 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  sub_1C87867A0(a1 + v41, v28, &qword_1EC2B6538, &qword_1C8C12C80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v65);
  v43 = v67;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v28, &qword_1EC2B6538, &qword_1C8C12C80);
    v44 = v66;
  }

  else
  {
    sub_1C887D3FC();
    sub_1C8776668(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    sub_1C8BD4E2C();
    result = sub_1C887D4A4();
    v44 = v66;
    if (v38)
    {
      return result;
    }
  }

  v45 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  swift_beginAccess();
  v46 = a1 + v45;
  v47 = v63;
  sub_1C87867A0(v46, v63, &qword_1EC2B64A8, &unk_1C8BE7670);
  v48 = __swift_getEnumTagSinglePayload(v47, 1, v44);
  v49 = v64;
  if (v48 == 1)
  {
    sub_1C8778ED8(v47, &qword_1EC2B64A8, &unk_1C8BE7670);
  }

  else
  {
    sub_1C887D3FC();
    sub_1C8776668(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8BD4E2C();
    result = sub_1C887D4A4();
    if (v38)
    {
      return result;
    }

    v43 = v67;
  }

  v50 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  if (!*(*(a1 + v50) + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8776668(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), , sub_1C8BD4E0C(), result = , !v38))
  {
    v51 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
    swift_beginAccess();
    sub_1C87867A0(a1 + v51, v49, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v49, 1, v60) == 1)
    {
      sub_1C8778ED8(v49, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C887D3FC();
      sub_1C8776668(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
      sub_1C8BD4E2C();
      result = sub_1C887D4A4();
      if (v38)
      {
        return result;
      }
    }

    v52 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
    swift_beginAccess();
    sub_1C87867A0(a1 + v52, v43, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    if (__swift_getEnumTagSinglePayload(v43, 1, v59) == 1)
    {
      sub_1C8778ED8(v43, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    }

    else
    {
      sub_1C887D3FC();
      sub_1C8776668(&qword_1EDACB6D0, type metadata accessor for Siri_Nlu_External_LegacyNLContext);
      sub_1C8BD4E2C();
      result = sub_1C887D4A4();
      if (v38)
      {
        return result;
      }
    }

    v53 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
    swift_beginAccess();
    v54 = v56;
    sub_1C87867A0(a1 + v53, v56, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v54, 1, v57) == 1)
    {
      return sub_1C8778ED8(v54, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }

    else
    {
      sub_1C887D3FC();
      sub_1C8776668(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
      sub_1C8BD4E2C();
      return sub_1C887D4A4();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Psc_PSCServiceRequest.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {
    v6 = *(v1 + v3);

    v7 = sub_1C887BC98(v4, v5);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776668(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

BOOL sub_1C887BC98(uint64_t a1, uint64_t a2)
{
  v173 = a2;
  v145 = type metadata accessor for Siri_Nlu_External_RequestID();
  v3 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v141 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  v5 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v141 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v142 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v152 = &v141 - v11;
  v150 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  v12 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v143 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC0, &unk_1C8BE6C70);
  v14 = *(*(v149 - 8) + 64);
  MEMORY[0x1EEE9AC00](v149);
  v151 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v147 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v141 - v20;
  v155 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v21 = *(*(v155 - 8) + 64);
  MEMORY[0x1EEE9AC00](v155);
  v148 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  v23 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v156 = &v141 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v153 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v159 = &v141 - v29;
  v163 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v30 = *(*(v163 - 8) + 64);
  MEMORY[0x1EEE9AC00](v163);
  v158 = (&v141 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  v32 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v141 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v160 = (&v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v166 = &v141 - v38;
  v170 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  v39 = *(*(v170 - 8) + 64);
  MEMORY[0x1EEE9AC00](v170);
  v161 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6570, &unk_1C8C13000);
  v41 = *(*(v168 - 8) + 64);
  MEMORY[0x1EEE9AC00](v168);
  v171 = &v141 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v165 = &v141 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v169 = &v141 - v47;
  v48 = type metadata accessor for Siri_Nlu_External_UUID();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v167 = &v141 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v52 = v51 - 8;
  v53 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v141 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v172 = &v141 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v141 - v60;
  v62 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v62, v61, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v63 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  v64 = v173;
  swift_beginAccess();
  v65 = *(v52 + 56);
  sub_1C87867A0(v61, v55, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87867A0(v64 + v63, &v55[v65], &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v55, 1, v48) == 1)
  {

    sub_1C8778ED8(v61, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v55[v65], 1, v48);
    v67 = a1;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v55, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_8;
    }

LABEL_6:
    v69 = &qword_1EC2B5EE8;
    v70 = &unk_1C8BE6F90;
    v71 = v55;
LABEL_21:
    sub_1C8778ED8(v71, v69, v70);
    goto LABEL_22;
  }

  v68 = v172;
  sub_1C87867A0(v55, v172, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(&v55[v65], 1, v48) == 1)
  {

    sub_1C8778ED8(v61, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C887D4A4();
    goto LABEL_6;
  }

  v72 = v167;
  sub_1C887D3FC();
  v73 = a1;

  v74 = static Siri_Nlu_External_UUID.== infix(_:_:)(v68, v72);
  sub_1C887D4A4();
  sub_1C8778ED8(v61, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C887D4A4();
  v67 = v73;
  sub_1C8778ED8(v55, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v74 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v75 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v76 = v169;
  sub_1C87867A0(v67 + v75, v169, &qword_1EC2B6538, &qword_1C8C12C80);
  v77 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v78 = *(v168 + 48);
  v79 = v171;
  sub_1C87867A0(v76, v171, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C87867A0(v64 + v77, v79 + v78, &qword_1EC2B6538, &qword_1C8C12C80);
  v80 = v170;
  if (__swift_getEnumTagSinglePayload(v79, 1, v170) == 1)
  {
    sub_1C8778ED8(v76, &qword_1EC2B6538, &qword_1C8C12C80);
    if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v80) == 1)
    {
      sub_1C8778ED8(v79, &qword_1EC2B6538, &qword_1C8C12C80);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v81 = v165;
  sub_1C87867A0(v79, v165, &qword_1EC2B6538, &qword_1C8C12C80);
  if (__swift_getEnumTagSinglePayload(v79 + v78, 1, v80) == 1)
  {
    sub_1C8778ED8(v76, &qword_1EC2B6538, &qword_1C8C12C80);
    sub_1C887D4A4();
LABEL_13:
    v69 = &qword_1EC2B6570;
    v70 = &unk_1C8C13000;
    v71 = v79;
    goto LABEL_21;
  }

  v82 = v161;
  sub_1C887D3FC();
  static Siri_Nlu_Internal_Nlv4Parser_Tokenisation.== infix(_:_:)(v81, v82, v83, v84, v85, v86, v87, v88, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
  v90 = v89;
  sub_1C887D4A4();
  sub_1C8778ED8(v76, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C887D4A4();
  sub_1C8778ED8(v79, &qword_1EC2B6538, &qword_1C8C12C80);
  if ((v90 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v91 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  swift_beginAccess();
  v92 = v166;
  sub_1C87867A0(v67 + v91, v166, &qword_1EC2B64A8, &unk_1C8BE7670);
  v93 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  swift_beginAccess();
  v94 = *(v162 + 48);
  v95 = v164;
  sub_1C87867A0(v92, v164, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87867A0(v64 + v93, v95 + v94, &qword_1EC2B64A8, &unk_1C8BE7670);
  v96 = v163;
  if (__swift_getEnumTagSinglePayload(v95, 1, v163) == 1)
  {
    sub_1C8778ED8(v92, &qword_1EC2B64A8, &unk_1C8BE7670);
    if (__swift_getEnumTagSinglePayload(v95 + v94, 1, v96) == 1)
    {
      sub_1C8778ED8(v95, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v97 = v160;
  sub_1C87867A0(v95, v160, &qword_1EC2B64A8, &unk_1C8BE7670);
  if (__swift_getEnumTagSinglePayload(v95 + v94, 1, v96) == 1)
  {
    sub_1C8778ED8(v166, &qword_1EC2B64A8, &unk_1C8BE7670);
    sub_1C887D4A4();
LABEL_20:
    v69 = &qword_1EC2B64E0;
    v70 = &unk_1C8BE7880;
    v71 = v95;
    goto LABEL_21;
  }

  v99 = v158;
  sub_1C887D3FC();
  v100 = v95;
  v101 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v97, v99);
  sub_1C887D4A4();
  sub_1C8778ED8(v166, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C887D4A4();
  sub_1C8778ED8(v100, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v101 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v102 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  v103 = *(v67 + v102);
  v104 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  v105 = *(v64 + v104);

  sub_1C87D27C0();
  v107 = v106;

  if ((v107 & 1) == 0)
  {
    goto LABEL_22;
  }

  v108 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  swift_beginAccess();
  v109 = v159;
  sub_1C87867A0(v67 + v108, v159, &qword_1EC2B6038, &unk_1C8BE8850);
  v110 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  swift_beginAccess();
  v111 = *(v154 + 48);
  v112 = v156;
  sub_1C87867A0(v109, v156, &qword_1EC2B6038, &unk_1C8BE8850);
  v113 = v64 + v110;
  v114 = v112;
  sub_1C87867A0(v113, v112 + v111, &qword_1EC2B6038, &unk_1C8BE8850);
  v115 = v155;
  if (__swift_getEnumTagSinglePayload(v112, 1, v155) == 1)
  {
    sub_1C8778ED8(v109, &qword_1EC2B6038, &unk_1C8BE8850);
    v116 = __swift_getEnumTagSinglePayload(v112 + v111, 1, v115);
    v117 = v157;
    if (v116 == 1)
    {
      sub_1C8778ED8(v112, &qword_1EC2B6038, &unk_1C8BE8850);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v118 = v153;
  sub_1C87867A0(v112, v153, &qword_1EC2B6038, &unk_1C8BE8850);
  v119 = __swift_getEnumTagSinglePayload(v112 + v111, 1, v115);
  v117 = v157;
  if (v119 == 1)
  {
    sub_1C8778ED8(v159, &qword_1EC2B6038, &unk_1C8BE8850);
    sub_1C887D4A4();
LABEL_32:
    v69 = &qword_1EC2B6040;
    v70 = &unk_1C8BE6CF0;
    v71 = v112;
    goto LABEL_21;
  }

  v120 = v148;
  sub_1C887D3FC();
  if (*(v118 + *(v115 + 20)) != *(v120 + *(v115 + 20)))
  {

    sub_1C88AD618();
    v122 = v121;

    if ((v122 & 1) == 0)
    {
      sub_1C887D4A4();
      sub_1C8778ED8(v159, &qword_1EC2B6038, &unk_1C8BE8850);
      sub_1C887D4A4();
      v71 = v114;
      v69 = &qword_1EC2B6038;
      v70 = &unk_1C8BE8850;
      goto LABEL_21;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776668(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  v123 = sub_1C8BD517C();
  sub_1C887D4A4();
  sub_1C8778ED8(v159, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C887D4A4();
  sub_1C8778ED8(v114, &qword_1EC2B6038, &unk_1C8BE8850);
  if ((v123 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_36:
  v124 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  swift_beginAccess();
  sub_1C87867A0(v67 + v124, v117, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  v125 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  swift_beginAccess();
  v126 = *(v149 + 48);
  v127 = v151;
  sub_1C87867A0(v117, v151, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  sub_1C87867A0(v64 + v125, v127 + v126, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  v128 = v150;
  if (__swift_getEnumTagSinglePayload(v127, 1, v150) != 1)
  {
    sub_1C87867A0(v127, v147, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    v131 = __swift_getEnumTagSinglePayload(v127 + v126, 1, v128);
    v130 = v152;
    if (v131 == 1)
    {
      sub_1C8778ED8(v117, &qword_1EC2B5FB8, &unk_1C8BF3D70);
      sub_1C887D4A4();
      goto LABEL_41;
    }

    sub_1C887D3FC();
    v132 = static Siri_Nlu_External_LegacyNLContext.== infix(_:_:)();
    sub_1C887D4A4();
    sub_1C8778ED8(v117, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    sub_1C887D4A4();
    sub_1C8778ED8(v127, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    if (v132)
    {
      goto LABEL_43;
    }

LABEL_22:

    return 0;
  }

  sub_1C8778ED8(v117, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  v129 = __swift_getEnumTagSinglePayload(v127 + v126, 1, v128);
  v130 = v152;
  if (v129 != 1)
  {
LABEL_41:
    v69 = &qword_1EC2B5FC0;
    v70 = &unk_1C8BE6C70;
    v71 = v127;
    goto LABEL_21;
  }

  sub_1C8778ED8(v127, &qword_1EC2B5FB8, &unk_1C8BF3D70);
LABEL_43:
  v133 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  swift_beginAccess();
  sub_1C87867A0(v67 + v133, v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v134 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  swift_beginAccess();
  v135 = *(v144 + 48);
  v136 = v146;
  sub_1C87867A0(v130, v146, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C87867A0(v64 + v134, v136 + v135, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v137 = v145;
  if (__swift_getEnumTagSinglePayload(v136, 1, v145) == 1)
  {

    sub_1C8778ED8(v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v136 + v135, 1, v137) == 1)
    {
      sub_1C8778ED8(v136, &qword_1EC2B64B0, &unk_1C8BF3F40);
      return 1;
    }

    goto LABEL_49;
  }

  v138 = v142;
  sub_1C87867A0(v136, v142, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v136 + v135, 1, v137) == 1)
  {

    sub_1C8778ED8(v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C887D4A4();
LABEL_49:
    sub_1C8778ED8(v136, &qword_1EC2B64D8, &unk_1C8BEAC20);
    return 0;
  }

  v139 = v141;
  sub_1C887D3FC();
  v140 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v138, v139);

  sub_1C887D4A4();
  sub_1C8778ED8(v130, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C887D4A4();
  sub_1C8778ED8(v136, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return (v140 & 1) != 0;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0);
  sub_1C8776668(&qword_1EC2B8570, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C887D28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776668(&qword_1EC2B85B0, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C887D30C(uint64_t a1)
{
  v2 = sub_1C8776668(&qword_1EC2B8580, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C887D37C()
{
  sub_1C8776668(&qword_1EC2B8580, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C887D3FC()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C887D450()
{
  v1 = OUTLINED_FUNCTION_84();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_218();
  v7(v6);
  return v0;
}

uint64_t sub_1C887D4A4()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C887D640()
{
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C887D6CC()
{
  sub_1C887D938(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
  if (v1 <= 0x3F)
  {
    v12 = *(v0 - 8) + 64;
    sub_1C887D938(319, &qword_1EC2B45C8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    if (v3 <= 0x3F)
    {
      v13 = *(v2 - 8) + 64;
      sub_1C887D938(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      if (v5 <= 0x3F)
      {
        v14 = *(v4 - 8) + 64;
        sub_1C887D938(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput);
        if (v7 <= 0x3F)
        {
          v15 = *(v6 - 8) + 64;
          sub_1C887D938(319, qword_1EDACB670, type metadata accessor for Siri_Nlu_External_LegacyNLContext);
          if (v9 <= 0x3F)
          {
            v16 = *(v8 - 8) + 64;
            sub_1C887D938(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
            if (v11 <= 0x3F)
            {
              v17 = *(v10 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1C887D938(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.text.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest() + 20));
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

uint64_t type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest()
{
  result = qword_1EC2B85F0;
  if (!qword_1EC2B85F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C887DA44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.text.setter(v1, v2);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.text.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest() + 20);
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

Swift::Void __swiftcall Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.clearText()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest() + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_8_12();
  sub_1C887DCFC(v1 + *(v8 + 24), v2);
  v9 = type metadata accessor for Siri_Nlu_External_RequestID();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    return sub_1C887DD6C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v9[5]);
  v10 = v9[6];
  type metadata accessor for Siri_Nlu_External_UUID();
  v11 = OUTLINED_FUNCTION_27_1();
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

uint64_t sub_1C887DCFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C887DD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_RequestID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C887DDD0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_RequestID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C887E14C(a1, v5);
  return Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.requestID.setter(v5);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.requestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest() + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C887DD6C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_RequestID();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.requestID.modify(void *a1))(uint64_t **a1, char a2)
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
  v11 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest() + 24);
  *(v3 + 10) = v11;
  sub_1C887DCFC(v1 + v11, v6);
  OUTLINED_FUNCTION_72(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[5]);
    v13 = v7[6];
    v14 = type metadata accessor for Siri_Nlu_External_UUID();
    __swift_storeEnumTagSinglePayload(&v10[v13], 1, 1, v14);
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

void sub_1C887E06C(uint64_t **a1, char a2)
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
    sub_1C887E14C((*a1)[4], v4);
    sub_1C8778ED8(v8 + v3, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C887DD6C(v4, v8 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C887E1B0(v5);
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C887DD6C(v5, v8 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1C887E14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_RequestID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C887E1B0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_RequestID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_12();
  sub_1C887DCFC(v0 + *(v6 + 24), v1);
  v7 = type metadata accessor for Siri_Nlu_External_RequestID();
  v8 = __swift_getEnumTagSinglePayload(v1, 1, v7) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v8;
}

Swift::Void __swiftcall Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.clearRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest() + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v2 = type metadata accessor for Siri_Nlu_External_RequestID();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.unknownFields.setter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_5_0();

  return v4(v3);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v0 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest();
  OUTLINED_FUNCTION_18_2(*(v0 + 20));
  v2 = *(v1 + 24);
  type metadata accessor for Siri_Nlu_External_RequestID();
  v3 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1C887E470()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B85B8);
  __swift_project_value_buffer(v0, qword_1EC2B85B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5128 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B85B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.decodeMessage<A>(decoder:)()
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
      sub_1C887E7D0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_0();
      sub_1C887E76C();
    }
  }

  return result;
}

uint64_t sub_1C887E7D0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest() + 24);
  type metadata accessor for Siri_Nlu_External_RequestID();
  sub_1C887F194(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.traverse<A>(visitor:)()
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
  v14 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest();
  v15 = (v0 + *(v14 + 20));
  if (!v15[1] || (v16 = *v15, result = sub_1C8BD4DDC(), !v1))
  {
    sub_1C887DCFC(v0 + *(v14 + 24), v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1C8778ED8(v7, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }

    else
    {
      sub_1C887DD6C(v7, v13);
      sub_1C887F194(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID);
      sub_1C8BD4E2C();
      result = sub_1C887E1B0(v13);
      if (v1)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_RequestID();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest();
  v23 = *(v22 + 20);
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (v25)
  {
    if (!v27)
    {
      goto LABEL_19;
    }

    v28 = *v24 == *v26 && v25 == v27;
    if (!v28 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v27)
  {
    goto LABEL_19;
  }

  v29 = *(v22 + 24);
  v30 = *(v16 + 48);
  sub_1C887DCFC(a1 + v29, v21);
  sub_1C887DCFC(a2 + v29, &v21[v30]);
  OUTLINED_FUNCTION_72(v21);
  if (v28)
  {
    OUTLINED_FUNCTION_72(&v21[v30]);
    if (v28)
    {
      sub_1C8778ED8(v21, &qword_1EC2B64B0, &unk_1C8BF3F40);
LABEL_22:
      sub_1C8BD49FC();
      sub_1C887F194(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
      OUTLINED_FUNCTION_5_0();
      v32 = sub_1C8BD517C();
      return v32 & 1;
    }

    goto LABEL_18;
  }

  sub_1C887DCFC(v21, v15);
  OUTLINED_FUNCTION_72(&v21[v30]);
  if (v31)
  {
    sub_1C887E1B0(v15);
LABEL_18:
    sub_1C8778ED8(v21, &qword_1EC2B64D8, &unk_1C8BEAC20);
    goto LABEL_19;
  }

  sub_1C887DD6C(&v21[v30], v9);
  v34 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v15, v9);
  sub_1C887E1B0(v9);
  sub_1C887E1B0(v15);
  sub_1C8778ED8(v21, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (v34)
  {
    goto LABEL_22;
  }

LABEL_19:
  v32 = 0;
  return v32 & 1;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest();
  sub_1C887F194(&qword_1EC2B85D0, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C887EDE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C887F194(&qword_1EC2B8600, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C887EE68(uint64_t a1)
{
  v2 = sub_1C887F194(&qword_1EC2B85E0, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C887EED8()
{
  sub_1C887F194(&qword_1EC2B85E0, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest);

  return sub_1C8BD4CFC();
}

void sub_1C887F0A0()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v1 <= 0x3F)
    {
      sub_1C887F13C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C887F13C()
{
  if (!qword_1EDACDC48[0])
  {
    type metadata accessor for Siri_Nlu_External_RequestID();
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDACDC48);
    }
  }
}

uint64_t sub_1C887F194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.matchingSpans.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse()
{
  result = qword_1EC2B4588;
  if (!qword_1EC2B4588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse() + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse() + 20);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C887F418()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B45B0);
  __swift_project_value_buffer(v0, qword_1EC2B45B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F30;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "matching_spans";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C8BD50FC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Spanmatch_SpanMatchResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B45A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B45B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.decodeMessage<A>(decoder:)()
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
      sub_1C887F694();
    }
  }

  return result;
}

uint64_t sub_1C887F694()
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C887FC68(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C887FC68(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), result = sub_1C8BD4E0C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse() + 20);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1C87D27C0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse() + 20);
  sub_1C8BD49FC();
  sub_1C887FC68(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse();
  sub_1C887FC68(&qword_1EC2B8608, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C887F9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C887FC68(&qword_1EC2B8618, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C887FA30(uint64_t a1)
{
  v2 = sub_1C887FC68(&qword_1EC2B45A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C887FAA0()
{
  sub_1C887FC68(&qword_1EC2B45A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C887FC68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.text.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 20)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest()
{
  result = qword_1EC2B8658;
  if (!qword_1EC2B8658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C887FD4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Tokenizer_TokenizerRequest.text.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Tokenizer_TokenizerRequest.text.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_12_11(v1) + 20);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87E9980;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Tokenizer_TokenizerRequest.clearText()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest() + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.locale.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest();
  if (OUTLINED_FUNCTION_8_0(*(v0 + 24)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C887FF08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Tokenizer_TokenizerRequest.locale.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.locale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Tokenizer_TokenizerRequest.locale.modify())(uint64_t **, char)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_12_11(v1) + 24);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Tokenizer_TokenizerRequest.clearLocale()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_11_9();
  sub_1C87E8DEC(v1 + *(v8 + 28), v2);
  v9 = type metadata accessor for Siri_Nlu_External_UUID();
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v10, v11, v9);
  if (!v12)
  {
    return sub_1C87E8E5C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_313(a1 + v9[5]);
  OUTLINED_FUNCTION_313(a1 + v9[6]);
  *(a1 + v9[7]) = 6;
  v13 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_76(v13, v14, v9);
  if (!v12)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C8880170(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C87E9210(a1, v5);
  return Siri_Nlu_Internal_Tokenizer_TokenizerRequest.asrID.setter(v5);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.asrID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest() + 28);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_UUID();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_Tokenizer_TokenizerRequest.asrID.modify(void *a1))(uint64_t **a1, char a2)
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest() + 28);
  *(v3 + 10) = v11;
  sub_1C87E8DEC(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v7);
    if (!v14)
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

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.hasAsrID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_9();
  sub_1C87E8DEC(v0 + *(v6 + 28), v1);
  type metadata accessor for Siri_Nlu_External_UUID();
  v7 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v11;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Tokenizer_TokenizerRequest.clearAsrID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest() + 28);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest();
  v3 = (a1 + v2[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = v2[7];
  v6 = type metadata accessor for Siri_Nlu_External_UUID();

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t sub_1C8880664()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8620);
  __swift_project_value_buffer(v0, qword_1EC2B8620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "asrId";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Tokenizer_TokenizerRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5130 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B8620);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.decodeMessage<A>(decoder:)()
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
        sub_1C8880A68();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8880A04();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C88809A0();
        break;
    }
  }

  return result;
}

uint64_t sub_1C8880A68()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest() + 28);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C87A4B28(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UUID();
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest();
  v15 = (v0 + v14[5]);
  if (!v15[1] || (v16 = *v15, result = sub_1C8BD4DDC(), !v1))
  {
    v18 = (v0 + v14[6]);
    if (!v18[1] || (v19 = *v18, result = sub_1C8BD4DDC(), !v1))
    {
      sub_1C87E8DEC(v0 + v14[7], v7);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        sub_1C8778ED8(v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      }

      else
      {
        sub_1C87E8E5C(v7, v13);
        sub_1C87A4B28(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
        sub_1C8BD4E2C();
        result = sub_1C87E9274(v13);
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

uint64_t static Siri_Nlu_Internal_Tokenizer_TokenizerRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UUID();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v22 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest();
  v23 = v22[5];
  OUTLINED_FUNCTION_1();
  if (v24)
  {
    if (!v25)
    {
      goto LABEL_28;
    }

    v28 = *v26 == *v27 && v24 == v25;
    if (!v28 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v25)
  {
    goto LABEL_28;
  }

  v29 = v22[6];
  OUTLINED_FUNCTION_1();
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_28;
    }

    v34 = *v32 == *v33 && v30 == v31;
    if (!v34 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v31)
  {
    goto LABEL_28;
  }

  v35 = v22[7];
  v36 = *(v16 + 48);
  sub_1C87E8DEC(a1 + v35, v21);
  sub_1C87E8DEC(a2 + v35, &v21[v36]);
  OUTLINED_FUNCTION_76(v21, 1, v4);
  if (v28)
  {
    OUTLINED_FUNCTION_76(&v21[v36], 1, v4);
    if (v28)
    {
      sub_1C8778ED8(v21, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_31:
      sub_1C8BD49FC();
      sub_1C87A4B28(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
      v38 = sub_1C8BD517C();
      return v38 & 1;
    }

    goto LABEL_27;
  }

  sub_1C87E8DEC(v21, v15);
  OUTLINED_FUNCTION_76(&v21[v36], 1, v4);
  if (v37)
  {
    sub_1C87E9274(v15);
LABEL_27:
    sub_1C8778ED8(v21, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_28;
  }

  sub_1C87E8E5C(&v21[v36], v9);
  v40 = static Siri_Nlu_External_UUID.== infix(_:_:)(v15, v9);
  sub_1C87E9274(v9);
  sub_1C87E9274(v15);
  sub_1C8778ED8(v21, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (v40)
  {
    goto LABEL_31;
  }

LABEL_28:
  v38 = 0;
  return v38 & 1;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest();
  sub_1C87A4B28(&qword_1EC2B8638, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88810F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87A4B28(&qword_1EC2B8668, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8881178(uint64_t a1)
{
  v2 = sub_1C87A4B28(&qword_1EC2B8648, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88811E8()
{
  sub_1C87A4B28(&qword_1EC2B8648, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest);

  return sub_1C8BD4CFC();
}

void sub_1C88813B0()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v1 <= 0x3F)
    {
      sub_1C87EB458();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60_1();
  v9 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v10 = OUTLINED_FUNCTION_13(*(v9 + 24));
  OUTLINED_FUNCTION_73_2(v10, v11);
  v12 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_1_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v12[5]);
    OUTLINED_FUNCTION_15_2(v12[6]);
    *(a1 + v12[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v13)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_16();
    v14 = OUTLINED_FUNCTION_121();
    return sub_1C8884444(v14, v15, v16);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest()
{
  result = qword_1EC2B86A8;
  if (!qword_1EC2B86A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.requestID.setter()
{
  OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_44_5(v2, v3, v4);
  type metadata accessor for Siri_Nlu_External_UUID();
  v5 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.requestID.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_107(v5);
  v6 = type metadata accessor for Siri_Nlu_External_UUID();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = *(OUTLINED_FUNCTION_29_4(v11) + 24);
  *(v0 + 40) = v12;
  v13 = OUTLINED_FUNCTION_13(v12);
  sub_1C8786744(v13, v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_73(v5);
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v6[5]);
    OUTLINED_FUNCTION_11_0(v6[6]);
    *(v8 + v6[7]) = 6;
    OUTLINED_FUNCTION_73(v5);
    if (!v15)
    {
      sub_1C8778ED8(v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_16();
    sub_1C8884444(v5, v8, v16);
  }

  return sub_1C8881748;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.hasRequestID.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_60_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 24));
  OUTLINED_FUNCTION_94_0(v5, v6);
  v7 = type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserRequest.clearRequestID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60_1();
  v9 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v10 = OUTLINED_FUNCTION_13(*(v9 + 28));
  OUTLINED_FUNCTION_73_2(v10, v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_1_0();
  if (v13)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v14 = a1 + v12[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = (a1 + v12[6]);
    *v15 = 0;
    v15[1] = 0;
    v16 = (a1 + v12[7]);
    *v16 = 0;
    v16[1] = 0;
    result = OUTLINED_FUNCTION_1_0();
    if (!v13)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v17 = OUTLINED_FUNCTION_121();
    return sub_1C8884444(v17, v18, v19);
  }

  return result;
}

uint64_t sub_1C888194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - v14;
  sub_1C88844A0(a1, &v17 - v14, a6);
  return a7(v15);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.tokenChain.setter()
{
  OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_44_5(v2, v3, v4);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v5 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.tokenChain.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_107(v5);
  v6 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = *(OUTLINED_FUNCTION_29_4(v11) + 28);
  *(v0 + 40) = v12;
  v13 = OUTLINED_FUNCTION_13(v12);
  sub_1C8786744(v13, v14, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_73(v5);
  if (v15)
  {
    *v8 = MEMORY[0x1E69E7CC0];
    v16 = v8 + v6[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = (v8 + v6[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v8 + v6[7]);
    *v18 = 0;
    v18[1] = 0;
    OUTLINED_FUNCTION_73(v5);
    if (!v15)
    {
      sub_1C8778ED8(v5, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    sub_1C8884444(v5, v8, v19);
  }

  return sub_1C8881BAC;
}

void sub_1C8881BD4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    sub_1C88844A0((*a1)[4], v10, a5);
    sub_1C8778ED8(v14 + v9, a3, a4);
    sub_1C8884444(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_26_1();
    sub_1C88844FC();
  }

  else
  {
    sub_1C8778ED8(v14 + v9, a3, a4);
    sub_1C8884444(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_26_1();
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.hasTokenChain.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_60_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 28));
  OUTLINED_FUNCTION_94_0(v5, v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserRequest.clearTokenChain()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.embeddings.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60_1();
  v9 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v10 = OUTLINED_FUNCTION_13(*(v9 + 32));
  OUTLINED_FUNCTION_73_2(v10, v11);
  v12 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_1_0();
  if (v13)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v14 = a1 + v12[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v12[6]);
    OUTLINED_FUNCTION_15_2(v12[7]);
    OUTLINED_FUNCTION_15_2(v12[8]);
    v15 = (a1 + v12[9]);
    *v15 = 0;
    v15[1] = 0;
    result = OUTLINED_FUNCTION_1_0();
    if (!v13)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    v16 = OUTLINED_FUNCTION_121();
    return sub_1C8884444(v16, v17, v18);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.embeddings.setter()
{
  OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_44_5(v2, v3, v4);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v5 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.embeddings.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_107(v5);
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_29_4(v11);
  OUTLINED_FUNCTION_32_0(*(v12 + 32));
  v13 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v13, v14, v6);
  if (v15)
  {
    *v8 = MEMORY[0x1E69E7CC0];
    v16 = v8 + v6[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v6[6]);
    OUTLINED_FUNCTION_11_0(v6[7]);
    OUTLINED_FUNCTION_11_0(v6[8]);
    v17 = (v8 + v6[9]);
    *v17 = 0;
    v17[1] = 0;
    v18 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_76(v18, v19, v6);
    if (!v15)
    {
      sub_1C8778ED8(v5, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    sub_1C8884444(v5, v8, v20);
  }

  return sub_1C8882080;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.hasEmbeddings.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_60_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 32));
  OUTLINED_FUNCTION_94_0(v5, v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserRequest.clearEmbeddings()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B64A8, &unk_1C8BE7670);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.matchingSpans.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60_1();
  v9 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v10 = OUTLINED_FUNCTION_13(*(v9 + 36));
  OUTLINED_FUNCTION_73_2(v10, v11);
  v12 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_1_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v12 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *(a1 + v14) = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v12);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    v16 = OUTLINED_FUNCTION_121();
    return sub_1C8884444(v16, v17, v18);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.turnInput.setter()
{
  OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  sub_1C8778ED8(v0 + *(v1 + 36), &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_44_5(v2, v3, v4);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v5 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.turnInput.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_107(v5);
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_29_4(v12);
  OUTLINED_FUNCTION_32_0(*(v13 + 36));
  v14 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = *(v7 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25();
    }

    *(v9 + v17) = qword_1EDACCB68;
    v18 = OUTLINED_FUNCTION_109();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v5, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    sub_1C8884444(v5, v9, v21);
  }

  return sub_1C88824D0;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.hasTurnInput.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_60_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v5 = OUTLINED_FUNCTION_13(*(v4 + 36));
  OUTLINED_FUNCTION_94_0(v5, v6);
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_10(v7);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserRequest.clearTurnInput()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  sub_1C8778ED8(v0 + *(v1 + 36), &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.maxNumParses.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  OUTLINED_FUNCTION_0(*(v0 + 40));
  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.maxNumParses.setter()
{
  OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v3 = v1 + *(result + 40);
  *v3 = v0;
  *(v3 + 8) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.maxNumParses.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest() + 40);
  *(a1 + 16) = v3;
  OUTLINED_FUNCTION_0(v3);
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_1C8820288;
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserRequest.clearMaxNumParses()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest() + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest() + 20);
  v4 = sub_1C8BD49FC();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest() + 20);
  v3 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.unknownFields.modify())()
{
  OUTLINED_FUNCTION_241();
  v0 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest() + 20);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v3 = a1 + v2[5];
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = v2[6];
  type metadata accessor for Siri_Nlu_External_UUID();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[7];
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v2[8];
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = v2[9];
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  v25 = a1 + v2[10];
  *v25 = 0;
  v25[8] = 1;
  return result;
}

uint64_t sub_1C8882904()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8670);
  __swift_project_value_buffer(v0, qword_1EC2B8670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
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
  *v12 = "embeddings";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "matching_spans";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "turn_input";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "max_num_parses";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_UaapParser_UaaPParserRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5138 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B8670);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.decodeMessage<A>(decoder:)()
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
        sub_1C8882D44();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8882DF8();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8882EAC();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8882F60();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8883000();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C88830B4();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8882D44()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest() + 24);
  type metadata accessor for Siri_Nlu_External_UUID();
  sub_1C8884938(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8882DF8()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest() + 28);
  type metadata accessor for Siri_Nlu_Internal_TokenChain();
  sub_1C8884938(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8882EAC()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest() + 32);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  sub_1C8884938(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8882F60()
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8884938(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8883000()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest() + 36);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8884938(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  v73 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81();
  v68 = v9;
  v10 = OUTLINED_FUNCTION_86();
  v64 = type metadata accessor for Siri_Nlu_External_TurnInput(v10);
  v11 = OUTLINED_FUNCTION_21(v64);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v63 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_81();
  v66 = v20;
  OUTLINED_FUNCTION_86();
  v67 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v21 = OUTLINED_FUNCTION_21(v67);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v65 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v62 - v30;
  v69 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v32 = OUTLINED_FUNCTION_21(v69);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_33();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v62 - v42;
  v44 = type metadata accessor for Siri_Nlu_External_UUID();
  v45 = OUTLINED_FUNCTION_21(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_33();
  v50 = v49 - v48;
  v74 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  sub_1C8786744(v3 + v74[6], v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_30_5();
  if (__swift_getEnumTagSinglePayload(v51, v52, v53) == 1)
  {
    sub_1C8778ED8(v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v54 = v70;
  }

  else
  {
    sub_1C8884444(v43, v50, type metadata accessor for Siri_Nlu_External_UUID);
    sub_1C8884938(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID);
    v4 = v70;
    sub_1C8BD4E2C();
    v54 = v4;
    result = sub_1C88844FC();
    if (v4)
    {
      return result;
    }
  }

  sub_1C8786744(v3 + v74[7], v31, &qword_1EC2B6048, &unk_1C8BE6F80);
  if (__swift_getEnumTagSinglePayload(v31, 1, v69) == 1)
  {
    sub_1C8778ED8(v31, &qword_1EC2B6048, &unk_1C8BE6F80);
  }

  else
  {
    sub_1C8884444(v31, v37, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    sub_1C8884938(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    v4 = v54;
    sub_1C8BD4E2C();
    result = sub_1C88844FC();
    if (v54)
    {
      return result;
    }
  }

  v56 = v66;
  sub_1C8786744(v3 + v74[8], v66, &qword_1EC2B64A8, &unk_1C8BE7670);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v67);
  v58 = v68;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v56, &qword_1EC2B64A8, &unk_1C8BE7670);
  }

  else
  {
    sub_1C8884444(v56, v65, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8884938(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    OUTLINED_FUNCTION_23_8();
    sub_1C8BD4E2C();
    v54 = v4;
    result = sub_1C88844FC();
    if (v4)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8884938(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan), OUTLINED_FUNCTION_23_8(), result = sub_1C8BD4E0C(), (v54 = v4) == 0))
  {
    sub_1C8786744(v3 + v74[9], v58, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v58, 1, v64) == 1)
    {
      sub_1C8778ED8(v58, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C8884444(v58, v63, type metadata accessor for Siri_Nlu_External_TurnInput);
      sub_1C8884938(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput);
      OUTLINED_FUNCTION_23_8();
      sub_1C8BD4E2C();
      v54 = v4;
      result = sub_1C88844FC();
      if (v4)
      {
        return result;
      }
    }

    v59 = (v3 + v74[10]);
    if ((v59[1] & 1) != 0 || (v60 = *v59, result = sub_1C8BD4DFC(), !v54))
    {
      v61 = v3 + v74[5];
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_UaapParser_UaaPParserRequest.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v147 = a1;
  v148 = a2;
  v136 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v3 = OUTLINED_FUNCTION_21(v136);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v133 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_81();
  v134 = v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21(v135);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_81();
  v137 = v16;
  OUTLINED_FUNCTION_86();
  v142 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor();
  v17 = OUTLINED_FUNCTION_21(v142);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33();
  v138 = (v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_81();
  v139 = v26;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  OUTLINED_FUNCTION_21(v141);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_81();
  v143 = v30;
  OUTLINED_FUNCTION_86();
  v145 = type metadata accessor for Siri_Nlu_Internal_TokenChain();
  v31 = OUTLINED_FUNCTION_21(v145);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33();
  v140 = (v35 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_81();
  v144 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v133 - v45;
  v47 = type metadata accessor for Siri_Nlu_External_UUID();
  v48 = OUTLINED_FUNCTION_21(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_33();
  v53 = v52 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_60_1();
  v58 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8);
  v59 = *(*v58 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v133 - v61;
  v146 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  v63 = *(v146 + 24);
  v64 = v58[14];
  sub_1C8786744(v147 + v63, v62, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8786744(v148 + v63, &v62[v64], &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_73(v62);
  if (v65)
  {
    OUTLINED_FUNCTION_73(&v62[v64]);
    if (v65)
    {
      sub_1C8778ED8(v62, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v66 = &qword_1EC2B5EE8;
    v67 = &unk_1C8BE6F90;
    v68 = v62;
LABEL_30:
    sub_1C8778ED8(v68, v66, v67);
    goto LABEL_31;
  }

  sub_1C8786744(v62, v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_73(&v62[v64]);
  if (v65)
  {
    sub_1C88844FC();
    goto LABEL_9;
  }

  sub_1C8884444(&v62[v64], v53, type metadata accessor for Siri_Nlu_External_UUID);
  v69 = static Siri_Nlu_External_UUID.== infix(_:_:)(v2, v53);
  sub_1C88844FC();
  sub_1C88844FC();
  sub_1C8778ED8(v62, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v69 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v71 = v146;
  v70 = v147;
  v72 = *(v146 + 28);
  v73 = *(v41 + 48);
  sub_1C8786744(v147 + v72, v46, &qword_1EC2B6048, &unk_1C8BE6F80);
  v74 = v148;
  sub_1C8786744(v148 + v72, &v46[v73], &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_76(v46, 1, v145);
  if (v65)
  {
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_76(v75, v76, v77);
    if (v65)
    {
      sub_1C8778ED8(v46, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v78 = v144;
  sub_1C8786744(v46, v144, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_76(v79, v80, v81);
  if (v82)
  {
    sub_1C88844FC();
LABEL_19:
    v66 = &qword_1EC2B6050;
    v67 = &qword_1C8BE6D00;
    v68 = v46;
    goto LABEL_30;
  }

  v83 = v140;
  sub_1C8884444(&v46[v73], v140, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  v84 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v78, v83);
  sub_1C88844FC();
  sub_1C88844FC();
  sub_1C8778ED8(v46, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v84 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v85 = v71[8];
  v86 = *(v141 + 48);
  v87 = v143;
  OUTLINED_FUNCTION_27(v70 + v85, v143);
  OUTLINED_FUNCTION_27(v74 + v85, v87 + v86);
  v88 = OUTLINED_FUNCTION_109();
  v89 = v142;
  OUTLINED_FUNCTION_76(v88, v90, v142);
  if (v65)
  {
    OUTLINED_FUNCTION_76(v87 + v86, 1, v89);
    if (v65)
    {
      sub_1C8778ED8(v87, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v91 = v139;
  sub_1C8786744(v87, v139, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_76(v87 + v86, 1, v89);
  if (v92)
  {
    sub_1C88844FC();
LABEL_29:
    v66 = &qword_1EC2B64E0;
    v67 = &unk_1C8BE7880;
    v68 = v87;
    goto LABEL_30;
  }

  v95 = v87 + v86;
  v96 = v138;
  sub_1C8884444(v95, v138, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  v97 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v91, v96);
  sub_1C88844FC();
  OUTLINED_FUNCTION_121();
  sub_1C88844FC();
  sub_1C8778ED8(v87, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v97 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  v98 = *v70;
  v99 = *v74;
  sub_1C87D27C0();
  if ((v100 & 1) == 0)
  {
    goto LABEL_31;
  }

  v101 = v71[9];
  v102 = *(v135 + 48);
  v103 = v137;
  OUTLINED_FUNCTION_27(v70 + v101, v137);
  v104 = v74 + v101;
  v105 = v103;
  OUTLINED_FUNCTION_27(v104, v103 + v102);
  v106 = OUTLINED_FUNCTION_109();
  v107 = v136;
  OUTLINED_FUNCTION_76(v106, v108, v136);
  if (!v65)
  {
    v112 = v134;
    sub_1C8786744(v103, v134, &qword_1EC2B6038, &unk_1C8BE8850);
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_76(v113, v114, v115);
    if (!v116)
    {
      OUTLINED_FUNCTION_0_11();
      v117 = v103 + v102;
      v118 = v133;
      sub_1C8884444(v117, v133, v119);
      if (*(v112 + *(v107 + 20)) == *(v118 + *(v107 + 20)) || (, , OUTLINED_FUNCTION_218(), sub_1C88AD618(), v121 = v120, , , (v121 & 1) != 0))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_18_10();
        sub_1C8884938(v122, v123);
        OUTLINED_FUNCTION_220();
        v124 = sub_1C8BD517C();
        sub_1C88844FC();
        sub_1C88844FC();
        sub_1C8778ED8(v105, &qword_1EC2B6038, &unk_1C8BE8850);
        if ((v124 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_48;
      }

      sub_1C88844FC();
      sub_1C88844FC();
      v66 = &qword_1EC2B6038;
      v67 = &unk_1C8BE8850;
      goto LABEL_44;
    }

    sub_1C88844FC();
LABEL_43:
    v66 = &qword_1EC2B6040;
    v67 = &unk_1C8BE6CF0;
LABEL_44:
    v68 = v105;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_76(v109, v110, v111);
  if (!v65)
  {
    goto LABEL_43;
  }

  sub_1C8778ED8(v103, &qword_1EC2B6038, &unk_1C8BE8850);
LABEL_48:
  v125 = v71[10];
  v126 = (v70 + v125);
  v127 = *(v70 + v125 + 8);
  v128 = (v74 + v125);
  v129 = *(v74 + v125 + 8);
  if (v127)
  {
    if (v129)
    {
LABEL_54:
      v130 = v71[5];
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_18_10();
      sub_1C8884938(v131, v132);
      v93 = sub_1C8BD517C();
      return v93 & 1;
    }
  }

  else
  {
    if (*v126 != *v128)
    {
      LOBYTE(v129) = 1;
    }

    if ((v129 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

LABEL_31:
  v93 = 0;
  return v93 & 1;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest();
  sub_1C8884938(&qword_1EC2B8688, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88842D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8884938(&qword_1EC2B86B8, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8884354(uint64_t a1)
{
  v2 = sub_1C8884938(&qword_1EC2B8698, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88843C4()
{
  sub_1C8884938(&qword_1EC2B8698, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8884444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_218();
  v8(v7);
  return a2;
}

uint64_t sub_1C88844A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_218();
  v8(v7);
  return a2;
}

uint64_t sub_1C88844FC()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_1C8884698()
{
  sub_1C8884884(319, &qword_1EC2B2F60, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v1 <= 0x3F)
    {
      sub_1C8884884(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C8884884(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C8884884(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1C8884884(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1C88848E8();
              if (v6 <= 0x3F)
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

void sub_1C8884884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C88848E8()
{
  if (!qword_1EDACD378)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDACD378);
    }
  }
}

uint64_t sub_1C8884938(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String_optional __swiftcall Siri_Nlu_External_UserDialogAct.typeAsString()()
{
  v1 = 0xEC00000064657463;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  OUTLINED_FUNCTION_80(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  OUTLINED_FUNCTION_80(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  OUTLINED_FUNCTION_80(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v97[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  OUTLINED_FUNCTION_80(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v97[-v37];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  OUTLINED_FUNCTION_80(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v97[-v43];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  OUTLINED_FUNCTION_80(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v97[-v49];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  OUTLINED_FUNCTION_80(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v97[-v55];
  v57 = *(v0 + *(type metadata accessor for Siri_Nlu_External_UserDialogAct(0) + 20));
  v58 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted;
  OUTLINED_FUNCTION_277();
  sub_1C87AB9AC(v57 + v58, v56, &unk_1EC2B6330, &unk_1C8BF4FE0);
  v59 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  LODWORD(v58) = __swift_getEnumTagSinglePayload(v56, 1, v59);
  sub_1C8778ED8(v56, &unk_1EC2B6330, &unk_1C8BF4FE0);
  if (v58 == 1)
  {
    OUTLINED_FUNCTION_277();
    OUTLINED_FUNCTION_25_1();
    sub_1C87AB9AC(v60, v61, v62, &unk_1C8C10580);
    v63 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v63);
    sub_1C8778ED8(v50, &qword_1EC2B6E28, &unk_1C8C10580);
    if (EnumTagSinglePayload == 1)
    {
      v65 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled;
      OUTLINED_FUNCTION_277();
      sub_1C87AB9AC(v57 + v65, v44, &qword_1EC2B6E20, &unk_1C8BF4FF0);
      v66 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
      LODWORD(v65) = __swift_getEnumTagSinglePayload(v44, 1, v66);
      OUTLINED_FUNCTION_25_1();
      sub_1C8778ED8(v67, v68, v69);
      if (v65 == 1)
      {
        v70 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
        OUTLINED_FUNCTION_277();
        sub_1C87AB9AC(v57 + v70, v38, &qword_1EC2B6E10, &unk_1C8BF5000);
        v71 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
        LODWORD(v70) = __swift_getEnumTagSinglePayload(v38, 1, v71);
        OUTLINED_FUNCTION_25_1();
        sub_1C8778ED8(v72, v73, v74);
        if (v70 == 1)
        {
          v75 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
          OUTLINED_FUNCTION_277();
          sub_1C87AB9AC(v57 + v75, v32, &qword_1EC2B86D8, &qword_1C8BF4620);
          v76 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
          LODWORD(v75) = __swift_getEnumTagSinglePayload(v32, 1, v76);
          OUTLINED_FUNCTION_25_1();
          sub_1C8778ED8(v77, v78, v79);
          if (v75 == 1)
          {
            v80 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
            OUTLINED_FUNCTION_277();
            OUTLINED_FUNCTION_19_7(v57 + v80, &v102);
            v81 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
            OUTLINED_FUNCTION_12_12(v81);
            if (v80 == 1)
            {
              v82 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
              OUTLINED_FUNCTION_277();
              OUTLINED_FUNCTION_19_7(v57 + v82, v101);
              v83 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
              OUTLINED_FUNCTION_12_12(v83);
              if (v82 == 1)
              {
                v84 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated;
                OUTLINED_FUNCTION_277();
                OUTLINED_FUNCTION_19_7(v57 + v84, v100);
                v85 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
                OUTLINED_FUNCTION_12_12(v85);
                if (v84 == 1)
                {
                  v86 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
                  OUTLINED_FUNCTION_277();
                  OUTLINED_FUNCTION_19_7(v57 + v86, v99);
                  v87 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
                  OUTLINED_FUNCTION_12_12(v87);
                  if (v86 == 1)
                  {
                    v88 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
                    OUTLINED_FUNCTION_277();
                    OUTLINED_FUNCTION_19_7(v57 + v88, v98);
                    v89 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
                    OUTLINED_FUNCTION_12_12(v89);
                    if (v88 == 1)
                    {
                      v90 = 0;
                    }

                    else
                    {
                      v90 = 0xD000000000000010;
                    }

                    if (v88 == 1)
                    {
                      v1 = 0;
                    }

                    else
                    {
                      v1 = 0x80000001C8C210E0;
                    }
                  }

                  else
                  {
                    v1 = 0xEE006B7361546465;
                    v90 = OUTLINED_FUNCTION_33_6() | 0x7461745300000000;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_17_8();
                  v90 = v94 | 6;
                }
              }

              else
              {
                OUTLINED_FUNCTION_17_8();
                v90 = v93 | 1;
              }
            }

            else
            {
              OUTLINED_FUNCTION_17_8();
              v90 = v92 | 3;
            }
          }

          else
          {
            v90 = 0xD000000000000010;
            v1 = 0x80000001C8C21160;
          }
        }

        else
        {
          OUTLINED_FUNCTION_17_8();
          v90 = v91 | 2;
        }
      }

      else
      {
        v1 = 0xED000064656C6C65;
        v90 = OUTLINED_FUNCTION_33_6() | 0x636E614300000000;
      }
    }

    else
    {
      v90 = OUTLINED_FUNCTION_33_6() | 0x656A655200000000;
    }
  }

  else
  {
    v1 = 0xEC00000064657470;
    v90 = OUTLINED_FUNCTION_33_6() | 0x6563634100000000;
  }

  v95 = v1;
  result.value._object = v95;
  result.value._countAndFlagsBits = v90;
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.getTasks()()
{
  v231 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  v1 = OUTLINED_FUNCTION_21(v231);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_9_0();
  v230[4] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  v6 = OUTLINED_FUNCTION_80(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_0();
  v230[3] = v9;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_96();
  v230[8] = v11;
  v12 = OUTLINED_FUNCTION_86();
  v237 = type metadata accessor for Siri_Nlu_External_UserStatedTask(v12);
  v13 = OUTLINED_FUNCTION_21(v237);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v230[9] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  v18 = OUTLINED_FUNCTION_80(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10_0();
  v230[7] = v21;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_96();
  v235 = v23;
  v24 = OUTLINED_FUNCTION_86();
  v243 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v24);
  v25 = OUTLINED_FUNCTION_21(v243);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9_0();
  v236 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  v30 = OUTLINED_FUNCTION_80(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_0();
  v234 = v33;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_96();
  v241 = v35;
  v36 = OUTLINED_FUNCTION_86();
  v249 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v36);
  v37 = OUTLINED_FUNCTION_21(v249);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_0();
  v242 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  v42 = OUTLINED_FUNCTION_80(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_10_0();
  v240 = v45;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_96();
  v247 = v47;
  v48 = OUTLINED_FUNCTION_86();
  v255 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v48);
  v49 = OUTLINED_FUNCTION_21(v255);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_0();
  v248 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  v54 = OUTLINED_FUNCTION_80(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_10_0();
  v246 = v57;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_96();
  v253 = v59;
  v60 = OUTLINED_FUNCTION_86();
  v261 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v60);
  v61 = OUTLINED_FUNCTION_21(v261);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_9_0();
  v254 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  v66 = OUTLINED_FUNCTION_80(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_10_0();
  v252 = v69;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_96();
  v259 = v71;
  v72 = OUTLINED_FUNCTION_86();
  v267 = type metadata accessor for Siri_Nlu_External_UserCancelled(v72);
  v73 = OUTLINED_FUNCTION_21(v267);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_9_0();
  v260 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  v78 = OUTLINED_FUNCTION_80(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_10_0();
  v258 = v81;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_96();
  v264 = v83;
  v84 = OUTLINED_FUNCTION_86();
  v271 = type metadata accessor for Siri_Nlu_External_UserRejected(v84);
  v85 = OUTLINED_FUNCTION_21(v271);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_9_0();
  v266 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  v90 = OUTLINED_FUNCTION_80(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_10_0();
  v263 = v93;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_96();
  v269 = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v97 = OUTLINED_FUNCTION_80(v96);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_10_0();
  v230[2] = v100;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_123();
  v230[6] = v102;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_123();
  v233 = v104;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_123();
  v239 = v106;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_123();
  v245 = v108;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_123();
  v251 = v110;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_123();
  v257 = v112;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_123();
  v265 = v114;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_96();
  v270 = v116;
  v117 = OUTLINED_FUNCTION_86();
  v272 = type metadata accessor for Siri_Nlu_External_UsoGraph(v117);
  v118 = OUTLINED_FUNCTION_21(v272);
  v120 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v118);
  OUTLINED_FUNCTION_10_0();
  v230[1] = v121;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_123();
  v230[5] = v123;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_123();
  v232 = v125;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_123();
  v238 = v127;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_123();
  v244 = v129;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_123();
  v250 = v131;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_123();
  v256 = v133;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_123();
  v262 = v135;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v136);
  v138 = (v230 - v137);
  v139 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  v140 = OUTLINED_FUNCTION_21(v139);
  v142 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_9_0();
  v268 = v143;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  v145 = OUTLINED_FUNCTION_80(v144);
  v147 = *(v146 + 64);
  v148 = MEMORY[0x1EEE9AC00](v145);
  v150 = v230 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v148);
  v152 = v230 - v151;
  v153 = *(v0 + *(type metadata accessor for Siri_Nlu_External_UserDialogAct(0) + 20));
  v154 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted;
  OUTLINED_FUNCTION_277();
  v155 = v153;
  sub_1C87AB9AC(v153 + v154, v152, &unk_1EC2B6330, &unk_1C8BF4FE0);
  LODWORD(v153) = __swift_getEnumTagSinglePayload(v152, 1, v139);
  sub_1C8778ED8(v152, &unk_1EC2B6330, &unk_1C8BF4FE0);
  if (v153 != 1)
  {
    sub_1C87AB9AC(v155 + v154, v150, &unk_1EC2B6330, &unk_1C8BF4FE0);
    OUTLINED_FUNCTION_17_6(v150);
    if (v183)
    {
      v199 = v268;
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
      v188 = *(v139 + 24);
      OUTLINED_FUNCTION_5();
      v200 = v272;
      __swift_storeEnumTagSinglePayload(v189, v190, v191, v272);
      OUTLINED_FUNCTION_17_6(v150);
      if (!v183)
      {
        sub_1C8778ED8(v150, &unk_1EC2B6330, &unk_1C8BF4FE0);
      }
    }

    else
    {
      v199 = v268;
      sub_1C8886A8C(v150, v268, type metadata accessor for Siri_Nlu_External_UserAccepted);
      v200 = v272;
    }

    v201 = v270;
    sub_1C87AB9AC(v199 + *(v139 + 24), v270, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_65(v201);
    if (v183)
    {
      v202 = MEMORY[0x1E69E7CC0];
      *v138 = MEMORY[0x1E69E7CC0];
      v138[1] = v202;
      v138[2] = v202;
      v138[3] = v202;
      v138[4] = v202;
      v203 = v138 + *(v200 + 36);
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v204, v205, v206, v207);
      OUTLINED_FUNCTION_65(v201);
      if (!v183)
      {
        sub_1C8778ED8(v201, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_12();
      sub_1C8886A8C(v201, v138, v208);
    }

    sub_1C8886A34(v199, type metadata accessor for Siri_Nlu_External_UserAccepted);
    type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
    swift_initStackObject();
    sub_1C87A5614(v138);
    v210 = v209;
    OUTLINED_FUNCTION_7_14();
    v212 = v138;
    goto LABEL_33;
  }

  v156 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected;
  OUTLINED_FUNCTION_277();
  v157 = v269;
  sub_1C87AB9AC(v155 + v156, v269, &qword_1EC2B6E28, &unk_1C8C10580);
  v158 = v271;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v157, 1, v271);
  sub_1C8778ED8(v157, &qword_1EC2B6E28, &unk_1C8C10580);
  if (EnumTagSinglePayload != 1)
  {
    v192 = v155 + v156;
    v193 = v263;
    sub_1C87AB9AC(v192, v263, &qword_1EC2B6E28, &unk_1C8C10580);
    OUTLINED_FUNCTION_65(v193);
    if (v183)
    {
      v217 = v266;
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v194 = *(v158 + 20);
      type metadata accessor for Siri_Nlu_External_UUID();
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v195, v196, v197, v198);
      OUTLINED_FUNCTION_11_10(*(v158 + 24));
      if (__swift_getEnumTagSinglePayload(v193, 1, v158) != 1)
      {
        sub_1C8778ED8(v193, &qword_1EC2B6E28, &unk_1C8C10580);
      }
    }

    else
    {
      v217 = v266;
      sub_1C8886A8C(v193, v266, type metadata accessor for Siri_Nlu_External_UserRejected);
    }

    v218 = v265;
    sub_1C87AB9AC(v217 + *(v158 + 24), v265, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_3_11();
    if (v183)
    {
      v222 = v262;
      OUTLINED_FUNCTION_14_7(MEMORY[0x1E69E7CC0]);
      v219 = OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_1_10(v219);
      if (!v183)
      {
        sub_1C8778ED8(v218, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_12();
      v222 = v262;
      sub_1C8886A8C(v218, v262, v220);
    }

    sub_1C8886A34(v217, type metadata accessor for Siri_Nlu_External_UserRejected);
    type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
    goto LABEL_32;
  }

  v160 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_22_8(v155 + v160);
  v161 = OUTLINED_FUNCTION_195_0();
  v162 = v267;
  OUTLINED_FUNCTION_13_13(v161, v163);
  if (&unk_1C8C10580 != 1)
  {
    v213 = v258;
    sub_1C87AB9AC(v155 + v160, v258, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    OUTLINED_FUNCTION_4_12();
    if (v183)
    {
      v221 = v260;
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v214 = OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_2_17(&qword_1EC2B6E20 + v221, v215, v216, v214);
      v222 = v256;
      if (!v183)
      {
        sub_1C8778ED8(v213, &qword_1EC2B6E20, &unk_1C8BF4FF0);
      }
    }

    else
    {
      v221 = v260;
      sub_1C8886A8C(v213, v260, type metadata accessor for Siri_Nlu_External_UserCancelled);
      v222 = v256;
    }

    v223 = v257;
    sub_1C87AB9AC(v221 + *(v162 + 24), v257, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_3_11();
    if (v183)
    {
      OUTLINED_FUNCTION_14_7(MEMORY[0x1E69E7CC0]);
      v224 = OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_1_10(v224);
      if (!v183)
      {
        sub_1C8778ED8(v223, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_12();
      OUTLINED_FUNCTION_31_5(v225, v226, v227);
    }

    sub_1C8886A34(v221, type metadata accessor for Siri_Nlu_External_UserCancelled);
    type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
LABEL_32:
    swift_initStackObject();
    sub_1C87A5614(v222);
    v210 = v228;
    OUTLINED_FUNCTION_7_14();
    v212 = v222;
LABEL_33:
    sub_1C8886A34(v212, v211);
    v182 = MEMORY[0x1CCA7D450](v210);

    return v182;
  }

  v164 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_22_8(v155 + v164);
  v165 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v165, v166);
  v167 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_22_8(v155 + v167);
  v168 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v168, v169);
  v170 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_22_8(v155 + v170);
  v171 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v171, v172);
  v173 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_22_8(v155 + v173);
  v174 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v174, v175);
  v176 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_22_8(v155 + v176);
  v177 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v177, v178);
  v179 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
  OUTLINED_FUNCTION_277();
  OUTLINED_FUNCTION_22_8(v155 + v179);
  v180 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v180, v181);
  return MEMORY[0x1E69E7CC0];
}

uint64_t Siri_Nlu_External_UserDialogAct.getTasksAs<A>(_:)(uint64_t a1, uint64_t a2)
{
  v32 = sub_1C8BD522C();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_77();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_0();
  v31 = v11;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_96();
  v30 = v13;
  OUTLINED_FUNCTION_86();
  v14 = sub_1C8BD51FC();
  v33 = v14;
  v15 = Siri_Nlu_External_UserDialogAct.getTasks()();
  result = sub_1C8886AEC(v15);
  if (!result)
  {

    return v14;
  }

  v17 = result;
  if (result >= 1)
  {
    v18 = 0;
    v28 = (v9 + 32);
    v29 = (v3 + 8);
    v26 = (v9 + 8);
    v27 = (v9 + 16);
    v25 = v8;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA7E340](v18, v15);
      }

      else
      {
        v19 = *(v15 + 8 * v18 + 32);
      }

      sub_1C8BD443C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E0, &qword_1C8BF4628);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v8, 0, 1, a2);
        v20 = v30;
        (*v28)(v30, v8, a2);
        (*v27)(v31, v20, a2);
        sub_1C8BD521C();
        v8 = v25;
        sub_1C8BD520C();

        (*v26)(v20, a2);
      }

      else
      {

        OUTLINED_FUNCTION_5();
        __swift_storeEnumTagSinglePayload(v21, v22, v23, a2);
        (*v29)(v8, v32);
      }

      ++v18;
    }

    while (v17 != v18);

    return v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8886A34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8886A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_21(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C8886AEC(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

BOOL sub_1C8886B78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19[-v3];
  v5 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  sub_1C8786744(v0 + *(v9 + 24), v4, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    *v8 = MEMORY[0x1E69E7CC0];
    v8[1] = v10;
    v8[2] = v10;
    v8[3] = v10;
    v8[4] = v10;
    v11 = v8 + *(v5 + 36);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v5 + 40);
    v13 = type metadata accessor for Siri_Nlu_External_SemVer();
    __swift_storeEnumTagSinglePayload(v8 + v12, 1, 1, v13);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = sub_1C8778ED8(v4, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    EnumTagSinglePayload = sub_1C87AA5FC(v4, v8, type metadata accessor for Siri_Nlu_External_UsoGraph);
  }

  v15 = v8[1];
  MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
  *&v19[-16] = &unk_1F4871EC0;
  *&v19[-8] = v8;
  v17 = sub_1C87AA658(sub_1C87AAA6C, &v19[-32], v16, type metadata accessor for Siri_Nlu_External_UsoEdge);
  sub_1C87AAA8C(v8, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return v17;
}

Swift::String_optional __swiftcall Siri_Nlu_External_SystemDialogAct.extractMultilingualMessageLanguage()()
{
  v1 = v0;
  v2 = sub_1C8BD493C();
  v3 = OUTLINED_FUNCTION_13_1(v2);
  v106 = v4;
  v107 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_0();
  v105 = v7;
  v8 = OUTLINED_FUNCTION_86();
  v9 = type metadata accessor for Siri_Nlu_External_SpanProperty(v8);
  v116 = OUTLINED_FUNCTION_13_1(v9);
  v117 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0);
  v114 = OUTLINED_FUNCTION_13_1(v15);
  v115 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_9_0();
  v113 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v21 = OUTLINED_FUNCTION_80(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v104 - v24;
  v25 = OUTLINED_FUNCTION_86();
  v112 = type metadata accessor for Siri_Nlu_External_UsoGraph(v25);
  v26 = OUTLINED_FUNCTION_21(v112);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_9_0();
  v111 = v29;
  v30 = OUTLINED_FUNCTION_86();
  v31 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v30);
  v32 = OUTLINED_FUNCTION_21(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_10_0();
  v109 = v35;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v104 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  v40 = OUTLINED_FUNCTION_80(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_10_0();
  v108 = v43;
  OUTLINED_FUNCTION_83_0();
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v104 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v104 - v48;
  v50 = *(v1 + *(type metadata accessor for Siri_Nlu_External_SystemDialogAct(0) + 20));
  v51 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted;
  OUTLINED_FUNCTION_277();
  sub_1C8786744(v50 + v51, v49, &dword_1EC2B86E8, &unk_1C8BF4630);
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v49, 1, v31);
  sub_1C8778ED8(v49, &dword_1EC2B86E8, &unk_1C8BF4630);
  if (v1 == 1)
  {
    goto LABEL_33;
  }

  sub_1C8786744(v50 + v51, v47, &dword_1EC2B86E8, &unk_1C8BF4630);
  OUTLINED_FUNCTION_9_11();
  if (v99)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v52 = *(v31 + 20);
    type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    v57 = *(v31 + 24);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v112);
    OUTLINED_FUNCTION_9_11();
    v61 = v113;
    if (!v99)
    {
      sub_1C8778ED8(v47, &dword_1EC2B86E8, &unk_1C8BF4630);
    }
  }

  else
  {
    sub_1C87AA5FC(v47, v38, type metadata accessor for Siri_Nlu_External_SystemPrompted);
    v61 = v113;
  }

  v62 = sub_1C8886B78();
  OUTLINED_FUNCTION_0_13();
  sub_1C87AAA8C(v38, v63);
  if (!v62)
  {
    goto LABEL_33;
  }

  v64 = v108;
  sub_1C8786744(v50 + v51, v108, &dword_1EC2B86E8, &unk_1C8BF4630);
  OUTLINED_FUNCTION_9_11();
  if (v99)
  {
    v74 = v109;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v65 = *(v31 + 20);
    type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
    v70 = *(v31 + 24);
    OUTLINED_FUNCTION_5();
    v77 = v112;
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v112);
    OUTLINED_FUNCTION_9_11();
    v76 = v110;
    v75 = v111;
    if (!v99)
    {
      sub_1C8778ED8(v64, &dword_1EC2B86E8, &unk_1C8BF4630);
    }
  }

  else
  {
    v74 = v109;
    sub_1C87AA5FC(v64, v109, type metadata accessor for Siri_Nlu_External_SystemPrompted);
    v76 = v110;
    v75 = v111;
    v77 = v112;
  }

  sub_1C8786744(v74 + *(v31 + 24), v76, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v76, 1, v77) == 1)
  {
    v78 = MEMORY[0x1E69E7CC0];
    *v75 = MEMORY[0x1E69E7CC0];
    v75[1] = v78;
    v75[2] = v78;
    v75[3] = v78;
    v75[4] = v78;
    v79 = v75 + *(v77 + 36);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v80 = *(v77 + 40);
    type metadata accessor for Siri_Nlu_External_SemVer();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    if (__swift_getEnumTagSinglePayload(v76, 1, v77) != 1)
    {
      sub_1C8778ED8(v76, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    sub_1C87AA5FC(v76, v75, type metadata accessor for Siri_Nlu_External_UsoGraph);
  }

  sub_1C87AAA8C(v74, type metadata accessor for Siri_Nlu_External_SystemPrompted);
  v85 = v75[4];

  OUTLINED_FUNCTION_7_15();
  v87 = sub_1C87AAA8C(v75, v86);
  v89 = *(v85 + 16);
  if (!v89)
  {
LABEL_32:

LABEL_33:
    v87 = OUTLINED_FUNCTION_218();
    goto LABEL_37;
  }

  v90 = 0;
  v112 = v85 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
  while (v90 < *(v85 + 16))
  {
    sub_1C88878A8(v112 + *(v115 + 72) * v90, v61, type metadata accessor for Siri_Nlu_External_UsoEntitySpan);
    v91 = *(v61 + *(v114 + 20));
    OUTLINED_FUNCTION_277();
    if ((*(v91 + 20) & 1) == 0 && !*(v91 + 16))
    {
      v92 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties;
      OUTLINED_FUNCTION_277();
      v93 = *(v91 + v92);
      v94 = *(v93 + 16);
      if (v94)
      {
        v95 = v93 + ((*(v117 + 80) + 32) & ~*(v117 + 80));

        v96 = 0;
        while (v96 < *(v93 + 16))
        {
          sub_1C88878A8(v95 + *(v117 + 72) * v96, v14, type metadata accessor for Siri_Nlu_External_SpanProperty);
          v97 = &v14[*(v116 + 20)];
          v98 = *(v97 + 1);
          if (v98)
          {
            v99 = *v97 == 0x75676E616C736D73 && v98 == 0xEB00000000656761;
            if (v99 || (sub_1C8BD529C() & 1) != 0)
            {

              v101 = v105;
              Siri_Nlu_External_SpanProperty.valueString.getter();
              sub_1C8BD490C();
              (*(v106 + 8))(v101, v107);
              OUTLINED_FUNCTION_10_8();
              OUTLINED_FUNCTION_6_11();
              sub_1C87AAA8C(v113, v102);
              goto LABEL_33;
            }
          }

          ++v96;
          v87 = OUTLINED_FUNCTION_10_8();
          if (v94 == v96)
          {

            v61 = v113;
            goto LABEL_31;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_31:
    ++v90;
    OUTLINED_FUNCTION_6_11();
    v87 = sub_1C87AAA8C(v61, v100);
    if (v90 == v89)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_37:
  result.value._object = v88;
  result.value._countAndFlagsBits = v87;
  return result;
}

uint64_t sub_1C8887564(uint64_t a1, uint64_t *a2)
{
  v31 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UsoEdge(0);
  sub_1C8786744(a1 + *(v15 + 28), v10, &qword_1EC2B61B0, &qword_1C8BE6E40);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = &v14[v11[5]];
    *v16 = 0;
    v16[4] = 1;
    v17 = &v14[v11[6]];
    *v17 = 0;
    v17[4] = 1;
    v18 = v11[7];
    v19 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    __swift_storeEnumTagSinglePayload(&v14[v18], 1, 1, v19);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_1C8778ED8(v10, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    sub_1C87AA5FC(v10, v14, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  }

  v20 = &v14[v11[5]];
  v21 = *v20;
  v22 = v20[4];
  sub_1C87AAA8C(v14, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  result = 0;
  if ((v22 & 1) == 0 && v21 == 710)
  {
    v24 = *v31;
    v25 = (a1 + *(v15 + 20));
    if (*(v25 + 4))
    {
      v26 = 0;
    }

    else
    {
      v26 = *v25;
    }

    if (v26 >= *(v24 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C88878A8(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v6, type metadata accessor for Siri_Nlu_External_UsoNode);
      v27 = &v6[*(v3 + 24)];
      v28 = *v27;
      v29 = v27[4];
      sub_1C87AAA8C(v6, type metadata accessor for Siri_Nlu_External_UsoNode);
      return (v28 == 1299) & ~v29;
    }
  }

  return result;
}

uint64_t sub_1C88878A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_21(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_218();
  v8(v7);
  return a2;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.tokenizerResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_170();
  v8 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  OUTLINED_FUNCTION_73_2(v2 + *(v8 + 20), v1);
  v9 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  OUTLINED_FUNCTION_65(v1);
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = v9[5];
    type metadata accessor for Siri_Nlu_Internal_TokenChain();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = (a1 + v9[6]);
    *v16 = 0;
    v16[1] = 0;
    v17 = v9[7];
    type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    result = OUTLINED_FUNCTION_65(v1);
    if (!v10)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8710, &unk_1C8BF4640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_11();
    return sub_1C888A4E0(v1, a1);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper()
{
  result = qword_1EC2B8778;
  if (!qword_1EC2B8778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.tokenizerResponse.setter()
{
  OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B8710, &unk_1C8BF4640);
  OUTLINED_FUNCTION_5_11();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  v2 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void (*Siri_Nlu_Internal_PreprocessingWrapper.tokenizerResponse.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_30_6(v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_28_9(v12);
  OUTLINED_FUNCTION_32_0(*(v13 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = v7[5];
    type metadata accessor for Siri_Nlu_Internal_TokenChain();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = (v9 + v7[6]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v7[7];
    type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8710, &unk_1C8BF4640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_11();
    v26 = OUTLINED_FUNCTION_168_0();
    sub_1C888A4E0(v26, v27);
  }

  return sub_1C8887C64;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.hasTokenizerResponse.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_74();
  v4 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  OUTLINED_FUNCTION_20_6(*(v4 + 20));
  v5 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_PreprocessingWrapper.clearTokenizerResponse()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B8710, &unk_1C8BF4640);
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.spanMatchResponse.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 24));
  OUTLINED_FUNCTION_73_2(v8, v9);
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse();
  OUTLINED_FUNCTION_65(v1);
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v12 = a1 + *(matched + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_65(v1);
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8718, &qword_1C8C102A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    v13 = OUTLINED_FUNCTION_121();
    return sub_1C888A4E0(v13, v14);
  }

  return result;
}

uint64_t sub_1C8887E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_80(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  sub_1C888A538(a1, &v16 - v13);
  return a7(v14);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.spanMatchResponse.setter()
{
  OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B8718, &qword_1C8C102A0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse();
  v2 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void (*Siri_Nlu_Internal_PreprocessingWrapper.spanMatchResponse.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v0 + 8) = v5;
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse();
  *(v0 + 16) = matched;
  OUTLINED_FUNCTION_21(matched);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = *(OUTLINED_FUNCTION_28_9(v11) + 24);
  *(v0 + 40) = v12;
  v13 = OUTLINED_FUNCTION_13(v12);
  sub_1C8786744(v13, v14, &qword_1EC2B8718, &qword_1C8C102A0);
  v15 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v15, v16, matched);
  if (v17)
  {
    *v8 = MEMORY[0x1E69E7CC0];
    v18 = v8 + *(matched + 20);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v19 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v19, v20, matched);
    if (!v17)
    {
      sub_1C8778ED8(v5, &qword_1EC2B8718, &qword_1C8C102A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1C888A4E0(v5, v8);
  }

  return sub_1C888809C;
}

void sub_1C88880C4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    sub_1C888A538((*a1)[4], v8);
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C888A4E0(v8, v12 + v7);
    OUTLINED_FUNCTION_26_1();
    sub_1C888A590();
  }

  else
  {
    sub_1C8778ED8(v12 + v7, a3, a4);
    sub_1C888A4E0(v9, v12 + v7);
    OUTLINED_FUNCTION_26_1();
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.hasSpanMatchResponse.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_74();
  v4 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  OUTLINED_FUNCTION_20_6(*(v4 + 24));
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse();
  OUTLINED_FUNCTION_10(matched);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_PreprocessingWrapper.clearSpanMatchResponse()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B8718, &qword_1C8C102A0);
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.embeddingResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 28));
  OUTLINED_FUNCTION_73_2(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  OUTLINED_FUNCTION_65(v1);
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v10 + 20);
    if (qword_1EC2B5C38 != -1)
    {
      OUTLINED_FUNCTION_23_9();
    }

    *(a1 + v12) = qword_1EC2BE0D0;
    v13 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v10);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8720, &qword_1C8BF4650);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v16 = OUTLINED_FUNCTION_121();
    return sub_1C888A4E0(v16, v17);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.embeddingResponse.setter()
{
  OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B8720, &qword_1C8BF4650);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  v2 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void (*Siri_Nlu_Internal_PreprocessingWrapper.embeddingResponse.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_30_6(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_28_9(v13);
  OUTLINED_FUNCTION_32_0(*(v14 + 28));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v8 + 20);
    if (qword_1EC2B5C38 != -1)
    {
      OUTLINED_FUNCTION_23_9();
    }

    *(v10 + v16) = qword_1EC2BE0D0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8720, &qword_1C8BF4650);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v18 = OUTLINED_FUNCTION_168_0();
    sub_1C888A4E0(v18, v19);
  }

  return sub_1C8888570;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.hasEmbeddingResponse.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_74();
  v4 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  OUTLINED_FUNCTION_20_6(*(v4 + 28));
  v5 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_PreprocessingWrapper.clearEmbeddingResponse()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B8720, &qword_1C8BF4650);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.mentionResolverResponse.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  v8 = OUTLINED_FUNCTION_13(*(v7 + 32));
  OUTLINED_FUNCTION_73_2(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  OUTLINED_FUNCTION_65(v1);
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    v12 = a1 + v10[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = v10[6];
    type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = (a1 + v10[7]);
    *v18 = 0;
    v18[1] = 0;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8728, &qword_1C8BF4658);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    v19 = OUTLINED_FUNCTION_121();
    return sub_1C888A4E0(v19, v20);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.mentionResolverResponse.setter()
{
  OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B8728, &qword_1C8BF4658);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  v2 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void (*Siri_Nlu_Internal_PreprocessingWrapper.mentionResolverResponse.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_30_6(v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_21(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_28_9(v12);
  OUTLINED_FUNCTION_32_0(*(v13 + 32));
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    v15 = v9 + v7[5];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = v7[6];
    type metadata accessor for Siri_Nlu_External_UUID();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = (v9 + v7[7]);
    *v21 = 0;
    v21[1] = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8728, &qword_1C8BF4658);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    v22 = OUTLINED_FUNCTION_168_0();
    sub_1C888A4E0(v22, v23);
  }

  return sub_1C8888930;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.hasMentionResolverResponse.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_74();
  v4 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  OUTLINED_FUNCTION_20_6(*(v4 + 32));
  v5 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_PreprocessingWrapper.clearMentionResolverResponse()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B8728, &qword_1C8BF4658);
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.unknownFields.getter()
{
  v0 = sub_1C8BD49FC();
  OUTLINED_FUNCTION_21(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_218();

  return v4(v3);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1C8BD49FC();
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.init()()
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v0 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  v1 = v0[5];
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0[6];
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = v0[7];
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = v0[8];
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t sub_1C8888BD8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B86F8);
  __swift_project_value_buffer(v0, qword_1EC2B86F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tokenizer_response";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "span_match_response";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "embedding_response";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mention_resolver_response";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_PreprocessingWrapper._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5140 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B86F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.decodeMessage<A>(decoder:)()
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
        sub_1C8888F74();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8889028();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C88890DC();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8889190();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8888F74()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper() + 20);
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  sub_1C888A8BC(&qword_1EC2B6408, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8889028()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper() + 24);
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse();
  sub_1C888A8BC(&qword_1EC2B45A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88890DC()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper() + 28);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  sub_1C888A8BC(&qword_1EC2B8730, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8889190()
{
  v0 = *(type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper() + 32);
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  sub_1C888A8BC(&qword_1EC2B6DE0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a2;
  v69 = a3;
  v70 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8728, &qword_1C8BF4658);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_81();
  v64 = v10;
  OUTLINED_FUNCTION_86();
  v65 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  v11 = OUTLINED_FUNCTION_21(v65);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v60 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8720, &qword_1C8BF4650);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_81();
  v62 = v20;
  v21 = OUTLINED_FUNCTION_86();
  v63 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v21);
  v22 = OUTLINED_FUNCTION_21(v63);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33();
  v61 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8718, &qword_1C8C102A0);
  OUTLINED_FUNCTION_80(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse();
  v31 = OUTLINED_FUNCTION_21(matched);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33();
  v36 = v35 - v34;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8710, &unk_1C8BF4640);
  OUTLINED_FUNCTION_80(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v59 - v41;
  v43 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  v44 = OUTLINED_FUNCTION_21(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_33();
  v49 = v48 - v47;
  v71 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  sub_1C8786744(v3 + v71[5], v42, &qword_1EC2B8710, &unk_1C8BF4640);
  if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
  {
    sub_1C8778ED8(v42, &qword_1EC2B8710, &unk_1C8BF4640);
  }

  else
  {
    sub_1C888A4E0(v42, v49);
    sub_1C888A8BC(&qword_1EC2B6408, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse);
    v4 = v67;
    sub_1C8BD4E2C();
    result = sub_1C888A590();
    if (v4)
    {
      return result;
    }
  }

  sub_1C8786744(v3 + v71[6], v5, &qword_1EC2B8718, &qword_1C8C102A0);
  v51 = OUTLINED_FUNCTION_120();
  if (__swift_getEnumTagSinglePayload(v51, v52, matched) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2B8718, &qword_1C8C102A0);
  }

  else
  {
    sub_1C888A4E0(v5, v36);
    sub_1C888A8BC(&qword_1EC2B45A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
    OUTLINED_FUNCTION_33_7();
    result = sub_1C888A590();
    if (v4)
    {
      return result;
    }
  }

  v53 = v62;
  sub_1C8786744(v3 + v71[7], v62, &qword_1EC2B8720, &qword_1C8BF4650);
  v54 = OUTLINED_FUNCTION_120();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, v55, v63);
  v58 = v64;
  v57 = v65;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v53, &qword_1EC2B8720, &qword_1C8BF4650);
  }

  else
  {
    OUTLINED_FUNCTION_19_8();
    sub_1C888A4E0(v53, v61);
    sub_1C888A8BC(&qword_1EC2B8730, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);
    OUTLINED_FUNCTION_33_7();
    OUTLINED_FUNCTION_121();
    result = sub_1C888A590();
    if (v4)
    {
      return result;
    }

    v57 = v65;
  }

  sub_1C8786744(v3 + v71[8], v58, &qword_1EC2B8728, &qword_1C8BF4658);
  if (__swift_getEnumTagSinglePayload(v58, 1, v57) == 1)
  {
    sub_1C8778ED8(v58, &qword_1EC2B8728, &qword_1C8BF4658);
  }

  else
  {
    sub_1C888A4E0(v58, v60);
    sub_1C888A8BC(&qword_1EC2B6DE0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);
    OUTLINED_FUNCTION_33_7();
    result = sub_1C888A590();
    if (v4)
    {
      return result;
    }
  }

  return sub_1C8BD49DC();
}

uint64_t static Siri_Nlu_Internal_PreprocessingWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v125 = a1;
  v126 = a2;
  v115 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse();
  v3 = OUTLINED_FUNCTION_21(v115);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v111 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8728, &qword_1C8BF4658);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_81();
  v112 = v12;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8738, &qword_1C8BF4660);
  OUTLINED_FUNCTION_21(v114);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_81();
  v116 = v16;
  v17 = OUTLINED_FUNCTION_86();
  v120 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v17);
  v18 = OUTLINED_FUNCTION_21(v120);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_33();
  v113 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8720, &qword_1C8BF4650);
  OUTLINED_FUNCTION_80(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_81();
  v117 = v27;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8740, &qword_1C8BF4668);
  OUTLINED_FUNCTION_21(v119);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_81();
  v121 = v31;
  OUTLINED_FUNCTION_86();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse();
  v32 = OUTLINED_FUNCTION_21(matched);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_33();
  v118 = (v36 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8718, &qword_1C8C102A0);
  OUTLINED_FUNCTION_80(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_81();
  v122 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8748, &qword_1C8BF4670);
  OUTLINED_FUNCTION_21(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_170();
  v46 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse();
  v47 = OUTLINED_FUNCTION_21(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_33();
  v52 = v51 - v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8710, &unk_1C8BF4640);
  OUTLINED_FUNCTION_80(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v111 - v57;
  v59 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8750, &qword_1C8BF4678) - 8);
  v60 = *(*v59 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v111 - v62;
  v124 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  v64 = *(v124 + 20);
  v65 = v59[14];
  sub_1C8786744(v125 + v64, v63, &qword_1EC2B8710, &unk_1C8BF4640);
  sub_1C8786744(v126 + v64, &v63[v65], &qword_1EC2B8710, &unk_1C8BF4640);
  OUTLINED_FUNCTION_76(v63, 1, v46);
  if (v66)
  {
    OUTLINED_FUNCTION_76(&v63[v65], 1, v46);
    if (v66)
    {
      sub_1C8778ED8(v63, &qword_1EC2B8710, &unk_1C8BF4640);
      goto LABEL_11;
    }

LABEL_9:
    v67 = &qword_1EC2B8750;
    v68 = &qword_1C8BF4678;
    v69 = v63;
LABEL_47:
    sub_1C8778ED8(v69, v67, v68);
    goto LABEL_48;
  }

  sub_1C8786744(v63, v58, &qword_1EC2B8710, &unk_1C8BF4640);
  OUTLINED_FUNCTION_76(&v63[v65], 1, v46);
  if (v66)
  {
    sub_1C888A590();
    goto LABEL_9;
  }

  sub_1C888A4E0(&v63[v65], v52);
  v70 = static Siri_Nlu_Internal_Tokenizer_TokenizerResponse.== infix(_:_:)(v58, v52);
  sub_1C888A590();
  OUTLINED_FUNCTION_168_0();
  sub_1C888A590();
  sub_1C8778ED8(v63, &qword_1EC2B8710, &unk_1C8BF4640);
  if ((v70 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_11:
  v72 = v124;
  v71 = v125;
  v73 = *(v124 + 24);
  v74 = *(v42 + 48);
  sub_1C8786744(v125 + v73, v2, &qword_1EC2B8718, &qword_1C8C102A0);
  v75 = v126;
  sub_1C8786744(v126 + v73, v2 + v74, &qword_1EC2B8718, &qword_1C8C102A0);
  v76 = matched;
  OUTLINED_FUNCTION_76(v2, 1, matched);
  if (v66)
  {
    OUTLINED_FUNCTION_76(v2 + v74, 1, v76);
    if (v66)
    {
      sub_1C8778ED8(v2, &qword_1EC2B8718, &qword_1C8C102A0);
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  v81 = v122;
  sub_1C8786744(v2, v122, &qword_1EC2B8718, &qword_1C8C102A0);
  OUTLINED_FUNCTION_76(v2 + v74, 1, v76);
  if (v82)
  {
    sub_1C888A590();
LABEL_24:
    v67 = &qword_1EC2B8748;
    v68 = &qword_1C8BF4670;
LABEL_25:
    v69 = v2;
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_0_14();
  v83 = v118;
  sub_1C888A4E0(v2 + v74, v118);
  v84 = *v81;
  v85 = *v83;
  sub_1C87D27C0();
  if ((v86 & 1) == 0)
  {
    sub_1C888A590();
    sub_1C888A590();
    v67 = &qword_1EC2B8718;
    v68 = &qword_1C8C102A0;
    goto LABEL_25;
  }

  v87 = *(v76 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_4_13();
  sub_1C888A8BC(v88, v89);
  v90 = sub_1C8BD517C();
  sub_1C888A590();
  sub_1C888A590();
  sub_1C8778ED8(v2, &qword_1EC2B8718, &qword_1C8C102A0);
  if ((v90 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_16:
  v77 = *(v72 + 28);
  v78 = *(v119 + 48);
  v79 = v121;
  OUTLINED_FUNCTION_27(v71 + v77, v121);
  OUTLINED_FUNCTION_27(v75 + v77, v79 + v78);
  v80 = v120;
  OUTLINED_FUNCTION_76(v79, 1, v120);
  if (v66)
  {
    OUTLINED_FUNCTION_76(v79 + v78, 1, v80);
    if (v66)
    {
      sub_1C8778ED8(v79, &qword_1EC2B8720, &qword_1C8BF4650);
LABEL_38:
      v99 = *(v72 + 32);
      v100 = *(v114 + 48);
      v101 = v116;
      OUTLINED_FUNCTION_27(v71 + v99, v116);
      OUTLINED_FUNCTION_27(v75 + v99, v101 + v100);
      v102 = v115;
      OUTLINED_FUNCTION_76(v101, 1, v115);
      if (v66)
      {
        OUTLINED_FUNCTION_76(v101 + v100, 1, v102);
        if (v66)
        {
          sub_1C8778ED8(v101, &qword_1EC2B8728, &qword_1C8BF4658);
          goto LABEL_51;
        }
      }

      else
      {
        sub_1C8786744(v101, v112, &qword_1EC2B8728, &qword_1C8BF4658);
        OUTLINED_FUNCTION_76(v101 + v100, 1, v102);
        if (!v103)
        {
          sub_1C888A4E0(v101 + v100, v111);
          v106 = OUTLINED_FUNCTION_168_0();
          v108 = static Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.== infix(_:_:)(v106, v107);
          sub_1C888A590();
          sub_1C888A590();
          sub_1C8778ED8(v101, &qword_1EC2B8728, &qword_1C8BF4658);
          if ((v108 & 1) == 0)
          {
            goto LABEL_48;
          }

LABEL_51:
          sub_1C8BD49FC();
          OUTLINED_FUNCTION_4_13();
          sub_1C888A8BC(v109, v110);
          v104 = sub_1C8BD517C();
          return v104 & 1;
        }

        sub_1C888A590();
      }

      v67 = &qword_1EC2B8738;
      v68 = &qword_1C8BF4660;
      v69 = v101;
      goto LABEL_47;
    }

    goto LABEL_32;
  }

  v91 = v117;
  sub_1C8786744(v79, v117, &qword_1EC2B8720, &qword_1C8BF4650);
  OUTLINED_FUNCTION_76(v79 + v78, 1, v80);
  if (v92)
  {
    sub_1C888A590();
LABEL_32:
    v67 = &qword_1EC2B8740;
    v68 = &qword_1C8BF4668;
LABEL_33:
    v69 = v79;
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_1_11();
  v93 = v113;
  sub_1C888A4E0(v79 + v78, v113);
  if (*(v91 + *(v80 + 20)) != *(v93 + *(v80 + 20)))
  {

    OUTLINED_FUNCTION_218();
    sub_1C8A0FA28();
    v95 = v94;

    if ((v95 & 1) == 0)
    {
      OUTLINED_FUNCTION_19_8();
      sub_1C888A590();
      sub_1C888A590();
      v67 = &qword_1EC2B8720;
      v68 = &qword_1C8BF4650;
      goto LABEL_33;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_4_13();
  sub_1C888A8BC(v96, v97);
  v98 = sub_1C8BD517C();
  sub_1C888A590();
  sub_1C888A590();
  sub_1C8778ED8(v79, &qword_1EC2B8720, &qword_1C8BF4650);
  if (v98)
  {
    goto LABEL_38;
  }

LABEL_48:
  v104 = 0;
  return v104 & 1;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper();
  sub_1C888A8BC(&qword_1EC2B8758, type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C888A370(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C888A8BC(&qword_1EC2B87A8, type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C888A3F0(uint64_t a1)
{
  v2 = sub_1C888A8BC(&qword_1EC2B8768, type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C888A460()
{
  sub_1C888A8BC(&qword_1EC2B8768, type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C888A4E0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_218();
  v9(v8);
  return a2;
}

uint64_t sub_1C888A538(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_218();
  v9(v8);
  return a2;
}

uint64_t sub_1C888A590()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  OUTLINED_FUNCTION_21(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_1C888A72C()
{
  sub_1C8BD49FC();
  if (v0 <= 0x3F)
  {
    sub_1C888A868(319, &qword_1EC2B8788, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse);
    if (v1 <= 0x3F)
    {
      sub_1C888A868(319, &qword_1EC2B8790, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
      if (v2 <= 0x3F)
      {
        sub_1C888A868(319, &qword_1EC2B8798, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);
        if (v3 <= 0x3F)
        {
          sub_1C888A868(319, &qword_1EC2B87A0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C888A868(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1C888A8BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
  *(swift_allocObject() + 16) = a2;

  sub_1C87A5614(a1);
  v5 = v4;

  return v5;
}

uint64_t sub_1C888A994()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C888A9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v179 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87E0, &unk_1C8BF48C0);
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v161 - v7);
  v9 = sub_1C8BD47AC();
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v183 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v16 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_96();
  v184 = v17;
  OUTLINED_FUNCTION_86();
  v18 = sub_1C8BD499C();
  v180 = OUTLINED_FUNCTION_13_1(v18);
  v181 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v180);
  OUTLINED_FUNCTION_9_0();
  v174 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
  v24 = OUTLINED_FUNCTION_80(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_10_0();
  v171 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_123();
  v169 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_123();
  v170 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_96();
  v173 = v36;
  OUTLINED_FUNCTION_86();
  v37 = sub_1C8BD483C();
  v38 = OUTLINED_FUNCTION_13_1(v37);
  v175 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_33();
  v44 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
  v46 = OUTLINED_FUNCTION_80(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  v50 = *(matched + 24);
  v51 = *(matched + 28);
  v182 = matched;
  v52 = (a1 + v50);
  v53 = *v52;
  v177 = *(v52 + 4);
  v178 = v53;
  OUTLINED_FUNCTION_50_5();
  sub_1C8778810();
  v54 = OUTLINED_FUNCTION_155_0();
  v172 = v37;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, v55, v37);
  v57 = OUTLINED_FUNCTION_251_0();
  sub_1C8778ED8(v57, v58, &unk_1C8BE6E30);
  v59 = 0;
  v176 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    Siri_Nlu_External_MatchInfo.matchScore.getter();
    sub_1C8BD480C();
    v61 = v60;
    (*(v175 + 8))(v44, v172);
    v59 = v61;
  }

  v62 = v182[8];
  v63 = v173;
  OUTLINED_FUNCTION_25_1();
  sub_1C8778810();
  v64 = OUTLINED_FUNCTION_199();
  v65 = v180;
  v67 = __swift_getEnumTagSinglePayload(v64, v66, v180);
  v68 = OUTLINED_FUNCTION_218();
  sub_1C8778ED8(v68, v69, &unk_1C8BF9F90);
  LODWORD(v173) = v67;
  v175 = v59;
  if (v67 == 1)
  {
    v172 = 0;
    v70 = v174;
  }

  else
  {
    v70 = v174;
    Siri_Nlu_External_MatchInfo.maxTokenCount.getter();
    sub_1C8BD484C();
    v71 = OUTLINED_FUNCTION_9_12();
    v72(v71);
    v172 = v63;
  }

  v73 = v182[9];
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v77 = a1;
  v78 = __swift_getEnumTagSinglePayload(v74, v75, v76);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v79, v80, v81);
  LODWORD(v174) = v78;
  if (v78 == 1)
  {
    v170 = 0;
  }

  else
  {
    Siri_Nlu_External_MatchInfo.matchedTokenCount.getter();
    sub_1C8BD484C();
    v82 = OUTLINED_FUNCTION_9_12();
    v83(v82);
    v170 = &qword_1EC2B6948;
  }

  v84 = v77;
  v85 = v77 + v182[10];
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v89 = __swift_getEnumTagSinglePayload(v86, v87, v88);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v90, v91, v92);
  v168 = v89;
  if (v89 == 1)
  {
    v167 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_60_2();
    Siri_Nlu_External_MatchInfo.maxStopWordCount.getter();
    sub_1C8BD484C();
    v93 = OUTLINED_FUNCTION_9_12();
    v94(v93);
    v167 = &qword_1EC2B6948;
  }

  v95 = v84 + v182[11];
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v99 = __swift_getEnumTagSinglePayload(v96, v97, v98);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v100, v101, v102);
  v164 = v99;
  if (v99 == 1)
  {
    v165 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_60_2();
    Siri_Nlu_External_MatchInfo.matchedStopWordCount.getter();
    sub_1C8BD484C();
    v103 = OUTLINED_FUNCTION_9_12();
    v104(v103);
    v165 = &qword_1EC2B6948;
  }

  v105 = v84 + v182[12];
  OUTLINED_FUNCTION_52_2(&v194);
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v109 = __swift_getEnumTagSinglePayload(v106, v107, v108);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v110, v111, v112);
  v163 = v109;
  if (v109 == 1)
  {
    v166 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_60_2();
    Siri_Nlu_External_MatchInfo.editDistance.getter();
    sub_1C8BD484C();
    v113 = OUTLINED_FUNCTION_9_12();
    v114(v113);
    v166 = &qword_1EC2B6948;
  }

  v115 = v182[13];
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v119 = v84;
  v120 = __swift_getEnumTagSinglePayload(v116, v117, v118);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v121, v122, v123);
  v162 = v120;
  if (v120 == 1)
  {
    v169 = 0;
  }

  else
  {
    Siri_Nlu_External_MatchInfo.maxAliasCount.getter();
    sub_1C8BD484C();
    v124 = OUTLINED_FUNCTION_9_12();
    v125(v124);
    v169 = &qword_1EC2B6948;
  }

  v126 = v119;
  v127 = v182[14];
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v131 = __swift_getEnumTagSinglePayload(v128, v129, v130);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v132, v133, v134);
  v161 = v131;
  if (v131 == 1)
  {
    v171 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_60_2();
    Siri_Nlu_External_MatchInfo.matchedAliasCount.getter();
    v135 = sub_1C8BD484C();
    (*(v181 + 1))(v70, v65);
    v171 = v135;
  }

  v136 = *(*v126 + 16);
  if (v136)
  {
    v137 = (*v126 + 32);
    v138 = (v183 + 32);
    v139 = (v183 + 16);
    v180 = v183 + 8;
    v140 = MEMORY[0x1E69E7CC0];
    v181 = v16;
    v182 = v8;
    do
    {
      v141 = *v137++;
      sub_1C8BD478C();
      v142 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_76(v142, v143, v9);
      if (v144)
      {
        sub_1C8778ED8(v8, &qword_1EC2B87E0, &unk_1C8BF48C0);
      }

      else
      {
        v145 = *v138;
        v146 = v184;
        (*v138)(v184, v8, v9);
        (*v139)(v16, v146, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v154 = *(v140 + 16);
          v155 = OUTLINED_FUNCTION_13_0();
          v140 = sub_1C88DB154(v155, v156, v157, v140);
        }

        v149 = *(v140 + 16);
        v148 = *(v140 + 24);
        if (v149 >= v148 >> 1)
        {
          v158 = OUTLINED_FUNCTION_38_7(v148);
          v140 = sub_1C88DB154(v158, v149 + 1, 1, v140);
        }

        v150 = v183;
        (*(v183 + 8))(v184, v9);
        *(v140 + 16) = v149 + 1;
        v151 = *(v150 + 80);
        OUTLINED_FUNCTION_32();
        v153 = v140 + v152 + *(v150 + 72) * v149;
        v16 = v181;
        v145(v153, v181, v9);
        v8 = v182;
      }

      --v136;
    }

    while (v136);
  }

  OUTLINED_FUNCTION_77_1(&v193);
  if (v144)
  {
    v159 = 1;
  }

  else
  {
    v159 = 0;
  }

  v192 = v176 == 1;
  v191 = v173 == 1;
  v190 = v174 == 1;
  v189 = v168 == 1;
  v188 = v164 == 1;
  v187 = v163 == 1;
  v186 = v162 == 1;
  v185 = v159;
  return sub_1C8BD472C();
}

uint64_t sub_1C888B410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v429 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87C0, &qword_1C8BF48A0);
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_96();
  v10 = OUTLINED_FUNCTION_63_0(v9);
  v427 = type metadata accessor for Siri_Nlu_External_PayloadAttachmentInfo(v10);
  v11 = OUTLINED_FUNCTION_21(v427);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6960, &qword_1C8BE8DB8);
  v16 = OUTLINED_FUNCTION_80(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v20);
  v21 = sub_1C8BD432C();
  v22 = OUTLINED_FUNCTION_0_15(v21, v481);
  v458 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_0();
  v27 = OUTLINED_FUNCTION_63_0(v26);
  v28 = type metadata accessor for Siri_Nlu_External_AsrAlternative(v27);
  v29 = OUTLINED_FUNCTION_0_15(v28, v485);
  v416 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v33);
  v34 = sub_1C8BD483C();
  v35 = OUTLINED_FUNCTION_0_15(v34, v487);
  v430 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
  v42 = OUTLINED_FUNCTION_80(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v48);
  v49 = sub_1C8BD487C();
  v50 = OUTLINED_FUNCTION_0_15(v49, v482);
  v445 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6968, &unk_1C8BE8DC0);
  v56 = OUTLINED_FUNCTION_80(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v60);
  v61 = sub_1C8BD40AC();
  v62 = OUTLINED_FUNCTION_0_15(v61, v477);
  v456 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_9_0();
  v67 = OUTLINED_FUNCTION_63_0(v66);
  v68 = type metadata accessor for Siri_Nlu_External_SpanProperty(v67);
  v69 = OUTLINED_FUNCTION_0_15(v68, v474);
  v444 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_9_0();
  v74 = OUTLINED_FUNCTION_63_0(v73);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v74);
  v75 = OUTLINED_FUNCTION_21(matched);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6958, &qword_1C8BE8DB0);
  v80 = OUTLINED_FUNCTION_80(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v84);
  v85 = sub_1C8BD499C();
  v86 = OUTLINED_FUNCTION_0_15(v85, v486);
  v463 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
  v93 = OUTLINED_FUNCTION_80(v92);
  v95 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v99);
  v100 = sub_1C8BD493C();
  v101 = OUTLINED_FUNCTION_13_1(v100);
  v464 = v102;
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v108);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v110 = OUTLINED_FUNCTION_80(v109);
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  v118 = MEMORY[0x1EEE9AC00](v117);
  v119 = MEMORY[0x1EEE9AC00](v118);
  v121 = v414 - v120;
  MEMORY[0x1EEE9AC00](v119);
  v123 = v414 - v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87C8, &qword_1C8BF48A8);
  v125 = OUTLINED_FUNCTION_80(v124);
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v129);
  v131 = v414 - v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87D0, &unk_1C8BF48B0);
  v133 = OUTLINED_FUNCTION_80(v132);
  v135 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v137);
  v139 = v414 - v138;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87D8, &qword_1C8BF9FE0);
  v141 = OUTLINED_FUNCTION_80(v140);
  v143 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  v145 = MEMORY[0x1EEE9AC00](v144);
  MEMORY[0x1EEE9AC00](v145);
  v147 = v414 - v146;
  sub_1C8BD40EC();
  v432 = v147;
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v151);
  sub_1C8BD47BC();
  v433 = v139;
  OUTLINED_FUNCTION_5();
  v437 = v152;
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v152);
  sub_1C8BD442C();
  v426 = v131;
  OUTLINED_FUNCTION_5();
  v415 = v156;
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v156);
  v160 = *(a1 + *(type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0) + 20));
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v161 = &qword_1C8BF5070;
  sub_1C8778810();
  v162 = OUTLINED_FUNCTION_155_0();
  v460 = v100;
  LODWORD(v139) = __swift_getEnumTagSinglePayload(v162, v163, v100);
  sub_1C8778ED8(v123, &qword_1EC2B6110, &qword_1C8BF5070);
  v164 = 0;
  v165 = 0;
  v434 = v160;
  if (v139 != 1)
  {
    sub_1C8778810();
    v166 = OUTLINED_FUNCTION_199();
    v167 = v460;
    OUTLINED_FUNCTION_76(v166, v168, v460);
    if (v169)
    {
      OUTLINED_FUNCTION_49_4(v450);
      sub_1C8BD492C();
      v170 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_76(v170, v171, v167);
      v172 = v464;
      if (!v169)
      {
        sub_1C8778ED8(v121, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      v172 = v464;
      v161 = v425;
      (*(v464 + 32))(v425, v121, v167);
    }

    v164 = sub_1C8BD490C();
    v165 = v173;
    (*(v172 + 8))(v161, v167);
    v160 = v434;
  }

  v425 = v164;
  v174 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  if (*(v160 + v174) != 7)
  {
    sub_1C8BD40CC();
    OUTLINED_FUNCTION_50_5();
    sub_1C8778ED8(v175, v176, v177);
    sub_1C87791EC();
  }

  v178 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__label;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  sub_1C8778810();
  v179 = OUTLINED_FUNCTION_195_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v179, v180, v460);
  OUTLINED_FUNCTION_50_5();
  sub_1C8778ED8(v182, v183, v184);
  v185 = 0;
  v186 = 0;
  v169 = EnumTagSinglePayload == 1;
  v187 = matched;
  v188 = v464;
  if (!v169)
  {
    OUTLINED_FUNCTION_238(&v448);
    sub_1C8778810();
    v189 = OUTLINED_FUNCTION_155_0();
    v190 = v460;
    OUTLINED_FUNCTION_76(v189, v191, v460);
    if (v169)
    {
      OUTLINED_FUNCTION_55_4(&v449);
      sub_1C8BD492C();
      v192 = OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_76(v192, v193, v190);
      if (!v169)
      {
        sub_1C8778ED8(0, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      v194 = *(v188 + 32);
      v178 = v424;
      OUTLINED_FUNCTION_62_3();
      v195();
    }

    v185 = sub_1C8BD490C();
    v186 = v196;
    (*(v188 + 8))(v178, v190);
  }

  v424 = v165;
  v422 = v186;
  v423 = v185;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v197 = v447;
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  v198 = v468;
  v199 = __swift_getEnumTagSinglePayload(v197, 1, v468);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v200, v201, v202);
  v203 = 0;
  v421 = v199;
  v169 = v199 == 1;
  v204 = v198;
  v205 = v469;
  if (!v169)
  {
    OUTLINED_FUNCTION_192(&v444);
    sub_1C8778810();
    v206 = OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_76(v206, v207, v204);
    if (v169)
    {
      OUTLINED_FUNCTION_35_4(&v445);
      sub_1C8BD486C();
      v208 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_76(v208, v209, v204);
      if (!v169)
      {
        sub_1C8778ED8(&qword_1EC2B6948, &qword_1EC2B6948, &unk_1C8BF9F90);
      }
    }

    else
    {
      v210 = *(v463 + 32);
      v211 = OUTLINED_FUNCTION_44_7();
      v212(v211);
    }

    v213 = sub_1C8BD484C();
    (*(v463 + 8))(&unk_1C8BF9F90, v204);
    v203 = v213;
  }

  v420 = v203;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_257(v475);
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  v214 = OUTLINED_FUNCTION_213();
  v216 = __swift_getEnumTagSinglePayload(v214, v215, v204);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v217, v218, v219);
  v220 = 0;
  v419 = v216;
  if (v216 != 1)
  {
    OUTLINED_FUNCTION_192(&v458);
    sub_1C8778810();
    v221 = OUTLINED_FUNCTION_199();
    v222 = v468;
    OUTLINED_FUNCTION_76(v221, v223, v468);
    if (v169)
    {
      OUTLINED_FUNCTION_35_4(&matched);
      sub_1C8BD486C();
      v224 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_76(v224, v225, v222);
      if (!v169)
      {
        sub_1C8778ED8(&qword_1EC2B6948, &qword_1EC2B6948, &unk_1C8BF9F90);
      }
    }

    else
    {
      v226 = *(v463 + 32);
      v227 = OUTLINED_FUNCTION_44_7();
      v228(v227);
    }

    v229 = sub_1C8BD484C();
    (*(v463 + 8))(&unk_1C8BF9F90, v222);
    v220 = v229;
  }

  v418 = v220;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v230 = v449;
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  v231 = __swift_getEnumTagSinglePayload(v230, 1, v460);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v232, v233, v234);
  v235 = 0;
  v431 = 0;
  if (v231 != 1)
  {
    OUTLINED_FUNCTION_238(v443);
    sub_1C8778810();
    v236 = OUTLINED_FUNCTION_155_0();
    v237 = v460;
    OUTLINED_FUNCTION_76(v236, v238, v460);
    if (v169)
    {
      sub_1C8BD492C();
      v239 = OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_76(v239, v240, v237);
      if (!v169)
      {
        sub_1C8778ED8(0, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      (*(v188 + 32))(v436, 0, v237);
    }

    v235 = sub_1C8BD490C();
    v431 = v241;
    v242 = *(v188 + 8);
    v243 = OUTLINED_FUNCTION_196_0();
    v244(v243);
  }

  v417 = v235;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v245 = &qword_1C8BE8DB0;
  v246 = v461;
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  v247 = __swift_getEnumTagSinglePayload(v246, 1, v187);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v248, v249, v250);
  if (v247 != 1)
  {
    v251 = v439;
    sub_1C8778810();
    v252 = OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_76(v252, v253, v187);
    if (v169)
    {
      v245 = v440;
      *v440 = MEMORY[0x1E69E7CC0];
      v254 = &v245[v187[5]];
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v255 = &v245[v187[6]];
      *v255 = 0;
      v255[4] = 1;
      v256 = OUTLINED_FUNCTION_14_8(v187[7]);
      __swift_storeEnumTagSinglePayload(v256, v257, v258, v205);
      v259 = OUTLINED_FUNCTION_14_8(v187[8]);
      v260 = v468;
      __swift_storeEnumTagSinglePayload(v259, v261, v262, v468);
      v263 = OUTLINED_FUNCTION_14_8(v187[9]);
      __swift_storeEnumTagSinglePayload(v263, v264, v265, v260);
      v266 = OUTLINED_FUNCTION_14_8(v187[10]);
      __swift_storeEnumTagSinglePayload(v266, v267, v268, v260);
      v269 = OUTLINED_FUNCTION_14_8(v187[11]);
      __swift_storeEnumTagSinglePayload(v269, v270, v271, v260);
      v272 = OUTLINED_FUNCTION_14_8(v187[12]);
      __swift_storeEnumTagSinglePayload(v272, v273, v274, v260);
      v275 = OUTLINED_FUNCTION_14_8(v187[13]);
      __swift_storeEnumTagSinglePayload(v275, v276, v277, v260);
      v278 = OUTLINED_FUNCTION_14_8(v187[14]);
      __swift_storeEnumTagSinglePayload(v278, v279, v280, v260);
      v281 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_76(v281, v282, v187);
      v283 = v438;
      v284 = v437;
      if (!v169)
      {
        sub_1C8778ED8(v251, &qword_1EC2B6958, &qword_1C8BE8DB0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_238(&v467);
      sub_1C87A8E58();
      v283 = v438;
      v284 = v437;
    }

    sub_1C888A9CC(v245, v283);
    sub_1C87A8B2C(v245, type metadata accessor for Siri_Nlu_External_MatchInfo);
    v247 = v433;
    OUTLINED_FUNCTION_25_1();
    sub_1C8778ED8(v285, v286, v287);
    __swift_storeEnumTagSinglePayload(v283, 0, 1, v284);
    OUTLINED_FUNCTION_34_4();
    sub_1C87791EC();
  }

  v288 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v289 = *(*(v160 + v288) + 16);
  if (v289)
  {
    v290 = v205;
    OUTLINED_FUNCTION_17_3();
    v293 = v291 + v292;
    OUTLINED_FUNCTION_69_2();
    v295 = v294[7];
    v296 = v294[8];
    v297 = v294[6];
    v446 = v470 + v294[5];
    v437 = v445 + 32;
    OUTLINED_FUNCTION_68_2(v445 + 8);
    v436 = v298;
    v445 = *(v299 + 72);
    v439 = v300 + 8;
    v435 = v188 + 32;
    v438 = v188 + 8;
    v444 = v456 + 32;
    v414[1] = v301;

    v302 = v293;
    v303 = MEMORY[0x1E69E7CC0];
    v247 = v457;
    v449 = v295;
    v448 = v296;
    v447 = v297;
    do
    {
      v464 = v289;
      v461 = v302;
      sub_1C87A88B8();
      OUTLINED_FUNCTION_192(v478);
      sub_1C8778810();
      v304 = OUTLINED_FUNCTION_199();
      v306 = __swift_getEnumTagSinglePayload(v304, v305, v247);
      sub_1C8778ED8(v289, &qword_1EC2B6968, &unk_1C8BE8DC0);
      LODWORD(v463) = v306;
      v468 = v303;
      if (v306 == 1)
      {
        matched = 0;
        OUTLINED_FUNCTION_72_3();
      }

      else
      {
        OUTLINED_FUNCTION_192(&v470);
        sub_1C8778810();
        v307 = OUTLINED_FUNCTION_199();
        OUTLINED_FUNCTION_76(v307, v308, v247);
        if (v169)
        {
          OUTLINED_FUNCTION_35_4(v471);
          sub_1C8BD486C();
          v309 = OUTLINED_FUNCTION_199();
          OUTLINED_FUNCTION_76(v309, v310, v247);
          if (!v169)
          {
            sub_1C8778ED8(v289, &qword_1EC2B6968, &unk_1C8BE8DC0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9(&v464);
          v311 = OUTLINED_FUNCTION_44_7();
          v312(v311);
        }

        v289 = sub_1C8BD484C();
        v313 = OUTLINED_FUNCTION_18_11(&v467);
        v314(v313, v247);
        matched = v289;
        OUTLINED_FUNCTION_72_3();
      }

      OUTLINED_FUNCTION_231(v479);
      sub_1C8778810();
      v315 = OUTLINED_FUNCTION_109();
      v317 = __swift_getEnumTagSinglePayload(v315, v316, v290);
      sub_1C8778ED8(v306, &qword_1EC2B6198, &unk_1C8BE6E30);
      if (v317 != 1)
      {
        sub_1C8778810();
        v318 = OUTLINED_FUNCTION_199();
        OUTLINED_FUNCTION_76(v318, v319, v290);
        if (v169)
        {
          sub_1C8BD482C();
          v320 = OUTLINED_FUNCTION_199();
          OUTLINED_FUNCTION_76(v320, v321, v290);
          if (!v169)
          {
            sub_1C8778ED8(v289, &qword_1EC2B6198, &unk_1C8BE6E30);
          }
        }

        else
        {
          v322 = OUTLINED_FUNCTION_18_11(&v463);
          v323(v322, v289, v290);
        }

        sub_1C8BD480C();
        v324 = OUTLINED_FUNCTION_18_11(&v466);
        v325(v324, v290);
      }

      OUTLINED_FUNCTION_231(v476);
      sub_1C8778810();
      v326 = OUTLINED_FUNCTION_109();
      v327 = v460;
      __swift_getEnumTagSinglePayload(v326, v328, v460);
      v329 = OUTLINED_FUNCTION_67_3();
      sub_1C8778ED8(v329, &qword_1EC2B6110, &qword_1C8BF5070);
      if (v289 != 1)
      {
        OUTLINED_FUNCTION_192(&v468);
        sub_1C8778810();
        v330 = OUTLINED_FUNCTION_199();
        OUTLINED_FUNCTION_76(v330, v331, v327);
        if (v169)
        {
          v334 = v442;
          sub_1C8BD492C();
          v332 = OUTLINED_FUNCTION_199();
          OUTLINED_FUNCTION_76(v332, v333, v327);
          v336 = v327;
          if (!v169)
          {
            sub_1C8778ED8(v289, &qword_1EC2B6110, &qword_1C8BF5070);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9(&matched);
          v334 = v442;
          OUTLINED_FUNCTION_25_1();
          v335();
          v336 = v327;
        }

        sub_1C8BD490C();
        OUTLINED_FUNCTION_22_9(&v465);
        v337(v334, v336);
      }

      OUTLINED_FUNCTION_69_2();
      if (v338[1])
      {
        v339 = *v338;
        v340 = v338[1];
      }

      OUTLINED_FUNCTION_77_1(v483);

      v473[16] = v317 == 1;
      sub_1C8BD407C();
      sub_1C87A8B2C(v470, type metadata accessor for Siri_Nlu_External_SpanProperty);
      v303 = v468;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v345 = *(v303 + 16);
        v346 = OUTLINED_FUNCTION_13_0();
        v303 = sub_1C88DB1CC(v346, v347, v348, v303);
      }

      v290 = v469;
      v247 = v457;
      v246 = v448;
      v342 = *(v303 + 16);
      v341 = *(v303 + 24);
      if (v342 >= v341 >> 1)
      {
        v349 = OUTLINED_FUNCTION_38_7(v341);
        v303 = sub_1C88DB1CC(v349, v342 + 1, 1, v303);
      }

      *(v303 + 16) = v342 + 1;
      OUTLINED_FUNCTION_17_3();
      (*(v344 + 32))(v303 + v343 + *(v344 + 72) * v342, v465, v451);
      v302 = v461 + v445;
      v289 = v464 - 1;
    }

    while (v464 != 1);

    v205 = v290;
  }

  else
  {
    v303 = MEMORY[0x1E69E7CC0];
  }

  v468 = v303;
  v350 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__alternatives;
  v351 = v434;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v352 = *(*(v351 + v350) + 16);
  v353 = v459;
  if (v352)
  {
    OUTLINED_FUNCTION_17_3();
    v356 = v354 + v355;
    OUTLINED_FUNCTION_68_2(*(v357 + 72));
    v463 = v358;
    v464 = v359 + 8;
    v465 = v458 + 32;
    matched = v360;

    v361 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C87A88B8();
      v362 = *(v466 + 24);
      OUTLINED_FUNCTION_82_4(v480);
      v363 = OUTLINED_FUNCTION_195_0();
      v365 = __swift_getEnumTagSinglePayload(v363, v364, v205);
      sub_1C8778ED8(v247, &qword_1EC2B6198, &unk_1C8BE6E30);
      if (v365 != 1)
      {
        OUTLINED_FUNCTION_82_4(v473);
        v366 = OUTLINED_FUNCTION_195_0();
        OUTLINED_FUNCTION_76(v366, v367, v205);
        if (v169)
        {
          OUTLINED_FUNCTION_35_4(v472);
          sub_1C8BD482C();
          v368 = OUTLINED_FUNCTION_195_0();
          OUTLINED_FUNCTION_76(v368, v369, v205);
          if (!v169)
          {
            sub_1C8778ED8(v443[1], &qword_1EC2B6198, &unk_1C8BE6E30);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9(v483);
          v370(v443[0], v247, v205);
        }

        sub_1C8BD480C();
        v371 = OUTLINED_FUNCTION_18_11(v484);
        v372(v371, v205);
      }

      v373 = (v353 + *(v466 + 20));
      if (v373[1])
      {
        v374 = *v373;
        v375 = v373[1];
      }

      v472[0] = v365 == 1;
      sub_1C8BD430C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v379 = *(v361 + 16);
        v380 = OUTLINED_FUNCTION_13_0();
        v361 = sub_1C88DB190(v380, v381, v382, v361);
      }

      v353 = v459;
      v205 = v469;
      v246 = *(v361 + 16);
      v376 = *(v361 + 24);
      if (v246 >= v376 >> 1)
      {
        v383 = OUTLINED_FUNCTION_38_7(v376);
        v361 = sub_1C88DB190(v383, v246 + 1, 1, v361);
      }

      sub_1C87A8B2C(v353, type metadata accessor for Siri_Nlu_External_AsrAlternative);
      *(v361 + 16) = v246 + 1;
      OUTLINED_FUNCTION_17_3();
      (*(v378 + 32))(v361 + v377 + *(v378 + 72) * v246, v467, v455);
      v356 += v470;
      --v352;
    }

    while (v352);
  }

  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_257(v453);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_79_0(v454);
  v387 = __swift_getEnumTagSinglePayload(v384, v385, v386);
  OUTLINED_FUNCTION_62_3();
  sub_1C8778ED8(v388, v389, v390);
  v391 = v428;
  v392 = v426;
  if (v387 != 1)
  {
    OUTLINED_FUNCTION_238(v441);
    sub_1C8778810();
    v393 = OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_76(v393, v394, v246);
    if (v169)
    {
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      *(v391 + *(v246 + 20)) = 2;
      v395 = OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_76(v395, v396, v246);
      if (!v169)
      {
        sub_1C8778ED8(&qword_1EC2B6960, &qword_1EC2B6960, &qword_1C8BE8DB8);
      }
    }

    else
    {
      sub_1C87A8E58();
    }

    sub_1C8BD43FC();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v397, v398, v399, v400);
    if (*(v391 + *(v246 + 20)) != 2)
    {
      OUTLINED_FUNCTION_56_2(&v438);
      sub_1C8BD43DC();
      OUTLINED_FUNCTION_62_3();
      sub_1C8778ED8(v401, v402, v403);
      OUTLINED_FUNCTION_78_1();
      sub_1C87791EC();
    }

    OUTLINED_FUNCTION_78_1();
    sub_1C8778810();
    OUTLINED_FUNCTION_56_2(&v440);
    sub_1C8BD440C();
    OUTLINED_FUNCTION_62_3();
    sub_1C8778ED8(v404, v405, v406);
    sub_1C87A8B2C(v391, type metadata accessor for Siri_Nlu_External_PayloadAttachmentInfo);
    OUTLINED_FUNCTION_62_3();
    sub_1C8778ED8(v407, v408, v409);
    __swift_storeEnumTagSinglePayload(v246, 0, 1, v415);
    OUTLINED_FUNCTION_78_1();
    sub_1C87791EC();
  }

  OUTLINED_FUNCTION_77_1(&v444);
  v410 = v169;
  OUTLINED_FUNCTION_77_1(&v446 + 4);
  v411 = v432;
  OUTLINED_FUNCTION_231(&v451);
  sub_1C8778810();
  v412 = v433;
  OUTLINED_FUNCTION_238(v452);
  sub_1C8778810();
  sub_1C8778810();
  v471[4] = v410;
  sub_1C8BD411C();
  sub_1C8778ED8(v392, &qword_1EC2B87C8, &qword_1C8BF48A8);
  sub_1C8778ED8(v412, &qword_1EC2B87D0, &unk_1C8BF48B0);
  return sub_1C8778ED8(v411, &qword_1EC2B87D8, &qword_1C8BF9FE0);
}