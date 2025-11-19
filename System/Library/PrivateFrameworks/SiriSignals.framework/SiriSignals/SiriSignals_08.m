uint64_t type metadata accessor for SelectedActionDisambiguationFrequencySignal()
{
  result = qword_280D6EAF0;
  if (!qword_280D6EAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SelectedActionDisambiguationFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152E2C8(v3, v1, v2);
}

uint64_t sub_23152DE38@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for SelectedActionDisambiguationFrequencySignal();
  a3[3] = v6;
  a3[4] = &protocol witness table for SelectedActionDisambiguationFrequencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(v6 + 20);
  v9 = sub_231585D34();
  result = (*(*(v9 - 8) + 16))(boxed_opaque_existential_1 + v8, a2, v9);
  *boxed_opaque_existential_1 = &unk_284612838;
  *(boxed_opaque_existential_1 + *(v6 + 24)) = v5;
  return result;
}

uint64_t sub_23152DEF8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152E2C8(v3, v1, v2);
}

uint64_t _s11SiriSignals43SelectedActionDisambiguationFrequencySignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_5_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v16[3] = &type metadata for NoParameters;
  v16[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v8 = qword_280D72208;
  sub_2315144B0(v16, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6();
    v11 = v10(v9);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_23152E560, v12, byte_28460FCD0);
    v13 = OUTLINED_FUNCTION_3_3();
    v14(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

uint64_t sub_23152E0E8(_OWORD *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = OUTLINED_FUNCTION_9();
  v7 = OUTLINED_FUNCTION_5_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v21[3] = &type metadata for SignalComputationContext;
  v21[4] = &protocol witness table for SignalComputationContext;
  v10 = swift_allocObject();
  v21[0] = v10;
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v10[3] = a1[2];
  sub_2314B5008(a1, v20);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v12 = qword_280D72208;
  sub_2315144B0(v21, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = OUTLINED_FUNCTION_6();
    v15 = v14(v13);
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_23152E540, v16, byte_28460FCD0);
    v17 = OUTLINED_FUNCTION_3_3();
    v18(v17);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v12;
}

uint64_t sub_23152E2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = a2;
  v20[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v20, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = (*(v11 + 32))(v14, v9, v10);
    MEMORY[0x28223BE20](v17);
    *(&v19 - 2) = v14;
    v16 = sub_23150466C(sub_23152E560, (&v19 - 4), byte_28460FCD0);
    (*(v11 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v16;
}

uint64_t static SelectedAppDisambiguationFrequencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5BBB8 = a1;
  *(&xmmword_27DD5BBB8 + 1) = a2;
  byte_27DD5BBC8 = a3;
  return result;
}

double sub_23152E654@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5BBC8;
  result = *&xmmword_27DD5BBB8;
  *a1 = xmmword_27DD5BBB8;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_23152E6A8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5BBB8 = v1;
  *(&xmmword_27DD5BBB8 + 1) = v2;
  byte_27DD5BBC8 = v3;
  return result;
}

uint64_t sub_23152E700()
{
  OUTLINED_FUNCTION_8_1();
  result = sub_231586964();
  qword_280D6EBC0 = result;
  qword_280D6EBC8 = v1;
  return result;
}

uint64_t *sub_23152E748()
{
  if (qword_280D6EBB8 != -1)
  {
    OUTLINED_FUNCTION_0_73();
  }

  return &qword_280D6EBC0;
}

uint64_t static SelectedAppDisambiguationFrequencySignal.signalName.getter()
{
  if (qword_280D6EBB8 != -1)
  {
    OUTLINED_FUNCTION_0_73();
  }

  OUTLINED_FUNCTION_8_1();
  v0 = qword_280D6EBC0;

  return v0;
}

uint64_t static SelectedAppDisambiguationFrequencySignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6EBB8 != -1)
  {
    OUTLINED_FUNCTION_0_73();
  }

  swift_beginAccess();
  qword_280D6EBC0 = a1;
  qword_280D6EBC8 = a2;
}

uint64_t (*static SelectedAppDisambiguationFrequencySignal.signalName.modify())()
{
  if (qword_280D6EBB8 != -1)
  {
    OUTLINED_FUNCTION_0_73();
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

uint64_t sub_23152E8D0@<X0>(void *a1@<X8>)
{
  sub_23152E748();
  swift_beginAccess();
  v2 = qword_280D6EBC8;
  *a1 = qword_280D6EBC0;
  a1[1] = v2;
}

uint64_t sub_23152E924(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23152E748();
  swift_beginAccess();
  qword_280D6EBC0 = v2;
  qword_280D6EBC8 = v1;
}

uint64_t SelectedAppDisambiguationFrequencySignal.id.getter()
{
  if (qword_280D6EBB8 != -1)
  {
    OUTLINED_FUNCTION_0_73();
  }

  swift_beginAccess();
  v1 = qword_280D6EBC0;
  v2 = qword_280D6EBC8;

  MEMORY[0x23192FF80](v1, v2);

  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v4 = *(v0 + *(type metadata accessor for SelectedAppDisambiguationFrequencySignal() + 24));
  sub_231586A54();
  return 0;
}

uint64_t type metadata accessor for SelectedAppDisambiguationFrequencySignal()
{
  result = qword_280D6EBA0;
  if (!qword_280D6EBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static SelectedAppDisambiguationFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152EF8C(v3, v1, v2);
}

uint64_t sub_23152EAFC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for SelectedAppDisambiguationFrequencySignal();
  a3[3] = v6;
  a3[4] = &protocol witness table for SelectedAppDisambiguationFrequencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(v6 + 20);
  v9 = sub_231585D34();
  result = (*(*(v9 - 8) + 16))(boxed_opaque_existential_1 + v8, a2, v9);
  *boxed_opaque_existential_1 = &unk_284612860;
  *(boxed_opaque_existential_1 + *(v6 + 24)) = v5;
  return result;
}

uint64_t sub_23152EBBC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23152EF8C(v3, v1, v2);
}

uint64_t _s11SiriSignals40SelectedAppDisambiguationFrequencySignalV9instancesSayAA0G9Providing_pGyFZ_0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_5_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v16[3] = &type metadata for NoParameters;
  v16[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v8 = qword_280D72208;
  sub_2315144B0(v16, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6();
    v11 = v10(v9);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_23152F224, v12, byte_28460FCD0);
    v13 = OUTLINED_FUNCTION_3_3();
    v14(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

uint64_t sub_23152EDAC(_OWORD *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = OUTLINED_FUNCTION_9();
  v7 = OUTLINED_FUNCTION_5_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v21[3] = &type metadata for SignalComputationContext;
  v21[4] = &protocol witness table for SignalComputationContext;
  v10 = swift_allocObject();
  v21[0] = v10;
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v10[3] = a1[2];
  sub_2314B5008(a1, v20);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v12 = qword_280D72208;
  sub_2315144B0(v21, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = OUTLINED_FUNCTION_6();
    v15 = v14(v13);
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_23152F204, v16, byte_28460FCD0);
    v17 = OUTLINED_FUNCTION_3_3();
    v18(v17);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v12;
}

uint64_t sub_23152EF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = a2;
  v20[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v20, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = (*(v11 + 32))(v14, v9, v10);
    MEMORY[0x28223BE20](v17);
    *(&v19 - 2) = v14;
    v16 = sub_23150466C(sub_23152F224, (&v19 - 4), byte_28460FCD0);
    (*(v11 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v16;
}

uint64_t sub_23152F23C@<X0>(void *a1@<X8>)
{
  v2 = sub_231586674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_231586654();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v10 = sub_231586064();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_5();
  sub_2314AA3E8();
  sub_231586054();
  sub_23151FBD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_23151FC30();
  sub_2315867C4();
  v12 = *MEMORY[0x277D85260];
  v13 = *(v3 + 104);
  v13(v7, v12, v2);
  OUTLINED_FUNCTION_1_31();
  v14 = sub_2315866A4();
  sub_231586644();
  sub_231586054();
  v13(v7, v12, v2);
  OUTLINED_FUNCTION_1_31();
  result = sub_2315866A4();
  *a1 = 0x6C6169726573;
  a1[1] = 0xE600000000000000;
  a1[2] = v14;
  a1[3] = 0x6C656C6C61726170;
  a1[4] = 0xE800000000000000;
  a1[5] = result;
  return result;
}

uint64_t INFERENCESchemaINFERENCECommonAppIndependentSignals.description.getter()
{
  OUTLINED_FUNCTION_6_18();
  sub_231586954();
  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawLanguage];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawLocale];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawStateOrProvince];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawCountry];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawRequestDeviceCategory];
  v1 = OUTLINED_FUNCTION_2_27();
  MEMORY[0x23192FF80](v1);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 clientDayOfWeek];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 rawClientHourOfDay];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000018);
  [v0 isClientDaylight];
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 appResolutionType];
  sub_231586704();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 sirikitResponseCode];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000018);
  [v0 appSelectionUses];
  v2 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v2);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 modelVersion];
  v3 = sub_231586C24();
  MEMORY[0x23192FF80](v3);

  MEMORY[0x23192FF80](2099257354, 0xE400000000000000);
  return v5;
}

uint64_t INFERENCESchemaINFERENCECommonAppDependentSignals.description.getter()
{
  v1 = v0;
  v2 = 1162760014;
  OUTLINED_FUNCTION_6_18();
  sub_231586954();
  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  sub_231530494(v0);
  v3 = 0xE400000000000000;
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 isFirstPartyBundle];
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 isForegroundApp];
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 isResolvedApp];
  OUTLINED_FUNCTION_7_21();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 appScoreFromModel];
  sub_2315864F4();
  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000023);
  [v0 compoundActiveBundleScore];
  sub_2315864E4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 totalTimeSpentByUserInAppPerDay];
  sub_231586C24();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000023);
  [v0 timeSpentByUserInAppToday];
  sub_231586C24();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 timeSinceAppLastLaunchedInSec];
  sub_231586C24();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  v4 = [v0 appDependentFrequencyAndRecencySignals];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 description];

    v7 = sub_2315861A4();
    v3 = v8;
  }

  else
  {
    v7 = 1162760014;
  }

  MEMORY[0x23192FF80](v7, v3);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  v9 = [v1 appDependentEntityFrequencyAndRecencySignals];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v2 = sub_2315861A4();
    v13 = v12;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x23192FF80](v2, v13);

  MEMORY[0x23192FF80](0x7D202020200ALL, 0xE600000000000000);
  return v15;
}

id sub_23152FC78(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_231586174();

  return v5;
}

uint64_t INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals.description.getter()
{
  OUTLINED_FUNCTION_6_18();
  sub_231586954();
  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 appUsageCount2Min];
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD00000000000001ELL);
  [v0 appUsageCount10Min];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD00000000000001CLL);
  [v0 appUsageCount1Hr];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD00000000000001DLL);
  [v0 appUsageCount6Hrs];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_8_17();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD00000000000001DLL);
  [v0 appUsageCount1Day];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD00000000000001ELL);
  [v0 appUsageCount7Days];
  v1 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v1);

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD00000000000001FLL);
  [v0 appUsageCount14Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD00000000000001FLL);
  [v0 appUsageCount28Days];
  v2 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v2);

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD00000000000001CLL);
  [v0 appUsageCountInf];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000021);
  [v0 recencyOrderOfAppUsed];
  v3 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v3);

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000021);
  [v0 timeSinceAppUsedInSec];
  sub_231586C24();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000025);
  [v0 appUsageCountFromSiri2Min];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000026);
  [v0 appUsageCountFromSiri10Min];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000024);
  [v0 appUsageCountFromSiri1Hr];
  v4 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v4);

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000025);
  [v0 appUsageCountFromSiri6Hrs];
  v5 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v5);

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000025);
  [v0 appUsageCountFromSiri1Day];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_8_17();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000026);
  [v0 appUsageCountFromSiri7Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_8_17();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000027);
  [v0 appUsageCountFromSiri14Days];
  v6 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v6);

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000027);
  [v0 appUsageCountFromSiri28Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_8_17();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000024);
  [v0 appUsageCountFromSiriInf];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_0_74();
  OUTLINED_FUNCTION_9_14();
  [v0 recencyOrderOfAppUsageFromSiri];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_5_22();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80](0xD000000000000029);
  [v0 timeSinceAppUsedFromSiriInSec];
  sub_231586C24();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  OUTLINED_FUNCTION_9_14();
  [v0 taskAbandonCountInUsingApp2Min];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 taskAbandonCountInUsingApp10Min];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000029);
  [v0 taskAbandonCountInUsingApp1Hr];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  OUTLINED_FUNCTION_9_14();
  [v0 taskAbandonCountInUsingApp6Hrs];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  OUTLINED_FUNCTION_9_14();
  [v0 taskAbandonCountInUsingApp1Day];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 taskAbandonCountInUsingApp7Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 taskAbandonCountInUsingApp14Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_12();
  MEMORY[0x23192FF80]();
  [v0 taskAbandonCountInUsingApp28Days];
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_4_23();

  OUTLINED_FUNCTION_0_74();
  MEMORY[0x23192FF80](0xD000000000000029);
  [v0 taskAbandonCountInUsingAppInf];
  v7 = OUTLINED_FUNCTION_1_32();
  MEMORY[0x23192FF80](v7);

  MEMORY[0x23192FF80](0x7D2020202020200ALL, 0xE800000000000000);
  return v9;
}

uint64_t sub_231530494(void *a1)
{
  v1 = [a1 appBundleId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2315861A4();

  return v3;
}

void *SELFMessageBuilding.populateCommonIndependent(from:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = [objc_allocWithZone(MEMORY[0x277D58218]) init];
  if (v3)
  {
    v4 = v3;
    if (qword_280D6F7B0 != -1)
    {
      swift_once();
    }

    v5 = [v4 rawLanguage];
    v6 = OUTLINED_FUNCTION_0_75();
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    [v4 setRawLanguage_];
    if (qword_280D6F8D8 != -1)
    {
      swift_once();
    }

    v9 = [v4 rawLocale];
    v10 = OUTLINED_FUNCTION_0_75();
    if (v11)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    [v4 setRawLocale_];
    if (qword_280D6F8F8 != -1)
    {
      swift_once();
    }

    v13 = [v4 rawRequestDeviceCategory];
    v14 = OUTLINED_FUNCTION_1_33();
    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    [v4 setRawRequestDeviceCategory_];
    OUTLINED_FUNCTION_3_27();
    OUTLINED_FUNCTION_2_28();
    sub_231586A54();
    v17 = [v4 rawClientHourOfDay];
    v18 = OUTLINED_FUNCTION_1_33();
    v20 = v19;

    v21 = 0x7FFFFFFF;
    if (v18 < 0x7FFFFFFF)
    {
      v21 = v18;
    }

    if (v18 >= 0xFFFFFFFF80000000)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0x80000000;
    }

    if (v20)
    {
      v23 = v17;
    }

    else
    {
      v23 = v22;
    }

    [v4 setRawClientHourOfDay_];
    OUTLINED_FUNCTION_3_27();
    OUTLINED_FUNCTION_2_28();
    sub_231586A54();
    v24 = [v4 clientDayOfWeek];
    v25 = sub_2315414E8(v37, v38, 0, 0);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      if (v25 < 0xFFFFFFFF80000000)
      {
        v24 = 0x80000000;
      }

      else if (v25 >= 0x7FFFFFFF)
      {
        v24 = 0x7FFFFFFFLL;
      }

      else
      {
        v24 = v25;
      }
    }

    [v4 setClientDayOfWeek_];
    if (qword_27DD5AD58 != -1)
    {
      swift_once();
    }

    v28 = [v4 isClientDaylight];
    v29 = OUTLINED_FUNCTION_0_75() != 0;
    if (v30)
    {
      v31 = v28;
    }

    else
    {
      v31 = v29;
    }

    [v4 setIsClientDaylight_];
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v32 = sub_231585FF4();
    __swift_project_value_buffer(v32, qword_280D72248);
    v33 = sub_231585FE4();
    v34 = sub_2315865E4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_231496000, v33, v34, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppIndependentSignals", v35, 2u);
      MEMORY[0x231931280](v35, -1, -1);
    }

    return 0;
  }

  return v4;
}

uint64_t SELFMessageBuilding.populateCommonDependents(from:domainUseCase:)(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a2;
  v8[2] = a3;
  v8[3] = a4;
  v8[6] = v4;
  v9 = v6;
  return sub_2314DD244(sub_231531CAC, v8, v4);
}

void *sub_231530998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unsigned __int8 a4@<W4>, void *a5@<X8>)
{
  v9[1] = a3;
  v6 = *a1;
  v7 = a1[1];
  v9[0] = a2;
  v10 = a4;
  result = sub_231530A00(v9, &v10, v6, v7);
  *a5 = result;
  return result;
}

void *sub_231530A00(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = [objc_allocWithZone(MEMORY[0x277D58210]) init];
  if (v9)
  {
    v10 = v9;
    v11 = sub_231586174();
    [v10 setAppBundleId_];

    if (qword_280D6D5F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v12 = qword_280D6D600;
    v13 = qword_280D6D608;

    v14 = [v10 totalTimeSpentByUserInAppPerDay];
    v59 = v6;
    v60 = v7;
    v15 = sub_2315414E8(v12, v13, a3, a4);
    v17 = v16;

    v18 = -1;
    if (v15 < 0xFFFFFFFF)
    {
      v18 = v15;
    }

    if (v15 < 0)
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18;
    }

    [v10 setTotalTimeSpentByUserInAppPerDay_];
    if (qword_27DD5AE50 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = qword_27DD5C198;
    v21 = qword_27DD5C1A0;

    v22 = [v10 timeSpentByUserInAppToday];
    v57 = v6;
    v58 = v7;
    v23 = sub_2315414E8(v20, v21, a3, a4);
    v25 = v24;

    v26 = -1;
    if (v23 < 0xFFFFFFFF)
    {
      v26 = v23;
    }

    if (v23 < 0)
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v22;
    }

    else
    {
      v27 = v26;
    }

    [v10 setTimeSpentByUserInAppToday_];
    if (qword_280D6F020 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v28 = qword_280D6F028;
    v29 = qword_280D6F030;

    v30 = [v10 timeSinceAppLastLaunchedInSec];
    v55 = v6;
    v56 = v7;
    v31 = sub_2315414E8(v28, v29, a3, a4);
    v33 = v32;

    v34 = 0x7FFFFFFF;
    if (v31 < 0x7FFFFFFF)
    {
      v34 = v31;
    }

    if (v31 >= 0xFFFFFFFF80000000)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0x80000000;
    }

    if (v33)
    {
      v36 = v30;
    }

    else
    {
      v36 = v35;
    }

    [v10 setTimeSinceAppLastLaunchedInSec_];
    if (qword_280D6CE18 != -1)
    {
      swift_once();
    }

    v37 = qword_280D6CE20;
    v38 = *algn_280D6CE28;
    v39 = [v10 isForegroundApp];
    v55 = v6;
    v56 = v7;
    v40 = sub_2315414E8(v37, v38, a3, a4) != 0;
    if (v41)
    {
      v42 = v39;
    }

    else
    {
      v42 = v40;
    }

    [v10 setIsForegroundApp_];
    v43 = [v10 isFirstPartyBundle];
    v55 = v6;
    v56 = v7;
    v44 = sub_2315414E8(0xD000000000000016, 0x80000002315917D0, a3, a4) != 0;
    if (v45)
    {
      v46 = v43;
    }

    else
    {
      v46 = v44;
    }

    [v10 setIsFirstPartyBundle_];
    if (v8 != 17)
    {
      v55 = v6;
      v56 = v7;
      v54 = v8;
      v47 = sub_231530EF8(&v55, a3, a4, &v54);
      if (v47)
      {
        v48 = v47;
        [v10 setAppDependentFrequencyAndRecencySignals_];
      }
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v49 = sub_231585FF4();
    __swift_project_value_buffer(v49, qword_280D72248);
    v50 = sub_231585FE4();
    v51 = sub_2315865E4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_231496000, v50, v51, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppDependentSignals", v52, 2u);
      MEMORY[0x231931280](v52, -1, -1);
    }

    return 0;
  }

  return v10;
}

