uint64_t sub_26BD3A09C(void (*a1)(void))
{
  sub_26BDA1050();
  a1(0);
  v2 = OUTLINED_FUNCTION_130();
  sub_26BD39368(v2, v3);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t (*sub_26BD3A144(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 80);
  return result;
}

uint64_t sub_26BD3A198(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD39368(&qword_28044A460, type metadata accessor for Symptom);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD3A218(uint64_t a1)
{
  v2 = sub_26BD39368(&qword_28044A430, type metadata accessor for Symptom);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD3A288()
{
  sub_26BD39368(&qword_28044A430, type metadata accessor for Symptom);

  return sub_26BDA0A00();
}

unint64_t sub_26BD3A310()
{
  result = qword_28044A3D0;
  if (!qword_28044A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A3D0);
  }

  return result;
}

unint64_t sub_26BD3A368()
{
  result = qword_28044A3D8;
  if (!qword_28044A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A3D8);
  }

  return result;
}

unint64_t sub_26BD3A3F4()
{
  result = qword_28044A3F0;
  if (!qword_28044A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A3F0);
  }

  return result;
}

unint64_t sub_26BD3A44C()
{
  result = qword_28044A3F8;
  if (!qword_28044A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A3F8);
  }

  return result;
}

uint64_t sub_26BD3A710()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A73C()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A768()
{
  OUTLINED_FUNCTION_65_0();
  v0 = SymptomCategory.isSymptomRequired.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD3A7B4()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.imageID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A7E0()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.imageURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A80C()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.visibility.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A838()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.symptomCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD3A888()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.symptoms.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD3A8B4()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.sequenceNumber.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD3A904()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.safetyIssueAct.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A930()
{
  OUTLINED_FUNCTION_65_0();
  v0 = SymptomCategory.isTrapDoorEligible.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD3A97C()
{
  OUTLINED_FUNCTION_65_0();
  v0 = SymptomCategory.isRepairEligible.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD3A9C8()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.appleIDRequired.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3A9F4()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.webDescription.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3AA20()
{
  OUTLINED_FUNCTION_65_0();
  result = SymptomCategory.iosDiagnosticsEligible.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD3AA54()
{
  OUTLINED_FUNCTION_65_0();
  v0 = SymptomCategory.offersDiagnostics.getter();
  return OUTLINED_FUNCTION_39_3(v0);
}

uint64_t sub_26BD3AAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_134();
  v6 = sub_26BDA0850();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_46(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_26BD3AB84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26BDA0850();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BD3AC2C()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SymptomCategory._StorageClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD3ACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_46(*(a1 + 8));
  }

  v7 = sub_26BDA0850();
  v8 = a1 + *(a3 + 80);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_26BD3AD54(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_26BDA0850();
    v8 = v5 + *(a4 + 80);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BD3ADD4()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26BD3AE88()
{
  result = qword_28044A470;
  if (!qword_28044A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044A470);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for SymptomCategory(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  v1 = *(v0 + *(type metadata accessor for SymptomCategory(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  result = type metadata accessor for SymptomCategory(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_3()
{
  v1 = *(v0 + *(type metadata accessor for SymptomCategory(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_20_3()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 64);

  return type metadata accessor for SymptomCategory._StorageClass();
}

uint64_t OUTLINED_FUNCTION_33_0()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);

  return type metadata accessor for SymptomCategory._StorageClass();
}

uint64_t OUTLINED_FUNCTION_46_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 72);
  v4 = *(*(v1 + 80) + *(v1 + 88));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t ExecuteSupportOptionRequest.caseMetaData.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_32_3(v9);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v10 = type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_8(v10);
  if (v11)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226();
    }

    result = OUTLINED_FUNCTION_106_0();
    if (a1 != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_126();
    return sub_26BD4F024();
  }

  return result;
}

uint64_t ExecuteSupportOptionRequest.caseMetaData.setter()
{
  OUTLINED_FUNCTION_90_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = type metadata accessor for ExecuteSupportOptionRequest(v6);
  v8 = OUTLINED_FUNCTION_73_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_36();
    v12 = sub_26BD439B4(v11);
    OUTLINED_FUNCTION_219(v12);
  }

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for TriageRequest.CaseMetaData(0);
  v13 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteSupportOptionRequest.caseMetaData.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = type metadata accessor for TriageRequest.CaseMetaData(v7);
  OUTLINED_FUNCTION_34(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_300(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_9();
  if (v13)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226();
    }

    *&v12[v14] = qword_28044A6A8;
    v15 = OUTLINED_FUNCTION_42_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_26BD04E80(v0, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_97_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteSupportOptionRequest.clientContext.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_32_3(v9);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v10 = type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_8(v10);
  if (v11)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220();
    }

    result = OUTLINED_FUNCTION_106_0();
    if (a1 != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD4F024();
  }

  return result;
}

uint64_t ExecuteSupportOptionRequest.clientContext.setter()
{
  OUTLINED_FUNCTION_90_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = type metadata accessor for ExecuteSupportOptionRequest(v6);
  v8 = OUTLINED_FUNCTION_73_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_36();
    v12 = sub_26BD439B4(v11);
    OUTLINED_FUNCTION_219(v12);
  }

  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for TriageRequest.ClientContext(0);
  v13 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteSupportOptionRequest.clientContext.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = type metadata accessor for TriageRequest.ClientContext(v7);
  OUTLINED_FUNCTION_34(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_300(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_9();
  if (v13)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220();
    }

    *&v12[v14] = qword_28044A6F0;
    v15 = OUTLINED_FUNCTION_42_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_26BD04E80(v0, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_97_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BD3B7B0()
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
    sub_26BD4F078();
    v2(v3);
    sub_26BD4F0CC();
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

BOOL sub_26BD3B884(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_171();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_110(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  OUTLINED_FUNCTION_17_2();
  v16 = *a3;
  OUTLINED_FUNCTION_65();
  sub_26BD04E2C();
  v17 = a4(0);
  v18 = __swift_getEnumTagSinglePayload(v15, 1, v17) != 1;
  sub_26BD04E80(v15, v5, v4);
  return v18;
}

void sub_26BD3B980()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_171();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_110(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_150();
  v12 = *(type metadata accessor for ExecuteSupportOptionRequest(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119(v16);
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_36();
    *(v5 + v12) = sub_26BD439B4(v17);
  }

  v4(0);
  v18 = OUTLINED_FUNCTION_42_1();
  __swift_storeEnumTagSinglePayload(v18, v19, 1, v20);
  v21 = *v2;
  OUTLINED_FUNCTION_236();
  sub_26BCFF2C8();
  swift_endAccess();
  OUTLINED_FUNCTION_283();
}

uint64_t ExecuteSupportOptionRequest.reportingContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_32_3(v9);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v10 = type metadata accessor for TriageRequest.ReportingContext(0);
  OUTLINED_FUNCTION_8(v10);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    a1[4] = 0;
    a1[5] = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v11)
    {
      return sub_26BD04E80(v1, &qword_28044A4E0, &qword_26BDA70F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD4F024();
  }

  return result;
}

uint64_t ExecuteSupportOptionRequest.reportingContext.setter()
{
  OUTLINED_FUNCTION_90_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A4E0, &qword_26BDA70F0);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = type metadata accessor for ExecuteSupportOptionRequest(v6);
  v8 = OUTLINED_FUNCTION_73_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_36();
    v12 = sub_26BD439B4(v11);
    OUTLINED_FUNCTION_219(v12);
  }

  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for TriageRequest.ReportingContext(0);
  v13 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteSupportOptionRequest.reportingContext.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = type metadata accessor for TriageRequest.ReportingContext(v7);
  OUTLINED_FUNCTION_34(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_300(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_9();
  if (v13)
  {
    OUTLINED_FUNCTION_100_0();
    v14 = &v12[*(v8 + 28)];
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_9();
    if (!v13)
    {
      sub_26BD04E80(v0, &qword_28044A4E0, &qword_26BDA70F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_97_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteSupportOptionRequest.customer.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_32_3(v9);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v10 = type metadata accessor for TriageRequest.Customer(0);
  OUTLINED_FUNCTION_8(v10);
  if (v11)
  {
    TriageRequest.Customer.init()(a1);
    result = OUTLINED_FUNCTION_14();
    if (!v11)
    {
      return sub_26BD04E80(v1, &qword_28044A4F0, &unk_26BDA70F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD4F024();
  }

  return result;
}

uint64_t ExecuteSupportOptionRequest.customer.setter()
{
  OUTLINED_FUNCTION_90_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A4F0, &unk_26BDA70F8);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = type metadata accessor for ExecuteSupportOptionRequest(v6);
  v8 = OUTLINED_FUNCTION_73_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_36();
    v12 = sub_26BD439B4(v11);
    OUTLINED_FUNCTION_219(v12);
  }

  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for TriageRequest.Customer(0);
  v13 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteSupportOptionRequest.customer.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = type metadata accessor for TriageRequest.Customer(v7);
  OUTLINED_FUNCTION_34(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_300(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_9();
  if (v13)
  {
    OUTLINED_FUNCTION_100_0();
    v12[6] = 0;
    v12[7] = v14;
    v12[8] = 0;
    v12[9] = v14;
    v12[10] = 0;
    v12[11] = v14;
    v12[12] = 0;
    v12[13] = v14;
    v12[14] = 0;
    v12[15] = v14;
    v12[16] = 0;
    v12[17] = v14;
    v12[18] = 0;
    v12[19] = v14;
    v12[20] = 0;
    v12[21] = v14;
    v12[22] = 0;
    v12[23] = v14;
    v12[24] = 0;
    v12[25] = v14;
    v15 = v12 + *(v8 + 68);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_9();
    if (!v13)
    {
      sub_26BD04E80(v0, &qword_28044A4F0, &unk_26BDA70F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_97_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void ExecuteSupportOptionRequest.selectedStore.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_47(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 48) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_162(v10);
  *(v1 + 64) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v12)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v12)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_21();
    v14(v13);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteSupportOptionRequest.reportingContextMap.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExecuteSupportOptionRequest(0) + 20));
  v2 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  OUTLINED_FUNCTION_154();
  v3 = *(v1 + v2);
}

uint64_t sub_26BD3C3D8(uint64_t *a1)
{
  v1 = *a1;

  return ExecuteSupportOptionRequest.reportingContextMap.setter();
}

uint64_t ExecuteSupportOptionRequest.reportingContextMap.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for ExecuteSupportOptionRequest(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119(v7);
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD439B4(v8);
    OUTLINED_FUNCTION_155(v9);
  }

  v10 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  OUTLINED_FUNCTION_159();
  v11 = *(v6 + v10);
  *(v6 + v10) = v0;
}

uint64_t ExecuteSupportOptionRequest.reportingContextMap.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 56) = v0;
  v4 = type metadata accessor for ExecuteSupportOptionRequest(0);
  OUTLINED_FUNCTION_151_0(*(v4 + 20));
  v5 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  OUTLINED_FUNCTION_127();
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3C508(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    OUTLINED_FUNCTION_98_1();
    ExecuteSupportOptionRequest.reportingContextMap.setter();
    v7 = *(v1 + 48);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_75_0();
    v9 = *(v3 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 64);
      v11 = *(v1 + 56);
      v12 = type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
      OUTLINED_FUNCTION_119(v12);
      swift_allocObject();
      v13 = OUTLINED_FUNCTION_36();
      v14 = sub_26BD439B4(v13);
      OUTLINED_FUNCTION_89_0(v14);
    }

    v15 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
    OUTLINED_FUNCTION_191();
    v16 = *(v9 + v15);
    *(v9 + v15) = v5;
  }

  free(v1);
}

void sub_26BD3C5D0()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_150();
  v12 = *(v0 + *(v5(0) + 20));
  v13 = *v3;
  swift_beginAccess();
  OUTLINED_FUNCTION_132();
  v14 = sub_26BDA0810();
  v15 = OUTLINED_FUNCTION_42_1();
  if (__swift_getEnumTagSinglePayload(v15, v16, v14) == 1)
  {
    sub_26BDA0800();
    v17 = OUTLINED_FUNCTION_42_1();
    if (__swift_getEnumTagSinglePayload(v17, v18, v14) != 1)
    {
      sub_26BD04E80(v1, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    (*(*(v14 - 8) + 32))(v7, v1, v14);
  }

  OUTLINED_FUNCTION_283();
}

void sub_26BD3C754()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = *(v8(0) + 20);
  v19 = *(v0 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v0 + v18);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = v6(0);
    OUTLINED_FUNCTION_119(v22);
    swift_allocObject();
    v23 = OUTLINED_FUNCTION_36();
    *(v9 + v18) = v4(v23);
  }

  v24 = sub_26BDA0810();
  OUTLINED_FUNCTION_34(v24);
  (*(v25 + 32))(v17, v11, v24);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v24);
  v26 = *v2;
  OUTLINED_FUNCTION_236();
  sub_26BCFF2C8();
  swift_endAccess();
  OUTLINED_FUNCTION_283();
}

void ExecuteSupportOptionRequest.selectedStoreServiceOption.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_47(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 48) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_162(v10);
  *(v1 + 64) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v12)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v12)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_21();
    v14(v13);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteSupportOptionRequest.hmtContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_32_3(v9);
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v10 = type metadata accessor for TriageRequest.HMTContext(0);
  OUTLINED_FUNCTION_8(v10);
  if (v11)
  {
    *a1 = 0;
    v12 = MEMORY[0x277D84F90];
    *(a1 + 8) = MEMORY[0x277D84F90];
    *(a1 + 16) = v12;
    *(a1 + 24) = v12;
    *(a1 + 32) = v12;
    *(a1 + 40) = v12;
    *(a1 + 48) = v12;
    *(a1 + 56) = v12;
    *(a1 + 64) = v12;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v11)
    {
      return sub_26BD04E80(v1, &qword_28044A518, &qword_26BDA7108);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD4F024();
  }

  return result;
}

uint64_t sub_26BD3CB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_110(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_173();
  sub_26BD4F078();
  return a7(v7);
}

uint64_t ExecuteSupportOptionRequest.hmtContext.setter()
{
  OUTLINED_FUNCTION_90_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A518, &qword_26BDA7108);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = type metadata accessor for ExecuteSupportOptionRequest(v6);
  v8 = OUTLINED_FUNCTION_73_0(v7);
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for ExecuteSupportOptionRequest._StorageClass(0);
    OUTLINED_FUNCTION_119(v10);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_36();
    v12 = sub_26BD439B4(v11);
    OUTLINED_FUNCTION_219(v12);
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_99_0();
  type metadata accessor for TriageRequest.HMTContext(0);
  v13 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteSupportOptionRequest.hmtContext.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_47(v6);
  v8 = type metadata accessor for TriageRequest.HMTContext(v7);
  OUTLINED_FUNCTION_34(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_300(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_17_2();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_132();
  OUTLINED_FUNCTION_9();
  if (v13)
  {
    *v12 = 0;
    v14 = MEMORY[0x277D84F90];
    v12[1] = MEMORY[0x277D84F90];
    v12[2] = v14;
    v12[3] = v14;
    v12[4] = v14;
    v12[5] = v14;
    v12[6] = v14;
    v12[7] = v14;
    v12[8] = v14;
    v15 = v12 + *(v8 + 52);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_9();
    if (!v13)
    {
      sub_26BD04E80(v0, &qword_28044A518, &qword_26BDA7108);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_97_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteResponse.caseID.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3CF28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.caseID.setter();
}

void ExecuteResponse.caseID.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.caseID.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3D028(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.caseID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.articleIds.getter()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 32);
}

uint64_t sub_26BD3D0F0(uint64_t *a1)
{
  v1 = *a1;

  return ExecuteResponse.articleIds.setter();
}

uint64_t ExecuteResponse.articleIds.setter()
{
  v3 = OUTLINED_FUNCTION_31_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v5 = OUTLINED_FUNCTION_36();
    v6 = sub_26BD47E88(v5);
    OUTLINED_FUNCTION_155(v6);
  }

  OUTLINED_FUNCTION_159();
  v7 = *(v4 + 32);
  *(v4 + 32) = v0;
}

uint64_t ExecuteResponse.articleIds.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 56) = v0;
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_151_0(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 48) = *(v0 + 32);

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3D1E8(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    OUTLINED_FUNCTION_98_1();
    ExecuteResponse.articleIds.setter();
    v7 = *(v1 + 48);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_75_0();
    v9 = *(v3 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 64);
      v11 = *(v1 + 56);
      OUTLINED_FUNCTION_19_4();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BD47E88(v12);
      OUTLINED_FUNCTION_89_0(v13);
    }

    OUTLINED_FUNCTION_191();
    v14 = *(v9 + 32);
    *(v9 + 32) = v5;
  }

  free(v1);
}

uint64_t ExecuteResponse.solutionType.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3D2BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.solutionType.setter();
}

void ExecuteResponse.solutionType.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 48);
  *(v5 + 40) = v2;
  *(v5 + 48) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.solutionType.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 40);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3D3BC(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.solutionType.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 48);
    *(v9 + 40) = v4;
    *(v9 + 48) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.solutionSubtype.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3D488(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.solutionSubtype.setter();
}

void ExecuteResponse.solutionSubtype.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 64);
  *(v5 + 56) = v2;
  *(v5 + 64) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.solutionSubtype.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3D588(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.solutionSubtype.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 64);
    *(v9 + 56) = v4;
    *(v9 + 64) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedCaseLabel.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3D654(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedCaseLabel.setter();
}

