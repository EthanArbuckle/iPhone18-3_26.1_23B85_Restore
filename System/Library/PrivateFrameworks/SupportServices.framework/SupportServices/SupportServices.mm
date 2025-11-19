uint64_t AllSolutionsRequest.caseMetaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_17();
  v9 = *(type metadata accessor for AllSolutionsRequest(v8) + 20);
  OUTLINED_FUNCTION_108();
  v10 = type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_8(v10);
  if (v11)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v12 = dword_280448F7C;
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226();
    }

    *(a1 + v12) = qword_28044A6A8;
    v13 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_260(v13, v14);
    if (a1 != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_126();
    return sub_26BCFEE08();
  }

  return result;
}

uint64_t AllSolutionsRequest.caseMetaData.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for AllSolutionsRequest(v1);
  sub_26BD04E80(v0 + *(v2 + 20), &qword_280448F68, &qword_26BDA1A30);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_143();
  sub_26BCFEE08();
  type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void AllSolutionsRequest.caseMetaData.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_277();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_59(v4);
  v5 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_118(v7);
  v9 = type metadata accessor for TriageRequest.CaseMetaData(v8);
  v10 = OUTLINED_FUNCTION_241(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_303(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_227(v15);
  *(v2 + 40) = *(type metadata accessor for AllSolutionsRequest(v16) + 20);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_9();
  if (v17)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226();
    }

    *(v12 + v18) = qword_28044A6A8;
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_315();
    if (v0 != 1)
    {
      sub_26BD04E80(v1, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_216();
    sub_26BCFEE08();
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BCD1BF8()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_179(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_170();
    sub_26BCFEE5C();
    sub_26BD04E80(v4 + v3, &qword_280448F68, &qword_26BDA1A30);
    OUTLINED_FUNCTION_12();
    sub_26BCFEE08();
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_85();
    sub_26BCFEEB0();
  }

  else
  {
    sub_26BD04E80(v4 + v3, &qword_280448F68, &qword_26BDA1A30);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_120();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_283();

  free(v7);
}

uint64_t AllSolutionsRequest.clientContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_17();
  v9 = *(type metadata accessor for AllSolutionsRequest(v8) + 24);
  OUTLINED_FUNCTION_108();
  v10 = type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_8(v10);
  if (v11)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v12 = SHIDWORD(OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions);
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220();
    }

    *(a1 + v12) = qword_28044A6F0;
    v13 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_260(v13, v14);
    if (a1 != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_126();
    return sub_26BCFEE08();
  }

  return result;
}

uint64_t sub_26BCD1EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_110(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE5C();
  return a7(v7);
}

uint64_t AllSolutionsRequest.clientContext.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for AllSolutionsRequest(v1);
  sub_26BD04E80(v0 + *(v2 + 24), &qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_143();
  sub_26BCFEE08();
  type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void AllSolutionsRequest.clientContext.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_277();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_59(v4);
  v5 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_118(v7);
  v9 = type metadata accessor for TriageRequest.ClientContext(v8);
  v10 = OUTLINED_FUNCTION_241(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_303(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_227(v15);
  *(v2 + 40) = *(type metadata accessor for AllSolutionsRequest(v16) + 24);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_9();
  if (v17)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220();
    }

    *(v12 + v18) = qword_28044A6F0;
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_315();
    if (v0 != 1)
    {
      sub_26BD04E80(v1, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_216();
    sub_26BCFEE08();
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BCD20FC()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_179(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_170();
    sub_26BCFEE5C();
    sub_26BD04E80(v4 + v3, &qword_280448F70, &qword_26BDA1A38);
    OUTLINED_FUNCTION_11();
    sub_26BCFEE08();
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_84();
    sub_26BCFEEB0();
  }

  else
  {
    sub_26BD04E80(v4 + v3, &qword_280448F70, &qword_26BDA1A38);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_120();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_283();

  free(v7);
}

uint64_t AllSolutionsRequest.init()()
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v0 = *(type metadata accessor for AllSolutionsRequest(0) + 20);
  type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = OUTLINED_FUNCTION_273();
  type metadata accessor for TriageRequest.ClientContext(v5);
  v6 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t AllSolutionsResponse.supportOptions.getter()
{
  v1 = *(v0 + *(type metadata accessor for AllSolutionsResponse(0) + 20));
  OUTLINED_FUNCTION_154();
  v2 = *(v1 + 16);
}

uint64_t sub_26BCD2328@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.supportOptions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCD2354(uint64_t *a1)
{
  v1 = *a1;

  return AllSolutionsResponse.supportOptions.setter();
}

uint64_t AllSolutionsResponse.supportOptions.setter()
{
  v3 = OUTLINED_FUNCTION_134();
  v4 = OUTLINED_FUNCTION_172(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCE4C34(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 16);
  *(v5 + 16) = v0;
}

uint64_t AllSolutionsResponse.supportOptions.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_33(v3);
  OUTLINED_FUNCTION_127();
  *(v1 + 48) = *(v0 + 16);

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD2448(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v1 + 56);

    AllSolutionsResponse.supportOptions.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = *(v1 + 64);
    v8 = *(v1 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 64);
      v13 = *(v1 + 56);
      OUTLINED_FUNCTION_94();
      v14 = OUTLINED_FUNCTION_36();
      v11 = sub_26BCE4C34(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_191();
    v15 = *(v11 + 16);
    *(v11 + 16) = v3;
  }

  free(v1);
}

uint64_t AllSolutionsResponse.contactSupportOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  v8 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_53(v8);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_152();
  sub_26BD04E2C();
  v9 = type metadata accessor for ContactSupportOptions(0);
  OUTLINED_FUNCTION_23(v1);
  if (v10)
  {
    v11 = MEMORY[0x277D84F90];
    *a1 = MEMORY[0x277D84F90];
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0xE000000000000000;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0xE000000000000000;
    *(a1 + 56) = v11;
    v12 = a1 + v9[10];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v13 = v9[11];
    v14 = type metadata accessor for SupportOption(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    v18 = v9[12];
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v14);
    result = OUTLINED_FUNCTION_23(v1);
    if (!v10)
    {
      return sub_26BD04E80(v1, &unk_280448F78, &unk_26BDA1A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_169();
    return sub_26BCFEE08();
  }

  return result;
}

uint64_t AllSolutionsResponse.contactSupportOptions.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  OUTLINED_FUNCTION_110(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  v4 = OUTLINED_FUNCTION_22();
  v5 = *(type metadata accessor for AllSolutionsResponse(v4) + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  OUTLINED_FUNCTION_83();
  sub_26BCFEE08();
  type metadata accessor for ContactSupportOptions(0);
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t ContactSupportOptions.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = v2;
  v3 = type metadata accessor for ContactSupportOptions(0);
  v4 = a1 + v3[10];
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v5 = v3[11];
  v6 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = v3[12];
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
}

void AllSolutionsResponse.contactSupportOptions.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_47(v8);
  v10 = type metadata accessor for ContactSupportOptions(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_300(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = v14;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    v16 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = 0;
    *(v14 + 16) = 0;
    v14[3] = 0;
    v14[4] = 0xE000000000000000;
    v14[5] = 0;
    v14[6] = 0xE000000000000000;
    v14[7] = v16;
    v17 = v14 + v10[10];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v18 = v10[11];
    v19 = type metadata accessor for SupportOption(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = v10[12];
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &unk_280448F78, &unk_26BDA1A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_216();
    sub_26BCFEE08();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasContactSupportOptions.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v5);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v6 = type metadata accessor for ContactSupportOptions(0);
  OUTLINED_FUNCTION_13(v6);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearContactSupportOptions()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  v5 = OUTLINED_FUNCTION_22();
  v6 = OUTLINED_FUNCTION_172(v5);
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BCE4C34(v8);
    OUTLINED_FUNCTION_155(v9);
  }

  v10 = type metadata accessor for ContactSupportOptions(0);
  OUTLINED_FUNCTION_67(v10);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

void AllSolutionsResponse.heroArticle.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasHeroArticle.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearHeroArticle()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

void sub_26BCD2EA8()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_150();
  v9 = *(v0 + *(v3(0) + 20));
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_132();
  v10 = sub_26BDA0810();
  OUTLINED_FUNCTION_23(v1);
  if (v11)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_23(v1);
    if (!v11)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113(v10);
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_275();
    v15(v14);
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BCD3048()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_228();
  v11 = *(v6(0) + 20);
  v12 = *(v0 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = v4(0);
    OUTLINED_FUNCTION_119(v15);
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_36();
    *(v7 + v11) = v2(v16);
  }

  v17 = sub_26BDA0810();
  OUTLINED_FUNCTION_34(v17);
  v19 = *(v18 + 32);
  OUTLINED_FUNCTION_261();
  v20();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_236();
  sub_26BCFF2C8();
  swift_endAccess();
  OUTLINED_FUNCTION_283();
}

void AllSolutionsResponse.heroVideo.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasHeroVideo.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearHeroVideo()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t ArticleSupportOptions.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for ArticleSupportOptions(0) + 28);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

void AllSolutionsResponse.popularArticles.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_47(v8);
  v10 = type metadata accessor for ArticleSupportOptions(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_300(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    OUTLINED_FUNCTION_248(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448FA0, &qword_26BDA1A50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BCD364C()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_167();
    sub_26BCFEE5C();
    v2(v3);
    OUTLINED_FUNCTION_256();
    sub_26BCFEEB0();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_283();

  free(v8);
}

uint64_t AllSolutionsResponse.hasPopularArticles.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearPopularArticles()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t sub_26BCD38BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_228();
  v6 = *(type metadata accessor for AllSolutionsResponse(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v10 = OUTLINED_FUNCTION_36();
    *(v1 + v6) = sub_26BCE4C34(v10);
  }

  OUTLINED_FUNCTION_130();
  sub_26BCFEE08();
  type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_236();
  sub_26BCFF2C8();
  return swift_endAccess();
}

void AllSolutionsResponse.quickAnswerArticles.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_47(v8);
  v10 = type metadata accessor for ArticleSupportOptions(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_300(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    OUTLINED_FUNCTION_248(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448FA0, &qword_26BDA1A50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasQuickAnswerArticles.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearQuickAnswerArticles()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t sub_26BCD3C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_256();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v11);
  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_261();
  sub_26BD04E2C();
  v12 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_8(v12);
  if (v13)
  {
    *a2 = MEMORY[0x277D84F90];
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v14 = a2 + *(a1 + 28);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v13)
    {
      return sub_26BD04E80(v2, &qword_280448FA0, &qword_26BDA1A50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_126();
    return sub_26BCFEE08();
  }

  return result;
}

void AllSolutionsResponse.videoArticles.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_47(v8);
  v10 = type metadata accessor for ArticleSupportOptions(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_300(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    OUTLINED_FUNCTION_248(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448FA0, &qword_26BDA1A50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasVideoArticles.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearVideoArticles()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = type metadata accessor for ArticleSupportOptions(0);
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t sub_26BCD40C0@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.reportingContext.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCD40EC(uint64_t *a1)
{
  v1 = *a1;

  return AllSolutionsResponse.reportingContext.setter();
}

uint64_t AllSolutionsResponse.reportingContext.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_33(v1);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void AllSolutionsResponse.emptyResources.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasEmptyResources.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearEmptyResources()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t sub_26BCD457C@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.localizedSolutionsInfo.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BCD45A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AllSolutionsResponse.localizedSolutionsInfo.setter();
}

uint64_t AllSolutionsResponse.localizedSolutionsInfo.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37(v1);
  v3 = type metadata accessor for AllSolutionsResponse(v2);
  OUTLINED_FUNCTION_182(v3);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void AllSolutionsResponse.notAvailableResources.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasNotAvailableResources.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearNotAvailableResources()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t sub_26BCD4A54()
{
  v2 = OUTLINED_FUNCTION_265();
  v4 = *(v1 + *(v3(v2) + 20));
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_154();
  v5 = *(v4 + v0);
}

uint64_t sub_26BCD4A9C@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.batteryResources.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCD4AC8(uint64_t *a1)
{
  v1 = *a1;

  return AllSolutionsResponse.batteryResources.setter();
}

uint64_t sub_26BCD4B3C()
{
  OUTLINED_FUNCTION_264();
  v5 = v1;
  v6 = OUTLINED_FUNCTION_134();
  v8 = *(v7(v6) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = v4(0);
    OUTLINED_FUNCTION_119(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_36();
    v11 = v3(v13);
    *(v5 + v8) = v11;
  }

  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_159();
  v14 = *(v11 + v2);
  *(v11 + v2) = v0;
}

uint64_t AllSolutionsResponse.batteryResources.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_33(v1);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BCD4CA8@<X0>(_BYTE *a1@<X8>)
{
  result = AllSolutionsResponse.isBatteryRelated.getter();
  *a1 = result & 1;
  return result;
}

uint64_t AllSolutionsResponse.isBatteryRelated.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  v4 = type metadata accessor for AllSolutionsResponse(0);
  OUTLINED_FUNCTION_270(*(v4 + 20));
  v5 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  OUTLINED_FUNCTION_99();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26BCD4E10@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.coverageResources.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCD4E3C(uint64_t *a1)
{
  v1 = *a1;

  return AllSolutionsResponse.coverageResources.setter();
}

uint64_t AllSolutionsResponse.coverageResources.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_33(v1);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void AllSolutionsResponse.recommendedSupportOptionsHeader.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasRecommendedSupportOptionsHeader.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearRecommendedSupportOptionsHeader()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

void AllSolutionsResponse.recommendedSupportOptionsHeaderLinkedContent.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasRecommendedSupportOptionsHeaderLinkedContent.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearRecommendedSupportOptionsHeaderLinkedContent()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t sub_26BCD561C()
{
  v2 = OUTLINED_FUNCTION_265();
  v4 = (*(v1 + *(v3(v2) + 20)) + *v0);
  OUTLINED_FUNCTION_230();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_259();
}

uint64_t sub_26BCD5678@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.localizedDisclaimerFooter.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BCD56A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AllSolutionsResponse.localizedDisclaimerFooter.setter();
}

uint64_t sub_26BCD572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t), void *a6)
{
  v12 = v7;
  v13 = OUTLINED_FUNCTION_90();
  v15 = *(v14(v13) + 20);
  v16 = *(v7 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v7 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = a4(0);
    OUTLINED_FUNCTION_119(v19);
    swift_allocObject();
    v20 = OUTLINED_FUNCTION_36();
    v18 = a5(v20);
    *(v12 + v15) = v18;
  }

  v21 = (v18 + *a6);
  OUTLINED_FUNCTION_235();
  v22 = v21[1];
  *v21 = v8;
  v21[1] = v6;
}

uint64_t AllSolutionsResponse.localizedDisclaimerFooter.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37(v1);
  v3 = type metadata accessor for AllSolutionsResponse(v2);
  OUTLINED_FUNCTION_182(v3);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void AllSolutionsResponse.deprecatedV3BillingError.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasDeprecatedV3BillingError.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearDeprecatedV3BillingError()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

void AllSolutionsResponse.warningMessage.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasWarningMessage.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearWarningMessage()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

void AllSolutionsResponse.location.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasLocation.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearLocation()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

void AllSolutionsResponse.quickAnswerMetadata.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasQuickAnswerMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearQuickAnswerMetadata()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t sub_26BCD65F4@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.quickAnswers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCD6620(uint64_t *a1)
{
  v1 = *a1;

  return AllSolutionsResponse.quickAnswers.setter();
}

uint64_t AllSolutionsResponse.quickAnswers.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_33(v1);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BCD6760@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.heroArticles.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCD678C(uint64_t *a1)
{
  v1 = *a1;

  return AllSolutionsResponse.heroArticles.setter();
}

uint64_t AllSolutionsResponse.heroArticles.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_33(v1);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BCD68CC@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.heroVideos.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCD68F8(uint64_t *a1)
{
  v1 = *a1;

  return AllSolutionsResponse.heroVideos.setter();
}

uint64_t AllSolutionsResponse.heroVideos.modify()
{
  v0 = OUTLINED_FUNCTION_144();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_33(v1);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BCD6A38@<X0>(uint64_t *a1@<X8>)
{
  result = AllSolutionsResponse.deepDiveURL.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BCD6A64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AllSolutionsResponse.deepDiveURL.setter();
}

uint64_t AllSolutionsResponse.deepDiveURL.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37(v1);
  v3 = type metadata accessor for AllSolutionsResponse(v2);
  OUTLINED_FUNCTION_182(v3);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void AllSolutionsResponse.billingError.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t AllSolutionsResponse.hasBillingError.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_53(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall AllSolutionsResponse.clearBillingError()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_172(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_94();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCE4C34(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t SupportOption.type.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_19();
  result = OUTLINED_FUNCTION_154();
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_26BCD6F8C@<X0>(uint64_t a1@<X8>)
{
  result = SupportOption.type.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_26BCD6FD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  SupportOption.type.setter();
}

void SupportOption.type.setter()
{
  OUTLINED_FUNCTION_307();
  v1 = v0;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(type metadata accessor for SupportOption(0) + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v8 = sub_26BCEC404(v9);
    *(v1 + v5) = v8;
  }

  OUTLINED_FUNCTION_159();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 88) = v0;
  OUTLINED_FUNCTION_39();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127();
  v5 = *(v4 + 24);
  *(v1 + 72) = *(v4 + 16);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD7100()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_186(v1);
  v3 = *(v2 + 72);
  v4 = *(v0 + 84);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_61();
    v12 = OUTLINED_FUNCTION_36();
    v9 = sub_26BCEC404(v12);
    *(v11 + v10) = v9;
  }

  OUTLINED_FUNCTION_212();
  *(v9 + 16) = v3;
  *(v9 + 24) = v6;
  OUTLINED_FUNCTION_283();

  free(v13);
}

uint64_t SupportOption.subTypeString.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD71E4@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.subTypeString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD7210(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.subTypeString.setter();
}

void SupportOption.subTypeString.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_58();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.subTypeString.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127();
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD7314(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SupportOption.subTypeString.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_61();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BCEC404(v12);
      OUTLINED_FUNCTION_215(v13);
    }

    OUTLINED_FUNCTION_191();
    v14 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

double SupportOption.rank.getter()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 48);
}

uint64_t SupportOption.rank.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for SupportOption(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v8 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_159();
  *(v7 + 48) = a1;
  return result;
}

uint64_t SupportOption.rank.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 80) = v0;
  OUTLINED_FUNCTION_39();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127();
  *(v1 + 72) = *(v4 + 48);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD751C(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v3 = *(v2 + 72);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 88);
    v10 = *(v1 + 80);
    OUTLINED_FUNCTION_61();
    v11 = OUTLINED_FUNCTION_36();
    v8 = sub_26BCEC404(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_212();
  *(v8 + 48) = v3;

  free(v1);
}

uint64_t SupportOption.callToActionTitle.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD7600@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.callToActionTitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD762C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.callToActionTitle.setter();
}

void SupportOption.callToActionTitle.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_58();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 64);
  *(v5 + 56) = v2;
  *(v5 + 64) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.callToActionTitle.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127();
  v6 = *(v5 + 64);
  *(v1 + 48) = *(v5 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD7730(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SupportOption.callToActionTitle.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_61();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BCEC404(v12);
      OUTLINED_FUNCTION_215(v13);
    }

    OUTLINED_FUNCTION_191();
    v14 = *(v9 + 64);
    *(v9 + 56) = v4;
    *(v9 + 64) = v3;
  }

  free(v1);
}

uint64_t SupportOption.isEligible.getter()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 72);
}

uint64_t sub_26BCD77FC@<X0>(_BYTE *a1@<X8>)
{
  result = SupportOption.isEligible.getter();
  *a1 = result & 1;
  return result;
}

uint64_t SupportOption.isEligible.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_163();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  result = OUTLINED_FUNCTION_159();
  *(v5 + 72) = a1 & 1;
  return result;
}

uint64_t SupportOption.isEligible.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 84) = *(v0 + 72);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD791C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_215(v10);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 72) = v3;

  free(v1);
}

