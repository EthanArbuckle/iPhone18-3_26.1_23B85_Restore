uint64_t NLContextUpdate.applicationContextObjects.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t NLContextUpdate.conversationStateAttachments.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t NLContextUpdate.dictationPromptAbortValues.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t NLContextUpdate.dictationPromptTargetDomain.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t NLContextUpdate.dictationPromptTargetDomain.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t NLContextUpdate.dictationPromptTargetNodes.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t NLContextUpdate.disambiguationPromptAbortValues.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t NLContextUpdate.disambiguationPromptAmbiguityId.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t NLContextUpdate.disambiguationPromptAmbiguityId.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t NLContextUpdate.disambiguationPromptResponseTargets.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t NLContextUpdate.disambiguationPromptTargetDomain.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t NLContextUpdate.disambiguationPromptTargetDomain.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t NLContextUpdate.displayHints.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t NLContextUpdate.nlInput.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_33_1();
}

void *NLContextUpdate.siriKitMetrics.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void *NLContextUpdate.systemDialogActOutput.getter()
{
  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

uint64_t NLContextUpdate.weightedPromptAbortValues.setter(uint64_t a1)
{
  v3 = *(v1 + 152);

  *(v1 + 152) = a1;
  return result;
}

uint64_t NLContextUpdate.weightedPromptResponseTargets.setter(uint64_t a1)
{
  v3 = *(v1 + 160);

  *(v1 + 160) = a1;
  return result;
}

uint64_t NLContextUpdate.weightedPromptResponseOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 168);

  *(v1 + 168) = a1;
  return result;
}

uint64_t NLContextUpdate.weightedPromptTargetDomain.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t NLContextUpdate.systemDialogActs.setter(uint64_t a1)
{
  v3 = *(v1 + 208);

  *(v1 + 208) = a1;
  return result;
}

uint64_t NLContextUpdate.nluSystemDialogActs.setter(uint64_t a1)
{
  v3 = *(v1 + 216);

  *(v1 + 216) = a1;
  return result;
}

uint64_t NLContextUpdate.rrEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 224);

  *(v1 + 224) = a1;
  return result;
}

uint64_t NLContextUpdate.newTasks.setter(uint64_t a1)
{
  v3 = *(v1 + 232);

  *(v1 + 232) = a1;
  return result;
}

uint64_t NLContextUpdate.completedTasks.setter(uint64_t a1)
{
  v3 = *(v1 + 240);

  *(v1 + 240) = a1;
  return result;
}

__n128 NLContextUpdate.undoDirectInvocation.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = v1[33];
  sub_1DCBB5B64(v1[31], v1[32]);
  result = v5;
  *(v1 + 31) = v5;
  v1[33] = v2;
  return result;
}

uint64_t NLContextUpdate.currentDomainName.getter()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t NLContextUpdate.currentDomainName.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 280);

  *(v1 + 272) = v2;
  *(v1 + 280) = v0;
  return result;
}

uint64_t NLContextUpdate.pegasusConversationContext.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = OUTLINED_FUNCTION_3_79();
  sub_1DCB59A1C(v0 + *(v7 + 128), v1);
  v8 = sub_1DD0DD72C();
  if (__swift_getEnumTagSinglePayload(v1, 1, v8) == 1)
  {
    sub_1DCB16D50(v1, &unk_1ECCA73E0, &unk_1DD0F8320);
  }

  else
  {
    MEMORY[0x1E12A5D70]();
    (*(*(v8 - 8) + 8))(v1, v8);
  }

  return OUTLINED_FUNCTION_131();
}

void (*NLContextUpdate.pegasusConversationContext.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  OUTLINED_FUNCTION_20_0(v3);
  a1[3] = __swift_coroFrameAllocStub(*(v4 + 64));
  *a1 = NLContextUpdate.pegasusConversationContext.getter();
  a1[1] = v5;
  return sub_1DCE02794;
}

void sub_1DCE02794(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    v7 = OUTLINED_FUNCTION_131();
    sub_1DCC91E6C(v7, v8);
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_2_50();
    sub_1DD0DD70C();
    v9 = sub_1DD0DD72C();
    v12 = OUTLINED_FUNCTION_21_25(v4, v10, v11, v9);
    sub_1DCE01748(v4, v5 + *(v12 + 128));
    sub_1DCB2C520(*a1, a1[1]);
  }

  else
  {
    v13 = a1[3];
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_2_50();
    sub_1DD0DD70C();
    v14 = sub_1DD0DD72C();
    v17 = OUTLINED_FUNCTION_21_25(v4, v15, v16, v14);
    sub_1DCE01748(v4, v5 + *(v17 + 128));
  }

  free(v4);
}

uint64_t NLContextUpdate.pommesContext.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_22_26() + 128);

  return sub_1DCE01748(v0, v2);
}

uint64_t NLContextUpdate.isClientOnly.setter(char a1)
{
  result = type metadata accessor for NLContextUpdate();
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t NLContextUpdate.contextUpdateScope.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NLContextUpdate();
  *(v1 + *(result + 136)) = v2;
  return result;
}

uint64_t NLContextUpdate.restoreSessionForRequestId.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = (v1 + *(type metadata accessor for NLContextUpdate() + 140));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

__n128 DisplayHint.idValue.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  sub_1DCB22A50(*v1, v1[1]);
  result = *a1;
  v10 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v10;
  v1[4] = v3;
  v1[5] = v4;
  return result;
}

__n128 DisplayHint.displayValue.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  sub_1DCB22A50(v1[6], v1[7]);
  result = *a1;
  v10 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v10;
  v1[10] = v3;
  v1[11] = v4;
  return result;
}

void __swiftcall DisplayHint.init()(SiriKitFlow::DisplayHint *__return_ptr retstr)
{
  retstr->idValue.value.string = xmmword_1DD0E3FF0;
  retstr->idValue.value.label = 0u;
  retstr->idValue.value.nodeClass = 0u;
  retstr->displayValue.value.string.value._countAndFlagsBits = 0;
  retstr->displayValue.value.string.value._object = 1;
  retstr->displayValue.value.label = 0u;
  retstr->displayValue.value.nodeClass = 0u;
}

uint64_t sub_1DCE02B44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C61566469 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5679616C70736964 && a2 == 0xEC00000065756C61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCE02C10(char a1)
{
  if (a1)
  {
    return 0x5679616C70736964;
  }

  else
  {
    return 0x65756C61566469;
  }
}

uint64_t sub_1DCE02C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE02B44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE02C80(uint64_t a1)
{
  v2 = sub_1DCE03AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE02CBC(uint64_t a1)
{
  v2 = sub_1DCE03AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DisplayHint.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA73F0, &qword_1DD0F8330);
  OUTLINED_FUNCTION_9(v22);
  v23 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_4_1();
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v13 = v0[4];
  v12 = v0[5];
  v19 = v0[6];
  v20 = v0[3];
  v17 = v0[8];
  v18 = v0[7];
  v15 = v0[10];
  v16 = v0[9];
  v14 = v0[11];
  v21 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCB2502C(v9, v10);
  sub_1DCE03AB4();
  sub_1DD0DF24C();
  sub_1DCE03B08();
  OUTLINED_FUNCTION_15_45();
  sub_1DD0DEFAC();
  OUTLINED_FUNCTION_26_22();
  if (!v12)
  {
    sub_1DCB2502C(v19, v18);
    OUTLINED_FUNCTION_15_45();
    sub_1DD0DEFAC();
    OUTLINED_FUNCTION_26_22();
  }

  (*(v23 + 8))(v1, v22);
  OUTLINED_FUNCTION_19_19();
}

void DisplayHint.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7408, &qword_1DD0F8338);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCE03AB4();
  sub_1DD0DF23C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v37 = 0;
    v38 = 1;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = xmmword_1DD0E3FF0;
    v44 = 0u;
    v45 = 0u;
  }

  else
  {
    sub_1DCE03B5C();
    OUTLINED_FUNCTION_20_22();
    v25 = v4;
    v12 = v37;
    v11 = v38;
    v46 = v39;
    v28 = v40;
    v27 = v41;
    v26 = v42;
    v13 = OUTLINED_FUNCTION_0_68();
    sub_1DCB22A50(v13, v14);
    v30 = 1;
    OUTLINED_FUNCTION_20_22();
    v15 = OUTLINED_FUNCTION_13_45();
    v16(v15);
    v17 = v32;
    v24 = v31;
    v23 = v34;
    v18 = v35;
    v19 = OUTLINED_FUNCTION_0_68();
    sub_1DCB22A50(v19, v20);
    v29[0] = v37;
    v29[1] = v38;
    v29[2] = v39;
    v29[3] = v40;
    v29[4] = v41;
    v29[5] = v42;
    v29[6] = v31;
    v29[7] = v32;
    v21 = v33;
    v29[8] = v33;
    v29[9] = v34;
    v22 = v36;
    v29[10] = v35;
    v29[11] = v36;
    memcpy(v25, v29, 0x60uLL);
    sub_1DCC089D8(v29, &v37);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    v37 = v12;
    v38 = v11;
    v39 = v46;
    v40 = v28;
    v41 = v27;
    v42 = v26;
    *&v43 = v24;
    *(&v43 + 1) = v17;
    *&v44 = v21;
    *(&v44 + 1) = v23;
    *&v45 = v18;
    *(&v45 + 1) = v22;
  }

  sub_1DCC08A34(&v37);
  OUTLINED_FUNCTION_19_19();
}

uint64_t SemanticValue.string.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SemanticValue.string.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SemanticValue.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SemanticValue.label.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SemanticValue.nodeClass.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SemanticValue.nodeClass.setter()
{
  OUTLINED_FUNCTION_60();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

void __swiftcall SemanticValue.init(string:label:)(SiriKitFlow::SemanticValue *__return_ptr retstr, Swift::String string, Swift::String label)
{
  object = label._object;
  countAndFlagsBits = label._countAndFlagsBits;
  v5 = string._object;
  v6 = string._countAndFlagsBits;
  sub_1DD0DEC1C();

  sub_1DCB598EC(1);
  v8 = sub_1DD0DE99C();
  v10 = v9;

  sub_1DCB594B0(1uLL);
  sub_1DCB59970();

  sub_1DD0DE11C();

  MEMORY[0x1E12A6780](v8, v10);

  retstr->string.value._countAndFlagsBits = v6;
  retstr->string.value._object = v5;
  retstr->label.value._countAndFlagsBits = countAndFlagsBits;
  retstr->label.value._object = object;
  retstr->nodeClass.value._countAndFlagsBits = 0xD000000000000012;
  retstr->nodeClass.value._object = 0x80000001DD113920;
}

void __swiftcall SemanticValue.init(string:label:nodeClass:)(SiriKitFlow::SemanticValue *__return_ptr retstr, Swift::String string, Swift::String label, Swift::String nodeClass)
{
  retstr->string.value = string;
  retstr->label.value = label;
  retstr->nodeClass.value = nodeClass;
}

uint64_t sub_1DCE034E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73616C4365646F6ELL && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD0DF0AC();

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

uint64_t sub_1DCE035F4(char a1)
{
  if (!a1)
  {
    return 0x676E69727473;
  }

  if (a1 == 1)
  {
    return 0x6C6562616CLL;
  }

  return 0x73616C4365646F6ELL;
}

uint64_t sub_1DCE03650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE034E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE03678(uint64_t a1)
{
  v2 = sub_1DCE03BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE036B4(uint64_t a1)
{
  v2 = sub_1DCE03BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SemanticValue.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7420, &qword_1DD0F8340);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_4_1();
  v12 = *v0;
  v13 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v15 = v0[5];
  v16 = v0[4];
  v14 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DCE03BB0();
  sub_1DD0DF24C();
  sub_1DD0DEF8C();
  if (!v1)
  {
    sub_1DD0DEF8C();
    sub_1DD0DEF8C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_19_19();
}

void SemanticValue.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7430, &unk_1DD0F8348);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - v12;
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCE03BB0();
  sub_1DD0DF23C();
  if (!v0)
  {
    v15 = OUTLINED_FUNCTION_19_29();
    v17 = v16;
    v29 = v15;
    v18 = OUTLINED_FUNCTION_19_29();
    v20 = v19;
    v28 = v18;
    v21 = OUTLINED_FUNCTION_19_29();
    v23 = v22;
    v24 = *(v7 + 8);
    v27 = v21;
    v24(v13, v5);
    v25 = v28;
    *v4 = v29;
    v4[1] = v17;
    v4[2] = v25;
    v4[3] = v20;
    v4[4] = v27;
    v4[5] = v23;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v2);

  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCE03AB4()
{
  result = qword_1ECCA73F8;
  if (!qword_1ECCA73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA73F8);
  }

  return result;
}

unint64_t sub_1DCE03B08()
{
  result = qword_1ECCA7400;
  if (!qword_1ECCA7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7400);
  }

  return result;
}

unint64_t sub_1DCE03B5C()
{
  result = qword_1ECCA7410;
  if (!qword_1ECCA7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7410);
  }

  return result;
}

unint64_t sub_1DCE03BB0()
{
  result = qword_1ECCA7428;
  if (!qword_1ECCA7428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7428);
  }

  return result;
}

uint64_t MachineUtteranceBuilder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

id static ConversationStateAttachmentUtils.makeAttachmentToClearSlotResolutionState<A>(intent:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7830]) init];
  v3 = [a1 backingStore];
  v4 = [v3 data];

  if (v4)
  {
    sub_1DD0DAF2C();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = [a1 typeName];
  v8 = v7;
  if (!v7)
  {
    sub_1DD0DDFBC();
    v8 = sub_1DD0DDF8C();
  }

  OUTLINED_FUNCTION_28_22(v7, sel_setTypeName_);

  if (v6 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_68();
    sub_1DCC91E80(v11, v12);
    sub_1DD0DAF0C();
    v13 = OUTLINED_FUNCTION_68();
    sub_1DCB2C520(v13, v14);
    v10 = sub_1DD0DDF8C();
  }

  OUTLINED_FUNCTION_28_22(v9, sel_setBase64EncodedIntent_);

  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  sub_1DD0DDE9C();
  v15 = sub_1DD0DDE4C();

  OUTLINED_FUNCTION_28_22(v16, sel_setSlotResolutionMap_);

  sub_1DCB10E5C(0, &qword_1EDE46250, 0x1E69C7838);
  v17 = sub_1DD0DE2DC();
  OUTLINED_FUNCTION_28_22(v17, sel_setStepResults_);
  v18 = OUTLINED_FUNCTION_68();
  sub_1DCB2C520(v18, v19);

  return v2;
}

SiriKitFlow::ContextUpdateScope_optional __swiftcall ContextUpdateScope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContextUpdateScope.rawValue.getter()
{
  v1 = 0x72657355656D6F68;
  if (*v0 != 1)
  {
    v1 = 0x6C61626F6C67;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x55746E6572727563;
  }
}

uint64_t sub_1DCE03F2C@<X0>(uint64_t *a1@<X8>)
{
  result = ContextUpdateScope.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DCE03F58()
{
  result = qword_1ECCA7438;
  if (!qword_1ECCA7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7438);
  }

  return result;
}

uint64_t assignWithCopy for NLContextUpdate(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v8 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v9 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v10 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v11 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v12 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v12;
  v13 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  v14 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  v15 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  v16 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v17 = *(a1 + 128);
  v18 = *(a2 + 128);
  *(a1 + 128) = v18;
  v19 = v18;

  *(a1 + 136) = *(a2 + 136);
  v20 = *(a1 + 144);
  v21 = *(a2 + 144);
  *(a1 + 144) = v21;
  v22 = v21;

  v23 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);

  v24 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);

  v25 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v26 = *(a1 + 192);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  v27 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);

  v28 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);

  v29 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);

  v30 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 232);

  v31 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);

  v32 = *(a2 + 256);
  if (*(a1 + 256))
  {
    if (v32)
    {
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);

      v33 = *(a1 + 264);
      *(a1 + 264) = *(a2 + 264);
    }

    else
    {
      sub_1DCBB8090(a1 + 248);
      v34 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v34;
    }
  }

  else if (v32)
  {
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  else
  {
    v35 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v35;
  }

  *(a1 + 272) = *(a2 + 272);
  v36 = *(a1 + 280);
  *(a1 + 280) = *(a2 + 280);

  v37 = a3[32];
  v38 = sub_1DD0DD72C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v37, 1, v38);
  v40 = __swift_getEnumTagSinglePayload(a2 + v37, 1, v38);
  if (!EnumTagSinglePayload)
  {
    v41 = *(v38 - 8);
    if (!v40)
    {
      (*(v41 + 24))(a1 + v37, a2 + v37, v38);
      goto LABEL_14;
    }

    (*(v41 + 8))(a1 + v37, v38);
    goto LABEL_13;
  }

  if (v40)
  {
LABEL_13:
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((a1 + v37), (a2 + v37), *(*(v42 - 8) + 64));
    goto LABEL_14;
  }

  (*(*(v38 - 8) + 16))(a1 + v37, a2 + v37, v38);
  __swift_storeEnumTagSinglePayload(a1 + v37, 0, 1, v38);
LABEL_14:
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + a3[34]) = *(a2 + a3[34]);
  v43 = a3[35];
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  *v44 = *v45;
  v46 = v44[1];
  v44[1] = v45[1];

  return a1;
}

