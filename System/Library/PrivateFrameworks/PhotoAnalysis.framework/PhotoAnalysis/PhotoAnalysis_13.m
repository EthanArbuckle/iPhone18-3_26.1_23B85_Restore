uint64_t PromptSuggestionValidator.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyPhotoLibraryContext;
  v4 = sub_22FCC7E14();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_safetyController);

  v5 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_queryGenerator;
  v6 = sub_22FCC7124();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_quProcessor);
  sub_22FA2B420(v0 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_momentBasedGroundingAndAssetsProvider, &qword_27DAD8810);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_annotationProvider);

  return v0;
}

uint64_t PromptSuggestionValidator.__deallocating_deinit()
{
  PromptSuggestionValidator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_22FB52C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FAA31A4;

  return PromptSuggestionValidator.searchFallbackPrompts(_:eventRecorder:progressReporter:)(a1, a2, a3);
}

uint64_t sub_22FB52CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FAA31A4;

  return PromptSuggestionValidator.validateOfflineLLMQU(_:eventRecorder:progressReporter:)(a1, a2, a3, a4);
}

uint64_t sub_22FB52D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA52F04;

  return PromptSuggestionValidator.validatePeople(_:eventRecorder:progressReporter:)(a1, a2, a3);
}

uint64_t sub_22FB52E6C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_annotationProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_22FB56174;

  return v6(v2, v3);
}

id sub_22FB52F9C()
{
  v0 = objc_opt_self();

  return [v0 promptValidationAssetCountThreshold];
}

uint64_t sub_22FB52FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8830) + 48);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8828) + 48);
  v7 = *v4;
  v6 = *(v4 + 8);
  v9 = *(v4 + 16);
  v8 = *(v4 + 24);
  v10 = *(v4 + 32);
  LOBYTE(v4) = *(v4 + 40);
  sub_22FB26F90(a1, a2);
  *v5 = v7;
  *(v5 + 8) = v6;
  *(v5 + 16) = v9;
  *(v5 + 24) = v8;
  *(v5 + 32) = v10;
  *(v5 + 40) = v4;

  v11 = v9;
}

uint64_t sub_22FB530A4@<X0>(uint64_t a1@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8830);
  v3 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v5 = &v45 - v4;
  v6 = type metadata accessor for TemplatedPrompt();
  v53 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8838);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v45 = v5;
  v54 = v18;
  if (v19)
  {
    v47 = v16;
    v50 = v14;
    v51 = v3;
    v20 = v56;
    v52 = a1;
    v21 = v17;
LABEL_11:
    v48 = v15;
    v49 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v21 << 6);
    v26 = v8;
    v27 = v15;
    sub_22FB26F90(*(v15 + 48) + *(v53 + 72) * v25, v8);
    v28 = *(v27 + 56) + 48 * v25;
    v29 = *(v28 + 8);
    v53 = *v28;
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    v32 = *(v28 + 32);
    v46 = *(v28 + 40);
    v33 = v50;
    v34 = &v50[*(v20 + 48)];
    sub_22FB5570C(v26, v50);
    *v34 = v53;
    *(v34 + 1) = v29;
    *(v34 + 2) = v30;
    *(v34 + 3) = v31;
    *(v34 + 4) = v32;
    v34[40] = v46;
    v14 = v33;
    v35 = v20;
    v3 = v51;
    (*(v51 + 56))(v33, 0, 1, v35);

    v36 = v30;

    v24 = v21;
    v38 = v48;
    v37 = v49;
    a1 = v52;
    v16 = v47;
LABEL_12:
    *v1 = v38;
    v1[1] = v16;
    v39 = v55;
    v1[2] = v54;
    v1[3] = v24;
    v1[4] = v37;
    v40 = v1[5];
    sub_22FA4F224(v14, v39, &qword_27DAD8838);
    v41 = 1;
    if ((*(v3 + 48))(v39, 1, v56) != 1)
    {
      v42 = v39;
      v43 = v45;
      sub_22FA4F224(v42, v45, &qword_27DAD8830);
      v40(v43);
      sub_22FA2B420(v43, &qword_27DAD8830);
      v41 = 0;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8828);
    return (*(*(v44 - 8) + 56))(a1, v41, 1, v44);
  }

  else
  {
    v22 = (v18 + 64) >> 6;
    if (v22 <= v17 + 1)
    {
      v23 = v17 + 1;
    }

    else
    {
      v23 = (v18 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v38 = v15;
        (*(v3 + 56))(v14, 1, 1, v56);
        v37 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v21);
      ++v17;
      if (v19)
      {
        v47 = v16;
        v50 = v14;
        v51 = v3;
        v20 = v56;
        v52 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FB534D0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22FA2F7D8(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_22FA4FE00(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_22FA2B420(v21, &qword_27DAD8880);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FB53630@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v3;
  v4 = v2;
}

uint64_t _s13PhotoAnalysis25PromptSuggestionValidatorC05storyA14LibraryContext37momentBasedGroundingAndAssetsProvider18maxAssetFetchCountAC18PhotosIntelligence05StoryagH0V_AG06MomentjklmN0_pSgSitcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v45 - v6;
  v7 = sub_22FCC7124();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FCC7C74();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22FCC7A44();
  v59 = *(v66 - 8);
  v11 = MEMORY[0x28223BE20](v66);
  v53 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v45 - v13;
  v14 = sub_22FCC7E14();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v48 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v18);
  v64 = &v45 - v21;
  v60 = v15;
  v22 = *(v15 + 16);
  v22();
  v23 = sub_22FCC7574();
  v45 = v14;
  (v22)(v20, a1, v14);
  v24 = sub_22FCC7564();
  (v22)(v20, a1, v14);
  sub_22FCC7C44();
  swift_allocObject();
  v65 = sub_22FCC7C34();
  v62 = a2;
  sub_22FA4FAA4(a2, v78, &qword_27DAD8810);
  v63 = a1;
  v25 = sub_22FCC7DF4();
  v26 = type metadata accessor for PromptSuggestionAnnotator();
  swift_allocObject();
  v27 = sub_22FADF43C(v25);

  sub_22FB3DD90(v77);
  type metadata accessor for PromptSuggestionValidator();
  v28 = swift_allocObject();
  v76[4] = MEMORY[0x277D3C180];
  v76[3] = v23;
  v75[4] = &protocol witness table for PromptSuggestionAnnotator;
  v76[0] = v24;
  v75[3] = v26;
  v75[0] = v27;
  v52 = v24;
  v29 = v65;
  swift_retain_n();
  v51 = v27;
  v30 = v22;
  swift_retain_n();
  v31 = v45;
  v32 = v64;
  sub_22FCC8674();
  v33 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_personIsValidCache;
  *(v28 + v33) = sub_22FA4CB54(MEMORY[0x277D84F90]);
  *(v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator____lazy_storage___personOrPetUUIDsWithFeedback) = 0;
  (v22)(v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyPhotoLibraryContext, v32, v31);
  v34 = sub_22FCC7DF4();
  sub_22FCC7934();

  v46 = v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher;
  sub_22FA2CF78(&v72, v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher);
  sub_22FA2D328(v76, v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_safetyController);
  *(v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_momentExpansionProcessor) = v29;
  sub_22FA4FAA4(v78, v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_momentBasedGroundingAndAssetsProvider, &qword_27DAD8810);
  *(v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_maxAssetFetchCount) = v47;
  (v22)(v20, v32, v31);
  sub_22FCC6F44();
  swift_allocObject();

  *(v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetManager) = sub_22FCC6F34();
  sub_22FA2D328(v77, v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_quProcessor);
  sub_22FA2D328(v75, v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_annotationProvider);
  sub_22FA4FAA4(v78, &v70, &qword_27DAD8810);
  if (v71)
  {
    sub_22FA2CF78(&v70, &v72);
    v35 = v30;
  }

  else
  {
    (v30)(v20, v32, v31);
    v73 = sub_22FCC8344();
    v74 = MEMORY[0x277D3C6F0];
    __swift_allocate_boxed_opaque_existential_1(&v72);
    sub_22FCC8334();
    v35 = v30;
    if (v71)
    {
      sub_22FA2B420(&v70, &qword_27DAD8810);
    }
  }

  (*(v49 + 104))(v54, *MEMORY[0x277D3C590], v50);
  (v35)(v20, v32, v31);
  sub_22FA2D328(v46, &v70);
  (v35)(v48, v32, v31);
  sub_22FCC7C64();
  swift_allocObject();
  sub_22FCC7C54();
  sub_22FA2D328(&v72, &v69);
  sub_22FA2D328(v76, &v68);
  sub_22FCC6E34();
  v67[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8878);
  v67[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v67);
  sub_22FCC6E24();
  v36 = v32;
  v37 = v56;
  sub_22FCC7A34();
  v38 = v59;
  (*(v59 + 16))(v53, v37, v66);
  (v35)(v20, v36, v31);
  v39 = v55;
  sub_22FCC7114();
  (*(v57 + 32))(v28 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_queryGenerator, v39, v58);
  v40 = sub_22FCC8D14();
  v41 = v61;
  (*(*(v40 - 8) + 56))(v61, 1, 1, v40);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v28;

  sub_22FB22A48(0, 0, v41, &unk_22FCD81A8, v42);

  sub_22FA2B420(v62, &qword_27DAD8810);
  v43 = *(v60 + 8);
  v43(v63, v31);
  (*(v38 + 8))(v37, v66);
  __swift_destroy_boxed_opaque_existential_0(v77);
  sub_22FA2B420(v78, &qword_27DAD8810);
  v43(v64, v31);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(v76);
  __swift_destroy_boxed_opaque_existential_0(&v72);
  return v28;
}

size_t sub_22FB53FDC(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v43 = MEMORY[0x277D84F90];
  result = sub_22FA8705C(0, v9, 0);
  v42 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_71;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_72;
      }

      if (v8 < 0)
      {
        goto LABEL_73;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7860);
            v23 = *(type metadata accessor for TemplatedPrompt() - 8);
            v37 = (*(v23 + 80) + 32) & ~*(v23 + 80);
            v39 = *(v23 + 72);
            v20 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v20);
            if (!v39)
            {
              goto LABEL_77;
            }

            if (result - v37 == 0x8000000000000000 && v39 == -1)
            {
              goto LABEL_79;
            }

            v20[2] = v19;
            v20[3] = 2 * ((result - v37) / v39);
          }

          type metadata accessor for TemplatedPrompt();
          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v43 + 16);
      v21 = *(v43 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_22FA8705C((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v43 + 16) = v22 + 1;
      *(v43 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v42;
      if (!v9)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_39:
    v25 = v17 <= v7;
    if (a3 > 0)
    {
      v25 = v17 >= v7;
    }

    if (v25)
    {
      return v43;
    }

    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      v27 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v28 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v29 = a4[2];
      if (v29 < v28)
      {
        v28 = a4[2];
      }

      v30 = v28 - v17;
      if (v28 < v17)
      {
        goto LABEL_75;
      }

      if (v17 < 0)
      {
        goto LABEL_76;
      }

      if (v29 == v30)
      {

        v31 = a4;
      }

      else
      {
        v31 = v26;
        if (v28 != v17)
        {
          if (v30 < 1)
          {
            v31 = v26;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7860);
            v35 = *(type metadata accessor for TemplatedPrompt() - 8);
            v38 = (*(v35 + 80) + 32) & ~*(v35 + 80);
            v40 = *(v35 + 72);
            v31 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v31);
            if (!v40)
            {
              goto LABEL_78;
            }

            if (result - v38 == 0x8000000000000000 && v40 == -1)
            {
              goto LABEL_80;
            }

            v31[2] = v30;
            v31[3] = 2 * ((result - v38) / v40);
          }

          type metadata accessor for TemplatedPrompt();
          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v33 = *(v43 + 16);
      v32 = *(v43 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_22FA8705C((v32 > 1), v33 + 1, 1);
        v15 = a5;
      }

      *(v43 + 16) = v33 + 1;
      *(v43 + 8 * v33 + 32) = v31;
      v34 = v27 <= v42;
      if (a3 > 0)
      {
        v34 = v27 >= v42;
      }

      v17 = v27;
      if (v34)
      {
        return v43;
      }
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t _s13PhotoAnalysis25PromptSuggestionValidatorC25allowAmbiguousPersonToken2inSbSS_tFZ_0()
{
  MEMORY[0x2319074B0]();
  sub_22FA7FD88();
  v0 = sub_22FCC9224();

  if (v0)
  {
    v1 = 0;
    return v1 & 1;
  }

  else
  {
    sub_22FCC8AF4();
    v2 = sub_22FCC8074();
    v3 = v2 + 56;
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    result = 0;
    while (1)
    {
      v1 = result;
      if (!v6)
      {
        break;
      }

      v10 = v6;
LABEL_12:
      v6 = (v10 - 1) & v10;
      result = 1;
      if ((v1 & 1) == 0)
      {
        result = sub_22FCC9224();
      }
    }

    while (1)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return v1 & 1;
      }

      v10 = *(v3 + 8 * v11);
      ++v8;
      if (v10)
      {
        v8 = v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FB54698(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v68 = a5;
  v52 = type metadata accessor for TemplatedPrompt();
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8820);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51 - v11;
  v13 = -1 << *(a1 + 32);
  v14 = ~v13;
  v15 = *(a1 + 64);
  v16 = -v13;
  v61 = a1;
  v62 = a1 + 64;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v63 = v14;
  v64 = 0;
  v65 = v17 & v15;
  v66 = a2;
  v67 = a3;

  v53 = a3;

  for (i = v12; ; v12 = i)
  {
    sub_22FB530A4(v12);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8828);
    if ((*(*(v26 - 8) + 48))(v12, 1, v26) == 1)
    {
      sub_22FA37D64();
    }

    v27 = &v12[*(v26 + 48)];
    v28 = v12;
    v29 = v60;
    sub_22FB5570C(v28, v60);
    v30 = *v27;
    v59 = *(v27 + 1);
    v32 = *(v27 + 2);
    v31 = *(v27 + 3);
    v33 = *(v27 + 4);
    v34 = v27[40];
    v35 = *v68;
    v37 = sub_22FA69F80(v29);
    v38 = v35[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      break;
    }

    v41 = v36;
    if (v35[3] >= v40)
    {
      if ((a4 & 1) == 0)
      {
        sub_22FA6FAC4();
      }
    }

    else
    {
      sub_22FA6B168(v40, a4 & 1);
      v42 = sub_22FA69F80(v60);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_20;
      }

      v37 = v42;
    }

    v44 = *v68;
    if (v41)
    {
      v18 = 48 * v37;
      v19 = v44[7] + 48 * v37;
      v20 = *(v19 + 8);
      v57 = *v19;
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      v23 = *(v19 + 32);
      v56 = *(v19 + 40);

      v55 = v21;

      sub_22FA72A34(v60);
      v24 = v44[7] + v18;
      v25 = *(v24 + 16);
      *v24 = v57;
      *(v24 + 8) = v20;
      *(v24 + 16) = v55;
      *(v24 + 24) = v22;
      *(v24 + 32) = v23;
      *(v24 + 40) = v56;
    }

    else
    {
      v44[(v37 >> 6) + 8] |= 1 << v37;
      sub_22FB5570C(v60, v44[6] + *(v54 + 72) * v37);
      v45 = v44[7] + 48 * v37;
      v46 = v59;
      *v45 = v30;
      *(v45 + 8) = v46;
      *(v45 + 16) = v32;
      *(v45 + 24) = v31;
      *(v45 + 32) = v33;
      *(v45 + 40) = v34;
      v47 = v44[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_19;
      }

      v44[2] = v49;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

uint64_t sub_22FB54A74(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v40 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v37 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v39[0] = *(*(a1 + 48) + v16);
    v39[1] = v17;
    v18 = v39[0];

    a2(v38, v39);

    v20 = v38[0];
    v19 = v38[1];
    v21 = *v40;
    v23 = sub_22FA6A0C0(v38[0]);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v37 & 1) == 0)
      {
        sub_22FA6FDC0();
      }
    }

    else
    {
      sub_22FA6B5B4(v26, v37 & 1);
      v28 = sub_22FA6A0C0(v20);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v40;
    if (v27)
    {
      v12 = *(v30[7] + 8 * v23);

      v13 = sub_22FC26F30(v19, v12);

      *(v30[7] + 8 * v23) = v13;
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      *(v30[6] + 8 * v23) = v20;
      *(v30[7] + 8 * v23) = v19;
      v31 = v30[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_26;
      }

      v30[2] = v33;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_22FA37D64();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v37 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_22FA3A77C(0, &qword_28147AE88);
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

uint64_t sub_22FB54D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v49 = a3;
  v50 = a7;
  v64 = a6;
  v65 = a4;
  v56 = a5;
  v48 = a11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v15 - 8);
  v62 = &v46 - v16;
  v17 = sub_22FCC7124();
  v59 = *(v17 - 8);
  v60 = v17;
  MEMORY[0x28223BE20](v17);
  v57 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22FCC7C74();
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x28223BE20](v19);
  v55 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22FCC7A44();
  v61 = *(v63 - 8);
  v21 = MEMORY[0x28223BE20](v63);
  v54 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v58 = &v46 - v23;
  v24 = sub_22FCC7E14();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v51 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v46 - v28;
  v75[3] = a10;
  v75[4] = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a2, a10);
  v74[3] = a9;
  v74[4] = v48;
  v31 = __swift_allocate_boxed_opaque_existential_1(v74);
  (*(*(a9 - 8) + 32))(v31, v56, a9);
  sub_22FCC8674();
  v32 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_personIsValidCache;
  *(a8 + v32) = sub_22FA4CB54(MEMORY[0x277D84F90]);
  *(a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator____lazy_storage___personOrPetUUIDsWithFeedback) = 0;
  v56 = v25;
  v33 = *(v25 + 16);
  v33(a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyPhotoLibraryContext, a1, v24);
  v34 = sub_22FCC7DF4();
  sub_22FCC7934();

  v48 = OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher;
  sub_22FA2CF78(&v71, a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetsFetcher);
  sub_22FA2D328(v75, a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_safetyController);
  *(a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_momentExpansionProcessor) = v49;
  v35 = v65;
  sub_22FA4FAA4(v65, a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_momentBasedGroundingAndAssetsProvider, &qword_27DAD8810);
  *(a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_maxAssetFetchCount) = v50;
  v33(v29, a1, v24);
  sub_22FCC6F44();
  swift_allocObject();

  *(a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_storyAssetManager) = sub_22FCC6F34();
  sub_22FA2D328(v64, a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_quProcessor);
  sub_22FA2D328(v74, a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_annotationProvider);
  sub_22FA4FAA4(v35, &v69, &qword_27DAD8810);
  if (v70)
  {
    sub_22FA2CF78(&v69, &v71);
    v36 = v24;
    v37 = v33;
  }

  else
  {
    v33(v29, a1, v24);
    v72 = sub_22FCC8344();
    v73 = MEMORY[0x277D3C6F0];
    __swift_allocate_boxed_opaque_existential_1(&v71);
    sub_22FCC8334();
    v36 = v24;
    v37 = v33;
    if (v70)
    {
      sub_22FA2B420(&v69, &qword_27DAD8810);
    }
  }

  v46 = v37;
  (*(v52 + 104))(v55, *MEMORY[0x277D3C590], v53);
  v37(v29, a1, v36);
  sub_22FA2D328(a8 + v48, &v69);
  v47 = a1;
  v37(v51, a1, v36);
  sub_22FCC7C64();
  swift_allocObject();
  sub_22FCC7C54();
  sub_22FA2D328(&v71, &v68);
  sub_22FA2D328(v75, &v67);
  sub_22FCC6E34();
  v66[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8878);
  v66[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v66);
  sub_22FCC6E24();
  v38 = v58;
  sub_22FCC7A34();
  v39 = v61;
  (*(v61 + 16))(v54, v38, v63);
  v40 = v47;
  v46(v29, v47, v36);
  v41 = v57;
  sub_22FCC7114();
  (*(v59 + 32))(a8 + OBJC_IVAR____TtC13PhotoAnalysis25PromptSuggestionValidator_queryGenerator, v41, v60);
  v42 = sub_22FCC8D14();
  v43 = v62;
  (*(*(v42 - 8) + 56))(v62, 1, 1, v42);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = a8;

  sub_22FB22A48(0, 0, v43, &unk_22FCD81A0, v44);

  __swift_destroy_boxed_opaque_existential_0(v64);
  sub_22FA2B420(v65, &qword_27DAD8810);
  (*(v56 + 8))(v40, v36);
  (*(v39 + 8))(v38, v63);
  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_destroy_boxed_opaque_existential_0(v75);
  __swift_destroy_boxed_opaque_existential_0(&v71);
  return a8;
}

uint64_t sub_22FB55560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v26 = a6;
  v27 = a7;
  v22 = a5;
  v23 = a1;
  v24 = a3;
  v25 = a4;
  v13 = *(a9 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a10 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v17 + 16))(v19, a2, a10);
  (*(v13 + 16))(v16, v22, a9);
  return sub_22FB54D0C(v23, v19, v24, v25, v16, v26, v27, v20, a9, a10, a11, a12);
}