void *sub_231530EF8(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *a1;
  v175 = a1[1];
  v7 = *a4;
  v8 = [objc_allocWithZone(MEMORY[0x277D58208]) init];
  if (v8)
  {
    v9 = v8;
    if (qword_280D6D6B0 != -1)
    {
      swift_once();
    }

    v10 = qword_280D6D6B8;
    v11 = unk_280D6D6C0;
    v176 = DomainUseCase.rawValue.getter();
    v178 = v12;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v10, v11);
    v13 = [v9 timeSinceAppUsedInSec];
    v14 = sub_2315414E8(v176, v178, a2, a3);
    LOBYTE(v10) = v15;

    if (v10)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    [v9 setTimeSinceAppUsedInSec_];
    if (qword_280D6CEE8 != -1)
    {
      swift_once();
    }

    v17 = qword_280D6CEF0;
    v18 = unk_280D6CEF8;
    v177 = DomainUseCase.rawValue.getter();
    v179 = v19;
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v17, v18);
    v20 = [v9 recencyOrderOfAppUsed];
    v21 = sub_2315414E8(v177, v179, a2, a3);
    v23 = v22;

    v24 = 0x7FFFFFFF;
    if (v21 < 0x7FFFFFFF)
    {
      v24 = v21;
    }

    if (v21 >= 0xFFFFFFFF80000000)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0x80000000;
    }

    if (v23)
    {
      v26 = v20;
    }

    else
    {
      v26 = v25;
    }

    [v9 setRecencyOrderOfAppUsed_];
    v27 = v9;
    if (qword_280D6D2E0 != -1)
    {
      swift_once();
    }

    v28 = qword_280D6D2E8;
    v29 = unk_280D6D2F0;
    DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v28, v29);
    v30 = sub_231531C44();
    v32 = v31;
    v33 = [v9 appUsageCount2Min];
    v34 = sub_2315414E8(v30, v32, a2, a3);
    v36 = v35;

    v37 = 0x7FFFFFFF;
    if (v34 < 0x7FFFFFFF)
    {
      v37 = v34;
    }

    if (v34 >= 0xFFFFFFFF80000000)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0x80000000;
    }

    if (v36)
    {
      v39 = v33;
    }

    else
    {
      v39 = v38;
    }

    [v27 setAppUsageCount2Min_];
    v40 = sub_231531C44();
    v42 = v41;
    v173 = [v27 appUsageCount10Min];
    v43 = sub_2315414E8(v40, v42, a2, a3);
    v45 = v44;

    v46 = 0x7FFFFFFF;
    if (v43 < 0x7FFFFFFF)
    {
      v46 = v43;
    }

    if (v43 >= 0xFFFFFFFF80000000)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0x80000000;
    }

    if (v45)
    {
      v48 = v173;
    }

    else
    {
      v48 = v47;
    }

    [v27 setAppUsageCount10Min_];
    v49 = sub_231531C44();
    v51 = v50;
    v52 = [v27 appUsageCount1Hr];
    v53 = sub_2315414E8(v49, v51, a2, a3);
    v55 = v54;

    v56 = 0x7FFFFFFF;
    if (v53 < 0x7FFFFFFF)
    {
      v56 = v53;
    }

    if (v53 >= 0xFFFFFFFF80000000)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0x80000000;
    }

    if (v55)
    {
      v58 = v52;
    }

    else
    {
      v58 = v57;
    }

    [v27 setAppUsageCount1Hr_];
    v59 = sub_231531C44();
    v61 = v60;
    v62 = [v27 appUsageCount6Hrs];
    v63 = sub_2315414E8(v59, v61, a2, a3);
    v65 = v64;

    v66 = 0x7FFFFFFF;
    if (v63 < 0x7FFFFFFF)
    {
      v66 = v63;
    }

    if (v63 >= 0xFFFFFFFF80000000)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0x80000000;
    }

    if (v65)
    {
      v68 = v62;
    }

    else
    {
      v68 = v67;
    }

    [v27 setAppUsageCount6Hrs_];
    v69 = sub_231531C44();
    v71 = v70;
    v174 = [v27 appUsageCount1Day];
    v72 = sub_2315414E8(v69, v71, a2, a3);
    v74 = v73;

    v75 = 0x7FFFFFFF;
    if (v72 < 0x7FFFFFFF)
    {
      v75 = v72;
    }

    if (v72 >= 0xFFFFFFFF80000000)
    {
      v76 = v75;
    }

    else
    {
      v76 = 0x80000000;
    }

    if (v74)
    {
      v77 = v174;
    }

    else
    {
      v77 = v76;
    }

    [v27 setAppUsageCount1Day_];
    v78 = sub_231531C44();
    v80 = v79;
    v81 = [v27 appUsageCount7Days];
    v82 = sub_2315414E8(v78, v80, a2, a3);
    v84 = v83;

    v85 = 0x7FFFFFFF;
    if (v82 < 0x7FFFFFFF)
    {
      v85 = v82;
    }

    if (v82 >= 0xFFFFFFFF80000000)
    {
      v86 = v85;
    }

    else
    {
      v86 = 0x80000000;
    }

    if (v84)
    {
      v87 = v81;
    }

    else
    {
      v87 = v86;
    }

    [v27 setAppUsageCount7Days_];
    v88 = sub_231531C44();
    v90 = v89;
    v91 = [v27 appUsageCount28Days];
    v92 = sub_2315414E8(v88, v90, a2, a3);
    v94 = v93;

    v95 = 0x7FFFFFFF;
    if (v92 < 0x7FFFFFFF)
    {
      v95 = v92;
    }

    if (v92 >= 0xFFFFFFFF80000000)
    {
      v96 = v95;
    }

    else
    {
      v96 = 0x80000000;
    }

    if (v94)
    {
      v97 = v91;
    }

    else
    {
      v97 = v96;
    }

    [v27 setAppUsageCount28Days_];
    v98 = sub_231531C44();
    v100 = v99;

    v101 = [v27 appUsageCountInf];
    v102 = sub_2315414E8(v98, v100, a2, a3);
    v104 = v103;

    v105 = 0x7FFFFFFF;
    if (v102 < 0x7FFFFFFF)
    {
      v105 = v102;
    }

    if (v102 >= 0xFFFFFFFF80000000)
    {
      v106 = v105;
    }

    else
    {
      v106 = 0x80000000;
    }

    if (v104)
    {
      v107 = v101;
    }

    else
    {
      v107 = v106;
    }

    [v27 setAppUsageCountInf_];
    v108 = v27;
    if (qword_280D6CB18 != -1)
    {
      swift_once();
    }

    v109 = qword_280D6CB20;
    v110 = *algn_280D6CB28;
    DomainUseCase.rawValue.getter();
    MEMORY[0x23192FF80](46, 0xE100000000000000);
    MEMORY[0x23192FF80](v109, v110);
    v111 = sub_231531C44();
    v113 = v112;
    v114 = [v27 taskAbandonCountInUsingApp2Min];
    v115 = sub_2315414E8(v111, v113, a2, a3);
    v117 = v116;

    v118 = 0x7FFFFFFF;
    if (v115 < 0x7FFFFFFF)
    {
      v118 = v115;
    }

    if (v115 >= 0xFFFFFFFF80000000)
    {
      v119 = v118;
    }

    else
    {
      v119 = 0x80000000;
    }

    if (v117)
    {
      v120 = v114;
    }

    else
    {
      v120 = v119;
    }

    [v27 setTaskAbandonCountInUsingApp2Min_];
    v121 = sub_231531C44();
    v123 = v122;
    v124 = [v27 taskAbandonCountInUsingApp10Min];
    v125 = sub_2315414E8(v121, v123, a2, a3);
    v127 = v126;

    v128 = 0x7FFFFFFF;
    if (v125 < 0x7FFFFFFF)
    {
      v128 = v125;
    }

    if (v125 >= 0xFFFFFFFF80000000)
    {
      v129 = v128;
    }

    else
    {
      v129 = 0x80000000;
    }

    if (v127)
    {
      v130 = v124;
    }

    else
    {
      v130 = v129;
    }

    [v27 setTaskAbandonCountInUsingApp10Min_];
    v131 = sub_231531C44();
    v133 = v132;
    v134 = [v27 taskAbandonCountInUsingApp1Hr];
    v135 = sub_2315414E8(v131, v133, a2, a3);
    LOBYTE(v131) = v136;

    if ((v131 & 1) == 0)
    {
      if (v135 < 0xFFFFFFFF80000000)
      {
        v134 = 0x80000000;
      }

      else if (v135 >= 0x7FFFFFFF)
      {
        v134 = 0x7FFFFFFFLL;
      }

      else
      {
        v134 = v135;
      }
    }

    [v27 setTaskAbandonCountInUsingApp1Hr_];
    v137 = sub_231531C44();
    v139 = v138;
    v140 = [v27 taskAbandonCountInUsingApp6Hrs];
    v141 = sub_2315414E8(v137, v139, a2, a3);
    LOBYTE(v137) = v142;

    if ((v137 & 1) == 0)
    {
      if (v141 < 0xFFFFFFFF80000000)
      {
        v140 = 0x80000000;
      }

      else if (v141 >= 0x7FFFFFFF)
      {
        v140 = 0x7FFFFFFFLL;
      }

      else
      {
        v140 = v141;
      }
    }

    [v27 setTaskAbandonCountInUsingApp6Hrs_];
    v143 = sub_231531C44();
    v145 = v144;
    v146 = [v27 taskAbandonCountInUsingApp1Day];
    v147 = sub_2315414E8(v143, v145, a2, a3);
    LOBYTE(v143) = v148;

    if ((v143 & 1) == 0)
    {
      if (v147 < 0xFFFFFFFF80000000)
      {
        v146 = 0x80000000;
      }

      else if (v147 >= 0x7FFFFFFF)
      {
        v146 = 0x7FFFFFFFLL;
      }

      else
      {
        v146 = v147;
      }
    }

    [v27 setTaskAbandonCountInUsingApp1Day_];
    v149 = sub_231531C44();
    v151 = v150;
    v152 = [v27 taskAbandonCountInUsingApp7Days];
    v153 = sub_2315414E8(v149, v151, a2, a3);
    LOBYTE(v149) = v154;

    if ((v149 & 1) == 0)
    {
      if (v153 < 0xFFFFFFFF80000000)
      {
        v152 = 0x80000000;
      }

      else if (v153 >= 0x7FFFFFFF)
      {
        v152 = 0x7FFFFFFFLL;
      }

      else
      {
        v152 = v153;
      }
    }

    [v27 setTaskAbandonCountInUsingApp7Days_];
    v155 = sub_231531C44();
    v157 = v156;
    v158 = [v27 taskAbandonCountInUsingApp28Days];
    v159 = sub_2315414E8(v155, v157, a2, a3);
    LOBYTE(v155) = v160;

    if ((v155 & 1) == 0)
    {
      if (v159 < 0xFFFFFFFF80000000)
      {
        v158 = 0x80000000;
      }

      else if (v159 >= 0x7FFFFFFF)
      {
        v158 = 0x7FFFFFFFLL;
      }

      else
      {
        v158 = v159;
      }
    }

    [v27 setTaskAbandonCountInUsingApp28Days_];
    v161 = sub_231531C44();
    v163 = v162;

    v164 = [v27 taskAbandonCountInUsingAppInf];
    v165 = sub_2315414E8(v161, v163, a2, a3);
    v167 = v166;

    if ((v167 & 1) == 0)
    {
      if (v165 < 0xFFFFFFFF80000000)
      {
        v164 = 0x80000000;
      }

      else if (v165 >= 0x7FFFFFFF)
      {
        v164 = 0x7FFFFFFFLL;
      }

      else
      {
        v164 = v165;
      }
    }

    [v27 setTaskAbandonCountInUsingAppInf_];
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v168 = sub_231585FF4();
    __swift_project_value_buffer(v168, qword_280D72248);
    v169 = sub_231585FE4();
    v170 = sub_2315865E4();
    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&dword_231496000, v169, v170, "SELFMessageBuilding: Failed to create INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals", v171, 2u);
      MEMORY[0x231931280](v171, -1, -1);
    }

    return 0;
  }

  return v108;
}

uint64_t sub_231531C44()
{
  MEMORY[0x23192FF80]();
  OUTLINED_FUNCTION_2_28();
  sub_231586A54();
  return 0;
}

void *sub_231531CAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_231530998(a1, *(v2 + 40), *(v2 + 48), *(v2 + 56), a2);
}

void sub_231531CFC()
{
  v0 = sub_231586024();
  v1 = OUTLINED_FUNCTION_4_1(v0);
  v59 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  v57 = v6 - v5;
  v58 = sub_231586064();
  v7 = OUTLINED_FUNCTION_4_1(v58);
  v56 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  v55 = v12 - v11;
  v13 = sub_231586014();
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v21 = (v20 - v19);
  v22 = sub_231586094();
  v23 = OUTLINED_FUNCTION_4_1(v22);
  v53 = v24;
  v54 = v23;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v23);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v52 - v30;
  v32 = sub_231586034();
  v33 = OUTLINED_FUNCTION_4_1(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  if (qword_280D6CB30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(qword_280D72140 + 16))
  {
    sub_2314AA3E8();
    (*(v35 + 104))(v40, *MEMORY[0x277D851A8], v32);
    v52 = sub_2315866B4();
    (*(v35 + 8))(v40, v32);
    sub_231586074();
    *v21 = 1;
    (*(v16 + 104))(v21, *MEMORY[0x277D85188], v13);
    MEMORY[0x23192FD80](v29, v21);
    (*(v16 + 8))(v21, v13);
    v41 = v54;
    v42 = *(v53 + 8);
    v42(v29, v54);
    v43 = v42;
    aBlock[4] = sub_231532610;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23149B484;
    aBlock[3] = &block_descriptor_16;
    v44 = _Block_copy(aBlock);
    v45 = v55;
    sub_231586054();
    v60 = MEMORY[0x277D84F90];
    sub_2314BCC04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
    sub_2314BCC5C();
    v46 = v57;
    sub_2315867C4();
    v47 = v52;
    MEMORY[0x231930340](v31, v45, v46, v44);
    _Block_release(v44);

    (*(v59 + 8))(v46, v0);
    (*(v56 + 8))(v45, v58);
    v43(v31, v41);
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v48 = sub_231585FF4();
    __swift_project_value_buffer(v48, qword_280D72248);
    v49 = sub_231585FE4();
    v50 = sub_2315865D4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_231496000, v49, v50, "GlobalCacheManager: no caches to invalidate", v51, 2u);
      MEMORY[0x231931280](v51, -1, -1);
    }
  }
}

