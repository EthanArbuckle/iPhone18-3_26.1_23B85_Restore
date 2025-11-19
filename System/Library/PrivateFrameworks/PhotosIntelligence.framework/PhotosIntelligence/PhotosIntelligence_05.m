uint64_t sub_1C6FD0704(uint64_t a1)
{
  v2 = sub_1C6FD4CC4(&qword_1EC2154F8);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C6FD075C(uint64_t a1)
{
  v2 = sub_1C6FD4CC4(&qword_1EC2154F8);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C6FD07C4()
{
  type metadata accessor for SafetyError(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  v3 = v2 - v1;
  OUTLINED_FUNCTION_45_4();
  sub_1C6FD4C38();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 103;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1C6FD479C(v3, type metadata accessor for SafetyError);
      result = 101;
      break;
    case 2:
      sub_1C6FD479C(v3, type metadata accessor for SafetyError);
      result = 106;
      break;
    case 3:
      sub_1C6FD479C(v3, type metadata accessor for SafetyError);
      result = 102;
      break;
    case 4:
      return result;
    case 5:
      sub_1C6FD479C(v3, type metadata accessor for SafetyError);
      result = 104;
      break;
    case 6:
      result = 107;
      break;
    default:
      sub_1C6FD479C(v3, type metadata accessor for SafetyError);
      result = 100;
      break;
  }

  return result;
}

uint64_t SafetyError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E698C310];
  sub_1C754F8AC();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

void sub_1C6FD09E0()
{
  sub_1C6FD4CC4(&qword_1EC215588);

  JUMPOUT(0x1CCA5BE40);
}

void sub_1C6FD0C84()
{
  OUTLINED_FUNCTION_134();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C754DFFC();
  v9 = OUTLINED_FUNCTION_76(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for SafetyBundle();
  v14 = OUTLINED_FUNCTION_76(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for TextSanitizer();
  __swift_allocate_value_buffer(v18, v7);
  v19 = __swift_project_value_buffer(v18, v7);
  sub_1C754DFEC();
  v1(v5, v3, v12);
  TextSanitizer.init(safetyBundle:)(v17, v19);
  OUTLINED_FUNCTION_135_0();
}

void sub_1C6FD0DB4()
{
  OUTLINED_FUNCTION_134();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_0(v3, v7);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  (*(v13 + 16))(v11 - v10);
  v2(v6, v12, v0, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_135_0();
}

uint64_t SafetyController.__allocating_init(storyPhotoLibraryContext:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  type metadata accessor for SafeTokenAnalyzer();
  swift_allocObject();
  v4 = v1;
  v5 = SafeTokenAnalyzer.init(photoLibrary:)(v4);
  v6 = swift_allocObject();

  return sub_1C6FD49CC(v4, v3, v2, v5, v6);
}

void SafetyController.isTextSafetyActive.getter()
{
  OUTLINED_FUNCTION_134();
  v0 = type metadata accessor for TextSanitizer();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  v4 = (v3 - v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154E8);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C755D200;
  v8 = v7 + v6;
  if (qword_1EDD0EFB0 != -1)
  {
    OUTLINED_FUNCTION_58_3();
  }

  __swift_project_value_buffer(v0, &unk_1EDD28D90);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2();
  }

  __swift_project_value_buffer(v0, &unk_1EDD28C40);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  if (qword_1EDD0AF90 != -1)
  {
    OUTLINED_FUNCTION_56_6();
  }

  __swift_project_value_buffer(v0, &unk_1EDD28C10);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  if (qword_1EDD0AF88 != -1)
  {
    OUTLINED_FUNCTION_55_5();
  }

  __swift_project_value_buffer(v0, &unk_1EDD28BF8);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  if (qword_1EDD0AF80 != -1)
  {
    OUTLINED_FUNCTION_54_0();
  }

  __swift_project_value_buffer(v0, &unk_1EDD28BE0);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  if (qword_1EDD0AF98 != -1)
  {
    OUTLINED_FUNCTION_53_4();
  }

  __swift_project_value_buffer(v0, &unk_1EDD28C28);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  v9 = 7;
  do
  {
    if (!--v9)
    {
      break;
    }

    OUTLINED_FUNCTION_0_4();
    sub_1C6FD4C38();
    v10 = *v4;
    sub_1C6FD479C(v4, type metadata accessor for TextSanitizer);
    v8 += v5;
  }

  while ((v10 & 1) != 0);

  OUTLINED_FUNCTION_135_0();
}

void static SafetyController.prewarm()()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for TextSanitizer();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_78();
  v67 = v3 - v4;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v63 - v6;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v63 - v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v63 - v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  if (qword_1EDD0EFB0 != -1)
  {
    OUTLINED_FUNCTION_58_3();
  }

  __swift_project_value_buffer(v1, &unk_1EDD28D90);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  v17 = &v16[*(v1 + 20)];
  sub_1C6FD7F70();
  v18 = "ionType";
  if (v70)
  {
    OUTLINED_FUNCTION_96_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100);
    v19 = OUTLINED_FUNCTION_95();
    OUTLINED_FUNCTION_60_1(v19, xmmword_1C755BAB0);
    v69[0] = v19;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v71);
    v20 = v69[0];
  }

  else
  {
    sub_1C6FD7FC8(v69, &qword_1EC2154F0);
    v20 = *(v17 + 72);
    sub_1C75504FC();
  }

  v21 = *(v20 + 16);
  v68 = v1;
  if (v21)
  {
    v22 = v20 + 32;
    do
    {
      sub_1C6FB5E28(v22, v71);
      OUTLINED_FUNCTION_25_3();
      v23(0xD000000000000021, 0x80000001C7596920, "ionType", v0);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v22 += 40;
      --v21;
    }

    while (v21);

    v1 = v68;
    v18 = ("PHUtilityCollectionType" + 16);
  }

  else
  {
  }

  sub_1C6FD479C(v17, type metadata accessor for SafetyBundle);
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2();
  }

  __swift_project_value_buffer(v1, &unk_1EDD28C40);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  v24 = &v13[*(v1 + 20)];
  sub_1C6FD7F70();
  if (v70)
  {
    OUTLINED_FUNCTION_96_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100);
    v25 = OUTLINED_FUNCTION_95();
    OUTLINED_FUNCTION_60_1(v25, v18[171]);
    v69[0] = v25;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v71);
    v26 = v69[0];
  }

  else
  {
    sub_1C6FD7FC8(v69, &qword_1EC2154F0);
    v26 = *(v24 + 72);
    sub_1C75504FC();
  }

  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = v26 + 32;
    do
    {
      sub_1C6FB5E28(v28, v71);
      OUTLINED_FUNCTION_25_3();
      v29(0xD00000000000001BLL, 0x80000001C7596950, v18, v0);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v28 += 40;
      --v27;
    }

    while (v27);

    v18 = ("PHUtilityCollectionType" + 16);
  }

  else
  {
  }

  sub_1C6FD479C(v24, type metadata accessor for SafetyBundle);
  if (qword_1EDD0AF90 != -1)
  {
    OUTLINED_FUNCTION_56_6();
  }

  __swift_project_value_buffer(v1, &unk_1EDD28C10);
  OUTLINED_FUNCTION_0_4();
  v30 = v64;
  sub_1C6FD4C38();
  v31 = &v30[*(v1 + 20)];
  sub_1C6FD7F70();
  if (v70)
  {
    OUTLINED_FUNCTION_96_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100);
    v32 = OUTLINED_FUNCTION_95();
    OUTLINED_FUNCTION_60_1(v32, v18[171]);
    v69[0] = v32;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v71);
    v33 = v69[0];
  }

  else
  {
    sub_1C6FD7FC8(v69, &qword_1EC2154F0);
    v33 = *(v31 + 72);
    sub_1C75504FC();
  }

  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = v33 + 32;
    do
    {
      sub_1C6FB5E28(v35, v71);
      OUTLINED_FUNCTION_25_3();
      v36 = OUTLINED_FUNCTION_80_2();
      v37(v36);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v35 += 40;
      --v34;
    }

    while (v34);

    v18 = ("PHUtilityCollectionType" + 16);
  }

  else
  {
  }

  sub_1C6FD479C(v31, type metadata accessor for SafetyBundle);
  v38 = v68;
  if (qword_1EDD0AF88 != -1)
  {
    OUTLINED_FUNCTION_55_5();
  }

  __swift_project_value_buffer(v38, &unk_1EDD28BF8);
  OUTLINED_FUNCTION_0_4();
  v39 = v65;
  sub_1C6FD4C38();
  v40 = &v39[*(v38 + 20)];
  sub_1C6FD7F70();
  if (v70)
  {
    OUTLINED_FUNCTION_96_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100);
    v41 = OUTLINED_FUNCTION_95();
    OUTLINED_FUNCTION_60_1(v41, v18[171]);
    v69[0] = v41;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v71);
    v42 = v69[0];
  }

  else
  {
    sub_1C6FD7FC8(v69, &qword_1EC2154F0);
    v42 = *(v40 + 72);
    sub_1C75504FC();
  }

  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = v42 + 32;
    do
    {
      sub_1C6FB5E28(v44, v71);
      OUTLINED_FUNCTION_25_3();
      v45 = OUTLINED_FUNCTION_80_2();
      v46(v45);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v44 += 40;
      --v43;
    }

    while (v43);

    v38 = v68;
    v18 = ("PHUtilityCollectionType" + 16);
  }

  else
  {
  }

  sub_1C6FD479C(v40, type metadata accessor for SafetyBundle);
  if (qword_1EDD0AF80 != -1)
  {
    OUTLINED_FUNCTION_54_0();
  }

  __swift_project_value_buffer(v38, &unk_1EDD28BE0);
  OUTLINED_FUNCTION_0_4();
  v47 = v66;
  sub_1C6FD4C38();
  v48 = &v47[*(v38 + 20)];
  sub_1C6FD7F70();
  if (v70)
  {
    OUTLINED_FUNCTION_96_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100);
    v49 = OUTLINED_FUNCTION_95();
    OUTLINED_FUNCTION_60_1(v49, v18[171]);
    v69[0] = v49;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v71);
    v50 = v69[0];
  }

  else
  {
    sub_1C6FD7FC8(v69, &qword_1EC2154F0);
    v50 = *(v48 + 72);
    sub_1C75504FC();
  }

  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = v50 + 32;
    do
    {
      sub_1C6FB5E28(v52, v71);
      __swift_project_boxed_opaque_existential_1(v71, v72);
      v53 = OUTLINED_FUNCTION_80_2();
      v54(v53);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v52 += 40;
      --v51;
    }

    while (v51);

    v18 = ("PHUtilityCollectionType" + 16);
  }

  else
  {
  }

  sub_1C6FD479C(v48, type metadata accessor for SafetyBundle);
  if (qword_1EDD0AF98 != -1)
  {
    OUTLINED_FUNCTION_53_4();
  }

  __swift_project_value_buffer(v38, &unk_1EDD28C28);
  OUTLINED_FUNCTION_0_4();
  v55 = v67;
  sub_1C6FD4C38();
  v56 = v55 + *(v38 + 20);
  sub_1C6FD7F70();
  if (v70)
  {
    OUTLINED_FUNCTION_96_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100);
    v57 = OUTLINED_FUNCTION_95();
    OUTLINED_FUNCTION_60_1(v57, v18[171]);
    v69[0] = v57;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v71);
    v58 = v69[0];
  }

  else
  {
    sub_1C6FD7FC8(v69, &qword_1EC2154F0);
    v58 = *(v56 + 72);
    sub_1C75504FC();
  }

  v59 = *(v58 + 16);
  if (v59)
  {
    v60 = v58 + 32;
    do
    {
      sub_1C6FB5E28(v60, v71);
      v61 = v72;
      v62 = v73;
      __swift_project_boxed_opaque_existential_1(v71, v72);
      (*(v62 + 16))(0xD000000000000021, 0x80000001C7596920, v61, v62);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v60 += 40;
      --v59;
    }

    while (v59);
  }

  sub_1C6FD479C(v56, type metadata accessor for SafetyBundle);
  OUTLINED_FUNCTION_25_0();
}

void SafetyController.cacheLexiconLanguageIdentifier(eventRecorder:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v10))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_97_0(&dword_1C6F5C000, v11, v10, "Caching the LexiconLanguageIdentifier...");
    OUTLINED_FUNCTION_109();
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69ABFB0]) init];
  if (v12)
  {
    v13 = v12;
    StoryGenerationCache.cacheLexiconLanguageIdentifier(languageIdentifier:)(v12);
    v14 = sub_1C754FEEC();
    v15 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v15))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_97_0(&dword_1C6F5C000, v16, v15, "LexiconLanguageIdentifier cached.");
      OUTLINED_FUNCTION_109();
    }
  }

  else
  {
    v13 = sub_1C754FEEC();
    v17 = sub_1C755119C();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = OUTLINED_FUNCTION_127();
      *v18 = 0;
      _os_log_impl(&dword_1C6F5C000, v13, v17, "LexiconLanguageIdentifier failed to be cached.", v18, 2u);
      OUTLINED_FUNCTION_109();
    }
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1AC();
  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_25_0();
}

PhotosIntelligence::SafetyControllerDiagnosticReport __swiftcall SafetyController.diagnosticReport()()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_completedSafetyChecks;
  swift_beginAccess();
  *v2 = *(v1 + v3);
  return sub_1C75504FC();
}

void sub_1C6FD1EE8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C75506DC();
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  v33[0] = v6;
  v33[1] = v7;
  v34 = v8;
  sub_1C6FD46B4();
  sub_1C754D78C();

  sub_1C75506CC();
  OUTLINED_FUNCTION_66_4();
  v12 = sub_1C75506AC();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v9 = sub_1C754FEEC();
    v16 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v16))
    {
      v30 = v14;
      v17 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33[0] = v32;
      *v17 = 136446210;
      v18 = sub_1C6F765A4(v30, v15, v33);
      v31 = v9;
      v19 = v18;

      *(v17 + 4) = v19;
      v9 = v31;
      _os_log_impl(&dword_1C6F5C000, v31, v16, "Safety controller check: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
      v20 = OUTLINED_FUNCTION_66_4();
      sub_1C6FC1640(v20, v21);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_66_4();
      sub_1C6FC1640(v24, v25);
    }
  }

  else
  {
    v22 = OUTLINED_FUNCTION_66_4();
    sub_1C6FC1640(v22, v23);
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v10))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_97_0(&dword_1C6F5C000, v11, v10, "Safety controller check: failed to encode the check results");
      OUTLINED_FUNCTION_109();
    }
  }

  v26 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_completedSafetyChecks;
  swift_beginAccess();
  sub_1C6FD8084(v6, v7, v8);
  sub_1C6FB07A8();
  v27 = *(*(v1 + v26) + 16);
  sub_1C6FB103C();
  v28 = *(v1 + v26);
  *(v28 + 16) = v27 + 1;
  v29 = v28 + 24 * v27;
  *(v29 + 32) = v6;
  *(v29 + 40) = v7;
  *(v29 + 48) = v8;
  *(v1 + v26) = v28;
  swift_endAccess();
  OUTLINED_FUNCTION_25_0();
}