uint64_t sub_22FB5570C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemplatedPrompt();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of PromptSuggestionValidating.searchFallbackPrompts(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FAA3184;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PromptSuggestionValidating.validateOfflineLLMQU(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FAA3184;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PromptSuggestionValidating.validatePeople(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FAA2728;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PromptSuggestionValidating.prewarm()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C21C;

  return v7(a1, a2);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22FB55C7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FB55CC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for PromptSuggestionValidator()
{
  result = qword_28147E5B8;
  if (!qword_28147E5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FB55D74()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    result = sub_22FCC7E14();
    if (v2 <= 0x3F)
    {
      result = sub_22FCC7124();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_22FB55F1C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_22FB55F7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FB55FCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C21C;

  return sub_22FB3E2C0(a1, v4, v5, v6);
}

uint64_t objectdestroy_46Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22FB560C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C030;

  return sub_22FB3E2C0(a1, v4, v5, v6);
}

uint64_t sub_22FB56190()
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  result = sub_22FCC91C4();
  qword_28147BF40 = result;
  return result;
}

uint64_t sub_22FB56208()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147BF18);
  __swift_project_value_buffer(v0, qword_28147BF18);
  if (qword_28147BF38 != -1)
  {
    swift_once();
  }

  v1 = qword_28147BF40;
  return sub_22FCC8694();
}

uint64_t sub_22FB56294()
{
  if (!*(v0 + 176))
  {
    if (qword_28147BF10 != -1)
    {
      swift_once();
    }

    v4 = sub_22FCC8684();
    __swift_project_value_buffer(v4, qword_28147BF18);
    v5 = sub_22FCC8664();
    v6 = sub_22FCC8F34();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_13;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Task will not run: Task can only run with a valid syndication library";
    goto LABEL_12;
  }

  v1 = sub_22FCC6DE4();
  v10[3] = v1;
  v10[4] = sub_22FB590CC(qword_28147B080, 255, MEMORY[0x277D3A838]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A7E8], v1);
  LOBYTE(v1) = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v10);
  if (v1)
  {
    return 1;
  }

  if (qword_28147BF10 != -1)
  {
    swift_once();
  }

  v9 = sub_22FCC8684();
  __swift_project_value_buffer(v9, qword_28147BF18);
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "Task will not run: FF Photos/PhotosPosterBackdrop is not enabled";
LABEL_12:
    _os_log_impl(&dword_22FA28000, v5, v6, v8, v7, 2u);
    MEMORY[0x23190A000](v7, -1, -1);
  }

LABEL_13:

  return 0;
}

uint64_t sub_22FB564BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34[1] = *MEMORY[0x277D85DE8];
  v8 = sub_22FCC67F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 56) = 0x40F5180000000000;
  *(v4 + 64) = 0xD000000000000028;
  *(v4 + 72) = 0x800000022FCD8230;
  sub_22FCC67E4();
  v12 = sub_22FCC67B4();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  *(v4 + 80) = v12;
  *(v4 + 88) = v14;
  *(v4 + 96) = xmmword_22FCD3720;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v4 + 128) = 1;
  v15 = type metadata accessor for MomentGraphWorker();
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0;
  *(v4 + 40) = v15;
  *(v4 + 48) = sub_22FB590CC(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v4 + 16) = a1;
  *(v4 + 232) = a2;
  sub_22FA2E6E4(a3, v4 + 136);
  v16 = *(*(a1 + 112) + 112);
  v17 = objc_allocWithZone(PHAWallpaperSuggestionRefreshSession);

  *(v4 + 184) = [v17 initWithGraphManager_];
  v18 = [*(*(a1 + 112) + 112) photoLibrary];
  LODWORD(v17) = [v18 isSystemPhotoLibrary];

  if (!v17)
  {
    sub_22FA2B420(a3, &unk_27DAD83A0);

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  v19 = objc_opt_self();
  v34[0] = 0;
  v20 = [v19 openPhotoLibraryWithWellKnownIdentifier:3 error:v34];
  v21 = v34[0];
  if (!v20)
  {
    v22 = v21;
    v23 = sub_22FCC6514();

    swift_willThrow();
    if (qword_28147BF10 != -1)
    {
      swift_once();
    }

    v24 = sub_22FCC8684();
    __swift_project_value_buffer(v24, qword_28147BF18);
    v25 = v23;
    v26 = sub_22FCC8664();
    v27 = sub_22FCC8F34();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v23;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_22FA28000, v26, v27, "Unable to open syndication library: %@", v28, 0xCu);
      sub_22FA2B420(v29, &unk_27DAD7B10);
      MEMORY[0x23190A000](v29, -1, -1);
      MEMORY[0x23190A000](v28, -1, -1);
    }

    else
    {
    }

    sub_22FA2B420(a3, &unk_27DAD83A0);
    goto LABEL_11;
  }

  sub_22FA2B420(a3, &unk_27DAD83A0);

LABEL_12:
  *(v4 + 176) = v20;
  return v4;
}

uint64_t sub_22FB568F8(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v4 = sub_22FCC71C4();
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();
  v5 = sub_22FCC72B4();
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();
  v6 = sub_22FCC8494();
  v3[41] = v6;
  v3[42] = *(v6 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB56ABC, 0, 0);
}

uint64_t sub_22FB56ABC()
{
  if (qword_28147BF38 != -1)
  {
    swift_once();
  }

  v1 = qword_28147BF40;
  sub_22FCC76D4();
  swift_allocObject();
  v2 = v1;
  *(v0 + 400) = sub_22FCC76C4();

  sub_22FCC84A4();
  sub_22FCC8464();
  v3 = *(*(v0 + 272) + 176);
  *(v0 + 408) = v3;
  if (v3)
  {
    v5 = *(v0 + 376);
    v4 = *(v0 + 384);
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    v8 = v3;
    sub_22FCC8454();
    v9 = *(v7 + 32);
    v9(v5, v4, v6);
    v10 = sub_22FB5843C(v8, v5);
    *(v0 + 416) = v10;
    v46 = v9;
    v12 = *(v0 + 272);
    v47 = v10;
    v13 = *(v10 + 16);
    *(v12 + 192) = v13;
    v40 = v12;
    sub_22FA2E6E4(v12 + 136, v0 + 56);
    if (*(v0 + 80))
    {
      v14 = *(v0 + 272);
      sub_22FA2D89C((v0 + 56), v0 + 16);
      v15 = *(v0 + 48);
      v43 = *(v0 + 40);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v43);
      sub_22FCC9384();
      v16 = *(v14 + 64);
      v17 = *(v14 + 72);

      MEMORY[0x231907FA0](0xD00000000000001BLL, 0x800000022FCE4A50);
      (*(v15 + 16))(v13, v16, v17, v43, v15);

      __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    }

    else
    {
      sub_22FA2B420(v0 + 56, &unk_27DAD83A0);
    }

    sub_22FCC8474();
    v41 = *(v0 + 360);
    v44 = *(v0 + 328);
    v20 = *(v0 + 288);
    v19 = *(v0 + 296);
    v37 = *(v0 + 280);
    v38 = *(v0 + 368);
    sub_22FCC8454();
    v21 = v8;
    sub_22FCC7264();
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD78A0) + 48);
    v23 = *MEMORY[0x277D3C0A8];
    v24 = sub_22FCC71B4();
    (*(*(v24 - 8) + 104))(v19, v23, v24);
    *(v19 + v22) = 0;
    (*(v20 + 104))(v19, *MEMORY[0x277D3C0C0], v37);
    v25 = sub_22FCC7254();
    *(v0 + 424) = v25;
    (*(v20 + 8))(v19, v37);
    v26 = v21;
    v46(v41, v38, v44);
    v45 = sub_22FB34618(v21, v25, v41);
    *(*(v0 + 272) + 224) = v45;
    sub_22FA2E6E4(v40 + 136, v0 + 136);
    if (*(v0 + 160))
    {
      v27 = *(v0 + 272);
      sub_22FA2D89C((v0 + 136), v0 + 96);
      v42 = v21;
      v28 = *(v0 + 120);
      v39 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), v28);
      sub_22FCC9384();
      v29 = *(v27 + 64);
      v30 = *(v27 + 72);

      MEMORY[0x231907FA0](0xD000000000000022, 0x800000022FCE1440);
      v31 = v28;
      v26 = v42;
      (*(v39 + 16))(v45, v29, v30, v31);

      __swift_destroy_boxed_opaque_existential_0(v0 + 96);
    }

    else
    {
      sub_22FA2B420(v0 + 136, &unk_27DAD83A0);
    }

    sub_22FCC8474();
    v33 = *(v0 + 344);
    v32 = *(v0 + 352);
    v34 = *(v0 + 328);
    sub_22FCC8454();
    v46(v33, v32, v34);
    v35 = swift_task_alloc();
    *(v0 + 432) = v35;
    *v35 = v0;
    v35[1] = sub_22FB57220;
    v36 = *(v0 + 344);

    return sub_22FB5780C(v26, v47, v36);
  }

  else
  {
    (*(*(v0 + 336) + 8))(*(v0 + 392), *(v0 + 328));
    sub_22FCC76B4();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_22FB57220(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[55] = a1;
  v5[56] = v2;

  if (v2)
  {
    v6 = sub_22FB576D8;
  }

  else
  {
    v5[57] = a2;
    v6 = sub_22FB5736C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_22FB5736C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 440);
  v3 = *(v0 + 272);
  *(v3 + 200) = v1;
  *(v3 + 208) = v2;
  v4 = __OFADD__(v2, v1);
  v5 = v2 + v1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 272);
    *(v6 + 216) = v5;
    sub_22FA2E6E4(v6 + 136, v0 + 216);
    if (*(v0 + 240))
    {
      v7 = *(v0 + 440);
      v8 = *(v0 + 272);
      sub_22FA2D89C((v0 + 216), v0 + 176);
      v9 = *(v0 + 200);
      v10 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v9);
      sub_22FCC9384();
      v12 = *(v8 + 64);
      v11 = *(v8 + 72);

      MEMORY[0x231907FA0](0xD000000000000021, 0x800000022FCE13C0);
      (*(v10 + 16))(v7, v12, v11, v9, v10);

      v13 = *(v0 + 200);
      v14 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v13);
      v15 = *(v3 + 200);
      sub_22FCC9384();

      MEMORY[0x231907FA0](0xD000000000000024, 0x800000022FCE13F0);
      (*(v14 + 16))(v15, v12, v11, v13, v14);

      v16 = *(v0 + 200);
      v17 = *(v0 + 208);
      __swift_project_boxed_opaque_existential_1((v0 + 176), v16);
      v18 = *(v6 + 216);
      sub_22FCC9384();

      MEMORY[0x231907FA0](0xD00000000000001DLL, 0x800000022FCE1420);
      (*(v17 + 16))(v18, v12, v11, v16, v17);

      __swift_destroy_boxed_opaque_existential_0(v0 + 176);
    }

    else
    {
      sub_22FA2B420(v0 + 216, &unk_27DAD83A0);
    }

    sub_22FCC8484();
    v19 = *(v0 + 424);
    v20 = *(v0 + 408);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

    sub_22FCC76B4();

    v21 = *(v0 + 8);

    v21();
  }
}

uint64_t sub_22FB576D8()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 392);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 304);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  sub_22FCC76B4();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22FB5780C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22FCC8494();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB578DC, 0, 0);
}

uint64_t sub_22FB578DC()
{
  sub_22FCC8464();
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) librarySpecificFetchOptions];
  *(v0 + 80) = v2;
  sub_22FA3A77C(0, &qword_28147AEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22FCD17F0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_22FA4EF4C();
  *(v3 + 32) = 0x6564496C61636F6CLL;
  *(v3 + 40) = 0xEF7265696669746ELL;
  *(v3 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
  *(v3 + 104) = sub_22FB59068();
  *(v3 + 72) = v1;

  v4 = sub_22FCC8EE4();
  [v2 setPredicate_];

  v5 = [objc_opt_self() fetchSuggestionsWithOptions_];
  *(v0 + 88) = v5;
  sub_22FCC8474();
  if ([v5 count] < 1)
  {
    if (qword_28147BF10 != -1)
    {
      swift_once();
    }

    v15 = sub_22FCC8684();
    __swift_project_value_buffer(v15, qword_28147BF18);
    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F34();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22FA28000, v16, v17, "Found no syndication suggestion", v18, 2u);
      MEMORY[0x23190A000](v18, -1, -1);
    }

    v19 = *(v0 + 48);
    v20 = *(v0 + 56);
    v21 = *(v0 + 32);

    (*(v20 + 8))(v21, v19);

    v22 = *(v0 + 8);

    return v22(0, 0);
  }

  else
  {
    sub_22FCC8474();
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    v10 = *(v0 + 40);
    sub_22FCC8454();
    v11 = *(v10 + 184);
    (*(v9 + 32))(v7, v6, v8);
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = sub_22FB57D14;
    v13 = *(v0 + 64);

    return sub_22FB35398(v5, v11, v13);
  }
}

uint64_t sub_22FB57D14(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_22FB57F38;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_22FB57E48;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FB57E48()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  sub_22FCC8484();

  if (v1)
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[14];
    v7 = v0[15];

    v8 = v0[1];

    return v8(v7, v6);
  }
}

uint64_t sub_22FB57F38()
{
  v1 = *(v0 + 88);

  (*(*(v0 + 56) + 8))(*(v0 + 32), *(v0 + 48));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FB57FC8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_22FA2B420(v0 + 136, &unk_27DAD83A0);

  return v0;
}

uint64_t sub_22FB58030()
{
  sub_22FB57FC8();

  return swift_deallocClassInstance();
}

uint64_t sub_22FB58088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FCD1800;
  *(v0 + 32) = sub_22FA3A77C(0, &unk_28147AE60);
  return v0;
}

uint64_t sub_22FB5811C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FB568F8(a2, a3);
}

uint64_t sub_22FB581C4()
{
  v0 = sub_22FCC77B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3C290], v0);
  v4 = sub_22FCC7794();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_22FB582D8()
{
  v1 = *(v0 + 16);
  if (*(v1 + 192) < 1)
  {
    return (*(v0 + 8))(0);
  }

  else
  {
    return (*(v0 + 8))(*(v1 + 216) > 0);
  }
}

uint64_t sub_22FB58310(uint64_t result)
{
  if (result)
  {

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FB583B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FB590CC(&qword_28147BF08, a2, type metadata accessor for MessagesContextualBackdropGenerationTask);
  result = sub_22FB590CC(&qword_27DAD8888, v3, type metadata accessor for MessagesContextualBackdropGenerationTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB5843C(void (**a1)(char *, uint64_t), uint64_t a2)
{
  v90 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v75 - v4;
  v91 = sub_22FCC72B4();
  v87 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v93 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22FCC8494();
  v6 = *(v94 - 8);
  v7 = MEMORY[0x28223BE20](v94);
  v88 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v75 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v75 - v12;
  v14 = sub_22FCC8684();
  v89 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22FCC71B4();
  v18 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v20 = (&v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v95;
  sub_22FCC8464();
  v95 = v21;
  if (v21)
  {
    (*(v6 + 8))(a2, v94);
    return v17;
  }

  v81 = v18;
  v82 = v17;
  v83 = v20;
  v84 = v16;
  v85 = a2;
  v86 = v11;
  v78 = v13;
  v79 = v6;
  if (qword_28147BF38 != -1)
  {
    swift_once();
  }

  v22 = qword_28147BF40;
  sub_22FCC76D4();
  swift_allocObject();
  v23 = v22;
  v80 = sub_22FCC76C4();
  (v81)[13](v83, *MEMORY[0x277D3C0A8], v82);
  v24 = v95;
  v25 = v89;
  v17 = v90;
  v26 = v84;
  if (qword_28147BF10 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v14, qword_28147BF18);
  (*(v25 + 16))(v26, v27, v14);
  sub_22FCC7224();
  swift_allocObject();
  v28 = v17;
  v29 = sub_22FCC71D4();
  v30 = v85;
  sub_22FCC8474();
  v32 = v92;
  v31 = v93;
  if (v24)
  {

    sub_22FCC76B4();

    (*(v79 + 8))(v30, v94);
    return v17;
  }

  v34 = sub_22FCC71F4();
  v35 = [v34 count];

  if (v35 < 1)
  {
    sub_22FCC8484();

    v17 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  sub_22FCC8474();
  v95 = 0;
  v36 = sub_22FCC71F4();
  v37 = [v36 count];

  result = sub_22FCC8454();
  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v84 = v27;
  v89 = v29;
  v39 = v37;
  if (!v37)
  {
LABEL_30:
    v67 = sub_22FCC8664();
    v68 = sub_22FCC8F34();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      *(v69 + 4) = v39;
      _os_log_impl(&dword_22FA28000, v67, v68, "Successfully processed candidates for %ld conversations", v69, 0xCu);
      MEMORY[0x23190A000](v69, -1, -1);
    }

    v70 = v95;
    v71 = sub_22FCC71E4();
    if (v70)
    {

      v17 = *(v79 + 8);
      v72 = v94;
      (v17)(v78, v94);
      sub_22FCC76B4();

      (v17)(v85, v72);
      return v17;
    }

    v17 = v71;
    sub_22FCC8484();
    v73 = v94;

    (*(v79 + 8))(v78, v73);
LABEL_13:
    sub_22FCC76B4();

    return v17;
  }

  v83 = v28;
  v40 = 0;
  v82 = (v87 + 8);
  v77 = (v79 + 32);
  *&v38 = 136315394;
  v76 = v38;
  *&v38 = 136315138;
  v75 = v38;
  v81 = v37;
  while (1)
  {
    v41 = sub_22FCC71F4();
    v42 = [v41 objectAtIndexedSubscript_];

    v43 = [v42 conversationID];
    sub_22FCC8A84();

    v87 = sub_22FCC72E4();
    v45 = v44;

    v46 = v83;
    sub_22FCC7264();
    sub_22FCC7204();
    v90 = v42;
    v47 = sub_22FCC7284();
    sub_22FA2B420(v32, &qword_27DAD8730);
    if ([v47 count] < 1)
    {

      v56 = sub_22FCC8664();
      v57 = sub_22FCC8F04();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v96[0] = v59;
        *v58 = v75;
        v60 = sub_22FA2F600(v87, v45, v96);

        *(v58 + 4) = v60;
        v32 = v92;
        _os_log_impl(&dword_22FA28000, v56, v57, "Conversation %s:\n\tFound 0 candidate assets. Skip!", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x23190A000](v59, -1, -1);
        v61 = v58;
        v31 = v93;
        MEMORY[0x23190A000](v61, -1, -1);
      }

      else
      {
      }

      (*v82)(v31, v91);
      v39 = v81;
      goto LABEL_19;
    }

    v48 = v47;

    v49 = sub_22FCC8664();
    v50 = sub_22FCC8F34();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v96[0] = v52;
      *v51 = v76;
      v53 = sub_22FA2F600(v87, v45, v96);

      *(v51 + 4) = v53;
      *(v51 + 12) = 2048;
      v54 = [v48 count];

      *(v51 + 14) = v54;
      _os_log_impl(&dword_22FA28000, v49, v50, "Conversation %s:\n\tFound %ld candidate assets", v51, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v52);
      v55 = v52;
      v32 = v92;
      MEMORY[0x23190A000](v55, -1, -1);
      MEMORY[0x23190A000](v51, -1, -1);
    }

    else
    {
    }

    v39 = v81;
    sub_22FCC8434();
    v62 = [v48 fetchedObjects];
    v63 = v90;
    if (v62)
    {
      v64 = v62;
      sub_22FA3A77C(0, &qword_28147ADE8);
      sub_22FCC8C44();
    }

    v65 = [v63 conversationID];
    sub_22FCC8A84();

    (*v77)(v88, v86, v94);
    v66 = v95;
    sub_22FCC7214();
    v95 = v66;
    if (v66)
    {
      break;
    }

    v31 = v93;
    (*v82)(v93, v91);

LABEL_19:
    if (v39 == ++v40)
    {
      goto LABEL_30;
    }
  }

  (*v82)(v93, v91);

  v17 = *(v79 + 8);
  v74 = v94;
  (v17)(v78, v94);
  sub_22FCC76B4();

  (v17)(v85, v74);
  return v17;
}

unint64_t sub_22FB59068()
{
  result = qword_27DAD8890;
  if (!qword_27DAD8890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD7448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8890);
  }

  return result;
}

uint64_t sub_22FB590CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22FB59114(uint64_t a1, uint64_t a2, double a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_22FB59178()
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  result = sub_22FCC91C4();
  qword_27DAD8898 = result;
  return result;
}

uint64_t sub_22FB591F0(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_22FB59214, 0, 0);
}