uint64_t sub_231532284()
{
  if (qword_280D6CB30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = qword_280D72140;
  v1 = *(qword_280D72140 + 16);
  if (v1)
  {
    v2 = qword_280D72140 + 32;

    do
    {
      sub_2314A2C74(v2, v25);
      v3 = *__swift_project_boxed_opaque_existential_1(v25, v26);
      if (sub_2314D391C())
      {
        if (qword_280D70420 != -1)
        {
          swift_once();
        }

        v4 = sub_231585FF4();
        __swift_project_value_buffer(v4, qword_280D72248);
        sub_2314A2C74(v25, v23);
        v5 = sub_231585FE4();
        v6 = sub_2315865D4();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v7 = 136315138;
          v8 = __swift_project_boxed_opaque_existential_1(v23, v24);
          v9 = *(*v8 + 24);
          v10 = *(*v8 + 32);

          __swift_destroy_boxed_opaque_existential_1(v23);
          v11 = sub_2314A22E8();

          *(v7 + 4) = v11;
          _os_log_impl(&dword_231496000, v5, v6, "GlobalCacheManager: %s is empty; not invalidating", v7, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x231931280](v21, -1, -1);
          MEMORY[0x231931280](v7, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v23);
        }
      }

      else
      {
        if (qword_280D70420 != -1)
        {
          swift_once();
        }

        v12 = sub_231585FF4();
        __swift_project_value_buffer(v12, qword_280D72248);
        sub_2314A2C74(v25, v23);
        v13 = sub_231585FE4();
        v14 = sub_2315865D4();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v15 = 136315138;
          v16 = __swift_project_boxed_opaque_existential_1(v23, v24);
          v17 = *(*v16 + 24);
          v18 = *(*v16 + 32);

          __swift_destroy_boxed_opaque_existential_1(v23);
          v19 = sub_2314A22E8();

          *(v15 + 4) = v19;
          _os_log_impl(&dword_231496000, v13, v14, "GlobalCacheManager: invalidating %s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v22);
          MEMORY[0x231931280](v22, -1, -1);
          MEMORY[0x231931280](v15, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v23);
        }

        v20 = *__swift_project_boxed_opaque_existential_1(v25, v26);
        sub_2314D3B5C();
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t Signal.Source.hashValue.getter()
{
  v1 = *v0;
  sub_231586D14();
  MEMORY[0x231930A00](v1);
  return sub_231586D44();
}

uint64_t sub_2315326AC()
{
  sub_231586D14();
  Signal.Source.hash(into:)();
  return sub_231586D44();
}

uint64_t Signal.Metadata.turnId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Signal.Metadata.resultCandidateId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Signal.Metadata.timestamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_231585884();
  v6 = OUTLINED_FUNCTION_8(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t Signal.Metadata.init(turnId:resultCandidateId:source:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a5;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v9;
  v10 = *(type metadata accessor for Signal.Metadata() + 36);
  v11 = sub_231585884();
  OUTLINED_FUNCTION_8(v11);
  v13 = *(v12 + 32);

  return v13(a7 + v10, a6);
}

uint64_t Signal.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Signal.Metadata();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = *(v8 + 16);

  return v9(a2, v2 + v4, v7);
}

uint64_t Signal.init(value:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = *(type metadata accessor for Signal() + 28);
  v7 = type metadata accessor for Signal.Metadata();
  OUTLINED_FUNCTION_8(v7);
  v9 = *(v8 + 32);

  return v9(a4 + v6, a2);
}

uint64_t sub_2315329F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v2 = type metadata accessor for Signal.Metadata();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_231532A90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_231585884();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v14 = v8;
  v15 = v13 | 7;
  v16 = (v13 | 7) + *(v6 + 64);
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v17 = ((v13 + 33) & ~v13) + *(*(v8 - 8) + 64) + (v16 & ~v15);
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_10;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_28;
      }

LABEL_18:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v7 >= v11)
  {
    v27 = a1;
    v10 = v7;
    v14 = v5;
  }

  else
  {
    v25 = (a1 + v16) & ~v15;
    if (v10 <= 0x7FFFFFFE)
    {
      v26 = *(v25 + 8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      if ((v26 + 1) >= 2)
      {
        return v26;
      }

      else
      {
        return 0;
      }
    }

    v27 = (v13 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v13;
  }

  return __swift_getEnumTagSinglePayload(v27, v10, v14);
}

void sub_231532D0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_231585884();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = (v15 | 7) + *(v8 + 64);
  v17 = v16 & ~(v15 | 7);
  v18 = ((v15 + 33) & ~v15) + *(*(v10 - 8) + 64);
  v19 = v17 + v18;
  v20 = 8 * (v17 + v18);
  if (a3 <= v14)
  {
    v21 = 0;
  }

  else if (v19 <= 3)
  {
    v24 = ((a3 - v14 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v14 >= a2)
  {
    switch(v21)
    {
      case 1:
        a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 2:
        *&a1[v19] = 0;
        if (a2)
        {
          goto LABEL_30;
        }

        return;
      case 3:
LABEL_63:
        __break(1u);
        return;
      case 4:
        *&a1[v19] = 0;
        goto LABEL_29;
      default:
LABEL_29:
        if (!a2)
        {
          return;
        }

LABEL_30:
        if (v9 >= v13)
        {
          v31 = a1;
          v32 = a2;
          v12 = v9;
          v10 = v7;
        }

        else
        {
          v27 = (&a1[v16] & ~(v15 | 7));
          if (v13 < a2)
          {
            if (v18 <= 3)
            {
              v28 = ~(-1 << (8 * v18));
            }

            else
            {
              v28 = -1;
            }

            if (v18)
            {
              v29 = v28 & (~v13 + a2);
              if (v18 <= 3)
              {
                v30 = v18;
              }

              else
              {
                v30 = 4;
              }

              bzero(v27, v18);
              switch(v30)
              {
                case 2:
                  *v27 = v29;
                  break;
                case 3:
                  *v27 = v29;
                  *(v27 + 2) = BYTE2(v29);
                  break;
                case 4:
                  *v27 = v29;
                  break;
                default:
                  *v27 = v29;
                  break;
              }
            }

            return;
          }

          if (v12 <= 0x7FFFFFFE)
          {
            if (a2 > 0x7FFFFFFE)
            {
              *v27 = 0;
              *(v27 + 1) = 0;
              *v27 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *(v27 + 1) = a2;
            }

            return;
          }

          v31 = (v15 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8) + 17) & ~v15;
          v32 = a2;
        }

        __swift_storeEnumTagSinglePayload(v31, v32, v12, v10);
        break;
    }
  }

  else
  {
    v22 = ~v14 + a2;
    if (v19 < 4)
    {
      v23 = (v22 >> v20) + 1;
      if (v19)
      {
        v26 = v22 & ~(-1 << v20);
        bzero(a1, v19);
        if (v19 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v19 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v22;
        }
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v22;
      v23 = 1;
    }

    switch(v21)
    {
      case 1:
        a1[v19] = v23;
        break;
      case 2:
        *&a1[v19] = v23;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *&a1[v19] = v23;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_2315330A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_231533194(uint64_t a1)
{
  sub_231533268();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    type metadata accessor for Signal.Source();
    sub_231586774();
    if (v4 <= 0x3F)
    {
      sub_231585884();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_231533268()
{
  if (!qword_280D6EA28)
  {
    v0 = sub_231586774();
    if (!v1)
    {
      atomic_store(v0, &qword_280D6EA28);
    }
  }
}

uint64_t _s6RecordVMa()
{
  result = qword_280D703C0;
  if (!qword_280D703C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23153332C()
{
  result = sub_231585884();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2315333F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v11 = *a1;
  v12 = v4;
  v5 = *(a2 + 8);
  v9 = *a2;
  v10 = v5;
  sub_2314A5168(v11, v4);
  sub_2314A5168(v9, v5);
  v6 = static SignalValue.== infix(_:_:)(&v11, &v9);
  sub_2314A5EEC(v9, v10);
  sub_2314A5EEC(v11, v12);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(_s6RecordVMa() + 20);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t sub_2315334BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_231586C44() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7441646568636163 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_231586C44();

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

uint64_t sub_231533588(char a1)
{
  if (a1)
  {
    return 0x7441646568636163;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_2315335BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD60, &qword_23158D060);
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231533E8C();
  sub_231586D64();
  v14 = *(v3 + 8);
  v20 = *v3;
  v21 = v14;
  v19[15] = 0;
  sub_2314A5168(v20, v14);
  sub_2314BEF60();
  sub_231586C04();
  sub_2314A5EEC(v20, v21);
  if (!v2)
  {
    v15 = *(_s6RecordVMa() + 20);
    v19[14] = 1;
    sub_231585884();
    OUTLINED_FUNCTION_0_76();
    sub_231533FA0(v16, v17);
    sub_231586C04();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_231533788(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 8))
  {
    case 1:
      MEMORY[0x231930A00](1);
      sub_23156B970(a1, v2);
      break;
    case 2:
      MEMORY[0x231930A00](2);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      MEMORY[0x231930A10](v4);
      break;
    case 3:
      MEMORY[0x231930A00](3);
      sub_23156B858(a1, v2);
      break;
    default:
      MEMORY[0x231930A00](0);
      MEMORY[0x231930A00](v2);
      break;
  }

  v5 = *(_s6RecordVMa() + 20);
  sub_231585884();
  OUTLINED_FUNCTION_0_76();
  sub_231533FA0(v6, v7);
  return sub_231586134();
}

uint64_t sub_231533894()
{
  sub_231586D14();
  v1 = *v0;
  switch(*(v0 + 8))
  {
    case 1:
      MEMORY[0x231930A00](1);
      sub_23156B970(v7, v1);
      break;
    case 2:
      MEMORY[0x231930A00](2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v2 = v1;
      }

      else
      {
        v2 = 0;
      }

      MEMORY[0x231930A10](v2);
      break;
    case 3:
      MEMORY[0x231930A00](3);
      sub_23156B858(v7, v1);
      break;
    default:
      MEMORY[0x231930A00](0);
      MEMORY[0x231930A00](v1);
      break;
  }

  v3 = *(_s6RecordVMa() + 20);
  sub_231585884();
  OUTLINED_FUNCTION_0_76();
  sub_231533FA0(v4, v5);
  sub_231586134();
  return sub_231586D44();
}

uint64_t sub_2315339C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = sub_231585884();
  v4 = OUTLINED_FUNCTION_4_1(v33);
  v30 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD58, &qword_23158D058);
  v10 = OUTLINED_FUNCTION_4_1(v34);
  v32 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  v16 = _s6RecordVMa();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231533E8C();
  sub_231586D54();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v16;
  v21 = v19;
  v23 = v32;
  v22 = v33;
  v38 = 0;
  sub_2314BF09C();
  v24 = v34;
  sub_231586B84();
  v25 = v36;
  *v21 = v35;
  *(v21 + 8) = v25;
  v37 = 1;
  OUTLINED_FUNCTION_0_76();
  sub_231533FA0(v26, v27);
  sub_231586B84();
  (*(v23 + 8))(v15, v24);
  (*(v30 + 32))(v21 + *(v29 + 20), v9, v22);
  sub_231533EE0(v21, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_231533F44(v21);
}

uint64_t sub_231533CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2315334BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231533CF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231533580();
  *a1 = result;
  return result;
}

uint64_t sub_231533D20(uint64_t a1)
{
  v2 = sub_231533E8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231533D5C(uint64_t a1)
{
  v2 = sub_231533E8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231533DD4(uint64_t a1, uint64_t a2)
{
  sub_231586D14();
  v6 = *v2;
  v7 = *(v2 + 8);
  SignalValue.hash(into:)(v8);
  v4 = *(a2 + 20);
  sub_231585884();
  sub_231533FA0(&qword_27DD5BD68, MEMORY[0x277CC9578]);
  sub_231586134();
  return sub_231586D44();
}

unint64_t sub_231533E8C()
{
  result = qword_280D703F0;
  if (!qword_280D703F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D703F0);
  }

  return result;
}

uint64_t sub_231533EE0(uint64_t a1, uint64_t a2)
{
  v4 = _s6RecordVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231533F44(uint64_t a1)
{
  v2 = _s6RecordVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231533FA0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s6RecordV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2315340C8()
{
  result = qword_27DD5BD70;
  if (!qword_27DD5BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BD70);
  }

  return result;
}

unint64_t sub_231534120()
{
  result = qword_280D703E0;
  if (!qword_280D703E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D703E0);
  }

  return result;
}

unint64_t sub_231534178()
{
  result = qword_280D703E8;
  if (!qword_280D703E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D703E8);
  }

  return result;
}

void sub_2315341CC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v36 = MEMORY[0x277D84F90];
    sub_23152D598();
    v35 = v36;
    v5 = sub_23156C5C8(v1);
    v6 = 0;
    v7 = v1 + 64;
    v29 = v3;
    v30 = v2;
    v28 = v1 + 72;
    v31 = v1 + 64;
    v32 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v1 + 36) != v3)
      {
        goto LABEL_23;
      }

      v34 = v3;
      v33 = v4;
      v9 = *(v1 + 56);
      v10 = (*(v1 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      v13 = v9 + 16 * v5;
      v14 = *v13;
      v15 = *(v13 + 8);
      swift_bridgeObjectRetain_n();
      sub_2314A5168(v14, v15);
      sub_2314A5168(v14, v15);

      sub_2314A5EEC(v14, v15);

      MEMORY[0x23192FF80](61, 0xE100000000000000);
      v16 = SignalValue.description.getter();
      MEMORY[0x23192FF80](v16);

      sub_2314A5EEC(v14, v15);
      v17 = v35;
      v18 = *(v35 + 16);
      if (v18 >= *(v35 + 24) >> 1)
      {
        sub_23152D598();
        v17 = v35;
      }

      *(v17 + 16) = v18 + 1;
      v19 = v17 + 16 * v18;
      *(v19 + 32) = v11;
      *(v19 + 40) = v12;
      v1 = v32;
      v20 = 1 << *(v32 + 32);
      if (v5 >= v20)
      {
        goto LABEL_24;
      }

      v7 = v31;
      v21 = *(v31 + 8 * v8);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v35 = v17;
      if (*(v32 + 36) != v34)
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v8 << 6;
        v24 = v8 + 1;
        v25 = (v28 + 8 * v8);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_2314ABA68(v5, v34, v33 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        sub_2314ABA68(v5, v34, v33 & 1);
      }

LABEL_19:
      v4 = 0;
      ++v6;
      v5 = v20;
      v3 = v29;
      if (v6 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_2315344E8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v58 = sub_231585884();
  v5 = OUTLINED_FUNCTION_4_1(v58);
  v60 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_0();
  v59 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD80, &unk_23158EF40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v58 - v16;
  v18 = _s6RecordVMa();
  v19 = OUTLINED_FUNCTION_8(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  swift_beginAccess();
  sub_2314A2C74(v2 + 56, &v63);
  v25 = __swift_project_boxed_opaque_existential_1(&v63, v65);
  v26 = a1[3];
  v27 = a1[4];
  v28 = OUTLINED_FUNCTION_7_22();
  __swift_project_boxed_opaque_existential_1(v28, v29);
  OUTLINED_FUNCTION_17_8(v27);
  v30(v26, v27);
  v31 = *v25;
  sub_231571694(v17);
  v32 = v24;
  v34 = v59;
  v33 = v60;

  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_2314A2910(v17, &qword_27DD5BD80, &unk_23158EF40);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v35 = sub_231585FF4();
    __swift_project_value_buffer(v35, qword_280D72248);
    sub_2314A2C74(a1, &v63);
    v36 = sub_231585FE4();
    v37 = sub_2315865D4();
    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_11_1();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_1();
      v39 = swift_slowAlloc();
      v62 = v39;
      *v38 = 136315138;
      v40 = v65;
      v41 = v66;
      __swift_project_boxed_opaque_existential_1(&v63, v65);
      OUTLINED_FUNCTION_17_8(v41);
      v42(v40, v41);
      __swift_destroy_boxed_opaque_existential_1(&v63);
      OUTLINED_FUNCTION_13_7();
      v43 = sub_2314A22E8();

      *(v38 + 4) = v43;
      _os_log_impl(&dword_231496000, v36, v37, "SignalCache: Could not find cache value for key: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v63);
    }
  }

  else
  {
    v47 = v32;
    sub_23153713C(v17, v32);
    v48 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v49 = *(v48 + 64);
    v50 = OUTLINED_FUNCTION_15_6();
    v51(v50, v48);
    if (v64)
    {
      goto LABEL_12;
    }

    v52 = v32 + *(v18 + 20);
    v53 = sub_2315857B4();
    v54 = *(v3 + 104);
    (*(v3 + 96))(v53);
    v55 = sub_2315857E4();
    v56 = *(v33 + 8);
    v57 = v58;
    v56(v34, v58);
    v56(v13, v57);
    if ((v55 & 1) == 0)
    {
LABEL_12:
      v44 = *v47;
      v45 = *(v47 + 8);
      sub_2314A5168(*v47, v45);
      sub_231533F44(v47);
      goto LABEL_8;
    }

    sub_231533F44(v47);
  }

  v44 = 0;
  v45 = -1;
LABEL_8:
  v46 = v61;
  *v61 = v44;
  *(v46 + 8) = v45;
  OUTLINED_FUNCTION_3_6();
}

void sub_23153496C(uint64_t a1)
{
  v2 = sub_231585884();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v97 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11_0();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v91 - v11);
  v13 = _s6RecordVMa();
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v98 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_11_12();
  MEMORY[0x28223BE20](v18);
  v20 = (&v91 - v19);
  if (qword_280D701B8 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v21 = qword_280D72230;
    v22 = unk_280D72238;
    __swift_project_boxed_opaque_existential_1(qword_280D72218, qword_280D72230);
    if ((*(v22 + 16))(v21, v22))
    {
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v23 = sub_231585FF4();
      __swift_project_value_buffer(v23, qword_280D72248);
      v24 = sub_231585FE4();
      v25 = sub_2315865D4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_231496000, v24, v25, "SignalCache: caching ignored by override", v26, 2u);
        OUTLINED_FUNCTION_7();
        MEMORY[0x231931280]();
      }

      OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_21_6();
      goto LABEL_67;
    }

    v92 = v13;
    v95 = v12;
    v96 = v9;
    v94 = v2;
    v27 = *(a1 + 16);
    v101 = v20;
    if (v27)
    {
      v28 = a1 + 32;

      v9 = MEMORY[0x277D84F90];
      v12 = &qword_23158A9D0;
      v13 = &qword_27DD5B620;
      v2 = &unk_23158AAE0;
      v20 = &qword_27DD5BD88;
      while (1)
      {
        sub_2314A2C74(v28, &v112);
        sub_23149FD3C(&v112, &v109);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(v13, &unk_23158AAE0);
        if (swift_dynamicCast())
        {
          if (*(&v107 + 1))
          {
            sub_23149FD3C(&v106, &v109);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = v9[2];
              sub_2314F11DC();
              v9 = v41;
            }

            v29 = v13;
            v30 = v9[2];
            if (v30 >= v9[3] >> 1)
            {
              sub_2314F11DC();
              v31 = v42;
            }

            else
            {
              v31 = v9;
            }

            v32 = v111;
            v33 = __swift_mutable_project_boxed_opaque_existential_1(&v109, v111);
            v34 = *(*(v32 - 8) + 64);
            MEMORY[0x28223BE20](v33);
            OUTLINED_FUNCTION_5();
            v37 = (v36 - v35);
            (*(v38 + 16))(v36 - v35);
            v39 = *v37;
            *(&v107 + 1) = type metadata accessor for NowPlayingScoresSignal();
            v108 = &off_28461A1D8;
            *&v106 = v39;
            v9 = v31;
            v31[2] = v30 + 1;
            sub_23149FD3C(&v106, &v31[5 * v30 + 4]);
            __swift_destroy_boxed_opaque_existential_1(&v109);
            v12 = &qword_23158A9D0;
            v13 = v29;
            v2 = &unk_23158AAE0;
            v20 = &qword_27DD5BD88;
            goto LABEL_19;
          }
        }

        else
        {
          v108 = 0;
          v106 = 0u;
          v107 = 0u;
        }

        sub_2314A2910(&v106, &qword_27DD5BD88, &unk_23158D220);
LABEL_19:
        v28 += 40;
        if (!--v27)
        {
          goto LABEL_23;
        }
      }
    }

    v9 = MEMORY[0x277D84F90];
LABEL_23:
    v104 = v9[2];
    if (!v104)
    {
      break;
    }

    v20 = 0;
    v105 = v9;
    v103 = v9 + 4;
    while (1)
    {
      if (v20 >= v105[2])
      {
        goto LABEL_73;
      }

      sub_2314A2C74(&v103[5 * v20], &v112);
      __swift_project_boxed_opaque_existential_1(&v112, v113);
      swift_getDynamicType();
      v43 = v114[2]();
      v2 = v43;
      v13 = *(v43 + 16);
      if (v13)
      {
        break;
      }

LABEL_40:
      v20 = (v20 + 1);

      __swift_destroy_boxed_opaque_existential_1(&v112);
      if (v20 == v104)
      {
        goto LABEL_41;
      }
    }

    v44 = (v43 + 40);
    while (1)
    {
      v45 = *(v44 - 1);
      v9 = *v44;
      v46 = OUTLINED_FUNCTION_13_7();
      if (!static SignalProviding.cacheable()(v46, v47))
      {
        goto LABEL_39;
      }

      v48 = v9[11];
      v49 = OUTLINED_FUNCTION_13_7();
      v51 = v50(v49);
      v52 = *(v51 + 16);
      v53 = *(a1 + 16);
      v12 = (v53 + v52);
      if (__OFADD__(v53, v52))
      {
        break;
      }

      v9 = v51;
      if (!swift_isUniquelyReferenced_nonNull_native() || v12 > *(a1 + 24) >> 1)
      {
        sub_2314F0CB4();
        a1 = v54;
      }

      if (v9[2])
      {
        if ((*(a1 + 24) >> 1) - *(a1 + 16) < v52)
        {
          goto LABEL_71;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
        swift_arrayInitWithCopy();

        if (v52)
        {
          v55 = *(a1 + 16);
          v56 = __OFADD__(v55, v52);
          v57 = v55 + v52;
          if (v56)
          {
            goto LABEL_72;
          }

          *(a1 + 16) = v57;
        }
      }

      else
      {

        if (v52)
        {
          goto LABEL_70;
        }
      }

LABEL_39:
      v44 += 2;
      if (!--v13)
      {
        goto LABEL_40;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

LABEL_41:

  v12 = sub_231536918(a1);
  v2 = MEMORY[0x277D837E0];
  v102 = OUTLINED_FUNCTION_20_7();
  v99 = OUTLINED_FUNCTION_20_7();
  *&v106 = MEMORY[0x277D84FA0];
  v104 = *(a1 + 16);
  if (v104)
  {
    v58 = 0;
    v103 = (a1 + 32);
    v91 = (v97 + 8);
    while (2)
    {
      if (v58 >= *(a1 + 16))
      {
        goto LABEL_74;
      }

      v105 = (v58 + 1);
      sub_2314A2C74(&v103[5 * v58], &v112);
      v2 = v114;
      __swift_project_boxed_opaque_existential_1(&v112, v113);
      OUTLINED_FUNCTION_9_15();
      v59 = OUTLINED_FUNCTION_7_22();
      v61 = v60(v59);
      v62 = v61;
      v20 = 0;
      v63 = v61 + 64;
      v64 = 1 << *(v61 + 32);
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      else
      {
        v65 = -1;
      }

      v13 = v65 & *(v61 + 64);
      v66 = (v64 + 63) >> 6;
      while (v13)
      {
LABEL_53:
        v68 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v69 = *(v62 + 56) + ((v20 << 10) | (16 * v68));
        v9 = *v69;
        v2 = *(v69 + 8);
        swift_bridgeObjectRetain_n();
        sub_2314A00A4();

        if (v12[2] && (v70 = sub_23149C888(v9, v2), (v71 & 1) != 0))
        {
          v72 = OUTLINED_FUNCTION_12_9(v70, v12[7]);
          v74 = *(v73 - 256);
          sub_231533EE0(v72, v74);
          sub_23153713C(v74, v101);
          v75 = v114;
          v97 = v113;
          __swift_project_boxed_opaque_existential_1(&v112, v113);
          (v75[8])(&v109, v97, v75);
          if (v110)
          {
            goto LABEL_58;
          }

          v76 = v101 + *(v92 + 20);
          v77 = sub_2315857B4();
          v78 = *(v100 + 104);
          (*(v100 + 96))(v77);
          v93 = sub_2315857E4();
          v97 = *v91;
          v79 = OUTLINED_FUNCTION_10_11(&v116);
          v80(v79);
          v81 = OUTLINED_FUNCTION_10_11(&v115);
          v82(v81);
          if (v93)
          {
            OUTLINED_FUNCTION_8_18();
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_6_19();

            sub_231533F44(v101);
            v99 = v109;
          }

          else
          {
LABEL_58:
            OUTLINED_FUNCTION_8_18();
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_6_19();

            sub_231533F44(v101);
            v102 = v109;
          }
        }

        else
        {
        }
      }

      while (1)
      {
        v67 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_69;
        }

        if (v67 >= v66)
        {
          break;
        }

        v13 = *(v63 + 8 * v67);
        v20 = (v20 + 1);
        if (v13)
        {
          v20 = v67;
          goto LABEL_53;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v112);
      v58 = v105;
      if (v105 != v104)
      {
        continue;
      }

      break;
    }
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v83 = sub_231585FF4();
  __swift_project_value_buffer(v83, qword_280D72248);
  v84 = v106;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v85 = sub_231585FE4();
  v86 = sub_2315865D4();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 134218752;
    *(v87 + 4) = *(v84 + 16);

    *(v87 + 12) = 2048;
    v88 = *(a1 + 16);

    *(v87 + 14) = v88;

    *(v87 + 22) = 2048;
    *(v87 + 24) = *(v99 + 16);

    *(v87 + 32) = 2048;
    v89 = *(v102 + 16);

    *(v87 + 34) = v89;

    _os_log_impl(&dword_231496000, v85, v86, "SignalCache: looked up %ld cacheKeys from %ld signals, found %ld expired and %ld current results.", v87, 0x2Au);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v90 = swift_allocObject();
  *(v90 + 16) = v84;
  sub_23152B568(sub_2315371A0, v90);

LABEL_67:
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_3_6();
}

unint64_t sub_23153554C()
{
  sub_231586954();

  v0 = sub_231586524();
  MEMORY[0x23192FF80](v0);

  return 0xD000000000000018;
}

void sub_2315355DC(void *a1)
{
  v2 = sub_231585884();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v85 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v84 = v8 - v7;
  v82 = _s6RecordVMa();
  v9 = OUTLINED_FUNCTION_4_1(v82);
  v81[2] = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_11_12();
  MEMORY[0x28223BE20](v13);
  v83 = v81 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (static SignalProviding.cacheable()(DynamicType, a1[4]))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    sub_2314A2C74(a1, inited + 32);
    v17 = sub_231536918(inited);
    swift_setDeallocating();
    sub_231536E48(&qword_27DD5B588, &qword_23158A9D0);
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v19 = *(v18 + 40);
    v20 = OUTLINED_FUNCTION_15_6();
    v22 = v21(v20, v18);
    v23 = *(v22 + 16);
    v81[0] = v2;
    if (v23)
    {
      v94 = MEMORY[0x277D84F90];
      sub_23152D598();
      v24 = v94;
      v27 = sub_23156C5C8(v22);
      v28 = 0;
      v29 = v22 + 64;
      v88 = v25;
      v89 = v23;
      v86 = v22 + 72;
      v87 = v17;
      v90 = v22 + 64;
      while ((v27 & 0x8000000000000000) == 0 && v27 < 1 << *(v22 + 32))
      {
        v30 = v27 >> 6;
        if ((*(v29 + 8 * (v27 >> 6)) & (1 << v27)) == 0)
        {
          goto LABEL_48;
        }

        if (*(v22 + 36) != v25)
        {
          goto LABEL_49;
        }

        v92 = v28;
        v93 = v25;
        LODWORD(v91) = v26;
        v31 = (*(v22 + 56) + 16 * v27);
        v33 = *v31;
        v32 = v31[1];
        v94 = v24;
        v35 = *(v24 + 16);
        v34 = *(v24 + 24);

        if (v35 >= v34 >> 1)
        {
          sub_23152D598();
          v24 = v94;
        }

        *(v24 + 16) = v35 + 1;
        v36 = v24 + 16 * v35;
        *(v36 + 32) = v33;
        *(v36 + 40) = v32;
        v37 = 1 << *(v22 + 32);
        if (v27 >= v37)
        {
          goto LABEL_50;
        }

        v29 = v90;
        v38 = *(v90 + 8 * v30);
        if ((v38 & (1 << v27)) == 0)
        {
          goto LABEL_51;
        }

        if (*(v22 + 36) != v93)
        {
          goto LABEL_52;
        }

        v39 = v38 & (-2 << (v27 & 0x3F));
        if (v39)
        {
          v37 = __clz(__rbit64(v39)) | v27 & 0x7FFFFFFFFFFFFFC0;
          v17 = v87;
        }

        else
        {
          v40 = v24;
          v41 = v30 << 6;
          v42 = v30 + 1;
          v17 = v87;
          v43 = (v86 + 8 * v30);
          while (v42 < (v37 + 63) >> 6)
          {
            v45 = *v43++;
            v44 = v45;
            v41 += 64;
            ++v42;
            if (v45)
            {
              sub_2314ABA68(v27, v93, v91 & 1);
              v37 = __clz(__rbit64(v44)) + v41;
              goto LABEL_20;
            }
          }

          sub_2314ABA68(v27, v93, v91 & 1);
LABEL_20:
          v24 = v40;
        }

        v26 = 0;
        v28 = v92 + 1;
        v27 = v37;
        v25 = v88;
        if (v92 + 1 == v89)
        {

          v2 = v81[0];
          goto LABEL_27;
        }
      }
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
LABEL_27:
      v47 = 0;
      v48 = *(v24 + 16);
      v93 = (v85 + 16);
      v90 = v85 + 40;
      v91 = v85 + 32;
      v49 = MEMORY[0x277D84F98];
      v50 = v24 + 40;
      v92 = v24 + 40;
LABEL_28:
      for (i = (v50 + 16 * v47); ; i += 2)
      {
        if (v48 == v47)
        {

          OUTLINED_FUNCTION_3_6();
          return;
        }

        if (v47 >= *(v24 + 16))
        {
          break;
        }

        if (*(v17 + 16))
        {
          v53 = *(i - 1);
          v52 = *i;

          v54 = OUTLINED_FUNCTION_16_7();
          v56 = sub_23149C888(v54, v55);
          if (v57)
          {
            v58 = OUTLINED_FUNCTION_12_9(v56, *(v17 + 56));
            v60 = *(v59 - 256);
            sub_231533EE0(v58, v60);
            v61 = v60;
            v62 = v83;
            sub_23153713C(v61, v83);
            (*v93)(v84, v62 + *(v82 + 20), v2);
            swift_isUniquelyReferenced_nonNull_native();
            v94 = v49;
            v63 = OUTLINED_FUNCTION_16_7();
            v65 = sub_23149C888(v63, v64);
            if (__OFADD__(*(v49 + 16), (v66 & 1) == 0))
            {
              goto LABEL_53;
            }

            v67 = v65;
            LODWORD(v89) = v66;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD90, &unk_23158D230);
            if (sub_231586A64())
            {
              v68 = OUTLINED_FUNCTION_16_7();
              v70 = sub_23149C888(v68, v69);
              v72 = v89;
              v50 = v92;
              if ((v89 & 1) != (v71 & 1))
              {
                goto LABEL_55;
              }

              v67 = v70;
            }

            else
            {
              v50 = v92;
              v72 = v89;
            }

            v49 = v94;
            if (v72)
            {
              v73 = OUTLINED_FUNCTION_19_7();
              v2 = v81[0];
              (*(v74 + 40))(v73);

              sub_231533F44(v83);
            }

            else
            {
              *(v94 + 8 * (v67 >> 6) + 64) |= 1 << v67;
              v75 = (*(v49 + 48) + 16 * v67);
              *v75 = v53;
              v75[1] = v52;
              v76 = OUTLINED_FUNCTION_19_7();
              v2 = v81[0];
              (*(v77 + 32))(v76);
              sub_231533F44(v83);
              v78 = *(v49 + 16);
              v79 = __OFADD__(v78, 1);
              v80 = v78 + 1;
              if (v79)
              {
                goto LABEL_54;
              }

              *(v49 + 16) = v80;
            }

            ++v47;
            goto LABEL_28;
          }
        }

        ++v47;
      }

      __break(1u);
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    sub_231586C84();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_3_6();

    sub_2315860F4();
  }
}

uint64_t sub_231535C88(uint64_t a1)
{
  v3 = v1;
  v5 = sub_231585884();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = *(v1 + 96);
  v15 = *(v1 + 104);
  v14();
  v31 = v13;
  v32 = a1;
  v16 = sub_231536E98(sub_231537118, v30, a1);
  swift_beginAccess();
  v17 = *(v3 + 80);
  v18 = *(v3 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 56, v17);
  (*(v18 + 40))(v16, v17, v18);
  if (v2)
  {
    swift_endAccess();

    v19 = *(v8 + 8);
    v20 = OUTLINED_FUNCTION_7_22();
    return v21(v20);
  }

  else
  {
    v23 = v8;
    v24 = v32;
    swift_endAccess();

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v25 = sub_231585FF4();
    __swift_project_value_buffer(v25, qword_280D72248);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;

    sub_23152B568(sub_231537134, v26);

    v27 = *(v23 + 8);
    v28 = OUTLINED_FUNCTION_7_22();
    return v29(v28);
  }
}

uint64_t sub_231535EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(_s6RecordVMa() + 20);
  v8 = sub_231585884();
  (*(*(v8 - 8) + 16))(a3 + v7, a2, v8);
  *a3 = v5;
  *(a3 + 8) = v6;
  return sub_2314A5168(v5, v6);
}

unint64_t sub_231535F50(uint64_t a1)
{
  sub_231586954();

  v8 = 0xD000000000000015;
  v9 = 0x8000000231592EE0;
  sub_2315341CC(a1);
  v7 = v2;

  sub_231546A58(&v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314A7490();
  v3 = sub_231586154();
  v5 = v4;

  MEMORY[0x23192FF80](v3, v5);

  return v8;
}

uint64_t sub_231536060(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = _s6RecordVMa();
  v9 = OUTLINED_FUNCTION_8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = *a2;
  v46 = *(a2 + 8);
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v16 = sub_231585FF4();
  __swift_project_value_buffer(v16, qword_280D72248);
  sub_2314A2C74(a1, &v47);
  v17 = sub_231585FE4();
  v18 = sub_2315865D4();
  v44 = a1;
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_11_1();
    v43 = v15;
    v19 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_1();
    v41 = swift_slowAlloc();
    v42 = a3;
    v50 = v41;
    *v19 = 136315138;
    v20 = v14;
    v21 = v4;
    v22 = v8;
    v24 = v48;
    v23 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, v48);
    OUTLINED_FUNCTION_17_8(v23);
    v25 = v24;
    v8 = v22;
    v4 = v21;
    v14 = v20;
    v26(v25, v23);
    __swift_destroy_boxed_opaque_existential_1(&v47);
    OUTLINED_FUNCTION_13_7();
    v27 = sub_2314A22E8();
    a1 = v44;

    *(v19 + 4) = v27;
    _os_log_impl(&dword_231496000, v17, v18, "SignalCache: caching %s value.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    a3 = v42;
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
    v15 = v43;
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  v28 = *(v8 + 20);
  v29 = sub_231585884();
  OUTLINED_FUNCTION_8(v29);
  (*(v30 + 16))(v14 + v28, a3);
  *v14 = v15;
  *(v14 + 8) = v46;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = *(v31 + 24);
  sub_2314A5168(v15, v46);
  v33 = OUTLINED_FUNCTION_7_22();
  v34 = v32(v33);
  v36 = v35;
  swift_beginAccess();
  v37 = *(v4 + 80);
  v38 = *(v4 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v4 + 56, v37);
  (*(v38 + 32))(v34, v36, v14, v37, v38);
  swift_endAccess();

  if (!v45)
  {
    sub_2314A2C74(v44, &v47);
    v39 = swift_allocObject();
    sub_23149FD3C(&v47, v39 + 16);
    *(v39 + 56) = v15;
    *(v39 + 64) = v46;
    sub_2314A5168(v15, v46);
    sub_23152B568(sub_231537108, v39);
  }

  return sub_231533F44(v14);
}

unint64_t sub_2315363F0(void *a1)
{
  sub_231586954();

  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  MEMORY[0x23192FF80](v4);

  MEMORY[0x23192FF80](61, 0xE100000000000000);
  v5 = SignalValue.description.getter();
  MEMORY[0x23192FF80](v5);

  return 0xD000000000000015;
}

uint64_t sub_2315364E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v44 = _s6RecordVMa();
  v11 = OUTLINED_FUNCTION_8(v44);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v47 = *a4;
  v17 = *(a4 + 8);
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  OUTLINED_FUNCTION_9_15();
  v21 = v20(v19, v18);
  if (*(v21 + 16) && (v22 = sub_23149C888(a2, a3), (v23 & 1) != 0))
  {
    v24 = (*(v21 + 56) + 16 * v22);
    v25 = *v24;
    v26 = v24[1];
  }

  else
  {
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_17_8(v27);
    v28 = OUTLINED_FUNCTION_7_22();
    v25 = v29(v28);
    v26 = v30;
  }

  v31 = v25;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v32 = sub_231585FF4();
  __swift_project_value_buffer(v32, qword_280D72248);

  v33 = sub_231585FE4();
  v34 = sub_2315865D4();

  if (os_log_type_enabled(v33, v34))
  {
    OUTLINED_FUNCTION_11_1();
    v35 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_1();
    v48 = swift_slowAlloc();
    *v35 = 136315138;
    *(v35 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v33, v34, "SignalCache: caching %s value.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  v36 = *(v44 + 20);
  v37 = sub_231585884();
  OUTLINED_FUNCTION_8(v37);
  (*(v38 + 16))(v16 + v36, a5);
  *v16 = v47;
  *(v16 + 8) = v17;
  swift_beginAccess();
  v39 = *(v6 + 80);
  v40 = *(v6 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v6 + 56, v39);
  v41 = *(v40 + 32);
  sub_2314A5168(v47, v17);
  v41(v31, v26, v16, v39, v40);
  swift_endAccess();
  if (v46)
  {
  }

  else
  {
    v42 = swift_allocObject();
    *(v42 + 16) = v31;
    *(v42 + 24) = v26;
    *(v42 + 32) = v47;
    *(v42 + 40) = v17;
    sub_2314A5168(v47, v17);
    sub_23152B568(sub_2315370F8, v42);
  }

  return sub_231533F44(v16);
}

unint64_t sub_231536854(uint64_t a1, uint64_t a2)
{
  sub_231586954();

  MEMORY[0x23192FF80](a1, a2);
  MEMORY[0x23192FF80](61, 0xE100000000000000);
  v4 = SignalValue.description.getter();
  MEMORY[0x23192FF80](v4);

  return 0xD000000000000015;
}

uint64_t sub_231536918(uint64_t a1)
{
  v10[5] = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_2314A2C74(v3, v10);
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      OUTLINED_FUNCTION_9_15();
      v4 = OUTLINED_FUNCTION_7_22();
      v6 = v5(v4);
      sub_231536B64(v6);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  v7 = *__swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));

  sub_231571834(v8);
  OUTLINED_FUNCTION_15_6();

  return v7;
}

uint64_t sub_231536B64(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 56) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2314A00A4();

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t *sub_231536C68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[13];

  return v0;
}

uint64_t sub_231536C98()
{
  sub_231536C68();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_231536CE4()
{
  type metadata accessor for SignalCache();
  if (sub_23153449C())
  {
    v0 = OUTLINED_FUNCTION_15_6();
    sub_2315355DC(v0);
    v2 = v1;

    return v2;
  }

  else
  {
    sub_231585884();

    return sub_2315860F4();
  }
}

uint64_t sub_231536E04()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_231536E48(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v2, 32, 7);
}

uint64_t sub_231536E98(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v4 = _s6RecordVMa();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD78, &unk_23158D210);
  result = sub_231586AC4();
  v9 = result;
  v10 = 0;
  v39 = a3;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = result + 64;
  v36 = result;
  if ((v15 & v11) != 0)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v39 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v39 + 56) + 16 * v21;
      v40 = *v25;
      v26 = v40;
      v41 = *(v25 + 8);
      v27 = v41;

      sub_2314A5168(v26, v27);
      v28 = v42;
      v37(&v40);
      v42 = v28;
      if (v28)
      {
        break;
      }

      sub_2314A5EEC(v40, v41);
      *(v34 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v29 = v35;
      v9 = v36;
      v30 = (*(v36 + 48) + 16 * v21);
      *v30 = v23;
      v30[1] = v24;
      result = sub_23153713C(v7, *(v9 + 56) + *(v29 + 72) * v21);
      v31 = *(v9 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_17;
      }

      *(v9 + 16) = v33;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v9 = v36;

    sub_2314A5EEC(v40, v41);
    return v9;
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_2315370F8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_231536854(*(v0 + 16), *(v0 + 24));
}

unint64_t sub_231537108()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return sub_2315363F0((v0 + 16));
}

uint64_t sub_23153713C(uint64_t a1, uint64_t a2)
{
  v4 = _s6RecordVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SignalCacheError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231537288()
{
  result = qword_27DD5BD98;
  if (!qword_27DD5BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5BD98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignalCacheExpirationPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignalCacheExpirationPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t static SignalCachingStrategyOption.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_57;
      }

      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_1_34();
        OUTLINED_FUNCTION_4_24();
        v44 = OUTLINED_FUNCTION_2_29();
        v46 = OUTLINED_FUNCTION_0_77(v44, v45, 1u);
        v48 = OUTLINED_FUNCTION_0_77(v46, v47, 1u);
        sub_2314A01D4(v48, v49, 1u);
        v16 = OUTLINED_FUNCTION_3_28();
        v18 = 1;
        goto LABEL_32;
      }

      v55 = 1;
      v87 = OUTLINED_FUNCTION_1_34();
      v89 = OUTLINED_FUNCTION_0_77(v87, v88, 1u);
      v91 = OUTLINED_FUNCTION_0_77(v89, v90, 1u);
      sub_2314A01D4(v91, v92, 1u);
      v56 = OUTLINED_FUNCTION_1_34();
      v58 = 1;
      goto LABEL_62;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_57;
      }

      v27 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_4_24();
        v29 = OUTLINED_FUNCTION_2_29();
        v31 = OUTLINED_FUNCTION_0_77(v29, v30, 2u);
        v33 = OUTLINED_FUNCTION_0_77(v31, v32, 2u);
        sub_2314A01D4(v33, v34, 2u);
        v16 = OUTLINED_FUNCTION_3_28();
        v18 = 2;
        goto LABEL_32;
      }

      v79 = OUTLINED_FUNCTION_0_77(v27, v2, 2u);
      v81 = OUTLINED_FUNCTION_0_77(v79, v80, 2u);
      sub_2314A01D4(v81, v82, 2u);
      v62 = OUTLINED_FUNCTION_1_34();
      v78 = 2;
      goto LABEL_66;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_57;
      }

      v35 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_4_24();
        v37 = OUTLINED_FUNCTION_2_29();
        v39 = OUTLINED_FUNCTION_0_77(v37, v38, 3u);
        v41 = OUTLINED_FUNCTION_0_77(v39, v40, 3u);
        sub_2314A01D4(v41, v42, 3u);
        v16 = OUTLINED_FUNCTION_3_28();
        v18 = 3;
        goto LABEL_32;
      }

      v83 = OUTLINED_FUNCTION_0_77(v35, v2, 3u);
      v85 = OUTLINED_FUNCTION_0_77(v83, v84, 3u);
      sub_2314A01D4(v85, v86, 3u);
      v62 = OUTLINED_FUNCTION_1_34();
      v78 = 3;
      goto LABEL_66;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_57;
      }

      v19 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        OUTLINED_FUNCTION_4_24();
        v21 = OUTLINED_FUNCTION_2_29();
        v23 = OUTLINED_FUNCTION_0_77(v21, v22, 4u);
        v25 = OUTLINED_FUNCTION_0_77(v23, v24, 4u);
        sub_2314A01D4(v25, v26, 4u);
        v16 = OUTLINED_FUNCTION_3_28();
        v18 = 4;
        goto LABEL_32;
      }

      v73 = OUTLINED_FUNCTION_0_77(v19, v2, 4u);
      v75 = OUTLINED_FUNCTION_0_77(v73, v74, 4u);
      sub_2314A01D4(v75, v76, 4u);
      v62 = OUTLINED_FUNCTION_1_34();
      v78 = 4;
      goto LABEL_66;
    case 5u:
      if (!(v3 | v2))
      {
        if (v7 != 5 || (v5 | v6) != 0)
        {
          goto LABEL_57;
        }

        v60 = OUTLINED_FUNCTION_1_34();
        sub_2314A01D4(v60, v61, 5u);
        v62 = 0;
LABEL_65:
        v77 = 0;
        v78 = 5;
LABEL_66:
        sub_2314A01D4(v62, v77, v78);
        return 1;
      }

      if (v3 ^ 1 | v2)
      {
        if (v7 != 5 || v6 != 2 || v5 != 0)
        {
          goto LABEL_57;
        }

        v97 = OUTLINED_FUNCTION_1_34();
        sub_2314A01D4(v97, v98, 5u);
        v62 = 2;
        goto LABEL_65;
      }

      if (v7 != 5 || v6 != 1 || v5 != 0)
      {
LABEL_57:
        v65 = OUTLINED_FUNCTION_3_28();
        v67 = OUTLINED_FUNCTION_0_77(v65, v66, v7);
        v69 = OUTLINED_FUNCTION_0_77(v67, v68, v4);
        sub_2314A01D4(v69, v70, v4);
        v71 = OUTLINED_FUNCTION_3_28();
        sub_2314A01D4(v71, v72, v7);
        return 0;
      }

      v53 = OUTLINED_FUNCTION_1_34();
      sub_2314A01D4(v53, v54, 5u);
      v55 = 1;
      v56 = 1;
      v57 = 0;
      v58 = 5;
LABEL_62:
      sub_2314A01D4(v56, v57, v58);
      return v55;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_57;
      }

      v8 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v93 = OUTLINED_FUNCTION_0_77(v8, v2, 0);
        v95 = OUTLINED_FUNCTION_0_77(v93, v94, 0);
        sub_2314A01D4(v95, v96, 0);
        v62 = OUTLINED_FUNCTION_1_34();
        v78 = 0;
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_4_24();
      v10 = OUTLINED_FUNCTION_2_29();
      v12 = OUTLINED_FUNCTION_0_77(v10, v11, 0);
      v14 = OUTLINED_FUNCTION_0_77(v12, v13, 0);
      sub_2314A01D4(v14, v15, 0);
      v16 = OUTLINED_FUNCTION_3_28();
      v18 = 0;
