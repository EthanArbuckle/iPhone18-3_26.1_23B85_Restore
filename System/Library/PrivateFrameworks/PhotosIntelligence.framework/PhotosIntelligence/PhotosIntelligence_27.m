void sub_1C715DFDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Metadata retrieval failed for '%{private}@' query token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C7597F90);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0x2079726575712027, 0xED00006E656B6F74);
      sub_1C7161CDC(0, 0xE000000000000000);

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

uint64_t sub_1C715E2B0(const void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v111 = a5;
  v112 = a4;
  v118 = a2;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  MEMORY[0x1EEE9AC00](TokenCategoryType);
  v108 = (&v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v107 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v110 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v133, a1, sizeof(v133));
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v121 = a3;
  sub_1C75504FC();
  v15 = 0;
  v122 = MEMORY[0x1E69E7CC8];
  v119 = v14;
  for (i = a3 + 64; v13; v10 = i)
  {
LABEL_8:
    v17 = (v15 << 9) | (8 * __clz(__rbit64(v13)));
    v18 = *(*(v121 + 56) + v17);
    v19 = *(*(v121 + 48) + v17);
    sub_1C75504FC();
    v123 = v19;
    v20 = [v19 string];
    a3 = sub_1C755068C();
    v22 = v21;

    v124 = v18;
    sub_1C75504FC();
    v23 = v122;
    swift_isUniquelyReferenced_nonNull_native();
    *&v125 = v23;
    v24 = sub_1C6F78124(a3, v22);
    if (__OFADD__(*(v23 + 16), (v25 & 1) == 0))
    {
      goto LABEL_79;
    }

    v26 = v24;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
    v28 = sub_1C7551A2C();
    v29 = v125;
    if (v28)
    {
      v30 = sub_1C6F78124(a3, v22);
      if ((v27 & 1) != (v31 & 1))
      {
        goto LABEL_82;
      }

      v26 = v30;
    }

    v14 = v119;
    if (v27)
    {
    }

    else
    {
      sub_1C6FCABE4(v26);
    }

    v13 &= v13 - 1;
    v122 = v29;
    a3 = v124;
    sub_1C73978C4(v124);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_76;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_8;
    }
  }

  v32 = MEMORY[0x1E69E7CC8];
  if (v133[12])
  {
    v32 = v133[12];
  }

  v117 = v32;
  v132 = MEMORY[0x1E69E7CD0];
  v119 = *(v118 + 16);
  if (!v119)
  {
    sub_1C75504FC();

    v99 = 0;
    v98 = MEMORY[0x1E69E7CD0];
LABEL_73:
    *&v125 = sub_1C71CDA68(v98);
    sub_1C75504FC();
    sub_1C7348A70(&v125);

    v100 = v108;
    *v108 = v125;
    v100[1] = MEMORY[0x1E69E7CD0];
    swift_storeEnumTagMultiPayload();
    v101 = v110;
    sub_1C7161504(v100, v110, type metadata accessor for QueryTokenCategoryType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2172D0);
    v102 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_1C755BAB0;
    sub_1C7161564(v101, v103 + v102);
    v104 = v111;
    swift_isUniquelyReferenced_nonNull_native();
    *&v125 = *v104;
    sub_1C6FC8CCC();
    *v104 = v125;
    v105 = v112;
    swift_isUniquelyReferenced_nonNull_native();
    *&v125 = *v105;
    sub_1C6FC7AB4();
    *v105 = v125;
    sub_1C71615C8(v101, type metadata accessor for QueryTokenSuggestion);
    return sub_1C6F6E5B4(v99);
  }

  v118 += 32;
  sub_1C75504FC();
  v116 = 0;
  v33 = 0;
  *&v34 = 136643331;
  v113 = v34;
  while (2)
  {
    v35 = *(v118 + 8 * v33);
    if (v35 >> 62)
    {
      v36 = sub_1C75516BC();
      if (!v36)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_68;
      }
    }

    i = v33;
    v123 = (v35 & 0xFFFFFFFFFFFFFF8);
    v124 = v35 & 0xC000000000000001;
    sub_1C75504FC();
    v37 = 0;
    v121 = MEMORY[0x1E69E7CC0];
    while (v36 != v37)
    {
      if (v124)
      {
        v38 = MEMORY[0x1CCA5DDD0](v37, v35);
      }

      else
      {
        if (v37 >= *(v123 + 2))
        {
          goto LABEL_75;
        }

        v38 = *(v35 + 8 * v37 + 32);
      }

      v39 = v38;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
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
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v41 = v35;
      a3 = [v38 string];
      v42 = sub_1C755068C();
      v44 = v43;

      if (*(v122 + 16))
      {
        v45 = sub_1C6F78124(v42, v44);
        a3 = v46;

        if ((a3 & 1) == 0)
        {
          goto LABEL_37;
        }

        v47 = *(*(v122 + 56) + 8 * v45);
        sub_1C75504FC();
        v48 = v121;
        v35 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB20F8();
          v48 = v49;
        }

        a3 = *(v48 + 16);
        if (a3 >= *(v48 + 24) >> 1)
        {
          sub_1C6FB20F8();
          v48 = v50;
        }

        *(v48 + 16) = a3 + 1;
        v121 = v48;
        *(v48 + 8 * a3 + 32) = v47;
        v37 = v40;
      }

      else
      {

LABEL_37:

        ++v37;
        v35 = v41;
      }
    }

    v51 = sub_1C75504FC();
    sub_1C6FDE498(v51);
    a3 = v52;

    if (!a3)
    {
LABEL_54:

      v33 = i;
      goto LABEL_68;
    }

    if (!*(a3 + 16))
    {

      goto LABEL_54;
    }

    v115 = a3;
    v53 = sub_1C6FB6304();
    if (v53)
    {
      v54 = v53;
      *&v131[0] = MEMORY[0x1E69E7CC0];
      sub_1C716D6A4();
      if ((v54 & 0x8000000000000000) == 0)
      {
        v55 = 0;
        v56 = *&v131[0];
        while (1)
        {
          if (v124)
          {
            v57 = MEMORY[0x1CCA5DDD0](v55, v35);
          }

          else
          {
            if ((v55 & 0x8000000000000000) != 0)
            {
              goto LABEL_77;
            }

            if (v55 >= *(v123 + 2))
            {
              goto LABEL_78;
            }

            v57 = *(v35 + 8 * v55 + 32);
          }

          v58 = v57;
          v59 = [v58 string];
          v60 = sub_1C755068C();
          v62 = v61;

          *(&v126 + 1) = MEMORY[0x1E69E6158];
          *&v125 = v60;
          *(&v125 + 1) = v62;
          *&v131[0] = v56;
          a3 = *(v56 + 16);
          if (a3 >= *(v56 + 24) >> 1)
          {
            sub_1C716D6A4();
            v56 = *&v131[0];
          }

          ++v55;
          *(v56 + 16) = a3 + 1;
          sub_1C6F9ED18(&v125, (v56 + 32 * a3 + 32));
          if (v54 == v55)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_81;
    }

LABEL_55:
    sub_1C6F65BE8(0, &qword_1EC217FD0);
    v63 = sub_1C6FBB0C8();
    v64 = [v63 array];

    v65 = sub_1C7550B5C();
    sub_1C71BBD84(v65, v66, v67, v68, v69, v70, v71, v72, v107, v108, TokenCategoryType, v110, v111, v112, v113, *(&v113 + 1), v114, v115, v116, v117, v118, v119, i, v121, v122, v123, v124, v125);
    v74 = v73;

    v33 = i;
    if (v74)
    {
      *&v125 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C7099594(&qword_1EDD0CF58, &unk_1EC217A00);
      v75 = sub_1C75505FC();
      v77 = v76;
    }

    else
    {
      v75 = v133[2];
      v77 = v133[3];
      sub_1C75504FC();
    }

    sub_1C75504FC();
    *&v125 = v75;
    *(&v125 + 1) = v77;
    v129 = 8236;
    v130 = 0xE200000000000000;
    sub_1C6FB5E8C();
    sub_1C75504FC();
    v78 = sub_1C755152C();
    v134 = v75;
    v135 = v77;
    v123 = v75;
    v124 = v77;
    v136 = v75;
    v137 = v77;
    v139 = 0;
    v140 = 0;
    v138 = v78;
    v141 = 4;
    sub_1C70802EC(&v134, &v125);
    sub_1C70F4DB8(&v125, &v134);
    v131[0] = v125;
    v131[1] = v126;
    v131[2] = v127;
    v131[3] = v128;
    sub_1C7080348(v131);
    v79 = v134;
    v80 = v135;
    sub_1C75504FC();
    sub_1C6F6E5B4(v116);
    v81 = v117;
    swift_isUniquelyReferenced_nonNull_native();
    *&v125 = v81;
    v82 = sub_1C6F78124(v79, v80);
    v84 = *(v81 + 16);
    v85 = (v83 & 1) == 0;
    a3 = v84 + v85;
    if (__OFADD__(v84, v85))
    {
      goto LABEL_80;
    }

    v86 = v82;
    v87 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
    if ((sub_1C7551A2C() & 1) == 0 || (v86 = sub_1C6F78124(v79, v80), (v87 & 1) == (v88 & 1)))
    {

      v89 = v125;
      if (v87)
      {
      }

      else
      {
        sub_1C6FCABE4(v86);
      }

      v117 = v89;
      v90 = v115;
      v91 = sub_1C75504FC();
      sub_1C739796C(v91);
      sub_1C7080348(&v134);
      type metadata accessor for QueryAssetsRetrievalProcessor();
      v92 = v124;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C6FCA6E4(v133, &v125);
      v93 = sub_1C754FEEC();
      a3 = sub_1C755117C();
      sub_1C6FDD548(v133);

      if (os_log_type_enabled(v93, a3))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v125 = v95;
        *v94 = v113;
        *(v94 + 4) = sub_1C6F765A4(v133[2], v133[3], &v125);
        *(v94 + 12) = 2085;
        v96 = sub_1C6F765A4(v123, v92, &v125);

        *(v94 + 14) = v96;
        *(v94 + 22) = 2048;
        v97 = *(v90 + 16);

        *(v94 + 24) = v97;

        _os_log_impl(&dword_1C6F5C000, v93, a3, "Add retrieval result and grounding data for query token: %{sensitive}s, location name: %{sensitive}s with %ld assets", v94, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v95, -1, -1);
        MEMORY[0x1CCA5F8E0](v94, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v116 = sub_1C6F9EEA8;
LABEL_68:
      if (++v33 == v119)
      {

        v98 = v132;
        v99 = v116;
        goto LABEL_73;
      }

      continue;
    }

    break;
  }

LABEL_82:
  sub_1C7551E4C();
  __break(1u);

  __break(1u);
  return result;
}

void sub_1C715EF50(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;
  sub_1C75504FC();
  for (i = 0; v9; i = v12)
  {
    v12 = i;
LABEL_8:
    v13 = __clz(__rbit64(v9)) | (v12 << 6);
    memcpy(__dst, (*(v5 + 48) + 120 * v13), 0x78uLL);
    v14 = *(*(v5 + 56) + 8 * v13);
    sub_1C6FCA6E4(__dst, v16);
    sub_1C75504FC();
    v2 = objc_autoreleasePoolPush();
    sub_1C715FD20(a2, __dst, v15, v14, a1);
    v9 &= v9 - 1;
    sub_1C6FDD548(__dst);

    objc_autoreleasePoolPop(v2);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++i;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  objc_autoreleasePoolPop(v2);
  __break(1u);
}

uint64_t sub_1C715F0B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217288);
  v5 = sub_1C754DF6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C75604F0;
  v10 = v9 + v8;
  v11 = *(v6 + 16);
  v11(v10, a1, v5);
  v11(v10 + v7, a2, v5);
  static StoryGenerationUtilities.dateAttributedQueryString(with:localizedText:)();
  v13 = v12;
  swift_setDeallocating();
  result = sub_1C6FDCAE4();
  *a3 = v13;
  return result;
}

