uint64_t sub_1C733EC48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C733ECB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for Hastings.FeatureProvider()
{
  result = qword_1EC21AC08;
  if (!qword_1EC21AC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C733ED5C()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StoryGenerationSession(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_33()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1C733EF30()
{
  result = [objc_opt_self() promptValidationAssetCountThreshold];
  qword_1EC21AC28 = result;
  return result;
}

uint64_t static PromptSuggestionPersister.maxAssetsToPersist.getter()
{
  if (qword_1EC214020 != -1)
  {
    swift_once();
  }

  return qword_1EC21AC28;
}

uint64_t static PromptSuggestionPersister.supportedSources.getter()
{
  if (qword_1EDD091D8 != -1)
  {
    OUTLINED_FUNCTION_0_143();
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t PromptSuggestionPersister.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t PromptSuggestionPersister.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PromptSuggestionPersister.init(photoLibrary:)(a1);
  return v2;
}

uint64_t PromptSuggestionPersister.init(photoLibrary:)(uint64_t a1)
{
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  v10 = sub_1C755146C();
  *(v1 + 16) = a1;
  *(v1 + 24) = v10;
  v11 = v10;
  sub_1C754FF2C();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger, v9, v3);
  return v1;
}

void PromptSuggestionPersister.persistValidatedPromptSuggestions(_:eventRecorder:)(uint64_t a1, void *a2)
{
  v4 = v3;
  v39 = *v2;
  v7 = type metadata accessor for PromptSuggestion(0);
  v8 = OUTLINED_FUNCTION_18(v7);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v36 = v15;
  v37 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  v18 = v17 - v16;
  v38 = a2;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v35 = v18;
  sub_1C754F1CC();
  sub_1C75504FC();
  v42 = v2;
  v19 = sub_1C754FEEC();
  v20 = sub_1C75511BC();
  v21 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_13_3();
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1C6F5C000, v19, v20, "Persisting %ld validated prompt suggestions", v23, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27_1();
  v40 = swift_allocObject();
  *(v40 + 16) = MEMORY[0x1E69E7CC8];
  v24 = static PromptSuggestionPersister.uniqueSupportedPromptSuggestions(from:)(a1);
  v25 = sub_1C754FEEC();
  v26 = sub_1C75511BC();
  v27 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_13_3();
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(v24 + 16);
    _os_log_impl(&dword_1C6F5C000, v25, v26, "Persisting %ld allowed prompt suggestions", v29, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v30 = sub_1C733F9D0(v24);
  OUTLINED_FUNCTION_27_1();
  v31 = swift_allocObject();
  v32 = 0;
  *(v31 + 16) = MEMORY[0x1E69E7CC0];
  v33 = *(v24 + 16);
  while (1)
  {
    if (v33 == v32)
    {

      swift_beginAccess();
      sub_1C75504FC();

      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_1C754F1AC();
      (*(v36 + 8))(v35, v37);
      return;
    }

    if (v32 >= *(v24 + 16))
    {
      break;
    }

    sub_1C71592A8(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v32, v13);
    v34 = objc_autoreleasePoolPush();
    sub_1C733FC8C(v42, v13, v30, v40, v31, v39, v41);
    if (v4)
    {
      sub_1C715930C(v13);

      objc_autoreleasePoolPop(v34);

      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_1C754F1AC();
      (*(v36 + 8))(v35, v37);
      return;
    }

    v4 = 0;
    ++v32;
    sub_1C715930C(v13);
    objc_autoreleasePoolPop(v34);
  }

  __break(1u);
}

uint64_t static PromptSuggestionPersister.uniqueSupportedPromptSuggestions(from:)(uint64_t a1)
{
  v2 = type metadata accessor for PromptSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - v6;
  v45 = MEMORY[0x1E69E7CD0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = 0;
    v40 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v43 = a1 + v40;
    v42 = MEMORY[0x1E69E7CC0];
    v10 = *(v5 + 72);
    do
    {
      sub_1C71592A8(v43 + v10 * v9, v7);
      if (qword_1EDD091D8 != -1)
      {
        OUTLINED_FUNCTION_0_143();
        swift_once();
      }

      v11 = off_1EDD091E0;
      if (*(off_1EDD091E0 + 2))
      {
        v12 = v7[16];
        sub_1C7551F3C();
        MEMORY[0x1CCA5E460](v12);
        v13 = sub_1C7551FAC();
        v14 = ~(-1 << v11[32]);
        while (1)
        {
          v15 = v13 & v14;
          if (((*&v11[(((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v13 & v14)) & 1) == 0)
          {
            break;
          }

          v13 = v15 + 1;
          if (*(*(v11 + 6) + v15) == v12)
          {
            v16 = v45;
            v17 = *(v7 + 13);
            v18 = *(v7 + 14);
            if (*(v45 + 16))
            {
              sub_1C7551F3C();
              sub_1C75505AC();
              v19 = sub_1C7551FAC();
              v20 = ~(-1 << *(v16 + 32));
              while (1)
              {
                v21 = v19 & v20;
                if (((*(v16 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
                {
                  break;
                }

                v22 = (*(v16 + 48) + 16 * v21);
                if (*v22 != v17 || v22[1] != v18)
                {
                  v24 = sub_1C7551DBC();
                  v19 = v21 + 1;
                  if ((v24 & 1) == 0)
                  {
                    continue;
                  }
                }

                goto LABEL_23;
              }
            }

            sub_1C71592A8(v7, v41);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v25 = v42;
            }

            else
            {
              v28 = OUTLINED_FUNCTION_24_0();
              sub_1C6FB3648(v28, v29, v30, v31);
              v25 = v32;
            }

            v27 = *(v25 + 16);
            v26 = *(v25 + 24);
            if (v27 >= v26 >> 1)
            {
              v33 = OUTLINED_FUNCTION_15_2(v26);
              sub_1C6FB3648(v33, v34, v35, v36);
              v25 = v37;
            }

            *(v25 + 16) = v27 + 1;
            v42 = v25;
            sub_1C7159368(v41, v25 + v40 + v27 * v10);
            sub_1C75504FC();
            sub_1C70F082C(v44, v17, v18);

            break;
          }
        }
      }

LABEL_23:
      sub_1C715930C(v7);
      ++v9;
    }

    while (v9 != v8);
    v38 = v42;
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  return v38;
}

uint64_t sub_1C733F9D0(uint64_t a1)
{
  v3 = type metadata accessor for PromptSuggestion(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v26 = v1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v8 = v28;
    v9 = *(v4 + 80);
    v25 = a1;
    v10 = a1 + ((v9 + 32) & ~v9);
    v11 = *(v4 + 72);
    v27 = v7;
    v12 = v7;
    do
    {
      sub_1C71592A8(v10, v6);
      v13 = *(v6 + 13);
      v14 = *(v6 + 14);
      sub_1C75504FC();
      sub_1C715930C(v6);
      v28 = v8;
      v15 = *(v8 + 16);
      if (v15 >= *(v8 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v8 = v28;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;
      v10 += v11;
      --v12;
    }

    while (v12);
    v1 = v26;
    v7 = v27;
  }

  v17 = *(v1 + 16);
  if (qword_1EDD091D8 != -1)
  {
    swift_once();
  }

  v18 = sub_1C75504FC();
  v19 = sub_1C71CDCE0(v18);
  v20 = static PromptSuggestionReader.phSuggestionByPromptText(_:in:sources:)(v8, v17, v19);

  sub_1C75504FC();
  sub_1C75504FC();
  v21 = sub_1C754FEEC();
  v22 = sub_1C75511BC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = *(v20 + 16);

    *(v23 + 12) = 2048;
    *(v23 + 14) = v7;

    _os_log_impl(&dword_1C6F5C000, v21, v22, "Found %ld PHSuggestions for %ld PromptSuggestions", v23, 0x16u);
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
  }

  else
  {
  }

  return v20;
}

void sub_1C733FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v80 = a5;
  v81 = a7;
  v8 = v7;
  v79 = a4;
  v89 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for PromptSuggestion(0);
  v77 = *(v12 - 8);
  v13 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v19 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  sub_1C71592A8(a2, &v72 - v17);
  v75 = v19;
  v20 = sub_1C754FEEC();
  v21 = sub_1C75511BC();
  v22 = os_log_type_enabled(v20, v21);
  v82 = v7;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v73 = a3;
    v25 = v24;
    aBlock = v24;
    *v23 = 136315138;
    PromptSuggestion.description.getter();
    v27 = v26;
    v74 = a2;
    v28 = v13;
    v29 = a1;
    v31 = v30;
    sub_1C715930C(v18);
    v32 = sub_1C6F765A4(v27, v31, &aBlock);
    a1 = v29;
    v13 = v28;
    a2 = v74;

    *(v23 + 4) = v32;
    _os_log_impl(&dword_1C6F5C000, v20, v21, "Persisting suggestion %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v33 = v25;
    a3 = v73;
    MEMORY[0x1CCA5F8E0](v33, -1, -1);
    v34 = v23;
    v8 = v82;
    MEMORY[0x1CCA5F8E0](v34, -1, -1);
  }

  else
  {

    sub_1C715930C(v18);
  }

  v35 = sub_1C6FE376C(*(a2 + 104), *(a2 + 112), a3);
  v36 = v35;
  if (!v35 || [v35 state] != 3)
  {
    if (*(a2 + 56) == 1)
    {
      if (qword_1EC214020 != -1)
      {
        swift_once();
      }

      v49 = a1;
      sub_1C7340384(a2, qword_1EC21AC28);
      v51 = v8;
      if (v8)
      {
LABEL_18:

        *v81 = v51;
        return;
      }

      v52 = v50;
      v76 = v36;
      v82 = 0;
    }

    else
    {
      v76 = v36;
      v49 = a1;
      v52 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    }

    v75 = *(v49 + 16);
    v53 = v78;
    sub_1C71592A8(a2, v78);
    v54 = (*(v77 + 80) + 24) & ~*(v77 + 80);
    v55 = (v13 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 16) = v49;
    sub_1C7159368(v53, v58 + v54);
    *(v58 + v55) = v52;
    v59 = v80;
    *(v58 + v56) = v79;
    v60 = v76;
    *(v58 + v57) = v76;
    *(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)) = v59;
    v61 = v59;
    v87 = sub_1C7343F70;
    v88 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v84 = 1107296256;
    v85 = sub_1C6FD8F68;
    v86 = &block_descriptor_30_1;
    v62 = _Block_copy(&aBlock);
    v63 = v60;
    v36 = v52;

    aBlock = 0;
    v64 = v75;
    LODWORD(v54) = [v75 performChangesAndWait:v62 error:&aBlock];
    _Block_release(v62);
    v65 = aBlock;
    if (v54)
    {
      v66 = swift_allocObject();
      *(v66 + 16) = v61;
      *(v66 + 24) = v49;
      v87 = sub_1C7344010;
      v88 = v66;
      aBlock = MEMORY[0x1E69E9820];
      v84 = 1107296256;
      v85 = sub_1C6FD8F68;
      v86 = &block_descriptor_36;
      v67 = _Block_copy(&aBlock);

      v68 = v65;

      aBlock = 0;
      v69 = [v64 performChangesAndWait:v67 error:&aBlock];
      _Block_release(v67);
      v65 = aBlock;
      if (v69)
      {
        v70 = aBlock;

        return;
      }
    }

    v71 = v65;
    v51 = sub_1C754DBEC();

    swift_willThrow();
    goto LABEL_18;
  }

  v37 = v76;
  sub_1C71592A8(a2, v76);
  v38 = v36;
  v39 = sub_1C754FEEC();
  v40 = sub_1C75511BC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    aBlock = v81;
    *v41 = 136315394;
    v43 = PromptSuggestion.shortDescription.getter();
    v45 = v44;
    sub_1C715930C(v37);
    v46 = sub_1C6F765A4(v43, v45, &aBlock);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v38;
    *v42 = v36;
    v47 = v38;
    _os_log_impl(&dword_1C6F5C000, v39, v40, "Skip persisting %s. A matching PHSuggestion %@ is used by user", v41, 0x16u);
    sub_1C6FC15D8(v42);
    MEMORY[0x1CCA5F8E0](v42, -1, -1);
    v48 = v81;
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x1CCA5F8E0](v48, -1, -1);
    MEMORY[0x1CCA5F8E0](v41, -1, -1);
  }

  else
  {

    sub_1C715930C(v37);
  }
}

void sub_1C7340384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_autoreleasePoolPush();
  sub_1C734302C(&v8, v3, a1, a2, &v7);
  objc_autoreleasePoolPop(v6);
}

void sub_1C7340414(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = PromptSuggestionPersister.suggestionCreationRequest(for:assets:)(a2, a3);
  if (v14)
  {
    v15 = v14;
    v45 = a4;
    sub_1C71592A8(a2, v13);
    v16 = sub_1C754FEEC();
    v17 = sub_1C75511BC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v44 = v15;
      v19 = v18;
      v20 = swift_slowAlloc();
      v42 = a5;
      v43 = a6;
      v21 = v20;
      v47[0] = v20;
      *v19 = 136315138;
      v22 = PromptSuggestion.shortDescription.getter();
      v24 = v23;
      sub_1C715930C(v13);
      v25 = sub_1C6F765A4(v22, v24, v47);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Persisted suggestion for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v26 = v21;
      a5 = v42;
      a6 = v43;
      MEMORY[0x1CCA5F8E0](v26, -1, -1);
      v27 = v19;
      v15 = v44;
      MEMORY[0x1CCA5F8E0](v27, -1, -1);
    }

    else
    {

      sub_1C715930C(v13);
    }

    v28 = [v15 placeholderForCreatedSuggestion];
    if (v28 && (sub_1C6FCA214(v28), v29))
    {
      v30 = v45;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v30 + 16);
      sub_1C6FC9608();
      *(v30 + 16) = v46;
      swift_endAccess();
      if (!a5)
      {
LABEL_14:

        return;
      }

      swift_beginAccess();
      v31 = a5;
      MEMORY[0x1CCA5D040]();
      sub_1C6FB6328(*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C7550BEC();
      swift_endAccess();
      v32 = v31;
      v33 = sub_1C754FEEC();
      v34 = sub_1C75511BC();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = a5;
        v38 = v36;
        *v35 = 138412290;
        *(v35 + 4) = v32;
        *v36 = v37;
        v39 = v32;
        _os_log_impl(&dword_1C6F5C000, v33, v34, "Deleted old suggestion %@.", v35, 0xCu);
        sub_1C6FC15D8(v38);
        MEMORY[0x1CCA5F8E0](v38, -1, -1);
        MEMORY[0x1CCA5F8E0](v35, -1, -1);

        v33 = v15;
        v15 = v39;
      }

      else
      {
      }
    }

    else
    {
      v33 = sub_1C754FEEC();
      v40 = sub_1C755119C();
      if (os_log_type_enabled(v33, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1C6F5C000, v33, v40, "error capturing placeholder suggestion UUID", v41, 2u);
        MEMORY[0x1CCA5F8E0](v41, -1, -1);
      }
    }

    goto LABEL_14;
  }
}

id PromptSuggestionPersister.suggestionCreationRequest(for:assets:)(_BYTE *a1, uint64_t a2)
{
  v62 = a2;
  v65[4] = *MEMORY[0x1E69E9840];
  v63 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v61 - v8;
  v10 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_3();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v61 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  sub_1C754DF3C();
  LOBYTE(v65[0]) = a1[16];
  v20 = PromptSuggestion.Source.suggestionSubtype.getter();
  v64 = v19;
  if ((v20 & 0x10000) != 0)
  {
    sub_1C71592A8(a1, v9);
    sub_1C71592A8(a1, v6);
    v30 = sub_1C754FEEC();
    v31 = sub_1C755119C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_23_1();
      v65[0] = swift_slowAlloc();
      *v32 = 136315394;
      v33 = 0xE400000000000000;
      v34 = 1701736270;
      switch(v9[16])
      {
        case 1:
          v33 = 0xE600000000000000;
          v34 = 0x636961736F4DLL;
          break;
        case 2:
          v33 = 0xE600000000000000;
          v34 = 0x686372616553;
          break;
        case 3:
          v33 = 0xE90000000000006CLL;
          v34 = 0x616369736D696857;
          break;
        case 4:
          v33 = 0xEA00000000006C61;
          v34 = 0x75747865746E6F43;
          break;
        default:
          break;
      }

      sub_1C715930C(v9);
      v54 = sub_1C6F765A4(v34, v33, v65);

      *(v32 + 4) = v54;
      *(v32 + 12) = 2080;
      PromptSuggestion.description.getter();
      v56 = v55;
      v58 = v57;
      sub_1C715930C(v6);
      v59 = sub_1C6F765A4(v56, v58, v65);

      *(v32 + 14) = v59;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Failed to persist suggestion, unknown subtype for source %s : %s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      sub_1C715930C(v6);
      sub_1C715930C(v9);
    }

    (*(v12 + 8))(v64, v10);
    return 0;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v23 = sub_1C754DECC();
  (*(v12 + 16))(v2, v19, v10);
  sub_1C754DE7C();
  v24 = sub_1C754DECC();
  v25 = *(v12 + 8);
  v25(v16, v10);
  v26 = [v22 creationRequestForSuggestionWithType:13 subtype:v21 keyAssets:v62 representativeAssets:0 creationDate:v23 relevantUntilDate:v24 version:8];

  v27 = sub_1C755065C();
  [v26 setSubtitle_];

  v28 = &selRef_markActive;
  if (!a1[56])
  {
    v28 = &selRef_markRetired;
  }

  [v26 *v28];
  v29 = a1[17] & 0xFE;
  v62 = v10;
  if (v29 == 2)
  {
    [v26 markAccepted];
  }

  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  sub_1C7343B20();
  v35 = sub_1C754D78C();
  v37 = v36;

  v38 = objc_opt_self();
  v39 = sub_1C754DDCC();
  v65[0] = 0;
  v40 = [v38 JSONObjectWithData:v39 options:0 error:v65];

  if (!v40)
  {
    v44 = v65[0];
    v45 = sub_1C754DBEC();

LABEL_16:
    swift_willThrow();
    sub_1C6FC1640(v35, v37);
    v46 = v45;
    v47 = sub_1C754FEEC();
    v48 = sub_1C755119C();

    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_13_3();
      v49 = swift_slowAlloc();
      v50 = v25;
      v51 = swift_slowAlloc();
      *v49 = 138412290;
      v52 = v45;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&dword_1C6F5C000, v47, v48, "error serializing prompt suggestion %@", v49, 0xCu);
      sub_1C6FC15D8(v51);
      v25 = v50;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v25(v64, v62);
    return 0;
  }

  v41 = v65[0];
  sub_1C75515CC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C72249A8();
    OUTLINED_FUNCTION_9_10();
    v45 = swift_allocError();
    goto LABEL_16;
  }

  sub_1C6FC1640(v35, v37);
  v42 = sub_1C755048C();

  [v26 setFeaturesProperties_];

  v43 = sub_1C755065C();
  [v26 setTitle_];

  v25(v64, v62);
  return v26;
}

void sub_1C7340FBC()
{
  v0 = objc_opt_self();
  swift_beginAccess();
  sub_1C6F65BE8(0, &qword_1EDD0CEB0);
  sub_1C75504FC();
  v1 = sub_1C7550B3C();

  [v0 deleteSuggestions_];

  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    swift_beginAccess();
    *(v4 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v2, v3, "Deleted %ld old suggestions", v4, 0xCu);
    MEMORY[0x1CCA5F8E0](v4, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall PromptSuggestionPersister.removeStaleSuggestions(for:timePeriod:)(Swift::OpaquePointer a1, Swift::Double timePeriod)
{
  v6 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_3();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v74 - v11;
  v13 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  sub_1C75504FC();
  v76 = v2;
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();

  v16 = os_log_type_enabled(v14, v15);
  rawValue = a1._rawValue;
  v74[1] = v13;
  if (v16)
  {
    v17 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_98();
    v18 = swift_slowAlloc();
    v82 = v18;
    *v17 = 136315394;
    v19 = MEMORY[0x1CCA5D090](a1._rawValue, &type metadata for PromptSuggestion.Source);
    v21 = sub_1C6F765A4(v19, v20, &v82);

    *(v17 + 4) = v21;
    a1._rawValue = rawValue;
    *(v17 + 12) = 2048;
    *(v17 + 14) = timePeriod;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Removing stale suggestions for sources: %s over time period %f", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v22 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v22);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C754DF3C();
  sub_1C754DEBC();
  v23 = *(v8 + 8);
  v77 = v8 + 8;
  v78 = v6;
  v75 = v23;
  v23(v3, v6);
  v25 = *(a1._rawValue + 2);
  v80 = v12;
  if (v25)
  {
    v26 = a1._rawValue + 32;
    v27 = MEMORY[0x1E69E7CC0];
    v28 = 0x1EC213000uLL;
    *&v24 = 136315138;
    v81 = v24;
    while (1)
    {
      v30 = *v26++;
      v29 = v30;
      if (v30 == 1)
      {
        v31 = 1401;
      }

      else if (v29 == 4)
      {
        v31 = 1403;
      }

      else
      {
        if (v29 != 3)
        {
          if (*(v28 + 3808) != -1)
          {
            OUTLINED_FUNCTION_4_81();
            swift_once();
          }

          v33 = sub_1C754FF1C();
          __swift_project_value_buffer(v33, qword_1EC219390);
          v34 = sub_1C754FEEC();
          v35 = sub_1C755119C();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = v28;
            OUTLINED_FUNCTION_13_3();
            v37 = swift_slowAlloc();
            OUTLINED_FUNCTION_98();
            v38 = swift_slowAlloc();
            v82 = v38;
            *v37 = v81;
            v39 = 0x636961736F4DLL;
            if (v29 != 1)
            {
              v39 = 0x686372616553;
            }

            if (v29)
            {
              v40 = v39;
            }

            else
            {
              v40 = 1701736270;
            }

            if (v29)
            {
              v41 = 0xE600000000000000;
            }

            else
            {
              v41 = 0xE400000000000000;
            }

            v42 = sub_1C6F765A4(v40, v41, &v82);

            *(v37 + 4) = v42;
            _os_log_impl(&dword_1C6F5C000, v34, v35, "Template source %s does not have a PHSuggestionSubtype", v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v38);
            v43 = OUTLINED_FUNCTION_4_0();
            MEMORY[0x1CCA5F8E0](v43);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();

            v28 = v36;
          }

          else
          {
          }

          goto LABEL_16;
        }

        v31 = 1402;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB38CC();
        v27 = v44;
      }

      v32 = *(v27 + 16);
      if (v32 >= *(v27 + 24) >> 1)
      {
        sub_1C6FB38CC();
        v27 = v45;
      }

      *(v27 + 16) = v32 + 1;
      *(v27 + 2 * v32 + 32) = v31;
LABEL_16:
      if (!--v25)
      {
        goto LABEL_32;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v74[0] = [*(v76 + 16) librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C75650C0;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v47 = swift_allocObject();
  v81 = xmmword_1C75604F0;
  *(v47 + 16) = xmmword_1C75604F0;
  v48 = MEMORY[0x1E69E6158];
  *(v47 + 56) = MEMORY[0x1E69E6158];
  v49 = sub_1C6F6D524();
  *(v47 + 64) = v49;
  OUTLINED_FUNCTION_15_66();
  *(v47 + 32) = v50;
  *(v47 + 40) = v51;
  *(v47 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300);
  *(v47 + 104) = sub_1C7343B78();
  *(v47 + 72) = v27;
  OUTLINED_FUNCTION_13_67();
  *(v46 + 32) = sub_1C755112C();
  v52 = OUTLINED_FUNCTION_16_56();
  OUTLINED_FUNCTION_20_53(v52);
  v54 = OUTLINED_FUNCTION_21_51(v53);
  *(v46 + 40) = OUTLINED_FUNCTION_7_70(v54, MEMORY[0x1E69E75F8]);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1C7564A90;
  v56 = OUTLINED_FUNCTION_16_56();
  *(v56 + 16) = v81;
  *(v56 + 56) = v48;
  *(v56 + 64) = v49;
  *(v56 + 32) = 0xD000000000000011;
  *(v56 + 40) = 0x80000001C75AB660;
  v57 = sub_1C754DECC();
  *(v56 + 96) = sub_1C6F65BE8(0, &unk_1EDD0CD28);
  *(v56 + 104) = sub_1C706700C();
  *(v56 + 72) = v57;
  *(v55 + 32) = sub_1C755112C();
  v58 = OUTLINED_FUNCTION_16_56();
  OUTLINED_FUNCTION_20_53(v58);
  v59[4] = 0x6E6F6973726576;
  v59[5] = 0xE700000000000000;
  v60 = MEMORY[0x1E69E65A8];
  v59[12] = MEMORY[0x1E69E6530];
  v59[13] = v60;
  v59[9] = 8;
  *(v55 + 40) = sub_1C755112C();
  *(v46 + 48) = sub_1C74B8340();
  v61 = v74[0];
  v62 = sub_1C6F6E5C4();
  [v61 setPredicate_];

  v63 = [objc_opt_self() fetchSuggestionsWithOptions_];
  PromptSuggestionPersister.batchDelete(suggestions:)(v63);
  v64 = rawValue;
  sub_1C75504FC();
  v65 = v63;
  v66 = sub_1C754FEEC();
  v67 = sub_1C75511BC();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_98();
    v69 = swift_slowAlloc();
    v82 = v69;
    *v68 = 134218242;
    *(v68 + 4) = [v65 count];

    *(v68 + 12) = 2080;
    v70 = MEMORY[0x1CCA5D090](v64, &type metadata for PromptSuggestion.Source);
    v72 = sub_1C6F765A4(v70, v71, &v82);

    *(v68 + 14) = v72;
    _os_log_impl(&dword_1C6F5C000, v66, v67, "Attempted to remove %ld stale suggestions for sources: %s", v68, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v69);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v73 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v73);
  }

  else
  {
  }

  v75(v80, v78);
}

void PromptSuggestionPersister.batchDelete(suggestions:)(void *a1)
{
  v3 = [a1 count];
  v5 = 0;
  swift_beginAccess();
  while (v5 < v3)
  {
    v4 = objc_autoreleasePoolPush();
    sub_1C73434E4(&v5, v3, a1, v1);
    objc_autoreleasePoolPop(v4);
  }
}

Swift::Void __swiftcall PromptSuggestionPersister.removeSuggestions(for:)(Swift::OpaquePointer a1)
{
  sub_1C75504FC();
  v53 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();

  rawValue = a1._rawValue;
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_13_3();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v6 = swift_slowAlloc();
    v57 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x1CCA5D090](a1._rawValue, &type metadata for PromptSuggestion.Source);
    v9 = sub_1C6F765A4(v7, v8, &v57);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C6F5C000, v3, v4, "Removing suggestions for sources: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v10 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v10);
  }

  v11 = *(a1._rawValue + 2);
  if (v11)
  {
    v12 = a1._rawValue + 32;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = 0x1EC213000uLL;
    while (1)
    {
      v16 = *v12++;
      v15 = v16;
      if (v16 == 1)
      {
        v17 = 1401;
      }

      else if (v15 == 4)
      {
        v17 = 1403;
      }

      else
      {
        if (v15 != 3)
        {
          if (*(v14 + 3808) != -1)
          {
            OUTLINED_FUNCTION_4_81();
            swift_once();
          }

          v20 = sub_1C754FF1C();
          __swift_project_value_buffer(v20, qword_1EC219390);
          v21 = sub_1C754FEEC();
          v22 = sub_1C755119C();
          v23 = OUTLINED_FUNCTION_72();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = v14;
            OUTLINED_FUNCTION_13_3();
            v26 = swift_slowAlloc();
            OUTLINED_FUNCTION_98();
            v27 = swift_slowAlloc();
            v57 = v27;
            *v26 = 136315138;
            v28 = 0x636961736F4DLL;
            if (v15 != 1)
            {
              v28 = 0x686372616553;
            }

            if (v15)
            {
              v29 = v28;
            }

            else
            {
              v29 = 1701736270;
            }

            if (v15)
            {
              v30 = 0xE600000000000000;
            }

            else
            {
              v30 = 0xE400000000000000;
            }

            v31 = sub_1C6F765A4(v29, v30, &v57);

            *(v26 + 4) = v31;
            _os_log_impl(&dword_1C6F5C000, v21, v22, "Template source %s does not have a PHSuggestionSubtype", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v27);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();

            v14 = v25;
          }

          else
          {
          }

          goto LABEL_16;
        }

        v17 = 1402;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB38CC();
        v13 = v32;
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_15_2(v18);
        sub_1C6FB38CC();
        v13 = v33;
      }

      *(v13 + 16) = v19 + 1;
      *(v13 + 2 * v19 + 32) = v17;
LABEL_16:
      if (!--v11)
      {
        goto LABEL_32;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v56 = [*(v53 + 16) librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1C75604F0;
  v36 = MEMORY[0x1E69E6158];
  *(v35 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1C6F6D524();
  *(v35 + 64) = v37;
  OUTLINED_FUNCTION_15_66();
  *(v35 + 32) = v38;
  *(v35 + 40) = v39;
  *(v35 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300);
  *(v35 + 104) = sub_1C7343B78();
  *(v35 + 72) = v13;
  OUTLINED_FUNCTION_13_67();
  *(v34 + 32) = sub_1C755112C();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C75604F0;
  *(v40 + 56) = v36;
  *(v40 + 64) = v37;
  v41 = OUTLINED_FUNCTION_21_51(v40);
  *(v34 + 40) = OUTLINED_FUNCTION_7_70(v41, MEMORY[0x1E69E75F8]);
  v42 = sub_1C6F6E5C4();
  [v56 setPredicate_];

  v43 = [objc_opt_self() fetchSuggestionsWithOptions_];
  PromptSuggestionPersister.batchDelete(suggestions:)(v43);
  sub_1C75504FC();
  v55 = v43;
  v44 = sub_1C754FEEC();
  v45 = sub_1C75511BC();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_98();
    v47 = swift_slowAlloc();
    v57 = v47;
    *v46 = 134218242;
    *(v46 + 4) = [v55 count];

    *(v46 + 12) = 2080;
    v48 = MEMORY[0x1CCA5D090](rawValue, &type metadata for PromptSuggestion.Source);
    v50 = sub_1C6F765A4(v48, v49, &v57);

    *(v46 + 14) = v50;
    _os_log_impl(&dword_1C6F5C000, v44, v45, "Attempted to remove %ld suggestions for sources: %s", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v51 = OUTLINED_FUNCTION_4_0();
    MEMORY[0x1CCA5F8E0](v51);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    v52 = v56;
  }

  else
  {

    v52 = v55;
  }
}

void PromptSuggestionPersister.updatePromptSuggestionInDB(_:)(uint64_t a1)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v78 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v74 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v74 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  v17 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  sub_1C71592A8(a1, &v74 - v15);
  v81 = v17;
  v18 = sub_1C754FEEC();
  v19 = sub_1C75511BC();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_13_3();
    v20 = swift_slowAlloc();
    v80 = v2;
    v21 = v20;
    OUTLINED_FUNCTION_98();
    v22 = swift_slowAlloc();
    v74 = v5;
    v23 = v22;
    aBlock[0] = v22;
    *v21 = 136315138;
    PromptSuggestion.description.getter();
    v25 = v24;
    v75 = v7;
    v26 = a1;
    v27 = v9;
    v29 = v28;
    sub_1C715930C(v16);
    v30 = sub_1C6F765A4(v25, v29, aBlock);
    v9 = v27;
    a1 = v26;
    v7 = v75;

    *(v21 + 4) = v30;
    _os_log_impl(&dword_1C6F5C000, v18, v19, "Updating prompt suggestion in DB: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v5 = v74;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v2 = v80;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    sub_1C715930C(v16);
  }

  if (qword_1EDD091D8 != -1)
  {
    OUTLINED_FUNCTION_0_143();
    swift_once();
  }

  if ((sub_1C702B198(*(a1 + 16), off_1EDD091E0) & 1) == 0)
  {
    sub_1C71592A8(a1, v9);
    v39 = sub_1C754FEEC();
    v40 = sub_1C755119C();
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_13_3();
      v41 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = 0xE400000000000000;
      v44 = 1701736270;
      v45 = v42;
      switch(v9[16])
      {
        case 1:
          v43 = 0xE600000000000000;
          v44 = 0x636961736F4DLL;
          break;
        case 2:
          v43 = 0xE600000000000000;
          v44 = 0x686372616553;
          break;
        case 3:
          v43 = 0xE90000000000006CLL;
          v44 = 0x616369736D696857;
          break;
        case 4:
          v43 = 0xEA00000000006C61;
          v44 = 0x75747865746E6F43;
          break;
        default:
          break;
      }

      sub_1C715930C(v9);
      v69 = sub_1C6F765A4(v44, v43, aBlock);

      *(v41 + 4) = v69;
      _os_log_impl(&dword_1C6F5C000, v39, v40, "Unsupported prompt suggestion type to update: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      v70 = OUTLINED_FUNCTION_4_0();
      MEMORY[0x1CCA5F8E0](v70);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      sub_1C715930C(v9);
    }

    sub_1C7343BDC();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v71 = 0;
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217280);
  v31 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C755BAB0;
  sub_1C71592A8(a1, v32 + v31);
  v33 = sub_1C733F9D0(v32);
  swift_setDeallocating();
  sub_1C6FDCB7C();
  v34 = sub_1C6FE376C(*(a1 + 104), *(a1 + 112), v33);

  if (!v34)
  {
    v46 = v77;
    sub_1C71592A8(a1, v77);
    v47 = sub_1C754FEEC();
    v48 = sub_1C755119C();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_13_3();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v49 = 136315138;
      PromptSuggestion.description.getter();
      v52 = v51;
      v54 = v53;
      sub_1C715930C(v46);
      v55 = sub_1C6F765A4(v52, v54, aBlock);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_1C6F5C000, v47, v48, "Cannot find matching PHSuggestion for %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      sub_1C715930C(v46);
    }

    sub_1C7343BDC();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v68 = 1;
LABEL_27:
    swift_willThrow();
    return;
  }

  v80 = v2;
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  sub_1C7343B20();
  v35 = v79;
  v36 = sub_1C754D78C();
  v38 = v37;

  if (v35)
  {

    return;
  }

  v56 = objc_opt_self();
  v57 = sub_1C754DDCC();
  v81 = v38;
  v58 = v57;
  aBlock[0] = 0;
  v59 = [v56 JSONObjectWithData:v57 options:0 error:aBlock];

  if (!v59)
  {
    v72 = aBlock[0];
    sub_1C754DBEC();

LABEL_30:
    swift_willThrow();

    sub_1C6FC1640(v36, v81);
    return;
  }

  v60 = aBlock[0];
  sub_1C75515CC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1C72249A8();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    goto LABEL_30;
  }

  sub_1C6FC1640(v36, v81);
  v79 = v82;
  v61 = v80;
  v81 = *(v80 + 16);
  v62 = v76;
  sub_1C71592A8(a1, v76);
  v63 = swift_allocObject();
  v63[2] = v34;
  v63[3] = v61;
  sub_1C7159368(v62, v63 + v31);
  *(v63 + ((v7 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v79;
  aBlock[4] = sub_1C7343C30;
  aBlock[5] = v63;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_33;
  v64 = _Block_copy(aBlock);
  v65 = v34;

  aBlock[0] = 0;
  v66 = [v81 performChangesAndWait:v64 error:aBlock];
  _Block_release(v64);
  if (v66)
  {
    v67 = aBlock[0];
  }

  else
  {
    v73 = aBlock[0];
    sub_1C754DBEC();

    swift_willThrow();
  }
}

void sub_1C734283C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() changeRequestForSuggestion_];
  if (v4)
  {
    v5 = v4;
    if ((*(a3 + 17) & 0xFE) == 2)
    {
      [v4 markAccepted];
    }

    oslog = sub_1C755048C();
    [v5 setFeaturesProperties_];
  }

  else
  {
    oslog = sub_1C754FEEC();
    v6 = sub_1C755119C();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C6F5C000, oslog, v6, "Failed to create PHSuggestionChangeRequest", v7, 2u);
      MEMORY[0x1CCA5F8E0](v7, -1, -1);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PromptSuggestionPersister.updateRankedOrder(for:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  sub_1C75504FC();
  v4 = sub_1C754FEEC();
  v5 = sub_1C75511BC();
  v6 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_13_3();
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(a1._rawValue + 2);

    _os_log_impl(&dword_1C6F5C000, v4, v5, "Updating prompt suggestion ranked order for %ld suggestions", v8, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v9 = sub_1C733F9D0(a1._rawValue);
  v10 = v2[2];
  v11 = swift_allocObject();
  v11[2]._rawValue = a1._rawValue;
  v11[3]._rawValue = v9;
  v11[4]._rawValue = v2;
  aBlock[4] = sub_1C7343CAC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_12_0;
  v12 = _Block_copy(aBlock);
  sub_1C75504FC();

  aBlock[0] = 0;
  v13 = [v10 performChangesAndWait:v12 error:aBlock];
  _Block_release(v12);
  if (v13)
  {
    v14 = aBlock[0];
  }

  else
  {
    v15 = aBlock[0];
    sub_1C754DBEC();

    swift_willThrow();
  }
}

void sub_1C7342BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PromptSuggestion(0);
  v53 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC40);
  MEMORY[0x1EEE9AC00](v12);
  v52 = (v50.n128_u64 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC48);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v58 = (&v50 - v19);
  v20 = 0;
  v54 = a1;
  v21 = *(a1 + 16);
  v56 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  v18.n128_u64[0] = 136315138;
  v50 = v18;
  v55 = v16;
  v51 = a2;
  v57 = v21;
  while (1)
  {
    if (v20 == v21)
    {
      v22 = 1;
      v59 = v21;
      goto LABEL_7;
    }

    if (v20 >= v21)
    {
      break;
    }

    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_20;
    }

    v24 = v52;
    v25 = v54 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v20;
    v26 = *(v12 + 48);
    *v52 = v20;
    sub_1C71592A8(v25, v24 + v26);
    sub_1C718F6FC(v24, v16, &qword_1EC21AC40);
    v22 = 0;
    v59 = v23;
LABEL_7:
    v27 = v58;
    __swift_storeEnumTagSinglePayload(v16, v22, 1, v12);
    sub_1C718F6FC(v16, v27, &qword_1EC21AC48);
    if (__swift_getEnumTagSinglePayload(v27, 1, v12) == 1)
    {
      return;
    }

    v28 = *v27;
    sub_1C7159368(v27 + *(v12 + 48), v11);
    if (!*(a2 + 16) || (v29 = sub_1C6F78124(*(v11 + 13), *(v11 + 14)), (v30 & 1) == 0))
    {
      sub_1C71592A8(v11, v8);
      v38 = sub_1C754FEEC();
      v39 = sub_1C755119C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v60 = v41;
        *v40 = v50.n128_u32[0];
        v42 = v12;
        v43 = v11;
        v44 = a3;
        v45 = *(v8 + 13);
        v46 = *(v8 + 14);
        sub_1C75504FC();
        sub_1C715930C(v8);
        v47 = sub_1C6F765A4(v45, v46, &v60);
        a3 = v44;
        v11 = v43;
        v12 = v42;

        *(v40 + 4) = v47;
        _os_log_impl(&dword_1C6F5C000, v38, v39, "Cannot find corresponding PHSuggestion for '%s'", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        v48 = v41;
        a2 = v51;
        MEMORY[0x1CCA5F8E0](v48, -1, -1);
        v49 = v40;
        v16 = v55;
        MEMORY[0x1CCA5F8E0](v49, -1, -1);
      }

      else
      {

        sub_1C715930C(v8);
      }

      goto LABEL_15;
    }

    v31 = *(*(a2 + 56) + 8 * v29);
    v32 = objc_opt_self();
    v33 = v31;
    v34 = [v32 changeRequestForSuggestion_];
    if (v34)
    {
      v60 = v28;
      v35 = v34;
      v36 = sub_1C7551D8C();
      sub_1C7343F0C(v36, v37, v35);

      v16 = v55;
LABEL_15:
      sub_1C715930C(v11);
      goto LABEL_16;
    }

    sub_1C715930C(v11);

LABEL_16:
    v21 = v57;
    v20 = v59;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1C734330C(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_1C75516BC())
  {
    if (a2 < 1 && result <= a2)
    {
      sub_1C75504FC();
      return v3;
    }

    v11 = MEMORY[0x1E69E7CC0];
    if (a2 > 1)
    {
      if (__OFSUB__(result, 1))
      {
        goto LABEL_35;
      }

      v6 = (result - 1) / (a2 - 1);
      goto LABEL_13;
    }

    if (a2 < 0)
    {
      break;
    }

    v6 = 1.0;
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

LABEL_13:
    v7 = 0;
    while (1)
    {
      v8 = round(v6 * v7);
      if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v8 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v8 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      v9 = v8;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA5DDD0](v9, v3);
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v9)
        {
          goto LABEL_32;
        }

        v10 = *(v3 + 32 + 8 * v9);
      }

      MEMORY[0x1CCA5D040]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      ++v7;
      sub_1C7550BEC();
      if (a2 == v7)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1C73434E4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  aBlock[9] = *MEMORY[0x1E69E9840];
  v8 = sub_1C754E2FC();
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (__OFADD__(*a1, 20))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*a1 + 20 < a2)
  {
    a2 = *a1 + 20;
  }

  if (a2 < *a1)
  {
    goto LABEL_17;
  }

  sub_1C754E26C();
  v49 = v10;
  v11 = sub_1C754E28C();
  v12 = a4;
  v13 = [a3 objectsAtIndexes_];

  v47 = sub_1C6F65BE8(0, &qword_1EDD0CEB0);
  v14 = sub_1C7550B5C();

  v15 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  sub_1C75504FC();
  v16 = v12;
  v48 = v15;
  v17 = sub_1C754FEEC();
  v18 = sub_1C75511BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218496;
    swift_beginAccess();
    *(v19 + 4) = *a1;
    *(v19 + 12) = 2048;
    if (!__OFSUB__(a2, 1))
    {
      *(v19 + 14) = a2 - 1;
      *(v19 + 22) = 2048;
      *(v19 + 24) = sub_1C6FB6304();

      _os_log_impl(&dword_1C6F5C000, v17, v18, "Deleting batch from index %ld to %ld (batch size: %ld).", v19, 0x20u);
      MEMORY[0x1CCA5F8E0](v19, -1, -1);

      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  v20 = *(v16 + 16);
  v21 = swift_allocObject();
  v21[2] = a3;
  aBlock[4] = sub_1C725C970;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_24_2;
  v22 = _Block_copy(aBlock);
  v23 = a3;

  aBlock[0] = 0;
  v24 = [v20 performChangesAndWait:v22 error:aBlock];
  _Block_release(v22);
  v25 = aBlock[0];
  if (v24)
  {
    v26 = sub_1C6FB6304();
    v27 = v25;

    (*(v50 + 8))(v49, v8);
    result = swift_beginAccess();
    if (!__OFADD__(*a1, v26))
    {
      *a1 += v26;
      return result;
    }

LABEL_19:
    __break(1u);
  }

  v46 = v8;
  v29 = aBlock[0];
  v30 = sub_1C754DBEC();

  swift_willThrow();
  v51 = 0;
  sub_1C75504FC();
  v31 = v30;
  v32 = sub_1C754FEEC();
  v33 = sub_1C755119C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock[0] = v48;
    *v34 = 136315394;
    v36 = MEMORY[0x1CCA5D090](v14, v47);
    v37 = v50;
    v38 = v36;
    v40 = v39;

    v41 = sub_1C6F765A4(v38, v40, aBlock);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2112;
    v42 = v30;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v43;
    *v35 = v43;
    _os_log_impl(&dword_1C6F5C000, v32, v33, "Error removing suggestions: %s, error: %@. Return", v34, 0x16u);
    sub_1C6FC15D8(v35);
    MEMORY[0x1CCA5F8E0](v35, -1, -1);
    v44 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x1CCA5F8E0](v44, -1, -1);
    MEMORY[0x1CCA5F8E0](v34, -1, -1);

    return (*(v37 + 8))(v49, v46);
  }

  else
  {

    return (*(v50 + 8))(v49, v46);
  }
}

uint64_t PromptSuggestionPersister.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence25PromptSuggestionPersister_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PromptSuggestionPersister.__deallocating_deinit()
{
  PromptSuggestionPersister.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1C7343B20()
{
  result = qword_1EDD0B058;
  if (!qword_1EDD0B058)
  {
    type metadata accessor for PromptSuggestion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0B058);
  }

  return result;
}

unint64_t sub_1C7343B78()
{
  result = qword_1EDD0CF08;
  if (!qword_1EDD0CF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CF08);
  }

  return result;
}

unint64_t sub_1C7343BDC()
{
  result = qword_1EC21AC30;
  if (!qword_1EC21AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AC30);
  }

  return result;
}

void sub_1C7343C30()
{
  v1 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_17_67();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  sub_1C734283C(v3, v4, v0 + v2);
}

unint64_t sub_1C7343CBC()
{
  result = qword_1EC21AC38;
  if (!qword_1EC21AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AC38);
  }

  return result;
}

uint64_t type metadata accessor for PromptSuggestionPersister()
{
  result = qword_1EDD091C0;
  if (!qword_1EDD091C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7343D64()
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

_BYTE *storeEnumTagSinglePayload for PromptSuggestionPersister.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C7343F0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();

  [a3 setContext_];
}

void sub_1C7343F70()
{
  v1 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_17_67();
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1C7340414(v6, (v0 + v2), v7, v8, v9, v10);
}

uint64_t OUTLINED_FUNCTION_21_51(uint64_t result)
{
  *(result + 32) = 1701869940;
  *(result + 40) = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_24_37(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

id sub_1C734406C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSuggestion:a1 queryToken:a2];

  return v4;
}

uint64_t QueryGenerator.groundedQueryTokens(forAnnotation:userSuggestionByRange:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C73440F0, 0, 0);
}

uint64_t sub_1C73440F0()
{
  v1 = *(v0 + 40);
  v2 = QueryGenerator.groundedQueryTokens(forAnnotation:userSuggestionByRange:eventRecorder:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v1);
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t QueryGenerator.groundedQueryTokens(forAnnotation:userSuggestionByRange:eventRecorder:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v345 = &v342 - v7;
  OUTLINED_FUNCTION_37_3();
  v386 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v360 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v385 = v11 - v10;
  OUTLINED_FUNCTION_37_3();
  v384 = sub_1C754DABC();
  OUTLINED_FUNCTION_3_0();
  v359 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v383 = v15 - v14;
  OUTLINED_FUNCTION_37_3();
  v349 = type metadata accessor for QueryGenerator.AnnotatedQueryComponents();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v389 = v18 - v17;
  OUTLINED_FUNCTION_37_3();
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v352 = v20;
  v353 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_0();
  v23 = v22 - v21;
  v24 = *a1;
  v387 = *(a1 + 8);
  v388 = v24;
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v422 = v26;
  v27 = *(a1 + 25);
  v421 = v27;
  v358 = *(a1 + 26);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v351 = v23;
  sub_1C754F1CC();
  v378 = v25;
  v379 = *(v25 + 16);
  if (!v379 && *(a2 + 16))
  {
    v130 = sub_1C754FEEC();
    v131 = sub_1C755117C();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_1C6F5C000, v130, v131, "Applied the user suggestions directly since there is no query annotation", v132, 2u);
      OUTLINED_FUNCTION_109();
    }

    *__dst = v388;
    *&__dst[8] = v387;
    *&__dst[16] = v378;
    __dst[24] = v26;
    __dst[25] = v27;
    __dst[26] = v358;
    *&__dst[27] = *(a1 + 27);
    *&__dst[43] = *(a1 + 43);
    *&__dst[59] = *(a1 + 59);
    *&__dst[73] = *(a1 + 73);
    sub_1C73469F4(__dst, a2);
    v134 = v133;
    v135 = 0;
LABEL_253:
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v340 = v351;
    sub_1C754F1AC();
    (*(v352 + 8))(v340, v353);
    sub_1C6F6E5B4(v135);
    return v134;
  }

  v346 = a3;
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E7CC0];
  v357 = v28;
  *(v28 + 16) = MEMORY[0x1E69E7CC0];
  v375 = (v28 + 16);
  v30 = a2 + 64;
  OUTLINED_FUNCTION_11();
  v33 = v32 & v31;
  v35 = (v34 + 63) >> 6;
  v36 = HIBYTE(v387) & 0xF;
  if ((v387 & 0x2000000000000000) == 0)
  {
    v36 = v388;
  }

  v37 = 11;
  if (((v387 >> 60) & ((v388 & 0x800000000000000) == 0)) == 0)
  {
    v37 = 7;
  }

  v381 = a2;
  v382 = (v37 | (v36 << 16));
  sub_1C75504FC();
  v38 = 0;
  v372 = 0;
  v362 = v29;