uint64_t SupportOption.imageURLString.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD79DC@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.imageURLString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD7A08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.imageURLString.setter();
}

void SupportOption.imageURLString.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_58();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 88);
  *(v5 + 80) = v2;
  *(v5 + 88) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.imageURLString.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127();
  v6 = *(v5 + 88);
  *(v1 + 48) = *(v5 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD7B0C(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SupportOption.imageURLString.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_61();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BCEC404(v12);
      OUTLINED_FUNCTION_215(v13);
    }

    OUTLINED_FUNCTION_191();
    v14 = *(v9 + 88);
    *(v9 + 80) = v4;
    *(v9 + 88) = v3;
  }

  free(v1);
}

uint64_t SupportOption.isForPremiumAdvisor.getter()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 96);
}

uint64_t sub_26BCD7BD8@<X0>(_BYTE *a1@<X8>)
{
  result = SupportOption.isForPremiumAdvisor.getter();
  *a1 = result & 1;
  return result;
}

uint64_t SupportOption.isForPremiumAdvisor.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_163();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  result = OUTLINED_FUNCTION_159();
  *(v5 + 96) = a1 & 1;
  return result;
}

uint64_t SupportOption.isForPremiumAdvisor.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 84) = *(v0 + 96);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD7CF8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_215(v10);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 96) = v3;

  free(v1);
}

uint64_t SupportOption.isSerialRequired.getter()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 97);
}

uint64_t sub_26BCD7DB0@<X0>(_BYTE *a1@<X8>)
{
  result = SupportOption.isSerialRequired.getter();
  *a1 = result & 1;
  return result;
}

uint64_t SupportOption.isSerialRequired.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_163();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_155(v7);
  }

  result = OUTLINED_FUNCTION_159();
  *(v5 + 97) = a1 & 1;
  return result;
}

uint64_t SupportOption.isSerialRequired.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_270(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 84) = *(v0 + 97);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD7ED0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_190(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_215(v10);
  }

  OUTLINED_FUNCTION_212();
  *(v6 + 97) = v3;

  free(v1);
}

uint64_t SupportOption.localizedDescription.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD7F90@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.localizedDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD7FBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.localizedDescription.setter();
}

void SupportOption.localizedDescription.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_58();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 112);
  *(v5 + 104) = v2;
  *(v5 + 112) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.localizedDescription.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127();
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD80C0(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SupportOption.localizedDescription.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_61();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BCEC404(v12);
      OUTLINED_FUNCTION_215(v13);
    }

    OUTLINED_FUNCTION_191();
    v14 = *(v9 + 112);
    *(v9 + 104) = v4;
    *(v9 + 112) = v3;
  }

  free(v1);
}

uint64_t SupportOption.localizedTitle.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD8194@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.localizedTitle.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD81C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.localizedTitle.setter();
}

void SupportOption.localizedTitle.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_58();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 128);
  *(v5 + 120) = v2;
  *(v5 + 128) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.localizedTitle.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127();
  v6 = *(v5 + 128);
  *(v1 + 48) = *(v5 + 120);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD82C4(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SupportOption.localizedTitle.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_61();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BCEC404(v12);
      OUTLINED_FUNCTION_215(v13);
    }

    OUTLINED_FUNCTION_191();
    v14 = *(v9 + 128);
    *(v9 + 120) = v4;
    *(v9 + 128) = v3;
  }

  free(v1);
}

uint64_t SupportOption.localizedFooter.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BCD8398@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.localizedFooter.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26BCD83C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  SupportOption.localizedFooter.setter();
}

void SupportOption.localizedFooter.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_58();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 144);
  *(v5 + 136) = v2;
  *(v5 + 144) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.localizedFooter.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127();
  v6 = *(v5 + 144);
  *(v1 + 48) = *(v5 + 136);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD84C8(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    SupportOption.localizedFooter.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_61();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BCEC404(v12);
      OUTLINED_FUNCTION_215(v13);
    }

    OUTLINED_FUNCTION_191();
    v14 = *(v9 + 144);
    *(v9 + 136) = v4;
    *(v9 + 144) = v3;
  }

  free(v1);
}

void SupportOption.footerArticle.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.hasFooterArticle.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall SupportOption.clearFooterArticle()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_232(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t SupportOption.applicationData.getter()
{
  OUTLINED_FUNCTION_39();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  OUTLINED_FUNCTION_230();
  v4 = *v2;
  v3 = v2[1];
  v5 = OUTLINED_FUNCTION_259();
  sub_26BCFEFC4(v5, v6);
  return OUTLINED_FUNCTION_259();
}

uint64_t sub_26BCD8900@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.applicationData.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void SupportOption.applicationData.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_58();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BCEC404(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  v8 = (v5 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
  OUTLINED_FUNCTION_235();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v2;
  v8[1] = v0;
  sub_26BCFF01C(v9, v10);
  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.applicationData.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_32(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_124();
  v6 = *v0;
  v7 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v7;
  sub_26BCFEFC4(v6, v7);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD8A44(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    v7 = *(v1 + 64);
    v8 = OUTLINED_FUNCTION_130();
    sub_26BCFEFC4(v8, v9);
    OUTLINED_FUNCTION_130();
    SupportOption.applicationData.setter();
    v10 = *(v1 + 48);
    v11 = *(v1 + 56);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_211();
    v13 = *(v5 + v2);
    if ((v12 & 1) == 0)
    {
      v14 = *(v1 + 72);
      v15 = *(v1 + 64);
      OUTLINED_FUNCTION_61();
      v16 = OUTLINED_FUNCTION_36();
      v17 = sub_26BCEC404(v16);
      OUTLINED_FUNCTION_215(v17);
    }

    v18 = (v13 + OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__applicationData);
    OUTLINED_FUNCTION_235();
    v10 = *v18;
    v11 = v18[1];
    *v18 = v4;
    v18[1] = v3;
  }

  sub_26BCFF01C(v10, v11);

  free(v1);
}

void SupportOption.pricing.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.hasPricing.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall SupportOption.clearPricing()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_232(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t sub_26BCD8E60@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.localizedDetails.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BCD8E8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOption.localizedDetails.setter(v1, v2);
}

uint64_t SupportOption.localizedDetails.modify()
{
  v1 = OUTLINED_FUNCTION_192();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD8FC4()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_54(v3);
  if (v8)
  {
    v9 = v7;
    OUTLINED_FUNCTION_282();
    v10 = OUTLINED_FUNCTION_130();
    v9(v10);
    v11 = *(v0 + 56);
  }

  else
  {
    v12 = v6;
    v13 = v5;
    v14 = v4;
    v15 = *(v0 + 72);
    v16 = *(v0 + 64);
    v17 = *(v16 + v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v16 + v15);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = *(v0 + 72);
      v21 = *(v0 + 64);
      v22 = v14(0);
      OUTLINED_FUNCTION_119(v22);
      swift_allocObject();
      v23 = OUTLINED_FUNCTION_36();
      v19 = v13(v23);
      *(v21 + v20) = v19;
    }

    v24 = (v19 + *v12);
    OUTLINED_FUNCTION_235();
    v25 = v24[1];
    *v24 = v2;
    v24[1] = v1;
  }

  OUTLINED_FUNCTION_188();

  free(v26);
}

uint64_t sub_26BCD90A8@<X0>(_DWORD *a1@<X8>)
{
  result = SupportOption.displayStyle.getter();
  *a1 = result;
  return result;
}

uint64_t SupportOption.displayStyle.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__displayStyle;
  OUTLINED_FUNCTION_99();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_133();
}

uint64_t sub_26BCD91A4@<X0>(uint64_t *a1@<X8>)
{
  result = SupportOption.eligibleProductIds.getter();
  *a1 = result;
  return result;
}

uint64_t sub_26BCD91D0(uint64_t *a1)
{
  v1 = *a1;

  return SupportOption.eligibleProductIds.setter();
}

uint64_t SupportOption.eligibleProductIds.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 56) = v0;
  OUTLINED_FUNCTION_39();
  *(v1 + 64) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void sub_26BCD9300()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_186(v1);
  v7 = *(v6 + 48);
  if (v8)
  {
    v9 = v5;
    v10 = *(v0 + 56);

    v9(v11);
    v12 = *(v0 + 48);
  }

  else
  {
    v13 = v4;
    v14 = v3;
    v15 = v2;
    v16 = *(v0 + 64);
    v17 = *(v0 + 56);
    v18 = *(v17 + v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v17 + v16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = *(v0 + 64);
      v22 = *(v0 + 56);
      v23 = v15(0);
      OUTLINED_FUNCTION_119(v23);
      swift_allocObject();
      v24 = OUTLINED_FUNCTION_36();
      v20 = v14(v24);
      *(v22 + v21) = v20;
    }

    v25 = *v13;
    OUTLINED_FUNCTION_191();
    v26 = *(v20 + v25);
    *(v20 + v25) = v7;
  }

  OUTLINED_FUNCTION_283();

  free(v27);
}

uint64_t sub_26BCD93F8()
{
  v2 = OUTLINED_FUNCTION_265();
  v4 = *(v1 + *(v3(v2) + 20));
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_154();
  return *(v4 + v0);
}

uint64_t sub_26BCD943C@<X0>(_BYTE *a1@<X8>)
{
  result = SupportOption.isEnabledInStoreDemoMode.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26BCD94DC()
{
  OUTLINED_FUNCTION_264();
  v4 = v0;
  v6 = v5;
  v8 = *(v7(0) + 20);
  v9 = *(v0 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = v3(0);
    OUTLINED_FUNCTION_119(v12);
    swift_allocObject();
    v13 = OUTLINED_FUNCTION_36();
    v11 = v2(v13);
    *(v4 + v8) = v11;
  }

  OUTLINED_FUNCTION_238();
  result = OUTLINED_FUNCTION_159();
  *(v11 + v1) = v6 & 1;
  return result;
}

uint64_t SupportOption.isEnabledInStoreDemoMode.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_270(v4);
  v5 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isEnabledInStoreDemoMode;
  OUTLINED_FUNCTION_99();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD961C()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_264();
  v4 = *v3;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 72);
  v7 = *(*v3 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = v2(0);
    OUTLINED_FUNCTION_119(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_36();
    v10 = v1(v14);
    *(v12 + v11) = v10;
  }

  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_212();
  *(v10 + v0) = v7;
  OUTLINED_FUNCTION_188();

  free(v15);
}

uint64_t sub_26BCD96DC(uint64_t a1)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_154();
  return *(v1 + a1);
}

uint64_t sub_26BCD9714@<X0>(_DWORD *a1@<X8>)
{
  result = SupportOption.alignment.getter();
  *a1 = result;
  return result;
}

void sub_26BCD9774()
{
  OUTLINED_FUNCTION_307();
  v2 = v1;
  v4 = v3;
  v5 = *(type metadata accessor for SupportOption(0) + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_219(v10);
  }

  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_159();
  *(v8 + v2) = v4;
  OUTLINED_FUNCTION_306();
}

uint64_t SupportOption.alignment.modify()
{
  v2 = OUTLINED_FUNCTION_243();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 72) = v0;
  OUTLINED_FUNCTION_39();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__alignment;
  OUTLINED_FUNCTION_99();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_133();
}

void sub_26BCD9860()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  OUTLINED_FUNCTION_186(v3);
  v5 = *(v4 + 80);
  v6 = *(v0 + 84);
  v7 = *(v0 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 84);
    v12 = *(v0 + 72);
    OUTLINED_FUNCTION_61();
    v13 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v13);
    *(v12 + v11) = v10;
  }

  OUTLINED_FUNCTION_238();
  OUTLINED_FUNCTION_212();
  *(v10 + v2) = v5;
  OUTLINED_FUNCTION_283();

  free(v14);
}

void SupportOption.deprecatedV3ProductCoverageSelectionDetails.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.hasDeprecatedV3ProductCoverageSelectionDetails.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall SupportOption.clearDeprecatedV3ProductCoverageSelectionDetails()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_232(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

void SupportOption.productCoverageSelectionDetails.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21();
    v16(v15);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.hasProductCoverageSelectionDetails.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v6);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_66();
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v7);
  return OUTLINED_FUNCTION_164();
}

Swift::Void __swiftcall SupportOption.clearProductCoverageSelectionDetails()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = OUTLINED_FUNCTION_232(v6);
  v8 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v9 = OUTLINED_FUNCTION_36();
    v10 = sub_26BCEC404(v9);
    OUTLINED_FUNCTION_155(v10);
  }

  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
}

uint64_t SupportOption.details.getter()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_234();
  return sub_26BD04E2C();
}

uint64_t sub_26BCDA020()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26BD04E2C();
  return SupportOption.details.setter();
}

uint64_t SupportOption.details.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = OUTLINED_FUNCTION_232(v2);
  v4 = *(v0 + v1);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v5 = OUTLINED_FUNCTION_36();
    v6 = sub_26BCEC404(v5);
    OUTLINED_FUNCTION_155(v6);
  }

  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  return swift_endAccess();
}

void SupportOption.details.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 48) = v0;
  v4 = OUTLINED_FUNCTION_173();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v8);
  *(v1 + 64) = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_39();
  *(v1 + 72) = v9;
  v10 = *(v0 + v9);
  OUTLINED_FUNCTION_127();
  sub_26BD04E2C();
  OUTLINED_FUNCTION_283();
}

void sub_26BCDA224(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v5 = *(v2 + 48);
    OUTLINED_FUNCTION_261();
    sub_26BD04E2C();
    SupportOption.details.setter();
    v6 = OUTLINED_FUNCTION_122();
    sub_26BD04E80(v6, v7, &qword_26BDA1A58);
  }

  else
  {
    v8 = *(v2 + 72);
    v9 = *(v2 + 48);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v2 + 72);
      v14 = *(v2 + 48);
      OUTLINED_FUNCTION_61();
      v15 = OUTLINED_FUNCTION_36();
      *(v14 + v13) = sub_26BCEC404(v15);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_236();
    sub_26BCFF2C8();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t SupportOption.cin.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
LABEL_6:
    OUTLINED_FUNCTION_168();
    v10 = type metadata accessor for SupportOption.CINDetails(0);
    OUTLINED_FUNCTION_255(v10);
    OUTLINED_FUNCTION_273();
    sub_26BDA0810();
    v11 = OUTLINED_FUNCTION_48();
    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_130();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_126();
  return sub_26BCFEE08();
}

void SupportOption.cin.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  v11 = type metadata accessor for SupportOption.CINDetails(v10);
  OUTLINED_FUNCTION_31(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_213(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v16)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_170();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_173();
      sub_26BCFEE08();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  OUTLINED_FUNCTION_214();
  v18 = &v15[*(v0 + 20)];
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v19 = *(v0 + 24);
  sub_26BDA0810();
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
LABEL_7:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.c2C.getter()
{
  v2 = OUTLINED_FUNCTION_122();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_110(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v8);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v9)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_126();
      return sub_26BCFEE08();
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_321(v12);
  v13 = *(v0 + 32);
  sub_26BDA0810();
  v14 = OUTLINED_FUNCTION_48();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t SupportOption.C2CDetails.init()()
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_321(v1);
  v2 = *(v0 + 32);
  sub_26BDA0810();
  v3 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void SupportOption.c2C.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  v11 = type metadata accessor for SupportOption.C2CDetails(v10);
  OUTLINED_FUNCTION_31(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_213(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v16)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    v15[4] = 0;
    v15[5] = v18;
    v19 = v15 + *(v0 + 28);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v20 = *(v0 + 32);
    sub_26BDA0810();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE08();
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.scb.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_126();
      return sub_26BCFEE08();
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  OUTLINED_FUNCTION_168();
  v11 = type metadata accessor for SupportOption.SCBDetails(0);
  OUTLINED_FUNCTION_255(v11);
  OUTLINED_FUNCTION_273();
  sub_26BDA0810();
  v12 = OUTLINED_FUNCTION_48();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_26BCDAB28()
{
  OUTLINED_FUNCTION_168();
  v1 = v0(0);
  OUTLINED_FUNCTION_255(v1);
  OUTLINED_FUNCTION_273();
  sub_26BDA0810();
  v2 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void SupportOption.scb.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  v11 = type metadata accessor for SupportOption.SCBDetails(v10);
  OUTLINED_FUNCTION_31(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_213(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v16)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_214();
    v18 = &v15[*(v0 + 20)];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v19 = *(v0 + 24);
    sub_26BDA0810();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE08();
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.phone.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_126();
      return sub_26BCFEE08();
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  OUTLINED_FUNCTION_82();
  v11 = type metadata accessor for SupportOption.PhoneDetails(0);
  return OUTLINED_FUNCTION_293(v11);
}

void SupportOption.phone.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  v11 = type metadata accessor for SupportOption.PhoneDetails(v10);
  OUTLINED_FUNCTION_31(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_213(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v16)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    v18 = &v15[*(v0 + 24)];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE08();
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.c2Ch.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_126();
      return sub_26BCFEE08();
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  OUTLINED_FUNCTION_82();
  return OUTLINED_FUNCTION_301(v11);
}

void SupportOption.c2Ch.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  v11 = type metadata accessor for SupportOption.C2CHDetails(v10);
  OUTLINED_FUNCTION_31(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_213(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v16)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    v15[4] = 0;
    v15[5] = v18;
    v15[6] = 0;
    v15[7] = v18;
    *(v15 + 64) = 0;
    v19 = v15 + *(v0 + 36);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE08();
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.bzcht.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_126();
      return sub_26BCFEE08();
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  OUTLINED_FUNCTION_82();
  return OUTLINED_FUNCTION_320(v11);
}

void SupportOption.bzcht.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  v11 = type metadata accessor for SupportOption.BZCHTDetails(v10);
  OUTLINED_FUNCTION_31(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_213(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v16)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    v15[32] = 0;
    *(v15 + 5) = 0;
    *(v15 + 6) = v18;
    v19 = &v15[*(v0 + 32)];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE08();
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.eml.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      v10 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v10);
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_169();
      return v14(v13);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  return sub_26BDA0800();
}

void SupportOption.eml.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_28(v0);
  if (v14)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  v16 = OUTLINED_FUNCTION_21();
  v17(v16);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.bcs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v9);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v10)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_75();
      OUTLINED_FUNCTION_126();
      return sub_26BCFEE08();
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  OUTLINED_FUNCTION_82();
  *(a1 + 32) = 0;
  v13 = type metadata accessor for SupportOption.BCSDetails(0);
  v14 = OUTLINED_FUNCTION_298(v13);
  type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(v14);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = a1 + *(v13 + 32);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t SupportOption.BCSDetails.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_82();
  *(a1 + 32) = 0;
  v2 = type metadata accessor for SupportOption.BCSDetails(0);
  v3 = OUTLINED_FUNCTION_298(v2);
  type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(v3);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = a1 + *(v2 + 32);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