uint64_t static QueryAssetsRetrievalProcessor.generateLocationAttributedStringCombinations(with:assetUUIDs:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v103 = a3;
  v113 = sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v109 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60);
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v102 - v17;
  sub_1C754EE3C();
  sub_1C754EE3C();
  v110 = a2;
  v111 = a1;
  v115 = a1;
  v116 = a2;
  v19 = sub_1C7161490();
  v20 = sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60);
  v107 = v18;
  v21 = sub_1C75505BC();
  v22 = *(v21 + 16);
  if (v22)
  {
    v112 = v20;
    v114 = v19;
    v104 = v12;
    v105 = v15;
    v106 = v10;
    v115 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v23 = v115;
    v24 = (v21 + 56);
    do
    {
      v25 = *(v24 - 3);
      v26 = *(v24 - 2);
      v28 = *(v24 - 1);
      v27 = *v24;
      sub_1C75504FC();
      v29 = MEMORY[0x1CCA5CC40](v25, v26, v28, v27);
      v31 = v30;

      v115 = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        OUTLINED_FUNCTION_15(v32);
        sub_1C6F7ED9C();
        v23 = v115;
      }

      *(v23 + 16) = v33 + 1;
      v34 = v23 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v24 += 4;
      --v22;
    }

    while (v22);

    v15 = v105;
    v10 = v106;
    v12 = v104;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v23 + 16);
  if (v35 <= 1)
  {

    if (*(v103 + 16))
    {
      v39 = static StoryGenerationUtilities.locationAttributedString(with:localizedText:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v40 = OUTLINED_FUNCTION_11_2();
      *(v40 + 16) = xmmword_1C7565670;
      *(v40 + 32) = v39;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1C7564A90;
      *(v40 + 32) = static StoryGenerationUtilities.locationAttributedString(with:localizedText:)();
      *(v40 + 40) = static StoryGenerationUtilities.businessItemAttributedString(with:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215048);
    v37 = OUTLINED_FUNCTION_11_2();
    *(v37 + 16) = xmmword_1C755BAB0;
    *(v37 + 32) = v40;
    goto LABEL_27;
  }

  if (v35 > 0xA)
  {

    sub_1C6F65BE8(0, &qword_1EDD0CE30);
    sub_1C75504FC();
    v36 = sub_1C7073450();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215048);
    v37 = OUTLINED_FUNCTION_11_2();
    *(v37 + 16) = xmmword_1C755BAB0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v38 = OUTLINED_FUNCTION_11_2();
    *(v38 + 16) = xmmword_1C7565670;
    *(v38 + 32) = v36;
    *(v37 + 32) = v38;
LABEL_27:
    v55 = *(v12 + 8);
    v55(v107, v10);
    goto LABEL_58;
  }

  v112 = *(v23 + 16);
  v104 = v12;
  v105 = v15;
  v41 = v110;
  v115 = v111;
  v116 = v110;
  v106 = v10;
  v42 = sub_1C75505CC();
  v43 = *(v42 + 16);
  v108 = v42;
  if (v43)
  {
    v114 = 0;
    v44 = (v109 + 8);
    v45 = v42 + 40;
    while (1)
    {
      v46 = sub_1C755098C();
      v47 = MEMORY[0x1CCA5CC40](v46);
      v49 = v48;

      v115 = v47;
      v116 = v49;
      sub_1C754D7FC();
      sub_1C6FB5E8C();
      v50 = sub_1C755154C();
      v52 = v51;
      (*v44)(v9, v113);

      v114 *= 2;
      if (v50 == 44 && v52 == 0xE100000000000000)
      {
      }

      else
      {
        v54 = sub_1C7551DBC();

        if ((v54 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v114 |= 1uLL;
LABEL_23:
      v45 += 16;
      --v43;
      v41 = v110;
      if (!v43)
      {
        goto LABEL_29;
      }
    }
  }

  v114 = 0;
LABEL_29:

  LOBYTE(v56) = v112 - 1;
  v57 = 1;
  LOBYTE(v58) = v112 + 62;
  if (qword_1EDD0D7A8 != -1)
  {
LABEL_61:
    swift_once();
  }

  v59 = v57 << v56;
  v60 = sub_1C754FF1C();
  v61 = __swift_project_value_buffer(v60, qword_1EDD28D00);
  sub_1C75504FC();
  v56 = sub_1C754FEEC();
  v62 = sub_1C75511BC();

  v63 = os_log_type_enabled(v56, v62);
  v102 = v61;
  if (v63)
  {
    v64 = v41;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v115 = v66;
    *v65 = 136315650;
    *(v65 + 4) = sub_1C6F765A4(v111, v64, &v115);
    *(v65 + 12) = 2048;
    *(v65 + 14) = v114;
    *(v65 + 22) = 2048;
    *(v65 + 24) = v59;
    _os_log_impl(&dword_1C6F5C000, v56, v62, "CommaBitmask value for %s = %ld with maxNumber = %ld", v65, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v66);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v67 = 0;
  v41 = v57 << v58;
  v68 = MEMORY[0x1E69E7CC0];
  v108 = (v23 + 40);
  v109 = v59;
  do
  {
    if (v67 >= v59)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_60;
    }

    if ((v114 & ~v67) == 0)
    {
      v112 = v67 + 1;
      v113 = v68;
      v70 = *(v23 + 16);
      if (v70)
      {
        v71 = v108;
        v72 = MEMORY[0x1E69E7CC0];
        do
        {
          v74 = *(v71 - 1);
          v73 = *v71;
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v72 = v80;
          }

          v58 = *(v72 + 16);
          v75 = *(v72 + 24);
          v76 = v58 + 1;
          if (v58 >= v75 >> 1)
          {
            OUTLINED_FUNCTION_15(v75);
            sub_1C6FB1814();
            v72 = v81;
          }

          *(v72 + 16) = v76;
          v77 = v72 + 16 * v58;
          *(v77 + 32) = v74;
          *(v77 + 40) = v73;
          if ((v67 & v41) != 0)
          {
            v78 = *(v72 + 24);
            if ((v58 + 2) > (v78 >> 1))
            {
              OUTLINED_FUNCTION_15(v78);
              sub_1C6FB1814();
              v72 = v82;
            }

            *(v72 + 16) = v58 + 2;
            v79 = v72 + 16 * v76;
            *(v79 + 32) = 44;
            *(v79 + 40) = 0xE100000000000000;
          }

          v67 *= 2;
          v71 += 2;
          --v70;
        }

        while (v70);
      }

      else
      {
        v72 = MEMORY[0x1E69E7CC0];
      }

      v115 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C7099594(&qword_1EDD0CF58, &unk_1EC217A00);
      v83 = sub_1C75505FC();
      v57 = v84;

      v68 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v68 = v88;
      }

      v59 = v109;
      v86 = *(v68 + 16);
      v85 = *(v68 + 24);
      v56 = v86 + 1;
      if (v86 >= v85 >> 1)
      {
        OUTLINED_FUNCTION_15(v85);
        sub_1C6FB1814();
        v68 = v89;
      }

      *(v68 + 16) = v56;
      v87 = v68 + 16 * v86;
      *(v87 + 32) = v83;
      *(v87 + 40) = v57;
      v69 = v112;
    }

    v67 = v69;
  }

  while (v69 != v59);

  v90 = v110;
  sub_1C75504FC();
  v91 = sub_1C754FEEC();
  v92 = sub_1C75511BC();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *v93 = 134218498;
    *(v93 + 4) = *(v68 + 16);
    *(v93 + 12) = 2080;
    *(v93 + 14) = sub_1C6F765A4(v111, v90, &v115);
    *(v93 + 22) = 2080;
    v94 = sub_1C75504FC();
    v95 = MEMORY[0x1CCA5D090](v94, MEMORY[0x1E69E6158]);
    v97 = v96;

    v98 = sub_1C6F765A4(v95, v97, &v115);

    *(v93 + 24) = v98;
    _os_log_impl(&dword_1C6F5C000, v91, v92, "There are %ld for %s substring combinations = %s", v93, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v15 = v105;
  v10 = v106;
  MEMORY[0x1EEE9AC00](v99);
  v100 = v103;
  *(&v102 - 2) = v15;
  *(&v102 - 1) = v100;
  sub_1C75504FC();
  v37 = sub_1C715A020(sub_1C71614E4, (&v102 - 4), v68);
  v55 = *(v104 + 8);
  v55(v107, v10);
  swift_bridgeObjectRelease_n();
LABEL_58:
  v55(v15, v10);
  return v37;
}

void sub_1C715FD20(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v9 = sub_1C6FC2A70();
  if ((v10 & 1) == 0)
  {
    return;
  }

  v11 = *(*(a1 + 56) + 8 * v9);
  v12 = *(v11 + 16);
  if (!v12)
  {
    return;
  }

  v124 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  memcpy((inited + 32), a2, 0x78uLL);
  sub_1C75504FC();
  sub_1C6FCA6E4(a2, v139);
  static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
  v15 = v14;
  swift_setDeallocating();
  sub_1C6FDC98C();
  v16 = *(a3 + 8);
  v17 = *a3;

  v18 = [v17 librarySpecificFetchOptions];
  v134 = v16;
  [v18 setSharingFilter_];

  log = v17;

  sub_1C6F65BE8(0, &qword_1EDD100F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = sub_1C706D154(v15);
  v21 = sub_1C734A678(v20, ObjCClassFromMetadata);
  if (!v21 || (v22 = v21, v132 = v11, v23 = objc_opt_self(), sub_1C71CD85C(v22), v24 = MEMORY[0x1E69E6158], v25 = sub_1C7550B3C(), , v26 = [v23 fetchPersonsWithLocalIdentifiers:v25 options:v18], v25, v27 = objc_msgSend(v26, sel_fetchedObjects), v26, !v27))
  {

LABEL_83:

    return;
  }

  v28 = sub_1C7550B5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C755BA90;
  *(v29 + 56) = v24;
  v30 = sub_1C6F6D524();
  strcpy((v29 + 32), "detectedFaces");
  *(v29 + 46) = -4864;
  *(v29 + 96) = v24;
  *(v29 + 104) = v30;
  v122 = v30;
  *(v29 + 64) = v30;
  strcpy((v29 + 72), "personForFace");
  v127 = v29;
  *(v29 + 86) = -4864;
  v31 = sub_1C6FB6304();
  v137 = v18;
  if (!v31)
  {

    v37 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v127[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CD0);
    v38 = sub_1C7099594(&qword_1EC217FC8, &unk_1EC218CD0);
    v127[14] = v37;
    v127[22] = v24;
    v127[23] = v122;
    v127[18] = v38;
    v127[19] = 0x65707954656761;
    v127[20] = 0xE700000000000000;
    v39 = *(v132 + 16);
    v40 = MEMORY[0x1E69E7CC0];
    if (v39)
    {
      v41 = (v132 + 32);
      v42 = MEMORY[0x1E69E7CC0];
      do
      {
        v44 = *v41++;
        v43 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB38CC();
          v42 = v46;
        }

        v45 = *(v42 + 16);
        if (v45 >= *(v42 + 24) >> 1)
        {
          sub_1C6FB38CC();
          v42 = v47;
        }

        *(v42 + 16) = v45 + 1;
        *(v42 + 2 * v45 + 32) = v43;
        --v39;
      }

      while (v39);
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    v127[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300);
    v127[28] = sub_1C7099594(&qword_1EDD0CF08, &qword_1EC219300);
    v127[24] = v42;
    v48 = sub_1C755112C();
    v49 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(log, v134, 0);
    v139[0] = v40;
    v50 = a4 + 64;
    v51 = 1 << *(a4 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(a4 + 64);
    v54 = (v51 + 63) >> 6;
    sub_1C75504FC();
    v55 = 0;
    if (v53)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
        goto LABEL_86;
      }

      if (v56 >= v54)
      {
        break;
      }

      v53 = *(v50 + 8 * v56);
      ++v55;
      if (v53)
      {
        v55 = v56;
        do
        {
LABEL_33:
          v53 &= v53 - 1;
          v57 = sub_1C75504FC();
          sub_1C6FD25FC(v57);
        }

        while (v53);
        continue;
      }
    }

    v58 = sub_1C706D154(v139[0]);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1C75604F0;
    *(v59 + 56) = MEMORY[0x1E69E6158];
    *(v59 + 64) = v122;
    *(v59 + 32) = 1684632949;
    *(v59 + 40) = 0xE400000000000000;
    *(v59 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    *(v59 + 104) = sub_1C7099594(&qword_1EDD0CEE0, &unk_1EC215BF0);
    *(v59 + 72) = v58;
    v60 = sub_1C755112C();
    sub_1C6F65BE8(0, &qword_1EDD0FA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1C7564A90;
    *(v61 + 32) = v48;
    *(v61 + 40) = v60;
    v121 = v48;
    v120 = v60;
    v62 = sub_1C6F6E5C4();
    [v49 setInternalPredicate_];

    v123 = v49;
    v63 = [objc_opt_self() fetchAssetsWithOptions_];
    v64 = [v63 fetchedObjects];

    if (v64)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FA70);
      v65 = sub_1C7550B5C();

      v66 = sub_1C6FB6304();
      v67 = 0;
      v135 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v18 = v137;
        if (v66 == v67)
        {
          break;
        }

        if ((v65 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x1CCA5DDD0](v67, v65);
        }

        else
        {
          if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v68 = *(v65 + 8 * v67 + 32);
        }

        v69 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_87;
        }

        v70 = v68;
        v71 = [v70 uuid];
        if (v71)
        {
          v72 = v71;
          v73 = sub_1C755068C();
          loga = v74;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v135 = v77;
          }

          v75 = *(v135 + 16);
          if (v75 >= *(v135 + 24) >> 1)
          {
            sub_1C6FB1814();
            v135 = v78;
          }

          *(v135 + 16) = v75 + 1;
          v76 = v135 + 16 * v75;
          *(v76 + 32) = v73;
          *(v76 + 40) = loga;
          v67 = v69;
        }

        else
        {

          ++v67;
        }
      }

      v79 = v135;
    }

    else
    {
      v79 = MEMORY[0x1E69E7CC0];
      v18 = v137;
    }

    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C75504FC();
    sub_1C75504FC();
    v80 = sub_1C754FEEC();
    v81 = sub_1C75511BC();

    v136 = v79;
    if (os_log_type_enabled(v80, v81))
    {
      v125 = v81;
      logb = v80;
      v82 = swift_slowAlloc();
      v83 = 32;
      v119 = swift_slowAlloc();
      v139[0] = v119;
      *v82 = 134218242;
      *(v82 + 4) = *(v79 + 16);

      *(v82 + 12) = 2080;
      v140 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v84 = 0x746553746F4ELL;
      v85 = v140;
      v86 = v132;
      do
      {
        v87 = 0xE400000000000000;
        v88 = 2036490562;
        switch(*(v86 + v83))
        {
          case 1:
            break;
          case 2:
            v87 = 0xE500000000000000;
            v88 = 0x646C696843;
            break;
          case 3:
            v88 = 0x644120676E756F59;
            v87 = 0xEB00000000746C75;
            break;
          case 4:
            v87 = 0xE600000000000000;
            v88 = 0x726F696E6553;
            break;
          case 5:
            v87 = 0xE500000000000000;
            v88 = 0x746C756441;
            break;
          default:
            v87 = 0xE600000000000000;
            v88 = v84;
            break;
        }

        v140 = v85;
        v89 = *(v85 + 16);
        if (v89 >= *(v85 + 24) >> 1)
        {
          v91 = v84;
          sub_1C6F7ED9C();
          v84 = v91;
          v86 = v132;
          v85 = v140;
        }

        *(v85 + 16) = v89 + 1;
        v90 = v85 + 16 * v89;
        *(v90 + 32) = v88;
        *(v90 + 40) = v87;
        v83 += 2;
        --v12;
      }

      while (v12);

      v92 = MEMORY[0x1CCA5D090](v85, MEMORY[0x1E69E6158]);
      v94 = v93;

      v95 = sub_1C6F765A4(v92, v94, v139);

      *(v82 + 14) = v95;
      _os_log_impl(&dword_1C6F5C000, logb, v125, "There are %ld person assets based on the age types:%s", v82, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x1CCA5F8E0](v119, -1, -1);
      MEMORY[0x1CCA5F8E0](v82, -1, -1);

      v50 = a4 + 64;
      v96 = v136;
      v18 = v137;
    }

    else
    {

      v96 = v79;
    }

    v97 = 1 << *(a4 + 32);
    v98 = -1;
    if (v97 < 64)
    {
      v98 = ~(-1 << v97);
    }

    v99 = v98 & *(a4 + 64);
    v100 = (v97 + 63) >> 6;
    sub_1C75504FC();
    v101 = 0;
    v102 = MEMORY[0x1E69E7CC8];
    v126 = v100;
    if (v99)
    {
LABEL_72:
      do
      {
        v104 = __clz(__rbit64(v99)) | (v101 << 6);
        v105 = (*(a4 + 48) + 16 * v104);
        v107 = *v105;
        v106 = v105[1];
        v108 = *(*(a4 + 56) + 8 * v104);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        logc = sub_1C72B8CBC(v96, v108);
        swift_isUniquelyReferenced_nonNull_native();
        v139[0] = v102;
        v133 = v107;
        v109 = sub_1C6F78124(v107, v106);
        if (__OFADD__(v102[2], (v110 & 1) == 0))
        {
          goto LABEL_89;
        }

        v111 = v109;
        v112 = v110;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
        if (sub_1C7551A2C())
        {
          v113 = sub_1C6F78124(v133, v106);
          if ((v112 & 1) != (v114 & 1))
          {
            goto LABEL_92;
          }

          v111 = v113;
        }

        if (v112)
        {

          v102 = v139[0];
          *(*(v139[0] + 56) + 8 * v111) = logc;
        }

        else
        {
          v102 = v139[0];
          *(v139[0] + 8 * (v111 >> 6) + 64) |= 1 << v111;
          v115 = (v102[6] + 16 * v111);
          *v115 = v133;
          v115[1] = v106;
          *(v102[7] + 8 * v111) = logc;

          v116 = v102[2];
          v117 = __OFADD__(v116, 1);
          v118 = v116 + 1;
          if (v117)
          {
            goto LABEL_90;
          }

          v102[2] = v118;
        }

        v50 = a4 + 64;
        v96 = v136;
        v18 = v137;
        v100 = v126;
        v99 &= v99 - 1;
      }

      while (v99);
    }

    while (1)
    {
      v103 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      if (v103 >= v100)
      {

        swift_isUniquelyReferenced_nonNull_native();
        v139[0] = *v124;
        sub_1C6FC7AB4();
        *v124 = v139[0];

        goto LABEL_83;
      }

      v99 = *(v50 + 8 * v103);
      ++v101;
      if (v99)
      {
        v101 = v103;
        goto LABEL_72;
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
    goto LABEL_91;
  }

  v32 = v31;
  v139[0] = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  if ((v32 & 0x8000000000000000) == 0)
  {
    v33 = 0;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1CCA5DDD0](v33, v28);
      }

      else
      {
        v34 = *(v28 + 8 * v33 + 32);
      }

      v35 = v34;
      ++v33;
      v36 = [v34 objectID];

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    while (v32 != v33);

    v37 = v139[0];
    v24 = MEMORY[0x1E69E6158];
    goto LABEL_16;
  }

LABEL_91:
  __break(1u);