void ExecuteResponse.localizedCaseLabel.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 80);
  *(v5 + 72) = v2;
  *(v5 + 80) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedCaseLabel.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 80);
  *(v1 + 48) = *(v0 + 72);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3D754(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedCaseLabel.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 80);
    *(v9 + 72) = v4;
    *(v9 + 80) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedHeadline.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3D820(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedHeadline.setter();
}

void ExecuteResponse.localizedHeadline.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 96);
  *(v5 + 88) = v2;
  *(v5 + 96) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedHeadline.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 96);
  *(v1 + 48) = *(v0 + 88);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3D920(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedHeadline.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 96);
    *(v9 + 88) = v4;
    *(v9 + 96) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedWhatsNext.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3D9EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedWhatsNext.setter();
}

void ExecuteResponse.localizedWhatsNext.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 112);
  *(v5 + 104) = v2;
  *(v5 + 112) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedWhatsNext.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 112);
  *(v1 + 48) = *(v0 + 104);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3DAEC(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedWhatsNext.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 112);
    *(v9 + 104) = v4;
    *(v9 + 112) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedAddToCalendar.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3DBB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedAddToCalendar.setter();
}

void ExecuteResponse.localizedAddToCalendar.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 128);
  *(v5 + 120) = v2;
  *(v5 + 128) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedAddToCalendar.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 128);
  *(v1 + 48) = *(v0 + 120);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3DCB8(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedAddToCalendar.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 128);
    *(v9 + 120) = v4;
    *(v9 + 128) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedAddComment.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3DD84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedAddComment.setter();
}

void ExecuteResponse.localizedAddComment.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 144);
  *(v5 + 136) = v2;
  *(v5 + 144) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedAddComment.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 144);
  *(v1 + 48) = *(v0 + 136);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3DE84(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedAddComment.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 144);
    *(v9 + 136) = v4;
    *(v9 + 144) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedEditComment.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3DF50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedEditComment.setter();
}

void ExecuteResponse.localizedEditComment.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 160);
  *(v5 + 152) = v2;
  *(v5 + 160) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedEditComment.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 160);
  *(v1 + 48) = *(v0 + 152);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3E050(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedEditComment.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 160);
    *(v9 + 152) = v4;
    *(v9 + 160) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedGetDirections.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3E11C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedGetDirections.setter();
}

void ExecuteResponse.localizedGetDirections.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 176);
  *(v5 + 168) = v2;
  *(v5 + 176) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedGetDirections.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 176);
  *(v1 + 48) = *(v0 + 168);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3E21C(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedGetDirections.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 176);
    *(v9 + 168) = v4;
    *(v9 + 176) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedRescheduleAction.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3E2E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedRescheduleAction.setter();
}

void ExecuteResponse.localizedRescheduleAction.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 192);
  *(v5 + 184) = v2;
  *(v5 + 192) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedRescheduleAction.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 192);
  *(v1 + 48) = *(v0 + 184);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3E3E8(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedRescheduleAction.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 192);
    *(v9 + 184) = v4;
    *(v9 + 192) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedCancelMainAction.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3E4B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedCancelMainAction.setter();
}

void ExecuteResponse.localizedCancelMainAction.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 208);
  *(v5 + 200) = v2;
  *(v5 + 208) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedCancelMainAction.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 208);
  *(v1 + 48) = *(v0 + 200);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3E5B4(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedCancelMainAction.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 208);
    *(v9 + 200) = v4;
    *(v9 + 208) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedCancelAction.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3E680(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedCancelAction.setter();
}

void ExecuteResponse.localizedCancelAction.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 224);
  *(v5 + 216) = v2;
  *(v5 + 224) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedCancelAction.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 224);
  *(v1 + 48) = *(v0 + 216);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3E780(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedCancelAction.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 224);
    *(v9 + 216) = v4;
    *(v9 + 224) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedCancelAndChooseAction.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3E84C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedCancelAndChooseAction.setter();
}

void ExecuteResponse.localizedCancelAndChooseAction.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 240);
  *(v5 + 232) = v2;
  *(v5 + 240) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedCancelAndChooseAction.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 240);
  *(v1 + 48) = *(v0 + 232);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3E94C(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedCancelAndChooseAction.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 240);
    *(v9 + 232) = v4;
    *(v9 + 240) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedCancelConfirmationTitle.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3EA18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedCancelConfirmationTitle.setter();
}

void ExecuteResponse.localizedCancelConfirmationTitle.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 256);
  *(v5 + 248) = v2;
  *(v5 + 256) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedCancelConfirmationTitle.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 256);
  *(v1 + 48) = *(v0 + 248);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3EB18(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedCancelConfirmationTitle.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 256);
    *(v9 + 248) = v4;
    *(v9 + 256) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedCancelConfirmationMessage.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3EBE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedCancelConfirmationMessage.setter();
}

void ExecuteResponse.localizedCancelConfirmationMessage.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 272);
  *(v5 + 264) = v2;
  *(v5 + 272) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedCancelConfirmationMessage.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 272);
  *(v1 + 48) = *(v0 + 264);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3ECE4(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedCancelConfirmationMessage.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 272);
    *(v9 + 264) = v4;
    *(v9 + 272) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedReservationReminder.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3EDB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedReservationReminder.setter();
}

void ExecuteResponse.localizedReservationReminder.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 288);
  *(v5 + 280) = v2;
  *(v5 + 288) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedReservationReminder.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 288);
  *(v1 + 48) = *(v0 + 280);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3EEB0(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedReservationReminder.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 288);
    *(v9 + 280) = v4;
    *(v9 + 288) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.preparationTasks.getter()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 296);
}

uint64_t sub_26BD3EF78(uint64_t *a1)
{
  v1 = *a1;

  return ExecuteResponse.preparationTasks.setter();
}

uint64_t ExecuteResponse.preparationTasks.setter()
{
  v3 = OUTLINED_FUNCTION_31_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v5 = OUTLINED_FUNCTION_36();
    v6 = sub_26BD47E88(v5);
    OUTLINED_FUNCTION_155(v6);
  }

  OUTLINED_FUNCTION_159();
  v7 = *(v4 + 296);
  *(v4 + 296) = v0;
}

uint64_t ExecuteResponse.preparationTasks.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 56) = v0;
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_151_0(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 48) = *(v0 + 296);

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3F070(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    OUTLINED_FUNCTION_98_1();
    ExecuteResponse.preparationTasks.setter();
    v7 = *(v1 + 48);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_75_0();
    v9 = *(v3 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 64);
      v11 = *(v1 + 56);
      OUTLINED_FUNCTION_19_4();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BD47E88(v12);
      OUTLINED_FUNCTION_89_0(v13);
    }

    OUTLINED_FUNCTION_191();
    v14 = *(v9 + 296);
    *(v9 + 296) = v5;
  }

  free(v1);
}

uint64_t ExecuteResponse.scheduledTimeSeconds.getter()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 304);
}

uint64_t ExecuteResponse.scheduledTimeSeconds.setter()
{
  v3 = OUTLINED_FUNCTION_31_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v5 = OUTLINED_FUNCTION_36();
    v6 = sub_26BD47E88(v5);
    OUTLINED_FUNCTION_155(v6);
  }

  result = OUTLINED_FUNCTION_159();
  *(v4 + 304) = v0;
  return result;
}

uint64_t ExecuteResponse.scheduledTimeSeconds.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 80) = v0;
  OUTLINED_FUNCTION_12_2();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127();
  *(v1 + 72) = *(v4 + 304);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD3F200(uint64_t *a1)
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
    OUTLINED_FUNCTION_19_4();
    v11 = OUTLINED_FUNCTION_36();
    v12 = sub_26BD47E88(v11);
    OUTLINED_FUNCTION_215(v12);
  }

  swift_beginAccess();
  *(v8 + 304) = v3;

  free(v1);
}

uint64_t ExecuteResponse.storeTimeZone.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3F2E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.storeTimeZone.setter();
}

void ExecuteResponse.storeTimeZone.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 320);
  *(v5 + 312) = v2;
  *(v5 + 320) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.storeTimeZone.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 320);
  *(v1 + 48) = *(v0 + 312);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3F3E4(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.storeTimeZone.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 320);
    *(v9 + 312) = v4;
    *(v9 + 320) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.reservationID.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3F4B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.reservationID.setter();
}

void ExecuteResponse.reservationID.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 336);
  *(v5 + 328) = v2;
  *(v5 + 336) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.reservationID.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 336);
  *(v1 + 48) = *(v0 + 328);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3F5B0(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.reservationID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 336);
    *(v9 + 328) = v4;
    *(v9 + 336) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedHeadlineMessageHtml.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3F67C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedHeadlineMessageHtml.setter();
}

void ExecuteResponse.localizedHeadlineMessageHtml.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 352);
  *(v5 + 344) = v2;
  *(v5 + 352) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedHeadlineMessageHtml.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 352);
  *(v1 + 48) = *(v0 + 344);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3F77C(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedHeadlineMessageHtml.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 352);
    *(v9 + 344) = v4;
    *(v9 + 352) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.kvps.getter()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 360);
}

uint64_t sub_26BD3F844(uint64_t *a1)
{
  v1 = *a1;

  return ExecuteResponse.kvps.setter();
}

uint64_t ExecuteResponse.kvps.setter()
{
  v3 = OUTLINED_FUNCTION_31_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v5 = OUTLINED_FUNCTION_36();
    v6 = sub_26BD47E88(v5);
    OUTLINED_FUNCTION_155(v6);
  }

  OUTLINED_FUNCTION_159();
  v7 = *(v4 + 360);
  *(v4 + 360) = v0;
}

uint64_t ExecuteResponse.kvps.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 56) = v0;
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_151_0(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 48) = *(v0 + 360);

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3F93C(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    OUTLINED_FUNCTION_98_1();
    ExecuteResponse.kvps.setter();
    v7 = *(v1 + 48);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_75_0();
    v9 = *(v3 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 64);
      v11 = *(v1 + 56);
      OUTLINED_FUNCTION_19_4();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BD47E88(v12);
      OUTLINED_FUNCTION_89_0(v13);
    }

    OUTLINED_FUNCTION_191();
    v14 = *(v9 + 360);
    *(v9 + 360) = v5;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedConfirmationMessage.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3FA10(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedConfirmationMessage.setter();
}

void ExecuteResponse.localizedConfirmationMessage.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 376);
  *(v5 + 368) = v2;
  *(v5 + 376) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedConfirmationMessage.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 376);
  *(v1 + 48) = *(v0 + 368);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3FB10(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedConfirmationMessage.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 376);
    *(v9 + 368) = v4;
    *(v9 + 376) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedAdditionalInfoMessage.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3FBDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedAdditionalInfoMessage.setter();
}

void ExecuteResponse.localizedAdditionalInfoMessage.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 392);
  *(v5 + 384) = v2;
  *(v5 + 392) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedAdditionalInfoMessage.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 392);
  *(v1 + 48) = *(v0 + 384);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3FCDC(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedAdditionalInfoMessage.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 392);
    *(v9 + 384) = v4;
    *(v9 + 392) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.filesAttached.getter()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  v3 = *(v2 + 400);
}

uint64_t sub_26BD3FDA4(uint64_t *a1)
{
  v1 = *a1;

  return ExecuteResponse.filesAttached.setter();
}

uint64_t ExecuteResponse.filesAttached.setter()
{
  v3 = OUTLINED_FUNCTION_31_2();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v5 = OUTLINED_FUNCTION_36();
    v6 = sub_26BD47E88(v5);
    OUTLINED_FUNCTION_155(v6);
  }

  OUTLINED_FUNCTION_159();
  v7 = *(v4 + 400);
  *(v4 + 400) = v0;
}

uint64_t ExecuteResponse.filesAttached.modify()
{
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 56) = v0;
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_151_0(v4);
  OUTLINED_FUNCTION_127();
  *(v1 + 48) = *(v0 + 400);

  return OUTLINED_FUNCTION_128();
}

void sub_26BD3FE9C(uint64_t *a1)
{
  OUTLINED_FUNCTION_186(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    OUTLINED_FUNCTION_98_1();
    ExecuteResponse.filesAttached.setter();
    v7 = *(v1 + 48);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_75_0();
    v9 = *(v3 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 64);
      v11 = *(v1 + 56);
      OUTLINED_FUNCTION_19_4();
      v12 = OUTLINED_FUNCTION_36();
      v13 = sub_26BD47E88(v12);
      OUTLINED_FUNCTION_89_0(v13);
    }

    OUTLINED_FUNCTION_191();
    v14 = *(v9 + 400);
    *(v9 + 400) = v5;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedContactDetailsHtml.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD3FF70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedContactDetailsHtml.setter();
}

void ExecuteResponse.localizedContactDetailsHtml.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 416);
  *(v5 + 408) = v2;
  *(v5 + 416) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedContactDetailsHtml.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 416);
  *(v1 + 48) = *(v0 + 408);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD40070(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedContactDetailsHtml.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 416);
    *(v9 + 408) = v4;
    *(v9 + 416) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.phoneHeadlineMessage.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD4013C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.phoneHeadlineMessage.setter();
}

void ExecuteResponse.phoneHeadlineMessage.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 432);
  *(v5 + 424) = v2;
  *(v5 + 432) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.phoneHeadlineMessage.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 432);
  *(v1 + 48) = *(v0 + 424);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD4023C(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.phoneHeadlineMessage.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 432);
    *(v9 + 424) = v4;
    *(v9 + 432) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.caseUpdateStatus.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD40308(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.caseUpdateStatus.setter();
}

void ExecuteResponse.caseUpdateStatus.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 448);
  *(v5 + 440) = v2;
  *(v5 + 448) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.caseUpdateStatus.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 448);
  *(v1 + 48) = *(v0 + 440);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD40408(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.caseUpdateStatus.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 448);
    *(v9 + 440) = v4;
    *(v9 + 448) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.validatePremiumAdvisor.getter()
{
  OUTLINED_FUNCTION_12_2();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_154();
  return *(v2 + 456);
}