uint64_t SafetyController.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_storyPhotoLibraryContext);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_safeTokenAnalyzer);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SafetyController.__deallocating_deinit()
{
  SafetyController.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C6FD229C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C6FD22BC, v3, 0);
}

uint64_t sub_1C6FD22BC()
{
  OUTLINED_FUNCTION_42();
  SafetyController.cacheLexiconLanguageIdentifier(eventRecorder:)();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C6FD2314(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C6FD2334, v3, 0);
}

uint64_t sub_1C6FD2334()
{
  OUTLINED_FUNCTION_42();
  SafetyController.extendedTokenAnalyzer()(*(v0 + 16));
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C6FD238C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C6FD23AC, v3, 0);
}

uint64_t sub_1C6FD23AC()
{
  OUTLINED_FUNCTION_42();
  SafetyController.diagnosticReport()();
  OUTLINED_FUNCTION_43();

  return v0();
}

void sub_1C6FD2494(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCC88(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 32 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD2568(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCCA0(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD2764(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCCE8(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 72 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD2828(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCD18(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CC8);
  OUTLINED_FUNCTION_43_4();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD298C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCDA8(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218D40);
  OUTLINED_FUNCTION_43_4();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD2A40(uint64_t a1)
{
  v10 = OUTLINED_FUNCTION_19_7(a1);
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6FDCDC0(v10, 1);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_51_6();
  sub_1C70D1F00();
  if (v12 < v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_89_2();
    if (v11)
    {
      __break(1u);
LABEL_13:
      OUTLINED_FUNCTION_87_2();
      while (1)
      {
        v15 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_31;
        }

        if (v15 >= v8)
        {
          goto LABEL_7;
        }

        v16 = *(v3 + 8 * v15);
        ++v7;
        if (v16)
        {
          v9 = (v16 - 1) & v16;
          v7 = v15;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v13;
  }

  if (v12 != v3)
  {
LABEL_7:
    sub_1C6F61E88();
    *v2 = v1;
    return;
  }

LABEL_10:
  v5 = *(v1 + 16);
  v3 = v23;
  v7 = v24;
  if (!v25)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_33_4();
  v8 = (v14 + 64) >> 6;
LABEL_18:
  OUTLINED_FUNCTION_81_2();
LABEL_19:
  OUTLINED_FUNCTION_77_2();
  v21 = v17;
  if (v17 < v18)
  {
    OUTLINED_FUNCTION_52_5();
    sub_1C6FB2FFC();
    OUTLINED_FUNCTION_79_3();
    v21 = v20;
  }

  while (1)
  {
    if (v5 >= v21)
    {
      *(v1 + 16) = v5;
      goto LABEL_19;
    }

    v19 = v1 + 32 + 24 * v5;
    *v19 = v22;
    *(v19 + 8) = v4;
    *(v19 + 16) = v6;
    ++v5;
    if (!v9)
    {
      break;
    }

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_81_2();
  }

  while (!__OFADD__(v7, 1))
  {
    if (v7 + 1 >= v8)
    {
      *(v1 + 16) = v5;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_107_0();
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1C6FD2C20(void *a1)
{
  v6 = v1;
  v7 = a1;
  v8 = sub_1C707FA7C(*a1, v7[1], *(v7 + 16), v7[3], v7[4]);
  v9 = sub_1C6FB6304();
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6FDE6EC(v11);
  v5 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_100_1();
  v14 = v13 - v12;
  v15 = v7;
  sub_1C6FD7BA4(__src, (v2 + 8 * v12 + 32), v13 - v12);
  if (v16 < v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v16 >= 1)
  {
    v17 = *(v2 + 16);
    v10 = __OFADD__(v17, v16);
    v18 = v17 + v16;
    if (v10)
    {
      __break(1u);
      goto LABEL_15;
    }

    *(v2 + 16) = v18;
  }

  if (v16 != v14)
  {
    goto LABEL_7;
  }

LABEL_10:
  v14 = *(v2 + 16);
  LODWORD(v8) = __src[4];
  v59 = __src[3];
  LODWORD(v7) = LOBYTE(__src[5]);
  v15 = __src[7];
  v3 = __src[8];
  v4 = __src[9];
  if (__src[9])
  {
    if (__src[5])
    {
      v19 = OUTLINED_FUNCTION_34_4();
      if (MEMORY[0x1CCA5DBA0](v19))
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_15:
  if (v7)
  {
    goto LABEL_65;
  }

  if (v3 != v8)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_119_1();
  if (v20)
  {
    goto LABEL_7;
  }

LABEL_18:
  v55 = __src[0];
  v57 = __src[1];
  v21 = __src[6];
  LODWORD(v53) = LOBYTE(__src[2]);
  if (v4)
  {
    if (__src[2])
    {
      v22 = OUTLINED_FUNCTION_61_0();
      if (MEMORY[0x1CCA5DB90](v22))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v7)
      {
        v23 = OUTLINED_FUNCTION_34_4();
        if (MEMORY[0x1CCA5DB90](v23))
        {
          goto LABEL_23;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_67:
      __break(1u);
      return;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (__src[2])
  {
    goto LABEL_66;
  }

  if (v3 != LODWORD(__src[1]))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v15 < __src[0])
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v7)
  {
    goto LABEL_67;
  }

  if (v3 != v8)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_119_1();
  if (v41 == v10)
  {
    goto LABEL_52;
  }

LABEL_23:
  HIDWORD(v53) = v7;
  v24 = OUTLINED_FUNCTION_61_0();
  sub_1C719D4F0(v24, v25, v4, v21);
  v27 = v26;
  sub_1C707FD18(&__src[7], v21, v28, v29, v30, v31, v32, v33, v51, v53, v55, v57, v59, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
LABEL_24:
  if (v14 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C7550B9C();
  }

  v5 = *v6;
  v34 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v52 = *v6 & 0xFFFFFFFFFFFFFF8;
  v35 = v52 + 32;
  while (1)
  {
    if (v14 >= v34)
    {
      *(v52 + 16) = v14;
      goto LABEL_24;
    }

    *(v35 + 8 * v14) = v27;
    v36 = __src[7];
    v37 = __src[9];
    if ((__src[9] & 1) == 0)
    {
      break;
    }

    if ((v54 & 0x100000000) == 0)
    {
      goto LABEL_63;
    }

    v38 = OUTLINED_FUNCTION_34_4();
    if (MEMORY[0x1CCA5DBA0](v38))
    {
      goto LABEL_45;
    }

    if ((v54 & 1) == 0)
    {
      goto LABEL_64;
    }

    v39 = OUTLINED_FUNCTION_61_0();
    if (MEMORY[0x1CCA5DB90](v39))
    {
      goto LABEL_55;
    }

    v40 = OUTLINED_FUNCTION_34_4();
    if ((MEMORY[0x1CCA5DB90](v40) & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_43:
    v42 = OUTLINED_FUNCTION_61_0();
    sub_1C719D4F0(v42, v43, v37, v21);
    v27 = v44;
    sub_1C707FD18(&__src[7], v21, v45, v46, v47, v48, v49, v50, v52, v54, v56, v58, v60, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
    ++v14;
  }

  if ((v54 & 0x100000000) != 0)
  {
    goto LABEL_63;
  }

  if (v8 != LODWORD(__src[8]))
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_119_1();
  if (!v20)
  {
    if (v54)
    {
      goto LABEL_64;
    }

    if (v8 != v58)
    {
      goto LABEL_56;
    }

    if (v36 < v56)
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_119_1();
    if (v41 == v10)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

LABEL_45:
  *(v52 + 16) = v14 + 1;
LABEL_7:
  memcpy(__dst, __src, 0x49uLL);
  sub_1C6FD7FC8(__dst, &qword_1EC215590);
  *v6 = v5;
}

void sub_1C6FD2FA8(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_38_3();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCDD8(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_126_1(v6);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_121_1();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_19_7(v22);
  if (v25)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6FDCE08(v24, 1);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_51_6();
  v26 = sub_1C70D453C();
  if (v26 < v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v26)
  {
    OUTLINED_FUNCTION_89_2();
    if (v25)
    {
      __break(1u);
LABEL_13:
      v32 = (v28 + 64) >> 6;
      while (1)
      {
        v33 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_31;
        }

        if (v33 >= v32)
        {
          goto LABEL_7;
        }

        ++v20;
        if (*(v17 + 8 * v33))
        {
          OUTLINED_FUNCTION_29_3();
          goto LABEL_18;
        }
      }
    }

    *(v16 + 16) = v27;
  }

  v23 = a12;
  if (v26 != v17)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_120_0();
    return;
  }

LABEL_10:
  v19 = *(v16 + 16);
  v17 = a13;
  v28 = a14;
  v20 = a15;
  if (!a16)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_33_4();
  v30 = v29 | (a15 << 6);
  v32 = (v31 + 64) >> 6;
LABEL_18:
  v34 = *(*(v23 + 56) + 8 * v30);
  sub_1C75504FC();
LABEL_19:
  v35 = *(v16 + 24) >> 1;
  if (v35 < v19 + 1)
  {
    OUTLINED_FUNCTION_52_5();
    sub_1C6FB20F8();
    v16 = v38;
    v35 = *(v38 + 24) >> 1;
  }

  while (1)
  {
    if (v19 >= v35)
    {
      *(v16 + 16) = v19;
      goto LABEL_19;
    }

    *(v16 + 32 + 8 * v19++) = v34;
    if (!v21)
    {
      break;
    }

    OUTLINED_FUNCTION_32_0();
    v34 = *(*(v23 + 56) + ((v36 << 9) | (8 * v37)));
    sub_1C75504FC();
  }

  while (!__OFADD__(v20, 1))
  {
    if (v20 + 1 >= v32)
    {
      OUTLINED_FUNCTION_76_1();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_107_0();
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1C6FD3300(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_38_3();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCE38(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_126_1(v6);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD33F0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCE98(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 120 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD34A0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_21_9(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v7)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v9 != v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = OUTLINED_FUNCTION_20_9(v3 + v8);
  memcpy(v10, v11, v12);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v6)
  {
    *(v3 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C6FD3634(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_100_1();
  a4(v14 + 8 * v16 + 32, v15 - v16, a1);
  v18 = v17;

  if (v18 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v18 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v19 = *(v14 + 16);
  v11 = __OFADD__(v19, v18);
  v20 = v19 + v18;
  if (!v11)
  {
    *(v14 + 16) = v20;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C6FD36F8(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_38_3();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCCD0(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 4 * v6 + 32), (a1 + 32), 4 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD37A4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCF7C(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 112 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD3868()
{
  OUTLINED_FUNCTION_134();
  v4 = OUTLINED_FUNCTION_21_9(v3);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(v4, 1);
  v9 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v8(0);
  if (v10 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v9;
    OUTLINED_FUNCTION_135_0();
    return;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v0);
  v12 = v11 + v0;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD3968(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_19_7(a1);
  if (v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6FDCFAC(v5, 1);
  v1 = *v2;
  v7 = *(*v2 + 16);
  v8 = (*(*v2 + 24) >> 1) - v7;
  v9 = sub_1C70D4538(v31, *v2 + v7 + 32, v8, a1);
  if (v9 < v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_89_2();
    if (v6)
    {
      __break(1u);
      goto LABEL_13;
    }

    *(v1 + 16) = v13;
  }

  if (v9 != v8)
  {
LABEL_7:
    sub_1C6F61E88();
    *v2 = v1;
    return;
  }

LABEL_10:
  v8 = *(v1 + 16);
  v9 = v31[0];
  v10 = v31[1];
  v11 = v32;
  v12 = v33;
  if (v34)
  {
    v14 = (v34 - 1) & v34;
    v15 = __clz(__rbit64(v34)) | (v33 << 6);
    v16 = (v32 + 64) >> 6;
LABEL_18:
    v19 = *(*(v9 + 48) + v15);
LABEL_19:
    while (v19 != 20)
    {
      v20 = *(v1 + 24) >> 1;
      if (v20 < v8 + 1)
      {
        v29 = v19;
        v30 = v9;
        v27 = v11;
        v28 = v10;
        v24 = v12;
        v25 = v14;
        sub_1C6FB458C();
        v19 = v29;
        v14 = v25;
        v12 = v24;
        v11 = v27;
        v10 = v28;
        v1 = v26;
        v9 = v30;
        v20 = *(v1 + 24) >> 1;
      }

      while (1)
      {
LABEL_22:
        if (v19 == 20 || v8 >= v20)
        {
          *(v1 + 16) = v8;
          goto LABEL_19;
        }

        *(v1 + 32 + v8++) = v19;
        if (!v14)
        {
          break;
        }

        v22 = v12;
LABEL_33:
        v23 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = *(*(v9 + 48) + (v23 | (v22 << 6)));
      }

      while (1)
      {
        v22 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v22 >= v16)
        {
          v14 = 0;
          v19 = 20;
          goto LABEL_22;
        }

        v14 = *(v10 + 8 * v22);
        ++v12;
        if (v14)
        {
          v12 = v22;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_36:
      v14 = 0;
      v19 = 20;
    }

    goto LABEL_7;
  }

LABEL_13:
  v16 = (v11 + 64) >> 6;
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {
      goto LABEL_36;
    }

    v18 = *(v10 + 8 * v17);
    ++v12;
    if (v18)
    {
      v14 = (v18 - 1) & v18;
      v15 = __clz(__rbit64(v18)) | (v17 << 6);
      v12 = v17;
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1C6FD3CF4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCFC4(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 192 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD3D8C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v40 = v5;
  v7 = v6;
  v8 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_3_0();
  v41 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  v15 = OUTLINED_FUNCTION_76(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v36 - v21;
  v23 = v2 >> 1;
  v24 = __OFSUB__(v2 >> 1, v4);
  v25 = (v2 >> 1) - v4;
  if (v24)
  {
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38_3();
  if (__OFADD__(v26, v25))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v27;
  v39 = v13;
  sub_1C6FDCE80(v26 + v25, 1);
  v13 = *v0;
  v28 = (*(*v0 + 24) >> 1) - *(*v0 + 16);
  v42 = v7;
  if (v23 == v4)
  {
    if (v25 <= 0)
    {
      v25 = 0;
      v7 = v4;
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v28 < v25)
  {
    __break(1u);
  }

  else
  {
    swift_arrayInitWithCopy();
    if (v25 <= 0)
    {
LABEL_10:
      v7 = v23;
LABEL_11:
      if (v25 != v28)
      {
        swift_unknownObjectRelease();
LABEL_13:
        *v0 = v13;
        OUTLINED_FUNCTION_25_0();
        return;
      }

LABEL_17:
      v30 = *(v13 + 16);
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v8);
      v31 = v39;
      while (1)
      {
        sub_1C6FD7F70();
        if (__swift_getEnumTagSinglePayload(v38, 1, v8) == 1)
        {
          break;
        }

        sub_1C6FD7FC8(v38, &qword_1EC2155A8);
        v32 = *(v13 + 24);
        v37 = v32 >> 1;
        if ((v32 >> 1) < v30 + 1)
        {
          sub_1C6FB3648(v32 > 1, v30 + 1, 1, v13);
          v13 = v35;
          v37 = *(v35 + 24) >> 1;
        }

        v36[1] = v13 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        while (1)
        {
          sub_1C6FD7F70();
          if (__swift_getEnumTagSinglePayload(v18, 1, v8) == 1)
          {
            sub_1C6FD7FC8(v18, &qword_1EC2155A8);
            goto LABEL_35;
          }

          sub_1C6FD8020();
          if (v30 >= v37)
          {
            break;
          }

          sub_1C6FD7FC8(v22, &qword_1EC2155A8);
          sub_1C6FD8020();
          if (v7 == v23)
          {
            v33 = 1;
            v7 = v23;
          }

          else
          {
            if (v7 < v4 || v7 >= v23)
            {
              goto LABEL_39;
            }

            sub_1C6FD4C38();
            v33 = 0;
            ++v7;
          }

          __swift_storeEnumTagSinglePayload(v22, v33, 1, v8);
          ++v30;
          v31 = v39;
        }

        sub_1C6FD479C(v31, type metadata accessor for PromptSuggestion);
LABEL_35:
        *(v13 + 16) = v30;
      }

      sub_1C6FD7FC8(v22, &qword_1EC2155A8);
      swift_unknownObjectRelease();
      sub_1C6FD7FC8(v38, &qword_1EC2155A8);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_46_4();
    if (!v24)
    {
      *(v13 + 16) = v29;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_1C6FD4210()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_21_9(v3);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_101_0();
  v5();
  v6 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_100_1();
  if (v8 - v7 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_43_4();
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v6;
    OUTLINED_FUNCTION_135_0();
    return;
  }

  v10 = *(v6 + 16);
  v4 = __OFADD__(v10, v0);
  v11 = v10 + v0;
  if (!v4)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD42F4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_21_9(v3);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_101_0();
  v5();
  v6 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_100_1();
  if (v8 - v7 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9);
  OUTLINED_FUNCTION_43_4();
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v6;
    OUTLINED_FUNCTION_135_0();
    return;
  }

  v10 = *(v6 + 16);
  v4 = __OFADD__(v10, v0);
  v11 = v10 + v0;
  if (!v4)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD43AC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDD00C(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 48 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD4444(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_62_6();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1C6FD447C()
{
  result = qword_1EC215498;
  if (!qword_1EC215498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215498);
  }

  return result;
}

unint64_t sub_1C6FD44D0()
{
  result = qword_1EC2154A0;
  if (!qword_1EC2154A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2154A0);
  }

  return result;
}

uint64_t sub_1C6FD4524(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215418);
    a2();
    OUTLINED_FUNCTION_111();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6FD4598()
{
  result = qword_1EC2154B0;
  if (!qword_1EC2154B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2154B0);
  }

  return result;
}

unint64_t sub_1C6FD45EC()
{
  result = qword_1EDD077B8;
  if (!qword_1EDD077B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077B8);
  }

  return result;
}

uint64_t sub_1C6FD4640(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2154C0);
    a2();
    OUTLINED_FUNCTION_111();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6FD46B4()
{
  result = qword_1EDD0D308;
  if (!qword_1EDD0D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D308);
  }

  return result;
}

unint64_t sub_1C6FD4708()
{
  result = qword_1EC2154D8;
  if (!qword_1EC2154D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2154D8);
  }

  return result;
}

uint64_t sub_1C6FD479C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C6FD47F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C6FD4870(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v8 + 32))(&v17 - v12);
  v14 = swift_allocObject();
  (*(v8 + 16))(v11, v13, a4);
  v15 = sub_1C6FD4AF0(a1, v11, v14, a4, a5);
  (*(v8 + 8))(v13, a4);
  return v15;
}

uint64_t sub_1C6FD49CC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = type metadata accessor for SafeTokenAnalyzer();
  v15 = &protocol witness table for SafeTokenAnalyzer;
  *&v13 = a4;
  swift_defaultActor_initialize();
  sub_1C754FEFC();
  *(a5 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_completedSafetyChecks) = MEMORY[0x1E69E7CC0];
  *(a5 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_partialUserPromptTokenThreshold) = 5;
  v10 = (a5 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_unsafeTitleOutputForChina);
  *v10 = 0x656661736E55;
  v10[1] = 0xE600000000000000;
  v11 = a5 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_storyPhotoLibraryContext;
  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  sub_1C6F699F8(&v13, a5 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_safeTokenAnalyzer);
  return a5;
}

uint64_t sub_1C6FD4AF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a1;
  LOWORD(a2) = *(a1 + 4);
  v11 = a1[2];
  swift_defaultActor_initialize();
  sub_1C754FEFC();
  *(a3 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_completedSafetyChecks) = MEMORY[0x1E69E7CC0];
  *(a3 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_partialUserPromptTokenThreshold) = 5;
  v12 = (a3 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_unsafeTitleOutputForChina);
  *v12 = 0x656661736E55;
  v12[1] = 0xE600000000000000;
  v13 = a3 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_storyPhotoLibraryContext;
  *v13 = v10;
  *(v13 + 8) = a2;
  *(v13 + 16) = v11;
  sub_1C6F699F8(&v15, a3 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_safeTokenAnalyzer);
  return a3;
}

uint64_t sub_1C6FD4C38()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C6FD4CC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafetyError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.cacheLexiconLanguageIdentifier(eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_49_2(a1, a2, a3);
  OUTLINED_FUNCTION_24();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41_1(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_52_3(v8);

  return v11(v5, v4, v3);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedUserPromptBeforeQU(userPrompt:includeCriticalSafety:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_85_0();

  return v3();
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedPromptSuggestion(userPrompt:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_69(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_24();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_52_3(v6);
  v8 = OUTLINED_FUNCTION_72_1();

  return v9(v8);
}

uint64_t sub_1C6FD50A8()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  OUTLINED_FUNCTION_116();

  return v5(v2);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedUserPrompt(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_85_0();

  return v3();
}

uint64_t sub_1C6FD52B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47();
  v5 = *v2;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1, a2);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validateUserPromptLanguage(userPrompt:queryTokens:eventRecorder:)()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_65_2(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_31_2();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_52_3(v7);
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_83_0();

  return v9();
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.sensitiveContent(in:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_65_2(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_31_2();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  *v7 = v8;
  v7[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_83_0();

  return v9();
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.sensitiveContent(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_31_2();
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_41_1(v17);
  *v18 = v19;
  v18[1] = sub_1C6F738F4;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validateStoryTitle(storyTitle:eventRecorder:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_69(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_24();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_52_3(v6);
  v8 = OUTLINED_FUNCTION_72_1();

  return v9(v8);
}

uint64_t sub_1C6FD5830()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  OUTLINED_FUNCTION_116();

  return v5(v2);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedPersonalTraits(traits:eventRecorder:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_40_9(v0, v1, v2, v3);
  OUTLINED_FUNCTION_31_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_22_6(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedGlobalTraits(traits:eventRecorder:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_40_9(v0, v1, v2, v3);
  OUTLINED_FUNCTION_31_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_22_6(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedAppleMusicSongs(songs:eventRecorder:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_40_9(v0, v1, v2, v3);
  OUTLINED_FUNCTION_31_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_22_6(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.extendedTokenAnalyzer()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_49_2(a1, a2, a3);
  OUTLINED_FUNCTION_24();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.diagnosticReport()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_49_2(a1, a2, a3);
  OUTLINED_FUNCTION_24();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

uint64_t sub_1C6FD5E1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF4 && *(a1 + 17))
    {
      v2 = *a1 + 243;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0xC)
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

uint64_t sub_1C6FD5E5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
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

uint64_t sub_1C6FD5EC0()
{
  result = type metadata accessor for SafetyError.SafetyValidationFailureInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6FD5F60()
{
  sub_1C6FD5FFC();
  if (v0 <= 0x3F)
  {
    sub_1C6FD604C();
    if (v1 <= 0x3F)
    {
      sub_1C6FD60B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6FD5FFC()
{
  if (!qword_1EDD0D078)
  {
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0D078);
    }
  }
}

void sub_1C6FD604C()
{
  if (!qword_1EDD0CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760);
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0CCC8);
    }
  }
}

void sub_1C6FD60B0()
{
  if (!qword_1EDD0D0C8)
  {
    sub_1C754FACC();
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0D0C8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SafetyError.UnsupportedLanguageInfo(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C6FD61E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C6FD6224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6FD6298()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafetyControllerDiagnosticReport.SafetyCheck.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SafetyControllerDiagnosticReport.SafetyCheck.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserPromptAmbiguityState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptBeforeQUCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s17CharacterCategoryOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1C6FD6798(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C6FD6874(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_71(a1);
}

_BYTE *sub_1C6FD68C0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C6FD6970()
{
  result = qword_1EC215510;
  if (!qword_1EC215510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215510);
  }

  return result;
}

unint64_t sub_1C6FD69C8()
{
  result = qword_1EC215518;
  if (!qword_1EC215518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215518);
  }

  return result;
}

unint64_t sub_1C6FD6A20()
{
  result = qword_1EC215520;
  if (!qword_1EC215520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215520);
  }

  return result;
}

unint64_t sub_1C6FD6A78()
{
  result = qword_1EC215528;
  if (!qword_1EC215528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215528);
  }

  return result;
}

unint64_t sub_1C6FD6AD0()
{
  result = qword_1EC215530;
  if (!qword_1EC215530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215530);
  }

  return result;
}

unint64_t sub_1C6FD6B28()
{
  result = qword_1EC215538;
  if (!qword_1EC215538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215538);
  }

  return result;
}

unint64_t sub_1C6FD6B80()
{
  result = qword_1EC215540;
  if (!qword_1EC215540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215540);
  }

  return result;
}

unint64_t sub_1C6FD6BD8()
{
  result = qword_1EC215548;
  if (!qword_1EC215548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215548);
  }

  return result;
}

unint64_t sub_1C6FD6C30()
{
  result = qword_1EC215550;
  if (!qword_1EC215550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215550);
  }

  return result;
}

unint64_t sub_1C6FD6C88()
{
  result = qword_1EC215558;
  if (!qword_1EC215558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215558);
  }

  return result;
}

unint64_t sub_1C6FD6CE0()
{
  result = qword_1EC215560;
  if (!qword_1EC215560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215560);
  }

  return result;
}

unint64_t sub_1C6FD6D38()
{
  result = qword_1EC215568;
  if (!qword_1EC215568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215568);
  }

  return result;
}

unint64_t sub_1C6FD6D90()
{
  result = qword_1EC215570;
  if (!qword_1EC215570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215570);
  }

  return result;
}

unint64_t sub_1C6FD6DE8()
{
  result = qword_1EC215578;
  if (!qword_1EC215578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215578);
  }

  return result;
}

unint64_t sub_1C6FD6E40()
{
  result = qword_1EC215580;
  if (!qword_1EC215580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215580);
  }

  return result;
}

unint64_t sub_1C6FD6E98()
{
  result = qword_1EDD077A8;
  if (!qword_1EDD077A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077A8);
  }

  return result;
}

unint64_t sub_1C6FD6EF0()
{
  result = qword_1EDD077B0;
  if (!qword_1EDD077B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD077B0);
  }

  return result;
}

unint64_t sub_1C6FD6F48()
{
  result = qword_1EDD0D380;
  if (!qword_1EDD0D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D380);
  }

  return result;
}

unint64_t sub_1C6FD6FA0()
{
  result = qword_1EDD0D388;
  if (!qword_1EDD0D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D388);
  }

  return result;
}

unint64_t sub_1C6FD6FF8()
{
  result = qword_1EDD0D360;
  if (!qword_1EDD0D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D360);
  }

  return result;
}

unint64_t sub_1C6FD7050()
{
  result = qword_1EDD0D368;
  if (!qword_1EDD0D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D368);
  }

  return result;
}

unint64_t sub_1C6FD70A8()
{
  result = qword_1EDD0D3F8;
  if (!qword_1EDD0D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3F8);
  }

  return result;
}

unint64_t sub_1C6FD7100()
{
  result = qword_1EDD0D400;
  if (!qword_1EDD0D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D400);
  }

  return result;
}

unint64_t sub_1C6FD7158()
{
  result = qword_1EDD0D330;
  if (!qword_1EDD0D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D330);
  }

  return result;
}

unint64_t sub_1C6FD71B0()
{
  result = qword_1EDD0D338;
  if (!qword_1EDD0D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D338);
  }

  return result;
}

unint64_t sub_1C6FD7208()
{
  result = qword_1EDD0D348;
  if (!qword_1EDD0D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D348);
  }

  return result;
}

unint64_t sub_1C6FD7260()
{
  result = qword_1EDD0D350;
  if (!qword_1EDD0D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D350);
  }

  return result;
}

unint64_t sub_1C6FD72B8()
{
  result = qword_1EDD0D320;
  if (!qword_1EDD0D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D320);
  }

  return result;
}

unint64_t sub_1C6FD7310()
{
  result = qword_1EDD0D328;
  if (!qword_1EDD0D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D328);
  }

  return result;
}

unint64_t sub_1C6FD7368()
{
  result = qword_1EDD0D310;
  if (!qword_1EDD0D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D310);
  }

  return result;
}

unint64_t sub_1C6FD73C0()
{
  result = qword_1EDD0D318;
  if (!qword_1EDD0D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D318);
  }

  return result;
}

unint64_t sub_1C6FD7418()
{
  result = qword_1EDD0D370;
  if (!qword_1EDD0D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D370);
  }

  return result;
}

unint64_t sub_1C6FD7470()
{
  result = qword_1EDD0D378;
  if (!qword_1EDD0D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D378);
  }

  return result;
}

unint64_t sub_1C6FD74C8()
{
  result = qword_1EDD0D3C0;
  if (!qword_1EDD0D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3C0);
  }

  return result;
}

unint64_t sub_1C6FD7520()
{
  result = qword_1EDD0D3C8;
  if (!qword_1EDD0D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3C8);
  }

  return result;
}

unint64_t sub_1C6FD7578()
{
  result = qword_1EDD0D3A0;
  if (!qword_1EDD0D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3A0);
  }

  return result;
}

unint64_t sub_1C6FD75D0()
{
  result = qword_1EDD0D3A8;
  if (!qword_1EDD0D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3A8);
  }

  return result;
}

unint64_t sub_1C6FD7628()
{
  result = qword_1EDD0D3B0;
  if (!qword_1EDD0D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3B0);
  }

  return result;
}

unint64_t sub_1C6FD7680()
{
  result = qword_1EDD0D3B8;
  if (!qword_1EDD0D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3B8);
  }

  return result;
}

unint64_t sub_1C6FD76D8()
{
  result = qword_1EDD0D390;
  if (!qword_1EDD0D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D390);
  }

  return result;
}

unint64_t sub_1C6FD7730()
{
  result = qword_1EDD0D398;
  if (!qword_1EDD0D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D398);
  }

  return result;
}

unint64_t sub_1C6FD7788()
{
  result = qword_1EDD0D3E8;
  if (!qword_1EDD0D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3E8);
  }

  return result;
}

unint64_t sub_1C6FD77E0()
{
  result = qword_1EDD0D3F0;
  if (!qword_1EDD0D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3F0);
  }

  return result;
}

unint64_t sub_1C6FD7838()
{
  result = qword_1EDD0D3D0;
  if (!qword_1EDD0D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3D0);
  }

  return result;
}

unint64_t sub_1C6FD7890()
{
  result = qword_1EDD0D3D8;
  if (!qword_1EDD0D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D3D8);
  }

  return result;
}

uint64_t sub_1C6FD78E4(uint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (!a2)
  {
    OUTLINED_FUNCTION_63_3();
    *(v4 + 72) = v33;
    sub_1C6FD8078(v5, v6, v33 & 1);
    return 0;
  }

  v8 = a3;
  v38 = *(v3 + 16);
  if (!a3)
  {
    v32 = *(v3 + 16);
    sub_1C6FD8078(v5, v6, v7 & 1);
LABEL_29:
    OUTLINED_FUNCTION_63_3();
    *(v4 + 72) = v32;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = *(v3 + 24);
    v41 = *(v3 + 32);
    v42 = *(v3 + 40);
    v11 = *(v3 + 48);
    v12 = *(v3 + 16);
    result = sub_1C6FD8078(v5, v6, v7 & 1);
    v13 = 0;
    v40 = v5;
    v37 = v8;
    v14 = v38;
    v15 = v6;
    v39 = v6;
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ((v14 | v42))
      {
        goto LABEL_41;
      }

      if (v15 != v41)
      {
        goto LABEL_33;
      }

      if (v5 == v10)
      {
        v34 = *(v35 + 16);
        *v36 = *v35;
        *(v36 + 16) = v34;
        *(v36 + 32) = *(v35 + 32);
        *(v36 + 48) = *(v35 + 48);
        *(v36 + 56) = v10;
        *(v36 + 64) = v15;
        v8 = v13;
        *(v36 + 72) = 0;
        return v8;
      }

      if (v12)
      {
        goto LABEL_42;
      }

      if (v5 < v40)
      {
        goto LABEL_34;
      }

      if (v41 != v6)
      {
        goto LABEL_35;
      }

      if (v5 >= v10)
      {
        goto LABEL_36;
      }

      if (v5 < 0)
      {
        goto LABEL_37;
      }

      v17 = v10;
      v18 = 1 << *(v11 + 32);
      if (v5 >= v18)
      {
        goto LABEL_37;
      }

      v19 = v5 >> 6;
      v20 = *(v11 + 56 + 8 * (v5 >> 6));
      if (((v20 >> v5) & 1) == 0)
      {
        goto LABEL_38;
      }

      if (*(v11 + 36) != v41)
      {
        goto LABEL_39;
      }

      v21 = (*(v11 + 48) + 16 * v5);
      v6 = v21[1];
      v43 = *v21;
      v22 = v20 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v5 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
        result = sub_1C75504FC();
      }

      else
      {
        v23 = v19 << 6;
        v24 = v19 + 1;
        v25 = (v11 + 64 + 8 * v19);
        while (v24 < (v18 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1C75504FC();
            v28 = OUTLINED_FUNCTION_98_1();
            result = sub_1C6F9ED50(v28, v29, 0);
            v5 = __clz(__rbit64(v26)) + v23;
            goto LABEL_24;
          }
        }

        sub_1C75504FC();
        v30 = OUTLINED_FUNCTION_98_1();
        result = sub_1C6F9ED50(v30, v31, 0);
        v5 = v18;
LABEL_24:
        v8 = v37;
        v12 = v38;
      }

      v14 = 0;
      v15 = *(v11 + 36);
      *v9 = v43;
      v9[1] = v6;
      v9 += 2;
      v13 = v16;
      LODWORD(v6) = v39;
      v10 = v17;
      if (v16 == v8)
      {
        v32 = 0;
        v4 = v36;
        goto LABEL_29;
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
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_1C6FD7BA4(void *a1, void *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  *(&__src[3] + 8) = *v3;
  v33 = *(&__src[3] + 8);
  v5 = *(v3 + 32);
  __src[0] = *(&__src[3] + 8);
  __src[1] = v4;
  BYTE8(__src[4]) = *(v3 + 16);
  v34 = BYTE8(__src[4]);
  __src[2] = v5;
  *&__src[3] = *(v3 + 48);
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        v7 = a2;
        v8 = *(v3 + 48);
        v9 = *(v3 + 32);
        v30 = *(v3 + 24);
        v29 = *(v3 + 40);
        sub_1C6FD7F70();
        v10 = 0;
        v27 = v6;
        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v12 = *(&__src[3] + 8);
          v13 = BYTE8(__src[4]);
          if (BYTE8(__src[4]))
          {
            if ((v29 & 1) == 0)
            {
              goto LABEL_55;
            }

            if (MEMORY[0x1CCA5DBA0](*(&__src[3] + 1), *&__src[4], v30, v9))
            {
              goto LABEL_43;
            }

            if ((v34 & 1) == 0)
            {
              goto LABEL_56;
            }

            if (MEMORY[0x1CCA5DB90](v12, *(&v12 + 1), v33, *(&v33 + 1)))
            {
              goto LABEL_48;
            }

            if ((MEMORY[0x1CCA5DB90](v12, *(&v12 + 1), v30, v9) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (v29)
            {
              goto LABEL_55;
            }

            if (LODWORD(__src[4]) != v9)
            {
              goto LABEL_47;
            }

            if (*(&__src[3] + 1) == v30)
            {
              goto LABEL_43;
            }

            if (v34)
            {
              goto LABEL_56;
            }

            if (DWORD2(v33) != v9)
            {
              goto LABEL_49;
            }

            if (*(&__src[3] + 1) < v33)
            {
              goto LABEL_50;
            }

            if (*(&__src[3] + 1) >= v30)
            {
              goto LABEL_46;
            }
          }

          sub_1C719D4F0(v12, *(&v12 + 1), v13, v8);
          v15 = v14;
          if ((v8 & 0xC000000000000001) != 0)
          {
            if (!v13)
            {
              goto LABEL_57;
            }

            if (sub_1C755166C())
            {
              swift_isUniquelyReferenced_nonNull_native();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A0);
            v20 = sub_1C7550FCC();
            sub_1C755172C();
            v20(v31, 0);
          }

          else
          {
            if (v13)
            {
              goto LABEL_58;
            }

            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            v16 = 1 << *(v8 + 32);
            if (v12 >= v16)
            {
              goto LABEL_51;
            }

            v17 = v12 >> 6;
            v18 = *(v8 + 56 + 8 * (v12 >> 6));
            if (((v18 >> v12) & 1) == 0)
            {
              goto LABEL_52;
            }

            if (*(v8 + 36) != DWORD2(v12))
            {
              goto LABEL_53;
            }

            v19 = v18 & (-2 << (v12 & 0x3F));
            if (v19)
            {
              v16 = __clz(__rbit64(v19)) | v12 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v21 = v17 << 6;
              v22 = v17 + 1;
              v23 = (v8 + 64 + 8 * v17);
              while (v22 < (v16 + 63) >> 6)
              {
                v25 = *v23++;
                v24 = v25;
                v21 += 64;
                ++v22;
                if (v25)
                {
                  sub_1C6F9ED50(v12, *(&v12 + 1), 0);
                  v16 = __clz(__rbit64(v24)) + v21;
                  goto LABEL_37;
                }
              }

              sub_1C6F9ED50(v12, *(&v12 + 1), 0);
LABEL_37:
              v6 = v27;
            }

            v26 = *(v8 + 36);
            *(&__src[3] + 1) = v16;
            *&__src[4] = v26;
            BYTE8(__src[4]) = 0;
          }

          *v7++ = v15;
          v10 = v11;
          if (v11 == v6)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
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
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    else
    {
      sub_1C6FD7F70();
LABEL_43:
      memcpy(a1, __src, 0x49uLL);
    }
  }

  else
  {
    memcpy(a1, __src, 0x49uLL);
    sub_1C6FD7F70();
  }
}

uint64_t sub_1C6FD7F70()
{
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C6FD7FC8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C6FD8020()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C6FD8078(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1C75504FC();
  }

  return result;
}

uint64_t sub_1C6FD8084(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a3 == 3 || a3 == 7;
  if (v3 || a3 == 12)
  {
    return sub_1C75504FC();
  }

  return result;
}

void OUTLINED_FUNCTION_50_3()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_53_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_56_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_60_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1C6FB5E28(v3 - 120, v2 + 32);
}

__n128 OUTLINED_FUNCTION_63_3()
{
  v4 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v4;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  *(v0 + 48) = *(v1 + 48);
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return sub_1C7551C6C();
}

uint64_t OUTLINED_FUNCTION_93_1()
{

  return sub_1C7551B4C();
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return sub_1C6F699F8((v0 - 160), v0 - 120);
}

void OUTLINED_FUNCTION_97_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_109_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = (a10 + 16 * v11);
  *v13 = v12;
  v13[1] = v10;
}

uint64_t OUTLINED_FUNCTION_123_0()
{

  return sub_1C75504FC();
}

void *OUTLINED_FUNCTION_126_1@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v3 + 8 * a1 + 32), (v1 + 32), 8 * v2);
}

id static PHAssetCollection.persistAsAlbum(assetUUIDs:albumName:photoLibrary:preserveOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, id a4, char a5)
{
  v6 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v10 = [a4 librarySpecificFetchOptions];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = sub_1C6FCA158(a1, v10, v11);

  if (!v13)
  {
    sub_1C755119C();
    sub_1C6F65BE8(0, &qword_1EDD0FA60);
    v28 = sub_1C755145C();
    sub_1C754FDFC();

    return 0;
  }

  if (a5)
  {
    v14 = sub_1C6FD8844(v13, a1);

    if (v14)
    {
      v13 = v14;
      goto LABEL_5;
    }

    return 0;
  }

LABEL_5:
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v13;
  v16[5] = v15;
  aBlock[4] = sub_1C6FD9B8C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);
  sub_1C75504FC();

  v18 = v13;

  aBlock[0] = 0;
  v19 = [v6 performChangesAndWait:v17 error:aBlock];
  _Block_release(v17);
  v20 = aBlock[0];
  if (v19)
  {
    v21 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C755BAB0;
    swift_beginAccess();
    v23 = *(v15 + 24);
    *(v22 + 32) = *(v15 + 16);
    *(v22 + 40) = v23;
    v24 = v20;
    sub_1C75504FC();
    v25 = sub_1C7550B3C();

    v26 = [v6 librarySpecificFetchOptions];
    v27 = [v21 fetchAssetCollectionsWithLocalIdentifiers:v25 options:v26];

    v6 = [v27 firstObject];
  }

  else
  {
    v29 = aBlock[0];
    sub_1C754DBEC();

    swift_willThrow();
  }

  return v6;
}

id sub_1C6FD8844(void *a1, uint64_t a2)
{
  v4 = [a1 fetchedObjects];
  if (!v4)
  {
    sub_1C755119C();
    sub_1C6F65BE8(0, &qword_1EDD0FA60);
    v66 = sub_1C755145C();
    sub_1C754FDFC();

    return 0;
  }

  v5 = v4;
  v81 = a1;
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v87 = sub_1C7550B5C();

  v6 = 0;
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC8];
  v9 = (a2 + 40);
  while (v7 != v6)
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v91 = v8;
    v12 = sub_1C6F78124(v11, v10);
    if (__OFADD__(v8[2], (v13 & 1) == 0))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      while (1)
      {
LABEL_50:
        sub_1C7551E4C();
        __break(1u);
LABEL_51:
        sub_1C6F65BE8(0, &qword_1EDD0FAB0);
      }
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
    if (sub_1C7551A2C())
    {
      v16 = sub_1C6F78124(v11, v10);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_50;
      }

      v14 = v16;
    }

    v8 = v91;
    if (v15)
    {
      *(v91[7] + 8 * v14) = v6;
    }

    else
    {
      v91[(v14 >> 6) + 8] |= 1 << v14;
      v18 = (v8[6] + 16 * v14);
      *v18 = v11;
      v18[1] = v10;
      *(v8[7] + 8 * v14) = v6;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_46;
      }

      v8[2] = v21;
    }

    v9 += 2;
    ++v6;
  }

  v22 = sub_1C6FB6304();
  v23 = 0;
  v84 = MEMORY[0x1E69E7CC8];
  while (v22 != v23)
  {
    if ((v87 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1CCA5DDD0](v23, v87);
    }

    else
    {
      if (v23 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v24 = *(v87 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_44;
    }

    v27 = sub_1C70CAC04(v24);
    if (!v28)
    {
      goto LABEL_49;
    }

    if (v8[2])
    {
      v29 = sub_1C6F78124(v27, v28);
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        goto LABEL_27;
      }

      v79 = *(v8[7] + 8 * v29);
      v32 = [v25 objectID];
      HIDWORD(v77) = swift_isUniquelyReferenced_nonNull_native();
      v91 = v84;
      v33 = v32;
      sub_1C6FC29E8();
      if (__OFADD__(*(v84 + 16), (v35 & 1) == 0))
      {
        goto LABEL_47;
      }

      v36 = v34;
      v85 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155B8);
      if (sub_1C7551A2C())
      {
        sub_1C6FC29E8();
        v39 = v85;
        if ((v85 & 1) != (v38 & 1))
        {
          goto LABEL_51;
        }

        v36 = v37;
        v40 = v79;
      }

      else
      {
        v40 = v79;
        v39 = v85;
      }

      v42 = v91;
      v84 = v91;
      if (v39)
      {
        *(v91[7] + 8 * v36) = v40;
      }

      else
      {
        v91[(v36 >> 6) + 8] |= 1 << v36;
        *(v42[6] + 8 * v36) = v33;
        *(v42[7] + 8 * v36) = v40;

        v43 = v42[2];
        v20 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v20)
        {
          goto LABEL_48;
        }

        v42[2] = v44;
      }

      v23 = v26;
    }

    else
    {

LABEL_27:
      sub_1C755119C();
      sub_1C6F65BE8(0, &qword_1EDD0FA60);
      v41 = sub_1C755145C();
      sub_1C754FDFC();

      ++v23;
    }
  }

  sub_1C739BEA8(v84, v45, v46, v47, v48, v49, v50, v51, v75, v77, v79, v81, v84, v87, v89, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
  v91 = v52;
  sub_1C6FD9220(&v91);

  v53 = v91;
  v54 = v91[2];
  if (v54)
  {
    v91 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    v55 = 32;
    do
    {
      v56 = *(v53 + v55);
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v55 += 16;
      --v54;
    }

    while (v54);

    v65 = v91;
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
  }

  sub_1C71BA844(v65, v64, v57, v58, v59, v60, v61, v62, v63, v76, v78, v80, v82, v86, v88, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  v69 = v68;

  v70 = [v83 photoLibrary];
  v71 = sub_1C755068C();
  v73 = v72;
  v74 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  return sub_1C70E7DFC(v69, v70, v71, v73, 0, 0, 0, 0);
}

uint64_t sub_1C6FD8E44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = objc_opt_self();
  v7 = sub_1C755065C();
  v8 = [v6 creationRequestForAssetCollectionWithTitle_];

  if ([a3 count] >= 1)
  {
    [v8 addAssets_];
  }

  v9 = [v8 placeholderForCreatedAssetCollection];
  v10 = [v9 localIdentifier];

  v11 = sub_1C755068C();
  v13 = v12;

  swift_beginAccess();
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
}