LABEL_92:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C7160BC0@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60);
  sub_1C7161490();
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60);
  result = sub_1C75505BC();
  v4 = 0;
  v40 = *(result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v41 = result;
  v6 = (result + 56);
  for (i = a1; ; a1 = i)
  {
    if (v40 == v4)
    {

      *a2 = v5;
      return result;
    }

    if (v4 >= *(v41 + 16))
    {
      break;
    }

    v43 = v4;
    v7 = *(v6 - 1);
    v8 = *v6;
    v10 = *(v6 - 3);
    v9 = *(v6 - 2);
    v42 = v6;
    sub_1C75504FC();
    v11 = MEMORY[0x1CCA5CC40](v10, v9, v7, v8);
    v13 = v12;
    if (*(a1 + 16))
    {
      sub_1C6F65BE8(0, &qword_1EDD0CE30);
      sub_1C75504FC();
      v14 = sub_1C7073450();
      v15 = [v14 length];
      v16 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      sub_1C75504FC();
      sub_1C75504FC();
      v17 = sub_1C71C8E10();
      v18 = [objc_opt_self() updateQueryString:v14 withSelectedSuggestion:v17 inRange:0 additionalAttributes:{v15, 0}];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C7565670;
      *(v19 + 32) = v18;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C7564A90;
      sub_1C6F65BE8(0, &qword_1EDD0CE30);
      sub_1C75504FC();
      v20 = sub_1C7073450();
      v21 = [v20 length];
      v22 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      sub_1C75504FC();
      v23 = sub_1C71C8E10();
      v24 = [objc_opt_self() updateQueryString:v20 withSelectedSuggestion:v23 inRange:0 additionalAttributes:{v21, 0}];

      *(v19 + 32) = v24;
      v25 = objc_allocWithZone(MEMORY[0x1E69BE460]);
      sub_1C75504FC();
      v26 = sub_1C71C8EB8(v11, v13, 0, 0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1C7565670;
      *(v27 + 32) = v26;
      v28 = v26;
      static StoryGenerationUtilities.genericEntityAttributedString(with:allowedIndexCategories:localizedText:)();
      v30 = v29;

      *(v19 + 40) = v30;
    }

    v31 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v5 >> 62;
    if (v5 >> 62)
    {
      result = sub_1C75516BC();
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = result + v31;
    if (__OFADD__(result, v31))
    {
      goto LABEL_27;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v32)
      {
        goto LABEL_20;
      }

      v34 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v33 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        if (!v31)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }
    }

    else if (v32)
    {
LABEL_20:
      sub_1C75516BC();
    }

    result = sub_1C75518CC();
    v5 = result;
    v34 = result & 0xFFFFFFFFFFFFFF8;
    if (!v31)
    {
LABEL_22:

      goto LABEL_23;
    }

LABEL_14:
    if ((*(v34 + 24) >> 1) - *(v34 + 16) < v31)
    {
      goto LABEL_28;
    }

    sub_1C6F65BE8(0, &qword_1EDD0CE30);
    swift_arrayInitWithCopy();

    if (v31 > 0)
    {
      v35 = *(v34 + 16);
      v36 = __OFADD__(v35, v31);
      v37 = v35 + v31;
      if (v36)
      {
        goto LABEL_29;
      }

      *(v34 + 16) = v37;
    }

LABEL_23:
    v6 = v42 + 4;
    v4 = v43 + 1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t *sub_1C71610D4(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_1C71613EC(v10, v6, v4, a2);
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v6, v7);
  sub_1C7161244(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

void sub_1C7161244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (2)
  {
    v24 = v6;
    do
    {
      if (!v11)
      {
        v14 = v7;
        while (1)
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v7 >= v12)
          {
            goto LABEL_20;
          }

          v15 = *(v8 + 8 * v7);
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v11 = (v15 - 1) & v15;
            goto LABEL_12;
          }
        }

        __break(1u);
        return;
      }

      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v7 << 6);
      memcpy(__dst, (*(a3 + 48) + 120 * v16), 0x78uLL);
      v17 = *a4;
      if (!*(*a4 + 16))
      {
        break;
      }

      sub_1C6FCA6E4(__dst, v22);
      sub_1C75504FC();
      v18 = sub_1C6FC2A70();
      if ((v19 & 1) == 0)
      {

        sub_1C6FDD548(__dst);
        break;
      }

      v20 = *(*(*(v17 + 56) + 8 * v18) + 16);

      sub_1C6FDD548(__dst);
    }

    while (v20);
    *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v6 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_20:
  sub_1C74846E0();
}

void *sub_1C71613EC(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

    sub_1C7161244(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_1C7161490()
{
  result = qword_1EDD06CA0;
  if (!qword_1EDD06CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06CA0);
  }

  return result;
}

uint64_t sub_1C7161504(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C7161564(uint64_t a1, uint64_t a2)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  (*(*(TokenSuggestion - 8) + 16))(a2, a1, TokenSuggestion);
  return a2;
}

uint64_t sub_1C71615C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C716167C()
{
  if (OUTLINED_FUNCTION_57_11())
  {
    v3 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v3);
    v4 = OUTLINED_FUNCTION_68_13();
    sub_1C71A320C(v4);
    os_unfair_lock_unlock(v1);
  }

  sub_1C70552E0(v2);

  return sub_1C716A018(v0);
}

uint64_t sub_1C71616E4(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1C71656D8())
  {
    v10 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v10);
    sub_1C71A1EE8(&a1[2], a2, a3, a4, a5);
    os_unfair_lock_unlock(a1);
  }
}

uint64_t sub_1C7161780(uint64_t a1)
{
  if (sub_1C71656D8())
  {
    v2 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v2);
    sub_1C75504FC();
    v3 = OUTLINED_FUNCTION_295();
    v4 = sub_1C71692A4(v3);

    *(a1 + 192) = v4;
    os_unfair_lock_unlock(a1);
  }
}

uint64_t sub_1C7161818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (OUTLINED_FUNCTION_98_7())
  {
    v6 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v6);
    sub_1C75504FC();
    sub_1C75504FC();
    v7 = OUTLINED_FUNCTION_216();
    sub_1C716A74C(v7);
    *(v4 + 144) = v3;
    *(v4 + 152) = a3;
    os_unfair_lock_unlock(v4);
  }
}

uint64_t sub_1C71618A4()
{
  if (OUTLINED_FUNCTION_57_11())
  {
    v3 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v3);
    sub_1C75504FC();

    *(v1 + 136) = v2;
    sub_1C75504FC();

    *(v1 + 160) = v0;
    os_unfair_lock_unlock(v1);
  }
}

uint64_t sub_1C7161934()
{
  if (OUTLINED_FUNCTION_98_7())
  {
    v2 = v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
    v3 = FreeformStoryCompletionSync.description.getter();
    v5 = v4;

    *(v2 + 168) = v3;
    *(v2 + 176) = v5;
    os_unfair_lock_unlock(v2);
  }

  return sub_1C6FB5454(v0);
}

uint64_t sub_1C71619C4()
{
  if (OUTLINED_FUNCTION_98_7())
  {
    v2 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v2);
    sub_1C75504FC();

    *(v1 + 232) = v0;
    os_unfair_lock_unlock(v1);
  }
}

uint64_t sub_1C7161A34()
{
  if (OUTLINED_FUNCTION_98_7())
  {
    v2 = v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
    v3 = memcpy(v6, v0, sizeof(v6));
    v4 = ExtendedTokenCollection.allTokens.getter(v3);

    *(v2 + 112) = v4;
    os_unfair_lock_unlock(v2);
  }

  return sub_1C7027A58(v0);
}

uint64_t sub_1C7161AC0()
{
  if (OUTLINED_FUNCTION_57_11())
  {
    v2 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v2);
    v3 = OUTLINED_FUNCTION_68_13();
    sub_1C71EC7E4(v3, v4);
    os_unfair_lock_unlock(v0);
  }
}

uint64_t sub_1C7161B24()
{
  if (OUTLINED_FUNCTION_57_11())
  {
    v2 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v2);
    v3 = OUTLINED_FUNCTION_68_13();
    sub_1C74DA0BC(v3, v4, v5);
    os_unfair_lock_unlock(v0);
  }

  sub_1C7169EEC(v1);
}

void StoryGenerationDiagnosticContext.addToGenerationSummary(block:)(void (*a1)(os_unfair_lock_s *))
{
  if (sub_1C71656D8())
  {
    v3 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
    a1(v3 + 2);

    os_unfair_lock_unlock(v3);
  }
}

void sub_1C7161C08()
{
  OUTLINED_FUNCTION_9_39();
  if (sub_1C7166780())
  {
    v3 = v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename;
    os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename));
    sub_1C75504FC();
    sub_1C6FEB1B0(v2, v1);
    swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v3 + 8);
    OUTLINED_FUNCTION_77_8();
    *(v3 + 8) = v4;

    os_unfair_lock_unlock(v3);
  }
}

void sub_1C7161CDC(uint64_t a1, uint64_t a2)
{
  sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  if (sub_1C71656D8())
  {
    v6 = (v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents);
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents));
    v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1C7069CE4(0xD000000000000014, 0x80000001C75A12D0, v7);
    sub_1C754DF5C();
    v8 = sub_1C754DECC();
    v9 = OUTLINED_FUNCTION_117_0();
    v10(v9);
    v11 = [v7 stringFromDate_];

    v12 = sub_1C755068C();
    v14 = v13;

    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
    MEMORY[0x1CCA5CD70](a1, a2);
    MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
    MEMORY[0x1CCA5CD70](v12, v14);

    os_unfair_lock_unlock(v6);
  }
}

uint64_t sub_1C71620D8()
{
  OUTLINED_FUNCTION_9_39();
  result = sub_1C71656D8();
  if (result)
  {
    memcpy(__dst, v0, sizeof(__dst));
    v22[3] = &type metadata for FreeformStoryKeyAssetElector.Diagnostics;
    v22[4] = sub_1C716A06C();
    v22[0] = swift_allocObject();
    memcpy((v22[0] + 16), v0, 0x68uLL);
    __swift_project_boxed_opaque_existential_1(v22, &type metadata for FreeformStoryKeyAssetElector.Diagnostics);
    sub_1C716A0C0(__dst, v21);
    sub_1C754DBAC();
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_99_7(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
    sub_1C75504FC();
    v2 = OUTLINED_FUNCTION_55();
    sub_1C6FEB1B0(v2, v3);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_59();
    OUTLINED_FUNCTION_55();
    v4 = OUTLINED_FUNCTION_77_8();
    OUTLINED_FUNCTION_23_21(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16, v17, v18, v19, v20, v21[0]);

    os_unfair_lock_unlock(0);
    v12 = OUTLINED_FUNCTION_55();
    sub_1C6FC1640(v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return result;
}

void sub_1C7162388()
{
  if (OUTLINED_FUNCTION_8_31())
  {
    v49[3] = &type metadata for FreeformStoryCuratedChapter;
    v4 = sub_1C71413A0();
    v49[4] = v4;
    v49[0] = swift_allocObject();
    memcpy((v49[0] + 16), v0, 0x80uLL);
    OUTLINED_FUNCTION_50_13(v49);
    v5 = OUTLINED_FUNCTION_67_10();
    sub_1C6FB7BB8(v5, v6);
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_60_10();
    if (v4)
    {
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v7 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v7, qword_1EDD07758);
      sub_1C6FB5E28(v49, v48);
      sub_1C75504FC();
      v8 = v4;
      v9 = sub_1C754FEEC();
      sub_1C755119C();
      OUTLINED_FUNCTION_66_14();

      if (OUTLINED_FUNCTION_65_12())
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_24_3();
        v46 = OUTLINED_FUNCTION_25_15();
        v14 = OUTLINED_FUNCTION_51_12(4.8152e-34, v46, v10, v11, v12, v13);
        OUTLINED_FUNCTION_11_31(v14);
        v15 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_2_54(v15);
        sub_1C6FB5E28(v16, v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218048);
        v17 = OUTLINED_FUNCTION_83_4();
        OUTLINED_FUNCTION_32_12(v17, v18, v19, v20, v21, v22, v23);
        v24 = OUTLINED_FUNCTION_216();
        sub_1C6F765A4(v24, v25, v26);
        OUTLINED_FUNCTION_64_8();
        *(v2 + 24) = v1;
        OUTLINED_FUNCTION_10_38(&dword_1C6F5C000, v27, v28, "Failed to encode plist to XML file '%s': %@\nplist: %s");
        sub_1C6FD7FC8(v3, &qword_1EC215190);
        v29 = OUTLINED_FUNCTION_5_44();
        MEMORY[0x1CCA5F8E0](v29);
        OUTLINED_FUNCTION_21_25();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v48);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_71_6(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
      sub_1C75504FC();
      v32 = OUTLINED_FUNCTION_98_1();
      sub_1C6FEB1B0(v32, v33);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_59();
      v34 = OUTLINED_FUNCTION_13_35();
      OUTLINED_FUNCTION_23_21(v34, v35, v36, v37, v38, v39, v40, v41, v45[0], v45[1], v45[2], v45[3], v45[4], v46, v47, v48[0]);

      os_unfair_lock_unlock(0);
      v42 = OUTLINED_FUNCTION_98_1();
      sub_1C6FC1640(v42, v43);
    }

    v44 = OUTLINED_FUNCTION_76_7(v49);
    sub_1C6FBC664(v44);
    OUTLINED_FUNCTION_72_9();
  }

  else
  {
    OUTLINED_FUNCTION_72_9();

    sub_1C6FBC664(v30);
  }
}

void sub_1C7163020()
{
  if (OUTLINED_FUNCTION_8_31())
  {
    v52[3] = &type metadata for FreeformStoryCompletionSync;
    v4 = sub_1C70E1188();
    v52[4] = v4;
    v5 = swift_allocObject();
    v52[0] = v5;
    v6 = v0[1];
    v5[1] = *v0;
    v5[2] = v6;
    v7 = v0[3];
    v5[3] = v0[2];
    v5[4] = v7;
    OUTLINED_FUNCTION_50_13(v52);
    v8 = OUTLINED_FUNCTION_67_10();
    sub_1C6FDE928(v8, v9);
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_60_10();
    if (v4)
    {
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v10 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v10, qword_1EDD07758);
      sub_1C6FB5E28(v52, v51);
      sub_1C75504FC();
      v11 = v4;
      v12 = sub_1C754FEEC();
      sub_1C755119C();
      OUTLINED_FUNCTION_66_14();

      if (OUTLINED_FUNCTION_65_12())
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_24_3();
        v49 = OUTLINED_FUNCTION_25_15();
        v17 = OUTLINED_FUNCTION_51_12(4.8152e-34, v49, v13, v14, v15, v16);
        OUTLINED_FUNCTION_11_31(v17);
        v18 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_2_54(v18);
        sub_1C6FB5E28(v19, v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218048);
        v20 = OUTLINED_FUNCTION_83_4();
        OUTLINED_FUNCTION_32_12(v20, v21, v22, v23, v24, v25, v26);
        v27 = OUTLINED_FUNCTION_216();
        sub_1C6F765A4(v27, v28, v29);
        OUTLINED_FUNCTION_64_8();
        *(v2 + 24) = v1;
        OUTLINED_FUNCTION_10_38(&dword_1C6F5C000, v30, v31, "Failed to encode plist to XML file '%s': %@\nplist: %s");
        sub_1C6FD7FC8(v3, &qword_1EC215190);
        v32 = OUTLINED_FUNCTION_5_44();
        MEMORY[0x1CCA5F8E0](v32);
        OUTLINED_FUNCTION_21_25();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v51);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_71_6(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
      sub_1C75504FC();
      v35 = OUTLINED_FUNCTION_98_1();
      sub_1C6FEB1B0(v35, v36);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_59();
      v37 = OUTLINED_FUNCTION_13_35();
      OUTLINED_FUNCTION_23_21(v37, v38, v39, v40, v41, v42, v43, v44, v48[0], v48[1], v48[2], v48[3], v48[4], v49, v50, v51[0]);

      os_unfair_lock_unlock(0);
      v45 = OUTLINED_FUNCTION_98_1();
      sub_1C6FC1640(v45, v46);
    }

    v47 = OUTLINED_FUNCTION_76_7(v52);
    sub_1C6FB5454(v47);
    OUTLINED_FUNCTION_70_11();
  }

  else
  {
    OUTLINED_FUNCTION_70_11();

    sub_1C6FB5454(v33);
  }
}

uint64_t sub_1C71632A4()
{
  if (OUTLINED_FUNCTION_8_31())
  {
    v30[3] = &type metadata for AssetCurationOutlierDiagnostics;
    v3 = sub_1C716A78C();
    v30[4] = v3;
    v30[0] = swift_allocObject();
    memcpy((v30[0] + 16), v0, 0x58uLL);
    OUTLINED_FUNCTION_50_13(v30);
    sub_1C70DEB84(v0, v29);
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_60_10();
    if (v3)
    {
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v4 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v4, qword_1EDD07758);
      sub_1C6FB5E28(v30, v29);
      sub_1C75504FC();
      v5 = v3;
      v6 = sub_1C754FEEC();
      sub_1C755119C();
      OUTLINED_FUNCTION_66_14();

      if (OUTLINED_FUNCTION_65_12())
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_25_15();
        OUTLINED_FUNCTION_59_11();
        v13 = OUTLINED_FUNCTION_15_33(4.8152e-34, v7, v8, v9, v10, v11, v12);
        OUTLINED_FUNCTION_11_31(v13);
        v14 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_4_44(v14);
        sub_1C6FB5E28(v29, v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218048);
        v15 = OUTLINED_FUNCTION_56_10();
        __swift_destroy_boxed_opaque_existential_1(v29);
        v16 = OUTLINED_FUNCTION_216();
        sub_1C6F765A4(v16, v17, v18);
        OUTLINED_FUNCTION_64_8();
        *(v1 + 24) = v15;
        OUTLINED_FUNCTION_10_38(&dword_1C6F5C000, v19, v20, "Failed to encode plist to XML file '%s': %@\nplist: %s");
        sub_1C6FD7FC8(v2, &qword_1EC215190);
        v21 = OUTLINED_FUNCTION_5_44();
        MEMORY[0x1CCA5F8E0](v21);
        OUTLINED_FUNCTION_21_25();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v29);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_71_6(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
      sub_1C75504FC();
      v23 = OUTLINED_FUNCTION_98_1();
      sub_1C6FEB1B0(v23, v24);
      swift_isUniquelyReferenced_nonNull_native();
      v29[0] = MEMORY[8];
      OUTLINED_FUNCTION_13_35();
      MEMORY[8] = v29[0];

      os_unfair_lock_unlock(0);
      v25 = OUTLINED_FUNCTION_98_1();
      sub_1C6FC1640(v25, v26);
    }

    v27 = OUTLINED_FUNCTION_76_7(v30);
    return sub_1C70DE848(v27);
  }

  else
  {

    return sub_1C70DE848(v0);
  }
}