uint64_t sub_22FB59214()
{
  if (qword_27DAD6EE8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 14);
  v2 = *(v0 + 15);
  v3 = *(v0 + 13);
  v4 = qword_27DAD8898;
  sub_22FCC76D4();
  swift_allocObject();
  v5 = v4;
  sub_22FCC76C4();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v1;
  *(v0 + 6) = sub_22FA4ED4C;
  *(v0 + 7) = v6;
  *(v0 + 2) = MEMORY[0x277D85DD0];
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_22FA51A14;
  *(v0 + 5) = &block_descriptor_24;
  v7 = _Block_copy(v0 + 1);
  v8 = objc_opt_self();

  v9 = [v8 progressReporterWithProgressBlock_];
  _Block_release(v7);

  v10 = [objc_allocWithZone(type metadata accessor for CameraStyleableSuggestionGenerator()) init];
  v11 = *(*(v2 + 184) + 112);
  v12 = sub_22FB5990C(v11, v9);

  sub_22FA2E6E4(v2 + 136, (v0 + 4));
  if (*(v0 + 11))
  {
    v13 = *(v0 + 15);
    sub_22FA2D89C(v0 + 4, (v0 + 1));
    v14 = *(v0 + 5);
    v15 = *(v0 + 6);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v14);
    v16 = *(v12 + 16);

    (*(v15 + 16))(v16, *(v13 + 64), *(v13 + 72), v14, v15);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1));
  }

  else
  {

    sub_22FA518B4((v0 + 4));
  }

  sub_22FCC9004();

  sub_22FCC76B4();

  v17 = *(v0 + 1);

  return v17();
}

uint64_t sub_22FB594CC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_22FA518B4(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB595A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FB591F0(a2, a3);
}

uint64_t sub_22FB5964C(uint64_t result)
{
  if (result)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

id sub_22FB596D4(_BYTE *a1, void *a2)
{
  result = sub_22FCC8FF4();
  if (a1)
  {
    result = [a2 isCancelled];
    *a1 = result;
  }

  return result;
}

id sub_22FB59804()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraStyleableSuggestionGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22FB5985C(uint64_t a1)
{
  *(a1 + 8) = sub_22FB598C4(qword_28147BAF0);
  result = sub_22FB598C4(&qword_27DAD88A0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB598C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StylesOnboardingSuggestionGenerationTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FB5990C(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D3BBF0]) init];
  [v4 setDefaultStartAndEndDatesIfNeeded];
  [v4 setIgnoreCollisionsWithExistingSuggestions_];
  [v4 setMaximumNumberOfSuggestions_];
  v5 = [objc_allocWithZone(PHASuggestionController) initWithGraphManager_];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v12[4] = sub_22FB59A94;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22FB59114;
  v12[3] = &block_descriptor_10;
  v7 = _Block_copy(v12);
  v8 = a2;

  v9 = [v5 generateCameraStyleableSuggestionsWithOptions:v4 progress:v7];
  _Block_release(v7);
  v10 = sub_22FCC8C44();

  return v10;
}

uint64_t sub_22FB59AA4()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0);
  v28 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22FCC8F94();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FCC8914();
  v24 = *(v4 - 8);
  v5 = v24;
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for LibraryProcessingActivityTaskSource();
  v13 = sub_22FB5A62C(qword_28147C840, v12, type metadata accessor for LibraryProcessingActivityTaskSource);
  sub_22FCC8904();
  v14 = type metadata accessor for BackgroundSystemTask();
  v15 = swift_allocObject();
  v15[1] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  *(v15 + 57) = 0u;
  v30[3] = v14;
  v30[4] = &off_2844A92C8;
  v30[0] = v15;
  type metadata accessor for Activity();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v17 = v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v16 + 24) = 0xD00000000000002ALL;
  *(v16 + 32) = 0x800000022FCE4C90;
  *(v16 + 40) = v11;
  *(v16 + 48) = v13;
  *(v16 + 56) = 0;
  sub_22FA2D328(v30, v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v23 = sub_22FA5191C();
  v18 = v7;
  v19 = v10;
  v20 = v25;
  (*(v5 + 16))(v18, v10, v25);
  (*(v2 + 104))(v26, *MEMORY[0x277D85268], v27);
  v29 = MEMORY[0x277D84F90];
  sub_22FB5A62C(&qword_28147AEA0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360);
  sub_22FA519B0();
  sub_22FCC9264();
  v21 = sub_22FCC8FC4();
  (*(v24 + 8))(v19, v20);
  __swift_destroy_boxed_opaque_existential_0(v30);
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v21;
  return v16;
}

uint64_t sub_22FB59F48(uint64_t a1, uint64_t a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return MEMORY[0x2822009F8](sub_22FB59F68, v2, 0);
}

uint64_t sub_22FB59F68()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = [objc_allocWithZone(PHAPeopleSuggestionEnrichmentTask) init];
  sub_22FA2E6E4(v2, v0 + 16);

  v4 = sub_22FC3CDC4(v3, v1, v0 + 16);

  v5 = sub_22FAC2350(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_22FAC2350((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = type metadata accessor for LegacyTask();
  *(v0 + 40) = v10;
  v11 = sub_22FB5A62C(&qword_281481AE0, 255, type metadata accessor for LegacyTask);
  *(v0 + 48) = v11;
  *(v0 + 16) = v4;
  v5[2] = v7 + 1;
  sub_22FA2D89C((v0 + 16), &v5[5 * v7 + 4]);
  v12 = [objc_allocWithZone(PHASyndicationTask) init];
  sub_22FA2E6E4(v9, v0 + 16);

  v13 = sub_22FC3CDC4(v12, v8, v0 + 16);

  v15 = v5[2];
  v14 = v5[3];
  if (v15 >= v14 >> 1)
  {
    v5 = sub_22FAC2350((v14 > 1), v15 + 1, 1, v5);
  }

  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  *(v0 + 40) = v10;
  *(v0 + 48) = v11;
  *(v0 + 16) = v13;
  v5[2] = v15 + 1;
  sub_22FA2D89C((v0 + 16), &v5[5 * v15 + 4]);
  v18 = [objc_allocWithZone(PHAExternalAssetsTask) init];
  sub_22FA2E6E4(v16, v0 + 16);

  v19 = sub_22FC3CDC4(v18, v17, v0 + 16);

  v21 = v5[2];
  v20 = v5[3];
  if (v21 >= v20 >> 1)
  {
    v5 = sub_22FAC2350((v20 > 1), v21 + 1, 1, v5);
  }

  v23 = *(v0 + 56);
  v22 = *(v0 + 64);
  *(v0 + 40) = v10;
  *(v0 + 48) = v11;
  *(v0 + 16) = v19;
  v5[2] = v21 + 1;
  sub_22FA2D89C((v0 + 16), &v5[5 * v21 + 4]);
  v24 = [objc_allocWithZone(PHASharedLibrarySuggestionGenerationTask) initWithTaskType_];
  sub_22FA2E6E4(v22, v0 + 16);

  v25 = sub_22FC3CDC4(v24, v23, v0 + 16);

  v27 = v5[2];
  v26 = v5[3];
  if (v27 >= v26 >> 1)
  {
    v5 = sub_22FAC2350((v26 > 1), v27 + 1, 1, v5);
  }

  v29 = *(v0 + 56);
  v28 = *(v0 + 64);
  *(v0 + 40) = v10;
  *(v0 + 48) = v11;
  *(v0 + 16) = v25;
  v5[2] = v27 + 1;
  sub_22FA2D89C((v0 + 16), &v5[5 * v27 + 4]);
  v30 = [objc_allocWithZone(PHASharedLibrarySuggestionGenerationTask) initWithTaskType_];
  sub_22FA2E6E4(v28, v0 + 16);

  v31 = sub_22FC3CDC4(v30, v29, v0 + 16);

  v33 = v5[2];
  v32 = v5[3];
  if (v33 >= v32 >> 1)
  {
    v5 = sub_22FAC2350((v32 > 1), v33 + 1, 1, v5);
  }

  v35 = *(v0 + 56);
  v34 = *(v0 + 64);
  *(v0 + 40) = v10;
  *(v0 + 48) = v11;
  *(v0 + 16) = v31;
  v5[2] = v33 + 1;
  sub_22FA2D89C((v0 + 16), &v5[5 * v33 + 4]);
  v36 = *(v35 + 112);
  sub_22FA2E6E4(v34, v0 + 16);
  v37 = type metadata accessor for LibraryUnderstandingTask();
  v38 = swift_allocObject();

  v39 = sub_22FBA1EE0(v35, v36, v0 + 16, 1, v38);
  v41 = v5[2];
  v40 = v5[3];
  if (v41 >= v40 >> 1)
  {
    v5 = sub_22FAC2350((v40 > 1), v41 + 1, 1, v5);
  }

  v42 = *(v0 + 64);
  *(v0 + 40) = v37;
  *(v0 + 48) = sub_22FB5A62C(&qword_28147EA40, 255, type metadata accessor for LibraryUnderstandingTask);
  *(v0 + 16) = v39;
  v5[2] = v41 + 1;
  sub_22FA2D89C((v0 + 16), &v5[5 * v41 + 4]);
  sub_22FA2E6E4(v42, v0 + 16);
  v43 = type metadata accessor for MessagesContextualBackdropGenerationTask();
  swift_allocObject();

  v45 = sub_22FB564BC(v44, 0, v0 + 16);
  v47 = v5[2];
  v46 = v5[3];
  if (v47 >= v46 >> 1)
  {
    v5 = sub_22FAC2350((v46 > 1), v47 + 1, 1, v5);
  }

  *(v0 + 40) = v43;
  *(v0 + 48) = sub_22FB5A62C(&qword_28147BF00, 255, type metadata accessor for MessagesContextualBackdropGenerationTask);
  *(v0 + 16) = v45;
  v5[2] = v47 + 1;
  sub_22FA2D89C((v0 + 16), &v5[5 * v47 + 4]);
  v48 = *(v0 + 8);

  return v48(v5);
}

uint64_t sub_22FB5A598@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LibraryProcessingActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FB5A5D4(uint64_t a1, uint64_t a2)
{
  result = sub_22FB5A62C(qword_28147C840, a2, type metadata accessor for LibraryProcessingActivityTaskSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB5A62C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_22FB5A674()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  do
  {
    v4 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit(v0 + 4, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
  }

  while (!v6);
  if (qword_281480B00 == -1)
  {
    goto LABEL_6;
  }

LABEL_13:
  swift_once();
LABEL_6:
  v7 = sub_22FCC8684();
  __swift_project_value_buffer(v7, qword_281487F30);

  oslog = sub_22FCC8664();
  v8 = sub_22FCC8F34();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446466;
    v11 = sub_22FA2F600(v2, v1, &v13);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2050;
    *(v9 + 14) = v4;
    _os_log_impl(&dword_22FA28000, oslog, v8, "[%{public}s] increased to %{public}ld instances", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }
}

void sub_22FB5A80C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  do
  {
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
LABEL_14:
      swift_once();
      goto LABEL_7;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit(v0 + 4, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
  }

  while (!v6);
  if (v5 < 1)
  {
    sub_22FCC9384();
    MEMORY[0x231907FA0](0xD00000000000003BLL, 0x800000022FCE4D80);
    MEMORY[0x231907FA0](v2, v1);
    MEMORY[0x231907FA0](0xD000000000000028, 0x800000022FCE4DC0);
    sub_22FCC94D4();
    __break(1u);
    return;
  }

  if (qword_281480B00 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = sub_22FCC8684();
  __swift_project_value_buffer(v7, qword_281487F30);

  oslog = sub_22FCC8664();
  v8 = sub_22FCC8F34();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446466;
    v11 = sub_22FA2F600(v2, v1, &v13);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2050;
    *(v9 + 14) = v4;
    _os_log_impl(&dword_22FA28000, oslog, v8, "[%{public}s] decreased to %{public}ld instances", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22FB5AA58()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_281487F30);
  __swift_project_value_buffer(v0, qword_281487F30);
  return sub_22FCC8674();
}

uint64_t sub_22FB5AADC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FB5AB88()
{
  sub_22FCC9384();
  MEMORY[0x231907FA0](0x2E65646F4ELL, 0xE500000000000000);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_22FCC96E4();
  MEMORY[0x231907FA0](0x206874697720, 0xE600000000000000);
  swift_beginAccess();

  sub_22FCC8C94();

  v1 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v1);

  MEMORY[0x231907FA0](0x6572646C69686320, 0xE90000000000006ELL);
  return 0;
}

uint64_t sub_22FB5ACD4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB5AD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for TaskRecord(0);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v4[18] = swift_task_alloc();
  v8 = sub_22FCC6794();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v4[5] = a3;
  v4[6] = a4;
  v4[22] = __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  (*(*(a3 - 8) + 16))();

  return MEMORY[0x2822009F8](sub_22FB5AF54, 0, 0);
}

uint64_t sub_22FB5AF54()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  (*(v1 + 32))(v2, v1);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
  v5 = (*(v4 + 56))(v3, v4);
  *(v0 + 184) = v5;
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  v6 = (*(v1 + 64))(v2, v1);
  if (v6 <= 0.0 || v6 == -2.0 || v6 == -1.0)
  {
    sub_22FCC8DE4();
    v6 = v9;
  }

  sub_22FCC8DE4();
  *(v0 + 192) = ceil(v6 / v10);

  return MEMORY[0x2822009F8](sub_22FB5B09C, v5, 0);
}

uint64_t sub_22FB5B09C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_22FC35168(v0 + 2, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22FA2B420(v0[14], &qword_27DAD84B8);
    v4 = 1;
  }

  else
  {
    v5 = v0[19];
    v6 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[15];
    sub_22FB11030(v0[14], v8);
    (*(v6 + 32))(v7, v8 + *(v9 + 20), v5);
    v4 = 0;
  }

  (*(v0[20] + 56))(v0[18], v4, 1, v0[19]);

  return MEMORY[0x2822009F8](sub_22FB5B1BC, 0, 0);
}

uint64_t sub_22FB5B1BC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 192);
  if (v4 == 1)
  {

    sub_22FA2B420(v3, &qword_27DAD8730);
    v6 = 100.0 - v5;
  }

  else
  {
    v7 = *(v0 + 168);
    (*(v2 + 32))(v7, v3, v1);
    sub_22FCC6734();
    v9 = v8;
    sub_22FCC8DF4();
    v11 = v10;

    (*(v2 + 8))(v7, v1);
    v6 = fmax(fabs(ceil(v9 / v11)), 1.0) / 24.0 / v5;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v12 = *(v0 + 8);
  v13.n128_f64[0] = v6;

  return v12(v13);
}

uint64_t sub_22FB5B344()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis19TaskProgressChecker_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB5B3E8()
{
  result = sub_22FCC8684();
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

uint64_t sub_22FB5B494()
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  result = sub_22FCC91C4();
  qword_27DAE2998 = result;
  return result;
}

uint64_t sub_22FB5B50C()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAE29A0);
  __swift_project_value_buffer(v0, qword_27DAE29A0);
  if (qword_27DAD6EF8 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAE2998;
  return sub_22FCC8694();
}

uint64_t sub_22FB5B598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22FCC67F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 104) = 0x40F5180000000000;
  *(v3 + 112) = 0xD00000000000002ALL;
  *(v3 + 120) = 0x800000022FCD8650;
  sub_22FCC67E4();
  v10 = sub_22FCC67B4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  *(v3 + 128) = v10;
  *(v3 + 136) = v12;
  *(v3 + 144) = xmmword_22FCD8610;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 1;
  *(v3 + 40) = type metadata accessor for MomentGraphWorker();
  *(v3 + 48) = sub_22FB5C558(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v3 + 16) = a1;
  *(v3 + 56) = [*(*(a1 + 112) + 112) photoLibrary];
  v13 = *(a2 + 16);
  *(v3 + 64) = *a2;
  *(v3 + 80) = v13;
  *(v3 + 96) = *(a2 + 32);
  return v3;
}

id sub_22FB5B744()
{
  v1 = [*(v0 + 56) isSystemPhotoLibrary];
  if ((v1 & 1) == 0)
  {
    if (qword_27DAD6F00 != -1)
    {
      swift_once();
    }

    v2 = sub_22FCC8684();
    __swift_project_value_buffer(v2, qword_27DAE29A0);
    v3 = sub_22FCC8664();
    v4 = sub_22FCC8EF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22FA28000, v3, v4, "Task will not run: Task can only run on system library", v5, 2u);
      MEMORY[0x23190A000](v5, -1, -1);
    }
  }

  if ((PLIsAlchemistAllowed() & 1) == 0)
  {
    if (qword_27DAD6F00 != -1)
    {
      swift_once();
    }

    v6 = sub_22FCC8684();
    __swift_project_value_buffer(v6, qword_27DAE29A0);
    v7 = sub_22FCC8664();
    v8 = sub_22FCC8EF4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22FA28000, v7, v8, "Alchemist has been disabled from settings", v9, 2u);
      MEMORY[0x23190A000](v9, -1, -1);
    }

    v1 = 0;
  }

  v10 = sub_22FCC6DE4();
  v21[3] = v10;
  v21[4] = sub_22FB5C558(qword_28147B080, 255, MEMORY[0x277D3A838]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v10 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A800], v10);
  LOBYTE(v10) = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v21);
  if ((v10 & 1) == 0)
  {
    if (qword_27DAD6F00 != -1)
    {
      swift_once();
    }

    v12 = sub_22FCC8684();
    __swift_project_value_buffer(v12, qword_27DAE29A0);
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8EF4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22FA28000, v13, v14, "Task will not run: FF Photos/GyroWidget is not enabled", v15, 2u);
      MEMORY[0x23190A000](v15, -1, -1);
    }

    v1 = 0;
  }

  if (!PFPosterDeviceSpatialPhotoSupportLevel())
  {
    if (qword_27DAD6F00 != -1)
    {
      swift_once();
    }

    v16 = sub_22FCC8684();
    __swift_project_value_buffer(v16, qword_27DAE29A0);
    v17 = sub_22FCC8664();
    v18 = sub_22FCC8EF4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22FA28000, v17, v18, "Device does not support Spatial3D", v19, 2u);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_22FB5BB18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_22FCC75E4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_22FCC6E84();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_22FCC8494();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB5BCA0, 0, 0);
}