uint64_t initializeWithTake for NLContextUpdate(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v7 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v7;
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  v8 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v8;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 272) = *(a2 + 272);
  v9 = a3[32];
  v10 = sub_1DD0DD72C();
  if (__swift_getEnumTagSinglePayload(a2 + v9, 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((a1 + v9), (a2 + v9), *(*(v11 - 8) + 64));
  }

  else
  {
    (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
    __swift_storeEnumTagSinglePayload(a1 + v9, 0, 1, v10);
  }

  v12 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v12) = *(a2 + v12);
  *(a1 + a3[35]) = *(a2 + a3[35]);
  return a1;
}

uint64_t assignWithTake for NLContextUpdate(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v8 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v9 = *(a2 + 40);
  v10 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v9;

  v11 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v12 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v13 = *(a1 + 80);
  *(a1 + 80) = *(a2 + 80);

  v14 = *(a2 + 96);
  v15 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v14;

  v16 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  v17 = *(a2 + 120);
  v18 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v17;

  v19 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  v20 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);

  v21 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);

  v22 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);

  v23 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  v24 = *(a2 + 192);
  v25 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v24;

  *(a1 + 200) = *(a2 + 200);
  v26 = *(a1 + 208);
  *(a1 + 208) = *(a2 + 208);

  v27 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);

  v28 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);

  v29 = *(a1 + 232);
  *(a1 + 232) = *(a2 + 232);

  v30 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);

  if (*(a1 + 256))
  {
    v31 = *(a2 + 256);
    if (v31)
    {
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = v31;

      v32 = *(a1 + 264);
      *(a1 + 264) = *(a2 + 264);

      goto LABEL_6;
    }

    sub_1DCBB8090(a1 + 248);
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
LABEL_6:
  v33 = *(a2 + 280);
  v34 = *(a1 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v33;

  v35 = a3[32];
  v36 = sub_1DD0DD72C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v35, 1, v36);
  v38 = __swift_getEnumTagSinglePayload(a2 + v35, 1, v36);
  if (!EnumTagSinglePayload)
  {
    v39 = *(v36 - 8);
    if (!v38)
    {
      (*(v39 + 40))(a1 + v35, a2 + v35, v36);
      goto LABEL_12;
    }

    (*(v39 + 8))(a1 + v35, v36);
    goto LABEL_11;
  }

  if (v38)
  {
LABEL_11:
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((a1 + v35), (a2 + v35), *(*(v40 - 8) + 64));
    goto LABEL_12;
  }

  (*(*(v36 - 8) + 32))(a1 + v35, a2 + v35, v36);
  __swift_storeEnumTagSinglePayload(a1 + v35, 0, 1, v36);
LABEL_12:
  v41 = a3[34];
  *(a1 + a3[33]) = *(a2 + a3[33]);
  *(a1 + v41) = *(a2 + v41);
  v42 = a3[35];
  v43 = (a1 + v42);
  v44 = (a2 + v42);
  v46 = *v44;
  v45 = v44[1];
  v47 = v43[1];
  *v43 = v46;
  v43[1] = v45;

  return a1;
}

void sub_1DCE04B94()
{
  sub_1DCE04C94();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1DCE04C94()
{
  if (!qword_1EDE4D748)
  {
    sub_1DD0DD72C();
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE4D748);
    }
  }
}

uint64_t destroy for DisplayHint(void *a1)
{
  if (a1[1] != 1)
  {

    v2 = a1[3];

    v3 = a1[5];
  }

  result = a1[7];
  if (result != 1)
  {

    v5 = a1[9];

    v6 = a1[11];
  }

  return result;
}

uint64_t initializeWithCopy for DisplayHint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 == 1)
  {
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = v4;
    v6 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v6;
    v7 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v7;
  }

  v8 = *(a2 + 56);
  if (v8 == 1)
  {
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v8;
    v10 = *(a2 + 72);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = v10;
    v11 = *(a2 + 80);
    v12 = *(a2 + 88);
    *(a1 + 80) = v11;
    *(a1 + 88) = v12;
  }

  return a1;
}

uint64_t assignWithCopy for DisplayHint(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      v5 = *a2;
      v6 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v6;
      *a1 = v5;
    }

    else
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 1);
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = *(a2 + 4);
      *(a1 + 40) = *(a2 + 5);
    }
  }

  else if (v4 == 1)
  {
    sub_1DCE05044(a1);
    v8 = a2[1];
    v7 = a2[2];
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 1);

    *(a1 + 16) = *(a2 + 2);
    v9 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 3);

    *(a1 + 32) = *(a2 + 4);
    v10 = *(a1 + 40);
    *(a1 + 40) = *(a2 + 5);
  }

  v11 = *(a2 + 7);
  if (*(a1 + 56) == 1)
  {
    if (v11 == 1)
    {
      v12 = a2[3];
      v13 = a2[5];
      *(a1 + 64) = a2[4];
      *(a1 + 80) = v13;
      *(a1 + 48) = v12;
    }

    else
    {
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
    }
  }

  else if (v11 == 1)
  {
    sub_1DCE05044((a1 + 48));
    v15 = a2[4];
    v14 = a2[5];
    *(a1 + 48) = a2[3];
    *(a1 + 64) = v15;
    *(a1 + 80) = v14;
  }

  else
  {
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 56) = *(a2 + 7);

    *(a1 + 64) = *(a2 + 8);
    v16 = *(a1 + 72);
    *(a1 + 72) = *(a2 + 9);

    *(a1 + 80) = *(a2 + 10);
    v17 = *(a2 + 11);
    v18 = *(a1 + 88);
    *(a1 + 88) = v17;
  }

  return a1;
}

uint64_t assignWithTake for DisplayHint(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4 == 1)
  {
    sub_1DCE05044(a1);
LABEL_4:
    v5 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v5;
    *(a1 + 32) = *(a2 + 32);
    goto LABEL_6;
  }

  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v8 = *(a2 + 40);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;

LABEL_6:
  if (*(a1 + 56) != 1)
  {
    v10 = *(a2 + 56);
    if (v10 != 1)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v10;

      v12 = *(a2 + 72);
      v13 = *(a1 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v12;

      v14 = *(a2 + 88);
      v15 = *(a1 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v14;

      return a1;
    }

    sub_1DCE05044((a1 + 48));
  }

  v11 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v11;
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for DisplayHint(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 96))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DisplayHint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *assignWithCopy for SemanticValue(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  v6 = a2[5];
  v7 = a1[5];
  a1[5] = v6;

  return a1;
}

void *assignWithTake for SemanticValue(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  v8 = a2[5];
  v9 = a1[5];
  a1[4] = a2[4];
  a1[5] = v8;

  return a1;
}

_BYTE *storeEnumTagSinglePayload for ConversationStateAttachmentUtils(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DCE053F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DisplayHint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCE055B0()
{
  result = qword_1ECCA7440;
  if (!qword_1ECCA7440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7440);
  }

  return result;
}

unint64_t sub_1DCE05608()
{
  result = qword_1ECCA7448;
  if (!qword_1ECCA7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7448);
  }

  return result;
}

unint64_t sub_1DCE05660()
{
  result = qword_1ECCA7450;
  if (!qword_1ECCA7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7450);
  }

  return result;
}

unint64_t sub_1DCE056B8()
{
  result = qword_1ECCA7458;
  if (!qword_1ECCA7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7458);
  }

  return result;
}

unint64_t sub_1DCE05710()
{
  result = qword_1ECCA7460;
  if (!qword_1ECCA7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7460);
  }

  return result;
}

unint64_t sub_1DCE05768()
{
  result = qword_1ECCA7468;
  if (!qword_1ECCA7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7468);
  }

  return result;
}

uint64_t sub_1DCE057C8()
{
  v0 = sub_1DD0DDFBC();
  v2 = v1;
  if (v0 == sub_1DD0DDFBC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_3_80();
  }

  return v5 & 1;
}

uint64_t sub_1DCE05858(unsigned __int8 a1, char a2)
{
  v2 = 0x6573726170;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = "continuationState";
  v6 = 0x6573726170;
  switch(v4)
  {
    case 1:
      v6 = 0x74616E7265746C61;
      v3 = 0xEC00000073657669;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_36_23();
      v3 = 0xEA00000000007265;
      break;
    case 3:
      v6 = 0xD000000000000011;
      v3 = 0x80000001DD110FC0;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x74616E7265746C61;
      v7 = 0xEC00000073657669;
      break;
    case 2:
      OUTLINED_FUNCTION_34_26();
      v7 = 0xEA00000000007265;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80();
  }

  return v9 & 1;
}

uint64_t sub_1DCE05994()
{
  OUTLINED_FUNCTION_41_19();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = 0xD000000000000013;
      v0 = 0x80000001DD110FF0;
      break;
    case 2:
      v0 = 0x80000001DD111010;
      v3 = 0xD000000000000014;
      break;
    case 3:
      v3 = 0x726F707075736E75;
      v0 = 0xEB00000000646574;
      break;
    default:
      break;
  }

  v5 = 0xE600000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0xD000000000000013;
      v5 = 0x80000001DD110FF0;
      break;
    case 2:
      v5 = 0x80000001DD111010;
      v2 = 0xD000000000000014;
      break;
    case 3:
      v2 = 0x726F707075736E75;
      v5 = 0xEB00000000646574;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_3_80();
  }

  return v7 & 1;
}

uint64_t sub_1DCE05ADC(char a1)
{
  if (a1)
  {
    v1 = "GenericHandoffNotification";
  }

  else
  {
    v1 = "Confirm";
  }

  v2 = v1 | 0x8000000000000000;
  OUTLINED_FUNCTION_37_24();
  if (v8)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = v3 == v4 && v2 == (v7 | 0x8000000000000000);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_3_80();
  }

  return v9 & 1;
}

uint64_t sub_1DCE05B70(unsigned __int8 a1, char a2)
{
  v2 = 0x656D614E707061;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x69746E4562726576;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001DD110F80;
    }

    else
    {
      v5 = 0xEA00000000007974;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x656D614E707061;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_87_1();
    if (v7 == 1)
    {
      v2 = v8;
    }

    else
    {
      v2 = 0x69746E4562726576;
    }

    if (v7 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEA00000000007974;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_3_80();
  }

  return v11 & 1;
}

uint64_t sub_1DCE05CC4(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE90000000000006ELL;
  }

  OUTLINED_FUNCTION_37_24();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

uint64_t sub_1DCE05D58()
{
  OUTLINED_FUNCTION_41_19();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE700000000000000;
      v3 = 0x6D7269666E6F43;
      break;
    case 2:
      v0 = 0xE200000000000000;
      v3 = 28494;
      break;
    case 3:
      v0 = 0xE200000000000000;
      v3 = 19279;
      break;
    case 4:
      v0 = 0xE700000000000000;
      v3 = 0x7070416E65704FLL;
      break;
    case 5:
      v0 = 0xE300000000000000;
      v3 = 7562585;
      break;
    default:
      break;
  }

  v5 = 0xE600000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE700000000000000;
      v2 = 0x6D7269666E6F43;
      break;
    case 2:
      v5 = 0xE200000000000000;
      v2 = 28494;
      break;
    case 3:
      v5 = 0xE200000000000000;
      v2 = 19279;
      break;
    case 4:
      v5 = 0xE700000000000000;
      v2 = 0x7070416E65704FLL;
      break;
    case 5:
      v5 = 0xE300000000000000;
      v2 = 7562585;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_3_80();
  }

  return v7 & 1;
}

uint64_t sub_1DCE05EC0(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

uint64_t sub_1DCE05F8C(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000064656CLL;
  v3 = 0x6C6174736E696E75;
  v4 = a1;
  v5 = 0x6C6174736E696E75;
  v6 = 0xEB0000000064656CLL;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6E6564646968;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x64656B636F6CLL;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x6C616D726F6ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x6E6564646968;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x64656B636F6CLL;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x6C616D726F6ELL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_18_33();
  }

  return v8 & 1;
}

uint64_t sub_1DCE060BC(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000726573;
  v3 = 0x55746E6572727563;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x72657355656D6F68;
    }

    else
    {
      v5 = 0x6C61626F6C67;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000073;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x55746E6572727563;
    v6 = 0xEB00000000726573;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x72657355656D6F68;
    }

    else
    {
      v3 = 0x6C61626F6C67;
    }

    if (a2 == 1)
    {
      v2 = 0xE900000000000073;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_18_33();
  }

  return v8 & 1;
}

uint64_t sub_1DCE061C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_3_80();
  }

  return v10 & 1;
}

uint64_t sub_1DCE0624C(unsigned __int8 a1, char a2)
{
  v2 = 0xEA0000000000656DLL;
  v3 = 0x614E797469746E65;
  v4 = a1;
  v5 = "entityAttributeName";
  v6 = 0x614E797469746E65;
  v7 = 0xEA0000000000656DLL;
  v8 = "taskAttributeName";
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000011;
      v7 = 0x80000001DD1107B0;
      break;
    case 2:
      v7 = 0xE400000000000000;
      v6 = 1651664246;
      break;
    case 3:
      v7 = 0x80000001DD1107D0;
      v6 = 0xD000000000000013;
      break;
    case 4:
      v6 = 0x63617073656D616ELL;
      v7 = 0xE900000000000065;
      break;
    case 5:
      v6 = OUTLINED_FUNCTION_36_23();
      v7 = 0xEF65756C61567265;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000011;
      v2 = (v8 - 32) | 0x8000000000000000;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1651664246;
      break;
    case 3:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 4:
      v3 = 0x63617073656D616ELL;
      v2 = 0xE900000000000065;
      break;
    case 5:
      OUTLINED_FUNCTION_34_26();
      v2 = 0xEF65756C61567265;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_18_33();
  }

  return v10 & 1;
}

uint64_t sub_1DCE063F4(char a1, char a2)
{
  v2 = 0x676F6C616964;
  if (a1)
  {
    OUTLINED_FUNCTION_16_36();
    if (v4 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v5;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x676F6C616964;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_16_36();
    OUTLINED_FUNCTION_87_1();
    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v14;
    }

    if (v11 == 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v10;
    }
  }

  else
  {
    v15 = 0xE600000000000000;
  }

  if (v8 == v2 && v9 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_3_80();
  }

  return v17 & 1;
}

uint64_t sub_1DCE064AC(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v5 = 0x206D7269666E6F63;
      v3 = 0xEF746361746E6F63;
      break;
    case 3:
      v5 = 0x63207463656A6572;
      v3 = 0xEE00746361746E6FLL;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v2 = 0x206D7269666E6F63;
      v6 = 0xEF746361746E6F63;
      break;
    case 3:
      v2 = 0x63207463656A6572;
      v6 = 0xEE00746361746E6FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

uint64_t sub_1DCE06600(char a1)
{
  if (a1)
  {
    v1 = 0xEE006E6F69746175;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_37_24();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

uint64_t sub_1DCE066B4(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  OUTLINED_FUNCTION_37_24();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

uint64_t sub_1DCE06740(unsigned __int8 a1, char a2)
{
  v2 = 0x5445534E55;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x5445534E55;
  switch(v4)
  {
    case 1:
      v5 = 0x454C4C45434E4143;
      goto LABEL_4;
    case 2:
      v5 = 0x454D5249464E4F43;
LABEL_4:
      v3 = 0xE900000000000044;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x44455443454A4552;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x454C4C45434E4143;
      goto LABEL_9;
    case 2:
      v2 = 0x454D5249464E4F43;
LABEL_9:
      v6 = 0xE900000000000044;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x44455443454A4552;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_3_80();
  }

  return v8 & 1;
}

SiriKitFlow::NLContextUpdateSerializationOptions sub_1DCE06910@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = NLContextUpdateSerializationOptions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DCE06950@<X0>(uint64_t *a1@<X8>)
{
  result = NLContextUpdateSerializationOptions.rawValue.getter();
  *a1 = result;
  return result;
}

void *NLContextUpdate.toAceContextUpdate(options:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1DCB2CC34(0xD00000000000001CLL, 0x80000001DD11E830);
  v3 = v1;
  return NLContextUpdate.doConvertToAceContextUpdate(options:)(&v3);
}

id NLContextUpdate.toServerContextUpdate()()
{
  sub_1DCB2CC34(0xD000000000000017, 0x80000001DD11E870);

  return NLContextUpdate.doConvertToServerContextUpdate()();
}

char *sub_1DCE06A14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA74D0, &qword_1DD0E1BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1DCE06B08()
{
  v1 = *v0;
  sub_1DCC20CA0();
  *v0 = v2;
}

void sub_1DCE06B28()
{
  v1 = *v0;
  sub_1DCC20D70();
  *v0 = v2;
}

void sub_1DCE06B48()
{
  v1 = *v0;
  sub_1DCC20E40();
  *v0 = v2;
}

void sub_1DCE06B68()
{
  v1 = *v0;
  sub_1DCC20EFC();
  *v0 = v2;
}

void sub_1DCE06C08()
{
  v1 = *v0;
  sub_1DCC21190();
  *v0 = v2;
}

void sub_1DCE06C28()
{
  v1 = *v0;
  sub_1DCC21250();
  *v0 = v2;
}

void sub_1DCE06C48()
{
  v1 = *v0;
  sub_1DCC21320();
  *v0 = v2;
}

void sub_1DCE06C88()
{
  v1 = *v0;
  sub_1DCC21510();
  *v0 = v2;
}

unint64_t sub_1DCE06CC8()
{
  result = qword_1ECCA7480;
  if (!qword_1ECCA7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7480);
  }

  return result;
}

void sub_1DCE06D1C(uint64_t a1, void *a2)
{
  v3 = sub_1DD0DE2DC();

  [a2 setDisplayHintsAsJson_];
}

void sub_1DCE06D88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DAEFC();
  [a3 setPromptContextProto_];
}

void sub_1DCE06DE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DAEFC();
  [a3 setPegasusConversationContext_];
}

unint64_t sub_1DCE06E3C()
{
  result = qword_1ECCA7490;
  if (!qword_1ECCA7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7490);
  }

  return result;
}