uint64_t sub_1C6FD8F68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id static PHAssetCollection.create(albums:in:preserveOrdersInAlbums:reuseFolderIfExisting:in:progressReporter:)(id a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6, uint64_t a7)
{
  v26 = a3;
  v27 = a6;
  v25 = a5;
  v23 = a4;
  v24 = a2;
  v10 = sub_1C754F2FC();
  v11 = *(v10 - 8);
  v12 = (MEMORY[0x1EEE9AC00])(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (MEMORY[0x1EEE9AC00])(v12);
  v17 = &v22 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v22 - v18);
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2CC();
  if (v7)
  {
    v20 = OUTLINED_FUNCTION_0_5();
    v19(v20, v10);
    v19(v19, v10);
    v19(a7, v10);
  }

  else
  {
    v22 = a1;
    sub_1C6F65BE8(0, &qword_1EC2155B0);
    a1 = static PHCollectionList.folder(with:reuseFolderIfExisting:in:)(v24, v26, v25 & 1, v27);
    sub_1C754F2EC();
    (*(v11 + 32))(v14, v17, v10);
    PHCollectionList.add(albums:preserveOrdersInAlbums:progressReporter:)(v22, v23 & 1, v14);
    (*(v11 + 8))(a7, v10);
  }

  return a1;
}