uint64_t sub_22FB5BCA0()
{
  if (qword_27DAD6EF8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[12];
  v14 = v0[11];
  v15 = v0[13];
  v3 = v0[6];
  v4 = v0[4];
  v12 = v0[5];
  v13 = v0[7];
  v5 = qword_27DAE2998;
  sub_22FCC76D4();
  swift_allocObject();
  v6 = v5;
  v0[15] = sub_22FCC76C4();

  sub_22FCC84A4();
  v7 = *(v4 + 56);
  sub_22FCC6E44();
  (*(v3 + 104))(v13, *MEMORY[0x277D3C1C8], v12);
  (*(v2 + 32))(v15, v1, v14);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_22FB5BE68;
  v9 = v0[13];
  v10 = v0[7];

  return MEMORY[0x28219BB50](v10, v9);
}

uint64_t sub_22FB5BE68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_22FB5C16C;
  }

  else
  {
    v7 = sub_22FB5BFDC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FB5BFDC()
{
  if (qword_27DAD6F00 != -1)
  {
    swift_once();
  }

  v1 = sub_22FCC8684();
  __swift_project_value_buffer(v1, qword_27DAE29A0);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8EF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[17];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22FA28000, v2, v3, "Processed %ld suggestions", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  (*(v7 + 8))(v6, v8);
  sub_22FCC76B4();

  v9 = v0[1];

  return v9();
}

uint64_t sub_22FB5C16C()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_22FCC76B4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FB5C228()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_22FA518B4(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB5C2AC()
{
  v1 = *(*v0 + 128);

  return v1;
}

uint64_t sub_22FB5C324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FB5BB18(a2, a3);
}

uint64_t sub_22FB5C3CC(uint64_t result)
{
  if (result)
  {

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FB5C450()
{
  v1 = *(*v0 + 160);

  return v1;
}

uint64_t sub_22FB5C4A8(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 128) == *(*a2 + 128) && *(*a1 + 136) == *(*a2 + 136))
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704();
  }
}

uint64_t sub_22FB5C4D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FB5C558(&qword_27DAD88B0, a2, type metadata accessor for FeaturedPhotosOneUpSpatial3DGenerationTask);
  result = sub_22FB5C558(&qword_27DAD88B8, v3, type metadata accessor for FeaturedPhotosOneUpSpatial3DGenerationTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB5C558(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22FB5C5C8()
{
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000022FCE3700;
  v3 = [*(v1 + 112) description];
  v4 = sub_22FCC8A84();
  v6 = v5;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  v7 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_22FB5C6E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7247746E656D6F6DLL;
  }

  else
  {
    v3 = 0x62694C6F746F6870;
  }

  if (v2)
  {
    v4 = 0xEC00000079726172;
  }

  else
  {
    v4 = 0xEB00000000687061;
  }

  if (*a2)
  {
    v5 = 0x7247746E656D6F6DLL;
  }

  else
  {
    v5 = 0x62694C6F746F6870;
  }

  if (*a2)
  {
    v6 = 0xEB00000000687061;
  }

  else
  {
    v6 = 0xEC00000079726172;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22FCC9704();
  }

  return v8 & 1;
}

uint64_t sub_22FB5C79C()
{
  sub_22FCC9844();
  sub_22FCC8B14();

  return sub_22FCC9894();
}

uint64_t sub_22FB5C830()
{
  sub_22FCC8B14();
}

uint64_t sub_22FB5C8B0()
{
  sub_22FCC9844();
  sub_22FCC8B14();

  return sub_22FCC9894();
}

uint64_t sub_22FB5C940@<X0>(char *a1@<X8>)
{
  v2 = sub_22FCC9554();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_22FB5C9A0(uint64_t *a1@<X8>)
{
  v2 = 0x62694C6F746F6870;
  if (*v1)
  {
    v2 = 0x7247746E656D6F6DLL;
  }

  v3 = 0xEC00000079726172;
  if (*v1)
  {
    v3 = 0xEB00000000687061;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_22FB5CA04()
{
  result = qword_27DAD88C0;
  if (!qword_27DAD88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD88C0);
  }

  return result;
}

uint64_t type metadata accessor for GyroPosterGalleryFastPassActivity()
{
  result = qword_28147CD60;
  if (!qword_28147CD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FB5CAB0(uint64_t a1)
{
  v2[7] = a1;
  v3 = sub_22FCC67F4();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB5CB70, v1, 0);
}

uint64_t sub_22FB5CB70()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22FCD1800;
  v19 = type metadata accessor for GyroPosterSuggestionGenerationTask();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v6 = swift_allocObject();
  *(v6 + 56) = 0x40F5180000000000;
  *(v6 + 64) = 0xD000000000000022;
  *(v6 + 72) = 0x800000022FCE3660;
  sub_22FCC67E4();
  v7 = sub_22FCC67B4();
  v9 = v8;
  (*(v2 + 8))(v1, v4);
  *(v6 + 80) = v7;
  *(v6 + 88) = v9;
  *(v6 + 96) = xmmword_22FCD3720;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  *(v6 + 128) = 1;
  v10 = type metadata accessor for MomentGraphWorker();
  *(v6 + 200) = 0;
  *(v6 + 208) = 0;
  *(v6 + 40) = v10;
  *(v6 + 48) = sub_22FB5CE7C(&qword_281480230, type metadata accessor for MomentGraphWorker);
  *(v6 + 16) = v3;
  v11 = *(v3 + 112);
  v12 = *(v11 + 112);

  v13 = [v12 photoLibrary];
  *(v6 + 176) = v13;
  *(v6 + 224) = 0;
  sub_22FA2E6E4(v0 + 16, v6 + 136);
  *(v6 + 216) = 1;
  v14 = sub_22FAC6A18(v13, *(v11 + 112));
  v16 = v15;
  sub_22FA518B4(v0 + 16);
  *(v6 + 184) = v14;
  *(v6 + 192) = v16;
  *(v5 + 56) = v19;
  *(v5 + 64) = sub_22FB5CE7C(&qword_27DAD84C8, type metadata accessor for GyroPosterSuggestionGenerationTask);
  *(v5 + 32) = v6;

  v17 = *(v0 + 8);

  return v17(v5);
}

uint64_t sub_22FB5CE40@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GyroPosterGalleryFastPassActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FB5CE7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FB5CEC4()
{
  v1 = sub_22FCC6DE4();
  v11[3] = v1;
  v11[4] = sub_22FB5EC0C(qword_28147B080, MEMORY[0x277D3A838]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A818], v1);
  LOBYTE(v1) = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v1)
  {
    v3 = _s13PhotoAnalysis27PromptSuggestionCachingTaskC13isMCAvailable12photoLibrary6logger22libraryProcessingCheckSbSo07PHPhotoJ0C_2os6LoggerVSbtFZ_0(*(v0 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_photoLibrary), v0 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_logger, 0);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    v6 = os_log_type_enabled(v4, v5);
    if (v3)
    {
      if (!v6)
      {
        v8 = 1;
        goto LABEL_13;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22FA28000, v4, v5, "WhimsicalPromptSuggestionTask will run", v7, 2u);
      v8 = 1;
      goto LABEL_10;
    }

    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v9 = "WhimsicalPromptSuggestionTask should not run, MC not available";
      goto LABEL_9;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_13;
  }

  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F34();
  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_11;
  }

  v7 = swift_slowAlloc();
  *v7 = 0;
  v9 = "PhotosFeatureFlags.MemoryCreationWhimsicalPrompt is false, task will not run";
LABEL_9:
  _os_log_impl(&dword_22FA28000, v4, v5, v9, v7, 2u);
  v8 = 0;
LABEL_10:
  MEMORY[0x23190A000](v7, -1, -1);
LABEL_13:

  return v8;
}

uint64_t sub_22FB5D0D8(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8010);
  v3[32] = swift_task_alloc();
  v4 = sub_22FCC84E4();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v5 = sub_22FCC8574();
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v6 = sub_22FCC8684();
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();
  v7 = sub_22FCC8524();
  v3[42] = v7;
  v3[43] = *(v7 - 8);
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB5D2E8, 0, 0);
}

uint64_t sub_22FB5D2E8()
{
  v0[45] = OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_logger;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v1, v2, "Generating Whimsical prompt suggestions", v3, 2u);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v4 = v0[40];
  v31 = v0[39];
  v32 = v0[41];
  v5 = v0[37];
  v33 = v0[36];
  v6 = v0[32];
  v30 = v0[31];
  v8 = v0[29];
  v7 = v0[30];

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_25;
  v10 = _Block_copy(v0 + 2);
  v11 = objc_opt_self();

  v12 = [v11 progressReporterWithProgressBlock_];
  v0[46] = v12;
  _Block_release(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7260);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22FCD17F0;
  sub_22FCC8514();
  sub_22FCC8504();
  v0[28] = v13;
  sub_22FB5EC0C(&qword_28147B000, MEMORY[0x277D3CA90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7268);
  sub_22FA4ED8C();
  sub_22FCC9264();
  (*(v4 + 16))(v32, v30 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_loggerEvents, v31);
  sub_22FCC8564();
  v14 = sub_22FCC8554();
  v0[47] = v14;
  swift_allocObject();
  v15 = sub_22FCC8534();
  v0[48] = v15;
  (*(v5 + 56))(v6, 1, 1, v33);
  sub_22FCC84F4();
  sub_22FA2B420(v6, &qword_27DAD8010);
  sub_22FCC8FF4();
  v0[49] = *(v0[31] + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_persister);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72A8);
  v16 = sub_22FCC74C4();
  v17 = *(v16 - 8);
  v18 = v12;
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FCD1800;
  (*(v17 + 104))(v20 + v19, *MEMORY[0x277D3C140], v16);
  sub_22FCC7E94();
  sub_22FCC7E54();
  sub_22FCC7E84();

  sub_22FCC8FF4();
  v21 = v0[31];
  v22 = [v18 childProgressReporterFromStart:0.1 toEnd:0.5];
  v0[50] = v22;
  v23 = (v21 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_promptProvider);
  v24 = *(v21 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_promptProvider + 24);
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v26 = MEMORY[0x277D3CAA0];
  v0[11] = v14;
  v0[12] = v26;
  v0[8] = v15;
  v27 = *(v25 + 8);

  v34 = (v27 + *v27);
  v28 = swift_task_alloc();
  v0[51] = v28;
  *v28 = v0;
  v28[1] = sub_22FB5D98C;

  return (v34)(v0 + 8, v22, v24, v25);
}

uint64_t sub_22FB5D98C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v4 = sub_22FB5DFAC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 64);
    v4 = sub_22FB5DAA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FB5DAA8()
{

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 416);
  v5 = *(v0 + 400);
  if (v3)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v4 + 16);

    _os_log_impl(&dword_22FA28000, v1, v2, "Generated %ld Whimsical prompt suggestions", v6, 0xCu);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 416);
  v8 = *(v0 + 424);
  sub_22FCC8FF4();
  if (v8)
  {
    v16 = v8;
    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F34();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v8;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_22FA28000, v17, v18, "Failed to persist whimsical suggestions %@", v19, 0xCu);
      sub_22FA2B420(v20, &unk_27DAD7B10);
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v9 = *(v0 + 384);
    v10 = MEMORY[0x277D3CAA0];
    *(v0 + 208) = *(v0 + 376);
    *(v0 + 216) = v10;
    *(v0 + 184) = v9;

    v11 = sub_22FCC7E34();
    __swift_destroy_boxed_opaque_existential_0(v0 + 184);

    v12 = sub_22FCC8664();
    v13 = sub_22FCC8F34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v15 = *(v11 + 16);

      *(v14 + 4) = v15;

      _os_log_impl(&dword_22FA28000, v12, v13, "Persisted %ld Whimsical prompt suggestions", v14, 0xCu);
      MEMORY[0x23190A000](v14, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_22FCC8FF4();
  }

  v23 = *(v0 + 248);
  v24 = *(v7 + 16);

  *(v23 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_recordsInserted) = v24;
  sub_22FA2E6E4(v23 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_taskProductivityReporter, v0 + 144);
  if (*(v0 + 168))
  {
    v25 = *(v0 + 248);
    sub_22FA2D89C((v0 + 144), v0 + 104);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v26);
    (*(v27 + 16))(v24, *(v25 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_name), *(v25 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_name + 8), v26, v27);
    __swift_destroy_boxed_opaque_existential_0(v0 + 104);
  }

  else
  {
    sub_22FA2B420(v0 + 144, &unk_27DAD83A0);
  }

  sub_22FCC9004();
  v28 = *(v0 + 264);
  v29 = (*(v0 + 272) + 8);
  v30 = *(v0 + 368);
  v31 = *(v0 + 280);
  sub_22FCC8544();

  (*v29)(v31, v28);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22FB5DFAC()
{
  v1 = *(v0 + 424);

  __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 424);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to fetch whimsical suggestions %@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  sub_22FCC8FF4();
  v11 = *(v0 + 384);
  v12 = MEMORY[0x277D3CAA0];
  *(v0 + 208) = *(v0 + 376);
  *(v0 + 216) = v12;
  *(v0 + 184) = v11;

  v13 = sub_22FCC7E34();
  __swift_destroy_boxed_opaque_existential_0(v0 + 184);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    v17 = *(v13 + 16);

    *(v16 + 4) = v17;

    _os_log_impl(&dword_22FA28000, v14, v15, "Persisted %ld Whimsical prompt suggestions", v16, 0xCu);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_22FCC8FF4();
  v18 = *(v0 + 248);
  v19 = *(MEMORY[0x277D84F90] + 16);

  *(v18 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_recordsInserted) = v19;
  sub_22FA2E6E4(v18 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_taskProductivityReporter, v0 + 144);
  if (*(v0 + 168))
  {
    v20 = *(v0 + 248);
    sub_22FA2D89C((v0 + 144), v0 + 104);
    v21 = *(v0 + 128);
    v22 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v21);
    (*(v22 + 16))(v19, *(v20 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_name), *(v20 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_name + 8), v21, v22);
    __swift_destroy_boxed_opaque_existential_0(v0 + 104);
  }

  else
  {
    sub_22FA2B420(v0 + 144, &unk_27DAD83A0);
  }

  sub_22FCC9004();
  v23 = *(v0 + 264);
  v24 = (*(v0 + 272) + 8);
  v25 = *(v0 + 368);
  v26 = *(v0 + 280);
  sub_22FCC8544();

  (*v24)(v26, v23);

  v27 = *(v0 + 8);

  return v27();
}

id WhimsicalPromptSuggestionTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WhimsicalPromptSuggestionTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22FB5E734()
{
  v1 = *(*v0 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_name);

  return v1;
}

uint64_t sub_22FB5E774()
{
  v1 = *(*v0 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_identifier);

  return v1;
}

uint64_t sub_22FB5E808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FB5D0D8(a2, a3);
}