LABEL_7:
  if (v33)
  {
    v39 = v381;
    goto LABEL_14;
  }

  v39 = v381;
  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_255;
    }

    if (v40 >= v35)
    {
      break;
    }

    v33 = *(v30 + 8 * v40);
    ++v38;
    if (v33)
    {
      v38 = v40;
LABEL_14:
      v41 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v42 = v41 | (v38 << 6);
      v43 = (*(v39 + 6) + 16 * v42);
      v44 = *v43;
      v45 = v43[1];
      v46 = *(*(v39 + 7) + 8 * v42);
      sub_1C755090C();
      if ((v47 & 1) == 0)
      {
        if (__OFADD__(v44, v45))
        {
          goto LABEL_268;
        }

        sub_1C755090C();
        if (v48)
        {
          goto LABEL_7;
        }

        v380 = v45;
        v49 = v46;
        sub_1C75504FC();
        v50 = sub_1C75507EC();
        if (v51 & 1) != 0 || (v52 = v50, sub_1C75504FC(), v53 = sub_1C75507EC(), (v54))
        {

          goto LABEL_7;
        }

        if (v53 >> 14 < v52 >> 14)
        {
          goto LABEL_269;
        }

        v55 = sub_1C755098C();
        v56 = MEMORY[0x1CCA5CC40](v55);
        v377 = v57;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1CD0();
          v362 = v80;
        }

        v59 = v362[2];
        v58 = v362[3];
        if (v59 >= v58 >> 1)
        {
          OUTLINED_FUNCTION_15(v58);
          sub_1C6FB1CD0();
          v362 = v81;
        }

        v60 = v362;
        v362[2] = v59 + 1;
        v61 = &v60[2 * v59];
        v62 = v380;
        v61[4] = v44;
        v61[5] = v62;
        sub_1C6F65BE8(0, &qword_1EDD0CDB0);
        v374 = v49;
        v63 = sub_1C734406C(v374, 0);
        v64 = [v63 suggestion];
        v376 = v63;
        if (v64)
        {
          v65 = v64;
          v66 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
          static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v66, __dst);
          sub_1C72D5B04();
          goto LABEL_29;
        }

        v68 = [v63 QUToken];
        if (v68)
        {
          v65 = v68;
          sub_1C72D5FAC(v68, v56, v377, MEMORY[0x1E69E7CC0], v69, v70, v71, v72, v342, v343, v344, *(&v344 + 1), v345, v346, v347, *(&v347 + 1), v348, v349, v350, *(&v350 + 1));
LABEL_29:
          v73 = v67;
        }

        else
        {
          v73 = MEMORY[0x1E69E7CC0];
        }

        sub_1C72D533C();
        v75 = v74;
        v77 = v76;

        LOBYTE(v406[0]) = 0;

        v391[0] = v75;
        v391[1] = v77;
        v391[2] = v56;
        v391[3] = v377;
        v392 = 1;
        *v393 = *__dst;
        *&v393[3] = *&__dst[3];
        v394 = v44;
        v395 = v380;
        v396 = v406[0];
        *v397 = v419[0];
        *&v397[3] = *(v419 + 3);
        v398 = MEMORY[0x1E69E7CC0];
        v399 = 0;
        v400 = v73;
        v401 = 0;
        *v402 = v418[0];
        *&v402[3] = *(v418 + 3);
        v404 = 0;
        v405 = 0;
        v403 = 0;
        v78 = v375;
        sub_1C6FB0BCC();
        v79 = *(*v78 + 16);
        sub_1C6FB1410();

        sub_1C745838C(v79, v391);
      }

      goto LABEL_7;
    }
  }

  if (!v379)
  {
    v380 = 0;
    v84 = MEMORY[0x1E69E7CC8];
    v387 = MEMORY[0x1E69E7CC8];
    v126 = v375;
    v127 = v389;
LABEL_62:
    v356 = v387 + 64;
    OUTLINED_FUNCTION_11();
    v138 = (v137 & v136);
    v355 = (v139 + 63) >> 6;
    v381 = (v359 + 16);
    v382 = (v360 + 16);
    sub_1C75504FC();
    v140 = v138;
    v141 = 0;
    v343 = v362 + 5;
    *&v142 = 136642819;
    v347 = v142;
    *(&v142 + 1) = 12;
    v350 = xmmword_1C755D200;
    *&v142 = 136315394;
    v344 = v142;
    *&v142 = 138412290;
    v361 = v142;
    v388 = v84;
    while (1)
    {
      while (1)
      {
        if (!v140)
        {
          while (1)
          {
            v144 = v141 + 1;
            if (__OFADD__(v141, 1))
            {
              break;
            }

            if (v144 >= v355)
            {

              if (v422)
              {
                sub_1C74A8498(0, __dst);
                sub_1C6FB0BCC();
                OUTLINED_FUNCTION_19_61();
                sub_1C745838C(v138, __dst);
              }

              if (v421 == 1)
              {
                sub_1C7348660(v419);
                sub_1C6FB0BCC();
                OUTLINED_FUNCTION_19_61();
                sub_1C745838C(v138, v419);
              }

              if (v358)
              {
                v324 = OUTLINED_FUNCTION_18_51();

                if ((v324 & 1) == 0)
                {
                  LOBYTE(v390[0]) = v358;
                  sub_1C73488F8(v390, v418);
                  sub_1C6FB0BCC();
                  OUTLINED_FUNCTION_19_61();
                  sub_1C745838C(v324, v418);
                }
              }

              else
              {
              }

              sub_1C7348ACC(v126, sub_1C70E4308, &type metadata for QueryToken, sub_1C7349D70, sub_1C7349C88);

              OUTLINED_FUNCTION_30();
              v325 = swift_allocObject();
              *(v325 + 16) = sub_1C734A668;
              *(v325 + 24) = v357;

              v326 = sub_1C754FEEC();
              v327 = sub_1C75511BC();
              OUTLINED_FUNCTION_7_71();
              v328 = swift_allocObject();
              *(v328 + 16) = 37;
              OUTLINED_FUNCTION_7_71();
              v329 = swift_allocObject();
              *(v329 + 16) = 8;
              OUTLINED_FUNCTION_30();
              v330 = swift_allocObject();
              *(v330 + 16) = sub_1C734A670;
              *(v330 + 24) = v325;
              OUTLINED_FUNCTION_30();
              v331 = swift_allocObject();
              *(v331 + 16) = sub_1C734A780;
              *(v331 + 24) = v330;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC60);
              v332 = swift_allocObject();
              *(v332 + 16) = xmmword_1C755BAA0;
              *(v332 + 32) = sub_1C734A788;
              *(v332 + 40) = v328;
              *(v332 + 48) = sub_1C734A788;
              *(v332 + 56) = v329;
              *(v332 + 64) = sub_1C734A77C;
              *(v332 + 72) = v331;
              swift_setDeallocating();
              sub_1C6FDE6C8();
              if (os_log_type_enabled(v326, v327))
              {
                v333 = swift_slowAlloc();
                v334 = swift_slowAlloc();
                v390[0] = v334;
                *v333 = v347;
                swift_beginAccess();
                v335 = sub_1C75504FC();
                v336 = MEMORY[0x1CCA5D090](v335, &type metadata for QueryToken);
                v338 = v337;

                v339 = sub_1C6F765A4(v336, v338, v390);

                *(v333 + 4) = v339;
                _os_log_impl(&dword_1C6F5C000, v326, v327, "Grounded query tokens = %{sensitive}s", v333, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v334);
                OUTLINED_FUNCTION_109();
                OUTLINED_FUNCTION_109();
              }

              a3 = v346;
              v135 = v380;
              swift_beginAccess();
              v134 = *(v357 + 16);
              sub_1C75504FC();

              goto LABEL_253;
            }

            v143 = *(v356 + 8 * v144);
            ++v141;
            if (v143)
            {
              v141 = v144;
              goto LABEL_69;
            }
          }

LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
          goto LABEL_257;
        }

        v143 = v140;
LABEL_69:
        v140 = (v143 - 1) & v143;
        if (*(v84 + 16))
        {
          v145 = __clz(__rbit64(v143)) | (v141 << 6);
          v146 = (*(v387 + 48) + 16 * v145);
          v147 = *v146;
          v148 = v146[1];
          v378 = *(*(v387 + 56) + 8 * v145);
          v363 = v147;
          v364 = v148;
          v365 = v140;
          v366 = v141;
          v149 = sub_1C6FC31EC(v147, v148);
          v140 = v365;
          v141 = v366;
          v84 = v388;
          if (v150)
          {
            break;
          }
        }
      }

      v151 = (*(v388 + 56) + 16 * v149);
      v153 = *v151;
      v152 = v151[1];
      v369 = v153;
      v370 = v152;
      v154 = v362[2];
      if (v154)
      {
        v155 = __OFADD__(v363, v364);
        v156 = v343;
        v157 = v378;
        while (1)
        {
          v158 = *(v156 - 1);
          if (v363 >= v158)
          {
            if (v155)
            {
              goto LABEL_265;
            }

            v102 = __OFADD__(v158, *v156);
            v159 = v158 + *v156;
            if (v102)
            {
              goto LABEL_266;
            }

            if (v159 >= v363 + v364)
            {
              break;
            }
          }

          v156 += 2;
          if (!--v154)
          {
            goto LABEL_83;
          }
        }

        v290 = v363;
        v291 = v364;
        OUTLINED_FUNCTION_30();
        v292 = swift_allocObject();
        v293 = v370;
        *(v292 + 16) = v369;
        *(v292 + 24) = v293;
        OUTLINED_FUNCTION_30();
        v294 = swift_allocObject();
        *(v294 + 16) = v290;
        *(v294 + 24) = v291;
        OUTLINED_FUNCTION_30();
        v295 = swift_allocObject();
        *(v295 + 16) = sub_1C734A5D8;
        *(v295 + 24) = v294;
        swift_bridgeObjectRetain_n();
        v138 = sub_1C754FEEC();
        LODWORD(v379) = sub_1C755117C();
        OUTLINED_FUNCTION_7_71();
        v296 = swift_allocObject();
        *(v296 + 16) = 32;
        OUTLINED_FUNCTION_7_71();
        v297 = swift_allocObject();
        *(v297 + 16) = 8;
        OUTLINED_FUNCTION_30();
        v298 = swift_allocObject();
        *(v298 + 16) = sub_1C734A5D0;
        *(v298 + 24) = v292;
        OUTLINED_FUNCTION_30();
        v299 = swift_allocObject();
        *(v299 + 16) = sub_1C734A5F4;
        *(v299 + 24) = v298;
        OUTLINED_FUNCTION_7_71();
        v300 = swift_allocObject();
        *(v300 + 16) = 32;
        OUTLINED_FUNCTION_7_71();
        v301 = swift_allocObject();
        *(v301 + 16) = 8;
        OUTLINED_FUNCTION_30();
        v302 = swift_allocObject();
        *(v302 + 16) = sub_1C734A5E4;
        *(v302 + 24) = v295;
        OUTLINED_FUNCTION_30();
        v303 = swift_allocObject();
        *(v303 + 16) = sub_1C734A780;
        *(v303 + 24) = v302;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC60);
        v304 = swift_allocObject();
        *(v304 + 16) = v350;
        *(v304 + 32) = sub_1C734A5EC;
        *(v304 + 40) = v296;
        *(v304 + 48) = sub_1C734A788;
        *(v304 + 56) = v297;
        v305 = v379;
        *(v304 + 64) = sub_1C734A5FC;
        *(v304 + 72) = v299;
        *(v304 + 80) = sub_1C734A788;
        *(v304 + 88) = v300;
        *(v304 + 96) = sub_1C734A788;
        *(v304 + 104) = v301;
        *(v304 + 112) = sub_1C734A77C;
        *(v304 + 120) = v303;
        swift_setDeallocating();
        sub_1C6FDE6C8();
        if (os_log_type_enabled(v138, v305))
        {
          v306 = swift_slowAlloc();
          *__dst = swift_slowAlloc();
          *v306 = v344;
          v307 = sub_1C6F765A4(v369, v370, __dst);

          *(v306 + 4) = v307;
          *(v306 + 12) = 2080;
          v308 = sub_1C755142C();
          v310 = sub_1C6F765A4(v308, v309, __dst);

          *(v306 + 14) = v310;
          _os_log_impl(&dword_1C6F5C000, v138, v305, "Skip substring %s with range (%s) since user has disambiguated", v306, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
        }

        v126 = v375;
        v127 = v389;
      }

      else
      {
        v157 = v378;
LABEL_83:
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C754E2EC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750);
        v160 = MEMORY[0x1E69E7CC0];
        v161 = sub_1C75504DC();
        v162 = v349;
        v163 = *(v349 + 24);
        v376 = *(v349 + 20);
        *(v376 + v127) = v161;
        v368 = v163;
        *(v127 + v163) = 0;
        v342 = *(v162 + 28);
        *(v127 + v342) = v160;
        v374 = *(v157 + 16);
        if (v374)
        {
          v377 = objc_opt_self();
          v164 = 0;
          v371 = 0;
          v373 = v157 + 32;
          while (1)
          {
            if (v164 >= *(v157 + 16))
            {
              goto LABEL_260;
            }

            v379 = v164;
            memcpy(__dst, (v373 + 72 * v164), 0x48uLL);
            OUTLINED_FUNCTION_30_37();
            sub_1C75504FC();
            if ([v377 enableQueryAnnotationPipelineInPhotos])
            {
              v165 = sub_1C7551B2C();

              v166 = 1;
              v167 = 1;
              OUTLINED_FUNCTION_0_144();
              v168 = 3;
              switch(v165)
              {
                case 0:
                case 1:
                  goto LABEL_111;
                case 2:
                  goto LABEL_90;
                case 3:
                  goto LABEL_92;
                case 4:
                  goto LABEL_89;
                case 5:
                  goto LABEL_98;
                case 6:
                  goto LABEL_95;
                case 7:
                  goto LABEL_93;
                case 8:
                  goto LABEL_94;
                case 9:
                  goto LABEL_91;
                default:
                  goto LABEL_96;
              }
            }

            v169 = objc_opt_self();
            v170 = sub_1C755065C();

            v166 = [v169 PHSearchEntityCategoryTypeFromCSAttributedEntityType_];

            v167 = 1;
            OUTLINED_FUNCTION_0_144();
            v168 = v166;
            switch(v166)
            {
              case 0:
LABEL_96:
                OUTLINED_FUNCTION_30_37();
                v171 = sub_1C754FEEC();
                v172 = sub_1C75511BC();
                sub_1C7316F68(__dst);
                if (os_log_type_enabled(v171, v172))
                {
                  v173 = swift_slowAlloc();
                  v174 = swift_slowAlloc();
                  v390[0] = v174;
                  *v173 = v347;
                  memcpy(v418, __dst, 0x48uLL);
                  v175 = QueryAttribute.description.getter();
                  v177 = v176;
                  memcpy(v419, v418, 0x48uLL);
                  sub_1C7316F68(v419);
                  v178 = sub_1C6F765A4(v175, v177, v390);

                  *(v173 + 4) = v178;
                  _os_log_impl(&dword_1C6F5C000, v171, v172, "Attribute %{sensitive}s has undefined search entity category type", v173, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v174);
                  OUTLINED_FUNCTION_109();
                  OUTLINED_FUNCTION_109();
                }

                else
                {

                  sub_1C7316F68(__dst);
                }

                goto LABEL_201;
              case 1:
              case 2:
LABEL_89:
                v167 = 3;
                goto LABEL_110;
              case 3:
                goto LABEL_111;
              case 4:
LABEL_92:
                v167 = 7;
                v168 = 4;
                goto LABEL_111;
              case 5:
                v167 = 8;
                OUTLINED_FUNCTION_25_40();
                goto LABEL_110;
              case 6:
LABEL_98:
                v167 = 9;
                v168 = 6;
                goto LABEL_111;
              case 7:
                v167 = 10;
                OUTLINED_FUNCTION_22_56();
                goto LABEL_110;
              case 8:
                v167 = 11;
                OUTLINED_FUNCTION_0_144();
                goto LABEL_110;
              case 9:
LABEL_93:
                v167 = 12;
                OUTLINED_FUNCTION_34_0();
                v168 = 9;
                goto LABEL_111;
              case 10:
LABEL_95:
                OUTLINED_FUNCTION_207();
                v167 = 13;
                OUTLINED_FUNCTION_34_0();
                v168 = 10;
                goto LABEL_111;
              case 11:
LABEL_94:
                OUTLINED_FUNCTION_437();
                v167 = 14;
                OUTLINED_FUNCTION_34_0();
                v168 = 11;
                goto LABEL_111;
              case 12:
LABEL_91:
                v167 = 15;
                v168 = 12;
                goto LABEL_111;
              case 13:
                v167 = 16;
                goto LABEL_110;
              case 14:
                v167 = 17;
                goto LABEL_110;
              case 15:
LABEL_90:
                v167 = 2;
                OUTLINED_FUNCTION_0_144();
                v168 = 15;
                goto LABEL_111;
              case 16:
                v167 = 18;
                OUTLINED_FUNCTION_26_42();
                goto LABEL_110;
              case 17:
                OUTLINED_FUNCTION_188();
                v167 = 19;
                OUTLINED_FUNCTION_21_5();
                goto LABEL_110;
              case 18:
                OUTLINED_FUNCTION_188();
                v167 = 4;
                OUTLINED_FUNCTION_4_82();
                goto LABEL_110;
              case 19:
                OUTLINED_FUNCTION_437();
                v167 = 5;
                OUTLINED_FUNCTION_4_82();
                goto LABEL_110;
              case 20:
                v167 = 6;
LABEL_110:
                v168 = v166;
LABEL_111:
                v179 = OUTLINED_FUNCTION_18_51();

                if (v179)
                {
                  goto LABEL_150;
                }

                v180 = 0xE600000000000000;
                v181 = 0x6E6F73726570;
                v367 = (v167 - 1);
                v182 = v372;
                switch(v167)
                {
                  case 2:
                    v181 = 0x67416E6F73726570;
                    v183 = 0x6570795465;
                    goto LABEL_131;
                  case 3:
                    v180 = 0xE400000000000000;
                    v181 = 1702125924;
                    break;
                  case 4:
                    OUTLINED_FUNCTION_188();
                    v180 = v187 + 20;
                    v181 = 0x6144664F74726170;
                    break;
                  case 5:
                    OUTLINED_FUNCTION_437();
                    v180 = v184 + 1529;
                    v181 = 0x6557664F74726170;
                    break;
                  case 6:
                    v181 = 0x6E6F73616573;
                    break;
                  case 7:
                    v180 = 0xE800000000000000;
                    v186 = 1633906540;
                    goto LABEL_128;
                  case 8:
                    v181 = 0x4C636972656E6567;
                    v180 = 0xEF6E6F697461636FLL;
                    break;
                  case 9:
                    v180 = 0xE400000000000000;
                    v181 = 1952540791;
                    break;
                  case 10:
                    v181 = 0x764563696C627570;
                    v180 = 0xEB00000000746E65;
                    break;
                  case 11:
                    v181 = 0x6C616E6F73726570;
                    v183 = 0x746E657645;
LABEL_131:
                    v180 = v183 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                    break;
                  case 12:
                    v181 = 0x746954636973756DLL;
                    v180 = 0xEA0000000000656CLL;
                    break;
                  case 13:
                    OUTLINED_FUNCTION_207();
                    v180 = v185 + 1284;
                    v181 = 0x747241636973756DLL;
                    break;
                  case 14:
                    OUTLINED_FUNCTION_437();
                    v180 = v188 + 6;
                    v181 = 0x6E6547636973756DLL;
                    break;
                  case 15:
                    v180 = 0xE400000000000000;
                    v181 = 1685024621;
                    break;
                  case 16:
                    v180 = 0xE800000000000000;
                    v186 = 1634891108;
LABEL_128:
                    v181 = v186 | 0x6E6F697400000000;
                    break;
                  case 17:
                    v181 = 0x706972547369;
                    break;
                  case 18:
                    v181 = 0x6D69546C6C417369;
                    v180 = 0xE900000000000065;
                    break;
                  case 19:
                    OUTLINED_FUNCTION_188();
                    v180 = v189 + 13;
                    v181 = 0x6564724F74726F73;
                    break;
                  default:
                    break;
                }

                type metadata accessor for OptionalizedTokensDataSource();
                v190 = static OptionalizedTokensDataSource.optionalizedTokensByCategoryType.getter();
                if (v182)
                {
                  if (qword_1EDD0F3C0 != -1)
                  {
                    swift_once();
                  }

                  v191 = sub_1C754FF1C();
                  __swift_project_value_buffer(v191, qword_1EDD28DB0);
                  v192 = v182;
                  v193 = sub_1C754FEEC();
                  v194 = v182;
                  v195 = sub_1C755119C();

                  if (os_log_type_enabled(v193, v195))
                  {
                    v196 = swift_slowAlloc();
                    v197 = swift_slowAlloc();
                    *v196 = v361;
                    v198 = v194;
                    v199 = _swift_stdlib_bridgeErrorToNSError();
                    *(v196 + 4) = v199;
                    *v197 = v199;
                    _os_log_impl(&dword_1C6F5C000, v193, v195, "Unable to get the optionalizedTokensByCategoryType, error=%@", v196, 0xCu);
                    sub_1C6FD7FC8(v197, &qword_1EC215190);
                    OUTLINED_FUNCTION_109();
                    OUTLINED_FUNCTION_109();
                  }

                  else
                  {
                  }

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
                  v200 = sub_1C75504DC();
                }

                else
                {
                  v200 = v190;
                }

                v372 = 0;
                if (!*(v200 + 16))
                {

LABEL_148:
                  v166 = v168;
                  v127 = v389;
LABEL_149:

                  v168 = v166;
LABEL_150:
                  v229 = *&__dst[48];
                  if (v168 != 1)
                  {
                    if (v168 == 3)
                    {
                      sub_1C7316F68(__dst);
                      v231 = sub_1C7347A3C(v369, v370, v378);
                      v232 = *(v231 + 16);
                      if (!v232)
                      {

                        v233 = MEMORY[0x1E69E7CC0];
                        goto LABEL_190;
                      }

                      v390[0] = MEMORY[0x1E69E7CC0];
                      sub_1C716D6A4();
                      v233 = v390[0];
                      v234 = (v231 + 40);
                      do
                      {
                        v235 = *v234;
                        v418[0] = *(v234 - 1);
                        v418[1] = v235;
                        sub_1C75504FC();
                        swift_dynamicCast();
                        v390[0] = v233;
                        v237 = *(v233 + 16);
                        v236 = *(v233 + 24);
                        if (v237 >= v236 >> 1)
                        {
                          OUTLINED_FUNCTION_15(v236);
                          OUTLINED_FUNCTION_116_0();
                          sub_1C716D6A4();
                          v233 = v390[0];
                        }

                        *(v233 + 16) = v237 + 1;
                        sub_1C6F9ED18(v419, (v233 + 32 * v237 + 32));
                        v234 += 2;
                        --v232;
                      }

                      while (v232);

                      v127 = v389;
                    }

                    else
                    {
                      if (v168 == 4)
                      {
                        sub_1C75504FC();
                        sub_1C7316F68(__dst);
                        if (*(v229 + 16))
                        {
                          sub_1C75504FC();
                          v230 = v229;
                        }

                        else
                        {
                          v230 = 0;
                        }

                        *(v127 + v368) = v230;
                        v244 = sub_1C7348240();

                        v233 = sub_1C71BB47C(v244);

                        v371 = v230;
                        goto LABEL_190;
                      }

                      v241 = 0;
                      while (v241 != 40)
                      {
                        v242 = *(&unk_1F46A8880 + v241 + 32);
                        v241 += 8;
                        if (v242 == v168)
                        {
                          v233 = sub_1C71BA98C(*&__dst[48]);
                          sub_1C7316F68(__dst);
                          goto LABEL_186;
                        }
                      }

                      sub_1C7316F68(__dst);
                      v233 = MEMORY[0x1E69E7CC0];
                    }

LABEL_186:
                    if (v168 < 0)
                    {
                      goto LABEL_261;
                    }

LABEL_190:
                    sub_1C754E2AC();
                    v245 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
                    if (v245)
                    {
                      v246 = v245;
                      v247 = sub_1C755068C();
                      v249 = v248;

                      v250 = v376;
                      swift_isUniquelyReferenced_nonNull_native();
                      *&v419[0] = *&v250[v127];
                      sub_1C6F78124(v247, v249);
                      OUTLINED_FUNCTION_31_1();
                      if (__OFADD__(v253, v254))
                      {
                        goto LABEL_262;
                      }

                      v255 = v251;
                      v256 = v252;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152A0);
                      if (OUTLINED_FUNCTION_27_42())
                      {
                        v257 = sub_1C6F78124(v247, v249);
                        if ((v256 & 1) != (v258 & 1))
                        {
                          goto LABEL_270;
                        }

                        v255 = v257;
                      }

                      if (v256)
                      {

                        v259 = *&v419[0];
                        *(*(*&v419[0] + 56) + 8 * v255) = v233;
                      }

                      else
                      {
                        v259 = *&v419[0];
                        OUTLINED_FUNCTION_2_27(*&v419[0] + 8 * (v255 >> 6));
                        v261 = (v260 + 16 * v255);
                        *v261 = v247;
                        v261[1] = v249;
                        *(*(v259 + 56) + 8 * v255) = v233;
                        v262 = *(v259 + 16);
                        v102 = __OFADD__(v262, 1);
                        v263 = v262 + 1;
                        if (v102)
                        {
                          goto LABEL_267;
                        }

                        *(v259 + 16) = v263;
                      }

                      v127 = v389;
                      *(v376 + v389) = v259;
                    }

                    else
                    {
                    }

                    goto LABEL_201;
                  }

                  if ([v377 enableQueryAnnotationPipelineInPhotos])
                  {
                    v233 = MEMORY[0x1E69E7CC0];
                    if (*(*&__dst[64] + 16))
                    {
                      OUTLINED_FUNCTION_16_57();
                      v233 = v418[0];
                      OUTLINED_FUNCTION_11_60();
                      do
                      {
                        (v229)(v383, v127, v384);
                        OUTLINED_FUNCTION_28_31();
                        OUTLINED_FUNCTION_23_42();
                        if (v239)
                        {
                          OUTLINED_FUNCTION_15(v238);
                          OUTLINED_FUNCTION_116_0();
                          sub_1C716D6A4();
                          v233 = v418[0];
                        }

                        OUTLINED_FUNCTION_31_38();
                      }

                      while (!v240);
                      goto LABEL_180;
                    }
                  }

                  else
                  {
                    v233 = MEMORY[0x1E69E7CC0];
                    if (*(*&__dst[56] + 16))
                    {
                      OUTLINED_FUNCTION_16_57();
                      v233 = v418[0];
                      OUTLINED_FUNCTION_11_60();
                      do
                      {
                        (v229)(v385, v127, v386);
                        OUTLINED_FUNCTION_28_31();
                        OUTLINED_FUNCTION_23_42();
                        if (v239)
                        {
                          OUTLINED_FUNCTION_15(v243);
                          OUTLINED_FUNCTION_116_0();
                          sub_1C716D6A4();
                          v233 = v418[0];
                        }

                        OUTLINED_FUNCTION_31_38();
                      }

                      while (!v240);
LABEL_180:
                      v229 = v367;
                    }
                  }

                  sub_1C75504FC();
                  sub_1C7316F68(__dst);
                  v127 = v389;
                  if (*(v229 + 16))
                  {
                  }

                  else
                  {

                    v229 = 0;
                  }

                  v371 = v229;
                  *(v127 + v368) = v229;
                  goto LABEL_186;
                }

                v201 = sub_1C6F78124(v181, v180);
                v203 = v202;

                if ((v203 & 1) == 0)
                {
                  goto LABEL_148;
                }

                v204 = *(*(v200 + 56) + 8 * v201);
                sub_1C75504FC();

                v205 = sub_1C706D154(v204);
                v207 = v369;
                v206 = v370;
                v208 = sub_1C75506FC();
                v210 = sub_1C7009C30(v208, v209, v205);

                if ((v210 & 1) == 0)
                {
                  v127 = v389;
                  goto LABEL_150;
                }

                sub_1C7316F68(__dst);
                OUTLINED_FUNCTION_7_71();
                v211 = swift_allocObject();
                *(v211 + 16) = v167;
                OUTLINED_FUNCTION_30();
                v212 = swift_allocObject();
                *(v212 + 16) = v207;
                *(v212 + 24) = v206;
                sub_1C75504FC();
                v354 = sub_1C754FEEC();
                v213 = sub_1C75511BC();
                OUTLINED_FUNCTION_7_71();
                v214 = swift_allocObject();
                *(v214 + 16) = 32;
                OUTLINED_FUNCTION_7_71();
                v215 = swift_allocObject();
                *(v215 + 16) = 8;
                OUTLINED_FUNCTION_30();
                v216 = swift_allocObject();
                *(v216 + 16) = sub_1C734A660;
                *(v216 + 24) = v211;
                OUTLINED_FUNCTION_30();
                v217 = swift_allocObject();
                *(v217 + 16) = sub_1C734A780;
                *(v217 + 24) = v216;
                OUTLINED_FUNCTION_7_71();
                v218 = swift_allocObject();
                *(v218 + 16) = 32;
                OUTLINED_FUNCTION_7_71();
                v219 = swift_allocObject();
                *(v219 + 16) = 8;
                v220 = v213;
                OUTLINED_FUNCTION_30();
                v221 = swift_allocObject();
                *(v221 + 16) = sub_1C734A784;
                *(v221 + 24) = v212;
                OUTLINED_FUNCTION_30();
                v222 = swift_allocObject();
                *(v222 + 16) = sub_1C734A780;
                *(v222 + 24) = v221;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC60);
                v223 = swift_allocObject();
                *(v223 + 16) = v350;
                *(v223 + 32) = sub_1C734A788;
                *(v223 + 40) = v214;
                *(v223 + 48) = sub_1C734A788;
                *(v223 + 56) = v215;
                *(v223 + 64) = sub_1C734A77C;
                *(v223 + 72) = v217;
                *(v223 + 80) = sub_1C734A788;
                *(v223 + 88) = v218;
                v224 = v354;
                *(v223 + 96) = sub_1C734A788;
                *(v223 + 104) = v219;
                *(v223 + 112) = sub_1C734A77C;
                *(v223 + 120) = v222;
                swift_setDeallocating();
                sub_1C6FDE6C8();
                if (!os_log_type_enabled(v224, v220))
                {

                  v127 = v389;
LABEL_201:
                  v157 = v378;
                  goto LABEL_202;
                }

                v225 = swift_slowAlloc();
                *&v419[0] = swift_slowAlloc();
                *v225 = v344;
                v226 = 0xE600000000000000;
                v157 = v378;
                v227 = OUTLINED_FUNCTION_0_144();
                switch(v367)
                {
                  case 1:
                    v227 = OUTLINED_FUNCTION_0_144() & 0xFFFFFFFFFFFFLL | 0x6741000000000000;
                    v228 = 0x6570795465;
                    goto LABEL_223;
                  case 2:
                    v226 = 0xE400000000000000;
                    v227 = 1702125924;
                    break;
                  case 3:
                    OUTLINED_FUNCTION_188();
                    v226 = v267 + 20;
                    v227 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
                    break;
                  case 4:
                    OUTLINED_FUNCTION_437();
                    v226 = v264 + 1529;
                    v227 = OUTLINED_FUNCTION_4_82() & 0xFFFFFFFFFFFFLL | 0x6557000000000000;
                    break;
                  case 5:
                    v227 = 0x6E6F73616573;
                    break;
                  case 6:
                    v226 = 0xE800000000000000;
                    v266 = 1633906540;
                    goto LABEL_220;
                  case 7:
                    v227 = OUTLINED_FUNCTION_25_40();
                    v226 = 0xEF6E6F697461636FLL;
                    break;
                  case 8:
                    v226 = 0xE400000000000000;
                    v227 = 1952540791;
                    break;
                  case 9:
                    v227 = OUTLINED_FUNCTION_22_56();
                    v226 = 0xEB00000000746E65;
                    break;
                  case 10:
                    v227 = OUTLINED_FUNCTION_0_144() & 0xFFFFFFFFFFFFLL | 0x6C61000000000000;
                    v228 = 0x746E657645;
LABEL_223:
                    v226 = v228 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                    break;
                  case 11:
                    v227 = OUTLINED_FUNCTION_34_0() | 0x7469546300000000;
                    v226 = 0xEA0000000000656CLL;
                    break;
                  case 12:
                    OUTLINED_FUNCTION_207();
                    v226 = v265 + 1284;
                    v227 = OUTLINED_FUNCTION_34_0() | 0x7472416300000000;
                    break;
                  case 13:
                    OUTLINED_FUNCTION_437();
                    v226 = v268 + 6;
                    v227 = OUTLINED_FUNCTION_34_0() | 0x6E65476300000000;
                    break;
                  case 14:
                    v226 = 0xE400000000000000;
                    v227 = 1685024621;
                    break;
                  case 15:
                    v226 = 0xE800000000000000;
                    v266 = 1634891108;
LABEL_220:
                    v227 = v266 | 0x6E6F697400000000;
                    break;
                  case 16:
                    v227 = 0x706972547369;
                    break;
                  case 17:
                    v227 = OUTLINED_FUNCTION_26_42();
                    v226 = 0xE900000000000065;
                    break;
                  case 18:
                    OUTLINED_FUNCTION_188();
                    v226 = v269 + 13;
                    v227 = OUTLINED_FUNCTION_21_5();
                    break;
                  default:
                    break;
                }

                v270 = sub_1C6F765A4(v227, v226, v419);

                *(v225 + 4) = v270;
                *(v225 + 12) = 2080;
                *(v225 + 14) = sub_1C6F765A4(v369, v370, v419);
                _os_log_impl(&dword_1C6F5C000, v224, v220, "Skip this %s attribute (%s) because it is present in optionalized token list", v225, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_109();
                OUTLINED_FUNCTION_109();

                v127 = v389;
LABEL_202:
                v164 = (v379 + 1);
                if (v379 + 1 == v374)
                {
                  goto LABEL_226;
                }

                break;
              default:
                goto LABEL_149;
            }
          }
        }