LABEL_32:
      sub_2314A01D4(v16, v17, v18);
      return v4 & 1;
  }
}

uint64_t SignalCachingStrategyOption.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_231586D14();
  switch(v3)
  {
    case 1:
      v4 = 1;
      goto LABEL_7;
    case 2:
      v4 = 2;
      goto LABEL_7;
    case 3:
      v4 = 3;
      goto LABEL_7;
    case 4:
      v4 = 4;
      goto LABEL_7;
    case 5:
      if (v2 | v1)
      {
        if (v2 ^ 1 | v1)
        {
          v6 = 7;
        }

        else
        {
          v6 = 6;
        }
      }

      else
      {
        v6 = 5;
      }

      MEMORY[0x231930A00](v6);
      return sub_231586D44();
    default:
      v4 = 0;
LABEL_7:
      MEMORY[0x231930A00](v4);
      sub_231586274();
      return sub_231586D44();
  }
}

uint64_t sub_23153777C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_231586D14();
  SignalCachingStrategyOption.hash(into:)();
  return sub_231586D44();
}

unint64_t sub_2315377D0()
{
  result = qword_280D6FEC8[0];
  if (!qword_280D6FEC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D6FEC8);
  }

  return result;
}

uint64_t sub_231537828(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t sub_231537868(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

void __swiftcall SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)(SiriSignals::SignalComputationContext *__return_ptr retstr, Swift::OpaquePointer bundleIds, Swift::String_optional entityId, Swift::String_optional sharedUserId, Swift::OpaquePointer_optional domainUseCases)
{
  retstr->bundleIds = bundleIds;
  retstr->entityId = entityId;
  retstr->sharedUserId = sharedUserId;
  retstr->domainUseCases.value._rawValue = domainUseCases.value._rawValue;
}

uint64_t SignalComputationContext.entityId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SignalComputationContext.sharedUserId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SignalComputationContext.entityValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = xmmword_23158D490;
    v4 = *(v1 + 8);
  }

  else
  {
    v4 = 0;
    v3 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v2;
}

void sub_23153795C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v38 = MEMORY[0x277D84F90];
    sub_23152D774();
    v5 = v38;
    v8 = sub_2315634C4(v4);
    v9 = 0;
    v37 = v4 + 56;
    v30 = v4 + 64;
    v31 = v3;
    v32 = v4;
    v33 = a2;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v4 + 32))
      {
        v10 = v8 >> 6;
        if ((*(v37 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v4 + 36) != v6)
        {
          goto LABEL_31;
        }

        v34 = v7;
        v35 = v6;
        v11 = (*(v4 + 48) + 16 * v8);
        v13 = *v11;
        v12 = v11[1];
        v14 = *(a2 + 16);

        if (v14)
        {

          v15 = sub_23149C888(v13, v12);
          v16 = 0;
          if (v17)
          {
            v16 = *(*(a2 + 56) + 8 * v15);
          }
        }

        else
        {
          v16 = 0;
        }

        v18 = *(v5 + 16);
        v19 = v35;
        if (v18 >= *(v5 + 24) >> 1)
        {
          sub_23152D774();
          v19 = v35;
        }

        *(v5 + 16) = v18 + 1;
        v20 = (v5 + 24 * v18);
        v20[4] = v13;
        v20[5] = v12;
        v20[6] = v16;
        if (v34)
        {
          goto LABEL_35;
        }

        v4 = v32;
        a2 = v33;
        v21 = 1 << *(v32 + 32);
        if (v8 >= v21)
        {
          goto LABEL_32;
        }

        v22 = *(v37 + 8 * v10);
        if ((v22 & (1 << v8)) == 0)
        {
          goto LABEL_33;
        }

        if (*(v32 + 36) != v19)
        {
          goto LABEL_34;
        }

        v23 = v22 & (-2 << (v8 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v24 = v31;
        }

        else
        {
          v36 = v5;
          v25 = v10 << 6;
          v26 = v10 + 1;
          v24 = v31;
          v27 = (v30 + 8 * v10);
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_2314ABA68(v8, v19, 0);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_24;
            }
          }

          sub_2314ABA68(v8, v19, 0);
LABEL_24:
          v5 = v36;
        }

        if (++v9 == v24)
        {
          goto LABEL_28;
        }

        v7 = 0;
        v6 = *(v32 + 36);
        v8 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

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
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_28:
  }
}

uint64_t sub_231537C28(uint64_t a1, double *a2, void *a3, uint64_t a4)
{
  v4 = a3;
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = 0;
  v50 = a1 + 64;

  for (i = v10; v9; v6 = v50)
  {
LABEL_8:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v5 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *a2;
    v53 = *v15;
    if (*a2 == 0.0)
    {
      v19 = *(a4 + 16);

      v20 = *v4;
      swift_isUniquelyReferenced_nonNull_native();
      v54 = *v4;
      v21 = sub_23149C888(v16, v17);
      if (__OFADD__(v54[2], (v22 & 1) == 0))
      {
        goto LABEL_33;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      if (sub_231586A64())
      {
        v25 = sub_23149C888(v53, v17);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_37;
        }

        v23 = v25;
      }

      v27 = 1.0 / v19;
      if (v24)
      {
        *(v54[7] + 8 * v23) = v27;
        v5 = v47;
      }

      else
      {
        v54[(v23 >> 6) + 8] |= 1 << v23;
        v38 = (v54[6] + 16 * v23);
        *v38 = v53;
        v38[1] = v17;
        *(v54[7] + 8 * v23) = v27;
        v39 = v54[2];
        v40 = __OFADD__(v39, 1);
        v41 = v39 + 1;
        v5 = v47;
        if (v40)
        {
          goto LABEL_35;
        }

        v54[2] = v41;
      }

      v4 = a3;
      *a3 = v54;
    }

    else
    {
      v28 = *(*(v5 + 56) + 8 * v14);

      v29 = *v4;
      swift_isUniquelyReferenced_nonNull_native();
      v30 = *v4;
      v55 = v30;
      v31 = sub_23149C888(v16, v17);
      if (__OFADD__(v30[2], (v32 & 1) == 0))
      {
        goto LABEL_34;
      }

      v33 = v31;
      v34 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      if (sub_231586A64())
      {
        v35 = v17;
        v36 = sub_23149C888(v53, v17);
        if ((v34 & 1) != (v37 & 1))
        {
          goto LABEL_37;
        }

        v33 = v36;
      }

      else
      {
        v35 = v17;
      }

      v42 = v28 / v18;
      if (v34)
      {
        *(v30[7] + 8 * v33) = v42;
      }

      else
      {
        v30[(v33 >> 6) + 8] |= 1 << v33;
        v43 = (v30[6] + 16 * v33);
        *v43 = v53;
        v43[1] = v35;
        *(v30[7] + 8 * v33) = v42;
        v44 = v30[2];
        v40 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v40)
        {
          goto LABEL_36;
        }

        v30[2] = v45;
      }

      v4 = a3;
      *a3 = v55;
    }

    v10 = i;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_231537FC0()
{
  result = sub_231586964();
  qword_27DD5BDA0 = result;
  *algn_27DD5BDA8 = v1;
  return result;
}

uint64_t static NowPlayingOneDayCountSignal.signalName.getter()
{
  if (qword_27DD5AE48 != -1)
  {
    swift_once();
  }

  v0 = qword_27DD5BDA0;

  return v0;
}

uint64_t NowPlayingOneDayCountSignal.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t static NowPlayingOneDayCountSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = type metadata accessor for NowPlayingOneDayCountSignal();
  v2 = swift_allocObject();
  v3 = sub_231538DF8(v2);
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for NowPlayingOneDayCountSignal;
  *(v0 + 32) = v3;
  return v0;
}

uint64_t static NowPlayingOneDayCountSignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_231538C68(v4, v1, v2, v3);
}

uint64_t static NowPlayingOneDayCountSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612888);
  *a1 = result;
  return result;
}

uint64_t sub_2315381AC(void (*a1)(uint64_t *))
{
  v2 = v1;
  v4 = *(v1 + 32);
  v5 = sub_2314D1500(0, 0);
  if (qword_280D70420 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);

    v7 = sub_231585FE4();
    v8 = sub_2315865D4();

    v43 = a1;
    v42 = v2;
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v9 = 136315394;
      v10 = *(v2 + 16);
      v11 = *(v2 + 24);
      *(v9 + 4) = sub_2314A22E8();
      *(v9 + 12) = 2080;
      sub_2315860E4();
      v12 = sub_2314A22E8();

      *(v9 + 14) = v12;
      _os_log_impl(&dword_231496000, v7, v8, "NowPlayingOneDayCountSignal: Computed %s=%s", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    v13 = *(v4 + 16);

    sub_23149FF38();
    a1 = v14;
    v4 = sub_23153861C(v5, v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
    v15 = sub_231586AC4();
    v5 = v15;
    v16 = 0;
    v17 = 1 << *(v4 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v4 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = v15 + 64;
    if (!v19)
    {
      break;
    }

    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_13:
      v2 = v22 | (v16 << 6);
      v25 = (*(v4 + 48) + 16 * v2);
      v26 = *v25;
      a1 = v25[1];
      v27 = *(*(v4 + 56) + 8 * v2);

      v28 = Double.rounded(to:)(3);
      *(v21 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
      v29 = (v5[6] + 16 * v2);
      *v29 = v26;
      v29[1] = a1;
      *(v5[7] + 8 * v2) = v28;
      v30 = v5[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v5[2] = v32;
      if (!v19)
      {
        goto LABEL_8;
      }
    }

LABEL_22:
    __break(1u);
LABEL_23:
    OUTLINED_FUNCTION_6_0();
  }

LABEL_8:
  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v16 >= v20)
    {
      break;
    }

    v24 = *(v4 + 64 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v19 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  v33 = sub_231585FE4();
  v34 = sub_2315865D4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = *(v42 + 16);
    v37 = *(v42 + 24);
    *(v35 + 4) = sub_2314A22E8();
    *(v35 + 12) = 2080;
    sub_2315860E4();
    v38 = sub_2314A22E8();

    *(v35 + 14) = v38;
    _os_log_impl(&dword_231496000, v33, v34, "NowPlayingOneDayCountSignal: Normalized Counts %s=%s", v35, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v44 = v5;
  v45 = 3;
  v43(&v44);
  v39 = v44;
  v40 = v45;

  return sub_2314A5EEC(v39, v40);
}

uint64_t sub_23153861C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
  result = sub_231586AC4();
  v5 = result;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = result + 64;
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = (*(a1 + 48) + 16 * v15);
      v17 = *v16;
      result = v16[1];
      v18 = *(*(a1 + 56) + 8 * v15);
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (v5[6] + 16 * v15);
      *v19 = v17;
      v19[1] = result;
      *(v5[7] + 8 * v15) = v18;
      v20 = v5[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      v5[2] = v22;

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        v23 = sub_2315388E0(v5, a2, 0);

        return v23;
      }

      v14 = *(a1 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *NowPlayingOneDayCountSignal.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t NowPlayingOneDayCountSignal.__deallocating_deinit()
{
  NowPlayingOneDayCountSignal.deinit();

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

uint64_t sub_23153882C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_231538C68(v4, v1, v2, v3);
}

uint64_t sub_2315388E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {

    sub_23153795C(a2, a1);
    v7 = sub_231507660(v6);
  }

  else
  {

    v7 = a1;
  }

  if (qword_280D70420 != -1)
  {
LABEL_23:
    OUTLINED_FUNCTION_6_0();
  }

  v8 = sub_231585FF4();
  __swift_project_value_buffer(v8, qword_280D72248);

  v9 = sub_231585FE4();
  v10 = sub_2315865D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136315138;
    sub_2315860E4();
    v12 = sub_2314A22E8();

    *(v11 + 4) = v12;
    _os_log_impl(&dword_231496000, v9, v10, "Normalize#values %s...", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v13 = 0;
  v14 = 1 << *(v7 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v7 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = 0.0;
  if (v16)
  {
    while (1)
    {
      v19 = v13;
LABEL_15:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v18 = v18 + *(*(v7 + 56) + ((v19 << 9) | (8 * v20)));
      if (!v16)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v7 + 64 + 8 * v19);
    ++v13;
    if (v16)
    {
      v13 = v19;
      goto LABEL_15;
    }
  }

  v21 = fabs(v18);
  if (a3)
  {
    v18 = v21;
  }

  v31 = v18;
  v30 = MEMORY[0x277D84F98];

  sub_231537C28(v22, &v31, &v30, v7);

  v23 = sub_231585FE4();
  v24 = sub_2315865D4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v25 = 136315138;
    swift_beginAccess();

    sub_2315860E4();

    v26 = sub_2314A22E8();

    *(v25 + 4) = v26;
    _os_log_impl(&dword_231496000, v23, v24, "Normalize#values result: %s...", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  swift_beginAccess();
  return v30;
}

uint64_t sub_231538C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *(v6 + 16);
  v13(&v19 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_231588340;
  v15 = type metadata accessor for NowPlayingOneDayCountSignal();
  v16 = swift_allocObject();
  (v13)(v10, v12, a3);
  v17 = sub_231538FD4(v10, v16, a3, a4);
  *(v14 + 56) = v15;
  *(v14 + 64) = &protocol witness table for NowPlayingOneDayCountSignal;
  *(v14 + 32) = v17;
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t sub_231538DF8(uint64_t a1)
{
  if (qword_27DD5AE48 != -1)
  {
    swift_once();
  }

  v2 = *algn_27DD5BDA8;
  *(a1 + 16) = qword_27DD5BDA0;
  *(a1 + 24) = v2;
  v3 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();

  v7 = MEMORY[0x277D84F90];
  *(a1 + 32) = sub_231528564(MEMORY[0x277D84F90], sub_23149A718, 0, v6);
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return a1;
}

_BYTE *storeEnumTagSinglePayload for Normalize(_BYTE *result, int a2, int a3)
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

uint64_t sub_231538FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 32))();
  if (qword_27DD5AE48 != -1)
  {
    swift_once();
  }

  v7 = *algn_27DD5BDA8;
  *(a2 + 16) = qword_27DD5BDA0;
  *(a2 + 24) = v7;
  v8 = v18;
  v9 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v10 = *(a4 + 8);

  v11 = v10(a3, a4);
  v12 = type metadata accessor for BiomeQueriesNowPlaying(0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  *(a2 + 32) = sub_231528564(v11, sub_23149A718, 0, v15);
  *(a2 + 40) = v10(v8, v9);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  __swift_destroy_boxed_opaque_existential_1(v17);
  return a2;
}

double SignalDefinitionParametersProvider.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 88) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 65) = 0u;
  return result;
}

void __swiftcall EntityValue.init(fieldName:entityId:)(SiriSignals::EntityValue_optional *__return_ptr retstr, Swift::String_optional fieldName, Swift::String_optional entityId)
{
  if (fieldName.value._object && entityId.value._object)
  {
    retstr->value.fieldName = fieldName.value;
    retstr->value.fieldValue = entityId.value;
  }

  else
  {

    retstr->value.fieldName = 0u;
    retstr->value.fieldValue = 0u;
  }
}

double sub_231539240@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double SignalDefinitionParametersProviding.entityValue.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t EntityValue.fieldName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EntityValue.fieldValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SignalDefinitionParametersProvider.sharedUserId.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SignalDefinitionParametersProvider.entityValue.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_23149A8A0(v2, v3);
}

void *SignalDefinitionParametersProvider.intent.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t sub_231539348(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_23153938C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_2315393D4(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_231539418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[6];
  v6 = v4[7];
  v7 = v4[8];
  v8 = v4[9];
  v4[6] = a3;
  v4[7] = a4;
  v4[8] = a1;
  v4[9] = a2;

  sub_2314A0D38(v5, v6);
}

uint64_t sub_23153949C(void *a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
  v3 = a1;
}

_BYTE *storeEnumTagSinglePayload for NoParameters(_BYTE *result, int a2, int a3)
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

uint64_t sub_231539628(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_231539668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231539828()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B600, &qword_23158AAC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23158D740;
  *(v0 + 32) = type metadata accessor for CalendarSignal();
  *(v0 + 40) = &protocol witness table for CalendarSignal;
  *(v0 + 48) = &type metadata for ClientLanguageSignal;
  *(v0 + 56) = &protocol witness table for ClientLanguageSignal;
  *(v0 + 64) = &type metadata for ClientLocaleSignal;
  *(v0 + 72) = &protocol witness table for ClientLocaleSignal;
  *(v0 + 80) = &type metadata for ClientRegionSignal;
  *(v0 + 88) = &protocol witness table for ClientRegionSignal;
  *(v0 + 96) = &type metadata for DeviceClassSignal;
  *(v0 + 104) = &protocol witness table for DeviceClassSignal;
  *(v0 + 112) = &type metadata for ClientTimeRangeSignal;
  *(v0 + 120) = &protocol witness table for ClientTimeRangeSignal;
  *(v0 + 128) = &type metadata for HashedLocationSignal;
  *(v0 + 136) = &protocol witness table for HashedLocationSignal;
  *(v0 + 144) = &type metadata for IsCarPlayConnectedSignal;
  *(v0 + 152) = &protocol witness table for IsCarPlayConnectedSignal;
  *(v0 + 160) = &type metadata for IsScreenLockedSignal;
  *(v0 + 168) = &protocol witness table for IsScreenLockedSignal;
  *(v0 + 176) = &type metadata for DeviceMotionStateSignal;
  *(v0 + 184) = &protocol witness table for DeviceMotionStateSignal;
  *(v0 + 192) = type metadata accessor for DomainRecencySignal();
  *(v0 + 200) = &protocol witness table for DomainRecencySignal;
  *(v0 + 208) = type metadata accessor for DomainRecencyRankSignal();
  *(v0 + 216) = &protocol witness table for DomainRecencyRankSignal;
  *(v0 + 224) = type metadata accessor for DomainFrequencySignal();
  *(v0 + 232) = &protocol witness table for DomainFrequencySignal;
  *(v0 + 240) = &type metadata for DomainTaskAbandonmentSignal;
  *(v0 + 248) = &protocol witness table for DomainTaskAbandonmentSignal;
  *(v0 + 256) = type metadata accessor for LastAppDisambiguationResultSignal();
  *(v0 + 264) = &protocol witness table for LastAppDisambiguationResultSignal;
  *(v0 + 272) = type metadata accessor for LastAppDisambiguationRecencySignal();
  *(v0 + 280) = &protocol witness table for LastAppDisambiguationRecencySignal;
  *(v0 + 288) = type metadata accessor for LastActionDisambiguationResultSignal();
  *(v0 + 296) = &protocol witness table for LastActionDisambiguationResultSignal;
  *(v0 + 304) = type metadata accessor for LastActionDisambiguationRecencySignal();
  *(v0 + 312) = &protocol witness table for LastActionDisambiguationRecencySignal;
  *(v0 + 320) = &type metadata for TimeSpentInAppAffinityScore;
  *(v0 + 328) = &protocol witness table for TimeSpentInAppAffinityScore;
  *(v0 + 336) = type metadata accessor for ActionDisambiguationFrequencySignal();
  *(v0 + 344) = &protocol witness table for ActionDisambiguationFrequencySignal;
  *(v0 + 352) = type metadata accessor for AppDisambiguationFrequencySignal();
  *(v0 + 360) = &protocol witness table for AppDisambiguationFrequencySignal;
  *(v0 + 368) = type metadata accessor for SelectedActionDisambiguationFrequencySignal();
  *(v0 + 376) = &protocol witness table for SelectedActionDisambiguationFrequencySignal;
  *(v0 + 384) = type metadata accessor for SelectedAppDisambiguationFrequencySignal();
  *(v0 + 392) = &protocol witness table for SelectedAppDisambiguationFrequencySignal;
  *(v0 + 400) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(v0 + 408) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  *(v0 + 416) = &type metadata for ForegroundAppRecencySignal;
  *(v0 + 424) = &protocol witness table for ForegroundAppRecencySignal;
  *(v0 + 432) = type metadata accessor for AppLaunchCountSignal();
  *(v0 + 440) = &protocol witness table for AppLaunchCountSignal;
  *(v0 + 448) = type metadata accessor for DomainUserPersonaSignal();
  *(v0 + 456) = protocol witness table for DomainUserPersonaSignal;
  *(v0 + 464) = type metadata accessor for LastNowPlayingSignal();
  *(v0 + 472) = &protocol witness table for LastNowPlayingSignal;
  *(v0 + 480) = type metadata accessor for LastNowPlayingAtSignal();
  *(v0 + 488) = &protocol witness table for LastNowPlayingAtSignal;
  *(v0 + 496) = type metadata accessor for LastNowPlayingRecencySignal();
  *(v0 + 504) = &protocol witness table for LastNowPlayingRecencySignal;
  *(v0 + 512) = &type metadata for NowPlayingCountSignal;
  *(v0 + 520) = &protocol witness table for NowPlayingCountSignal;
  *(v0 + 528) = &type metadata for NowPlayingSignal;
  *(v0 + 536) = &protocol witness table for NowPlayingSignal;
  *(v0 + 544) = type metadata accessor for NowPlayingScoresSignal();
  *(v0 + 552) = &protocol witness table for NowPlayingScoresSignal;
  *(v0 + 560) = &type metadata for NowPlayingStateSignal;
  *(v0 + 568) = &protocol witness table for NowPlayingStateSignal;
  *(v0 + 576) = &type metadata for MediaSubscriptionStatusSignal;
  *(v0 + 584) = &protocol witness table for MediaSubscriptionStatusSignal;
  *(v0 + 592) = &type metadata for TotalTimeSpentInApp;
  *(v0 + 600) = &protocol witness table for TotalTimeSpentInApp;
  result = type metadata accessor for UsageScoreSignal();
  *(v0 + 608) = result;
  *(v0 + 616) = &protocol witness table for UsageScoreSignal;
  *(v0 + 624) = &type metadata for ClientWorkoutSignal;
  *(v0 + 632) = &protocol witness table for ClientWorkoutSignal;
  qword_280D721C0 = v0;
  return result;
}

uint64_t sub_231539B94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B600, &qword_23158AAC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23158D750;
  *(v0 + 32) = type metadata accessor for DomainToContactRecencySignal();
  *(v0 + 40) = &protocol witness table for DomainToContactRecencySignal;
  *(v0 + 48) = type metadata accessor for DomainToContactRecencyRankSignal();
  *(v0 + 56) = &protocol witness table for DomainToContactRecencyRankSignal;
  *(v0 + 64) = type metadata accessor for DomainToContactFrequencySignal();
  *(v0 + 72) = &protocol witness table for DomainToContactFrequencySignal;
  *(v0 + 80) = type metadata accessor for DomainToContactAffinityScoreSignal();
  *(v0 + 88) = &protocol witness table for DomainToContactAffinityScoreSignal;
  *(v0 + 96) = type metadata accessor for DomainToHandleAffinityScoreSignal();
  *(v0 + 104) = &protocol witness table for DomainToHandleAffinityScoreSignal;
  *(v0 + 112) = type metadata accessor for DomainToContactAffinityScoreByNameSignal();
  *(v0 + 120) = &protocol witness table for DomainToContactAffinityScoreByNameSignal;
  *(v0 + 128) = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
  *(v0 + 136) = &protocol witness table for DomainToContactAffinityScoreByIntentSignal;
  *(v0 + 144) = type metadata accessor for DomainToContactTimeSinceLastUsedSignal();
  *(v0 + 152) = &protocol witness table for DomainToContactTimeSinceLastUsedSignal;
  *(v0 + 160) = type metadata accessor for DomainToContactFrequencyByIntentSignal();
  *(v0 + 168) = &protocol witness table for DomainToContactFrequencyByIntentSignal;
  *(v0 + 176) = type metadata accessor for DomainToContactTotalFrequencyByIntentSignal();
  *(v0 + 184) = &protocol witness table for DomainToContactTotalFrequencyByIntentSignal;
  *(v0 + 192) = type metadata accessor for DomainTotalFrequencyByCountryCodeSignal();
  *(v0 + 200) = &protocol witness table for DomainTotalFrequencyByCountryCodeSignal;
  *(v0 + 208) = type metadata accessor for DomainAffinityScoreSignal();
  *(v0 + 216) = &protocol witness table for DomainAffinityScoreSignal;
  *(v0 + 224) = &type metadata for TimeSinceAppLastInstalledSignal;
  *(v0 + 232) = &protocol witness table for TimeSinceAppLastInstalledSignal;
  *(v0 + 240) = &type metadata for TimeTodaySpentInApp;
  *(v0 + 248) = &protocol witness table for TimeTodaySpentInApp;
  *(v0 + 256) = &type metadata for ForegroundAppBiomeSignal;
  *(v0 + 264) = &protocol witness table for ForegroundAppBiomeSignal;
  *(v0 + 272) = &type metadata for ForegroundAppRecencySignal;
  *(v0 + 280) = &protocol witness table for ForegroundAppRecencySignal;
  *(v0 + 288) = &type metadata for IsFirstPartyAppSignal;
  *(v0 + 296) = &protocol witness table for IsFirstPartyAppSignal;
  *(v0 + 304) = type metadata accessor for DomainTotalFrequencySignal();
  *(v0 + 312) = &protocol witness table for DomainTotalFrequencySignal;
  *(v0 + 320) = &type metadata for ForegroundAppInFocusSignal;
  *(v0 + 328) = &protocol witness table for ForegroundAppInFocusSignal;
  *(v0 + 336) = type metadata accessor for NowPlayingOneDayCountSignal();
  *(v0 + 344) = &protocol witness table for NowPlayingOneDayCountSignal;
  return v0;
}

uint64_t static SignalFactory.all.getter()
{
  if (qword_280D6E250 != -1)
  {
    OUTLINED_FUNCTION_0_79();
  }

  v0 = qword_280D721C0;
  v1 = sub_231539B94();

  sub_23152C978(v1);
  return v0;
}

SiriSignals::SignalFactory __swiftcall SignalFactory.init(classes:context:)(Swift::OpaquePointer classes, SiriSignals::SignalComputationContext *context)
{
  v18 = v2;
  rawValue = context->bundleIds._rawValue;
  v19 = *&context->entityId.value._object;
  object = context->sharedUserId.value._object;
  v20 = context->domainUseCases.value._rawValue;
  v5 = *(classes._rawValue + 2);
  if (v5)
  {
    countAndFlagsBits = context->entityId.value._countAndFlagsBits;
    v7 = MEMORY[0x277D84F90];
    v8 = (classes._rawValue + 40);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v21[0] = rawValue;
      v21[1] = countAndFlagsBits;
      v22 = v19;
      v23 = object;
      v24 = v20;
      result.instances._rawValue = (*(v10 + 96))(v21);
      v12 = *(result.instances._rawValue + 2);
      v13 = v7[2];
      if (__OFADD__(v13, v12))
      {
        break;
      }

      v14 = result.instances._rawValue;
      result.instances._rawValue = swift_isUniquelyReferenced_nonNull_native();
      if (!LODWORD(result.instances._rawValue) || v13 + v12 > v7[3] >> 1)
      {
        sub_2314F0CB4();
        v7 = result.instances._rawValue;
      }

      if (v14[2])
      {
        if ((v7[3] >> 1) - v7[2] < v12)
        {
          goto LABEL_19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
        swift_arrayInitWithCopy();

        if (v12)
        {
          v15 = v7[2];
          v16 = __OFADD__(v15, v12);
          v17 = v15 + v12;
          if (v16)
          {
            goto LABEL_20;
          }

          v7[2] = v17;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_18;
        }
      }

      v8 += 2;
      if (!--v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_16:

    *v18 = v7;
  }

  return result;
}

SiriSignals::SignalFactory static SignalFactory.instantiatingAll(context:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (qword_280D6E250 != -1)
  {
    OUTLINED_FUNCTION_0_79();
  }

  v7._rawValue = qword_280D721C0;
  v8 = sub_231539B94();

  sub_23152C978(v8);
  v10.bundleIds._rawValue = v1;
  v10.entityId.value._countAndFlagsBits = v2;
  v10.entityId.value._object = v3;
  v10.sharedUserId.value._countAndFlagsBits = v4;
  v10.sharedUserId.value._object = v5;
  v10.domainUseCases.value._rawValue = v6;

  return SignalFactory.init(classes:context:)(v7, &v10);
}

uint64_t SignalGatherer.__allocating_init(signals:candidateAppBundleIds:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SignalGatherer.init(signals:candidateAppBundleIds:)(a1, a2);
  return v4;
}

uint64_t SignalGathererError.hashValue.getter()
{
  v1 = *v0;
  sub_231586D14();
  MEMORY[0x231930A00](v1);
  return sub_231586D44();
}

SiriSignals::SignalGatherer::ValuesWithTimings __swiftcall SignalGatherer.ValuesWithTimings.init(values:timings:overallTime:)(Swift::OpaquePointer values, Swift::OpaquePointer timings, Swift::Double overallTime)
{
  *v3 = values;
  *(v3 + 8) = timings;
  *(v3 + 16) = overallTime;
  result.overallTime = overallTime;
  result.timings = timings;
  result.values = values;
  return result;
}

void *SignalGatherer.init(signals:candidateAppBundleIds:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = a1;
  v31 = *v2;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v30 = v2;
    v40 = MEMORY[0x277D84F90];
    sub_23152D5B8();
    v8 = v40;
    v9 = v5 + 32;
    do
    {
      sub_2314A5780(v9, v36);
      sub_2314A5780(v36, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB30, &qword_23158C660);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v36);
        v10 = v33;
        v11 = &v37;
      }

      else
      {
        v34 = 0;
        memset(v33, 0, sizeof(v33));
        v38 = &type metadata for SignalProvidingAdapter;
        v39 = &off_28461B890;
        *&v37 = swift_allocObject();
        v10 = v36;
        v11 = (v37 + 16);
      }

      sub_23149FD3C(v10, v11);
      v40 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        OUTLINED_FUNCTION_18(v12);
        sub_23152D5B8();
      }

      v15 = v38;
      v14 = v39;
      __swift_mutable_project_boxed_opaque_existential_1(&v37, v38);
      OUTLINED_FUNCTION_29_1();
      v17 = *(v16 + 64);
      MEMORY[0x28223BE20](v18);
      OUTLINED_FUNCTION_5();
      v21 = v20 - v19;
      (*(v22 + 16))(v20 - v19);
      sub_231540938(v13, v21, &v40, v15, v14);
      __swift_destroy_boxed_opaque_existential_1(&v37);
      v8 = v40;
      v9 += 40;
      --v6;
    }

    while (v6);
    v3 = v30;
    v4 = a2;
    v5 = a1;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v3[2] = v8;
  v35[0] = v7;
  v23 = *(v5 + 16);
  if (v23)
  {
    v24 = v5 + 32;
    v25 = MEMORY[0x277D84F90];
    do
    {
      sub_2314A5780(v24, &v37);
      sub_23149FD3C(&v37, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB30, &qword_23158C660);
      type metadata accessor for CoreDuetBackedSignal();
      if ((swift_dynamicCast() & 1) != 0 && *&v33[0])
      {
        MEMORY[0x231930040]();
        v26 = *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v26 >> 1)
        {
          OUTLINED_FUNCTION_18(v26);
          sub_2315863C4();
        }

        sub_231586404();
        v25 = v35[0];
      }

      v24 += 40;
      --v23;
    }

    while (v23);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v27 = sub_23153A5EC(v25);

  v3[5] = v27;
  v3[3] = v4;
  type metadata accessor for SignalCache();
  v3[4] = sub_23153449C();
  return v3;
}

uint64_t sub_23153A5EC(uint64_t a1)
{
  if (sub_2314A7080(a1))
  {
    v2 = sub_231566740(a1);
    if (!v2)
    {
      goto LABEL_9;
    }

    v3 = v2;
    v25 = MEMORY[0x277D84F90];
    sub_2315869F4();
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x231930660](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        ++v4;
        v6 = *(v5 + 24);

        sub_2315869C4();
        v7 = *(v25 + 16);
        sub_231586A04();
        sub_231586A14();
        sub_2315869D4();
      }

      while (v3 != v4);
LABEL_9:
      v8 = [objc_opt_self() userContext];
      if (v8)
      {
        v9 = v8;
        sub_2314A207C(0, &qword_280D6FE80, 0x277CFE358);
        v10 = sub_231586374();

        v11 = [v9 valuesForKeyPaths_];

        if (v11)
        {
          sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
          sub_2314DFED8();
          v12 = sub_2315860D4();

          return v12;
        }

        else
        {
          if (qword_280D70420 != -1)
          {
            swift_once();
          }

          v20 = sub_231585FF4();
          __swift_project_value_buffer(v20, qword_280D72248);
          v21 = sub_231585FE4();
          v22 = sub_2315865E4();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 0;
            _os_log_impl(&dword_231496000, v21, v22, "Unable to look up values from user CDClientContext", v23, 2u);
            MEMORY[0x231931280](v23, -1, -1);
          }

          sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
          sub_2314DFED8();
          v24 = sub_2315860F4();

          return v24;
        }
      }

      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v19 = sub_231585FF4();
      __swift_project_value_buffer(v19, qword_280D72248);
      v15 = sub_231585FE4();
      v16 = sub_2315865E4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        v18 = "Unable to look up CDClientContext";
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    __break(1u);
  }

  else if (qword_280D70420 == -1)
  {
    goto LABEL_13;
  }

  swift_once();
