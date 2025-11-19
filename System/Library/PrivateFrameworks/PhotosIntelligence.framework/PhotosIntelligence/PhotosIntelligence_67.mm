BOOL sub_1C745CC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 == 20035 && a3 == 0xE200000000000000;
  if (!v4 && (sub_1C7551DBC() & 1) == 0)
  {
LABEL_26:
    sub_1C75504FC();
    return 0;
  }

  static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(&v69);
  v5 = v70;
  if (!v70)
  {
LABEL_22:
    if (qword_1EDD0ED88 != -1)
    {
LABEL_98:
      swift_once();
    }

    v17 = sub_1C754FF1C();
    __swift_project_value_buffer(v17, &dword_1EDD28D48);
    v18 = sub_1C754FEEC();
    v19 = sub_1C755119C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C6F5C000, v18, v19, "Unable to find keywords for boosting", v20, 2u);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
    }

    goto LABEL_26;
  }

  v6 = v69;
  static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(&v69);
  v7 = v70;
  if (!v70)
  {
    sub_1C72B9804(v6, v5);
    goto LABEL_22;
  }

  v67 = v69;
  v68 = v6;
  v8 = sub_1C6FB6304();
  v9 = 0;
  v10 = a1 & 0xC000000000000001;
  v11 = a1;
  v12 = a1 & 0xFFFFFFFFFFFFFF8;
  do
  {
    v13 = v9;
    if (v8 == v9)
    {
      break;
    }

    if (v10)
    {
      v14 = MEMORY[0x1CCA5DDD0](v9, v11);
    }

    else
    {
      if (v9 >= *(v12 + 16))
      {
        goto LABEL_93;
      }

      v14 = *(v11 + 8 * v9 + 32);
    }

    if (__OFADD__(v13, 1))
    {
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
      goto LABEL_98;
    }

    if (*(v14 + 16) == v68 && v5 == *(v14 + 24))
    {

      break;
    }

    v16 = sub_1C7551DBC();

    v9 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  v65 = v5;
  v22 = 0;
  while (v8 != v22)
  {
    if (v10)
    {
      v23 = MEMORY[0x1CCA5DDD0](v22, v11);
    }

    else
    {
      if (v22 >= *(v12 + 16))
      {
        goto LABEL_95;
      }

      v23 = *(v11 + 8 * v22 + 32);
    }

    if (__OFADD__(v22, 1))
    {
      goto LABEL_94;
    }

    if (*(v23 + 16) == v67 && v7 == *(v23 + 24))
    {

      goto LABEL_45;
    }

    v25 = sub_1C7551DBC();

    ++v22;
    if (v25)
    {
      goto LABEL_45;
    }
  }

  if (v8 == v13)
  {
    sub_1C75504FC();
    sub_1C72B9804(v67, v7);
    sub_1C72B9804(v68, v65);
    return 0;
  }

LABEL_45:
  if (qword_1EDD0ED88 != -1)
  {
    swift_once();
  }

  v26 = sub_1C754FF1C();
  __swift_project_value_buffer(v26, &dword_1EDD28D48);
  v27 = sub_1C754FEEC();
  v28 = sub_1C755117C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1C6F5C000, v27, v28, "(Keywords) Boosting Chinese New Year keywords", v29, 2u);
    MEMORY[0x1CCA5F8E0](v29, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v68;
  *(inited + 40) = v65;
  sub_1C75504FC();
  v31 = sub_1C706D154(inited);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1C7565670;
  v64 = type metadata accessor for MusicKeywordCompletion();
  swift_allocObject();
  v33 = MusicKeywordCompletion.init(keyword:score:)(v68, v65, 1.0);
  sub_1C75504FC();
  sub_1C72B9804(v68, v65);
  *(v32 + 32) = v33;
  v69 = v11;
  sub_1C75504FC();
  sub_1C6FD2F68(v32);
  v21 = sub_1C745E128(v69, v31, MEMORY[0x1E69E7CD0], 0.975, 1.0);
  v35 = v34;

  if (v21)
  {
    v66 = v21;
    v36 = MEMORY[0x1E69E7CC0];
    v69 = MEMORY[0x1E69E7CC0];
    v37 = sub_1C6FB6304();
    sub_1C75504FC();
    v38 = 0;
    v39 = v67;
    while (v37 != v38)
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1CCA5DDD0](v38, v35);
      }

      else
      {
        if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_91;
        }

        v40 = *(v35 + 8 * v38 + 32);
      }

      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v41 = *(v40 + 16) == v39 && v7 == *(v40 + 24);
      if (v41 || (sub_1C7551DBC() & 1) != 0)
      {
      }

      else
      {
        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        v39 = v67;
      }

      ++v38;
    }

    sub_1C72B9804(v39, v7);
    swift_bridgeObjectRelease_n();
    v42 = v69;
    static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(&v69);
    v43 = v70;
    if (v70)
    {
      v44 = v69;
      v69 = v36;
      v45 = sub_1C6FB6304();
      sub_1C75504FC();
      for (i = 0; v45 != i; ++i)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v47 = MEMORY[0x1CCA5DDD0](i, v42);
        }

        else
        {
          if (i >= *(v42 + 16))
          {
            goto LABEL_97;
          }

          v47 = *(v42 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_96;
        }

        v48 = *(v47 + 16) == v44 && v43 == *(v47 + 24);
        if (v48 || (sub_1C7551DBC() & 1) != 0)
        {
        }

        else
        {
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
        }
      }

      sub_1C72B9804(v44, v43);
    }

    v49 = sub_1C754FEEC();
    v50 = sub_1C755117C();
    v21 = v66;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1C6F5C000, v49, v50, "(Keywords) Removed Christmas keywords due to Chinese New Year boosting", v51, 2u);
      MEMORY[0x1CCA5F8E0](v51, -1, -1);
    }
  }

  else
  {
    sub_1C72B9804(v67, v7);
  }

  v52 = sub_1C754FEEC();
  v53 = sub_1C755117C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = v21;
    v56 = swift_slowAlloc();
    v69 = v56;
    *v54 = 136315138;
    v57 = sub_1C75504FC();
    v58 = MEMORY[0x1CCA5D090](v57, v64);
    v60 = v59;

    v61 = sub_1C6F765A4(v58, v60, &v69);

    *(v54 + 4) = v61;
    _os_log_impl(&dword_1C6F5C000, v52, v53, "(Keywords) After boosting Chinese New Year keywords: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v62 = v56;
    v21 = v55;
    MEMORY[0x1CCA5F8E0](v62, -1, -1);
    MEMORY[0x1CCA5F8E0](v54, -1, -1);
  }

  return v21;
}

BOOL sub_1C745D530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A8A40, 0, a3, a4, a5, a6, a7, a8, v50, a1, v54, v56, v57, v58);
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v12 = v56;
    v13 = (v9 + 40);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v56 = v12;
      v16 = *(v12 + 16);
      v17 = *(v12 + 24);
      sub_1C75504FC();
      if (v16 >= v17 >> 1)
      {
        sub_1C6F7ED9C();
        v12 = v56;
      }

      *(v12 + 16) = v16 + 1;
      v18 = v12 + 16 * v16;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v13 += 6;
      --v10;
    }

    while (v10);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1C706D154(v12);
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A8A68, 0, v20, v21, v22, v23, v24, v25, v51, v52, v55, v56, v57, v58);
  v27 = v26;
  v28 = *(v26 + 16);
  if (v28)
  {
    v56 = v11;
    sub_1C6F7ED9C();
    v29 = v11;
    v30 = (v27 + 40);
    do
    {
      v32 = *(v30 - 1);
      v31 = *v30;
      v56 = v29;
      v33 = *(v29 + 16);
      v34 = *(v29 + 24);
      sub_1C75504FC();
      if (v33 >= v34 >> 1)
      {
        sub_1C6F7ED9C();
        v29 = v56;
      }

      *(v29 + 16) = v33 + 1;
      v35 = v29 + 16 * v33;
      *(v35 + 32) = v32;
      *(v35 + 40) = v31;
      v30 += 6;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v36 = sub_1C70739AC(v29, v19);
  v37 = sub_1C745E128(v53, v36, MEMORY[0x1E69E7CD0], 0.975, 1.0);

  if (qword_1EDD0ED88 != -1)
  {
    swift_once();
  }

  v38 = sub_1C754FF1C();
  __swift_project_value_buffer(v38, &dword_1EDD28D48);
  sub_1C75504FC();
  v39 = sub_1C754FEEC();
  v40 = sub_1C755117C();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56 = v42;
    *v41 = 136315138;
    v43 = type metadata accessor for MusicKeywordCompletion();
    v44 = sub_1C75504FC();
    v45 = MEMORY[0x1CCA5D090](v44, v43);
    v47 = v46;

    v48 = sub_1C6F765A4(v45, v47, &v56);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_1C6F5C000, v39, v40, "(Keywords) After boosting celebration/holiday keywords: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1CCA5F8E0](v42, -1, -1);
    MEMORY[0x1CCA5F8E0](v41, -1, -1);
  }

  return v37;
}

uint64_t sub_1C745D880(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A8A90, 0, a3, a4, a5, a6, a7, a8, v66, v69, v71, v73, v76, v77);
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v72 = a1;
    v76 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v12 = v76;
    v13 = (v10 + 40);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v76 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      sub_1C75504FC();
      if (v17 >= v16 >> 1)
      {
        sub_1C6F7ED9C();
        v12 = v76;
      }

      *(v12 + 16) = v17 + 1;
      v18 = v12 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v13 += 6;
      --v11;
    }

    while (v11);

    a1 = v72;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1C706D154(v12);
  v20 = sub_1C745E128(a1, v19, MEMORY[0x1E69E7CD0], 0.87, 1.0);
  LOBYTE(a1) = v20;
  if (v20)
  {
    v74 = v21;
    HIDWORD(v67) = v20;
    type metadata accessor for MusicKeywordCompletion();
    swift_allocObject();
    v22 = MusicKeywordCompletion.init(keyword:score:)(0x796C696D6166, 0xE600000000000000, 0.95);
    static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A8AB8, 1, v23, v24, v25, v26, v27, v28, v67, v70, v22, v74, v76, v77);
    v30 = v29;
    v31 = 0;
    v32 = *(v29 + 16);
    v33 = (v29 + 40);
    v34 = MEMORY[0x1E69E7CC0];
    while (v32 != v31)
    {
      if (v31 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v36 = *(v33 - 1);
      v35 = *v33;
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v34 = v38;
      }

      a1 = *(v34 + 16);
      if (a1 >= *(v34 + 24) >> 1)
      {
        sub_1C6FB1814();
        v34 = v39;
      }

      *(v34 + 16) = a1 + 1;
      v37 = v34 + 16 * a1;
      *(v37 + 32) = v36;
      *(v37 + 40) = v35;
      v33 += 6;
      ++v31;
    }

    v40 = sub_1C706D154(v34);
    v41 = sub_1C7238810(v19, v40);

    v42 = sub_1C6FB6304();
    if (!v42)
    {

LABEL_35:
      LOBYTE(a1) = v68;
      goto LABEL_36;
    }

    v43 = v42;
    v78 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    result = sub_1C755195C();
    if ((v43 & 0x8000000000000000) == 0)
    {
      v45 = 0;
      do
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x1CCA5DDD0](v45, v75);
        }

        else
        {
          v46 = *(v75 + 32 + 8 * v45);
        }

        if (*(v41 + 16))
        {
          v47 = *(v46 + 16);
          v48 = *(v46 + 24);
          sub_1C7551F3C();
          sub_1C75505AC();
          v49 = sub_1C7551FAC();
          v50 = ~(-1 << *(v41 + 32));
          do
          {
            v51 = v49 & v50;
            if (((*(v41 + 56 + (((v49 & v50) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v49 & v50)) & 1) == 0)
            {
              break;
            }

            v52 = (*(v41 + 48) + 16 * v51);
            if (*v52 == v47 && v52[1] == v48)
            {
              break;
            }

            v54 = sub_1C7551DBC();
            v49 = v51 + 1;
          }

          while ((v54 & 1) == 0);
        }

        ++v45;

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
      }

      while (v45 != v43);

      swift_bridgeObjectRelease_n();

      goto LABEL_35;
    }

    __break(1u);
  }

  else
  {

LABEL_36:
    if (qword_1EDD0ED88 != -1)
    {
LABEL_41:
      swift_once();
    }

    v55 = sub_1C754FF1C();
    __swift_project_value_buffer(v55, &dword_1EDD28D48);
    v56 = sub_1C754FEEC();
    v57 = sub_1C755117C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v76 = v59;
      *v58 = 136315138;
      v60 = type metadata accessor for MusicKeywordCompletion();
      v61 = sub_1C75504FC();
      v62 = MEMORY[0x1CCA5D090](v61, v60);
      v64 = v63;

      v65 = sub_1C6F765A4(v62, v64, &v76);

      *(v58 + 4) = v65;
      _os_log_impl(&dword_1C6F5C000, v56, v57, "(Keywords) After boosting child keywords: %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1CCA5F8E0](v59, -1, -1);
      MEMORY[0x1CCA5F8E0](v58, -1, -1);
    }

    return a1 & 1;
  }

  return result;
}

BOOL sub_1C745DDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A8AE0, 1, a3, a4, a5, a6, a7, a8, v43, a1, v45, v46[0], v46[1], v46[2]);
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v46[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v12 = v46[0];
    v13 = (v9 + 40);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v46[0] = v12;
      v16 = *(v12 + 16);
      v17 = *(v12 + 24);
      sub_1C75504FC();
      if (v16 >= v17 >> 1)
      {
        sub_1C6F7ED9C();
        v12 = v46[0];
      }

      *(v12 + 16) = v16 + 1;
      v18 = v12 + 16 * v16;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v13 += 6;
      --v10;
    }

    while (v10);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1C706D154(v12);
  v20 = static StoryMusicEmbeddingTerms.allTerms(matching:)();
  v21 = *(v20 + 16);
  if (v21)
  {
    v46[0] = v11;
    sub_1C6F7ED9C();
    v22 = v11;
    v23 = (v20 + 40);
    do
    {
      v25 = *(v23 - 1);
      v24 = *v23;
      v46[0] = v22;
      v26 = *(v22 + 16);
      v27 = *(v22 + 24);
      sub_1C75504FC();
      if (v26 >= v27 >> 1)
      {
        sub_1C6F7ED9C();
        v22 = v46[0];
      }

      *(v22 + 16) = v26 + 1;
      v28 = v22 + 16 * v26;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      v23 += 6;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1C706D154(v22);
  v30 = sub_1C745E128(v44, v19, v29, 0.975, 1.0);

  if (qword_1EDD0ED88 != -1)
  {
    swift_once();
  }

  v31 = sub_1C754FF1C();
  __swift_project_value_buffer(v31, &dword_1EDD28D48);
  sub_1C75504FC();
  v32 = sub_1C754FEEC();
  v33 = sub_1C755117C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46[0] = v35;
    *v34 = 136315138;
    v36 = type metadata accessor for MusicKeywordCompletion();
    v37 = sub_1C75504FC();
    v38 = MEMORY[0x1CCA5D090](v37, v36);
    v40 = v39;

    v41 = sub_1C6F765A4(v38, v40, v46);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1C6F5C000, v32, v33, "(Keywords) After boosting trip keywords: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1CCA5F8E0](v35, -1, -1);
    MEMORY[0x1CCA5F8E0](v34, -1, -1);
  }

  return v30;
}