void SupportOption.bcs.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  v11 = type metadata accessor for SupportOption.BCSDetails(v10);
  OUTLINED_FUNCTION_31(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_213(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v16)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    v15[32] = 0;
    v18 = *(v0 + 28);
    type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    v23 = &v15[*(v0 + 32)];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE08();
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.kb.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_74();
      OUTLINED_FUNCTION_126();
      return sub_26BCFEE08();
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  OUTLINED_FUNCTION_82();
  v11 = type metadata accessor for SupportOption.KBDetails(0);
  return OUTLINED_FUNCTION_293(v11);
}

uint64_t sub_26BCDBDD0()
{
  OUTLINED_FUNCTION_82();
  v1 = v0(0);
  return OUTLINED_FUNCTION_293(v1);
}

void SupportOption.kb.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  v11 = type metadata accessor for SupportOption.KBDetails(v10);
  OUTLINED_FUNCTION_31(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_213(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v16)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_146();
    v18 = &v15[*(v0 + 24)];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE08();
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.cas.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v9);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v10)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_126();
      return sub_26BCFEE08();
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  OUTLINED_FUNCTION_168();
  *(a1 + 16) = MEMORY[0x277D84F90];
  v13 = type metadata accessor for SupportOption.CASDetails(0);
  return OUTLINED_FUNCTION_293(v13);
}

uint64_t SupportOption.CASDetails.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_168();
  *(a1 + 16) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for SupportOption.CASDetails(0);
  return OUTLINED_FUNCTION_293(v2);
}

void SupportOption.cas.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  v11 = type metadata accessor for SupportOption.CASDetails(v10);
  OUTLINED_FUNCTION_31(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_213(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  *(v2 + 48) = v15;
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v16)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    OUTLINED_FUNCTION_214();
    v15[2] = MEMORY[0x277D84F90];
    v18 = v15 + *(v0 + 24);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE08();
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.ers.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      v10 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v10);
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_169();
      return v14(v13);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  return sub_26BDA0800();
}

uint64_t sub_26BCDC3F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = *(type metadata accessor for SupportOption(v6) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v11 = OUTLINED_FUNCTION_36();
    *(v1 + v7) = sub_26BCEC404(v11);
  }

  v12 = sub_26BDA0810();
  OUTLINED_FUNCTION_26(v12);
  v14 = *(v13 + 32);
  v15 = OUTLINED_FUNCTION_169();
  v16(v15);
  v17 = type metadata accessor for SupportOption.OneOf_Details(0);
  OUTLINED_FUNCTION_169();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  return swift_endAccess();
}

void SupportOption.ers.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_28(v0);
  if (v14)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  v16 = OUTLINED_FUNCTION_21();
  v17(v16);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.smb.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      v10 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v10);
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_169();
      return v14(v13);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  return sub_26BDA0800();
}

void SupportOption.smb.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_28(v0);
  if (v14)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  v16 = OUTLINED_FUNCTION_21();
  v17(v16);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.maasp.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      v10 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v10);
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_169();
      return v14(v13);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  return sub_26BDA0800();
}

void SupportOption.maasp.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_28(v0);
  if (v14)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  v16 = OUTLINED_FUNCTION_21();
  v17(v16);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.contactOptions.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_126();
      return sub_26BCFEE08();
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v11 = *(type metadata accessor for SupportOption.ContactOptionsDetails(0) + 20);
  sub_26BDA0810();
  v12 = OUTLINED_FUNCTION_48();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

void sub_26BCDCD98()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = *(type metadata accessor for SupportOption(v6) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_61();
    v11 = OUTLINED_FUNCTION_36();
    *(v1 + v7) = sub_26BCEC404(v11);
  }

  OUTLINED_FUNCTION_302();
  sub_26BCFEE08();
  v12 = type metadata accessor for SupportOption.OneOf_Details(0);
  OUTLINED_FUNCTION_169();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_143();
  sub_26BCFF2C8();
  swift_endAccess();
  OUTLINED_FUNCTION_283();
}

uint64_t SupportOption.ContactOptionsDetails.init()()
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v0 = *(type metadata accessor for SupportOption.ContactOptionsDetails(0) + 20);
  sub_26BDA0810();
  v1 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void SupportOption.contactOptions.modify()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_165();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_42(v4);
  v5 = OUTLINED_FUNCTION_131();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_110(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_92(v9);
  v11 = type metadata accessor for SupportOption.ContactOptionsDetails(v10);
  OUTLINED_FUNCTION_31(v11);
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  v14 = OUTLINED_FUNCTION_213(v13);
  *(v2 + 48) = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_16();
  if (v15)
  {
    sub_26BD04E80(v1, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v17 = *(v0 + 20);
    sub_26BDA0810();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE08();
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.mcr.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_45(v7);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_7();
  if (v8)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      v10 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v10);
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_169();
      return v14(v13);
    }

    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
  }

  return sub_26BDA0800();
}

void SupportOption.mcr.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  *(v1 + 64) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_28(v0);
  if (v14)
  {
    sub_26BD04E80(v0, &qword_2804490B0, &qword_26BDA1A58);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    OUTLINED_FUNCTION_0();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  v16 = OUTLINED_FUNCTION_21();
  v17(v16);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BCDD33C()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 64);
  if (v6)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[3];
    v10 = v3[4];
    v11 = *(v8 + 16);
    v12 = OUTLINED_FUNCTION_262();
    v13(v12);
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v14 = v3[3];
    v10 = v3[4];
    v1(*(*v0 + 64));
  }

  free(v5);
  free(v4);
  free(v10);
  OUTLINED_FUNCTION_283();

  free(v15);
}

void static SupportOption.OneOf_Details.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_189();
  a19 = v21;
  a20 = v22;
  v195 = v24;
  v196 = v23;
  v25 = type metadata accessor for SupportOption.ContactOptionsDetails(0);
  v26 = OUTLINED_FUNCTION_110(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_30();
  v181 = v29;
  v30 = OUTLINED_FUNCTION_176();
  v171 = type metadata accessor for SupportOption.CASDetails(v30);
  v31 = OUTLINED_FUNCTION_34(v171);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_30();
  v183 = v34;
  v35 = OUTLINED_FUNCTION_176();
  v173 = type metadata accessor for SupportOption.KBDetails(v35);
  v36 = OUTLINED_FUNCTION_34(v173);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_30();
  v182 = v39;
  v40 = OUTLINED_FUNCTION_176();
  v41 = type metadata accessor for SupportOption.BCSDetails(v40);
  v42 = OUTLINED_FUNCTION_110(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_30();
  v180 = v45;
  OUTLINED_FUNCTION_176();
  v46 = sub_26BDA0810();
  v193 = OUTLINED_FUNCTION_18(v46);
  v194 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_38();
  v179 = v50;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_193();
  v177 = v52;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_193();
  v176 = v54;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_193();
  v175 = v56;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_252();
  v59 = OUTLINED_FUNCTION_145(v58);
  v60 = type metadata accessor for SupportOption.BZCHTDetails(v59);
  v61 = OUTLINED_FUNCTION_110(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_30();
  v65 = OUTLINED_FUNCTION_145(v64);
  v66 = type metadata accessor for SupportOption.C2CHDetails(v65);
  v67 = OUTLINED_FUNCTION_110(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_30();
  v71 = OUTLINED_FUNCTION_145(v70);
  v172 = type metadata accessor for SupportOption.PhoneDetails(v71);
  v72 = OUTLINED_FUNCTION_34(v172);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_30();
  v178 = v75;
  v76 = OUTLINED_FUNCTION_176();
  v77 = type metadata accessor for SupportOption.SCBDetails(v76);
  v78 = OUTLINED_FUNCTION_110(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_30();
  v82 = OUTLINED_FUNCTION_145(v81);
  v83 = type metadata accessor for SupportOption.C2CDetails(v82);
  v84 = OUTLINED_FUNCTION_110(v83);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_30();
  v88 = OUTLINED_FUNCTION_145(v87);
  v89 = type metadata accessor for SupportOption.CINDetails(v88);
  v90 = OUTLINED_FUNCTION_110(v89);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_30();
  v94 = OUTLINED_FUNCTION_145(v93);
  v95 = type metadata accessor for SupportOption.OneOf_Details(v94);
  v96 = OUTLINED_FUNCTION_34(v95);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_38();
  v189 = v99;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_193();
  v188 = v101;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_193();
  v187 = v103;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_193();
  v186 = v105;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_193();
  v185 = v107;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_193();
  v191 = v109;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_193();
  v192 = v111;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_193();
  v184 = v113;
  OUTLINED_FUNCTION_158();
  v115 = MEMORY[0x28223BE20](v114);
  v117 = &v171 - v116;
  v118 = MEMORY[0x28223BE20](v115);
  v119 = MEMORY[0x28223BE20](v118);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_193();
  v190 = v120;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_263();
  v123 = MEMORY[0x28223BE20](v122);
  MEMORY[0x28223BE20](v123);
  v125 = &v171 - v124;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B8, &unk_26BDA1A60);
  OUTLINED_FUNCTION_110(v126);
  v128 = *(v127 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_228();
  v131 = *(v130 + 56);
  sub_26BCFEE5C();
  v196 = v131;
  sub_26BCFEE5C();
  OUTLINED_FUNCTION_262();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 1)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_319(&a13);
      static SupportOption.C2CDetails.== infix(_:_:)();
      sub_26BCFEEB0();
      goto LABEL_43;
    case 2u:
      OUTLINED_FUNCTION_2();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 2)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_319(&a14);
      OUTLINED_FUNCTION_167();
      static SupportOption.SCBDetails.== infix(_:_:)();
      goto LABEL_42;
    case 3u:
      OUTLINED_FUNCTION_2();
      v144 = v190;
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 3)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_78();
      v145 = v178;
      sub_26BCFEE08();
      OUTLINED_FUNCTION_269();
      v148 = v141 && v146 == v147;
      if (v148 || (sub_26BDA0FB0() & 1) != 0)
      {
        v149 = *(v144 + 16) == *(v145 + 16) && *(v144 + 24) == *(v145 + 24);
        if (v149 || (sub_26BDA0FB0() & 1) != 0)
        {
          OUTLINED_FUNCTION_292(&a10);
          OUTLINED_FUNCTION_1();
          sub_26BCFF280(v150, v151);
          OUTLINED_FUNCTION_250();
        }
      }

      goto LABEL_65;
    case 4u:
      OUTLINED_FUNCTION_2();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 4)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_319(&a15);
      v135 = OUTLINED_FUNCTION_281();
      static SupportOption.C2CHDetails.== infix(_:_:)(v135, v136);
      sub_26BCFEEB0();
      goto LABEL_43;
    case 5u:
      OUTLINED_FUNCTION_2();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 5)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_319(&a16);
      v152 = OUTLINED_FUNCTION_272();
      static SupportOption.BZCHTDetails.== infix(_:_:)(v152, v153);
      sub_26BCFEEB0();
      goto LABEL_43;
    case 6u:
      OUTLINED_FUNCTION_2();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() == 6)
      {
        v155 = v193;
        v154 = v194;
        (*(v194 + 32))(v174, &v125[v20], v193);
        sub_26BDA07F0();
        v156 = *(v154 + 8);
        v157 = OUTLINED_FUNCTION_204();
        v156(v157);
        (v156)(v117, v155);
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_278();
      v162 = v117;
      goto LABEL_52;
    case 7u:
      OUTLINED_FUNCTION_2();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 7)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_75();
      sub_26BCFEE08();
      OUTLINED_FUNCTION_173();
      static SupportOption.BCSDetails.== infix(_:_:)();
      sub_26BCFEEB0();
      goto LABEL_43;
    case 8u:
      OUTLINED_FUNCTION_2();
      v163 = v192;
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 8)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_74();
      v164 = v182;
      sub_26BCFEE08();
      OUTLINED_FUNCTION_269();
      v167 = v141 && v165 == v166;
      if (v167 || (sub_26BDA0FB0() & 1) != 0)
      {
        v168 = *(v163 + 16) == *(v164 + 16) && *(v163 + 24) == *(v164 + 24);
        if (v168 || (sub_26BDA0FB0() & 1) != 0)
        {
          OUTLINED_FUNCTION_292(&a11);
          OUTLINED_FUNCTION_1();
          sub_26BCFF280(v169, v170);
          OUTLINED_FUNCTION_250();
        }
      }

      goto LABEL_65;
    case 9u:
      OUTLINED_FUNCTION_2();
      v137 = v191;
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 9)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_73();
      v138 = v183;
      sub_26BCFEE08();
      OUTLINED_FUNCTION_269();
      v141 = v141 && v139 == v140;
      if (v141 || (sub_26BDA0FB0()) && (sub_26BCFF1F4(*(v137 + 16), *(v138 + 16)))
      {
        OUTLINED_FUNCTION_292(&a9);
        OUTLINED_FUNCTION_1();
        sub_26BCFF280(v142, v143);
        OUTLINED_FUNCTION_250();
      }

LABEL_65:
      sub_26BCFEEB0();
      OUTLINED_FUNCTION_302();
      sub_26BCFEEB0();
      OUTLINED_FUNCTION_0();
      sub_26BCFEEB0();
      goto LABEL_77;
    case 0xAu:
      OUTLINED_FUNCTION_2();
      v132 = v185;
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 10)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_153();
      v134 = v175;
      goto LABEL_48;
    case 0xBu:
      OUTLINED_FUNCTION_2();
      v132 = v186;
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 11)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_153();
      v134 = v176;
      goto LABEL_48;
    case 0xCu:
      OUTLINED_FUNCTION_2();
      v132 = v187;
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 12)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_153();
      v134 = v177;
      goto LABEL_48;
    case 0xDu:
      OUTLINED_FUNCTION_2();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() != 13)
      {
        goto LABEL_75;
      }

      OUTLINED_FUNCTION_72();
      sub_26BCFEE08();
      OUTLINED_FUNCTION_167();
      static SupportOption.ContactOptionsDetails.== infix(_:_:)();
LABEL_42:
      sub_26BCFEEB0();
LABEL_43:
      sub_26BCFEEB0();
      goto LABEL_49;
    case 0xEu:
      OUTLINED_FUNCTION_2();
      v132 = v189;
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_160() == 14)
      {
        OUTLINED_FUNCTION_153();
        v134 = v179;
LABEL_48:
        v158 = v193;
        v133(v134);
        sub_26BDA07F0();
        v159 = *(v95 + 8);
        v160 = OUTLINED_FUNCTION_204();
        v159(v160);
        (v159)(v132, v158);
LABEL_49:
        OUTLINED_FUNCTION_0();
        goto LABEL_50;
      }

LABEL_51:
      OUTLINED_FUNCTION_278();
      v162 = v132;
LABEL_52:
      v161(v162, v193);
      goto LABEL_76;
    default:
      OUTLINED_FUNCTION_2();
      sub_26BCFEE5C();
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_75:
        sub_26BCFEEB0();
LABEL_76:
        sub_26BD04E80(v20, &qword_2804490B8, &unk_26BDA1A60);
      }

      else
      {
        OUTLINED_FUNCTION_81();
        sub_26BCFEE08();
        OUTLINED_FUNCTION_275();
        static SupportOption.CINDetails.== infix(_:_:)();
        sub_26BCFEEB0();
        OUTLINED_FUNCTION_128();
        sub_26BCFEEB0();
        OUTLINED_FUNCTION_0();
LABEL_50:
        sub_26BCFEEB0();
      }

LABEL_77:
      OUTLINED_FUNCTION_225();
      OUTLINED_FUNCTION_188();
      return;
  }
}