LABEL_13:
  v14 = sub_231585FF4();
  __swift_project_value_buffer(v14, qword_280D72248);
  v15 = sub_231585FE4();
  v16 = sub_2315865D4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "No CoreDuet-backed signals in signal set, skipping CD lookup cache fill";
LABEL_19:
    _os_log_impl(&dword_231496000, v15, v16, v18, v17, 2u);
    MEMORY[0x231931280](v17, -1, -1);
  }

LABEL_20:

  sub_2314A207C(0, &qword_280D6FE80, 0x277CFE358);
  sub_2314A207C(0, &qword_280D6FEA0, 0x277CFE340);
  sub_2314DFED8();

  return sub_2315860F4();
}

void sub_23153AAC4(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, void *a12)
{
  v139 = a6;
  v140 = a8;
  v151 = a7;
  v148 = a4;
  LODWORD(v177) = a3;
  LODWORD(v178) = a2;
  v162 = a1;
  v138 = a10;
  v149 = a9;
  v182 = sub_231586024();
  v159 = *(v182 - 1);
  v13 = *(v159 + 64);
  MEMORY[0x28223BE20](v182);
  v168 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_231586064();
  v158 = *(v167 - 8);
  v15 = *(v158 + 64);
  MEMORY[0x28223BE20](v167);
  v166 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_231586014();
  v146 = *(v17 - 8);
  v147 = v17;
  v18 = *(v146 + 64);
  MEMORY[0x28223BE20](v17);
  v143 = (&v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_231586094();
  v144 = *(v20 - 8);
  v145 = v20;
  v21 = *(v144 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v141 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v142 = &v135 - v24;
  v25 = sub_231585FD4();
  v26 = *(v25 - 8);
  v173 = v25;
  v174 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v179 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v29;
  MEMORY[0x28223BE20](v28);
  v176 = &v135 - v30;
  v155 = sub_231585884();
  v157 = *(v155 - 8);
  v31 = *(v157 + 64);
  v32 = MEMORY[0x28223BE20](v155);
  v137 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v135 - v34;
  v150 = a11;
  swift_retain_n();
  v156 = a12;
  v154 = v35;
  sub_231585874();
  v36 = swift_allocObject();
  v153 = v36;
  v37 = MEMORY[0x277D84F90];
  v38 = sub_2315860F4();
  *(v36 + 16) = 0;
  v136 = (v36 + 16);
  *(v36 + 24) = v38;
  v39 = swift_allocObject();
  v152 = v39;
  sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);
  v40 = sub_2315860F4();
  *(v39 + 16) = 0;
  v135 = (v39 + 16);
  *(v39 + 24) = v40;
  sub_23152F23C(&v193);
  v175 = dispatch_group_create();
  v41 = swift_allocObject();
  v172 = v41;
  *(v41 + 16) = v36;
  *(v41 + 24) = v39;
  v169 = a5;
  v42 = *(a5 + 16);
  v43 = *(v42 + 2);
  v44 = (v42 + 32);

  v45 = v37;

  v46 = 0;
  v180 = v42;
  v181 = v42 + 32;
  v47 = (v42 + 32);
  while (v43 != v46)
  {
    if (v46 >= *(v42 + 2))
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_18;
    }

    sub_2314A5780(v47, &v184);
    v48 = v186;
    v49 = v187;
    v50 = __swift_project_boxed_opaque_existential_1(&v184, v186);
    v51 = v48;
    v44 = v50;
    if (sub_23153DE6C(v51, v49))
    {
      sub_23149FD3C(&v184, &v190);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v189[0] = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v53 = *(v45 + 16);
        sub_23152D5B8();
        v45 = *&v189[0];
      }

      v54 = *(v45 + 16);
      if (v54 >= *(v45 + 24) >> 1)
      {
        sub_23152D5B8();
      }

      v44 = v191;
      v55 = v192;
      v56 = __swift_mutable_project_boxed_opaque_existential_1(&v190, v191);
      v57 = *(*(v44 - 8) + 64);
      MEMORY[0x28223BE20](v56);
      v59 = &v135 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v60 + 16))(v59);
      sub_231540938(v54, v59, v189, v44, v55);
      __swift_destroy_boxed_opaque_existential_1(&v190);
      v45 = *&v189[0];
      v42 = v180;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v184);
    }

    v47 += 40;
    ++v46;
  }

  if (v178)
  {

    v61 = sub_2315860F4();
    v62 = sub_2315860F4();
    v42 = v176;
  }

  else
  {
    v42 = v176;
    if (*(v169 + 32))
    {
      sub_23153496C(v45);
      v61 = v63;
      v62 = v64;
    }

    else
    {

      v61 = sub_2315860F4();
      v62 = sub_2315860F4();
    }
  }

  v47 = v62;
  v44 = v61;
  if (qword_280D70418 != -1)
  {
    goto LABEL_35;
  }

LABEL_18:
  v65 = qword_280D72240;
  sub_231585FC4();
  v66 = v179;
  v67 = *(v180 + 2);
  v68 = v175;
  v170 = v47;
  v171 = v44;
  if (v67)
  {
    v164 += 7;
    v165 = v174 + 16;
    v163 = v174 + 32;
    v161 = v177 & 1;
    v162 &= 1u;
    v159 += 8;
    v160 = &v185;
    v158 += 8;
    do
    {
      v178 = v67;
      sub_2314A5780(v181, &v190);
      dispatch_group_enter(v68);
      __swift_project_boxed_opaque_existential_1(&v190, v191);
      swift_getDynamicType();
      v69 = (*(v192 + 128))();
      v70 = &v193 + 8;
      if (v69)
      {
        v70 = &v195 + 8;
      }

      v180 = *v70;
      if (v69)
      {
        v71 = &v196;
      }

      else
      {
        v71 = &v194;
      }

      v177 = *v71;
      sub_2314A5780(&v190, v189);
      v72 = v173;
      v73 = v174;
      (*(v174 + 16))(v66, v42, v173);
      v74 = (*(v73 + 80) + 80) & ~*(v73 + 80);
      v75 = (v164 + v74) & 0xFFFFFFFFFFFFFFF8;
      v76 = v171;
      v77 = swift_allocObject();
      sub_23149FD3C(v189, (v77 + 16));
      v78 = v170;
      *(v77 + 7) = v169;
      *(v77 + 8) = v76;
      *(v77 + 9) = v78;
      v79 = *(v73 + 32);
      v80 = v172;
      v79(&v77[v74], v179, v72);
      v81 = &v77[v75];
      *v81 = sub_231541388;
      *(v81 + 1) = v80;
      v82 = &v77[(v75 + 23) & 0xFFFFFFFFFFFFFFF8];
      v83 = v168;
      v84 = v175;
      *v82 = v175;
      v85 = v161;
      v82[8] = v162;
      v82[9] = v85;
      v187 = sub_231541384;
      v188 = v77;
      *&v184 = MEMORY[0x277D85DD0];
      *(&v184 + 1) = 1107296256;
      v185 = sub_23149B484;
      v186 = &block_descriptor_45_0;
      v86 = _Block_copy(&v184);

      v87 = v177;

      v68 = v84;
      v88 = v84;
      v89 = v166;
      sub_231586054();
      v183 = MEMORY[0x277D84F90];
      sub_2314BCC04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
      sub_2314BCC5C();
      v90 = v167;
      sub_2315867C4();
      MEMORY[0x231930370](0, v89, v83, v86);
      v91 = v86;
      v42 = v176;
      _Block_release(v91);

      v92 = v182;

      (*v159)(v83, v92);
      v93 = v89;
      v66 = v179;
      (*v158)(v93, v90);
      __swift_destroy_boxed_opaque_existential_1(&v190);

      v181 += 40;
      v67 = v178 - 1;
    }

    while (v178 != 1);
  }

  v94 = v141;
  sub_231586074();
  v95 = v147;
  v96 = v143;
  *v143 = v148;
  v97 = v146;
  (*(v146 + 104))(v96, *MEMORY[0x277D85188], v95);
  v98 = v142;
  sub_231586084();
  (*(v97 + 8))(v96, v95);
  v99 = v145;
  v100 = *(v144 + 8);
  v100(v94, v145);
  v101 = sub_231586614();
  v100(v98, v99);
  if (v101)
  {
    v102 = qword_280D70420;
    v103 = v150;

    v104 = v156;
    v105 = v156;
    if (v102 != -1)
    {
      swift_once();
    }

    v106 = sub_231585FF4();
    __swift_project_value_buffer(v106, qword_280D72248);
    v107 = sub_231585FE4();
    v108 = sub_2315865E4();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *&v184 = v110;
      *v109 = 136315138;
      LOBYTE(v190) = 1;
      sub_231586204();
      v111 = sub_2314A22E8();

      *(v109 + 4) = v111;
      v104 = v156;
      _os_log_impl(&dword_231496000, v107, v108, "Signal gathering failed with %s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v110);
      MEMORY[0x231931280](v110, -1, -1);
      MEMORY[0x231931280](v109, -1, -1);
    }

    v112 = v173;
    v113 = v174;
    v114 = v176;
    swift_beginAccess();
    v115 = *(v103 + 16);
    v116 = *(v103 + 24);
    *(v103 + 16) = 1;
    *(v103 + 24) = 1;
    sub_231540AA0(v115, v116);
    sub_2315866F4();

    v190 = v193;
    v117 = v194;
    sub_2315074E4(&v190);

    v189[0] = v195;
    v118 = v196;
    sub_2315074E4(v189);

    (*(v113 + 8))(v114, v112);
    (*(v157 + 8))(v154, v155);
  }

  else
  {
    v119 = v136;
    os_unfair_lock_lock(v136);
    v181 = *(v153 + 24);
    v120 = v181;

    os_unfair_lock_unlock(v119);
    v121 = v135;
    os_unfair_lock_lock(v135);
    v122 = *(v152 + 24);

    os_unfair_lock_unlock(v121);
    v123 = v137;
    sub_231585874();
    sub_2315857A4();
    v124 = *(v157 + 8);
    v157 += 8;
    v182 = v124;
    (v124)(v123, v155);
    v125 = v150;

    v126 = v156;

    v127 = v149;
    sub_23153F684(v120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B430, &unk_23158B8B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 40) = 0x8000000231590A60;
    v129 = *(v127 + 24);
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    *(inited + 48) = v129;

    sub_2315860F4();
    objc_allocWithZone(sub_231585F84());

    v130 = sub_231585F74();
    swift_beginAccess();
    v131 = *(v125 + 16);
    LOBYTE(v129) = *(v125 + 24);
    *(v125 + 16) = v130;
    *(v125 + 24) = 0;
    v132 = v130;
    sub_231540AA0(v131, v129);
    sub_2315866F4();

    v104 = v156;
    v190 = v193;
    v133 = v194;
    sub_2315074E4(&v190);

    v189[0] = v195;
    v134 = v196;
    sub_2315074E4(v189);

    (*(v174 + 8))(v176, v173);
    (v182)(v154, v155);
  }
}

uint64_t sub_23153BB90(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, void (*a11)(__int128 *), uint64_t a12)
{
  v114 = a6;
  v115 = a8;
  v129 = a7;
  v123 = a4;
  LODWORD(v148) = a3;
  LODWORD(v149) = a2;
  v138 = a1;
  v128 = a12;
  v126 = a11;
  v113 = a10;
  v127 = a9;
  v156 = sub_231586024();
  v135 = *(v156 - 1);
  v13 = *(v135 + 64);
  MEMORY[0x28223BE20](v156);
  v155 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_231586064();
  v134 = *(v142 - 8);
  v15 = *(v134 + 64);
  MEMORY[0x28223BE20](v142 - 8);
  v154 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_231586014();
  v121 = *(v17 - 8);
  v122 = v17;
  v18 = *(v121 + 64);
  MEMORY[0x28223BE20](v17);
  v118 = (&v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_231586094();
  v119 = *(v20 - 8);
  v120 = v20;
  v21 = *(v119 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v116 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v117 = &v109 - v24;
  v152 = sub_231585FD4();
  v146 = *(v152 - 8);
  v25 = *(v146 + 64);
  v26 = MEMORY[0x28223BE20](v152);
  v151 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v27;
  MEMORY[0x28223BE20](v26);
  v145 = &v109 - v28;
  v132 = sub_231585884();
  v125 = *(v132 - 8);
  v29 = *(v125 + 64);
  v30 = MEMORY[0x28223BE20](v132);
  v112 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v131 = &v109 - v32;
  sub_231585874();
  v33 = swift_allocObject();
  v130 = v33;
  v34 = MEMORY[0x277D84F90];
  v35 = MEMORY[0x277D837E0];
  v36 = sub_2315860F4();
  *(v33 + 16) = 0;
  v111 = (v33 + 16);
  *(v33 + 24) = v36;
  v37 = swift_allocObject();
  v124 = v37;
  sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);
  v38 = sub_2315860F4();
  *(v37 + 16) = 0;
  v110 = (v37 + 16);
  *(v37 + 24) = v38;
  sub_23152F23C(&v167);
  v147 = dispatch_group_create();
  v39 = swift_allocObject();
  v133 = v39;
  *(v39 + 16) = v33;
  *(v39 + 24) = v37;
  v143 = a5;
  v40 = *(a5 + 16);
  v41 = *(v40 + 16);

  v42 = 0;
  v153 = v40 + 32;
  v43 = v40 + 32;
  v150 = v40;
  while (v41 != v42)
  {
    if (v42 >= *(v40 + 16))
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_18;
    }

    sub_2314A5780(v43, &v158);
    v44 = v160;
    v45 = v161;
    __swift_project_boxed_opaque_existential_1(&v158, v160);
    if (sub_23153DE6C(v44, v45))
    {
      sub_23149FD3C(&v158, &v164);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v163[0] = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = *(v34 + 16);
        sub_23152D5B8();
        v34 = *&v163[0];
      }

      v48 = *(v34 + 16);
      if (v48 >= *(v34 + 24) >> 1)
      {
        sub_23152D5B8();
      }

      v49 = v165;
      v35 = v166;
      v50 = __swift_mutable_project_boxed_opaque_existential_1(&v164, v165);
      v51 = *(*(v49 - 8) + 64);
      MEMORY[0x28223BE20](v50);
      v53 = &v109 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v53);
      sub_231540938(v48, v53, v163, v49, v35);
      __swift_destroy_boxed_opaque_existential_1(&v164);
      v34 = *&v163[0];
      v40 = v150;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v158);
    }

    v43 += 40;
    ++v42;
  }

  if (v149)
  {

    v43 = sub_2315860F4();
    v40 = v150;
    v35 = sub_2315860F4();
    v42 = v145;
  }

  else
  {
    v42 = v145;
    if (*(v143 + 32))
    {
      sub_23153496C(v34);
      v43 = v55;
      v35 = v56;
    }

    else
    {

      v43 = sub_2315860F4();
      v40 = v150;
      v35 = sub_2315860F4();
    }
  }

  if (qword_280D70418 != -1)
  {
    goto LABEL_35;
  }

LABEL_18:
  v57 = qword_280D72240;
  sub_231585FC4();
  v58 = *(v40 + 16);
  v60 = v151;
  v59 = v152;
  v61 = v147;
  v62 = v133;
  v144 = v43;
  if (v58)
  {
    v140 += 7;
    v141 = v146 + 16;
    v139 = v146 + 32;
    v137 = v148 & 1;
    v138 &= 1u;
    v135 += 8;
    v136 = &v159;
    v134 += 8;
    do
    {
      v150 = v58;
      sub_2314A5780(v153, &v164);
      dispatch_group_enter(v61);
      __swift_project_boxed_opaque_existential_1(&v164, v165);
      swift_getDynamicType();
      v63 = (*(v166 + 128))();
      v64 = &v167 + 8;
      if (v63)
      {
        v64 = &v169 + 8;
      }

      v148 = *v64;
      if (v63)
      {
        v65 = &v170;
      }

      else
      {
        v65 = &v168;
      }

      v149 = *v65;
      sub_2314A5780(&v164, v163);
      v66 = v146;
      (*(v146 + 16))(v60, v42, v59);
      v67 = (*(v66 + 80) + 80) & ~*(v66 + 80);
      v68 = (v140 + v67) & 0xFFFFFFFFFFFFFFF8;
      v69 = v144;
      v70 = swift_allocObject();
      sub_23149FD3C(v163, (v70 + 16));
      *(v70 + 7) = v143;
      *(v70 + 8) = v69;
      *(v70 + 9) = v35;
      (*(v66 + 32))(&v70[v67], v151, v152);
      v71 = &v70[v68];
      *v71 = sub_231541388;
      *(v71 + 1) = v62;
      v72 = &v70[(v68 + 23) & 0xFFFFFFFFFFFFFFF8];
      v73 = v147;
      *v72 = v147;
      v74 = v137;
      v72[8] = v138;
      v72[9] = v74;
      v161 = sub_231541384;
      v162 = v70;
      *&v158 = MEMORY[0x277D85DD0];
      *(&v158 + 1) = 1107296256;
      v159 = sub_23149B484;
      v160 = &block_descriptor_58;
      v75 = _Block_copy(&v158);

      v76 = v149;

      v61 = v73;
      v77 = v73;
      v60 = v151;
      sub_231586054();
      v157 = MEMORY[0x277D84F90];
      sub_2314BCC04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
      sub_2314BCC5C();
      v42 = v145;
      sub_2315867C4();
      MEMORY[0x231930370](0, v154, v155, v75);
      v78 = v75;
      v59 = v152;
      _Block_release(v78);

      (*v135)(v155, v156);
      (*v134)(v154, v142);
      __swift_destroy_boxed_opaque_existential_1(&v164);

      v153 += 40;
      v58 = v150 - 1;
    }

    while (v150 != 1);
  }

  v79 = v116;
  sub_231586074();
  v80 = v122;
  v81 = v118;
  *v118 = v123;
  v82 = v121;
  (*(v121 + 104))(v81, *MEMORY[0x277D85188], v80);
  v83 = v117;
  sub_231586084();
  (*(v82 + 8))(v81, v80);
  v84 = v120;
  v85 = *(v119 + 8);
  v85(v79, v120);
  v86 = sub_231586614();
  v85(v83, v84);
  if (v86)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v87 = sub_231585FF4();
    __swift_project_value_buffer(v87, qword_280D72248);
    v88 = sub_231585FE4();
    v89 = sub_2315865E4();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v158 = v91;
      *v90 = 136315138;
      LOBYTE(v164) = 1;
      sub_231586204();
      v92 = sub_2314A22E8();

      *(v90 + 4) = v92;
      _os_log_impl(&dword_231496000, v88, v89, "Signal gathering failed with %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x231931280](v91, -1, -1);
      MEMORY[0x231931280](v90, -1, -1);
    }

    v93 = v152;
    v94 = v146;
    *&v158 = 1;
    BYTE8(v158) = 1;
    v126(&v158);
    v158 = v167;
    v95 = v168;
    sub_2315074E4(&v158);

    v164 = v169;
    v96 = v170;
    sub_2315074E4(&v164);

    (*(v94 + 8))(v42, v93);
    (*(v125 + 8))(v131, v132);
  }

  else
  {
    v97 = v111;
    os_unfair_lock_lock(v111);
    v98 = *(v130 + 24);

    os_unfair_lock_unlock(v97);
    v99 = v110;
    os_unfair_lock_lock(v110);
    v100 = *(v124 + 24);

    os_unfair_lock_unlock(v99);
    v101 = v112;
    sub_231585874();
    sub_2315857A4();
    v156 = *(v125 + 8);
    v156(v101, v132);

    v102 = v127;
    sub_23153F684(v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B430, &unk_23158B8B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_231588340;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 40) = 0x8000000231590A60;
    v104 = *(v102 + 24);
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    *(inited + 48) = v104;

    sub_2315860F4();
    objc_allocWithZone(sub_231585F84());

    *&v158 = sub_231585F74();
    BYTE8(v158) = 0;
    v105 = v158;
    v126(&v158);

    sub_231540AA0(v158, SBYTE8(v158));
    v158 = v167;
    v106 = v168;
    sub_2315074E4(&v158);

    v164 = v169;
    v107 = v170;
    sub_2315074E4(&v164);

    (*(v146 + 8))(v145, v152);
    v156(v131, v132);
  }
}