void sub_1C716382C()
{
  if (OUTLINED_FUNCTION_8_31())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B8);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1C755BAB0;
    memcpy((v1 + 32), v0, 0x80uLL);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216560);
    v29 = sub_1C7169F94();
    v27[0] = v1;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v2 = OUTLINED_FUNCTION_67_10();
    sub_1C6FB7BB8(v2, v3);
    sub_1C754DBAC();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_71_6(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
    sub_1C75504FC();
    v6 = OUTLINED_FUNCTION_98_1();
    sub_1C6FEB1B0(v6, v7);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_59();
    v8 = OUTLINED_FUNCTION_13_35();
    OUTLINED_FUNCTION_23_21(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26);

    os_unfair_lock_unlock(0);
    v16 = OUTLINED_FUNCTION_98_1();
    sub_1C6FC1640(v16, v17);
    v18 = OUTLINED_FUNCTION_76_7(v27);
    sub_1C6FBC664(v18);
    OUTLINED_FUNCTION_72_9();
  }

  else
  {
    OUTLINED_FUNCTION_72_9();

    sub_1C6FBC664(v4);
  }
}

uint64_t sub_1C7163AF0()
{
  OUTLINED_FUNCTION_9_39();
  result = sub_1C71656D8();
  if (result)
  {
    swift_beginAccess();
    v3 = *v0;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217EC8);
    v25[3] = v4;
    v25[4] = sub_1C716A350();
    v25[0] = v3;
    __swift_project_boxed_opaque_existential_1(v25, v4);
    sub_1C75504FC();
    OUTLINED_FUNCTION_96_6();
    if (v4)
    {
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v5 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v5, qword_1EDD07758);
      sub_1C6FB5E28(v25, v24);
      sub_1C75504FC();
      v6 = v4;
      v7 = sub_1C754FEEC();
      sub_1C755119C();
      OUTLINED_FUNCTION_79_9();

      if (OUTLINED_FUNCTION_78_9())
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_163_0();
        v23 = OUTLINED_FUNCTION_33_17();
        *v1 = 136315650;
        v8 = OUTLINED_FUNCTION_295();
        v11 = sub_1C6F765A4(v8, v9, v10);
        OUTLINED_FUNCTION_17_34(v11);
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v1 + 14) = v12;
        *v3 = v12;
        *(v1 + 22) = 2080;
        sub_1C6FB5E28(v24, &v22);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218048);
        v13 = OUTLINED_FUNCTION_83_4();
        v15 = v14;
        __swift_destroy_boxed_opaque_existential_1(v24);
        sub_1C6F765A4(v13, v15, &v23);
        OUTLINED_FUNCTION_80_7();
        *(v1 + 24) = v13;
        OUTLINED_FUNCTION_16_25(&dword_1C6F5C000, v16, v17, "Failed to encode plist to XML file '%s': %@\nplist: %s");
        sub_1C6FD7FC8(v3, &qword_1EC215190);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_40_5();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v24);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_99_7(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
      sub_1C75504FC();
      v18 = OUTLINED_FUNCTION_55();
      sub_1C6FEB1B0(v18, v19);
      swift_isUniquelyReferenced_nonNull_native();
      v24[0] = MEMORY[8];
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_77_8();
      MEMORY[8] = v24[0];

      os_unfair_lock_unlock(0);
      v20 = OUTLINED_FUNCTION_55();
      sub_1C6FC1640(v20, v21);
    }

    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return result;
}

void sub_1C7163DA4()
{
  if (OUTLINED_FUNCTION_8_31())
  {
    v33[3] = &type metadata for Hastings.CurationOptions;
    v3 = sub_1C716A2FC();
    v33[4] = v3;
    v4 = swift_allocObject();
    v33[0] = v4;
    v5 = *(v0 + 16);
    *(v4 + 16) = *v0;
    *(v4 + 32) = v5;
    *(v4 + 48) = *(v0 + 32);
    *(v4 + 62) = *(v0 + 46);
    OUTLINED_FUNCTION_50_13(v33);
    sub_1C7035CB0(v0, v32);
    OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_60_10();
    if (v3)
    {
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v6 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v6, qword_1EDD07758);
      sub_1C6FB5E28(v33, v32);
      sub_1C75504FC();
      v7 = v3;
      v8 = sub_1C754FEEC();
      sub_1C755119C();
      OUTLINED_FUNCTION_66_14();

      if (OUTLINED_FUNCTION_65_12())
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_25_15();
        OUTLINED_FUNCTION_59_11();
        v15 = OUTLINED_FUNCTION_15_33(4.8152e-34, v9, v10, v11, v12, v13, v14);
        OUTLINED_FUNCTION_11_31(v15);
        v16 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_4_44(v16);
        sub_1C6FB5E28(v32, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218048);
        v17 = OUTLINED_FUNCTION_56_10();
        __swift_destroy_boxed_opaque_existential_1(v32);
        v18 = OUTLINED_FUNCTION_216();
        sub_1C6F765A4(v18, v19, v20);
        OUTLINED_FUNCTION_64_8();
        *(v1 + 24) = v17;
        OUTLINED_FUNCTION_10_38(&dword_1C6F5C000, v21, v22, "Failed to encode plist to XML file '%s': %@\nplist: %s");
        sub_1C6FD7FC8(v2, &qword_1EC215190);
        v23 = OUTLINED_FUNCTION_5_44();
        MEMORY[0x1CCA5F8E0](v23);
        OUTLINED_FUNCTION_21_25();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v32);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_71_6(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
      sub_1C75504FC();
      v26 = OUTLINED_FUNCTION_98_1();
      sub_1C6FEB1B0(v26, v27);
      swift_isUniquelyReferenced_nonNull_native();
      v32[0] = MEMORY[8];
      OUTLINED_FUNCTION_13_35();
      MEMORY[8] = v32[0];

      os_unfair_lock_unlock(0);
      v28 = OUTLINED_FUNCTION_98_1();
      sub_1C6FC1640(v28, v29);
    }

    v30 = OUTLINED_FUNCTION_76_7(v33);
    sub_1C714E318(v30);
    OUTLINED_FUNCTION_70_11();
  }

  else
  {
    OUTLINED_FUNCTION_70_11();

    sub_1C714E318(v24);
  }
}

void StoryGenerationDiagnosticContext.generationStage.setter(char *a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__generationStage;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__generationStage));
  *(v3 + 4) = v2;

  os_unfair_lock_unlock(v3);
}

id sub_1C7164AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EDD07750 != -1)
  {
LABEL_44:
    OUTLINED_FUNCTION_0_76();
    swift_once();
  }

  v11 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v11, qword_1EDD07758);
  sub_1C75504FC();

  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v12 = sub_1C754FEEC();
  sub_1C75511BC();

  v13 = OUTLINED_FUNCTION_94_9();
  v57 = a1;
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_98();
    v15 = swift_slowAlloc();
    v59[0] = OUTLINED_FUNCTION_49_1();
    *v15 = 136315650;
    v16 = a5;
    if (!a5)
    {
      sub_1C75504FC();
      a4 = a2;
      v16 = a3;
    }

    sub_1C75504FC();
    v17 = sub_1C6F765A4(a4, v16, v59);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2048;
    v18 = *(a1 + 16);

    *(v15 + 14) = v18;

    *(v15 + 22) = 2080;
    if (*(v6 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_debugFolder))
    {
      v19 = 0xD000000000000019;
    }

    else
    {
      v19 = 0x206B736964206F74;
    }

    if (*(v6 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_debugFolder))
    {
      v20 = 0x80000001C75A1270;
    }

    else
    {
      v20 = 0xEC000000796C6E6FLL;
    }

    v21 = sub_1C6F765A4(v19, v20, v59);

    *(v15 + 24) = v21;
    OUTLINED_FUNCTION_92_9();
    _os_log_impl(v22, v23, v24, v25, v15, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v56 = v6;
  a5 = StoryGenerationDiagnosticContext.debugAlbumInfo.getter();
  a4 = 0;
  v26 = a5 + 48;
  v6 = -*(a5 + 16);
  v27 = MEMORY[0x1E69E7CC0];
LABEL_14:
  a1 = a4 + 1;
  v28 = (v26 + 24 * a4);
  while (v6 + a1 != 1)
  {
    a4 = a1;
    if ((a1 - 1) >= *(a5 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v30 = *(v28 - 2);
    v29 = *(v28 - 1);
    v31 = *v28;
    if (v30 == a2 && v29 == a3)
    {
      v30 = a2;
LABEL_24:
      sub_1C75504FC();
      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59[0] = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716DE54();
        v27 = v59[0];
      }

      v34 = *(v27 + 16);
      if (v34 >= *(v27 + 24) >> 1)
      {
        sub_1C716DE54();
        v27 = v59[0];
      }

      *(v27 + 16) = v34 + 1;
      v35 = (v27 + 24 * v34);
      v35[4] = v30;
      v35[5] = v29;
      v35[6] = v31;
      v26 = a5 + 48;
      goto LABEL_14;
    }

    ++a1;
    v28 += 3;
    if (sub_1C7551DBC())
    {
      goto LABEL_24;
    }
  }

  v36 = *(v27 + 16);

  if (v36)
  {
    sub_1C75504FC();
    v37 = sub_1C754FEEC();
    v38 = sub_1C75511AC();

    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_13_3();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v40 = swift_slowAlloc();
      v59[0] = v40;
      *v39 = 136380675;
      *(v39 + 4) = sub_1C6F765A4(a2, a3, v59);
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    return 0;
  }

  v59[0] = a2;
  v59[1] = a3;
  v59[2] = v57;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C716829C(v59);

  v48 = *(v56 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_debugFolder);
  if (!v48)
  {
    v52 = sub_1C754FEEC();
    v53 = sub_1C755118C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1C6F5C000, v52, v53, "No debugFolder. Skip creating debug album", v54, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    return 0;
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA88);
  v49 = *(v56 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_photoLibrary);
  v50 = v48;
  v51 = static PHAssetCollection.persistAsAlbum(assetUUIDs:albumName:photoLibrary:preserveOrder:)(v57, a2, a3, v49, 0);
  v46 = v51;
  if (v51)
  {
    v55 = v51;
    sub_1C7167D80(v55, v50);
  }

  return v46;
}

uint64_t sub_1C7165140()
{
  v0 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  if (qword_1EDD07798 != -1)
  {
    OUTLINED_FUNCTION_38_15();
  }

  v7 = qword_1EDD28960;
  sub_1C754DF3C();
  v8 = sub_1C754DECC();
  (*(v2 + 8))(v6, v0);
  v9 = [v7 stringFromDate_];

  v10 = sub_1C755068C();
  return v10;
}

uint64_t sub_1C7165264()
{
  if (qword_1EDD07798 != -1)
  {
    OUTLINED_FUNCTION_38_15();
  }

  v0 = qword_1EDD28960;
  v1 = sub_1C755065C();
  [v0 setDateFormat_];

  v2 = sub_1C754DECC();
  v3 = [v0 stringFromDate_];

  v4 = sub_1C755068C();
  return v4;
}

uint64_t StoryGenerationDiagnosticContext.diagnosticDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticDirectoryURL;
  sub_1C754DD2C();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t StoryGenerationDiagnosticContext.debugAlbumInfo.getter()
{
  v1 = v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo));
  v2 = *(v1 + 8);
  sub_1C75504FC();
  os_unfair_lock_unlock(v1);
  return v2;
}

void StoryGenerationDiagnosticContext.generationSummary.getter(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
  os_unfair_lock_lock(v3);
  memcpy(__dst, &v1[2], sizeof(__dst));
  memcpy(a1, &v1[2], 0xF0uLL);
  sub_1C7165710(__dst, &v4);
  os_unfair_lock_unlock(v1);
}

id sub_1C7165484()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  qword_1EDD28960 = result;
  return result;
}

void StoryGenerationDiagnosticContext.generationStage.getter(_BYTE *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__generationStage);
  os_unfair_lock_lock(v3);
  *a1 = *(v1 + 4);

  os_unfair_lock_unlock(v1);
}

void (*StoryGenerationDiagnosticContext.generationStage.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  StoryGenerationDiagnosticContext.generationStage.getter((a1 + 8));
  return sub_1C7165610;
}

void sub_1C7165610(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  StoryGenerationDiagnosticContext.generationStage.setter(v2);
}

uint64_t sub_1C7165658()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07758);
  __swift_project_value_buffer(v0, qword_1EDD07758);
  return sub_1C754FEFC();
}

uint64_t sub_1C71656D8()
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    v1 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

char *StoryGenerationDiagnosticContext.__allocating_init(generationDate:entryPoint:photoLibrary:shouldForceDiagnosticAsSeedOrFCS:saveCurationInFolder:)(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_117_0();
  return StoryGenerationDiagnosticContext.init(generationDate:entryPoint:photoLibrary:shouldForceDiagnosticAsSeedOrFCS:saveCurationInFolder:)(v8, v9, a3, a4, a5);
}