void static SupportOption.C2CDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_90();
  v3 = sub_26BDA0810();
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  OUTLINED_FUNCTION_34(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_183();
  v22 = *v1;
  v23 = v1[1];
  OUTLINED_FUNCTION_233();
  v26 = v26 && v24 == v25;
  if (!v26 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v43 = v6;
  v42 = type metadata accessor for SupportOption.C2CDetails(0);
  v27 = *(v42 + 32);
  v28 = *(v18 + 48);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_28(v2);
  if (!v26)
  {
    OUTLINED_FUNCTION_131();
    sub_26BD04E2C();
    OUTLINED_FUNCTION_28(v2 + v28);
    if (!v29)
    {
      v31 = v43;
      (*(v43 + 32))(v11, v2 + v28, v3);
      OUTLINED_FUNCTION_3();
      sub_26BCFF280(v32, v33);
      OUTLINED_FUNCTION_304();
      v34 = sub_26BDA0BB0();
      v35 = *(v31 + 8);
      v36 = OUTLINED_FUNCTION_222();
      v35(v36);
      (v35)(v17, v3);
      sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
      if ((v34 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    (*(v43 + 8))(v17, v3);
LABEL_14:
    sub_26BD04E80(v2, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_28(v2 + v28);
  if (!v26)
  {
    goto LABEL_14;
  }

  sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
LABEL_18:
  v37 = v1[2] == v0[2] && v1[3] == v0[3];
  if (v37 || (sub_26BDA0FB0() & 1) != 0)
  {
    v38 = v1[4] == v0[4] && v1[5] == v0[5];
    if (v38 || (sub_26BDA0FB0() & 1) != 0)
    {
      v39 = *(v42 + 28);
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(v40, v41);
      v30 = OUTLINED_FUNCTION_308();
      goto LABEL_16;
    }
  }

LABEL_15:
  v30 = 0;
LABEL_16:
  OUTLINED_FUNCTION_258(v30);
  OUTLINED_FUNCTION_188();
}

uint64_t static SupportOption.C2CHDetails.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40);
  if (!v10 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v3 + 48) == *(v2 + 48) && *(v3 + 56) == *(v2 + 56);
  if (!v11 && (sub_26BDA0FB0() & 1) == 0 || *(v3 + 64) != *(v2 + 64))
  {
    return 0;
  }

  v13 = *(type metadata accessor for SupportOption.C2CHDetails(0) + 36);
  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v14, v15);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t static SupportOption.BZCHTDetails.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 32) != *(v2 + 32))
  {
    return 0;
  }

  v11 = *(v3 + 40) == *(v2 + 40) && *(v3 + 48) == *(v2 + 48);
  if (!v11 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(type metadata accessor for SupportOption.BZCHTDetails(0) + 32);
  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v13, v14);
  return OUTLINED_FUNCTION_105() & 1;
}

void static SupportOption.BCSDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_184();
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  v4 = OUTLINED_FUNCTION_34(Step);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490D8, &qword_26BDA1A70);
  OUTLINED_FUNCTION_110(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_150();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490E0, &qword_26BDA1A78);
  OUTLINED_FUNCTION_34(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_121();
  v15 = *v1;
  v16 = v1[1];
  OUTLINED_FUNCTION_233();
  v19 = v19 && v17 == v18;
  if (!v19 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_221();
  v22 = v19 && v20 == v21;
  if (!v22 && (sub_26BDA0FB0() & 1) == 0 || *(v1 + 32) != *(v0 + 32))
  {
    goto LABEL_21;
  }

  v34 = type metadata accessor for SupportOption.BCSDetails(0);
  v23 = *(v34 + 28);
  v24 = *(v11 + 48);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_291();
  v25 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v25, v26, Step);
  if (v19)
  {
    OUTLINED_FUNCTION_112(v2 + v24, 1, Step);
    if (v19)
    {
      sub_26BD04E80(v2, &qword_2804490D8, &qword_26BDA1A70);
LABEL_24:
      v31 = *(v34 + 32);
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(v32, v33);
      v28 = OUTLINED_FUNCTION_105();
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_173();
  sub_26BD04E2C();
  OUTLINED_FUNCTION_112(v2 + v24, 1, Step);
  if (v27)
  {
    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0();
LABEL_20:
    sub_26BD04E80(v2, &qword_2804490E0, &qword_26BDA1A78);
    goto LABEL_21;
  }

  sub_26BCFEE08();
  OUTLINED_FUNCTION_216();
  static SupportOption.BCSDetails.OneOf_NextStep.== infix(_:_:)();
  v30 = v29;
  sub_26BCFEEB0();
  sub_26BCFEEB0();
  sub_26BD04E80(v2, &qword_2804490D8, &qword_26BDA1A70);
  if (v30)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_258(v28);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCDE9F4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_86(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3(0) + 24);
  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v11, v12);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t static SupportOption.CASDetails.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0 || (sub_26BCFF1F4(*(v3 + 16), *(v2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for SupportOption.CASDetails(0) + 24);
  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v8, v9);
  return OUTLINED_FUNCTION_105() & 1;
}

void static SupportOption.ContactOptionsDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v2 = sub_26BDA0810();
  v3 = OUTLINED_FUNCTION_18(v2);
  v29 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_121();
  v7 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_183();
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780) - 8);
  v12 = *(*v11 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_150();
  v14 = *(type metadata accessor for SupportOption.ContactOptionsDetails(0) + 20);
  v15 = v11[14];
  sub_26BD04E2C();
  sub_26BD04E2C();
  OUTLINED_FUNCTION_28(v1);
  if (v16)
  {
    OUTLINED_FUNCTION_28(v1 + v15);
    if (v16)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
LABEL_12:
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(v27, v28);
      v20 = sub_26BDA0BB0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_256();
  sub_26BD04E2C();
  OUTLINED_FUNCTION_28(v1 + v15);
  if (v16)
  {
    v17 = *(v29 + 8);
    v18 = OUTLINED_FUNCTION_239();
    v19(v18);
LABEL_9:
    sub_26BD04E80(v1, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_10;
  }

  (*(v29 + 32))(v0, v1 + v15, v2);
  OUTLINED_FUNCTION_3();
  sub_26BCFF280(v21, v22);
  OUTLINED_FUNCTION_272();
  v23 = sub_26BDA0BB0();
  v24 = *(v29 + 8);
  v25 = OUTLINED_FUNCTION_170();
  v24(v25);
  v26 = OUTLINED_FUNCTION_239();
  v24(v26);
  sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
LABEL_13:
  OUTLINED_FUNCTION_258(v20);
  OUTLINED_FUNCTION_188();
}

void SupportOption.CINDetails.localizedStoreSelectionDisclaimerHeader.modify()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_165();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_187(v5);
  v6 = sub_26BDA0810();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v0 + 24) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_257(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_180(v11);
  v13 = type metadata accessor for SupportOption.CINDetails(v12);
  OUTLINED_FUNCTION_125(*(v13 + 24));
  OUTLINED_FUNCTION_43();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v14)
    {
      sub_26BD04E80(v5, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100();
    v16(v15);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCDF004()
{
  OUTLINED_FUNCTION_177();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_183();
  v8 = *(v1(0) + 24);
  OUTLINED_FUNCTION_310();
  v9 = v0(0);
  OUTLINED_FUNCTION_112(v2, 1, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  OUTLINED_FUNCTION_129();
  sub_26BD04E80(v12, v13, v14);
  return v11;
}

uint64_t sub_26BCDF0E8()
{
  OUTLINED_FUNCTION_177();
  v2 = *(v1(0) + 24);
  OUTLINED_FUNCTION_141();
  sub_26BD04E80(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t SupportOption.CINDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.CINDetails(v0) + 20);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.C2CDetails.countryItccList.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = *(type metadata accessor for SupportOption.C2CDetails(v7) + 32);
  OUTLINED_FUNCTION_108();
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_8(v9);
  if (v10)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v10)
    {
      return sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113(&qword_280448F88);
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_141();
    return v13();
  }

  return result;
}

uint64_t SupportOption.C2CDetails.countryItccList.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = type metadata accessor for SupportOption.C2CDetails(v2);
  sub_26BD04E80(v0 + *(v3 + 32), &qword_280448F88, &qword_26BDA5440);
  v4 = sub_26BDA0810();
  OUTLINED_FUNCTION_31(v4);
  v6 = *(v5 + 32);
  OUTLINED_FUNCTION_152();
  v7();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
}

void SupportOption.C2CDetails.countryItccList.modify()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_165();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_187(v5);
  v6 = sub_26BDA0810();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v0 + 24) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_257(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_180(v11);
  v13 = type metadata accessor for SupportOption.C2CDetails(v12);
  OUTLINED_FUNCTION_125(*(v13 + 32));
  OUTLINED_FUNCTION_43();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v14)
    {
      sub_26BD04E80(v5, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100();
    v16(v15);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

void sub_26BCDF4E4()
{
  OUTLINED_FUNCTION_284();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    (*(v5 + 16))((*v0)[4], v3, v4);
    sub_26BD04E80(v7 + v1, &qword_280448F88, &qword_26BDA5440);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
    v12 = *(v5 + 8);
    v13 = OUTLINED_FUNCTION_122();
    v14(v13);
  }

  else
  {
    sub_26BD04E80(v7 + v1, &qword_280448F88, &qword_26BDA5440);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_283();

  free(v18);
}

uint64_t SupportOption.C2CDetails.hasCountryItccList.getter()
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = *(type metadata accessor for SupportOption.C2CDetails(v7) + 32);
  OUTLINED_FUNCTION_139();
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_13(v9);
  return v0;
}

Swift::Void __swiftcall SupportOption.C2CDetails.clearCountryItccList()()
{
  v1 = type metadata accessor for SupportOption.C2CDetails(0);
  sub_26BD04E80(v0 + *(v1 + 32), &qword_280448F88, &qword_26BDA5440);
  sub_26BDA0810();
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t SupportOption.C2CDetails.estimatedWaitTimeID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_147();
}

uint64_t SupportOption.C2CDetails.estimatedWaitTimeID.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t SupportOption.C2CDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.C2CDetails(v0) + 28);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BCDF83C(uint64_t (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_256();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  v10 = *(a1(v9) + 24);
  OUTLINED_FUNCTION_261();
  sub_26BD04E2C();
  v11 = sub_26BDA0810();
  OUTLINED_FUNCTION_8(v11);
  if (v12)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v12)
    {
      return sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113(a1);
    v14 = *(v13 + 32);
    OUTLINED_FUNCTION_141();
    return v15();
  }

  return result;
}

uint64_t sub_26BCDF98C()
{
  v2 = OUTLINED_FUNCTION_134();
  v4 = v3(v2);
  sub_26BD04E80(v0 + *(v4 + 24), &qword_280448F88, &qword_26BDA5440);
  v5 = sub_26BDA0810();
  OUTLINED_FUNCTION_31(v5);
  v7 = *(v6 + 32);
  OUTLINED_FUNCTION_152();
  v8();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v1);
}

void SupportOption.SCBDetails.countryItccList.modify()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_165();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_187(v5);
  v6 = sub_26BDA0810();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v0 + 24) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_257(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_180(v11);
  v13 = type metadata accessor for SupportOption.SCBDetails(v12);
  OUTLINED_FUNCTION_125(*(v13 + 24));
  OUTLINED_FUNCTION_43();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v14)
    {
      sub_26BD04E80(v5, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100();
    v16(v15);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCDFBF0()
{
  v0 = OUTLINED_FUNCTION_217();
  v2 = *(v1(v0) + 20);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_148();

  return v7(v6);
}

uint64_t sub_26BCDFC78()
{
  v0 = OUTLINED_FUNCTION_134();
  v2 = *(v1(v0) + 20);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_234();

  return v7(v6);
}

uint64_t SupportOption.SCBDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.SCBDetails(v0) + 20);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.PhoneDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.PhoneDetails(v0) + 24);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.C2CHDetails.estimatedWaitTimeID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_147();
}

uint64_t SupportOption.C2CHDetails.estimatedWaitTimeID.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t SupportOption.C2CHDetails.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  v1 = *(type metadata accessor for SupportOption.C2CHDetails(v0) + 36);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_148();

  return v6(v5);
}

uint64_t SupportOption.C2CHDetails.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.C2CHDetails(v0) + 36);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_26(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_234();

  return v6(v5);
}

uint64_t SupportOption.C2CHDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.C2CHDetails(v0) + 36);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.BZCHTDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.BZCHTDetails(v0) + 32);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.BCSDetails.bcsType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_147();
}

uint64_t SupportOption.BCSDetails.bcsType.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SupportOption.BCSDetails.nextStep.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.BCSDetails(v0) + 28);
  return sub_26BCFF2C8();
}

uint64_t SupportOption.BCSDetails.nextStep.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.BCSDetails(v0) + 28);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.BCSDetails.callToAction.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = *(type metadata accessor for SupportOption.BCSDetails(v7) + 28);
  OUTLINED_FUNCTION_108();
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_8(Step);
  if (v10)
  {
    sub_26BD04E80(v0, &qword_2804490D8, &qword_26BDA1A70);
    return sub_26BDA0800();
  }

  OUTLINED_FUNCTION_130();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0();
    return sub_26BDA0800();
  }

  v13 = sub_26BDA0810();
  OUTLINED_FUNCTION_26(v13);
  v15 = *(v14 + 32);
  v16 = OUTLINED_FUNCTION_169();
  return v17(v16);
}

void SupportOption.BCSDetails.callToAction.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_118(v5);
  v6 = sub_26BDA0810();
  v7 = OUTLINED_FUNCTION_241(v6);
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 24) = v8;
  v10 = *(v9 + 64);
  *(v1 + 32) = __swift_coroFrameAllocStub(v10);
  *(v1 + 40) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_140();
  *(v1 + 56) = v11;
  OUTLINED_FUNCTION_135();
  *(v1 + 48) = OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_28(v0);
  if (v12)
  {
    sub_26BD04E80(v0, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    OUTLINED_FUNCTION_222();
    if (!swift_getEnumCaseMultiPayload())
    {
      v14 = OUTLINED_FUNCTION_21();
      v15(v14);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0();
  }

  sub_26BDA0800();
LABEL_7:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.BCSDetails.diagnosticsConsideration.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = *(type metadata accessor for SupportOption.BCSDetails(v7) + 28);
  OUTLINED_FUNCTION_108();
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_8(Step);
  if (v10)
  {
    sub_26BD04E80(v0, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v12 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v12);
      v14 = *(v13 + 32);
      v15 = OUTLINED_FUNCTION_169();
      return v16(v15);
    }

    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0();
  }

  return sub_26BDA0800();
}

uint64_t sub_26BCE0624()
{
  v2 = OUTLINED_FUNCTION_181();
  v3 = *(type metadata accessor for SupportOption.BCSDetails(v2) + 28);
  sub_26BD04E80(v0 + v3, &qword_2804490D8, &qword_26BDA1A70);
  v4 = sub_26BDA0810();
  OUTLINED_FUNCTION_26(v4);
  (*(v5 + 32))(v0 + v3, v1);
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, Step);
}

void SupportOption.BCSDetails.diagnosticsConsideration.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_118(v5);
  v6 = sub_26BDA0810();
  v7 = OUTLINED_FUNCTION_241(v6);
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 24) = v8;
  v10 = *(v9 + 64);
  *(v1 + 32) = __swift_coroFrameAllocStub(v10);
  *(v1 + 40) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_140();
  *(v1 + 56) = v11;
  OUTLINED_FUNCTION_135();
  *(v1 + 48) = OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_28(v0);
  if (v12)
  {
    sub_26BD04E80(v0, &qword_2804490D8, &qword_26BDA1A70);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_21();
  v15(v14);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BCE0844()
{
  OUTLINED_FUNCTION_189();
  v1 = (*v0)[5];
  v2 = (*v0)[6];
  v3 = *(*v0 + 14);
  v5 = (*v0)[3];
  v4 = (*v0)[4];
  v6 = (*v0)[1];
  v7 = (*v0)[2];
  v8 = **v0;
  if (v9)
  {
    (*(v5 + 16))((*v0)[4], v1, v7);
    sub_26BD04E80(v8 + v3, &qword_2804490D8, &qword_26BDA1A70);
    (*(v5 + 32))(v8 + v3, v4, v7);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
    (*(v5 + 8))(v1, v7);
  }

  else
  {
    sub_26BD04E80(v8 + v3, &qword_2804490D8, &qword_26BDA1A70);
    (*(v5 + 32))(v8 + v3, v1, v7);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
  }

  free(v1);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_188();

  free(v16);
}

uint64_t SupportOption.BCSDetails.triggerSolution.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = *(type metadata accessor for SupportOption.BCSDetails(v7) + 28);
  OUTLINED_FUNCTION_108();
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_8(Step);
  if (v10)
  {
    sub_26BD04E80(v0, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_126();
      return sub_26BCFEE08();
    }

    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0();
  }

  OUTLINED_FUNCTION_168();
  v13 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(0);
  OUTLINED_FUNCTION_255(v13);
  OUTLINED_FUNCTION_273();
  sub_26BDA0810();
  v14 = OUTLINED_FUNCTION_48();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t SupportOption.BCSDetails.triggerSolution.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for SupportOption.BCSDetails(v1);
  sub_26BD04E80(v0 + *(v2 + 28), &qword_2804490D8, &qword_26BDA1A70);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_143();
  sub_26BCFEE08();
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_234();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, Step);
}

void SupportOption.BCSDetails.triggerSolution.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_277();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_59(v3);
  v4 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_187(v6);
  v8 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(v7);
  OUTLINED_FUNCTION_31(v8);
  v10 = *(v9 + 64);
  *(v1 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 24) = v11;
  OUTLINED_FUNCTION_140();
  *(v1 + 40) = v12;
  sub_26BD04E2C();
  v13 = OUTLINED_FUNCTION_316();
  v14 = OUTLINED_FUNCTION_257(v13);
  OUTLINED_FUNCTION_28(v14);
  if (v15)
  {
    sub_26BD04E80(v6, &qword_2804490D8, &qword_26BDA1A70);
LABEL_7:
    OUTLINED_FUNCTION_214();
    v17 = &v11[*(v0 + 20)];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v18 = *(v0 + 24);
    sub_26BDA0810();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_170();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_173();
  sub_26BCFEE08();
LABEL_8:
  OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_283();
}

void sub_26BCE0D00()
{
  OUTLINED_FUNCTION_284();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = *(*v0 + 10);
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    OUTLINED_FUNCTION_130();
    sub_26BCFEE5C();
    sub_26BD04E80(v6 + v3, &qword_2804490D8, &qword_26BDA1A70);
    OUTLINED_FUNCTION_15();
    sub_26BCFEE08();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_205();
    sub_26BCFEEB0();
  }

  else
  {
    sub_26BD04E80(v6 + v3, &qword_2804490D8, &qword_26BDA1A70);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_314();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_120();
  }

  free(v1);
  free(v5);
  free(v4);
  OUTLINED_FUNCTION_283();

  free(v8);
}