unint64_t sub_1DCE06E94()
{
  result = qword_1ECCA7498;
  if (!qword_1ECCA7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7498);
  }

  return result;
}

unint64_t sub_1DCE06EEC()
{
  result = qword_1ECCA74A0;
  if (!qword_1ECCA74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA74A0);
  }

  return result;
}

unint64_t sub_1DCE06F44()
{
  result = qword_1ECCA74A8;
  if (!qword_1ECCA74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA74A8);
  }

  return result;
}

uint64_t sub_1DCE06FC8()
{
  OUTLINED_FUNCTION_42();
  v0[8] = v1;
  v0[9] = v2;
  v0[6] = v3;
  v0[7] = v4;
  v0[4] = v5;
  v0[5] = v6;
  v7 = sub_1DD0DB6EC();
  v0[10] = v7;
  v8 = *(v7 - 8);
  v0[11] = v8;
  v9 = *(v8 + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE07094()
{
  v30 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 112) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_1DCB10E9C(0x7265706C65484C4ELL, 0xE800000000000000, v29);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_1DCB10E9C(0xD000000000000042, 0x80000001DD11E8C0, v29);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v5 = sub_1DCF7BA1C(*(v0 + 56), *(v0 + 72));
  *(v0 + 120) = v5;
  *(v0 + 128) = v6;
  *(v0 + 160) = v7;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  *(v0 + 24) = sub_1DD0DDE9C();
  *(swift_task_alloc() + 16) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA74E0, &qword_1DD0F8B48);
  v15 = *(v14 + 8);
  sub_1DD0DE22C();

  v16 = *(v0 + 16);
  *(v0 + 136) = v16;
  if (*(v16 + 16))
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 144) = v17;
    *v17 = v18;
    v17[1] = sub_1DCE07434;
    v19 = *(v0 + 104);
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);

    return sub_1DCE07C94(v19, v20, v21, v9, v10, v11, v16);
  }

  else
  {
    sub_1DCE0A938();

    v22 = sub_1DD0DD8EC();
    v23 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v23))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v24, v25, "No events produce USO graphs. No SDA will be produced.");
      OUTLINED_FUNCTION_80();
    }

    v26 = *(v0 + 96);
    v27 = *(v0 + 104);
    __swift_storeEnumTagSinglePayload(*(v0 + 32), 1, 1, *(v0 + 80));

    OUTLINED_FUNCTION_43();

    return v28();
  }
}

uint64_t sub_1DCE07434()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = v2[18];
  *v4 = *v1;
  v3[19] = v0;

  v6 = v2[17];
  v7 = v2[16];
  v8 = v2[15];
  v9 = *(v3 + 160);
  sub_1DCE0A938();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE07598()
{
  OUTLINED_FUNCTION_125();
  v19 = v0;
  v1 = v0[14];
  (*(v0[11] + 16))(v0[12], v0[13], v0[10]);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_151();
    v9 = OUTLINED_FUNCTION_83();
    v18 = v9;
    *v8 = 136315138;
    sub_1DCE0A948();
    v10 = sub_1DD0DD6EC();
    v12 = v11;
    (*(v6 + 8))(v5, v7);
    v13 = sub_1DCB10E9C(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "Produced the following SystemDialogAct:\n\n%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  (*(v0[11] + 32))(v0[4], v0[13], v0[10]);
  v14 = v0[12];
  v15 = v0[13];
  __swift_storeEnumTagSinglePayload(v0[4], 0, 1, v0[10]);

  OUTLINED_FUNCTION_43();

  return v16();
}

uint64_t sub_1DCE0775C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[19];
  v3 = v0[12];
  v2 = v0[13];

  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCE077C0(uint64_t a1, id *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = [*a2 producer];
  v7 = [v6 name];
  v8 = sub_1DD0DDFBC();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v20 = v5;
    v21 = sub_1DD0DD8EC();
    v22 = sub_1DD0DE6DC();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_15;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v44 = v24;
    *v23 = 136315138;
    v25 = [v20 eventId];
    v26 = sub_1DD0DDFBC();
    v28 = v27;

    v29 = sub_1DCB10E9C(v26, v28, &v44);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1DCAFC000, v21, v22, "Event '%s' has no NL producer defined. No SystemDialogAct will be generated.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
LABEL_14:
    MEMORY[0x1E12A8390](v24, -1, -1);
    MEMORY[0x1E12A8390](v23, -1, -1);
LABEL_15:

    return;
  }

  v12 = [v6 name];
  v13 = sub_1DD0DDFBC();
  v15 = v14;

  sub_1DCC18004(&v44, v13, v15, a3);

  if (v45)
  {
    sub_1DCB18FF0(&v44, v47);
    sub_1DCB17CA0(v47, &v44);
    v16 = [v6 parameters];
    v17 = sub_1DD0DDE6C();

    v46 = v17;
    v18 = [v5 eventId];
    sub_1DD0DDFBC();

    sub_1DCC17F4C(&v44, v43);
    sub_1DD06E2C0(v43);

    sub_1DCE0AAB4(&v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    return;
  }

  sub_1DCB16DB0(&v44, &qword_1ECCA27A8, &qword_1DD0E68C8);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v30 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v30, qword_1EDE57E00);
  v31 = v5;
  v6 = v6;
  v21 = sub_1DD0DD8EC();
  v32 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v21, v32))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v44 = v24;
    *v23 = 136315394;
    v33 = [v31 eventId];
    v34 = sub_1DD0DDFBC();
    v47[6] = v3;
    v36 = v35;

    v37 = sub_1DCB10E9C(v34, v36, &v44);

    *(v23 + 4) = v37;
    *(v23 + 12) = 2080;
    v38 = [v6 name];
    v39 = sub_1DD0DDFBC();
    v41 = v40;

    v42 = sub_1DCB10E9C(v39, v41, &v44);

    *(v23 + 14) = v42;
    _os_log_impl(&dword_1DCAFC000, v21, v32, "Event '%s' defines an unknown NL producer for name '%s'. No SystemDialogAct will be generated.", v23, 0x16u);
    swift_arrayDestroy();
    goto LABEL_14;
  }
}

uint64_t sub_1DCE07C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 504) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_1DD0DB72C();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v11 = sub_1DD0DB5EC();
  *(v7 + 96) = v11;
  v12 = *(v11 - 8);
  *(v7 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  v14 = sub_1DD0DB61C();
  *(v7 + 128) = v14;
  v15 = *(v14 - 8);
  *(v7 + 136) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  v17 = sub_1DD0DB66C();
  *(v7 + 160) = v17;
  v18 = *(v17 - 8);
  *(v7 + 168) = v18;
  v19 = *(v18 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v20 = sub_1DD0DB75C();
  *(v7 + 200) = v20;
  v21 = *(v20 - 8);
  *(v7 + 208) = v21;
  v22 = *(v21 + 64) + 15;
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();
  v23 = sub_1DD0DB5BC();
  *(v7 + 232) = v23;
  v24 = *(v23 - 8);
  *(v7 + 240) = v24;
  v25 = *(v24 + 64) + 15;
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  v26 = sub_1DD0DB44C();
  *(v7 + 280) = v26;
  v27 = *(v26 - 8);
  *(v7 + 288) = v27;
  v28 = *(v27 + 64) + 15;
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  v29 = sub_1DD0DB50C();
  *(v7 + 320) = v29;
  v30 = *(v29 - 8);
  *(v7 + 328) = v30;
  v31 = *(v30 + 64) + 15;
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE08074, 0, 0);
}

uint64_t sub_1DCE08074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v24 = *(v22 + 504);
  v25 = *(v22 + 16);
  sub_1DD0DB6DC();
  switch(v24 >> 6)
  {
    case 1u:
      v58 = *(v22 + 88);
      v59 = *(v22 + 40);
      sub_1DD0DB71C();
      v60 = *(v59 + 16);
      *(v22 + 376) = v60;
      v61 = MEMORY[0x1E69E7CC0];
      *(v22 + 456) = MEMORY[0x1E69E7CC0];
      *(v22 + 464) = v61;
      *(v22 + 448) = 0;
      if (v60)
      {
        v62 = *(v22 + 40);
        *(v22 + 472) = *(v62 + 40);
        v63 = *(v62 + 32);

        v64 = swift_task_alloc();
        *(v22 + 480) = v64;
        *v64 = v22;
        OUTLINED_FUNCTION_10_50();
        goto LABEL_12;
      }

      v93 = *(v22 + 80);
      v92 = *(v22 + 88);
      v94 = *(v22 + 64);
      v95 = *(v22 + 72);
      v96 = *(v22 + 16);
      v97 = MEMORY[0x1E69E7CC0];

      sub_1DD0DB47C();
      v98 = OUTLINED_FUNCTION_27_24();
      v99(v98);
      sub_1DD0DB68C();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v100 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v100, qword_1EDE57E00);
      v101 = sub_1DD0DD8EC();
      v102 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_5(v102))
      {
        v103 = OUTLINED_FUNCTION_151();
        *v103 = 134217984;
        *(v103 + 4) = *(v97 + 16);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v104, v105, v106, v107, v108, 0xCu);
        OUTLINED_FUNCTION_92_0();
      }

      v109 = *(v22 + 88);
      v110 = *(v22 + 64);
      v111 = *(v22 + 72);

      v112 = *(v111 + 8);
      v113 = OUTLINED_FUNCTION_20();
      v114(v113);

      goto LABEL_27;
    case 2u:
      v35 = *(v22 + 152);
      v36 = *(v22 + 48);
      sub_1DD0DB60C();
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v22 + 352) = v37;
      *v37 = v38;
      v37[1] = sub_1DCE085B8;
      v39 = *(v22 + 296);
      goto LABEL_7;
    case 3u:
      v40 = *(v22 + 344);
      v41 = *(v22 + 48);
      sub_1DD0DB4FC();
      if (!v41)
      {
        v71 = OUTLINED_FUNCTION_17_29();
        v72(v71);
        sub_1DD0DB6AC();
        v73 = *(v23 + 8);
        v74 = OUTLINED_FUNCTION_20();
        v75(v74);
        goto LABEL_27;
      }

      v42 = *(v22 + 48);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v22 + 384) = v43;
      *v43 = v44;
      v43[1] = sub_1DCE086B4;
      v45 = *(v22 + 312);
LABEL_7:
      v46 = *(v22 + 56);
      v47 = *(v22 + 32);
      v48 = *(v22 + 40);
      v49 = *(v22 + 24);
      OUTLINED_FUNCTION_142();

      result = sub_1DCE09C60(v50, v51, v52, v53, v54, v55);
      break;
    default:
      v26 = *(v22 + 120);
      v27 = *(v22 + 40);
      sub_1DD0DB5DC();
      v28 = *(v27 + 16);
      *(v22 + 368) = v28;
      v29 = MEMORY[0x1E69E7CC0];
      *(v22 + 400) = 0;
      *(v22 + 408) = v29;
      if (v28)
      {
        v30 = *(v22 + 40);
        *(v22 + 416) = *(v30 + 40);
        v31 = *(v30 + 32);

        v32 = swift_task_alloc();
        *(v22 + 424) = v32;
        *v32 = v22;
        OUTLINED_FUNCTION_11_47();
LABEL_12:
        *(v33 + 8) = v34;
        OUTLINED_FUNCTION_5_69();
        OUTLINED_FUNCTION_142();

        result = sub_1DCE0A0A0(v65, v66, v67, v68, v69);
      }

      else
      {
        v76 = *(v22 + 112);
        v77 = *(v22 + 120);
        v78 = *(v22 + 96);
        v79 = *(v22 + 104);
        v80 = *(v22 + 16);

        sub_1DD0DB47C();
        (*(v79 + 16))(v76, v77, v78);
        sub_1DD0DB6BC();
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v81 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v81, qword_1EDE57E00);
        v82 = MEMORY[0x1E69E7CC0];

        v83 = sub_1DD0DD8EC();
        v84 = sub_1DD0DE6DC();
        if (OUTLINED_FUNCTION_5(v84))
        {
          v85 = OUTLINED_FUNCTION_151();
          *v85 = 134217984;
          v86 = *(v82 + 16);

          *(v85 + 4) = v86;

          OUTLINED_FUNCTION_15_8();
          _os_log_impl(v87, v88, v89, v90, v91, 0xCu);
          OUTLINED_FUNCTION_92_0();
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        (*(*(v22 + 104) + 8))(*(v22 + 120), *(v22 + 96));
LABEL_27:
        OUTLINED_FUNCTION_1_82();

        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_142();

        result = v116(v115, v116, v117, v118, v119, v120, v121, v122, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      }

      break;
  }

  return result;
}

uint64_t sub_1DCE085B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 352);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 360) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE086B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 392) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE087B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = *(v22 + 272);
  v24 = *(v22 + 504);
  sub_1DD0DB5AC();
  if (v24)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v25 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v25, qword_1EDE57E00);
    v26 = sub_1DD0DD8EC();
    v27 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v27))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v28, v29, "Building UserWantedToProceed variant of SystemOffered");
      OUTLINED_FUNCTION_80();
    }

    v31 = (v22 + 224);
    v30 = *(v22 + 224);
    v32 = *(v22 + 304);
    v33 = v26;
    v35 = *(v22 + 280);
    v34 = *(v22 + 288);
    v89 = *(v22 + 272);
    v36 = *(v22 + 216);
    v38 = (v22 + 208);
    v37 = *(v22 + 208);
    v39 = (v22 + 200);
    v87 = *(v22 + 312);
    v88 = *(v22 + 200);

    sub_1DD0DB74C();
    v40 = OUTLINED_FUNCTION_26_23();
    v41(v40);
    sub_1DD0DB73C();
    v42 = OUTLINED_FUNCTION_25_18();
    v43(v42);
    sub_1DD0DB58C();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v44 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
    v45 = sub_1DD0DD8EC();
    v46 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v46))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v47, v48, "Building basic variant of SystemOffered");
      OUTLINED_FUNCTION_80();
    }

    v31 = (v22 + 192);
    v49 = *(v22 + 192);
    v50 = *(v22 + 304);
    v51 = v45;
    v53 = *(v22 + 280);
    v52 = *(v22 + 288);
    v89 = *(v22 + 272);
    v54 = *(v22 + 184);
    v38 = (v22 + 168);
    v55 = *(v22 + 168);
    v39 = (v22 + 160);
    v87 = *(v22 + 312);
    v88 = *(v22 + 160);

    sub_1DD0DB65C();
    v56 = OUTLINED_FUNCTION_26_23();
    v57(v56);
    sub_1DD0DB64C();
    v58 = OUTLINED_FUNCTION_25_18();
    v59(v58);
    sub_1DD0DB57C();
  }

  v60 = *v39;
  v61 = *v38;
  v62 = *(v22 + 344);
  v63 = *(v22 + 312);
  v64 = *(v22 + 280);
  v65 = *(v22 + 288);
  v67 = *(v22 + 264);
  v66 = *(v22 + 272);
  v68 = *(v22 + 232);
  v69 = *(v22 + 240);
  (*(v61 + 8))(*v31, v60);
  (*(v69 + 16))(v67, v66, v68);
  sub_1DD0DB4EC();
  (*(v69 + 8))(v66, v68);
  v70 = *(v65 + 8);
  v71 = OUTLINED_FUNCTION_20();
  v72(v71);
  v73 = OUTLINED_FUNCTION_17_29();
  v74(v73);
  sub_1DD0DB6AC();
  v75 = *(v67 + 8);
  v76 = OUTLINED_FUNCTION_20();
  v77(v76);
  OUTLINED_FUNCTION_1_82();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_142();

  return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, v87, v88, v89, a20, a21, a22);
}