uint64_t sub_23153CBA4(int a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v150 = a6;
  v151 = a5;
  v145 = a4;
  LODWORD(v169) = a3;
  LODWORD(v170) = a2;
  LODWORD(v168) = a1;
  v146 = sub_231586014();
  v8 = OUTLINED_FUNCTION_4_1(v146);
  v144 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v13 - v12);
  v143 = sub_231586094();
  v14 = OUTLINED_FUNCTION_4_1(v143);
  v142 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v139 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_13_1(&v135 - v20);
  v165 = sub_231586024();
  v21 = OUTLINED_FUNCTION_16_8(v165);
  v157 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v26 - v25);
  v164 = sub_231586064();
  v27 = OUTLINED_FUNCTION_16_8(v164);
  v156 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v32 - v31);
  v172 = sub_231585FD4();
  v33 = OUTLINED_FUNCTION_4_1(v172);
  v171 = v34;
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v33);
  v39 = &v135 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13_1(&v135 - v40);
  v149 = sub_231585884();
  v41 = OUTLINED_FUNCTION_4_1(v149);
  v148 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_1();
  v137 = v45;
  MEMORY[0x28223BE20](v46);
  v147 = &v135 - v47;
  sub_231585874();
  OUTLINED_FUNCTION_19_8();
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D837E0];
  v51 = sub_2315860F4();
  *(v48 + 16) = 0;
  v136 = (v48 + 16);
  *(v48 + 24) = v51;
  OUTLINED_FUNCTION_19_8();
  v52 = swift_allocObject();
  sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);
  v53 = sub_2315860F4();
  *(v52 + 16) = 0;
  v135 = (v52 + 16);
  *(v52 + 24) = v53;
  sub_23152F23C(&v187);
  v176 = dispatch_group_create();
  OUTLINED_FUNCTION_19_8();
  v54 = swift_allocObject();
  v154 = v54;
  *(v54 + 16) = v48;
  *(v54 + 24) = v52;
  isa = v7[2].isa;
  v56 = *(isa + 2);
  v174 = isa;
  v57 = isa + 32;
  v153 = v48;

  v152 = v52;

  v58 = 0;
  v59 = v57;
  v60 = v49;
  v155 = v7;
  v173 = v39;
  while (v56 != v58)
  {
    if (v58 >= *(v174 + 16))
    {
      __break(1u);
LABEL_31:
      swift_once();
      goto LABEL_18;
    }

    sub_2314A5780(v59, &aBlock);
    v61 = v180;
    v62 = v181;
    v63 = __swift_project_boxed_opaque_existential_1(&aBlock, v180);
    v64 = v61;
    v50 = v63;
    if (sub_23153DE6C(v64, v62))
    {
      sub_23149FD3C(&aBlock, &v184);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v183 = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = *(v60 + 16);
        sub_23152D5B8();
        v60 = v183;
      }

      v68 = *(v60 + 16);
      v67 = *(v60 + 24);
      if (v68 >= v67 >> 1)
      {
        OUTLINED_FUNCTION_18(v67);
        sub_23152D5B8();
      }

      v50 = v185;
      v69 = v186;
      __swift_mutable_project_boxed_opaque_existential_1(&v184, v185);
      OUTLINED_FUNCTION_29_1();
      v71 = *(v70 + 64);
      MEMORY[0x28223BE20](v72);
      OUTLINED_FUNCTION_5();
      v75 = v74 - v73;
      (*(v76 + 16))(v74 - v73);
      sub_231540938(v68, v75, &v183, v50, v69);
      __swift_destroy_boxed_opaque_existential_1(&v184);
      v60 = v183;
      v7 = v155;
      v39 = v173;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    v59 += 40;
    ++v58;
  }

  if (v170)
  {

    v77 = OUTLINED_FUNCTION_9_16();
    v78 = OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    v79 = v7[4].isa;
    OUTLINED_FUNCTION_26_2();
    if (v79)
    {
      sub_23153496C(v60);
      v77 = v80;
      v78 = v81;
    }

    else
    {

      v77 = OUTLINED_FUNCTION_9_16();
      v78 = OUTLINED_FUNCTION_9_16();
    }
  }

  v60 = v57;
  v59 = v78;
  v50 = v77;
  v7 = v176;
  if (qword_280D70418 != -1)
  {
    goto LABEL_31;
  }

LABEL_18:
  v82 = qword_280D72240;
  sub_231585FC4();
  v83 = *(v174 + 16);
  v84 = v171;
  v85 = v155;
  v86 = v138;
  v87 = v154;
  v166 = v50;
  if (v83)
  {
    v163 = v171 + 16;
    v162 += 7;
    v161 = v171 + 32;
    v160 = v168 & 1;
    v159 = v169 & 1;
    v158 = &v179;
    ++v157;
    ++v156;
    do
    {
      v174 = v60;
      v170 = v83;
      sub_2314A5780(v60, &v184);
      dispatch_group_enter(v7);
      __swift_project_boxed_opaque_existential_1(&v184, v185);
      swift_getDynamicType();
      v88 = (*(v186 + 128))();
      v89 = &v187 + 8;
      if (v88)
      {
        v89 = &v189 + 8;
      }

      v168 = *v89;
      if (v88)
      {
        v90 = &v190;
      }

      else
      {
        v90 = &v188;
      }

      v169 = *v90;
      sub_2314A5780(&v184, &v183);
      (*(v84 + 16))(v39, v167, v58);
      v91 = (*(v84 + 80) + 80) & ~*(v84 + 80);
      v92 = (v162 + v91) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      sub_23149FD3C(&v183, (v93 + 16));
      v94 = v86;
      v95 = v59;
      v96 = v166;
      *(v93 + 7) = v85;
      *(v93 + 8) = v96;
      *(v93 + 9) = v95;
      (*(v171 + 32))(&v93[v91], v173, v172);
      v97 = &v93[v92];
      *v97 = sub_231540A54;
      *(v97 + 1) = v87;
      v98 = &v93[(v92 + 23) & 0xFFFFFFFFFFFFFFF8];
      v99 = v165;
      *v98 = v176;
      v98[8] = v160;
      v98[9] = v159;
      v181 = sub_231540A5C;
      v182 = v93;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v179 = sub_23149B484;
      v180 = &block_descriptor_17;
      v100 = _Block_copy(&aBlock);

      v101 = v169;

      v59 = v95;
      v86 = v94;

      v102 = v176;
      sub_231586054();
      v177 = MEMORY[0x277D84F90];
      sub_2314BCC04();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
      sub_2314BCC5C();
      v58 = v172;
      sub_2315867C4();
      MEMORY[0x231930370](0, v175, v94, v100);
      v103 = v100;
      v84 = v171;
      _Block_release(v103);

      v7 = v176;

      v104 = v99;
      v39 = v173;
      (*v157)(v94, v104);
      (*v156)(v175, v164);
      __swift_destroy_boxed_opaque_existential_1(&v184);

      v60 = v174 + 40;
      v83 = v170 - 1;
    }

    while (v170 != 1);
  }

  v105 = v139;
  sub_231586074();
  v106 = v141;
  *v141 = v145;
  v107 = v144;
  v108 = v146;
  (*(v144 + 104))(v106, *MEMORY[0x277D85188], v146);
  v109 = v140;
  sub_231586084();
  (*(v107 + 8))(v106, v108);
  v110 = *(v142 + 8);
  v111 = v143;
  v110(v105, v143);
  LOBYTE(v105) = sub_231586614();
  v110(v109, v111);
  if (v105)
  {
    v179 = 0;
    aBlock = 1uLL;
    LOBYTE(v180) = 1;
    v112 = OUTLINED_FUNCTION_17_9();
    v113(v112);
    v184 = v187;
    v114 = v188;
    sub_2315074E4(&v184);

    v183 = v189;
    v115 = v190;
    sub_2315074E4(&v183);

    v116 = OUTLINED_FUNCTION_25_1();
    v117(v116);
    (*(v148 + 8))(v147, v149);
  }

  else
  {
    v118 = v136;
    os_unfair_lock_lock(v136);
    v119 = *(v153 + 24);

    os_unfair_lock_unlock(v118);
    v120 = v135;
    os_unfair_lock_lock(v135);
    v121 = *(v152 + 24);

    os_unfair_lock_unlock(v120);
    v122 = v137;
    sub_231585874();
    v123 = v147;
    sub_2315857A4();
    v125 = v124;
    v126 = *(v148 + 8);
    v127 = v149;
    v126(v122, v149);
    *&aBlock = v119;
    *(&aBlock + 1) = v121;
    v179 = v125;
    LOBYTE(v180) = 0;
    v128 = OUTLINED_FUNCTION_17_9();
    v129(v128);
    v184 = v187;
    v130 = v188;
    sub_2315074E4(&v184);

    v183 = v189;
    v131 = v190;
    sub_2315074E4(&v183);

    sub_231540A60(aBlock, *(&aBlock + 1), v179, v180);
    v132 = OUTLINED_FUNCTION_25_1();
    v133(v132);
    v126(v123, v127);
  }
}

void sub_23153DAA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a4;
  v14 = *(a4 + 8);
  os_unfair_lock_lock((a6 + 16));
  sub_23153DB90((a6 + 24), a1, v13, v14, a2, a3);
  os_unfair_lock_unlock((a6 + 16));
  os_unfair_lock_lock((a7 + 16));
  v15 = a5;
  v16 = *(a7 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a7 + 24);
  sub_2315761FC();
  *(a7 + 24) = v17;

  os_unfair_lock_unlock((a7 + 16));
}

uint64_t sub_23153DB90(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v44 = a3;
  v45 = a4;
  (*(v12 + 48))(&v46, &v44, v11, v12);
  v48 = v46;
  v43 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = a5;
  *(inited + 40) = a6;
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = *(v15 + 32);

  v17 = v16(v14, v15);
  v46 = inited;
  sub_23149B228(v17);
  v41 = v46;
  v40 = *(v46 + 16);
  if (v40)
  {
    v18 = 0;
    v19 = (v46 + 40);
    while (v18 < *(v41 + 16))
    {
      v20 = *(v19 - 1);
      v21 = *v19;

      sub_2314A5168(v48, v43);
      v22 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v46 = *a1;
      v23 = v46;
      v24 = sub_23149C888(v20, v21);
      if (__OFADD__(*(v23 + 16), (v25 & 1) == 0))
      {
        goto LABEL_15;
      }

      v26 = v24;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
      if (sub_231586A64())
      {
        v28 = sub_23149C888(v20, v21);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }

        v26 = v28;
      }

      if (v27)
      {

        v30 = v46;
        v31 = *(v46 + 56) + 16 * v26;
        v32 = *v31;
        *v31 = v48;
        v33 = *(v31 + 8);
        *(v31 + 8) = v43;
        sub_2314A5EEC(v32, v33);
      }

      else
      {
        v30 = v46;
        *(v46 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v34 = (v30[6] + 16 * v26);
        *v34 = v20;
        v34[1] = v21;
        v35 = v30[7] + 16 * v26;
        *v35 = v48;
        *(v35 + 8) = v43;
        v36 = v30[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_16;
        }

        v30[2] = v38;
      }

      ++v18;
      *a1 = v30;
      v19 += 2;
      if (v40 == v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_231586C84();
    __break(1u);
  }

  else
  {
LABEL_13:

    return sub_2314A5EEC(v48, v43);
  }

  return result;
}

uint64_t sub_23153DEBC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t, uint64_t, __int128 *, int64_t), uint64_t a7, NSObject *a8, char a9, unsigned __int8 a10)
{
  v111 = a8;
  v113 = a6;
  v114 = a7;
  v115 = a4;
  v108 = sub_231585FD4();
  v13 = *(v108 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v108);
  v109 = v15;
  v110 = v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v16 = (*(*(a1[4] + 8) + 16))();
  v117 = v17;
  LODWORD(v19) = v18;
  sub_2314A5780(a1, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
  type metadata accessor for CoreDuetBackedSignal();
  v20 = swift_dynamicCast();
  v112 = v16;
  if (v20)
  {
    v21 = *(*&v118[0] + 16);
    *(*&v118[0] + 16) = a2[5];
  }

  sub_2314A5780(a1, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B620, &unk_23158AAE0);
  v22 = swift_dynamicCast();
  v116 = a1;
  if (v22)
  {
    sub_231541050(v118, &qword_27DD5BD88, &unk_23158D220);
LABEL_22:
    v32 = a5;
    LOBYTE(v38) = a9;
    sub_2315866D4();
    if (qword_280D70418 != -1)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v57 = qword_280D72240;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_231588340;
      *(v58 + 56) = MEMORY[0x277D837D0];
      *(v58 + 64) = sub_231541298();
      *(v58 + 32) = 1936943469;
      *(v58 + 40) = 0xE400000000000000;
      v107 = v57;
      v59 = v32;
      sub_231585FA4();

      v60 = v116;
      sub_23153FE48(v116, v115);

      sub_231553EBC();
      sub_231540690(v60, v61);
      v63 = v62;

      if ((v38 & 1) == 0)
      {
        break;
      }

      v64 = v60[3];
      v65 = v60[4];
      __swift_project_boxed_opaque_existential_1(v60, v64);
      if (!sub_23153DE6C(v64, v65))
      {
        break;
      }

      LODWORD(v108) = v19;
      v109 = v32;
      if (v63)
      {
        v38 = -20;
      }

      else
      {
        v38 = -30;
      }

      v66 = v60[3];
      v67 = v60[4];
      __swift_project_boxed_opaque_existential_1(v60, v66);
      v68 = (*(v67 + 40))(v66, v67);
      v32 = v68;
      v19 = 0;
      a2 = (v68 + 64);
      v69 = 1 << *(v68 + 32);
      v70 = -1;
      if (v69 < 64)
      {
        v70 = ~(-1 << v69);
      }

      v71 = v70 & *(v68 + 64);
      v72 = (v69 + 63) >> 6;
      while (v71)
      {
        v73 = v19;
LABEL_36:
        v74 = (*(v32 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v71)))));
        v75 = *v74;
        v76 = v74[1];
        v71 &= v71 - 1;
        *&v120 = v38;
        BYTE8(v120) = 0;
        sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);

        v13 = sub_231586724();
        v113(v116, v75, v76, &v120, v13);
        sub_2314A5168(v38, 0);

        sub_2314A5EEC(v120, BYTE8(v120));
      }

      while (1)
      {
        v73 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v73 >= v72)
        {
          sub_2314A5EEC(v38, 0);

          dispatch_group_leave(v111);
          sub_2315866C4();
          return sub_231585FB4();
        }

        v71 = a2[v73];
        ++v19;
        if (v71)
        {
          v19 = v73;
          goto LABEL_36;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      swift_once();
    }

    LODWORD(v115) = a10;
    v77 = v60;
    if (v63)
    {
      v107 = v13;
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v78 = sub_231585FF4();
      __swift_project_value_buffer(v78, qword_280D72248);
      sub_2314A5780(v60, &v120);
      v79 = sub_231585FE4();
      v80 = sub_2315865D4();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v118[0] = v82;
        *v81 = 136315138;
        v83 = v19;
        v19 = a2;
        v84 = v59;
        v85 = v121;
        v86 = v122;
        __swift_project_boxed_opaque_existential_1(&v120, v121);
        v87 = *(v86 + 16);
        v88 = v86;
        v59 = v84;
        a2 = v19;
        LOBYTE(v19) = v83;
        v87(v85, v88);
        __swift_destroy_boxed_opaque_existential_1(&v120);
        v89 = sub_2314A22E8();

        *(v81 + 4) = v89;
        v77 = v116;
        _os_log_impl(&dword_231496000, v79, v80, "SignalGatherer: Recalculating expired cached value for %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x231931280](v82, -1, -1);
        MEMORY[0x231931280](v81, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v120);
      }

      v13 = v107;
    }

    v91 = v77[3];
    v92 = v77[4];
    v116 = __swift_project_boxed_opaque_existential_1(v77, v91);
    v107 = a2[3];
    sub_2314A5780(v77, &v120);
    v93 = v110;
    v94 = v108;
    (*(v13 + 16))(v110, v59, v108);
    v95 = (*(v13 + 80) + 113) & ~*(v13 + 80);
    v96 = swift_allocObject();
    v97 = v19;
    v98 = v114;
    *(v96 + 16) = v113;
    *(v96 + 24) = v98;
    sub_23149FD3C(&v120, v96 + 32);
    *(v96 + 72) = v115 & 1;
    *(v96 + 80) = a2;
    v100 = v111;
    v99 = v112;
    *(v96 + 88) = v111;
    *(v96 + 96) = v99;
    *(v96 + 104) = v117;
    *(v96 + 112) = v97;
    (*(v13 + 32))(v96 + v95, v93, v94);
    v101 = *(v92 + 8);

    v102 = v100;
    sub_2314BA9DC(v107, sub_2315412EC, v96, v91, v101);
  }

  v119 = 0;
  memset(v118, 0, sizeof(v118));
  sub_231541050(v118, &qword_27DD5BD88, &unk_23158D220);

  sub_231553EBC();
  sub_231540538(a1, v23);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_2315866D4();
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v26 = qword_280D72240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B4A8, &unk_23158E4B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_231588340;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = sub_231541298();
  *(v27 + 32) = 7629160;
  *(v27 + 40) = 0xE300000000000000;
  v103[1] = v26;
  LODWORD(v108) = v19;
  v109 = a5;
  sub_231585FA4();

  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = (*(v29 + 40))(v28, v29);
  a2 = v30;
  v31 = 0;
  v32 = v30 + 64;
  v33 = 1 << *(v30 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v30 + 64);
  v13 = (v33 + 63) >> 6;
  v36 = v115;
  v104 = v30;
  while (v35)
  {
    v37 = v35;
LABEL_18:
    v35 = (v37 - 1) & v37;
    if (*(v36 + 16))
    {
      v40 = __clz(__rbit64(v37)) | (v31 << 6);
      v41 = (a2[6] + 16 * v40);
      v42 = *v41;
      v43 = (a2[7] + 16 * v40);
      v44 = *v43;
      v45 = v43[1];
      v110 = v41[1];

      v46 = sub_23149C888(v44, v45);
      LODWORD(v19) = v47;

      if (v19)
      {
        v48 = *(v36 + 56) + 16 * v46;
        v49 = *v48;
        v50 = v116;
        v106 = v42;
        v51 = v116[3];
        v52 = v116[4];
        v107 = v35;
        v53 = *(v48 + 8);
        __swift_project_boxed_opaque_existential_1(v116, v51);
        *&v118[0] = v49;
        BYTE8(v118[0]) = v53;
        v105 = *(v52 + 56);
        sub_2314A5168(v49, v53);
        v105(&v120, v118, v51, v52);
        v36 = v115;
        sub_2314A5EEC(v49, v53);
        v54 = v120;
        LOBYTE(v49) = BYTE8(v120);
        sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);
        v19 = sub_231586724();
        v55 = v50;
        a2 = v104;
        v113(v55, v106, v110, &v120, v19);

        v56 = v54;
        v35 = v107;
        sub_2314A5EEC(v56, v49);
      }

      else
      {
      }
    }
  }

  v38 = v111;
  while (1)
  {
    v39 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v39 >= v13)
    {
      break;
    }

    v37 = *(v32 + 8 * v39);
    ++v31;
    if (v37)
    {
      v31 = v39;
      goto LABEL_18;
    }
  }

  dispatch_group_leave(v38);
  sub_2315866C4();
  return sub_231585FB4();
}