BOOL sub_1C745E128(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v74 = MEMORY[0x1E69E7CC0];
  v10 = sub_1C6FB6304();
  v11 = 0;
  v70 = a1 & 0xFFFFFFFFFFFFFF8;
  v72 = a1 & 0xC000000000000001;
  v67 = a1;
  v68 = a1 + 32;
  v12 = a2 + 56;
LABEL_2:
  while (v11 != v10)
  {
    if (v72)
    {
      v13 = MEMORY[0x1CCA5DDD0](v11, v67);
    }

    else
    {
      if (v11 >= *(v70 + 16))
      {
        goto LABEL_70;
      }

      v13 = *(v68 + 8 * v11);
    }

    if (__OFADD__(v11++, 1))
    {
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
      swift_once();
LABEL_51:
      v46 = sub_1C754FF1C();
      __swift_project_value_buffer(v46, &dword_1EDD28D48);
      sub_1C75504FC();
      sub_1C75504FC();
      v47 = sub_1C754FEEC();
      v48 = sub_1C755118C();

      if (os_log_type_enabled(v47, v48))
      {
        v66 = v11;
        v49 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v73[0] = v69;
        *v49 = 136315394;
        v50 = sub_1C7550F9C();
        v52 = sub_1C6F765A4(v50, v51, v73);

        v53 = 0;
        *(v49 + 4) = v52;
        *(v49 + 12) = 2080;
        v54 = MEMORY[0x1E69E7CC0];
        while (v10 != v53)
        {
          if (v72)
          {
            v55 = MEMORY[0x1CCA5DDD0](v53, v12);
          }

          else
          {
            if (v53 >= *(v70 + 16))
            {
              goto LABEL_72;
            }

            v55 = *(v12 + 8 * v53 + 32);
          }

          if (__OFADD__(v53, 1))
          {
            goto LABEL_71;
          }

          v56 = *(v55 + 16);
          v57 = *(v55 + 24);
          sub_1C75504FC();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v54 = v59;
          }

          v11 = *(v54 + 16);
          if (v11 >= *(v54 + 24) >> 1)
          {
            sub_1C6FB1814();
            v54 = v60;
          }

          *(v54 + 16) = v11 + 1;
          v58 = v54 + 16 * v11;
          *(v58 + 32) = v56;
          *(v58 + 40) = v57;
          ++v53;
          v12 = v67;
        }

        v61 = MEMORY[0x1CCA5D090](v54, MEMORY[0x1E69E6158]);
        v63 = v62;

        v64 = sub_1C6F765A4(v61, v63, v73);

        *(v49 + 14) = v64;
        _os_log_impl(&dword_1C6F5C000, v47, v48, "(Keywords) No boosting needed: %s are not found in %s", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v69, -1, -1);
        MEMORY[0x1CCA5F8E0](v49, -1, -1);

        v11 = v66;
      }

      else
      {
      }

      sub_1C75504FC();
      return v11 > 0;
    }

    if (*(a2 + 16))
    {
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v17 = sub_1C7551FAC();
      v18 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v19 = v17 & v18;
        if (((*(v12 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          break;
        }

        v20 = (*(a2 + 48) + 16 * v19);
        if (*v20 != v16 || v20[1] != v15)
        {
          v22 = sub_1C7551DBC();
          v17 = v19 + 1;
          if ((v22 & 1) == 0)
          {
            continue;
          }
        }

        sub_1C755192C();
        sub_1C755196C();
        sub_1C755197C();
        sub_1C755193C();
        goto LABEL_2;
      }
    }
  }

  v11 = sub_1C6FB6304();

  if (v11 <= 0)
  {
    v12 = v67;
    if (qword_1EDD0ED88 != -1)
    {
      goto LABEL_74;
    }

    goto LABEL_51;
  }

  v23 = sub_1C6FB6304();
  if (!v23)
  {
    return v11 > 0;
  }

  v10 = v23;
  v74 = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  if (v10 < 0)
  {
    goto LABEL_73;
  }

  v24 = 0;
  v71 = v10;
  do
  {
    if (v72)
    {
      v25 = MEMORY[0x1CCA5DDD0](v24, v67);
    }

    else
    {
      v25 = *(v68 + 8 * v24);
    }

    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    if (*(a2 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v28 = sub_1C7551FAC();
      v29 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v30 = v28 & v29;
        if (((*(v12 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
        {
          break;
        }

        v31 = (*(a2 + 48) + 16 * v30);
        if (*v31 != v27 || v31[1] != v26)
        {
          v33 = sub_1C7551DBC();
          v28 = v30 + 1;
          if ((v33 & 1) == 0)
          {
            continue;
          }
        }

        v34 = *(v25 + 16);
        v35 = *(v25 + 24);
        type metadata accessor for MusicKeywordCompletion();
        swift_allocObject();
        v36 = v34;
        v37 = v35;
        v38 = a5;
        goto LABEL_47;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
    }

    if (*(a3 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v39 = sub_1C7551FAC();
      v40 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v41 = v39 & v40;
        if (((*(a3 + 56 + (((v39 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v40)) & 1) == 0)
        {
          break;
        }

        v42 = (*(a3 + 48) + 16 * v41);
        if (*v42 != v27 || v42[1] != v26)
        {
          v44 = sub_1C7551DBC();
          v39 = v41 + 1;
          if ((v44 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_48;
      }

      v27 = *(v25 + 16);
      v26 = *(v25 + 24);
    }

    v45 = *(v25 + 32) * a4;
    type metadata accessor for MusicKeywordCompletion();
    swift_allocObject();
    v36 = v27;
    v37 = v26;
    v38 = v45;
LABEL_47:
    MusicKeywordCompletion.init(keyword:score:)(v36, v37, v38);
    sub_1C75504FC();

LABEL_48:
    ++v24;
    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
  }

  while (v24 != v71);
  return v11 > 0;
}

uint64_t sub_1C745E81C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1C6F738F4;

  return sub_1C745C030(v3, v4, v5, v6);
}

uint64_t sub_1C745E8CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1C6F78034(v42);
  v6 = v42[1];
  v7 = v42[3];
  v8 = v42[4];
  v33 = v42[5];
  v34 = v42[0];
  v9 = (v42[2] + 64) >> 6;
  sub_1C75504FC();

  if (v8)
  {
    while (1)
    {
      v35 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v34 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v34 + 56) + 4 * v12);
      v40[0] = *v13;
      v40[1] = v14;
      v41 = v15;
      sub_1C75504FC();
      v33(&v37, v40);

      v16 = v37;
      v17 = v38;
      v18 = v39;
      v19 = *a5;
      v21 = sub_1C6F78124(v37, v38);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (v19[3] >= v22 + v23)
      {
        if ((v35 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C735488C();
        v25 = sub_1C6F78124(v16, v17);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_24;
        }

        v21 = v25;
      }

      v8 &= v8 - 1;
      v27 = *a5;
      if (v24)
      {

        *(v27[7] + 4 * v21) = v18;
      }

      else
      {
        v27[(v21 >> 6) + 8] |= 1 << v21;
        v28 = (v27[6] + 16 * v21);
        *v28 = v16;
        v28[1] = v17;
        *(v27[7] + 4 * v21) = v18;
        v29 = v27[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_23;
        }

        v27[2] = v31;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v35 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

float sub_1C745EB60@<S0>(uint64_t a1@<X8>)
{
  v2 = sub_1C73D92AC();
  result = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_47()
{

  return type metadata accessor for MusicKeywordCompletion();
}

uint64_t OUTLINED_FUNCTION_42_37()
{
}

uint64_t OUTLINED_FUNCTION_43_37()
{
}

void static GlobalTraitDiagnosticsGenerator.save(globalTraits:rejectedGlobalTraits:in:)(uint64_t a1, uint64_t a2)
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    sub_1C754DBCC();
    swift_allocObject();
    sub_1C754DBBC();
    sub_1C754DB9C();
    v10[0] = a1;
    sub_1C75504FC();
    sub_1C745EDEC(v10);
    if (v2)
    {

      __break(1u);
    }

    else
    {
      v5 = v10[0];
      v10[0] = a2;
      sub_1C75504FC();
      sub_1C745EDEC(v10);
      v6 = v10[0];
      v10[0] = v5;
      v10[1] = v6;
      sub_1C745EE94();
      v7 = sub_1C754DBAC();
      v9 = v8;

      sub_1C7161C08();
      sub_1C6FC1640(v7, v9);
    }
  }
}

void sub_1C745EDEC(uint64_t *a1)
{
  v2 = *(type metadata accessor for GlobalTrait() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422D74();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C745FC3C(v6);
  *a1 = v3;
}

unint64_t sub_1C745EE94()
{
  result = qword_1EDD09BF8;
  if (!qword_1EDD09BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09BF8);
  }

  return result;
}

unint64_t sub_1C745EEE8()
{
  result = qword_1EC21C160;
  if (!qword_1EC21C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C160);
  }

  return result;
}

uint64_t sub_1C745EF4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001C75B10C0 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001C75B10E0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

unint64_t sub_1C745F020(char a1)
{
  if (a1)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1C745F060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C745EF4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C745F088(uint64_t a1)
{
  v2 = sub_1C745F2A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C745F0C4(uint64_t a1)
{
  v2 = sub_1C745F2A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GlobalTraitDiagnostics.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C168);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  v10 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v9 = sub_1C745F2A4();
  sub_1C75504FC();
  sub_1C755200C();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216848);
  sub_1C745F4EC(&qword_1EDD06BE8, &qword_1EDD0C510);
  OUTLINED_FUNCTION_6_8();

  if (!v9)
  {
    v11 = 1;
    OUTLINED_FUNCTION_6_8();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C745F2A4()
{
  result = qword_1EDD09C10;
  if (!qword_1EDD09C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09C10);
  }

  return result;
}

void GlobalTraitDiagnostics.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C170);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v15);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C745F2A4();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216848);
    sub_1C745F4EC(&qword_1EC219348, &qword_1EDD0C508);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_52();
    v16 = OUTLINED_FUNCTION_282();
    v17(v16);
    *v14 = a10;
    v14[1] = a10;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C745F4EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216848);
    sub_1C745F574(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C745F574(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GlobalTrait();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GlobalTraitDiagnosticsGenerator.makeGlobalTraits(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C73C6860(0xD000000000000010, 0x80000001C75B1010, v5);
  if (!v1)
  {
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1C7044B24(v5);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v11, v5, v6);
      sub_1C754DB8C();
      swift_allocObject();
      sub_1C754DB7C();
      sub_1C754DD6C();
      sub_1C745F85C();
      sub_1C754DB5C();
      v13 = OUTLINED_FUNCTION_0_57();
      v14(v13);
      v15 = OUTLINED_FUNCTION_282();
      sub_1C6FC1640(v15, v16);

      a1 = v17;
    }
  }

  return a1;
}

unint64_t sub_1C745F85C()
{
  result = qword_1EC21C178;
  if (!qword_1EC21C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C178);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GlobalTraitDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for GlobalTraitDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence31GlobalTraitDiagnosticsGeneratorO5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C745FA58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C745FAA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1C745FB00(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1C745FB38()
{
  result = qword_1EC21C180;
  if (!qword_1EC21C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C180);
  }

  return result;
}

unint64_t sub_1C745FB90()
{
  result = qword_1EDD09C00;
  if (!qword_1EDD09C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09C00);
  }

  return result;
}

unint64_t sub_1C745FBE8()
{
  result = qword_1EDD09C08;
  if (!qword_1EDD09C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09C08);
  }

  return result;
}

void sub_1C745FC3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_1C7551D7C() < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for GlobalTrait();
        v3 = sub_1C7550BBC();
        *(v3 + 16) = v2;
      }

      type metadata accessor for GlobalTrait();
      sub_1C745FF6C();
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    sub_1C745FD6C();
  }
}

void sub_1C745FD6C()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v33 = type metadata accessor for GlobalTrait();
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26[-v15];
  v28 = v5;
  if (v3 != v5)
  {
    v17 = *v1;
    v18 = *(v14 + 72);
    v19 = *v1 + v18 * (v3 - 1);
    v20 = -v18;
    v21 = v7 - v3;
    v27 = v18;
    v22 = v17 + v18 * v3;
    while (2)
    {
      v31 = v19;
      v32 = v3;
      v29 = v22;
      v30 = v21;
      while (1)
      {
        sub_1C7258AD4(v22, v16);
        sub_1C7258AD4(v19, v12);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_1C7551DBC();
        sub_1C7285288(v12);
        sub_1C7285288(v16);
        if (v24)
        {
          if (!v17)
          {
            __break(1u);
            return;
          }

          sub_1C7285088(v22, v9);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C7285088(v9, v19);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C7285288(v12);
      sub_1C7285288(v16);
LABEL_14:
      v3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_125();
}

void sub_1C745FF6C()
{
  OUTLINED_FUNCTION_124();
  v145 = v0;
  v2 = v1;
  v4 = v3;
  v131 = v5;
  type metadata accessor for GlobalTrait();
  OUTLINED_FUNCTION_3_0();
  v139 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v134 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  v146 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v126 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v126 - v15);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_130();
  v143 = v18;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_130();
  v142 = v20;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  v130 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  v129 = (&v126 - v24);
  v141 = v4;
  v25 = v4[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v2 = *v131;
    if (!*v131)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_117:
      v118 = (v27 + 16);
      for (i = *(v27 + 2); i >= 2; *v118 = i)
      {
        if (!*v141)
        {
          goto LABEL_152;
        }

        v120 = &v27[16 * i];
        v121 = *v120;
        v122 = &v118[2 * i];
        v123 = *(v122 + 1);
        v124 = v145;
        sub_1C74607F8(*v141 + *(v139 + 72) * *v120, *v141 + *(v139 + 72) * *v122, *v141 + *(v139 + 72) * v123, v2, v114, v115, v116, v117, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
        v145 = v124;
        if (v124)
        {
          break;
        }

        if (v123 < v121)
        {
          goto LABEL_140;
        }

        if (i - 2 >= *v118)
        {
          goto LABEL_141;
        }

        *v120 = v121;
        *(v120 + 1) = v123;
        v125 = *v118 - i;
        if (*v118 < i)
        {
          goto LABEL_142;
        }

        i = *v118 - 1;
        sub_1C7423CF4(v122 + 16, v125, v122);
      }

LABEL_113:

      OUTLINED_FUNCTION_125();
      return;
    }

LABEL_149:
    v27 = sub_1C7420830();
    goto LABEL_117;
  }

  v127 = v2;
  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  v135 = v13;
  v136 = v16;
  while (1)
  {
    v28 = v26++;
    v132 = v28;
    if (v26 < v25)
    {
      v29 = *v141;
      v30 = *(v139 + 72);
      v31 = v129;
      sub_1C7258AD4(*v141 + v30 * v26, v129);
      v140 = v30;
      v32 = v29 + v30 * v28;
      v33 = v130;
      sub_1C7258AD4(v32, v130);
      if (*v31 == *v33 && v31[1] == v33[1])
      {
        LODWORD(v138) = 0;
      }

      else
      {
        LODWORD(v138) = sub_1C7551DBC();
      }

      v128 = v27;
      sub_1C7285288(v130);
      sub_1C7285288(v129);
      v35 = v28 + 2;
      v36 = v140 * (v28 + 2);
      v37 = v29 + v36;
      v38 = v140 * v26;
      v39 = v29 + v140 * v26;
      v137 = v25;
      while (1)
      {
        v40 = v26;
        v41 = v38;
        v2 = v36;
        v144 = v35;
        if (v35 >= v25)
        {
          break;
        }

        v42 = v142;
        sub_1C7258AD4(v37, v142);
        v43 = v143;
        sub_1C7258AD4(v39, v143);
        if (*v42 == *v43 && v42[1] == v43[1])
        {
          v45 = 0;
        }

        else
        {
          v45 = sub_1C7551DBC();
        }

        sub_1C7285288(v143);
        sub_1C7285288(v142);
        v46 = v138 ^ v45;
        v47 = v144;
        v35 = v144 + 1;
        v37 += v140;
        v39 += v140;
        v26 = v40 + 1;
        v38 = v41 + v140;
        v36 = v2 + v140;
        v25 = v137;
        if (v46)
        {
          goto LABEL_21;
        }
      }

      v47 = v35;
LABEL_21:
      if (v138)
      {
        v28 = v132;
        if (v47 < v132)
        {
          goto LABEL_146;
        }

        if (v132 >= v47)
        {
          v26 = v47;
          v27 = v128;
          goto LABEL_39;
        }

        v48 = v132 * v140;
        do
        {
          if (v28 != v40)
          {
            v49 = *v141;
            if (!*v141)
            {
              goto LABEL_153;
            }

            sub_1C7285088(v49 + v48, v134);
            v50 = v48 < v41 || v49 + v48 >= (v49 + v2);
            if (v50)
            {
              OUTLINED_FUNCTION_10_81();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v41)
            {
              OUTLINED_FUNCTION_10_81();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C7285088(v134, v49 + v41);
            v47 = v144;
          }

          ++v28;
          v41 -= v140;
          v2 -= v140;
          v48 += v140;
        }

        while (v28 < v40--);
      }

      v26 = v47;
      v27 = v128;
      v28 = v132;
    }

LABEL_39:
    v52 = v141[1];
    if (v26 < v52)
    {
      if (__OFSUB__(v26, v28))
      {
        goto LABEL_145;
      }

      if (v26 - v28 < v127)
      {
        break;
      }
    }

LABEL_62:
    if (v26 < v28)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v27 = v112;
    }

    v68 = *(v27 + 2);
    v69 = v68 + 1;
    if (v68 >= *(v27 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v27 = v113;
    }

    *(v27 + 2) = v69;
    v70 = v27 + 32;
    v71 = &v27[16 * v68 + 32];
    *v71 = v132;
    *(v71 + 1) = v26;
    v144 = *v131;
    if (!v144)
    {
      goto LABEL_154;
    }

    if (v68)
    {
      while (1)
      {
        v72 = v69 - 1;
        v73 = &v70[16 * v69 - 16];
        v74 = &v27[16 * v69];
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v75 = *(v27 + 4);
          v76 = *(v27 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_82:
          if (v78)
          {
            goto LABEL_131;
          }

          v90 = *v74;
          v89 = *(v74 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_134;
          }

          v94 = *(v73 + 1);
          v95 = v94 - *v73;
          if (__OFSUB__(v94, *v73))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v92, v95))
          {
            goto LABEL_139;
          }

          if (v92 + v95 >= v77)
          {
            if (v77 < v95)
            {
              v72 = v69 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v69 < 2)
        {
          goto LABEL_133;
        }

        v97 = *v74;
        v96 = *(v74 + 1);
        v85 = __OFSUB__(v96, v97);
        v92 = v96 - v97;
        v93 = v85;
LABEL_97:
        if (v93)
        {
          goto LABEL_136;
        }

        v99 = *v73;
        v98 = *(v73 + 1);
        v85 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v85)
        {
          goto LABEL_138;
        }

        if (v100 < v92)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v72 - 1 >= v69)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v141)
        {
          goto LABEL_151;
        }

        v104 = v26;
        v105 = v27;
        v106 = &v70[16 * v72 - 16];
        v107 = *v106;
        v108 = v72;
        v109 = &v70[16 * v72];
        v110 = *(v109 + 1);
        v111 = v145;
        sub_1C74607F8(*v141 + *(v139 + 72) * *v106, *v141 + *(v139 + 72) * *v109, *v141 + *(v139 + 72) * v110, v144, v64, v65, v66, v67, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137);
        v145 = v111;
        if (v111)
        {
          goto LABEL_113;
        }

        if (v110 < v107)
        {
          goto LABEL_126;
        }

        v2 = *(v105 + 2);
        if (v108 > v2)
        {
          goto LABEL_127;
        }

        *v106 = v107;
        *(v106 + 1) = v110;
        if (v108 >= v2)
        {
          goto LABEL_128;
        }

        v69 = v2 - 1;
        sub_1C7423CF4(v109 + 16, v2 - 1 - v108, v109);
        v27 = v105;
        *(v105 + 2) = v2 - 1;
        v26 = v104;
        v13 = v135;
        v16 = v136;
        if (v2 <= 2)
        {
          goto LABEL_111;
        }
      }

      v79 = &v70[16 * v69];
      v80 = *(v79 - 8);
      v81 = *(v79 - 7);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_129;
      }

      v84 = *(v79 - 6);
      v83 = *(v79 - 5);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_130;
      }

      v86 = *(v74 + 1);
      v87 = v86 - *v74;
      if (__OFSUB__(v86, *v74))
      {
        goto LABEL_132;
      }

      v85 = __OFADD__(v77, v87);
      v88 = v77 + v87;
      if (v85)
      {
        goto LABEL_135;
      }

      if (v88 >= v82)
      {
        v102 = *v73;
        v101 = *(v73 + 1);
        v85 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v85)
        {
          goto LABEL_143;
        }

        if (v77 < v103)
        {
          v72 = v69 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v25 = v141[1];
    if (v26 >= v25)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v28, v127))
  {
    goto LABEL_147;
  }

  if (v28 + v127 >= v52)
  {
    v53 = v141[1];
  }

  else
  {
    v53 = v28 + v127;
  }

  if (v53 < v28)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v26 == v53)
  {
    goto LABEL_62;
  }

  v128 = v27;
  v54 = v26;
  v55 = *v141;
  v56 = *(v139 + 72);
  v57 = *v141 + v56 * (v54 - 1);
  v58 = -v56;
  v59 = v28 - v54;
  v144 = v54;
  v133 = v56;
  v60 = v55 + v54 * v56;
  v137 = v53;
LABEL_49:
  v2 = v60;
  v138 = v59;
  v140 = v57;
  while (1)
  {
    sub_1C7258AD4(v2, v16);
    sub_1C7258AD4(v57, v13);
    if (*v16 == *v13 && v16[1] == v13[1])
    {
      sub_1C7285288(v13);
      sub_1C7285288(v16);
LABEL_60:
      v57 = v140 + v133;
      v59 = v138 - 1;
      v60 += v133;
      if (++v144 == v137)
      {
        v26 = v137;
        v27 = v128;
        v28 = v132;
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    v62 = sub_1C7551DBC();
    sub_1C7285288(v13);
    sub_1C7285288(v16);
    if ((v62 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (!v55)
    {
      break;
    }

    v63 = v146;
    sub_1C7285088(v2, v146);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7285088(v63, v57);
    v57 += v58;
    v2 += v58;
    v50 = __CFADD__(v59++, 1);
    if (v50)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

void sub_1C74607F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v77 = type metadata accessor for GlobalTrait();
  MEMORY[0x1EEE9AC00](v77);
  v76 = (v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v75 = (v71 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (v71 - v35);
  MEMORY[0x1EEE9AC00](v37);
  v39 = (v71 - v38);
  v41 = *(v40 + 72);
  if (!v41)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v42 = v28 - v30;
  v43 = v28 - v30 == 0x8000000000000000 && v41 == -1;
  if (v43)
  {
    goto LABEL_72;
  }

  v44 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v41 == -1)
  {
    goto LABEL_73;
  }

  v71[1] = v20;
  v46 = v42 / v41;
  a10 = v30;
  v79 = v24;
  v47 = v44 / v41;
  if (v42 / v41 < v44 / v41)
  {
    sub_1C741E3B0(v30, v42 / v41, v24);
    v48 = v24 + v46 * v41;
    v78 = v48;
    while (1)
    {
      if (v24 >= v48 || v28 >= v26)
      {
        goto LABEL_70;
      }

      sub_1C7258AD4(v28, v39);
      sub_1C7258AD4(v24, v36);
      if (*v39 == *v36 && v39[1] == v36[1])
      {
        sub_1C7285288(v36);
        sub_1C7285288(v39);
      }

      else
      {
        v51 = sub_1C7551DBC();
        sub_1C7285288(v36);
        sub_1C7285288(v39);
        if (v51)
        {
          if (v30 < v28 || v30 >= v28 + v41)
          {
            OUTLINED_FUNCTION_225();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v30 != v28)
          {
            OUTLINED_FUNCTION_225();
            swift_arrayInitWithTakeBackToFront();
          }

          v28 += v41;
          goto LABEL_40;
        }
      }

      if (v30 < v24 || v30 >= v24 + v41)
      {
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v30 != v24)
      {
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeBackToFront();
      }

      v79 = v24 + v41;
      v24 += v41;
LABEL_40:
      v30 += v41;
      a10 = v30;
    }
  }

  sub_1C741E3B0(v28, v44 / v41, v24);
  v54 = v24 + v47 * v41;
  v55 = -v41;
  v56 = v54;
LABEL_42:
  v57 = v28 + v55;
  v58 = v26;
  v71[0] = v56;
  v73 = v28 + v55;
  v74 = v28;
  while (1)
  {
    if (v54 <= v24)
    {
      a10 = v28;
      v78 = v56;
      goto LABEL_70;
    }

    if (v28 <= v30)
    {
      break;
    }

    v72 = v56;
    v59 = v54 + v55;
    v60 = v75;
    sub_1C7258AD4(v54 + v55, v75);
    v61 = v57;
    v62 = v76;
    sub_1C7258AD4(v61, v76);
    if (*v60 == *v62 && v60[1] == v62[1])
    {
      v64 = 0;
    }

    else
    {
      v64 = sub_1C7551DBC();
    }

    v26 = v58 + v55;
    sub_1C7285288(v76);
    sub_1C7285288(v75);
    if (v64)
    {
      if (v58 < v74 || v26 >= v74)
      {
        v67 = v73;
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeFrontToBack();
        v56 = v72;
        v28 = v67;
      }

      else
      {
        v68 = v73;
        v56 = v72;
        v28 = v73;
        if (v58 != v74)
        {
          OUTLINED_FUNCTION_225();
          v70 = v69;
          swift_arrayInitWithTakeBackToFront();
          v28 = v68;
          v56 = v70;
        }
      }

      goto LABEL_42;
    }

    if (v58 < v54 || v26 >= v54)
    {
      OUTLINED_FUNCTION_225();
      swift_arrayInitWithTakeFrontToBack();
      v58 += v55;
      v54 += v55;
      v56 = v59;
      v57 = v73;
      v28 = v74;
    }

    else
    {
      v56 = v54 + v55;
      v43 = v54 == v58;
      v58 += v55;
      v54 += v55;
      v57 = v73;
      v28 = v74;
      if (!v43)
      {
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeBackToFront();
        v58 = v26;
        v54 = v59;
        v56 = v59;
      }
    }
  }

  a10 = v28;
  v78 = v71[0];
LABEL_70:
  sub_1C74208CC(&a10, &v79, &v78);
  OUTLINED_FUNCTION_125();
}

uint64_t QueryUnderstandingStatistics.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 31) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 72) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = v1;
  *(result + 64) = 0;
  return result;
}

uint64_t UserPromptAmbiguityState.description.getter()
{
  OUTLINED_FUNCTION_14_69();
  v2 = 0x756F756769626D61;
  if (!v3)
  {
    v2 = 0x6769626D61736964;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

PhotosIntelligence::UserPromptAmbiguityState_optional __swiftcall UserPromptAmbiguityState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C7460CF8@<X0>(uint64_t *a1@<X8>)
{
  result = UserPromptAmbiguityState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C7460DFC(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1C7460EB0(uint64_t a1)
{
  OUTLINED_FUNCTION_2_57();
  *(v1 + 40) = a1;
}

uint64_t sub_1C7460F14(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1C7460F70(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 49) = a1;
  return result;
}

uint64_t sub_1C7461010(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 50) = a1;
  return result;
}

uint64_t sub_1C74610B0(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 51) = a1;
  return result;
}

uint64_t sub_1C7461150(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 52) = a1;
  return result;
}

uint64_t sub_1C74611F0(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 53) = a1;
  return result;
}

uint64_t sub_1C7461290(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 54) = a1;
  return result;
}

uint64_t sub_1C7461330(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 55) = a1;
  return result;
}

uint64_t sub_1C74613D0(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1C7461470(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 57) = a1;
  return result;
}

uint64_t sub_1C7461510(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 58) = a1;
  return result;
}

uint64_t sub_1C74615B0(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 59) = a1;
  return result;
}

uint64_t sub_1C7461650(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 60) = a1;
  return result;
}