char *StoryGenerationDiagnosticContext.init(generationDate:entryPoint:photoLibrary:shouldForceDiagnosticAsSeedOrFCS:saveCurationInFolder:)(uint64_t a1, char *a2, void *a3, int a4, int a5)
{
  v6 = v5;
  v73 = a5;
  LODWORD(v86) = a4;
  v92 = *MEMORY[0x1E69E9840];
  v89 = *v6;
  sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v87 = v11;
  v88 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v75 = (v12 - v13);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v72 - v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v19 = *a2;
  v20 = &v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename];
  *v20 = 0;
  *(v20 + 1) = MEMORY[0x1E69E7CC8];
  v82 = v20 + 8;
  v21 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo;
  *&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo] = 0;
  v22 = &v6[v21];
  *(v22 + 1) = MEMORY[0x1E69E7CC0];
  v81 = v22 + 8;
  v23 = &v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock];
  sub_1C70AE7A8(v91);
  *v23 = 0;
  v83 = v23 + 8;
  memcpy(v23 + 8, v91, 0xF0uLL);
  v24 = &v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents];
  *v24 = 0;
  *(v24 + 2) = 0xE000000000000000;
  *(v24 + 1) = 0;
  v80 = v24 + 8;
  v25 = &v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__generationStage];
  *v25 = 0;
  v25[4] = 0;
  v79 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_photoLibrary;
  *&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_photoLibrary] = a3;
  sub_1C754DBCC();
  swift_allocObject();
  v26 = a3;
  v27 = sub_1C754DBBC();
  sub_1C754DB9C();
  v78 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_xmlEncoder;
  *&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_xmlEncoder] = v27;
  v28 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationDate;
  v29 = sub_1C754DF6C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v77 = v28;
  v85 = v29;
  v31(&v6[v28], a1);
  LOBYTE(v90) = v19;
  type metadata accessor for StoryStatistics();
  swift_allocObject();
  v32 = sub_1C717B164(&v90);
  v33 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics;
  *&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics] = v32;
  v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS] = v86;
  v90 = 0;
  v84 = v27;

  v86 = v26;
  v34 = [v26 urlForApplicationDataFolderIdentifier:11 error:&v90];
  v35 = v90;
  if (v34)
  {
    v36 = v34;
    v72 = v33;
    v74 = v30;
    v37 = v76;
    sub_1C754DCCC();
    v38 = v35;

    v39 = *(v87 + 32);
    v39(v18, v37, v88);
    v40 = v75;
    sub_1C71660BC();
    v51 = v40;
    v52 = v88;
    v39(&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticDirectoryURL], v51, v88);
    if (v73)
    {
      v53 = sub_1C7166618(v86);
      v52 = v88;
    }

    else
    {
      v53 = 0;
    }

    *&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_debugFolder] = v53;
    v58 = sub_1C71656D8();
    v59 = v87;
    if (v58)
    {
      v60 = static LLMBackendDiagnosticsGenerator.save()();
      v61 = MEMORY[0x1E69E7CC8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v61;
      sub_1C71696D0(v60, sub_1C7169998, 0, isUniquelyReferenced_nonNull_native, &v90);
      v63 = v90;
      v64 = static VersionDiagnosticsGenerator.save()();
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v90 = v63;
      sub_1C71696D0(v64, sub_1C7169998, 0, v65, &v90);
      v66 = &v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename];
      os_unfair_lock_lock(&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename]);

      sub_1C7169230(v67, sub_1C7169998, 0, v66 + 1);
      os_unfair_lock_unlock(v66);

      v68 = OUTLINED_FUNCTION_86_7();
      v69(v68);
      (*(v59 + 8))(v18, v52);
    }

    else
    {

      v70 = OUTLINED_FUNCTION_86_7();
      v71(v70);
      (*(v59 + 8))(v18, v52);
    }
  }

  else
  {
    v41 = v90;
    v42 = sub_1C754DBEC();

    swift_willThrow();
    if (qword_1EDD07750 != -1)
    {
      OUTLINED_FUNCTION_0_76();
      swift_once();
    }

    v43 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v43, qword_1EDD07758);
    v44 = sub_1C754FEEC();
    v45 = sub_1C755119C();
    if (os_log_type_enabled(v44, v45))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v54 = v85;
    v55 = *(v30 + 8);
    v56 = OUTLINED_FUNCTION_117_0();
    v55(v56);
    (v55)(&v6[v77], v54);
    sub_1C6FD7FC8(v82, &qword_1EC217FE8);
    sub_1C6FD7FC8(v81, &qword_1EC217FF0);

    sub_1C7169188(v83);

    sub_1C71691DC(v80);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

void sub_1C71660BC()
{
  v30[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1C755065C();
  [v0 setDateFormat_];

  sub_1C754DCDC();
  v2 = sub_1C754DECC();
  v3 = [v0 stringFromDate_];

  sub_1C755068C();
  v4 = sub_1C734ACA0();
  v6 = v5;

  v29 = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v8 = sub_1C755065C();
  v9 = [v7 fileExistsAtPath:v8 isDirectory:&v29];

  if (v9)
  {
    if (v29 == 1)
    {
      if (qword_1EDD07750 != -1)
      {
        swift_once();
      }

      v10 = sub_1C754FF1C();
      __swift_project_value_buffer(v10, qword_1EDD07758);
      sub_1C75504FC();
      v11 = sub_1C754FEEC();
      v12 = sub_1C755119C();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_18;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1C6F765A4(v4, v6, v30);
      _os_log_impl(&dword_1C6F5C000, v11, v12, "There already is a directory at %s! Unable to write diagnostics for this story generation run...", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);
      v15 = v13;
    }

    else
    {
      if (qword_1EDD07750 != -1)
      {
        swift_once();
      }

      v24 = sub_1C754FF1C();
      __swift_project_value_buffer(v24, qword_1EDD07758);
      sub_1C75504FC();
      v11 = sub_1C754FEEC();
      v25 = sub_1C755119C();

      if (!os_log_type_enabled(v11, v25))
      {
        goto LABEL_18;
      }

      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1C6F765A4(v4, v6, v30);
      _os_log_impl(&dword_1C6F5C000, v11, v25, "There already is a file at %s! Unable to write diagnostics for this story generation run...", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1CCA5F8E0](v27, -1, -1);
      v15 = v26;
    }

    MEMORY[0x1CCA5F8E0](v15, -1, -1);
LABEL_18:

    goto LABEL_19;
  }

  if (qword_1EDD07750 != -1)
  {
    swift_once();
  }

  v16 = sub_1C754FF1C();
  __swift_project_value_buffer(v16, qword_1EDD07758);
  sub_1C75504FC();
  v17 = sub_1C754FEEC();
  v18 = sub_1C755117C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1C6F765A4(v4, v6, v30);
    _os_log_impl(&dword_1C6F5C000, v17, v18, "The directory %s does not exist yet. Creating one.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1CCA5F8E0](v20, -1, -1);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
  }

  v21 = sub_1C755065C();
  v30[0] = 0;
  v22 = [v7 createDirectoryAtPath:v21 withIntermediateDirectories:1 attributes:0 error:v30];

  if (!v22)
  {
    v28 = v30[0];

    sub_1C754DBEC();

    swift_willThrow();
    goto LABEL_21;
  }

  v23 = v30[0];
LABEL_19:
  sub_1C754DC5C();

LABEL_21:
}

id sub_1C7166618(void *a1)
{
  v4 = sub_1C7167864(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1C7069CE4(0x48482064642F4D4DLL, 0xEE0073733A6D6D3ALL, v6);
    v7 = sub_1C754DECC();
    v8 = [v6 stringFromDate_];

    sub_1C755068C();
    v9 = OUTLINED_FUNCTION_323();
    MEMORY[0x1CCA5CD70](v9);

    v1 = sub_1C7167A10(a1, 2966349, 0xE300000000000000);

    sub_1C7167D80(v1, v5);
  }

  return v1;
}

uint64_t sub_1C7166780()
{
  v0 = &off_1F469DCF0;
  v1 = 3;
  sub_1C6FB5E8C();
  while (--v1)
  {
    v0 += 2;
    if (sub_1C75515AC())
    {
      v2 = sub_1C71656D8() ^ 1;
      return v2 & 1;
    }
  }

  v2 = sub_1C71656D8();
  return v2 & 1;
}

Swift::Void __swiftcall StoryGenerationDiagnosticContext.writeStoredFiles()()
{
  v87[2] = *MEMORY[0x1E69E9840];
  v77 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v76 = v5 - v4;
  v75 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - v13;
  v86 = v0;
  v15 = v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename));
  v16 = *(v15 + 8);
  sub_1C75504FC();
  os_unfair_lock_unlock(v15);
  v18 = 0;
  v20 = v16 + 64;
  v19 = *(v16 + 64);
  v79 = v16;
  v21 = 1 << *(v16 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v73 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticDirectoryURL;
  v24 = (v21 + 63) >> 6;
  v72 = *MEMORY[0x1E6968F70];
  v71 = (v2 + 104);
  v70 = (v2 + 8);
  v69 = v7 + 8;
  *&v17 = 136315394;
  v66 = v17;
  v68 = v11;
  v78 = v14;
  v74 = v20;
  v67 = v24;
  while (v23)
  {
    v25 = v18;
LABEL_9:
    v80 = 0;
    v26 = (v25 << 10) | (16 * __clz(__rbit64(v23)));
    v27 = *(v79 + 56);
    v28 = (*(v79 + 48) + v26);
    v29 = v28[1];
    v82 = *v28;
    v30 = (v27 + v26);
    v32 = *v30;
    v31 = v30[1];
    sub_1C75504FC();
    v84 = v32;
    v85 = v31;
    sub_1C6FEB1B0(v32, v31);
    if (qword_1EDD07750 != -1)
    {
      OUTLINED_FUNCTION_0_76();
      swift_once();
    }

    v33 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v33, qword_1EDD07758);
    sub_1C75504FC();

    v81 = v32;
    v34 = sub_1C754FEEC();
    v35 = sub_1C755117C();

    v36 = os_log_type_enabled(v34, v35);
    v83 = v29;
    if (v36)
    {
      swift_slowAlloc();
      v65 = OUTLINED_FUNCTION_33_17();
      v87[0] = v65;
      *v11 = v66;
      v37 = v82;
      *(v11 + 4) = sub_1C6F765A4(v82, v29, v87);
      *(v11 + 12) = 2080;
      v38 = sub_1C754DC2C();
      v40 = sub_1C6F765A4(v38, v39, v87);
      v24 = v67;

      *(v11 + 14) = v40;
      v41 = v37;
      v29 = v83;
      _os_log_impl(&dword_1C6F5C000, v34, v35, "Saving %s to directory %s", v11, 0x16u);
      swift_arrayDestroy();
      v14 = v78;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v11 = v68;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      v41 = v82;
    }

    v87[0] = v41;
    v87[1] = v29;
    v43 = v76;
    v42 = v77;
    (*v71)(v76, v72, v77);
    sub_1C6FB5E8C();
    sub_1C754DD1C();
    (*v70)(v43, v42);
    sub_1C754DCBC();
    v44 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v45 = sub_1C754DC8C();
    v87[0] = 0;
    v46 = [v44 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:v87];

    if (v46)
    {
      v47 = v87[0];
      v48 = v80;
    }

    else
    {
      v49 = v87[0];
      v50 = sub_1C754DBEC();

      swift_willThrow();
      v48 = 0;
    }

    v52 = v84;
    v51 = v85;
    v23 &= v23 - 1;
    sub_1C754DE1C();
    if (v48)
    {
      v53 = OUTLINED_FUNCTION_53_16();
      v51(v53);
      (v51)(v14, v52);
      v54 = v83;
      sub_1C75504FC();
      v55 = v48;
      v56 = sub_1C754FEEC();
      v57 = sub_1C755119C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v87[0] = OUTLINED_FUNCTION_49_1();
        *v58 = v66;
        v59 = sub_1C6F765A4(v82, v54, v87);

        *(v58 + 4) = v59;
        *(v58 + 12) = 2080;
        swift_getErrorValue();
        v60 = sub_1C7551EAC();
        v62 = sub_1C6F765A4(v60, v61, v87);

        *(v58 + 14) = v62;
        v24 = v67;
        _os_log_impl(&dword_1C6F5C000, v56, v57, "Couldn't save %s. Reason: %s", v58, 0x16u);
        OUTLINED_FUNCTION_21_25();
        v11 = v68;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        sub_1C6FC1640(v84, v85);
      }

      else
      {
        sub_1C6FC1640(v84, v85);
      }

      v18 = v25;
      v14 = v78;
      v20 = v74;
    }

    else
    {
      sub_1C6FC1640(v52, v51);

      v63 = OUTLINED_FUNCTION_53_16();
      v51(v63);
      (v51)(v14, v52);
      v18 = v25;
      v20 = v74;
    }
  }

  while (1)
  {
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
    }

    if (v25 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v25);
    ++v18;
    if (v23)
    {
      goto LABEL_9;
    }
  }
}

uint64_t StoryGenerationDiagnosticContext.writeGenerationDiagnosticFiles(to:)(uint64_t a1)
{
  v3 = v1;
  v102 = a1;
  v109 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v100 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v99 = v7 - v6;
  v8 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v101 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v91 = v11 - v12;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v86 - v14;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v86 - v16;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v86 - v18;
  v20 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  result = sub_1C71656D8();
  if (result)
  {
    v93 = v8;
    v98 = v2;
    v28 = v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents;
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents));
    v29 = *(v28 + 8);
    v30 = *(v28 + 16);
    sub_1C75506CC();
    OUTLINED_FUNCTION_91_7();
    sub_1C755069C();
    OUTLINED_FUNCTION_43_0();
    v31 = *(v22 + 8);
    v95 = v22 + 8;
    v96 = v20;
    v94 = v31;
    v31(v26, v20);
    os_unfair_lock_unlock(v28);
    v32 = MEMORY[0x1E6968F70];
    v90 = v3;
    if (v30 >> 60 == 15)
    {
      v87 = v29;
    }

    else
    {
      OUTLINED_FUNCTION_87_10();
      v108[0] = v33 + 3;
      v108[1] = v34;
      v35 = v29;
      v36 = OUTLINED_FUNCTION_84_6();
      v37 = v109;
      v38(v36);
      sub_1C6FEB1B0(v35, v30);
      sub_1C6FB5E8C();
      sub_1C754DD1C();
      (*(v30 + 8))(v32, v37);
      v39 = v98;
      sub_1C754DE1C();
      if (v39)
      {
        OUTLINED_FUNCTION_93_8();
        v40(v19, v93);
        sub_1C70B5C10(v35, v30);
        v41 = v35;
        v42 = v30;
        return sub_1C70B5C10(v41, v42);
      }

      v98 = 0;
      (*(v101 + 8))(v19, v93);
      v87 = v35;
      sub_1C70B5C10(v35, v30);
      v3 = v90;
      v32 = MEMORY[0x1E6968F70];
    }

    v43 = (v3 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
    OUTLINED_FUNCTION_101_6(v107);
    OUTLINED_FUNCTION_101_6(v106);
    sub_1C7165710(v107, v105);
    object = StoryGenerationSummary.fullDescription()()._object;
    memcpy(v108, v106, 0xF0uLL);
    sub_1C7169188(v108);
    sub_1C75506CC();
    OUTLINED_FUNCTION_91_7();
    v45 = sub_1C755069C();
    v47 = v46;

    v48 = OUTLINED_FUNCTION_63_11();
    v49(v48);
    os_unfair_lock_unlock(v43);
    v88 = v30;
    v89 = v47;
    if (v47 >> 60 == 15)
    {
      v86 = v45;
      v50 = v98;
    }

    else
    {
      OUTLINED_FUNCTION_87_10();
      v106[0] = v51 + 8;
      v106[1] = v52;
      v53 = OUTLINED_FUNCTION_73_9();
      v54(v53);
      v55 = OUTLINED_FUNCTION_85_8();
      sub_1C6FEB1B0(v55, v56);
      sub_1C6FB5E8C();
      v57 = v97;
      sub_1C754DD1C();
      object[1](v32, v109);
      v58 = v98;
      sub_1C754DE1C();
      v50 = v58;
      if (v58)
      {
        OUTLINED_FUNCTION_93_8();
        v59(v57, v93);
        sub_1C70B5C10(v87, v88);
        v60 = OUTLINED_FUNCTION_85_8();
        sub_1C70B5C10(v60, v61);
        v41 = OUTLINED_FUNCTION_85_8();
        return sub_1C70B5C10(v41, v42);
      }

      (*(v101 + 8))(v57, v93);
      v86 = v45;
      v62 = OUTLINED_FUNCTION_85_8();
      sub_1C70B5C10(v62, v63);
      v30 = v88;
      v32 = MEMORY[0x1E6968F70];
    }

    os_unfair_lock_lock(v43);
    OUTLINED_FUNCTION_101_6(v105);
    OUTLINED_FUNCTION_101_6(v104);
    sub_1C7165710(v105, &v103);
    v64 = StoryGenerationSummary.llmRequestDiagnostics()().value._object;
    memcpy(v106, v104, sizeof(v106));
    sub_1C7169188(v106);
    if (v64)
    {
      sub_1C75506CC();
      OUTLINED_FUNCTION_91_7();
      v97 = sub_1C755069C();
      v66 = v65;

      v67 = OUTLINED_FUNCTION_63_11();
      v68(v67);
    }

    else
    {
      v97 = 0;
      v66 = 0xF000000000000000;
    }

    os_unfair_lock_unlock(v43);
    if (v66 >> 60 == 15)
    {
      v98 = v50;
LABEL_20:
      sub_1C717B25C();
      v75 = v74;
      sub_1C75506CC();
      OUTLINED_FUNCTION_91_7();
      v76 = sub_1C755069C();
      v78 = v77;

      v79 = OUTLINED_FUNCTION_63_11();
      v80(v79);
      if (v78 >> 60 == 15)
      {
        return OUTLINED_FUNCTION_102_7(v87, v30);
      }

      strcpy(v104, "Statistics.txt");
      HIBYTE(v104[1]) = -18;
      v81 = OUTLINED_FUNCTION_73_9();
      v82 = v109;
      v83(v81);
      sub_1C6FB5E8C();
      v84 = v91;
      sub_1C754DD1C();
      (*(v75 + 8))(v32, v82);
      sub_1C754DE1C();
      OUTLINED_FUNCTION_93_8();
      v85(v84, v93);
      OUTLINED_FUNCTION_102_7(v87, v88);
      v41 = v76;
      v42 = v78;
      return sub_1C70B5C10(v41, v42);
    }

    v104[0] = 0xD000000000000012;
    v104[1] = 0x80000001C75A10C0;
    v69 = OUTLINED_FUNCTION_84_6();
    v70(v69);
    v71 = v97;
    sub_1C6FEB1B0(v97, v66);
    sub_1C6FB5E8C();
    v72 = v92;
    sub_1C754DD1C();
    (*(v30 + 8))(v32, v109);
    sub_1C754DE1C();
    if (!v50)
    {
      v98 = 0;
      (*(v101 + 8))(v72, v93);
      sub_1C70B5C10(v71, v66);
      v30 = v88;
      v32 = MEMORY[0x1E6968F70];
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_93_8();
    v73(v72, v93);
    sub_1C70B5C10(v87, v88);
    sub_1C70B5C10(v86, v89);
    sub_1C70B5C10(v71, v66);
    v41 = v71;
    v42 = v66;
    return sub_1C70B5C10(v41, v42);
  }

  return result;
}