LABEL_226:

        v271 = v369;
        v272 = v370;
        QueryGenerator.rewrite(annotatedQueryComponents:substring:range:)(v127, v369);
        v273 = *(v376 + v127);
        if (*(v273 + 16))
        {
          v274 = sub_1C754E2FC();
          OUTLINED_FUNCTION_12();
          v276 = v345;
          (*(v275 + 16))(v345, v127, v274);
          __swift_storeEnumTagSinglePayload(v276, 0, 1, v274);
          v277 = objc_allocWithZone(MEMORY[0x1E6978A78]);
          sub_1C75504FC();
          sub_1C75504FC();
          v278 = sub_1C7349A54(v271, v272, v276, v273);
          v279 = objc_allocWithZone(MEMORY[0x1E6978A50]);
          v379 = v278;
          v280 = [v279 initWithQueryToken_];
          v281 = *(v127 + v368);
          v138 = *(v127 + v342);
          sub_1C75504FC();
          v282 = v280;
          sub_1C75504FC();
          v283 = [v282 suggestion];
          if (v283)
          {
            v284 = v283;
            v285 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
            static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v285, __dst);
            sub_1C72D5B04();
            v287 = v286;

            goto LABEL_236;
          }

          v311 = [v282 QUToken];
          if (v311)
          {
            v316 = v311;
            v271 = v369;
            v272 = v370;
            sub_1C72D5FAC(v311, v369, v370, v281, v312, v313, v314, v315, v342, v343, v344, *(&v344 + 1), v345, v346, v347, *(&v347 + 1), v348, v349, v350, *(&v350 + 1));
            v287 = v317;

LABEL_236:
            v127 = v389;
          }

          else
          {
            v287 = MEMORY[0x1E69E7CC0];
            v127 = v389;
            v271 = v369;
            v272 = v370;
          }

          sub_1C72D533C();
          v319 = v318;
          v321 = v320;

          __dst[0] = 0;

          v406[0] = v319;
          v406[1] = v321;
          v406[2] = v271;
          v406[3] = v272;
          v407 = 0;
          v408 = v363;
          v409 = v364;
          v410 = __dst[0];
          v411 = v281;
          v412 = v138;
          v413 = v287;
          v414 = 0;
          v416 = 0;
          v417 = 0;
          v415 = 0;
          v322 = v375;
          sub_1C6FB0BCC();
          v323 = *(*v322 + 16);
          sub_1C6FB1410();

          v126 = v322;
          sub_1C745838C(v323, v406);
          sub_1C734A604(v127);
          goto LABEL_240;
        }

        v288 = sub_1C754FEEC();
        v138 = sub_1C755119C();
        if (os_log_type_enabled(v288, v138))
        {
          v289 = swift_slowAlloc();
          *v289 = 0;
          _os_log_impl(&dword_1C6F5C000, v288, v138, "Unable to create a QueryToken object because there is no suggestion nor metadata", v289, 2u);
          OUTLINED_FUNCTION_109();
        }

        sub_1C734A604(v127);
        v126 = v375;
      }