uint64_t sub_1C74616F0(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 61) = a1;
  return result;
}

uint64_t sub_1C7461790(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 62) = a1;
  return result;
}

uint64_t sub_1C7461830(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 63) = a1;
  return result;
}

uint64_t sub_1C74618D0(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_1C7461970(char a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 65) = a1;
  return result;
}

uint64_t sub_1C7461A10(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_57();
  *(v1 + 72) = a1;
  return result;
}

uint64_t QueryUnderstandingStatistics.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 31) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = v2;
  *(v0 + 64) = 0;
  return result;
}

void sub_1C7461AB4(uint64_t a1)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v42 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a1 + 16);
  if (v35)
  {
    v10 = 0;
    v34 = a1 + 32;
    v36 = TokenCategoryType;
    do
    {
      v11 = (v34 + 120 * v10);
      v12 = v11[10];
      v13 = *(v12 + 16);
      if (v13)
      {
        v41 = v10;
        v14 = v11[1];
        v15 = v11[3];
        v17 = v11[13];
        v16 = v11[14];
        v43 = v11[2];
        v44 = v17;
        v45 = v11[12];
        v18 = v11[8];
        v46 = v11[9];
        v47 = v15;
        v19 = v12 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v37 = v16;
        sub_1C75504FC();
        v39 = v12;
        swift_bridgeObjectRetain_n();
        v40 = v14;
        sub_1C75504FC();
        sub_1C75504FC();
        v38 = v18;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        OUTLINED_FUNCTION_58_13();
        v20 = *(v42 + 72);
        do
        {
          sub_1C71AC0CC(v19, v9, type metadata accessor for QueryTokenSuggestion);
          sub_1C71AC0CC(v9, v6, type metadata accessor for QueryTokenCategoryType);
          sub_1C743D9F8(v9, type metadata accessor for QueryTokenSuggestion);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_0_189();
              *(v1 + 49) = 1;
              break;
            case 2u:
              v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0) + 48);
              *(v1 + 53) = 1;
              sub_1C6FD7FC8(&v6[v29], &qword_1EC218C50);
              v27 = v6;
              v28 = &qword_1EC218C50;
              goto LABEL_28;
            case 3u:
              OUTLINED_FUNCTION_0_189();
              *(v1 + 54) = 1;
              break;
            case 4u:
              *(v1 + 55) = 1;
              sub_1C754F09C();
              goto LABEL_25;
            case 5u:
              *(v1 + 56) = 1;
              sub_1C754F5FC();
LABEL_25:
              OUTLINED_FUNCTION_12();
              (*(v30 + 8))(v6);
              break;
            case 6u:
              OUTLINED_FUNCTION_0_189();
              *(v1 + 57) = 1;
              break;
            case 7u:
              *(v1 + 58) = 1;
              sub_1C743D9F8(v6, type metadata accessor for GroundedGenericLocation);
              break;
            case 8u:
              *(v1 + 51) = 1;
              v27 = v6;
              v28 = &qword_1EC216328;
              goto LABEL_28;
            case 9u:
              v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0) + 48);
              *(v1 + 52) = 1;
              sub_1C743D9F8(&v6[v31], type metadata accessor for PersonalEventBackingItem);
              v27 = v6;
              v28 = &qword_1EC216320;
LABEL_28:
              sub_1C6FD7FC8(v27, v28);
              break;
            case 0xAu:
              v26 = *(*v6 + 16);

              *(v1 + 63) = v26 != 0;
              break;
            case 0xBu:
              break;
            case 0xCu:
              OUTLINED_FUNCTION_0_189();
              *(v1 + 59) = 1;
              break;
            case 0xDu:
              *(v1 + 65) = 1;
              break;
            case 0xEu:
              *(v1 + 50) = 1;
              swift_beginAccess();
              v21 = *(v1 + 40);
              sub_1C75504FC();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v1 + 40) = v21;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1C6FB1814();
                v21 = v32;
                *(v1 + 40) = v32;
              }

              v23 = *(v21 + 16);
              if (v23 >= *(v21 + 24) >> 1)
              {
                sub_1C6FB1814();
                v21 = v33;
              }

              *(v21 + 16) = v23 + 1;
              v24 = v21 + 16 * v23;
              v25 = v47;
              *(v24 + 32) = v43;
              *(v24 + 40) = v25;
              *(v1 + 40) = v21;
              swift_endAccess();
              break;
            case 0xFu:
              *(v1 + 61) = 1;
              break;
            case 0x10u:
              *(v1 + 60) = 1;
              break;
            case 0x11u:
              *(v1 + 62) = 1;
              break;
            case 0x12u:
              *(v1 + 64) = 1;
              break;
            default:
              OUTLINED_FUNCTION_0_189();
              *(v1 + 48) = 1;
              break;
          }

          v19 += v20;
          --v13;
        }

        while (v13);

        swift_bridgeObjectRelease_n();

        v10 = v41;
      }

      ++v10;
    }

    while (v10 != v35);
  }
}

void sub_1C74620A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C754D84C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  sub_1C754D7FC();
  sub_1C754D7EC();
  sub_1C754D80C();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v33 = v16;
  v34 = v6;
  v16(v12, v6);
  v35 = a1;
  v36 = a2;
  sub_1C6FB5E8C();
  v17 = sub_1C755151C();
  v18 = 0;
  v19 = *(v17 + 16);
  v20 = v17 + 40;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v22 = (v20 + 16 * v18);
  while (1)
  {
    if (v19 == v18)
    {

      v33(v15, v34);
      v29 = *(v21 + 16);

      OUTLINED_FUNCTION_58_13();
      *(v3 + 72) = v29;
      return;
    }

    if (v18 >= *(v17 + 16))
    {
      break;
    }

    ++v18;
    v23 = *(v22 - 1);
    v24 = *v22;
    v22 += 2;
    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v21;
      v31 = v20;
      v32 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C();
        v21 = v35;
      }

      v27 = *(v21 + 16);
      if (v27 >= *(v21 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v21 = v35;
      }

      *(v21 + 16) = v27 + 1;
      v28 = v21 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v24;
      v20 = v31;
      v3 = v32;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1C7462320()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C758CC40;
  OUTLINED_FUNCTION_3_1();
  *(v1 + 32) = 0xD000000000000018;
  *(v1 + 40) = v2;
  sub_1C755104C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = v4;
  OUTLINED_FUNCTION_5();
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = v6;
  *(inited + 96) = sub_1C755104C();
  *(inited + 104) = sub_1C755068C();
  *(inited + 112) = v7;
  OUTLINED_FUNCTION_5();
  sub_1C75504FC();
  v8 = sub_1C7550B3C();

  *(inited + 120) = v8;
  *(inited + 128) = sub_1C755068C();
  *(inited + 136) = v9;
  OUTLINED_FUNCTION_5();
  *(inited + 144) = sub_1C7550C7C();
  *(inited + 152) = sub_1C755068C();
  *(inited + 160) = v10;
  OUTLINED_FUNCTION_5();
  *(inited + 168) = sub_1C7550C7C();
  *(inited + 176) = sub_1C755068C();
  *(inited + 184) = v11;
  OUTLINED_FUNCTION_5();
  *(inited + 192) = sub_1C7550C7C();
  *(inited + 200) = sub_1C755068C();
  *(inited + 208) = v12;
  OUTLINED_FUNCTION_5();
  *(inited + 216) = sub_1C7550C7C();
  *(inited + 224) = sub_1C755068C();
  *(inited + 232) = v13;
  OUTLINED_FUNCTION_5();
  *(inited + 240) = sub_1C7550C7C();
  *(inited + 248) = sub_1C755068C();
  *(inited + 256) = v14;
  OUTLINED_FUNCTION_5();
  *(inited + 264) = sub_1C7550C7C();
  *(inited + 272) = sub_1C755068C();
  *(inited + 280) = v15;
  OUTLINED_FUNCTION_5();
  *(inited + 288) = sub_1C7550C7C();
  *(inited + 296) = sub_1C755068C();
  *(inited + 304) = v16;
  OUTLINED_FUNCTION_5();
  *(inited + 312) = sub_1C7550C7C();
  *(inited + 320) = sub_1C755068C();
  *(inited + 328) = v17;
  OUTLINED_FUNCTION_5();
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 336) = v18;
  *(inited + 344) = 0xD000000000000017;
  *(inited + 352) = v19;
  OUTLINED_FUNCTION_5();
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 360) = v20;
  *(inited + 368) = 0xD000000000000013;
  *(inited + 376) = v21;
  OUTLINED_FUNCTION_5();
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 384) = v22;
  *(inited + 392) = 0xD000000000000015;
  *(inited + 400) = v23;
  OUTLINED_FUNCTION_5();
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 408) = v24;
  *(inited + 416) = 0xD000000000000015;
  *(inited + 424) = v25;
  OUTLINED_FUNCTION_5();
  *(inited + 432) = sub_1C7550C7C();
  *(inited + 440) = 0x7361487972657571;
  *(inited + 448) = 0xEF656D69546C6C41;
  OUTLINED_FUNCTION_5();
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 456) = v26;
  *(inited + 464) = 0xD000000000000011;
  *(inited + 472) = v27;
  OUTLINED_FUNCTION_5();
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 480) = v28;
  *(inited + 488) = 0xD000000000000011;
  *(inited + 496) = v29;
  OUTLINED_FUNCTION_5();
  sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 504) = v30;
  *(inited + 512) = 0xD000000000000012;
  *(inited + 520) = v31;
  OUTLINED_FUNCTION_5();
  *(inited + 528) = sub_1C7550C7C();
  OUTLINED_FUNCTION_3_1();
  *(inited + 536) = 0xD000000000000013;
  *(inited + 544) = v32;
  OUTLINED_FUNCTION_5();
  *(inited + 552) = sub_1C7550C7C();
  strcpy((inited + 560), "queryWordCount");
  *(inited + 575) = -18;
  OUTLINED_FUNCTION_1_139();
  *(inited + 576) = sub_1C755104C();
  sub_1C6FEAF80();
  return sub_1C75504DC();
}

uint64_t sub_1C74627B4()
{
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75B1110);
  OUTLINED_FUNCTION_5();
  v1 = OUTLINED_FUNCTION_5_98(v0[16]);
  if (v2)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v1, v3);

  MEMORY[0x1CCA5CD70](0x656972746572202CLL, 0xED0000203A646576);
  v4 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](0x756769626D61202CLL, 0xED0000203A73756FLL);
  OUTLINED_FUNCTION_5();
  v5 = OUTLINED_FUNCTION_5_98(v0[32]);
  if (v2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v5, v6);

  MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C75B1130);
  OUTLINED_FUNCTION_14_69();
  v10 = 0xE900000000000073;
  v11 = 0x756F756769626D61;
  if (!v2)
  {
    v11 = 0x6769626D61736964;
    v10 = 0xED00006465746175;
  }

  if (v7)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (v7)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x1CCA5CD70](v12, v13);

  MEMORY[0x1CCA5CD70](0x3A55514D4C4C202CLL, 0xE900000000000020);
  v14 = OUTLINED_FUNCTION_5_98(v0[34]);
  if (v2)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v14, v15);

  MEMORY[0x1CCA5CD70](0x7265507361680A2CLL, 0xED0000203A6E6F73);
  OUTLINED_FUNCTION_5();
  v16 = OUTLINED_FUNCTION_5_98(v0[48]);
  if (v2)
  {
    v17 = 0xE500000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v16, v17);

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B1150);
  OUTLINED_FUNCTION_5();
  v18 = OUTLINED_FUNCTION_5_98(v0[49]);
  if (v2)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v18, v19);

  v20 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v20 | 0x6D69547300000000, 0xEB00000000203A65);
  OUTLINED_FUNCTION_5();
  v21 = OUTLINED_FUNCTION_5_98(v0[53]);
  if (v2)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v21, v22);

  OUTLINED_FUNCTION_12_80();
  OUTLINED_FUNCTION_5();
  v23 = OUTLINED_FUNCTION_5_98(v0[54]);
  if (v2)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v23, v24);

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75B1190);
  OUTLINED_FUNCTION_5();
  v25 = OUTLINED_FUNCTION_5_98(v0[55]);
  if (v2)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v25, v26);

  v27 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v27 | 0x6165537300000000, 0xED0000203A6E6F73);
  OUTLINED_FUNCTION_5();
  v28 = OUTLINED_FUNCTION_5_98(v0[56]);
  if (v2)
  {
    v29 = 0xE500000000000000;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v28, v29);

  v30 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v30 | 0x636F4C7300000000, 0xEF203A6E6F697461);
  OUTLINED_FUNCTION_5();
  v31 = OUTLINED_FUNCTION_5_98(v0[57]);
  if (v2)
  {
    v32 = 0xE500000000000000;
  }

  else
  {
    v32 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v31, v32);

  MEMORY[0x1CCA5CD70](0x7463417361680A2CLL, 0xEF203A7974697669);
  OUTLINED_FUNCTION_5();
  v33 = OUTLINED_FUNCTION_5_98(v0[50]);
  if (v2)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v33, v34);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75B11B0);
  OUTLINED_FUNCTION_5();
  v35 = OUTLINED_FUNCTION_5_98(v0[58]);
  if (v2)
  {
    v36 = 0xE500000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v35, v36);

  MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75B11D0);
  OUTLINED_FUNCTION_5();
  v37 = OUTLINED_FUNCTION_5_98(v0[51]);
  if (v2)
  {
    v38 = 0xE500000000000000;
  }

  else
  {
    v38 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v37, v38);

  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B11F0);
  OUTLINED_FUNCTION_5();
  v39 = OUTLINED_FUNCTION_5_98(v0[52]);
  if (v2)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v39, v40);

  MEMORY[0x1CCA5CD70](0x7069725473690A2CLL, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_5();
  v41 = OUTLINED_FUNCTION_5_98(v0[59]);
  if (v2)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v41, v42);

  v43 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v43 | 0x6C6C417300000000, 0xEE00203A656D6954);
  OUTLINED_FUNCTION_5();
  v44 = OUTLINED_FUNCTION_5_98(v0[64]);
  if (v2)
  {
    v45 = 0xE500000000000000;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v44, v45);

  OUTLINED_FUNCTION_12_80();
  OUTLINED_FUNCTION_5();
  v46 = OUTLINED_FUNCTION_5_98(v0[65]);
  if (v2)
  {
    v47 = 0xE500000000000000;
  }

  else
  {
    v47 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v46, v47);

  MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75B1230);
  OUTLINED_FUNCTION_5();
  v48 = OUTLINED_FUNCTION_5_98(v0[60]);
  if (v2)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v48, v49);

  v50 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v50 | 0x6E6F537300000000, 0xEB00000000203A67);
  OUTLINED_FUNCTION_5();
  v51 = OUTLINED_FUNCTION_5_98(v0[61]);
  if (v2)
  {
    v52 = 0xE500000000000000;
  }

  else
  {
    v52 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v51, v52);

  v53 = OUTLINED_FUNCTION_13_87();
  MEMORY[0x1CCA5CD70](v53 | 0x6E65477300000000, 0xEC000000203A6572);
  OUTLINED_FUNCTION_5();
  v54 = OUTLINED_FUNCTION_5_98(v0[62]);
  if (v2)
  {
    v55 = 0xE500000000000000;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v54, v55);

  OUTLINED_FUNCTION_12_80();
  OUTLINED_FUNCTION_1_139();
  v56 = OUTLINED_FUNCTION_5_98(v0[63]);
  if (v2)
  {
    v57 = 0xE500000000000000;
  }

  else
  {
    v57 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v56, v57);

  return 0;
}

uint64_t QueryUnderstandingStatistics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1C7462EF0()
{
  result = qword_1EC21C188;
  if (!qword_1EC21C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C188);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserPromptAmbiguityState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7463B9C()
{
  result = qword_1EC21C190;
  if (!qword_1EC21C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C190);
  }

  return result;
}

uint64_t sub_1C7463BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;
  result = sub_1C75504FC();
  v11 = 0;
  v21 = v9;
  v22 = v5;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = (*(a2 + 48) + 48 * v13);
      v15 = v14[1];
      v16 = v14[2];
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[5];
      v20 = *(*(a2 + 56) + 8 * v13);
      v25[0] = *v14;
      v25[1] = v15;
      v25[2] = v16;
      v25[3] = v17;
      v25[4] = v18;
      v25[5] = v19;
      v25[6] = v20;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7468FD8(&v26, v25, a3);
      if (v4)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      v4 = 0;
      v9 = v21;
      v5 = v22;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return v26;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C7463DE0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v45 = MEMORY[0x1E69E7CC0];
  sub_1C716DAB4();
  v3 = v1 + 56;
  v4 = v45;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v32 = v2;
  v34 = v1;
  if (v2)
  {
    sub_1C75504FC();
    v9 = 0;
    v2 = 0;
    while (1)
    {
      v43 = v4;
      if (!v7)
      {
        break;
      }

LABEL_10:
      v11 = (*(v1 + 48) + 48 * (__clz(__rbit64(v7)) | (v2 << 6)));
      v37 = *v11;
      v13 = v11[2];
      v12 = v11[3];
      v15 = v11[4];
      v14 = v11[5];
      v42 = v11[1];
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      v41 = v15;
      sub_1C75504FC();
      v39 = v14;
      sub_1C75504FC();
      sub_1C7069A44();
      v35 = v16;
      sub_1C75504FC();
      sub_1C7069A44();
      v4 = v43;
      v18 = *(v43 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v43 + 24) >> 1)
      {
        v31 = v17;
        sub_1C716DAB4();
        v19 = v18 + 1;
        v17 = v31;
        v4 = v43;
      }

      ++v9;
      *(v4 + 16) = v19;
      v7 &= v7 - 1;
      v20 = (v4 + (v18 << 6));
      v20[4] = v37;
      v20[5] = v42;
      v20[6] = v13;
      v20[7] = v12;
      v20[8] = v41;
      v20[9] = v39;
      v20[10] = v35;
      v20[11] = v17;
      v1 = v34;
      if (v9 == v32)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_26;
      }

      v7 = *(v3 + 8 * v10);
      ++v2;
      if (v7)
      {
        v2 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    sub_1C75504FC();
LABEL_15:
    if (v7)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v21 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v21 >= v8)
      {

        return;
      }

      v7 = *(v3 + 8 * v21);
      ++v2;
      if (v7)
      {
        v2 = v21;
        do
        {
LABEL_20:
          v22 = (*(v1 + 48) + 48 * (__clz(__rbit64(v7)) | (v2 << 6)));
          v23 = v22[1];
          v40 = *v22;
          v24 = v22[3];
          v36 = v22[2];
          v26 = v22[4];
          v25 = v22[5];
          swift_bridgeObjectRetain_n();
          v44 = v23;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C7069A44();
          v38 = v27;
          sub_1C75504FC();
          sub_1C7069A44();
          v29 = *(v4 + 16);
          if (v29 >= *(v4 + 24) >> 1)
          {
            v33 = v28;
            sub_1C716DAB4();
            v28 = v33;
          }

          *(v4 + 16) = v29 + 1;
          v7 &= v7 - 1;
          v30 = (v4 + (v29 << 6));
          v30[4] = v40;
          v30[5] = v44;
          v30[6] = v36;
          v30[7] = v24;
          v30[8] = v26;
          v30[9] = v25;
          v30[10] = v38;
          v30[11] = v28;
          v1 = v34;
        }

        while (v7);
      }
    }
  }

  __break(1u);
}