uint64_t StoryGenerationDiagnosticContext.inProcessDiagnosticURL()()
{
  v1 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
  os_unfair_lock_lock(v1);
  sub_1C75504FC();
  os_unfair_lock_unlock(v0);
  type metadata accessor for FreeformStoryDiagnosticsUtils();
  sub_1C734AD20();
}

id sub_1C7167864(void *a1)
{
  v2 = [a1 librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C75604F0;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1C6F6D524();
  strcpy((v3 + 32), "localizedTitle");
  *(v3 + 47) = -18;
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 64) = v5;
  *(v3 + 72) = 0xD000000000000014;
  *(v3 + 80) = 0x80000001C75A1290;
  v6 = sub_1C755112C();
  [v2 setPredicate_];

  v7 = [objc_opt_self() fetchCollectionListsWithType:2 subtype:100 options:v2];
  v8 = [v7 firstObject];

  if (!v8)
  {
    v8 = sub_1C7167A10(a1, 0xD000000000000014, 0x80000001C75A1290);
  }

  return v8;
}

id sub_1C7167A10(void *a1, uint64_t a2, uint64_t a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  *(v6 + 24) = 0xE000000000000000;
  OUTLINED_FUNCTION_3_16();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v6;
  OUTLINED_FUNCTION_0_21();
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_11_1();
  aBlock[2] = v9;
  aBlock[3] = &block_descriptor_48_0;
  v10 = _Block_copy(aBlock);
  sub_1C75504FC();

  aBlock[0] = 0;
  v11 = [a1 performChangesAndWait:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  if (!v11)
  {
    v34 = aBlock[0];
    sub_1C754DBEC();

LABEL_10:
    swift_willThrow();

    return v7;
  }

  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C755BAB0;
  swift_beginAccess();
  v15 = *(v6 + 24);
  *(v14 + 32) = *(v6 + 16);
  *(v14 + 40) = v15;
  sub_1C75504FC();
  v16 = v12;
  v17 = sub_1C7550B3C();

  v18 = [a1 librarySpecificFetchOptions];
  v19 = [v13 fetchCollectionListsWithLocalIdentifiers:v17 options:v18];

  v7 = [v19 firstObject];
  if (!v7)
  {
    sub_1C716A594();
    swift_allocError();
    goto LABEL_10;
  }

  if (qword_1EDD07750 != -1)
  {
    OUTLINED_FUNCTION_0_76();
    swift_once();
  }

  v20 = sub_1C754FF1C();
  __swift_project_value_buffer(v20, qword_1EDD07758);
  sub_1C75504FC();
  v21 = sub_1C754FEEC();
  sub_1C755117C();

  v22 = OUTLINED_FUNCTION_94_9();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_13_3();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v36 = swift_slowAlloc();
    *v24 = 136315138;
    v25 = OUTLINED_FUNCTION_117_0();
    *(v24 + 4) = sub_1C6F765A4(v25, v26, v27);
    OUTLINED_FUNCTION_92_9();
    _os_log_impl(v28, v29, v30, v31, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v32);
    v33 = OUTLINED_FUNCTION_5_44();
    MEMORY[0x1CCA5F8E0](v33);
  }

  return v7;
}

id sub_1C7167D80(void *a1, id a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = [a2 photoLibrary];
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  OUTLINED_FUNCTION_30();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  OUTLINED_FUNCTION_0_21();
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_11_1();
  aBlock[2] = v7;
  aBlock[3] = &block_descriptor_39;
  v8 = _Block_copy(aBlock);
  v9 = a2;
  v10 = a1;

  aBlock[0] = 0;
  v11 = [v5 performChangesAndWait:v8 error:aBlock];
  _Block_release(v8);

  if (v11)
  {
    return aBlock[0];
  }

  v13 = aBlock[0];
  sub_1C754DBEC();

  return swift_willThrow();
}

void sub_1C7167ED4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v43 = *a1;
  v7 = v43;
  v44 = v6;
  v45 = v9;
  v46 = v8;
  swift_bridgeObjectRetain_n();
  v10 = sub_1C71CDAC0(v6);
  sub_1C754F41C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0);
  v41 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_0(&v38);
  MEMORY[0x1CCA5B6D0]();
  v29 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v43, v10, &v38);

  __swift_destroy_boxed_opaque_existential_1(&v38);
  v43 = v7;
  v44 = v6;
  v45 = v9;
  v46 = v8;
  v13 = sub_1C75504FC();
  sub_1C7074668(v13, v6, v14, v15, v16, v17, v18, v19, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29), a2, a3, v35, a4, a5, v37, v38, v39, v40);
  v21 = sub_1C71CDAC0(v20);
  v41 = v11;
  v42 = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_0(&v38);
  MEMORY[0x1CCA5B6D0]();
  StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v43, v21, &v38);

  v22 = OUTLINED_FUNCTION_76_7(&v38);
  sub_1C7238810(v22, v30);
  sub_1C703FD7C();
  v24 = v23;

  v38 = v32;
  v39 = v34;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0x6E6974726550203ALL, 0xEB00000000746E65);
  v25 = sub_1C7164AD8(v24, v38, v39, 0, 0);

  sub_1C703FD7C();
  v27 = v26;

  v38 = v32;
  v39 = v34;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0x747265706D49203ALL, 0xED0000746E656E69);
  v28 = sub_1C7164AD8(v27, v38, v39, 0, 0);
}

PhotosIntelligence::StoryDiagnosticAlbumInfo __swiftcall StoryDiagnosticAlbumInfo.init(albumName:assetUUIDs:)(Swift::String albumName, Swift::OpaquePointer assetUUIDs)
{
  *v2 = albumName;
  *(v2 + 16) = assetUUIDs;
  result.albumName = albumName;
  result.assetUUIDs = assetUUIDs;
  return result;
}

void sub_1C716829C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo));
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C6FB0A44();
  v6 = *(*(v5 + 8) + 16);
  sub_1C6FB1298();
  v7 = *(v5 + 8);
  *(v7 + 16) = v6 + 1;
  v8 = (v7 + 24 * v6);
  v8[4] = v3;
  v8[5] = v2;
  v8[6] = v4;

  os_unfair_lock_unlock(v5);
}

void sub_1C7168340(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() changeRequestForCollectionList_];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C7565670;
    *(v5 + 32) = a2;
    sub_1C6F65BE8(0, &qword_1EDD069D0);
    v8 = v4;
    v6 = a2;
    v7 = sub_1C7550B3C();

    [v8 addChildCollections_];
  }
}

void sub_1C716845C(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_debugFolder);
  if (v3)
  {
    v6 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_photoLibrary);
    OUTLINED_FUNCTION_3_16();
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = a1;
    v7[4] = a2;
    aBlock[4] = sub_1C716A4A8;
    v32 = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_11_1();
    aBlock[2] = v8;
    aBlock[3] = &block_descriptor_12;
    v9 = _Block_copy(aBlock);
    v10 = v32;
    v11 = v3;
    sub_1C75504FC();

    aBlock[0] = 0;
    LODWORD(a2) = [v6 performChangesAndWait:v9 error:aBlock];
    _Block_release(v9);
    if (a2)
    {
      v12 = aBlock[0];
    }

    else
    {
      v16 = aBlock[0];
      v17 = sub_1C754DBEC();

      swift_willThrow();
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v18 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v18, qword_1EDD07758);
      v19 = v17;
      v20 = sub_1C754FEEC();
      v21 = sub_1C755119C();

      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_13_3();
        swift_slowAlloc();
        v22 = OUTLINED_FUNCTION_163_0();
        *v10 = 138412290;
        v23 = v17;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v24;
        *v22 = v24;
        OUTLINED_FUNCTION_77_1();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        sub_1C6FD7FC8(v22, &qword_1EC215190);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1EDD07750 != -1)
    {
      OUTLINED_FUNCTION_0_76();
      swift_once();
    }

    v13 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v13, qword_1EDD07758);
    oslog = sub_1C754FEEC();
    v14 = sub_1C755117C();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C6F5C000, oslog, v14, "No debugFolder. Skip updating folder name", v15, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }
}

void sub_1C71687BC(uint64_t a1)
{
  v1 = [objc_opt_self() changeRequestForCollectionList_];
  if (v1)
  {
    v3 = v1;
    v2 = sub_1C755065C();
    [v3 setTitle_];
  }
}

uint64_t StoryGenerationDiagnosticContext.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationDate;
  sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticDirectoryURL;
  sub_1C754DD2C();
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(v0 + v3);
  sub_1C6FD7FC8(v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename + 8, &qword_1EC217FE8);

  sub_1C6FD7FC8(v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo + 8, &qword_1EC217FF0);

  sub_1C7169188(v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock + 8);

  sub_1C71691DC(v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents + 8);
  return v0;
}

uint64_t StoryGenerationDiagnosticContext.__deallocating_deinit()
{
  StoryGenerationDiagnosticContext.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall StoryGenerationDiagnosticContext.addDebugPlaceholderAlbum(with:)(Swift::OpaquePointer with)
{
  v1 = sub_1C7164AD8(with._rawValue, 0x6C6F686563616C50, 0xEB00000000726564, 0, 0);
}

uint64_t StoryDiagnosticAlbumInfo.albumName.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t StoryDiagnosticAlbumInfo.description.getter()
{
  v3 = *v0;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](2108704, 0xE300000000000000);
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
  return v3;
}

uint64_t sub_1C7168B34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
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

uint64_t sub_1C7168C0C(char a1)
{
  if (a1)
  {
    return 0x4955557465737361;
  }

  else
  {
    return 0x6D614E6D75626C61;
  }
}

uint64_t sub_1C7168C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7168B34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7168C7C(uint64_t a1)
{
  v2 = sub_1C71699CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7168CB8(uint64_t a1)
{
  v2 = sub_1C71699CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoryDiagnosticAlbumInfo.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FF8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C71699CC();
  sub_1C755200C();
  OUTLINED_FUNCTION_98_1();
  sub_1C7551CCC();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_30_1();
    sub_1C6FF60E4(v4);
    sub_1C7551D2C();
  }

  v5 = OUTLINED_FUNCTION_295();
  return v6(v5);
}

uint64_t StoryDiagnosticAlbumInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218000);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C71699CC();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1C7551BBC();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FF60E4(&qword_1EDD0CF50);
  sub_1C7551C1C();
  v9 = OUTLINED_FUNCTION_6_35();
  v10(v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v12;
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StoryGenerationDiagnosticContext.GenerationStage.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7169230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1C71696D0(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1C71692A4(_BYTE *a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = swift_bridgeObjectRetain_n();
  if (v4 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1C75504FC();
      v2 = sub_1C7169630(v10, v5, v2);
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v6);
  v7 = v11 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v5, v7);
  sub_1C75504FC();
  v8 = sub_1C7169468(v7, v5, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v8;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v2;
}

uint64_t sub_1C7169468(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v18 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    MEMORY[0x1EEE9AC00](result);
    sub_1C75504FC();
    sub_1C75504FC();
    v13 = sub_1C70735F4();

    if (v13)
    {
      *(v17 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7483F80();
        v16 = v15;

        return v16;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C7169630(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v6 = sub_1C7169468(v5, a2, a3);
    swift_bridgeObjectRelease_n();

    return v6;
  }

  return result;
}

uint64_t sub_1C71696D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  sub_1C6F78034(v50);
  v6 = v50[1];
  v7 = v50[3];
  v8 = v50[4];
  v40 = v50[5];
  v41 = v50[0];
  v9 = (v50[2] + 64) >> 6;
  sub_1C75504FC();

  v38 = v9;
  for (i = v6; ; v6 = i)
  {
    v10 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
    v13 = *(v41 + 56);
    v14 = (*(v41 + 48) + v12);
    v15 = v14[1];
    v44[0] = *v14;
    v44[1] = v15;
    v45 = *(v13 + v12);
    v42 = v45;
    sub_1C75504FC();
    sub_1C6FEB1B0(v42, *(&v42 + 1));
    v40(&v46, v44);
    v16 = v45;

    sub_1C6FC1640(v16, *(&v16 + 1));
    v17 = v47;
    if (!v47)
    {
LABEL_19:
      sub_1C6F61E88();
    }

    v18 = v46;
    v19 = v48;
    v43 = v49;
    v20 = *v51;
    v22 = sub_1C6F78124(v46, v47);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_21;
    }

    v25 = v21;
    if (*(v20 + 24) >= v23 + v24)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215248);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7354CF4();
      v26 = sub_1C6F78124(v18, v17);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_23;
      }

      v22 = v26;
    }

    v8 &= v8 - 1;
    v28 = *v51;
    if (v25)
    {

      v29 = (*(v28 + 56) + 16 * v22);
      v30 = *v29;
      v31 = v29[1];
      *v29 = v19;
      v29[1] = v43;
      sub_1C6FC1640(v30, v31);
    }

    else
    {
      *(v16 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v32 = (*(v16 + 48) + 16 * v22);
      *v32 = v18;
      v32[1] = v17;
      v33 = (*(v16 + 56) + 16 * v22);
      *v33 = v19;
      v33[1] = v43;
      v34 = *(v16 + 16);
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_22;
      }

      *(v28 + 16) = v36;
    }

    a4 = 1;
    v7 = v10;
    v9 = v38;
  }

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
      goto LABEL_19;
    }

    v8 = *(v6 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C7169998@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C73D925C(a2 + 2, *a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1C71699CC()
{
  result = qword_1EDD095C0;
  if (!qword_1EDD095C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD095C0);
  }

  return result;
}

unint64_t sub_1C7169A24()
{
  result = qword_1EC218008;
  if (!qword_1EC218008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218008);
  }

  return result;
}

uint64_t type metadata accessor for StoryGenerationDiagnosticContext()
{
  result = qword_1EDD07738;
  if (!qword_1EDD07738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7169ACC()
{
  result = sub_1C754DF6C();
  if (v1 <= 0x3F)
  {
    result = sub_1C754DD2C();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryGenerationDiagnosticContext.GenerationStage(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryDiagnosticAlbumInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7169DE8()
{
  result = qword_1EC218038;
  if (!qword_1EC218038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218038);
  }

  return result;
}

unint64_t sub_1C7169E40()
{
  result = qword_1EDD095B0;
  if (!qword_1EDD095B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD095B0);
  }

  return result;
}

unint64_t sub_1C7169E98()
{
  result = qword_1EDD095B8;
  if (!qword_1EDD095B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD095B8);
  }

  return result;
}

unint64_t sub_1C7169F40()
{
  result = qword_1EC218040;
  if (!qword_1EC218040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218040);
  }

  return result;
}

unint64_t sub_1C7169F94()
{
  result = qword_1EDD06B20;
  if (!qword_1EDD06B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216560);
    sub_1C71413A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06B20);
  }

  return result;
}