uint64_t sub_1DCE08B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v24 = v22[18];
  v23 = v22[19];
  v25 = v22[16];
  v26 = v22[17];
  v27 = v22[2];
  (*(v22[36] + 16))(v22[38], v22[37], v22[35]);
  sub_1DD0DB5FC();
  (*(v26 + 16))(v24, v23, v25);
  sub_1DD0DB6CC();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v28 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
  v29 = sub_1DD0DD8EC();
  v30 = sub_1DD0DE6DC();
  v31 = os_log_type_enabled(v29, v30);
  v33 = v22[36];
  v32 = v22[37];
  v34 = v22[35];
  v35 = v22[19];
  v36 = v22[16];
  v37 = v22[17];
  if (v31)
  {
    v38 = OUTLINED_FUNCTION_50_0();
    *v38 = 0;
    _os_log_impl(&dword_1DCAFC000, v29, v30, "Built SystemPrompted.", v38, 2u);
    OUTLINED_FUNCTION_80();
  }

  (*(v33 + 8))(v32, v34);
  (*(v37 + 8))(v35, v36);
  OUTLINED_FUNCTION_1_82();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_142();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCE08D4C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = v2[53];
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  v3[54] = v8;
  v3[55] = v0;

  v9 = v2[52];
  if (v0)
  {
    v10 = v3[51];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCE08E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v24 = v23[54];
  v25 = *(v24 + 16);
  v26 = *(v23[51] + 16);
  if (__OFADD__(v26, v25))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v23[51];
  if (!isUniquelyReferenced_nonNull_native || v26 + v25 > *(v22 + 24) >> 1)
  {
    v28 = v23[51];
    sub_1DCE194BC();
    v22 = v29;
  }

  if (!*(v24 + 16))
  {
    v39 = v23[54];

    if (!v25)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  if ((*(v22 + 24) >> 1) - *(v22 + 16) < v25)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = v23[54];
  v31 = v23[35];
  v32 = v23[36];
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = *(v32 + 72);
  swift_arrayInitWithCopy();

  if (v25)
  {
    v36 = *(v22 + 16);
    v37 = __OFADD__(v36, v25);
    v38 = v36 + v25;
    if (v37)
    {
      __break(1u);
      return result;
    }

    *(v22 + 16) = v38;
  }

LABEL_11:
  v40 = v23[50] + 1;
  v23[50] = v40;
  v23[51] = v22;
  if (v40 == v23[46])
  {
    v42 = v23[14];
    v41 = v23[15];
    v43 = v23[12];
    v44 = v23[13];
    v45 = v23[2];

    sub_1DD0DB47C();
    v46 = OUTLINED_FUNCTION_27_24();
    v47(v46);
    sub_1DD0DB6BC();
    if (qword_1EDE4F900 == -1)
    {
LABEL_13:
      v48 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v48, qword_1EDE57E00);

      v49 = sub_1DD0DD8EC();
      v50 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_5(v50))
      {
        v51 = OUTLINED_FUNCTION_151();
        *v51 = 134217984;
        v52 = *(v22 + 16);

        *(v51 + 4) = v52;

        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
        OUTLINED_FUNCTION_92_0();
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      (*(v23[13] + 8))(v23[15], v23[12]);
      OUTLINED_FUNCTION_1_82();

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_142();

      return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    }

LABEL_25:
    OUTLINED_FUNCTION_0_0();
    goto LABEL_13;
  }

  v58 = v23[5] + 16 * v40;
  v23[52] = *(v58 + 40);
  v59 = *(v58 + 32);

  v60 = swift_task_alloc();
  v23[53] = v60;
  *v60 = v23;
  v61 = OUTLINED_FUNCTION_11_47();
  *(v61 + 8) = v62;
  OUTLINED_FUNCTION_5_69();
  OUTLINED_FUNCTION_142();

  return sub_1DCE0A0A0(v63, v64, v65, v66, v67);
}

uint64_t sub_1DCE091D4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *(v2 + 480);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v9 + 488) = v8;
  *(v9 + 496) = v0;

  v10 = *(v2 + 472);

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCE09304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = 0;
  v78 = *(v22[61] + 16);
  v25 = v22[57];
  v24 = v22[58];
  while (v78 != v23)
  {
    v26 = v22[38];
    v28 = v22[35];
    v27 = v22[36];
    v29 = v22[32];
    v30 = v22[30];
    a16 = v22[29];
    a17 = v22[31];
    v31 = v22[24];
    a18 = v25;
    a19 = v23;
    v33 = v22[21];
    v32 = v22[22];
    a15 = v22[20];
    v34 = v22[61] + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23;
    sub_1DD0DB65C();
    (*(v27 + 16))(v26, v34, v28);
    sub_1DD0DB64C();
    sub_1DD0DB5AC();
    (*(v33 + 16))(v31, v32, a15);
    v25 = a18;
    sub_1DD0DB57C();
    (*(v30 + 16))(a17, v29, a16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = *(a18 + 16);
      sub_1DCE196A4();
      v25 = v43;
    }

    v35 = *(v25 + 16);
    if (v35 >= *(v25 + 24) >> 1)
    {
      sub_1DCE196A4();
      v25 = v44;
    }

    v36 = v22[31];
    v38 = v22[29];
    v37 = v22[30];
    v40 = v22[21];
    v39 = v22[22];
    v41 = v22[20];
    (*(v37 + 8))(v22[32], v38);
    (*(v40 + 8))(v39, v41);
    *(v25 + 16) = v35 + 1;
    (*(v37 + 32))(v25 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35, v36, v38);
    v23 = a19 + 1;
    v24 = v25;
  }

  v45 = v22[56] + 1;
  v22[57] = v25;
  v22[58] = v24;
  v22[56] = v45;
  if (v45 == v22[47])
  {
    v46 = v22[10];
    v47 = v22[11];
    v48 = v22[8];
    v49 = v22[9];
    v50 = v22[2];

    sub_1DD0DB47C();
    (*(v49 + 16))(v46, v47, v48);
    sub_1DD0DB68C();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v51 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v51, qword_1EDE57E00);
    v52 = sub_1DD0DD8EC();
    v53 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v53))
    {
      v54 = OUTLINED_FUNCTION_151();
      *v54 = 134217984;
      *(v54 + 4) = *(v24 + 16);
      _os_log_impl(&dword_1DCAFC000, v52, v46, "Built SystemGaveOptions with %ld choices.", v54, 0xCu);
      OUTLINED_FUNCTION_92_0();
    }

    v55 = v22[11];
    v56 = v22[8];
    v57 = v22[9];

    (*(v57 + 8))(v55, v56);

    OUTLINED_FUNCTION_1_82();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_142();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, v78, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v67 = v22[5] + 16 * v45;
    v22[59] = *(v67 + 40);
    v68 = *(v67 + 32);

    v69 = swift_task_alloc();
    v22[60] = v69;
    *v69 = v22;
    v70 = OUTLINED_FUNCTION_10_50();
    *(v70 + 8) = v71;
    OUTLINED_FUNCTION_5_69();
    OUTLINED_FUNCTION_142();

    return sub_1DCE0A0A0(v72, v73, v74, v75, v76);
  }
}

uint64_t sub_1DCE09744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = v22[2];
  (*(v22[41] + 8))(v22[43], v22[40]);
  v24 = sub_1DD0DB6EC();
  OUTLINED_FUNCTION_13_1(v24);
  (*(v25 + 8))(v23);
  v26 = v22[49];
  OUTLINED_FUNCTION_2_70();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_142();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCE09888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = v22[2];
  (*(v22[17] + 8))(v22[19], v22[16]);
  v24 = sub_1DD0DB6EC();
  OUTLINED_FUNCTION_13_1(v24);
  (*(v25 + 8))(v23);
  v26 = v22[45];
  OUTLINED_FUNCTION_2_70();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_142();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCE099CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = v22[2];
  (*(v22[13] + 8))(v22[15], v22[12]);
  v24 = sub_1DD0DB6EC();
  OUTLINED_FUNCTION_13_1(v24);
  (*(v25 + 8))(v23);
  v26 = v22[55];
  OUTLINED_FUNCTION_2_70();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_142();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCE09B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_231();
  OUTLINED_FUNCTION_15_46();
  v23 = v22[57];
  v24 = v22[2];
  (*(v22[9] + 8))(v22[11], v22[8]);
  v25 = sub_1DD0DB6EC();
  OUTLINED_FUNCTION_13_1(v25);
  (*(v26 + 8))(v24);

  v27 = v22[62];
  OUTLINED_FUNCTION_2_70();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_142();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCE09C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a5;
  v6[2] = a1;
  v12 = swift_task_alloc();
  v6[5] = v12;
  *v12 = v6;
  v12[1] = sub_1DCE09D2C;

  return sub_1DCE0A0A0(a2, a3, a4, a5, a6);
}

uint64_t sub_1DCE09D2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  *v3 = *v1;
  *(v2 + 48) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_29();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

void sub_1DCE09E4C()
{
  OUTLINED_FUNCTION_125();
  v32 = v0;
  v1 = v0[6];
  if (*(v1 + 16) == 1)
  {
    v2 = v0[2];
    v3 = sub_1DD0DB44C();
    (*(*(v3 - 8) + 16))(v2, v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), v3);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_32_19();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[6];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    v30 = v0[6];
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);

  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6EC();
  v10 = OUTLINED_FUNCTION_5(v9);
  v11 = v0[6];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_83();
    v31 = v13;
    *v12 = 134218242;
    *(v12 + 4) = *(v1 + 16);

    *(v12 + 12) = 2080;
    v14 = sub_1DD0DB44C();
    v15 = MEMORY[0x1E12A6960](v11, v14);
    v17 = sub_1DCB10E9C(v15, v16, &v31);

    *(v12 + 14) = v17;
    OUTLINED_FUNCTION_15_8();
    _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
    v23 = v0[6];
  }

  v24 = v0[6];
  v26 = v0[3];
  v25 = v0[4];
  sub_1DCE0A9A0();
  swift_allocError();
  *v27 = v26;
  v27[1] = v25;
  v27[2] = v24;
  swift_willThrow();
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_32_19();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_1DCE0A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_1DD0DB44C();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = type metadata accessor for NLProducerResult.ProducerResultBase(0);
  v5[22] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v11 = *(*(type metadata accessor for NLProducerResult(0) - 8) + 64) + 15;
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE0A1C4, 0, 0);
}

void sub_1DCE0A1C4()
{
  OUTLINED_FUNCTION_125();
  v31 = v0;
  sub_1DCC17CDC(*(v0 + 128), *(v0 + 136), *(v0 + 144));
  if (*(v0 + 88))
  {
    v1 = *(v0 + 96);
    *(v0 + 32) = *(v0 + 80);
    *(v0 + 48) = v1;
    *(v0 + 16) = *(v0 + 64);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v3 = *(v0 + 56);
    v4 = *(v2 + 16);
    v29 = v4 + *v4;
    v5 = v4[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 200) = v6;
    *v6 = v7;
    v6[1] = sub_1DCE0A47C;
    v8 = *(v0 + 192);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    OUTLINED_FUNCTION_32_19();

    __asm { BRAA            X8, X16 }
  }

  sub_1DCB16DB0(v0 + 64, &qword_1ECCA74F8, &unk_1DD10DCC0);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v15 = *(v0 + 136);
  v16 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);

  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v0 + 128);
    v19 = *(v0 + 136);
    v21 = OUTLINED_FUNCTION_151();
    v22 = OUTLINED_FUNCTION_83();
    v30 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1DCB10E9C(v20, v19, &v30);
    _os_log_impl(&dword_1DCAFC000, v17, v18, "Cannot find graph producing items for %s. Event will be skipped", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v24 = *(v0 + 184);
  v23 = *(v0 + 192);
  v25 = *(v0 + 168);

  v26 = *(v0 + 8);
  OUTLINED_FUNCTION_32_19();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1DCE0A47C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCE0A564()
{
  OUTLINED_FUNCTION_125();
  v31 = v0;
  v1 = v0[22];
  sub_1DCE0A9F4(v0[24], v0[23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v5 = v0[24];
    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[19];
    v9 = *(v7 + 32);
    v7 += 32;
    v9(v6, v0[23], v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7500, &unk_1DD0F8B70);
    v10 = *(v7 + 40);
    v11 = (*(v7 + 48) + 32) & ~*(v7 + 48);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1DD0E07C0;
    v9(v4 + v11, v6, v8);
    sub_1DCE0AA58(v5);
    sub_1DCE0AAB4(v0 + 2);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[23];
    sub_1DCE0AA58(v0[24]);
    sub_1DCE0AAB4(v0 + 2);
    v4 = *v3;
LABEL_5:
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[21];

    v15 = v0[1];

    return v15(v4);
  }

  v17 = *v0[23];
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v18 = v0[17];
  v19 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v19, qword_1EDE57E00);

  v20 = sub_1DD0DD8EC();
  v21 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[16];
    v22 = v0[17];
    v24 = OUTLINED_FUNCTION_151();
    v25 = OUTLINED_FUNCTION_83();
    v30 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1DCB10E9C(v23, v22, &v30);
    _os_log_impl(&dword_1DCAFC000, v20, v21, "Unable to produce NL representation for event '%s'", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v27 = v0[23];
  v26 = v0[24];
  v28 = v0[21];
  swift_willThrow();
  sub_1DCE0AA58(v26);
  sub_1DCE0AAB4(v0 + 2);

  OUTLINED_FUNCTION_29();

  return v29();
}

uint64_t sub_1DCE0A81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000037, 0x80000001DD11E910);
  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](0x4368706172672027, 0xEE003D3D746E756FLL);
  v8 = *(a3 + 16);
  v6 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v6);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1DCE0A948()
{
  result = qword_1ECCA74E8;
  if (!qword_1ECCA74E8)
  {
    sub_1DD0DB6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA74E8);
  }

  return result;
}

unint64_t sub_1DCE0A9A0()
{
  result = qword_1ECCA74F0;
  if (!qword_1ECCA74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA74F0);
  }

  return result;
}

uint64_t sub_1DCE0A9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLProducerResult.ProducerResultBase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCE0AA58(uint64_t a1)
{
  v2 = type metadata accessor for NLProducerResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for NLHelper.UsoGraphProducingItems(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v2 = a1[5];
}

uint64_t initializeWithCopy for NLHelper.UsoGraphProducingItems(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t *assignWithCopy for NLHelper.UsoGraphProducingItems(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a2[5];
  v5 = a1[5];
  a1[5] = v4;

  return a1;
}

uint64_t assignWithTake for NLHelper.UsoGraphProducingItems(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for NLHelper.UsoGraphProducingItems(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for NLHelper.UsoGraphProducingItems(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCE0ACCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for NLContextUpdate();
  v3[18] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCE0ADD4, 0, 0);
}

uint64_t sub_1DCE0ADD4()
{
  v1 = *(v0 + 120);
  if (*(v1 + 16))
  {
    goto LABEL_7;
  }

  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    if (!sub_1DD0DEB3C())
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = *(v0 + 112);
    *(v8 + 32) = 0;
    *v8 = 0u;
    *(v8 + 16) = 0u;
    goto LABEL_8;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_4:
  if (sub_1DCB08B14(*(*(v0 + 120) + 24)))
  {
    goto LABEL_7;
  }

  v3 = *(v0 + 160);
  v4 = *(v0 + 120);
  v5 = type metadata accessor for OutputElementContainer();
  sub_1DCB09910(v4 + *(v5 + 32), v3, &qword_1ECCA1820, &qword_1DD0E0F88);
  v6 = type metadata accessor for ResponseComponents(0);
  LODWORD(v4) = __swift_getEnumTagSinglePayload(v3, 1, v6);
  sub_1DCB0E9D8(v3, &qword_1ECCA1820, &qword_1DD0E0F88);
  if (v4 != 1)
  {
    goto LABEL_7;
  }

  sub_1DCB09910(*(v0 + 120) + *(v5 + 36), v0 + 16, &qword_1ECCA1830, &unk_1DD0E0F90);
  v7 = *(v0 + 24);
  sub_1DCB0E9D8(v0 + 16, &qword_1ECCA1830, &unk_1DD0E0F90);
  if (v7)
  {
    goto LABEL_7;
  }

  v14 = *(v0 + 136);
  v15 = *(v0 + 144);
  v16 = *(v0 + 128);
  v17 = type metadata accessor for OutputGenerationManifest();
  sub_1DCB09910(v16 + *(v17 + 48), v14, &unk_1ECCA3270, &qword_1DD0E0F70);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1DCB0E9D8(*(v0 + 136), &unk_1ECCA3270, &qword_1DD0E0F70);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DCAFC000, v19, v20, "No presentation elements and no NL Context updates. No Output will be produced", v21, 2u);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    v22 = *(v0 + 112);

    *(v22 + 32) = 0;
    *v22 = 0u;
    *(v22 + 16) = 0u;
  }

  else
  {
    sub_1DCD467D4(*(v0 + 136), *(v0 + 152));
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v23 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v23, qword_1EDE57E00);
    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DCAFC000, v24, v25, "Sending NLContextUpdate with no user output", v26, 2u);
      MEMORY[0x1E12A8390](v26, -1, -1);
    }

    v28 = *(v0 + 144);
    v27 = *(v0 + 152);
    v29 = *(v0 + 112);

    v30 = type metadata accessor for AceOutput();
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0;
    v29[3] = v30;
    v29[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v29);
    v32 = v30[7];
    sub_1DCB46478(v27, boxed_opaque_existential_1Tm + v32);
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1Tm + v32, 0, 1, v28);
    v33 = v30[9];
    v34 = sub_1DD0DD10C();
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1Tm + v33, 1, 1, v34);
    v35 = v30[8];
    v36 = *MEMORY[0x1E69D0678];
    v37 = sub_1DD0DD15C();
    OUTLINED_FUNCTION_2(v37);
    (*(v38 + 104))(boxed_opaque_existential_1Tm + v35, v36);
    boxed_opaque_existential_1Tm[15] = 0;
    *(boxed_opaque_existential_1Tm + 13) = 0u;
    *(boxed_opaque_existential_1Tm + 11) = 0u;
    sub_1DCB6C5E8(v0 + 72, (boxed_opaque_existential_1Tm + 11));
    *(boxed_opaque_existential_1Tm + v30[10]) = 0;
    *boxed_opaque_existential_1Tm = MEMORY[0x1E69E7CC0];
    *(boxed_opaque_existential_1Tm + 1) = 0u;
    *(boxed_opaque_existential_1Tm + 3) = 0u;
    *(boxed_opaque_existential_1Tm + 5) = 0u;
    *(boxed_opaque_existential_1Tm + 7) = 0u;
    boxed_opaque_existential_1Tm[9] = 0;
    *(boxed_opaque_existential_1Tm + 80) = 3;
    sub_1DCB41F98(v27);
  }