uint64_t sub_1C6FD9220(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422A74();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C6FD928C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C6FD928C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155C0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C6FD9400(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C6FD9390(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6FD9390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 1) = v7;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C6FD9400(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v81 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = *a3 + 16 * v7;
        v12 = 16 * v7;
        v13 = *(v11 + 8);
        v14 = (v11 + 40);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 16 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = v24[1];
                *v24 = *(v25 - 16);
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
              }

              ++v22;
              v20 -= 16;
              v12 += 16;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 16 * v9 + 8);
              v32 = v30;
              v33 = v29;
              do
              {
                if (v31 >= *(v33 - 1))
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 1) = v31;
                *(v33 - 2) = v34;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v83 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v79;
      }

      v36 = v8[2];
      v37 = v36 + 1;
      if (v36 >= v8[3] >> 1)
      {
        sub_1C6FB17EC();
        v8 = v80;
      }

      v8[2] = v37;
      v38 = v8 + 4;
      v39 = &v8[2 * v36 + 4];
      *v39 = v7;
      v39[1] = v9;
      v84 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v8[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v8[4];
            v44 = v8[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_56:
            if (v46)
            {
              goto LABEL_96;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_99;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_104;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v37 < 2)
          {
            goto LABEL_98;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_71:
          if (v61)
          {
            goto LABEL_101;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_103;
          }

          if (v68 < v60)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_1C6FD9A08((*a3 + 16 * *v72), (*a3 + 16 * *v74), (*a3 + 16 * v75), v84);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v75 < v73)
          {
            goto LABEL_91;
          }

          v76 = v8;
          v77 = v8[2];
          if (v40 > v77)
          {
            goto LABEL_92;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v40 >= v77)
          {
            goto LABEL_93;
          }

          v37 = v77 - 1;
          memmove(&v38[2 * v40], v74 + 2, 16 * (v77 - 1 - v40));
          v76[2] = v77 - 1;
          v78 = v77 > 2;
          v8 = v76;
          v5 = 0;
          if (!v78)
          {
            goto LABEL_85;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_94;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_95;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_97;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_100;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_105;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C6FD98DC(&v86, *a1, a3);
LABEL_89:
}

uint64_t sub_1C6FD98DC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C6FD9A08((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C6FD9A08(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C6F9EE08(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 1) >= *(v4 + 1))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C6F9EE08(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v15 = v6 - 16;
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_1C6FD9B98()
{
  MEMORY[0x1CCA5D040]();
  sub_1C6FB6328(*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_1C7550BEC();
}

void sub_1C6FD9BF0(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v5 = a4 + 64;
  OUTLINED_FUNCTION_11();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  sub_1C75504FC();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = *(*(a4 + 48) + 8 * v13);
      v15 = *(a4 + 56) + 16 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v21[0] = v14;
      v21[1] = v16;
      v22 = v17;
      v18 = v14;
      sub_1C6FDE42C(v16, v17);
      a2(&v23, v21);
      if (v4)
      {
        break;
      }

      v8 &= v8 - 1;

      sub_1C6FDE438(v16, v17);
      v11 = v12;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    sub_1C6FDE438(v16, v17);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C6FD9D4C(uint64_t a1)
{
  v8 = a1;
  OUTLINED_FUNCTION_17_9();
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  if (!v4)
  {
    return v8;
  }

  while (1)
  {
    v7 = *v5;
    v2(&v8, &v7);
    if (v1)
    {
      break;
    }

    ++v5;
    if (!--v4)
    {
      return v8;
    }
  }
}

uint64_t sub_1C6FD9DD4()
{
  OUTLINED_FUNCTION_17_9();
  v2 = 0;
  v10 = v3;
  v5 = *(v4 + 16);
  v6 = v4 + 32;
  while (1)
  {
    if (v5 == v2)
    {
      return v10;
    }

    v7 = *(v6 + 8 * v2);
    v9[0] = v2;
    v9[1] = v7;
    sub_1C75504FC();
    v1(&v10, v9);

    if (v0)
    {
      break;
    }

    ++v2;
  }
}

uint64_t sub_1C6FD9E70()
{
  OUTLINED_FUNCTION_17_9();
  v8 = v2;
  v4 = v3 + 32;
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 40;
    v1(&v8);
    v4 = v6;
    if (v0)
    {
    }
  }

  return v8;
}

uint64_t sub_1C6FD9EEC(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v6 = a4 + 64;
  OUTLINED_FUNCTION_11();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  result = sub_1C75504FC();
  v13 = 0;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_6:
      v15 = __clz(__rbit64(v9)) | (v14 << 6);
      v16 = (*(a4 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(a4 + 56) + 8 * v15);
      v20[0] = *v16;
      v20[1] = v17;
      v20[2] = v18;
      sub_1C75504FC();
      sub_1C75504FC();
      a2(&v21, v20);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v13 = v14;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v21;
      }

      v9 = *(v6 + 8 * v14);
      ++v13;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6FDA040()
{
  OUTLINED_FUNCTION_17_9();
  v9 = v2;
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  if (!v4)
  {
    return v9;
  }

  while (1)
  {
    v6 = *v5;
    v8[0] = *(v5 - 1);
    v8[1] = v6;
    sub_1C75504FC();
    v1(&v9, v8);
    if (v0)
    {
      break;
    }

    v5 += 2;
    if (!--v4)
    {
      return v9;
    }
  }
}

void sub_1C6FDA0E0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v35 = v38;
    v4 = sub_1C70D4544(v1);
    v6 = v5;
    v7 = 0;
    v8 = v1 + 64;
    v29 = v5;
    v30 = v2;
    v28 = v1 + 72;
    v31 = v1 + 64;
    v32 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v9 = v4 >> 6;
      if ((*(v8 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_46;
      }

      v33 = v3;
      v34 = v7 + 1;
      v10 = *(*(v1 + 48) + v4);
      sub_1C75504FC();
      v11 = 0xE400000000000000;
      v12 = 1701736302;
      switch(v10)
      {
        case 1:
          v11 = 0xE600000000000000;
          v13 = 1936876912;
          goto LABEL_25;
        case 2:
          v12 = 0x67416E6F73726570;
          v15 = 0x6570795465;
          goto LABEL_16;
        case 3:
          v12 = 1702125924;
          break;
        case 4:
          v11 = 0xE900000000000079;
          v12 = 0x6144664F74726170;
          break;
        case 5:
          v11 = 0xEA00000000006B65;
          v12 = 0x6557664F74726170;
          break;
        case 6:
          v11 = 0xE600000000000000;
          v13 = 1935762803;
LABEL_25:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v11 = 0xE800000000000000;
          v14 = 1633906540;
          goto LABEL_20;
        case 8:
          v12 = 0x4C636972656E6567;
          v11 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v12 = 1952540791;
          break;
        case 10:
          v12 = 0x764563696C627570;
          v11 = 0xEB00000000746E65;
          break;
        case 11:
          v12 = 0x6C616E6F73726570;
          v15 = 0x746E657645;
LABEL_16:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v12 = 0x746954636973756DLL;
          v11 = 0xEA0000000000656CLL;
          break;
        case 13:
          v11 = 0xEB00000000747369;
          v12 = 0x747241636973756DLL;
          break;
        case 14:
          v11 = 0xEA00000000006572;
          v12 = 0x6E6547636973756DLL;
          break;
        case 15:
          v12 = 1685024621;
          break;
        case 16:
          v11 = 0xE800000000000000;
          v14 = 1634891108;
LABEL_20:
          v12 = v14 | 0x6E6F697400000000;
          break;
        case 17:
          v11 = 0xE600000000000000;
          v12 = 0x706972547369;
          break;
        case 18:
          v12 = 0x6D69546C6C417369;
          v11 = 0xE900000000000065;
          break;
        case 19:
          v11 = 0xE900000000000072;
          v12 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v36 = v12;
      v37 = v11;
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v16 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v16);

      v17 = v35;
      v18 = *(v35 + 16);
      if (v18 >= *(v35 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v17 = v35;
      }

      *(v17 + 16) = v18 + 1;
      v19 = v17 + 16 * v18;
      *(v19 + 32) = v36;
      *(v19 + 40) = v37;
      v1 = v32;
      v20 = 1 << *(v32 + 32);
      if (v4 >= v20)
      {
        goto LABEL_47;
      }

      v8 = v31;
      v21 = *(v31 + 8 * v9);
      if ((v21 & (1 << v4)) == 0)
      {
        goto LABEL_48;
      }

      v35 = v17;
      if (*(v32 + 36) != v6)
      {
        goto LABEL_49;
      }

      v22 = v21 & (-2 << (v4 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1C6F9ED50(v4, v6, v33 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_42;
          }
        }

        sub_1C6F9ED50(v4, v6, v33 & 1);
      }

LABEL_42:
      v3 = 0;
      v4 = v20;
      v6 = v29;
      v7 = v34;
      if (v34 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

uint64_t QueryAssetsRetrievalProcessor.performWhatQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 744) = v4;
  *(v5 + 736) = a4;
  *(v5 + 728) = a3;
  *(v5 + 720) = a1;
  *(v5 + 752) = type metadata accessor for QueryTokenCategoryType(0);
  *(v5 + 760) = swift_task_alloc();
  v7 = sub_1C754F38C();
  *(v5 + 768) = v7;
  *(v5 + 776) = *(v7 - 8);
  *(v5 + 784) = swift_task_alloc();
  *(v5 + 792) = *(a2 + 8);
  *(v5 + 808) = *(a2 + 32);
  *(v5 + 920) = *(a2 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1C6FDA6B8, 0, 0);
}

void sub_1C6FDA6B8()
{
  v158 = v0;
  v1 = v0[99];
  v2 = v0[91];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C754F1CC();
  v3 = v2[3];
  v4 = v2;
  v5 = v0;
  __swift_project_boxed_opaque_existential_1(v4, v3);
  sub_1C754F15C();
  v151 = v1;
  v6 = *(v1 + 16);
  v7 = MEMORY[0x1E69E7CC8];
  v142 = v0;
  v148 = v6;
  v8 = 0;
  if (v6)
  {
    v140 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v0[101];
    v12 = (v0[99] + 32);
    v13 = MEMORY[0x1E69E7CC8];
    v138 = (v11 != 0) & v5[115];
    v143 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v10 >= *(v151 + 16))
      {
        goto LABEL_121;
      }

      v14 = v5[95];
      memcpy(v5 + 21, v12, 0x78uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      memcpy((inited + 32), v5 + 21, 0x78uLL);
      *(swift_task_alloc() + 16) = v14;
      sub_1C6FCA6E4((v5 + 21), (v5 + 36));
      sub_1C6FCA6E4((v5 + 21), (v5 + 51));
      v16 = sub_1C707351C();
      swift_setDeallocating();
      sub_1C6FDC98C();

      sub_1C6FDD4EC(v14);
      if (v16)
      {
        break;
      }

      sub_1C6FDD548((v5 + 21));
LABEL_26:
      v10 = (v10 + 1);
      v12 += 120;
      if (v148 == v10)
      {
        v38 = v143;
        v7 = MEMORY[0x1E69E7CC8];
        v6 = v140;
        goto LABEL_29;
      }
    }

    v154 = v8;
    sub_1C6F65BE8(0, &qword_1EDD0CE30);
    sub_1C75504FC();
    v17 = sub_1C7073450();
    if (!v138)
    {
      sub_1C6F6E5B4(v9);
      swift_isUniquelyReferenced_nonNull_native();
      v157 = v13;
      v30 = sub_1C6FC2A70();
      if (__OFADD__(*(v13 + 16), (v31 & 1) == 0))
      {
        goto LABEL_124;
      }

      v32 = v30;
      v33 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318);
      v13 = v157;
      if (sub_1C7551A2C())
      {
        v34 = sub_1C6FC2A70();
        if ((v33 & 1) != (v35 & 1))
        {
LABEL_108:
          OUTLINED_FUNCTION_38_4();

          sub_1C7551E4C();
          return;
        }

        v32 = v34;
      }

      if (v33)
      {
        sub_1C6FDD548((v5 + 21));
      }

      else
      {
        sub_1C6FCABD4(v32, v5 + 21, MEMORY[0x1E69E7CC0], v157);
      }

      v37 = v17;
      MEMORY[0x1CCA5D040]();
      OUTLINED_FUNCTION_40_10();
      sub_1C7550BEC();

      v9 = sub_1C6FC0A88;
      goto LABEL_25;
    }

    type metadata accessor for QueryAssetsRetrievalProcessor();
    v18 = v17;
    v19 = sub_1C754FEEC();
    v20 = sub_1C75511BC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_41_0();
      v22 = swift_slowAlloc();
      *v21 = 138477827;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Safety enforced metadata retrieval for what token: '%{private}@'", v21, 0xCu);
      sub_1C6FC15D8(v22);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    sub_1C6F6E5B4(v140);
    swift_isUniquelyReferenced_nonNull_native();
    v157 = v143;
    v24 = sub_1C6FC2A70();
    if (__OFADD__(*(v143 + 16), (v25 & 1) == 0))
    {
      goto LABEL_123;
    }

    v26 = v24;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318);
    v143 = v157;
    if (sub_1C7551A2C())
    {
      v5 = v142;
      v28 = sub_1C6FC2A70();
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_108;
      }

      v26 = v28;
      if ((v27 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = v142;
      if ((v27 & 1) == 0)
      {
LABEL_12:
        sub_1C6FCABD4(v26, v5 + 21, MEMORY[0x1E69E7CC0], v157);
LABEL_22:
        v36 = v18;
        MEMORY[0x1CCA5D040]();
        OUTLINED_FUNCTION_40_10();
        sub_1C7550BEC();

        v140 = sub_1C6FC0A88;
LABEL_25:
        v8 = v154;
        goto LABEL_26;
      }
    }

    sub_1C6FDD548((v5 + 21));
    goto LABEL_22;
  }

  v9 = 0;
  v13 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
LABEL_29:
  v5[105] = v38;
  v5[104] = v13;
  v5[103] = v9;
  v5[102] = v6;
  v5[89] = v7;
  v39 = sub_1C75504FC();
  sub_1C6FDE0B8(v39);
  v5[106] = v40;

  if (*(v38 + 16))
  {
    v41 = v38 + 64;
    v42 = (v5 + 81);
    OUTLINED_FUNCTION_10();
    v45 = v44 & v43;
    v47 = (63 - v46) >> 6;
    v144 = v38;
    swift_bridgeObjectRetain_n();
    v48 = 0;
    v49 = MEMORY[0x1E69E7CC0];
    v139 = v47;
    v141 = v38 + 64;
    while (1)
    {
      v5[107] = v49;
      if (!v45)
      {
        while (1)
        {
          v50 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v50 >= v47)
          {

            *(v5 + 922) = 0;
            sub_1C6FDC2F0((v5 + 71));
            v74 = swift_task_alloc();
            v5[108] = v74;
            *v74 = v5;
            v74[1] = sub_1C6FDB57C;
            goto LABEL_105;
          }

          v45 = *(v41 + 8 * v50);
          ++v48;
          if (v45)
          {
            v48 = v50;
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

LABEL_36:
      v51 = *(*(v144 + 56) + ((v48 << 9) | (8 * __clz(__rbit64(v45)))));
      v52 = v51 >> 62;
      v152 = v51;
      v155 = v8;
      if (v51 >> 62)
      {
        v53 = sub_1C75516BC();
      }

      else
      {
        v53 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v54 = v49 >> 62;
      if (v49 >> 62)
      {
        v55 = sub_1C75516BC();
      }

      else
      {
        v55 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v149 = v53;
      v56 = __OFADD__(v55, v53);
      v57 = v55 + v53;
      if (v56)
      {
        goto LABEL_125;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v54)
      {
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_26_4();
      if (v58 < v57)
      {
        goto LABEL_47;
      }

LABEL_48:
      v45 &= v45 - 1;
      v60 = *(v59 + 16);
      v61 = v58 - v60;
      v62 = v59 + 8 * v60;
      v146 = v59;
      if (v52)
      {
        v64 = sub_1C75516BC();
        if (!v64)
        {
          goto LABEL_62;
        }

        v65 = v64;
        v66 = sub_1C75516BC();
        if (v61 < v66)
        {
          goto LABEL_131;
        }

        if (v65 < 1)
        {
          goto LABEL_132;
        }

        v134 = v66;
        v136 = v49;
        v67 = v62 + 32;
        sub_1C6FDE444(&qword_1EC2155C8, &qword_1EC215050);
        for (i = 0; i != v65; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
          v69 = sub_1C6FDD09C(v42, i, v152);
          v71 = *v70;
          v69(v42, 0);
          *(v67 + 8 * i) = v71;
        }

        v49 = v136;
        v63 = v134;
LABEL_58:

        v41 = v141;
        v5 = v142;
        v8 = v155;
        v47 = v139;
        if (v63 < v149)
        {
          goto LABEL_126;
        }

        if (v63 > 0)
        {
          v72 = *(v146 + 16);
          v56 = __OFADD__(v72, v63);
          v73 = v72 + v63;
          if (v56)
          {
            goto LABEL_127;
          }

          *(v146 + 16) = v73;
        }
      }

      else
      {
        v63 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v63)
        {
          if (v61 < v63)
          {
            goto LABEL_130;
          }

          sub_1C6F65BE8(0, &qword_1EDD0CE30);
          swift_arrayInitWithCopy();
          goto LABEL_58;
        }

LABEL_62:

        v41 = v141;
        v5 = v142;
        v8 = v155;
        v47 = v139;
        if (v149 > 0)
        {
          goto LABEL_126;
        }
      }
    }

    if (v54)
    {
LABEL_46:
      sub_1C75516BC();
      OUTLINED_FUNCTION_37_8();
    }

LABEL_47:
    v49 = sub_1C75518CC();
    OUTLINED_FUNCTION_26_4();
    goto LABEL_48;
  }

  v75 = v5[104];
  if (!*(v75 + 16))
  {

    v111 = v5;
    v112 = v5[89];
    if (*(v112 + 16))
    {
      v113 = *(type metadata accessor for QueryAssetsRetrievalProcessor() + 28);
      sub_1C75504FC();
      v114 = sub_1C754FEEC();
      v115 = sub_1C75511BC();
      v116 = OUTLINED_FUNCTION_32(v115);
      v117 = v111[100];
      if (v116)
      {
        OUTLINED_FUNCTION_41_0();
        v118 = OUTLINED_FUNCTION_17_6();
        v157 = v118;
        *v113 = 136315138;
        sub_1C6FDA0E0(v117);
        v120 = v119;

        v121 = MEMORY[0x1CCA5D090](v120, MEMORY[0x1E69E6158]);
        v123 = v122;

        v124 = sub_1C6F765A4(v121, v123, &v157);

        *(v113 + 4) = v124;
        OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v125, v126, "Add assets to what query tokens, scoped with %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v118);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      OUTLINED_FUNCTION_33_5();
      v128 = v142[90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0);
      sub_1C6FDE390();
      v129 = sub_1C75504DC();
      __swift_destroy_boxed_opaque_existential_1Tm((v142 + 66));

      *v128 = v112;
      v128[1] = v129;
    }

    else
    {
      OUTLINED_FUNCTION_33_5();
      v127 = v111[90];
      OUTLINED_FUNCTION_29_4();

      *v127 = 0;
      v127[1] = 0;
    }

    OUTLINED_FUNCTION_19_8();
    v130 = OUTLINED_FUNCTION_15_1();
    v131(v130);
    OUTLINED_FUNCTION_35_4();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_38_4();

    __asm { BRAA            X1, X16 }
  }

  v76 = v75 + 64;
  v77 = (v5 + 85);
  OUTLINED_FUNCTION_10();
  v80 = v79 & v78;
  v82 = (63 - v81) >> 6;
  swift_bridgeObjectRetain_n();
  v83 = 0;
  v84 = MEMORY[0x1E69E7CC0];
  v145 = v82;
  v147 = v75 + 64;
  v135 = v75;
  while (1)
  {
    v5[111] = v84;
    if (!v80)
    {
      break;
    }

LABEL_74:
    v86 = *(*(v75 + 56) + ((v83 << 9) | (8 * __clz(__rbit64(v80)))));
    if (v86 >> 62)
    {
      v87 = sub_1C75516BC();
    }

    else
    {
      v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v88 = v84 >> 62;
    v156 = v8;
    if (v84 >> 62)
    {
      v89 = sub_1C75516BC();
    }

    else
    {
      v89 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v90 = v89 + v87;
    if (__OFADD__(v89, v87))
    {
      goto LABEL_128;
    }

    sub_1C75504FC();
    v153 = v87;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v88)
      {
LABEL_84:
        sub_1C75516BC();
        OUTLINED_FUNCTION_37_8();
      }

LABEL_85:
      v84 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_86;
    }

    if (v88)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_26_4();
    if (v91 < v90)
    {
      goto LABEL_85;
    }

LABEL_86:
    v80 &= v80 - 1;
    v93 = *(v92 + 16);
    v94 = v91 - v93;
    v95 = v92 + 8 * v93;
    v150 = v92;
    if (v86 >> 62)
    {
      v98 = sub_1C75516BC();
      if (!v98)
      {
        goto LABEL_100;
      }

      v99 = v98;
      v100 = sub_1C75516BC();
      if (v94 < v100)
      {
        goto LABEL_135;
      }

      if (v99 < 1)
      {
LABEL_136:
        __break(1u);
        return;
      }

      v137 = v100;
      v101 = v95 + 32;
      sub_1C6FDE444(&qword_1EC2155C8, &qword_1EC215050);
      for (j = 0; j != v99; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
        v103 = sub_1C6FDD09C(v77, j, v86);
        v105 = OUTLINED_FUNCTION_22_7(v103, v104);
        (v84)(v77, 0);
        *(v101 + 8 * j) = v105;
      }

      v75 = v135;
      v97 = v137;
LABEL_96:

      v5 = v142;
      v82 = v145;
      v8 = v156;
      v76 = v147;
      if (v97 < v153)
      {
        goto LABEL_129;
      }

      if (v97 > 0)
      {
        v106 = *(v150 + 16);
        v56 = __OFADD__(v106, v97);
        v107 = v106 + v97;
        if (v56)
        {
          goto LABEL_133;
        }

        *(v150 + 16) = v107;
      }
    }

    else
    {
      v96 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v96)
      {
        if (v94 < v96)
        {
          goto LABEL_134;
        }

        v97 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        swift_arrayInitWithCopy();
        goto LABEL_96;
      }

LABEL_100:

      v5 = v142;
      v82 = v145;
      v8 = v156;
      v76 = v147;
      if (v153 > 0)
      {
        goto LABEL_129;
      }
    }
  }

  while (1)
  {
    v85 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      goto LABEL_122;
    }

    if (v85 >= v82)
    {
      break;
    }

    v80 = *(v76 + 8 * v85);
    ++v83;
    if (v80)
    {
      v83 = v85;
      goto LABEL_74;
    }
  }

  *(v5 + 923) = 2;
  sub_1C6FDC2F0((v5 + 76));
  v108 = swift_task_alloc();
  v5[112] = v108;
  *v108 = v5;
  OUTLINED_FUNCTION_12_9(v108);
LABEL_105:
  OUTLINED_FUNCTION_38_4();

  sub_1C71074E0();
}

uint64_t sub_1C6FDB57C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 872) = v1;

  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 568);
    v5 = sub_1C6FDC178;
  }

  else
  {
    *(v4 + 880) = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 568);

    v5 = sub_1C6FDB6D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C6FDB6D0()
{
  v77 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 840);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_1C6FD9BF0(MEMORY[0x1E69E7CC8], sub_1C6FDE358, v5, v1);
  v7 = v6;

  sub_1C7108C18(v2, v7, (v0 + 712));

  v8 = *(v0 + 832);
  if (!*(v8 + 16))
  {

    v43 = *(v0 + 712);
    if (*(v43 + 16))
    {
      v44 = *(v0 + 744);
      type metadata accessor for QueryAssetsRetrievalProcessor();
      sub_1C75504FC();
      v45 = sub_1C754FEEC();
      v46 = sub_1C75511BC();
      v47 = OUTLINED_FUNCTION_32(v46);
      v48 = *(v0 + 800);
      if (v47)
      {
        OUTLINED_FUNCTION_41_0();
        v49 = OUTLINED_FUNCTION_17_6();
        v76 = v49;
        *v44 = 136315138;
        sub_1C6FDA0E0(v48);
        v51 = v50;

        v52 = MEMORY[0x1CCA5D090](v51, MEMORY[0x1E69E6158]);
        v54 = v53;

        v55 = sub_1C6F765A4(v52, v54, &v76);

        *(v44 + 4) = v55;
        OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v56, v57, "Add assets to what query tokens, scoped with %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v59 = *(v0 + 720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0);
      sub_1C6FDE390();
      v60 = sub_1C75504DC();
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 528);

      *v59 = v43;
      v59[1] = v60;
    }

    else
    {
      v58 = *(v0 + 720);
      OUTLINED_FUNCTION_29_4();

      *v58 = 0;
      v58[1] = 0;
    }

    v61 = *(v0 + 824);
    v62 = *(v0 + 816);
    v63 = *(v0 + 784);
    v64 = *(v0 + 776);
    v65 = *(v0 + 768);
    __swift_project_boxed_opaque_existential_1(*(v0 + 728), *(*(v0 + 728) + 24));
    sub_1C754F1AC();
    (*(v64 + 8))(v63, v65);
    sub_1C6F6E5B4(v62);
    sub_1C6F6E5B4(v61);

    OUTLINED_FUNCTION_25();

    v66();
    return;
  }

  v9 = v8 + 64;
  v67 = v0 + 680;
  OUTLINED_FUNCTION_10();
  v12 = v11 & v10;
  v14 = (63 - v13) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v71 = v8 + 64;
  v72 = v8;
  v70 = v14;
  v68 = v0;
  while (1)
  {
    *(v0 + 888) = v16;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v18 = *(*(v8 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v12)))));
    v19 = v18 >> 62;
    if (v18 >> 62)
    {
      v20 = sub_1C75516BC();
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v16 >> 62;
    if (v16 >> 62)
    {
      v22 = sub_1C75516BC();
    }

    else
    {
      v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v22 + v20;
    if (__OFADD__(v22, v20))
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    sub_1C75504FC();
    v75 = v18;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v21)
      {
LABEL_19:
        sub_1C75516BC();
        OUTLINED_FUNCTION_37_8();
      }

LABEL_20:
      v74 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_21;
    }

    if (v21)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_26_4();
    if (v24 < v23)
    {
      goto LABEL_20;
    }

    v74 = v16;
LABEL_21:
    v12 &= v12 - 1;
    v26 = *(v25 + 16);
    v27 = v24 - v26;
    v28 = v25 + 8 * v26;
    v73 = v25;
    if (v19)
    {
      v31 = sub_1C75516BC();
      if (!v31)
      {
        goto LABEL_35;
      }

      v32 = v31;
      v33 = sub_1C75516BC();
      if (v27 < v33)
      {
        goto LABEL_56;
      }

      if (v32 < 1)
      {
        goto LABEL_57;
      }

      v69 = v33;
      v34 = v28 + 32;
      sub_1C6FDE444(&qword_1EC2155C8, &qword_1EC215050);
      for (i = 0; i != v32; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
        v36 = sub_1C6FDD09C(v67, i, v75);
        v38 = OUTLINED_FUNCTION_22_7(v36, v37);
        (v75)(v67, 0);
        *(v34 + 8 * i) = v38;
      }

      v0 = v68;
      v30 = v69;
LABEL_31:

      v16 = v74;
      v9 = v71;
      v8 = v72;
      v14 = v70;
      if (v30 < v20)
      {
        goto LABEL_53;
      }

      if (v30 > 0)
      {
        v39 = *(v73 + 16);
        v40 = __OFADD__(v39, v30);
        v41 = v39 + v30;
        if (v40)
        {
          goto LABEL_54;
        }

        *(v73 + 16) = v41;
      }
    }

    else
    {
      v29 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        if (v27 < v29)
        {
          goto LABEL_55;
        }

        v30 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C6F65BE8(0, &qword_1EDD0CE30);
        swift_arrayInitWithCopy();
        goto LABEL_31;
      }

LABEL_35:

      v16 = v74;
      v9 = v71;
      v8 = v72;
      v14 = v70;
      if (v20 > 0)
      {
        goto LABEL_53;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_8;
    }
  }

  *(v0 + 923) = 2;
  sub_1C6FDC2F0(v0 + 608);
  v42 = swift_task_alloc();
  *(v0 + 896) = v42;
  *v42 = v0;
  OUTLINED_FUNCTION_12_9(v42);

  sub_1C71074E0();
}

uint64_t sub_1C6FDBD64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 904) = v1;

  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 608);

    v5 = sub_1C6FDC234;
  }

  else
  {
    *(v4 + 912) = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 608);

    v5 = sub_1C6FDBEF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C6FDBEF0()
{
  v31 = v0;
  v1 = v0[114];
  v2 = v0[104];
  v3 = v0[93];
  v4 = v0[92];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_1C6FD9BF0(MEMORY[0x1E69E7CC8], sub_1C6FDE374, v5, v1);
  v7 = v6;

  sub_1C7108C18(v2, v7, v0 + 89);

  v8 = v0[89];
  if (*(v8 + 16))
  {
    v9 = *(type metadata accessor for QueryAssetsRetrievalProcessor() + 28);
    sub_1C75504FC();
    v10 = sub_1C754FEEC();
    v11 = sub_1C75511BC();
    v12 = OUTLINED_FUNCTION_32(v11);
    v13 = v0[100];
    if (v12)
    {
      OUTLINED_FUNCTION_41_0();
      v14 = OUTLINED_FUNCTION_17_6();
      v30 = v14;
      *v9 = 136315138;
      sub_1C6FDA0E0(v13);
      v16 = v15;

      v17 = MEMORY[0x1CCA5D090](v16, MEMORY[0x1E69E6158]);
      v19 = v18;

      v20 = sub_1C6F765A4(v17, v19, &v30);

      *(v9 + 4) = v20;
      OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v21, v22, "Add assets to what query tokens, scoped with %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    OUTLINED_FUNCTION_33_5();
    v24 = v0[90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0);
    sub_1C6FDE390();
    v25 = sub_1C75504DC();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 66));

    *v24 = v8;
    v24[1] = v25;
  }

  else
  {
    OUTLINED_FUNCTION_33_5();
    v23 = v0[90];
    OUTLINED_FUNCTION_29_4();

    *v23 = 0;
    v23[1] = 0;
  }

  OUTLINED_FUNCTION_19_8();
  v26 = OUTLINED_FUNCTION_15_1();
  v27(v26);
  OUTLINED_FUNCTION_35_4();

  OUTLINED_FUNCTION_25();

  return v28();
}