unint64_t sub_1C716A06C()
{
  result = qword_1EDD08A20;
  if (!qword_1EDD08A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08A20);
  }

  return result;
}

unint64_t sub_1C716A11C()
{
  result = qword_1EDD06B10;
  if (!qword_1EDD06B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218050);
    sub_1C716A1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06B10);
  }

  return result;
}

unint64_t sub_1C716A1A0()
{
  result = qword_1EDD06B18;
  if (!qword_1EDD06B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218058);
    sub_1C716A06C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06B18);
  }

  return result;
}

unint64_t sub_1C716A224()
{
  result = qword_1EDD06B00;
  if (!qword_1EDD06B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218060);
    sub_1C716A2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06B00);
  }

  return result;
}

unint64_t sub_1C716A2A8()
{
  result = qword_1EDD07F30;
  if (!qword_1EDD07F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F30);
  }

  return result;
}

unint64_t sub_1C716A2FC()
{
  result = qword_1EC218070;
  if (!qword_1EC218070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218070);
  }

  return result;
}

unint64_t sub_1C716A350()
{
  result = qword_1EC218080;
  if (!qword_1EC218080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217EC8);
    sub_1C716A40C(&qword_1EC2168F8, type metadata accessor for Hastings.Feature);
    sub_1C70380C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218080);
  }

  return result;
}

uint64_t sub_1C716A40C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C716A454()
{
  result = qword_1EC218088;
  if (!qword_1EC218088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218088);
  }

  return result;
}

unint64_t sub_1C716A4B4()
{
  result = qword_1EDD06B38;
  if (!qword_1EDD06B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217FF0);
    sub_1C716A538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06B38);
  }

  return result;
}

unint64_t sub_1C716A538()
{
  result = qword_1EDD095A8;
  if (!qword_1EDD095A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD095A8);
  }

  return result;
}

unint64_t sub_1C716A594()
{
  result = qword_1EC218090;
  if (!qword_1EC218090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218090);
  }

  return result;
}

unint64_t sub_1C716A5E8()
{
  result = qword_1EC2180A8;
  if (!qword_1EC2180A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2180A0);
    sub_1C716A66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2180A8);
  }

  return result;
}

unint64_t sub_1C716A66C()
{
  result = qword_1EC2180B0;
  if (!qword_1EC2180B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2180B8);
    sub_1C716A6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2180B0);
  }

  return result;
}

unint64_t sub_1C716A6F8()
{
  result = qword_1EC2180C0;
  if (!qword_1EC2180C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2180C0);
  }

  return result;
}