LABEL_8:
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 136);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DCE0B274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB193FC;

  return sub_1DCE0ACCC(a1, a2, a3);
}

uint64_t static NLProducerResult.usoGraph(graph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DB44C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  OUTLINED_FUNCTION_0_69();

  return swift_storeEnumTagMultiPayload();
}

id static NLProducerResult.error(error:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  OUTLINED_FUNCTION_0_69();
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t static NLProducerResult.usoGraphOptions(options:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  OUTLINED_FUNCTION_0_69();
  swift_storeEnumTagMultiPayload();
}

uint64_t static NLProducerResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7508, &qword_1DD0F8C80);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v14 - v8;
  v10 = *(v7 + 56);
  sub_1DCE0A9F4(a1, &v14 - v8);
  sub_1DCE0A9F4(a2, &v9[v10]);
  type metadata accessor for NLProducerResult.ProducerResultBase(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (v12 == 1)
      {
LABEL_4:
        sub_1DCE0B5BC(&v9[v10]);
        sub_1DCE0B5BC(v9);
        return 1;
      }
    }

    else if (v12 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!v12)
  {
    goto LABEL_4;
  }

  sub_1DCE0B554(v9);
  return 0;
}

uint64_t sub_1DCE0B554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7508, &qword_1DD0F8C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCE0B5BC(uint64_t a1)
{
  v2 = type metadata accessor for NLProducerResult.ProducerResultBase(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of NLRepresentationProducing.makeNLRepresentation(responseId:eventId:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_1DCB193FC;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

void *initializeBufferWithCopyOfBuffer for NLProducerResult(void *a1, void *a2)
{
  if ((*(*(type metadata accessor for NLProducerResult.ProducerResultBase(0) - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = *a2;
    v6 = v5;
    *a1 = v5;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
  }

  else
  {
    v7 = sub_1DD0DB44C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for NLProducerResult(void **a1)
{
  type metadata accessor for NLProducerResult.ProducerResultBase(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v6 = *a1;

      break;
    case 1:
      v5 = *a1;

      break;
    case 0:
      v3 = sub_1DD0DB44C();
      v4 = *(*(v3 - 8) + 8);

      v4(a1, v3);
      break;
  }
}

void **initializeWithCopy for NLProducerResult(void **a1, void **a2)
{
  type metadata accessor for NLProducerResult.ProducerResultBase(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = *a2;
    v6 = v5;
    *a1 = v5;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
  }

  else
  {
    v7 = sub_1DD0DB44C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **assignWithCopy for NLProducerResult(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_1DCE0B5BC(a1);
    type metadata accessor for NLProducerResult.ProducerResultBase(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v5 = *a2;
      v6 = v5;
      *a1 = v5;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
    }

    else
    {
      v7 = sub_1DD0DB44C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for NLProducerResult(void *a1, const void *a2)
{
  v4 = type metadata accessor for NLProducerResult.ProducerResultBase(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v5);
  }

  else
  {
    v7 = sub_1DD0DB44C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for NLProducerResult(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCE0B5BC(a1);
  v4 = type metadata accessor for NLProducerResult.ProducerResultBase(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v7 = sub_1DD0DB44C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v5 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v5);
}

uint64_t sub_1DCE0BD68()
{
  result = type metadata accessor for NLProducerResult.ProducerResultBase(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1DCE0BDF4(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v6 = *a2;
    v7 = v6;
    *a1 = v6;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
  }

  else
  {
    v8 = sub_1DD0DB44C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void sub_1DCE0BF18(void **a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v6 = *a1;

      break;
    case 1:
      v5 = *a1;

      break;
    case 0:
      v3 = sub_1DD0DB44C();
      v4 = *(*(v3 - 8) + 8);

      v4(a1, v3);
      break;
  }
}

void **sub_1DCE0BFE0(void **a1, void **a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5 = *a2;
    v6 = v5;
    *a1 = v5;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
  }

  else
  {
    v7 = sub_1DD0DB44C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **sub_1DCE0C0B8(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_1DCE0B5BC(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v5 = *a2;
      v6 = v5;
      *a1 = v5;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
    }

    else
    {
      v7 = sub_1DD0DB44C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_1DCE0C1A0(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_1DD0DB44C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1DCE0C26C(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCE0B5BC(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_1DD0DB44C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_1DCE0C348()
{
  result = sub_1DD0DB44C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t NLRouterParse.nlRoutingDecision.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DD0DD12C();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t NLRouterParse.input.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NLRouterParse() + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t NLRouterParse.usoParse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NLRouterParse() + 24);

  return sub_1DCE0C4D4(v3, a1);
}

uint64_t sub_1DCE0C4D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *NLRouterParse.pommesResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLRouterParse() + 28));
  v2 = v1;
  return v1;
}

uint64_t NLRouterParse.debugDescription.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_1();
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000013, 0x80000001DD11E980);
  sub_1DD0DD12C();
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](0x203A7475706E6920, 0xE800000000000000);
  v7 = type metadata accessor for NLRouterParse();
  v8 = (v0 + v7[5]);
  v14 = *v8;
  v15 = v8[1];

  v9 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v9);

  MEMORY[0x1E12A6780](0x737261506F737520, 0xEB00000000203A65);
  sub_1DCE0C4D4(v0 + v7[6], v1);
  v10 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v10);

  MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD11E9A0);
  v11 = *(v0 + v7[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7530, &qword_1DD0F8D30);
  v12 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v12);

  return 0;
}

uint64_t NLRouterParse.init(nlRoutingDecision:input:usoParse:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = sub_1DD0DD12C();
  OUTLINED_FUNCTION_2(v9);
  (*(v10 + 32))(a4, a1);
  v11 = type metadata accessor for NLRouterParse();
  v12 = (a4 + v11[5]);
  *v12 = v7;
  v12[1] = v8;
  result = sub_1DCE0C7F8(a3, a4 + v11[6]);
  *(a4 + v11[7]) = 0;
  return result;
}

uint64_t sub_1DCE0C7F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NLRouterParse.init(nlRoutingDecision:input:usoParse:pommesResponse:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = sub_1DD0DD12C();
  OUTLINED_FUNCTION_2(v11);
  (*(v12 + 32))(a5, a1);
  v13 = type metadata accessor for NLRouterParse();
  v14 = (a5 + v13[5]);
  *v14 = v9;
  v14[1] = v10;
  result = sub_1DCE0C7F8(a3, a5 + v13[6]);
  *(a5 + v13[7]) = a4;
  return result;
}

uint64_t NLRouterParse.InputCandidate.debugDescription.getter()
{
  MEMORY[0x1E12A6780](*v0, v0[1]);
  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0x2874786574;
}

uint64_t static NLRouterParse.InputCandidate.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD0DF0AC();
  }
}

uint64_t sub_1DCE0C994(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCE0CA1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E617265747475 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD0DF0AC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DCE0CABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE0C994(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCE0CAE8(uint64_t a1)
{
  v2 = sub_1DCE0CDE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE0CB24(uint64_t a1)
{
  v2 = sub_1DCE0CDE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCE0CB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE0CA1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DCE0CB90(uint64_t a1)
{
  v2 = sub_1DCE0CE38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE0CBCC(uint64_t a1)
{
  v2 = sub_1DCE0CE38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NLRouterParse.InputCandidate.encode(to:)(void *a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7538, &qword_1DD0F8D38);
  OUTLINED_FUNCTION_9(v25);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7540, &qword_1DD0F8D40);
  OUTLINED_FUNCTION_9(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v24 - v16;
  v18 = *v1;
  v24[1] = v1[1];
  v24[2] = v18;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE0CDE4();
  sub_1DD0DF24C();
  sub_1DCE0CE38();
  sub_1DD0DEF7C();
  sub_1DD0DEFBC();
  v20 = *(v4 + 8);
  v21 = OUTLINED_FUNCTION_12_44();
  v22(v21);
  return (*(v11 + 8))(v17, v9);
}

unint64_t sub_1DCE0CDE4()
{
  result = qword_1ECCA7548;
  if (!qword_1ECCA7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7548);
  }

  return result;
}

unint64_t sub_1DCE0CE38()
{
  result = qword_1ECCA7550;
  if (!qword_1ECCA7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7550);
  }

  return result;
}

uint64_t NLRouterParse.InputCandidate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7558, &qword_1DD0F8D48);
  OUTLINED_FUNCTION_9(v4);
  v48 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7560, &qword_1DD0F8D50);
  OUTLINED_FUNCTION_9(v12);
  v49 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v46 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE0CDE4();
  sub_1DD0DF23C();
  if (v2)
  {
    goto LABEL_8;
  }

  v46[2] = v11;
  v47 = a1;
  v46[1] = v4;
  v21 = v50;
  v22 = sub_1DD0DEF5C();
  result = sub_1DCB547F8(v22, 0);
  v26 = v12;
  if (v24 == v25 >> 1)
  {
LABEL_7:
    v31 = sub_1DD0DECAC();
    swift_allocError();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
    *v33 = &type metadata for NLRouterParse.InputCandidate;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v49 + 8))(v19, v26);
    a1 = v47;
LABEL_8:
    v45 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  if (v24 < (v25 >> 1))
  {
    sub_1DCB54800(v24 + 1);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      sub_1DCE0CE38();
      sub_1DD0DEEBC();
      v35 = sub_1DD0DEF0C();
      v36 = v49;
      v37 = v35;
      v39 = v38;
      swift_unknownObjectRelease();
      v40 = OUTLINED_FUNCTION_15_47();
      v41(v40);
      v42 = *(v36 + 8);
      v43 = OUTLINED_FUNCTION_12_44();
      v44(v43);
      *v21 = v37;
      v21[1] = v39;
      v45 = v47;
      return __swift_destroy_boxed_opaque_existential_1Tm(v45);
    }

    v26 = v12;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCE0D268(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001DD11EA10 == a2;
  if (v3 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65737261506F7375 && a2 == 0xE800000000000000;
      if (v7 || (OUTLINED_FUNCTION_7_8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == OUTLINED_FUNCTION_11_48() && a2 == v8)
      {

        return 3;
      }

      else
      {
        v10 = OUTLINED_FUNCTION_7_8();

        if (v10)
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

uint64_t sub_1DCE0D380(char a1)
{
  result = 0x7475706E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x65737261506F7375;
      break;
    case 3:
      result = OUTLINED_FUNCTION_11_48();
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1DCE0D444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCE0D268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCE0D46C(uint64_t a1)
{
  v2 = sub_1DCE0E070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCE0D4A8(uint64_t a1)
{
  v2 = sub_1DCE0E070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NLRouterParse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v61 - v6;
  v8 = sub_1DD0DD12C();
  v9 = OUTLINED_FUNCTION_9(v8);
  v65 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9, v13);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7568, &qword_1DD0F8D58);
  OUTLINED_FUNCTION_9(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20, v21);
  v64 = type metadata accessor for NLRouterParse();
  v22 = OUTLINED_FUNCTION_2(v64);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  OUTLINED_FUNCTION_16();
  v66 = v27 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1DCE0E070();
  v30 = v67;
  sub_1DD0DF23C();
  if (v30)
  {
    v31 = 0;
    v32 = v8;
    goto LABEL_4;
  }

  v67 = v7;
  LOBYTE(v69) = 0;
  OUTLINED_FUNCTION_3_81();
  sub_1DCE0E268(v33, v34);
  sub_1DD0DEF4C();
  v36 = *(v65 + 32);
  v37 = v66;
  v62 = v8;
  v36(v66, v16);
  v71 = 1;
  sub_1DCE0E0C4();
  OUTLINED_FUNCTION_6_52();
  sub_1DD0DEF4C();
  v38 = v70;
  v39 = v64;
  v40 = (v37 + *(v64 + 20));
  *v40 = v69;
  v40[1] = v38;
  type metadata accessor for USOParse();
  LOBYTE(v69) = 2;
  OUTLINED_FUNCTION_4_78();
  sub_1DCE0E268(v41, v42);
  v43 = v67;
  sub_1DD0DEEFC();
  sub_1DCE0C7F8(v43, v37 + *(v39 + 24));
  v71 = 3;
  sub_1DCB5414C();
  OUTLINED_FUNCTION_6_52();
  sub_1DD0DEEFC();
  v32 = v62;
  if (v70 >> 60 == 15)
  {
    v47 = OUTLINED_FUNCTION_2_71();
    v48(v47);
    v49 = 0;
LABEL_9:
    v50 = v63;
    v51 = v66;
    *(v66 + *(v64 + 28)) = v49;
    sub_1DCE0E118(v51, v50);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    return sub_1DCE0E2B0(v51, type metadata accessor for NLRouterParse);
  }

  sub_1DCE0E17C();
  OUTLINED_FUNCTION_26_6();
  sub_1DD0DD74C();
  v49 = sub_1DD0DE71C();
  if (v49)
  {
    v52 = OUTLINED_FUNCTION_2_71();
    v53(v52);
    v54 = OUTLINED_FUNCTION_13_46();
    sub_1DCB2C520(v54, v55);
    goto LABEL_9;
  }

  sub_1DCE0E1C0();
  swift_allocError();
  *v56 = 0xD000000000000045;
  *(v56 + 8) = 0x80000001DD11E9C0;
  v31 = 1;
  *(v56 + 16) = 1;
  swift_willThrow();
  v57 = OUTLINED_FUNCTION_13_46();
  sub_1DCB2C520(v57, v58);
  v59 = OUTLINED_FUNCTION_2_71();
  v60(v59);
LABEL_4:
  result = __swift_destroy_boxed_opaque_existential_1Tm(v68);
  if (v31)
  {
    v44 = v66;
    (*(v65 + 8))(v66, v32);
    v45 = v64;
    v46 = *(v44 + *(v64 + 20) + 8);

    return sub_1DCB0E9D8(v44 + *(v45 + 24), &qword_1ECCA7E60, &unk_1DD0E8E20);
  }

  return result;
}

uint64_t NLRouterParse.encode(to:)(void *a1)
{
  v4 = v1;
  v35 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7588, &qword_1DD0F8D60);
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_4_1();
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCE0E070();
  sub_1DD0DF24C();
  LOBYTE(v33) = 0;
  sub_1DD0DD12C();
  OUTLINED_FUNCTION_3_81();
  sub_1DCE0E268(v14, v15);
  OUTLINED_FUNCTION_14_44();
  sub_1DD0DEFFC();
  if (!v2)
  {
    v16 = type metadata accessor for NLRouterParse();
    v17 = v4 + v16[5];
    v18 = *(v17 + 8);
    v33 = *v17;
    v34 = v18;
    sub_1DCE0E214();

    sub_1DD0DEFFC();

    v19 = v16[6];
    LOBYTE(v33) = 2;
    type metadata accessor for USOParse();
    OUTLINED_FUNCTION_4_78();
    sub_1DCE0E268(v20, v21);
    OUTLINED_FUNCTION_14_44();
    sub_1DD0DEFAC();
    v24 = *(v4 + v16[7]);
    if (v24)
    {
      v25 = objc_opt_self();
      v33 = 0;
      v26 = v24;
      v27 = [v25 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v33];
      v28 = v33;
      if (v27)
      {
        v29 = sub_1DD0DAF2C();
        v31 = v30;

        v33 = v29;
        v34 = v31;
        sub_1DCB51540();
        sub_1DD0DEFFC();
        (*(v8 + 8))(v3, v6);

        result = sub_1DCB21A14(v29, v31);
        goto LABEL_5;
      }

      v32 = v28;
      sub_1DD0DAE0C();

      swift_willThrow();
    }
  }

  result = (*(v8 + 8))(v3, v6);
LABEL_5:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static NLRouterParse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_6();
  v5 = type metadata accessor for USOParse();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  OUTLINED_FUNCTION_16();
  v12 = v11 - v10;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20) - 8) + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75A0, &qword_1DD0F8D68);
  OUTLINED_FUNCTION_2(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_4_1();
  if ((sub_1DD0DD11C() & 1) == 0)
  {
    return 0;
  }

  v23 = type metadata accessor for NLRouterParse();
  v24 = v23[5];
  v25 = *(v2 + v24);
  v26 = *(v2 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v25 == *v27 && v26 == v27[1];
  if (!v28 && (sub_1DD0DF0AC() & 1) == 0)
  {
    return 0;
  }

  v29 = v23[6];
  v30 = *(v18 + 48);
  sub_1DCE0C4D4(v2 + v29, v3);
  sub_1DCE0C4D4(a2 + v29, v3 + v30);
  OUTLINED_FUNCTION_17_3(v3);
  if (!v28)
  {
    v31 = OUTLINED_FUNCTION_13_46();
    sub_1DCE0C4D4(v31, v32);
    OUTLINED_FUNCTION_17_3(v3 + v30);
    if (!v33)
    {
      sub_1DCC6D300(v3 + v30, v12);
      v35 = static USOParse.== infix(_:_:)(v17, v12);
      sub_1DCE0E2B0(v12, type metadata accessor for USOParse);
      sub_1DCE0E2B0(v17, type metadata accessor for USOParse);
      sub_1DCB0E9D8(v3, &qword_1ECCA7E60, &unk_1DD0E8E20);
      if (!v35)
      {
        return 0;
      }

      goto LABEL_19;
    }

    sub_1DCE0E2B0(v17, type metadata accessor for USOParse);
LABEL_15:
    sub_1DCB0E9D8(v3, &qword_1ECCA75A0, &qword_1DD0F8D68);
    return 0;
  }

  OUTLINED_FUNCTION_17_3(v3 + v30);
  if (!v28)
  {
    goto LABEL_15;
  }

  sub_1DCB0E9D8(v3, &qword_1ECCA7E60, &unk_1DD0E8E20);
LABEL_19:
  v36 = v23[7];
  v37 = *(v2 + v36);
  v38 = *(a2 + v36);
  if (v37)
  {
    if (v38)
    {
      sub_1DD0DD74C();
      v39 = v38;
      v40 = v37;
      v41 = sub_1DD0DE8EC();

      if (v41)
      {
        return 1;
      }
    }
  }

  else if (!v38)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1DCE0E070()
{
  result = qword_1ECCA7570;
  if (!qword_1ECCA7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7570);
  }

  return result;
}

unint64_t sub_1DCE0E0C4()
{
  result = qword_1ECCA7580;
  if (!qword_1ECCA7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7580);
  }

  return result;
}

uint64_t sub_1DCE0E118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterParse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCE0E17C()
{
  result = qword_1EDE461C0;
  if (!qword_1EDE461C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE461C0);
  }

  return result;
}

unint64_t sub_1DCE0E1C0()
{
  result = qword_1ECCA7CA0;
  if (!qword_1ECCA7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7CA0);
  }

  return result;
}

unint64_t sub_1DCE0E214()
{
  result = qword_1ECCA7598;
  if (!qword_1ECCA7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA7598);
  }

  return result;
}

uint64_t sub_1DCE0E268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCE0E2B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *initializeBufferWithCopyOfBuffer for NLRouterParse(void *a1, void *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = sub_1DD0DD12C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = a1 + v8;
  v13 = a2 + v8;
  v14 = type metadata accessor for USOParse();

  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    memcpy(v12, v13, *(*(v15 - 8) + 64));
  }

  else
  {
    v16 = sub_1DD0DB4BC();
    (*(*(v16 - 8) + 16))(v12, v13, v16);
    v17 = v14[5];
    v18 = sub_1DD0DB3EC();
    if (__swift_getEnumTagSinglePayload(&v13[v17], 1, v18))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
      memcpy(&v12[v17], &v13[v17], *(*(v19 - 8) + 64));
    }

    else
    {
      (*(*(v18 - 8) + 16))(&v12[v17], &v13[v17], v18);
      __swift_storeEnumTagSinglePayload(&v12[v17], 0, 1, v18);
    }

    v20 = v14[6];
    v21 = &v12[v20];
    v22 = &v13[v20];
    v23 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v23;
    v24 = v14[7];
    v25 = &v12[v24];
    v26 = &v13[v24];
    v25[4] = v26[4];
    *v25 = *v26;

    __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  }

  v27 = a3[7];
  v28 = *(a2 + v27);
  *(a1 + v27) = v28;
  v29 = v28;
  return a1;
}

void destroy for NLRouterParse(uint64_t a1, int *a2)
{
  v4 = sub_1DD0DD12C();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + a2[5] + 8);

  v6 = a1 + a2[6];
  v7 = type metadata accessor for USOParse();
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = sub_1DD0DB4BC();
    (*(*(v8 - 8) + 8))(v6, v8);
    v9 = *(v7 + 20);
    v10 = sub_1DD0DB3EC();
    if (!__swift_getEnumTagSinglePayload(v6 + v9, 1, v10))
    {
      (*(*(v10 - 8) + 8))(v6 + v9, v10);
    }

    v11 = *(v6 + *(v7 + 24) + 8);
  }

  v12 = *(a1 + a2[7]);
}

uint64_t initializeWithCopy for NLRouterParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DD12C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = type metadata accessor for USOParse();

  if (__swift_getEnumTagSinglePayload(v13, 1, v14))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    memcpy(v12, v13, *(*(v15 - 8) + 64));
  }

  else
  {
    v16 = sub_1DD0DB4BC();
    (*(*(v16 - 8) + 16))(v12, v13, v16);
    v17 = v14[5];
    v18 = sub_1DD0DB3EC();
    if (__swift_getEnumTagSinglePayload(&v13[v17], 1, v18))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
      memcpy(&v12[v17], &v13[v17], *(*(v19 - 8) + 64));
    }

    else
    {
      (*(*(v18 - 8) + 16))(&v12[v17], &v13[v17], v18);
      __swift_storeEnumTagSinglePayload(&v12[v17], 0, 1, v18);
    }

    v20 = v14[6];
    v21 = &v12[v20];
    v22 = &v13[v20];
    v23 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v23;
    v24 = v14[7];
    v25 = &v12[v24];
    v26 = &v13[v24];
    v25[4] = v26[4];
    *v25 = *v26;

    __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
  }

  v27 = a3[7];
  v28 = *(a2 + v27);
  *(a1 + v27) = v28;
  v29 = v28;
  return a1;
}