void sub_22FB5E900(char a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FB5E9E0()
{
  v1 = *(*v0 + OBJC_IVAR___PHAWhimsicalPromptSuggestionTask_incrementalKey);

  return v1;
}

uint64_t sub_22FB5EA20(uint64_t a1)
{
  *(a1 + 8) = sub_22FB5EC0C(&qword_28147D470, type metadata accessor for WhimsicalPromptSuggestionTask);
  result = sub_22FB5EC0C(&qword_27DAD88C8, type metadata accessor for WhimsicalPromptSuggestionTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for WhimsicalPromptSuggestionTask()
{
  result = qword_28147D478;
  if (!qword_28147D478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FB5EAF8()
{
  result = sub_22FCC8684();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22FB5EC0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PromptSuggestionQUProcessor.__allocating_init(quProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_22FB5FFD0(v7, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t PromptSuggestionQUProcessor.init(quProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_22FB5FFD0(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t PromptSuggestionQUProcessor.processQueryUnderstandingResult(prompt:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TemplatedPrompt();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  sub_22FB26F90(a1, &v34 - v8);
  sub_22FB26F90(a1, v7);
  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v35 = a1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v37 = v4;
    v15 = v14;
    v38 = v14;
    *v13 = 136315395;
    v16 = &v9[*(v37 + 20)];
    v17 = *v16;
    v18 = v16[1];

    sub_22FA72A34(v9);
    v19 = sub_22FA2F600(v17, v18, &v38);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2081;
    v20 = &v7[*(v37 + 24)];
    v21 = *v20;
    v22 = v20[1];

    sub_22FA72A34(v7);
    v23 = sub_22FA2F600(v21, v22, &v38);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_22FA28000, v10, v11, "Updating pre computed QU result for prompt %s - %{private}s", v13, 0x16u);
    swift_arrayDestroy();
    v24 = v15;
    v4 = v37;
    MEMORY[0x23190A000](v24, -1, -1);
    v25 = v13;
    a1 = v35;
    MEMORY[0x23190A000](v25, -1, -1);
  }

  else
  {

    sub_22FA72A34(v7);
    sub_22FA72A34(v9);
  }

  v26 = v2[5];
  v27 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v26);
  v28 = v36;
  v29 = (*(v27 + 8))(*(a1 + *(v4 + 48)), *(a1 + *(v4 + 48) + 8), v26, v27);
  if (!v28)
  {
    v27 = sub_22FB5F128(a1 + *(v4 + 52), v29, v30);
    v32 = v31;

    sub_22FB5F648(v27, v32);
  }

  return v27;
}

uint64_t sub_22FB5F128(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_22FCC7BC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  v70 = a2;
  v71 = a3;
  v12 = OBJC_IVAR____TtC13PhotoAnalysis27PromptSuggestionQUProcessor_logger;
  v13 = *(v9 + 16);
  v66[1] = a1;
  v13(v11, a1, v8);

  v66[2] = v12;
  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v66[0] = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v69[0] = v18;
    *v17 = 136380931;

    v19 = sub_22FA2F600(v67, a3, v69);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2081;
    v20 = sub_22FCC7B64();
    v22 = v21;
    (*(v9 + 8))(v11, v8);
    v23 = sub_22FA2F600(v20, v22, v69);

    *(v17 + 14) = v23;
    _os_log_impl(&dword_22FA28000, v14, v15, "Updating pre computed QU result %{private}s with metadata %{private}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v18, -1, -1);
    MEMORY[0x23190A000](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v24 = sub_22FCC7BA4();
  v26 = v25;
  v27 = sub_22FCC7724();
  v29 = v28;

  v30 = sub_22FB5FBA4(v24, v26, v27, v29, v67, a3);
  v32 = v31;

  swift_beginAccess();
  v70 = v30;
  v71 = v32;

  v33 = sub_22FCC7B84();
  v35 = v34;
  v36 = sub_22FCC7744();
  v38 = v37;

  v39 = sub_22FB5FBA4(v33, v35, v36, v38, v30, v32);
  v41 = v40;

  v70 = v39;
  v71 = v41;

  v42 = sub_22FCC7B74();
  v44 = v43;
  v45 = sub_22FCC7734();
  v47 = v46;

  v48 = sub_22FB5FBA4(v42, v44, v45, v47, v39, v41);
  v50 = v49;

  v70 = v48;
  v71 = v50;

  v51 = sub_22FCC7BB4();
  v53 = v52;
  v54 = sub_22FCC7714();
  v56 = v55;

  v57 = sub_22FB5FBA4(v51, v53, v54, v56, v48, v50);
  v59 = v58;

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRelease_n();
  v60 = sub_22FCC8664();
  v61 = sub_22FCC8F34();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v68 = v63;
    *v62 = 136380675;
    v64 = sub_22FA2F600(v57, v59, &v68);

    *(v62 + 4) = v64;
    _os_log_impl(&dword_22FA28000, v60, v61, "Populated QU result %{private}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x23190A000](v63, -1, -1);
    MEMORY[0x23190A000](v62, -1, -1);
  }

  else
  {
  }

  return v57;
}

void sub_22FB5F648(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v42[4] = *MEMORY[0x277D85DE8];
  v6 = sub_22FCC8AD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13PhotoAnalysis27PromptSuggestionQUProcessor_logger;

  v41[2] = v10;
  v11 = sub_22FCC8664();
  v12 = sub_22FCC8F34();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41[0] = v3;
    v15 = a1;
    v16 = v14;
    v42[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22FA2F600(v15, a2, v42);
    _os_log_impl(&dword_22FA28000, v11, v12, "Attempting to generate QU from hydrated JSON String. %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v17 = v16;
    a1 = v15;
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  sub_22FCC8AC4();
  v18 = sub_22FCC8A94();
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  if (v20 >> 60 == 15)
  {
    v21 = sub_22FCC8664();
    v22 = sub_22FCC8F14();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22FA28000, v21, v22, "Hydrated QU could not be converted to data", v23, 2u);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    sub_22FB601DC();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }

  else
  {
    v25 = a1;
    v26 = objc_opt_self();
    v27 = sub_22FCC6654();
    v42[0] = 0;
    v28 = [v26 JSONObjectWithData:v27 options:0 error:v42];

    if (v28)
    {
      v29 = v42[0];
      sub_22FCC9234();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v42);

      v30 = sub_22FCC8664();
      v31 = sub_22FCC8F34();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v42[0] = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_22FA2F600(v25, a2, v42);
        _os_log_impl(&dword_22FA28000, v30, v31, "Verification successful. Generated QU from hydrated JSON String. %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x23190A000](v33, -1, -1);
        MEMORY[0x23190A000](v32, -1, -1);
      }

      sub_22FADAC14(v18, v20);
    }

    else
    {
      v34 = v42[0];
      v35 = sub_22FCC6514();

      swift_willThrow();

      v36 = sub_22FCC8664();
      v37 = sub_22FCC8F14();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v42[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_22FA2F600(v25, a2, v42);
        _os_log_impl(&dword_22FA28000, v36, v37, "Verification failed. Error converting hydrated QU to valid json object. QU:%s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x23190A000](v39, -1, -1);
        MEMORY[0x23190A000](v38, -1, -1);
      }

      sub_22FB601DC();
      swift_allocError();
      *v40 = 1;
      swift_willThrow();

      sub_22FADAC14(v18, v20);
    }
  }
}

uint64_t sub_22FB5FBA4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  if (!a2)
  {
LABEL_9:

    return v7;
  }

  v23 = a5;
  v24 = a6;
  sub_22FA7FD88();
  v12 = sub_22FCC9224();

  v13 = sub_22FCC8664();
  if ((v12 & 1) == 0)
  {
    v17 = a1;
    v18 = sub_22FCC8F34();

    if (os_log_type_enabled(v13, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_22FA2F600(a3, a4, &v23);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_22FA2F600(v17, a2, &v23);
      _os_log_impl(&dword_22FA28000, v13, v18, "No reference replaced in QU result for %s, %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    goto LABEL_9;
  }

  v14 = sub_22FCC8F04();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v22 = a1;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_22FA2F600(a3, a4, &v23);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_22FA2F600(v22, a2, &v23);
    _os_log_impl(&dword_22FA28000, v13, v14, "Replacing %s with %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v23 = v7;
  v24 = a6;
  return sub_22FCC9214();
}

uint64_t PromptSuggestionQUProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = OBJC_IVAR____TtC13PhotoAnalysis27PromptSuggestionQUProcessor_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PromptSuggestionQUProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = OBJC_IVAR____TtC13PhotoAnalysis27PromptSuggestionQUProcessor_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB5FFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  sub_22FCC8674();
  sub_22FA2CF78(&v9, a2 + 16);
  return a2;
}

uint64_t type metadata accessor for PromptSuggestionQUProcessor()
{
  result = qword_28147DA88;
  if (!qword_28147DA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FB60114()
{
  result = sub_22FCC8684();
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

unint64_t sub_22FB601DC()
{
  result = qword_27DAD8920;
  if (!qword_27DAD8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8920);
  }

  return result;
}

unint64_t sub_22FB60244()
{
  result = qword_27DAD8928;
  if (!qword_27DAD8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8928);
  }

  return result;
}

uint64_t sub_22FB60298(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22FA86F50(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D837D0];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_22FA86F50((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_22FA4EF4C();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_22FA2CF78(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

size_t sub_22FB60394(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = sub_22FCC6794();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v11 = sub_22FCC92C4();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v30 = v10;
  v32 = MEMORY[0x277D84F90];
  result = sub_22FA87018(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = 0;
    v15 = a1;
    v12 = v32;
    v28 = (v31 + 56);
    v29 = a1 & 0xC000000000000001;
    v26 = a1;
    v27 = (v31 + 48);
    v24 = v7;
    v25 = (v31 + 32);
    while (1)
    {
      v16 = v29 ? MEMORY[0x231908810](v14, v15) : *(v15 + 8 * v14 + 32);
      v17 = v16;
      (*v28)(v7, 1, 1, v8);
      sub_22FB61218();
      sub_22FCC9544();
      sub_22FA83914(v7, v5);
      result = (*v27)(v5, 1, v8);
      if (result == 1)
      {
        break;
      }

      sub_22FB61270(v7);
      v18 = *v25;
      v19 = v30;
      v20 = v5;
      (*v25)(v30, v5, v8);
      v32 = v12;
      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22FA87018(v21 > 1, v22 + 1, 1);
        v19 = v30;
        v12 = v32;
      }

      ++v14;
      *(v12 + 16) = v22 + 1;
      v18((v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v22), v19, v8);
      v15 = v26;
      v5 = v20;
      v7 = v24;
      if (v11 == v14)
      {
        return v12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB606A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_22FA871BC(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8320);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22FA871BC((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_22FA4FE00(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_22FB607B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22FCC92C4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_22FA8713C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x231908810](i, a1);
        type metadata accessor for LegacyTask();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7560);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_22FA8713C((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_22FA2CF78(v11, v3 + 40 * v7 + 32);
      }
    }

    else
    {
      v8 = a1 + 32;
      type metadata accessor for LegacyTask();
      do
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7560);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_22FA8713C((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_22FA2CF78(v11, v3 + 40 * v10 + 32);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB609C8()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147F360);
  __swift_project_value_buffer(v0, qword_28147F360);
  return sub_22FCC8674();
}

uint64_t sub_22FB60A50(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_22FB60AD4(a1, a2);
  if (!v3)
  {
    sub_22FB60298(a3);
    v6 = sub_22FCC8AA4();

    return v6;
  }

  return result;
}

uint64_t sub_22FB60AD4(uint64_t a1, unint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_22FCC8A54();
  v7 = sub_22FCC8A54();
  v8 = sub_22FCC8A54();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_22FCC8A84();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (v10 == a1 ? (v14 = v12 == a2) : (v14 = 0), v14 || (sub_22FCC9704() & 1) != 0))
  {

    if (qword_28147F358 != -1)
    {
      swift_once();
    }

    v15 = sub_22FCC8684();
    __swift_project_value_buffer(v15, qword_28147F360);

    v16 = sub_22FCC8664();
    v17 = sub_22FCC8F14();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_22FA2F600(a1, a2, &v27);
      _os_log_impl(&dword_22FA28000, v16, v17, "Localized string not found for key: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23190A000](v19, -1, -1);
      MEMORY[0x23190A000](v18, -1, -1);
    }

    sub_22FB610A4();
    swift_allocError();
    *v20 = a1;
    v20[1] = a2;
    swift_willThrow();
  }

  else
  {
    if (qword_28147F358 != -1)
    {
      swift_once();
    }

    v22 = sub_22FCC8684();
    __swift_project_value_buffer(v22, qword_28147F360);

    v23 = sub_22FCC8664();
    v24 = sub_22FCC8F04();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_22FA2F600(a1, a2, &v27);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_22FA2F600(v10, v12, &v27);
      _os_log_impl(&dword_22FA28000, v23, v24, "Localized string found for key: %s : %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v26, -1, -1);
      MEMORY[0x23190A000](v25, -1, -1);
    }
  }

  return v10;
}

uint64_t static LocalizedStringProvider.localizedString(forKey:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_22FCC8A54();
  v3 = sub_22FCC8A54();
  v4 = sub_22FCC8A54();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_22FCC8A84();
  return v6;
}

uint64_t sub_22FB6101C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_22FB60AD4(a1, a2);
  if (!v3)
  {
    sub_22FB60298(a3);
    v6 = sub_22FCC8AA4();

    return v6;
  }

  return result;
}

unint64_t sub_22FB610A4()
{
  result = qword_28147F378[0];
  if (!qword_28147F378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28147F378);
  }

  return result;
}

unint64_t sub_22FB61218()
{
  result = qword_27DAD8930;
  if (!qword_27DAD8930)
  {
    sub_22FCC6794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8930);
  }

  return result;
}

uint64_t sub_22FB61270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22FB612D8()
{
  result = sub_22FB612FC();
  byte_28148807B = result & 1;
  return result;
}

id sub_22FB612FC()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0xD000000000000014;
  v3 = inited + 32;
  *(inited + 40) = 0x800000022FCE52F0;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_22FA4D330(inited);
  swift_setDeallocating();
  sub_22FB61640(v3);
  v4 = sub_22FCC89C4();

  [v1 registerDefaults_];

  v5 = [v0 standardUserDefaults];
  v6 = sub_22FCC8A54();
  v7 = [v5 BOOLForKey_];

  return v7;
}

void sub_22FB61478()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_22FCC8A54();
  v2 = [v0 BOOLForKey_];

  byte_281488079 = v2;
}

void sub_22FB61508()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = @"PhotoAnalysisGraphBackgroundActivitiesDisabled";
  v2 = [v0 BOOLForKey_];

  byte_28148807A = v2;
}

void sub_22FB6158C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_22FCC8A54();
  v2 = [v0 BOOLForKey_];

  byte_281488078 = v2;
}

uint64_t sub_22FB61640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FB616A8()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0);
  v27 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22FCC8F94();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FCC8914();
  v23 = *(v4 - 8);
  v5 = v23;
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for PhotoLibraryOnBatteryActivitySessionTaskSource();
  v13 = sub_22FB61BF8(qword_281481C00, v12, type metadata accessor for PhotoLibraryOnBatteryActivitySessionTaskSource);
  v14 = type metadata accessor for BackgroundSystemTask();
  v15 = swift_allocObject();
  v15[1] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  *(v15 + 57) = 0u;
  v29[3] = v14;
  v29[4] = &off_2844A92C8;
  v29[0] = v15;
  sub_22FCC88E4();
  type metadata accessor for Activity();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v17 = v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v16 + 24) = 0xD000000000000033;
  *(v16 + 32) = 0x800000022FCE53B0;
  *(v16 + 40) = v11;
  *(v16 + 48) = v13;
  *(v16 + 56) = 2;
  sub_22FA2D328(v29, v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v22 = sub_22FA5191C();
  v18 = v7;
  v19 = v24;
  (*(v5 + 16))(v18, v10, v24);
  (*(v2 + 104))(v25, *MEMORY[0x277D85268], v26);
  v28 = MEMORY[0x277D84F90];
  sub_22FB61BF8(&qword_28147AEA0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360);
  sub_22FA519B0();
  sub_22FCC9264();
  v20 = sub_22FCC8FC4();
  (*(v23 + 8))(v10, v19);
  __swift_destroy_boxed_opaque_existential_0(v29);
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v20;
  return v16;
}

uint64_t sub_22FB61BBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotoLibraryOnBatteryActivitySessionTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FB61BF8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22FB61C40()
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  result = sub_22FCC91C4();
  qword_27DAD8938 = result;
  return result;
}

uint64_t sub_22FB61CB8()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAD8940);
  __swift_project_value_buffer(v0, qword_27DAD8940);
  if (qword_27DAD6F10 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAD8938;
  return sub_22FCC8694();
}

id sub_22FB61D44()
{
  v1 = [*(v0 + 136) isSystemPhotoLibrary];
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_22FCC8A54();
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    if (qword_27DAD6F18 != -1)
    {
      swift_once();
    }

    v5 = sub_22FCC8684();
    __swift_project_value_buffer(v5, qword_27DAD8940);
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F34();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22FA28000, v6, v7, "[WatchWallpaperGenerationTask] Skip paired watch check", v8, 2u);
      MEMORY[0x23190A000](v8, -1, -1);
    }
  }

  else if (v1)
  {
    return [objc_opt_self() hasValidWatchPaired];
  }

  return v1;
}

uint64_t sub_22FB61EC0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FB61EE4, 0, 0);
}

uint64_t sub_22FB61EE4()
{
  if (qword_27DAD6F18 != -1)
  {
    swift_once();
  }

  v1 = sub_22FCC8684();
  __swift_project_value_buffer(v1, qword_27DAD8940);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8EF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "[WatchWallpaperGenerationTask] Starting WatchWallpaperGenerationTask", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  if (qword_27DAD6F10 != -1)
  {
    swift_once();
  }

  v5 = v0[9];
  v6 = v0[8];
  v7 = qword_27DAD8938;
  sub_22FCC76D4();
  swift_allocObject();
  v8 = v7;
  sub_22FCC76C4();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_26;
  v10 = _Block_copy(v0 + 2);
  v11 = objc_opt_self();

  v12 = [v11 progressReporterWithProgressBlock_];
  _Block_release(v10);

  v13 = sub_22FB62290();
  if ([v13 count])
  {
    sub_22FCC8FF4();
    v14 = [v12 childProgressReporterFromStart:0.11 toEnd:0.8];
    sub_22FB62578(v13, v14);
    sub_22FCC76B4();
    sub_22FCC9004();

    v12 = v13;
    v13 = v14;
  }

  else
  {
    v15 = sub_22FCC8664();
    v16 = sub_22FCC8EF4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_22FA28000, v15, v16, "No Ambient Suggestions found", v17, 2u);
      MEMORY[0x23190A000](v17, -1, -1);
    }
  }

  v18 = v0[1];

  return v18();
}

NSObject *sub_22FB62290()
{
  v1 = [*(v0 + 136) librarySpecificFetchOptions];
  [v1 setChunkSizeForFetch:200];
  [v1 setCacheSizeForFetch:200];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22FCD7460;
  sub_22FA3A77C(0, &qword_28147AEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22FCD17F0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_22FA4EF4C();
  *(v3 + 32) = 0x6574617473;
  *(v3 + 40) = 0xE500000000000000;
  v4 = MEMORY[0x277D84CB8];
  *(v3 + 96) = MEMORY[0x277D84C58];
  *(v3 + 104) = v4;
  *(v3 + 72) = 4;
  *(v2 + 32) = sub_22FCC8EE4();
  v5 = objc_opt_self();
  *(v2 + 40) = [v5 predicateForAllAmbientSuggestions];
  v6 = sub_22FCC8C24();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v1 setPredicate:v7];
  v8 = [v5 fetchSuggestionsWithOptions_];
  if (qword_27DAD6F18 != -1)
  {
    swift_once();
  }

  v9 = sub_22FCC8684();
  __swift_project_value_buffer(v9, qword_27DAD8940);
  v10 = v8;
  v11 = sub_22FCC8664();
  v12 = sub_22FCC8EF4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = [v10 count];

    _os_log_impl(&dword_22FA28000, v11, v12, "Found %ld suggestions", v13, 0xCu);
    MEMORY[0x23190A000](v13, -1, -1);
  }

  else
  {

    v11 = v1;
    v1 = v10;
  }

  return v10;
}

void sub_22FB62578(void *a1, void *a2)
{
  v3 = v2;
  v5 = [*(v2 + 136) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22FCD2240;
  *(v6 + 32) = sub_22FCC8A84();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_22FCC8A84();
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_22FCC8A84();
  *(v6 + 72) = v9;
  v10 = sub_22FCC8C24();

  [v5 setFetchPropertySets_];

  type metadata accessor for SuggestionCropResultStatistics();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  v11[2] = MEMORY[0x277D84F90];
  v11[3] = v12;
  v11[4] = v12;
  v11[5] = v12;
  v56 = v5;
  v13 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:a1 options:v5];
  if (v13)
  {
    v14 = v13;
    sub_22FA3A77C(0, &qword_28147ADE8);
    v15 = sub_22FCC89D4();
  }

  else
  {
    v15 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v17 = (v16 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  v19 = (v18 + 16);
  v20 = 1.0 / [a1 count];
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = a1;
  *(v21 + 32) = v3;
  *(v21 + 40) = v16;
  *(v21 + 48) = v11;
  *(v21 + 56) = v18;
  *(v21 + 64) = a2;
  *(v21 + 72) = v20;
  aBlock[4] = sub_22FB63B58;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA862D0;
  aBlock[3] = &block_descriptor_30;
  v22 = _Block_copy(aBlock);
  v23 = a1;

  v24 = a2;

  [v23 enumerateObjectsUsingBlock_];
  _Block_release(v22);
  v25 = objc_opt_self();
  swift_beginAccess();
  sub_22FA3A77C(0, &unk_28147AED0);

  v26 = sub_22FCC8C24();

  LOBYTE(v22) = [v25 setAvailableFeatures:2 forSuggestions:v26];

  if ((v22 & 1) == 0)
  {
    if (qword_27DAD6F18 != -1)
    {
      swift_once();
    }

    v27 = sub_22FCC8684();
    __swift_project_value_buffer(v27, qword_27DAD8940);
    v28 = sub_22FCC8664();
    v29 = sub_22FCC8F14();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v23;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22FA28000, v28, v29, "Failed setting availableFeatures", v31, 2u);
      v32 = v31;
      v23 = v30;
      MEMORY[0x23190A000](v32, -1, -1);
    }
  }

  swift_beginAccess();

  v33 = sub_22FCC8C24();

  v34 = [v25 clearAvailableFeatures:2 forSuggestions:v33];

  if ((v34 & 1) == 0)
  {
    if (qword_27DAD6F18 != -1)
    {
      swift_once();
    }

    v35 = sub_22FCC8684();
    __swift_project_value_buffer(v35, qword_27DAD8940);
    v36 = sub_22FCC8664();
    v37 = sub_22FCC8F14();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v23;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22FA28000, v36, v37, "Failed clearing availableFeatures", v39, 2u);
      v40 = v39;
      v23 = v38;
      MEMORY[0x23190A000](v40, -1, -1);
    }
  }

  v41 = [v23 count];
  if (!(*v17 >> 62))
  {
    v42 = *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = &v41[-v42];
    if (!__OFSUB__(v41, v42))
    {
      goto LABEL_18;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v53 = v41;
  v54 = sub_22FCC92C4();
  v45 = __OFSUB__(v53, v54);
  v43 = &v53[-v54];
  if (v45)
  {
    goto LABEL_31;
  }

LABEL_18:
  if (!(*v19 >> 62))
  {
    v44 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = __OFSUB__(v43, v44);
    v46 = &v43[-v44];
    if (!v45)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_32:
  v55 = sub_22FCC92C4();
  v45 = __OFSUB__(v43, v55);
  v46 = &v43[-v55];
  if (!v45)
  {
LABEL_20:
    if (qword_27DAD6F18 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_21:
  v47 = sub_22FCC8684();
  __swift_project_value_buffer(v47, qword_27DAD8940);

  v48 = sub_22FCC8664();
  v49 = sub_22FCC8EF4();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134218496;
    if (*v17 >> 62)
    {
      v51 = sub_22FCC92C4();
    }

    else
    {
      v51 = *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v50 + 4) = v51;

    *(v50 + 12) = 2048;
    if (*v19 >> 62)
    {
      v52 = sub_22FCC92C4();
    }

    else
    {
      v52 = *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v50 + 14) = v52;

    *(v50 + 22) = 2048;
    *(v50 + 24) = v46;
    _os_log_impl(&dword_22FA28000, v48, v49, "Found %ld watch face eligible suggestions, %ld failed gating, %ld untried", v50, 0x20u);
    MEMORY[0x23190A000](v50, -1, -1);
  }

  else
  {
  }

  sub_22FB63858();
}

void sub_22FB62CF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_23;
  }

  v13 = [a1 uuid];
  if (!v13)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_22FCC8A84();
  v17 = v16;

  if (*(a4 + 16))
  {
    v18 = sub_22FA2DB54(v15, v17);
    v20 = v19;

    if (v20)
    {
      v21 = *(*(a4 + 56) + 8 * v18);
      v22 = sub_22FB64114(v21, a1);
      v25 = v24;
      if (*(v24 + 16))
      {
        v26 = v22;
        v27 = v23;
        swift_beginAccess();
        v28 = a1;
        MEMORY[0x231908070]();
        if (*((*(a7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22FCC8C64();
        }

        sub_22FCC8C84();
        swift_endAccess();
        sub_22FB633C8(v26, v27, v25);
      }

      else
      {

        swift_beginAccess();
        v33 = a1;
        MEMORY[0x231908070]();
        if (*((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22FCC8C64();
        }

        sub_22FCC8C84();
        swift_endAccess();
      }

      sub_22FCC8FF4();

      return;
    }
  }

  else
  {
  }

  if (qword_27DAD6F18 != -1)
  {
    swift_once();
  }

  v29 = sub_22FCC8684();
  __swift_project_value_buffer(v29, qword_27DAD8940);
  v34 = a5;
  oslog = sub_22FCC8664();
  v30 = sub_22FCC8F14();
  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = [v34 count];

    _os_log_impl(&dword_22FA28000, oslog, v30, "Key asset not found for suggestion %ld", v31, 0xCu);
    MEMORY[0x23190A000](v31, -1, -1);
    v32 = oslog;
  }

  else
  {

    v32 = v34;
  }
}

uint64_t sub_22FB63074()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB63118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FB61EC0(a2, a3);
}

uint64_t sub_22FB631C0()
{
  v0 = sub_22FCC77B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3C288], v0);
  v4 = sub_22FCC7794();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_22FB632B0()
{
  v1 = sub_22FB62290();
  v2 = [objc_opt_self() filterSuggestions:v1 includingSingleFeature:2];

  v3 = [v2 count];
  v4 = *(v0 + 8);

  return v4(v3 > 0);
}

uint64_t sub_22FB63364(uint64_t result)
{
  if (result)
  {
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

void sub_22FB633C8(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 0x322u)
  {
    if (a1 == 803)
    {
      swift_beginAccess();
      v33 = v3[4];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v3[4] = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_22FAC2B3C(0, *(v33 + 2) + 1, 1, v33);
        v3[4] = v33;
      }

      v36 = *(v33 + 2);
      v35 = *(v33 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v42 = sub_22FAC2B3C((v35 > 1), v36 + 1, 1, v33);
        v37 = v36 + 1;
        v33 = v42;
      }

      *(v33 + 2) = v37;
      v38 = &v33[24 * v36];
      *(v38 + 16) = 803;
      *(v38 + 5) = a2;
      *(v38 + 6) = a3;
      v3[4] = v33;
      goto LABEL_30;
    }

    if (a1 == 804)
    {
      swift_beginAccess();
      v12 = v3[5];

      v13 = swift_isUniquelyReferenced_nonNull_native();
      v3[5] = v12;
      if ((v13 & 1) == 0)
      {
        v12 = sub_22FAC2B3C(0, *(v12 + 2) + 1, 1, v12);
        v3[5] = v12;
      }

      v15 = *(v12 + 2);
      v14 = *(v12 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v40 = sub_22FAC2B3C((v14 > 1), v15 + 1, 1, v12);
        v16 = v15 + 1;
        v12 = v40;
      }

      *(v12 + 2) = v16;
      v17 = &v12[24 * v15];
      *(v17 + 16) = 804;
      *(v17 + 5) = a2;
      *(v17 + 6) = a3;
      v3[5] = v12;
      goto LABEL_30;
    }
  }

  else
  {
    if (a1 == 801)
    {
      swift_beginAccess();
      v27 = v3[2];

      v28 = swift_isUniquelyReferenced_nonNull_native();
      v3[2] = v27;
      if ((v28 & 1) == 0)
      {
        v27 = sub_22FAC2B3C(0, *(v27 + 2) + 1, 1, v27);
        v3[2] = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v41 = sub_22FAC2B3C((v29 > 1), v30 + 1, 1, v27);
        v31 = v30 + 1;
        v27 = v41;
      }

      *(v27 + 2) = v31;
      v32 = &v27[24 * v30];
      *(v32 + 16) = 801;
      *(v32 + 5) = a2;
      *(v32 + 6) = a3;
      v3[2] = v27;
      goto LABEL_30;
    }

    if (a1 == 802)
    {
      swift_beginAccess();
      v6 = v3[3];

      v7 = swift_isUniquelyReferenced_nonNull_native();
      v3[3] = v6;
      if ((v7 & 1) == 0)
      {
        v6 = sub_22FAC2B3C(0, *(v6 + 2) + 1, 1, v6);
        v3[3] = v6;
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      v10 = v9 + 1;
      if (v9 >= v8 >> 1)
      {
        v39 = sub_22FAC2B3C((v8 > 1), v9 + 1, 1, v6);
        v10 = v9 + 1;
        v6 = v39;
      }

      *(v6 + 2) = v10;
      v11 = &v6[24 * v9];
      *(v11 + 16) = 802;
      *(v11 + 5) = a2;
      *(v11 + 6) = a3;
      v3[3] = v6;
LABEL_30:
      swift_endAccess();
      return;
    }
  }

  if (qword_27DAD6F18 != -1)
  {
    swift_once();
  }

  v18 = sub_22FCC8684();
  __swift_project_value_buffer(v18, qword_27DAD8940);

  oslog = sub_22FCC8664();
  v19 = sub_22FCC8F14();

  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44[0] = v21;
    *v20 = 136315138;
    v22 = PHSuggestionStringWithSubtype();
    v23 = sub_22FCC8A84();
    v25 = v24;

    v26 = sub_22FA2F600(v23, v25, v44);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_22FA28000, oslog, v19, "Unsupported suggestion type: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x23190A000](v21, -1, -1);
    MEMORY[0x23190A000](v20, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_22FB63858()
{
  if (qword_27DAD6F18 != -1)
  {
    swift_once();
  }

  v0 = sub_22FCC8684();
  __swift_project_value_buffer(v0, qword_27DAD8940);
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8EF4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22FA28000, v1, v2, "Watch Wallpaper Generation Statistics:", v3, 2u);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  swift_beginAccess();

  sub_22FB63B90(v4, 0x65727574614ELL, 0xE600000000000000);

  swift_beginAccess();

  sub_22FB63B90(v5, 2037672259, 0xE400000000000000);

  swift_beginAccess();

  sub_22FB63B90(v6, 7628112, 0xE300000000000000);

  swift_beginAccess();

  sub_22FB63B90(v7, 0x656C706F6550, 0xE600000000000000);
}

uint64_t sub_22FB63A24()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FB63AA8(uint64_t a1)
{
  *(a1 + 8) = sub_22FB63B10(&qword_28147D768);
  result = sub_22FB63B10(qword_28147D770);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB63B10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WatchWallpaperGenerationTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22FB63B90(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  v38 = v3;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (!v3)
  {
LABEL_39:
    v24 = v8;
    v25 = v9;
    v26 = v10;
    v27 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FCD2670;
    *(inited + 32) = 0x6F54206C6C616D53;
    *(inited + 40) = 0xE900000000000070;
    *(inited + 48) = v27;
    strcpy((inited + 56), "Small Bottom");
    *(inited + 69) = 0;
    *(inited + 70) = -5120;
    *(inited + 72) = v26;
    *(inited + 80) = 0x54206D756964654DLL;
    *(inited + 88) = 0xEA0000000000706FLL;
    *(inited + 96) = v25;
    strcpy((inited + 104), "Medium Bottom");
    *(inited + 118) = -4864;
    *(inited + 120) = v24;
    *(inited + 128) = 0x654C20656772614CLL;
    *(inited + 136) = 0xEA00000000007466;
    *(inited + 144) = v7;
    *(inited + 152) = 0x695220656772614CLL;
    *(inited + 160) = 0xEB00000000746867;
    *(inited + 168) = v6;
    sub_22FA4CC50(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7198);
    swift_arrayDestroy();
    if (qword_27DAD6F18 != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_40;
  }

  v12 = a1 + 48;
  v13 = qword_27DAD8940;
  while (1)
  {
    v15 = *(v12 - 8);
    v16 = *(*v12 + 16);
    if (!v16)
    {
      goto LABEL_11;
    }

    if (v16 != 1)
    {
      break;
    }

    v14 = __OFADD__(v5++, 1);
    if (v14)
    {
      goto LABEL_44;
    }

LABEL_11:
    if (v15 > 3)
    {
      switch(v15)
      {
        case 4:
          v14 = __OFADD__(v8++, 1);
          if (v14)
          {
            goto LABEL_46;
          }

          break;
        case 5:
          v14 = __OFADD__(v7++, 1);
          if (v14)
          {
            goto LABEL_48;
          }

          break;
        case 6:
          v14 = __OFADD__(v6++, 1);
          if (v14)
          {
            goto LABEL_47;
          }

          break;
        default:
LABEL_27:
          v42 = v11;
          v43 = v10;
          v44 = v9;
          v45 = v8;
          v46 = v7;
          v17 = qword_27DAD6F18;

          if (v17 != -1)
          {
            swift_once();
          }

          v18 = sub_22FCC8684();
          __swift_project_value_buffer(v18, v13);

          v19 = sub_22FCC8664();
          v20 = sub_22FCC8F14();
          if (os_log_type_enabled(v19, v20))
          {
            v41 = v6;
            v21 = v13;
            v22 = swift_slowAlloc();
            *v22 = 134217984;
            *(v22 + 4) = v15;

            _os_log_impl(&dword_22FA28000, v19, v20, "Unsupported PFCTimePosition %lu", v22, 0xCu);
            v23 = v22;
            v13 = v21;
            v6 = v41;
            MEMORY[0x23190A000](v23, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v8 = v45;
          v7 = v46;
          v10 = v43;
          v9 = v44;
          v11 = v42;
          break;
      }
    }

    else
    {
      switch(v15)
      {
        case 1:
          v14 = __OFADD__(v11++, 1);
          if (v14)
          {
            goto LABEL_45;
          }

          break;
        case 2:
          v14 = __OFADD__(v10++, 1);
          if (v14)
          {
            goto LABEL_49;
          }

          break;
        case 3:
          v14 = __OFADD__(v9++, 1);
          if (v14)
          {
            goto LABEL_50;
          }

          break;
        default:
          goto LABEL_27;
      }
    }

    v12 += 24;
    if (!--v3)
    {
      goto LABEL_39;
    }
  }

  v14 = __OFADD__(v4++, 1);
  if (!v14)
  {
    goto LABEL_11;
  }

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
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_40:
  v29 = sub_22FCC8684();
  __swift_project_value_buffer(v29, qword_27DAD8940);

  v30 = sub_22FCC8664();
  v31 = sub_22FCC8F34();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 134219010;
    *(v32 + 4) = v38;

    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_22FA2F600(a2, a3, &v47);
    *(v32 + 22) = 2048;
    *(v32 + 24) = v5;
    *(v32 + 32) = 2048;
    *(v32 + 34) = v4;
    *(v32 + 42) = 2080;
    v34 = sub_22FCC89E4();
    v36 = v35;

    v37 = sub_22FA2F600(v34, v36, &v47);

    *(v32 + 44) = v37;
    _os_log_impl(&dword_22FA28000, v30, v31, "%ld eligible %s suggestions. %ld has 1 time position. %ld has multiple time positions. Preferred positions: %s", v32, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v33, -1, -1);
    MEMORY[0x23190A000](v32, -1, -1);
  }

  else
  {
  }
}

id sub_22FB64114(void *a1, id a2)
{
  [a2 subtype];
  v54 = a1;
  v55 = PFLCCurationScoreForAsset();
  v3 = [v55 positionScores];
  sub_22FA3A77C(0, &qword_28147ADE0);
  sub_22FA3A77C(0, &qword_27DAD8958);
  sub_22FB646E0();
  v4 = sub_22FCC89D4();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = sub_22FCC94B4();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v4 = v5 | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = v4 + 64;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 64);
  }

  v12 = 0;
  v13 = (v7 + 64) >> 6;
  v57 = MEMORY[0x277D84F98];
  v14 = &selRef_setDateStyle_;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!sub_22FCC94C4() || (swift_dynamicCast(), v19 = v60, swift_dynamicCast(), v20 = v60, v14 = &selRef_setDateStyle_, !v19))
      {
LABEL_36:
        sub_22FA37D64();
        v45 = [a2 subtype];
        [v55 preferredPosition];

        return v45;
      }

      goto LABEL_17;
    }

    v15 = v12;
    v16 = v8;
    if (!v8)
    {
      break;
    }

LABEL_13:
    v8 = (v16 - 1) & v16;
    v17 = (v12 << 9) | (8 * __clz(__rbit64(v16)));
    v18 = *(*(v4 + 56) + v17);
    v19 = *(*(v4 + 48) + v17);
    v20 = v18;
    if (!v19)
    {
      goto LABEL_36;
    }

LABEL_17:
    v21 = [v19 v14[323]];
    [v20 cropScore];
    if (v22 > 0.4)
    {
      v23 = v22;
      if (qword_27DAD6F18 != -1)
      {
        swift_once();
      }

      v24 = sub_22FCC8684();
      __swift_project_value_buffer(v24, qword_27DAD8940);
      v51 = v54;
      v25 = sub_22FCC8664();
      v26 = sub_22FCC8EF4();
      v50 = v25;
      if (os_log_type_enabled(v25, v26))
      {
        v49 = v26;
        v27 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v60 = v48;
        *v27 = 136315906;
        v28 = [v51 uuid];

        if (!v28)
        {
          goto LABEL_40;
        }

        v52 = sub_22FCC8A84();
        v47 = v29;

        v53 = sub_22FA2F600(v52, v47, &v60);

        *(v27 + 4) = v53;
        *(v27 + 12) = 2048;
        *(v27 + 14) = v21;
        *(v27 + 22) = 2048;
        *(v27 + 24) = v23;
        *(v27 + 32) = 2048;
        *(v27 + 34) = 0x3FD999999999999ALL;
        _os_log_impl(&dword_22FA28000, v50, v49, "Asset: %s TimePosition: %lu cropScore: %f > minimum %f", v27, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x23190A000](v48, -1, -1);
        MEMORY[0x23190A000](v27, -1, -1);
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v57;
      v31 = sub_22FA6A294(v21);
      v33 = *(v57 + 16);
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_38;
      }

      if (*(v57 + 24) >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v59 = v31;
          v44 = v32;
          sub_22FA71888();
          v32 = v44;
          v31 = v59;
        }
      }

      else
      {
        v58 = v32;
        sub_22FA6E3B4(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_22FA6A294(v21);
        v38 = v37 & 1;
        v32 = v58;
        if ((v58 & 1) != v38)
        {
          goto LABEL_41;
        }
      }

      v39 = v60;
      v57 = v60;
      if (v32)
      {
        v40 = v60[7];
        v41 = *(v40 + 8 * v31);
        *(v40 + 8 * v31) = v20;

        v19 = v41;
      }

      else
      {
        v60[(v31 >> 6) + 8] |= 1 << v31;
        *(v39[6] + 8 * v31) = v21;
        *(v39[7] + 8 * v31) = v20;
        v42 = v39[2];
        v35 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v35)
        {
          goto LABEL_39;
        }

        v39[2] = v43;
      }

      v14 = &selRef_setDateStyle_;
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= v13)
    {
      goto LABEL_36;
    }

    v16 = *(v6 + 8 * v12);
    ++v15;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  type metadata accessor for PFCTimePosition(0);
  result = sub_22FCC9774();
  __break(1u);
  return result;
}

unint64_t sub_22FB646E0()
{
  result = qword_28147ADD8;
  if (!qword_28147ADD8)
  {
    sub_22FA3A77C(255, &qword_28147ADE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147ADD8);
  }

  return result;
}

uint64_t sub_22FB64750@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8980);
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = sub_22FCC9274();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v15 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    *a2 = sub_22FB66178(&v6[v10], v7, *(a1 + 36), 0, a1);
    a2[1] = v11;
    v12 = *(v4 + 48);
    v13 = sub_22FCC77C4();
    (*(*(v13 - 8) + 32))(a2 + v12, &v6[v10], v13);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_22FB64904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22FCC9274();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    result = sub_22FB662DC(result, *(a1 + 36), a1, &v9);
    v5 = v9;
    v7 = v10;
    v8 = v11;
    v6 = v12;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 24) = v8;
  *(a2 + 40) = v6;
  return result;
}