uint64_t SupportOption.BCSDetails.adaptiveContent.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = *(type metadata accessor for SupportOption.BCSDetails(v7) + 28);
  OUTLINED_FUNCTION_108();
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  OUTLINED_FUNCTION_8(Step);
  if (v10)
  {
    sub_26BD04E80(v0, &qword_2804490D8, &qword_26BDA1A70);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      v12 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v12);
      v14 = *(v13 + 32);
      v15 = OUTLINED_FUNCTION_169();
      return v16(v15);
    }

    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0();
  }

  return sub_26BDA0800();
}

void SupportOption.BCSDetails.adaptiveContent.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_118(v5);
  v6 = sub_26BDA0810();
  v7 = OUTLINED_FUNCTION_241(v6);
  OUTLINED_FUNCTION_18(v7);
  *(v1 + 24) = v8;
  v10 = *(v9 + 64);
  *(v1 + 32) = __swift_coroFrameAllocStub(v10);
  *(v1 + 40) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_140();
  *(v1 + 56) = v11;
  OUTLINED_FUNCTION_135();
  *(v1 + 48) = OUTLINED_FUNCTION_316();
  OUTLINED_FUNCTION_28(v0);
  if (v12)
  {
    sub_26BD04E80(v0, &qword_2804490D8, &qword_26BDA1A70);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_222();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_4();
    sub_26BCFEEB0();
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_21();
  v15(v14);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCE10D4()
{
  v0 = OUTLINED_FUNCTION_217();
  v2 = *(v1(v0) + 32);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_148();

  return v7(v6);
}

uint64_t sub_26BCE115C()
{
  v0 = OUTLINED_FUNCTION_134();
  v2 = *(v1(v0) + 32);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_234();

  return v7(v6);
}

uint64_t SupportOption.BCSDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.BCSDetails(v0) + 32);
  return OUTLINED_FUNCTION_185();
}

void static SupportOption.BCSDetails.OneOf_NextStep.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v54 = v1;
  v55 = v2;
  v3 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(0);
  v4 = OUTLINED_FUNCTION_110(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_30();
  v51[1] = v7;
  OUTLINED_FUNCTION_176();
  v8 = sub_26BDA0810();
  v9 = OUTLINED_FUNCTION_18(v8);
  v52 = v10;
  v53 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_38();
  v51[0] = v13;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_263();
  MEMORY[0x28223BE20](v15);
  v17 = v51 - v16;
  Step = type metadata accessor for SupportOption.BCSDetails.OneOf_NextStep(0);
  v19 = OUTLINED_FUNCTION_34(Step);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_57();
  v24 = (v22 - v23);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = v51 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v51 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490E8, &qword_26BDA1A80);
  OUTLINED_FUNCTION_110(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_111();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = v51 - v37;
  v39 = *(v36 + 56);
  sub_26BCFEE5C();
  sub_26BCFEE5C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_35();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_311() == 1)
      {
        v45 = v52;
        (*(v52 + 32))(v0, &v38[v39], v53);
        OUTLINED_FUNCTION_122();
        sub_26BDA07F0();
        v46 = *(v45 + 8);
        v47 = OUTLINED_FUNCTION_167();
        v46(v47);
        v48 = OUTLINED_FUNCTION_262();
        v46(v48);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_278();
      v41 = v29;
      goto LABEL_13;
    case 2u:
      OUTLINED_FUNCTION_35();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_311() == 2)
      {
        OUTLINED_FUNCTION_15();
        sub_26BCFEE08();
        OUTLINED_FUNCTION_169();
        static SupportOption.BCSDetails.TriggerSolution.== infix(_:_:)();
        sub_26BCFEEB0();
        OUTLINED_FUNCTION_128();
        sub_26BCFEEB0();
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_205();
      sub_26BCFEEB0();
      goto LABEL_14;
    case 3u:
      OUTLINED_FUNCTION_35();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_311() == 3)
      {
        OUTLINED_FUNCTION_299();
        v42(v51[0]);
        OUTLINED_FUNCTION_281();
        sub_26BDA07F0();
        v43 = *(v0 + 8);
        v44 = OUTLINED_FUNCTION_130();
        v43(v44);
        (v43)(v24, v29);
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_278();
      v41 = v24;
      goto LABEL_13;
    default:
      OUTLINED_FUNCTION_35();
      sub_26BCFEE5C();
      if (OUTLINED_FUNCTION_311())
      {
        OUTLINED_FUNCTION_278();
        v41 = v31;
LABEL_13:
        v40(v41, v53);
LABEL_14:
        sub_26BD04E80(v38, &qword_2804490E8, &qword_26BDA1A80);
      }

      else
      {
        OUTLINED_FUNCTION_299();
        v49(v17);
        sub_26BDA07F0();
        v50 = *(v0 + 8);
        v50(v17, v29);
        v50(v31, v29);
LABEL_17:
        OUTLINED_FUNCTION_4();
        sub_26BCFEEB0();
      }

      OUTLINED_FUNCTION_188();
      return;
  }
}

void sub_26BCE1684()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  OUTLINED_FUNCTION_90();
  v5 = sub_26BDA0810();
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_121();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_183();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  OUTLINED_FUNCTION_34(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_150();
  v19 = *v0;
  v20 = v0[1];
  OUTLINED_FUNCTION_233();
  v23 = v23 && v21 == v22;
  if (!v23 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v40 = v4(0);
  v24 = *(v40 + 24);
  v25 = *(v15 + 48);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_28(v2);
  if (v23)
  {
    OUTLINED_FUNCTION_28(v2 + v25);
    if (v23)
    {
      sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
LABEL_17:
      v37 = *(v40 + 20);
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(v38, v39);
      v30 = OUTLINED_FUNCTION_308();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_256();
  sub_26BD04E2C();
  OUTLINED_FUNCTION_28(v2 + v25);
  if (v26)
  {
    v27 = *(v8 + 8);
    v28 = OUTLINED_FUNCTION_239();
    v29(v28);
LABEL_14:
    sub_26BD04E80(v2, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_15;
  }

  (*(v8 + 32))(v1, v2 + v25, v5);
  OUTLINED_FUNCTION_3();
  sub_26BCFF280(v31, v32);
  OUTLINED_FUNCTION_272();
  v33 = sub_26BDA0BB0();
  v34 = *(v8 + 8);
  v35 = OUTLINED_FUNCTION_170();
  v34(v35);
  v36 = OUTLINED_FUNCTION_239();
  v34(v36);
  sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
  if (v33)
  {
    goto LABEL_17;
  }

LABEL_15:
  v30 = 0;
LABEL_18:
  OUTLINED_FUNCTION_258(v30);
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.BCSDetails.TriggerSolution.serialNumberCollectionTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_147();
}

uint64_t SupportOption.BCSDetails.TriggerSolution.serialNumberCollectionTitle.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void SupportOption.BCSDetails.TriggerSolution.serialNumberCollectionMyDevicesFooter.modify()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_165();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_187(v5);
  v6 = sub_26BDA0810();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v0 + 24) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_257(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_180(v11);
  v13 = type metadata accessor for SupportOption.BCSDetails.TriggerSolution(v12);
  OUTLINED_FUNCTION_125(*(v13 + 24));
  OUTLINED_FUNCTION_43();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v14)
    {
      sub_26BD04E80(v5, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100();
    v16(v15);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOption.BCSDetails.TriggerSolution.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.BCSDetails.TriggerSolution(v0) + 20);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BCE1CC8()
{
  v0 = OUTLINED_FUNCTION_217();
  v2 = *(v1(v0) + 24);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_148();

  return v7(v6);
}

uint64_t sub_26BCE1D50()
{
  v0 = OUTLINED_FUNCTION_134();
  v2 = *(v1(v0) + 24);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_234();

  return v7(v6);
}

uint64_t SupportOption.KBDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.KBDetails(v0) + 24);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.CASDetails.supportedLanguageCodes.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SupportOption.CASDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOption.CASDetails(v0) + 24);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOption.ContactOptionsDetails.flow.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = *(type metadata accessor for SupportOption.ContactOptionsDetails(v7) + 20);
  OUTLINED_FUNCTION_108();
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_8(v9);
  if (v10)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v10)
    {
      return sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_113(&qword_280448F88);
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_141();
    return v13();
  }

  return result;
}

uint64_t sub_26BCE1FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_181();
  v7 = sub_26BDA0810();
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_121();
  v12 = *(v11 + 16);
  v13 = OUTLINED_FUNCTION_130();
  v14(v13);
  return a5(v5);
}

uint64_t SupportOption.ContactOptionsDetails.flow.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = type metadata accessor for SupportOption.ContactOptionsDetails(v2);
  sub_26BD04E80(v0 + *(v3 + 20), &qword_280448F88, &qword_26BDA5440);
  v4 = sub_26BDA0810();
  OUTLINED_FUNCTION_31(v4);
  v6 = *(v5 + 32);
  OUTLINED_FUNCTION_152();
  v7();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v1);
}