uint64_t sub_1C716A74C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C716A78C()
{
  result = qword_1EC2180C8;
  if (!qword_1EC2180C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2180C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryGenerationDiagnosticContext.DiagnosticContextError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C716A890()
{
  result = qword_1EC2180D0;
  if (!qword_1EC2180D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2180D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_25()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_32_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_47_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_56_10()
{

  return sub_1C755070C();
}

uint64_t OUTLINED_FUNCTION_60_10()
{

  return sub_1C754DBAC();
}

uint64_t OUTLINED_FUNCTION_64_8()
{
}

uint64_t OUTLINED_FUNCTION_66_14()
{
}

uint64_t OUTLINED_FUNCTION_69_13(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  *(v2 + 14) = a1;
  *v3 = a1;
  *(v2 + 22) = 2080;

  return sub_1C6FB5E28(va1, va);
}

uint64_t OUTLINED_FUNCTION_77_8()
{

  return sub_1C6FC78A4();
}

BOOL OUTLINED_FUNCTION_78_9()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_79_9()
{
}

uint64_t OUTLINED_FUNCTION_80_7()
{
}

uint64_t OUTLINED_FUNCTION_81_9()
{

  return sub_1C71656D8();
}

uint64_t OUTLINED_FUNCTION_96_6()
{

  return sub_1C754DBAC();
}

id OUTLINED_FUNCTION_97_5(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

void *OUTLINED_FUNCTION_101_6(void *a1)
{

  return memcpy(a1, (v1 + 8), 0xF0uLL);
}

uint64_t OUTLINED_FUNCTION_102_7(uint64_t a1, unint64_t a2)
{
  sub_1C70B5C10(a1, a2);
  sub_1C70B5C10(*v2, v2[3]);
  v4 = v2[11];

  return sub_1C70B5C10(v4, v3);
}

id ActivityFeatureCode.intValue.getter()
{
  v0 = ActivityFeatureCode.rawValue.getter();
  v1 = [v0 integerValue];

  return v1;
}

PhotosIntelligence::ActivityFeatureCode_optional __swiftcall ActivityFeatureCode.init(rawValue:)(NSNumber rawValue)
{
  v4 = v1;
  sub_1C6FA7014();
  v5 = rawValue.super.super.isa;
  sub_1C75513CC();
  v6 = OUTLINED_FUNCTION_0_77();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v5;
    sub_1C75513CC();
    v10 = OUTLINED_FUNCTION_0_77();

    if (v10)
    {

      v8 = 1;
    }

    else
    {
      v11 = v9;
      sub_1C75513CC();
      v12 = OUTLINED_FUNCTION_0_77();

      if (v12)
      {

        v8 = 2;
      }

      else
      {
        v13 = v11;
        sub_1C75513CC();
        v14 = OUTLINED_FUNCTION_0_77();

        if (v14)
        {

          v8 = 3;
        }

        else
        {
          v15 = v13;
          sub_1C75513CC();
          v16 = OUTLINED_FUNCTION_0_77();

          if (v16)
          {

            v8 = 4;
          }

          else
          {
            v17 = v15;
            sub_1C75513CC();
            v18 = OUTLINED_FUNCTION_0_77();

            if (v18)
            {

              v8 = 5;
            }

            else
            {
              v19 = v17;
              sub_1C75513CC();
              v20 = OUTLINED_FUNCTION_0_77();

              if (v20)
              {

                v8 = 6;
              }

              else
              {
                v21 = v19;
                sub_1C75513CC();
                v22 = OUTLINED_FUNCTION_0_77();

                if (v22)
                {

                  v8 = 7;
                }

                else
                {
                  v23 = v21;
                  sub_1C75513CC();
                  v24 = OUTLINED_FUNCTION_0_77();

                  if (v24)
                  {

                    v8 = 8;
                  }

                  else
                  {
                    v25 = v23;
                    sub_1C75513CC();
                    v26 = OUTLINED_FUNCTION_0_77();

                    if (v26)
                    {

                      v8 = 9;
                    }

                    else
                    {
                      sub_1C75513CC();
                      v27 = OUTLINED_FUNCTION_0_77();

                      if (v27)
                      {
                        v8 = 10;
                      }

                      else
                      {
                        v8 = 11;
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

  *v4 = v8;
  return result;
}

unint64_t sub_1C716AF0C()
{
  result = qword_1EC2180D8;
  if (!qword_1EC2180D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2180D8);
  }

  return result;
}

uint64_t sub_1C716AF80@<X0>(uint64_t *a1@<X8>)
{
  result = ActivityFeatureCode.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ActivityFeatureCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void __swiftcall FreeformStoryCompletionSync.init(title:subtitle:keyAssetQuery:chapters:traits:)(PhotosIntelligence::FreeformStoryCompletionSync *__return_ptr retstr, Swift::String title, Swift::String subtitle, Swift::String keyAssetQuery, Swift::OpaquePointer chapters, Swift::OpaquePointer traits)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->keyAssetQuery = keyAssetQuery;
  retstr->traits = traits;
  retstr->chapters = chapters;
}

uint64_t FreeformStoryCompletionSync.generableDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v32 = v0[5];
  v33 = v0[4];
  v5 = v0[6];
  v6 = v0[7];
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x6961727420202020, 0xEC000000203A7374);
  v7 = MEMORY[0x1CCA5D090](v5, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v7);

  v8 = OUTLINED_FUNCTION_36_15();
  v9 = OUTLINED_FUNCTION_73_10(v8 & 0xFFFF0000FFFFFFFFLL | 0x732000000000);
  MEMORY[0x1CCA5CD70](v9);
  v10 = *(v6 + 16);
  if (v10)
  {
    v28 = v2;
    v29 = v1;
    v30 = v4;
    v31 = v3;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v11 = (v6 + 64);
    do
    {
      v12 = *(v11 - 4);
      v13 = *(v11 - 3);
      v14 = *(v11 - 2);
      v15 = *(v11 - 1);
      v16 = *v11;
      sub_1C755180C();

      OUTLINED_FUNCTION_79_10();
      v34 = v17;
      MEMORY[0x1CCA5CD70](v12, v13);
      MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C759CD00);
      MEMORY[0x1CCA5CD70](v14, v15);
      OUTLINED_FUNCTION_36_15();
      OUTLINED_FUNCTION_82_9();
      v18 = MEMORY[0x1CCA5D090](v16, MEMORY[0x1E69E6158]);
      MEMORY[0x1CCA5CD70](v18);

      v19 = *(v35 + 16);
      if (v19 >= *(v35 + 24) >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v35 + 16) = v19 + 1;
      v20 = v35 + 16 * v19;
      *(v20 + 32) = 0x6168630920202020;
      *(v20 + 40) = v34;
      v11 += 5;
      --v10;
    }

    while (v10);
    v4 = v30;
    v3 = v31;
    v2 = v28;
    v1 = v29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v21 = sub_1C75505FC();
  v23 = v22;

  MEMORY[0x1CCA5CD70](v21, v23);

  OUTLINED_FUNCTION_79_10();
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](v33, v32);
  v24 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v24 | 0x7469742000000000, 0xEC000000203A656CLL);
  MEMORY[0x1CCA5CD70](v1, v2);
  v25 = OUTLINED_FUNCTION_36_15();
  v26 = OUTLINED_FUNCTION_75_7(v25 & 0xFFFF0000FFFFFFFFLL | 0x732000000000);
  MEMORY[0x1CCA5CD70](v26);
  MEMORY[0x1CCA5CD70](v3, v4);
  return 0;
}

uint64_t FreeformStoryCompletionSync.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x6C74695420202020, 0xEB00000000203A65);
  MEMORY[0x1CCA5CD70](v1, v2);
  v9 = OUTLINED_FUNCTION_36_15();
  v10 = OUTLINED_FUNCTION_75_7(v9 & 0xFFFF0000FFFFFFFFLL | 0x532000000000);
  MEMORY[0x1CCA5CD70](v10);
  MEMORY[0x1CCA5CD70](v3, v4);
  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A12F0);
  MEMORY[0x1CCA5CD70](v5, v6);
  MEMORY[0x1CCA5CD70](0xD00000000000002ALL, 0x80000001C75A1310);
  v11 = MEMORY[0x1CCA5D090](v7, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v11);

  v12 = OUTLINED_FUNCTION_36_15();
  v13 = OUTLINED_FUNCTION_73_10(v12 & 0xFFFF0000FFFFFFFFLL | 0x532000000000);
  MEMORY[0x1CCA5CD70](v13);
  v14 = *(v8 + 16);
  if (v14)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v15 = (v8 + 64);
    do
    {
      v17 = *(v15 - 4);
      v16 = *(v15 - 3);
      v18 = *(v15 - 2);
      v19 = *(v15 - 1);
      v20 = *v15;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C759CCC0);
      MEMORY[0x1CCA5CD70](v17, v16);
      MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C759CCE0);
      MEMORY[0x1CCA5CD70](v18, v19);
      OUTLINED_FUNCTION_36_15();
      OUTLINED_FUNCTION_82_9();
      v21 = MEMORY[0x1CCA5D090](v20, MEMORY[0x1E69E6158]);
      MEMORY[0x1CCA5CD70](v21);

      v22 = *(v28 + 16);
      if (v22 >= *(v28 + 24) >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v28 + 16) = v22 + 1;
      v23 = v28 + 16 * v22;
      *(v23 + 32) = 0;
      *(v23 + 40) = 0xE000000000000000;
      v15 += 5;
      --v14;
    }

    while (v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v24 = sub_1C75505FC();
  v26 = v25;

  MEMORY[0x1CCA5CD70](v24, v26);

  MEMORY[0x1CCA5CD70](23818, 0xE200000000000000);
  return 0;
}

uint64_t FreeformStoryCompletionSync.title.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryCompletionSync.subtitle.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryCompletionSync.keyAssetQuery.getter()
{
  v1 = *(v0 + 32);
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryCompletionSync.story.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 56);
  *(a1 + 8) = 1;
  return sub_1C75504FC();
}

uint64_t sub_1C716B790()
{
  v0 = sub_1C7551B2C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C716B7DC(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x7265766F63;
      break;
    case 3:
      result = 0x737469617274;
      break;
    case 4:
      result = 0x79726F7473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C716B884@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C716B790();
  *a1 = result;
  return result;
}

uint64_t sub_1C716B8B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C716B7DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C716B8E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C716B790();
  *a1 = result;
  return result;
}

uint64_t sub_1C716B910(uint64_t a1)
{
  v2 = sub_1C716CA10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C716B94C(uint64_t a1)
{
  v2 = sub_1C716CA10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void __swiftcall FreeformStoryCompletionSync.synced()(PhotosIntelligence::FreeformStoryCompletionSync *__return_ptr retstr)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v4 = v1[3];
  v7 = v1[2];
  v3 = v7;
  v8 = v4;
  retstr->title = v6[0];
  retstr->subtitle = v2;
  retstr->keyAssetQuery = v3;
  *&retstr->traits._rawValue = v4;
  sub_1C6FDE928(v6, &v5);
}

void static FreeformStoryCompletionSync.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  v12 = a2[6];
  if (v11 || (sub_1C7551DBC() & 1) != 0)
  {
    v13 = v2 == v7 && v4 == v8;
    if (v13 || (sub_1C7551DBC() & 1) != 0)
    {
      v14 = v3 == v9 && v6 == v10;
      if (v14 || (sub_1C7551DBC()) && (sub_1C70020D4(v5, v12))
      {

        sub_1C7002160();
      }
    }
  }
}

uint64_t FreeformStoryCompletionSync.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2180E0);
  OUTLINED_FUNCTION_70_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = v1[2];
  v20 = v1[3];
  v21 = v9;
  v10 = v1[4];
  v18 = v1[5];
  v19 = v10;
  v11 = v1[6];
  v16 = v1[7];
  v17 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C716CA10();
  sub_1C755200C();
  LOBYTE(v24) = 0;
  v12 = v22;
  sub_1C7551CCC();
  if (!v12)
  {
    v13 = v16;
    v14 = v17;
    LOBYTE(v24) = 1;
    sub_1C7551CCC();
    LOBYTE(v24) = 2;
    sub_1C7551CCC();
    v24 = v14;
    v23 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_65();
    v24 = v13;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2180E8);
    sub_1C716CAB8(&qword_1EDD06AF8, sub_1C716CA64);
    OUTLINED_FUNCTION_65();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t FreeformStoryCompletionSync.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2180F0);
  OUTLINED_FUNCTION_70_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C716CA10();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_67_11();
  v6 = sub_1C7551BBC();
  v22 = v7;
  OUTLINED_FUNCTION_67_11();
  v8 = sub_1C7551BBC();
  v21 = v9;
  v19 = v8;
  LOBYTE(v27[0]) = 2;
  OUTLINED_FUNCTION_67_11();
  v18 = sub_1C7551BBC();
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C6FF60E4(&qword_1EDD0CF50);
  OUTLINED_FUNCTION_76_8();
  v17 = v27[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2180E8);
  v28 = 4;
  sub_1C716CAB8(&qword_1EC2180F8, sub_1C716CB30);
  OUTLINED_FUNCTION_76_8();
  v11 = OUTLINED_FUNCTION_19_26();
  v12(v11);
  v16 = v29;
  *&v23 = v6;
  *(&v23 + 1) = v22;
  *&v24 = v19;
  *(&v24 + 1) = v21;
  *&v25 = v18;
  *(&v25 + 1) = v20;
  *&v26 = v27[0];
  *(&v26 + 1) = v29;
  v13 = v24;
  *a2 = v23;
  a2[1] = v13;
  v14 = v26;
  a2[2] = v25;
  a2[3] = v14;
  sub_1C6FDE928(&v23, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27[0] = v6;
  v27[1] = v22;
  v27[2] = v19;
  v27[3] = v21;
  v27[4] = v18;
  v27[5] = v20;
  v27[6] = v17;
  v27[7] = v16;
  return sub_1C6FB5454(v27);
}

uint64_t sub_1C716C108()
{
  v1 = FreeformStoryCompletionSync.title.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C716C168()
{
  v1 = FreeformStoryCompletionSync.subtitle.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C716C1C8()
{
  v1 = FreeformStoryCompletionSync.keyAssetQuery.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C716C228()
{
  v1 = FreeformStoryCompletionSync.traits.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C716C288(uint64_t a1)
{
  FreeformStoryCompletionSync.story.getter(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C716C2EC(PhotosIntelligence::FreeformStoryCompletionSync *retstr)
{
  FreeformStoryCompletionSync.synced()(retstr);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t FreeformStoryChapterCompletionAsyncIterator.next()(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C716C3A8, 0, 0);
}

uint64_t sub_1C716C3A8()
{
  sub_1C7055658(*(v0 + 232), v0 + 16);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    sub_1C6F699F8((v0 + 16), v0 + 64);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 64, *(v0 + 88));
    sub_1C755150C();
    v3 = *(v0 + 136);
    v7 = *(v0 + 104);
    v8 = *(v0 + 120);
    sub_1C70556B4(v1);
    sub_1C6FB5E28(v0 + 64, v1);
    *(v1 + 40) = 1;
    *v2 = v7;
    *(v2 + 16) = v8;
    *(v2 + 32) = v3;
    __swift_destroy_boxed_opaque_existential_1(v0 + 64);
    OUTLINED_FUNCTION_43();

    return v4();
  }

  else
  {
    sub_1C6F699F8((v0 + 16), v0 + 144);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 144, *(v0 + 168));
    v6 = swift_task_alloc();
    *(v0 + 240) = v6;
    *v6 = v0;
    v6[1] = sub_1C716C538;

    return MEMORY[0x1EEE6D8C8](v0 + 184);
  }
}

uint64_t sub_1C716C538()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 248) = v0;

  if (v0)
  {
    v5 = sub_1C716C6DC;
  }

  else
  {
    v5 = sub_1C716C63C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C716C63C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v6 = *(v0 + 184);
  v7 = *(v0 + 200);
  sub_1C70556B4(v2);
  sub_1C6FB5E28(v0 + 144, v2);
  *(v2 + 40) = 0;
  *v1 = v6;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C716C6DC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C716C738()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v3[1] = sub_1C6F738F4;

  return FreeformStoryChapterCompletionAsyncIterator.next()(v1);
}

uint64_t sub_1C716C7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C716C894;

  return (sub_1C746C320)(a1, a2, a3);
}

uint64_t sub_1C716C894()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1C716C9A8(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1C755180C();
  return 0;
}

uint64_t sub_1C716C9F0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C716EFFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1C716CA10()
{
  result = qword_1EDD08D38[0];
  if (!qword_1EDD08D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD08D38);
  }

  return result;
}

unint64_t sub_1C716CA64()
{
  result = qword_1EDD07E20;
  if (!qword_1EDD07E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07E20);
  }

  return result;
}

uint64_t sub_1C716CAB8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2180E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C716CB30()
{
  result = qword_1EC218100;
  if (!qword_1EC218100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218100);
  }

  return result;
}

unint64_t sub_1C716CB88()
{
  result = qword_1EDD08B08;
  if (!qword_1EDD08B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08B08);
  }

  return result;
}

uint64_t dispatch thunk of FreeformStoryCompletion.title.getter()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_32_13(v0, v1);
  OUTLINED_FUNCTION_15_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_12_34(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FreeformStoryCompletion.subtitle.getter()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_32_13(v0, v1);
  OUTLINED_FUNCTION_15_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_12_34(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FreeformStoryCompletion.keyAssetQuery.getter()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_32_13(v0, v1);
  OUTLINED_FUNCTION_15_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_12_34(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FreeformStoryCompletion.traits.getter()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_32_13(v0, v1);
  OUTLINED_FUNCTION_15_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_12_34(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FreeformStoryCompletion.story.getter()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

uint64_t dispatch thunk of FreeformStoryCompletion.synced()()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
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

uint64_t sub_1C716D1E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 1)
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

uint64_t sub_1C716D224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C716D280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C716D2BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C716D308(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

_BYTE *sub_1C716D33C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C716D418()
{
  result = qword_1EC218108;
  if (!qword_1EC218108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218108);
  }

  return result;
}

unint64_t sub_1C716D470()
{
  result = qword_1EDD08D28;
  if (!qword_1EDD08D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08D28);
  }

  return result;
}

unint64_t sub_1C716D4C8()
{
  result = qword_1EDD08D30;
  if (!qword_1EDD08D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08D30);
  }

  return result;
}

void sub_1C716D568()
{
  OUTLINED_FUNCTION_43_16();
  sub_1C71733EC(v1, v2, v3, v4, v5, v6, v7, sub_1C741E1A8);
  *v0 = v8;
}

void *sub_1C716D5B0(void *a1, int64_t a2, char a3)
{
  result = sub_1C716F178(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C716D648(size_t a1, int64_t a2, char a3)
{
  result = sub_1C716F348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716D668()
{
  OUTLINED_FUNCTION_42_18();
  sub_1C7173E68();
  *v0 = v1;
}

void sub_1C716D7A4()
{
  OUTLINED_FUNCTION_41_15();
  sub_1C7173930();
  *v0 = v1;
}

void *sub_1C716D7F8(void *a1, int64_t a2, char a3)
{
  result = sub_1C716F6E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716D818()
{
  OUTLINED_FUNCTION_40_17();
  sub_1C7171050();
  *v0 = v1;
}

void sub_1C716D854()
{
  OUTLINED_FUNCTION_39_17();
  sub_1C7172A74();
  *v0 = v1;
}

uint64_t sub_1C716D920(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C716F84C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716D940()
{
  OUTLINED_FUNCTION_37_1();
  sub_1C716F9C4();
  *v0 = v1;
}

void sub_1C716D97C()
{
  OUTLINED_FUNCTION_37_1();
  sub_1C716F9C4();
  *v0 = v1;
}

uint64_t sub_1C716D9B8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C716FA64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716DB00(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C716FB6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716DB20(void *a1, int64_t a2, char a3)
{
  result = sub_1C716FC84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716DB40(void *a1, int64_t a2, char a3)
{
  result = sub_1C716FD94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716DBAC()
{
  OUTLINED_FUNCTION_53_2();
  sub_1C7173200();
  *v0 = v1;
}

void sub_1C716DBE8()
{
  OUTLINED_FUNCTION_45_0();
  sub_1C71719E0();
  *v0 = v1;
}

void sub_1C716DC24()
{
  OUTLINED_FUNCTION_57_12();
  sub_1C71733EC(v1, v2, v3, v4, v5, v6, v7, sub_1C741E4FC);
  *v0 = v8;
}

void sub_1C716DC6C()
{
  OUTLINED_FUNCTION_56_11();
  sub_1C71700D4();
  *v0 = v1;
}

void sub_1C716DCA8()
{
  OUTLINED_FUNCTION_54_15();
  sub_1C71733EC(v1, v2, v3, v4, v5, v6, v7, sub_1C741E514);
  *v0 = v8;
}

void sub_1C716DCF0()
{
  OUTLINED_FUNCTION_53_2();
  sub_1C7173200();
  *v0 = v1;
}

void sub_1C716DD2C()
{
  OUTLINED_FUNCTION_52_13();
  sub_1C71700D4();
  *v0 = v1;
}

uint64_t sub_1C716DD68(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C7170174(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716DE18()
{
  OUTLINED_FUNCTION_51_13();
  sub_1C7173BC8();
  *v0 = v1;
}

uint64_t sub_1C716DF44(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C71704D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716DF84()
{
  OUTLINED_FUNCTION_50_14();
  sub_1C71733EC(v1, v2, v3, v4, v5, v6, v7, sub_1C741E628);
  *v0 = v8;
}

uint64_t sub_1C716E038(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C71708F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716E058()
{
  OUTLINED_FUNCTION_49_12();
  sub_1C71733EC(v1, v2, v3, v4, v5, v6, v7, sub_1C741E398);
  *v0 = v8;
}

void *sub_1C716E0EC(void *a1, int64_t a2, char a3)
{
  result = sub_1C7170A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716E164()
{
  OUTLINED_FUNCTION_48_13();
  sub_1C7173930();
  *v0 = v1;
}

void *sub_1C716E23C(void *a1, int64_t a2, char a3)
{
  result = sub_1C7170F10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716E25C()
{
  OUTLINED_FUNCTION_40_17();
  sub_1C7171050();
  *v0 = v1;
}

uint64_t sub_1C716E2F0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C71710FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E310(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C7171214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E3C0(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C71713E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716E42C(void *a1, int64_t a2, char a3)
{
  result = sub_1C7171500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E44C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C7171610(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E46C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C7171758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716E48C(void *a1, int64_t a2, char a3)
{
  result = sub_1C71718A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716E538()
{
  OUTLINED_FUNCTION_46_14();
  sub_1C71733EC(v1, v2, v3, v4, v5, v6, v7, sub_1C741E3B0);
  *v0 = v8;
}

void *sub_1C716E5CC(void *a1, int64_t a2, char a3)
{
  result = sub_1C7171C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E5EC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C7171E28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716E60C(void *a1, int64_t a2, char a3)
{
  result = sub_1C7171F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716E708(void *a1, int64_t a2, char a3)
{
  result = sub_1C71720F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E728(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C71722C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716E748(void *a1, int64_t a2, char a3)
{
  result = sub_1C71723CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716E7F8()
{
  OUTLINED_FUNCTION_45_0();
  sub_1C71719E0();
  *v0 = v1;
}

void sub_1C716E9B0()
{
  OUTLINED_FUNCTION_44_14();
  sub_1C71727E0();
  *v0 = v1;
}

uint64_t sub_1C716EA50(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C717295C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716EB00(void *a1, int64_t a2, char a3)
{
  result = sub_1C7172B30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716EC4C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C7172CFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716EC6C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C7172E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C716EC8C(size_t a1, int64_t a2, char a3)
{
  result = sub_1C7172F1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716ECAC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C71730E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716ED18(void *a1, int64_t a2, char a3)
{
  result = sub_1C71732A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716ED90(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1C7173584(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716EF70(void *a1, int64_t a2, char a3)
{
  result = sub_1C71739EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716EFDC(void *a1, int64_t a2, char a3)
{
  result = sub_1C7173C68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716EFFC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218330);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C6F9EE08((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C716F178(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C716F288()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE0);
      v6 = OUTLINED_FUNCTION_44_2();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D14(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

size_t sub_1C716F348(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218350);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215148) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215148) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1C741E2EC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1C716F56C()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040);
      v6 = OUTLINED_FUNCTION_44_2();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C741E370(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_36_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C716F620()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217380);
      v6 = OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_13_0(v6);
      OUTLINED_FUNCTION_22_30(v7 / 16);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C6F9EE08(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155C0);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C716F6E4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218260);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218268);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C716F84C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218250);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1C741E3C8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218258);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C716F9C4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11);
      v12 = OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_15_9(v12);
      if (v2)
      {
LABEL_8:
        v13 = OUTLINED_FUNCTION_22_0();
        v1(v13);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_135_0();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C716FA64(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DB0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 104);
      if (v5)
      {
LABEL_13:
        sub_1C741E3EC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C716FB6C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2181D0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 112);
      if (v5)
      {
LABEL_13:
        sub_1C741E484((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216578);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C716FC84(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218200);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218208);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C716FD94(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C7423D18(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C716FEAC()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D88);
      v6 = OUTLINED_FUNCTION_44_2();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C741E4D4(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D90);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C71700D4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11);
      v12 = OUTLINED_FUNCTION_67_0();
      OUTLINED_FUNCTION_15_9(v12);
      if (v2)
      {
LABEL_8:
        v13 = OUTLINED_FUNCTION_22_0();
        v1(v13);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_135_0();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C7170174(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150D0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        sub_1C741E320((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C717029C()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217250);
      v6 = OUTLINED_FUNCTION_13_36();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F58);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7170358()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217218);
      v6 = OUTLINED_FUNCTION_13_36();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218188);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7170414()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217240);
      v6 = OUTLINED_FUNCTION_44_2();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C741E52C(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2181B8);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C71704D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218168);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C7423D00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218170);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C71705E4()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218178);
      v6 = OUTLINED_FUNCTION_13_36();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218180);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C71706DC()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39_3();
  if (v3)
  {
    OUTLINED_FUNCTION_6_1();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_37_4();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_6();
    }
  }

  OUTLINED_FUNCTION_23_22();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217210);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_14_32();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_31_17();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_22_30(v12 / v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_191();
  if (v1)
  {
    v15 = OUTLINED_FUNCTION_30_20(v14);
    sub_1C741E640(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_17();
  }

  OUTLINED_FUNCTION_135_0();
}

void sub_1C7170838()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218190);
      v6 = OUTLINED_FUNCTION_13_36();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218198);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C71708F4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C70);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C6F9EE28((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C78);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C7170A40(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218228);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218230);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7170B50()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39_3();
  if (v3)
  {
    OUTLINED_FUNCTION_6_1();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_37_4();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_6();
    }
  }

  OUTLINED_FUNCTION_23_22();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217368);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_14_32();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_31_17();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_22_30(v12 / v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_191();
  if (v1)
  {
    v15 = OUTLINED_FUNCTION_30_20(v14);
    sub_1C741E684(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_17();
  }

  OUTLINED_FUNCTION_135_0();
}

void sub_1C7170CD4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39_3();
  if (v3)
  {
    OUTLINED_FUNCTION_6_1();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_37_4();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_6();
    }
  }

  OUTLINED_FUNCTION_23_22();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218320);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_14_32();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_31_17();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_22_30(v12 / v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_191();
  if (v1)
  {
    v15 = OUTLINED_FUNCTION_30_20(v14);
    sub_1C741E698(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_17();
  }

  OUTLINED_FUNCTION_135_0();
}

void sub_1C7170E58()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215010);
      v6 = OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_13_0(v6);
      OUTLINED_FUNCTION_22_30(v7 / 8);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C6F9A598(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_36_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C7170F10(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7171050()
{
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11);
      v12 = OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_16_26(v12);
      OUTLINED_FUNCTION_26_24(v13 / 32);
      if (v2)
      {
LABEL_8:
        v14 = OUTLINED_FUNCTION_22_0();
        v1(v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C71710FC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218310);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C6F9A570((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218318);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7171214(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C7423D08((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218D40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C717132C()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F38);
      v6 = OUTLINED_FUNCTION_13_36();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D08(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F40);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C71713E8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2181F0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1C741E414((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2181F8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C7171500(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F68);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7171610(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1C741E414((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217340);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7171758(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215030);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C7423D14((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C71718A0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215048);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C71719E0()
{
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11);
      v12 = swift_allocObject();
      OUTLINED_FUNCTION_16_26(v12);
      OUTLINED_FUNCTION_26_24(v13 / 64);
      if (v2)
      {
LABEL_8:
        v14 = OUTLINED_FUNCTION_22_0();
        v1(v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7171A94()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215090);
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_13_0(v6);
      OUTLINED_FUNCTION_22_30(v7 / 192);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C741E6AC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_36_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7171B94()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182F0);
      v6 = OUTLINED_FUNCTION_44_2();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C741E414(v7, v8, v9);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217AC0);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C7171C54(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215700);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C7423D18(a4 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218218);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7171D6C()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C98);
      v6 = OUTLINED_FUNCTION_13_36();
      OUTLINED_FUNCTION_0_0(v6);
      if (v1)
      {
LABEL_8:
        v7 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v7);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CA0);
    OUTLINED_FUNCTION_19_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}