uint64_t sub_22FB649A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8968);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8970);
  v4[12] = swift_task_alloc();
  v5 = sub_22FCC67F4();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8978);
  v4[16] = swift_task_alloc();
  v6 = sub_22FCC6FC4();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_22FCC6FE4();
  v4[20] = v7;
  v4[21] = *(v7 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = sub_22FCC6794();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v9 = sub_22FCC8684();
  v4[28] = v9;
  v4[29] = *(v9 - 8);
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB64CC4, 0, 0);
}

uint64_t sub_22FB64CC4()
{
  v81 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[7];
  v5 = *(*(v0[10] + 176) + 112);
  v0[31] = v5;
  v6 = v5;
  v7 = [v6 photoLibrary];
  v0[32] = v7;
  sub_22FCC8674();
  sub_22FA4FAA4(v4, v3, &qword_27DAD8730);
  v8 = *(v2 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v10 = v0[24];
    v9 = v0[25];
    sub_22FCC6764();
    if (v8(v10, 1, v9) != 1)
    {
      sub_22FA2B420(v0[24], &qword_27DAD8730);
    }
  }

  else
  {
    (*(v0[26] + 32))(v0[27], v0[24], v0[25]);
  }

  v11 = v0[9];
  v12 = sub_22FCC6A14();
  v13 = v6;
  v14 = sub_22FCC6A04();
  v0[33] = v14;
  v80[3] = v12;
  v80[4] = MEMORY[0x277D3B5E8];
  v80[0] = v14;
  sub_22FCC6A54();
  swift_allocObject();

  v0[34] = sub_22FCC6A34();
  if (!v11)
  {
    v79 = v7;
    v25 = v0[16];
    (*(v0[18] + 104))(v0[19], *MEMORY[0x277D3BFF8], v0[17]);
    v26 = sub_22FCC7A54();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
LABEL_31:
    v75 = v0[26];
    v77 = v0[25];
    v52 = v0[22];
    v74 = v0[23];
    v53 = v0[21];
    v54 = v0[15];
    v73 = v0[20];
    v55 = v0[13];
    v56 = v0[14];
    v78 = v0[11];
    sub_22FCC67E4();
    sub_22FCC67B4();
    (*(v56 + 8))(v54, v55);
    sub_22FCC6FD4();
    v0[5] = v73;
    v0[6] = sub_22FB66838(&qword_28147B068, 255, MEMORY[0x277D3C008]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    (*(v53 + 16))(boxed_opaque_existential_1, v52, v73);
    sub_22FCC6A24();
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));
    sub_22FCC6A44();
    v58 = v79;
    sub_22FCC6764();
    (*(v75 + 56))(v74, 0, 1, v77);
    sub_22FCC6A94();
    swift_allocObject();
    v0[35] = sub_22FCC6A84();
    v59 = sub_22FCC6A64();
    sub_22FB64750(v59, v78);

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8980);
    v61 = (*(*(v60 - 8) + 48))(v78, 1, v60);
    v63 = v0[11];
    v62 = v0[12];
    if (v61 == 1)
    {
      sub_22FA2B420(v0[11], &qword_27DAD8968);
      v64 = sub_22FCC77C4();
      (*(*(v64 - 8) + 56))(v62, 1, 1, v64);
    }

    else
    {

      v65 = *(v60 + 48);
      v66 = sub_22FCC77C4();
      v67 = *(v66 - 8);
      (*(v67 + 32))(v62, v63 + v65, v66);
      (*(v67 + 56))(v62, 0, 1, v66);
    }

    v68 = swift_task_alloc();
    v0[36] = v68;
    *v68 = v0;
    v68[1] = sub_22FB65734;
    v69 = v0[22];
    v70 = v0[12];

    return MEMORY[0x28219B9F8](v70, v69, v58);
  }

  v15 = v0[9];
  v16 = objc_opt_self();

  v17 = sub_22FCC8A54();
  v18 = [v16 identifierCodeFromLocalIdentifier_];

  if (v18)
  {
    v79 = v7;
    v19 = [objc_opt_self() fetchTypeForLocalIdentifierCode_];

    if (v19)
    {
      v20 = sub_22FCC8A84();
      v22 = v21;

      v23 = sub_22FCC8A84();
      if (v22)
      {
        if (v23 == v20 && v22 == v24)
        {

LABEL_29:

          v47 = v0[16];
          (*(v0[18] + 104))(v0[19], *MEMORY[0x277D3BFF8], v0[17]);
          v48 = MEMORY[0x277D3C438];
LABEL_30:
          v49 = *v48;
          v50 = sub_22FCC7A54();
          v51 = *(v50 - 8);
          (*(v51 + 104))(v47, v49, v50);
          (*(v51 + 56))(v47, 0, 1, v50);
          goto LABEL_31;
        }

        v46 = sub_22FCC9704();

        if (v46)
        {
          goto LABEL_29;
        }

        if (sub_22FCC8A84() == v20 && v22 == v71)
        {

LABEL_41:

          v47 = v0[16];
          (*(v0[18] + 104))(v0[19], *MEMORY[0x277D3BFF8], v0[17]);
          v48 = MEMORY[0x277D3C468];
          goto LABEL_30;
        }

        v72 = sub_22FCC9704();

        if (v72)
        {
          goto LABEL_41;
        }

        v33 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      sub_22FCC8A84();
      v20 = 0;
    }

    sub_22FCC8A84();

    v22 = 0;
    v33 = 1;
LABEL_16:
    v76 = v13;

    v34 = sub_22FCC8664();
    v35 = sub_22FCC8F14();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v20;
      v39 = v37;
      v80[0] = v37;
      *v36 = 136315138;
      if (v33)
      {
        v40 = 7104878;
      }

      else
      {
        v40 = v38;
      }

      if (v33)
      {
        v22 = 0xE300000000000000;
      }

      v41 = sub_22FA2F600(v40, v22, v80);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_22FA28000, v34, v35, "Invalid collection fetchType: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x23190A000](v39, -1, -1);
      MEMORY[0x23190A000](v36, -1, -1);
    }

    else
    {
    }

    v28 = v0[29];
    v27 = v0[30];
    v30 = v0[28];
    v42 = v0[8];
    sub_22FB667E4();
    swift_allocError();
    *v43 = v42;
    v43[1] = v15;
    swift_willThrow();

    goto LABEL_25;
  }

  v28 = v0[29];
  v27 = v0[30];
  v29 = v13;
  v30 = v0[28];
  v31 = v0[8];
  sub_22FB667E4();
  swift_allocError();
  *v32 = v31;
  v32[1] = v15;
  swift_willThrow();