uint64_t ExecuteResponse.validatePremiumAdvisor.setter(char a1)
{
  v3 = *(type metadata accessor for ExecuteResponse(0) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v7 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD47E88(v7);
    OUTLINED_FUNCTION_155(v8);
  }

  result = OUTLINED_FUNCTION_159();
  *(v6 + 456) = a1 & 1;
  return result;
}

uint64_t ExecuteResponse.validatePremiumAdvisor.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_142(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_2();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127();
  *(v1 + 84) = *(v4 + 456);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD405AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_19_4();
    v10 = OUTLINED_FUNCTION_36();
    v11 = sub_26BD47E88(v10);
    OUTLINED_FUNCTION_215(v11);
  }

  swift_beginAccess();
  *(v7 + 456) = v4;

  free(v1);
}

uint64_t ExecuteResponse.premiumReason.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD40690(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.premiumReason.setter();
}

void ExecuteResponse.premiumReason.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 472);
  *(v5 + 464) = v2;
  *(v5 + 472) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.premiumReason.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 472);
  *(v1 + 48) = *(v0 + 464);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD40790(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.premiumReason.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 472);
    *(v9 + 464) = v4;
    *(v9 + 472) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.searchURL.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD4085C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.searchURL.setter();
}

void ExecuteResponse.searchURL.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 488);
  *(v5 + 480) = v2;
  *(v5 + 488) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.searchURL.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 488);
  *(v1 + 48) = *(v0 + 480);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD4095C(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.searchURL.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 488);
    *(v9 + 480) = v4;
    *(v9 + 488) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.bizChatURL.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD40A28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.bizChatURL.setter();
}

void ExecuteResponse.bizChatURL.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 504);
  *(v5 + 496) = v2;
  *(v5 + 504) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.bizChatURL.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 504);
  *(v1 + 48) = *(v0 + 496);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD40B28(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.bizChatURL.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 504);
    *(v9 + 496) = v4;
    *(v9 + 504) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.bizChatContinuationURL.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 512);
  v2 = *(v0 + 520);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD40BF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.bizChatContinuationURL.setter();
}

void ExecuteResponse.bizChatContinuationURL.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 520);
  *(v5 + 512) = v2;
  *(v5 + 520) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.bizChatContinuationURL.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 520);
  *(v1 + 48) = *(v0 + 512);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD40D00(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.bizChatContinuationURL.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 520);
    *(v9 + 512) = v4;
    *(v9 + 520) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedContinueBizChat.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 528);
  v2 = *(v0 + 536);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD40DD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedContinueBizChat.setter();
}

void ExecuteResponse.localizedContinueBizChat.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 536);
  *(v5 + 528) = v2;
  *(v5 + 536) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedContinueBizChat.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 536);
  *(v1 + 48) = *(v0 + 528);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD40EDC(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedContinueBizChat.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 536);
    *(v9 + 528) = v4;
    *(v9 + 536) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedCallHours.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 544);
  v2 = *(v0 + 552);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD40FB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedCallHours.setter();
}

void ExecuteResponse.localizedCallHours.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 552);
  *(v5 + 544) = v2;
  *(v5 + 552) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedCallHours.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 552);
  *(v1 + 48) = *(v0 + 544);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD410B8(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedCallHours.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 552);
    *(v9 + 544) = v4;
    *(v9 + 552) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.phoneNumber.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 560);
  v2 = *(v0 + 568);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD4118C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.phoneNumber.setter();
}

void ExecuteResponse.phoneNumber.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 568);
  *(v5 + 560) = v2;
  *(v5 + 568) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.phoneNumber.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 568);
  *(v1 + 48) = *(v0 + 560);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD41294(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.phoneNumber.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 568);
    *(v9 + 560) = v4;
    *(v9 + 568) = v3;
  }

  free(v1);
}

uint64_t ExecuteResponse.localizedCallLanguage.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  v1 = *(v0 + 576);
  v2 = *(v0 + 584);

  return OUTLINED_FUNCTION_147();
}

void sub_26BD41368(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  ExecuteResponse.localizedCallLanguage.setter();
}

void ExecuteResponse.localizedCallLanguage.setter()
{
  OUTLINED_FUNCTION_307();
  v4 = OUTLINED_FUNCTION_3_2();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD47E88(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_159();
  v8 = *(v5 + 584);
  *(v5 + 576) = v2;
  *(v5 + 584) = v0;

  OUTLINED_FUNCTION_306();
}

uint64_t ExecuteResponse.localizedCallLanguage.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_127();
  v4 = *(v0 + 584);
  *(v1 + 48) = *(v0 + 576);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD41470(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_130();
    ExecuteResponse.localizedCallLanguage.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_211();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_7_2();
      v10 = OUTLINED_FUNCTION_36();
      v11 = sub_26BD47E88(v10);
      OUTLINED_FUNCTION_215(v11);
    }

    OUTLINED_FUNCTION_191();
    v12 = *(v9 + 584);
    *(v9 + 576) = v4;
    *(v9 + 584) = v3;
  }

  free(v1);
}

void ExecuteResponse.passResponse.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_47(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 48) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_162(v10);
  *(v1 + 64) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_9();
  if (v12)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v12)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_21();
    v14(v13);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

BOOL ExecuteResponse.hasPassResponse.getter()
{
  v1 = OUTLINED_FUNCTION_128();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_65();
  sub_26BD04E2C();
  v7 = sub_26BDA0810();
  v8 = __swift_getEnumTagSinglePayload(v0, 1, v7) != 1;
  v9 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v9, v10, &qword_26BDA5440);
  return v8;
}

Swift::Void __swiftcall ExecuteResponse.clearPassResponse()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = *(type metadata accessor for ExecuteResponse(v6) + 20);
  v8 = *(v1 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v11 = OUTLINED_FUNCTION_36();
    v12 = sub_26BD47E88(v11);
    OUTLINED_FUNCTION_155(v12);
  }

  v13 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v13);
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_86_1();
  swift_endAccess();
}

uint64_t ExecuteResponse.details.getter()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_154();
  return sub_26BD04E2C();
}

uint64_t sub_26BD418C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26BD04E2C();
  return ExecuteResponse.details.setter();
}

uint64_t ExecuteResponse.details.setter()
{
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v4 = OUTLINED_FUNCTION_36();
    v5 = sub_26BD47E88(v4);
    OUTLINED_FUNCTION_155(v5);
  }

  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteResponse.details.modify()
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
  OUTLINED_FUNCTION_12_2();
  *(v1 + 72) = v9;
  v10 = *(v0 + v9);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_79_1();
  sub_26BD04E2C();
  OUTLINED_FUNCTION_283();
}

void sub_26BD41ABC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v5 = *(v2 + 48);
    sub_26BD04E2C();
    ExecuteResponse.details.setter();
    v6 = OUTLINED_FUNCTION_122();
    sub_26BD04E80(v6, v7, &qword_26BDA7110);
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
      OUTLINED_FUNCTION_19_4();
      v15 = OUTLINED_FUNCTION_36();
      *(v14 + v13) = sub_26BD47E88(v15);
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

uint64_t ExecuteResponse.ers.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v7 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  OUTLINED_FUNCTION_8(v7);
  if (v8)
  {
    sub_26BD04E80(v0, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v11);
      v13 = *(v12 + 32);
      v14 = OUTLINED_FUNCTION_169();
      return v15(v14);
    }

    OUTLINED_FUNCTION_1_4();
    sub_26BD4F0CC();
  }

  return sub_26BDA0800();
}

void ExecuteResponse.ers.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_47(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 48) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_162(v10);
  *(v1 + 64) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_20_4();
  if (v12)
  {
    sub_26BD04E80(v0, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    if (!OUTLINED_FUNCTION_96_0())
    {
      v14 = OUTLINED_FUNCTION_21();
      v15(v14);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_1_4();
    sub_26BD4F0CC();
  }

  sub_26BDA0800();
LABEL_7:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteResponse.smbSubmission.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v7 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  OUTLINED_FUNCTION_8(v7);
  if (v8)
  {
    sub_26BD04E80(v0, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v10 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v10);
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_169();
      return v14(v13);
    }

    OUTLINED_FUNCTION_1_4();
    sub_26BD4F0CC();
  }

  return sub_26BDA0800();
}

uint64_t sub_26BD41F58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_22();
  v7 = *(type metadata accessor for ExecuteResponse(v6) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_19_4();
    v11 = OUTLINED_FUNCTION_36();
    *(v1 + v7) = sub_26BD47E88(v11);
  }

  v12 = sub_26BDA0810();
  OUTLINED_FUNCTION_26(v12);
  v14 = *(v13 + 32);
  v15 = OUTLINED_FUNCTION_169();
  v16(v15);
  v17 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  OUTLINED_FUNCTION_169();
  swift_storeEnumTagMultiPayload();
  v18 = OUTLINED_FUNCTION_52_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_86_1();
  return swift_endAccess();
}

void ExecuteResponse.smbSubmission.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_47(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 48) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_162(v10);
  *(v1 + 64) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_20_4();
  if (v12)
  {
    sub_26BD04E80(v0, &qword_28044A538, &qword_26BDA7110);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_96_0();
  if (v13 != 1)
  {
    OUTLINED_FUNCTION_1_4();
    sub_26BD4F0CC();
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_21();
  v15(v14);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteResponse.smbCancellation.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v7 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  OUTLINED_FUNCTION_8(v7);
  if (v8)
  {
    sub_26BD04E80(v0, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v10 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v10);
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_169();
      return v14(v13);
    }

    OUTLINED_FUNCTION_1_4();
    sub_26BD4F0CC();
  }

  return sub_26BDA0800();
}

void ExecuteResponse.smbCancellation.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_47(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 48) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_162(v10);
  *(v1 + 64) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_20_4();
  if (v12)
  {
    sub_26BD04E80(v0, &qword_28044A538, &qword_26BDA7110);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_96_0();
  if (v13 != 2)
  {
    OUTLINED_FUNCTION_1_4();
    sub_26BD4F0CC();
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_21();
  v15(v14);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteResponse.mailIn.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v7 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  OUTLINED_FUNCTION_8(v7);
  if (v8)
  {
    sub_26BD04E80(v0, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      v10 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v10);
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_169();
      return v14(v13);
    }

    OUTLINED_FUNCTION_1_4();
    sub_26BD4F0CC();
  }

  return sub_26BDA0800();
}

void ExecuteResponse.mailIn.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_47(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 48) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_162(v10);
  *(v1 + 64) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_20_4();
  if (v12)
  {
    sub_26BD04E80(v0, &qword_28044A538, &qword_26BDA7110);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_96_0();
  if (v13 != 3)
  {
    OUTLINED_FUNCTION_1_4();
    sub_26BD4F0CC();
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_21();
  v15(v14);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t ExecuteResponse.acmngCancellation.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_91();
  v7 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  OUTLINED_FUNCTION_8(v7);
  if (v8)
  {
    sub_26BD04E80(v0, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    OUTLINED_FUNCTION_130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      v10 = sub_26BDA0810();
      OUTLINED_FUNCTION_26(v10);
      v12 = *(v11 + 32);
      v13 = OUTLINED_FUNCTION_169();
      return v14(v13);
    }

    OUTLINED_FUNCTION_1_4();
    sub_26BD4F0CC();
  }

  return sub_26BDA0800();
}

uint64_t sub_26BD427F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = sub_26BDA0810();
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_121();
  v12 = *(v11 + 16);
  v13 = OUTLINED_FUNCTION_130();
  v14(v13);
  return a5(v5);
}

void ExecuteResponse.acmngCancellation.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_47(v6);
  v7 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v7);
  *(v1 + 48) = v8;
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_162(v10);
  *(v1 + 64) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_20_4();
  if (v12)
  {
    sub_26BD04E80(v0, &qword_28044A538, &qword_26BDA7110);
LABEL_7:
    sub_26BDA0800();
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_96_0();
  if (v13 != 4)
  {
    OUTLINED_FUNCTION_1_4();
    sub_26BD4F0CC();
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_21();
  v15(v14);
LABEL_8:
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BD42A1C()
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
    (*(v8 + 16))(*(*v0 + 56), v5, v7);
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v11 = v3[3];
    v10 = v3[4];
    v1(*(*v0 + 64));
  }

  free(v5);
  free(v4);
  free(v10);
  OUTLINED_FUNCTION_283();

  free(v12);
}

uint64_t _s15SupportServices07ExecuteA13OptionRequestV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  v0 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_147();

  return v4(v3);
}

uint64_t _s15SupportServices07ExecuteA13OptionRequestV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  OUTLINED_FUNCTION_134();
  v2 = sub_26BDA0850();
  v3 = OUTLINED_FUNCTION_34(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

void static ExecuteResponse.OneOf_Details.== infix(_:_:)()
{
  OUTLINED_FUNCTION_189();
  v68 = v0;
  v69 = v1;
  v2 = sub_26BDA0810();
  v3 = OUTLINED_FUNCTION_18(v2);
  v70 = v4;
  v71 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v8);
  v66 = &v64 - v9;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v10);
  v65 = &v64 - v11;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v12);
  v64 = &v64 - v13;
  OUTLINED_FUNCTION_158();
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  v17 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  v18 = OUTLINED_FUNCTION_34(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v64 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v64 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v64 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v64 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A540, &qword_26BDA7118);
  OUTLINED_FUNCTION_110(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_111();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v64 - v40;
  v42 = *(v39 + 56);
  sub_26BD4F078();
  sub_26BD4F078();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_5_1();
      sub_26BD4F078();
      OUTLINED_FUNCTION_79_1();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v59 = v70;
        v58 = v71;
        OUTLINED_FUNCTION_82_1();
        v60 = v64;
        v61(v64);
        sub_26BDA07F0();
        v56 = *(v59 + 8);
        v56(v60, v58);
        v57 = OUTLINED_FUNCTION_173();
        goto LABEL_12;
      }

      v23 = v32;
      goto LABEL_16;
    case 2u:
      OUTLINED_FUNCTION_5_1();
      sub_26BD4F078();
      OUTLINED_FUNCTION_79_1();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_101_0();
        v49 = v65;
        v50(v65);
        sub_26BDA07F0();
        v51 = *(v26 + 1);
        v51(v49, v32);
        v51(v29, v32);
        goto LABEL_19;
      }

      v23 = v29;
      goto LABEL_16;
    case 3u:
      OUTLINED_FUNCTION_5_1();
      sub_26BD4F078();
      OUTLINED_FUNCTION_79_1();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v23 = v26;
        goto LABEL_16;
      }

      v53 = v70;
      v52 = v71;
      OUTLINED_FUNCTION_82_1();
      v54 = v66;
      v55(v66);
      sub_26BDA07F0();
      v56 = *(v53 + 8);
      v56(v54, v52);
      v57 = OUTLINED_FUNCTION_167();
LABEL_12:
      (v56)(v57);
      goto LABEL_19;
    case 4u:
      OUTLINED_FUNCTION_5_1();
      sub_26BD4F078();
      OUTLINED_FUNCTION_79_1();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_16;
      }

      v44 = v70;
      v43 = v71;
      OUTLINED_FUNCTION_82_1();
      v45 = v67;
      v46(v67);
      sub_26BDA07F0();
      v47 = *(v44 + 8);
      v47(v45, v43);
      v48 = OUTLINED_FUNCTION_122();
      (v47)(v48);
      goto LABEL_19;
    default:
      OUTLINED_FUNCTION_5_1();
      sub_26BD4F078();
      OUTLINED_FUNCTION_79_1();
      if (swift_getEnumCaseMultiPayload())
      {
        v23 = v34;
LABEL_16:
        (*(v70 + 8))(v23, v71);
        sub_26BD04E80(v41, &qword_28044A540, &qword_26BDA7118);
      }

      else
      {
        OUTLINED_FUNCTION_101_0();
        v62(v16);
        sub_26BDA07F0();
        v63 = *(v26 + 1);
        v63(v16, v32);
        v63(v34, v32);
LABEL_19:
        OUTLINED_FUNCTION_1_4();
        sub_26BD4F0CC();
      }

      OUTLINED_FUNCTION_188();
      return;
  }
}