void sub_1C7464138()
{
  OUTLINED_FUNCTION_33();
  v135 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v149[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1C754F38C();
  v131 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[3];
  v132 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v10);
  v130 = v9;
  sub_1C754F1CC();
  v133 = *(v4 + 16);
  v134 = v4;
  if (v133)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v141 = v11;
  sub_1C7465584();
  v12 = 0;
  v13 = 0;
  v15 = v14 + 9;
  v149[0] = MEMORY[0x1E69E7CC8];
  v142 = v14;
  isUniquelyReferenced_nonNull_native = v14[2];
  while (isUniquelyReferenced_nonNull_native != v12)
  {
    if (v12 >= v142[2])
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v9 = *(v15 - 3);
    v4 = *(v15 - 2);
    v6 = *(v15 - 1);
    v17 = *v15;
    v2 = *(v15 - 4);
    *&v144 = *(v15 - 5);
    *(&v144 + 1) = v2;
    v145 = v9;
    v146 = v4;
    v147 = v6;
    v148 = v17;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C74661D8(v149, &v144);

    ++v12;
    v15 += 6;
  }

  v143 = v149[0];
  sub_1C75504FC();
  v18 = 0;
  v19 = v142 + 9;
  while (isUniquelyReferenced_nonNull_native != v18)
  {
    if (v18 >= v142[2])
    {
      goto LABEL_84;
    }

    v9 = *(v19 - 3);
    v4 = *(v19 - 2);
    v6 = *(v19 - 1);
    v20 = *v19;
    v2 = *(v19 - 4);
    *&v144 = *(v19 - 5);
    *(&v144 + 1) = v2;
    v145 = v9;
    v146 = v4;
    v147 = v6;
    v148 = v20;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C74664EC(v149, &v144);

    ++v18;
    v19 += 6;
  }

  v128 = v7;
  v4 = v149[0];
  v21 = v135;
  v22 = sub_1C7465D2C(v149[0], v141);
  v9 = 0;
  v149[0] = MEMORY[0x1E69E7CC8];
  v23 = *(v22 + 16);
  v138 = v22 + 32;
  v24 = (v22 + 56);
  while (v23 != v9)
  {
    if (v9 >= *(v22 + 16))
    {
      goto LABEL_85;
    }

    v21 = *(v24 - 1);
    v2 = *v24;
    v6 = *(v24 - 2);
    *&v144 = *(v24 - 3);
    *(&v144 + 1) = v6;
    v145 = v21;
    v146 = v2;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7466800(v149, &v144);

    ++v9;
    v24 += 4;
  }

  v127 = v4;
  v25 = 0;
  v129 = v149[0];
  v4 = MEMORY[0x1E69E7CC8];
  v136 = v23;
  v137 = v22;
  while (v25 != v23)
  {
    if (v25 >= *(v22 + 16))
    {
      goto LABEL_88;
    }

    v26 = (v138 + 32 * v25);
    v27 = *v26;
    v28 = v26[1];
    v140 = v13;
    v141 = v27;
    v13 = v26[2];
    isUniquelyReferenced_nonNull_native = v26[3];
    v139 = v25 + 1;
    *&v144 = MEMORY[0x1E69E7CD0];
    v9 = v13 + 56;
    OUTLINED_FUNCTION_90_1();
    v2 = (v30 & v29);
    v32 = (v31 + 63) >> 6;
    OUTLINED_FUNCTION_129_0();
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    sub_1C75504FC();
    v33 = 0;
    while (v2)
    {
      v34 = v2;
LABEL_26:
      v2 = ((v34 - 1) & v34);
      if (*(v143 + 16))
      {
        v36 = (*(v13 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v34)))));
        v37 = *v36;
        v6 = v36[1];
        sub_1C75504FC();
        v38 = v37;
        v21 = v143;
        sub_1C6F78124(v38, v6);
        if (v39)
        {
          v40 = sub_1C75504FC();
          v21 = &v144;
          sub_1C7397A5C(v40);
        }
      }
    }

    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_65;
      }

      if (v35 >= v32)
      {
        break;
      }

      v34 = *(v9 + 8 * v35);
      ++v33;
      if (v34)
      {
        v33 = v35;
        goto LABEL_26;
      }
    }

    v41 = v144;
    swift_isUniquelyReferenced_nonNull_native();
    *&v144 = v4;
    v42 = OUTLINED_FUNCTION_19_74();
    v46 = sub_1C6FC2B48(v42, v43, v44, v45);
    v48 = *(v4 + 16);
    v49 = (v47 & 1) == 0;
    v4 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_89;
    }

    v6 = v46;
    v9 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C198);
    v21 = &v144;
    if (sub_1C7551A2C())
    {
      v21 = v144;
      v50 = OUTLINED_FUNCTION_19_74();
      v54 = sub_1C6FC2B48(v50, v51, v52, v53);
      if ((v9 & 1) != (v55 & 1))
      {
        while (1)
        {
LABEL_95:
          sub_1C7551E4C();
          __break(1u);
LABEL_96:

          swift_willThrow();

          __break(1u);
        }
      }

      v6 = v54;
    }

    v4 = v144;
    if (v9)
    {
      v56 = *(v144 + 56);
      v21 = *(v56 + 8 * v6);
      *(v56 + 8 * v6) = v41;
    }

    else
    {
      *(v144 + 8 * (v6 >> 6) + 64) |= 1 << v6;
      v57 = (*(v4 + 48) + 32 * v6);
      *v57 = v141;
      v57[1] = v28;
      v57[2] = v13;
      v57[3] = isUniquelyReferenced_nonNull_native;
      *(*(v4 + 56) + 8 * v6) = v41;
      v58 = *(v4 + 16);
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_91;
      }

      *(v4 + 16) = v60;
    }

    v25 = v139;
    v13 = v140;
    v23 = v136;
    v22 = v137;
  }

  v2 = v142;
  v9 = v129;
  sub_1C7466A68();
  v6 = v61;

  *&v144 = MEMORY[0x1E69E7CC0];
  v62 = v6 + 64;
  OUTLINED_FUNCTION_11();
  isUniquelyReferenced_nonNull_native = v64 & v63;
  v66 = (v65 + 63) >> 6;
  v142 = v6;
  sub_1C75504FC();
  v4 = 0;
  v141 = v6 + 64;
  v135 = v66;
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_41;
  }

  do
  {
    v140 = v13;
LABEL_45:
    OUTLINED_FUNCTION_22_65();
    v69 = v68[1];
    v2 = v68[2];
    v9 = v68[4];
    v70 = v68[5];
    v73 = *(v72 + 8 * v71);
    LOBYTE(v71) = *(v73 + 32);
    v136 = v71 & 0x3F;
    v137 = v73;
    v13 = ((1 << v71) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v139 = v69;
    v6 = v2;
    sub_1C75504FC();
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    sub_1C75504FC();
    v138 = v70;
    isStackAllocationSafe = sub_1C75504FC();
    if (v136 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      sub_1C71FAC38(0, v13, &v126 - ((8 * v13 + 15) & 0x3FFFFFFFFFFFFFF0));
      OUTLINED_FUNCTION_13_88();
      sub_1C70A9104(v75, v76, v77, v78);
      if (v13)
      {
        goto LABEL_96;
      }

      v80 = v79;

      OUTLINED_FUNCTION_29_20();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v62 = v141;
    }

    else
    {
      swift_slowAlloc();

      OUTLINED_FUNCTION_13_88();
      v80 = sub_1C70A9074(v81, v82, v83, v84);

      if (v13)
      {

        OUTLINED_FUNCTION_109();
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_109();
    }

    isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
    sub_1C6FD25FC(v80);
    v66 = v135;
  }

  while (isUniquelyReferenced_nonNull_native);
LABEL_41:
  while (1)
  {
    v67 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v67 >= v66)
    {
      v140 = v13;

      v13 = sub_1C706D154(v144);
      sub_1C75504FC();
      sub_1C7069A44();
      v6 = v85;
      *&v144 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_23_37();
      v88 = v87 & v86;
      v2 = ((v89 + 63) >> 6);
      sub_1C75504FC();
      v9 = 0;
      if (!v88)
      {
        goto LABEL_55;
      }

      do
      {
LABEL_59:
        v88 &= v88 - 1;
        v91 = sub_1C75504FC();
        sub_1C6FD25FC(v91);
      }

      while (v88);
LABEL_55:
      while (1)
      {
        v90 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_87;
        }

        if (v90 >= v2)
        {

          isUniquelyReferenced_nonNull_native = sub_1C706D154(v144);
          v4 = sub_1C7080ED4(v143);
          sub_1C75504FC();
          sub_1C7069A44();
          v9 = v92;
          v2 = sub_1C7080ED4(v127);
          if (qword_1EDD09CF0 != -1)
          {
            goto LABEL_94;
          }

          goto LABEL_62;
        }

        v88 = *(v62 + 8 * v90);
        ++v9;
        if (v88)
        {
          v9 = v90;
          goto LABEL_59;
        }
      }
    }

    isUniquelyReferenced_nonNull_native = *(v62 + 8 * v67);
    ++v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v140 = v13;
      v4 = v67;
      goto LABEL_45;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  OUTLINED_FUNCTION_0_23();
  swift_once();
LABEL_62:
  v93 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v93, qword_1EDD28B68);
  sub_1C75504FC();
  sub_1C75504FC();

  sub_1C75504FC();

  sub_1C75504FC();
  v21 = sub_1C754FEEC();
  v94 = sub_1C75511BC();
  if (os_log_type_enabled(v21, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 134219264;
    v96 = *(v13 + 16);

    *(v95 + 4) = v96;

    v13 = 2048;
    *(v95 + 12) = 2048;
    v97 = *(v6 + 16);

    *(v95 + 14) = v97;

    *(v95 + 22) = 2048;
    v98 = *(isUniquelyReferenced_nonNull_native + 16);

    *(v95 + 24) = v98;

    *(v95 + 32) = 2048;
    v99 = *(v4 + 16);

    *(v95 + 34) = v99;

    *(v95 + 42) = 2048;
    v100 = *(v9 + 16);

    *(v95 + 44) = v100;

    *(v95 + 52) = 2048;
    v101 = v2[2];

    *(v95 + 54) = v101;

    _os_log_impl(&dword_1C6F5C000, v21, v94, "Final Assignment - represented assets %ld (%ld, %ld) out of total assets %ld (%ld, %ld)", v95, 0x3Eu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
LABEL_65:

    OUTLINED_FUNCTION_129_0();
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_29_20();

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_23_37();
  v104 = v103 & v102;
  v106 = (v105 + 63) >> 6;
  sub_1C75504FC();
  v6 = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v107 = v141;
  v135 = v106;
  if (v104)
  {
    goto LABEL_71;
  }

  while (1)
  {
LABEL_67:
    v108 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_90;
    }

    if (v108 >= v106)
    {
      break;
    }

    v104 = *(v107 + 8 * v108);
    ++v6;
    if (v104)
    {
      v6 = v108;
LABEL_71:
      while (1)
      {
        OUTLINED_FUNCTION_22_65();
        v110 = *v109;
        v111 = v109[1];
        v112 = v109[2];
        v9 = v109[3];
        v4 = v109[4];
        v113 = v109[5];
        v13 = *(v115 + 8 * v114);
        OUTLINED_FUNCTION_129_0();
        swift_bridgeObjectRetain_n();
        sub_1C75504FC();
        v143 = v112;
        sub_1C75504FC();
        v139 = v9;
        sub_1C75504FC();
        v138 = v4;
        sub_1C75504FC();
        v137 = v113;
        sub_1C75504FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v144 = v2;
        v136 = v110;
        v116 = sub_1C6F78124(v110, v111);
        v118 = v2[2];
        v119 = (v117 & 1) == 0;
        v2 = (v118 + v119);
        if (__OFADD__(v118, v119))
        {
          goto LABEL_92;
        }

        v9 = v116;
        v4 = v117;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
        if (sub_1C7551A2C())
        {
          sub_1C6F78124(v136, v111);
          OUTLINED_FUNCTION_8_5();
          if (!v121)
          {
            goto LABEL_95;
          }

          v9 = v120;
        }

        v2 = v144;
        if (v4)
        {
          *(*(v144 + 56) + 8 * v9) = v13;
        }

        else
        {
          *(v144 + 8 * (v9 >> 6) + 64) |= 1 << v9;
          v122 = (v2[6] + 16 * v9);
          *v122 = v136;
          v122[1] = v111;
          *(v2[7] + 8 * v9) = v13;

          v123 = v2[2];
          v59 = __OFADD__(v123, 1);
          v124 = v123 + 1;
          if (v59)
          {
            goto LABEL_93;
          }

          v2[2] = v124;
        }

        v104 &= v104 - 1;
        v107 = v141;
        v106 = v135;
        if (!v104)
        {
          goto LABEL_67;
        }
      }
    }
  }

  __swift_project_boxed_opaque_existential_1(v132, v132[3]);
  v125 = v130;
  sub_1C754F1AC();
  (*(v131 + 8))(v125, v128);
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7464FD4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 56);
  if (v8)
  {
    v36 = a4;
    v9 = 0;
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
    v12 = (v6 + 63) >> 6;
LABEL_9:
    v15 = (*(result + 48) + 40 * v10);
    v43 = *v15;
    v16 = v15[2];
    v17 = v15[3];
    v18 = v15[4];
    v47 = v15[1];
    sub_1C75504FC();
    v46 = v16;
    sub_1C75504FC();
    v45 = v17;
    sub_1C75504FC();
    v44 = v18;
    sub_1C75504FC();
    result = sub_1C75504FC();
    v38 = v12;
    v39 = v5;
    v40 = v4;
LABEL_10:
    v19 = v9;
    if (!v11)
    {
      goto LABEL_12;
    }

    do
    {
      v9 = v19;
LABEL_15:
      v20 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v21 = *(v4 + 48) + 40 * (v20 | (v9 << 6));
      v22 = *(v21 + 32);
      v37 = *v21;
      v23 = *(v21 + 16);
      v24 = *(a3 + 16);
      v25 = *(a3 + 24);
      v48 = *(v21 + 8);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7467F08(a2 & 1, v26, v27, v24, v25);
      v29 = v28;

      v30 = *(a3 + 16);
      v31 = *(a3 + 24);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7467F08(a2 & 1, v32, v33, v30, v31);
      v35 = v34;

      if (v29 < v35)
      {

        v44 = v22;
        v45 = *(&v23 + 1);
        v46 = v23;
        v47 = v48;
        v12 = v38;
        v43 = v37;
        v5 = v39;
        v4 = v40;
        goto LABEL_10;
      }

      v19 = v9;
      v5 = v39;
      v4 = v40;
      v12 = v38;
    }

    while (v11);
LABEL_12:
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v12)
      {

        a4 = v36;
        goto LABEL_20;
      }

      v11 = *(v5 + 8 * v9);
      ++v19;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = 0;
    v12 = (v6 + 63) >> 6;
    while (1)
    {
      v9 = v8 + 1;
      if (v8 + 1 >= v12)
      {
        break;
      }

      v14 = *(result + 64 + 8 * v8);
      v13 += 64;
      ++v8;
      if (v14)
      {
        v36 = a4;
        v11 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) + v13;
        goto LABEL_9;
      }
    }

    v43 = 0;
    v44 = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
LABEL_20:
    *a4 = v43;
    a4[1] = v47;
    a4[2] = v46;
    a4[3] = v45;
    a4[4] = v44;
  }

  return result;
}

void sub_1C746534C()
{
  OUTLINED_FUNCTION_115();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {
    sub_1C7036A90(v1[2], v0[2]);
    if (v4)
    {
      sub_1C7036A90(v1[3], v0[3]);
      if (v5)
      {
        sub_1C7036A90(v1[4], v0[4]);
        if (v6)
        {
          v7 = v1[5];
          v8 = v0[5];

          sub_1C7036A90(v7, v8);
        }
      }
    }
  }
}

uint64_t sub_1C74653E8()
{
  OUTLINED_FUNCTION_15_82();
  sub_1C7551F3C();
  OUTLINED_FUNCTION_35();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t sub_1C7465434()
{
  OUTLINED_FUNCTION_15_82();
  sub_1C7551F3C();
  OUTLINED_FUNCTION_35();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

void sub_1C746547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (sub_1C7551DBC() & 1) != 0)
  {
    sub_1C7036A90(a3, a7);
    if (v13)
    {

      sub_1C7036A90(a4, a8);
    }
  }
}

uint64_t sub_1C746550C()
{
  OUTLINED_FUNCTION_115();
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

void sub_1C7465584()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = v1;
    v4 = v0;
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C716D9D8();
    v5 = v22;
    v6 = (v4 + 32);
    do
    {
      memcpy(v21, v6, sizeof(v21));
      memcpy(__dst, v6, sizeof(__dst));
      sub_1C6FC061C(v21, v15);
      sub_1C74656E4(__dst, v3, &v17);
      memcpy(v15, __dst, sizeof(v15));
      sub_1C70552E0(v15);
      v7 = v18;
      v8 = v19;
      v9 = v17;
      v10 = v20;
      v22 = v5;
      v11 = *(v5 + 16);
      if (v11 >= *(v5 + 24) >> 1)
      {
        v13 = v19;
        v14 = v18;
        sub_1C716D9D8();
        v8 = v13;
        v7 = v14;
        v5 = v22;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 48 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v7;
      *(v12 + 56) = v8;
      *(v12 + 72) = v10;
      v6 += 104;
      --v2;
    }

    while (v2);
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C74656E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v6 = 0;
  v54 = *a1;
  v55 = a1[1];
  v7 = a1[5];
  v60 = a1[8];
  v57 = a1[11];
  v67 = MEMORY[0x1E69E7CD0];
  v8 = *(v7 + 16);
  v9 = (v7 + 64);
  while (v8 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
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

      v50 = v64;

      __break(1u);
      return result;
    }

    v11 = *(v9 - 1);
    v10 = *v9;
    v12 = *(v9 - 3);
    v13 = *(v9 - 2);
    v63[0] = *(v9 - 4);
    v63[1] = v12;
    v64 = v13;
    v65 = v11;
    v66 = v10;
    sub_1C75504FC();
    v14 = v13;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7465B58(&v67, v63);
    if (v4)
    {
      goto LABEL_49;
    }

    ++v6;
    v15 = v64;

    v9 += 5;
  }

  v16 = v67;
  v53 = v67;
  sub_1C75504FC();
  if (a2)
  {
    sub_1C7069A44();
    v52 = v17;
  }

  else
  {
    v52 = v16;
  }

  v18 = [v60 fetchedObjects];
  if (v18)
  {
    v19 = v18;
    sub_1C6FDEC1C();
    v20 = sub_1C7550B5C();
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1C6FB6304();
  v22 = 0;
  v59 = MEMORY[0x1E69E7CC0];
  v61 = MEMORY[0x1E69E7CC0];
  while (v21 != v22)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1CCA5DDD0](v22, v20);
    }

    else
    {
      if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v23 = *(v20 + 8 * v22 + 32);
    }

    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_45;
    }

    v25 = v23;
    v26 = [v25 uuid];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1C755068C();
      v51 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v61 = v32;
      }

      v30 = v61[2];
      if (v30 >= v61[3] >> 1)
      {
        sub_1C6FB1814();
        v61 = v33;
      }

      v61[2] = v30 + 1;
      v31 = &v61[2 * v30];
      *(v31 + 4) = v28;
      *(v31 + 5) = v51;
      v22 = v24;
    }

    else
    {

      ++v22;
    }
  }

  v62 = sub_1C706D154(v61);
  if (v57)
  {
    v34 = v57;
  }

  else
  {
    v34 = MEMORY[0x1E69E7CC0];
  }

  v35 = sub_1C6FB6304();
  sub_1C75504FC();
  v36 = 0;
  while (v35 != v36)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x1CCA5DDD0](v36, v34);
    }

    else
    {
      if (v36 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v37 = *(v34 + 8 * v36 + 32);
    }

    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_47;
    }

    v39 = v37;
    v40 = [v39 uuid];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1C755068C();
      v58 = v43;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v59 = v46;
      }

      v44 = *(v59 + 16);
      if (v44 >= *(v59 + 24) >> 1)
      {
        sub_1C6FB1814();
        v59 = v47;
      }

      *(v59 + 16) = v44 + 1;
      v45 = v59 + 16 * v44;
      *(v45 + 32) = v42;
      *(v45 + 40) = v58;
      v36 = v38;
    }

    else
    {

      ++v36;
    }
  }

  v48 = sub_1C706D154(v59);
  *a3 = v54;
  a3[1] = v55;
  a3[2] = v53;
  a3[3] = v52;
  a3[4] = v62;
  a3[5] = v48;
  return sub_1C75504FC();
}