void SupportOption.ContactOptionsDetails.flow.modify()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_165();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_187(v5);
  v6 = sub_26BDA0810();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v0 + 24) = v7;
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_257(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_180(v11);
  v13 = type metadata accessor for SupportOption.ContactOptionsDetails(v12);
  OUTLINED_FUNCTION_125(*(v13 + 20));
  OUTLINED_FUNCTION_43();
  if (v14)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_43();
    if (!v14)
    {
      sub_26BD04E80(v5, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100();
    v16(v15);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCE22B8()
{
  OUTLINED_FUNCTION_177();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_183();
  v8 = *(v1(0) + 20);
  OUTLINED_FUNCTION_310();
  v9 = v0(0);
  OUTLINED_FUNCTION_112(v2, 1, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  OUTLINED_FUNCTION_129();
  sub_26BD04E80(v12, v13, v14);
  return v11;
}

uint64_t sub_26BCE239C()
{
  OUTLINED_FUNCTION_177();
  v2 = *(v1(0) + 20);
  OUTLINED_FUNCTION_141();
  sub_26BD04E80(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t _s15SupportServices0A6OptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  OUTLINED_FUNCTION_217();
  v0 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_147();

  return v4(v3);
}

uint64_t _s15SupportServices0A6OptionV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  OUTLINED_FUNCTION_134();
  v0 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_259();

  return v4(v3);
}

uint64_t sub_26BCE251C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_130();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t ContactSupportOptions.chatSupportOption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  v10 = *(type metadata accessor for ContactSupportOptions(v9) + 44);
  OUTLINED_FUNCTION_108();
  v11 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_8(v11);
  if (v12)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v13 = dword_280449104;
    if (qword_280448B30 != -1)
    {
      OUTLINED_FUNCTION_55();
    }

    *(a1 + v13) = qword_280448B38;
    v14 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_260(v14, v15);
    if (a1 != 1)
    {
      return sub_26BD04E80(v1, &qword_2804490F0, &qword_26BDA1A88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_126();
    return sub_26BCFEE08();
  }

  return result;
}

uint64_t ContactSupportOptions.chatSupportOption.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for ContactSupportOptions(v1);
  sub_26BD04E80(v0 + *(v2 + 44), &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_143();
  sub_26BCFEE08();
  OUTLINED_FUNCTION_317();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void ContactSupportOptions.chatSupportOption.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_277();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_59(v4);
  v5 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_118(v7);
  v9 = type metadata accessor for SupportOption(v8);
  v10 = OUTLINED_FUNCTION_241(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_303(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_227(v15);
  *(v2 + 40) = *(type metadata accessor for ContactSupportOptions(v16) + 44);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_9();
  if (v17)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_280448B30 != -1)
    {
      OUTLINED_FUNCTION_55();
    }

    *(v12 + v18) = qword_280448B38;
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_315();
    if (v0 != 1)
    {
      sub_26BD04E80(v1, &qword_2804490F0, &qword_26BDA1A88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_216();
    sub_26BCFEE08();
  }

  OUTLINED_FUNCTION_283();
}

uint64_t ContactSupportOptions.hasChatSupportOption.getter()
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = *(type metadata accessor for ContactSupportOptions(v7) + 44);
  OUTLINED_FUNCTION_139();
  v9 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_13(v9);
  return v0;
}

Swift::Void __swiftcall ContactSupportOptions.clearChatSupportOption()()
{
  v1 = type metadata accessor for ContactSupportOptions(0);
  sub_26BD04E80(v0 + *(v1 + 44), &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_317();
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t ContactSupportOptions.contactAppleSupportOption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  v10 = *(type metadata accessor for ContactSupportOptions(v9) + 48);
  OUTLINED_FUNCTION_108();
  v11 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_8(v11);
  if (v12)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v13 = dword_280449104;
    if (qword_280448B30 != -1)
    {
      OUTLINED_FUNCTION_55();
    }

    *(a1 + v13) = qword_280448B38;
    v14 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_260(v14, v15);
    if (a1 != 1)
    {
      return sub_26BD04E80(v1, &qword_2804490F0, &qword_26BDA1A88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_126();
    return sub_26BCFEE08();
  }

  return result;
}

uint64_t ContactSupportOptions.contactAppleSupportOption.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for ContactSupportOptions(v1);
  sub_26BD04E80(v0 + *(v2 + 48), &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_143();
  sub_26BCFEE08();
  OUTLINED_FUNCTION_317();
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void ContactSupportOptions.contactAppleSupportOption.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_277();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_59(v4);
  v5 = OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_118(v7);
  v9 = type metadata accessor for SupportOption(v8);
  v10 = OUTLINED_FUNCTION_241(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_303(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_227(v15);
  *(v2 + 40) = *(type metadata accessor for ContactSupportOptions(v16) + 48);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_9();
  if (v17)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v18 = *(v0 + 20);
    if (qword_280448B30 != -1)
    {
      OUTLINED_FUNCTION_55();
    }

    *(v12 + v18) = qword_280448B38;
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_315();
    if (v0 != 1)
    {
      sub_26BD04E80(v1, &qword_2804490F0, &qword_26BDA1A88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_216();
    sub_26BCFEE08();
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BCE2CD4()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_179(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_170();
    sub_26BCFEE5C();
    sub_26BD04E80(v4 + v3, &qword_2804490F0, &qword_26BDA1A88);
    OUTLINED_FUNCTION_5();
    sub_26BCFEE08();
    OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_25();
    sub_26BCFEEB0();
  }

  else
  {
    sub_26BD04E80(v4 + v3, &qword_2804490F0, &qword_26BDA1A88);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_314();
    OUTLINED_FUNCTION_120();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_283();

  free(v7);
}

uint64_t ContactSupportOptions.hasContactAppleSupportOption.getter()
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = *(type metadata accessor for ContactSupportOptions(v7) + 48);
  OUTLINED_FUNCTION_139();
  v9 = type metadata accessor for SupportOption(0);
  OUTLINED_FUNCTION_13(v9);
  return v0;
}

Swift::Void __swiftcall ContactSupportOptions.clearContactAppleSupportOption()()
{
  v1 = type metadata accessor for ContactSupportOptions(0);
  sub_26BD04E80(v0 + *(v1 + 48), &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_317();
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t ContactSupportOptions.locale.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_147();
}

uint64_t ContactSupportOptions.locale.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ContactSupportOptions.localizedLanguageDetailInfo.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_147();
}

uint64_t ContactSupportOptions.localizedLanguageDetailInfo.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ContactSupportOptions.otherSupportOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t ContactSupportOptions.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  v1 = *(type metadata accessor for ContactSupportOptions(v0) + 40);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_148();

  return v6(v5);
}

uint64_t ContactSupportOptions.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for ContactSupportOptions(v0) + 40);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_26(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_234();

  return v6(v5);
}

uint64_t ContactSupportOptions.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for ContactSupportOptions(v0) + 40);
  return OUTLINED_FUNCTION_185();
}

uint64_t ArticleSupportOptions.articles.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_26BCE31EC()
{
  v0 = OUTLINED_FUNCTION_217();
  v2 = v1(v0);
  OUTLINED_FUNCTION_298(v2);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_148();

  return v7(v6);
}

uint64_t sub_26BCE3270()
{
  v0 = OUTLINED_FUNCTION_134();
  v2 = v1(v0);
  OUTLINED_FUNCTION_298(v2);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_26(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_234();

  return v7(v6);
}

uint64_t ArticleSupportOptions.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for ArticleSupportOptions(v0) + 28);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BCE3330()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448AC8);
  __swift_project_value_buffer(v0, qword_280448AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "case_meta_data";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client_context";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void AllSolutionsRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49();
  while (1)
  {
    OUTLINED_FUNCTION_204();
    v1 = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v6 = *(type metadata accessor for AllSolutionsRequest(0) + 24);
      type metadata accessor for TriageRequest.ClientContext(0);
      OUTLINED_FUNCTION_197();
      v5 = &unk_2804490F8;
LABEL_8:
      sub_26BCFF280(v5, v4);
      sub_26BDA09B0();
    }

    else if (v1 == 1)
    {
      v3 = *(type metadata accessor for AllSolutionsRequest(0) + 20);
      type metadata accessor for TriageRequest.CaseMetaData(0);
      OUTLINED_FUNCTION_198();
      v5 = &unk_280449100;
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_247();
}

void AllSolutionsRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_246();
  v3 = v0;
  v38 = v4;
  v39 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_229();
  v36 = type metadata accessor for TriageRequest.ClientContext(v10);
  v11 = OUTLINED_FUNCTION_34(v36);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30();
  v35[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
  OUTLINED_FUNCTION_110(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  v20 = v35 - v19;
  v21 = type metadata accessor for TriageRequest.CaseMetaData(0);
  v22 = OUTLINED_FUNCTION_34(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_44();
  v25 = type metadata accessor for AllSolutionsRequest(0);
  v26 = *(v25 + 20);
  v37 = v3;
  sub_26BD04E2C();
  OUTLINED_FUNCTION_112(v20, 1, v21);
  if (v27)
  {
    sub_26BD04E80(v20, &qword_280448F68, &qword_26BDA1A30);
  }

  else
  {
    OUTLINED_FUNCTION_12();
    sub_26BCFEE08();
    OUTLINED_FUNCTION_198();
    sub_26BCFF280(v28, v29);
    sub_26BDA0AD0();
    OUTLINED_FUNCTION_85();
    sub_26BCFEEB0();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v30 = *(v25 + 24);
  sub_26BD04E2C();
  v31 = OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_112(v31, v32, v36);
  if (v27)
  {
    sub_26BD04E80(v2, &qword_280448F70, &qword_26BDA1A38);
LABEL_9:
    sub_26BDA0830();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11();
  sub_26BCFEE08();
  OUTLINED_FUNCTION_197();
  sub_26BCFF280(v33, v34);
  OUTLINED_FUNCTION_304();
  sub_26BDA0AD0();
  OUTLINED_FUNCTION_84();
  sub_26BCFEEB0();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_247();
}

void static AllSolutionsRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_181();
  v68 = type metadata accessor for TriageRequest.ClientContext(v3);
  v4 = OUTLINED_FUNCTION_34(v68);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_30();
  v64 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_110(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_280();
  v65 = v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449108, &unk_26BDA5490);
  OUTLINED_FUNCTION_34(v67);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_280();
  v69 = v16;
  v17 = OUTLINED_FUNCTION_176();
  v18 = type metadata accessor for TriageRequest.CaseMetaData(v17);
  v19 = OUTLINED_FUNCTION_34(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_295();
  v22 = OUTLINED_FUNCTION_256();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_110(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v27);
  v29 = &v63 - v28;
  v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449110, &unk_26BDA1AB0) - 8);
  v31 = *(*v30 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_229();
  v66 = type metadata accessor for AllSolutionsRequest(v33);
  v34 = *(v66 + 20);
  v35 = v30[14];
  v70 = v0;
  sub_26BD04E2C();
  sub_26BD04E2C();
  OUTLINED_FUNCTION_28(v1);
  if (v36)
  {
    OUTLINED_FUNCTION_28(v1 + v35);
    if (v36)
    {
      sub_26BD04E80(v1, &qword_280448F68, &qword_26BDA1A30);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_26BD04E2C();
  OUTLINED_FUNCTION_28(v1 + v35);
  if (v36)
  {
    OUTLINED_FUNCTION_85();
    sub_26BCFEEB0();
LABEL_9:
    v37 = &qword_280449110;
    v38 = &unk_26BDA1AB0;
LABEL_10:
    v39 = v1;
LABEL_24:
    sub_26BD04E80(v39, v37, v38);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_12();
  sub_26BCFEE08();
  v40 = *(v18 + 20);
  if (*&v29[v40] != *(v2 + v40))
  {
    v41 = *&v29[v40];

    sub_26BD631C8();
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      sub_26BCFEEB0();
      OUTLINED_FUNCTION_147();
      sub_26BCFEEB0();
      v37 = &qword_280448F68;
      v38 = &qword_26BDA1A30;
      goto LABEL_10;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v44, v45);
  OUTLINED_FUNCTION_157();
  v46 = sub_26BDA0BB0();
  sub_26BCFEEB0();
  OUTLINED_FUNCTION_275();
  sub_26BCFEEB0();
  sub_26BD04E80(v1, &qword_280448F68, &qword_26BDA1A30);
  if ((v46 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  v47 = *(v66 + 24);
  v48 = *(v67 + 48);
  v49 = v69;
  OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_313();
  v50 = v68;
  OUTLINED_FUNCTION_112(v49, 1, v68);
  if (v36)
  {
    OUTLINED_FUNCTION_106(v49 + v48);
    if (v36)
    {
      sub_26BD04E80(v49, &qword_280448F70, &qword_26BDA1A38);
LABEL_30:
      sub_26BDA0850();
      OUTLINED_FUNCTION_1();
      sub_26BCFF280(v61, v62);
      OUTLINED_FUNCTION_279();
      v53 = sub_26BDA0BB0();
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v51 = v65;
  sub_26BD04E2C();
  OUTLINED_FUNCTION_106(v49 + v48);
  if (v52)
  {
    OUTLINED_FUNCTION_84();
    sub_26BCFEEB0();
LABEL_22:
    v37 = &qword_280449108;
    v38 = &unk_26BDA5490;
LABEL_23:
    v39 = v49;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_11();
  v54 = v64;
  sub_26BCFEE08();
  v55 = *(v50 + 20);
  if (*(v51 + v55) != *(v54 + v55))
  {
    v56 = *(v51 + v55);

    OUTLINED_FUNCTION_147();
    v57 = sub_26BD67C6C();

    if (!v57)
    {
      sub_26BCFEEB0();
      sub_26BCFEEB0();
      v37 = &qword_280448F70;
      v38 = &qword_26BDA1A38;
      goto LABEL_23;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_1();
  sub_26BCFF280(v58, v59);
  OUTLINED_FUNCTION_304();
  v60 = sub_26BDA0BB0();
  sub_26BCFEEB0();
  sub_26BCFEEB0();
  sub_26BD04E80(v49, &qword_280448F70, &qword_26BDA1A38);
  if (v60)
  {
    goto LABEL_30;
  }

LABEL_25:
  v53 = 0;
LABEL_26:
  OUTLINED_FUNCTION_258(v53);
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BCE3F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BCFF280(&qword_2804495B0, type metadata accessor for AllSolutionsRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BCE4020(uint64_t a1)
{
  v2 = sub_26BCFF280(&qword_2804491B8, type metadata accessor for AllSolutionsRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BCE4090()
{
  sub_26BCFF280(&qword_2804491B8, type metadata accessor for AllSolutionsRequest);

  return sub_26BDA0A00();
}

uint64_t sub_26BCE412C()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280448AE8);
  __swift_project_value_buffer(v0, qword_280448AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_26BDA19A0;
  v4 = v64 + v3 + v1[14];
  *(v64 + v3) = 1;
  *v4 = "support_options";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  *(v4 + 24) = "solutions";
  *(v4 + 32) = 9;
  *(v4 + 40) = 2;
  v5 = *MEMORY[0x277D21878];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v64 + v3 + v2 + v1[14];
  *(v64 + v3 + v2) = 2;
  *v8 = "contact_support_options";
  *(v8 + 8) = 23;
  *(v8 + 16) = 2;
  *(v8 + 24) = "contactSolutions";
  *(v8 + 32) = 16;
  *(v8 + 40) = 2;
  v7();
  v9 = (v64 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "hero_article";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v7();
  v12 = (v64 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hero_video";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v7();
  v14 = (v64 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "popular_articles";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v7();
  v16 = (v64 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "quick_answer_articles";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v7();
  v18 = (v64 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "video_articles";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v7();
  v20 = (v64 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "reporting_context";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v7();
  v22 = v1[14];
  v23 = (v64 + v3 + 8 * v2);
  *v23 = 9;
  v24 = v23 + v22;
  *v24 = "empty_resources";
  *(v24 + 1) = 15;
  v24[16] = 2;
  *(v24 + 3) = "noSolutionsResources";
  *(v24 + 4) = 20;
  v24[40] = 2;
  v7();
  v25 = (v64 + v3 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "localized_solutions_info";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = v1[14];
  v28 = (v64 + v3 + 10 * v2);
  *v28 = 11;
  v29 = v28 + v27;
  *v29 = "not_available_resources";
  *(v29 + 1) = 23;
  v29[16] = 2;
  *(v29 + 3) = "solutionNotAvailableResources";
  *(v29 + 4) = 29;
  v29[40] = 2;
  v7();
  v30 = (v64 + v3 + 11 * v2);
  v31 = v30 + v1[14];
  *v30 = 12;
  *v31 = "battery_resources";
  *(v31 + 1) = 17;
  v31[16] = 2;
  v7();
  v32 = (v64 + v3 + 12 * v2);
  v33 = v32 + v1[14];
  *v32 = 13;
  *v33 = "is_battery_related";
  *(v33 + 1) = 18;
  v33[16] = 2;
  v7();
  v34 = (v64 + v3 + 13 * v2);
  v35 = v34 + v1[14];
  *v34 = 14;
  *v35 = "coverage_resources";
  *(v35 + 1) = 18;
  v35[16] = 2;
  v7();
  v36 = (v64 + v3 + 14 * v2);
  v37 = v36 + v1[14];
  *v36 = 15;
  *v37 = "recommended_support_options_header";
  *(v37 + 1) = 34;
  v37[16] = 2;
  v7();
  v38 = (v64 + v3 + 15 * v2);
  v39 = v38 + v1[14];
  *v38 = 16;
  *v39 = "recommended_support_options_header_linked_content";
  *(v39 + 1) = 49;
  v39[16] = 2;
  v7();
  v40 = (v64 + v3 + 16 * v2);
  v41 = v40 + v1[14];
  *v40 = 17;
  *v41 = "localized_disclaimer_footer";
  *(v41 + 1) = 27;
  v41[16] = 2;
  v7();
  v42 = v1[14];
  v43 = (v64 + v3 + 17 * v2);
  *v43 = 18;
  v44 = v43 + v42;
  *v44 = "deprecated_v3_billing_error";
  *(v44 + 1) = 27;
  v44[16] = 2;
  *(v44 + 3) = "billingError";
  *(v44 + 4) = 12;
  v44[40] = 2;
  v7();
  v45 = (v64 + v3 + 18 * v2);
  v46 = v45 + v1[14];
  *v45 = 19;
  *v46 = "warning_message";
  *(v46 + 1) = 15;
  v46[16] = 2;
  v7();
  v47 = (v64 + v3 + 19 * v2);
  v48 = v47 + v1[14];
  *v47 = 20;
  *v48 = "location";
  *(v48 + 1) = 8;
  v48[16] = 2;
  v49 = *MEMORY[0x277D21870];
  v7();
  v50 = (v64 + v3 + 20 * v2);
  v51 = v50 + v1[14];
  *v50 = 21;
  *v51 = "quick_answer_metadata";
  *(v51 + 1) = 21;
  v51[16] = 2;
  v7();
  v52 = (v64 + v3 + 21 * v2);
  v53 = v52 + v1[14];
  *v52 = 22;
  *v53 = "quick_answers";
  *(v53 + 1) = 13;
  v53[16] = 2;
  v7();
  v54 = (v64 + v3 + 22 * v2);
  v55 = v54 + v1[14];
  *v54 = 23;
  *v55 = "hero_articles";
  *(v55 + 1) = 13;
  v55[16] = 2;
  v7();
  v56 = (v64 + v3 + 23 * v2);
  v57 = v56 + v1[14];
  *v56 = 24;
  *v57 = "hero_videos";
  *(v57 + 1) = 11;
  v57[16] = 2;
  v7();
  v58 = (v64 + v3 + 24 * v2);
  v59 = v58 + v1[14];
  *v58 = 26;
  *v59 = "deep_dive_url";
  *(v59 + 1) = 13;
  v59[16] = 2;
  v7();
  v60 = v1[14];
  v61 = (v64 + v3 + 25 * v2);
  *v61 = 25;
  v62 = v61 + v60;
  *v62 = "billing_error";
  *(v62 + 1) = 13;
  v62[16] = 2;
  *(v62 + 3) = "billingErrorV4";
  *(v62 + 4) = 14;
  v62[40] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t sub_26BCE4990()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  v3 = type metadata accessor for ContactSupportOptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle;
  v5 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  v7 = type metadata accessor for ArticleSupportOptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles, 1, 1, v7);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  *(v0 + v8) = sub_26BDA0B70();
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources, 1, 1, v5);
  v9 = (v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources) = v1;
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated) = 0;
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources) = v1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent, 1, 1, v5);
  v10 = (v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location, 1, 1, v5);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers) = v1;
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles) = v1;
  *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos) = v1;
  v11 = (v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError, 1, 1, v5);
  return v0;
}

uint64_t sub_26BCE4C34(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v61[1] = v61 - v6;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  v61[0] = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions;
  v9 = type metadata accessor for ContactSupportOptions(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle;
  v61[2] = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle;
  v11 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v61[3] = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  v61[4] = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles;
  v13 = type metadata accessor for ArticleSupportOptions(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v61[5] = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles, 1, 1, v13);
  v61[6] = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  v62 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  *(v1 + v14) = sub_26BDA0B70();
  v63 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources, 1, 1, v11);
  v15 = (v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v64 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources, 1, 1, v11);
  v65 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources) = v7;
  v66 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated) = 0;
  v67 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources) = v7;
  v68 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader, 1, 1, v11);
  v69 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent, 1, 1, v11);
  v16 = (v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  v70 = (v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v71 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError, 1, 1, v11);
  v72 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage, 1, 1, v11);
  v73 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location, 1, 1, v11);
  v74 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata, 1, 1, v11);
  v75 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers) = v7;
  v76 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles) = v7;
  v77 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos;
  *(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos) = v7;
  v17 = (v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  v78 = (v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v79 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError, 1, 1, v11);
  swift_beginAccess();
  v18 = *(a1 + 16);
  swift_beginAccess();
  v19 = *(v1 + 16);
  *(v1 + 16) = v18;

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  swift_beginAccess();
  v21 = *(a1 + v20);
  v22 = v62;
  swift_beginAccess();
  v23 = *(v1 + v22);
  *(v1 + v22) = v21;

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  v27 = v15[1];
  *v15 = v26;
  v15[1] = v25;

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources;
  swift_beginAccess();
  v29 = *(a1 + v28);
  v30 = v65;
  swift_beginAccess();
  v31 = *(v1 + v30);
  *(v1 + v30) = v29;

  v32 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + v32);
  v33 = v66;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources;
  swift_beginAccess();
  v35 = *(a1 + v34);
  v36 = v67;
  swift_beginAccess();
  v37 = *(v1 + v36);
  *(v1 + v36) = v35;

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  v38 = (a1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  swift_beginAccess();
  v40 = *v38;
  v39 = v38[1];
  v41 = v70;
  swift_beginAccess();
  v42 = v41[1];
  *v41 = v40;
  v41[1] = v39;

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers;
  swift_beginAccess();
  v44 = *(a1 + v43);
  v45 = v75;
  swift_beginAccess();
  v46 = *(v1 + v45);
  *(v1 + v45) = v44;

  v47 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles;
  swift_beginAccess();
  v48 = *(a1 + v47);
  v49 = v76;
  swift_beginAccess();
  v50 = *(v1 + v49);
  *(v1 + v49) = v48;

  v51 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = v77;
  swift_beginAccess();
  v54 = *(v1 + v53);
  *(v1 + v53) = v52;

  v55 = (a1 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  swift_beginAccess();
  v57 = *v55;
  v56 = v55[1];
  v58 = v78;
  swift_beginAccess();
  v59 = v58[1];
  *v58 = v57;
  v58[1] = v56;

  swift_beginAccess();
  sub_26BD04E2C();

  swift_beginAccess();
  sub_26BCFF2C8();
  swift_endAccess();
  return v1;
}

uint64_t sub_26BCE59C0()
{
  v1 = *(v0 + 16);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__contactSupportOptions, &unk_280448F78, &unk_26BDA1A40);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticle, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideo, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__popularArticles, &qword_280448FA0, &qword_26BDA1A50);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerArticles, &qword_280448FA0, &qword_26BDA1A50);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__videoArticles, &qword_280448FA0, &qword_26BDA1A50);
  v2 = *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__emptyResources, &qword_280448F88, &qword_26BDA5440);
  v3 = *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo + 8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__notAvailableResources, &qword_280448F88, &qword_26BDA5440);
  v4 = *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources);

  v5 = *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeader, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__recommendedSupportOptionsHeaderLinkedContent, &qword_280448F88, &qword_26BDA5440);
  v6 = *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter + 8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deprecatedV3BillingError, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__warningMessage, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__location, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswerMetadata, &qword_280448F88, &qword_26BDA5440);
  v7 = *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers);

  v8 = *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles);

  v9 = *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos);

  v10 = *(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL + 8);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__billingError, &qword_280448F88, &qword_26BDA5440);
  return v0;
}

uint64_t sub_26BCE5C94()
{
  v1 = v0;
  while (1)
  {
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        type metadata accessor for SupportOption(0);
        sub_26BCFF280(&qword_280449190, type metadata accessor for SupportOption);
        sub_26BDA09A0();
        goto LABEL_14;
      case 2:
        swift_beginAccess();
        type metadata accessor for ContactSupportOptions(0);
        v4 = &unk_280449300;
        v5 = type metadata accessor for ContactSupportOptions;
        goto LABEL_13;
      case 3:
      case 4:
        swift_beginAccess();
        sub_26BDA0810();
        v4 = &qword_280449130;
        v5 = MEMORY[0x277D215C8];
        goto LABEL_13;
      case 5:
        swift_beginAccess();
        type metadata accessor for ArticleSupportOptions(0);
        v4 = &unk_280449318;
        v5 = type metadata accessor for ArticleSupportOptions;
        goto LABEL_13;
      case 6:
      case 7:
        swift_beginAccess();
        type metadata accessor for ArticleSupportOptions(0);
        v4 = &unk_280449318;
        v5 = type metadata accessor for ArticleSupportOptions;
        goto LABEL_13;
      case 8:
        swift_beginAccess();
        sub_26BDA0820();
        sub_26BDA08F0();
        goto LABEL_14;
      case 9:
      case 11:
      case 15:
      case 16:
      case 18:
      case 19:
      case 20:
      case 21:
        swift_beginAccess();
        sub_26BDA0810();
        v4 = &qword_280449130;
        v5 = MEMORY[0x277D215C8];
LABEL_13:
        sub_26BCFF280(v4, v5);
        sub_26BDA09B0();
        goto LABEL_14;
      case 10:
      case 17:
      case 26:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_14;
      case 12:
      case 14:
      case 22:
      case 23:
      case 24:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA09A0();
        goto LABEL_14;
      case 13:
        swift_beginAccess();
        sub_26BDA0920();
LABEL_14:
        v1 = 0;
        swift_endAccess();
        break;
      case 25:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA09B0();
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BCE64D4(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v158 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v159 = &v138 - v11;
  MEMORY[0x28223BE20](v10);
  v160 = &v138 - v12;
  v165 = type metadata accessor for ArticleSupportOptions(0);
  v13 = *(*(v165 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v165);
  v156 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v157 = &v138 - v17;
  MEMORY[0x28223BE20](v16);
  v168 = &v138 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v139 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v142 = &v138 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v144 = &v138 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v146 = &v138 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v147 = &v138 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v150 = &v138 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v151 = &v138 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v153 = &v138 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v155 = &v138 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v162 = &v138 - v40;
  MEMORY[0x28223BE20](v39);
  v164 = &v138 - v41;
  v170 = sub_26BDA0810();
  v166 = *(v170 - 8);
  v42 = *(v166 + 64);
  v43 = MEMORY[0x28223BE20](v170);
  v138 = &v138 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v140 = &v138 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v141 = &v138 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v143 = &v138 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v145 = &v138 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v148 = &v138 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v149 = &v138 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v152 = &v138 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v154 = &v138 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v167 = &v138 - v62;
  MEMORY[0x28223BE20](v61);
  v161 = &v138 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v67 = &v138 - v66;
  v68 = type metadata accessor for ContactSupportOptions(0);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  swift_beginAccess();
  v169 = a1;
  if (*(*(a1 + 16) + 16))
  {
    type metadata accessor for SupportOption(0);
    sub_26BCFF280(&qword_280449190, type metadata accessor for SupportOption);

    v70 = v171;
    sub_26BDA0AC0();
    v71 = v70;
    if (v70)
    {

      v171 = v70;
      return result;
    }

    v163 = a3;
  }

  else
  {
    v163 = a3;
    v71 = v171;
  }

  v73 = v169;
  swift_beginAccess();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v67, 1, v68) == 1)
  {
    sub_26BD04E80(v67, &unk_280448F78, &unk_26BDA1A40);
    v171 = v71;
  }

  else
  {
    sub_26BCFEE08();
    sub_26BCFF280(&qword_280449300, type metadata accessor for ContactSupportOptions);
    sub_26BDA0AD0();
    v171 = v71;
    if (v71)
    {
      return sub_26BCFEEB0();
    }

    sub_26BCFEEB0();
  }

  swift_beginAccess();
  v74 = v164;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, 1, v170);
  v76 = v166;
  v77 = v167;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v74, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v78 = v161;
    (*(v166 + 32))(v161, v74, v170);
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    v79 = v171;
    sub_26BDA0AD0();
    v171 = v79;
    if (v79)
    {
      return (*(v76 + 8))(v78, v170);
    }

    (*(v76 + 8))(v78, v170);
    v77 = v167;
  }

  swift_beginAccess();
  v80 = v162;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v80, 1, v170) == 1)
  {
    v164 = a2;
    v81 = v73;
    v82 = v171;
    sub_26BD04E80(v80, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    (*(v76 + 32))(v77, v80, v170);
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    v83 = v171;
    sub_26BDA0AD0();
    v171 = v83;
    if (v83)
    {
      return (*(v76 + 8))(v77, v170);
    }

    v164 = a2;
    v84 = v77;
    v81 = v73;
    v82 = 0;
    (*(v76 + 8))(v84, v170);
  }

  swift_beginAccess();
  v85 = v160;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v85, 1, v165) == 1)
  {
    sub_26BD04E80(v85, &qword_280448FA0, &qword_26BDA1A50);
    v171 = v82;
  }

  else
  {
    sub_26BCFEE08();
    sub_26BCFF280(&qword_280449318, type metadata accessor for ArticleSupportOptions);
    sub_26BDA0AD0();
    v171 = v82;
    if (v82)
    {
      return sub_26BCFEEB0();
    }

    sub_26BCFEEB0();
  }

  v86 = v81;
  swift_beginAccess();
  v87 = v159;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v87, 1, v165) == 1)
  {
    sub_26BD04E80(v87, &qword_280448FA0, &qword_26BDA1A50);
  }

  else
  {
    sub_26BCFEE08();
    sub_26BCFF280(&qword_280449318, type metadata accessor for ArticleSupportOptions);
    v88 = v171;
    sub_26BDA0AD0();
    v171 = v88;
    if (v88)
    {
      return sub_26BCFEEB0();
    }

    sub_26BCFEEB0();
  }

  swift_beginAccess();
  v89 = v158;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v89, 1, v165) == 1)
  {
    sub_26BD04E80(v89, &qword_280448FA0, &qword_26BDA1A50);
    goto LABEL_34;
  }

  sub_26BCFEE08();
  sub_26BCFF280(&qword_280449318, type metadata accessor for ArticleSupportOptions);
  v90 = v171;
  sub_26BDA0AD0();
  v171 = v90;
  if (v90)
  {
    return sub_26BCFEEB0();
  }

  sub_26BCFEEB0();