LABEL_240:
      v84 = v388;
      v140 = v365;
      v141 = v366;
    }
  }

  type metadata accessor for _NSRange(0);
  v377 = v82;
  v380 = 0;
  v83 = 0;
  v84 = MEMORY[0x1E69E7CC8];
  v85 = (v378 + 32);
  v387 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v83 >= *(v378 + 16))
    {
      goto LABEL_256;
    }

    memcpy(__dst, v85, 0x48uLL);
    v86 = *&__dst[16];
    v87 = *&__dst[24] - *&__dst[16];
    if (__OFSUB__(*&__dst[24], *&__dst[16]))
    {
      break;
    }

    v382 = v85;
    v388 = v84;
    OUTLINED_FUNCTION_30_37();
    sub_1C6F6E5B4(v380);
    v88 = v387;
    swift_isUniquelyReferenced_nonNull_native();
    *&v419[0] = v88;
    OUTLINED_FUNCTION_29_35();
    OUTLINED_FUNCTION_31_1();
    if (__OFADD__(v91, v92))
    {
      goto LABEL_258;
    }

    v93 = v89;
    v94 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC50);
    v95 = OUTLINED_FUNCTION_27_42();
    v96 = *&v419[0];
    if (v95)
    {
      v97 = OUTLINED_FUNCTION_29_35();
      if ((v94 & 1) != (v98 & 1))
      {
        goto LABEL_270;
      }

      v93 = v97;
    }

    if ((v94 & 1) == 0)
    {
      OUTLINED_FUNCTION_2_27(v96 + 8 * (v93 >> 6));
      v100 = (v99 + 16 * v93);
      *v100 = v86;
      v100[1] = v87;
      *(*(v96 + 56) + 8 * v93) = MEMORY[0x1E69E7CC0];
      v101 = *(v96 + 16);
      v102 = __OFADD__(v101, 1);
      v103 = v101 + 1;
      if (v102)
      {
        goto LABEL_263;
      }

      *(v96 + 16) = v103;
    }

    v104 = *(v96 + 56);
    v105 = *(v104 + 8 * v93);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v104 + 8 * v93) = v105;
    v387 = v96;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6FB2420();
      v105 = v128;
      *(v104 + 8 * v93) = v128;
    }

    v108 = *(v105 + 16);
    v107 = *(v105 + 24);
    v381 = v83;
    if (v108 >= v107 >> 1)
    {
      OUTLINED_FUNCTION_15(v107);
      OUTLINED_FUNCTION_116_0();
      sub_1C6FB2420();
      v105 = v129;
      *(v104 + 8 * v93) = v129;
    }

    v110 = *&__dst[32];
    v109 = *&__dst[40];
    *(v105 + 16) = v108 + 1;
    memcpy((v105 + 72 * v108 + 32), __dst, 0x48uLL);
    OUTLINED_FUNCTION_30_37();
    sub_1C75504FC();
    v111 = v388;
    swift_isUniquelyReferenced_nonNull_native();
    *&v419[0] = v111;
    OUTLINED_FUNCTION_29_35();
    OUTLINED_FUNCTION_31_1();
    if (__OFADD__(v114, v115))
    {
      goto LABEL_259;
    }

    v116 = v112;
    v117 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC58);
    if (sub_1C7551A2C())
    {
      v118 = OUTLINED_FUNCTION_29_35();
      if ((v117 & 1) != (v119 & 1))
      {
        goto LABEL_270;
      }

      v116 = v118;
    }

    v84 = *&v419[0];
    if (v117)
    {
      v120 = (*(*&v419[0] + 56) + 16 * v116);
      *v120 = v110;
      v120[1] = v109;
    }

    else
    {
      OUTLINED_FUNCTION_2_27(*&v419[0] + 8 * (v116 >> 6));
      v122 = (v121 + 16 * v116);
      *v122 = v86;
      v122[1] = v87;
      v123 = (*(v84 + 56) + 16 * v116);
      *v123 = v110;
      v123[1] = v109;
      v124 = *(v84 + 16);
      v102 = __OFADD__(v124, 1);
      v125 = v124 + 1;
      if (v102)
      {
        goto LABEL_264;
      }

      *(v84 + 16) = v125;
    }

    v83 = v381 + 1;
    sub_1C7316F68(__dst);
    v85 = v382 + 72;
    v380 = sub_1C6F86C50;
    v126 = v375;
    v127 = v389;
    if (v379 == v83)
    {
      goto LABEL_62;
    }
  }

LABEL_257:
  __break(1u);
LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C73469F4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v138 = &v122 - v5;
  v141 = sub_1C754E2FC();
  v6 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v140 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1C754DF6C();
  v8 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v148 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  v133 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v143 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v147 = &v122 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v135 = &v122 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v134 = &v122 - v17;
  v18 = *a1;
  v19 = a1[1];
  v20 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v24 = (v21 + 63) >> 6;
  v25 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v25 = *a1;
  }

  v26 = 7;
  if (((v19 >> 60) & ((v18 & 0x800000000000000) == 0)) != 0)
  {
    v26 = 11;
  }

  v151 = v26 | (v25 << 16);
  v152 = v18;
  v142 = v8;
  v146 = (v8 + 32);
  v137 = (v6 + 16);
  v136 = (v6 + 8);
  v150 = a2;
  sub_1C75504FC();
  v27 = 0;
  v132 = xmmword_1C75604F0;
  v139 = xmmword_1C755BAB0;
  v149 = MEMORY[0x1E69E7CC0];
  while (v23)
  {
LABEL_13:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v27 << 6);
    v31 = (*(v150 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    v34 = *(*(v150 + 56) + 8 * v30);
    sub_1C755090C();
    if ((v35 & 1) == 0)
    {
      if (__OFADD__(v33, v32))
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        return;
      }

      sub_1C755090C();
      if ((v36 & 1) == 0)
      {
        v145 = v32;
        v37 = v34;
        sub_1C75504FC();
        v38 = sub_1C75507EC();
        if (v39 & 1) != 0 || (v40 = v38, sub_1C75504FC(), v41 = sub_1C75507EC(), (v42))
        {
LABEL_33:
        }

        else
        {
          if (v41 >> 14 < v40 >> 14)
          {
            goto LABEL_74;
          }

          v43 = sub_1C755098C();
          v131 = MEMORY[0x1CCA5CC40](v43);
          v45 = v44;

          v46 = [v37 categoriesType];
          if ((v46 - 1) < 3)
          {
            goto LABEL_28;
          }

          if (v46 == 4)
          {
            v48 = 1;
          }

          else
          {
            if (v46 != 7 && v46 != 9)
            {
              if (v46 != 13)
              {
                if (v46 != 44)
                {
                  goto LABEL_32;
                }

                v48 = 8;
                goto LABEL_31;
              }

LABEL_28:
              v48 = 4;
              goto LABEL_31;
            }

            v48 = 3;
          }

LABEL_31:
          v49 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
          if (!v49)
          {
LABEL_32:

            goto LABEL_33;
          }

          v50 = v49;
          v124 = sub_1C755068C();
          v123 = v51;

          v52 = v131;
          v127 = v37;
          v125 = v48;
          v126 = v45;
          if (v48 == 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC70);
            v56 = (*(v133 + 80) + 32) & ~*(v133 + 80);
            v129 = *(v133 + 72);
            v122 = swift_allocObject();
            *(v122 + 16) = v132;
            v57 = [v37 startDate];
            if (v57)
            {
              v58 = v57;
              v59 = v134;
              sub_1C754DF2C();

              v60 = v59;
              v61 = 0;
              v62 = v143;
            }

            else
            {
              v61 = 1;
              v62 = v143;
              v60 = v134;
            }

            v63 = (v122 + v56);
            v64 = 1;
            v65 = v60;
            __swift_storeEnumTagSinglePayload(v60, v61, 1, v144);
            v128 = v63;
            sub_1C6FF51C8(v65, v63);
            v66 = [v127 endDate];
            if (v66)
            {
              v67 = v66;
              v68 = v135;
              sub_1C754DF2C();

              v64 = 0;
            }

            else
            {
              v68 = v135;
            }

            v69 = v144;
            __swift_storeEnumTagSinglePayload(v68, v64, 1, v144);
            sub_1C6FF51C8(v68, v128 + v129);
            v70 = 0;
            v71 = 0;
            v72 = MEMORY[0x1E69E7CC0];
            do
            {
              LODWORD(v130) = v70;
              v73 = v147;
              sub_1C7033844(v128 + v71 * v129, v147);
              sub_1C6FF51C8(v73, v62);
              if (__swift_getEnumTagSinglePayload(v62, 1, v69) == 1)
              {
                sub_1C6FD7FC8(v62, &unk_1EC219230);
              }

              else
              {
                v74 = v62;
                v75 = *v146;
                (*v146)(v148, v74, v69);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_1C6FB3608(0, *(v72 + 16) + 1, 1, v72);
                  v72 = v78;
                }

                v77 = *(v72 + 16);
                v76 = *(v72 + 24);
                if (v77 >= v76 >> 1)
                {
                  sub_1C6FB3608(v76 > 1, v77 + 1, 1, v72);
                  v72 = v79;
                }

                *(v72 + 16) = v77 + 1;
                v69 = v144;
                v75((v72 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v77), v148, v144);
                v62 = v143;
              }

              v70 = 1;
              v71 = 1;
            }

            while ((v130 & 1) == 0);
            swift_setDeallocating();
            sub_1C6FDCAFC();
            sub_1C71BB320();
            v54 = v80;

            v55 = v126;
          }

          else if (v48 == 4)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
            v54 = swift_allocObject();
            *(v54 + 16) = v139;
            *(v54 + 56) = MEMORY[0x1E69E6158];
            *(v54 + 32) = v52;
            *(v54 + 40) = v45;
            v55 = v45;
            sub_1C75504FC();
          }

          else
          {
            if (v48 == 3 && (v53 = sub_1C71CCABC(v37)) != 0)
            {
              v54 = sub_1C71BA98C(v53);
            }

            else
            {
              v54 = MEMORY[0x1E69E7CC0];
            }

            v55 = v45;
          }

          v81 = v140;
          sub_1C754E2CC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC68);
          inited = swift_initStackObject();
          *(inited + 16) = v139;
          v83 = v123;
          *(inited + 32) = v124;
          *(inited + 40) = v83;
          *(inited + 48) = v54;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750);
          v130 = sub_1C75504DC();
          v84 = v138;
          v85 = v141;
          (*v137)(v138, v81, v141);
          __swift_storeEnumTagSinglePayload(v84, 0, 1, v85);
          v86 = objc_allocWithZone(MEMORY[0x1E6978A78]);
          sub_1C75504FC();
          v87 = sub_1C7349A54(v131, v55, v84, v130);
          sub_1C6F65BE8(0, &qword_1EDD0CDB0);
          v88 = v127;
          v128 = v87;
          v129 = v88;
          v89 = sub_1C734406C(v88, v87);
          v90 = [v89 suggestion];
          if (v90)
          {
            v91 = v90;
            v92 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
            static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v92, &v153);
            v130 = v89;
            sub_1C72D5B04();
            v94 = v93;

            v89 = v130;
          }

          else
          {
            v95 = [v89 QUToken];
            if (v95)
            {
              v100 = v95;
              sub_1C72D5FAC(v95, v131, v55, 0, v96, v97, v98, v99, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, *(&v132 + 1));
              v130 = v101;

              v94 = v130;
            }

            else
            {
              v94 = MEMORY[0x1E69E7CC0];
            }
          }

          sub_1C72D533C();
          v127 = v102;
          v125 = v103;

          v159 = 0;

          v156[0] = v153;
          *(v156 + 3) = *(&v153 + 3);
          LODWORD(v124) = v159;
          v155[0] = *v158;
          *(v155 + 3) = *&v158[3];
          v154[0] = *v157;
          *(v154 + 3) = *&v157[3];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v130 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C6FB3514();
            v149 = v111;
          }

          v105 = *(v149 + 16);
          if (v105 >= *(v149 + 24) >> 1)
          {
            sub_1C6FB3514();
            v149 = v112;
          }

          (*v136)(v140, v141);
          v106 = v149;
          *(v149 + 16) = v105 + 1;
          v107 = v106 + 120 * v105;
          v108 = v125;
          *(v107 + 32) = v127;
          *(v107 + 40) = v108;
          v109 = v126;
          *(v107 + 48) = v131;
          *(v107 + 56) = v109;
          *(v107 + 64) = 1;
          LODWORD(v109) = *(v156 + 3);
          *(v107 + 65) = v156[0];
          *(v107 + 68) = v109;
          v110 = v145;
          *(v107 + 72) = v33;
          *(v107 + 80) = v110;
          *(v107 + 88) = v124;
          LODWORD(v110) = *(v155 + 3);
          *(v107 + 89) = v155[0];
          *(v107 + 92) = v110;
          *(v107 + 96) = 0;
          *(v107 + 104) = 0;
          *(v107 + 112) = v130;
          *(v107 + 120) = 0;
          LODWORD(v110) = v154[0];
          *(v107 + 124) = *(v154 + 3);
          *(v107 + 121) = v110;
          *(v107 + 128) = 0;
          *(v107 + 136) = 0;
          *(v107 + 144) = 0;
        }
      }
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v28 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v28);
    ++v27;
    if (v23)
    {
      v27 = v28;
      goto LABEL_13;
    }
  }

  v113 = sub_1C754FEEC();
  v114 = sub_1C75511BC();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v153 = v116;
    *v115 = 136642819;
    v117 = sub_1C75504FC();
    v118 = MEMORY[0x1CCA5D090](v117, &type metadata for QueryToken);
    v120 = v119;

    v121 = sub_1C6F765A4(v118, v120, &v153);

    *(v115 + 4) = v121;
    _os_log_impl(&dword_1C6F5C000, v113, v114, "User grounded query tokens = %{sensitive}s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v116);
    MEMORY[0x1CCA5F8E0](v116, -1, -1);
    MEMORY[0x1CCA5F8E0](v115, -1, -1);
  }
}