uint64_t assignWithCopy for NLRouterParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DD12C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  v11 = a3[6];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v14 = type metadata accessor for USOParse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v14);
  v16 = __swift_getEnumTagSinglePayload(v13, 1, v14);
  if (!EnumTagSinglePayload)
  {
    if (v16)
    {
      sub_1DCE0E2B0(v12, type metadata accessor for USOParse);
      goto LABEL_7;
    }

    v22 = sub_1DD0DB4BC();
    (*(*(v22 - 8) + 24))(v12, v13, v22);
    v23 = v14[5];
    v24 = sub_1DD0DB3EC();
    v25 = __swift_getEnumTagSinglePayload(&v12[v23], 1, v24);
    v26 = __swift_getEnumTagSinglePayload(&v13[v23], 1, v24);
    if (v25)
    {
      if (!v26)
      {
        (*(*(v24 - 8) + 16))(&v12[v23], &v13[v23], v24);
        __swift_storeEnumTagSinglePayload(&v12[v23], 0, 1, v24);
LABEL_16:
        v36 = v14[6];
        v37 = &v12[v36];
        v38 = &v13[v36];
        *v37 = *v38;
        v39 = *(v37 + 1);
        *(v37 + 1) = *(v38 + 1);

        v40 = v14[7];
        v41 = &v12[v40];
        v42 = &v13[v40];
        v43 = *v42;
        v41[4] = v42[4];
        *v41 = v43;
        goto LABEL_17;
      }
    }

    else
    {
      v34 = *(v24 - 8);
      if (!v26)
      {
        (*(v34 + 24))(&v12[v23], &v13[v23], v24);
        goto LABEL_16;
      }

      (*(v34 + 8))(&v12[v23], v24);
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy(&v12[v23], &v13[v23], *(*(v35 - 8) + 64));
    goto LABEL_16;
  }

  if (v16)
  {
LABEL_7:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    memcpy(v12, v13, *(*(v21 - 8) + 64));
    goto LABEL_17;
  }

  v17 = sub_1DD0DB4BC();
  (*(*(v17 - 8) + 16))(v12, v13, v17);
  v18 = v14[5];
  v19 = sub_1DD0DB3EC();
  if (__swift_getEnumTagSinglePayload(&v13[v18], 1, v19))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy(&v12[v18], &v13[v18], *(*(v20 - 8) + 64));
  }

  else
  {
    (*(*(v19 - 8) + 16))(&v12[v18], &v13[v18], v19);
    __swift_storeEnumTagSinglePayload(&v12[v18], 0, 1, v19);
  }

  v27 = v14[6];
  v28 = &v12[v27];
  v29 = &v13[v27];
  *v28 = *v29;
  *(v28 + 1) = *(v29 + 1);
  v30 = v14[7];
  v31 = &v12[v30];
  v32 = &v13[v30];
  v33 = *v32;
  v31[4] = v32[4];
  *v31 = v33;

  __swift_storeEnumTagSinglePayload(v12, 0, 1, v14);
LABEL_17:
  v44 = a3[7];
  v45 = *(a1 + v44);
  v46 = *(a2 + v44);
  *(a1 + v44) = v46;
  v47 = v46;

  return a1;
}

uint64_t initializeWithTake for NLRouterParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DD12C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for USOParse();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    memcpy(v8, v9, *(*(v11 - 8) + 64));
  }

  else
  {
    v12 = sub_1DD0DB4BC();
    (*(*(v12 - 8) + 32))(v8, v9, v12);
    v13 = v10[5];
    v14 = sub_1DD0DB3EC();
    if (__swift_getEnumTagSinglePayload(&v9[v13], 1, v14))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
      memcpy(&v8[v13], &v9[v13], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 32))(&v8[v13], &v9[v13], v14);
      __swift_storeEnumTagSinglePayload(&v8[v13], 0, 1, v14);
    }

    *&v8[v10[6]] = *&v9[v10[6]];
    v16 = v10[7];
    v17 = &v8[v16];
    v18 = &v9[v16];
    v17[4] = v18[4];
    *v17 = *v18;
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  }

  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t assignWithTake for NLRouterParse(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DD0DD12C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;

  v13 = a3[6];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for USOParse();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v16);
  v18 = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (!EnumTagSinglePayload)
  {
    if (v18)
    {
      sub_1DCE0E2B0(v14, type metadata accessor for USOParse);
      goto LABEL_7;
    }

    v24 = sub_1DD0DB4BC();
    (*(*(v24 - 8) + 40))(v14, v15, v24);
    v25 = v16[5];
    v26 = sub_1DD0DB3EC();
    v27 = __swift_getEnumTagSinglePayload(&v14[v25], 1, v26);
    v28 = __swift_getEnumTagSinglePayload(&v15[v25], 1, v26);
    if (v27)
    {
      if (!v28)
      {
        (*(*(v26 - 8) + 32))(&v14[v25], &v15[v25], v26);
        __swift_storeEnumTagSinglePayload(&v14[v25], 0, 1, v26);
LABEL_16:
        v34 = v16[6];
        v35 = &v14[v34];
        v36 = &v15[v34];
        v38 = *v36;
        v37 = *(v36 + 1);
        v39 = *(v35 + 1);
        *v35 = v38;
        *(v35 + 1) = v37;

        v40 = v16[7];
        v41 = &v14[v40];
        v42 = &v15[v40];
        *v41 = *v42;
        v41[4] = v42[4];
        goto LABEL_17;
      }
    }

    else
    {
      v32 = *(v26 - 8);
      if (!v28)
      {
        (*(v32 + 40))(&v14[v25], &v15[v25], v26);
        goto LABEL_16;
      }

      (*(v32 + 8))(&v14[v25], v26);
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy(&v14[v25], &v15[v25], *(*(v33 - 8) + 64));
    goto LABEL_16;
  }

  if (v18)
  {
LABEL_7:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
    memcpy(v14, v15, *(*(v23 - 8) + 64));
    goto LABEL_17;
  }

  v19 = sub_1DD0DB4BC();
  (*(*(v19 - 8) + 32))(v14, v15, v19);
  v20 = v16[5];
  v21 = sub_1DD0DB3EC();
  if (__swift_getEnumTagSinglePayload(&v15[v20], 1, v21))
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    memcpy(&v14[v20], &v15[v20], *(*(v22 - 8) + 64));
  }

  else
  {
    (*(*(v21 - 8) + 32))(&v14[v20], &v15[v20], v21);
    __swift_storeEnumTagSinglePayload(&v14[v20], 0, 1, v21);
  }

  *&v14[v16[6]] = *&v15[v16[6]];
  v29 = v16[7];
  v30 = &v14[v29];
  v31 = &v15[v29];
  v30[4] = v31[4];
  *v30 = *v31;
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v16);
LABEL_17:
  v43 = a3[7];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);

  return a1;
}

void sub_1DCE0F398()
{
  v0 = sub_1DD0DD12C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DCE0F470();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_1DCE0F470()
{
  if (!qword_1EDE4D858[0])
  {
    type metadata accessor for USOParse();
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDE4D858);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLRouterParse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCE0F5C4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCE0F674()
{
  result = qword_1ECCA75A8;
  if (!qword_1ECCA75A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75A8);
  }

  return result;
}

unint64_t sub_1DCE0F6CC()
{
  result = qword_1ECCA75B0;
  if (!qword_1ECCA75B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75B0);
  }

  return result;
}

unint64_t sub_1DCE0F724()
{
  result = qword_1ECCA75B8;
  if (!qword_1ECCA75B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75B8);
  }

  return result;
}

unint64_t sub_1DCE0F77C()
{
  result = qword_1ECCA75C0;
  if (!qword_1ECCA75C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75C0);
  }

  return result;
}

unint64_t sub_1DCE0F7D4()
{
  result = qword_1ECCA75C8;
  if (!qword_1ECCA75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75C8);
  }

  return result;
}

unint64_t sub_1DCE0F82C()
{
  result = qword_1ECCA75D0;
  if (!qword_1ECCA75D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75D0);
  }

  return result;
}

unint64_t sub_1DCE0F884()
{
  result = qword_1ECCA75D8;
  if (!qword_1ECCA75D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75D8);
  }

  return result;
}

unint64_t sub_1DCE0F8DC()
{
  result = qword_1ECCA75E0;
  if (!qword_1ECCA75E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75E0);
  }

  return result;
}

unint64_t sub_1DCE0F934()
{
  result = qword_1ECCA75E8;
  if (!qword_1ECCA75E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA75E8);
  }

  return result;
}

void sub_1DCE0F990(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

void SiriEnvironment.nlRoutingDecision.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for NLRoutingDecisionProvider();
  a1[3] = OUTLINED_FUNCTION_0_70(&qword_1EDE47C00);
  sub_1DD0DCA7C();
}

void NLRoutingDecisionProvider.__allocating_init(storage:)()
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  NLRoutingDecisionProvider.init(storage:)();
}

void NLRoutingDecisionProvider.init(storage:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_4_79();
  OUTLINED_FUNCTION_5_70(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F8, &qword_1DD0F9278);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void NLRoutingDecisionProvider.__allocating_init(genAIFallbackSuppressReason:)()
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  NLRoutingDecisionProvider.init(genAIFallbackSuppressReason:)();
}

void sub_1DCE0FB9C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA75F0, &qword_1DD0F9270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  sub_1DCB706C8(a1, &v10 - v7);
  v9 = *a2;
  sub_1DCB70738(v8);
}

void sub_1DCE0FC30(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7600, &unk_1DD0F93E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  v10 = *a2;
  sub_1DCE0FD5C(v8);
}

void sub_1DCE0FD04()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_1DD0DCF8C();
}

void sub_1DCE0FD5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7600, &unk_1DD0F93E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  swift_beginAccess();
  v9 = *(v1 + 24);
  (*(v4 + 16))(v8, a1, v3);
  sub_1DD0DCF8C();
}

void sub_1DCE0FEF4()
{
  type metadata accessor for NLRoutingDecisionProvider();

    ;
  }
}

void sub_1DCE0FF40()
{
  type metadata accessor for NLRoutingDecisionProvider();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCE10098()
{

  return swift_deallocClassInstance();
}

uint64_t static NotificationTemplates.genericHandoffNotification()()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_1DD0DB0FC();
  v0[17] = v1;
  v2 = *(v1 - 8);
  v0[18] = v2;
  v3 = *(v2 + 64) + 15;
  v0[19] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCE101A8()
{
  OUTLINED_FUNCTION_33();
  if (qword_1ECCA1320 != -1)
  {
    OUTLINED_FUNCTION_3_82();
  }

  sub_1DCB28B08(&xmmword_1ECCD2698, v0 + 56, qword_1ECCA7608, &unk_1DD0F9448);
  if (!*(v0 + 80))
  {
    v1 = *(v0 + 152);
    _s11SiriKitFlow11DeviceStatePAAE10siriLocale10Foundation0G0Vvg_0();
    if (qword_1EDE46628 != -1)
    {
      OUTLINED_FUNCTION_58_0();
    }

    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 136);
    v5 = qword_1EDE46630;
    sub_1DCB4E718(v0 + 96);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    sub_1DCE11290(v2, v5);
  }

  sub_1DCAFF9E8((v0 + 56), v0 + 16);
  v6 = *(v0 + 48);
  v7 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v8 = sub_1DCDAE468();
  *(v0 + 160) = v8;
  v9 = *v7;
  v10 = OUTLINED_FUNCTION_9_1(&dword_1DD0F4BF0);
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_1DCE10374;

  return v12(48, v8);
}