uint64_t ExecuteResponse.Task.guideIds.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ExecuteResponse.Task.localizedTaskDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_147();
}

uint64_t ExecuteResponse.Task.localizedTaskDescription.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t ExecuteResponse.Task.localizedTaskTitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_147();
}

uint64_t ExecuteResponse.Task.localizedTaskTitle.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ExecuteResponse.Task.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExecuteResponse.Task(0) + 32);
  v4 = sub_26BDA0850();
  v5 = OUTLINED_FUNCTION_34(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ExecuteResponse.Task.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for ExecuteResponse.Task(v2) + 32);
  v4 = sub_26BDA0850();
  OUTLINED_FUNCTION_26(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*ExecuteResponse.Task.unknownFields.modify())(void, void)
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for ExecuteResponse.Task(v0) + 32);
  return nullsub_1;
}

uint64_t ExecuteResponse.Task.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for ExecuteResponse.Task(0) + 32);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD43424@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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

uint64_t sub_26BD434C4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A478);
  __swift_project_value_buffer(v0, qword_28044A478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A10;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
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
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reporting_context";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "customer";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v15 = *MEMORY[0x277D21870];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "selected_store";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "reporting_context_map";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "selected_store_service_option";
  *(v21 + 1) = 29;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "hmt_context";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD43868()
{
  v1 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__caseMetaData;
  v2 = type metadata accessor for TriageRequest.CaseMetaData(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__clientContext;
  v4 = type metadata accessor for TriageRequest.ClientContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContext;
  v6 = type metadata accessor for TriageRequest.ReportingContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__customer;
  v8 = type metadata accessor for TriageRequest.Customer(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__selectedStore;
  v10 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  *(v0 + v11) = sub_26BDA0B70();
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__selectedStoreServiceOption, 1, 1, v10);
  v12 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__hmtContext;
  v13 = type metadata accessor for TriageRequest.HMTContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  return v0;
}

uint64_t sub_26BD439B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A518, &qword_26BDA7108);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36[8] = v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v36[7] = v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A4F0, &unk_26BDA70F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v36[6] = v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A4E0, &qword_26BDA70F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v36[3] = v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__caseMetaData;
  v20 = type metadata accessor for TriageRequest.CaseMetaData(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__clientContext;
  v22 = type metadata accessor for TriageRequest.ClientContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContext;
  v24 = type metadata accessor for TriageRequest.ReportingContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__customer;
  v36[1] = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__customer;
  v26 = type metadata accessor for TriageRequest.Customer(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__selectedStore;
  v36[2] = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__selectedStore;
  v28 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  v29 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  *(v1 + v29) = sub_26BDA0B70();
  v36[4] = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__selectedStoreServiceOption;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__selectedStoreServiceOption, 1, 1, v28);
  v30 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__hmtContext;
  v36[5] = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__hmtContext;
  v31 = type metadata accessor for TriageRequest.HMTContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
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
  v32 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  swift_beginAccess();
  v33 = *(a1 + v32);
  swift_beginAccess();
  v34 = *(v1 + v29);
  *(v1 + v29) = v33;

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
  return v1;
}

uint64_t sub_26BD440BC()
{
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__caseMetaData, &qword_280448F68, &qword_26BDA1A30);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__clientContext, &qword_280448F70, &qword_26BDA1A38);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContext, &qword_28044A4E0, &qword_26BDA70F0);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__customer, &qword_28044A4F0, &unk_26BDA70F8);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__selectedStore, &qword_280448F88, &qword_26BDA5440);
  v1 = *(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap);

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__selectedStoreServiceOption, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__hmtContext, &qword_28044A518, &qword_26BDA7108);
  return v0;
}

uint64_t sub_26BD44244()
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
        type metadata accessor for TriageRequest.CaseMetaData(0);
        sub_26BD4F1A0(&unk_280449100, type metadata accessor for TriageRequest.CaseMetaData);
        goto LABEL_12;
      case 2:
        swift_beginAccess();
        type metadata accessor for TriageRequest.ClientContext(0);
        sub_26BD4F1A0(&qword_2804490F8, type metadata accessor for TriageRequest.ClientContext);
        goto LABEL_12;
      case 3:
        swift_beginAccess();
        type metadata accessor for TriageRequest.ReportingContext(0);
        v4 = type metadata accessor for TriageRequest.ReportingContext;
        v5 = &unk_28044A670;
        goto LABEL_9;
      case 4:
        swift_beginAccess();
        type metadata accessor for TriageRequest.Customer(0);
        v4 = type metadata accessor for TriageRequest.Customer;
        v5 = &unk_28044A668;
        goto LABEL_9;
      case 5:
        swift_beginAccess();
        sub_26BDA0810();
        v4 = MEMORY[0x277D215C8];
        v5 = &qword_280449130;
LABEL_9:
        sub_26BD4F1A0(v5, v4);
LABEL_12:
        sub_26BDA09B0();
        swift_endAccess();
        continue;
      case 6:
        swift_beginAccess();
        sub_26BDA0820();
        sub_26BDA08F0();
        goto LABEL_16;
      case 7:
        swift_beginAccess();
        sub_26BDA0810();
        v6 = MEMORY[0x277D215C8];
        v7 = &qword_280449130;
        goto LABEL_15;
      case 8:
        swift_beginAccess();
        type metadata accessor for TriageRequest.HMTContext(0);
        v6 = type metadata accessor for TriageRequest.HMTContext;
        v7 = &unk_28044A660;
LABEL_15:
        sub_26BD4F1A0(v7, v6);
        sub_26BDA09B0();
LABEL_16:
        v1 = 0;
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD446B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v77 = a3;
  v76 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A518, &qword_26BDA7108);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = v58 - v7;
  v60 = type metadata accessor for TriageRequest.HMTContext(0);
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v58[1] = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v61 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = v58 - v14;
  v68 = sub_26BDA0810();
  v66 = *(v68 - 8);
  v15 = *(v66 + 64);
  v16 = MEMORY[0x28223BE20](v68);
  v62 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = v58 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A4F0, &unk_26BDA70F8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v71 = v58 - v21;
  v69 = type metadata accessor for TriageRequest.Customer(0);
  v22 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v64 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A4E0, &qword_26BDA70F0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v73 = v58 - v26;
  v74 = type metadata accessor for TriageRequest.ReportingContext(0);
  v27 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v67 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = v58 - v31;
  v72 = type metadata accessor for TriageRequest.ClientContext(0);
  v33 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v70 = v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = v58 - v37;
  v39 = type metadata accessor for TriageRequest.CaseMetaData(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  swift_beginAccess();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    sub_26BD04E80(v38, &qword_280448F68, &qword_26BDA1A30);
    v41 = v75;
  }

  else
  {
    sub_26BD4F024();
    sub_26BD4F1A0(&unk_280449100, type metadata accessor for TriageRequest.CaseMetaData);
    v42 = v75;
    sub_26BDA0AD0();
    v41 = v42;
    result = sub_26BD4F0CC();
    if (v42)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v72);
  v45 = v74;
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v32, &qword_280448F70, &qword_26BDA1A38);
    v46 = v73;
  }

  else
  {
    sub_26BD4F024();
    sub_26BD4F1A0(&qword_2804490F8, type metadata accessor for TriageRequest.ClientContext);
    sub_26BDA0AD0();
    result = sub_26BD4F0CC();
    v46 = v73;
    if (v41)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_26BD04E2C();
  v47 = __swift_getEnumTagSinglePayload(v46, 1, v45);
  v48 = v71;
  if (v47 == 1)
  {
    sub_26BD04E80(v46, &qword_28044A4E0, &qword_26BDA70F0);
  }

  else
  {
    sub_26BD4F024();
    sub_26BD4F1A0(&qword_28044A670, type metadata accessor for TriageRequest.ReportingContext);
    sub_26BDA0AD0();
    result = sub_26BD4F0CC();
    if (v41)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v48, 1, v69) == 1)
  {
    sub_26BD04E80(v48, &qword_28044A4F0, &unk_26BDA70F8);
  }

  else
  {
    sub_26BD4F024();
    sub_26BD4F1A0(&qword_28044A668, type metadata accessor for TriageRequest.Customer);
    sub_26BDA0AD0();
    result = sub_26BD4F0CC();
    if (v41)
    {
      return result;
    }
  }

  v49 = v65;
  swift_beginAccess();
  sub_26BD04E2C();
  v50 = v68;
  v51 = __swift_getEnumTagSinglePayload(v49, 1, v68);
  v52 = v66;
  if (v51 == 1)
  {
    sub_26BD04E80(v49, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    v53 = v63;
    (*(v66 + 32))(v63, v49, v50);
    sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
    sub_26BDA0AD0();
    if (v41)
    {
      v54 = v53;
      return (*(v52 + 8))(v54, v50);
    }

    (*(v52 + 8))(v53, v50);
  }

  v55 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  swift_beginAccess();
  if (!*(*(a1 + v55) + 16) || (sub_26BDA0820(), , sub_26BDA0A30(), result = , !v41))
  {
    swift_beginAccess();
    v56 = v61;
    sub_26BD04E2C();
    v50 = v68;
    if (__swift_getEnumTagSinglePayload(v56, 1, v68) == 1)
    {
      sub_26BD04E80(v56, &qword_280448F88, &qword_26BDA5440);
      goto LABEL_26;
    }

    (*(v52 + 32))(v62, v56, v50);
    sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
    sub_26BDA0AD0();
    if (!v41)
    {
      (*(v52 + 8))(v62, v50);
LABEL_26:
      swift_beginAccess();
      v57 = v59;
      sub_26BD04E2C();
      if (__swift_getEnumTagSinglePayload(v57, 1, v60) == 1)
      {
        return sub_26BD04E80(v57, &qword_28044A518, &qword_26BDA7108);
      }

      sub_26BD4F024();
      sub_26BD4F1A0(&qword_28044A660, type metadata accessor for TriageRequest.HMTContext);
      sub_26BDA0AD0();
      return sub_26BD4F0CC();
    }

    v54 = v62;
    return (*(v52 + 8))(v54, v50);
  }

  return result;
}