void sub_1C7465B58(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 16) fetchedObjects];
  if (v2)
  {
    v3 = v2;
    sub_1C6FDEC1C();
    v4 = sub_1C7550B5C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1C6FB6304();
  v6 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v5 == v6)
    {

      sub_1C73978C4(v19);
      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCA5DDD0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = v7;
    v10 = [v9 uuid];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1C755068C();
      v18 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v19 = v16;
      }

      v14 = *(v19 + 16);
      if (v14 >= *(v19 + 24) >> 1)
      {
        sub_1C6FB1814();
        v19 = v17;
      }

      *(v19 + 16) = v14 + 1;
      v15 = v19 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v18;
      v6 = v8;
    }

    else
    {

      ++v6;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1C7465D2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C75504FC();
  sub_1C7080ED4(v3);
  StoryGenerationCache.momentUUIDByAssetUUID(for:)();
  v5 = v4;

  v6 = v5 + 64;
  OUTLINED_FUNCTION_11();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  sub_1C75504FC();
  v12 = 0;
  v61 = MEMORY[0x1E69E7CC8];
  v58 = v11;
  v59 = a2;
  if (!v9)
  {
    while (1)
    {
LABEL_2:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v13 >= v11)
      {
        break;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_6;
      }
    }

    v29 = v61;
    v30 = *(v61 + 16);
    if (v30)
    {
      v65 = MEMORY[0x1E69E7CC0];
      sub_1C716DA24();
      v31 = v65;
      v34 = sub_1C70D4544(v61);
      v35 = 0;
      v36 = v61 + 64;
      v57 = v30;
      if ((v34 & 0x8000000000000000) == 0)
      {
        while (v34 < 1 << *(v29 + 32))
        {
          v37 = v34 >> 6;
          if ((*(v36 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
          {
            goto LABEL_43;
          }

          if (*(v29 + 36) != v32)
          {
            goto LABEL_44;
          }

          v60 = v33;
          v38 = *(v29 + 56);
          v39 = (*(v29 + 48) + 16 * v34);
          v40 = v39[1];
          v62 = *v39;
          v64 = v32;
          v41 = *(v38 + 8 * v34);
          swift_bridgeObjectRetain_n();
          sub_1C75504FC();
          v42 = v41;
          if (a2)
          {
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C7069A44();
            v42 = v43;
          }

          v65 = v31;
          v44 = *(v31 + 16);
          v45 = v64;
          if (v44 >= *(v31 + 24) >> 1)
          {
            sub_1C716DA24();
            v45 = v64;
            v31 = v65;
          }

          *(v31 + 16) = v44 + 1;
          v46 = (v31 + 32 * v44);
          v46[4] = v62;
          v46[5] = v40;
          v46[6] = v41;
          v46[7] = v42;
          v29 = v61;
          v47 = 1 << *(v61 + 32);
          if (v34 >= v47)
          {
            goto LABEL_45;
          }

          v36 = v61 + 64;
          v48 = *(v61 + 64 + 8 * v37);
          if ((v48 & (1 << v34)) == 0)
          {
            goto LABEL_46;
          }

          if (*(v61 + 36) != v45)
          {
            goto LABEL_47;
          }

          v49 = v48 & (-2 << (v34 & 0x3F));
          if (v49)
          {
            v47 = __clz(__rbit64(v49)) | v34 & 0x7FFFFFFFFFFFFFC0;
            v50 = v57;
          }

          else
          {
            v51 = v37 << 6;
            v52 = v37 + 1;
            v50 = v57;
            v53 = (v61 + 72 + 8 * v37);
            while (v52 < (v47 + 63) >> 6)
            {
              v55 = *v53++;
              v54 = v55;
              v51 += 64;
              ++v52;
              if (v55)
              {
                sub_1C6F9ED50(v34, v45, v60 & 1);
                v47 = __clz(__rbit64(v54)) + v51;
                goto LABEL_35;
              }
            }

            sub_1C6F9ED50(v34, v45, v60 & 1);
          }

LABEL_35:
          ++v35;
          a2 = v59;
          if (v35 == v50)
          {

            return v31;
          }

          v33 = 0;
          v32 = *(v61 + 36);
          v34 = v47;
          if (v47 < 0)
          {
            goto LABEL_42;
          }
        }
      }

      goto LABEL_42;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_6:
  while (1)
  {
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
    v15 = (*(v5 + 48) + v14);
    v16 = v15[1];
    v63 = *v15;
    v17 = (*(v5 + 56) + v14);
    v18 = *v17;
    v19 = v17[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_isUniquelyReferenced_nonNull_native();
    v65 = v61;
    sub_1C6F78124(v18, v19);
    OUTLINED_FUNCTION_31_1();
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v24 = v20;
    v25 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
    v26 = sub_1C7551A2C();
    v61 = v65;
    if (v26)
    {
      sub_1C6F78124(v18, v19);
      OUTLINED_FUNCTION_8_5();
      a2 = v59;
      if (!v28)
      {
        goto LABEL_49;
      }

      v24 = v27;
      if (v25)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      a2 = v59;
      if (v25)
      {
        goto LABEL_13;
      }
    }

    sub_1C6FCABE4(v24);
LABEL_14:
    v6 = v5 + 64;
    v9 &= v9 - 1;
    sub_1C70F082C(&v65, v63, v16);

    v11 = v58;
    if (!v9)
    {
      goto LABEL_2;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C74661D8(void *a1, __int128 *a2)
{
  v3 = a2[1];
  v35 = *a2;
  v36 = v3;
  v37 = a2[2];
  v38 = v3;
  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v36 + 56);
  v8 = (v5 + 63) >> 6;
  v32 = v36;
  sub_1C75504FC();
  v9 = 0;
  v10 = 0;
  v30 = v8;
  v31 = v4;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v12 = (*(v32 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v12;
      v14 = v12[1];
      v40 = *(&v36 + 1);
      v41 = v37;
      v39 = v35;
      v42 = *(&v37 + 1);
      sub_1C7469210();
      sub_1C75504FC();
      sub_1C6FCA460(&v39, &v34);
      sub_1C7469210();
      sub_1C7469210();
      sub_1C7469210();
      sub_1C6F6E5B4(v9);
      swift_isUniquelyReferenced_nonNull_native();
      v33 = v13;
      v34 = *a1;
      v15 = v34;
      v16 = v14;
      v17 = sub_1C6F78124(v13, v14);
      if (__OFADD__(v15[2], (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1C0);
      v21 = sub_1C7551A2C();
      v22 = v34;
      if (v21)
      {
        v23 = sub_1C6F78124(v33, v16);
        if ((v20 & 1) != (v24 & 1))
        {
          goto LABEL_22;
        }

        v19 = v23;
      }

      *a1 = v22;
      if (v20)
      {
      }

      else
      {
        v22[(v19 >> 6) + 8] |= 1 << v19;
        v25 = (v22[6] + 16 * v19);
        *v25 = v33;
        v25[1] = v16;
        *(v22[7] + 8 * v19) = MEMORY[0x1E69E7CD0];
        v26 = v22[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v22[2] = v28;
      }

      v7 &= v7 - 1;
      sub_1C70F21F4();

      v9 = sub_1C719D928;
      v8 = v30;
      v4 = v31;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return sub_1C6F6E5B4(v9);
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C74664EC(void *a1, __int128 *a2)
{
  v3 = a2[2];
  v36 = a2[1];
  v37 = v3;
  v35 = *a2;
  v38 = v3;
  v4 = v3 + 56;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v37 + 56);
  v8 = (v5 + 63) >> 6;
  v32 = v37;
  sub_1C75504FC();
  v9 = 0;
  v10 = 0;
  v30 = v8;
  v31 = v4;
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v12 = (*(v32 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v12;
      v14 = v12[1];
      *(&v39[1] + 8) = v36;
      v39[0] = v35;
      v40 = *(&v37 + 1);
      sub_1C7469210();
      sub_1C75504FC();
      sub_1C6FCA460(v39, &v34);
      sub_1C7469210();
      sub_1C7469210();
      sub_1C7469210();
      sub_1C6F6E5B4(v9);
      swift_isUniquelyReferenced_nonNull_native();
      v33 = v13;
      v34 = *a1;
      v15 = v34;
      v16 = v14;
      v17 = sub_1C6F78124(v13, v14);
      if (__OFADD__(v15[2], (v18 & 1) == 0))
      {
        break;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1C0);
      v21 = sub_1C7551A2C();
      v22 = v34;
      if (v21)
      {
        v23 = sub_1C6F78124(v33, v16);
        if ((v20 & 1) != (v24 & 1))
        {
          goto LABEL_22;
        }

        v19 = v23;
      }

      *a1 = v22;
      if (v20)
      {
      }

      else
      {
        v22[(v19 >> 6) + 8] |= 1 << v19;
        v25 = (v22[6] + 16 * v19);
        *v25 = v33;
        v25[1] = v16;
        *(v22[7] + 8 * v19) = MEMORY[0x1E69E7CD0];
        v26 = v22[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v22[2] = v28;
      }

      v7 &= v7 - 1;
      sub_1C70F21F4();

      v9 = sub_1C719D928;
      v8 = v30;
      v4 = v31;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return sub_1C6F6E5B4(v9);
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7466800(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v36 = *a2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  sub_1C75504FC();
  v11 = 0;
  v30 = v10;
  v31 = v4 + 56;
  v32 = a1;
  v33 = v5;
  v34 = v3;
  v35 = v4;
  if (v9)
  {
LABEL_8:
    while (1)
    {
      v13 = (*(v4 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v9)))));
      v14 = *v13;
      v15 = v13[1];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v37 = *a1;
      v16 = sub_1C6F78124(v14, v15);
      if (__OFADD__(v37[2], (v17 & 1) == 0))
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1B8);
      if (sub_1C7551A2C())
      {
        v20 = sub_1C6F78124(v14, v15);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_22;
        }

        v18 = v20;
      }

      if (v19)
      {

        v22 = v37;
        v23 = (v37[7] + 32 * v18);
        v4 = v35;
        *v23 = v36;
        v23[1] = v34;
        v23[2] = v35;
        v23[3] = v33;
      }

      else
      {
        v22 = v37;
        v37[(v18 >> 6) + 8] |= 1 << v18;
        v24 = (v37[6] + 16 * v18);
        *v24 = v14;
        v24[1] = v15;
        v25 = (v37[7] + 32 * v18);
        v4 = v35;
        *v25 = v36;
        v25[1] = v34;
        v25[2] = v35;
        v25[3] = v33;
        v26 = v37[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v37[2] = v28;
      }

      v9 &= v9 - 1;
      v6 = v31;
      a1 = v32;
      *v32 = v22;
      v10 = v30;
      if (!v9)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
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
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C7466A68()
{
  OUTLINED_FUNCTION_33();
  LODWORD(v144) = v2;
  v146 = 0;
  v147 = v3;
  v4 = *(v0 + 16);
  v174 = MEMORY[0x1E69E7CC8];
  v175 = MEMORY[0x1E69E7CC8];
  v176 = MEMORY[0x1E69E7CC8];
  v177 = MEMORY[0x1E69E7CC8];
  v165 = v4;
  v143 = v0;
  if (v4)
  {
    v5 = v1;
    v6 = 0;
    v148 = v0 + 32;
    v149 = v1;
    do
    {
      v7 = (v148 + 48 * v6);
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[5];
      v189[6] = *v7;
      v189[7] = v8;
      v189[8] = v9;
      v189[9] = v10;
      v189[10] = v11;
      v189[11] = v12;
      v159 = v6 + 1;
      v13 = v12 + 56;
      OUTLINED_FUNCTION_90_1();
      v16 = v15 & v14;
      v18 = ((v17 + 63) >> 6);
      swift_bridgeObjectRetain_n();
      v157 = v8;
      sub_1C75504FC();
      buf = v9;
      sub_1C75504FC();
      v153 = v10;
      sub_1C75504FC();
      v151 = v11;
      sub_1C75504FC();
      v4 = 0;
      v162 = v12;
      while (v16)
      {
        v19 = v16;
LABEL_10:
        v16 = (v19 - 1) & v19;
        if (*(v5 + 16))
        {
          v21 = (*(v12 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v19)))));
          v23 = *v21;
          v22 = v21[1];
          sub_1C75504FC();
          sub_1C6F78124(v23, v22);
          LOBYTE(v23) = v24;

          if (v23)
          {
            v25 = *(v174 + 16);
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            if (v25)
            {
              v26 = OUTLINED_FUNCTION_18_65();
              sub_1C6FC2B48(v26, v27, v28, v29);
              if (v30)
              {
                if (qword_1EDD09CF0 != -1)
                {
                  OUTLINED_FUNCTION_0_23();
                  swift_once();
                }

                v31 = sub_1C754FF1C();
                OUTLINED_FUNCTION_23_2(v31, qword_1EDD28B68);
                v32 = sub_1C754FEEC();
                v33 = sub_1C755119C();
                if (os_log_type_enabled(v32, v33))
                {
                  v34 = swift_slowAlloc();
                  *v34 = 0;
                  _os_log_impl(&dword_1C6F5C000, v32, v33, "Same Moment required in two chapters", v34, 2u);
                  OUTLINED_FUNCTION_109();
                }
              }
            }

            v35 = OUTLINED_FUNCTION_18_65();
            sub_1C7467820(v35, v36, v37, v38, v39);

            v5 = v149;
            v12 = v162;
          }
        }
      }

      while (1)
      {
        v20 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
          goto LABEL_65;
        }

        if (v20 >= v18)
        {
          break;
        }

        v19 = *(v13 + 8 * v20);
        ++v4;
        if (v19)
        {
          v4 = v20;
          goto LABEL_10;
        }
      }

      v4 = v165;
      v6 = v159;
    }

    while (v159 != v165);
  }

  v173 = MEMORY[0x1E69E7CD0];
  v40 = v147 + 64;
  OUTLINED_FUNCTION_11();
  v43 = v42 & v41;
  v45 = (v44 + 63) >> 6;
  sub_1C75504FC();
  v46 = 0;
  *&v47 = 136315138;
  v160 = v47;
  v163 = v45;
  if (!v43)
  {
    goto LABEL_22;
  }

  do
  {
LABEL_26:
    v49 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v50 = v49 | (v46 << 6);
    v51 = (*(v147 + 48) + 32 * v50);
    v53 = *v51;
    v52 = v51[1];
    v54 = v51[2];
    v55 = v51[3];
    v56 = *(*(v147 + 56) + 8 * v50);
    v57 = *(v174 + 16);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    if (v57)
    {
      sub_1C6FC2B48(v53, v52, v54, v55);
      if (v58)
      {
LABEL_42:

        goto LABEL_43;
      }
    }

    v59 = *(v56 + 16);
    if (!v59)
    {

      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v65 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v65, qword_1EDD28B68);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v66 = sub_1C754FEEC();
      v67 = sub_1C755117C();

      if (os_log_type_enabled(v66, v67))
      {
        buf = OUTLINED_FUNCTION_41_0();
        v157 = swift_slowAlloc();
        v189[0] = v157;
        *buf = v160;
        sub_1C7033D84(8);
        LODWORD(v153) = v67;

        v68 = OUTLINED_FUNCTION_90();
        v69 = MEMORY[0x1CCA5CC40](v68);
        v71 = v70;

        v72 = sub_1C6F765A4(v69, v71, v189);

        *(buf + 4) = v72;
        _os_log_impl(&dword_1C6F5C000, v66, v67, "Moment %s is a fallback shot-only moment, ignoring in the assignment algorithm", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v157);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      goto LABEL_44;
    }

    if (v59 != 1)
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7463DE0(v56);
      v74 = v73;

      v188[0] = v53;
      v188[1] = v52;
      v188[2] = v54;
      v188[3] = v55;
      v188[4] = v74;
      sub_1C70F1F94(v189, v188, v75, v76, v77, v78, v79, v80, v136, v137, v138, v139, v140, log, v143, v144, v146, v147, v148, v149, v151, v153, buf, v157, v160, *(&v160 + 1), v163, v165, v167, v169, v170, v171, v172, v173, v174, v175, v176, v177);

LABEL_43:

      goto LABEL_44;
    }

    v60 = 0;
    v61 = 1 << *(v56 + 32);
    v62 = (v61 + 63) >> 6;
    v63 = 56;
    if (!v62)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v64 = *(v56 + v63);
      if (v64)
      {
        break;
      }

      v60 -= 64;
      --v62;
      v63 += 8;
      if (!v62)
      {
        goto LABEL_42;
      }
    }

    v81 = __clz(__rbit64(v64));
    if (v81 - v61 == v60)
    {
      goto LABEL_42;
    }

    sub_1C719D3B8(v81 - v60, *(v56 + 36), v56, &v178);

    sub_1C7467820(v53, v52, v54, v55, &v178);

    v187 = v178;
    sub_1C71691DC(&v187);
    v186 = v179;
    sub_1C7030CDC(&v186, &unk_1EC215BF0);
    v185 = v180;
    OUTLINED_FUNCTION_35();
    sub_1C7030CDC(v82, v83);
    v184 = v181;
    OUTLINED_FUNCTION_35();
    sub_1C7030CDC(v84, v85);
    v183 = v182;
    OUTLINED_FUNCTION_35();
    sub_1C7030CDC(v86, v87);
LABEL_44:
    v45 = v163;
    v4 = v165;
  }

  while (v43);
  while (1)
  {
LABEL_22:
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      __break(1u);
      goto LABEL_86;
    }

    if (v48 >= v45)
    {
      break;
    }

    v43 = *(v40 + 8 * v48);
    ++v46;
    if (v43)
    {
      v46 = v48;
      goto LABEL_26;
    }
  }

  v88 = v173;
  if (*(v173 + 16) && (v144 & 1) != 0)
  {
    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v89 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v89, qword_1EDD28B68);
    v90 = sub_1C754FEEC();
    v91 = sub_1C75511BC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = OUTLINED_FUNCTION_41_0();
      *v92 = 134217984;
      *(v92 + 4) = *(v88 + 16);
      OUTLINED_FUNCTION_26_48(&dword_1C6F5C000, v93, v94, "(%ld remaining moments, going through grounded assignment");
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_25_46();
    sub_1C7468160(&v173, &v174, 1, v95);
    swift_endAccess();
  }

  swift_beginAccess();
  v96 = v173;
  if (*(v173 + 16))
  {
    if (qword_1EDD09CF0 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v97 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v97, qword_1EDD28B68);
    v98 = sub_1C754FEEC();
    v99 = sub_1C75511BC();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = OUTLINED_FUNCTION_41_0();
      *v100 = 134217984;
      *(v100 + 4) = *(v96 + 16);
      _os_log_impl(&dword_1C6F5C000, v98, v99, "(%ld remaining moments, going through non-grounded assignment", v100, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_25_46();
    sub_1C7468160(&v173, &v174, 0, v101);
    swift_endAccess();
    v102 = v173;
    if (*(v173 + 16))
    {
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      OUTLINED_FUNCTION_23_2(v97, qword_1EDD28B68);
      sub_1C75504FC();
      v18 = sub_1C754FEEC();
      v103 = sub_1C755119C();
      if (os_log_type_enabled(v18, v103))
      {
        v104 = OUTLINED_FUNCTION_41_0();
        *v104 = 134217984;
        *(v104 + 4) = *(v102 + 16);

        OUTLINED_FUNCTION_26_48(&dword_1C6F5C000, v105, v106, "(%ld moments are unexpectedly remaining after assignment run");
        OUTLINED_FUNCTION_109();

        goto LABEL_66;
      }

LABEL_65:
    }
  }

LABEL_66:
  v107 = v176;
  sub_1C75504FC();
  v147 = sub_1C7463BF0(MEMORY[0x1E69E7CC8], v107, &v174);
  v148 = v107;

  if (qword_1EDD09CF0 != -1)
  {
LABEL_86:
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v108 = sub_1C754FF1C();
  __swift_project_value_buffer(v108, qword_1EDD28B68);
  v109 = sub_1C754FEEC();
  v110 = sub_1C75511BC();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_1C6F5C000, v109, v110, "Final Assignment - Chapter ID: numberOfAssignedAssets (numberOfAssignedGroundingAssets, numberOfAssignedAssetsIncludingFallbackShot) out of total numberOfAssets (numberOfGroundingAssets, numberOfAssetsIncludingFallbackShot)", v111, 2u);
    OUTLINED_FUNCTION_109();
  }

  if (v4)
  {
    v145 = v177;
    v112 = (v143 + 72);
    do
    {
      v113 = *(v112 - 4);
      v114 = *(v112 - 3);
      v115 = *(v112 - 2);
      v117 = *(v112 - 1);
      v116 = *v112;
      v189[0] = *(v112 - 5);
      v189[1] = v113;
      v189[2] = v114;
      v189[3] = v115;
      v189[4] = v117;
      v189[5] = v116;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v118 = sub_1C6FE3760(v189, v148);
      if (v118)
      {
        v164 = *(v118 + 16);
      }

      else
      {
        v164 = 0;
      }

      v119 = sub_1C6FE3760(v189, v145);
      if (v119)
      {
        v161 = *(v119 + 16);
      }

      else
      {
        v161 = 0;
      }

      v120 = sub_1C6FE3760(v189, v147);
      if (v120)
      {
        v158 = *(v120 + 16);
      }

      else
      {
        v158 = 0;
      }

      v154 = *(v114 + 16);
      bufa = *(v115 + 16);
      sub_1C75504FC();
      v121 = sub_1C75504FC();
      v152 = *(sub_1C70738FC(v121, v114) + 16);

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v122 = sub_1C754FEEC();
      v123 = sub_1C75511BC();

      v150 = v123;
      if (os_log_type_enabled(v122, v123))
      {
        v166 = v4;
        v124 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        *v124 = 136316674;
        v125 = sub_1C7033D84(8);
        v127 = v126;
        loga = v122;
        v129 = v128;
        v131 = v130;

        MEMORY[0x1CCA5CC40](v125, v127, v129, v131);

        v132 = OUTLINED_FUNCTION_90();
        v135 = sub_1C6F765A4(v132, v133, v134);

        *(v124 + 4) = v135;
        *(v124 + 12) = 2048;
        *(v124 + 14) = v164;
        *(v124 + 22) = 2048;
        *(v124 + 24) = v161;
        *(v124 + 32) = 2048;
        *(v124 + 34) = v158;
        *(v124 + 42) = 2048;
        *(v124 + 44) = v154;
        *(v124 + 52) = 2048;
        *(v124 + 54) = bufa;
        *(v124 + 62) = 2048;
        *(v124 + 64) = v152;
        _os_log_impl(&dword_1C6F5C000, loga, v150, "Final Assignment - Chapter %s: %ld (%ld, %ld) assets out of %ld (%ld, %ld)", v124, 0x48u);
        __swift_destroy_boxed_opaque_existential_1(v168);
        OUTLINED_FUNCTION_109();
        v4 = v166;
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v112 += 6;
      --v4;
    }

    while (v4);
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C7467820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = v5;
  v12 = *(a5 + 2);
  v55[6] = *(a5 + 3);
  v55[7] = v12;
  v13 = *(a5 + 4);
  v55[4] = *(a5 + 5);
  v55[5] = v13;
  v56 = *a5;
  OUTLINED_FUNCTION_30_48(a1, a2);
  OUTLINED_FUNCTION_7_98();
  OUTLINED_FUNCTION_7_98();
  OUTLINED_FUNCTION_7_98();
  OUTLINED_FUNCTION_7_98();
  swift_isUniquelyReferenced_nonNull_native();
  v54 = a1;
  v55[0] = *v5;
  v14 = a4;
  sub_1C6FC7BC8();
  *v5 = v55[0];
  swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v5[1];
  sub_1C6FC2AD8();
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_22;
  }

  v19 = v15;
  v20 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1B0);
  v21 = v55[0];
  if (sub_1C7551A2C())
  {
    v22 = sub_1C6FC2AD8();
    if ((v20 & 1) != (v23 & 1))
    {
      goto LABEL_24;
    }

    v19 = v22;
  }

  v6[1] = v55[0];
  if ((v20 & 1) == 0)
  {
    v24 = sub_1C6FCABD8(v19, a5, MEMORY[0x1E69E7CD0], v21);
    OUTLINED_FUNCTION_30_48(v24, v25);
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
  }

  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C70F1D7C(v55, v54, a2, a3, v14);

  sub_1C75504FC();
  sub_1C7069A44();
  v27 = v26;
  swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v6[2];
  sub_1C6FC2AD8();
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v30, v31))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v28;
  v33 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215258);
  v34 = sub_1C7551A2C();
  v35 = v55[0];
  if ((v34 & 1) == 0)
  {
    goto LABEL_11;
  }

  v36 = sub_1C6FC2AD8();
  if ((v33 & 1) != (v37 & 1))
  {
LABEL_24:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

  v32 = v36;
LABEL_11:
  v6[2] = v35;
  if ((v33 & 1) == 0)
  {
    v38 = sub_1C6FCABD8(v32, a5, MEMORY[0x1E69E7CD0], v35);
    OUTLINED_FUNCTION_30_48(v38, v39);
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
    OUTLINED_FUNCTION_4_106();
    sub_1C7469210();
  }

  sub_1C739796C(v27);
  sub_1C75504FC();
  sub_1C7069A44();
  v41 = v40;
  swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v6[3];
  sub_1C6FC2AD8();
  v43 = v42;
  OUTLINED_FUNCTION_31_1();
  if (__OFADD__(v45, v46))
  {
    goto LABEL_23;
  }

  v47 = v44;
  v48 = sub_1C7551A2C();
  v49 = v55[0];
  if (v48)
  {
    sub_1C6FC2AD8();
    OUTLINED_FUNCTION_8_5();
    if (!v51)
    {
      goto LABEL_24;
    }

    v47 = v50;
  }

  v6[3] = v49;
  if ((v43 & 1) == 0)
  {
    v52 = sub_1C6FCABD8(v47, a5, MEMORY[0x1E69E7CD0], v49);
    OUTLINED_FUNCTION_30_48(v52, v53);
    OUTLINED_FUNCTION_8_90();
    OUTLINED_FUNCTION_8_90();
    OUTLINED_FUNCTION_8_90();
    OUTLINED_FUNCTION_8_90();
  }

  sub_1C739796C(v41);
}

void sub_1C7467C60()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_115();
  v3 = v1[2];
  v5 = v1[3];
  v4 = v1[4];
  v6 = v1[5];
  v8 = v0[2];
  v7 = v0[3];
  v10 = v0[4];
  v9 = v0[5];
  v11 = *v2 == *v0 && v1[1] == v0[1];
  if (v11 || (sub_1C7551DBC()) && (sub_1C7036A90(v3, v8), (v12) && (sub_1C7036A90(v5, v7), (v13) && (sub_1C7036A90(v4, v10), (v14) && (sub_1C7036A90(v6, v9), (v15) && (sub_1C7036A90(v1[6], v0[6]), (v16))
  {
    OUTLINED_FUNCTION_25_0();

    sub_1C7036A90(v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C7467D44(void *a1)
{
  sub_1C75505AC();
  sub_1C7041DF0(a1, *(v1 + 48), v3, v4, v5, v6, v7, v8);
  v15 = *(v1 + 56);

  return sub_1C7041DF0(a1, v15, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1C7467D90()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7041DF0(v16, v2, v3, v4, v5, v6, v7, v8);
  sub_1C7041DF0(v16, v1, v9, v10, v11, v12, v13, v14);
  return sub_1C7551FAC();
}

uint64_t sub_1C7467E08()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7041DF0(v16, v2, v3, v4, v5, v6, v7, v8);
  sub_1C7041DF0(v16, v1, v9, v10, v11, v12, v13, v14);
  return sub_1C7551FAC();
}

void sub_1C7467E78(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {
    sub_1C7036A90(v2, v3);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_90();

      sub_1C7036A90(v6, v7);
    }
  }
}

uint64_t sub_1C7467F08(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 32);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_20:
    sub_1C742484C(v8);
    v32 = v31;

    if (v32)
    {
      goto LABEL_23;
    }

    return result;
  }

  v40 = MEMORY[0x1E69E7CC0];
  sub_1C716DA70();
  v8 = v40;
  v16 = (v6 + 32);
  while (1)
  {
    v18 = v16[2];
    v17 = v16[3];
    v19 = v16[1];
    v37 = *v16;
    *v38 = v19;
    *&v38[16] = v18;
    v39 = v17;
    v20 = v19;
    v41 = v37;
    v42 = v19;
    v43 = *&v38[8];
    v44 = *(&v18 + 1);
    if (a1)
    {
      break;
    }

    if (*(a4 + 16))
    {
      OUTLINED_FUNCTION_29_42(v10, v11, v12, v13, v14, v15);
      v24 = sub_1C6FC2AD8();
      if (v25)
      {
        v23 = *(*(*(a4 + 56) + 8 * v24) + 16);
        goto LABEL_16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_29_42(v10, v11, v12, v13, v14, v15);
    }

    v23 = 0;
LABEL_16:
    v26 = *(v39 + 16);
    v27 = *(v20 + 16);
    v10 = sub_1C74691E0(&v37);
    v28 = v27 * v27;
    if ((v27 * v27) >> 64 != (v27 * v27) >> 63)
    {
      goto LABEL_22;
    }

LABEL_17:
    v29 = v27 - v23;
    v40 = v8;
    v30 = *(v8 + 16);
    if (v30 >= *(v8 + 24) >> 1)
    {
      sub_1C716DA70();
      v8 = v40;
    }

    *(v8 + 16) = v30 + 1;
    *(v8 + 8 * v30 + 32) = v26 * v29 / v28;
    v16 += 4;
    if (!--v7)
    {
      goto LABEL_20;
    }
  }

  v36 = *&v38[8];
  if (*(a5 + 16))
  {
    OUTLINED_FUNCTION_29_42(v10, v11, v12, v13, v14, v15);
    v21 = sub_1C6FC2AD8();
    if (v22)
    {
      v23 = *(*(*(a5 + 56) + 8 * v21) + 16);
      goto LABEL_12;
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_42(v10, v11, v12, v13, v14, v15);
  }

  v23 = 0;
LABEL_12:
  v26 = *(*(&v39 + 1) + 16);
  v27 = *(v36 + 16);
  v10 = sub_1C74691E0(&v37);
  v28 = v27 * v27;
  if ((v27 * v27) >> 64 == (v27 * v27) >> 63)
  {
    goto LABEL_17;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1C7551AAC();
  __break(1u);
  return result;
}

uint64_t sub_1C7468160(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  LODWORD(v210) = a3;
  v4 = a2;
  v161 = a1;
  v5 = 0;
  v6 = &qword_1EC217768;
  a4.n128_u64[0] = 136317186;
  v166 = a4;
  a4.n128_u64[0] = 136315394;
  v137 = a4;
  v151 = a2;
  while (1)
  {
    result = *v161;
    if (!*(*v161 + 16))
    {
      return result;
    }

    result = sub_1C7464FD4(result, v210 & 1, v4, v284);
    if (!*(&v284[0] + 1))
    {
      return result;
    }

    v156 = v5;
    v287 = v284[0];
    v288 = v284[1];
    v289 = v285;
    v10 = *(v4 + 16);
    v239 = *(v4 + 24);
    sub_1C7467F08(v210 & 1, v8, v9, v10, v239);
    if (v11 <= 0.0)
    {
      v280 = v287;
      v132 = v288;
      sub_1C71691DC(&v280);
      *&v274 = v132;
      OUTLINED_FUNCTION_35();
      sub_1C7030CDC(v133, v134);
      v294 = *(&v132 + 1);
      OUTLINED_FUNCTION_35();
      sub_1C7030CDC(v135, v136);
      *&v278[0] = v289;
      return sub_1C7030CDC(v278, &qword_1EC217768);
    }

    sub_1C7421AD4(&v287, v286);
    sub_1C7030CDC(v286, &qword_1EC21C1A0);
    v290 = v289;
    v12 = *(v289 + 16);
    if (v12)
    {
      v244 = *(&v287 + 1);
      v200 = *(&v288 + 1);
      v205 = v288;
      v13 = (v289 + 32);
      v14 = v239;
      if ((v210 & 1) == 0)
      {
        v14 = v10;
      }

      v175 = v287;
      v180 = v14;
      v280 = 0u;
      v281 = 0u;
      v282 = 0u;
      v283 = 0u;
      v15 = sub_1C75504FC();
      oslog = (v12 - 1);
      v23 = 0.0;
      v195 = v10;
      while (1)
      {
        v25 = v13[2];
        v24 = v13[3];
        v26 = v13[1];
        v278[0] = *v13;
        v278[1] = v26;
        v278[2] = v25;
        v279 = v24;
        v27 = v26;
        v28 = *(&v25 + 1);
        v300 = v278[0];
        v301 = v26;
        v302 = v25;
        if ((v210 & 1) == 0)
        {
          if (*(v10 + 16))
          {
            OUTLINED_FUNCTION_12_81(v15, v16, v17, v18, v19, v20, v21, v22, v137.n128_i64[0], v137.n128_i64[1], v146, v151, v156, v161, v166.n128_i64[0], v166.n128_i64[1], v175, v180, v185, v190, v195, v200, v205, v210, v215, v220, *&v278[0], *(&v225 + 1), v234, v239, v244, v13, v254, *(&v254 + 1), oslog, v270, v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278[0]);
            result = sub_1C6FC2AD8();
            if (v32)
            {
              v31 = *(*(*(v10 + 56) + 8 * result) + 16);
LABEL_22:
              v33 = *(v27 + 16);
              v34 = v33 * v33;
              if ((v33 * v33) >> 64 != (v33 * v33) >> 63)
              {
                goto LABEL_71;
              }

              v35 = v279;
              goto LABEL_24;
            }
          }

          else
          {
            result = OUTLINED_FUNCTION_12_81(v15, v16, v17, v18, v19, v20, v21, v22, v137.n128_i64[0], v137.n128_i64[1], v146, v151, v156, v161, v166.n128_i64[0], v166.n128_i64[1], v175, v180, v185, v190, v195, v200, v205, v210, v215, v220, *&v278[0], *(&v225 + 1), v234, v239, v244, v13, v254, *(&v254 + 1), oslog, v270, v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278[0]);
          }

          v31 = 0;
          goto LABEL_22;
        }

        v29 = v239;
        if (!*(v239 + 16))
        {
          result = OUTLINED_FUNCTION_12_81(v15, v16, v17, v18, v19, v20, v21, v22, v137.n128_i64[0], v137.n128_i64[1], v146, v151, v156, v161, v166.n128_i64[0], v166.n128_i64[1], v175, v180, v185, v190, v195, v200, v205, v210, v215, v220, *&v278[0], *(&v225 + 1), v234, v239, v244, v13, v254, *(&v254 + 1), oslog, v270, v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278[0]);
LABEL_17:
          v31 = 0;
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_12_81(v15, v16, v17, v18, v19, v20, v21, v22, v137.n128_i64[0], v137.n128_i64[1], v146, v151, v156, v161, v166.n128_i64[0], v166.n128_i64[1], v175, v180, v185, v190, v195, v200, v205, v210, v215, v220, *&v278[0], *(&v225 + 1), v234, v239, v244, v13, v254, *(&v254 + 1), oslog, v270, v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278[0]);
        result = sub_1C6FC2AD8();
        if ((v30 & 1) == 0)
        {
          goto LABEL_17;
        }

        v31 = *(*(*(v29 + 56) + 8 * result) + 16);
LABEL_18:
        v33 = *(*(&v27 + 1) + 16);
        v34 = v33 * v33;
        if ((v33 * v33) >> 64 != (v33 * v33) >> 63)
        {
          __break(1u);
LABEL_71:
          __break(1u);
          return result;
        }

        v35 = *(&v279 + 1);
LABEL_24:
        v36 = v33 - v31;
        v37 = *(v35 + 16);
        v38 = *(v10 + 16);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        if (v38 && (v39 = sub_1C6FC2AD8(), (v40 & 1) != 0))
        {
          v221 = *(*(*(v10 + 56) + 8 * v39) + 16);
        }

        else
        {
          v221 = 0;
        }

        v41 = v240;
        if (*(v240 + 16))
        {
          v42 = sub_1C6FC2AD8();
          if (v43)
          {
            v216 = *(*(*(v240 + 56) + 8 * v42) + 16);
          }

          else
          {
            v216 = 0;
          }
        }

        else
        {
          v216 = 0;
        }

        if (qword_1EDD09CF0 != -1)
        {
          OUTLINED_FUNCTION_0_23();
          swift_once();
        }

        v44 = v36 * v37 / v34;
        v45 = sub_1C754FF1C();
        OUTLINED_FUNCTION_23_2(v45, qword_1EDD28B68);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v46 = sub_1C75504FC();
        OUTLINED_FUNCTION_12_81(v46, v47, v48, v49, v50, v51, v52, v53, v138, v142, v147, v152, v157, v162, v167, v171, v176, v181, v186, v191, v196, v201, v206, v211, v216, v221, v226, v230, v235, v240, v245, v249, v255, v259, osloga, *(&v27 + 1), v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278[0]);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v54 = sub_1C75504FC();
        OUTLINED_FUNCTION_12_81(v54, v55, v56, v57, v58, v59, v60, v61, v139, v143, v148, v153, v158, v163, v168, v172, v177, v182, v187, v192, v197, v202, v207, v212, v217, v222, v227, v231, v236, v241, v246, v250, v256, v260, oslogd, v271, v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278[0]);
        v62 = sub_1C75504FC();
        OUTLINED_FUNCTION_12_81(v62, v63, v64, v65, v66, v67, v68, v69, v140, v144, v149, v154, v159, v164, v169, v173, v178, v183, v188, v193, v198, v203, v208, v213, v218, v223, v228, v232, v237, v242, v247, v251, v257, v261, osloge, v272, v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278[0]);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v70 = sub_1C7469210();
        OUTLINED_FUNCTION_12_81(v70, v71, v72, v73, v74, v75, v76, v77, v141, v145, v150, v155, v160, v165, v170, v174, v179, v184, v189, v194, v199, v204, v209, v214, v219, v224, v229, v233, v238, v243, v248, v252, v258, v262, oslogf, v273, v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278[0]);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        *&v254 = v28;
        sub_1C75504FC();
        v78 = v244;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v190 = v41;
        v79 = sub_1C754FEEC();
        v80 = sub_1C755117C();

        sub_1C7030CDC(&v290, v6);

        HIDWORD(v210) = v80;
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          *&v274 = v185;
          *v81 = v166.n128_u32[0];
          sub_1C75504FC();
          v82 = sub_1C7033D84(8);
          v83 = MEMORY[0x1CCA5CC40](v82);
          v85 = v84;

          v86 = sub_1C6F765A4(v83, v85, &v274);

          *(v81 + 4) = v86;
          *(v81 + 12) = 2080;
          sub_1C75504FC();
          v87 = sub_1C7033D84(8);
          v88 = MEMORY[0x1CCA5CC40](v87);
          v90 = v89;

          v91 = sub_1C6F765A4(v88, v90, &v274);
          v6 = &qword_1EC217768;

          *(v81 + 14) = v91;
          *(v81 + 22) = 2048;
          v92 = *(v279 + 16);
          sub_1C74691E0(v278);
          *(v81 + 24) = v92;
          sub_1C74691E0(v278);
          *(v81 + 32) = 2048;
          v93 = *(*(&v279 + 1) + 16);
          sub_1C74691E0(v278);
          *(v81 + 34) = v93;
          sub_1C74691E0(v278);
          *(v81 + 42) = 2048;
          *(v81 + 44) = v44;
          *(v81 + 52) = 2048;
          v94 = *(v27 + 16);

          *(v81 + 54) = v94;

          *(v81 + 62) = 2048;
          v95 = *(v270 + 16);

          *(v81 + 64) = v95;

          *(v81 + 72) = 2048;
          *(v81 + 74) = v220;
          *(v81 + 82) = 2048;
          v78 = v244;
          *(v81 + 84) = v215;
          _os_log_impl(&dword_1C6F5C000, v79, v80, "Moment %s, chapter %s, %ld assets (%ld), score %f (total assets %ld (%ld), assigned %ld (%ld))", v81, 0x5Cu);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
          OUTLINED_FUNCTION_29_20();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_129_0();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          sub_1C74691E0(v278);
          sub_1C74691E0(v278);
          OUTLINED_FUNCTION_29_20();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          OUTLINED_FUNCTION_129_0();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          sub_1C74691E0(v278);
          sub_1C74691E0(v278);
        }

        v10 = v195;
        if (v23 < v44)
        {

          v15 = sub_1C7030CDC(&v280, &qword_1EC21C1A8);
          v96 = v278;
          v23 = v44;
          goto LABEL_58;
        }

        if (v44 != v23)
        {

          v15 = sub_1C74691E0(v278);
          v96 = &v280;
          goto LABEL_58;
        }

        v97 = *(&v280 + 1);
        if (*(&v280 + 1))
        {
          v220 = v280;
          v254 = v281;
          v225 = v282;
          v98 = *(v180 + 16);
          sub_1C75504FC();
          if (v98)
          {
            v99 = sub_1C6FC2AD8();
            v101 = v100;

            if (v101)
            {
              if (*(v180 + 16))
              {
                v102 = *(*(*(v180 + 56) + 8 * v99) + 16);
                goto LABEL_51;
              }

              goto LABEL_54;
            }
          }

          else
          {
          }

          if (!*(v180 + 16))
          {
            goto LABEL_54;
          }

          v102 = 0;
LABEL_51:
          v296 = v220;
          v297 = v97;
          v298 = v254;
          v299 = v225;
          v103 = sub_1C6FC2AD8();
          if (v104)
          {
            v105 = *(*(v180 + 56) + 8 * v103);
            sub_1C75504FC();

            v106 = *(v105 + 16);

            if (v102 < v106)
            {
              v15 = sub_1C7030CDC(&v280, &qword_1EC21C1A8);
              v96 = v278;
LABEL_56:
              v6 = &qword_1EC217768;
              goto LABEL_57;
            }
          }

          else
          {
LABEL_54:
          }

          v15 = sub_1C74691E0(v278);
          v96 = &v280;
          goto LABEL_56;
        }

        v15 = sub_1C74691E0(v278);
        v96 = &v280;
LABEL_57:
        v78 = v244;
LABEL_58:
        v107 = v96[1];
        v274 = *v96;
        v275 = v107;
        v108 = v96[3];
        v276 = v96[2];
        v277 = v108;
        if (!oslogb)
        {
          break;
        }

        v280 = v274;
        v281 = v275;
        v282 = v276;
        v283 = v277;
        oslog = (oslogb - 1);
        v13 = (v253 + 64);
      }

      v109 = OUTLINED_FUNCTION_17_78();
      sub_1C7030CDC(v109, v110);
      if (!*(&v274 + 1))
      {

        v130 = OUTLINED_FUNCTION_17_78();
        goto LABEL_65;
      }

      v111 = v275;
      *&v254 = v274;
      v295[0] = v274;
      v295[1] = v275;
      v295[2] = v276;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7030CDC(&v274, &qword_1EC21C1A8);
      sub_1C7469210();
      sub_1C75504FC();
      sub_1C75504FC();
      v112 = v6;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      oslogc = sub_1C754FEEC();
      v113 = sub_1C755117C();

      v114 = v78;

      sub_1C7030CDC(&v290, v6);

      v270 = v111;

      if (os_log_type_enabled(oslogc, v113))
      {
        v115 = swift_slowAlloc();
        v294 = swift_slowAlloc();
        *v115 = v137.n128_u32[0];
        sub_1C75504FC();
        v116 = sub_1C7033D84(8);
        v117 = MEMORY[0x1CCA5CC40](v116);
        v119 = v118;

        v120 = sub_1C6F765A4(v117, v119, &v294);

        *(v115 + 4) = v120;
        *(v115 + 12) = 2080;
        sub_1C75504FC();
        v121 = sub_1C7033D84(8);
        v122 = MEMORY[0x1CCA5CC40](v121);
        v124 = v123;

        v112 = &qword_1EC217768;
        v125 = sub_1C6F765A4(v122, v124, &v294);

        *(v115 + 14) = v125;
        v126 = v175;
        _os_log_impl(&dword_1C6F5C000, oslogc, v113, "Moment %s, winner is chapter %s", v115, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {

        v126 = v175;
      }

      sub_1C7467820(v126, v114, v205, v200, v295);

      sub_1C7030CDC(&v290, v112);

      v4 = v151;

      v5 = v156;
      v6 = v112;
    }

    else
    {
      v293 = v287;
      v127 = v288;
      sub_1C75504FC();
      sub_1C71691DC(&v293);
      v292 = v127;
      sub_1C7030CDC(&v292, &unk_1EC215BF0);
      v291 = *(&v127 + 1);
      sub_1C7030CDC(&v291, &unk_1EC215BF0);
      v128 = OUTLINED_FUNCTION_17_78();
      sub_1C7030CDC(v128, v129);
      v130 = OUTLINED_FUNCTION_17_78();
LABEL_65:
      sub_1C7030CDC(v130, v131);
      v4 = v151;
      v5 = v156;
    }
  }
}

uint64_t sub_1C7468FD8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[3];
  v5 = a2[6];
  v18 = *a2;
  v19 = *(a2 + 1);
  v20 = v4;
  v21 = *(a2 + 2);
  v6 = *(a3 + 8);
  sub_1C75504FC();
  v7 = sub_1C6FE3760(&v18, v6);
  if (v7)
  {
    v17 = a1;
    v22 = v5;
    v8 = v7 + 56;
    v9 = 1 << *(v7 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 56);
    v12 = (v9 + 63) >> 6;
    result = sub_1C75504FC();
    v14 = 0;
    if (v11)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {

        v5 = v22;
        a1 = v17;
        goto LABEL_13;
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        v14 = v15;
        do
        {
LABEL_10:
          v11 &= v11 - 1;
          swift_bridgeObjectRetain_n();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C7069A44();
          sub_1C739796C(v16);
        }

        while (v11);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *a1;
    result = sub_1C6FC9D70(v5, &v18);
    *a1 = v22;
  }

  return result;
}

uint64_t sub_1C7469210()
{
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C74692A4()
{
  result = qword_1EDD09CF8;
  if (!qword_1EDD09CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09CF8);
  }

  return result;
}

unint64_t sub_1C74692FC()
{
  result = qword_1EDD09CE0;
  if (!qword_1EDD09CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09CE0);
  }

  return result;
}

unint64_t sub_1C7469354()
{
  result = qword_1EC21C1C8;
  if (!qword_1EC21C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C1C8);
  }

  return result;
}

unint64_t sub_1C74693AC()
{
  result = qword_1EDD09D18;
  if (!qword_1EDD09D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09D18);
  }

  return result;
}

PhotosIntelligence::DailyPhotosFaceCuration::DailyPhotosFace::Source_optional __swiftcall DailyPhotosFaceCuration.DailyPhotosFace.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DailyPhotosFaceCuration.DailyPhotosFace.Source.rawValue.getter()
{
  v1 = 0x654B79726F6D656DLL;
  if (*v0 != 1)
  {
    v1 = 0x734179726F6D656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465727574616566;
  }
}

uint64_t sub_1C7469508@<X0>(uint64_t *a1@<X8>)
{
  result = DailyPhotosFaceCuration.DailyPhotosFace.Source.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t DailyPhotosFaceCuration.DailyPhotosFace.localizedTitle.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t DailyPhotosFaceCuration.DailyPhotosFace.localizedSubtitle.getter()
{
  v1 = *(v0 + 32);
  sub_1C75504FC();
  return v1;
}

id DailyPhotosFaceCuration.DailyPhotosFace.uuid.getter()
{
  result = [*(v0 + 8) uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1C755068C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7469604()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C1D0);
  __swift_project_value_buffer(v0, qword_1EC21C1D0);
  return sub_1C754FEFC();
}

void __swiftcall DailyPhotosFaceCuration.init(maxNumberOfFaces:photoLibrary:)(PhotosIntelligence::DailyPhotosFaceCuration *__return_ptr retstr, Swift::Int maxNumberOfFaces, PHPhotoLibrary photoLibrary)
{
  retstr->limit = maxNumberOfFaces;
  retstr->photoLibrary = photoLibrary;
  v5 = objc_allocWithZone(PNTimelineDataSourceOptions);
  v6 = photoLibrary.super.isa;
  v7 = [v5 initForWatchShuffle];
  sub_1C6F65BE8(0, &qword_1EC21C1E8);
  retstr->dataSource.super.isa = sub_1C7469710(v6, v7);
}

id sub_1C7469710(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPhotoLibrary:a1 options:a2];

  return v4;
}

uint64_t DailyPhotosFaceCuration.getDailyPhotosFaces(excluding:)(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v20 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C74699B8(a1);
  v5 = sub_1C75504FC();
  sub_1C6FD43AC(v5);
  v6 = OUTLINED_FUNCTION_0_190();
  v7 = sub_1C7469EB8(v6);
  v8 = sub_1C75504FC();
  sub_1C6FD43AC(v8);
  if (__OFSUB__(v3, *(v20 + 16)))
  {
    __break(1u);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_0_190();
    v2 = sub_1C746A3A0(v9, v10);
    v11 = sub_1C75504FC();
    sub_1C6FD43AC(v11);
    if (qword_1EC214180 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v12 = sub_1C754FF1C();
  __swift_project_value_buffer(v12, qword_1EC21C1D0);
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v13 = sub_1C754FEEC();
  v14 = sub_1C75511BC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134218752;
    *(v15 + 4) = *(v20 + 16);

    *(v15 + 12) = 2048;
    v16 = *(v4 + 16);

    *(v15 + 14) = v16;

    *(v15 + 22) = 2048;
    v17 = *(v7 + 16);

    *(v15 + 24) = v17;

    *(v15 + 32) = 2048;
    v18 = v2[2];

    *(v15 + 34) = v18;

    _os_log_impl(&dword_1C6F5C000, v13, v14, "Found %ld total assets. From featured photos: %ld; from memory key assets: %ld; from backfilled memory assets: %ld", v15, 0x2Au);
    MEMORY[0x1CCA5F8E0](v15, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return v20;
}

uint64_t sub_1C74699B8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = [v2 featuredPhotos];
  sub_1C6F65BE8(0, &qword_1EDD0CEB0);
  v4 = sub_1C7550B5C();

  v5 = [v2 keyAssetByFeaturedPhotoLocalIdentifier];
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v6 = sub_1C75504AC();

  result = sub_1C6FB6304();
  if (result)
  {
    v9 = result;
    if (result >= 1)
    {
      v10 = 0;
      v11 = v4 & 0xC000000000000001;
      v12 = MEMORY[0x1E69E7CC0];
      *&v8 = 136315138;
      v50 = v8;
      v51 = v4;
      v55 = v4 & 0xC000000000000001;
      v56 = result;
      while (1)
      {
        if (v11)
        {
          v13 = MEMORY[0x1CCA5DDD0](v10, v4);
        }

        else
        {
          v13 = *(v4 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = [v13 localIdentifier];
        v16 = sub_1C755068C();
        v18 = v17;

        if (*(v6 + 16))
        {
          v19 = sub_1C6F78124(v16, v18);
          v21 = v20;

          if (v21)
          {
            v22 = *(*(v6 + 56) + 8 * v19);
            v23 = sub_1C70CAC04(v22);
            if (!v24)
            {
              goto LABEL_24;
            }

            v25 = v23;
            v26 = v24;
            if (sub_1C7009C30(v23, v24, a1))
            {
              if (qword_1EC214180 != -1)
              {
                swift_once();
              }

              v27 = sub_1C754FF1C();
              __swift_project_value_buffer(v27, qword_1EC21C1D0);
              sub_1C75504FC();
              v28 = sub_1C754FEEC();
              v29 = sub_1C75511BC();

              if (os_log_type_enabled(v28, v29))
              {
                v30 = swift_slowAlloc();
                v52 = v12;
                v31 = swift_slowAlloc();
                v57 = v31;
                *v30 = v50;
                v32 = sub_1C6F765A4(v25, v26, &v57);

                *(v30 + 4) = v32;
                _os_log_impl(&dword_1C6F5C000, v28, v29, "Excluding Featured Photo: %s", v30, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v31);
                v33 = v31;
                v12 = v52;
                MEMORY[0x1CCA5F8E0](v33, -1, -1);
                v34 = v30;
                v4 = v51;
                MEMORY[0x1CCA5F8E0](v34, -1, -1);
              }

              else
              {
              }

LABEL_24:
            }

            else
            {

              v35 = v14;
              v53 = sub_1C746AE84(v35, &selRef_localizedTitle);
              v37 = v36;
              v38 = sub_1C746AE84(v35, &selRef_localizedSubtitle);
              v40 = v39;
              v41 = v22;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6FB4EBC();
                v12 = v44;
              }

              v42 = *(v12 + 16);
              if (v42 >= *(v12 + 24) >> 1)
              {
                sub_1C6FB4EBC();
                v12 = v45;
              }

              *(v12 + 16) = v42 + 1;
              v43 = v12 + 48 * v42;
              *(v43 + 32) = 0;
              v4 = v51;
              *(v43 + 40) = v41;
              *(v43 + 48) = v53;
              *(v43 + 56) = v37;
              *(v43 + 64) = v38;
              *(v43 + 72) = v40;
            }

            v11 = v55;
            v9 = v56;
            goto LABEL_26;
          }
        }

        else
        {
        }

LABEL_26:
        if (v9 == ++v10)
        {

          goto LABEL_29;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
LABEL_29:

    if (qword_1EC214180 != -1)
    {
      swift_once();
    }

    v46 = sub_1C754FF1C();
    __swift_project_value_buffer(v46, qword_1EC21C1D0);
    sub_1C75504FC();
    v47 = sub_1C754FEEC();
    v48 = sub_1C755117C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = *(v12 + 16);

      _os_log_impl(&dword_1C6F5C000, v47, v48, "Found %ld featured photos assets", v49, 0xCu);
      MEMORY[0x1CCA5F8E0](v49, -1, -1);
    }

    else
    {
    }

    return v12;
  }

  return result;
}

uint64_t sub_1C7469EB8(uint64_t a1)
{
  v3 = *(v2 + 16);
  v4 = [v3 featuredMemories];
  v5 = [v3 keyAssetByMemoryLocalIdentifier];
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v6 = sub_1C75504AC();

  v7 = [v4 count];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_27;
  }

  v9 = v7;
  if (v7)
  {
    v10 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v11 = &selRef_mergedPersonIdentifiers;
    *&v8 = 136315138;
    v53 = v8;
    v54 = v4;
    v59 = v7;
    while (1)
    {
      v12 = [v4 v11[45]];
      v13 = [v12 localIdentifier];
      v14 = sub_1C755068C();
      v16 = v15;

      if (*(v6 + 16))
      {
        v17 = sub_1C6F78124(v14, v16);
        v19 = v18;

        if (v19)
        {
          v20 = *(*(v6 + 56) + 8 * v17);
          v21 = sub_1C70CAC04(v20);
          if (!v22)
          {
            goto LABEL_21;
          }

          v23 = v21;
          v24 = v22;
          if (sub_1C7009C30(v21, v22, a1))
          {
            if (qword_1EC214180 != -1)
            {
              swift_once();
            }

            v25 = sub_1C754FF1C();
            __swift_project_value_buffer(v25, qword_1EC21C1D0);
            sub_1C75504FC();
            v26 = sub_1C754FEEC();
            v27 = sub_1C75511BC();

            if (os_log_type_enabled(v26, v27))
            {
              v56 = v1;
              v28 = swift_slowAlloc();
              v29 = swift_slowAlloc();
              v60 = v29;
              *v28 = v53;
              v30 = sub_1C6F765A4(v23, v24, &v60);

              *(v28 + 4) = v30;
              _os_log_impl(&dword_1C6F5C000, v26, v27, "Excluding Memory Key Asset: %s", v28, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v29);
              v31 = v29;
              v4 = v54;
              MEMORY[0x1CCA5F8E0](v31, -1, -1);
              v32 = v28;
              v1 = v56;
              MEMORY[0x1CCA5F8E0](v32, -1, -1);
            }

            else
            {
            }

LABEL_21:
          }

          else
          {

            v33 = v12;
            v34 = sub_1C746AE84(v33, &selRef_localizedTitle);
            v55 = v35;
            v57 = v34;
            v36 = sub_1C746AE84(v33, &selRef_localizedSubtitle);
            v38 = v37;
            v39 = v20;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C6FB4EBC();
              v1 = v44;
            }

            v40 = v1;
            v41 = *(v1 + 16);
            v42 = v40;
            if (v41 >= *(v40 + 24) >> 1)
            {
              sub_1C6FB4EBC();
              v42 = v45;
            }

            *(v42 + 16) = v41 + 1;
            v43 = v42 + 48 * v41;
            v1 = v42;
            *(v43 + 32) = 1;
            *(v43 + 40) = v39;
            *(v43 + 48) = v57;
            *(v43 + 56) = v55;
            *(v43 + 64) = v36;
            *(v43 + 72) = v38;
          }

          v9 = v59;
          v11 = &selRef_mergedPersonIdentifiers;
          goto LABEL_23;
        }
      }

      else
      {
      }

LABEL_23:
      if (v9 == ++v10)
      {

        goto LABEL_26;
      }
    }
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_26:
  if (qword_1EC214180 != -1)
  {
    goto LABEL_32;
  }

LABEL_27:
  v46 = sub_1C754FF1C();
  __swift_project_value_buffer(v46, qword_1EC21C1D0);
  sub_1C75504FC();
  v47 = sub_1C754FEEC();
  v48 = sub_1C755117C();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = v1;
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = *(v49 + 16);

    _os_log_impl(&dword_1C6F5C000, v47, v48, "Found %ld memory key assets", v50, 0xCu);
    v51 = v50;
    v1 = v49;
    MEMORY[0x1CCA5F8E0](v51, -1, -1);
  }

  else
  {
  }

  return v1;
}

void *sub_1C746A3A0(uint64_t a1, uint64_t a2)
{
  v105 = a1;
  v4 = sub_1C754DF6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a2;
  if (a2 < 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = *(v2 + 16);
  v97 = *(v2 + 8);
  v9 = objc_opt_self();
  sub_1C754DF3C();
  v10 = sub_1C754DECC();
  (*(v5 + 8))(v7, v4);
  v93 = [v9 randomNumberGeneratorForWallpaperDonationWithDate_];

  v11 = [v8 featuredMemories];
  v12 = [v8 keyAssetByMemoryLocalIdentifier];
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v13 = sub_1C75504AC();

  v14 = [v11 count];
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_51;
  }

  v15 = v14;
  v98 = v11;
  if (!v14)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_23:

    v55 = 0;
    v56 = v17[2];
    v100 = v17 + 4;
    v101 = v56;
    v57 = v105 + 56;
    v99 = MEMORY[0x1E69E7CC0];
LABEL_24:
    while (v55 != v101)
    {
      if (v55 >= v17[2])
      {
        __break(1u);
        goto LABEL_56;
      }

      v12 = v17;
      v58 = &v100[6 * v55];
      LODWORD(v104) = *v58;
      v60 = v58[1];
      v59 = v58[2];
      v61 = v58[3];
      v102 = v58[4];
      v103 = v59;
      v62 = v58[5];
      sub_1C75504FC();
      v13 = v60;
      sub_1C75504FC();
      result = [v13 uuid];
      if (!result)
      {
        __break(1u);
        goto LABEL_62;
      }

      v63 = result;
      ++v55;
      v64 = sub_1C755068C();
      v66 = v65;

      if (*(v105 + 16))
      {
        v67 = v105;
        sub_1C7551F3C();
        sub_1C75505AC();
        v68 = sub_1C7551FAC();
        v69 = ~(-1 << *(v67 + 32));
        while (1)
        {
          v70 = v68 & v69;
          if (((*(v57 + (((v68 & v69) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v68 & v69)) & 1) == 0)
          {
            break;
          }

          v71 = (*(v105 + 48) + 16 * v70);
          if (*v71 != v64 || v71[1] != v66)
          {
            v73 = sub_1C7551DBC();
            v68 = v70 + 1;
            if ((v73 & 1) == 0)
            {
              continue;
            }
          }

          v17 = v12;
          goto LABEL_24;
        }
      }

      v74 = v99;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716EE38();
        v74 = v106;
      }

      v76 = v74[2];
      if (v76 >= v74[3] >> 1)
      {
        sub_1C716EE38();
        v74 = v106;
      }

      v74[2] = v76 + 1;
      v99 = v74;
      v77 = &v74[6 * v76];
      *(v77 + 32) = v104;
      v78 = v102;
      v79 = v103;
      v77[5] = v13;
      v77[6] = v79;
      v77[7] = v61;
      v77[8] = v78;
      v77[9] = v62;
      v17 = v12;
    }

    v80 = sub_1C7259930(v93, v99);

    sub_1C7033F04(v92, v80);
    v82 = v81;
    v84 = v83;
    v13 = v98;
    if (v83)
    {
      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v86 = swift_dynamicCastClass();
      if (!v86)
      {
        swift_unknownObjectRelease();
        v86 = MEMORY[0x1E69E7CC0];
      }

      v87 = *(v86 + 16);

      if (__OFSUB__(v84 >> 1, v82))
      {
        __break(1u);
      }

      else if (v87 == (v84 >> 1) - v82)
      {
        v12 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v12)
        {
          goto LABEL_50;
        }

        v12 = MEMORY[0x1E69E7CC0];
LABEL_49:
        swift_unknownObjectRelease();
LABEL_50:
        if (qword_1EC214180 != -1)
        {
          goto LABEL_58;
        }

LABEL_51:
        v88 = sub_1C754FF1C();
        __swift_project_value_buffer(v88, qword_1EC21C1D0);

        v89 = sub_1C754FEEC();
        v90 = sub_1C755117C();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 134217984;
          *(v91 + 4) = v12[2];

          _os_log_impl(&dword_1C6F5C000, v89, v90, "Found %ld backfill assets from memories", v91, 0xCu);
          MEMORY[0x1CCA5F8E0](v91, -1, -1);
        }

        else
        {
        }

        return v12;
      }

      swift_unknownObjectRelease();
    }

    sub_1C739D1DC();
    v12 = v85;
    goto LABEL_49;
  }

  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v18 = &selRef_clsSceneClassifications;
  v96 = xmmword_1C7565670;
  v95 = v13;
  v94 = v14;
  while (1)
  {
    v19 = [v11 objectAtIndexedSubscript_];
    v20 = v18[481];
    v104 = v19;
    v21 = [v19 v20];
    v22 = sub_1C755068C();
    v12 = v23;

    if (!v13[2])
    {

      goto LABEL_19;
    }

    v24 = sub_1C6F78124(v22, v12);
    v26 = v25;

    if (v26)
    {
      break;
    }

LABEL_19:
    v16 = (v16 + 1);

    if (v16 == v15)
    {
      goto LABEL_23;
    }
  }

  v27 = *(v13[7] + 8 * v24);
  v28 = [v97 librarySpecificFetchOptions];
  v29 = objc_opt_self();
  v30 = v18[481];
  v101 = v27;
  v31 = [v27 v30];
  v32 = sub_1C755068C();
  v34 = v33;

  result = sub_1C725C798(v32, v34, v29);
  if (v36)
  {
    v37 = static CurationPredicateBuilder.internalPredicateForDailyPhotosFace(excluding:)(result, v36);

    [v28 setInternalPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v12 = swift_allocObject();
    *(v12 + 1) = v96;
    v38 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v12[4] = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
    sub_1C71F8834(v12, v28);
    [v28 setIncludeHiddenAssets_];
    v103 = [objc_opt_self() fetchAssetsInAssetCollection:v104 options:v28];
    v39 = [v103 count];
    if ((v39 & 0x8000000000000000) != 0)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v39)
    {
      v99 = v28;
      v100 = v16;
      v40 = 0;
      v102 = v39;
      do
      {
        v41 = [v103 objectAtIndexedSubscript_];
        v12 = v104;
        v42 = sub_1C746AE84(v12, &selRef_localizedTitle);
        v44 = v43;
        v45 = sub_1C746AE84(v12, &selRef_localizedSubtitle);
        v47 = v46;
        v48 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB4EBC();
          v17 = v53;
        }

        v49 = v17;
        v50 = v17[2];
        v51 = v49;
        if (v50 >= v49[3] >> 1)
        {
          sub_1C6FB4EBC();
          v51 = v54;
        }

        ++v40;

        v51[2] = v50 + 1;
        v52 = &v51[6 * v50];
        v17 = v51;
        *(v52 + 32) = 2;
        v52[5] = v48;
        v52[6] = v42;
        v52[7] = v44;
        v52[8] = v45;
        v52[9] = v47;
      }

      while (v102 != v40);

      v104 = v103;
      v11 = v98;
      v13 = v95;
      v15 = v94;
      v16 = v100;
      v18 = &selRef_clsSceneClassifications;
    }

    else
    {

      v104 = v103;
      v11 = v98;
    }

    goto LABEL_19;
  }

LABEL_62:
  __break(1u);
  return result;
}

unint64_t sub_1C746AD34()
{
  result = qword_1EC21C1F0;
  if (!qword_1EC21C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C1F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DailyPhotosFaceCuration.DailyPhotosFace.Source(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C746AE84(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C755068C();

  return v4;
}

uint64_t PromptSuggestionSearchDataSource.__allocating_init(photoLibrary:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PromptSuggestionSearchDataSource.init(photoLibrary:)(a1);
  return v2;
}

uint64_t PromptSuggestionSearchDataSource.init(photoLibrary:)(uint64_t a1)
{
  v3 = sub_1C754FF1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  v7 = sub_1C755146C();
  *(v1 + 16) = v7;
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32PromptSuggestionSearchDataSource_photoLibrary) = a1;
  v8 = v7;
  sub_1C754FF2C();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC18PhotosIntelligence32PromptSuggestionSearchDataSource_logger, v6, v3);
  return v1;
}

uint64_t PromptSuggestionSearchDataSource.fetchSuggestionPrompts(maxSuggestionResults:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C746B098, 0, 0);
}

uint64_t sub_1C746B098()
{
  v1 = *(v0[4] + 16);
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v2 = v1;
  v3 = PerformanceMeasure.init(name:log:)();
  v4 = OBJC_IVAR____TtC18PhotosIntelligence32PromptSuggestionSearchDataSource_logger;
  v0[5] = v3;
  v0[6] = v4;
  v5 = sub_1C754FEEC();
  v6 = sub_1C75511BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_1C6F5C000, v5, v6, "Requesting search suggestions with limit %ld", v8, 0xCu);
    MEMORY[0x1CCA5F8E0](v8, -1, -1);
  }

  v10 = v0[3];
  v9 = v0[4];

  v11 = swift_task_alloc();
  v0[7] = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  v12 = swift_task_alloc();
  v0[8] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
  *v12 = v0;
  v12[1] = sub_1C746B268;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000002DLL, 0x80000001C75B1780, sub_1C746B728, v11, v13);
}

uint64_t sub_1C746B268()
{
  OUTLINED_FUNCTION_42();
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v2 = v5;
  *(v5 + 72) = v0;

  if (v0)
  {
    v3 = sub_1C746B49C;
  }

  else
  {

    v3 = sub_1C746B378;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C746B378()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v2, v3, "Received %ld fallback prompts", v4, 0xCu);
    MEMORY[0x1CCA5F8E0](v4, -1, -1);
  }

  else
  {
  }

  sub_1C6F85170();

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_1C746B49C()
{
  OUTLINED_FUNCTION_42();

  sub_1C6F85170();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C746B50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = objc_opt_self();
  v11 = *(a2 + OBJC_IVAR____TtC18PhotosIntelligence32PromptSuggestionSearchDataSource_photoLibrary);
  v12 = [objc_opt_self() promptValidationAssetCountThreshold];
  (*(v6 + 16))(v9, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v9, v5);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1C746BF04;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C746BAB0;
  aBlock[3] = &block_descriptor_43;
  v15 = _Block_copy(aBlock);

  [v10 initialSearchQuerySuggestionsForPhotoLibrary:v11 suggestionLimit:v17 minimumResultCountPerSuggestion:v12 suggestionsHandler:v15];
  _Block_release(v15);
}

uint64_t sub_1C746B730(uint64_t a1, id a2)
{
  if (a2)
  {
    v34 = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1F8);
    return sub_1C7550C9C();
  }

  sub_1C75504FC();
  v5 = sub_1C754FEEC();
  v6 = sub_1C75511BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v5, v6, "Received %ld search suggestions", v7, 0xCu);
    MEMORY[0x1CCA5F8E0](v7, -1, -1);
  }

  else
  {
  }

  v8 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  result = sub_1C6FB6304();
  if (!result)
  {
    goto LABEL_20;
  }

  v9 = result;
  if (result >= 1)
  {
    v10 = 0;
    v11 = a1 & 0xC000000000000001;
    do
    {
      if (v11)
      {
        v12 = MEMORY[0x1CCA5DDD0](v10, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 queryText];
      if (v14)
      {
        v15 = v14;
        MEMORY[0x1CCA5D040]();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();

        v8 = v34;
      }

      else
      {
        v16 = v13;
        v17 = sub_1C754FEEC();
        v18 = sub_1C75511BC();

        if (os_log_type_enabled(v17, v18))
        {
          v32 = v8;
          v19 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v33 = v30;
          *v19 = 136380675;
          v20 = [v16 description];
          v31 = v16;
          v21 = v11;
          v22 = v9;
          v23 = a1;
          v24 = sub_1C755068C();
          v26 = v25;

          v27 = v24;
          a1 = v23;
          v9 = v22;
          v11 = v21;
          v28 = sub_1C6F765A4(v27, v26, &v33);

          *(v19 + 4) = v28;
          _os_log_impl(&dword_1C6F5C000, v17, v18, "Empty search suggestion from query %{private}s", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          MEMORY[0x1CCA5F8E0](v30, -1, -1);
          v29 = v19;
          v8 = v32;
          MEMORY[0x1CCA5F8E0](v29, -1, -1);
        }

        else
        {
        }
      }

      ++v10;
    }

    while (v9 != v10);
LABEL_20:
    v33 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1F8);
    return sub_1C7550CAC();
  }

  __break(1u);
  return result;
}

void sub_1C746BAB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1C6F65BE8(0, &unk_1EDD0CDA0);
  v5 = sub_1C7550B5C();

  v6 = a3;
  v4(v5, a3);
}

uint64_t PromptSuggestionSearchDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence32PromptSuggestionSearchDataSource_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PromptSuggestionSearchDataSource.__deallocating_deinit()
{
  PromptSuggestionSearchDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C746BC24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C6FF683C;

  return PromptSuggestionSearchDataSource.fetchSuggestionPrompts(maxSuggestionResults:)(a1);
}

uint64_t dispatch thunk of PromptSuggestionDataSource.fetchSuggestionPrompts(maxSuggestionResults:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C6FF6BA8;

  return v9(a1, a2, a3);
}

uint64_t type metadata accessor for PromptSuggestionSearchDataSource()
{
  result = qword_1EDD0D438;
  if (!qword_1EDD0D438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C746BE38()
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

uint64_t sub_1C746BF04(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C1F8);

  return sub_1C746B730(a1, a2);
}

_BYTE *storeEnumTagSinglePayload for Spatial3DCuration(_BYTE *result, int a2, int a3)
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

uint64_t MessagesBackdrop.CurationContext.suggestionSubtype.getter()
{
  v1 = *v0;
  if (v1 == 1)
  {
    v2 = 1502;
  }

  else
  {
    v2 = 0;
  }

  v3 = v1 != 1;
  v4 = v1 == 0;
  if (*v0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 1501;
  }

  v6 = !v4 && v3;
  return v5 | (v6 << 16);
}

uint64_t MessagesBackdrop.CurationContext.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

unint64_t sub_1C746C138()
{
  result = qword_1EC21C200;
  if (!qword_1EC21C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21C200);
  }

  return result;
}

_BYTE *_s15CurationContextOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C746C274(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1 >> 2;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1C746C2BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = 4 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C746C320()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v0[3] = v3;
  v0[4] = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1C746C3BC;

  return FreeformStoryChapterCompletionAsyncIterator.next()(v2);
}

uint64_t sub_1C746C3BC()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      swift_getObjectType();
      v7 = sub_1C7550C8C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1C746C518, v7, v9);
  }

  else
  {
    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1C746C518()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C746C5A0()
{
  OUTLINED_FUNCTION_42();
  v0[5] = v1;
  v0[6] = v2;
  v3 = swift_task_alloc();
  v0[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DE8);
  OUTLINED_FUNCTION_3_118();
  *v3 = v4;
  v3[1] = sub_1C746C648;

  return MEMORY[0x1EEE6DB98](v0 + 2);
}

uint64_t sub_1C746C648()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C746C744()
{
  OUTLINED_FUNCTION_42();
  if (*(v0 + 40))
  {
    swift_getObjectType();
    v1 = sub_1C7550C8C();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1C746C7CC, v1, v3);
}

uint64_t sub_1C746C7CC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 32) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C746C854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a4;
  v21 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60);
  OUTLINED_FUNCTION_29();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v19 = sub_1C754EDEC();
  OUTLINED_FUNCTION_29();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754E55C();
  v22 = a2;
  v23 = a3;
  sub_1C7099334();
  sub_1C754EDAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216BF8);
  sub_1C7099594(&qword_1EDD0CB18, &qword_1EC216BF8);
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60);
  sub_1C754ED9C();
  (*(v8 + 8))(v11, v6);
  return (*(v13 + 8))(v16, v19);
}