uint64_t sub_1DCE10374()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 168);
  v9 = *(v7 + 160);
  v10 = *v2;
  OUTLINED_FUNCTION_27();
  *v11 = v10;
  v5[22] = v1;

  if (!v1)
  {
    v5[23] = v0;
    v5[24] = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCE104A4()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[19];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v2 = v0[1];
  v4 = v0[23];
  v3 = v0[24];

  return v2(v3, v4);
}

uint64_t sub_1DCE10514()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[19];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_29();
  v3 = v0[22];

  return v2();
}

void static NotificationTemplates.genericHandoffNotification(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v7 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  sub_1DD0DCF8C();
}

double sub_1DCE10634()
{
  qword_1ECCD26B8 = 0;
  result = 0.0;
  xmmword_1ECCD2698 = 0u;
  unk_1ECCD26A8 = 0u;
  return result;
}

uint64_t sub_1DCE1064C()
{
  OUTLINED_FUNCTION_42();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1DCE106D8;

  return static NotificationTemplates.genericHandoffNotification()();
}

uint64_t sub_1DCE106D8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v2;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v5[5] = v1;

  if (!v1)
  {
    v5[6] = v0;
    v5[7] = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void static NotificationTemplates.generatePersonalDomainsActivityNotificationTitle(device:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v9 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v9);
  sub_1DCB28B08(a1, v12, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = v12[1];
  *(v10 + 32) = v12[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v13;
  *(v10 + 72) = a2;
  *(v10 + 80) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE108DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCE10900, 0, 0);
}

uint64_t sub_1DCE10900()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = OUTLINED_FUNCTION_9_1(dword_1DD10C2C0);
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1DCE109C0;

  return v5(&unk_1DD0F94B0, v2);
}

uint64_t sub_1DCE109C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  *(v10 + 72) = v11;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCE10ACC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCE10B64;

  return static NotificationTemplates.generatePersonalDomainsActivityNotificationTitle(device:)();
}

uint64_t sub_1DCE10B64()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v10 = *(v9 + 24);
  v11 = *v1;
  OUTLINED_FUNCTION_27();
  *v12 = v11;

  if (v0)
  {
    v13 = *(v11 + 8);

    return v13();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v15, v16, v17);
  }
}

uint64_t static NotificationTemplates.generatePersonalDomainsActivityNotificationTitle(device:)()
{
  OUTLINED_FUNCTION_42();
  v0[27] = v1;
  v2 = sub_1DD0DB0FC();
  v0[28] = v2;
  v3 = *(v2 - 8);
  v0[29] = v3;
  v4 = *(v3 + 64) + 15;
  v0[30] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCE10D60()
{
  v1 = *(v0 + 216);
  v2 = sub_1DD0DDE9C();
  sub_1DCB28B08(v1, v0 + 16, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 40))
  {
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v4 = *(v3 + 8);
    v5 = OUTLINED_FUNCTION_15_9();
    v7 = v6(v5);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_1DCB28B08(*(v0 + 216), v0 + 176, &qword_1ECCA8AB0, &qword_1DD0E23E0);
    if (*(v0 + 200))
    {
      v8 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
      v9 = *(v8 + 200);
      v10 = OUTLINED_FUNCTION_15_9();
      v11(v10);
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
      if (v13)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v14 = OUTLINED_FUNCTION_15_9();
        sub_1DCC5FCB4(v14, v15, 0xD000000000000017, v16);
      }

LABEL_9:
      if (qword_1ECCA1320 != -1)
      {
        OUTLINED_FUNCTION_3_82();
      }

      sub_1DCB28B08(&xmmword_1ECCD2698, v0 + 96, qword_1ECCA7608, &unk_1DD0F9448);
      if (*(v0 + 120))
      {
        sub_1DCAFF9E8((v0 + 96), v0 + 56);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        sub_1DCDAC354(v2);
      }

      v18 = *(v0 + 240);
      _s11SiriKitFlow11DeviceStatePAAE10siriLocale10Foundation0G0Vvg_0();
      if (qword_1EDE46628 != -1)
      {
        OUTLINED_FUNCTION_58_0();
      }

      v20 = *(v0 + 232);
      v19 = *(v0 + 240);
      v21 = *(v0 + 224);
      v22 = qword_1EDE46630;
      sub_1DCB4E718(v0 + 136);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      sub_1DCE11290(v19, v22);
    }

    v17 = v0 + 176;
  }

  else
  {
    v17 = v0 + 16;
  }

  sub_1DCB16D50(v17, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  goto LABEL_9;
}

uint64_t sub_1DCE11088()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_2_6();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 256);
  v9 = *(v7 + 248);
  v10 = *v2;
  OUTLINED_FUNCTION_27();
  *v11 = v10;
  v5[33] = v1;

  if (!v1)
  {
    v5[34] = v0;
    v5[35] = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCE111B8()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[30];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  v2 = v0[1];
  v4 = v0[34];
  v3 = v0[35];

  return v2(v3, v4);
}

uint64_t sub_1DCE11228()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[30];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  OUTLINED_FUNCTION_29();
  v3 = v0[33];

  return v2();
}

void sub_1DCE11290(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_1DD0DB0FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v12[3] = v4;
  v12[4] = &protocol witness table for RefreshableDeviceState;
  v12[0] = a2;
  sub_1DCB17CA0(v12, v11);
  (*(v6 + 16))(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1DCAFF9E8(v11, v10 + 16);
  (*(v6 + 32))(v10 + v9, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  type metadata accessor for CATTemplateExecutor();
  swift_allocObject();
  sub_1DCC6FD14(sub_1DCE116DC, v10);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE11448()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;
  OUTLINED_FUNCTION_8_1();

  return sub_1DCE1064C();
}

uint64_t sub_1DCE114F0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  v8 = OUTLINED_FUNCTION_8_1();

  return sub_1DCE108DC(v8, v9, v10, v11, v3, v4);
}

_BYTE *storeEnumTagSinglePayload for NotificationTemplates(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCE11648()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AD3C;

  return sub_1DCE10ACC(v2);
}

void sub_1DCE116DC()
{
  v1 = *(sub_1DD0DB0FC() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  sub_1DCC71ACC((v0 + 16), v2);
}

__n128 Observe.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t static Observe._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = a3;
  v65 = sub_1DD0DDAEC();
  v64 = OUTLINED_FUNCTION_9_54();
  v4 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9(v4);
  v66 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v54 - v10;
  OUTLINED_FUNCTION_15_2();
  v70 = v12;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_9(v13);
  v68 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v54 - v19;
  v58 = type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_8_56();
  v57 = swift_getWitnessTable();
  v21 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9(v21);
  v62 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_2_72(v28, &v77);
  v55 = swift_getWitnessTable();
  v73 = v21;
  v74 = v28;
  v75 = v55;
  v76 = MEMORY[0x1E69E7288];
  v29 = sub_1DD0DDA6C();
  OUTLINED_FUNCTION_9(v29);
  v67 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_1_84(v35);
  v59 = swift_getWitnessTable();
  v61 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9(v61);
  v63 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v39, v40);
  OUTLINED_FUNCTION_34_0();
  v56 = v41;
  type metadata accessor for InputBinding();
  sub_1DCD96540();
  v71 = v72;
  OUTLINED_FUNCTION_10_51();
  sub_1DD0DEC1C();

  OUTLINED_FUNCTION_14_45();
  v73 = v42 & 0xFFFFFFFFFFFFLL | 0x3C65000000000000;
  v74 = 0xE800000000000000;
  v43 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v43);

  OUTLINED_FUNCTION_13_47();
  sub_1DCF0E65C(v73, v74, v65, v64);

  v44 = v69;
  sub_1DD0DDC8C();
  (*(v66 + 8))(v11, v4);
  v45 = swift_allocObject();
  *(v45 + 16) = a2;
  *(v45 + 24) = v44;
  v46 = v54[1];
  sub_1DD0DDC3C();

  (*(v68 + 8))(v20, v13);
  v47 = v54[0];
  sub_1DD0DDC9C();
  (*(v62 + 8))(v46, v21);
  OUTLINED_FUNCTION_10_51();
  sub_1DD0DEC1C();

  OUTLINED_FUNCTION_14_45();
  v73 = v48 & 0xFFFFFFFFFFFFLL | 0x3C65000000000000;
  v74 = 0xE800000000000000;
  v49 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v49);

  OUTLINED_FUNCTION_12_45();
  v50 = v56;
  sub_1DCF0E65C(v73, v74, v29, v59);

  (*(v67 + 8))(v47, v29);
  v51 = v61;
  swift_getWitnessTable();
  v52 = sub_1DD0DDBFC();
  (*(v63 + 8))(v50, v51);
  return v52;
}

uint64_t sub_1DCE11CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);
  type metadata accessor for _FlowPlanEvent();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DCE11D7C()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

uint64_t ObserveResolvable.body.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1DD0DE97C();

  return nullsub_1(v2);
}

void static ObserveResolvable._buildEventPublisher(for:)(void *a1)
{
  sub_1DD0DE97C();
  sub_1DD0DDB6C();
  swift_getWitnessTable();
  v2 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_15_2();
  swift_getWitnessTable();
  v7 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_9(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v12);
  type metadata accessor for _FlowPlanEvent();
  OUTLINED_FUNCTION_8_56();
  swift_getWitnessTable();
  v13 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_2_72(v19, &v34);
  v33[2] = v13;
  v33[3] = v19;
  v33[4] = swift_getWitnessTable();
  v33[5] = MEMORY[0x1E69E7288];
  v20 = sub_1DD0DDA6C();
  OUTLINED_FUNCTION_9(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_1_84(v25);
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_31(WitnessTable);
  v32 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9(v32);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v31);
  v33[1] = *a1;
  type metadata accessor for Resolvable();
  Resolvable.resolvedValuePublisher.getter(v33);
}

uint64_t sub_1DCE12404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DE97C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for _FlowPlanEvent();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCE12498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1DCE12404(a1, a2);
}

void sub_1DCE124B8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  static ObserveResolvable._buildEventPublisher(for:)(a1);
}

unint64_t sub_1DCE124C4()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

__n128 Observe4.init(_:_:_:_:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  result = *a1;
  v9 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 32) = *(a1 + 32);
  *(a5 + 40) = v5;
  *(a5 + 48) = v6;
  *(a5 + 56) = v7;
  return result;
}

uint64_t Observe4.body.getter(void *a1)
{
  v2 = a1[3];
  v7 = a1[2];
  sub_1DD0DE97C();
  v3 = a1[4];
  sub_1DD0DE97C();
  v4 = a1[5];
  sub_1DD0DE97C();
  v5 = OUTLINED_FUNCTION_17_30();
  return nullsub_1(v5);
}

void static Observe4._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73[4] = a8;
  v73[3] = a7;
  v79[1] = a6;
  v74[1] = a5;
  v73[0] = a4;
  v79[0] = a3;
  v76 = a9;
  v77 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_22_28();
  v75 = sub_1DD0DDB6C();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_31(WitnessTable);
  v11 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_112(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_34_0();
  v74[0] = v16;
  v17 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_22_28();
  v73[2] = sub_1DD0DDB6C();
  v73[1] = swift_getWitnessTable();
  v18 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_112(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v23);
  v64 = sub_1DD0DE97C();
  OUTLINED_FUNCTION_22_28();
  sub_1DD0DDB6C();
  swift_getWitnessTable();
  v71 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_112(v71);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v26, v27);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v28);
  OUTLINED_FUNCTION_22_28();
  sub_1DD0DDAEC();
  v29 = OUTLINED_FUNCTION_9_54();
  OUTLINED_FUNCTION_27_10(v29, v73);
  v30 = sub_1DD0DDA8C();
  OUTLINED_FUNCTION_112(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_34_0();
  v78 = v35;
  v37 = v36;
  v70 = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  v68 = swift_getWitnessTable();
  v67 = swift_getWitnessTable();
  v81 = v37;
  v82 = v71;
  v83 = v18;
  v84 = v11;
  v85 = v70;
  v86 = v69;
  v87 = v68;
  v88 = v67;
  v38 = sub_1DD0DDA2C();
  OUTLINED_FUNCTION_18_34(v38, &v78);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v41, v42);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v43);
  v81 = a2;
  v82 = v64;
  v83 = v17;
  v84 = v77;
  OUTLINED_FUNCTION_17_30();
  type metadata accessor for _FlowPlanEvent();
  v44 = swift_getWitnessTable();
  OUTLINED_FUNCTION_27_10(v44, v79);
  v45 = sub_1DD0DDA9C();
  OUTLINED_FUNCTION_9(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v48, v49);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_2_72(v51, v74);
  v65 = swift_getWitnessTable();
  v81 = v45;
  v82 = v51;
  v83 = v65;
  v84 = MEMORY[0x1E69E7288];
  v52 = sub_1DD0DDA6C();
  OUTLINED_FUNCTION_18_34(v52, &v75);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v55, v56);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_1_84(v57);
  v58 = swift_getWitnessTable();
  OUTLINED_FUNCTION_27_10(v58, &v76);
  v66 = sub_1DD0DDA5C();
  OUTLINED_FUNCTION_9(v66);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_2(v63);
  type metadata accessor for InputBinding();
  sub_1DCD96540();
  v80 = v81;
  sub_1DD0DDC8C();

  v81 = *(a1 + 40);
  type metadata accessor for Resolvable();
  Resolvable.resolvedValuePublisher.getter(&v80);
}

uint64_t sub_1DCE12F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  sub_1DD0DE97C();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  (*(*(TupleTypeMetadata - 8) + 16))(a2, a1, TupleTypeMetadata);
  type metadata accessor for _FlowPlanEvent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DCE13030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v11 = v2[9];
  return sub_1DCE12F54(a1, a2);
}