uint64_t sub_1C734781C(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      v3 = 1936876912;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
    case 2:
      return 0x67416E6F73726570;
    case 3:
      return 1702125924;
    case 4:
      return 0x6144664F74726170;
    case 5:
      return 0x6557664F74726170;
    case 6:
      v3 = 1935762803;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
    case 7:
      v4 = 1633906540;
      goto LABEL_13;
    case 8:
      return 0x4C636972656E6567;
    case 9:
      return 1952540791;
    case 10:
      return 0x764563696C627570;
    case 11:
      return 0x6C616E6F73726570;
    case 12:
      return 0x746954636973756DLL;
    case 13:
      return 0x747241636973756DLL;
    case 14:
      return 0x6E6547636973756DLL;
    case 15:
      return 1685024621;
    case 16:
      v4 = 1634891108;
LABEL_13:
      result = v4 | 0x6E6F697400000000;
      break;
    case 17:
      result = 0x706972547369;
      break;
    case 18:
      result = 0x6D69546C6C417369;
      break;
    case 19:
      result = 0x6564724F74726F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7347A3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = v3;
    v7 = *(&unk_1F46A8858 + v4 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C75604F0;
    v9 = inited;
    v10 = 0xEC00000065636E61;
    v11 = 0x746E696175716361;
    switch(v7)
    {
      case 1:
        v10 = 0xE700000000000000;
        v12 = 0x6568746F7262;
        goto LABEL_6;
      case 2:
        v10 = 0xE500000000000000;
        v11 = 0x646C696863;
        break;
      case 3:
        v11 = 0xD000000000000015;
        v10 = 0x80000001C7596B70;
        break;
      case 4:
        v10 = 0xE800000000000000;
        v14 = 0x6B726F776F63;
        goto LABEL_17;
      case 5:
        v10 = 0xE800000000000000;
        v14 = 0x746867756164;
LABEL_17:
        v11 = v14 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 6:
        v11 = 0xD000000000000013;
        v10 = 0x80000001C7596BA0;
        break;
      case 7:
        v10 = 0xE600000000000000;
        v11 = 0x796C696D6166;
        break;
      case 8:
        v10 = 0xE600000000000000;
        v13 = 1752457574;
        goto LABEL_22;
      case 9:
        v10 = 0xE600000000000000;
        v11 = 0x646E65697266;
        break;
      case 10:
        v11 = 0xD000000000000010;
        v10 = 0x80000001C7596BD0;
        break;
      case 11:
        v10 = 0xE200000000000000;
        v11 = 25965;
        break;
      case 12:
        v11 = 0x726568746F6DLL;
        v10 = 0xE600000000000000;
        break;
      case 13:
        v10 = 0xE600000000000000;
        v11 = 0x746E65726170;
        break;
      case 14:
        v10 = 0xE700000000000000;
        v12 = 0x656E74726170;
LABEL_6:
        v11 = v12 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 15:
        v10 = 0xE300000000000000;
        v11 = 7237491;
        break;
      case 16:
        v10 = 0xE600000000000000;
        v13 = 1953720691;
LABEL_22:
        v11 = v13 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 17:
        v10 = 0xE300000000000000;
        v11 = 7367030;
        break;
      default:
        break;
    }

    *(inited + 32) = v11;
    *(inited + 40) = v10;
    LOBYTE(v59[0]) = v7;
    *(inited + 48) = StoryPersonRelationshipType.pluralValue.getter();
    *(v9 + 56) = v15;
    v16 = *(v5 + 16);
    if (__OFADD__(v16, 2))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v17 = *(v5 + 24) >> 1, v17 < v16 + 2))
    {
      sub_1C6FB1814();
      v5 = v18;
      v17 = *(v18 + 24) >> 1;
    }

    if (v17 - *(v5 + 16) < 2)
    {
      goto LABEL_53;
    }

    swift_arrayInitWithCopy();

    v19 = *(v5 + 16);
    v20 = __OFADD__(v19, 2);
    v21 = v19 + 2;
    if (v20)
    {
      goto LABEL_54;
    }

    *(v5 + 16) = v21;
    v3 = 1;
    v4 = 1u;
    if (v6)
    {
      v59[0] = sub_1C75506FC();
      v59[1] = v22;
      MEMORY[0x1EEE9AC00](v59[0]);
      v23 = sub_1C70735F4();

      if (v23)
      {
        sub_1C75504FC();
        v24 = sub_1C754FEEC();
        v25 = sub_1C755117C();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v59[0] = v27;
          *v26 = 136642819;
          *(v26 + 4) = sub_1C6F765A4(a1, a2, v59);
          _os_log_impl(&dword_1C6F5C000, v24, v25, "Person not disambiguated because the substring '%{sensitive}s' refers to a relationship group, not an individual", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x1CCA5F8E0](v27, -1, -1);
          MEMORY[0x1CCA5F8E0](v26, -1, -1);
        }

        return MEMORY[0x1E69E7CC0];
      }

      v29 = *(a3 + 16);
      v30 = MEMORY[0x1E69E7CC8];
      v31 = a3 + 96;
      if (v29)
      {
        do
        {
          v58 = v29;
          v32 = *(v31 - 64);
          v33 = *(v31 - 56);
          v34 = *(v31 - 16);
          swift_bridgeObjectRetain_n();
          sub_1C75504FC();
          swift_bridgeObjectRetain_n();
          sub_1C75504FC();
          sub_1C75504FC();
          swift_isUniquelyReferenced_nonNull_native();
          v59[0] = v30;
          v35 = sub_1C6F78124(v32, v33);
          if (__OFADD__(v30[2], (v36 & 1) == 0))
          {
            goto LABEL_55;
          }

          v37 = v35;
          v38 = v36;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
          if (sub_1C7551A2C())
          {
            v39 = sub_1C6F78124(v32, v33);
            if ((v38 & 1) != (v40 & 1))
            {
              goto LABEL_57;
            }

            v37 = v39;
          }

          if (v38)
          {

            v30 = v59[0];
            *(*(v59[0] + 56) + 8 * v37) = v34;
          }

          else
          {
            v30 = v59[0];
            *(v59[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
            v41 = (v30[6] + 16 * v37);
            *v41 = v32;
            v41[1] = v33;
            *(v30[7] + 8 * v37) = v34;

            v42 = v30[2];
            v20 = __OFADD__(v42, 1);
            v43 = v42 + 1;
            if (v20)
            {
              goto LABEL_56;
            }

            v30[2] = v43;
          }

          v29 = v58 - 1;
          v31 += 72;
        }

        while (v58 != 1);
      }

      v44 = *(v55 + *(type metadata accessor for QueryGenerator() + 24));
      if ([objc_opt_self() enableQueryAnnotationPipelineInPhotos])
      {
        v45 = sub_1C6FE3768(0x55556E6F73726570, 0xEA00000000004449, v30);
        if (v45)
        {
          v46 = v45;

LABEL_50:
          v28 = sub_1C7348BB4(v46);

          return v28;
        }

        sub_1C6FE3768(0x614E6E6F73726570, 0xEA0000000000656DLL, v30);

        v51 = objc_opt_self();
        v48 = sub_1C755065C();
        v49 = sub_1C7550B3C();

        v50 = [v51 performDisambiguationForPerson:v48 usingGroundedNames:v49 photoLibrary:v44];
      }

      else
      {
        v47 = objc_opt_self();
        v48 = sub_1C755065C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        v49 = sub_1C755048C();

        v50 = [v47 performDisambiguationForPersonName:v48 expansionStringValuesByCSAttributedEntityType:v49 photoLibrary:v44];
      }

      v52 = v50;

      v46 = sub_1C7550B5C();
      goto LABEL_50;
    }
  }

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
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7348240()
{
  v1 = objc_opt_self();
  v2 = sub_1C755065C();
  v3 = sub_1C7550B3C();
  v4 = [v1 performDisambiguationForLocationName:v2 expansionStringValues:v3 allowedSearchIndexCategories:0 photoLibrary:*(v0 + *(type metadata accessor for QueryGenerator() + 24))];

  sub_1C6F65BE8(0, &qword_1EDD06918);
  sub_1C71AFF48();
  v5 = sub_1C7550F8C();

  v41 = MEMORY[0x1E69E7CD0];
  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C7550FEC();
    v5 = v42;
    v6 = v43;
    v8 = v44;
    v7 = v45;
    v9 = v46;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);
    sub_1C75504FC();
    v7 = 0;
  }

  v13 = (v8 + 64) >> 6;
  v35 = v5;
  v36 = v6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v7;
    v15 = v9;
    v16 = v7;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_24:
      sub_1C6F61E88();

      *&v40[0] = sub_1C71CDA68(v41);
      sub_1C75504FC();
      sub_1C7348ACC(v40, sub_1C7422D44, &type metadata for GroundedLocation, sub_1C701BF68, sub_1C70190D8);

      return *&v40[0];
    }

    while (1)
    {
      v38 = v17;
      v37 = [v18 matchType];
      v20 = [v18 text];
      v21 = sub_1C755068C();
      v23 = v22;

      v24 = [v18 normalizedText];
      v25 = sub_1C755068C();
      v27 = v26;

      v28 = sub_1C734A718(v18);
      v30 = v29;
      if (v29)
      {
        v31 = v28;
        v32 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v32 = v28 & 0xFFFFFFFFFFFFLL;
        }

        if (!v32)
        {

          v31 = 0;
          v30 = 0;
        }
      }

      else
      {
        v31 = 0;
      }

      *&v40[0] = v21;
      *(&v40[0] + 1) = v23;
      *&v39[0] = 8236;
      *(&v39[0] + 1) = 0xE200000000000000;
      sub_1C6FB5E8C();
      v33 = sub_1C755152C();
      v47[0] = v21;
      v47[1] = v23;
      v47[2] = v25;
      v47[3] = v27;
      v47[4] = v33;
      v47[5] = v31;
      v47[6] = v30;
      v47[7] = v37;
      sub_1C70F4DB8(v39, v47);

      v40[0] = v39[0];
      v40[1] = v39[1];
      v40[2] = v39[2];
      v40[3] = v39[3];
      sub_1C7080348(v40);
      v7 = v16;
      v9 = v38;
      v5 = v35;
      v6 = v36;
      if ((v35 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_1C75516FC();
      if (v19)
      {
        *&v39[0] = v19;
        swift_dynamicCast();
        v18 = *&v40[0];
        v16 = v7;
        v17 = v9;
        if (*&v40[0])
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_24;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C7348660@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  if (qword_1EC213FB0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC21A140;
  v6 = *algn_1EC21A148;
  sub_1C75504FC();
  sub_1C754E2CC();
  v7 = sub_1C754E2FC();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750);
  v8 = sub_1C75504DC();
  objc_allocWithZone(MEMORY[0x1E6978A78]);
  sub_1C75504FC();
  v9 = sub_1C7349A54(v5, v6, v4, v8);
  v10 = [objc_allocWithZone(MEMORY[0x1E6978A50]) initWithQueryToken_];
  v11 = [v10 suggestion];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v13, &v27 + 7);
    sub_1C72D5B04();
  }

  else
  {
    v15 = [v10 QUToken];
    if (!v15)
    {
      v20 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v12 = v15;
    sub_1C72D5FAC(v15, v5, v6, 0, v16, v17, v18, v19, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, vars0, vars8);
  }

  v20 = v14;

LABEL_8:
  sub_1C72D533C();
  v22 = v21;
  v24 = v23;

  LOBYTE(v28) = 1;

  v26 = v28;
  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v26;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v20;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_1C73488F8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0x7473726966;
  if (v3 != 1)
  {
    v5 = 1953718636;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701736302;
  }

  if (*a1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2172D0);
  v8 = *(type metadata accessor for QueryTokenSuggestion(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C755BAB0;
  *(v10 + v9) = v3;
  type metadata accessor for QueryTokenCategoryType(0);
  swift_storeEnumTagMultiPayload();
  sub_1C72D533C();
  v12 = v11;
  v14 = v13;

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v10;
  *(a2 + 88) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  return result;
}

uint64_t sub_1C7348ACC(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1C7349B7C(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1C7348B68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 16);
  return sub_1C75504FC();
}

uint64_t sub_1C7348BB4(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C7348C0C(a1, v1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

void sub_1C7348C0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    *a3 = a1;
    sub_1C75504FC();
    return;
  }

  sub_1C6F65BE8(0, &qword_1EDD100F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1C75504FC();
  v6 = sub_1C706D154(v5);
  v7 = sub_1C734A678(v6, ObjCClassFromMetadata);
  if (!v7)
  {
    goto LABEL_49;
  }

  v8 = v7;
  v9 = a2 + *(type metadata accessor for QueryGenerator() + 24);
  v10 = *(v9 + 8);
  v11 = *v9;

  v12 = [v11 librarySpecificFetchOptions];
  [v12 setSharingFilter_];

  v95 = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1C755192C();
  sub_1C755196C();
  sub_1C755197C();
  sub_1C755193C();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_1C755192C();
  sub_1C755196C();
  sub_1C755197C();
  sub_1C755193C();
  sub_1C7082AAC(v95, v12);
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C75604F0;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1C6F6D524();
  v15 = MEMORY[0x1E69E6530];
  v16 = MEMORY[0x1E69E65A8];
  strcpy((v13 + 32), "verifiedType");
  *(v13 + 45) = 0;
  *(v13 + 46) = -5120;
  *(v13 + 96) = v15;
  *(v13 + 104) = v16;
  *(v13 + 64) = v14;
  *(v13 + 72) = -2;
  v17 = sub_1C755112C();
  [v12 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C755BAB0;
  *(v18 + 32) = sub_1C755068C();
  *(v18 + 40) = v19;
  sub_1C6FCA0EC(v18, v12);
  [v12 setIsExclusivePredicate_];
  v20 = objc_opt_self();
  sub_1C71CD85C(v8);
  v21 = sub_1C7550B3C();

  v87 = v20;
  v81 = v12;
  v22 = [v20 fetchPersonsWithLocalIdentifiers:v21 options:v12];

  v23 = [v22 fetchedObjects];
  if (!v23)
  {
LABEL_46:
    v77 = sub_1C754FEEC();
    v78 = sub_1C755117C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1C6F5C000, v77, v78, "No tombstoned person uuids, immediately return the current grounded person uuids", v79, 2u);
      MEMORY[0x1CCA5F8E0](v79, -1, -1);
    }

LABEL_49:
    *a3 = a1;
    sub_1C75504FC();
    return;
  }

  v24 = sub_1C7550B5C();

  v25 = sub_1C6FB6304();
  v26 = 0;
  v93 = MEMORY[0x1E69E7CC0];
  while (v25 != v26)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1CCA5DDD0](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return;
    }

    v29 = v27;
    v30 = [v29 uuid];
    if (v30)
    {
      v31 = v30;
      v32 = sub_1C755068C();
      v90 = v33;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v93 = v36;
      }

      v34 = *(v93 + 16);
      if (v34 >= *(v93 + 24) >> 1)
      {
        sub_1C6FB1814();
        v93 = v37;
      }

      *(v93 + 16) = v34 + 1;
      v35 = v93 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v90;
      v26 = v28;
    }

    else
    {

      ++v26;
    }
  }

  v38 = v93;
  if (!*(v93 + 16))
  {

    goto LABEL_46;
  }

  v39 = sub_1C75504FC();
  sub_1C706D154(v39);
  sub_1C74C3924();
  v95 = v40;
  v85 = *(v93 + 16);
  if (v85)
  {
    v41 = 0;
    v84 = *v9;
    v83 = *(v9 + 8);
    v42 = MEMORY[0x1E69E7CC0];
    while (v41 < *(v38 + 16))
    {
      v43 = (v93 + 32 + 16 * v41);
      v45 = *v43;
      v44 = v43[1];
      sub_1C75504FC();
      v46 = v84;

      v47 = [v46 librarySpecificFetchOptions];
      [v47 setSharingFilter_];

      v94[0] = v42;
      sub_1C755195C();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      sub_1C7082AAC(v94[0], v47);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1C755BAB0;
      *(v48 + 32) = sub_1C755068C();
      *(v48 + 40) = v49;
      sub_1C6FCA0EC(v48, v47);
      v91 = v45;
      v50 = sub_1C755065C();
      v51 = [v87 fetchFinalMergeTargetPersonsForPersonWithUUID:v50 options:v47];

      v52 = [v51 fetchedObjects];
      if (v52)
      {
        v88 = v47;
        v89 = v41;
        v53 = sub_1C7550B5C();

        v54 = sub_1C6FB6304();
        v55 = 0;
        v56 = MEMORY[0x1E69E7CC0];
        while (v54 != v55)
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x1CCA5DDD0](v55, v53);
          }

          else
          {
            if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v57 = *(v53 + 8 * v55 + 32);
          }

          v58 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v59 = v57;
          v60 = [v59 uuid];
          if (v60)
          {
            v61 = v60;
            v62 = sub_1C755068C();
            v86 = v63;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB1814();
              v56 = v66;
            }

            v64 = *(v56 + 16);
            if (v64 >= *(v56 + 24) >> 1)
            {
              sub_1C6FB1814();
              v56 = v67;
            }

            *(v56 + 16) = v64 + 1;
            v65 = v56 + 16 * v64;
            *(v65 + 32) = v62;
            *(v65 + 40) = v86;
            v55 = v58;
          }

          else
          {

            ++v55;
          }
        }

        sub_1C75504FC();
        sub_1C75504FC();
        v68 = sub_1C754FEEC();
        v69 = sub_1C75511BC();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v94[0] = v71;
          *v70 = 136315394;
          v72 = sub_1C6F765A4(v91, v44, v94);

          *(v70 + 4) = v72;
          *(v70 + 12) = 2080;
          v73 = MEMORY[0x1CCA5D090](v56, MEMORY[0x1E69E6158]);
          v75 = sub_1C6F765A4(v73, v74, v94);

          *(v70 + 14) = v75;
          _os_log_impl(&dword_1C6F5C000, v68, v69, "Tombstoned person uuid = %s, final merge target person uuids = %s", v70, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v71, -1, -1);
          MEMORY[0x1CCA5F8E0](v70, -1, -1);
        }

        else
        {
        }

        v38 = v93;
        v47 = v88;
        v41 = v89;
        sub_1C73978C4(v56);
      }

      else
      {

        v38 = v93;
      }

      v42 = MEMORY[0x1E69E7CC0];
      ++v41;

      if (v41 == v85)
      {

        v76 = v95;
        goto LABEL_51;
      }
    }

    goto LABEL_56;
  }

  v76 = v40;

LABEL_51:
  v80 = sub_1C71CD85C(v76);

  *a3 = v80;
}

void *sub_1C7349674@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, 0x78uLL);
  v6 = __dst[5];
  v7 = __dst[6];
  v8 = __dst[7];
  memcpy(__srca, __src, sizeof(__srca));
  sub_1C6FCA6E4(__dst, v13);

  __srca[12] = 0;
  __srca[13] = 0;

  __srca[14] = 0;
  if ((v8 & 1) == 0)
  {
    v9 = sub_1C6FE1538(v6, v7, a2);
    if (v9)
    {
      v10 = v9;
      memcpy(v13, __dst, sizeof(v13));
      sub_1C7349790(v13, v10, &v12);
      QueryToken.disambiguate(withUserSuggestion:categoryType:)();
    }
  }

  return memcpy(a3, __srca, 0x78uLL);
}

uint64_t sub_1C7349790@<X0>(void *__src@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v5 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
  static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v5, v19);
  v6 = LOBYTE(v19[0]);
  if (qword_1EDD0E0A0 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  v9 = memcpy((inited + 32), __dst, 0x78uLL);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C6FCA6E4(__dst, v19);
  v10 = sub_1C707351C();
  swift_setDeallocating();
  result = sub_1C6FDC98C();
  if (v10)
  {
    sub_1C6FCA6E4(__dst, v19);
    v12 = sub_1C754FEEC();
    v13 = sub_1C755117C();
    sub_1C6FDD548(__dst);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v14 = 136643075;
      *(v14 + 4) = sub_1C6F765A4(__dst[2], __dst[3], v19);
      *(v14 + 12) = 2080;
      v16 = QueryTokenCategoryTypeString.rawValue.getter();
      v18 = sub_1C6F765A4(v16, v17, v19);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "Personal event query token %{sensitive}s is disambiguated to %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v15, -1, -1);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }

    result = sub_1C6F9FCE4(v6, 3);
    if (result)
    {
      LOBYTE(v6) = 11;
    }
  }

  *a3 = v6;
  return result;
}

id sub_1C7349A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1C755065C();

  v9 = sub_1C754E2FC();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v9) != 1)
  {
    v10 = sub_1C754E28C();
    (*(*(v9 - 8) + 8))(a3, v9);
  }

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219750);
    v11 = sub_1C755048C();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 initWithText:v8 entityCategoryTypes:v10 metadata:v11];

  return v12;
}

uint64_t sub_1C7349B7C(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1C7550BBC();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

char *sub_1C7349C88(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 120 * a3 - 120;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if ((*(v10 + 176) & 1) == 0 && (*(v10 + 56) & 1) == 0 && *(v10 + 160) >= *(v10 + 40))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, (v10 + 120), sizeof(__dst));
        memcpy((v10 + 120), v10, 0x78uLL);
        result = memcpy(v10, __dst, 0x78uLL);
        v10 -= 120;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 120;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C7349D70(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v76 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 >= v5)
      {
        goto LABEL_28;
      }

      v9 = *a3;
      v10 = *a3 + 120 * v6;
      v11 = (*(v10 + 56) & 1) != 0 ? 1 : *(v9 + 120 * v8 + 56) | (*(v10 + 40) < *(v9 + 120 * v8 + 40));
      v6 = v5 <= v8 + 2 ? v8 + 2 : v5;
      v12 = 120 * v8;
      v13 = (v9 + 120 * v8 + 296);
      for (i = 2; ; ++i)
      {
        if (v8 + i >= v5)
        {
          goto LABEL_19;
        }

        if ((*v13 & 1) == 0 && (*(v13 - 120) & 1) == 0)
        {
          break;
        }

        if ((v11 & 1) == 0)
        {
          v6 = v8 + i;
          goto LABEL_28;
        }

LABEL_17:
        v13 += 120;
      }

      if ((v11 ^ (*(v13 - 2) >= *(v13 - 17))))
      {
        goto LABEL_17;
      }

      v6 = v8 + i;
LABEL_19:
      if (v11)
      {
        if (v6 >= v8)
        {
          if (v8 < v6)
          {
            v15 = 120 * v6 - 120;
            v16 = v6;
            v17 = v8;
            do
            {
              if (v17 != --v16)
              {
                v18 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, (v18 + v12), sizeof(__dst));
                memmove((v18 + v12), (v18 + v15), 0x78uLL);
                memcpy((v18 + v15), __dst, 0x78uLL);
              }

              ++v17;
              v15 -= 120;
              v12 += 120;
            }

            while (v17 < v16);
            v5 = a3[1];
          }

          goto LABEL_28;
        }

LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        break;
      }