LABEL_34:
  v91 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  swift_beginAccess();
  v92 = v166;
  if (*(*(v86 + v91) + 16))
  {
    sub_26BDA0820();

    v93 = v171;
    sub_26BDA0A30();
    v171 = v93;
    if (v93)
    {
    }
  }

  swift_beginAccess();
  v94 = v155;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v94, 1, v170) == 1)
  {
    sub_26BD04E80(v94, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v95 = v154;
    (*(v92 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    v96 = v171;
    sub_26BDA0AD0();
    v171 = v96;
    if (v96)
    {
      return (*(v92 + 8))(v95, v170);
    }

    (*(v92 + 8))(v95, v170);
  }

  v97 = (v86 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  swift_beginAccess();
  v98 = *v97;
  v99 = v97[1];
  v100 = HIBYTE(v99) & 0xF;
  if ((v99 & 0x2000000000000000) == 0)
  {
    v100 = v98 & 0xFFFFFFFFFFFFLL;
  }

  if (v100)
  {

    v101 = v171;
    sub_26BDA0AB0();
    v171 = v101;
    if (v101)
    {
    }
  }

  swift_beginAccess();
  v102 = v153;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v102, 1, v170) == 1)
  {
    sub_26BD04E80(v102, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v95 = v152;
    (*(v92 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    v103 = v171;
    sub_26BDA0AD0();
    v171 = v103;
    if (v103)
    {
      return (*(v92 + 8))(v95, v170);
    }

    (*(v92 + 8))(v95, v170);
  }

  v104 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources;
  swift_beginAccess();
  if (*(*(v86 + v104) + 16))
  {
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);

    v105 = v171;
    sub_26BDA0AC0();
    v171 = v105;
    if (v105)
    {
    }
  }

  v106 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  swift_beginAccess();
  if (*(v86 + v106) == 1)
  {
    v107 = v171;
    result = sub_26BDA0A40();
    v171 = v107;
    if (v107)
    {
      return result;
    }
  }

  v108 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources;
  swift_beginAccess();
  if (*(*(v86 + v108) + 16))
  {
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);

    v109 = v171;
    sub_26BDA0AC0();
    v171 = v109;
    if (!v109)
    {

      goto LABEL_59;
    }
  }

LABEL_59:
  swift_beginAccess();
  v110 = v151;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v110, 1, v170) == 1)
  {
    sub_26BD04E80(v110, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v95 = v149;
    (*(v92 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    v111 = v171;
    sub_26BDA0AD0();
    v171 = v111;
    if (v111)
    {
      return (*(v92 + 8))(v95, v170);
    }

    (*(v92 + 8))(v95, v170);
  }

  swift_beginAccess();
  v112 = v150;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v112, 1, v170) == 1)
  {
    sub_26BD04E80(v112, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v95 = v148;
    (*(v92 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    v113 = v171;
    sub_26BDA0AD0();
    v171 = v113;
    if (v113)
    {
      return (*(v92 + 8))(v95, v170);
    }

    (*(v92 + 8))(v95, v170);
  }

  v114 = (v86 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  swift_beginAccess();
  v115 = *v114;
  v116 = v114[1];
  v117 = HIBYTE(v116) & 0xF;
  if ((v116 & 0x2000000000000000) == 0)
  {
    v117 = v115 & 0xFFFFFFFFFFFFLL;
  }

  if (v117)
  {

    v118 = v171;
    sub_26BDA0AB0();
    v171 = v118;
    if (v118)
    {
    }
  }

  swift_beginAccess();
  v119 = v147;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v119, 1, v170) == 1)
  {
    sub_26BD04E80(v119, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v95 = v145;
    (*(v92 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    v120 = v171;
    sub_26BDA0AD0();
    v171 = v120;
    if (v120)
    {
      return (*(v92 + 8))(v95, v170);
    }

    (*(v92 + 8))(v95, v170);
  }

  swift_beginAccess();
  v121 = v146;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v121, 1, v170) == 1)
  {
    sub_26BD04E80(v121, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v95 = v143;
    (*(v92 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    v122 = v171;
    sub_26BDA0AD0();
    v171 = v122;
    if (v122)
    {
      return (*(v92 + 8))(v95, v170);
    }

    (*(v92 + 8))(v95, v170);
  }

  swift_beginAccess();
  v123 = v144;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v123, 1, v170) == 1)
  {
    sub_26BD04E80(v123, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v95 = v141;
    (*(v92 + 32))();
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
    v124 = v171;
    sub_26BDA0AD0();
    v171 = v124;
    if (v124)
    {
      return (*(v92 + 8))(v95, v170);
    }

    (*(v92 + 8))(v95, v170);
  }

  swift_beginAccess();
  v125 = v142;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v125, 1, v170) == 1)
  {
    sub_26BD04E80(v125, &qword_280448F88, &qword_26BDA5440);
    goto LABEL_89;
  }

  v95 = v140;
  (*(v92 + 32))();
  sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
  v126 = v171;
  sub_26BDA0AD0();
  v171 = v126;
  if (v126)
  {
    return (*(v92 + 8))(v95, v170);
  }

  (*(v92 + 8))(v95, v170);
LABEL_89:
  v127 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers;
  swift_beginAccess();
  if (*(*(v86 + v127) + 16))
  {
    sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);

    v128 = v171;
    sub_26BDA0AC0();
    v171 = v128;
    if (v128)
    {
    }

    v129 = 0;
  }

  else
  {
    v129 = v171;
  }

  v130 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles;
  swift_beginAccess();
  if (!*(*(v86 + v130) + 16) || (sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]), , sub_26BDA0AC0(), result = , !v129))
  {
    v131 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos;
    v132 = v169;
    swift_beginAccess();
    if (!*(*(v132 + v131) + 16) || (sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]), , sub_26BDA0AC0(), result = , !v129))
    {
      swift_beginAccess();
      v133 = v139;
      sub_26BD04E2C();
      if (__swift_getEnumTagSinglePayload(v133, 1, v170) == 1)
      {
        sub_26BD04E80(v139, &qword_280448F88, &qword_26BDA5440);
      }

      else
      {
        (*(v166 + 32))(v138, v139, v170);
        sub_26BCFF280(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA0AD0();
        if (v129)
        {
          return (*(v166 + 8))(v138, v170);
        }

        (*(v166 + 8))(v138, v170);
      }

      v134 = (v169 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
      result = swift_beginAccess();
      v135 = *v134;
      v136 = v134[1];
      v137 = HIBYTE(v136) & 0xF;
      if ((v136 & 0x2000000000000000) == 0)
      {
        v137 = v135 & 0xFFFFFFFFFFFFLL;
      }

      if (v137)
      {

        sub_26BDA0AB0();
      }
    }
  }

  return result;
}

BOOL sub_26BCE820C(uint64_t a1, uint64_t a2)
{
  v363 = type metadata accessor for ArticleSupportOptions(0);
  v4 = *(*(v363 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v363);
  v351 = (&v324 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v354 = (&v324 - v8);
  MEMORY[0x28223BE20](v7);
  v357 = (&v324 - v9);
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449640, &qword_26BDA3578);
  v10 = *(*(v365 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v365);
  v355 = &v324 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v358 = &v324 - v14;
  MEMORY[0x28223BE20](v13);
  v362 = &v324 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448FA0, &qword_26BDA1A50);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v353 = (&v324 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v359 = &v324 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v356 = (&v324 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v360 = &v324 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v361 = (&v324 - v27);
  MEMORY[0x28223BE20](v26);
  v366 = &v324 - v28;
  v377 = sub_26BDA0810();
  v372 = *(v377 - 8);
  v29 = *(v372 + 64);
  MEMORY[0x28223BE20](v377);
  v367 = &v324 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v31 = *(*(v375 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v375);
  v332 = &v324 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v329 = &v324 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v326 = &v324 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v336 = &v324 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v339 = &v324 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v342 = &v324 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v344 = &v324 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v349 = &v324 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v350 = &v324 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v368 = &v324 - v51;
  MEMORY[0x28223BE20](v50);
  v373 = &v324 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v331 = &v324 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v55);
  v330 = &v324 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v328 = &v324 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v327 = &v324 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v325 = &v324 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v324 = &v324 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v333 = &v324 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v334 = &v324 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v335 = &v324 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v337 = &v324 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v338 = &v324 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v340 = &v324 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v341 = &v324 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v343 = &v324 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v345 = &v324 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v348 = &v324 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v347 = &v324 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v352 = &v324 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v364 = &v324 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v370 = &v324 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v369 = &v324 - v96;
  MEMORY[0x28223BE20](v95);
  v376 = &v324 - v97;
  v98 = type metadata accessor for ContactSupportOptions(0);
  v99 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v371 = &v324 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449648, &qword_26BDA3580);
  v102 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v104 = &v324 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280448F78, &unk_26BDA1A40);
  v106 = *(*(v105 - 8) + 64);
  v107 = MEMORY[0x28223BE20](v105 - 8);
  v374 = &v324 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v107);
  v110 = &v324 - v109;
  swift_beginAccess();
  v111 = *(a1 + 16);
  swift_beginAccess();
  v112 = *(a2 + 16);
  v113 = a1;

  LOBYTE(a1) = sub_26BD011F4(v111, v112);

  if ((a1 & 1) == 0)
  {
    goto LABEL_25;
  }

  v378 = a2;
  swift_beginAccess();
  v346 = v113;
  sub_26BD04E2C();
  swift_beginAccess();
  v114 = *(v101 + 48);
  sub_26BD04E2C();
  v115 = v378;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v104, 1, v98) == 1)
  {
    sub_26BD04E80(v110, &unk_280448F78, &unk_26BDA1A40);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v104[v114], 1, v98);
    v117 = v346;
    v118 = v376;
    if (EnumTagSinglePayload == 1)
    {
      sub_26BD04E80(v104, &unk_280448F78, &unk_26BDA1A40);
      goto LABEL_11;
    }

LABEL_8:
    v120 = &qword_280449648;
    v121 = &qword_26BDA3580;
LABEL_9:
    v122 = v104;
LABEL_24:
    sub_26BD04E80(v122, v120, v121);
    goto LABEL_25;
  }

  sub_26BD04E2C();
  v119 = __swift_getEnumTagSinglePayload(&v104[v114], 1, v98);
  v118 = v376;
  if (v119 == 1)
  {
    sub_26BD04E80(v110, &unk_280448F78, &unk_26BDA1A40);
    sub_26BCFEEB0();
    goto LABEL_8;
  }

  sub_26BCFEE08();
  static ContactSupportOptions.== infix(_:_:)();
  v124 = v123;
  sub_26BCFEEB0();
  sub_26BD04E80(v110, &unk_280448F78, &unk_26BDA1A40);
  sub_26BCFEEB0();
  v115 = v378;
  sub_26BD04E80(v104, &unk_280448F78, &unk_26BDA1A40);
  v117 = v346;
  if ((v124 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v125 = *(v375 + 48);
  v126 = v118;
  v127 = v373;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v127, 1, v377) == 1)
  {
    sub_26BD04E80(v126, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v127 + v125, 1, v377) != 1)
    {
      goto LABEL_23;
    }

    sub_26BD04E80(v127, &qword_280448F88, &qword_26BDA5440);
    v128 = v370;
    goto LABEL_17;
  }

  v129 = v369;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v127 + v125, 1, v377) == 1)
  {
    v130 = v376;
LABEL_22:
    sub_26BD04E80(v130, &qword_280448F88, &qword_26BDA5440);
    (*(v372 + 8))(v129, v377);
    goto LABEL_23;
  }

  v131 = v372;
  v132 = v367;
  v133 = v377;
  (*(v372 + 32))(v367, v127 + v125, v377);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  LODWORD(v374) = sub_26BDA0BB0();
  v134 = *(v131 + 8);
  v134(v132, v133);
  sub_26BD04E80(v376, &qword_280448F88, &qword_26BDA5440);
  v134(v129, v133);
  v128 = v370;
  sub_26BD04E80(v127, &qword_280448F88, &qword_26BDA5440);
  if ((v374 & 1) == 0)
  {
LABEL_25:

    return 0;
  }