uint64_t sub_1DCE130A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCE13128(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCE13164(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DCE13200(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCE1323C()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

void __swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1DCE13370(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v2 = a1[5];

  v3 = a1[6];

  v4 = a1[7];
}

void sub_1DCE133B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  sub_1DD0DCF8C();
}

void sub_1DCE13440(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a1[5];
  a1[5] = a2[5];
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE134BC(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t sub_1DCE13520(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DCE13560(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t OfferBehaviorFlowFrame.namespace.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DCE135FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 128);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 88);
  v8 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_6_53();
  OUTLINED_FUNCTION_2(v9);
  return (*(v10 + 16))(a1, &v1[v5]);
}

uint64_t sub_1DCE136C0(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_59();
  v5 = *(v4 + 128);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  v7 = *(v6 + 88);
  v8 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_6_53();
  OUTLINED_FUNCTION_2(v9);
  (*(v10 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_1DCE1378C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_1DCE137F4(a1, a2, a3, a4);
  return v11;
}

char *sub_1DCE137F4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  *(v4 + 2) = 0xD000000000000029;
  *(v4 + 3) = 0x80000001DD113770;
  (*(*(v8[10] - 8) + 32))(&v4[v8[14]], a1, v8[10]);
  *(v4 + 4) = a3;
  *(v4 + 5) = a4;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a2, &v4[*(v9 + 120)]);
  OUTLINED_FUNCTION_66();
  v11 = *(v10 + 128);
  v12 = v8[11];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_53();
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t OfferBehaviorFlowFrame.__allocating_init(childFlowFrame:offerResponseProvider:renderer:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = *(v3 + 80);
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_5_3();
  (*(v10 + 16))(v4, a1, v8);
  sub_1DCB17CA0(a3, v19);
  sub_1DCB17CA0(a2, v18);
  v15 = swift_allocObject();
  sub_1DCAFF9E8(v18, v15 + 16);
  v16 = sub_1DCE1378C(v4, v19, sub_1DCC9E1E0, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  (*(v10 + 8))(a1, v8);
  return v16;
}

uint64_t OfferBehaviorFlowFrame.__allocating_init(childFlowFrame:offerResponse:renderer:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = *(v3 + 80);
  OUTLINED_FUNCTION_0_1();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_5_3();
  (*(v10 + 16))(v4, a1, v8);
  sub_1DCB17CA0(a3, v17);
  v15 = sub_1DCE1378C(v4, v17, sub_1DCC9E268, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  (*(v10 + 8))(a1, v8);
  return v15;
}

uint64_t sub_1DCE13B88(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v37 = a3;
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v36 - v11;
  v13 = *(v5 + 88);
  v14 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  v15 = OUTLINED_FUNCTION_6_53();
  OUTLINED_FUNCTION_0_1();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_10_2();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v36 - v27;
  sub_1DCE135FC(&v36 - v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v17 + 8))(v28, v15);
  if (EnumCaseMultiPayload == 2 && (v30 = *(a2 + *(type metadata accessor for SiriKitFlowFrameInput() + 20))) != 0)
  {
    *v24 = v30;
    swift_storeEnumTagMultiPayload();
    sub_1DCE136C0(v24);
    v31 = MEMORY[0x1E699F740];
  }

  else
  {
    v31 = MEMORY[0x1E699F738];
  }

  v32 = *v31;
  v33 = sub_1DD0DB34C();
  OUTLINED_FUNCTION_2(v33);
  (*(v34 + 104))(v12, v32);
  swift_storeEnumTagMultiPayload();
  v37(v12);
  return sub_1DCB0E9D8(v12, &unk_1ECCA9BE0, &qword_1DD0E9590);
}

uint64_t sub_1DCE13DF4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v63 = a2;
  v64 = a3;
  v4 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  OUTLINED_FUNCTION_10_2();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v60 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v15 = OUTLINED_FUNCTION_2(v62);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v61 = &v60 - v19;
  v20 = *(v4 + 88);
  v21 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = _s11SiriKitFlow5StateOMa_0();
  OUTLINED_FUNCTION_0_1();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_10_2();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v60 - v35;
  sub_1DCE135FC(&v60 - v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v43 = v3[4];
      v42 = v3[5];
      v44 = swift_allocObject();
      v44[2] = v63;
      v44[3] = v64;
      v44[4] = v3;
      sub_1DD0DCF8C();
    }

    type metadata accessor for SiriKitFlowFrameInput();
    v38 = v61;
    sub_1DD0DB32C();
    swift_storeEnumTagMultiPayload();
    v63(v38);
    sub_1DCB0E9D8(v38, &qword_1ECCA9BF0, &qword_1DD0EA250);
    return (*(v25 + 8))(v36, v23);
  }

  else
  {
    switch(*v36)
    {
      case 1:
        v40 = v32;
        v41 = 2;
        break;
      case 2:
        OUTLINED_FUNCTION_66();
        v46 = *(v45 + 112);
        type metadata accessor for SiriKitFlowFrameInput();
        sub_1DD0DCF8C();
      case 3:
        v40 = v32;
        v41 = 1;
        break;
      default:
        v48 = v10;
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_1_2();
          swift_once();
        }

        v49 = sub_1DD0DD8FC();
        v50 = __swift_project_value_buffer(v49, qword_1EDE57E00);
        v51 = *(v49 - 8);
        (*(v51 + 16))(v14, v50, v49);
        __swift_storeEnumTagSinglePayload(v14, 0, 1, v49);
        sub_1DCBCF6C8(v14, v10);
        if (__swift_getEnumTagSinglePayload(v10, 1, v49) == 1)
        {
          sub_1DCB0E9D8(v10, &unk_1ECCA7470, &qword_1DD0E16E0);
        }

        else
        {
          v52 = sub_1DD0DD8EC();
          v53 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            *v54 = 136315650;
            v55 = sub_1DD0DEC3C();
            v57 = sub_1DCB10E9C(v55, v56, &v65);

            *(v54 + 4) = v57;
            *(v54 + 12) = 2048;
            *(v54 + 14) = 182;
            *(v54 + 22) = 2080;
            *(v54 + 24) = sub_1DCB10E9C(0xD00000000000003CLL, 0x80000001DD11EAF0, &v65);
            OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v58, v59, "FatalError at %s:%lu - %s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_80();
          }

          (*(v51 + 8))(v48, v49);
        }

        static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003CLL, 0x80000001DD11EAF0);
    }

    __swift_storeEnumTagSinglePayload(v40, v41, 2, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    sub_1DCE136C0(v32);
    type metadata accessor for SiriKitFlowFrameInput();
    v47 = v61;
    sub_1DD0DB32C();
    swift_storeEnumTagMultiPayload();
    v63(v47);
    return sub_1DCB0E9D8(v47, &qword_1ECCA9BF0, &qword_1DD0EA250);
  }
}

uint64_t sub_1DCE14454(void *a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (&v20 - v12);
  if ((a2 & 1) == 0)
  {
    v16 = (a5 + *(*a5 + 120));
    v17 = v16[4];
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v19 = *(v17 + 8);
    sub_1DD0DCF8C();
  }

  *v13 = a1;
  swift_storeEnumTagMultiPayload();
  v14 = a1;
  a3(v13);
  return sub_1DCB0E9D8(v13, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCE145EC(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v13 - v9);
  if (a2)
  {
    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    v11 = a1;
  }

  else
  {
    type metadata accessor for SiriKitFlowFrameInput();
    sub_1DD0DB30C();
    swift_storeEnumTagMultiPayload();
  }

  a3(v10);
  return sub_1DCB0E9D8(v10, &qword_1ECCA9BF0, &qword_1DD0EA250);
}

uint64_t sub_1DCE146F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a3 + 88);
  v5 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = _s11SiriKitFlow5StateOMa_0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  (*(*(AssociatedTypeWitness - 8) + 16))(&v13 - v10, a2, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v11, 0, 2, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  return sub_1DCE136C0(v11);
}

uint64_t sub_1DCE1481C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  OUTLINED_FUNCTION_10_2();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  v14 = *(v3 + 88);
  v15 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  v16 = _s11SiriKitFlow5StateOMa_0();
  OUTLINED_FUNCTION_0_1();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v39 - v23;
  sub_1DCE135FC(&v39 - v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v18 + 8))(v24, v16);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v28 = sub_1DD0DD8FC();
    v29 = __swift_project_value_buffer(v28, qword_1EDE57E00);
    v30 = *(v28 - 8);
    (*(v30 + 16))(v13, v29, v28);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v28);
    sub_1DCBCF6C8(v13, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v28) == 1)
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
        v40 = swift_slowAlloc();
        *v33 = 136315650;
        v34 = sub_1DD0DEC3C();
        v36 = sub_1DCB10E9C(v34, v35, &v40);

        *(v33 + 4) = v36;
        *(v33 + 12) = 2048;
        *(v33 + 14) = 188;
        *(v33 + 22) = 2080;
        *(v33 + 24) = sub_1DCB10E9C(0xD000000000000041, 0x80000001DD11EBC0, &v40);
        OUTLINED_FUNCTION_17_5(&dword_1DCAFC000, v37, v38, "FatalError at %s:%lu - %s");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v30 + 8))(v9, v28);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000041, 0x80000001DD11EBC0);
  }

  v25 = type metadata accessor for OfferBehaviorFlowFrameResult();
  OUTLINED_FUNCTION_2(v25);
  return (*(v26 + 32))(a1, v24);
}

char *OfferBehaviorFlowFrame.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v4 + 112)], *(v1 + 80));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v5 + 120)]);
  OUTLINED_FUNCTION_66();
  v7 = *(v6 + 128);
  v8 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_6_53();
  OUTLINED_FUNCTION_2(v9);
  (*(v10 + 8))(&v0[v7]);
  return v0;
}

uint64_t OfferBehaviorFlowFrame.__deallocating_deinit()
{
  OfferBehaviorFlowFrame.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCE14DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE14EE8(uint64_t a1)
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

void *sub_1DCE14F64(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v12 = (~(-1 << v9) - v7 + 2) >> v9;
      v13 = 1;
      if (v12 >= 0xFF)
      {
        v13 = 2;
      }

      if (!v12)
      {
        v13 = 0;
      }

      if (v12 <= 0xFFFE)
      {
        v11 = v13;
      }

      else
      {
        v11 = 4;
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  if (*(v6 + 80) > 7u || v10 > 0x18 || (*(v6 + 80) & 0x100000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (__swift_getEnumTagSinglePayload(a2, 2, v5))
  {
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v18 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v18 > 0xFFFE)
        {
          v16 = 4;
        }

        else
        {
          v19 = 1;
          if (v18 >= 0xFF)
          {
            v19 = 2;
          }

          if (v18)
          {
            v16 = v19;
          }

          else
          {
            v16 = 0;
          }
        }
      }

      else
      {
        v16 = 1;
      }

      v8 += v16;
    }

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 2, v5);
    return a1;
  }
}

uint64_t sub_1DCE1515C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __swift_getEnumTagSinglePayload(a1, 2, v3);
  if (!result)
  {
    v5 = *(*(v3 - 8) + 8);

    return v5(a1, v3);
  }

  return result;
}

void *sub_1DCE151D8(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 2, v5);
  v7 = *(v5 - 8);
  if (EnumTagSinglePayload)
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8 <= 1)
    {
      if (v9 <= 3)
      {
        v12 = (~(-1 << (8 * v9)) - v8 + 2) >> (8 * v9);
        if (v12 > 0xFFFE)
        {
          v10 = 4;
        }

        else
        {
          v13 = 1;
          if (v12 >= 0xFF)
          {
            v13 = 2;
          }

          if (v12)
          {
            v10 = v13;
          }

          else
          {
            v10 = 0;
          }
        }
      }

      else
      {
        v10 = 1;
      }

      v9 += v10;
    }

    return memcpy(a1, a2, v9);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 2, v5);
    return a1;
  }
}

void *sub_1DCE15308(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 2, v5);
  v7 = __swift_getEnumTagSinglePayload(a2, 2, v5);
  v8 = *(v5 - 8);
  if (!EnumTagSinglePayload)
  {
    if (v7)
    {
      v11 = v8 + 8;
      (*(v8 + 8))(a1, v5);
      v9 = *(v11 + 76);
      v10 = *(v11 + 56);
      goto LABEL_6;
    }

    (*(v8 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v7)
  {
    (*(v8 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 2, v5);
    return a1;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
LABEL_6:
  if (v9 <= 1)
  {
    if (v10 <= 3)
    {
      v13 = (~(-1 << (8 * v10)) - v9 + 2) >> (8 * v10);
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    v10 += v12;
  }

  return memcpy(a1, a2, v10);
}

void *sub_1DCE154A0(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 2, v5);
  v7 = *(v5 - 8);
  if (EnumTagSinglePayload)
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8 <= 1)
    {
      if (v9 <= 3)
      {
        v12 = (~(-1 << (8 * v9)) - v8 + 2) >> (8 * v9);
        if (v12 > 0xFFFE)
        {
          v10 = 4;
        }

        else
        {
          v13 = 1;
          if (v12 >= 0xFF)
          {
            v13 = 2;
          }

          if (v12)
          {
            v10 = v13;
          }

          else
          {
            v10 = 0;
          }
        }
      }

      else
      {
        v10 = 1;
      }

      v9 += v10;
    }

    return memcpy(a1, a2, v9);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 2, v5);
    return a1;
  }
}

void *sub_1DCE155D0(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 2, v5);
  v7 = __swift_getEnumTagSinglePayload(a2, 2, v5);
  v8 = *(v5 - 8);
  if (!EnumTagSinglePayload)
  {
    if (v7)
    {
      v11 = v8 + 8;
      (*(v8 + 8))(a1, v5);
      v9 = *(v11 + 76);
      v10 = *(v11 + 56);
      goto LABEL_6;
    }

    (*(v8 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v7)
  {
    (*(v8 + 32))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 2, v5);
    return a1;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
LABEL_6:
  if (v9 <= 1)
  {
    if (v10 <= 3)
    {
      v13 = (~(-1 << (8 * v10)) - v9 + 2) >> (8 * v10);
      if (v13 > 0xFFFE)
      {
        v12 = 4;
      }

      else
      {
        v14 = 1;
        if (v13 >= 0xFF)
        {
          v14 = 2;
        }

        if (v13)
        {
          v12 = v14;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    v10 += v12;
  }

  return memcpy(a1, a2, v10);
}

uint64_t sub_1DCE15768(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 3)
        {
          return EnumTagSinglePayload - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
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

  return v6 + (v7 | v15) + 1;
}

void sub_1DCE15934(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 2;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCE15BC0(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v10 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    swift_getAssociatedTypeWitness();
    v7 = _s11SiriKitFlow5StateOMa_0();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v11 = *(v7 - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return v4;
}

uint64_t sub_1DCE15D9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for OfferBehaviorFlowFrameResult();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCE15E34(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = 8 * v8;
  v10 = v8;
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v12 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  if (v10 <= 1)
  {
    v10 = 1;
  }

  if (*(v6 + 80) > 7u || (*(v6 + 80) & 0x100000) != 0 || v10 + 1 > 0x18)
  {
    *__dst = *__src;
    sub_1DD0DCF8C();
  }

  v16 = *(v6 + 64);
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v18 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v18 > 0xFFFE)
      {
        v17 = 4;
      }

      else
      {
        v19 = 1;
        if (v18 >= 0xFF)
        {
          v19 = 2;
        }

        if (v18)
        {
          v17 = v19;
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

    v16 = v17 + v8;
  }

  if (v16 <= 1)
  {
    v16 = 1;
  }

  v20 = __src[v16];
  v21 = v20 - 2;
  if (v20 >= 2)
  {
    v22 = *(v6 + 64);
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v24 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v24 > 0xFFFE)
        {
          v23 = 4;
        }

        else
        {
          v25 = 1;
          if (v24 >= 0xFF)
          {
            v25 = 2;
          }

          if (v24)
          {
            v23 = v25;
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

      v22 = v23 + v8;
    }

    if (v22 <= 1)
    {
      LODWORD(v22) = 1;
    }

    if (v22 <= 3)
    {
      v26 = v22;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 1:
        v27 = *__src;
        goto LABEL_58;
      case 2:
        v27 = *__src;
        goto LABEL_58;
      case 3:
        v27 = *__src | (__src[2] << 16);
        goto LABEL_58;
      case 4:
        v27 = *__src;
LABEL_58:
        if (v22 < 4)
        {
          v20 = (v27 | (v21 << (8 * v22))) + 2;
        }

        else
        {
          v20 = v27 + 2;
        }

        break;
      default:
        break;
    }
  }

  if (v20 == 1)
  {
    if (__swift_getEnumTagSinglePayload(__src, 2, v5))
    {
      v29 = v8;
      if (v7 <= 1)
      {
        if (v8 <= 3)
        {
          v36 = (~(-1 << v9) - v7 + 2) >> v9;
          if (v36 > 0xFFFE)
          {
            v30 = 4;
          }

          else
          {
            v37 = 1;
            if (v36 >= 0xFF)
            {
              v37 = 2;
            }

            if (v36)
            {
              v30 = v37;
            }

            else
            {
              v30 = 0;
            }
          }
        }

        else
        {
          v30 = 1;
        }

        v29 = v30 + v8;
      }

      memcpy(__dst, __src, v29);
    }

    else
    {
      (*(v6 + 16))(__dst, __src, v5);
      __swift_storeEnumTagSinglePayload(__dst, 0, 2, v5);
    }

    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v42 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v42 > 0xFFFE)
        {
          v41 = 4;
        }

        else
        {
          v43 = 1;
          if (v42 >= 0xFF)
          {
            v43 = 2;
          }

          if (v42)
          {
            v41 = v43;
          }

          else
          {
            v41 = 0;
          }
        }
      }

      else
      {
        v41 = 1;
      }

      v8 += v41;
    }

    if (v8 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = v8;
    }

    *(__dst + v44) = 1;
    return __dst;
  }

  if (!v20)
  {
    *__dst = *__src;
    if (v7 <= 1)
    {
      if (v8 <= 3)
      {
        v32 = (~(-1 << v9) - v7 + 2) >> v9;
        if (v32 > 0xFFFE)
        {
          v28 = 4;
        }

        else
        {
          v33 = 1;
          if (v32 >= 0xFF)
          {
            v33 = 2;
          }

          if (v32)
          {
            v28 = v33;
          }

          else
          {
            v28 = 0;
          }
        }
      }

      else
      {
        v28 = 1;
      }

      v8 += v28;
    }

    if (v8 <= 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = v8;
    }

    *(__dst + v38) = 0;
    return __dst;
  }

  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v34 = (~(-1 << v9) - v7 + 2) >> v9;
      if (v34 > 0xFFFE)
      {
        v31 = 4;
      }

      else
      {
        v35 = 1;
        if (v34 >= 0xFF)
        {
          v35 = 2;
        }

        if (v34)
        {
          v31 = v35;
        }

        else
        {
          v31 = 0;
        }
      }
    }

    else
    {
      v31 = 1;
    }

    v8 += v31;
  }

  if (v8 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = v8;
  }

  return memcpy(__dst, __src, v39 + 1);
}

unsigned __int8 *sub_1DCE162EC(unsigned __int8 *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = 8 * v6;
  v8 = v6;
  if (v5 <= 1)
  {
    if (v6 <= 3)
    {
      v10 = (~(-1 << v7) - v5 + 2) >> v7;
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

    v8 = v9 + v6;
  }

  if (v8 <= 1)
  {
    v8 = 1;
  }

  v12 = result[v8];
  if (v12 >= 2)
  {
    if (v5 <= 1)
    {
      if (v6 <= 3)
      {
        v14 = (~(-1 << v7) - v5 + 2) >> v7;
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

      v6 += v13;
    }

    if (v6 <= 1)
    {
      LODWORD(v6) = 1;
    }

    if (v6 <= 3)
    {
      v16 = v6;
    }

    else
    {
      v16 = 4;
    }

    switch(v16)
    {
      case 1:
        v17 = *result;
        goto LABEL_36;
      case 2:
        v17 = *result;
        goto LABEL_36;
      case 3:
        v17 = *result | (result[2] << 16);
        goto LABEL_36;
      case 4:
        v17 = *result;
LABEL_36:
        v18 = (v17 | ((v12 - 2) << (8 * v6))) + 2;
        v19 = v17 + 2;
        if (v6 >= 4)
        {
          v12 = v19;
        }

        else
        {
          v12 = v18;
        }

        break;
      default:
        return result;
    }
  }

  if (v12 == 1)
  {
    v21 = *(*(a2 + 16) - 8);
    result = __swift_getEnumTagSinglePayload(result, 2, v3);
    if (!result)
    {
      v20 = *(v21 + 8);

      return v20(v2, v3);
    }
  }

  return result;
}