LABEL_28:
      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_119;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_120;
          }

          if (v8 + a4 >= v5)
          {
            v19 = v5;
          }

          else
          {
            v19 = v8 + a4;
          }

          if (v19 < v8)
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (v6 != v19)
          {
            v20 = v7;
            v21 = *a3;
            v22 = *a3 + 120 * v6 - 120;
            v23 = v8 - v6;
            do
            {
              v24 = v23;
              v25 = v22;
              do
              {
                if ((*(v25 + 176) & 1) == 0 && (*(v25 + 56) & 1) == 0 && *(v25 + 160) >= *(v25 + 40))
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_122;
                }

                memcpy(__dst, (v25 + 120), sizeof(__dst));
                memcpy((v25 + 120), v25, 0x78uLL);
                memcpy(v25, __dst, 0x78uLL);
                v25 -= 120;
              }

              while (!__CFADD__(v24++, 1));
              ++v6;
              v22 += 120;
              --v23;
            }

            while (v6 != v19);
            v6 = v19;
            v7 = v20;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v69;
      }

      v27 = v7[2];
      v28 = v27 + 1;
      if (v27 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v70;
      }

      v7[2] = v28;
      v29 = v7 + 4;
      v30 = &v7[2 * v27 + 4];
      *v30 = v8;
      v30[1] = v6;
      v73 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v27)
      {
        while (1)
        {
          v31 = v28 - 1;
          v32 = &v29[2 * v28 - 2];
          v33 = &v7[2 * v28];
          if (v28 >= 4)
          {
            break;
          }

          if (v28 == 3)
          {
            v34 = v7[4];
            v35 = v7[5];
            v44 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            v37 = v44;
LABEL_67:
            if (v37)
            {
              goto LABEL_108;
            }

            v49 = *v33;
            v48 = v33[1];
            v50 = __OFSUB__(v48, v49);
            v51 = v48 - v49;
            v52 = v50;
            if (v50)
            {
              goto LABEL_111;
            }

            v53 = v32[1];
            v54 = v53 - *v32;
            if (__OFSUB__(v53, *v32))
            {
              goto LABEL_114;
            }

            if (__OFADD__(v51, v54))
            {
              goto LABEL_116;
            }

            if (v51 + v54 >= v36)
            {
              if (v36 < v54)
              {
                v31 = v28 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          if (v28 < 2)
          {
            goto LABEL_110;
          }

          v56 = *v33;
          v55 = v33[1];
          v44 = __OFSUB__(v55, v56);
          v51 = v55 - v56;
          v52 = v44;
LABEL_82:
          if (v52)
          {
            goto LABEL_113;
          }

          v58 = *v32;
          v57 = v32[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_115;
          }

          if (v59 < v51)
          {
            goto LABEL_96;
          }

LABEL_89:
          if (v31 - 1 >= v28)
          {
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
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (!*a3)
          {
            goto LABEL_124;
          }

          v63 = v7;
          v64 = &v29[2 * v31 - 2];
          v65 = *v64;
          v66 = &v29[2 * v31];
          v67 = v66[1];
          sub_1C734A410((*a3 + 120 * *v64), (*a3 + 120 * *v66), (*a3 + 120 * v67), v73);
          if (v4)
          {
            goto LABEL_101;
          }

          if (v67 < v65)
          {
            goto LABEL_103;
          }

          v68 = v63[2];
          if (v31 > v68)
          {
            goto LABEL_104;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v31 >= v68)
          {
            goto LABEL_105;
          }

          v28 = v68 - 1;
          memmove(&v29[2 * v31], v66 + 2, 16 * (v68 - 1 - v31));
          v7 = v63;
          v63[2] = v68 - 1;
          if (v68 <= 2)
          {
            goto LABEL_96;
          }
        }

        v38 = &v29[2 * v28];
        v39 = *(v38 - 8);
        v40 = *(v38 - 7);
        v44 = __OFSUB__(v40, v39);
        v41 = v40 - v39;
        if (v44)
        {
          goto LABEL_106;
        }

        v43 = *(v38 - 6);
        v42 = *(v38 - 5);
        v44 = __OFSUB__(v42, v43);
        v36 = v42 - v43;
        v37 = v44;
        if (v44)
        {
          goto LABEL_107;
        }

        v45 = v33[1];
        v46 = v45 - *v33;
        if (__OFSUB__(v45, *v33))
        {
          goto LABEL_109;
        }

        v44 = __OFADD__(v36, v46);
        v47 = v36 + v46;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v47 >= v41)
        {
          v61 = *v32;
          v60 = v32[1];
          v44 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v44)
          {
            goto LABEL_117;
          }

          if (v36 < v62)
          {
            v31 = v28 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_67;
      }

LABEL_96:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v76 = v7;
        goto LABEL_99;
      }
    }

    __break(1u);
    goto LABEL_127;
  }

LABEL_99:
  if (!*a1)
  {
LABEL_127:
    __break(1u);
    return;
  }

  sub_1C734A2D8(&v76, *a1, a3);
LABEL_101:
}

uint64_t sub_1C734A2D8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C734A410((*a3 + 120 * *v4), (*a3 + 120 * *v9), (*a3 + 120 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C734A410(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 120;
  v9 = (a3 - a2) / 120;
  if (v8 < v9)
  {
    sub_1C741E370(a1, (a2 - a1) / 120, a4);
    v10 = &v4[120 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v14 = v7;
        goto LABEL_32;
      }

      if ((v6[56] & 1) != 0 || (v4[56] & 1) != 0 || *(v6 + 5) < *(v4 + 5))
      {
        break;
      }

      v12 = v4;
      v13 = v7 == v4;
      v4 += 120;
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 += 120;
    }

    v12 = v6;
    v13 = v7 == v6;
    v6 += 120;
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v7, v12, 0x78uLL);
    goto LABEL_10;
  }

  sub_1C741E370(a2, (a3 - a2) / 120, a4);
  v10 = &v4[120 * v9];
LABEL_17:
  v14 = v6;
  for (v5 -= 120; v10 > v4 && v6 > v7; v5 -= 120)
  {
    if ((*(v10 - 64) & 1) != 0 || (*(v6 - 64) & 1) != 0 || *(v10 - 10) < *(v6 - 10))
    {
      v6 -= 120;
      if (v5 + 120 != v14)
      {
        memmove(v5, v14 - 120, 0x78uLL);
      }

      goto LABEL_17;
    }

    if (v10 != v5 + 120)
    {
      memmove(v5, v10 - 120, 0x78uLL);
    }

    v10 -= 120;
  }

LABEL_32:
  v16 = (v10 - v4) / 120;
  if (v14 != v4 || v14 >= &v4[120 * v16])
  {
    memmove(v14, v4, 120 * v16);
  }

  return 1;
}

__n128 sub_1C734A5D8@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t sub_1C734A604(uint64_t a1)
{
  v2 = type metadata accessor for QueryGenerator.AnnotatedQueryComponents();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C734A678(uint64_t a1, void *a2)
{
  v3 = sub_1C7550F7C();

  v4 = [a2 localIdentifiersWithUUIDs_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1C7550F8C();

  return v5;
}

uint64_t sub_1C734A718(void *a1)
{
  v1 = [a1 lookupIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

id sub_1C734A78C(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 count] < 1)
  {
    return a1;
  }

  sub_1C6FDEC1C();
  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1C75504DC();
  v68.n128_u64[0] = [a1 count];
  if ((v68.n128_u64[0] & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    v61 = a2;
    v62 = a3;
    v65 = v7;
    v66 = a1;
    v64 = v3;
    for (i = 0; v68.n128_u64[0] != i; ++i)
    {
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v18 = [v66 objectAtIndexedSubscript_];
      v19 = sub_1C6FCA214(v18);
      if (!v20)
      {
        goto LABEL_40;
      }

      v21 = v19;
      v22 = v20;
      v23 = v18;
      swift_isUniquelyReferenced_nonNull_native();
      v71 = v8;
      v24 = sub_1C6F78124(v21, v22);
      if (__OFADD__(v8[2], (v25 & 1) == 0))
      {
        goto LABEL_37;
      }

      v26 = v24;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215188);
      if (sub_1C7551A2C())
      {
        v28 = sub_1C6F78124(v21, v22);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_41;
        }

        v26 = v28;
      }

      if (v27)
      {

        v8 = v71;
        v30 = *(v71 + 56);
        v31 = *(v30 + 8 * v26);
        *(v30 + 8 * v26) = v23;
      }

      else
      {
        v8 = v71;
        *(v71 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v32 = (v8[6] + 16 * v26);
        *v32 = v21;
        v32[1] = v22;
        *(v8[7] + 8 * v26) = v23;

        v33 = v8[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_38;
        }

        v8[2] = v35;
      }
    }

    v71 = MEMORY[0x1E69E7CC0];
    v36 = *(v61 + 16);
    if (v36)
    {
      v65 = MEMORY[0x1E69E7CC0];
      v37 = (v61 + 40);
      v38 = &qword_1EC214000;
      v16.n128_u64[0] = 136315138;
      v68 = v16;
      do
      {
        v40 = *(v37 - 1);
        v39 = *v37;
        v41 = v8[2];
        sub_1C75504FC();
        if (v41 && (v42 = sub_1C6F78124(v40, v39), (v43 & 1) != 0))
        {
          v44 = v42;

          v45 = *(v8[7] + 8 * v44);
          MEMORY[0x1CCA5D040]();
          if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          sub_1C7550BEC();

          v65 = v71;
        }

        else
        {
          if (v38[6] != -1)
          {
            OUTLINED_FUNCTION_5_77();
            swift_once();
          }

          v46 = sub_1C754FF1C();
          __swift_project_value_buffer(v46, qword_1EC21AC78);
          sub_1C75504FC();
          v47 = sub_1C754FEEC();
          v48 = sub_1C755119C();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v70[0] = v50;
            *v49 = v68.n128_u32[0];
            v51 = sub_1C6F765A4(v40, v39, v70);

            *(v49 + 4) = v51;
            _os_log_impl(&dword_1C6F5C000, v47, v48, "Asset %s not found in the fetch result and is part of the orderedUUIDs", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v50);
            OUTLINED_FUNCTION_109();
            v38 = &qword_1EC214000;
            OUTLINED_FUNCTION_109();
          }

          else
          {
          }
        }

        v37 += 2;
        --v36;
      }

      while (v36);
    }

    sub_1C71BA830(v65, v16, v9, v10, v11, v12, v13, v14, v15, v60, v61, v62, v64, v65, v66, v68.n128_i64[0], v68.n128_i64[1], v69, v70[0], v70[1], v71, v72, v73, v74, v75);
    OUTLINED_FUNCTION_98_5();

    v52 = [v67 fetchType];
    if (v52)
    {
      v53 = v52;
      sub_1C755068C();
    }

    v55 = [v67 fetchPropertySets];
    if (v55)
    {
      v56 = v55;
      sub_1C7550F8C();
    }

    objc_allocWithZone(MEMORY[0x1E69788E0]);
    v57 = v63;
    sub_1C71C8A5C();
    v59 = v58;

    return v59;
  }

  return result;
}

uint64_t sub_1C734ACA0()
{
  sub_1C75504FC();
  v1 = sub_1C755097C();
  sub_1C755083C();
  return v1;
}

void sub_1C734AD20()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v14 = v13 - v12;
  static FreeformStoryDiagnosticsUtils.temporaryDiagnosticsDirectory(_:)();
  if (v0)
  {
LABEL_10:
    OUTLINED_FUNCTION_125();
  }

  else
  {
    v30 = v14;
    v31 = v9;
    v32 = v3;
    v15 = v2 + 64;
    OUTLINED_FUNCTION_11();
    v18 = v17 & v16;
    v20 = (v19 + 63) >> 6;
    v29 = *MEMORY[0x1E6968F70];
    sub_1C75504FC();
    v21 = 0;
    v28 = v20;
    if (!v18)
    {
      goto LABEL_4;
    }

    do
    {
      v22 = v21;
LABEL_7:
      (*(v5 + 104))(v31, v29, v32);
      sub_1C75504FC();
      v23 = OUTLINED_FUNCTION_2_56();
      sub_1C6FEB1B0(v23, v24);
      sub_1C6FB5E8C();
      sub_1C754DD1C();
      (*(v5 + 8))(v31, v32);

      sub_1C754DE1C();
      v18 &= v18 - 1;
      OUTLINED_FUNCTION_7_72();
      v25(v30, v10);
      v26 = OUTLINED_FUNCTION_2_56();
      sub_1C6FC1640(v26, v27);
      v21 = v22;
      v20 = v28;
      v15 = v2 + 64;
    }

    while (v18);
LABEL_4:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        goto LABEL_10;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C734B044()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21AC78);
  __swift_project_value_buffer(v0, qword_1EC21AC78);
  return sub_1C754FEFC();
}

void static FreeformStoryDiagnosticsUtils.diagnosticFiles(for:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_78();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v35 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = sub_1C70CAC04(v2);
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    sub_1C734B404();
    if (v0)
    {
    }

    else if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {

      sub_1C7030CDC(v9, &qword_1EC215BD8);
    }

    else
    {
      v34 = v12;
      v24 = v9;
      v25 = *(v12 + 32);
      v25(v18, v24, v10);
      sub_1C734BB18(v21, v22, v6);
      v26 = v25;
      v27 = v34;

      if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
      {
        sub_1C7030CDC(v6, &qword_1EC215BD8);
      }

      else
      {
        v30 = v35;
        v31 = v26;
        v26(v35, v6, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217270);
        v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1C755BAB0;
        v31(v33 + v32, v30, v10);
      }

      v28 = OUTLINED_FUNCTION_18_52();
      v29(v28);
    }
  }

  else
  {
    sub_1C734E3A4();
    swift_allocError();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 2;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C734B404()
{
  OUTLINED_FUNCTION_124();
  v94 = v0;
  v2 = v1;
  v4 = v3;
  v97 = *MEMORY[0x1E69E9840];
  v5 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  v18 = v16 - v17;
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v22 = v76 - v21;
  v23 = [v2 photoLibrary];
  if (v23)
  {
    v86 = v4;
    v92 = v5;
    v93 = v18;
    v95 = 0;
    v24 = v23;
    v25 = [v23 urlForApplicationDataFolderIdentifier:11 error:&v95];
    v26 = v95;
    if (v25)
    {
      v27 = v25;
      v88 = v14;
      v89 = v12;
      v90 = v11;
      v87 = v24;
      sub_1C754DCCC();
      v28 = v26;

      v29 = [v2 localIdentifier];
      v85 = sub_1C755068C();
      v91 = v30;

      v31 = v22;
      if (qword_1EDD0D280 != -1)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v95 = qword_1EDD0D288;
        v96 = unk_1EDD0D290;
        v33 = v7 + 13;
        v32 = v7[13];
        v34 = v90;
        v84 = *MEMORY[0x1E6968F70];
        v35 = v92;
        v83 = v32;
        v32(v90);
        v36 = sub_1C6FB5E8C();
        sub_1C75504FC();
        v37 = v93;
        sub_1C754DD1C();
        v38 = v7[1];
        v39 = v35;
        v40 = v7 + 1;
        v38(v34, v39);

        v41 = v94;
        v42 = sub_1C754DD6C();
        v7 = v41;
        if (v41)
        {

          v44 = v89;
          v45 = *(v88 + 8);
          v45(v37, v89);
          v45(v31, v44);
          goto LABEL_9;
        }

        v48 = v43;
        v82 = v31;
        v78 = v33;
        v79 = v36;
        v80 = v38;
        v49 = v42;
        sub_1C754D73C();
        OUTLINED_FUNCTION_137();
        v50 = sub_1C754D72C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217588);
        OUTLINED_FUNCTION_4_83();
        sub_1C734E400(v51, v52);
        sub_1C754D71C();
        v76[1] = v50;
        v77 = v49;
        v76[0] = v40;
        v53 = v95 + 64;
        OUTLINED_FUNCTION_11();
        v31 = v55 & v54;
        v57 = (v56 + 63) >> 6;
        v59 = v58;
        v60 = sub_1C75504FC();
        v61 = 0;
        v81 = v48;
        v62 = v93;
        if (v31)
        {
          break;
        }

LABEL_12:
        while (1)
        {
          v63 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            break;
          }

          if (v63 >= v57)
          {

            sub_1C6FC1640(v77, v48);

            v67 = v62;
            v68 = v89;
            v69 = *(v88 + 8);
            v69(v67, v89);
            v69(v82, v68);
            v70 = 1;
            v71 = v86;
            goto LABEL_19;
          }

          v31 = *&v53[8 * v63];
          ++v61;
          if (v31)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_22:
        OUTLINED_FUNCTION_6_84();
      }

      while (1)
      {
        v63 = v61;
LABEL_15:
        v94 = v76;
        v64 = *(v59 + 48) + ((v63 << 10) | (16 * __clz(__rbit64(v31))));
        v66 = *v64;
        v65 = *(v64 + 8);
        v95 = v85;
        v96 = v91;
        MEMORY[0x1EEE9AC00](v60);
        v76[-2] = &v95;
        sub_1C75504FC();
        sub_1C75504FC();
        if (sub_1C70735F4())
        {
          break;
        }

        v31 &= v31 - 1;

        v61 = v63;
        v62 = v93;
        v48 = v81;
        if (!v31)
        {
          goto LABEL_12;
        }
      }

      v95 = v66;
      v96 = v65;
      v72 = v90;
      v73 = v92;
      v83(v90, v84, v92);
      v71 = v86;
      v74 = v82;
      sub_1C754DD1C();

      sub_1C6FC1640(v77, v81);

      v80(v72, v73);
      v68 = v89;
      v75 = *(v88 + 8);
      v75(v93, v89);
      v75(v74, v68);

      v70 = 0;
LABEL_19:
      __swift_storeEnumTagSinglePayload(v71, v70, 1, v68);
    }

    else
    {
      v47 = v95;
      sub_1C754DBEC();

      swift_willThrow();
    }
  }

  else
  {
    sub_1C734E3A4();
    swift_allocError();
    *v46 = 1;
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = 2;
    swift_willThrow();
  }

LABEL_9:
  OUTLINED_FUNCTION_125();
}

void sub_1C734BB18(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v69 = a2;
  v59 = a1;
  v52 = a3;
  v72[2] = *MEMORY[0x1E69E9840];
  v66 = sub_1C754DC1C();
  v53 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C754DD2C();
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v64 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = v51 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v68 = v51 - v10;
  v60 = sub_1C754DF6C();
  v11 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v15 = sub_1C754DC8C();
  v72[0] = 0;
  v16 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:0 error:v72];

  v17 = v72[0];
  if (v16)
  {
    v18 = sub_1C7550B5C();
    v19 = v17;

    v61 = *(v18 + 16);
    if (v61)
    {
      v62 = v18;
      strcpy(v72, "StoryDiagnose");
      HIWORD(v72[1]) = -4864;
      if (v69)
      {
        v70 = 95;
        v71 = 0xE100000000000000;
        MEMORY[0x1CCA5CD70](v59);
        MEMORY[0x1CCA5CD70](v70, v71);
      }

      v20 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      sub_1C7069CE4(0xD000000000000011, 0x80000001C75AB700, v20);
      v70 = 95;
      v71 = 0xE100000000000000;
      sub_1C754DF5C();
      v21 = sub_1C754DECC();
      (*(v11 + 8))(v13, v60);
      v22 = [v20 stringFromDate_];

      v23 = sub_1C755068C();
      v25 = v24;

      MEMORY[0x1CCA5CD70](v23, v25);

      MEMORY[0x1CCA5CD70](v70, v71);

      v26 = NSTemporaryDirectory();
      sub_1C755068C();

      sub_1C734ACA0();

      v27 = sub_1C755065C();
      v70 = 0;
      LODWORD(v25) = [v14 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:&v70];

      if (v25)
      {
        v60 = v5;
        v51[1] = v3;
        v28 = v70;
        sub_1C754DC5C();

        v29 = 0;
        v56 = v67 + 16;
        v59 = v67 + 8;
        v55 = *MEMORY[0x1E6968F70];
        v54 = (v53 + 13);
        ++v53;
        v30 = v62;
        v57 = v20;
        v58 = v14;
        v31 = v65;
        while (1)
        {
          if (v61 == v29)
          {

            v48 = v52;
            v49 = v60;
            (*(v67 + 32))(v52, v68, v60);
            __swift_storeEnumTagSinglePayload(v48, 0, 1, v49);
            return;
          }

          if (v29 >= *(v30 + 16))
          {
            __break(1u);
          }

          v32 = v67;
          v33 = v29;
          v34 = v63;
          v35 = v60;
          (*(v67 + 16))(v63, v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v29, v60);
          v69 = sub_1C754DC8C();
          v36 = sub_1C754DC7C();
          v38 = v37;
          v39 = *(v32 + 8);
          v39(v34, v35);
          v70 = v36;
          v71 = v38;
          v40 = v66;
          (*v54)(v31, v55, v66);
          sub_1C6FB5E8C();
          v41 = v64;
          sub_1C754DD1C();
          (*v53)(v31, v40);

          v42 = sub_1C754DC8C();
          v43 = v35;
          v14 = v58;
          v39(v41, v43);
          v70 = 0;
          v44 = v69;
          LODWORD(v38) = [v14 copyItemAtURL:v69 toURL:v42 error:&v70];

          v45 = v70;
          if (!v38)
          {
            break;
          }

          v29 = v33 + 1;
          v30 = v62;
          v20 = v57;
        }

        v50 = v45;

        sub_1C754DBEC();

        swift_willThrow();
        v39(v68, v60);
      }

      else
      {
        v47 = v70;

        sub_1C754DBEC();

        swift_willThrow();
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v52, 1, 1, v5);
    }
  }

  else
  {
    v46 = v72[0];
    sub_1C754DBEC();

    swift_willThrow();
  }
}

void sub_1C734C3B4()
{
  OUTLINED_FUNCTION_124();
  v28 = v1;
  v29 = v2;
  v34 = v3;
  v35[2] = *MEMORY[0x1E69E9840];
  sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v30 = v5;
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v32 = v10;
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v27 = v12 - v11;
  OUTLINED_FUNCTION_37_3();
  v13 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v19 = v18 - v17;
  v20 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v21 = NSTemporaryDirectory();
  sub_1C755068C();

  sub_1C754DF5C();
  sub_1C734E650(&qword_1EDD0F9D8, MEMORY[0x1E6969530]);
  sub_1C7551D8C();
  (*(v15 + 8))(v19, v13);
  sub_1C734ACA0();

  OUTLINED_FUNCTION_294();
  v22 = sub_1C755065C();
  v35[0] = 0;
  v23 = [v20 createDirectoryAtPath:v22 withIntermediateDirectories:1 attributes:0 error:v35];

  if (!v23)
  {
    v26 = v35[0];
    OUTLINED_FUNCTION_98_5();

    sub_1C754DBEC();

    swift_willThrow();
LABEL_6:

    goto LABEL_7;
  }

  v24 = v35[0];
  OUTLINED_FUNCTION_294();
  sub_1C754DC5C();

  v35[0] = v28;
  v35[1] = v29;
  (*(v30 + 104))(v8, *MEMORY[0x1E6968F70], v31);
  sub_1C6FB5E8C();
  sub_1C754DD1C();
  (*(v30 + 8))(v8, v31);
  sub_1C754DE1C();
  if (!v0)
  {
    (*(v32 + 8))(v27, v33);
    goto LABEL_6;
  }

  v25 = *(v32 + 8);
  v25(v34, v33);
  v25(v27, v33);
LABEL_7:
  OUTLINED_FUNCTION_125();
}