BOOL sub_26BD4541C(uint64_t a1, uint64_t a2)
{
  v181 = a2;
  v148 = type metadata accessor for TriageRequest.HMTContext(0);
  v3 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v145 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A648, &qword_26BDA7788);
  v5 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v149 = &v145 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A518, &qword_26BDA7108);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v146 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v156 = &v145 - v11;
  v159 = sub_26BDA0810();
  v154 = *(v159 - 8);
  v12 = *(v154 + 64);
  MEMORY[0x28223BE20](v159);
  v152 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v14 = *(*(v158 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v158);
  v151 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v157 = &v145 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v150 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v163 = &v145 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v153 = &v145 - v25;
  MEMORY[0x28223BE20](v24);
  v161 = &v145 - v26;
  v165 = type metadata accessor for TriageRequest.Customer(0);
  v27 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v155 = (&v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A650, &qword_26BDA7790);
  v29 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v166 = &v145 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A4F0, &unk_26BDA70F8);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v160 = (&v145 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v168 = &v145 - v35;
  v171 = type metadata accessor for TriageRequest.ReportingContext(0);
  v36 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v162 = (&v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A658, &qword_26BDA7798);
  v38 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v172 = &v145 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A4E0, &qword_26BDA70F0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v167 = (&v145 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v42);
  v178 = &v145 - v44;
  v176 = type metadata accessor for TriageRequest.ClientContext(0);
  v45 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176);
  v169 = &v145 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449108, &unk_26BDA5490);
  v47 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v177 = &v145 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F70, &qword_26BDA1A38);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v174 = &v145 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v179 = &v145 - v53;
  v180 = type metadata accessor for TriageRequest.CaseMetaData(0);
  v54 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v173 = &v145 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449110, &unk_26BDA1AB0);
  v57 = v56 - 8;
  v58 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v60 = &v145 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F68, &qword_26BDA1A30);
  v62 = *(*(v61 - 8) + 64);
  v63 = MEMORY[0x28223BE20](v61 - 8);
  v65 = &v145 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v67 = &v145 - v66;
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v68 = *(v57 + 56);
  sub_26BD04E2C();
  v69 = v180;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v60, 1, v69) == 1)
  {

    sub_26BD04E80(v67, &qword_280448F68, &qword_26BDA1A30);
    v70 = a1;
    if (__swift_getEnumTagSinglePayload(&v60[v68], 1, v69) == 1)
    {
      sub_26BD04E80(v60, &qword_280448F68, &qword_26BDA1A30);
      goto LABEL_10;
    }

LABEL_6:
    v72 = &qword_280449110;
    v73 = &unk_26BDA1AB0;
LABEL_16:
    v89 = v60;
LABEL_17:
    sub_26BD04E80(v89, v72, v73);
    goto LABEL_18;
  }

  v71 = v67;
  v70 = a1;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(&v60[v68], 1, v69) == 1)
  {

    sub_26BD04E80(v67, &qword_280448F68, &qword_26BDA1A30);
    sub_26BD4F0CC();
    goto LABEL_6;
  }

  v74 = v173;
  sub_26BD4F024();
  v75 = *(v69 + 20);
  v76 = *&v65[v75];
  v77 = *&v74[v75];

  if (v76 != v77)
  {

    sub_26BD631C8();
    v79 = v78;

    if ((v79 & 1) == 0)
    {
      sub_26BD4F0CC();
      v97 = &qword_280448F68;
      v98 = &qword_26BDA1A30;
      sub_26BD04E80(v71, &qword_280448F68, &qword_26BDA1A30);
LABEL_36:
      sub_26BD4F0CC();
      v89 = v60;
      v72 = v97;
      v73 = v98;
      goto LABEL_17;
    }
  }

  sub_26BDA0850();
  sub_26BD4F1A0(&qword_2804490C0, MEMORY[0x277D216C8]);
  v80 = sub_26BDA0BB0();
  sub_26BD4F0CC();
  sub_26BD04E80(v71, &qword_280448F68, &qword_26BDA1A30);
  sub_26BD4F0CC();
  sub_26BD04E80(v60, &qword_280448F68, &qword_26BDA1A30);
  if ((v80 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  swift_beginAccess();
  v81 = v179;
  sub_26BD04E2C();
  swift_beginAccess();
  v82 = *(v175 + 48);
  v83 = v177;
  sub_26BD04E2C();
  v60 = v83;
  sub_26BD04E2C();
  v84 = v176;
  if (__swift_getEnumTagSinglePayload(v83, 1, v176) == 1)
  {
    sub_26BD04E80(v81, &qword_280448F70, &qword_26BDA1A38);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83 + v82, 1, v84);
    v86 = v178;
    if (EnumTagSinglePayload == 1)
    {
      sub_26BD04E80(v60, &qword_280448F70, &qword_26BDA1A38);
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v87 = v174;
  sub_26BD04E2C();
  v88 = __swift_getEnumTagSinglePayload(v83 + v82, 1, v84);
  v86 = v178;
  if (v88 == 1)
  {
    sub_26BD04E80(v81, &qword_280448F70, &qword_26BDA1A38);
    sub_26BD4F0CC();
LABEL_15:
    v72 = &qword_280449108;
    v73 = &unk_26BDA5490;
    goto LABEL_16;
  }

  v91 = v169;
  sub_26BD4F024();
  if (*&v87[*(v84 + 20)] != *&v91[*(v84 + 20)])
  {

    v92 = sub_26BD67C6C();

    if (!v92)
    {
      sub_26BD4F0CC();
      v97 = &qword_280448F70;
      v98 = &qword_26BDA1A38;
      sub_26BD04E80(v179, &qword_280448F70, &qword_26BDA1A38);
      goto LABEL_36;
    }
  }

  sub_26BDA0850();
  sub_26BD4F1A0(&qword_2804490C0, MEMORY[0x277D216C8]);
  v93 = sub_26BDA0BB0();
  sub_26BD4F0CC();
  sub_26BD04E80(v179, &qword_280448F70, &qword_26BDA1A38);
  sub_26BD4F0CC();
  sub_26BD04E80(v60, &qword_280448F70, &qword_26BDA1A38);
  if ((v93 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_24:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v94 = *(v170 + 48);
  v95 = v172;
  sub_26BD04E2C();
  sub_26BD04E2C();
  v96 = v171;
  if (__swift_getEnumTagSinglePayload(v95, 1, v171) == 1)
  {
    sub_26BD04E80(v86, &qword_28044A4E0, &qword_26BDA70F0);
    if (__swift_getEnumTagSinglePayload(v95 + v94, 1, v96) == 1)
    {
      sub_26BD04E80(v95, &qword_28044A4E0, &qword_26BDA70F0);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v99 = v167;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v95 + v94, 1, v96) == 1)
  {
    sub_26BD04E80(v86, &qword_28044A4E0, &qword_26BDA70F0);
    sub_26BD4F0CC();
LABEL_30:
    v72 = &qword_28044A658;
    v73 = &qword_26BDA7798;
    v89 = v95;
    goto LABEL_17;
  }

  v100 = v162;
  sub_26BD4F024();
  v101 = static TriageRequest.ReportingContext.== infix(_:_:)(v99, v100);
  sub_26BD4F0CC();
  sub_26BD04E80(v86, &qword_28044A4E0, &qword_26BDA70F0);
  sub_26BD4F0CC();
  sub_26BD04E80(v95, &qword_28044A4E0, &qword_26BDA70F0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_32:
  swift_beginAccess();
  v102 = v168;
  sub_26BD04E2C();
  swift_beginAccess();
  v103 = *(v164 + 48);
  v104 = v166;
  sub_26BD04E2C();
  sub_26BD04E2C();
  v105 = v165;
  if (__swift_getEnumTagSinglePayload(v104, 1, v165) == 1)
  {
    sub_26BD04E80(v102, &qword_28044A4F0, &unk_26BDA70F8);
    if (__swift_getEnumTagSinglePayload(v104 + v103, 1, v105) == 1)
    {
      sub_26BD04E80(v104, &qword_28044A4F0, &unk_26BDA70F8);
      v106 = v163;
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  v107 = v160;
  sub_26BD04E2C();
  v108 = __swift_getEnumTagSinglePayload(v104 + v103, 1, v105);
  v106 = v163;
  if (v108 == 1)
  {
    sub_26BD04E80(v168, &qword_28044A4F0, &unk_26BDA70F8);
    sub_26BD4F0CC();
LABEL_39:
    v72 = &qword_28044A650;
    v73 = &qword_26BDA7790;
    v89 = v104;
    goto LABEL_17;
  }

  v109 = v155;
  sub_26BD4F024();
  v110 = static TriageRequest.Customer.== infix(_:_:)(v107, v109);
  sub_26BD4F0CC();
  sub_26BD04E80(v168, &qword_28044A4F0, &unk_26BDA70F8);
  sub_26BD4F0CC();
  sub_26BD04E80(v104, &qword_28044A4F0, &unk_26BDA70F8);
  if ((v110 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_41:
  swift_beginAccess();
  v111 = v161;
  sub_26BD04E2C();
  swift_beginAccess();
  v112 = v157;
  v113 = *(v158 + 48);
  sub_26BD04E2C();
  v114 = v112;
  sub_26BD04E2C();
  v115 = v159;
  if (__swift_getEnumTagSinglePayload(v112, 1, v159) == 1)
  {
    sub_26BD04E80(v111, &qword_280448F88, &qword_26BDA5440);
    if (__swift_getEnumTagSinglePayload(v112 + v113, 1, v115) == 1)
    {
      sub_26BD04E80(v112, &qword_280448F88, &qword_26BDA5440);
      v116 = v156;
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v117 = v153;
  sub_26BD04E2C();
  v118 = __swift_getEnumTagSinglePayload(v114 + v113, 1, v115);
  v116 = v156;
  if (v118 == 1)
  {
    sub_26BD04E80(v161, &qword_280448F88, &qword_26BDA5440);
    (*(v154 + 8))(v117, v115);
LABEL_46:
    v72 = &qword_2804490C8;
    v73 = &qword_26BDA7780;
    v89 = v114;
    goto LABEL_17;
  }

  v119 = v154;
  v120 = v152;
  (*(v154 + 32))(v152, v114 + v113, v115);
  sub_26BD4F1A0(&qword_2804490D0, MEMORY[0x277D215C8]);
  LODWORD(v180) = sub_26BDA0BB0();
  v121 = *(v119 + 8);
  v121(v120, v115);
  sub_26BD04E80(v161, &qword_280448F88, &qword_26BDA5440);
  v106 = v163;
  v121(v117, v115);
  sub_26BD04E80(v114, &qword_280448F88, &qword_26BDA5440);
  if ((v180 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_48:
  v122 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  swift_beginAccess();
  v123 = *(v70 + v122);
  v124 = OBJC_IVAR____TtCV15SupportServices27ExecuteSupportOptionRequestP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__reportingContextMap;
  v125 = v181;
  swift_beginAccess();
  v126 = *(v125 + v124);

  sub_26BD2F284(v123, v126);
  LOBYTE(v125) = v127;

  if ((v125 & 1) == 0)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v128 = *(v158 + 48);
  v129 = v151;
  sub_26BD04E2C();
  v130 = v129;
  sub_26BD04E2C();
  v131 = v129;
  v132 = v159;
  if (__swift_getEnumTagSinglePayload(v131, 1, v159) != 1)
  {
    v133 = v150;
    sub_26BD04E2C();
    if (__swift_getEnumTagSinglePayload(v130 + v128, 1, v132) == 1)
    {
      sub_26BD04E80(v106, &qword_280448F88, &qword_26BDA5440);
      (*(v154 + 8))(v133, v132);
      goto LABEL_54;
    }

    v134 = v106;
    v135 = v154;
    v136 = v130 + v128;
    v137 = v152;
    (*(v154 + 32))(v152, v136, v132);
    sub_26BD4F1A0(&qword_2804490D0, MEMORY[0x277D215C8]);
    LODWORD(v180) = sub_26BDA0BB0();
    v138 = *(v135 + 8);
    v138(v137, v132);
    sub_26BD04E80(v134, &qword_280448F88, &qword_26BDA5440);
    v138(v133, v132);
    sub_26BD04E80(v130, &qword_280448F88, &qword_26BDA5440);
    if (v180)
    {
      goto LABEL_56;
    }

LABEL_18:

    return 0;
  }

  sub_26BD04E80(v106, &qword_280448F88, &qword_26BDA5440);
  if (__swift_getEnumTagSinglePayload(v130 + v128, 1, v132) != 1)
  {
LABEL_54:
    v72 = &qword_2804490C8;
    v73 = &qword_26BDA7780;
    v89 = v130;
    goto LABEL_17;
  }

  sub_26BD04E80(v130, &qword_280448F88, &qword_26BDA5440);
LABEL_56:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v139 = *(v147 + 48);
  v140 = v149;
  sub_26BD04E2C();
  sub_26BD04E2C();
  v141 = v148;
  if (__swift_getEnumTagSinglePayload(v140, 1, v148) == 1)
  {

    sub_26BD04E80(v116, &qword_28044A518, &qword_26BDA7108);
    if (__swift_getEnumTagSinglePayload(v140 + v139, 1, v141) == 1)
    {
      sub_26BD04E80(v140, &qword_28044A518, &qword_26BDA7108);
      return 1;
    }

    goto LABEL_61;
  }

  v142 = v146;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v140 + v139, 1, v141) == 1)
  {

    sub_26BD04E80(v116, &qword_28044A518, &qword_26BDA7108);
    sub_26BD4F0CC();
LABEL_61:
    sub_26BD04E80(v140, &qword_28044A648, &qword_26BDA7788);
    return 0;
  }

  v143 = v145;
  sub_26BD4F024();
  v144 = static TriageRequest.HMTContext.== infix(_:_:)(v142, v143);

  sub_26BD4F0CC();
  sub_26BD04E80(v116, &qword_28044A518, &qword_26BDA7108);
  sub_26BD4F0CC();
  sub_26BD04E80(v140, &qword_28044A518, &qword_26BDA7108);
  return (v144 & 1) != 0;
}

uint64_t sub_26BD46E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD4F1A0(&qword_28044A638, type metadata accessor for ExecuteSupportOptionRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD46EA4(uint64_t a1)
{
  v2 = sub_26BD4F1A0(&qword_28044A568, type metadata accessor for ExecuteSupportOptionRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD46F14()
{
  sub_26BD4F1A0(&qword_28044A568, type metadata accessor for ExecuteSupportOptionRequest);

  return sub_26BDA0A00();
}

uint64_t sub_26BD46FB8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A498);
  __swift_project_value_buffer(v0, qword_28044A498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_26BDA70E0;
  v4 = v105 + v3;
  v5 = v105 + v3 + v1[14];
  *(v105 + v3) = 1;
  *v5 = "case_id";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "article_ids";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "solution_type";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "solution_subtype";
  *(v13 + 1) = 16;
  v13[16] = 2;
  *(v13 + 3) = "solutionSubType";
  *(v13 + 4) = 15;
  v13[40] = 2;
  v104 = *MEMORY[0x277D21878];
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "localized_case_label";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "localized_headline";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "localized_whats_next";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "localized_add_to_calendar";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "localized_add_comment";
  *(v23 + 1) = 21;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "localized_edit_comment";
  *(v25 + 1) = 22;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "localized_get_directions";
  *(v27 + 1) = 24;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "localized_reschedule_action";
  *(v29 + 1) = 27;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "localized_cancel_main_action";
  *(v31 + 1) = 28;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "localized_cancel_action";
  *(v33 + 1) = 23;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "localized_cancel_and_choose_action";
  *(v35 + 1) = 34;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "localized_cancel_confirmation_title";
  *(v37 + 1) = 35;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "localized_cancel_confirmation_message";
  *(v39 + 1) = 37;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "localized_reservation_reminder";
  *(v41 + 1) = 30;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "preparation_tasks";
  *(v43 + 1) = 17;
  v43[16] = 2;
  v8();
  v44 = v1[14];
  v45 = (v4 + 19 * v2);
  *v45 = 20;
  v46 = v45 + v44;
  *v46 = "scheduled_time_seconds";
  *(v46 + 1) = 22;
  v46[16] = 2;
  *(v46 + 3) = "scheduledTime";
  *(v46 + 4) = 13;
  v46[40] = 2;
  v8();
  v47 = (v4 + 20 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "store_time_zone";
  *(v48 + 1) = 15;
  v48[16] = 2;
  v8();
  v49 = (v4 + 21 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "reservation_id";
  *(v50 + 1) = 14;
  v50[16] = 2;
  v8();
  v51 = v1[14];
  v52 = (v4 + 22 * v2);
  *v52 = 23;
  v53 = v52 + v51;
  *v53 = "localized_headline_message_html";
  *(v53 + 1) = 31;
  v53[16] = 2;
  *(v53 + 3) = "localizedHeadlineMessage";
  *(v53 + 4) = 24;
  v53[40] = 2;
  v8();
  v54 = (v4 + 23 * v2);
  v55 = v54 + v1[14];
  *v54 = 24;
  *v55 = "kvps";
  *(v55 + 1) = 4;
  v55[16] = 2;
  v103 = *MEMORY[0x277D21870];
  v8();
  v56 = (v4 + 24 * v2);
  v57 = v56 + v1[14];
  *v56 = 25;
  *v57 = "localized_confirmation_message";
  *(v57 + 1) = 30;
  v57[16] = 2;
  v8();
  v58 = (v4 + 25 * v2);
  v59 = v58 + v1[14];
  *v58 = 26;
  *v59 = "localized_additional_info_message";
  *(v59 + 1) = 33;
  v59[16] = 2;
  v8();
  v60 = (v4 + 26 * v2);
  v61 = v60 + v1[14];
  *v60 = 27;
  *v61 = "files_attached";
  *(v61 + 1) = 14;
  v61[16] = 2;
  v8();
  v62 = v1[14];
  v63 = (v4 + 27 * v2);
  *v63 = 28;
  v64 = v63 + v62;
  *v64 = "localized_contact_details_html";
  *(v64 + 1) = 30;
  v64[16] = 2;
  *(v64 + 3) = "localizedContactDetails";
  *(v64 + 4) = 23;
  v64[40] = 2;
  v8();
  v65 = (v4 + 28 * v2);
  v66 = v65 + v1[14];
  *v65 = 29;
  *v66 = "phone_headline_message";
  *(v66 + 1) = 22;
  v66[16] = 2;
  v8();
  v67 = (v4 + 29 * v2);
  v68 = v67 + v1[14];
  *v67 = 30;
  *v68 = "case_update_status";
  *(v68 + 1) = 18;
  v68[16] = 2;
  v8();
  v69 = (v4 + 30 * v2);
  v70 = v69 + v1[14];
  *v69 = 31;
  *v70 = "validate_premium_advisor";
  *(v70 + 1) = 24;
  v70[16] = 2;
  v8();
  v71 = (v4 + 31 * v2);
  v72 = v71 + v1[14];
  *v71 = 32;
  *v72 = "premium_reason";
  *(v72 + 1) = 14;
  v72[16] = 2;
  v8();
  v73 = v1[14];
  v74 = (v4 + 32 * v2);
  *v74 = 33;
  v75 = v74 + v73;
  *v75 = "search_url";
  *(v75 + 1) = 10;
  v75[16] = 2;
  *(v75 + 3) = "searchURL";
  *(v75 + 4) = 9;
  v75[40] = 2;
  v8();
  v76 = v1[14];
  v77 = (v4 + 33 * v2);
  *v77 = 34;
  v78 = v77 + v76;
  *v78 = "biz_chat_url";
  *(v78 + 1) = 12;
  v78[16] = 2;
  *(v78 + 3) = "bizChatURL";
  *(v78 + 4) = 10;
  v78[40] = 2;
  v8();
  v79 = v1[14];
  v80 = (v4 + 34 * v2);
  *v80 = 35;
  v81 = v80 + v79;
  *v81 = "biz_chat_continuation_url";
  *(v81 + 1) = 25;
  v81[16] = 2;
  *(v81 + 3) = "bizChatContinuationURL";
  *(v81 + 4) = 22;
  v81[40] = 2;
  v8();
  v82 = (v4 + 35 * v2);
  v83 = v82 + v1[14];
  *v82 = 36;
  *v83 = "localized_continue_biz_chat";
  *(v83 + 1) = 27;
  v83[16] = 2;
  v8();
  v84 = (v4 + 36 * v2);
  v85 = v84 + v1[14];
  *v84 = 37;
  *v85 = "localized_call_hours";
  *(v85 + 1) = 20;
  v85[16] = 2;
  v8();
  v86 = (v4 + 37 * v2);
  v87 = v86 + v1[14];
  *v86 = 38;
  *v87 = "phone_number";
  *(v87 + 1) = 12;
  v87[16] = 2;
  v8();
  v88 = (v4 + 38 * v2);
  v89 = v88 + v1[14];
  *v88 = 39;
  *v89 = "localized_call_language";
  *(v89 + 1) = 23;
  v89[16] = 2;
  v8();
  v90 = (v4 + 39 * v2);
  v91 = v90 + v1[14];
  *v90 = 40;
  *v91 = "pass_response";
  *(v91 + 1) = 13;
  v91[16] = 2;
  v8();
  v92 = (v4 + 40 * v2);
  v93 = v92 + v1[14];
  *v92 = 41;
  *v93 = "ers";
  *(v93 + 1) = 3;
  v93[16] = 2;
  v8();
  v94 = (v4 + 41 * v2);
  v95 = v94 + v1[14];
  *v94 = 42;
  *v95 = "smb_submission";
  *(v95 + 1) = 14;
  v95[16] = 2;
  v8();
  v96 = (v4 + 42 * v2);
  v97 = v96 + v1[14];
  *v96 = 43;
  *v97 = "smb_cancellation";
  *(v97 + 1) = 16;
  v97[16] = 2;
  v8();
  v98 = (v4 + 43 * v2);
  v99 = v98 + v1[14];
  *v98 = 44;
  *v99 = "mail_in";
  *(v99 + 1) = 7;
  v99[16] = 2;
  v8();
  v100 = (v4 + 44 * v2);
  v101 = v100 + v1[14];
  *v100 = 45;
  *v101 = "acmng_cancellation";
  *(v101 + 1) = 18;
  v101[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD47CF8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_119(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_26BD47D48()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0xE000000000000000;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0xE000000000000000;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xE000000000000000;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xE000000000000000;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0xE000000000000000;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0xE000000000000000;
  *(v0 + 264) = 0;
  *(v0 + 272) = 0xE000000000000000;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0xE000000000000000;
  *(v0 + 296) = v1;
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0xE000000000000000;
  *(v0 + 328) = 0;
  *(v0 + 336) = 0xE000000000000000;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0xE000000000000000;
  *(v0 + 360) = sub_26BDA0B70();
  *(v0 + 368) = 0;
  *(v0 + 376) = 0xE000000000000000;
  *(v0 + 384) = 0;
  *(v0 + 392) = 0xE000000000000000;
  *(v0 + 400) = v1;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0xE000000000000000;
  *(v0 + 440) = 0;
  *(v0 + 448) = 0xE000000000000000;
  *(v0 + 456) = 0;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0xE000000000000000;
  *(v0 + 480) = 0;
  *(v0 + 488) = 0xE000000000000000;
  *(v0 + 496) = 0;
  *(v0 + 504) = 0xE000000000000000;
  *(v0 + 512) = 0;
  *(v0 + 520) = 0xE000000000000000;
  *(v0 + 528) = 0;
  *(v0 + 536) = 0xE000000000000000;
  *(v0 + 544) = 0;
  *(v0 + 552) = 0xE000000000000000;
  *(v0 + 560) = 0;
  *(v0 + 568) = 0xE000000000000000;
  *(v0 + 576) = 0;
  *(v0 + 584) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__passResponse;
  v3 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__details;
  v5 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  return v0;
}

uint64_t sub_26BD47E88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v150 = &v135 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v149 = &v135 - v8;
  *(v1 + 16) = 0;
  v9 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 40) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  v135 = (v1 + 72);
  *(v1 + 88) = 0;
  v136 = (v1 + 88);
  *(v1 + 80) = 0xE000000000000000;
  *(v1 + 96) = 0xE000000000000000;
  *(v1 + 104) = 0;
  v137 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v138 = (v1 + 120);
  *(v1 + 136) = 0;
  v139 = (v1 + 136);
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 144) = 0xE000000000000000;
  *(v1 + 152) = 0;
  v140 = (v1 + 152);
  *(v1 + 160) = 0xE000000000000000;
  *(v1 + 168) = 0;
  v141 = (v1 + 168);
  *(v1 + 184) = 0;
  v142 = (v1 + 184);
  *(v1 + 176) = 0xE000000000000000;
  *(v1 + 192) = 0xE000000000000000;
  *(v1 + 200) = 0;
  v143 = (v1 + 200);
  *(v1 + 208) = 0xE000000000000000;
  *(v1 + 216) = 0;
  v144 = (v1 + 216);
  *(v1 + 232) = 0;
  v145 = (v1 + 232);
  *(v1 + 224) = 0xE000000000000000;
  *(v1 + 240) = 0xE000000000000000;
  *(v1 + 248) = 0;
  v146 = (v1 + 248);
  *(v1 + 256) = 0xE000000000000000;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0xE000000000000000;
  *(v1 + 280) = 0;
  *(v1 + 288) = 0xE000000000000000;
  *(v1 + 296) = v9;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  *(v1 + 320) = 0xE000000000000000;
  *(v1 + 328) = 0;
  *(v1 + 336) = 0xE000000000000000;
  *(v1 + 344) = 0;
  *(v1 + 352) = 0xE000000000000000;
  *(v1 + 360) = sub_26BDA0B70();
  *(v1 + 368) = 0;
  *(v1 + 376) = 0xE000000000000000;
  *(v1 + 384) = 0;
  *(v1 + 392) = 0xE000000000000000;
  *(v1 + 400) = v9;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0xE000000000000000;
  *(v1 + 424) = 0;
  *(v1 + 432) = 0xE000000000000000;
  *(v1 + 440) = 0;
  *(v1 + 448) = 0xE000000000000000;
  *(v1 + 456) = 0;
  *(v1 + 464) = 0;
  *(v1 + 472) = 0xE000000000000000;
  *(v1 + 480) = 0;
  *(v1 + 488) = 0xE000000000000000;
  *(v1 + 496) = 0;
  *(v1 + 504) = 0xE000000000000000;
  *(v1 + 512) = 0;
  *(v1 + 520) = 0xE000000000000000;
  *(v1 + 528) = 0;
  *(v1 + 536) = 0xE000000000000000;
  *(v1 + 544) = 0;
  *(v1 + 552) = 0xE000000000000000;
  *(v1 + 560) = 0;
  *(v1 + 568) = 0xE000000000000000;
  *(v1 + 576) = 0;
  *(v1 + 584) = 0xE000000000000000;
  v10 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__passResponse;
  v147 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__passResponse;
  v11 = sub_26BDA0810();
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__details;
  v148 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__details;
  v13 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  swift_beginAccess();
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_beginAccess();
  v16 = *(v1 + 24);
  *(v1 + 16) = v15;
  *(v1 + 24) = v14;

  swift_beginAccess();
  v17 = *(a1 + 32);
  swift_beginAccess();
  v18 = *(v1 + 32);
  *(v1 + 32) = v17;

  swift_beginAccess();
  v20 = *(a1 + 40);
  v19 = *(a1 + 48);
  swift_beginAccess();
  v21 = *(v1 + 48);
  *(v1 + 40) = v20;
  *(v1 + 48) = v19;

  swift_beginAccess();
  v23 = *(a1 + 56);
  v22 = *(a1 + 64);
  swift_beginAccess();
  v24 = *(v1 + 64);
  *(v1 + 56) = v23;
  *(v1 + 64) = v22;

  swift_beginAccess();
  v26 = *(a1 + 72);
  v25 = *(a1 + 80);
  v27 = v135;
  swift_beginAccess();
  v28 = *(v1 + 80);
  *v27 = v26;
  *(v1 + 80) = v25;

  swift_beginAccess();
  v30 = *(a1 + 88);
  v29 = *(a1 + 96);
  v31 = v136;
  swift_beginAccess();
  v32 = *(v1 + 96);
  *v31 = v30;
  *(v1 + 96) = v29;

  swift_beginAccess();
  v34 = *(a1 + 104);
  v33 = *(a1 + 112);
  v35 = v137;
  swift_beginAccess();
  v36 = *(v1 + 112);
  *v35 = v34;
  *(v1 + 112) = v33;

  swift_beginAccess();
  v38 = *(a1 + 120);
  v37 = *(a1 + 128);
  v39 = v138;
  swift_beginAccess();
  v40 = *(v1 + 128);
  *v39 = v38;
  *(v1 + 128) = v37;

  swift_beginAccess();
  v42 = *(a1 + 136);
  v41 = *(a1 + 144);
  v43 = v139;
  swift_beginAccess();
  v44 = *(v1 + 144);
  *v43 = v42;
  *(v1 + 144) = v41;

  swift_beginAccess();
  v46 = *(a1 + 152);
  v45 = *(a1 + 160);
  v47 = v140;
  swift_beginAccess();
  v48 = *(v1 + 160);
  *v47 = v46;
  *(v1 + 160) = v45;

  swift_beginAccess();
  v50 = *(a1 + 168);
  v49 = *(a1 + 176);
  v51 = v141;
  swift_beginAccess();
  v52 = *(v1 + 176);
  *v51 = v50;
  *(v1 + 176) = v49;

  swift_beginAccess();
  v54 = *(a1 + 184);
  v53 = *(a1 + 192);
  v55 = v142;
  swift_beginAccess();
  v56 = *(v1 + 192);
  *v55 = v54;
  *(v1 + 192) = v53;

  swift_beginAccess();
  v58 = *(a1 + 200);
  v57 = *(a1 + 208);
  v59 = v143;
  swift_beginAccess();
  v60 = *(v1 + 208);
  *v59 = v58;
  *(v1 + 208) = v57;

  swift_beginAccess();
  v62 = *(a1 + 216);
  v61 = *(a1 + 224);
  v63 = v144;
  swift_beginAccess();
  v64 = *(v1 + 224);
  *v63 = v62;
  *(v1 + 224) = v61;

  swift_beginAccess();
  v66 = *(a1 + 232);
  v65 = *(a1 + 240);
  v67 = v145;
  swift_beginAccess();
  v68 = *(v1 + 240);
  *v67 = v66;
  *(v1 + 240) = v65;

  swift_beginAccess();
  v70 = *(a1 + 248);
  v69 = *(a1 + 256);
  v71 = v146;
  swift_beginAccess();
  v72 = *(v1 + 256);
  *v71 = v70;
  *(v1 + 256) = v69;

  swift_beginAccess();
  v74 = *(a1 + 264);
  v73 = *(a1 + 272);
  swift_beginAccess();
  v75 = *(v1 + 272);
  *(v1 + 264) = v74;
  *(v1 + 272) = v73;

  swift_beginAccess();
  v77 = *(a1 + 280);
  v76 = *(a1 + 288);
  swift_beginAccess();
  v78 = *(v1 + 288);
  *(v1 + 280) = v77;
  *(v1 + 288) = v76;

  swift_beginAccess();
  v79 = *(a1 + 296);
  swift_beginAccess();
  v80 = *(v1 + 296);
  *(v1 + 296) = v79;

  swift_beginAccess();
  v81 = *(a1 + 304);
  swift_beginAccess();
  *(v1 + 304) = v81;
  swift_beginAccess();
  v83 = *(a1 + 312);
  v82 = *(a1 + 320);
  swift_beginAccess();
  v84 = *(v1 + 320);
  *(v1 + 312) = v83;
  *(v1 + 320) = v82;

  swift_beginAccess();
  v86 = *(a1 + 328);
  v85 = *(a1 + 336);
  swift_beginAccess();
  v87 = *(v1 + 336);
  *(v1 + 328) = v86;
  *(v1 + 336) = v85;

  swift_beginAccess();
  v89 = *(a1 + 344);
  v88 = *(a1 + 352);
  swift_beginAccess();
  v90 = *(v1 + 352);
  *(v1 + 344) = v89;
  *(v1 + 352) = v88;

  swift_beginAccess();
  v91 = *(a1 + 360);
  swift_beginAccess();
  v92 = *(v1 + 360);
  *(v1 + 360) = v91;

  swift_beginAccess();
  v94 = *(a1 + 368);
  v93 = *(a1 + 376);
  swift_beginAccess();
  v95 = *(v1 + 376);
  *(v1 + 368) = v94;
  *(v1 + 376) = v93;

  swift_beginAccess();
  v97 = *(a1 + 384);
  v96 = *(a1 + 392);
  swift_beginAccess();
  v98 = *(v1 + 392);
  *(v1 + 384) = v97;
  *(v1 + 392) = v96;

  swift_beginAccess();
  v99 = *(a1 + 400);
  swift_beginAccess();
  v100 = *(v1 + 400);
  *(v1 + 400) = v99;

  swift_beginAccess();
  v102 = *(a1 + 408);
  v101 = *(a1 + 416);
  swift_beginAccess();
  v103 = *(v1 + 416);
  *(v1 + 408) = v102;
  *(v1 + 416) = v101;

  swift_beginAccess();
  v105 = *(a1 + 424);
  v104 = *(a1 + 432);
  swift_beginAccess();
  v106 = *(v1 + 432);
  *(v1 + 424) = v105;
  *(v1 + 432) = v104;

  swift_beginAccess();
  v108 = *(a1 + 440);
  v107 = *(a1 + 448);
  swift_beginAccess();
  v109 = *(v1 + 448);
  *(v1 + 440) = v108;
  *(v1 + 448) = v107;

  swift_beginAccess();
  LOBYTE(v107) = *(a1 + 456);
  swift_beginAccess();
  *(v1 + 456) = v107;
  swift_beginAccess();
  v111 = *(a1 + 464);
  v110 = *(a1 + 472);
  swift_beginAccess();
  v112 = *(v1 + 472);
  *(v1 + 464) = v111;
  *(v1 + 472) = v110;

  swift_beginAccess();
  v114 = *(a1 + 480);
  v113 = *(a1 + 488);
  swift_beginAccess();
  v115 = *(v1 + 488);
  *(v1 + 480) = v114;
  *(v1 + 488) = v113;

  swift_beginAccess();
  v117 = *(a1 + 496);
  v116 = *(a1 + 504);
  swift_beginAccess();
  v118 = *(v1 + 504);
  *(v1 + 496) = v117;
  *(v1 + 504) = v116;

  swift_beginAccess();
  v119 = *(a1 + 512);
  v120 = *(a1 + 520);
  swift_beginAccess();
  v121 = *(v1 + 520);
  *(v1 + 512) = v119;
  *(v1 + 520) = v120;

  swift_beginAccess();
  v122 = *(a1 + 528);
  v123 = *(a1 + 536);
  swift_beginAccess();
  v124 = *(v1 + 536);
  *(v1 + 528) = v122;
  *(v1 + 536) = v123;

  swift_beginAccess();
  v125 = *(a1 + 544);
  v126 = *(a1 + 552);
  swift_beginAccess();
  v127 = *(v1 + 552);
  *(v1 + 544) = v125;
  *(v1 + 552) = v126;

  swift_beginAccess();
  v128 = *(a1 + 560);
  v129 = *(a1 + 568);
  swift_beginAccess();
  v130 = *(v1 + 568);
  *(v1 + 560) = v128;
  *(v1 + 568) = v129;

  swift_beginAccess();
  v131 = *(a1 + 576);
  v132 = *(a1 + 584);
  swift_beginAccess();
  v133 = *(v1 + 584);
  *(v1 + 576) = v131;
  *(v1 + 584) = v132;

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
  return v1;
}

void *sub_26BD48D04()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[26];

  v14 = v0[28];

  v15 = v0[30];

  v16 = v0[32];

  v17 = v0[34];

  v18 = v0[36];

  v19 = v0[37];

  v20 = v0[40];

  v21 = v0[42];

  v22 = v0[44];

  v23 = v0[45];

  v24 = v0[47];

  v25 = v0[49];

  v26 = v0[50];

  v27 = v0[52];

  v28 = v0[54];

  v29 = v0[56];

  v30 = v0[59];

  v31 = v0[61];

  v32 = v0[63];

  v33 = v0[65];

  v34 = v0[67];

  v35 = v0[69];

  v36 = v0[71];

  v37 = v0[73];

  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__passResponse, &qword_280448F88, &qword_26BDA5440);
  sub_26BD04E80(v0 + OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__details, &qword_28044A538, &qword_26BDA7110);
  return v0;
}

uint64_t sub_26BD48E9C(uint64_t (*a1)(void))
{
  v1 = *a1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x2821FE8D8]();
}

uint64_t sub_26BD48F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  v15 = *(v7 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = a5(0);
    OUTLINED_FUNCTION_119(v18);
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_36();
    v17 = a6(v19);
    *(v10 + v14) = v17;
  }

  return a7(v17, a1, a2, a3);
}

uint64_t sub_26BD49010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  while (1)
  {
    result = sub_26BDA0900();
    if (v5 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 21:
      case 22:
      case 23:
      case 25:
      case 26:
      case 28:
      case 29:
      case 30:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_17;
      case 2:
      case 27:
        swift_beginAccess();
        sub_26BDA0970();
        goto LABEL_17;
      case 19:
        swift_beginAccess();
        type metadata accessor for ExecuteResponse.Task(0);
        sub_26BD4F1A0(&qword_28044A598, type metadata accessor for ExecuteResponse.Task);
        sub_26BDA09A0();
        goto LABEL_17;
      case 20:
        swift_beginAccess();
        sub_26BDA0960();
        goto LABEL_17;
      case 24:
        swift_beginAccess();
        sub_26BDA0820();
        sub_26BDA08F0();
        goto LABEL_17;
      case 31:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_17;
      case 40:
        swift_beginAccess();
        sub_26BDA0810();
        sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
        sub_26BDA09B0();
LABEL_17:
        v5 = 0;
        swift_endAccess();
        continue;
      case 41:
        sub_26BD49790(a1, a2, a3, a4);
        goto LABEL_14;
      case 42:
        sub_26BD49CF8(a1, a2, a3, a4);
        goto LABEL_14;
      case 43:
        sub_26BD4A26C(a1, a2, a3, a4);
        goto LABEL_14;
      case 44:
        sub_26BD4A7E0(a1, a2, a3, a4);
        goto LABEL_14;
      case 45:
        sub_26BD4AD54(a1, a2, a3, a4);
LABEL_14:
        v5 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD49790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v46 = a4;
  v45 = a3;
  v5 = sub_26BDA0810();
  v42 = *(v5 - 8);
  v6 = *(v42 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v38 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v37 - v14;
  v16 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v37 - v26;
  __swift_storeEnumTagSinglePayload(v37 - v26, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__details;
  swift_beginAccess();
  v39 = a1;
  v37[1] = v28;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    sub_26BD4F024();
    sub_26BD4F024();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26BD4F0CC();
    }

    else
    {
      sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
      v30 = *(v42 + 32);
      v31 = v40;
      v30(v40, v20, v5);
      v30(v27, v31, v5);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
    }
  }

  sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
  v32 = v43;
  sub_26BDA09B0();
  if (v32)
  {
    v33 = v27;
    return sub_26BD04E80(v33, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) == 1)
  {
    sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
    v33 = v25;
    return sub_26BD04E80(v33, &qword_280448F88, &qword_26BDA5440);
  }

  v35 = *(v42 + 32);
  v35(v41, v25, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  v36 = v38;
  v35(v38, v41, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BD49CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v45 = a4;
  v44 = a3;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v36 - v26;
  __swift_storeEnumTagSinglePayload(v36 - v26, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__details;
  swift_beginAccess();
  v36[1] = v28;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    v36[0] = a1;
    sub_26BD4F024();
    sub_26BD4F024();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
      v29 = *(v41 + 32);
      v30 = v39;
      v29(v39, v20, v5);
      v29(v27, v30, v5);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
    }

    else
    {
      sub_26BD4F0CC();
    }
  }

  sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
  v31 = v42;
  sub_26BDA09B0();
  if (v31)
  {
    v32 = v27;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) == 1)
  {
    sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
    v32 = v25;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  v34 = *(v41 + 32);
  v34(v40, v25, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  v35 = v37;
  v34(v37, v40, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BD4A26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v45 = a4;
  v44 = a3;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v36 - v26;
  __swift_storeEnumTagSinglePayload(v36 - v26, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__details;
  swift_beginAccess();
  v36[1] = v28;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    v36[0] = a1;
    sub_26BD4F024();
    sub_26BD4F024();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
      v29 = *(v41 + 32);
      v30 = v39;
      v29(v39, v20, v5);
      v29(v27, v30, v5);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
    }

    else
    {
      sub_26BD4F0CC();
    }
  }

  sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
  v31 = v42;
  sub_26BDA09B0();
  if (v31)
  {
    v32 = v27;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) == 1)
  {
    sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
    v32 = v25;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  v34 = *(v41 + 32);
  v34(v40, v25, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  v35 = v37;
  v34(v37, v40, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BD4A7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v45 = a4;
  v44 = a3;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v36 - v26;
  __swift_storeEnumTagSinglePayload(v36 - v26, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__details;
  swift_beginAccess();
  v36[1] = v28;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    v36[0] = a1;
    sub_26BD4F024();
    sub_26BD4F024();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
      v29 = *(v41 + 32);
      v30 = v39;
      v29(v39, v20, v5);
      v29(v27, v30, v5);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
    }

    else
    {
      sub_26BD4F0CC();
    }
  }

  sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
  v31 = v42;
  sub_26BDA09B0();
  if (v31)
  {
    v32 = v27;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) == 1)
  {
    sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
    v32 = v25;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  v34 = *(v41 + 32);
  v34(v40, v25, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  v35 = v37;
  v34(v37, v40, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BD4AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v45 = a4;
  v44 = a3;
  v5 = sub_26BDA0810();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v37 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v36 - v14;
  v16 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v36 - v26;
  __swift_storeEnumTagSinglePayload(v36 - v26, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV15SupportServices15ExecuteResponseP33_40EE517D9B1CE1069F72471243228CDA13_StorageClass__details;
  swift_beginAccess();
  v36[1] = v28;
  sub_26BD04E2C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_26BD04E80(v15, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    v36[0] = a1;
    sub_26BD4F024();
    sub_26BD4F024();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
      v29 = *(v41 + 32);
      v30 = v39;
      v29(v39, v20, v5);
      v29(v27, v30, v5);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v5);
    }

    else
    {
      sub_26BD4F0CC();
    }
  }

  sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
  v31 = v42;
  sub_26BDA09B0();
  if (v31)
  {
    v32 = v27;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) == 1)
  {
    sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
    v32 = v25;
    return sub_26BD04E80(v32, &qword_280448F88, &qword_26BDA5440);
  }

  v34 = *(v41 + 32);
  v34(v40, v25, v5);
  if (EnumTagSinglePayload != 1)
  {
    sub_26BDA0910();
  }

  sub_26BD04E80(v27, &qword_280448F88, &qword_26BDA5440);
  v35 = v37;
  v34(v37, v40, v5);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v16);
  swift_beginAccess();
  sub_26BCFF2C8();
  return swift_endAccess();
}

uint64_t sub_26BD4B2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *(v5 + *(a4(0) + 20));
  OUTLINED_FUNCTION_129();
  result = a5();
  if (!v6)
  {
    OUTLINED_FUNCTION_167();
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BD4B370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v127 = v124 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v124 - v14;
  v16 = sub_26BDA0810();
  v125 = *(v16 - 8);
  v126 = v16;
  v17 = *(v125 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(a1 + 24);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = *(a1 + 24);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {
    v23 = *(a1 + 32);

    sub_26BDA0A90();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v24 = *(a1 + 48);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = *(a1 + 48);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 64);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = *(a1 + 64);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 80);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(a1 + 72) & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v32 = *(a1 + 80);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 96);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(a1 + 88) & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = *(a1 + 96);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v36 = *(a1 + 112);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v38 = *(a1 + 112);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v39 = *(a1 + 128);
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v41 = *(a1 + 128);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v42 = *(a1 + 144);
  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = *(a1 + 136) & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {
    v44 = *(a1 + 144);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v45 = *(a1 + 160);
  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
  }

  if (v46)
  {
    v47 = *(a1 + 160);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v48 = *(a1 + 176);
  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    v50 = *(a1 + 176);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v51 = *(a1 + 192);
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = *(a1 + 184) & 0xFFFFFFFFFFFFLL;
  }

  if (v52)
  {
    v53 = *(a1 + 192);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v54 = *(a1 + 208);
  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = *(a1 + 200) & 0xFFFFFFFFFFFFLL;
  }

  if (v55)
  {
    v56 = *(a1 + 208);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v57 = *(a1 + 224);
  v58 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v58 = *(a1 + 216) & 0xFFFFFFFFFFFFLL;
  }

  if (v58)
  {
    v59 = *(a1 + 224);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v60 = *(a1 + 240);
  v61 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v61 = *(a1 + 232) & 0xFFFFFFFFFFFFLL;
  }

  if (v61)
  {
    v62 = *(a1 + 240);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v63 = *(a1 + 256);
  v64 = HIBYTE(v63) & 0xF;
  if ((v63 & 0x2000000000000000) == 0)
  {
    v64 = *(a1 + 248) & 0xFFFFFFFFFFFFLL;
  }

  if (v64)
  {
    v65 = *(a1 + 256);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v66 = *(a1 + 272);
  v67 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v67 = *(a1 + 264) & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {
    v68 = *(a1 + 272);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v69 = *(a1 + 288);
  v70 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v70 = *(a1 + 280) & 0xFFFFFFFFFFFFLL;
  }

  if (v70)
  {
    v71 = *(a1 + 288);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 296) + 16))
  {
    v124[1] = type metadata accessor for ExecuteResponse.Task(0);
    sub_26BD4F1A0(&qword_28044A598, type metadata accessor for ExecuteResponse.Task);

    sub_26BDA0AC0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 304))
  {
    result = sub_26BDA0A80();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v73 = *(a1 + 320);
  v74 = HIBYTE(v73) & 0xF;
  if ((v73 & 0x2000000000000000) == 0)
  {
    v74 = *(a1 + 312) & 0xFFFFFFFFFFFFLL;
  }

  if (v74)
  {
    v75 = *(a1 + 320);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v76 = *(a1 + 336);
  v77 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x2000000000000000) == 0)
  {
    v77 = *(a1 + 328) & 0xFFFFFFFFFFFFLL;
  }

  if (v77)
  {
    v78 = *(a1 + 336);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v79 = *(a1 + 352);
  v80 = HIBYTE(v79) & 0xF;
  if ((v79 & 0x2000000000000000) == 0)
  {
    v80 = *(a1 + 344) & 0xFFFFFFFFFFFFLL;
  }

  if (v80)
  {
    v81 = *(a1 + 352);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 360) + 16))
  {
    sub_26BDA0820();

    sub_26BDA0A30();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v82 = *(a1 + 376);
  v83 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v83 = *(a1 + 368) & 0xFFFFFFFFFFFFLL;
  }

  if (v83)
  {
    v84 = *(a1 + 376);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v85 = *(a1 + 392);
  v86 = HIBYTE(v85) & 0xF;
  if ((v85 & 0x2000000000000000) == 0)
  {
    v86 = *(a1 + 384) & 0xFFFFFFFFFFFFLL;
  }

  if (v86)
  {
    v87 = *(a1 + 392);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 400) + 16))
  {
    v88 = *(a1 + 400);

    sub_26BDA0A90();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v89 = *(a1 + 416);
  v90 = HIBYTE(v89) & 0xF;
  if ((v89 & 0x2000000000000000) == 0)
  {
    v90 = *(a1 + 408) & 0xFFFFFFFFFFFFLL;
  }

  if (v90)
  {
    v91 = *(a1 + 416);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v92 = *(a1 + 432);
  v93 = HIBYTE(v92) & 0xF;
  if ((v92 & 0x2000000000000000) == 0)
  {
    v93 = *(a1 + 424) & 0xFFFFFFFFFFFFLL;
  }

  if (v93)
  {
    v94 = *(a1 + 432);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v95 = *(a1 + 448);
  v96 = HIBYTE(v95) & 0xF;
  if ((v95 & 0x2000000000000000) == 0)
  {
    v96 = *(a1 + 440) & 0xFFFFFFFFFFFFLL;
  }

  if (v96)
  {
    v97 = *(a1 + 448);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 456) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v98 = *(a1 + 472);
  v99 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v99 = *(a1 + 464) & 0xFFFFFFFFFFFFLL;
  }

  if (v99)
  {
    v100 = *(a1 + 472);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v101 = *(a1 + 488);
  v102 = HIBYTE(v101) & 0xF;
  if ((v101 & 0x2000000000000000) == 0)
  {
    v102 = *(a1 + 480) & 0xFFFFFFFFFFFFLL;
  }

  if (v102)
  {
    v103 = *(a1 + 488);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v104 = *(a1 + 504);
  v105 = HIBYTE(v104) & 0xF;
  if ((v104 & 0x2000000000000000) == 0)
  {
    v105 = *(a1 + 496) & 0xFFFFFFFFFFFFLL;
  }

  if (v105)
  {
    v106 = *(a1 + 504);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v107 = *(a1 + 520);
  v108 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v108 = *(a1 + 512) & 0xFFFFFFFFFFFFLL;
  }

  if (v108)
  {
    v109 = *(a1 + 520);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v110 = *(a1 + 536);
  v111 = HIBYTE(v110) & 0xF;
  if ((v110 & 0x2000000000000000) == 0)
  {
    v111 = *(a1 + 528) & 0xFFFFFFFFFFFFLL;
  }

  if (v111)
  {
    v112 = *(a1 + 536);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v113 = *(a1 + 552);
  v114 = HIBYTE(v113) & 0xF;
  if ((v113 & 0x2000000000000000) == 0)
  {
    v114 = *(a1 + 544) & 0xFFFFFFFFFFFFLL;
  }

  if (v114)
  {
    v115 = *(a1 + 552);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v116 = *(a1 + 568);
  v117 = HIBYTE(v116) & 0xF;
  if ((v116 & 0x2000000000000000) == 0)
  {
    v117 = *(a1 + 560) & 0xFFFFFFFFFFFFLL;
  }

  if (!v117)
  {
    goto LABEL_177;
  }

  v118 = *(a1 + 568);

  sub_26BDA0AB0();
  if (v4)
  {
  }

LABEL_177:
  swift_beginAccess();
  v119 = *(a1 + 584);
  v120 = HIBYTE(v119) & 0xF;
  if ((v119 & 0x2000000000000000) == 0)
  {
    v120 = *(a1 + 576) & 0xFFFFFFFFFFFFLL;
  }

  if (v120)
  {
    v121 = *(a1 + 584);

    sub_26BDA0AB0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v15, 1, v126) == 1)
  {
    sub_26BD04E80(v15, &qword_280448F88, &qword_26BDA5440);
  }

  else
  {
    (*(v125 + 32))(v19, v15, v126);
    sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
    sub_26BDA0AD0();
    if (v4)
    {
      return (*(v125 + 8))(v19, v126);
    }

    (*(v125 + 8))(v19, v126);
  }

  swift_beginAccess();
  v122 = v127;
  sub_26BD04E2C();
  v123 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  result = __swift_getEnumTagSinglePayload(v122, 1, v123);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_26BD4C838(a1, a2, a3, a4);
        break;
      case 2u:
        sub_26BD4CA8C(a1, a2, a3, a4);
        break;
      case 3u:
        sub_26BD4CCE0(a1, a2, a3, a4);
        break;
      case 4u:
        sub_26BD4CF34(a1, a2, a3, a4);
        break;
      default:
        sub_26BD4C5E8(a1, a2, a3, a4);
        break;
    }

    return sub_26BD4F0CC();
  }

  return result;
}

uint64_t sub_26BD4C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26BD04E2C();
  v13 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BD4F0CC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD4C838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26BD04E2C();
  v13 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BD4F0CC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD4CA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26BD04E2C();
  v13 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BD4F0CC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD4CCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26BD04E2C();
  v13 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BD4F0CC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD4CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[7] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_26BDA0810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26BD04E2C();
  v13 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    result = sub_26BD04E80(v7, &qword_28044A538, &qword_26BDA7110);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_26BD4F1A0(&qword_280449130, MEMORY[0x277D215C8]);
      sub_26BDA0AD0();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_26BD4F0CC();
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD4D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_184();
  v8 = *(v7(0) + 20);
  if (*(v5 + v8) != *(v4 + v8))
  {
    v9 = *(v5 + v8);

    v10 = OUTLINED_FUNCTION_173();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_66_0();
  sub_26BD4F1A0(v12, v13);
  return sub_26BDA0BB0() & 1;
}

BOOL sub_26BD4D290(uint64_t a1, uint64_t a2)
{
  v152 = type metadata accessor for ExecuteResponse.OneOf_Details(0);
  v4 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v147[1] = v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A640, &qword_26BDA7778);
  v6 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v153 = v147 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A538, &qword_26BDA7110);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v150 = v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v151 = v147 - v12;
  v154 = sub_26BDA0810();
  v148 = *(v154 - 8);
  v13 = *(v148 + 64);
  MEMORY[0x28223BE20](v154);
  v15 = v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490C8, &qword_26BDA7780);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v147 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v147 - v25;
  swift_beginAccess();
  v28 = *(a1 + 16);
  v27 = *(a1 + 24);
  swift_beginAccess();
  v29 = v28 == *(a2 + 16) && v27 == *(a2 + 24);
  if (!v29 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 32);
  swift_beginAccess();
  if ((sub_26BCFF1F4(v30, *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  swift_beginAccess();
  v33 = v31 == *(a2 + 40) && v32 == *(a2 + 48);
  if (!v33 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v34 = *(a1 + 56);
  v35 = *(a1 + 64);
  swift_beginAccess();
  v36 = v34 == *(a2 + 56) && v35 == *(a2 + 64);
  if (!v36 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v37 = *(a1 + 72);
  v38 = *(a1 + 80);
  swift_beginAccess();
  v39 = v37 == *(a2 + 72) && v38 == *(a2 + 80);
  if (!v39 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v40 = *(a1 + 88);
  v41 = *(a1 + 96);
  swift_beginAccess();
  v42 = v40 == *(a2 + 88) && v41 == *(a2 + 96);
  if (!v42 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 104);
  v44 = *(a1 + 112);
  swift_beginAccess();
  v45 = v43 == *(a2 + 104) && v44 == *(a2 + 112);
  if (!v45 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v46 = *(a1 + 120);
  v47 = *(a1 + 128);
  swift_beginAccess();
  v48 = v46 == *(a2 + 120) && v47 == *(a2 + 128);
  if (!v48 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v49 = *(a1 + 136);
  v50 = *(a1 + 144);
  swift_beginAccess();
  v51 = v49 == *(a2 + 136) && v50 == *(a2 + 144);
  if (!v51 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v52 = *(a1 + 152);
  v53 = *(a1 + 160);
  swift_beginAccess();
  v54 = v52 == *(a2 + 152) && v53 == *(a2 + 160);
  if (!v54 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v55 = *(a1 + 168);
  v56 = *(a1 + 176);
  swift_beginAccess();
  v57 = v55 == *(a2 + 168) && v56 == *(a2 + 176);
  if (!v57 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v58 = *(a1 + 184);
  v59 = *(a1 + 192);
  swift_beginAccess();
  v60 = v58 == *(a2 + 184) && v59 == *(a2 + 192);
  if (!v60 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v61 = *(a1 + 200);
  v62 = *(a1 + 208);
  swift_beginAccess();
  v63 = v61 == *(a2 + 200) && v62 == *(a2 + 208);
  if (!v63 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v64 = *(a1 + 216);
  v65 = *(a1 + 224);
  swift_beginAccess();
  v66 = v64 == *(a2 + 216) && v65 == *(a2 + 224);
  if (!v66 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v67 = *(a1 + 232);
  v68 = *(a1 + 240);
  swift_beginAccess();
  v69 = v67 == *(a2 + 232) && v68 == *(a2 + 240);
  if (!v69 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v70 = *(a1 + 248);
  v71 = *(a1 + 256);
  swift_beginAccess();
  v72 = v70 == *(a2 + 248) && v71 == *(a2 + 256);
  if (!v72 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v73 = *(a1 + 264);
  v74 = *(a1 + 272);
  swift_beginAccess();
  v75 = v73 == *(a2 + 264) && v74 == *(a2 + 272);
  if (!v75 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v76 = *(a1 + 280);
  v77 = *(a1 + 288);
  swift_beginAccess();
  v78 = v76 == *(a2 + 280) && v77 == *(a2 + 288);
  if (!v78 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v79 = *(a1 + 296);
  swift_beginAccess();
  v80 = *(a2 + 296);

  sub_26BD04ACC();
  LODWORD(v147[0]) = v81;

  if ((v147[0] & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v82 = *(a1 + 304);
  swift_beginAccess();
  if (v82 != *(a2 + 304))
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v83 = *(a1 + 312);
  v84 = *(a1 + 320);
  swift_beginAccess();
  v85 = v83 == *(a2 + 312) && v84 == *(a2 + 320);
  if (!v85 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v86 = *(a1 + 328);
  v87 = *(a1 + 336);
  swift_beginAccess();
  v88 = v86 == *(a2 + 328) && v87 == *(a2 + 336);
  if (!v88 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v89 = *(a1 + 344);
  v90 = *(a1 + 352);
  swift_beginAccess();
  v91 = v89 == *(a2 + 344) && v90 == *(a2 + 352);
  if (!v91 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v92 = *(a1 + 360);
  swift_beginAccess();
  v93 = *(a2 + 360);

  sub_26BD2F284(v92, v93);
  LODWORD(v147[0]) = v94;

  if ((v147[0] & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v95 = *(a1 + 368);
  v96 = *(a1 + 376);
  swift_beginAccess();
  v97 = v95 == *(a2 + 368) && v96 == *(a2 + 376);
  if (!v97 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v98 = *(a1 + 384);
  v99 = *(a1 + 392);
  swift_beginAccess();
  v100 = v98 == *(a2 + 384) && v99 == *(a2 + 392);
  if (!v100 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v101 = *(a1 + 400);
  swift_beginAccess();
  if ((sub_26BCFF1F4(v101, *(a2 + 400)) & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v102 = *(a1 + 408);
  v103 = *(a1 + 416);
  swift_beginAccess();
  v104 = v102 == *(a2 + 408) && v103 == *(a2 + 416);
  if (!v104 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v105 = *(a1 + 424);
  v106 = *(a1 + 432);
  swift_beginAccess();
  v107 = v105 == *(a2 + 424) && v106 == *(a2 + 432);
  if (!v107 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v108 = *(a1 + 440);
  v109 = *(a1 + 448);
  swift_beginAccess();
  v110 = v108 == *(a2 + 440) && v109 == *(a2 + 448);
  if (!v110 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v111 = *(a1 + 456);
  swift_beginAccess();
  if (v111 != *(a2 + 456))
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v113 = *(a1 + 464);
  v114 = *(a1 + 472);
  swift_beginAccess();
  v115 = v113 == *(a2 + 464) && v114 == *(a2 + 472);
  if (!v115 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v116 = *(a1 + 480);
  v117 = *(a1 + 488);
  swift_beginAccess();
  v118 = v116 == *(a2 + 480) && v117 == *(a2 + 488);
  if (!v118 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v119 = *(a1 + 496);
  v120 = *(a1 + 504);
  swift_beginAccess();
  v121 = v119 == *(a2 + 496) && v120 == *(a2 + 504);
  if (!v121 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v122 = *(a1 + 512);
  v123 = *(a1 + 520);
  swift_beginAccess();
  v124 = v122 == *(a2 + 512) && v123 == *(a2 + 520);
  if (!v124 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v125 = *(a1 + 528);
  v126 = *(a1 + 536);
  swift_beginAccess();
  v127 = v125 == *(a2 + 528) && v126 == *(a2 + 536);
  if (!v127 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v128 = *(a1 + 544);
  v129 = *(a1 + 552);
  swift_beginAccess();
  v130 = v128 == *(a2 + 544) && v129 == *(a2 + 552);
  if (!v130 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v131 = *(a1 + 560);
  v132 = *(a1 + 568);
  swift_beginAccess();
  v133 = v131 == *(a2 + 560) && v132 == *(a2 + 568);
  if (!v133 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  v134 = *(a1 + 576);
  v135 = *(a1 + 584);
  swift_beginAccess();
  v136 = v134 == *(a2 + 576) && v135 == *(a2 + 584);
  if (!v136 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_132;
  }

  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v137 = *(v16 + 48);
  sub_26BD04E2C();
  v147[0] = v137;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v19, 1, v154) != 1)
  {
    sub_26BD04E2C();
    if (__swift_getEnumTagSinglePayload(&v19[v147[0]], 1, v154) != 1)
    {
      v138 = v148;
      v139 = v154;
      (*(v148 + 32))(v15, &v19[v147[0]], v154);
      sub_26BD4F1A0(&qword_2804490D0, MEMORY[0x277D215C8]);
      LODWORD(v147[0]) = sub_26BDA0BB0();
      v140 = *(v138 + 8);
      v140(v15, v139);
      sub_26BD04E80(v26, &qword_280448F88, &qword_26BDA5440);
      v140(v24, v139);
      sub_26BD04E80(v19, &qword_280448F88, &qword_26BDA5440);
      if (v147[0])
      {
        goto LABEL_182;
      }

LABEL_132:

      return 0;
    }

    sub_26BD04E80(v26, &qword_280448F88, &qword_26BDA5440);
    (*(v148 + 8))(v24, v154);
LABEL_180:
    sub_26BD04E80(v19, &qword_2804490C8, &qword_26BDA7780);
    goto LABEL_132;
  }

  sub_26BD04E80(v26, &qword_280448F88, &qword_26BDA5440);
  if (__swift_getEnumTagSinglePayload(&v19[v147[0]], 1, v154) != 1)
  {
    goto LABEL_180;
  }

  sub_26BD04E80(v19, &qword_280448F88, &qword_26BDA5440);
LABEL_182:
  swift_beginAccess();
  sub_26BD04E2C();
  swift_beginAccess();
  v141 = *(v149 + 48);
  v142 = v153;
  sub_26BD04E2C();
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v142, 1, v152) == 1)
  {

    sub_26BD04E80(v151, &qword_28044A538, &qword_26BDA7110);
    if (__swift_getEnumTagSinglePayload(v153 + v141, 1, v152) == 1)
    {
      sub_26BD04E80(v153, &qword_28044A538, &qword_26BDA7110);
      return 1;
    }

    goto LABEL_187;
  }

  v143 = v153;
  sub_26BD04E2C();
  if (__swift_getEnumTagSinglePayload(v143 + v141, 1, v152) == 1)
  {

    sub_26BD04E80(v151, &qword_28044A538, &qword_26BDA7110);
    sub_26BD4F0CC();
LABEL_187:
    sub_26BD04E80(v153, &qword_28044A640, &qword_26BDA7778);
    return 0;
  }

  v144 = v153;
  sub_26BD4F024();
  static ExecuteResponse.OneOf_Details.== infix(_:_:)();
  v146 = v145;

  sub_26BD4F0CC();
  sub_26BD04E80(v151, &qword_28044A538, &qword_26BDA7110);
  sub_26BD4F0CC();
  sub_26BD04E80(v144, &qword_28044A538, &qword_26BDA7110);
  return (v146 & 1) != 0;
}

uint64_t sub_26BD4E6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD4F1A0(&qword_28044A630, type metadata accessor for ExecuteResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD4E74C(uint64_t a1)
{
  v2 = sub_26BD4F1A0(&qword_28044A580, type metadata accessor for ExecuteResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD4E7BC()
{
  sub_26BD4F1A0(&qword_28044A580, type metadata accessor for ExecuteResponse);

  return sub_26BDA0A00();
}

uint64_t sub_26BD4E858()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_28044A4B8);
  __swift_project_value_buffer(v0, qword_28044A4B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "guide_ids";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "localized_task_description";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "task_id";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "localized_task_title";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t ExecuteResponse.Task.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    OUTLINED_FUNCTION_167();
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_129();
        sub_26BDA0970();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 3:
        OUTLINED_FUNCTION_129();
        sub_26BDA0960();
        break;
      default:
        continue;
    }
  }
}

uint64_t ExecuteResponse.Task.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_8_2(), result = sub_26BDA0A90(), !v1))
  {
    v3 = v0[1];
    v4 = v0[2];
    OUTLINED_FUNCTION_29();
    if (!v5 || (OUTLINED_FUNCTION_8_2(), result = sub_26BDA0AB0(), !v1))
    {
      if (!v0[3] || (OUTLINED_FUNCTION_8_2(), result = sub_26BDA0A80(), !v1))
      {
        v6 = v0[4];
        v7 = v0[5];
        OUTLINED_FUNCTION_29();
        if (!v8 || (OUTLINED_FUNCTION_8_2(), result = sub_26BDA0AB0(), !v1))
        {
          v9 = v0 + *(type metadata accessor for ExecuteResponse.Task(0) + 32);
          OUTLINED_FUNCTION_129();
          return sub_26BDA0830();
        }
      }
    }
  }

  return result;
}

uint64_t static ExecuteResponse.Task.== infix(_:_:)()
{
  OUTLINED_FUNCTION_184();
  if ((sub_26BCFF1F4(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  v4 = v1[1] == v0[1] && v1[2] == v0[2];
  if (!v4 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (v1[3] != v0[3])
  {
    return 0;
  }

  v5 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ExecuteResponse.Task(0) + 32);
  sub_26BDA0850();
  OUTLINED_FUNCTION_66_0();
  sub_26BD4F1A0(v7, v8);
  return sub_26BDA0BB0() & 1;
}

uint64_t sub_26BD4EDB4(void (*a1)(void))
{
  sub_26BDA1050();
  a1(0);
  v2 = OUTLINED_FUNCTION_130();
  sub_26BD4F1A0(v2, v3);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD4EE94(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD4F1A0(&qword_28044A628, type metadata accessor for ExecuteResponse.Task);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD4EF14(uint64_t a1)
{
  v2 = sub_26BD4F1A0(&qword_28044A598, type metadata accessor for ExecuteResponse.Task);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD4EF84()
{
  sub_26BD4F1A0(&qword_28044A598, type metadata accessor for ExecuteResponse.Task);

  return sub_26BDA0A00();
}

uint64_t sub_26BD4F024()
{
  OUTLINED_FUNCTION_184();
  v2 = v1(0);
  OUTLINED_FUNCTION_26(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v0;
}

uint64_t sub_26BD4F078()
{
  OUTLINED_FUNCTION_184();
  v2 = v1(0);
  OUTLINED_FUNCTION_26(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_147();
  v6(v5);
  return v0;
}

uint64_t sub_26BD4F0CC()
{
  v1 = OUTLINED_FUNCTION_134();
  v3 = v2(v1);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_26BD4F1A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BD4F778()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteSupportOptionRequest.reportingContextMap.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD4F86C()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.caseID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD4F898()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.articleIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26BD4F8C4()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.solutionType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD4F8F0()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.solutionSubtype.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD4F91C()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.localizedCaseLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD4F948()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.localizedHeadline.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD4F974()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.localizedWhatsNext.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD4F9A0()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.localizedAddToCalendar.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD4F9CC()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.localizedAddComment.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD4F9F8()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.localizedEditComment.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_26BD4FA24()
{
  OUTLINED_FUNCTION_65_0();
  result = ExecuteResponse.localizedGetDirections.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}