uint64_t sub_1C6FDC178()
{
  v3 = *(v0 + 832);
  OUTLINED_FUNCTION_29_4();

  OUTLINED_FUNCTION_18_4();
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_34_5();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C6FDC234()
{
  v3 = *(v0 + 832);
  OUTLINED_FUNCTION_29_4();

  OUTLINED_FUNCTION_18_4();
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_34_5();

  v4 = *(v0 + 8);

  return v4();
}

void sub_1C6FDC2F0(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(a1 + 32) = &off_1F46ACFD0;
  v2 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  *a1 = 4;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 == 0;
}

void sub_1C6FDC38C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Metadata retrieval failed for '%{private}@' WHAT token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();

      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0x7420544148572027, 0xEC0000006E656B6FLL);
      sub_1C7161CDC(0xD000000000000024, 0x80000001C7597F90);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

void sub_1C6FDC658(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Complete retrieval failed for '%{private}@' WHAT token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();

      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0x7420544148572027, 0xEC0000006E656B6FLL);
      sub_1C7161CDC(0xD000000000000024, 0x80000001C7597F60);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

uint64_t sub_1C6FDC93C()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDC98C()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDC9DC()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCA2C()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCA68()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCAA8()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCAFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCB94(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCC10(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCEE0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C75516BC();
  OUTLINED_FUNCTION_37_8();
LABEL_9:
  result = sub_1C75518CC();
  *v1 = result;
  return result;
}

uint64_t sub_1C6FDD024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1C6FDD09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_8(a1, a2, a3);
  sub_1C7095B0C(v5);
  v6 = OUTLINED_FUNCTION_4_5();
  sub_1C6FB6330(v6, v7, v8);
  if (v4)
  {
    v9 = OUTLINED_FUNCTION_27_6();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *v3 = v9;
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C6FDD0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_8(a1, a2, a3);
  sub_1C7095B0C(v5);
  v6 = OUTLINED_FUNCTION_4_5();
  sub_1C6FB6330(v6, v7, v8);
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *v3 = v9;
  return OUTLINED_FUNCTION_16_0();
}

uint64_t (*sub_1C6FDD164(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1C7095B0C(a3);
  sub_1C6FB6330(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1CCA5DDD0](a2, a3);
  }

  *a1 = v7;
  return sub_1C6FDE6E4;
}

uint64_t sub_1C6FDD1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_8(a1, a2, a3);
  sub_1C7095B0C(v5);
  v6 = OUTLINED_FUNCTION_4_5();
  sub_1C6FB6330(v6, v7, v8);
  if (v4)
  {
    v9 = OUTLINED_FUNCTION_27_6();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *v3 = v9;
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C6FDD258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_8(a1, a2, a3);
  sub_1C7095B0C(v5);
  v6 = OUTLINED_FUNCTION_4_5();
  sub_1C6FB6330(v6, v7, v8);
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *v3 = v9;
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C6FDD4EC(uint64_t a1)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  (*(*(TokenCategoryType - 8) + 8))(a1, TokenCategoryType);
  return a1;
}

void sub_1C6FDE0B8(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    return;
  }

  v1 = a1;
  v2 = a1 + 64;
  OUTLINED_FUNCTION_11();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v8 = sub_1C75504FC();
  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CD0];
  v31 = v8;
  if (v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_3:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v12 >= v7)
    {

      return;
    }

    v5 = *(v2 + 8 * v12);
    ++v9;
  }

  while (!v5);
  v9 = v12;
  while (1)
  {
LABEL_7:
    v13 = *(*(v1 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    if ((v10 & 1) == 0)
    {
      sub_1C75504FC();
      goto LABEL_13;
    }

    v14 = v11[32];
    v15 = v14 & 0x3F;
    v16 = ((1 << v14) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    isStackAllocationSafe = sub_1C75504FC();
    if (v15 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        swift_slowAlloc();
        sub_1C75504FC();
        sub_1C75504FC();
        OUTLINED_FUNCTION_36_3();
        v29 = sub_1C70A9074(v25, v26, v27, v28);
        v23 = v16;
        if (v16)
        {
          goto LABEL_22;
        }

        v24 = v29;

        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_109();
        goto LABEL_11;
      }
    }

    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1C71FAC38(0, v16, &v30 - ((8 * v16 + 15) & 0x3FFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_36_3();
    sub_1C70A9104(v18, v19, v20, v21);
    v23 = v16;
    if (v16)
    {
      break;
    }

    v24 = v22;

LABEL_11:
    v13 = v24;
    v1 = v31;
LABEL_13:
    v5 &= v5 - 1;

    v10 = 1;
    v11 = v13;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  swift_willThrow();

  __break(1u);
LABEL_22:

  OUTLINED_FUNCTION_109();
  __break(1u);
}

unint64_t sub_1C6FDE390()
{
  result = qword_1EDD0C918;
  if (!qword_1EDD0C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C918);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_20_10();
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_1C6FDE42C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1C75504FC();
  }
}

void sub_1C6FDE438(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C6FDE444(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6FDE498(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = 0;
  v3 = (a1 + 32);
  v4 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v5 = *v3;
    if ((v2 & 1) == 0)
    {
      sub_1C75504FC();
      goto LABEL_8;
    }

    v6 = v4[32];
    v7 = v6 & 0x3F;
    v8 = ((1 << v6) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    isStackAllocationSafe = sub_1C75504FC();
    if (v7 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    swift_slowAlloc();
    sub_1C75504FC();
    sub_1C75504FC();
    v17 = OUTLINED_FUNCTION_30_6();
    v21 = sub_1C70A9074(v17, v18, v19, v20);
    v15 = v8;
    if (v8)
    {
      goto LABEL_15;
    }

    v22 = v21;

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_109();
    v5 = v22;
LABEL_8:

    ++v3;
    --v1;
    v2 = 1;
    v4 = v5;
    if (!v1)
    {
      return;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_1C71FAC38(0, v8, v23 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  v10 = OUTLINED_FUNCTION_30_6();
  sub_1C70A9104(v10, v11, v12, v13);
  v15 = v8;
  if (!v8)
  {
    v16 = v14;

    v5 = v16;
    goto LABEL_8;
  }

  swift_willThrow();

  __break(1u);
LABEL_15:

  OUTLINED_FUNCTION_109();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_35_4()
{
  sub_1C6F6E5B4(v1);
  sub_1C6F6E5B4(v0);
}

uint64_t OUTLINED_FUNCTION_40_10()
{
  v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

  return sub_1C6FB6328(v2);
}

_BYTE *storeEnumTagSinglePayload for MessagesBackdrop(_BYTE *result, int a2, int a3)
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

uint64_t FreeformStoryGeneration.Montage.Curated.Story.elements.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x130uLL);
  memcpy(a1, (v1 + 24), 0x130uLL);
  return sub_1C6FDE884(__dst, v4);
}

uint64_t FreeformStoryGeneration.Montage.Curated.Story.completion.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[22];
  v7[0] = v1[21];
  v7[1] = v2;
  v4 = v1[24];
  v8 = v1[23];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C6FDE928(v7, &v6);
}

uint64_t FreeformStoryGeneration.Montage.Curated.Story.musicCuration.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story(0);
  OUTLINED_FUNCTION_0_7();
  return sub_1C6FE0D68(v1 + v3, a1);
}

uint64_t FreeformStoryGeneration.Montage.Curated.Story.init(identifier:type:elements:chapters:completion:keyAsset:musicCuration:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X2>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a4;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = v14;
  memcpy((a9 + 24), __src, 0x130uLL);
  *(a9 + 328) = a5;
  v15 = a6[1];
  *(a9 + 336) = *a6;
  *(a9 + 352) = v15;
  v16 = a6[3];
  *(a9 + 368) = a6[2];
  *(a9 + 384) = v16;
  *(a9 + 400) = a7;
  type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story(0);
  OUTLINED_FUNCTION_0_7();
  return sub_1C6FE0EE8(a8, a9 + v17);
}

void sub_1C6FDEB00()
{
  sub_1C6FDEBCC();
  if (v0 <= 0x3F)
  {
    sub_1C6FDEC1C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for StoryMusicCuration();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6FDEBCC()
{
  if (!qword_1EDD06B28)
  {
    v0 = sub_1C7550C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD06B28);
    }
  }
}

unint64_t sub_1C6FDEC1C()
{
  result = qword_1EDD0FA70;
  if (!qword_1EDD0FA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0FA70);
  }

  return result;
}

uint64_t sub_1C6FDECA8()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StoryGenerationSession(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FreeformStoryGenerator();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C6FDED5C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2156A0);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

uint64_t sub_1C6FDEDD8()
{
  OUTLINED_FUNCTION_42();
  v1[315] = v0;
  v1[314] = v2;
  v1[313] = v3;
  v1[312] = v4;
  v1[311] = v5;
  v1[316] = type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story(0);
  v1[317] = swift_task_alloc();
  type metadata accessor for StoryMusicCuration();
  v1[318] = swift_task_alloc();
  v1[319] = sub_1C754F2FC();
  OUTLINED_FUNCTION_15_3();
  v1[320] = v6;
  v1[321] = swift_task_alloc();
  v1[322] = swift_task_alloc();
  v1[323] = swift_task_alloc();
  v1[324] = swift_task_alloc();
  v1[325] = sub_1C754F38C();
  OUTLINED_FUNCTION_15_3();
  v1[326] = v7;
  v1[327] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C6FDEF74()
{
  v1 = *(v0 + 2504);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = *(v0 + 2592);
  v39 = *(v0 + 2576);
  v41 = *(v0 + 2552);
  v3 = *(v0 + 2520);
  v35 = v3;
  v36 = *(v0 + 2560);
  v37 = *(v0 + 2496);
  __swift_project_boxed_opaque_existential_1(*(v0 + 2504), v1[3]);
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  *(v0 + 2272) = 5;
  *(v0 + 2280) = 0x3F9EB851EB851EB8;
  *(v0 + 2288) = xmmword_1C755EB70;
  *(v0 + 2304) = xmmword_1C755EB70;
  *(v0 + 2320) = 0x3F847AE147AE147BLL;
  v4 = type metadata accessor for FreeformStoryGeneration.Montage.Curated.Generator(0);
  v5 = *(v3 + *(v4 + 28));
  *(v0 + 2624) = v5;
  v6 = v5 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  *(v0 + 2448) = *v6;
  *(v0 + 2456) = v8;
  *(v0 + 2464) = v9;
  type metadata accessor for FreeformStoryKeyAssetElector();
  swift_allocObject();
  v10 = v7;

  *(v0 + 2632) = FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)((v0 + 2272), (v0 + 2448));
  v11 = *(v4 + 24);
  *(v0 + 2404) = v11;
  v12 = *(v36 + 32);
  v12(v39, v2, v41);
  v13 = *(v37 + 368);
  memcpy((v0 + 16), (v37 + 24), 0x130uLL);
  memcpy((v0 + 320), (v37 + 24), 0x130uLL);
  sub_1C6FDE884(v0 + 16, v0 + 624);
  sub_1C7246CB8(v13, (v0 + 320), v35 + v11, (v0 + 2328), v39, (v0 + 2368));
  memcpy((v0 + 1232), (v0 + 320), 0x130uLL);
  sub_1C6FE0DC0(v0 + 1232);
  v23 = *(v0 + 2368);
  *(v0 + 2640) = v23;
  v24 = *(v0 + 2376);
  *(v0 + 2648) = v24;
  v25 = *(v0 + 2384);
  *(v0 + 2656) = v25;
  v26 = *(v0 + 2392);
  *(v0 + 2664) = v26;
  v27 = *(v0 + 2400);
  *(v0 + 2401) = v27;
  if (v23)
  {
    v28 = *(v0 + 2584);
    v29 = *(v0 + 2568);
    v30 = *(v0 + 2552);
    *(v0 + 2408) = v23;
    *(v0 + 2416) = v24;
    *(v0 + 2424) = v25;
    *(v0 + 2432) = v26;
    *(v0 + 2440) = v27;
    v12(v29, v28, v30);
    v31 = swift_task_alloc();
    *(v0 + 2672) = v31;
    *v31 = v0;
    v31[1] = sub_1C6FDF4B8;
    v32 = *(v0 + 2568);
    v33 = *(v0 + 2496);

    return sub_1C6FE0114(v33, v0 + 2408, v0 + 2328, v32);
  }

  else
  {
    sub_1C6FE0D14();
    swift_allocError();
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *v34 = 2;
    *(v34 + 24) = 12;
    swift_willThrow();
    v14 = *(v0 + 2616);
    v15 = *(v0 + 2608);
    v16 = *(v0 + 2584);
    v17 = *(v0 + 2560);
    v18 = *(v0 + 2552);
    v38 = *(v0 + 2512);
    v40 = *(v0 + 2600);
    v19 = *(v0 + 2504);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2328);
    v20 = *(v17 + 8);
    v20(v16, v18);
    __swift_project_boxed_opaque_existential_1(v19, v1[3]);
    sub_1C754F1AC();
    (*(v15 + 8))(v14, v40);
    v20(v38, v18);
    OUTLINED_FUNCTION_4_6();

    OUTLINED_FUNCTION_43();

    return v21();
  }
}

uint64_t sub_1C6FDF4B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2680) = v4;
  *(v2 + 2688) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FDF5C0()
{
  v27 = v0;
  v1 = *(v0 + 2688);
  v2 = *(v0 + 2680);
  v3 = *(v0 + 2401);
  v4 = *(v0 + 2656);
  v25[0] = *(v0 + 2640);
  v25[1] = v4;
  v26 = v3;
  sub_1C73E6CD4(v25, v2);
  *(v0 + 2696) = v5;
  *(v0 + 2704) = v6;
  if (v1)
  {
    v19 = *(v0 + 2656);
    v20 = *(v0 + 2664);
    v7 = *(v0 + 2648);
    v8 = *(v0 + 2640);
    v9 = *(v0 + 2616);
    v10 = *(v0 + 2608);
    v11 = *(v0 + 2560);
    v23 = *(v0 + 2552);
    v21 = *(v0 + 2600);
    v22 = *(v0 + 2512);
    v12 = *(v0 + 2504);
    v13 = *(v0 + 2401);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2328);

    sub_1C6FE0E14(v8, v7, v19, v20, v13);
    OUTLINED_FUNCTION_10_3(v12);
    OUTLINED_FUNCTION_16_6();
    sub_1C754F1AC();
    (*(v10 + 8))(v9, v21);
    (*(v11 + 8))(v22, v23);

    OUTLINED_FUNCTION_43();

    return v14();
  }

  else
  {
    v16 = *(v0 + 2496);

    OUTLINED_FUNCTION_10_3((v16 + 328));
    OUTLINED_FUNCTION_15_3();
    v24 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v0 + 2712) = v18;
    *v18 = v0;
    v18[1] = sub_1C6FDF880;
    OUTLINED_FUNCTION_16_6();

    return v24();
  }
}

uint64_t sub_1C6FDF880()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 2720) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FDF984()
{
  v1 = *(v0 + 2496);
  *(v0 + 2208) = *(v0 + 2144);
  *(v0 + 2224) = *(v0 + 2160);
  *(v0 + 2240) = *(v0 + 2176);
  *(v0 + 2256) = *(v0 + 2192);
  v2 = *(v1 + 384);
  *(v0 + 2472) = *(v1 + 376);
  *(v0 + 2480) = v2;
  type metadata accessor for StoryGenerationSession(0);

  v3 = swift_task_alloc();
  *(v0 + 2728) = v3;
  *v3 = v0;
  v3[1] = sub_1C6FDFA8C;

  return sub_1C73E72EC();
}