LABEL_17:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v135 = *(v375 + 48);
  v127 = v368;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v127, 1, v377) == 1)
  {
    sub_26BD04E80(v128, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v127 + v135, 1, v377) == 1)
    {
      sub_26BD04E80(v127, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_28;
    }

LABEL_23:
    v120 = &qword_2804490C8;
    v121 = &qword_26BDA7780;
    v122 = v127;
    goto LABEL_24;
  }

  v129 = v364;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v127 + v135, 1, v377) == 1)
  {
    v130 = v128;
    goto LABEL_22;
  }

  v137 = v372;
  v138 = v367;
  v139 = v377;
  (*(v372 + 32))(v367, v127 + v135, v377);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  LODWORD(v376) = sub_26BDA0BB0();
  v140 = *(v137 + 8);
  v140(v138, v139);
  sub_26BD04E80(v128, &qword_280448F88, &qword_26BDA5440);
  v140(v129, v139);
  sub_26BD04E80(v127, &qword_280448F88, &qword_26BDA5440);
  if ((v376 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_28:
  swift_beginAccess();
  v141 = v366;
  sub_26BD04E2C();
  swift_beginAccess();
  v142 = *(v365 + 48);
  v143 = v362;
  sub_26BD04E2C();
  v144 = v143;
  sub_26BD04E2C();
  v145 = v143;
  v146 = v363;
  if (__swift_getEnumTagSinglePayload(v145, 1, v363) == 1)
  {
    sub_26BD04E80(v141, &qword_280448FA0, &qword_26BDA1A50);
    if (__swift_getEnumTagSinglePayload(v144 + v142, 1, v146) != 1)
    {
      goto LABEL_54;
    }

    sub_26BD04E80(v144, &qword_280448FA0, &qword_26BDA1A50);
  }

  else
  {
    v163 = v361;
    sub_26BD04E2C();
    if (__swift_getEnumTagSinglePayload(v144 + v142, 1, v146) == 1)
    {
      v164 = v366;
LABEL_43:
      sub_26BD04E80(v164, &qword_280448FA0, &qword_26BDA1A50);
LABEL_53:
      sub_26BCFEEB0();
      goto LABEL_54;
    }

    v165 = v357;
    sub_26BCFEE08();
    v166 = *v163;
    v167 = *v165;
    sub_26BD01478();
    if ((v168 & 1) == 0 || v163[1] != v165[1] || *(v163 + 4) != *(v165 + 4))
    {
      sub_26BD04E80(v366, &qword_280448FA0, &qword_26BDA1A50);
LABEL_50:
      sub_26BCFEEB0();
LABEL_61:
      sub_26BCFEEB0();
      v122 = v144;
      v120 = &qword_280448FA0;
      v121 = &qword_26BDA1A50;
      goto LABEL_24;
    }

    v169 = *(v146 + 28);
    sub_26BDA0850();
    sub_26BCFF280(&qword_2804490C0, MEMORY[0x277D216C8]);
    v170 = sub_26BDA0BB0();
    sub_26BD04E80(v366, &qword_280448FA0, &qword_26BDA1A50);
    sub_26BCFEEB0();
    sub_26BCFEEB0();
    sub_26BD04E80(v144, &qword_280448FA0, &qword_26BDA1A50);
    if ((v170 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  swift_beginAccess();
  v147 = v360;
  sub_26BD04E2C();
  swift_beginAccess();
  v148 = *(v365 + 48);
  v144 = v358;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v144, 1, v146) == 1)
  {
    sub_26BD04E80(v147, &qword_280448FA0, &qword_26BDA1A50);
    v149 = __swift_getEnumTagSinglePayload(v144 + v148, 1, v146);
    v150 = v359;
    if (v149 != 1)
    {
      goto LABEL_54;
    }

    sub_26BD04E80(v144, &qword_280448FA0, &qword_26BDA1A50);
  }

  else
  {
    v171 = v356;
    sub_26BD04E2C();
    v172 = __swift_getEnumTagSinglePayload(v144 + v148, 1, v146);
    v150 = v359;
    if (v172 == 1)
    {
      sub_26BD04E80(v360, &qword_280448FA0, &qword_26BDA1A50);
      goto LABEL_53;
    }

    v173 = v354;
    sub_26BCFEE08();
    v174 = *v171;
    v175 = *v173;
    sub_26BD01478();
    if ((v176 & 1) == 0 || v171[1] != v173[1] || *(v171 + 4) != *(v173 + 4))
    {
      sub_26BD04E80(v360, &qword_280448FA0, &qword_26BDA1A50);
      sub_26BCFEEB0();
      goto LABEL_61;
    }

    v177 = *(v146 + 28);
    sub_26BDA0850();
    sub_26BCFF280(&qword_2804490C0, MEMORY[0x277D216C8]);
    v178 = sub_26BDA0BB0();
    sub_26BD04E80(v360, &qword_280448FA0, &qword_26BDA1A50);
    sub_26BCFEEB0();
    sub_26BCFEEB0();
    sub_26BD04E80(v144, &qword_280448FA0, &qword_26BDA1A50);
    if ((v178 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v151 = *(v365 + 48);
  v152 = v355;
  sub_26BD04E2C();
  v144 = v152;
  v153 = v363;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v144, 1, v153) == 1)
  {
    sub_26BD04E80(v150, &qword_280448FA0, &qword_26BDA1A50);
    if (__swift_getEnumTagSinglePayload(v144 + v151, 1, v153) == 1)
    {
      sub_26BD04E80(v144, &qword_280448FA0, &qword_26BDA1A50);
      goto LABEL_37;
    }

LABEL_54:
    v120 = &qword_280449640;
    v121 = &qword_26BDA3578;
    v122 = v144;
    goto LABEL_24;
  }

  v179 = v353;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v144 + v151, 1, v153) == 1)
  {
    v164 = v150;
    goto LABEL_43;
  }

  v180 = v351;
  sub_26BCFEE08();
  v181 = *v179;
  v182 = *v180;
  sub_26BD01478();
  if ((v183 & 1) == 0 || v179[1] != v180[1] || *(v179 + 4) != *(v180 + 4))
  {
    sub_26BD04E80(v150, &qword_280448FA0, &qword_26BDA1A50);
    goto LABEL_50;
  }

  v184 = *(v363 + 28);
  sub_26BDA0850();
  sub_26BCFF280(&qword_2804490C0, MEMORY[0x277D216C8]);
  v185 = sub_26BDA0BB0();
  sub_26BD04E80(v150, &qword_280448FA0, &qword_26BDA1A50);
  sub_26BCFEEB0();
  sub_26BCFEEB0();
  sub_26BD04E80(v144, &qword_280448FA0, &qword_26BDA1A50);
  if ((v185 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_37:
  v154 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  swift_beginAccess();
  v155 = *(v117 + v154);
  v156 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__reportingContext;
  swift_beginAccess();
  v157 = *(v115 + v156);

  sub_26BD2F284(v155, v157);
  v159 = v158;

  v160 = v352;
  if ((v159 & 1) == 0)
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v161 = *(v375 + 48);
  v162 = v350;
  sub_26BD04E2C();
  v104 = v162;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v162, 1, v377) == 1)
  {
    sub_26BD04E80(v160, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v162 + v161, 1, v377) == 1)
    {
      sub_26BD04E80(v162, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_74;
    }

    goto LABEL_72;
  }

  v186 = v347;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(&v104[v161], 1, v377) == 1)
  {
    sub_26BD04E80(v160, &qword_280448F88, &qword_26BDA5440);
    (*(v372 + 8))(v186, v377);
LABEL_72:
    v120 = &qword_2804490C8;
    v121 = &qword_26BDA7780;
    goto LABEL_9;
  }

  v187 = v372;
  v188 = v367;
  v189 = v377;
  (*(v372 + 32))(v367, &v104[v161], v377);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  LODWORD(v376) = sub_26BDA0BB0();
  v190 = *(v187 + 8);
  v190(v188, v189);
  sub_26BD04E80(v160, &qword_280448F88, &qword_26BDA5440);
  v190(v186, v189);
  sub_26BD04E80(v350, &qword_280448F88, &qword_26BDA5440);
  if ((v376 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_74:
  v191 = (v117 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  swift_beginAccess();
  v192 = *v191;
  v193 = v191[1];
  v194 = (v115 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedSolutionsInfo);
  swift_beginAccess();
  v195 = v192 == *v194 && v193 == v194[1];
  if (!v195 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v196 = *(v375 + 48);
  v197 = v349;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v197, 1, v377) == 1)
  {
    sub_26BD04E80(v348, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v197 + v196, 1, v377) == 1)
    {
      sub_26BD04E80(v349, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v197 + v196, 1, v377) == 1)
  {
    sub_26BD04E80(v348, &qword_280448F88, &qword_26BDA5440);
    (*(v372 + 8))(v345, v377);
LABEL_84:
    v120 = &qword_2804490C8;
    v121 = &qword_26BDA7780;
    v122 = v349;
    goto LABEL_24;
  }

  v198 = v372;
  v199 = v349;
  v200 = v367;
  v201 = v377;
  (*(v372 + 32))(v367, v349 + v196, v377);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  v202 = v345;
  v203 = sub_26BDA0BB0();
  v204 = *(v198 + 8);
  v204(v200, v201);
  sub_26BD04E80(v348, &qword_280448F88, &qword_26BDA5440);
  v204(v202, v201);
  sub_26BD04E80(v199, &qword_280448F88, &qword_26BDA5440);
  if ((v203 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_86:
  v205 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources;
  v206 = v346;
  swift_beginAccess();
  v207 = *(v206 + v205);
  v208 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__batteryResources;
  v209 = v378;
  swift_beginAccess();
  v210 = *(v209 + v208);

  sub_26BD01478();
  LOBYTE(v209) = v211;

  if ((v209 & 1) == 0)
  {
    goto LABEL_25;
  }

  v212 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  v213 = v346;
  swift_beginAccess();
  LODWORD(v212) = *(v213 + v212);
  v214 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__isBatteryRelated;
  v215 = v378;
  swift_beginAccess();
  if (v212 != *(v215 + v214))
  {
    goto LABEL_25;
  }

  v216 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources;
  v217 = v346;
  swift_beginAccess();
  v218 = *(v217 + v216);
  v219 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__coverageResources;
  v220 = v378;
  swift_beginAccess();
  v221 = *(v220 + v219);

  sub_26BD01478();
  LOBYTE(v220) = v222;

  if ((v220 & 1) == 0)
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v223 = *(v375 + 48);
  v224 = v344;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v224, 1, v377) == 1)
  {
    sub_26BD04E80(v343, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v344 + v223, 1, v377) == 1)
    {
      sub_26BD04E80(v344, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  v225 = v344;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v225 + v223, 1, v377) == 1)
  {
    sub_26BD04E80(v343, &qword_280448F88, &qword_26BDA5440);
    (*(v372 + 8))(v341, v377);
LABEL_94:
    v120 = &qword_2804490C8;
    v121 = &qword_26BDA7780;
    v122 = v344;
    goto LABEL_24;
  }

  v226 = v372;
  v227 = v344;
  v228 = v367;
  v229 = v377;
  (*(v372 + 32))(v367, v344 + v223, v377);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  v230 = v341;
  v231 = sub_26BDA0BB0();
  v232 = *(v226 + 8);
  v232(v228, v229);
  sub_26BD04E80(v343, &qword_280448F88, &qword_26BDA5440);
  v232(v230, v229);
  sub_26BD04E80(v227, &qword_280448F88, &qword_26BDA5440);
  if ((v231 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_96:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v233 = *(v375 + 48);
  v234 = v342;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v234, 1, v377) == 1)
  {
    sub_26BD04E80(v340, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v342 + v233, 1, v377) == 1)
    {
      sub_26BD04E80(v342, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v235 = v342;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v235 + v233, 1, v377) == 1)
  {
    sub_26BD04E80(v340, &qword_280448F88, &qword_26BDA5440);
    (*(v372 + 8))(v338, v377);
LABEL_101:
    v120 = &qword_2804490C8;
    v121 = &qword_26BDA7780;
    v122 = v342;
    goto LABEL_24;
  }

  v236 = v372;
  v237 = v342;
  v238 = v367;
  v239 = v377;
  (*(v372 + 32))(v367, v342 + v233, v377);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  v240 = v338;
  v241 = sub_26BDA0BB0();
  v242 = *(v236 + 8);
  v242(v238, v239);
  sub_26BD04E80(v340, &qword_280448F88, &qword_26BDA5440);
  v242(v240, v239);
  sub_26BD04E80(v237, &qword_280448F88, &qword_26BDA5440);
  if ((v241 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_103:
  v243 = (v346 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  swift_beginAccess();
  v244 = *v243;
  v245 = v243[1];
  v246 = (v378 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__localizedDisclaimerFooter);
  swift_beginAccess();
  v247 = v244 == *v246 && v245 == v246[1];
  if (!v247 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v248 = *(v375 + 48);
  v249 = v339;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v249, 1, v377) == 1)
  {
    sub_26BD04E80(v337, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v339 + v248, 1, v377) == 1)
    {
      sub_26BD04E80(v339, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  v250 = v339;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v250 + v248, 1, v377) == 1)
  {
    sub_26BD04E80(v337, &qword_280448F88, &qword_26BDA5440);
    (*(v372 + 8))(v335, v377);
LABEL_113:
    v120 = &qword_2804490C8;
    v121 = &qword_26BDA7780;
    v122 = v339;
    goto LABEL_24;
  }

  v251 = v372;
  v252 = v339;
  v253 = v367;
  v254 = v377;
  (*(v372 + 32))(v367, v339 + v248, v377);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  v255 = v335;
  v256 = sub_26BDA0BB0();
  v257 = *(v251 + 8);
  v257(v253, v254);
  sub_26BD04E80(v337, &qword_280448F88, &qword_26BDA5440);
  v257(v255, v254);
  sub_26BD04E80(v252, &qword_280448F88, &qword_26BDA5440);
  if ((v256 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_115:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v258 = *(v375 + 48);
  v259 = v336;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v259, 1, v377) == 1)
  {
    sub_26BD04E80(v334, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v336 + v258, 1, v377) == 1)
    {
      sub_26BD04E80(v336, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_122;
    }

    goto LABEL_120;
  }

  v260 = v336;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v260 + v258, 1, v377) == 1)
  {
    sub_26BD04E80(v334, &qword_280448F88, &qword_26BDA5440);
    (*(v372 + 8))(v333, v377);
LABEL_120:
    v120 = &qword_2804490C8;
    v121 = &qword_26BDA7780;
    v122 = v336;
    goto LABEL_24;
  }

  v261 = v372;
  v262 = v336;
  v263 = v367;
  v264 = v377;
  (*(v372 + 32))(v367, v336 + v258, v377);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  v265 = v333;
  v266 = sub_26BDA0BB0();
  v267 = *(v261 + 8);
  v267(v263, v264);
  sub_26BD04E80(v334, &qword_280448F88, &qword_26BDA5440);
  v267(v265, v264);
  sub_26BD04E80(v262, &qword_280448F88, &qword_26BDA5440);
  if ((v266 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_122:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v268 = *(v375 + 48);
  v269 = v326;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v269, 1, v377) == 1)
  {
    sub_26BD04E80(v324, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v326 + v268, 1, v377) == 1)
    {
      sub_26BD04E80(v326, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_129;
    }

    goto LABEL_127;
  }

  v270 = v326;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v270 + v268, 1, v377) == 1)
  {
    sub_26BD04E80(v324, &qword_280448F88, &qword_26BDA5440);
    (*(v372 + 8))(v325, v377);
LABEL_127:
    v120 = &qword_2804490C8;
    v121 = &qword_26BDA7780;
    v122 = v326;
    goto LABEL_24;
  }

  v271 = v372;
  v272 = v326;
  v273 = v367;
  v274 = v377;
  (*(v372 + 32))(v367, v326 + v268, v377);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  v275 = v325;
  v276 = sub_26BDA0BB0();
  v277 = *(v271 + 8);
  v277(v273, v274);
  sub_26BD04E80(v324, &qword_280448F88, &qword_26BDA5440);
  v277(v275, v274);
  sub_26BD04E80(v272, &qword_280448F88, &qword_26BDA5440);
  if ((v276 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_129:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v278 = *(v375 + 48);
  v279 = v329;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v279, 1, v377) == 1)
  {
    sub_26BD04E80(v327, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v329 + v278, 1, v377) == 1)
    {
      sub_26BD04E80(v329, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_136;
    }

    goto LABEL_134;
  }

  v280 = v329;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v280 + v278, 1, v377) == 1)
  {
    sub_26BD04E80(v327, &qword_280448F88, &qword_26BDA5440);
    (*(v372 + 8))(v328, v377);
LABEL_134:
    v120 = &qword_2804490C8;
    v121 = &qword_26BDA7780;
    v122 = v329;
    goto LABEL_24;
  }

  v281 = v372;
  v282 = v329;
  v283 = v367;
  v284 = v377;
  (*(v372 + 32))(v367, v329 + v278, v377);
  sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
  v285 = v328;
  v286 = sub_26BDA0BB0();
  v287 = *(v281 + 8);
  v287(v283, v284);
  sub_26BD04E80(v327, &qword_280448F88, &qword_26BDA5440);
  v287(v285, v284);
  sub_26BD04E80(v282, &qword_280448F88, &qword_26BDA5440);
  if ((v286 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_136:
  v288 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers;
  v289 = v346;
  swift_beginAccess();
  v290 = *(v289 + v288);
  v291 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__quickAnswers;
  v292 = v378;
  swift_beginAccess();
  v293 = *(v292 + v291);

  sub_26BD01478();
  LOBYTE(v292) = v294;

  if ((v292 & 1) == 0)
  {
    goto LABEL_25;
  }

  v295 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles;
  v296 = v346;
  swift_beginAccess();
  v297 = *(v296 + v295);
  v298 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroArticles;
  v299 = v378;
  swift_beginAccess();
  v300 = *(v299 + v298);

  sub_26BD01478();
  LOBYTE(v299) = v301;

  if ((v299 & 1) == 0)
  {
    goto LABEL_25;
  }

  v302 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos;
  v303 = v346;
  swift_beginAccess();
  v304 = *(v303 + v302);
  v305 = OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__heroVideos;
  v306 = v378;
  swift_beginAccess();
  v307 = *(v306 + v305);

  sub_26BD01478();
  LOBYTE(v306) = v308;

  if ((v306 & 1) == 0)
  {
    goto LABEL_25;
  }

  v309 = (v346 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  swift_beginAccess();
  v310 = *v309;
  v311 = v309[1];
  v312 = (v378 + OBJC_IVAR____TtCV15SupportServices20AllSolutionsResponseP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__deepDiveURL);
  swift_beginAccess();
  v313 = v310 == *v312 && v311 == v312[1];
  if (!v313 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v314 = *(v375 + 48);
  v315 = v332;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v315, 1, v377) != 1)
  {
    v316 = v332;
    sub_26BD04E2C();
    if (__swift_getEnumTagSinglePayload(v316 + v314, 1, v377) == 1)
    {

      sub_26BD04E80(v330, &qword_280448F88, &qword_26BDA5440);
      (*(v372 + 8))(v331, v377);
      goto LABEL_150;
    }

    v317 = v372;
    v318 = v332;
    v319 = v367;
    v320 = v377;
    (*(v372 + 32))(v367, v332 + v314, v377);
    sub_26BCFF280(&qword_2804490D0, MEMORY[0x277D215C8]);
    v321 = v331;
    v322 = sub_26BDA0BB0();

    v323 = *(v317 + 8);
    v323(v319, v320);
    sub_26BD04E80(v330, &qword_280448F88, &qword_26BDA5440);
    v323(v321, v320);
    sub_26BD04E80(v318, &qword_280448F88, &qword_26BDA5440);
    return (v322 & 1) != 0;
  }

  sub_26BD04E80(v330, &qword_280448F88, &qword_26BDA5440);
  if (__swift_getEnumTagSinglePayload(v332 + v314, 1, v377) != 1)
  {
LABEL_150:
    sub_26BD04E80(v332, &qword_2804490C8, &qword_26BDA7780);
    return 0;
  }

  sub_26BD04E80(v332, &qword_280448F88, &qword_26BDA5440);
  return 1;
}