uint64_t sub_1C746CA8C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[4];
  switch(v3 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_22_62();
      v13 = v14 + 21;
      goto LABEL_7;
    case 2uLL:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_22_62();
      v16 = v9;
      goto LABEL_4;
    case 3uLL:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_22_62();
      v13 = v12 | 8;
LABEL_7:
      v16 = v13;
      MEMORY[0x1CCA5CD70](v2, v1);
      v10 = 34;
      v11 = 0xE100000000000000;
      goto LABEL_8;
    default:
      v5 = v0[2];
      v4 = v0[3];
      v6 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD00000000000002ALL, 0x80000001C75B18F0);
      MEMORY[0x1CCA5CD70](v5, v4);
      MEMORY[0x1CCA5CD70](2236474, 0xE300000000000000);
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
      v8 = sub_1C75506EC();
      MEMORY[0x1CCA5CD70](v8);

      MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75B1920);
LABEL_4:
      v10 = v2;
      v11 = v1;
LABEL_8:
      MEMORY[0x1CCA5CD70](v10, v11);
      return v16;
  }
}

uint64_t sub_1C746CC7C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C208);
  __swift_project_value_buffer(v0, qword_1EC21C208);
  return sub_1C754FEFC();
}

uint64_t static CompletionParser.parseCompletion<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v93 = a4;
  v96 = a3;
  OUTLINED_FUNCTION_29();
  v92 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v87 - v10;
  v98 = sub_1C75506DC();
  OUTLINED_FUNCTION_29();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  v17 = OUTLINED_FUNCTION_76(v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v87 - v18;
  v101 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_0_118();
  sub_1C7099594(v20, &unk_1EC217A00);
  v21 = sub_1C75505FC();
  v23 = v22;
  if (qword_1EC214188 != -1)
  {
    OUTLINED_FUNCTION_0_191();
    swift_once();
  }

  v24 = sub_1C754FF1C();
  __swift_project_value_buffer(v24, qword_1EC21C208);
  sub_1C75504FC();
  v25 = sub_1C754FEEC();
  v26 = sub_1C755117C();

  v27 = os_log_type_enabled(v25, v26);
  v97 = a2;
  v103 = v12;
  if (v27)
  {
    OUTLINED_FUNCTION_13_3();
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v29 = swift_slowAlloc();
    v101 = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1C6F765A4(v21, v23, &v101);
    OUTLINED_FUNCTION_145();
    _os_log_impl(v30, v31, v32, v33, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v101 = v21;
  v102 = v23;
  v99 = 123;
  v100 = 0xE100000000000000;
  sub_1C754E15C();
  OUTLINED_FUNCTION_52_5();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_1C6FB5E8C();
  OUTLINED_FUNCTION_30_49();
  v38 = sub_1C755157C();
  v40 = v39;
  sub_1C7030CDC(v19, &qword_1EC214DF8);
  if (v40 & 1) != 0 || (v101 = v21, v102 = v23, v99 = 125, v100 = 0xE100000000000000, OUTLINED_FUNCTION_52_5(), __swift_storeEnumTagSinglePayload(v41, v42, v43, v44), OUTLINED_FUNCTION_30_49(), sub_1C755157C(), v46 = v45, v48 = v47, result = sub_1C7030CDC(v19, &qword_1EC214DF8), (v48))
  {
    sub_1C7413570();
    OUTLINED_FUNCTION_9_10();
    v50 = swift_allocError();
    *v51 = v21;
    v51[1] = v23;
    return OUTLINED_FUNCTION_48_30(v50, v51);
  }

  if (v46 >> 14 < v38 >> 14)
  {
    __break(1u);
  }

  else
  {
    v52 = sub_1C755098C();
    v53 = MEMORY[0x1CCA5CC40](v52);
    v55 = v54;

    sub_1C75506CC();
    v56 = sub_1C755069C();
    v58 = v57;
    v60 = v103 + 8;
    v59 = *(v103 + 8);
    v59(v15, v98);
    if (v58 >> 60 == 15)
    {

      sub_1C7413570();
      OUTLINED_FUNCTION_9_10();
      v50 = swift_allocError();
      *v51 = v53;
      v51[1] = v55;
      return OUTLINED_FUNCTION_48_30(v50, v51);
    }

    v90 = v59;

    v89 = sub_1C754D73C();
    swift_allocObject();
    sub_1C754D72C();
    v61 = v95;
    v62 = v97;
    v63 = v94;
    sub_1C754D71C();
    if (!v63)
    {
      sub_1C70B5C10(v56, v58);

      return (*(v92 + 32))(v93, v61, v62);
    }

    v94 = v56;
    v95 = v58;

    v64 = sub_1C754DBDC();
    v65 = [v64 underlyingErrors];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    v66 = sub_1C7550B5C();

    if (*(v66 + 16))
    {
      v103 = v60;
      v67 = *(v66 + 32);
      v68 = v67;

      v69 = sub_1C754DBDC();

      v70 = v69;
      if ([v70 code] == 3840)
      {
        v101 = v21;
        v102 = v23;
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](32093, 0xE200000000000000);
        v72 = v101;
        v71 = v102;
        sub_1C75506CC();
        v88 = sub_1C755069C();
        v73 = v15;
        v75 = v74;
        v90(v73, v98);
        if (v75 >> 60 == 15)
        {
          sub_1C7413570();
          OUTLINED_FUNCTION_9_10();
          v76 = swift_allocError();
          *v77 = v72;
          v77[1] = v71;
          OUTLINED_FUNCTION_48_30(v76, v77);
          v101 = v97;
          swift_getMetatypeMetadata();
          v83 = sub_1C755070C();
          v85 = v84;
          sub_1C7413570();
          OUTLINED_FUNCTION_9_10();
          swift_allocError();
          *v86 = v21;
          v86[1] = v23;
          v86[2] = v83;
          v86[3] = v85;
          v86[4] = v76;
          swift_willThrow();

          return sub_1C70B5C10(v94, v95);
        }

        swift_allocObject();
        sub_1C754D72C();
        v82 = v91;
        v62 = v97;
        sub_1C754D71C();

        sub_1C70B5C10(v94, v95);
        sub_1C70B5C10(v88, v75);

        v61 = v82;
        return (*(v92 + 32))(v93, v61, v62);
      }
    }

    else
    {

      v70 = 0;
    }

    v101 = v62;
    swift_getMetatypeMetadata();
    v78 = sub_1C755070C();
    v80 = v79;
    sub_1C7413570();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v81 = v21;
    v81[1] = v23;
    v81[2] = v78;
    v81[3] = v80;
    v81[4] = v63;
    swift_willThrow();

    return sub_1C70B5C10(v94, v95);
  }

  return result;
}