uint64_t sub_1C6FDFA8C()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C6FDFBB0()
{
  v28 = *(v0 + 2720);
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2696);
  v3 = *(v0 + 2544);
  v4 = *(v0 + 2536);
  v5 = *(v0 + 2496);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v5 + 16);
  memcpy((v0 + 1536), v5 + 3, 0x130uLL);
  OUTLINED_FUNCTION_0_7();
  sub_1C6FE0D68(v3, v4 + v9);
  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 16) = v8;
  memcpy((v4 + 24), (v0 + 1536), 0x130uLL);
  *(v4 + 328) = v1;
  v10 = *(v0 + 2224);
  v11 = *(v0 + 2256);
  v12 = *(v0 + 2208);
  *(v4 + 368) = *(v0 + 2240);
  *(v4 + 384) = v11;
  *(v4 + 336) = v12;
  *(v4 + 352) = v10;
  *(v4 + 400) = v2;
  sub_1C75504FC();
  sub_1C6FDE884(v0 + 1536, v0 + 1840);
  v13 = v28;
  sub_1C754F2EC();
  v14 = *(v0 + 2616);
  v27 = *(v0 + 2608);
  v29 = *(v0 + 2600);
  if (v13)
  {
    v15 = *(v0 + 2544);
    v26 = *(v0 + 2616);
    v16 = *(v0 + 2536);
    v17 = *(v0 + 2504);

    OUTLINED_FUNCTION_13_9();
    sub_1C6FE0E90(v16, type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story);
    OUTLINED_FUNCTION_2_6();
    sub_1C6FE0E90(v15, v18);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2328);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1C754F1AC();
    (*(v27 + 8))(v26, v29);
    OUTLINED_FUNCTION_4_6();
  }

  else
  {
    v20 = *(v0 + 2544);
    v25 = *(v0 + 2536);
    v21 = *(v0 + 2504);
    v22 = *(v0 + 2488);

    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_2_6();
    sub_1C6FE0E90(v20, v23);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2328);
    OUTLINED_FUNCTION_3_9();
    sub_1C6FE0EE8(v25, v22);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_1C754F1AC();
    (*(v27 + 8))(v14, v29);
  }

  OUTLINED_FUNCTION_43();

  return v19();
}