void static FreeformStoryDiagnosticsUtils.cleanUpDiagnosticsFiles(photoLibrary:oldestAllowedDate:)()
{
  OUTLINED_FUNCTION_124();
  v93 = v1;
  v3 = v2;
  v105[4] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v97 = &v89 - v5;
  OUTLINED_FUNCTION_37_3();
  v98 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v92 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v95 = (v9 - v8);
  OUTLINED_FUNCTION_37_3();
  v101 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  v100 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v89 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v89 - v21;
  v23 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v105[0] = 0;
  v24 = [v3 urlForApplicationDataFolderIdentifier:11 error:v105];
  v25 = v105[0];
  if (v24)
  {
    v26 = v24;
    v99 = v23;
    v89 = v0;
    sub_1C754DCCC();
    v27 = v25;

    v28 = [objc_opt_self() defaultManager];
    v29 = sub_1C754DC8C();
    v105[0] = 0;
    v30 = [v28 contentsOfDirectoryAtURL:v29 includingPropertiesForKeys:0 options:0 error:v105];

    v31 = v105[0];
    if (v30)
    {
      v90 = v22;
      v32 = v101;
      v33 = sub_1C7550B5C();
      v34 = v31;
      v35 = v32;

      v36 = 0;
      v37 = *(v33 + 16);
      v103 = (v11 + 8);
      v104 = v11 + 16;
      v94 = (v11 + 32);
      v102 = MEMORY[0x1E69E7CC0];
      while (v37 != v36)
      {
        if (v36 >= *(v33 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
        }

        v38 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v39 = *(v11 + 72);
        v40 = OUTLINED_FUNCTION_15_67();
        v41(v40);
        v42 = v35;
        if (sub_1C754DC6C())
        {
          v91 = *v94;
          (v91)(v96, v19, v35);
          v44 = v102;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v44;
          v105[0] = v44;
          if (isUniquelyReferenced_nonNull_native)
          {
            v35 = v42;
          }

          else
          {
            sub_1C716EBF4(0, v44[2] + 1, 1);
            v35 = v101;
            v46 = v105[0];
          }

          v48 = v46[2];
          v47 = v46[3];
          v49 = (v48 + 1);
          if (v48 >= v47 >> 1)
          {
            v102 = (v48 + 1);
            sub_1C716EBF4(v47 > 1, v48 + 1, 1);
            v35 = v101;
            v49 = v102;
            v46 = v105[0];
          }

          ++v36;
          v46[2] = v49;
          v102 = v46;
          (v91)(v46 + v38 + v48 * v39, v96, v35);
        }

        else
        {
          OUTLINED_FUNCTION_7_72();
          v43(v19, v35);
          ++v36;
        }
      }

      v50 = 0;
      v51 = v102;
      v52 = v102[2];
      v96 = *MEMORY[0x1E696A308];
      v91 = (v92 + 4);
      ++v92;
      v53 = v90;
      v54 = v99;
      v94 = v52;
      while (1)
      {
        if (v52 == v50)
        {
          OUTLINED_FUNCTION_7_72();
          v81(v53, v35);

          goto LABEL_34;
        }

        if (v50 >= v51[2])
        {
          goto LABEL_37;
        }

        v55 = OUTLINED_FUNCTION_15_67();
        v56(v55);
        sub_1C754DCEC();
        v57 = sub_1C755065C();

        v105[0] = 0;
        v58 = [v54 attributesOfItemAtPath:v57 error:v105];

        v59 = v105[0];
        if (!v58)
        {
          v82 = v105[0];

          sub_1C754DBEC();

          swift_willThrow();
          v83 = v53;
          v84 = *v103;
          v85 = v101;
          (*v103)(v100, v101);
          v84(v83, v85);
          goto LABEL_34;
        }

        type metadata accessor for FileAttributeKey(0);
        sub_1C734E650(&qword_1EC214698, type metadata accessor for FileAttributeKey);
        v35 = sub_1C75504AC();
        v60 = v59;

        if (!v35[2])
        {
          break;
        }

        v61 = sub_1C6FC33F0(v96);
        if ((v62 & 1) == 0)
        {
          break;
        }

        sub_1C6F774EC(v35[7] + 32 * v61, v105);

        v63 = v97;
        v64 = v98;
        v65 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v63, v65 ^ 1u, 1, v64);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v64);
        v54 = v99;
        v67 = v100;
        v51 = v102;
        if (EnumTagSinglePayload == 1)
        {
          v68 = OUTLINED_FUNCTION_3_93();
          v69(v68);
          v52 = v94;
LABEL_23:
          sub_1C7030CDC(v63, &unk_1EC219230);
          goto LABEL_24;
        }

        v35 = v95;
        (*v91)(v95, v63, v64);
        if (sub_1C754DEDC())
        {
          v71 = sub_1C754DC8C();
          v105[0] = 0;
          v72 = [v54 removeItemAtURL:v71 error:v105];

          v35 = v105[0];
          if (!v72)
          {
            v86 = v105[0];

            sub_1C754DBEC();

            swift_willThrow();
            (*v92)(v95, v64);
            v87 = *v103;
            v88 = v101;
            (*v103)(v67, v101);
            v87(v90, v88);
            goto LABEL_34;
          }

          v73 = *v92;
          v74 = v105[0];
          v73(v95, v64);
          v75 = OUTLINED_FUNCTION_3_93();
          v76(v75);
          v53 = v90;
          v51 = v102;
        }

        else
        {
          (*v92)(v35, v64);
          v77 = OUTLINED_FUNCTION_3_93();
          v78(v77);
        }

        v52 = v94;
LABEL_24:
        ++v50;
      }

      OUTLINED_FUNCTION_7_72();
      v35 = v101;
      v70(v100, v101);
      v63 = v97;
      __swift_storeEnumTagSinglePayload(v97, 1, 1, v98);
      v54 = v99;
      v51 = v102;
      goto LABEL_23;
    }

    v80 = v105[0];
    OUTLINED_FUNCTION_98_5();
    sub_1C754DBEC();

    swift_willThrow();
    (*(v11 + 8))(v22, v101);
  }

  else
  {
    v79 = v105[0];
    sub_1C754DBEC();

    swift_willThrow();
  }

LABEL_34:
  OUTLINED_FUNCTION_125();
}

void static FreeformStoryDiagnosticsUtils.cleanUpIndexFile(photoLibrary:oldestAllowedDate:)()
{
  OUTLINED_FUNCTION_124();
  v40 = v1;
  v3 = v2;
  v42[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  v41 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78();
  v42[0] = 0;
  v13 = [v3 urlForApplicationDataFolderIdentifier:11 error:{v42, MEMORY[0x1EEE9AC00](v12).n128_f64[0]}];
  v14 = v42[0];
  if (v13)
  {
    v15 = v13;
    sub_1C754DCCC();
    v16 = v14;

    if (qword_1EDD0D280 != -1)
    {
      OUTLINED_FUNCTION_6_84();
    }

    v42[0] = qword_1EDD0D288;
    v42[1] = unk_1EDD0D290;
    v6[13](v10, *MEMORY[0x1E6968F70], v4);
    sub_1C6FB5E8C();
    sub_1C75504FC();
    sub_1C754DD1C();
    v17 = (v6 + 1);
    v18 = OUTLINED_FUNCTION_55_0();
    v19(v18);

    sub_1C754DD6C();
    if (!v0)
    {
      sub_1C754D73C();
      OUTLINED_FUNCTION_137();
      v20 = sub_1C754D72C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217588);
      OUTLINED_FUNCTION_4_83();
      sub_1C734E400(v21, v22);
      OUTLINED_FUNCTION_2_56();
      sub_1C754D71C();
      v39 = v20;
      v37 = v42[0];
      v28 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v29 = sub_1C755065C();
      [v28 setDateFormat_];

      v36[1] = v36;
      MEMORY[0x1EEE9AC00](v30);
      v38 = v28;
      v31 = v40;
      v36[-2] = v28;
      v36[-1] = v31;
      v32 = sub_1C734E008(v37, sub_1C734E3F8, &v36[-4]);

      OUTLINED_FUNCTION_37_3();
      sub_1C754D7AC();
      OUTLINED_FUNCTION_137();
      v33 = sub_1C754D79C();
      v40 = v32;
      v42[0] = v32;
      sub_1C734E400(&qword_1EDD06C68, sub_1C70E1230);
      v17 = sub_1C754D78C();
      v35 = v34;
      v37 = v33;

      sub_1C754DE1C();

      sub_1C6FC1640(v17, v35);

      v23 = OUTLINED_FUNCTION_55_0();
      sub_1C6FC1640(v23, v24);
    }

    v25 = OUTLINED_FUNCTION_17_68();
    v17(v25);
    v26 = OUTLINED_FUNCTION_294();
    v17(v26);
  }

  else
  {
    v27 = v42[0];
    OUTLINED_FUNCTION_98_5();
    sub_1C754DBEC();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C734D56C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_1C754DF6C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = sub_1C755065C();
  v13 = [a4 dateFromString_];

  if (v13)
  {
    sub_1C754DF2C();

    (*(v6 + 32))(v11, v8, v5);
    v14 = sub_1C754DEDC();
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void static FreeformStoryDiagnosticsUtils.temporaryDiagnosticsDirectory(_:)()
{
  OUTLINED_FUNCTION_124();
  v20 = v0;
  v2 = v1;
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0xD000000000000011, 0x80000001C75AB700, v10);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v12 = NSTemporaryDirectory();
  sub_1C755068C();

  v21[0] = v20;
  v21[1] = v2;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](95, 0xE100000000000000);
  sub_1C754DF5C();
  v13 = sub_1C754DECC();
  (*(v5 + 8))(v9, v3);
  v14 = [v10 stringFromDate_];

  v15 = sub_1C755068C();
  v17 = v16;

  MEMORY[0x1CCA5CD70](v15, v17);

  sub_1C734ACA0();

  OUTLINED_FUNCTION_294();
  v18 = sub_1C755065C();
  v21[0] = 0;
  LOBYTE(v9) = [v11 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:v21];

  v19 = v21[0];
  if (v9)
  {
    OUTLINED_FUNCTION_294();
    sub_1C754DC5C();
  }

  else
  {
    OUTLINED_FUNCTION_98_5();

    sub_1C754DBEC();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_125();
}

void static FreeformStoryDiagnosticsUtils.debugAlbumInfo(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v53 = v3;
  v54 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v52 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v16 = v14 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = (&v49 - v19);
  v21 = [v2 localIdentifier];
  v22 = sub_1C755068C();
  v24 = v23;

  sub_1C734B404();
  if (v0)
  {
  }

  else
  {
    v49 = v22;
    v50 = 0;
    v25 = v53;
    v26 = v54;
    v51 = v16;
    v56 = v20;
    v27 = v52;
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1C7030CDC(v10, &qword_1EC215BD8);
      sub_1C734E3A4();
      swift_allocError();
      *v28 = v49;
      *(v28 + 8) = v24;
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      *(v28 + 32) = 1;
      swift_willThrow();
    }

    else
    {

      v29 = v27;
      v30 = *(v27 + 32);
      v49 = v11;
      v30(v20, v10, v11);
      v55[0] = 0xD000000000000012;
      v55[1] = 0x80000001C75A4500;
      (*(v26 + 104))(v7, *MEMORY[0x1E6968F70], v25);
      sub_1C6FB5E8C();
      v31 = v51;
      sub_1C754DD1C();
      (*(v26 + 8))(v7, v25);
      v32 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
      sub_1C754DCDC();
      v33 = sub_1C755065C();

      v34 = [v32 fileExistsAtPath_];

      if (v34)
      {
        v35 = v50;
        sub_1C754DD6C();
        if (v35)
        {

          v36 = *(v29 + 8);
          v37 = v49;
          v36(v31, v49);
          v36(v56, v37);
        }

        else
        {
          sub_1C754DB8C();
          OUTLINED_FUNCTION_137();
          v45 = sub_1C754DB7C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FF0);
          sub_1C734E484();
          OUTLINED_FUNCTION_18_52();
          sub_1C754DB5C();

          v46 = OUTLINED_FUNCTION_55_0();
          sub_1C6FC1640(v46, v47);

          v48 = OUTLINED_FUNCTION_19_62();
          v56(v48);
          (v56)(v56, v45);
        }
      }

      else
      {
        if (qword_1EC214030 != -1)
        {
          OUTLINED_FUNCTION_5_77();
          swift_once();
        }

        v38 = sub_1C754FF1C();
        __swift_project_value_buffer(v38, qword_1EC21AC78);
        v39 = sub_1C754FEEC();
        v40 = sub_1C75511BC();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v55[0] = v42;
          *v41 = 136315138;
          *(v41 + 4) = sub_1C6F765A4(0xD000000000000012, 0x80000001C75A4500, v55);
          _os_log_impl(&dword_1C6F5C000, v39, v40, "Missing %s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v42);
          v31 = v51;
          OUTLINED_FUNCTION_109();
          v43 = v49;
          OUTLINED_FUNCTION_109();
        }

        else
        {

          v43 = v49;
        }

        v44 = *(v29 + 8);
        v44(v31, v43);
        v44(v56, v43);
      }
    }
  }

  OUTLINED_FUNCTION_125();
}

id FreeformStoryDiagnosticsUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FreeformStoryDiagnosticsUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FreeformStoryDiagnosticsUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FreeformStoryDiagnosticsUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FreeformStoryDiagnosticsUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1C734E008(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *), void *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1C734E314(v12, v8, v6, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v8, v9);
  sub_1C734E18C(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

void sub_1C734E18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  v25 = a3;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v25 + 56) + 16 * v13);
    v18 = v17[1];
    v24[0] = *v17;
    v24[1] = v18;
    sub_1C75504FC();
    sub_1C75504FC();
    LOBYTE(v18) = a4(v15, v16, v24);

    if (v18)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7484DDC(a1, a2, v22, v25);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C734E314(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C734E18C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_1C734E3A4()
{
  result = qword_1EC21AC90;
  if (!qword_1EC21AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AC90);
  }

  return result;
}

uint64_t sub_1C734E400(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217588);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C734E484()
{
  result = qword_1EC21AC98;
  if (!qword_1EC21AC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217FF0);
    sub_1C734E508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AC98);
  }

  return result;
}

unint64_t sub_1C734E508()
{
  result = qword_1EC21ACA0;
  if (!qword_1EC21ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21ACA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence29FreeformStoryDiagnosticsUtilsC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1C734E59C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_1C734E5DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C734E624(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1C734E650(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C734E698()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData____lazy_storage___storyTitleCategory;
  v2 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData____lazy_storage___storyTitleCategory);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData____lazy_storage___storyTitleCategory);
  }

  else
  {
    [objc_opt_self() generateNextStoryTitleStyleIndex];
    v4 = PFStoryTitleCategoryGenerateWithWrappedIndex();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id GenerativeMemoryPhotosGraphData.init(storyChapters:musicCuration:promptInformation:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  sub_1C754FEFC();
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData____lazy_storage___storyTitleCategory] = 0;
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_storyChapters] = a1;
  sub_1C70ED210(a2, &v3[OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_storyMusicCuration]);
  v3[OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_promptInformation] = v6;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for GenerativeMemoryPhotosGraphData();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1C734E890(a2);
  return v7;
}

uint64_t type metadata accessor for GenerativeMemoryPhotosGraphData()
{
  result = qword_1EDD0C9E0;
  if (!qword_1EDD0C9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C734E890(uint64_t a1)
{
  v2 = type metadata accessor for StoryMusicCuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C734E8EC()
{
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_storyChapters);
  v124 = v3 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v125 = v3;
  v126 = *(v3 + 16);
  while (v2 != v126)
  {
    if (v2 >= *(v125 + 16))
    {
      goto LABEL_78;
    }

    memcpy(__dst, (v124 + (v2 << 7)), 0x80uLL);
    if (__dst[14])
    {
      sub_1C6FBC6B8();
      swift_allocError();
      *v112 = 2;
      swift_willThrow();
    }

    v5 = __dst[13];
    sub_1C6FB7BB8(__dst, &v136);
    sub_1C6FBC70C(v5);
    v127 = v5;
    v6 = [v5 fetchedObjects];
    v129 = v4;
    if (v6)
    {
      v7 = v6;
      sub_1C6FDEC1C();
      v8 = sub_1C7550B5C();

      v9 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      v8 = MEMORY[0x1E69E7CC0];
    }

    v128 = v2 + 1;
    isUniquelyReferenced_nonNull_native = sub_1C6FB6304();
    v12 = isUniquelyReferenced_nonNull_native;
    v13 = 0;
    v14 = v8 & 0xC000000000000001;
    v131 = v9;
    while (v12 != v13)
    {
      if (v14)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x1CCA5DDD0](v13, v8);
      }

      else
      {
        if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        isUniquelyReferenced_nonNull_native = *(v8 + 8 * v13 + 32);
      }

      v15 = isUniquelyReferenced_nonNull_native;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v17 = sub_1C70CAC04(isUniquelyReferenced_nonNull_native);
      v19 = v18;

      ++v13;
      if (v19)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native)
        {
          v20 = v131;
        }

        else
        {
          sub_1C6FB1814();
          v20 = isUniquelyReferenced_nonNull_native;
        }

        v21 = *(v20 + 16);
        if (v21 >= *(v20 + 24) >> 1)
        {
          sub_1C6FB1814();
          v20 = isUniquelyReferenced_nonNull_native;
        }

        *(v20 + 16) = v21 + 1;
        v131 = v20;
        v22 = v20 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        v13 = v16;
      }
    }

    v23 = *(v131 + 16);
    v24 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v139 = MEMORY[0x1E69E7CC0];
      v25 = __dst[15];
      sub_1C716E748(0, v23, 0);
      v26 = v131;
      v27 = 0;
      v28 = v139;
      v29 = (v131 + 40);
      v130 = v23;
      while (v27 < *(v26 + 16))
      {
        v132 = v29;
        v133 = v27;
        v31 = *(v29 - 1);
        v30 = *v29;
        v32 = sub_1C755068C();
        v34 = v33;
        v137 = MEMORY[0x1E69E6158];
        *&v136 = v31;
        *(&v136 + 1) = v30;
        sub_1C6F9ED18(&v136, v135);
        *&v134 = v30;
        swift_bridgeObjectRetain_n();
        v35 = MEMORY[0x1E69E7CC8];
        swift_isUniquelyReferenced_nonNull_native();
        v36 = sub_1C6F78124(v32, v34);
        if (__OFADD__(v35[2], (v37 & 1) == 0))
        {
          goto LABEL_72;
        }

        v38 = v36;
        v39 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACB0);
        if (sub_1C7551A2C())
        {
          v40 = sub_1C6F78124(v32, v34);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_79;
          }

          v38 = v40;
        }

        if (v39)
        {

          v42 = v35;
          v43 = (v35[7] + 32 * v38);
          __swift_destroy_boxed_opaque_existential_1(v43);
          sub_1C6F9ED18(v135, v43);
        }

        else
        {
          v42 = v35;
          OUTLINED_FUNCTION_0_145(&v35[v38 >> 6]);
          v44 = (v35[6] + 16 * v38);
          *v44 = v32;
          v44[1] = v34;
          sub_1C6F9ED18(v135, (v35[7] + 32 * v38));
          v45 = v35[2];
          v46 = __OFADD__(v45, 1);
          v47 = v45 + 1;
          if (v46)
          {
            goto LABEL_73;
          }

          v35[2] = v47;
        }

        if (*(v25 + 16))
        {
          v48 = v134;
          v49 = sub_1C6F78124(v31, v134);
          if (v50)
          {
            v51 = (*(v25 + 56) + 40 * v49);
            v53 = *v51;
            v52 = v51[1];
            v54 = sub_1C755068C();
            v56 = v55;
            v137 = MEMORY[0x1E69E6448];
            LODWORD(v136) = v53;
            sub_1C6F9ED18(&v136, v135);
            swift_isUniquelyReferenced_nonNull_native();
            v57 = OUTLINED_FUNCTION_35_0();
            sub_1C6F78124(v57, v58);
            v60 = v59;
            if (__OFADD__(v42[2], (v59 & 1) == 0))
            {
              goto LABEL_74;
            }

            if (OUTLINED_FUNCTION_2_99())
            {
              v61 = OUTLINED_FUNCTION_35_0();
              v63 = sub_1C6F78124(v61, v62);
              if ((v60 & 1) != (v64 & 1))
              {
                goto LABEL_79;
              }

              v48 = v63;
            }

            if (v60)
            {

              v65 = v42;
              v48 = v42[7] + 32 * v48;
              __swift_destroy_boxed_opaque_existential_1(v48);
              sub_1C6F9ED18(v135, v48);
            }

            else
            {
              v65 = v42;
              OUTLINED_FUNCTION_0_145(&v42[v48 >> 6]);
              v66 = (v42[6] + 16 * v48);
              *v66 = v54;
              v66[1] = v56;
              sub_1C6F9ED18(v135, (v42[7] + 32 * v48));
              v67 = v42[2];
              v46 = __OFADD__(v67, 1);
              v68 = v67 + 1;
              if (v46)
              {
                goto LABEL_76;
              }

              v42[2] = v68;
            }

            v69 = sub_1C755068C();
            v71 = v70;
            v137 = MEMORY[0x1E69E6448];
            LODWORD(v136) = v52;
            sub_1C6F9ED18(&v136, v135);
            swift_isUniquelyReferenced_nonNull_native();
            v72 = OUTLINED_FUNCTION_35_0();
            sub_1C6F78124(v72, v73);
            v75 = v74;
            if (__OFADD__(v65[2], (v74 & 1) == 0))
            {
              goto LABEL_75;
            }

            if (OUTLINED_FUNCTION_2_99())
            {
              v76 = OUTLINED_FUNCTION_35_0();
              v78 = sub_1C6F78124(v76, v77);
              if ((v75 & 1) != (v79 & 1))
              {
                goto LABEL_79;
              }

              v48 = v78;
            }

            if (v75)
            {

              v42 = v65;
              v80 = (v65[7] + 32 * v48);
              __swift_destroy_boxed_opaque_existential_1(v80);
              sub_1C6F9ED18(v135, v80);
            }

            else
            {
              v42 = v65;
              OUTLINED_FUNCTION_0_145(&v65[v48 >> 6]);
              v81 = (v65[6] + 16 * v48);
              *v81 = v69;
              v81[1] = v71;
              sub_1C6F9ED18(v135, (v65[7] + 32 * v48));
              v82 = v65[2];
              v46 = __OFADD__(v82, 1);
              v83 = v82 + 1;
              if (v46)
              {
                goto LABEL_77;
              }

              v65[2] = v83;
            }
          }
        }

        v139 = v28;
        v85 = *(v28 + 16);
        v84 = *(v28 + 24);
        v26 = v131;
        v86 = v133;
        if (v85 >= v84 >> 1)
        {
          sub_1C716E748((v84 > 1), v85 + 1, 1);
          v86 = v133;
          v26 = v131;
          v28 = v139;
        }

        v27 = v86 + 1;
        *(v28 + 16) = v85 + 1;
        *(v28 + 8 * v85 + 32) = v42;
        v29 = v132 + 2;
        if (v130 == v27)
        {

          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
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
      result = sub_1C7551E4C();
      __break(1u);
      return result;
    }

    v28 = v24;
LABEL_57:
    v88 = __dst[2];
    v87 = __dst[3];
    sub_1C6FB7BB8(__dst, &v136);
    v1 = v123;
    v89 = sub_1C754FEEC();
    v90 = sub_1C755118C();
    sub_1C6FBC664(__dst);
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = v28;
      v93 = swift_slowAlloc();
      *&v136 = v93;
      *v91 = 136315138;
      sub_1C75504FC();
      v94 = sub_1C6F765A4(v88, v87, &v136);

      *(v91 + 4) = v94;
      _os_log_impl(&dword_1C6F5C000, v89, v90, "Highlight dictionary generated for chapter %s.", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      v95 = v93;
      v28 = v92;
      MEMORY[0x1CCA5F8E0](v95, -1, -1);
      MEMORY[0x1CCA5F8E0](v91, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C75604F0;
    *(inited + 32) = sub_1C755068C();
    *(inited + 40) = v97;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v88;
    *(inited + 56) = v87;
    *(inited + 80) = sub_1C755068C();
    *(inited + 88) = v98;
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACC0);
    *(inited + 96) = v28;
    sub_1C75504FC();
    v99 = sub_1C75504DC();
    v4 = v129;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB3B28();
      v4 = v101;
    }

    v100 = *(v4 + 16);
    if (v100 >= *(v4 + 24) >> 1)
    {
      sub_1C6FB3B28();
      v4 = v102;
    }

    sub_1C6FBC718(v127);
    sub_1C6FBC664(__dst);
    *(v4 + 16) = v100 + 1;
    *(v4 + 8 * v100 + 32) = v99;
    v2 = v128;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
  v103 = swift_initStackObject();
  v134 = xmmword_1C755BAA0;
  *(v103 + 16) = xmmword_1C755BAA0;
  *(v103 + 32) = sub_1C755068C();
  *(v103 + 40) = v104;
  *(v103 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACC0);
  *(v103 + 48) = v4;
  *(v103 + 80) = sub_1C755068C();
  *(v103 + 88) = v105;
  v106 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence31GenerativeMemoryPhotosGraphData_promptInformation);
  v107 = swift_initStackObject();
  *(v107 + 16) = xmmword_1C755BAB0;
  *(v107 + 32) = sub_1C755068C();
  *(v107 + 40) = v108;
  *(v107 + 72) = MEMORY[0x1E69E6370];
  *(v107 + 48) = v106;
  v109 = sub_1C75504DC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
  *(v103 + 120) = v13;
  *(v103 + 96) = v109;
  *(v103 + 128) = sub_1C755068C();
  *(v103 + 136) = v110;
  v111 = StoryMusicCuration.dictionaryForSavingToPHMemory()();
  *(v103 + 168) = v13;
  *(v103 + 144) = v111;
  v14 = sub_1C75504DC();
  isUniquelyReferenced_nonNull_native = sub_1C734F42C();
  if (v122)
  {
  }

LABEL_70:
  v114 = isUniquelyReferenced_nonNull_native;
  v115 = v11;
  v116 = swift_initStackObject();
  *(v116 + 16) = v134;
  *(v116 + 32) = sub_1C755068C();
  *(v116 + 40) = v117;
  v118 = sub_1C734E698();
  type metadata accessor for PFStoryTitleCategory(0);
  *(v116 + 72) = v119;
  *(v116 + 48) = v118;
  *(v116 + 80) = sub_1C755068C();
  *(v116 + 88) = v120;
  *(v116 + 120) = v13;
  *(v116 + 96) = v14;
  *(v116 + 128) = sub_1C755068C();
  *(v116 + 136) = v121;
  *(v116 + 168) = MEMORY[0x1E6969080];
  *(v116 + 144) = v114;
  *(v116 + 152) = v115;
  return sub_1C75504DC();
}