uint64_t sub_23153EA38(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t, uint64_t *, void *), uint64_t a3, void *a4, int a5, uint64_t a6, NSObject *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v51 = a6;
  v57 = a5;
  v55 = a2;
  v56 = a3;
  v48 = a11;
  v49 = a8;
  v47 = a10;
  v45 = a7;
  v46 = a9;
  v44 = sub_231585884();
  v13 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v43 = (v14 + 8);
  v58 = a1;

  v22 = 0;
  v52 = 0;
  v53 = a4;
  v50 = v16;
  while (v20)
  {
    v23 = v22;
LABEL_9:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = v24 | (v23 << 6);
    v26 = (*(v58 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v58 + 56) + 24 * v25;
    v31 = *(v29 + 8);
    v32 = *(v29 + 16);
    v59 = *v29;
    v30 = v59;
    v60 = v31;
    sub_2314A5168(v59, v31);
    sub_2314A5168(v30, v31);

    v33 = sub_2315864B4();
    v54 = v27;
    v34 = v27;
    v35 = a4;
    v55(a4, v34, v28, &v59, v33);

    sub_2314A5EEC(v59, v60);
    if (v57)
    {

      sub_2314A5EEC(v30, v31);
      v22 = v23;
    }

    else
    {
      v36 = a4[3];
      v37 = v35[4];
      __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      if (sub_23153DE6C(v36, v37) && (v38 = v50, *(v51 + 32)))
      {
        v59 = v30;
        v60 = v31;
        sub_231585874();
        v39 = v52;
        sub_2315364E4(v53, v54, v28, &v59, v38);
        if (v39)
        {

          (*v43)(v38, v44);
          sub_2314A5EEC(v59, v60);
          v52 = 0;
          goto LABEL_17;
        }

        v52 = 0;

        (*v43)(v38, v44);
        v40 = v59;
        v41 = v60;
      }

      else
      {

        v40 = v30;
        v41 = v31;
      }

      sub_2314A5EEC(v40, v41);
LABEL_17:
      v22 = v23;
      a4 = v53;
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v23);
    ++v22;
    if (v20)
    {
      goto LABEL_9;
    }
  }

  dispatch_group_leave(v45);
  sub_2315866C4();
  if (qword_280D70418 == -1)
  {
    return sub_231585FB4();
  }

LABEL_22:
  swift_once();
  return sub_231585FB4();
}

uint64_t sub_23153EDCC(unsigned __int8 a1, void (*a2)(__int128 *), uint64_t a3)
{

  OUTLINED_FUNCTION_12_10();
  v6 = OUTLINED_FUNCTION_3_29();
  return sub_23153BB90(v6, v7, v8, v9, v10, v11, v12, 1, v14, a1, a2, a3);
}

uint64_t sub_23153EE2C(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{

  v12 = OUTLINED_FUNCTION_3_29();
  return sub_23153BB90(v12, v13, v14, v15, v16, a2, a3, a4, v18, a1, a5, a6);
}

uint64_t sub_23153EEB4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  v5 = dispatch_semaphore_create(0);

  OUTLINED_FUNCTION_12_10();
  v6 = OUTLINED_FUNCTION_3_29();
  sub_23153AAC4(v6, v7, v8, v9, v10, v11, v12, 1, v16, a1, v4, v5);

  sub_2315866E4();
  swift_beginAccess();
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  *a2 = v13;
  *(a2 + 8) = v14;
  sub_231540AAC(v13, v14);
}

uint64_t sub_23153EF98(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_23153EFBC, 0, 0);
}

uint64_t sub_23153EFBC()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1A0, &qword_231588700);
  *v6 = v0;
  v6[1] = sub_23153F0D8;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002ALL, 0x8000000231593030, sub_231540AB8, v4, v7);
}

uint64_t sub_23153F0D8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_23153F210;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_23153F1F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23153F210()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_23153F274(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD8, &qword_23158D9A8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_23153CBA4(a3, 0, 0, a4, sub_231540FD4, v13);
}

uint64_t sub_23153F3DC(uint64_t *a1)
{
  v1 = *a1;
  if (*(a1 + 24) == 1)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v2 = sub_231585FF4();
    __swift_project_value_buffer(v2, qword_280D72248);
    v3 = sub_231585FE4();
    v4 = sub_2315865E4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_2314C1D90();
      swift_allocError();
      v7 = v1 & 1;
      *v8 = v7;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v9;
      *v6 = v9;
      _os_log_impl(&dword_231496000, v3, v4, "SignalGatherer#gather failed with %@", v5, 0xCu);
      sub_231541050(v6, &unk_27DD5B410, &unk_2315890B0);
      MEMORY[0x231931280](v6, -1, -1);
      MEMORY[0x231931280](v5, -1, -1);
    }

    else
    {

      v7 = v1 & 1;
    }

    sub_2314C1D90();
    swift_allocError();
    *v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD8, &qword_23158D9A8);
    return sub_231586474();
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v10 = sub_231585FF4();
    __swift_project_value_buffer(v10, qword_280D72248);
    v11 = sub_231585FE4();
    v12 = sub_2315865D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_231496000, v11, v12, "SignalGatherer#gather succeeded", v13, 2u);
      MEMORY[0x231931280](v13, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD8, &qword_23158D9A8);
    return sub_231586484();
  }
}

uint64_t sub_23153F684(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v121 = MEMORY[0x277D84F90];
  sub_23152D834();
  v6 = 0;
  v7 = a1 + 64;
  v105 = v3;
  v106 = v3 + 32;
  result = v121;
  v110 = a1;
  v112 = a1 + 64;
  v104 = v4;
  while (v6 < *(v3 + 16))
  {
    v107 = v6 + 1;
    v108 = result;
    v9 = (v106 + 16 * v6);
    v109 = *v9;
    v111 = v9[1];

    v10 = sub_2315860F4();
    v11 = 1 << *(a1 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(a1 + 64);
    v14 = (v11 + 63) >> 6;

    v23 = 0;
LABEL_8:
    if (v13)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (v24 >= v14)
      {
        break;
      }

      v13 = *(v7 + 8 * v24);
      ++v23;
      if (v13)
      {
        v23 = v24;
LABEL_13:
        v25 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v26 = (v23 << 10) | (16 * v25);
        v27 = (*(a1 + 48) + v26);
        v29 = *v27;
        v28 = v27[1];
        v30 = *(a1 + 56) + v26;
        v31 = *v30;
        switch(*(v30 + 8))
        {
          case 1:
            v54 = *(v31 + 16);
            v55 = v27[1];

            sub_2314A5168(v31, 1u);
            if (!v54 || (v56 = sub_23149C888(v109, v111), (v57 & 1) == 0))
            {
              v81 = sub_23149C888(v29, v28);
              if (v82)
              {
                v83 = v81;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v116 = v10;
                v10 = v10[3];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
                v84 = OUTLINED_FUNCTION_33_0();
                OUTLINED_FUNCTION_32_0(v84, v85, v86, v87, v88, v89, v90, v91, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v116);
                sub_2314D6070((v10[7] + 32 * v83), &v117);
                sub_231586A84();

                v79 = v31;
                v80 = 1;
                goto LABEL_42;
              }

              v97 = v31;
              v98 = 1;
              goto LABEL_57;
            }

            v64 = *(*(v31 + 56) + 8 * v56);
            v120 = MEMORY[0x277D83B88];
            *&v119 = v64;
            OUTLINED_FUNCTION_34_1(v56, v57, v58, v59, v60, v61, v62, v63, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v31, v114, v117, v118, *(&v118 + 1), v119);
            swift_isUniquelyReferenced_nonNull_native();
            v65 = OUTLINED_FUNCTION_2_30();
            OUTLINED_FUNCTION_4_25(v65, v66);
            if (v34)
            {
              goto LABEL_83;
            }

            OUTLINED_FUNCTION_30_1();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
            if (OUTLINED_FUNCTION_8_19())
            {
              OUTLINED_FUNCTION_14_6();
              OUTLINED_FUNCTION_10_12();
              a1 = v110;
              if (!v36)
              {
                goto LABEL_86;
              }

              isUniquelyReferenced_nonNull_native = v67;
            }

            else
            {
              a1 = v110;
            }

            v10 = v114;
            if (v28)
            {
              __swift_destroy_boxed_opaque_existential_1((*(v114 + 56) + 32 * isUniquelyReferenced_nonNull_native));
              OUTLINED_FUNCTION_31_1(&v117);
              v92 = v113;
              v93 = 1;
              goto LABEL_65;
            }

            OUTLINED_FUNCTION_8_7(v114 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
            v100 = (*(v114 + 48) + 16 * isUniquelyReferenced_nonNull_native);
            *v100 = v31;
            v100[1] = v29;
            sub_2314D6070(&v117, (*(v114 + 56) + 32 * isUniquelyReferenced_nonNull_native));
            sub_2314A5EEC(v113, 1u);
            OUTLINED_FUNCTION_23_3();
            if (v34)
            {
              goto LABEL_85;
            }

            goto LABEL_70;
          case 2:
            v120 = MEMORY[0x277D839F8];
            *&v119 = v31;
            OUTLINED_FUNCTION_34_1(v15, v16, v17, v18, v19, v20, v21, v22, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v31, v114, v117, v118, *(&v118 + 1), v119);

            swift_isUniquelyReferenced_nonNull_native();
            v37 = OUTLINED_FUNCTION_2_30();
            OUTLINED_FUNCTION_4_25(v37, v38);
            if (v34)
            {
              goto LABEL_78;
            }

            OUTLINED_FUNCTION_30_1();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
            if (OUTLINED_FUNCTION_8_19())
            {
              OUTLINED_FUNCTION_14_6();
              OUTLINED_FUNCTION_10_12();
              a1 = v110;
              if (!v36)
              {
                goto LABEL_86;
              }

              isUniquelyReferenced_nonNull_native = v39;
            }

            else
            {
              a1 = v110;
            }

            v10 = v114;
            if (v28)
            {
              __swift_destroy_boxed_opaque_existential_1((*(v114 + 56) + 32 * isUniquelyReferenced_nonNull_native));
              OUTLINED_FUNCTION_31_1(&v117);
              v92 = v113;
              v93 = 2;
              goto LABEL_65;
            }

            OUTLINED_FUNCTION_8_7(v114 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
            v94 = (*(v114 + 48) + 16 * isUniquelyReferenced_nonNull_native);
            *v94 = v31;
            v94[1] = v29;
            sub_2314D6070(&v117, (*(v114 + 56) + 32 * isUniquelyReferenced_nonNull_native));
            sub_2314A5EEC(v113, 2u);
            OUTLINED_FUNCTION_23_3();
            if (v34)
            {
              goto LABEL_80;
            }

            goto LABEL_70;
          case 3:
            v40 = *(v31 + 16);
            v41 = v27[1];

            sub_2314A5168(v31, 3u);
            if (v40 && (v42 = sub_23149C888(v109, v111), (v43 & 1) != 0))
            {
              v50 = *(*(v31 + 56) + 8 * v42);
              v120 = MEMORY[0x277D839F8];
              *&v119 = v50;
              OUTLINED_FUNCTION_34_1(v42, v43, v44, v45, v46, v47, v48, v49, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v31, v114, v117, v118, *(&v118 + 1), v119);
              swift_isUniquelyReferenced_nonNull_native();
              v51 = OUTLINED_FUNCTION_2_30();
              OUTLINED_FUNCTION_4_25(v51, v52);
              if (v34)
              {
                goto LABEL_82;
              }

              OUTLINED_FUNCTION_30_1();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
              if (OUTLINED_FUNCTION_8_19())
              {
                OUTLINED_FUNCTION_14_6();
                OUTLINED_FUNCTION_10_12();
                a1 = v110;
                if (!v36)
                {
                  goto LABEL_86;
                }

                isUniquelyReferenced_nonNull_native = v53;
              }

              else
              {
                a1 = v110;
              }

              v10 = v114;
              if (v28)
              {
                __swift_destroy_boxed_opaque_existential_1((*(v114 + 56) + 32 * isUniquelyReferenced_nonNull_native));
                OUTLINED_FUNCTION_31_1(&v117);
                v92 = v113;
                v93 = 3;
LABEL_65:
                v15 = sub_2314A5EEC(v92, v93);
                v7 = v112;
              }

              else
              {
                OUTLINED_FUNCTION_8_7(v114 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
                v99 = (*(v114 + 48) + 16 * isUniquelyReferenced_nonNull_native);
                *v99 = v31;
                v99[1] = v29;
                sub_2314D6070(&v117, (*(v114 + 56) + 32 * isUniquelyReferenced_nonNull_native));
                sub_2314A5EEC(v113, 3u);
                OUTLINED_FUNCTION_23_3();
                if (v34)
                {
                  goto LABEL_84;
                }

LABEL_70:
                v10[2] = v95;
                v7 = v112;
              }
            }

            else
            {
              v68 = sub_23149C888(v29, v28);
              if (v69)
              {
                v70 = v68;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v115 = v10;
                v10 = v10[3];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
                v71 = OUTLINED_FUNCTION_33_0();
                OUTLINED_FUNCTION_32_0(v71, v72, v73, v74, v75, v76, v77, v78, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v115);
                sub_2314D6070((v10[7] + 32 * v70), &v117);
                sub_231586A84();

                v79 = v31;
                v80 = 3;
LABEL_42:
                sub_2314A5EEC(v79, v80);
              }

              else
              {

                v97 = v31;
                v98 = 3;
LABEL_57:
                sub_2314A5EEC(v97, v98);
                v117 = 0u;
                v118 = 0u;
              }

              v15 = sub_231541050(&v117, &qword_27DD5B218, &unk_23158A010);
              v7 = v112;
            }

            break;
          default:
            v120 = MEMORY[0x277D83B88];
            *&v119 = v31;
            OUTLINED_FUNCTION_34_1(v15, v16, v17, v18, v19, v20, v21, v22, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v31, v114, v117, v118, *(&v118 + 1), v119);

            swift_isUniquelyReferenced_nonNull_native();
            v32 = OUTLINED_FUNCTION_2_30();
            OUTLINED_FUNCTION_4_25(v32, v33);
            if (v34)
            {
              goto LABEL_77;
            }

            OUTLINED_FUNCTION_30_1();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD0, &qword_23158D9A0);
            if (OUTLINED_FUNCTION_8_19())
            {
              OUTLINED_FUNCTION_14_6();
              OUTLINED_FUNCTION_10_12();
              a1 = v110;
              if (!v36)
              {
                goto LABEL_86;
              }

              isUniquelyReferenced_nonNull_native = v35;
            }

            else
            {
              a1 = v110;
            }

            v10 = v114;
            if (v28)
            {
              __swift_destroy_boxed_opaque_existential_1((*(v114 + 56) + 32 * isUniquelyReferenced_nonNull_native));
              OUTLINED_FUNCTION_31_1(&v117);
              v92 = v113;
              v93 = 0;
              goto LABEL_65;
            }

            OUTLINED_FUNCTION_8_7(v114 + 8 * (isUniquelyReferenced_nonNull_native >> 6));
            v96 = (*(v114 + 48) + 16 * isUniquelyReferenced_nonNull_native);
            *v96 = v31;
            v96[1] = v29;
            sub_2314D6070(&v117, (*(v114 + 56) + 32 * isUniquelyReferenced_nonNull_native));
            sub_2314A5EEC(v113, 0);
            OUTLINED_FUNCTION_23_3();
            if (v34)
            {
              goto LABEL_81;
            }

            goto LABEL_70;
        }

        goto LABEL_8;
      }
    }

    result = v108;
    v121 = v108;
    v102 = *(v108 + 16);
    v101 = *(v108 + 24);
    if (v102 >= v101 >> 1)
    {
      OUTLINED_FUNCTION_18(v101);
      sub_23152D834();
      result = v121;
    }

    *(result + 16) = v102 + 1;
    *(result + 8 * v102 + 32) = v10;
    v6 = v107;
    v3 = v105;
    if (v107 == v104)
    {
      return result;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_23153FE48(uint64_t a1, uint64_t a2)
{
  sub_2314A5780(a1, &v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B588, &qword_23158A9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B620, &unk_23158AAE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    return sub_231541050(v84, &qword_27DD5BD88, &unk_23158D220);
  }

  v79 = a2;
  sub_23149FD3C(v84, v90);
  sub_2314A5780(v90, &v86);
  __swift_project_boxed_opaque_existential_1(&v86, v88);
  DynamicType = swift_getDynamicType();
  v4 = v89;
  __swift_destroy_boxed_opaque_existential_1(&v86);
  v5 = (*(v4 + 16))(DynamicType, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = MEMORY[0x277D84F90];
    do
    {
      v82 = *v7;
      if (static SignalProviding.cacheable()(*v7, v7[1]))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v84[0] = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2314A5918(0, *(v8 + 16) + 1, 1);
          v8 = *&v84[0];
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          v12 = OUTLINED_FUNCTION_18(v10);
          sub_2314A5918(v12, v11 + 1, 1);
          v8 = *&v84[0];
        }

        *(v8 + 16) = v11 + 1;
        *(v8 + 16 * v11 + 32) = v82;
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v14 = *(v8 + 16);
  if (v14)
  {
    v15 = v8 + 40;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v17 = *(v15 - 8);
      v18 = (*(*v15 + 88))();
      v19 = *(v18 + 16);
      v20 = *(v16 + 16);
      if (__OFADD__(v20, v19))
      {
        goto LABEL_65;
      }

      v21 = v18;
      if (!swift_isUniquelyReferenced_nonNull_native() || v20 + v19 > *(v16 + 24) >> 1)
      {
        sub_2314F0CB4();
        v16 = v22;
      }

      if (*(v21 + 16))
      {
        if ((*(v16 + 24) >> 1) - *(v16 + 16) < v19)
        {
          goto LABEL_68;
        }

        swift_arrayInitWithCopy();

        v23 = v79;
        if (v19)
        {
          v24 = *(v16 + 16);
          v25 = __OFADD__(v24, v19);
          v26 = v24 + v19;
          if (v25)
          {
            goto LABEL_69;
          }

          *(v16 + 16) = v26;
        }
      }

      else
      {

        v23 = v79;
        if (v19)
        {
          goto LABEL_66;
        }
      }

      v15 += 16;
      if (!--v14)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
  v23 = v79;
LABEL_29:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB68, &unk_23158C810);
  v27 = sub_2315860F4();
  v76 = *(v16 + 16);
  if (!v76)
  {
    goto LABEL_56;
  }

  v28 = 0;
  v74 = v16;
  v75 = v16 + 32;
  do
  {
    if (v28 >= *(v16 + 16))
    {
      goto LABEL_67;
    }

    sub_2314A5780(v75 + 40 * v28, &v86);
    v77 = v28 + 1;
    v29 = v88;
    v30 = v89;
    __swift_project_boxed_opaque_existential_1(&v86, v88);
    v31 = (*(v30 + 40))(v29, v30);
    __swift_destroy_boxed_opaque_existential_1(&v86);
    v32 = 0;
    v33 = v31 + 64;
    v34 = 1 << *(v31 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(v31 + 64);
    v37 = (v34 + 63) >> 6;
    v78 = v31;
    if (v36)
    {
      while (1)
      {
        v38 = v32;
LABEL_40:
        v39 = __clz(__rbit64(v36)) | (v38 << 6);
        v40 = (*(v31 + 48) + 16 * v39);
        v41 = v40[1];
        v83 = *v40;
        if (*(v23 + 16))
        {
          v42 = (*(v31 + 56) + 16 * v39);
          v43 = *v42;
          v44 = v42[1];

          v45 = sub_23149C888(v43, v44);
          v47 = v46;

          if (v47)
          {
            v48 = *(v23 + 56) + 16 * v45;
            v81 = *v48;
            v80 = *(v48 + 8);
            sub_2314A5168(*v48, v80);
            goto LABEL_45;
          }
        }

        else
        {
        }

        v81 = 0;
        v80 = -1;
LABEL_45:
        swift_isUniquelyReferenced_nonNull_native();
        *&v84[0] = v27;
        v49 = sub_23149C888(v83, v41);
        if (__OFADD__(v27[2], (v50 & 1) == 0))
        {
          goto LABEL_63;
        }

        v51 = v49;
        v52 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B858, &qword_23158B4F0);
        if (sub_231586A64())
        {
          v53 = sub_23149C888(v83, v41);
          if ((v52 & 1) != (v54 & 1))
          {
            goto LABEL_70;
          }

          v51 = v53;
        }

        v36 &= v36 - 1;
        if (v52)
        {

          v27 = *&v84[0];
          v55 = *(*&v84[0] + 56) + 16 * v51;
          v56 = *v55;
          *v55 = v81;
          v57 = *(v55 + 8);
          *(v55 + 8) = v80;
          sub_2314D70F4(v56, v57);
        }

        else
        {
          v27 = *&v84[0];
          OUTLINED_FUNCTION_8_7(*&v84[0] + 8 * (v51 >> 6));
          v58 = (v27[6] + 16 * v51);
          *v58 = v83;
          v58[1] = v41;
          v59 = v27[7] + 16 * v51;
          *v59 = v81;
          *(v59 + 8) = v80;
          v60 = v27[2];
          v25 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v25)
          {
            goto LABEL_64;
          }

          v27[2] = v61;
        }

        v32 = v38;
        v31 = v78;
        v23 = v79;
        if (!v36)
        {
          goto LABEL_37;
        }
      }
    }

    while (1)
    {
LABEL_37:
      v38 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        result = sub_231586C84();
        __break(1u);
        return result;
      }

      if (v38 >= v37)
      {
        break;
      }

      v36 = *(v33 + 8 * v38);
      ++v32;
      if (v36)
      {
        goto LABEL_40;
      }
    }

    v28 = v77;
    v16 = v74;
  }

  while (v77 != v76);
LABEL_56:

  v62 = v91;
  v63 = v92;
  __swift_project_boxed_opaque_existential_1(v90, v91);
  v64 = (*(*(v63 + 8) + 16))(v62);
  if (*(v23 + 16))
  {
    v66 = sub_23149C888(v64, v65);
    v68 = v67;

    if (v68)
    {
      v69 = *(v23 + 56) + 16 * v66;
      v70 = *v69;
      v71 = *(v69 + 8);
      sub_2314A5168(*v69, v71);
      goto LABEL_61;
    }
  }

  else
  {
  }

  v70 = 0;
  v71 = -1;
LABEL_61:
  v86 = v70;
  v87 = v71;
  v72 = v91;
  v73 = v92;
  __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  (*(v73 + 24))(&v86, v27, v72, v73);

  sub_2314D70F4(v86, v87);
  return __swift_destroy_boxed_opaque_existential_1(v90);
}