uint64_t sub_1C6FDFEA0()
{
  OUTLINED_FUNCTION_8_8();
  v2 = v0[326];
  v3 = v0[320];
  v9 = v0[319];
  v7 = v0[325];
  v8 = v0[314];
  v4 = v0[313];

  __swift_destroy_boxed_opaque_existential_1((v0 + 291));
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_10_3(v4);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v7);
  (*(v3 + 8))(v8, v9);
  OUTLINED_FUNCTION_4_6();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C6FDFFD4()
{
  OUTLINED_FUNCTION_8_8();
  v2 = v0[326];
  v8 = v3;
  v9 = v0[325];
  v4 = v0[320];
  v10 = v0[314];
  v11 = v0[319];
  v5 = v0[313];

  OUTLINED_FUNCTION_12_10();

  __swift_destroy_boxed_opaque_existential_1((v0 + 291));
  OUTLINED_FUNCTION_10_3(v5);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v9);
  (*(v4 + 8))(v10, v11);
  OUTLINED_FUNCTION_4_6();

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C6FE0114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1600) = v4;
  *(v5 + 1592) = a4;
  *(v5 + 1584) = a3;
  *(v5 + 1576) = a1;
  v6 = *(a2 + 16);
  *(v5 + 1608) = *a2;
  *(v5 + 1624) = v6;
  *(v5 + 1570) = *(a2 + 32);
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FE0160()
{
  v1 = *(v0 + 1570);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1624);
  *(v0 + 1569) = *(*(v0 + 1576) + 16);
  type metadata accessor for FreeformStoryGenerator();
  *(v0 + 1536) = *(v0 + 1608);
  *(v0 + 1552) = v3;
  *(v0 + 1560) = v2;
  *(v0 + 1568) = v1;
  v4 = type metadata accessor for FreeformStoryGeneration.Montage.Curated.Generator(0);
  *(v0 + 1640) = v4;
  *(v0 + 1572) = *(v4 + 24);
  type metadata accessor for StoryGenerationSession(0);
  v5 = swift_task_alloc();
  *(v0 + 1648) = v5;
  *v5 = v0;
  v5[1] = sub_1C6FE0284;

  return static FreeformStoryGenerator.addCurationHints(to:storyType:from:diagnosticContext:)();
}