uint64_t sub_1C734F42C()
{
  v40 = MEMORY[0x1E69E7CC0];
  v1 = StoryMusicCuration.flexMusicStoryRecipeKeySong()();
  if (v0)
  {
    v2 = v0;
    v3 = sub_1C754FEEC();
    v4 = sub_1C755119C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = v0;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_1C6F5C000, v3, v4, "No key Flex song found. Error: %@", v5, 0xCu);
      sub_1C6FC15D8(v6);
      MEMORY[0x1CCA5F8E0](v6, -1, -1);
      MEMORY[0x1CCA5F8E0](v5, -1, -1);
    }

    else
    {
    }

    v12 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v9 = v1;
    v10 = swift_unknownObjectRetain();
    MEMORY[0x1CCA5D040](v10);
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C7550B9C();
    }

    sub_1C7550BEC();
    v11 = [v9 identifier];
    v12 = sub_1C755068C();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  v37 = v12;
  v15 = StoryMusicCuration.appleMusicStoryRecipeKeySong()();
  v16 = swift_unknownObjectRetain();
  MEMORY[0x1CCA5D040](v16);
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C7550B9C();
  }

  sub_1C7550BEC();
  v38 = v40;
  v17 = [v15 identifier];
  v18 = sub_1C755068C();
  v20 = v19;
  swift_unknownObjectRelease();

  sub_1C75504FC();
  sub_1C75504FC();
  v21 = sub_1C754FEEC();
  v22 = sub_1C755117C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_1C6F765A4(v37, v14, &v39);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1C6F765A4(v18, v20, &v39);
    _os_log_impl(&dword_1C6F5C000, v21, v22, "Using key songs for story recipe: flex=%s  applemusic=%s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v24, -1, -1);
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21ACE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  v26 = *MEMORY[0x1E69C0DD0];
  v27 = MEMORY[0x1E69C0DC8];
  *(inited + 32) = *MEMORY[0x1E69C0DD0];
  *(inited + 40) = v37;
  v28 = *v27;
  *(inited + 48) = v14;
  *(inited + 56) = v28;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  type metadata accessor for PFStoryRecipeSongCatalog(0);
  sub_1C7350024();
  v29 = v26;
  v30 = v28;
  v31 = sub_1C75504DC();
  v32 = sub_1C734FB4C(v38, v31);

  v33 = [objc_allocWithZone(MEMORY[0x1E69C08B0]) init];
  v34 = [v33 archivedDataWithRecipe_];

  v35 = sub_1C754DDEC();
  swift_unknownObjectRelease();

  return v35;
}

id GenerativeMemoryPhotosGraphData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeMemoryPhotosGraphData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeMemoryPhotosGraphData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C734FB4C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() createRecipe];
  [v4 mutableCopyWithZone_];
  swift_unknownObjectRelease();
  sub_1C75515CC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21ACE8);
  if (!swift_dynamicCast())
  {
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();
    if (os_log_type_enabled(v9, v10))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "PFStoryRecipeFactory.createRecipe().mutableCopy() failed", v4, 2u);
      MEMORY[0x1CCA5F8E0](v4, -1, -1);
    }

    sub_1C71B3D3C();
    swift_allocError();
    *v11 = xmmword_1C7569120;
    *(v11 + 16) = 2;
    swift_willThrow();
    return v4;
  }

  v4 = v18;
  if (sub_1C6FB6304() < 1)
  {
    v12 = sub_1C754FEEC();
    v13 = sub_1C755119C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "No song assets to save to the recipe", v14, 2u);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
    }

    goto LABEL_17;
  }

  result = sub_1C6FB6304();
  if (!result)
  {
LABEL_17:
    if (*(a2 + 16))
    {
      type metadata accessor for PFStoryRecipeSongCatalog(0);
      sub_1C7350024();
      v15 = sub_1C755048C();
      [v18 setSeedSongIdentifiersByCatalog_];
    }

    else
    {
      v15 = sub_1C754FEEC();
      v16 = sub_1C755119C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1C6F5C000, v15, v16, "No seed songs to save to the recipe", v17, 2u);
        MEMORY[0x1CCA5F8E0](v17, -1, -1);
      }
    }

    return v4;
  }

  v6 = result;
  if (result >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1CCA5DDD0](i, a1);
      }

      else
      {
        v8 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v18 addAsset_];
      swift_unknownObjectRelease();
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C734FEC4()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StoryMusicCuration();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1C7350024()
{
  result = qword_1EDD06940;
  if (!qword_1EDD06940)
  {
    type metadata accessor for PFStoryRecipeSongCatalog(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06940);
  }

  return result;
}

void sub_1C735007C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C6F65BE8(0, &qword_1EDD0CE08);
    sub_1C7080178(&qword_1EDD0CE00, &qword_1EDD0CE08);
    sub_1C7550FEC();
    v6 = v37;
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);
    sub_1C75504FC();
    v10 = 0;
  }

  v31 = MEMORY[0x1E69E7CC0];
  *&v7 = 134217984;
  v30 = v7;
  while (v6 < 0)
  {
    if (!sub_1C75516FC() || (sub_1C6F65BE8(0, &qword_1EDD0CE08), swift_dynamicCast(), (v17 = v36) == 0))
    {
LABEL_32:
      sub_1C6F61E88();

      return;
    }

LABEL_17:
    v18 = [v17 extendedSceneIdentifier];
    if (![a2 isResponsibleForSignalIdentifier_])
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v19 = sub_1C7353840(v18, a4, a5, a6);
    swift_endAccess();
    if (!v19)
    {
      if (qword_1EDD07960 != -1)
      {
        swift_once();
      }

      v25 = sub_1C754FF1C();
      __swift_project_value_buffer(v25, qword_1EDD07968);
      v17 = v17;
      v19 = sub_1C754FEEC();
      v26 = sub_1C755119C();
      if (os_log_type_enabled(v19, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = v30;
        *(v27 + 4) = [v17 extendedSceneIdentifier];

        _os_log_impl(&dword_1C6F5C000, v19, v26, "Unable to fetch scene node for identifier %llu.", v27, 0xCu);
        MEMORY[0x1CCA5F8E0](v27, -1, -1);
      }

      else
      {

        v19 = v17;
      }

      goto LABEL_30;
    }

    [v17 confidence];
    v21 = v20;
    [v19 searchThreshold];
    if (v22 > v21)
    {
LABEL_30:

      v17 = v19;
LABEL_31:
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB47B4();
        v31 = v28;
      }

      v23 = *(v31 + 16);
      if (v23 >= *(v31 + 24) >> 1)
      {
        sub_1C6FB47B4();
        v31 = v29;
      }

      *(v31 + 16) = v23 + 1;
      v24 = v31 + 16 * v23;
      *(v24 + 32) = v17;
      *(v24 + 40) = v19;
    }
  }

  v15 = v10;
  v16 = v11;
  if (v11)
  {
LABEL_13:
    v11 = (v16 - 1) & v16;
    v17 = *(*(v6 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v10 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v10 >= ((v9 + 64) >> 6))
    {
      goto LABEL_32;
    }

    v16 = *(v8 + 8 * v10);
    ++v15;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t PersonalTraitEntityNetDataSource.__allocating_init(configuration:storyPhotoLibraryContext:)(const void *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = a2[2];
  memcpy((v4 + 16), a1, 0xD8uLL);
  *(v4 + 232) = v5;
  *(v4 + 240) = v6;
  v8 = MEMORY[0x1E69E7CC8];
  *(v4 + 248) = v7;
  *(v4 + 256) = v8;
  return v4;
}

uint64_t PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(assetSampler:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1C754F2FC();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C735060C, 0, 0);
}

void sub_1C735060C()
{
  v3 = v1[6];
  v4 = *(v3 + 184);
  v5 = *(v3 + 168);
  v6 = v4 * v5;
  if ((v4 * v5) >> 64 == (v4 * v5) >> 63)
  {
    v7 = v1[3];
    swift_getObjectType();
    v0 = (*(v7 + 24))();
    v2 = *(v0 + 16);
    if (v6 < v2)
    {

      sub_1C754F2BC();
      sub_1C754F2BC();
      sub_1C754F2CC();
      v14 = swift_task_alloc();
      v1[12] = v14;
      *v14 = v1;
      v14[1] = sub_1C73509A4;
      OUTLINED_FUNCTION_44_29();

      __asm { BRAA            X4, X16 }
    }

    if (qword_1EDD07960 == -1)
    {
LABEL_5:
      v8 = sub_1C754FF1C();
      __swift_project_value_buffer(v8, qword_1EDD07968);
      v9 = sub_1C754FEEC();
      v10 = sub_1C75511BC();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134218240;
        *(v11 + 4) = v2;
        *(v11 + 12) = 2048;
        *(v11 + 14) = v6;
        _os_log_impl(&dword_1C6F5C000, v9, v10, "%ld assets provided, %ld needed for clustering. Returning each asset as its own sample.", v11, 0x16u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v12 = v1[5];
      v13 = v1[4];

      PersonalTraitEntityNetDataSource.generateExhaustiveLibraryBasedPersonalTraits(assetUUIDs:eventRecorder:progressReporter:)(v0, v13, v12);

      OUTLINED_FUNCTION_0_89();
      OUTLINED_FUNCTION_44_29();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_18_53();
  swift_once();
  goto LABEL_5;
}

uint64_t sub_1C73509A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_1C7350C60;
  }

  else
  {
    v4 = sub_1C7350AB8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C7350AB8()
{
  v1 = v0[14];
  sub_1C754F2EC();
  v2 = v0[13];
  if (v1)
  {
    v3 = v0[8];

    v4 = *(v3 + 8);
    (v4)(v0[10], v0[7]);
    v5 = OUTLINED_FUNCTION_90();
    v4(v5);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v6 = v0[9];
    v7 = v0[7];
    v8 = v0[8];
    v9 = v0[5];
    v10 = v0[4];
    (*(v8 + 32))(v6, v0[10], v7);
    PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(clustersWithSamples:eventRecorder:progressReporter:)(v2, v10, v6);

    (*(v8 + 8))(v9, v7);

    v13 = OUTLINED_FUNCTION_0_89();

    return v14(v13);
  }
}

uint64_t sub_1C7350C60()
{
  v1 = *(v0[8] + 8);
  v1(v0[10], v0[7]);
  v2 = v0[7];
  v3 = v0[5];
  v1(v0[11], v2);
  v1(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C7350D44()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EDD07990 = result;
  return result;
}

uint64_t sub_1C7350DC0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07968);
  __swift_project_value_buffer(v0, qword_1EDD07968);
  if (qword_1EDD07988 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD07990;
  return sub_1C754FF2C();
}

uint64_t PersonalTraitEntityNetDataSource.init(configuration:storyPhotoLibraryContext:)(void *__src, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = a2[2];
  memcpy((v2 + 16), __src, 0xD8uLL);
  *(v2 + 232) = v3;
  *(v2 + 240) = v4;
  v6 = MEMORY[0x1E69E7CC8];
  *(v2 + 248) = v5;
  *(v2 + 256) = v6;
  return v2;
}

uint64_t PersonalTraitEntityNetDataSource.generateExhaustiveLibraryBasedPersonalTraits(assetUUIDs:eventRecorder:progressReporter:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v16 = a2;
    v17 = a3;
    v18 = MEMORY[0x1E69E7CC0];
    sub_1C716DFEC();
    v4 = v18;
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C755BAB0;
      *(v9 + 32) = v8;
      *(v9 + 40) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C755BAB0;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v11 = *(v18 + 16);
      v12 = *(v18 + 24);
      swift_bridgeObjectRetain_n();
      if (v11 >= v12 >> 1)
      {
        sub_1C716DFEC();
      }

      *(v18 + 16) = v11 + 1;
      v13 = v18 + 16 * v11;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v6 += 2;
      --v3;
    }

    while (v3);
    a2 = v16;
    a3 = v17;
  }

  v14 = PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(clustersWithSamples:eventRecorder:progressReporter:)(v4, a2, a3);

  return v14;
}

uint64_t PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(clustersWithSamples:eventRecorder:progressReporter:)(uint64_t a1, void *a2, uint64_t a3)
{
  v148 = a1;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v151 = &v129 - v6;
  v146 = type metadata accessor for PersonalTrait();
  OUTLINED_FUNCTION_3_0();
  v156 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v150 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  v145 = &v129 - v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  v155 = &v129 - v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  v149 = (&v129 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD08);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_14_2();
  v157 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v129 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD10);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v129 - v22;
  v24 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1C754F1CC();
  v30 = v158;
  sub_1C754F2CC();
  if (!v30)
  {
    v153 = v20;
    v154 = v23;
    v139 = a3;
    v138 = v29;
    v34 = sub_1C7351EAC(v148);
    sub_1C754F2DC();
    isUniquelyReferenced_nonNull_native = 0;
    v36 = a2;
    v37 = *(v34 + 16);
    v133 = v36;
    v141 = v24;
    v140 = v26;
    if (!v37)
    {

      v134 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    v167 = MEMORY[0x1E69E7CC0];
    v38 = &v167;
    sub_1C716E0EC(0, v37, 0);
    v23 = 0;
    v39 = v167;
    v40 = v34 + 48;
    v158 = v34;
    v148 = v37;
    while (v23 < *(v34 + 16))
    {
      v41 = *(v40 - 16);
      v42 = v39;
      sub_1C75504FC();
      sub_1C75504FC();
      v43 = sub_1C75504FC();
      v38 = v159;
      v44 = isUniquelyReferenced_nonNull_native;
      v45 = PersonalTraitEntityNetDataSource.personalTraitBySceneIdentifier(clusterRepresentativeAssets:clusterAssetUUIDs:)(v43, v41);

      v39 = v42;
      v167 = v42;
      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      if (v47 >= v46 >> 1)
      {
        v38 = &v167;
        sub_1C716E0EC((v46 > 1), v47 + 1, 1);
        v39 = v167;
      }

      ++v23;
      *(v39 + 16) = v47 + 1;
      *(v39 + 8 * v47 + 32) = v45;
      v40 += 24;
      isUniquelyReferenced_nonNull_native = v44;
      v34 = v158;
      if (v148 == v23)
      {
        v134 = v39;

        v36 = v133;
LABEL_13:
        sub_1C754F2DC();
        v48 = v154;
        v49 = 0;
        v50 = v134;
        v132 = *(v134 + 16);
        v51 = MEMORY[0x1E69E7CC8];
        v131 = v134 + 32;
        v130 = 0;
LABEL_14:
        if (v49 == v132)
        {
LABEL_50:

          sub_1C754F2EC();
          v82 = v51;
          if (isUniquelyReferenced_nonNull_native)
          {

            v23 = *(v36 + 24);
            OUTLINED_FUNCTION_10_3(v36);
            sub_1C754F1AC();
            v110 = OUTLINED_FUNCTION_48_24();
            v32(v110);
            return v23;
          }

LABEL_53:
          v23 = sub_1C71CD990(v82);
          if (qword_1EDD07960 != -1)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v49 < *(v50 + 16))
          {
            v52 = *(v131 + 8 * v49);
            v137 = v49 + 1;
            sub_1C75504FC();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v167 = v51;
            sub_1C6F78058(v52, sub_1C7355848, 0, v161);
            v147 = v161[0];
            v142 = v161[1];
            v53 = v163;
            v54 = v164;
            v143 = v165;
            v144 = v166;
            v135 = v162;
            v23 = ((v162 + 64) >> 6);
            v136 = v52;
            sub_1C75504FC();
            v55 = v156;
            while (1)
            {
              v56 = v54;
              v36 = v53;
              LODWORD(v159) = isUniquelyReferenced_nonNull_native;
              v148 = v53;
              if (!v54)
              {
                v57 = v53;
                v58 = v153;
                while (1)
                {
                  v36 = v57 + 1;
                  if (__OFADD__(v57, 1))
                  {
                    break;
                  }

                  if (v36 >= v23)
                  {
                    v158 = 0;
                    v65 = 1;
                    v63 = v152;
                    goto LABEL_23;
                  }

                  v56 = *(v142 + 8 * v36);
                  v57 = (v57 + 1);
                  if (v56)
                  {
                    goto LABEL_22;
                  }
                }

                __break(1u);
                goto LABEL_50;
              }

LABEL_22:
              v158 = (v56 - 1) & v56;
              v59 = __clz(__rbit64(v56)) | (v36 << 6);
              v60 = *(*(v147 + 48) + 8 * v59);
              v61 = v149;
              sub_1C7355E5C(*(v147 + 56) + *(v55 + 72) * v59, v149);
              v63 = v152;
              v62 = v153;
              v64 = *(v152 + 48);
              *v153 = v60;
              sub_1C7355EB4(v61, v62 + v64);
              v58 = v62;
              v48 = v154;
              v65 = 0;
              v57 = v36;
LABEL_23:
              v66 = 1;
              v67 = v58;
              __swift_storeEnumTagSinglePayload(v58, v65, 1, v63);
              v68 = v67;
              v69 = v157;
              sub_1C72852E4(v68, v157, &qword_1EC21AD08);
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, 1, v63);
              v71 = v151;
              if (EnumTagSinglePayload != 1)
              {
                sub_1C72852E4(v157, v151, &qword_1EC21AD00);
                v143(v71);
                sub_1C6FD7FC8(v71, &qword_1EC21AD00);
                v66 = 0;
              }

              isUniquelyReferenced_nonNull_native = &unk_1C7584508;
              v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD18);
              __swift_storeEnumTagSinglePayload(v48, v66, 1, v72);
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD18);
              v74 = __swift_getEnumTagSinglePayload(v48, 1, v73);
              v75 = v155;
              if (v74 == 1)
              {
                sub_1C6F61E88();

                isUniquelyReferenced_nonNull_native = v130;
                v36 = v133;
                v50 = v134;
                v49 = v137;
                goto LABEL_14;
              }

              v76.isa = v48->isa;
              OUTLINED_FUNCTION_2_100();
              sub_1C7355EB4(v48 + v77, v75);
              v79 = sub_1C6FCABD0(v76.isa);
              v80 = v51[2];
              v81 = (v78 & 1) == 0;
              v82 = v80 + v81;
              if (__OFADD__(v80, v81))
              {
                __break(1u);
                goto LABEL_53;
              }

              v83 = v78;
              if (v51[3] >= v82)
              {
                v55 = v156;
                if (v159)
                {
                  goto LABEL_32;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD20);
                sub_1C7551A3C();
              }

              else
              {
                sub_1C7354548(v82, v159 & 1);
                v84 = sub_1C6FCABD0(v76.isa);
                if ((v83 & 1) != (v85 & 1))
                {
                  result = sub_1C7551E4C();
                  __break(1u);
                  return result;
                }

                v79 = v84;
              }

              v55 = v156;
LABEL_32:
              v51 = v167;
              if (v83)
              {
                isUniquelyReferenced_nonNull_native = *(v55 + 72) * v79;
                OUTLINED_FUNCTION_2_100();
                v87 = v150;
                sub_1C7355E5C(v86 + isUniquelyReferenced_nonNull_native, v150);
                v88 = v87;
                v38 = *(v87 + 16);
                v89 = *(v75 + 16);
                v90 = v89[2];
                v48 = v38[2];
                if (__OFADD__(v48, v90))
                {
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
                  goto LABEL_64;
                }

                v91 = v88[1];
                v159 = *v88;
                v148 = v91;
                sub_1C75504FC();
                sub_1C75504FC();
                sub_1C75504FC();
                if (!swift_isUniquelyReferenced_nonNull_native() || v48 + v90 > (v38[3] >> 1))
                {
                  sub_1C6FB1814();
                  v38 = v92;
                }

                v93 = v155;
                if (v89[2])
                {
                  if (((v38[3] >> 1) - v38[2]) < v90)
                  {
                    __break(1u);
                    goto LABEL_66;
                  }

                  swift_arrayInitWithCopy();

                  OUTLINED_FUNCTION_46_29();
                  if (v90)
                  {
                    v95 = v38[2];
                    v96 = __OFADD__(v95, v90);
                    v97 = v95 + v90;
                    if (v96)
                    {
                      __break(1u);
                      break;
                    }

                    v38[2] = v97;
                  }
                }

                else
                {

                  OUTLINED_FUNCTION_46_29();
                  if (v90)
                  {
                    goto LABEL_63;
                  }
                }

                v101 = v94[7];
                v102 = v150;
                v103 = *(v150 + v101);
                v104 = v150 + v94[8];
                v105 = *v104;
                v106 = *(v104 + 8);
                v107 = *(v150 + v94[9]) + *(v93 + v94[9]);
                *v89 = v159;
                v89[1] = v148;
                v89[2] = v38;
                *(v89 + v101) = v103;
                v108 = v89 + v94[8];
                *v108 = v105;
                *(v108 + 1) = v106;
                v109 = *(v104 + 16);
                v108[16] = v109;
                *(v89 + v94[9]) = v107;
                *(v89 + v94[10]) = MEMORY[0x1E69E7CC0];
                sub_1C7244FF8(v105, v106, v109);
                sub_1C754DFEC();
                sub_1C7245414(v102);
                sub_1C7245414(v93);
                sub_1C718F5D4(v89, v51[7] + isUniquelyReferenced_nonNull_native);
                isUniquelyReferenced_nonNull_native = 1;
                v53 = v57;
                v54 = v158;
                v55 = v156;
                v48 = v154;
              }

              else
              {
                v167[(v79 >> 6) + 8] |= 1 << v79;
                *(v51[6] + 8 * v79) = v76;
                OUTLINED_FUNCTION_2_100();
                sub_1C7355EB4(v75, v98);
                v99 = v51[2];
                v96 = __OFADD__(v99, 1);
                v100 = v99 + 1;
                if (v96)
                {
                  goto LABEL_62;
                }

                v51[2] = v100;
                isUniquelyReferenced_nonNull_native = 1;
                v53 = v57;
                v54 = v158;
              }
            }
          }

          __break(1u);
LABEL_72:
          OUTLINED_FUNCTION_18_53();
          swift_once();
        }

        v111 = sub_1C754FF1C();
        __swift_project_value_buffer(v111, qword_1EDD07968);
        sub_1C75504FC();
        v48 = sub_1C754FEEC();
        v112 = sub_1C75511BC();

        v113 = os_log_type_enabled(v48, v112);
        v51 = v141;
        if (v113)
        {
          v114 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v167 = v159;
          *v114 = 136380675;
          v115 = *(v23 + 2);
          v38 = MEMORY[0x1E69E7CC0];
          if (v115)
          {
            v155 = v114;
            LODWORD(v157) = v112;
            v158 = v48;
            v130 = isUniquelyReferenced_nonNull_native;
            v160 = MEMORY[0x1E69E7CC0];
            sub_1C6F7ED9C();
            v38 = v160;
            v116 = &v23[(*(v156 + 80) + 32) & ~*(v156 + 80)];
            v117 = *(v156 + 72);
            v118 = v149;
            do
            {
              OUTLINED_FUNCTION_2_100();
              sub_1C7355E5C(v116, v118);
              v119 = *v118;
              v120 = v118[1];
              sub_1C75504FC();
              sub_1C7245414(v118);
              v160 = v38;
              v121 = v38[2];
              if (v121 >= v38[3] >> 1)
              {
                sub_1C6F7ED9C();
                v38 = v160;
              }

              v38[2] = v121 + 1;
              v122 = &v38[2 * v121];
              v122[4] = v119;
              v122[5] = v120;
              v116 += v117;
              --v115;
              v118 = v149;
            }

            while (v115);
LABEL_67:
            v51 = v141;
            v48 = v158;
            LOBYTE(v112) = v157;
            v114 = v155;
          }

          v123 = MEMORY[0x1CCA5D090](v38, MEMORY[0x1E69E6158]);
          v125 = v124;

          v126 = sub_1C6F765A4(v123, v125, &v167);

          *(v114 + 4) = v126;
          _os_log_impl(&dword_1C6F5C000, v48, v112, "Generated VU based traits: %{private}s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v159);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {
LABEL_64:
        }

        __swift_project_boxed_opaque_existential_1(v133, v133[3]);
        sub_1C754F1AC();
        v127 = OUTLINED_FUNCTION_48_24();
        v128(v127, v51);
        return v23;
      }
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v23 = a2[3];
  OUTLINED_FUNCTION_10_3(a2);
  sub_1C754F1AC();
  (*(v26 + 8))(v29, v24);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v31 + 8))(a3);
  return v23;
}