LABEL_25:
  (*(v28 + 8))(v27, v30);

  v44 = v0[1];

  return v44();
}

uint64_t sub_22FB65734(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 296) = a1;
  *(v4 + 304) = v1;

  sub_22FA2B420(*(v3 + 96), &qword_27DAD8970);
  if (v1)
  {
    v5 = sub_22FB65C78;
  }

  else
  {
    v5 = sub_22FB65880;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB65880()
{
  v42 = v0;
  if (*(v0[37] + 16))
  {

    v1 = sub_22FCC8664();
    v2 = sub_22FCC8F34();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = v0[37];
      v28 = v0[32];
      v4 = v0[29];
      v35 = v0[28];
      v38 = v0[30];
      v5 = v0[21];
      v31 = v0[31];
      v33 = v0[22];
      v29 = v0[20];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v41 = v7;
      *v6 = 136315138;
      v8 = MEMORY[0x2319080B0](v3, MEMORY[0x277D837D0]);
      v10 = sub_22FA2F600(v8, v9, &v41);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_22FA28000, v1, v2, "Persisted suggestions with IDs: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23190A000](v7, -1, -1);
      MEMORY[0x23190A000](v6, -1, -1);

      (*(v5 + 8))(v33, v29);
      (*(v4 + 8))(v38, v35);
    }

    else
    {
      v19 = v0[32];
      v20 = v0[31];
      v21 = v0[29];
      v37 = v0[28];
      v40 = v0[30];
      v22 = v0[21];
      v23 = v0[22];
      v24 = v0[20];

      (*(v22 + 8))(v23, v24);
      (*(v21 + 8))(v40, v37);
    }
  }

  else
  {
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F34();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[32];
    v15 = v0[30];
    v16 = v0[29];
    v39 = v0[28];
    v17 = v0[21];
    v34 = v0[31];
    v36 = v0[22];
    v32 = v0[20];
    if (v13)
    {
      v30 = v0[30];
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22FA28000, v11, v12, "No magic slot suggestions persisted", v18, 2u);
      MEMORY[0x23190A000](v18, -1, -1);

      (*(v17 + 8))(v36, v32);
      (*(v16 + 8))(v30, v39);
    }

    else
    {

      (*(v17 + 8))(v36, v32);
      (*(v16 + 8))(v15, v39);
    }
  }

  v25 = v0[1];
  v26 = v0[37];

  return v25(v26);
}

uint64_t sub_22FB65C78()
{
  v1 = v0[32];
  v2 = v0[31];
  v10 = v0[30];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[20];

  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v10, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_22FB65DCC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_22FA2B420(v0 + 136, &unk_27DAD83A0);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB65E84()
{
  v0 = sub_22FCC6DE4();
  v3[3] = v0;
  v3[4] = sub_22FB66838(qword_28147B080, 255, MEMORY[0x277D3A838]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A830], v0);
  LOBYTE(v0) = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v0 & 1;
}

uint64_t sub_22FB65F4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA2C030;

  return sub_22FB66394();
}

void sub_22FB65FF0(char a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FB660F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FB66838(&qword_28147D448, a2, type metadata accessor for FeaturedCollectionElectionTask);
  result = sub_22FB66838(&qword_27DAD8960, v3, type metadata accessor for FeaturedCollectionElectionTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB66178(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 16 * a2);
    v9 = sub_22FCC77C4();
    (*(*(v9 - 8) + 16))(v6, v7 + *(*(v9 - 8) + 72) * a2, v9);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22FB6624C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    sub_22FA2D328(*(a5 + 56) + 40 * a2, result);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22FB662DC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 56) + 48 * result;
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  v10 = *(v5 + 32);
  LOBYTE(v5) = *(v5 + 40);
  *a4 = v7;
  *(a4 + 8) = v6;
  *(a4 + 16) = v9;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  *(a4 + 40) = v5;

  v11 = v9;
}

uint64_t sub_22FB66394()
{
  *(v1 + 96) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8730);
  *(v1 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB66430, 0, 0);
}

uint64_t sub_22FB66430()
{
  v1 = *(v0 + 104);
  sub_22FCC6764();
  v2 = sub_22FCC6794();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_22FB66518;
  v4 = *(v0 + 104);

  return sub_22FB649A4(v4, 0, 0);
}

uint64_t sub_22FB66518(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  sub_22FA2B420(v4, &qword_27DAD8730);
  if (v1)
  {
    v5 = sub_22FB66780;
  }

  else
  {
    v5 = sub_22FB6665C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FB6665C()
{
  sub_22FA4FAA4(*(v0 + 96) + 136, v0 + 56, &unk_27DAD83A0);
  v1 = *(v0 + 120);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 96);
    sub_22FA2D89C((v0 + 56), v0 + 16);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = *(v1 + 16);

    (*(v4 + 16))(v5, *(v2 + 56), *(v2 + 64), v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {

    sub_22FA2B420(v0 + 56, &unk_27DAD83A0);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22FB66780()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_22FB667E4()
{
  result = qword_27DAD8988;
  if (!qword_27DAD8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8988);
  }

  return result;
}

uint64_t sub_22FB66838(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t CreativePromptTemplate.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8040);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_22FCC9384();
  MEMORY[0x231907FA0](0xD000000000000027, 0x800000022FCE5690);
  MEMORY[0x231907FA0](*v1, v1[1]);
  MEMORY[0x231907FA0](0xD000000000000016, 0x800000022FCE56C0);
  MEMORY[0x231907FA0](v1[2], v1[3]);
  MEMORY[0x231907FA0](0xD000000000000015, 0x800000022FCE56E0);
  if (v0[5])
  {
    v5 = v0[4];
    v6 = v0[5];
  }

  else
  {
    v5 = 4999502;
    v6 = 0xE300000000000000;
  }

  MEMORY[0x231907FA0](v5, v6);

  MEMORY[0x231907FA0](0x656372756F73202CLL, 0xEA0000000000203ALL);
  v7 = type metadata accessor for CreativePromptTemplate(0);
  v21 = *(v0 + v7[11]);
  sub_22FCC94A4();
  MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE5700);
  v21 = *(v0 + v7[10]);
  sub_22FCC94A4();
  MEMORY[0x231907FA0](0xD000000000000010, 0x800000022FCE5720);
  v8 = sub_22FCC89E4();
  MEMORY[0x231907FA0](v8);

  MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE5740);
  sub_22FB66C34(v0 + v7[8], v4);
  v9 = sub_22FCC74A4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    v11 = 4999502;
    sub_22FA2B420(v4, &qword_27DAD8040);
    v12 = 0xE300000000000000;
  }

  else
  {
    v11 = sub_22FCC7484();
    v12 = v13;
    (*(v10 + 8))(v4, v9);
  }

  MEMORY[0x231907FA0](v11, v12);

  MEMORY[0x231907FA0](0xD000000000000015, 0x800000022FCE5760);
  v14 = (v0 + v7[12]);
  v15 = v14[1];
  if (v15)
  {
    v16 = sub_22FB66CA4(*v14, v15);
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
    v16 = 7104878;
  }

  MEMORY[0x231907FA0](v16, v18);

  MEMORY[0x231907FA0](41, 0xE100000000000000);
  return v22;
}

uint64_t sub_22FB66C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FB66CA4(uint64_t a1, uint64_t a2)
{
  sub_22FCC9384();

  v4 = [objc_opt_self() stringForTriggerType_];
  v5 = sub_22FCC8A84();
  v7 = v6;

  MEMORY[0x231907FA0](v5, v7);

  MEMORY[0x231907FA0](0x727574616566202CLL, 0xEC000000203A7365);
  v8 = MEMORY[0x2319080B0](a2, &type metadata for CreativePromptTemplate.ContextualTrigger.ContextualFeature);
  MEMORY[0x231907FA0](v8);

  return 0xD000000000000018;
}

unint64_t sub_22FB66DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22FCC9384();

  v6 = [objc_opt_self() stringForFeatureType_];
  v7 = sub_22FCC8A84();
  v9 = v8;

  MEMORY[0x231907FA0](v7, v9);

  MEMORY[0x231907FA0](0x203A656D616E202CLL, 0xE800000000000000);
  MEMORY[0x231907FA0](a2, a3);
  return 0xD000000000000018;
}