uint64_t sub_1C6FE0284()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1656) = v4;
  *(v2 + 1664) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FE038C()
{
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1569);
  v3 = *(v1 + 16);
  switch(v2 >> 5)
  {
    case 1u:
      if ((v3 & 0xE0) != 0x20)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 2u:
      if (v2 == 64)
      {
        if (v3 != 64)
        {
          goto LABEL_14;
        }
      }

      else if (v3 != 65)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    case 3u:
      if (v2 != 96)
      {
        if (v3 == 97)
        {
          goto LABEL_18;
        }

LABEL_14:
        v4 = *(v0 + 1592);

        sub_1C754F2FC();
        OUTLINED_FUNCTION_12();
        (*(v5 + 8))(v4);
        v6 = *(v0 + 8);
        v7 = MEMORY[0x1E69E7CC0];

        return v6(v7);
      }

      if (v3 != 96)
      {
        goto LABEL_14;
      }

LABEL_18:
      v9 = *(v1 + 352);
      v10 = *(v1 + 360);
      OUTLINED_FUNCTION_10_3((v1 + 328));
      OUTLINED_FUNCTION_15_3();
      v13 = (v11 + *v11);
      v12 = swift_task_alloc();
      *(v0 + 1672) = v12;
      *v12 = v0;
      v12[1] = sub_1C6FE05B8;

      return v13(v9, v10);
    case 4u:
      if (v3 == 128)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    default:
      if (v3 >= 0x20)
      {
        goto LABEL_14;
      }

LABEL_13:
      if ((v3 ^ v2))
      {
        goto LABEL_14;
      }

      goto LABEL_18;
  }
}

uint64_t sub_1C6FE05B8(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[210] = v9;
  v5[211] = v1;

  if (!v1)
  {
    v5[212] = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C6FE06D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 1572);
  v11 = *(v9 + 1600);
  v12 = *(v9 + 1576);
  memcpy((v9 + 16), (v12 + 24), 0x130uLL);
  memcpy((v9 + 320), (v12 + 24), 0x130uLL);
  sub_1C6FDE884(v9 + 16, v9 + 624);
  v13 = swift_task_alloc();
  *(v9 + 1704) = v13;
  *v13 = v9;
  v13[1] = sub_1C6FE07D8;
  v14 = *(v9 + 1696);
  v15 = *(v9 + 1680);
  v16 = *(v9 + 1656);
  v17 = *(v9 + 1584);

  return sub_1C7047DD0(v16, v12 + 328, v9 + 320, v9 + 1569, v14, v15, v11 + v10, v17, a9);
}

uint64_t sub_1C6FE07D8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v2 + 1712) = v6;
  *(v2 + 1571) = v7;
  *(v2 + 1720) = v0;

  if (v0)
  {
    memcpy((v2 + 928), (v2 + 320), 0x130uLL);
    sub_1C6FE0DC0(v2 + 928);
  }

  else
  {
    memcpy((v2 + 1232), (v2 + 320), 0x130uLL);
    sub_1C6FE0DC0(v2 + 1232);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C6FE0974()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1569);
  v2 = *(*(v0 + 1576) + 16);
  switch(v1 >> 5)
  {
    case 1u:
      if ((v2 & 0xE0) != 0x20)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 2u:
      if (v1 == 64)
      {
        if (v2 != 64)
        {
          goto LABEL_14;
        }
      }

      else if (v2 != 65)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    case 3u:
      if (v1 == 96)
      {
        if (v2 == 96)
        {
          goto LABEL_16;
        }

LABEL_14:
        sub_1C6F9ED74(*(v0 + 1712), *(v0 + 1571) & 1);
LABEL_17:
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }

      if (v2 != 97)
      {
        goto LABEL_14;
      }

LABEL_16:
      if (*(v0 + 1571))
      {
        goto LABEL_17;
      }

      v3 = *(v0 + 1712);
LABEL_18:
      v4 = *(v0 + 8);

      return v4(v3);
    case 4u:
      if (v2 == 128)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    default:
      if (v2 >= 0x20)
      {
        goto LABEL_14;
      }

LABEL_13:
      if ((v2 ^ v1))
      {
        goto LABEL_14;
      }

      goto LABEL_16;
  }
}

uint64_t sub_1C6FE0A90()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1592);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v1);
  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C6FE0B18()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1592);

  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v1);
  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C6FE0BCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 > 0x1F)
  {
    sub_1C6FE0D14();
    v5 = swift_allocError();
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = v3;
    *(v6 + 24) = 8;
LABEL_4:
    *a2 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2156D8);
    goto LABEL_5;
  }

  type metadata accessor for FreeformStoryGeneration.Montage.Curated.Generator(0);
  sub_1C7047A98(*(a1 + 328), v13);
  if (v15)
  {
    v8 = v13[0];
    v9 = v13[1];
    v10 = v13[2];
    v11 = v14;
    sub_1C6FE0D14();
    v5 = swift_allocError();
    *v12 = v8;
    *(v12 + 8) = v9;
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_9();
  sub_1C6FE0D68(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2156D8);
LABEL_5:

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1C6FE0D14()
{
  result = qword_1EDD09D00;
  if (!qword_1EDD09D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09D00);
  }

  return result;
}

uint64_t sub_1C6FE0D68(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

void *sub_1C6FE0E14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (result)
  {

    return sub_1C6FE0E78(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1C6FE0E78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1C6FE0E90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C6FE0EE8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C6FE0F40(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_17_3();
  }

  sub_1C6FC286C();
  if (v3)
  {
    return OUTLINED_FUNCTION_2_7(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6FE0F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_1C6F78124(a1, a2);
    if (v3)
    {
      OUTLINED_FUNCTION_19_9();
    }
  }

  return OUTLINED_FUNCTION_90();
}

uint64_t sub_1C6FE0FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_17_3();
  }

  v3 = sub_1C6F78124(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_2_7(v3);
  }

  else
  {
    return 0;
  }
}

double sub_1C6FE1034()
{
  OUTLINED_FUNCTION_16_7();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  v1 = sub_1C6FC2BC8();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  OUTLINED_FUNCTION_10_10(v1);
  return result;
}

uint64_t sub_1C6FE1070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_1C6F78124(a1, a2);
    if (v5)
    {
      v6 = *(a3 + 56) + 32 * v4;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      v9 = OUTLINED_FUNCTION_90();
      sub_1C6FE369C(v9, v10, v7, v8);
    }
  }

  return OUTLINED_FUNCTION_90();
}

uint64_t sub_1C6FE10EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_1C6F78124(a1, a2), (v7 & 1) != 0))
  {
    OUTLINED_FUNCTION_11_8();
    v8 = sub_1C754DF6C();
    OUTLINED_FUNCTION_12();
    (*(v9 + 16))(a4, v5 + *(v9 + 72) * v4, v8);
    v10 = OUTLINED_FUNCTION_5_13();
  }

  else
  {
    sub_1C754DF6C();
    v10 = OUTLINED_FUNCTION_6_11();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1C6FE11A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_7(v3);
  return sub_1C75504FC();
}

double sub_1C6FE11F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_15_12();
  }

  v3 = sub_1C6F78124(a1, a2);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  OUTLINED_FUNCTION_10_10(v3);
  return result;
}

double sub_1C6FE1230()
{
  OUTLINED_FUNCTION_16_7();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  v1 = sub_1C6FC2EAC();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  OUTLINED_FUNCTION_10_10(v1);
  return result;
}

uint64_t sub_1C6FE126C()
{
  OUTLINED_FUNCTION_16_7();
  if (v4 && (sub_1C6FCABE8(v3), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_11_8();
    type metadata accessor for PromptSuggestionPersistedBundle(v6);
    OUTLINED_FUNCTION_12();
    sub_1C6FE36F4(v2 + *(v7 + 72) * v1, v0, type metadata accessor for PromptSuggestionPersistedBundle);
    v8 = OUTLINED_FUNCTION_5_13();
  }

  else
  {
    type metadata accessor for PromptSuggestionPersistedBundle(0);
    v8 = OUTLINED_FUNCTION_6_11();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

double sub_1C6FE1304()
{
  OUTLINED_FUNCTION_16_7();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  v1 = sub_1C6FC2F4C();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  OUTLINED_FUNCTION_10_10(v1);
  return result;
}

unint64_t sub_1C6FE1358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_1C6F78124(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

uint64_t sub_1C6FE13CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_7(v3);
  return sub_1C75504FC();
}