uint64_t sub_22FB66F00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8A80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB6C678();
  sub_22FCC98B4();
  v14 = 0;
  sub_22FCC9654();
  if (!v5)
  {
    v13 = 1;
    sub_22FCC9654();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22FB67094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8A38);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB6C1E8();
  sub_22FCC98B4();
  v13 = 0;
  sub_22FCC9654();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8A20);
    sub_22FB6C360();
    sub_22FCC9694();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22FB67238(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8A50);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB6C30C();
  sub_22FCC98B4();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
  sub_22FB21380(&qword_27DAD8570);
  sub_22FCC9694();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_22FCC9694();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_22FB67420(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD89E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB6BB80();
  sub_22FCC98B4();
  LOBYTE(v10) = 0;
  sub_22FCC9654();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_22FCC9654();
    *&v10 = *(v3 + 32);
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8108);
    sub_22FB6BCC0(&qword_27DAD89E8);
    sub_22FCC9644();
    v10 = *(v3 + 40);
    v11 = *(v3 + 56);
    v12 = 3;
    sub_22FB6BD2C();
    sub_22FCC9644();
    v10 = *(v3 + 64);
    v12 = 4;
    sub_22FB6BD80();
    sub_22FCC9644();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22FB67688()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_22FB676AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_22FCC9704() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FCC9704();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22FB67788(uint64_t a1)
{
  v2 = sub_22FB6C678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FB677C4(uint64_t a1)
{
  v2 = sub_22FB6C678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FB67800@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22FB6AEB8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_22FB67850()
{
  if (*v0)
  {
    return 0x7365727574616566;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_22FB67884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_22FCC9704() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FCC9704();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22FB67960(uint64_t a1)
{
  v2 = sub_22FB6C1E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FB6799C(uint64_t a1)
{
  v2 = sub_22FB6C1E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FB679D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22FB6B09C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_22FB67A28()
{
  if (*v0)
  {
    return 0x7364726F7779656BLL;
  }

  else
  {
    return 0x73646F6F6DLL;
  }
}

uint64_t sub_22FB67A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73646F6F6DLL && a2 == 0xE500000000000000;
  if (v6 || (sub_22FCC9704() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22FCC9704();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_22FB67B38(uint64_t a1)
{
  v2 = sub_22FB6C30C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FB67B74(uint64_t a1)
{
  v2 = sub_22FB6C30C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FB67BB0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22FB6B2D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_22FB67BF8()
{
  v1 = *v0;
  v2 = 0x74706D6F7270;
  v3 = 0x72546C61626F6C67;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6F7250636973756DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617A696C61636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22FB67CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FB6B4F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FB67CE8(uint64_t a1)
{
  v2 = sub_22FB6BB80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FB67D24(uint64_t a1)
{
  v2 = sub_22FB6BB80();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_22FB67D60@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22FB6B6C0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_22FB67DF0(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) != 1)
  {
    sub_22FCC9384();

    MEMORY[0x231907FA0](a1, a2);
  }

  return 0xD000000000000011;
}

uint64_t sub_22FB67EA0()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_281487DA0);
  __swift_project_value_buffer(v0, qword_281487DA0);
  return sub_22FCC8674();
}

uint64_t CreativePromptTemplateCache.__allocating_init(source:localizedStringProvider:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_22FB69C74(a1, v9, v4, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v11;
}

uint64_t CreativePromptTemplateCache.init(source:localizedStringProvider:)(char *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_22FB69C74(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v11;
}

uint64_t sub_22FB68124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8990);
  v4[36] = swift_task_alloc();
  v5 = type metadata accessor for CreativePromptTemplate(0);
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v6 = sub_22FCC84E4();
  v4[41] = v6;
  v4[42] = *(v6 - 8);
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB68288, 0, 0);
}

uint64_t sub_22FB68288()
{
  v12 = v0;
  *(v0 + 352) = OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_logger;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 256);
    v3 = *(v0 + 264);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_22FA2F600(v4, v3, &v11);
    _os_log_impl(&dword_22FA28000, v1, v2, "Retrieving templates for creative suggestions with locale %s.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 272), *(*(v0 + 272) + 24));
  sub_22FCC8414();
  v7 = swift_task_alloc();
  *(v0 + 360) = v7;
  *v7 = v0;
  v7[1] = sub_22FB68454;
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);

  return sub_22FB68F50(v9, v8);
}

uint64_t sub_22FB68454(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 368) = a1;
  *(v3 + 376) = v1;

  if (v1)
  {
    v4 = sub_22FB68A34;
  }

  else
  {
    v4 = sub_22FB68568;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_22FB68568()
{
  v42 = v0;
  v1 = *(v0 + 368);
  v40 = *(v1 + 16);
  if (v40)
  {
    v2 = 0;
    v3 = *(v0 + 304);
    v4 = (v1 + 32);
    v36 = v3;
    v38 = (v3 + 48);
    v39 = (v3 + 56);
    v5 = MEMORY[0x277D84F90];
    v6 = *(v0 + 376);
    while (v2 < *(v1 + 16))
    {
      v7 = *(v0 + 288);
      *(v0 + 16) = *v4;
      v8 = v4[4];
      v10 = v4[1];
      v9 = v4[2];
      *(v0 + 64) = v4[3];
      *(v0 + 80) = v8;
      *(v0 + 32) = v10;
      *(v0 + 48) = v9;
      sub_22FB69D90(v0 + 16, v0 + 96);
      sub_22FB68B1C((v0 + 16), v7);
      if (v6)
      {
        sub_22FB69D90(v0 + 16, v0 + 176);
        v11 = v6;
        v12 = sub_22FCC8664();
        v13 = sub_22FCC8F14();
        sub_22FB69DC8(v0 + 16);

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v37 = v5;
          v15 = v1;
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v41 = v17;
          *v14 = 136315394;
          *(v14 + 4) = sub_22FA2F600(*(v0 + 16), *(v0 + 24), &v41);
          *(v14 + 12) = 2112;
          v18 = v6;
          v19 = _swift_stdlib_bridgeErrorToNSError();
          *(v14 + 14) = v19;
          *v16 = v19;
          _os_log_impl(&dword_22FA28000, v12, v13, "Failed to generate creative prompt template for %s %@", v14, 0x16u);
          sub_22FA2B420(v16, &unk_27DAD7B10);
          v20 = v16;
          v1 = v15;
          v5 = v37;
          MEMORY[0x23190A000](v20, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v17);
          MEMORY[0x23190A000](v17, -1, -1);
          MEMORY[0x23190A000](v14, -1, -1);
        }

        else
        {
        }

        v21 = 1;
      }

      else
      {
        v21 = 0;
      }

      v23 = *(v0 + 288);
      v22 = *(v0 + 296);
      (*v39)(v23, v21, 1, v22);
      sub_22FB69DC8(v0 + 16);
      if ((*v38)(v23, 1, v22) == 1)
      {
        sub_22FA2B420(*(v0 + 288), &qword_27DAD8990);
      }

      else
      {
        v25 = *(v0 + 312);
        v24 = *(v0 + 320);
        sub_22FB69DF8(*(v0 + 288), v24);
        sub_22FB69DF8(v24, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_22FAC2300(0, v5[2] + 1, 1, v5);
        }

        v27 = v5[2];
        v26 = v5[3];
        if (v27 >= v26 >> 1)
        {
          v5 = sub_22FAC2300(v26 > 1, v27 + 1, 1, v5);
        }

        v28 = *(v0 + 312);
        v5[2] = v27 + 1;
        sub_22FB69DF8(v28, v5 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27);
      }

      v6 = 0;
      ++v2;
      v4 += 5;
      if (v40 == v2)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
LABEL_20:

    v29 = sub_22FCC8664();
    v30 = sub_22FCC8F34();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v5[2];

      _os_log_impl(&dword_22FA28000, v29, v30, "Read %ld creative prompt templates.", v31, 0xCu);
      MEMORY[0x23190A000](v31, -1, -1);
    }

    else
    {
    }

    v33 = *(v0 + 336);
    v32 = *(v0 + 344);
    v34 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1(*(v0 + 272), *(*(v0 + 272) + 24));
    sub_22FCC83F4();
    (*(v33 + 8))(v32, v34);

    v35 = *(v0 + 8);

    v35(v5);
  }
}

uint64_t sub_22FB68A34()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  __swift_project_boxed_opaque_existential_1(*(v0 + 272), *(*(v0 + 272) + 24));
  sub_22FCC83F4();
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FB68B1C@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8040);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = *a1;
  v5 = *(a1 + 4);
  v37 = &v33 - v6;
  if (v5)
  {

    v45 = v5;
  }

  else
  {
    sub_22FB6BE28(&v44, v43);
    v45 = sub_22FA4D474(MEMORY[0x277D84F90]);
  }

  v8 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_localizedStringProvider + 24);
  v7 = *(v2 + OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_localizedStringProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_localizedStringProvider), v8);
  v10 = *(a1 + 2);
  v9 = *(a1 + 3);
  v39 = v2;
  v11 = *(v7 + 8);

  v12 = v40;
  v13 = v11(v10, v9, v8, v7);
  if (v12)
  {

    return sub_22FAC6ED8(&v44);
  }

  else
  {
    v15 = v13;
    v16 = v14;
    v17 = v39;
    v18 = v45;
    v19 = *(v45 + 16);
    v20 = sub_22FB6A7E0(*(a1 + 5), *(a1 + 6), *(a1 + 7));
    v36 = v22;
    v43[0] = v15;
    v43[1] = v16;
    v40 = v20;
    v41 = 64;
    v42 = 0xE100000000000000;
    sub_22FA7FD88();
    if (sub_22FCC9224())
    {
      v34 = 0;
      v35 = 0;
    }

    else
    {

      v34 = v16;
      v35 = v15;
    }

    v23 = v37;
    if (*(a1 + 8))
    {

      v18 = v45;
      sub_22FCC7494();
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = sub_22FCC74A4();
    (*(*(v25 - 8) + 56))(v23, v24, 1, v25);
    v26 = *(v17 + 16);
    v27 = v38;
    *v38 = v44;
    v27[2] = v15;
    v27[3] = v16;
    v28 = v34;
    v27[4] = v35;
    v27[5] = v28;
    v27[6] = v18;
    v29 = type metadata accessor for CreativePromptTemplate(0);
    result = sub_22FB6BE84(v23, v27 + v29[8]);
    v30 = (v27 + v29[9]);
    *v30 = 0;
    v30[1] = 0;
    *(v27 + v29[10]) = v19 == 0;
    *(v27 + v29[11]) = v26;
    v31 = (v27 + v29[12]);
    v32 = v36;
    *v31 = v40;
    v31[1] = v32;
  }

  return result;
}

uint64_t static CreativePromptTemplateCache.triggerType(from:)(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = [objc_opt_self() stringForTriggerType_];
  v6 = sub_22FCC8A84();
  v8 = v7;

  if (v6 == a1 && v8 == a2)
  {
    v10 = 0;
LABEL_20:
  }

  else
  {
    v10 = 0;
    while (1)
    {
      v11 = sub_22FCC9704();

      if (v11)
      {
        break;
      }

      if (v10 == 27)
      {
        return 0;
      }

      v12 = [objc_opt_self() stringForTriggerType_];
      v13 = sub_22FCC8A84();
      v15 = v14;

      if (v13 == a1 && v15 == a2)
      {
        goto LABEL_20;
      }
    }
  }

  return v10;
}

uint64_t sub_22FB68F50(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22FCC65F4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB69014, 0, 0);
}

uint64_t sub_22FB69014()
{
  v15 = v0;
  v1 = sub_22FB69628(v0[3], v0[4]);
  v3 = v2;

  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_22FA2F600(v1, v3, &v14);
    _os_log_impl(&dword_22FA28000, v4, v5, "Found LLMQU file %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  sub_22FCC6554();

  v8 = sub_22FCC6614();
  v10 = v9;
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_22FCC6364();
  swift_allocObject();
  sub_22FCC6354();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8A08);
  sub_22FB6C23C(&qword_28147AF58, &qword_27DAD8A08, &unk_22FCD9350, sub_22FB6BEF4);
  sub_22FCC6344();
  sub_22FA7E6C4(v8, v10);

  v11 = v0[2];

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_22FB69628(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (*(v2 + 16) == 1)
  {
    v4 = a2;
  }

  else
  {
    sub_22FCC9384();

    v35 = 0xD000000000000011;
    v36 = 0x800000022FCE5780;
    v4 = a2;
    MEMORY[0x231907FA0](a1, a2);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = sub_22FCC8A54();

  v11 = sub_22FCC8A54();
  v12 = [v9 pathForResource:v10 ofType:v11];

  if (v12)
  {
    goto LABEL_5;
  }

  result = sub_22FACB92C(a1, v4);
  if (!v34)
  {
    v16 = v15;
    v30 = result;
    v32 = v4;
    if (*(v3 + 16) != 1)
    {
      v17 = result;
      sub_22FCC9384();

      v35 = 0xD000000000000011;
      v36 = 0x800000022FCE5780;
      MEMORY[0x231907FA0](v17, v16);
    }

    v18 = [v8 &selRef_contactIdentifiers + 3];
    v19 = sub_22FCC8A54();

    v20 = sub_22FCC8A54();
    v12 = [v18 pathForResource:v19 ofType:v20];

    if (v12)
    {

LABEL_5:
      v13 = sub_22FCC8A84();

      return v13;
    }

    v21 = sub_22FCC8664();
    v22 = sub_22FCC8F34();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315650;
      *(v23 + 4) = sub_22FA2F600(a1, v32, &v35);
      *(v23 + 12) = 2080;
      v37 = *(v3 + 16);
      v25 = sub_22FCC8AE4();
      v27 = sub_22FA2F600(v25, v26, &v35);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2080;
      v28 = sub_22FA2F600(v31, v16, &v35);

      *(v23 + 24) = v28;
      _os_log_impl(&dword_22FA28000, v21, v22, "Did not find LLMQU file for locale %s in %s or its fallback locale %s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v24, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    else
    {
    }

    sub_22FB6BDD4();
    swift_allocError();
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t CreativePromptTemplateCache.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_localizedStringProvider);
  return v0;
}

uint64_t CreativePromptTemplateCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_localizedStringProvider);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB69BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA52F04;

  return sub_22FB68124(a1, a2, a3);
}

uint64_t sub_22FB69C74(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a1;
  v11 = OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_logger;
  if (qword_28147DC70 != -1)
  {
    swift_once();
  }

  v12 = sub_22FCC8684();
  v13 = __swift_project_value_buffer(v12, qword_281487DA0);
  (*(*(v12 - 8) + 16))(a3 + v11, v13, v12);
  *(a3 + 16) = v10;
  sub_22FA2D89C(&v15, a3 + OBJC_IVAR____TtC13PhotoAnalysis27CreativePromptTemplateCache_localizedStringProvider);
  return a3;
}

uint64_t sub_22FB69DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreativePromptTemplate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FB69E5C(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = objc_opt_self();
  v6 = [v5 stringForFeatureType_];
  v7 = sub_22FCC8A84();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {
    v11 = 0;
LABEL_19:
  }

  else
  {
    v11 = 0;
    while (1)
    {
      v12 = sub_22FCC9704();

      if (v12)
      {
        break;
      }

      if (v11 == 40)
      {
        if (qword_28147DC70 != -1)
        {
          swift_once();
        }

        v18 = sub_22FCC8684();
        __swift_project_value_buffer(v18, qword_281487DA0);

        v19 = sub_22FCC8664();
        v20 = sub_22FCC8F14();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v24 = v22;
          *v21 = 136315138;
          *(v21 + 4) = sub_22FA2F600(a1, a2, &v24);
          _os_log_impl(&dword_22FA28000, v19, v20, "Unable to parse string %s into PGFeatureType.", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x23190A000](v22, -1, -1);
          MEMORY[0x23190A000](v21, -1, -1);
        }

        return 0;
      }

      v13 = [v5 stringForFeatureType_];
      v14 = sub_22FCC8A84();
      v16 = v15;

      if (v14 == a1 && v16 == a2)
      {
        goto LABEL_19;
      }
    }
  }

  return v11;
}

unint64_t sub_22FB6A0A8()
{
  result = qword_27DAD8998;
  if (!qword_27DAD8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8998);
  }

  return result;
}

unint64_t sub_22FB6A100()
{
  result = qword_27DAD89A0;
  if (!qword_27DAD89A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD89A0);
  }

  return result;
}

void sub_22FB6A17C()
{
  sub_22FB1CD70(319, &qword_28147AF78);
  if (v0 <= 0x3F)
  {
    sub_22FB6A270();
    if (v1 <= 0x3F)
    {
      sub_22FB6A2CC();
      if (v2 <= 0x3F)
      {
        sub_22FB1CD70(319, &qword_27DAD89C8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FB6A270()
{
  if (!qword_27DAD89B8)
  {
    v0 = sub_22FCC89F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAD89B8);
    }
  }
}

void sub_22FB6A2CC()
{
  if (!qword_27DAD89C0)
  {
    sub_22FCC74A4();
    v0 = sub_22FCC91F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAD89C0);
    }
  }
}

uint64_t dispatch thunk of CreativePromptTemplateCaching.templates(localeIdentifier:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FAA3184;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_22FB6A4AC()
{
  result = sub_22FCC8684();
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

uint64_t dispatch thunk of CreativePromptTemplateCache.templates(localeIdentifier:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22FAA2728;

  return v10(a1, a2, a3);
}

uint64_t get_enum_tag_for_layout_string_13PhotoAnalysis29CreativePromptTemplateDBEntry33_F7BD14228D594397B89C2D5C3C7332F2LLV17ContextualTriggerVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_13PhotoAnalysis29CreativePromptTemplateDBEntry33_F7BD14228D594397B89C2D5C3C7332F2LLV15MusicPropertiesVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_22FB6A734(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FB6A77C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22FB6A7E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [objc_opt_self() stringForTriggerType_];
    v9 = sub_22FCC8A84();
    v11 = v10;

    v12 = v9 == a1;
    v3 = 0;
    v12 = v12 && v11 == a2;
    if (v12)
    {
LABEL_13:
    }

    else
    {
      while (1)
      {
        v13 = sub_22FCC9704();

        if (v13)
        {
          break;
        }

        if (v3 == 27)
        {
          goto LABEL_36;
        }

        v14 = [objc_opt_self() stringForTriggerType_];
        v15 = sub_22FCC8A84();
        v17 = v16;

        if (v15 == a1 && v17 == a2)
        {
          goto LABEL_13;
        }
      }
    }

    v18 = *(a3 + 16);
    if (v18)
    {
      v65 = MEMORY[0x277D84F90];
      sub_22FA872A4(0, v18, 0);
      v19 = 0;
      v20 = v65;
      v58 = v18;
      v59 = a3 + 32;
      while (1)
      {
        v21 = (v59 + 32 * v19);
        v23 = *v21;
        v22 = v21[1];
        v24 = v21[3];
        v25 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v25 = *v21 & 0xFFFFFFFFFFFFLL;
        }

        if (!v25)
        {
          break;
        }

        v60 = v21[2];
        v61 = v20;
        v26 = objc_opt_self();

        v62 = v24;

        v27 = [v26 stringForFeatureType_];
        v28 = sub_22FCC8A84();
        v30 = v29;

        v31 = 0;
        if (v28 == v23 && v30 == v22)
        {
LABEL_27:
        }

        else
        {
          while (1)
          {
            v33 = sub_22FCC9704();

            if (v33)
            {
              break;
            }

            if (v31 == 40)
            {
              if (qword_28147DC70 != -1)
              {
                swift_once();
              }

              v50 = sub_22FCC8684();
              __swift_project_value_buffer(v50, qword_281487DA0);

              v51 = sub_22FCC8664();
              v52 = sub_22FCC8F14();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = swift_slowAlloc();
                v3 = swift_slowAlloc();
                v63 = v3;
                *v53 = 136315138;
                *(v53 + 4) = sub_22FA2F600(v23, v22, &v63);
                _os_log_impl(&dword_22FA28000, v51, v52, "Unable to parse string %s into PGFeatureType.", v53, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v3);
                MEMORY[0x23190A000](v3, -1, -1);
                MEMORY[0x23190A000](v53, -1, -1);
              }

              goto LABEL_47;
            }

            v34 = [v26 stringForFeatureType_];
            v35 = sub_22FCC8A84();
            v37 = v36;

            if (v35 == v23 && v37 == v22)
            {
              goto LABEL_27;
            }
          }
        }

        v20 = v61;
        v38 = HIBYTE(v62) & 0xF;
        v39 = v60;
        if ((v62 & 0x2000000000000000) == 0)
        {
          v38 = v60 & 0xFFFFFFFFFFFFLL;
        }

        if (!v38)
        {
          sub_22FCC9384();

          v63 = 0xD000000000000025;
          v64 = 0x800000022FCE58B0;
          MEMORY[0x231907FA0](v23, v22);
          v54 = 0xD000000000000025;
          v55 = 0x800000022FCE58B0;
          goto LABEL_48;
        }

        v65 = v61;
        v41 = *(v61 + 16);
        v40 = *(v61 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_22FA872A4((v40 > 1), v41 + 1, 1);
          v39 = v60;
          v20 = v65;
        }

        ++v19;
        *(v20 + 16) = v41 + 1;
        v42 = (v20 + 24 * v41);
        v42[4] = v31;
        v42[5] = v39;
        v42[6] = v62;
        if (v19 == v58)
        {
          return v3;
        }
      }

LABEL_47:
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_22FCC9384();

      v63 = 0xD000000000000019;
      v64 = 0x800000022FCE5890;
      MEMORY[0x231907FA0](v23, v22);
      v54 = v63;
      v55 = v64;
LABEL_48:
      sub_22FB6BDD4();
      swift_allocError();
      *v56 = v54;
      *(v56 + 8) = v55;
      *(v56 + 16) = 3;
      swift_willThrow();
    }
  }

  else
  {
LABEL_36:
    if (qword_28147DC70 != -1)
    {
      swift_once();
    }

    v43 = sub_22FCC8684();
    __swift_project_value_buffer(v43, qword_281487DA0);

    v44 = sub_22FCC8664();
    v45 = sub_22FCC8F14();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v63 = v3;
      *v46 = 136315138;
      *(v46 + 4) = sub_22FA2F600(a1, a2, &v63);
      _os_log_impl(&dword_22FA28000, v44, v45, "Unknown creative prompt template trigger type %s.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v3);
      MEMORY[0x23190A000](v3, -1, -1);
      MEMORY[0x23190A000](v46, -1, -1);
    }

    v63 = 0;
    v64 = 0xE000000000000000;
    sub_22FCC9384();

    v63 = 0xD000000000000019;
    v64 = 0x800000022FCE5870;
    MEMORY[0x231907FA0](a1, a2);
    v47 = v63;
    v48 = v64;
    sub_22FB6BDD4();
    swift_allocError();
    *v49 = v47;
    *(v49 + 8) = v48;
    *(v49 + 16) = 3;
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_22FB6AEB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8A78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB6C678();
  sub_22FCC98A4();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_22FCC95B4();
    v10 = 1;
    sub_22FCC95B4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_22FB6B09C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8A18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB6C1E8();
  sub_22FCC98A4();
  if (!v1)
  {
    v9[31] = 0;
    v7 = sub_22FCC95B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8A20);
    v9[30] = 1;
    sub_22FB6C23C(&qword_28147AF60, &qword_27DAD8A20, &unk_22FCD96C0, sub_22FB6C2B8);
    sub_22FCC95F4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_22FB6B2D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8A28);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB6C30C();
  sub_22FCC98A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
  v9 = 0;
  sub_22FB21380(&qword_27DAD8588);
  sub_22FCC95F4();
  v7 = v10;
  v9 = 1;
  sub_22FCC95F4();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_22FB6B4F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_22FCC9704() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEF79654B6E6F6974 || (sub_22FCC9704() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72546C61626F6C67 && a2 == 0xEC00000073746961 || (sub_22FCC9704() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022FCE5900 == a2 || (sub_22FCC9704() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F7250636973756DLL && a2 == 0xEF73656974726570)
  {

    return 4;
  }

  else
  {
    v6 = sub_22FCC9704();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_22FB6B6C0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD89D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB6BB80();
  sub_22FCC98A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v34) = 0;
  v9 = sub_22FCC95B4();
  v28 = v10;
  LOBYTE(v34) = 1;
  v11 = sub_22FCC95B4();
  *(&v27 + 1) = v12;
  *&v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8108);
  LOBYTE(v29) = 2;
  sub_22FB6BCC0(&qword_28147AFB8);
  sub_22FCC95A4();
  v26 = v34;
  LOBYTE(v29) = 3;
  sub_22FB6BC18();
  sub_22FCC95A4();
  v24 = v34;
  v25 = v35;
  v23 = v36;
  v45 = 4;
  sub_22FB6BC6C();
  sub_22FCC95A4();
  (*(v6 + 8))(v8, v5);
  v21 = *(&v44 + 1);
  v22 = v44;
  *&v29 = v9;
  v13 = v28;
  v14 = v27;
  *(&v29 + 1) = v28;
  v30 = v27;
  v15 = *(&v27 + 1);
  v16 = v26;
  *&v31 = v26;
  *(&v31 + 1) = v24;
  *&v32 = v25;
  v17 = v23;
  *(&v32 + 1) = v23;
  v33 = v44;
  sub_22FB69D90(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34 = v9;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v24;
  v40 = v25;
  v41 = v17;
  v42 = v22;
  v43 = v21;
  result = sub_22FB69DC8(&v34);
  v19 = v32;
  a2[2] = v31;
  a2[3] = v19;
  a2[4] = v33;
  v20 = v30;
  *a2 = v29;
  a2[1] = v20;
  return result;
}

unint64_t sub_22FB6BB80()
{
  result = qword_28147D670;
  if (!qword_28147D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D670);
  }

  return result;
}

uint64_t sub_22FB6BBD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_22FB6BC18()
{
  result = qword_28147D620;
  if (!qword_28147D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D620);
  }

  return result;
}

unint64_t sub_22FB6BC6C()
{
  result = qword_27DAD89D8;
  if (!qword_27DAD89D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD89D8);
  }

  return result;
}

uint64_t sub_22FB6BCC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD8108);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22FB6BD2C()
{
  result = qword_27DAD89F0;
  if (!qword_27DAD89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD89F0);
  }

  return result;
}

unint64_t sub_22FB6BD80()
{
  result = qword_27DAD89F8;
  if (!qword_27DAD89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD89F8);
  }

  return result;
}

unint64_t sub_22FB6BDD4()
{
  result = qword_27DAD8A00;
  if (!qword_27DAD8A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8A00);
  }

  return result;
}

uint64_t sub_22FB6BE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FB6BEF4()
{
  result = qword_28147D618;
  if (!qword_28147D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D618);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13PhotoAnalysis27CreativePromptTemplateCacheC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_22FB6BF64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FB6BFAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_22FB6BFF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22FB6C048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FB6C090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22FB6C0E4()
{
  result = qword_27DAD8A10;
  if (!qword_27DAD8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8A10);
  }

  return result;
}

unint64_t sub_22FB6C13C()
{
  result = qword_28147D660;
  if (!qword_28147D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D660);
  }

  return result;
}

unint64_t sub_22FB6C194()
{
  result = qword_28147D668;
  if (!qword_28147D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D668);
  }

  return result;
}

unint64_t sub_22FB6C1E8()
{
  result = qword_28147D638;
  if (!qword_28147D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D638);
  }

  return result;
}

uint64_t sub_22FB6C23C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22FB6C2B8()
{
  result = qword_28147D640;
  if (!qword_28147D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D640);
  }

  return result;
}

unint64_t sub_22FB6C30C()
{
  result = qword_27DAD8A30;
  if (!qword_27DAD8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8A30);
  }

  return result;
}

unint64_t sub_22FB6C360()
{
  result = qword_27DAD8A40;
  if (!qword_27DAD8A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAD8A20);
    sub_22FB6C3E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8A40);
  }

  return result;
}

unint64_t sub_22FB6C3E4()
{
  result = qword_27DAD8A48;
  if (!qword_27DAD8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8A48);
  }

  return result;
}

unint64_t sub_22FB6C46C()
{
  result = qword_27DAD8A58;
  if (!qword_27DAD8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8A58);
  }

  return result;
}

unint64_t sub_22FB6C4C4()
{
  result = qword_27DAD8A60;
  if (!qword_27DAD8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8A60);
  }

  return result;
}

unint64_t sub_22FB6C51C()
{
  result = qword_27DAD8A68;
  if (!qword_27DAD8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8A68);
  }

  return result;
}

unint64_t sub_22FB6C574()
{
  result = qword_27DAD8A70;
  if (!qword_27DAD8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8A70);
  }

  return result;
}

unint64_t sub_22FB6C5CC()
{
  result = qword_28147D628;
  if (!qword_28147D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D628);
  }

  return result;
}

unint64_t sub_22FB6C624()
{
  result = qword_28147D630;
  if (!qword_28147D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D630);
  }

  return result;
}

unint64_t sub_22FB6C678()
{
  result = qword_28147D658;
  if (!qword_28147D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D658);
  }

  return result;
}

unint64_t sub_22FB6C6E0()
{
  result = qword_27DAD8A88;
  if (!qword_27DAD8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8A88);
  }

  return result;
}

unint64_t sub_22FB6C738()
{
  result = qword_28147D648;
  if (!qword_28147D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147D648);
  }

  return result;
}