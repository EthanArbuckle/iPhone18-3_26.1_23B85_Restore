unint64_t sub_1C74378EC()
{
  result = qword_1EC21BE50;
  if (!qword_1EC21BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE50);
  }

  return result;
}

unint64_t sub_1C7437940()
{
  result = qword_1EC21BE58;
  if (!qword_1EC21BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE58);
  }

  return result;
}

uint64_t sub_1C7437994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7437A04()
{
  result = qword_1EC216378;
  if (!qword_1EC216378)
  {
    sub_1C754F14C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216378);
  }

  return result;
}

uint64_t AssetCurationPromptGenerator.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AssetCurationPromptGenerator.init(with:)(a1);
  return v2;
}

void __swiftcall CurationPromptAsset.init(uuid:cacheId:description:)(PhotosIntelligence::CurationPromptAsset *__return_ptr retstr, Swift::String uuid, Swift::String cacheId, Swift::String description)
{
  retstr->uuid = uuid;
  retstr->cacheId = cacheId;
  retstr->description = description;
}

uint64_t sub_1C7437AAC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  countAndFlagsBits = a5;
  v170._rawValue = a3;
  v165._rawValue = a2;
  v156 = a8;
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v173 = v13;
  v174._countAndFlagsBits = v12;
  MEMORY[0x1EEE9AC00](v12);
  v169 = v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[1];
  v155 = a1[2];
  v21 = a1[3];
  v22 = a1[6];
  v163 = a1[5];
  v164 = v20;
  v167 = v22;
  v23 = a1[8];
  v168 = a1[7];
  v24 = a1[10];
  v160 = a1[9];
  v161 = v21;
  v159 = v24;
  v26 = a1[11];
  v25 = a1[12];
  v157 = v23;
  v158 = v26;
  v162 = v25;
  LODWORD(v166) = *(a4 + 1);
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);
  sub_1C754F1CC();
  object = v174._object;
  sub_1C754F2CC();
  if (object)
  {
    __swift_project_boxed_opaque_existential_1(a6, a6[3]);
    sub_1C754F1AC();
    (*(v16 + 8))(v19, v175);
    return (*(v173 + 8))(a7, v174._countAndFlagsBits);
  }

  else
  {
    v152 = a6;
    v153 = a7;
    v149 = v19;
    v150 = v16;
    v174._object = *(v172 + 16);
    v29 = *(v174._object + 16);
    v30 = *(v29 + 16);
    v31 = MEMORY[0x1E69E7CC0];
    v151 = 0;
    if (v30)
    {
      __dst[0] = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C6F7ED9C();
      v31 = __dst[0];
      v32 = v29 + 40;
      do
      {
        v33 = sub_1C75506FC();
        v35 = v34;
        __dst[0] = v31;
        v36 = *(v31 + 16);
        if (v36 >= *(v31 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v31 = __dst[0];
        }

        *(v31 + 16) = v36 + 1;
        v37 = v31 + 16 * v36;
        *(v37 + 32) = v33;
        *(v37 + 40) = v35;
        v32 += 16;
        --v30;
      }

      while (v30);
    }

    v188 = v31;
    v38 = v174._object;
    if (*(v174._object + 152))
    {
      __swift_mutable_project_boxed_opaque_existential_0(countAndFlagsBits, *(countAndFlagsBits + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C72AF5EC(&qword_1EDD06AA8);
      sub_1C72AF5EC(&qword_1EDD06A98);
      v38 = v174._object;
      sub_1C755062C();
      v31 = v188;
    }

    v39 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v31, 1, 0);
    v41 = v40;

    v42 = OBJC_IVAR____TtC18PhotosIntelligence28AssetCurationPromptGenerator_logger;
    sub_1C75504FC();
    v154 = v42;
    v43 = sub_1C754FEEC();
    v44 = sub_1C755117C();

    if (os_log_type_enabled(v43, v44))
    {
      OUTLINED_FUNCTION_13_3();
      v45 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v46 = swift_slowAlloc();
      __dst[0] = v46;
      *v45 = 136642819;
      *(v45 + 4) = sub_1C6F765A4(v39, v41, __dst);
      OUTLINED_FUNCTION_46_0();
      _os_log_impl(v47, v48, v49, v50, v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v148 = v39;
    memcpy(__dst, v38 + 40, 0x50uLL);
    v51 = objc_opt_self();
    sub_1C7027A20(__dst, v186);
    v52 = [v51 usePersonAndPetExtendedTokensInAssetCuration];
    memcpy(v186, __dst, sizeof(v186));
    v53 = sub_1C75504FC();
    v54 = sub_1C71CD964(v53);
    LOBYTE(v51) = [v51 shufflePromptParameters];
    type metadata accessor for DynamicLifeContextGenerator();
    swift_allocObject();
    v55 = DynamicLifeContextGenerator.init(extendedTokenCollection:characterSummaries:shufflePromptParameters:)(v186, v54, v51);
    v56 = sub_1C754FEEC();
    sub_1C755117C();
    v57 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = v55;
      v60 = swift_slowAlloc();
      *v60 = 67109120;
      *(v60 + 4) = v52;
      OUTLINED_FUNCTION_46_0();
      _os_log_impl(v61, v62, v63, v64, v60, 8u);
      v55 = v59;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    LOBYTE(v177) = 3;
    v65 = *(v174._object + 17);
    v66 = v169;
    v67 = v153;
    sub_1C754F2BC();
    LOBYTE(v176[0]) = v52;
    v69 = v151;
    v68 = v152;
    sub_1C73CD040(&v177, v65, countAndFlagsBits, v152, v66, v176, v55);
    if (v69)
    {

      __swift_project_boxed_opaque_existential_1(v68, v68[3]);
      sub_1C754F1AC();
      v72 = OUTLINED_FUNCTION_1_135();
      v73(v72);
      OUTLINED_FUNCTION_6_106();
      return v101(v67, v174._countAndFlagsBits);
    }

    else
    {
      v74 = v71;
      countAndFlagsBits = v70;
      sub_1C75504FC();
      v75 = sub_1C754FEEC();
      v76 = sub_1C755117C();

      v77 = os_log_type_enabled(v75, v76);
      v147[1] = v55;
      if (v77)
      {
        OUTLINED_FUNCTION_13_3();
        v78 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v79 = swift_slowAlloc();
        v177 = v79;
        *v78 = 136642819;
        *(v78 + 4) = sub_1C6F765A4(countAndFlagsBits, v74, &v177);
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v80, v81, v82, v83, v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v79);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v84 = v166;
      v85 = *(v174._object + 2);
      v86 = [v85 string];
      v87 = sub_1C755068C();
      v89 = v88;

      v177 = v87;
      v178 = v89;
      v90 = sub_1C755097C();
      v92 = v91;
      v184 = v90;
      v185 = v91;
      v169 = v85;
      if (v84)
      {
        v93 = AssetCurationPromptGenerator.generatePromptAnnotation(for:characterSummaryByCharacterUUID:)(v85, v170);
        if (v93.value._object)
        {
          MEMORY[0x1CCA5CD70](v93.value._countAndFlagsBits);

          v90 = v184;
          v92 = v185;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C757B6D0;
      *(inited + 32) = 0x6D6F725072657375;
      *(inited + 40) = 0xEA00000000007470;
      *(inited + 48) = v90;
      *(inited + 56) = v92;
      *(inited + 64) = 0x737469617274;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = v148;
      *(inited + 88) = v41;
      *(inited + 96) = 0xD000000000000012;
      *(inited + 104) = 0x80000001C75AD1D0;
      *(inited + 112) = countAndFlagsBits;
      *(inited + 120) = v74;
      *(inited + 128) = 0x74695479726F7473;
      *(inited + 136) = 0xEA0000000000656CLL;
      v95 = v174._object;
      v96 = *(v174._object + 4);
      v177 = *(v174._object + 3);
      v178 = v96;
      sub_1C75504FC();
      *(inited + 144) = sub_1C755097C();
      *(inited + 152) = v97;
      *(inited + 160) = 0xD000000000000010;
      *(inited + 168) = 0x80000001C75A2DD0;
      v177 = v95[15];
      *(inited + 176) = sub_1C7551D8C();
      *(inited + 184) = v98;
      strcpy((inited + 192), "fallbackQuery");
      *(inited + 206) = -4864;
      v99 = v168;
      *(inited + 208) = v167;
      *(inited + 216) = v99;
      *(inited + 224) = 0xD000000000000015;
      *(inited + 232) = 0x80000001C759DC30;
      *(inited + 240) = 0;
      *(inited + 248) = 0xE000000000000000;
      sub_1C75504FC();
      v100 = sub_1C75504DC();
      sub_1C75504FC();
      StoryPrompt.init(promptTemplate:bindings:usesCustomSystemPrompt:)(2, v100, 0, &v177);
      v170._rawValue = 0x80000001C759DC30;
      v176[0] = v177;
      v176[1] = v178;
      v176[2] = v179;
      v176[3] = v180;
      v176[4] = v181;
      v176[5] = v182;
      v176[6] = v183;
      countAndFlagsBits = StoryPrompt.fullyRendered()()._countAndFlagsBits;

      sub_1C754F2DC();
      v102 = static LLMWrapper.robustOverestimatedTokenCount(in:)();

      v103 = *(v174._object + 18);
      v104 = v103 - v102;
      if (__OFSUB__(v103, v102))
      {
        __break(1u);
      }

      else
      {
        v105 = v172;

        v106 = sub_1C754FEEC();
        sub_1C755117C();
        v107 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v107, v108))
        {
          OUTLINED_FUNCTION_98();
          v109 = swift_slowAlloc();
          *v109 = 134218496;
          *(v109 + 4) = *(v174._object + 18);

          *(v109 + 12) = 2048;
          *(v109 + 14) = v102;
          *(v109 + 22) = 2048;
          *(v109 + 24) = v104;
          OUTLINED_FUNCTION_46_0();
          _os_log_impl(v110, v111, v112, v113, v109, 0x20u);
          v105 = v172;
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {
        }

        v114 = v150;
        v115 = v175;
        AssetCurationPromptGenerator.assetDescriptionString(from:tokenLimit:)(v165, v104);
        if (v116)
        {

          OUTLINED_FUNCTION_0_182();
          (*(v114 + 8))(v105, v115);
          OUTLINED_FUNCTION_6_106();
          v118 = v153;
          v119 = v174._countAndFlagsBits;
        }

        else
        {
          swift_isUniquelyReferenced_nonNull_native();
          v177 = v100;
          sub_1C6FC80A4();
          StoryPrompt.init(promptTemplate:bindings:usesCustomSystemPrompt:)(2, v177, 0, &v177);
          v120 = v178;
          v121 = v179;
          v122 = v180;
          v124 = v181;
          v123 = v182;
          v125 = v183;
          v173 = v177;
          v174 = StoryPrompt.fullyRendered()();
          sub_1C754F2EC();
          v151 = 0;
          v148 = v124;
          v153 = v121;
          v166 = v125;
          v167 = v123;
          v170._rawValue = v122;
          countAndFlagsBits = v120;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v126 = v161;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v165._rawValue = v157;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v127 = sub_1C754FEEC();
          v128 = sub_1C755117C();

          v129 = v128;

          if (os_log_type_enabled(v127, v128))
          {
            v130 = swift_slowAlloc();
            v177 = swift_slowAlloc();
            *v130 = 136643075;
            sub_1C75504FC();
            v131 = sub_1C6F765A4(v155, v126, &v177);

            *(v130 + 4) = v131;
            *(v130 + 12) = 2085;
            *(v130 + 14) = sub_1C6F765A4(v174._countAndFlagsBits, v174._object, &v177);
            _os_log_impl(&dword_1C6F5C000, v127, v129, "[AssetCurationLLM] Generated prompt for chapter '%{sensitive}s': %{sensitive}s)", v130, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          v132 = v156;
          v133 = v151;
          v134 = static LLMWrapper.robustOverestimatedTokenCount(in:)();
          v135 = v169;
          v136 = v166;
          v137 = v173;
          if (v133)
          {
          }

          else
          {
            v138 = v134;

            v139 = sub_1C754FEEC();
            v140 = sub_1C755117C();
            v141 = OUTLINED_FUNCTION_72();
            if (os_log_type_enabled(v141, v142))
            {
              OUTLINED_FUNCTION_13_3();
              v143 = swift_slowAlloc();
              *v143 = 134217984;
              *(v143 + 4) = v138;
              _os_log_impl(&dword_1C6F5C000, v139, v140, "Prompt token count: %ld", v143, 0xCu);
              v135 = v169;
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            v144 = countAndFlagsBits;
            *v132 = v137;
            v132[1] = v144;
            rawValue = v170._rawValue;
            v132[2] = v153;
            v132[3] = rawValue;
            v146 = v167;
            v132[4] = v148;
            v132[5] = v146;
            v132[6] = v136;
          }

          OUTLINED_FUNCTION_0_182();
          v118 = OUTLINED_FUNCTION_1_135();
        }

        return v117(v118, v119);
      }
    }
  }

  return result;
}

uint64_t sub_1C7438B24(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = sub_1C755081C();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t sub_1C7438B8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64496568636163 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C7438CA0(char a1)
{
  if (!a1)
  {
    return 1684632949;
  }

  if (a1 == 1)
  {
    return 0x64496568636163;
  }

  return 0x7470697263736564;
}

uint64_t sub_1C7438D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7438B8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7438D28(uint64_t a1)
{
  v2 = sub_1C7439074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7438D64(uint64_t a1)
{
  v2 = sub_1C7439074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurationPromptAsset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE70);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  v9 = v1[2];
  v13[3] = v1[3];
  v13[4] = v9;
  v10 = v1[4];
  v13[1] = v1[5];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7439074();
  sub_1C755200C();
  v16 = 0;
  v11 = v13[5];
  sub_1C7551CCC();
  if (!v11)
  {
    v15 = 1;
    sub_1C7551CCC();
    v14 = 2;
    sub_1C7551CCC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t AssetCurationPromptGenerator.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t AssetCurationPromptGenerator.init(with:)(uint64_t a1)
{
  sub_1C754FEFC();
  *(v1 + 16) = a1;
  return v1;
}

unint64_t sub_1C7439074()
{
  result = qword_1EDD0A650;
  if (!qword_1EDD0A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A650);
  }

  return result;
}

Swift::String_optional __swiftcall AssetCurationPromptGenerator.generatePromptAnnotation(for:characterSummaryByCharacterUUID:)(NSAttributedString a1, Swift::OpaquePointer characterSummaryByCharacterUUID)
{
  v4 = *MEMORY[0x1E6978F98];
  v5 = [(objc_class *)a1.super.isa string];
  v6 = sub_1C755068C();
  v8 = v7;

  v60 = MEMORY[0x1E69E7CC0];
  v9 = [(objc_class *)a1.super.isa length];
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v8;
  v10[4] = v2;
  v10[5] = &v60;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C743A294;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1C71CCBD4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C743BBE4;
  aBlock[3] = &block_descriptor_41;
  v12 = _Block_copy(aBlock);
  sub_1C75504FC();

  [(objc_class *)a1.super.isa enumerateAttribute:v4 inRange:0 options:v9 usingBlock:0, v12];
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v56 = v4;
    v15 = v60;
    v16 = *(v60 + 16);
    if (v16)
    {
      isUniquelyReferenced_nonNull_native = sub_1C75504FC();
      v17 = 0;
      v18 = v15 + 48;
      v57 = MEMORY[0x1E69E7CC0];
LABEL_4:
      v19 = (v18 + 24 * v17);
      while (v16 != v17)
      {
        if (v17 >= *(v15 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        ++v17;
        v20 = v19 + 3;
        v22 = *(v19 - 1);
        v21 = *v19;
        v23 = *(v19 - 2);
        sub_1C75504FC();
        sub_1C75504FC();
        v24._rawValue = v21;
        v25._rawValue = characterSummaryByCharacterUUID._rawValue;
        v26 = sub_1C7439D64(v23, v22, v24, v2, v25);
        v28 = v27;

        v19 = v20;
        if (v28)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v29 = v57;
          }

          else
          {
            sub_1C6FB1814();
            v29 = isUniquelyReferenced_nonNull_native;
          }

          v30 = *(v29 + 16);
          if (v30 >= *(v29 + 24) >> 1)
          {
            sub_1C6FB1814();
            v29 = isUniquelyReferenced_nonNull_native;
          }

          *(v29 + 16) = v30 + 1;
          v57 = v29;
          v31 = v29 + 16 * v30;
          *(v31 + 32) = v26;
          *(v31 + 40) = v28;
          v18 = v15 + 48;
          goto LABEL_4;
        }
      }

      if (!*(v57 + 16))
      {

        goto LABEL_22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C755BAB0;
      aBlock[0] = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C72AF5EC(&qword_1EDD0CF58);
      v33 = sub_1C75505FC();
      v35 = v34;

      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = sub_1C6F6D524();
      *(v32 + 32) = v33;
      *(v32 + 40) = v35;
      v36 = sub_1C75506BC();
      v38 = v37;
      sub_1C75504FC();
      v39 = sub_1C754FEEC();
      v40 = sub_1C75511BC();

      if (os_log_type_enabled(v39, v40))
      {
        OUTLINED_FUNCTION_13_3();
        v41 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v41 = 136642819;
        *(v41 + 4) = sub_1C6F765A4(v36, v38, aBlock);
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v43, v44, v45, v46, v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }
    }

    else
    {

      v47 = sub_1C754FEEC();
      sub_1C75511BC();
      v48 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        OUTLINED_FUNCTION_46_0();
        _os_log_impl(v51, v52, v53, v54, v50, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

LABEL_22:
      v36 = 0;
      v38 = 0;
    }

    isUniquelyReferenced_nonNull_native = v36;
    v14 = v38;
  }

  result.value._object = v14;
  result.value._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AssetCurationPromptGenerator.assetDescriptionString(from:tokenLimit:)(Swift::OpaquePointer from, Swift::Int tokenLimit)
{
  v3 = v2;
  v6 = sub_1C754FEEC();
  v7 = sub_1C755117C();
  v8 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_13_3();
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = tokenLimit;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "Processing asset description with tokenLimit: %ld", v10, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  if (tokenLimit < 1)
  {
    sub_1C743A2A0();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  else
  {
    v12 = 0;
    v36 = 0;
    v37 = 0xE000000000000000;
    v38 = *(from._rawValue + 2);
    for (i = (from._rawValue + 72); ; i += 6)
    {
      if (v38 == v12)
      {
        v12 = v38;
        goto LABEL_17;
      }

      v14 = *(i - 1);
      v7 = *i;
      v15 = *(i - 2);
      v35[0] = *(i - 3);
      v35[1] = v15;
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v14, v7);
      swift_bridgeObjectRelease_n();

      MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
      v16 = v15;
      v17 = static LLMWrapper.robustOverestimatedTokenCount(in:)();
      if (v3)
      {

        goto LABEL_13;
      }

      v18 = v17;
      v19 = static LLMWrapper.robustOverestimatedTokenCount(in:)();
      v3 = 0;
      v21 = v19;
      if (__OFADD__(v19, v18))
      {
        __break(1u);
        goto LABEL_21;
      }

      if ((v19 + v18) > tokenLimit)
      {
        break;
      }

      MEMORY[0x1CCA5CD70](v35[0], v16);

      ++v12;
    }

    v23 = sub_1C754FEEC();
    v24 = sub_1C755117C();
    v25 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_98();
      v27 = swift_slowAlloc();
      *v27 = 134218496;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v18;
      *(v27 + 22) = 2048;
      *(v27 + 24) = tokenLimit;
      _os_log_impl(&dword_1C6F5C000, v23, v24, "Reached token limit. CurrentTokenCount:%ld + DescriptionTokenCount:%ld > %ld", v27, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

LABEL_17:
    sub_1C7438B24(v11);

    tokenLimit = v36;
    v7 = v37;
    sub_1C75504FC();
    sub_1C75504FC();
    v28 = sub_1C754FEEC();
    v29 = sub_1C755117C();
    v30 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v30, v31))
    {
      OUTLINED_FUNCTION_98();
      v32 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v33 = swift_slowAlloc();
      v35[0] = v33;
      *v32 = 134218499;
      *(v32 + 4) = v12;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v38;

      *(v32 + 22) = 2085;
      *(v32 + 24) = sub_1C6F765A4(tokenLimit, v7, v35);
      _os_log_impl(&dword_1C6F5C000, v28, v29, "Processed %ld asset descriptions out of %ld: %{sensitive}s", v32, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }
  }

LABEL_13:
  v19 = tokenLimit;
  v20 = v7;
LABEL_21:
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

uint64_t AssetCurationPromptGenerator.deinit()
{

  v1 = OBJC_IVAR____TtC18PhotosIntelligence28AssetCurationPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t AssetCurationPromptGenerator.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18PhotosIntelligence28AssetCurationPromptGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

void sub_1C7439B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v10 = static StoryGenerationUtilities.substring(of:in:)(a5, a6, a2, a3);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_1C7329154(a1, v26);
    if (!v27)
    {

      sub_1C6FE32F4(v26);
      return;
    }

    sub_1C73291C4();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v14 = [v25 QUToken];
    if (v14)
    {
      v15 = v14;
      if ((static StoryGenerationUtilities.isPersonOrPetQueryToken(_:)() & 1) == 0)
      {

        return;
      }

      v16 = [v25 suggestion];
      v17 = static StoryGenerationUtilities.getEligibleCharacterUUIDs(quToken:suggestion:)(v15);
      if (v17)
      {
        v18 = v17;
        sub_1C6FB0D54();
        v19 = *(*a8 + 16);
        sub_1C6FB157C();

        v20 = *a8;
        *(v20 + 16) = v19 + 1;
        v21 = (v20 + 24 * v19);
        v21[4] = v12;
        v21[5] = v13;
        v21[6] = v18;
        return;
      }

      v22 = sub_1C754FEEC();
      v23 = sub_1C755119C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1C6F5C000, v22, v23, "We should have character UUIDs for a who query term by now", v24, 2u);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1C7439D64(uint64_t a1, uint64_t a2, Swift::OpaquePointer a3, int a4, Swift::OpaquePointer characterSummaryByCharacterUUID)
{
  v9 = AssetCurationPromptGenerator.isNonLocalizedMeOrIQueryTerm(for:characterUUIDs:characterSummaryByCharacterUUID:)(*&a1, a3, characterSummaryByCharacterUUID);
  result = 0;
  if (!v9)
  {
    v41 = a1;
    v42 = a2;
    v11 = 0;
    v12 = *(a3._rawValue + 2);
    v13 = a3._rawValue + 40;
    v43 = MEMORY[0x1E69E7CC0];
    v40 = a3._rawValue + 40;
LABEL_3:
    v14 = &v13[16 * v11];
    while (v12 != v11)
    {
      if (v11 >= v12)
      {
        __break(1u);
LABEL_25:
        __break(1u);

        __break(1u);
        return result;
      }

      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_25;
      }

      if (*(characterSummaryByCharacterUUID._rawValue + 2))
      {
        v16 = *(v14 - 1);
        v17 = *v14;
        sub_1C75504FC();
        v18 = sub_1C6F78124(v16, v17);
        if (v19)
        {
          sub_1C6FB5E28(*(characterSummaryByCharacterUUID._rawValue + 7) + 40 * v18, &v44);
          v20 = v46;
          v21 = v47;
          __swift_project_boxed_opaque_existential_1(&v44, v46);
          v22 = (*(v21 + 24))(v20, v21);
          v24 = v23;

          __swift_destroy_boxed_opaque_existential_1(&v44);
          if (v24)
          {
            v25 = v43;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C6FB1814();
              v25 = v29;
            }

            v27 = *(v25 + 16);
            if (v27 >= *(v25 + 24) >> 1)
            {
              sub_1C6FB1814();
              v25 = v30;
            }

            *(v25 + 16) = v27 + 1;
            v43 = v25;
            v28 = v25 + 16 * v27;
            *(v28 + 32) = v22;
            *(v28 + 40) = v24;
            v11 = v15;
            v13 = v40;
            goto LABEL_3;
          }
        }

        else
        {
        }
      }

      ++v11;
      v14 += 2;
    }

    v44 = v43;
    sub_1C75504FC();
    sub_1C70401E8();

    v31 = v44;
    if (*(v44 + 16))
    {
      v44 = v41;
      v45 = v42;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v33 = v44;
      v32 = v45;
      v44 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C72AF5EC(&qword_1EDD0CF58);
      v34 = sub_1C75505FC();
      v36 = v35;

      v44 = v33;
      v45 = v32;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v34, v36);

      return v44;
    }

    else
    {

      v37 = sub_1C754FEEC();
      v38 = sub_1C755119C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C6F5C000, v37, v38, "No shadow names to go with query annotations - a query person should be in every asset by now, so there should be at least one shadow name", v39, 2u);
        MEMORY[0x1CCA5F8E0](v39, -1, -1);
      }

      return 0;
    }
  }

  return result;
}

Swift::Bool __swiftcall AssetCurationPromptGenerator.isNonLocalizedMeOrIQueryTerm(for:characterUUIDs:characterSummaryByCharacterUUID:)(Swift::String a1, Swift::OpaquePointer characterUUIDs, Swift::OpaquePointer characterSummaryByCharacterUUID)
{
  if (*(characterUUIDs._rawValue + 2) == 1)
  {
    v4 = (characterUUIDs._rawValue + 40);
    for (i = 1; i; --i)
    {
      if (*(characterSummaryByCharacterUUID._rawValue + 2))
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        sub_1C75504FC();
        v8 = sub_1C6F78124(v7, v6);
        if (v9)
        {
          sub_1C6FB5E28(*(characterSummaryByCharacterUUID._rawValue + 7) + 40 * v8, v19);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219738);
          if (swift_dynamicCast())
          {

            if (v18 == 1)
            {
              v12 = sub_1C75506FC();
              if (v12 == 25965 && v13 == 0xE200000000000000)
              {
                goto LABEL_22;
              }

              v15 = sub_1C7551DBC();

              if ((v15 & 1) == 0)
              {
                if (sub_1C75506FC() != 105 || v16 != 0xE100000000000000)
                {
                  v10 = sub_1C7551DBC();

                  return v10 & 1;
                }

LABEL_22:
              }

              v10 = 1;
              return v10 & 1;
            }
          }
        }

        else
        {
        }
      }

      v4 += 2;
    }
  }

  v10 = 0;
  return v10 & 1;
}

unint64_t sub_1C743A2A0()
{
  result = qword_1EC21BE78;
  if (!qword_1EC21BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE78);
  }

  return result;
}

unint64_t sub_1C743A2F8()
{
  result = qword_1EC21BE80;
  if (!qword_1EC21BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE80);
  }

  return result;
}

uint64_t type metadata accessor for AssetCurationPromptGenerator()
{
  result = qword_1EDD08BC0;
  if (!qword_1EDD08BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C743A3B0()
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

_BYTE *storeEnumTagSinglePayload for AssetCurationPromptGenerator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CurationPromptAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C743A638()
{
  result = qword_1EC21BE88;
  if (!qword_1EC21BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE88);
  }

  return result;
}

unint64_t sub_1C743A690()
{
  result = qword_1EDD0A640;
  if (!qword_1EDD0A640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A640);
  }

  return result;
}

unint64_t sub_1C743A6E8()
{
  result = qword_1EDD0A648;
  if (!qword_1EDD0A648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A648);
  }

  return result;
}

char *sub_1C743A73C(char a1)
{
  v2 = v1;
  v4 = sub_1C754DC8C();
  [v4 fileSystemRepresentation];
  v5 = v4;
  v6 = sub_1C754FF3C();
  if (v6 < 0)
  {
    v18 = sub_1C755119C();
    sub_1C7047818();
    v19 = sub_1C755145C();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = OUTLINED_FUNCTION_2_125();
      v21 = OUTLINED_FUNCTION_20_1();
      v26 = v21;
      *v20 = 67109378;
      *(v20 + 4) = MEMORY[0x1CCA5C460]();
      *(v20 + 8) = 2080;
      v22 = MEMORY[0x1CCA5C460]();
      result = strerror(v22);
      if (!result)
      {
        goto LABEL_18;
      }

      v23 = sub_1C755087C();
      v25 = sub_1C6F765A4(v23, v24, &v26);

      *(v20 + 10) = v25;
      _os_log_impl(&dword_1C6F5C000, v19, v18, "failed opening lock file: %d - %s", v20, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    goto LABEL_14;
  }

  v7 = v6;
  if (a1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 6;
  }

  if (!flock(v6, v8))
  {

    *(v1 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd) = v7;
    return (*(v2 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd) >= 0);
  }

  v9 = sub_1C755119C();
  sub_1C7047818();
  v10 = sub_1C755145C();
  if (!os_log_type_enabled(v10, v9))
  {
    goto LABEL_9;
  }

  v11 = OUTLINED_FUNCTION_2_125();
  v12 = OUTLINED_FUNCTION_20_1();
  v26 = v12;
  *v11 = 67109378;
  *(v11 + 4) = MEMORY[0x1CCA5C460]();
  *(v11 + 8) = 2080;
  v13 = MEMORY[0x1CCA5C460]();
  result = strerror(v13);
  if (result)
  {
    v15 = sub_1C755087C();
    v17 = sub_1C6F765A4(v15, v16, &v26);

    *(v11 + 10) = v17;
    _os_log_impl(&dword_1C6F5C000, v10, v9, "flock failed: %d - %s", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
LABEL_9:

    close(v7);
LABEL_14:

    return (*(v2 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd) >= 0);
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C743A9AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C754DD2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DCAC();
  (*(v5 + 8))(a1, v4);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fileURL, v7, v4);
  *(v2 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd) = -1;
  return v2;
}

void sub_1C743AAC4()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd;
  v2 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fd);
  if (v2 < 0)
  {
    v3 = sub_1C755119C();
    sub_1C7047818();
    log = sub_1C755145C();
    if (os_log_type_enabled(log, v3))
    {
      v4 = OUTLINED_FUNCTION_2_125();
      v5 = OUTLINED_FUNCTION_20_1();
      v16 = v5;
      *v4 = 67109378;
      *(v4 + 4) = MEMORY[0x1CCA5C460]();
      *(v4 + 8) = 2080;
      v11 = MEMORY[0x1CCA5C460]();
      if (strerror(v11))
      {
        v12 = sub_1C755087C();
        v14 = sub_1C6F765A4(v12, v13, &v16);

        *(v4 + 10) = v14;
        v10 = "file was not locked:%d - %s";
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (!flock(v2, 8))
    {
      close(*(v0 + v1));
      *(v0 + v1) = -1;
      return;
    }

    v3 = sub_1C755119C();
    sub_1C7047818();
    log = sub_1C755145C();
    if (os_log_type_enabled(log, v3))
    {
      v4 = OUTLINED_FUNCTION_2_125();
      v5 = OUTLINED_FUNCTION_20_1();
      v16 = v5;
      *v4 = 67109378;
      *(v4 + 4) = MEMORY[0x1CCA5C460]();
      *(v4 + 8) = 2080;
      v6 = MEMORY[0x1CCA5C460]();
      if (strerror(v6))
      {
        v7 = sub_1C755087C();
        v9 = sub_1C6F765A4(v7, v8, &v16);

        *(v4 + 10) = v9;
        v10 = "failed unflocking:%d - %s";
LABEL_9:
        _os_log_impl(&dword_1C6F5C000, log, v3, v10, v4, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v5);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();

        return;
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }
  }
}

uint64_t sub_1C743ACBC()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence8FileLock__fileURL;
  v2 = sub_1C754DD2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FileLock()
{
  result = qword_1EDD0FB08;
  if (!qword_1EDD0FB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C743ADAC()
{
  result = sub_1C754DD2C();
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

_BYTE *storeEnumTagSinglePayload for Cropping(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C743AEF4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC25B948);
  __swift_project_value_buffer(v0, qword_1EC25B948);
  return sub_1C754FEFC();
}

uint64_t TriggeredCollection.localIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_1C75504FC();
  return v1;
}

uint64_t TriggeredCollection.electedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TriggeredCollection() + 28);

  return sub_1C7033844(v3, a1);
}

uint64_t type metadata accessor for TriggeredCollection()
{
  result = qword_1EDD0A3E0;
  if (!qword_1EDD0A3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TriggeredCollection.init(type:collectionObject:)@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 24) = a2;
  v4 = a2;
  v5 = [v4 localIdentifier];
  v6 = sub_1C755068C();
  v8 = v7;

  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  v9 = *(type metadata accessor for TriggeredCollection() + 28);
  v10 = sub_1C754DF6C();

  return __swift_storeEnumTagSinglePayload(a3 + v9, 1, 1, v10);
}

void TriggeredCollection.init(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  *&v5 = MEMORY[0x1EEE9AC00](v4 - 8).n128_u64[0];
  v7 = &v26 - v6;
  v8 = [a1 subtype];
  if ((v8 - 910) >= 8u)
  {
    sub_1C743B354();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  else
  {
    *a2 = v8 + 114;
    v9 = [a1 creationDate];
    if (v9)
    {
      v10 = v9;
      sub_1C754DF2C();

      v11 = sub_1C754DF6C();
      v12 = 0;
    }

    else
    {
      v11 = sub_1C754DF6C();
      v12 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v12, 1, v11);
    v14 = *(type metadata accessor for TriggeredCollection() + 28);
    sub_1C6FF51C8(v7, a2 + v14);
    v15 = [a1 photoLibrary];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 librarySpecificFetchOptions];

      sub_1C6F65BE8(0, &qword_1EDD0CEB0);
      v18 = static PHSuggestion.fetchRelatedCollection(with:options:)(a1, v17);
      if (v18 && (v19 = v18, v20 = [v18 firstObject], v19, v20))
      {
        *(a2 + 24) = v20;
        v21 = [v20 localIdentifier];
        v22 = sub_1C755068C();
        v24 = v23;

        *(a2 + 8) = v22;
        *(a2 + 16) = v24;
      }

      else
      {
        sub_1C743B354();
        swift_allocError();
        *v25 = 1;
        swift_willThrow();

        sub_1C70D7CB8(a2 + v14);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_1C743B354()
{
  result = qword_1EC21BE90;
  if (!qword_1EC21BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE90);
  }

  return result;
}

uint64_t static TriggeredCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1C6FA1B48() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  return sub_1C7551DBC();
}

uint64_t TriggeredCollection.hash(into:)()
{
  sub_1C6FF8994();

  return sub_1C75505AC();
}

uint64_t TriggeredCollection.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t TriggeredCollection.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C6FF8994();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t sub_1C743B54C()
{
  sub_1C7551F3C();
  sub_1C6FF8994();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

unint64_t sub_1C743B59C()
{
  result = qword_1EC21BE98;
  if (!qword_1EC21BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE98);
  }

  return result;
}

unint64_t sub_1C743B5F4()
{
  result = qword_1EDD0A3F0;
  if (!qword_1EDD0A3F0)
  {
    type metadata accessor for TriggeredCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A3F0);
  }

  return result;
}

void sub_1C743B678()
{
  sub_1C6F65BE8(319, &qword_1EDD06880);
  if (v0 <= 0x3F)
  {
    sub_1C6F5FB48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TriggeredCollection.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static TextSanitizer.removeCategories(in:categories:)(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E6978F98];
  v5 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v6 = v4;
  v7 = [a1 length];
  OUTLINED_FUNCTION_30();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = &v23;
  OUTLINED_FUNCTION_30();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C743D31C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1C743D324;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_41_18();
  aBlock[2] = v10;
  aBlock[3] = &block_descriptor_42;
  v11 = _Block_copy(aBlock);
  sub_1C75504FC();

  [a1 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v11}];

  _Block_release(v11);
  OUTLINED_FUNCTION_5_97();
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v13 = v23;

    if (*(v13 + 16))
    {
      aBlock[0] = v5;
      sub_1C716D7A4();
      v14 = aBlock[0];
      v15 = *(aBlock[0] + 16);
      do
      {
        v16 = *(v13 + 40);
        aBlock[0] = v14;
        v17 = v14[3];
        if (v15 >= v17 >> 1)
        {
          OUTLINED_FUNCTION_15(v17);
          OUTLINED_FUNCTION_12_76();
          sub_1C716D7A4();
          v16 = v21;
          v14 = aBlock[0];
        }

        OUTLINED_FUNCTION_8_87(v16);
      }

      while (!v18);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    sub_1C743CF88(a1, v14);
    v20 = v19;

    return v20;
  }

  return result;
}

uint64_t static TextSanitizer.removeCategories(in:queryTokens:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6F65BE8(0, &qword_1EDD0CE30);
  sub_1C75504FC();
  v6 = sub_1C7073450();
  v7 = static TextSanitizer.categoriesRanges(queryTokens:categories:)(a3, a4);
  if (*(v7 + 16))
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C716D7A4();
    v8 = v17;
    v9 = v17[2];
    do
    {
      v10 = *(v7 + 40);
      v11 = v17[3];
      if (v9 >= v11 >> 1)
      {
        OUTLINED_FUNCTION_15(v11);
        OUTLINED_FUNCTION_12_76();
        sub_1C716D7A4();
        v10 = v16;
      }

      OUTLINED_FUNCTION_8_87(v10);
    }

    while (!v12);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1C743CF88(v6, v8);
  v14 = v13;

  return v14;
}

uint64_t sub_1C743BBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1C6F9ED18(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1C6FD7FC8(v13, &qword_1EC219770);
}

uint64_t static TextSanitizer.extractCategories(in:categories:)(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E6978F98];
  v5 = MEMORY[0x1E69E7CC0];
  v21 = MEMORY[0x1E69E7CC0];
  v6 = v4;
  [a1 length];
  OUTLINED_FUNCTION_30();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = &v21;
  OUTLINED_FUNCTION_30();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C743DAA0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1C743DAA4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_41_18();
  aBlock[2] = v9;
  aBlock[3] = &block_descriptor_14_1;
  v10 = _Block_copy(aBlock);
  sub_1C75504FC();

  OUTLINED_FUNCTION_13_85(a1, sel_enumerateAttribute_inRange_options_usingBlock_, v6);

  _Block_release(v10);
  OUTLINED_FUNCTION_5_97();
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v12 = v21;

    if (*(v12 + 16))
    {
      aBlock[0] = v5;
      OUTLINED_FUNCTION_14_67();
      v13 = aBlock[0];
      do
      {
        v15 = OUTLINED_FUNCTION_10_78();
        if (v16)
        {
          OUTLINED_FUNCTION_15(v14);
          OUTLINED_FUNCTION_12_76();
          sub_1C716D7A4();
          v15 = v19;
          v13 = aBlock[0];
        }

        OUTLINED_FUNCTION_7_96(v15);
      }

      while (!v17);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    v18 = sub_1C743D0A8(a1, v13);

    return v18;
  }

  return result;
}

unint64_t static TextSanitizer.extractCategories(in:queryTokens:categories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6F65BE8(0, &qword_1EDD0CE30);
  sub_1C75504FC();
  v6 = sub_1C7073450();
  if (*(static TextSanitizer.categoriesRanges(queryTokens:categories:)(a3, a4) + 16))
  {
    v15 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_14_67();
    v7 = v15;
    do
    {
      v9 = OUTLINED_FUNCTION_10_78();
      if (v10)
      {
        OUTLINED_FUNCTION_15(v8);
        OUTLINED_FUNCTION_12_76();
        sub_1C716D7A4();
        v9 = v14;
        v7 = v15;
      }

      OUTLINED_FUNCTION_7_96(v9);
    }

    while (!v11);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1C743D0A8(v6, v7);

  return v12;
}

uint64_t sub_1C743BFDC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422A5C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C743D34C(v6);
  *a1 = v2;
  return result;
}

uint64_t static TextSanitizer.tokenize(_:supportedLanguage:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = *a3;
  v10 = MEMORY[0x1E69E7CC0];
  v6 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  if (v5 != 17)
  {
    v7 = TextSanitizer.SupportedLanguage.nlLanguage.getter();
    [v6 setLanguage_];
  }

  sub_1C7374F18(a1, a2, v6);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C755111C();

  return v10;
}

uint64_t static TextSanitizer.categoriesRanges(queryTokens:categories:)(uint64_t a1, uint64_t a2)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v39 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = 0;
  v16 = a1 + 32;
  v17 = MEMORY[0x1E69E7CC0];
  v42 = TokenCategoryType;
  v43 = a2;
  v37 = v16;
  v38 = v14;
  do
  {
    v18 = v16 + 120 * v15;
    if ((*(v18 + 56) & 1) == 0)
    {
      v19 = *(v18 + 80);
      v20 = *(v19 + 16);
      if (v20)
      {
        v40 = *(v18 + 80);
        v41 = v15;
        v44 = *(v18 + 40);
        v21 = v39;
        v22 = v19 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        sub_1C75504FC();
        v23 = *(v21 + 72);
        do
        {
          sub_1C71AC0CC(v22, v13, type metadata accessor for QueryTokenSuggestion);
          sub_1C71AC0CC(v13, v10, type metadata accessor for QueryTokenCategoryType);
          sub_1C743D9F8(v13, type metadata accessor for QueryTokenSuggestion);
          sub_1C743D994(v10, v7);
          v24 = 9;
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              OUTLINED_FUNCTION_0_183();
              v24 = 2;
              break;
            case 2u:
              v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0);
              sub_1C6FD7FC8(&v7[*(v25 + 48)], &qword_1EC218C50);
              sub_1C6FD7FC8(v7, &qword_1EC218C50);
              v24 = 3;
              break;
            case 3u:
              OUTLINED_FUNCTION_0_183();
              v24 = 4;
              break;
            case 4u:
              sub_1C754F09C();
              OUTLINED_FUNCTION_12();
              (*(v26 + 8))(v7);
              v24 = 5;
              break;
            case 5u:
              sub_1C754F5FC();
              OUTLINED_FUNCTION_12();
              (*(v27 + 8))(v7);
              v24 = 6;
              break;
            case 6u:
              OUTLINED_FUNCTION_0_183();
              v24 = 7;
              break;
            case 7u:
              sub_1C743D9F8(v7, type metadata accessor for GroundedGenericLocation);
              v24 = 8;
              break;
            case 8u:
              sub_1C6FD7FC8(v7, &qword_1EC216328);
              v24 = 10;
              break;
            case 9u:
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0);
              sub_1C743D9F8(&v7[*(v28 + 48)], type metadata accessor for PersonalEventBackingItem);
              sub_1C6FD7FC8(v7, &qword_1EC216320);
              v24 = 11;
              break;
            case 0xAu:
              OUTLINED_FUNCTION_0_183();
              v24 = 15;
              break;
            case 0xBu:
              v24 = 16;
              break;
            case 0xCu:
              OUTLINED_FUNCTION_0_183();
              v24 = 17;
              break;
            case 0xDu:
              v24 = 19;
              break;
            case 0xEu:
              break;
            case 0xFu:
              v24 = 12;
              break;
            case 0x10u:
              v24 = 13;
              break;
            case 0x11u:
              v24 = 14;
              break;
            case 0x12u:
              v24 = 18;
              break;
            default:
              OUTLINED_FUNCTION_0_183();
              v24 = 1;
              break;
          }

          sub_1C7009CE0();
          if (v29)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1CF8();
              v17 = v33;
            }

            v31 = *(v17 + 16);
            v30 = *(v17 + 24);
            if (v31 >= v30 >> 1)
            {
              OUTLINED_FUNCTION_57(v30);
              sub_1C6FB1CF8();
              v17 = v34;
            }

            *(v17 + 16) = v31 + 1;
            v32 = v17 + 24 * v31;
            *(v32 + 32) = v24;
            *(v32 + 40) = v44;
          }

          v22 += v23;
          --v20;
        }

        while (v20);

        v16 = v37;
        v14 = v38;
        v15 = v41;
      }
    }

    ++v15;
  }

  while (v15 != v14);
  return v17;
}

uint64_t static TextSanitizer.categoriesRanges(in:categories:)(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E6978F98];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = v4;
  [a1 length];
  OUTLINED_FUNCTION_30();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = &v13;
  OUTLINED_FUNCTION_30();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C743DAA0;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1C743DAA4;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_41_18();
  aBlock[2] = v8;
  aBlock[3] = &block_descriptor_25;
  v9 = _Block_copy(aBlock);
  sub_1C75504FC();

  OUTLINED_FUNCTION_13_85(a1, sel_enumerateAttribute_inRange_options_usingBlock_, v5);

  _Block_release(v9);
  OUTLINED_FUNCTION_5_97();
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

uint64_t sub_1C743C7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = sub_1C755098C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1C6FB097C();
  v14 = *(*a6 + 16);
  sub_1C6FB11EC();
  v15 = *a6;
  *(v15 + 16) = v14 + 1;
  v16 = (v15 + 32 * v14);
  v16[4] = v7;
  v16[5] = v9;
  v16[6] = v11;
  v16[7] = v13;
  return 1;
}

uint64_t static TextSanitizer.reduceAndOrderRangesToRemove(_:)(void *a1)
{
  v2 = a1;
  if (a1[2] < 2uLL)
  {
    sub_1C75504FC();
    return v2;
  }

  v25 = a1;
  sub_1C75504FC();
  sub_1C743BFDC(&v25);
  if (v1)
  {
    goto LABEL_33;
  }

  if (!v25[2])
  {

    sub_1C72FB180();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    return v2;
  }

  v4 = v25[4];
  v3 = v25[5];
  sub_1C70CE540(1, v25);
  v8 = (v7 >> 1) - v6;
  if (v7 >> 1 == v6)
  {
    v2 = MEMORY[0x1E69E7CC0];
LABEL_6:
    swift_unknownObjectRelease();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

  if ((v7 >> 1) > v6)
  {
    v14 = (v5 + 16 * v6 + 8);
    v2 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v15 = v4 + v3;
      if (__OFADD__(v4, v3))
      {
        break;
      }

      v17 = *(v14 - 1);
      v16 = *v14;
      if (v15 >= v17)
      {
        if (__OFADD__(v17, v16))
        {
          goto LABEL_29;
        }

        if (v17 + v16 > v15)
        {
          v15 = v17 + v16;
        }

        v3 = v15 - v4;
        if (__OFSUB__(v15, v4))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1CD0();
          v2 = v21;
        }

        v19 = v2[2];
        v18 = v2[3];
        if (v19 >= v18 >> 1)
        {
          OUTLINED_FUNCTION_57(v18);
          sub_1C6FB1CD0();
          v2 = v22;
        }

        v2[2] = v19 + 1;
        v20 = &v2[2 * v19];
        v20[4] = v4;
        v20[5] = v3;
        v4 = v17;
        v3 = v16;
      }

      v14 += 2;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    OUTLINED_FUNCTION_24_0();
    sub_1C6FB1CD0();
    v2 = v23;
LABEL_7:
    v10 = v2[2];
    v9 = v2[3];
    if (v10 >= v9 >> 1)
    {
      OUTLINED_FUNCTION_57(v9);
      sub_1C6FB1CD0();
      v2 = v24;
    }

    v2[2] = v10 + 1;
    v11 = &v2[2 * v10];
    v11[4] = v4;
    v11[5] = v3;
    return v2;
  }

  __break(1u);
LABEL_33:

  __break(1u);
  return result;
}

void sub_1C743CA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v52 = a6;
  v53 = sub_1C754E25C();
  v10 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C754E2FC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A540);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  sub_1C7329154(a1, v55);
  if (v56)
  {
    sub_1C6F65BE8(0, &qword_1EDD0CDB0);
    if (swift_dynamicCast())
    {
      v51 = a3;
      v19 = v57;
      v20 = [v57 suggestion];
      if (v20)
      {
        v21 = v20;
        v22 = static StoryGenerationUtilities.searchEntityCategoryTypes(for:)([v20 categoriesType]);
        if ((v23 & 1) != 0 || (v24 = v22, (sub_1C700AAB0(v22, a5) & 1) == 0))
        {
        }

        else
        {
          v25 = v52;
          sub_1C6FB0EA8();
          v26 = *(*v25 + 16);
          sub_1C6FB16F4();

          v27 = *v25;
          *(v27 + 16) = v26 + 1;
          v28 = (v27 + 24 * v26);
          v28[4] = v24;
          v28[5] = a2;
          v28[6] = v51;
        }
      }

      else
      {
        v29 = [v19 QUToken];
        if (v29)
        {
          v49 = v19;
          v50 = a2;
          v48 = v29;
          v30 = [v29 entityCategoryTypes];
          sub_1C754E29C();

          sub_1C754E27C();
          (*(v13 + 8))(v15, v12);
          sub_1C743DA50(&qword_1EDD0CB70, MEMORY[0x1E6969B50]);
          v31 = (v10 + 8);
          v32 = v53;
          while (1)
          {
LABEL_11:
            v33 = v54;
            sub_1C755107C();
            sub_1C743DA50(&qword_1EDD0CB80, MEMORY[0x1E6969B18]);
            v34 = sub_1C755063C();
            (*v31)(v33, v32);
            if (v34)
            {
              sub_1C6FD7FC8(v18, &qword_1EC21A540);

              return;
            }

            v35 = sub_1C75510CC();
            v37 = *v36;
            v35(v55, 0);
            sub_1C755108C();
            if (v37 < 0)
            {
              break;
            }

            if (*(a5 + 16))
            {
              sub_1C7551F3C();
              MEMORY[0x1CCA5E460](v37);
              v38 = sub_1C7551FAC();
              v39 = ~(-1 << *(a5 + 32));
              while (1)
              {
                v40 = v38 & v39;
                if (((*(a5 + 56 + (((v38 & v39) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v38 & v39)) & 1) == 0)
                {
                  break;
                }

                v38 = v40 + 1;
                if (*(*(a5 + 48) + 8 * v40) == v37)
                {
                  v41 = v52;
                  sub_1C6FB0EA8();
                  v42 = *(*v41 + 16);
                  sub_1C6FB16F4();
                  v43 = *v41;
                  *(v43 + 16) = v42 + 1;
                  v44 = (v43 + 24 * v42);
                  v32 = v53;
                  v46 = v50;
                  v45 = v51;
                  v44[4] = v37;
                  v44[5] = v46;
                  v44[6] = v45;
                  goto LABEL_11;
                }
              }
            }
          }

          __break(1u);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_1C6FD7FC8(v55, &qword_1EC219770);
  }
}

void sub_1C743CF88(uint64_t a1, void *a2)
{
  v4 = static TextSanitizer.reduceAndOrderRangesToRemove(_:)(a2);
  if (!v2)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = v7 - 1;
      v9 = (v5 + 16 * v7 + 24);
      while (v8 < *(v5 + 16))
      {
        v10 = *(v9 - 1);
        v11 = *v9;
        v12 = sub_1C755065C();
        [v6 replaceCharactersInRange:v10 withString:{v11, v12}];

        --v8;
        v9 -= 2;
        if (v8 == -1)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:

      v13 = [v6 string];
      sub_1C755068C();
    }
  }
}

unint64_t sub_1C743D0A8(id a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    v23 = sub_1C75505FC();

    return v23;
  }

  v4 = (a2 + 40);
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v6 = *(v4 - 1);
    v5 = *v4;
    v7 = [a1 string];
    sub_1C755068C();

    result = sub_1C755090C();
    if (v9)
    {
LABEL_8:

      goto LABEL_9;
    }

    if (__OFADD__(v6, v5))
    {
      break;
    }

    sub_1C755090C();
    if (v10)
    {
      goto LABEL_8;
    }

    sub_1C75504FC();
    v11 = sub_1C75507EC();
    if (v12)
    {
      goto LABEL_8;
    }

    v13 = v11;
    sub_1C75504FC();
    result = sub_1C75507EC();
    if (v14)
    {
      goto LABEL_8;
    }

    if (result >> 14 < v13 >> 14)
    {
      goto LABEL_19;
    }

    v15 = sub_1C755098C();
    v16 = MEMORY[0x1CCA5CC40](v15);
    v18 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB1814();
      v24 = v21;
    }

    v19 = *(v24 + 16);
    if (v19 >= *(v24 + 24) >> 1)
    {
      sub_1C6FB1814();
      v24 = v22;
    }

    *(v24 + 16) = v19 + 1;
    v20 = v24 + 16 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = v18;
LABEL_9:
    v4 += 2;
    if (!--v2)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1C743D34C(uint64_t *a1)
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
        type metadata accessor for _NSRange(0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C743D4B4(v7, v8, a1, v4);
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
    return sub_1C743D444(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C743D444(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
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

void sub_1C743D4B4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v84 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v79 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v15 = *v11;
        v14 = v11 + 4;
        v13 = v15;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v14;
          v14 += 2;
          v20 = (v10 < v13) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
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
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6 - 16;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = *(v24 + v12);
                *(v24 + v12) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
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
            v26 = *a3;
            v27 = *a3 + 16 * v9 - 16;
            v28 = v7 - v9;
            do
            {
              v29 = *(v26 + 16 * v9);
              v30 = v28;
              v31 = v27;
              do
              {
                if (v29 >= *v31)
                {
                  break;
                }

                if (!v26)
                {
                  goto LABEL_111;
                }

                v32 = *(v31 + 24);
                *(v31 + 16) = *v31;
                *v31 = v29;
                *(v31 + 8) = v32;
                v31 -= 16;
              }

              while (!__CFADD__(v30++, 1));
              ++v9;
              v27 += 16;
              --v28;
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

      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v77;
      }

      v34 = v8[2];
      v35 = v34 + 1;
      if (v34 >= v8[3] >> 1)
      {
        sub_1C6FB17EC();
        v8 = v78;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v34 + 4];
      *v37 = v7;
      v37[1] = v9;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v34)
      {
        while (1)
        {
          v38 = v35 - 1;
          v39 = &v36[2 * v35 - 2];
          v40 = &v8[2 * v35];
          if (v35 >= 4)
          {
            break;
          }

          if (v35 == 3)
          {
            v41 = v8[4];
            v42 = v8[5];
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_56:
            if (v44)
            {
              goto LABEL_96;
            }

            v56 = *v40;
            v55 = v40[1];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            v59 = v57;
            if (v57)
            {
              goto LABEL_99;
            }

            v60 = v39[1];
            v61 = v60 - *v39;
            if (__OFSUB__(v60, *v39))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v58, v61))
            {
              goto LABEL_104;
            }

            if (v58 + v61 >= v43)
            {
              if (v43 < v61)
              {
                v38 = v35 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v35 < 2)
          {
            goto LABEL_98;
          }

          v63 = *v40;
          v62 = v40[1];
          v51 = __OFSUB__(v62, v63);
          v58 = v62 - v63;
          v59 = v51;
LABEL_71:
          if (v59)
          {
            goto LABEL_101;
          }

          v65 = *v39;
          v64 = v39[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_103;
          }

          if (v66 < v58)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v38 - 1 >= v35)
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

          v70 = &v36[2 * v38 - 2];
          v71 = *v70;
          v72 = &v36[2 * v38];
          v73 = v72[1];
          sub_1C7262924((*a3 + 16 * *v70), (*a3 + 16 * *v72), (*a3 + 16 * v73), v82);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v73 < v71)
          {
            goto LABEL_91;
          }

          v74 = v8;
          v75 = v8[2];
          if (v38 > v75)
          {
            goto LABEL_92;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v38 >= v75)
          {
            goto LABEL_93;
          }

          v35 = v75 - 1;
          memmove(&v36[2 * v38], v72 + 2, 16 * (v75 - 1 - v38));
          v74[2] = v75 - 1;
          v76 = v75 > 2;
          v8 = v74;
          v5 = 0;
          if (!v76)
          {
            goto LABEL_85;
          }
        }

        v45 = &v36[2 * v35];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_94;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_95;
        }

        v52 = v40[1];
        v53 = v52 - *v40;
        if (__OFSUB__(v52, *v40))
        {
          goto LABEL_97;
        }

        v51 = __OFADD__(v43, v53);
        v54 = v43 + v53;
        if (v51)
        {
          goto LABEL_100;
        }

        if (v54 >= v48)
        {
          v68 = *v39;
          v67 = v39[1];
          v51 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v51)
          {
            goto LABEL_105;
          }

          if (v43 < v69)
          {
            v38 = v35 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v81;
      a4 = v79;
      if (v81 >= v6)
      {
        v84 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C7262650(&v84, *a1, a3);
LABEL_89:
}

uint64_t sub_1C743D994(uint64_t a1, uint64_t a2)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  (*(*(TokenCategoryType - 8) + 32))(a2, a1, TokenCategoryType);
  return a2;
}

uint64_t sub_1C743D9F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C743DA50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C743DAB0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C7442A70(v6);
  return sub_1C755193C();
}

uint64_t MusicKeywordsGeneratorEmbedded.__allocating_init(usingCache:embeddingType:with:maxKeywords:)()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_48_28();
  swift_allocObject();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  v3 = OUTLINED_FUNCTION_63_24();

  return MusicKeywordsGeneratorEmbedded.init(usingCache:embeddingType:with:maxKeywords:)(v3, v4, v5, v6);
}

uint64_t sub_1C743DBD4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07E08);
  __swift_project_value_buffer(v0, qword_1EDD07E08);
  return sub_1C754FEFC();
}

uint64_t MusicKeywordsGeneratorEmbedded.init(usingCache:embeddingType:with:maxKeywords:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 72) = *a2;
  return OUTLINED_FUNCTION_7_77(sub_1C743DC98, 0);
}

uint64_t sub_1C743DC98()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_defaultActor_initialize();
  v5 = MEMORY[0x1E69E7CC8];
  *(v2 + 120) = v3;
  *(v2 + 128) = v5;
  *(v2 + 112) = v4;
  *(v2 + 144) = v1;
  *(v2 + 136) = [objc_allocWithZone(PNTextEmbeddingService) init];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1C743DD78;
  v7 = *(v0 + 16);

  return sub_1C743DFD4(v7);
}

uint64_t sub_1C743DD78()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 56) = v0;

  sub_1C743E848();
  if (v0)
  {
    swift_getObjectType();
    v6 = sub_1C7550C8C();
    v8 = v7;
    v9 = sub_1C743DF70;
  }

  else
  {

    swift_getObjectType();
    v6 = sub_1C7550C8C();
    v8 = v10;
    *(v4 + 64) = v3;
    v9 = sub_1C743DEEC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_1C743DEEC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];

  *(v2 + 128) = v1;

  OUTLINED_FUNCTION_116();
  v5 = v0[5];

  return v4(v5);
}

uint64_t sub_1C743DF70()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C743DFD4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_7_77(sub_1C743DFF0, v1);
}

uint64_t sub_1C743DFF0()
{
  v50 = v0;
  v1 = v0[2];
  if (v1)
  {
    v2 = qword_1EDD07E00;
    v3 = v1;
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_0_184();
    }

    v4 = sub_1C754FF1C();
    __swift_project_value_buffer(v4, qword_1EDD07E08);
    v5 = sub_1C754FEEC();
    v6 = sub_1C755118C();
    if (OUTLINED_FUNCTION_128(v6))
    {
      v7 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v7);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_37();
    }

    v13 = v0[3];

    v49[0] = *(v13 + 144);
    v14 = StoryMusicCache.read(cacheType:)(v49);
    if (*(v14 + 16))
    {
      v15 = sub_1C754FEEC();
      v16 = sub_1C755117C();
      if (OUTLINED_FUNCTION_128(v16))
      {
        v17 = OUTLINED_FUNCTION_127();
        *v17 = 0;
        _os_log_impl(&dword_1C6F5C000, v15, v16, "(Maestro embeddings cache) Using the cached embeddings", v17, 2u);
        OUTLINED_FUNCTION_109();
      }

      v18 = sub_1C7443320(v14);

      OUTLINED_FUNCTION_116();

      return v19(v18);
    }
  }

  if (qword_1EDD07E00 != -1)
  {
    OUTLINED_FUNCTION_0_184();
  }

  v21 = sub_1C754FF1C();
  v0[4] = __swift_project_value_buffer(v21, qword_1EDD07E08);
  v22 = sub_1C754FEEC();
  v23 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v23))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v29 = v0[3];

  if (!*(v29 + 144))
  {
    v31 = type metadata accessor for MaestroKeywordResolver();
    v39 = static MaestroKeywordResolver.allMaestroKeywordsAndAliases()(v31, v32, v33, v34, v35, v36, v37, v38);
LABEL_22:
    v30 = v39;
    goto LABEL_23;
  }

  if (*(v29 + 144) != 1)
  {
    v40 = type metadata accessor for MaestroKeywordResolver();
    v39 = static MaestroKeywordResolver.allMusicSearchKeyword()(v40, v41, v42, v43, v44, v45, v46, v47);
    goto LABEL_22;
  }

  v30 = *(v0[3] + 112);
  sub_1C75504FC();
LABEL_23:
  v0[5] = v30;
  sub_1C75504FC();
  v48 = swift_task_alloc();
  v0[6] = v48;
  *v48 = v0;
  OUTLINED_FUNCTION_52_3(v48);

  return PNTextEmbeddingService.encode(_:)(v30);
}

uint64_t sub_1C743E3EC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[7] = v7;
  v3[8] = v0;

  if (v0)
  {

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {
    v10 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1C743E544, v10, 0);
  }
}

void sub_1C743E544()
{
  v43 = v0;
  v1 = 0;
  v2 = *(v0 + 40);
  v41 = *(v2 + 16);
  v39 = *(v0 + 56);
  v3._rawValue = MEMORY[0x1E69E7CC8];
  v40 = v2;
  for (i = (v2 + 40); ; i += 2)
  {
    if (v41 == v1)
    {
      v22 = *(v38 + 16);

      if (v22)
      {
        v23 = *(v38 + 16);
        v24 = sub_1C754FEEC();
        v25 = sub_1C755117C();
        if (OUTLINED_FUNCTION_128(v25))
        {
          *OUTLINED_FUNCTION_127() = 0;
          OUTLINED_FUNCTION_127_0();
          _os_log_impl(v26, v27, v28, v29, v30, 2u);
          OUTLINED_FUNCTION_23_3();
        }

        v31 = *(v38 + 24);

        LOBYTE(rawValue) = *(v31 + 144);
        StoryMusicCache.write(cacheType:using:)(&rawValue, v3);

        if (v32)
        {

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_94_1();

          __asm { BRAA            X1, X16 }
        }
      }

      sub_1C7443320(v3._rawValue);

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_94_1();

      __asm { BRAA            X2, X16 }
    }

    if (v1 >= *(v40 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (v1 >= *(v39 + 16))
    {
      goto LABEL_28;
    }

    v6 = *(i - 1);
    v5 = *i;
    v7 = *(v39 + 32 + 8 * v1);
    sub_1C75504FC();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    rawValue = v3._rawValue;
    v8 = OUTLINED_FUNCTION_180();
    sub_1C6F78124(v8, v9);
    OUTLINED_FUNCTION_3_114();
    if (v12)
    {
      goto LABEL_29;
    }

    v13 = v10;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F90);
    v3._rawValue = rawValue;
    if (sub_1C7551A2C())
    {
      break;
    }

LABEL_9:
    if (v14)
    {
      *(rawValue[7] + 8 * v13) = v7;
    }

    else
    {
      OUTLINED_FUNCTION_45_37();
      OUTLINED_FUNCTION_1_3(v19);
      v20 = (rawValue[6] + 16 * v13);
      *v20 = v6;
      v20[1] = v5;
      *(*(v3._rawValue + 7) + 8 * v13) = v7;
      OUTLINED_FUNCTION_54_3();
      if (v12)
      {
        goto LABEL_30;
      }

      *(v3._rawValue + 2) = v21;
    }

    ++v1;
  }

  v15 = OUTLINED_FUNCTION_180();
  v17 = sub_1C6F78124(v15, v16);
  if ((v14 & 1) == (v18 & 1))
  {
    v13 = v17;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_94_1();

  sub_1C7551E4C();
}

unint64_t sub_1C743E848()
{
  result = qword_1EDD07DF8;
  if (!qword_1EDD07DF8)
  {
    type metadata accessor for MusicKeywordsGeneratorEmbedded();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07DF8);
  }

  return result;
}

uint64_t sub_1C743E8C0()
{
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);

  return sub_1C743E970();
}

uint64_t sub_1C743E970()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  *(v1 + 344) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  *(v1 + 80) = v6;
  *(v1 + 120) = *v0;
  v7 = sub_1C754F38C();
  *(v1 + 128) = v7;
  *(v1 + 136) = *(v7 - 8);
  *(v1 + 144) = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C743EA5C()
{
  if (qword_1EDD07E00 != -1)
  {
    OUTLINED_FUNCTION_0_184();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EDD07E08);
  *(v0 + 152) = v3;
  v4 = sub_1C754FEEC();
  v5 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v5))
  {
    v6 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_92_0(v6);
    _os_log_impl(&dword_1C6F5C000, v4, v5, "Keywords generation using text embedding started for query", v1, 2u);
    OUTLINED_FUNCTION_37();
  }

  v7 = *(v0 + 112);
  v8 = *(v0 + 96);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1C754F1CC();
  if (!*(*(v7 + 112) + 16))
  {
    v13 = sub_1C754FEEC();
    v14 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v14))
    {
      v15 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v15);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_37();
    }

    v21 = *(v0 + 96);
    v12 = *(v0 + 104);

    sub_1C7443750();
    swift_allocError();
    v23 = 2;
    goto LABEL_15;
  }

  if (sub_1C75507FC() < 1)
  {
    v24 = sub_1C754FEEC();
    v25 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v25))
    {
      v26 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v26);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v27, v28, v29, v30, v31, 2u);
      OUTLINED_FUNCTION_37();
    }

    v21 = *(v0 + 96);
    v12 = *(v0 + 104);

    sub_1C7443750();
    swift_allocError();
    v23 = 1;
LABEL_15:
    *v22 = v23;
    swift_willThrow();
    OUTLINED_FUNCTION_87_1(v21, v8[3]);
    sub_1C754F1AC();
    v32 = OUTLINED_FUNCTION_98_1();
    v33(v32);
LABEL_16:
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v34 + 8))(v12);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_64_21();
  sub_1C754F2CC();
  *(v0 + 160) = v3;
  if (v3)
  {
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    v12 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1(*(v0 + 96), v8[3]);
    sub_1C754F1AC();
    (*(v10 + 8))(v9, v11);
    goto LABEL_16;
  }

  if (*(v0 + 344) == 1)
  {
    if (qword_1EDD09538 != -1)
    {
      swift_once();
    }

    *(v0 + 168) = qword_1EDD09540;
    OUTLINED_FUNCTION_44();

    return MEMORY[0x1EEE6DFA0](v37, v38, v39);
  }

  else
  {
    v41 = swift_task_alloc();
    *(v0 + 320) = v41;
    *v41 = v0;
    v41[1] = sub_1C7440AE0;
    OUTLINED_FUNCTION_44();

    return sub_1C7441F28(v42, v43);
  }
}

uint64_t sub_1C743EE6C()
{
  OUTLINED_FUNCTION_42();
  v0[22] = sub_1C74415B0(v0[10], v0[11], v0[21]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

void sub_1C743EED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  static MusicKeywordsGeneratorEmbedded.createNGrams(from:n:)(v20[22], 2);
  v20[23] = v22;
  v23 = v22[2];
  v24 = v20[20];
  v25 = MEMORY[0x1E69E7CC0];
  v20[25] = 0;
  v20[26] = v25;
  v20[24] = v23;
  if (v23)
  {
    if (v22[2])
    {
      v20[27] = v22[4];
      v20[28] = v22[5];
      sub_1C75504FC();
      v26 = swift_task_alloc();
      v20[29] = v26;
      *v26 = v20;
      OUTLINED_FUNCTION_19_72();
LABEL_7:
      *(v27 + 8) = v28;
      OUTLINED_FUNCTION_61_21();
      OUTLINED_FUNCTION_20_4();

      sub_1C7441F28(v33, v34);
      return;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
    v29 = v20[22];

    v30 = *(v29 + 16);
    v20[33] = 0;
    v20[34] = v25;
    v20[32] = v30;
    v31 = v20[22];
    if (!v30)
    {

      v36 = MEMORY[0x1E69E7CC0];
      v115 = sub_1C6FB6304();
      if (!v115)
      {
LABEL_41:
        v69 = sub_1C75504FC();
        sub_1C71CDA10(v69);
        v70 = sub_1C75504FC();
        sub_1C71CC894(v70);
        OUTLINED_FUNCTION_62_25();
        sub_1C70CCDF0(v71);
        if (v24)
        {

          OUTLINED_FUNCTION_20_4();
        }

        else
        {
          v73 = v20[11];

          sub_1C75504FC();
          v74 = sub_1C754FEEC();
          v75 = sub_1C75511BC();

          if (os_log_type_enabled(v74, v75))
          {
            OUTLINED_FUNCTION_23_1();
            a16 = OUTLINED_FUNCTION_60_11();
            *(v73 + 4) = OUTLINED_FUNCTION_69_25(4.9655e-34, a16, v76, v77, v78, v79, v80, v81);
            v82 = OUTLINED_FUNCTION_30_45();

            MEMORY[0x1CCA5D090](v83, v82);
            v85 = v84;

            v86 = OUTLINED_FUNCTION_46_36();
            v88 = sub_1C6F765A4(v86, v85, v87);

            *(v73 + 14) = v88;
            OUTLINED_FUNCTION_127_0();
            _os_log_impl(v89, v90, v91, v92, v93, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_23_3();
          }

          OUTLINED_FUNCTION_64_21();
          sub_1C754F2EC();

          if (v73)
          {

            OUTLINED_FUNCTION_38_1();
            sub_1C754F1AC();
            v94 = OUTLINED_FUNCTION_6_107();
            v95(v94);

            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_20_4();

            v97(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14, v115, a16, a17, a18, a19, a20);
          }

          else
          {
            OUTLINED_FUNCTION_38_1();
            sub_1C754F1AC();
            v105 = OUTLINED_FUNCTION_6_107();
            v106(v105);

            OUTLINED_FUNCTION_116();
            OUTLINED_FUNCTION_20_4();

            v109(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12, a13, a14, v115, a16, a17, a18, a19, a20);
          }
        }

        return;
      }

      a10 = v24;
      a11 = v20;
      a13 = v36 & 0xFFFFFFFFFFFFFF8;
      sub_1C75504FC();
      v37 = 0;
      v38 = MEMORY[0x1E69E7CC8];
      a14 = v36 >> 62;
      while (1)
      {
        if (a14)
        {
          v39 = OUTLINED_FUNCTION_282();
          v21 = MEMORY[0x1CCA5DDD0](v39);
        }

        else
        {
          if (v37 >= *(a13 + 16))
          {
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_72_23();
        }

        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (v38[2] && (v41 = *(v21 + 16), v42 = *(v21 + 24), sub_1C75504FC(), sub_1C6F78124(v41, v42), v44 = v43, , (v44 & 1) != 0))
        {
          OUTLINED_FUNCTION_24_44();
          if (v46)
          {
            v47 = *(v21 + 16);
            v48 = *(v21 + 24);
            a12 = v45;

            swift_isUniquelyReferenced_nonNull_native();
            a16 = v38;
            sub_1C6F78124(v47, v48);
            OUTLINED_FUNCTION_3_114();
            if (v51)
            {
              goto LABEL_62;
            }

            v52 = v49;
            v53 = v50;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8);
            OUTLINED_FUNCTION_29_41();
            if (sub_1C7551A2C())
            {
              sub_1C6F78124(v47, v48);
              OUTLINED_FUNCTION_5_1();
              if (!v55)
              {
                goto LABEL_51;
              }

              v52 = v54;
            }

            if (v53)
            {
              OUTLINED_FUNCTION_54_31();
            }

            else
            {
              OUTLINED_FUNCTION_45_37();
              OUTLINED_FUNCTION_1_3(v66);
              v67 = (v38[6] + 16 * v52);
              *v67 = v47;
              v67[1] = v48;
              *(v38[7] + 8 * v52) = v21;
              sub_1C75504FC();

              OUTLINED_FUNCTION_54_3();
              if (v51)
              {
                goto LABEL_64;
              }

              v38[2] = v68;
            }
          }
        }

        else
        {
          v56 = *(v21 + 16);
          v57 = *(v21 + 24);

          swift_isUniquelyReferenced_nonNull_native();
          a16 = v38;
          sub_1C6F78124(v56, v57);
          OUTLINED_FUNCTION_3_114();
          if (v51)
          {
            goto LABEL_58;
          }

          v60 = v58;
          v61 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8);
          OUTLINED_FUNCTION_29_41();
          if (sub_1C7551A2C())
          {
            sub_1C6F78124(v56, v57);
            OUTLINED_FUNCTION_5_1();
            if (!v55)
            {
LABEL_51:
              OUTLINED_FUNCTION_20_4();

              sub_1C7551E4C();
              return;
            }

            v60 = v62;
          }

          if (v61)
          {
            OUTLINED_FUNCTION_54_31();
          }

          else
          {
            OUTLINED_FUNCTION_45_37();
            OUTLINED_FUNCTION_1_3(v63);
            v64 = (v38[6] + 16 * v60);
            *v64 = v56;
            v64[1] = v57;
            *(v38[7] + 8 * v60) = v21;
            OUTLINED_FUNCTION_54_3();
            if (v51)
            {
              goto LABEL_60;
            }

            v38[2] = v65;
            sub_1C75504FC();
          }
        }

        ++v37;
        if (v40 == v115)
        {

          v24 = a10;
          v20 = a11;
          goto LABEL_41;
        }
      }
    }

    if (*(v31 + 16))
    {
      OUTLINED_FUNCTION_56_29(v31);
      sub_1C75504FC();
      v32 = swift_task_alloc();
      v20[37] = v32;
      *v32 = v20;
      OUTLINED_FUNCTION_1_136();
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t sub_1C743F548()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C743F678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_20_20();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_27_2();
  a26 = v28;
  v31 = v28[30];
  sub_1C75504FC();
  sub_1C75504FC();
  v32 = sub_1C754FEEC();
  v33 = sub_1C755118C();

  v34 = os_log_type_enabled(v32, v33);
  v35 = MEMORY[0x1E69E7CA0];
  if (v34)
  {
    v36 = v28[30];
    v37 = v28[28];
    OUTLINED_FUNCTION_23_1();
    a16 = OUTLINED_FUNCTION_60_11();
    *v31 = 136315394;
    v38 = OUTLINED_FUNCTION_46_36();
    v40 = sub_1C6F765A4(v38, v37, v39);

    *(v31 + 4) = v40;
    v41 = OUTLINED_FUNCTION_30_45();
    v42 = MEMORY[0x1CCA5D090](v36, v41);
    v44 = sub_1C6F765A4(v42, v43, &a16);

    *(v31 + 14) = v44;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  v50 = v28[30];
  v51 = v50 >> 62;
  if (v50 >> 62)
  {
LABEL_91:
    v52 = sub_1C75516BC();
  }

  else
  {
    v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v28[26];
  v54 = v53 >> 62;
  if (v53 >> 62)
  {
    v55 = sub_1C75516BC();
  }

  else
  {
    v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v55 + v52;
  if (__OFADD__(v55, v52))
  {
    __break(1u);
    goto LABEL_94;
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v54)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v54)
  {
LABEL_15:
    sub_1C75516BC();
    goto LABEL_16;
  }

  v57 = v53 & 0xFFFFFFFFFFFFFF8;
  v58 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  if (v58 >= v56)
  {
    v59 = v28[26];
    goto LABEL_17;
  }

LABEL_16:
  v59 = sub_1C75518CC();
  v57 = v59 & 0xFFFFFFFFFFFFFF8;
  v58 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_17:
  v60 = *(v57 + 16);
  v61 = v58 - v60;
  v62 = v57 + 8 * v60;
  v169 = v59;
  if (!v51)
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51)
    {
      if (v61 >= v51)
      {
        type metadata accessor for MusicKeywordCompletion();
        swift_arrayInitWithCopy();
        goto LABEL_30;
      }

LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_34:

    if (v52 <= 0)
    {
      goto LABEL_35;
    }

    goto LABEL_94;
  }

  if ((v50 & 0x8000000000000000) != 0)
  {
    v51 = v28[30];
  }

  else
  {
    v51 = v50 & 0xFFFFFFFFFFFFFF8;
  }

  v63 = sub_1C75516BC();
  if (!v63)
  {
    goto LABEL_34;
  }

  v64 = v63;
  v65 = sub_1C75516BC();
  if (v61 < v65)
  {
    goto LABEL_97;
  }

  if (v64 < 1)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  a12 = v65;
  a13 = v57;
  v66 = v62 + 32;
  OUTLINED_FUNCTION_0_181();
  sub_1C7099594(v67, &qword_1EC2155F0);
  for (i = 0; i != v64; ++i)
  {
    v69 = v28[30];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
    v70 = sub_1C6FDD0FC((v28 + 2), i, v69);
    v72 = *v71;

    v70(v28 + 2, 0);
    *(v66 + 8 * i) = v72;
  }

  v35 = MEMORY[0x1E69E7CA0];
  v51 = a12;
  v57 = a13;
LABEL_30:

  if (v51 < v52)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v51 > 0)
  {
    v73 = *(v57 + 16);
    v74 = __OFADD__(v73, v51);
    v75 = v73 + v51;
    if (v74)
    {
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    *(v57 + 16) = v75;
  }

LABEL_35:
  v76 = v28[31];
  v77 = v28[24];
  v78 = v28[25] + 1;
  v28[25] = v78;
  v28[26] = v59;
  v79 = v28[23];
  if (v78 != v77)
  {
    if (v78 < *(v79 + 16))
    {
      v85 = v79 + 16 * v78;
      v28[27] = *(v85 + 32);
      v28[28] = *(v85 + 40);
      sub_1C75504FC();
      v86 = swift_task_alloc();
      v28[29] = v86;
      *v86 = v28;
      v83 = OUTLINED_FUNCTION_19_72();
      goto LABEL_41;
    }

    goto LABEL_98;
  }

  v50 = v28[22];

  v80 = *(v50 + 16);
  v28[33] = 0;
  v28[34] = v59;
  v28[32] = v80;
  v81 = v28[22];
  if (!v80)
  {

    v168 = sub_1C6FB6304();
    if (!v168)
    {
LABEL_73:
      v121 = sub_1C75504FC();
      sub_1C71CDA10(v121);
      v122 = sub_1C75504FC();
      sub_1C71CC894(v122);
      OUTLINED_FUNCTION_62_25();
      sub_1C70CCDF0(v123);
      if (v76)
      {

        OUTLINED_FUNCTION_20_4();
      }

      else
      {
        v125 = v28[11];

        sub_1C75504FC();
        v126 = sub_1C754FEEC();
        v127 = sub_1C75511BC();

        if (os_log_type_enabled(v126, v127))
        {
          OUTLINED_FUNCTION_23_1();
          a16 = OUTLINED_FUNCTION_60_11();
          *(v125 + 4) = OUTLINED_FUNCTION_69_25(4.9655e-34, a16, v128, v129, v130, v131, v132, v133);
          v134 = OUTLINED_FUNCTION_30_45();

          MEMORY[0x1CCA5D090](v135, v134);
          v137 = v136;

          v138 = OUTLINED_FUNCTION_46_36();
          v140 = sub_1C6F765A4(v138, v137, v139);

          *(v125 + 14) = v140;
          OUTLINED_FUNCTION_127_0();
          _os_log_impl(v141, v142, v143, v144, v145, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_23_3();
        }

        OUTLINED_FUNCTION_64_21();
        sub_1C754F2EC();
        v146 = v28[12];

        if (v125)
        {

          OUTLINED_FUNCTION_38_1();
          sub_1C754F1AC();
          v147 = OUTLINED_FUNCTION_6_107();
          v148(v147);

          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_20_4();

          v150(v149, v150, v151, v152, v153, v154, v155, v156, a9, a10, a11, a12, a13, v168, v169, a16, a17, a18, a19, a20);
        }

        else
        {
          OUTLINED_FUNCTION_87_1(v146, v146[3]);
          sub_1C754F1AC();
          v158 = OUTLINED_FUNCTION_6_107();
          v159(v158);

          OUTLINED_FUNCTION_116();
          OUTLINED_FUNCTION_20_4();

          v162(v160, v161, v162, v163, v164, v165, v166, v167, a9, a10, a11, a12, a13, v168, v169, a16, a17, a18, a19, a20);
        }
      }

      return;
    }

    a9 = v76;
    a10 = v28;
    a12 = v59 & 0xFFFFFFFFFFFFFF8;
    a13 = v59 & 0xC000000000000001;
    sub_1C75504FC();
    v90 = 0;
    v91 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (a13)
      {
        v92 = OUTLINED_FUNCTION_98_1();
        v35 = MEMORY[0x1CCA5DDD0](v92);
      }

      else
      {
        OUTLINED_FUNCTION_41_43();
        if (v93)
        {
          goto LABEL_95;
        }

        OUTLINED_FUNCTION_72_23();
      }

      v28 = (v90 + 1);
      if (__OFADD__(v90, 1))
      {
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v91[2] && (v94 = *(v35 + 16), v51 = *(v35 + 24), sub_1C75504FC(), v50 = sub_1C6F78124(v94, v51), v96 = v95, , (v96 & 1) != 0))
      {
        OUTLINED_FUNCTION_24_44();
        if (v98)
        {
          v100 = *(v35 + 16);
          v99 = *(v35 + 24);
          a11 = v97;

          swift_isUniquelyReferenced_nonNull_native();
          a16 = v91;
          v50 = v91;
          sub_1C6F78124(v100, v99);
          OUTLINED_FUNCTION_9_88();
          if (v74)
          {
            goto LABEL_99;
          }

          v103 = v101;
          v51 = v102;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8);
          OUTLINED_FUNCTION_29_41();
          v104 = sub_1C7551A2C();
          v91 = a16;
          if (v104)
          {
            v50 = a16;
            v105 = sub_1C6F78124(v100, v99);
            if ((v51 & 1) != (v106 & 1))
            {
              goto LABEL_83;
            }

            v103 = v105;
            if ((v51 & 1) == 0)
            {
LABEL_59:
              OUTLINED_FUNCTION_59_27();
              OUTLINED_FUNCTION_1_3(v107);
              v108 = (v91[6] + 16 * v103);
              *v108 = v100;
              v108[1] = v99;
              *(v91[7] + 8 * v103) = v35;
              sub_1C75504FC();

              OUTLINED_FUNCTION_60_25();
              if (v74)
              {
                goto LABEL_103;
              }

              v91[2] = v109;
              goto LABEL_71;
            }
          }

          else if ((v51 & 1) == 0)
          {
            goto LABEL_59;
          }

          *(v91[7] + 8 * v103) = v35;
        }
      }

      else
      {
        v110 = *(v35 + 16);
        v111 = *(v35 + 24);

        swift_isUniquelyReferenced_nonNull_native();
        a16 = v91;
        OUTLINED_FUNCTION_36_36();
        OUTLINED_FUNCTION_9_88();
        if (v74)
        {
          goto LABEL_90;
        }

        v114 = v112;
        v51 = v113;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8);
        OUTLINED_FUNCTION_29_41();
        v115 = sub_1C7551A2C();
        v91 = a16;
        if (v115)
        {
          v116 = OUTLINED_FUNCTION_36_36();
          if ((v51 & 1) != (v117 & 1))
          {
LABEL_83:
            OUTLINED_FUNCTION_20_4();

            sub_1C7551E4C();
            return;
          }

          v114 = v116;
        }

        if (v51)
        {
          *(v91[7] + 8 * v114) = v35;
        }

        else
        {
          OUTLINED_FUNCTION_59_27();
          OUTLINED_FUNCTION_1_3(v118);
          v119 = (v91[6] + 16 * v114);
          *v119 = v110;
          v119[1] = v111;
          *(v91[7] + 8 * v114) = v35;
          OUTLINED_FUNCTION_60_25();
          if (v74)
          {
            goto LABEL_96;
          }

          v91[2] = v120;
          sub_1C75504FC();
        }
      }

LABEL_71:

      ++v90;
      if (v28 == v168)
      {

        v76 = a9;
        v28 = a10;
        goto LABEL_73;
      }
    }
  }

  if (*(v81 + 16))
  {
    OUTLINED_FUNCTION_56_29(v81);
    sub_1C75504FC();
    v82 = swift_task_alloc();
    v28[37] = v82;
    *v82 = v28;
    OUTLINED_FUNCTION_1_136();
LABEL_41:
    *(v83 + 8) = v84;
    OUTLINED_FUNCTION_61_21();
    OUTLINED_FUNCTION_20_4();

    sub_1C7441F28(v87, v88);
    return;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
}

uint64_t sub_1C7440038()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 304) = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C7440158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_20_20();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_27_2();
  a26 = v28;
  v31 = v28;
  v32 = v28[36];
  sub_1C75504FC();
  sub_1C75504FC();
  v33 = sub_1C754FEEC();
  v34 = sub_1C755118C();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v28[38];
    v36 = v31;
    OUTLINED_FUNCTION_23_1();
    a16 = OUTLINED_FUNCTION_60_11();
    *v32 = 136315394;
    v37 = OUTLINED_FUNCTION_282();
    v40 = sub_1C6F765A4(v37, v38, v39);

    *(v32 + 4) = v40;
    v31 = v36;
    v41 = OUTLINED_FUNCTION_30_45();
    v42 = MEMORY[0x1CCA5D090](v35, v41);
    v44 = sub_1C6F765A4(v42, v43, &a16);

    *(v32 + 14) = v44;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = v31[38];
  v51 = isUniquelyReferenced_nonNull_native >> 62;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_89:
    v52 = sub_1C75516BC();
  }

  else
  {
    v52 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v31[34];
  v54 = v53 >> 62;
  if (v53 >> 62)
  {
    v55 = sub_1C75516BC();
  }

  else
  {
    v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v55 + v52;
  if (__OFADD__(v55, v52))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v54)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v54)
  {
LABEL_15:
    sub_1C75516BC();
    goto LABEL_16;
  }

  v57 = v53 & 0xFFFFFFFFFFFFFF8;
  v58 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  if (v58 >= v56)
  {
    v59 = v31[34];
    goto LABEL_17;
  }

LABEL_16:
  v59 = sub_1C75518CC();
  v57 = v59 & 0xFFFFFFFFFFFFFF8;
  v58 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_17:
  v60 = *(v57 + 16);
  v61 = v58 - v60;
  v62 = v57 + 8 * v60;
  v152 = v59;
  if (!v51)
  {
    isUniquelyReferenced_nonNull_native &= 0xFFFFFFFFFFFFFF8uLL;
    v51 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v51)
    {
      if (v61 < v51)
      {
        goto LABEL_93;
      }

      type metadata accessor for MusicKeywordCompletion();
      swift_arrayInitWithCopy();
      goto LABEL_30;
    }

LABEL_34:

    if (v52 <= 0)
    {
      goto LABEL_35;
    }

    goto LABEL_92;
  }

  if (isUniquelyReferenced_nonNull_native < 0)
  {
    isUniquelyReferenced_nonNull_native = v31[38];
  }

  else
  {
    isUniquelyReferenced_nonNull_native &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v63 = sub_1C75516BC();
  if (!v63)
  {
    goto LABEL_34;
  }

  v64 = v63;
  v65 = sub_1C75516BC();
  if (v61 < v65)
  {
    goto LABEL_93;
  }

  if (v64 < 1)
  {
LABEL_97:
    __break(1u);
    return;
  }

  a12 = v65;
  a14 = v57;
  v153 = v52;
  v66 = v62 + 32;
  OUTLINED_FUNCTION_0_181();
  sub_1C7099594(v67, &qword_1EC2155F0);
  for (i = 0; i != v64; ++i)
  {
    v69 = v31[38];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0);
    isUniquelyReferenced_nonNull_native = sub_1C6FDD0FC((v31 + 6), i, v69);
    v71 = *v70;

    (isUniquelyReferenced_nonNull_native)(v31 + 6, 0);
    *(v66 + 8 * i) = v71;
  }

  v57 = a14;
  v52 = v153;
  v51 = a12;
LABEL_30:

  if (v51 < v52)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v51 > 0)
  {
    v72 = *(v57 + 16);
    v73 = __OFADD__(v72, v51);
    v74 = v72 + v51;
    if (v73)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    *(v57 + 16) = v74;
  }

LABEL_35:
  v75 = v31[39];
  v76 = v31[32];
  v77 = v31[33] + 1;
  v31[33] = v77;
  v31[34] = v59;
  v78 = v31[22];
  if (v77 == v76)
  {
    v151 = v75;

    v154 = sub_1C6FB6304();
    if (!v154)
    {
LABEL_71:
      v118 = sub_1C75504FC();
      sub_1C71CDA10(v118);
      v119 = sub_1C75504FC();
      sub_1C71CC894(v119);
      OUTLINED_FUNCTION_62_25();
      sub_1C70CCDF0(v120);
      if (v151)
      {

        OUTLINED_FUNCTION_20_4();
      }

      else
      {
        v122 = v31[11];

        sub_1C75504FC();
        v123 = sub_1C754FEEC();
        v124 = sub_1C75511BC();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = v31[11];
          OUTLINED_FUNCTION_23_1();
          a16 = OUTLINED_FUNCTION_60_11();
          *v122 = 136643075;
          v126 = OUTLINED_FUNCTION_46_36();
          *(v122 + 4) = sub_1C6F765A4(v126, v125, v127);
          v128 = OUTLINED_FUNCTION_30_45();

          MEMORY[0x1CCA5D090](v129, v128);

          v130 = OUTLINED_FUNCTION_65_27();
          v133 = sub_1C6F765A4(v130, v131, v132);

          *(v122 + 14) = v133;
          OUTLINED_FUNCTION_127_0();
          _os_log_impl(v134, v135, v136, v137, v138, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_23_3();
        }

        sub_1C754F2EC();
        v139 = v31[12];

        OUTLINED_FUNCTION_87_1(v139, v139[3]);
        sub_1C754F1AC();
        v141 = OUTLINED_FUNCTION_6_107();
        v142(v141);

        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_20_4();

        v145(v143, v144, v145, v146, v147, v148, v149, v150, a9, 0, a11, a12, v152, a14, v154, a16, a17, a18, a19, a20);
      }

      return;
    }

    a9 = v31;
    a14 = v59 & 0xC000000000000001;
    a12 = v59 & 0xFFFFFFFFFFFFFF8;
    sub_1C75504FC();
    v31 = 0;
    v79 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (a14)
      {
        v80 = OUTLINED_FUNCTION_98_1();
        v57 = MEMORY[0x1CCA5DDD0](v80);
      }

      else
      {
        OUTLINED_FUNCTION_41_43();
        if (v81)
        {
          goto LABEL_86;
        }

        OUTLINED_FUNCTION_72_23();
      }

      v82 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v79[2] && (v83 = *(v57 + 16), isUniquelyReferenced_nonNull_native = *(v57 + 24), sub_1C75504FC(), sub_1C6F78124(v83, isUniquelyReferenced_nonNull_native), v51 = v84, , (v51 & 1) != 0))
      {
        OUTLINED_FUNCTION_24_44();
        if (v86)
        {
          isUniquelyReferenced_nonNull_native = *(v57 + 16);
          v87 = *(v57 + 24);
          a11 = v85;

          swift_isUniquelyReferenced_nonNull_native();
          a16 = v79;
          v88 = OUTLINED_FUNCTION_58();
          sub_1C6F78124(v88, v89);
          OUTLINED_FUNCTION_9_88();
          if (v73)
          {
            goto LABEL_88;
          }

          v51 = v90;
          v92 = v91;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8);
          OUTLINED_FUNCTION_29_41();
          v93 = sub_1C7551A2C();
          v79 = a16;
          if (v93)
          {
            v94 = OUTLINED_FUNCTION_58();
            sub_1C6F78124(v94, v95);
            OUTLINED_FUNCTION_5_1();
            if (!v97)
            {
              goto LABEL_78;
            }

            v51 = v96;
            if ((v92 & 1) == 0)
            {
LABEL_52:
              OUTLINED_FUNCTION_59_27();
              OUTLINED_FUNCTION_1_3(v98);
              v99 = (v79[6] + 16 * v51);
              *v99 = isUniquelyReferenced_nonNull_native;
              v99[1] = v87;
              *(v79[7] + 8 * v51) = v57;
              sub_1C75504FC();

              OUTLINED_FUNCTION_60_25();
              if (v73)
              {
                goto LABEL_94;
              }

              v79[2] = v100;
              goto LABEL_65;
            }
          }

          else if ((v92 & 1) == 0)
          {
            goto LABEL_52;
          }

          *(v79[7] + 8 * v51) = v57;
        }
      }

      else
      {
        v101 = *(v57 + 16);
        v102 = *(v57 + 24);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a16 = v79;
        OUTLINED_FUNCTION_36_36();
        OUTLINED_FUNCTION_9_88();
        if (v73)
        {
          goto LABEL_85;
        }

        v51 = v103;
        v105 = v104;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8);
        OUTLINED_FUNCTION_29_41();
        v106 = sub_1C7551A2C();
        v79 = a16;
        if (v106)
        {
          OUTLINED_FUNCTION_36_36();
          OUTLINED_FUNCTION_5_1();
          if (!v97)
          {
LABEL_78:
            OUTLINED_FUNCTION_20_4();

            sub_1C7551E4C();
            return;
          }

          v51 = v107;
        }

        if (v105)
        {
          *(v79[7] + 8 * v51) = v57;
        }

        else
        {
          OUTLINED_FUNCTION_59_27();
          OUTLINED_FUNCTION_1_3(v108);
          v109 = (v79[6] + 16 * v51);
          *v109 = v101;
          v109[1] = v102;
          *(v79[7] + 8 * v51) = v57;
          OUTLINED_FUNCTION_60_25();
          if (v73)
          {
            goto LABEL_87;
          }

          v79[2] = v110;
          sub_1C75504FC();
        }
      }

LABEL_65:

      v31 = (v31 + 1);
      if (v82 == v154)
      {

        v31 = a9;
        goto LABEL_71;
      }
    }
  }

  if (v77 >= *(v78 + 16))
  {
    goto LABEL_95;
  }

  v111 = v78 + 16 * v77;
  v31[35] = *(v111 + 32);
  v31[36] = *(v111 + 40);
  sub_1C75504FC();
  v112 = swift_task_alloc();
  v31[37] = v112;
  *v112 = v31;
  v113 = OUTLINED_FUNCTION_1_136();
  *(v113 + 8) = v114;
  OUTLINED_FUNCTION_20_4();

  sub_1C7441F28(v115, v116);
}

uint64_t sub_1C7440AE0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 328) = v0;

  if (!v0)
  {
    *(v5 + 336) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1C7440BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v22 = v20[41];
  v23 = v20[42];
  v101 = sub_1C6FB6304();
  if (v101)
  {
    a9 = v22;
    a10 = v20;
    a14 = v23 & 0xC000000000000001;
    a12 = v23 & 0xFFFFFFFFFFFFFF8;
    sub_1C75504FC();
    v24 = 0;
    v25 = MEMORY[0x1E69E7CC8];
    a13 = v23;
    while (1)
    {
      if (a14)
      {
        v26 = OUTLINED_FUNCTION_282();
        v21 = MEMORY[0x1CCA5DDD0](v26);
      }

      else
      {
        OUTLINED_FUNCTION_41_43();
        if (v27)
        {
          goto LABEL_52;
        }

        OUTLINED_FUNCTION_72_23();
      }

      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
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
        __break(1u);
        return;
      }

      if (!v25[2])
      {
        break;
      }

      v29 = *(v21 + 16);
      v30 = *(v21 + 24);
      sub_1C75504FC();
      v31 = sub_1C6F78124(v29, v30);
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        break;
      }

      if (*(*(v25[7] + 8 * v31) + 32) >= *(v21 + 32))
      {
        goto LABEL_27;
      }

      a11 = v24 + 1;
      v35 = *(v21 + 16);
      v34 = *(v21 + 24);

      swift_isUniquelyReferenced_nonNull_native();
      a16 = v25;
      v36 = OUTLINED_FUNCTION_58();
      sub_1C6F78124(v36, v37);
      OUTLINED_FUNCTION_3_114();
      if (v40)
      {
        goto LABEL_54;
      }

      v41 = v38;
      v42 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8);
      OUTLINED_FUNCTION_29_41();
      if (sub_1C7551A2C())
      {
        v43 = OUTLINED_FUNCTION_58();
        sub_1C6F78124(v43, v44);
        OUTLINED_FUNCTION_5_1();
        if (!v46)
        {
          goto LABEL_44;
        }

        v41 = v45;
      }

      if (v42)
      {
        *(v25[7] + 8 * v41) = v21;
      }

      else
      {
        OUTLINED_FUNCTION_45_37();
        OUTLINED_FUNCTION_1_3(v61);
        v62 = (v25[6] + 16 * v41);
        *v62 = v35;
        v62[1] = v34;
        *(v25[7] + 8 * v41) = v21;
        sub_1C75504FC();

        OUTLINED_FUNCTION_54_3();
        if (v40)
        {
          goto LABEL_55;
        }

        v25[2] = v63;
      }

      v28 = v24 + 1;
LABEL_28:
      ++v24;
      if (v28 == v101)
      {

        v22 = a9;
        v20 = a10;
        goto LABEL_34;
      }
    }

    v47 = *(v21 + 16);
    v48 = *(v21 + 24);

    swift_isUniquelyReferenced_nonNull_native();
    a16 = v25;
    v49 = OUTLINED_FUNCTION_65_27();
    sub_1C6F78124(v49, v50);
    OUTLINED_FUNCTION_3_114();
    if (v40)
    {
      goto LABEL_51;
    }

    v53 = v51;
    v54 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEA8);
    OUTLINED_FUNCTION_29_41();
    if (sub_1C7551A2C())
    {
      v55 = OUTLINED_FUNCTION_65_27();
      sub_1C6F78124(v55, v56);
      OUTLINED_FUNCTION_5_1();
      if (!v46)
      {
LABEL_44:
        OUTLINED_FUNCTION_20_4();

        sub_1C7551E4C();
        return;
      }

      v53 = v57;
    }

    if (v54)
    {
      OUTLINED_FUNCTION_54_31();
    }

    else
    {
      OUTLINED_FUNCTION_45_37();
      OUTLINED_FUNCTION_1_3(v58);
      v59 = (v25[6] + 16 * v53);
      *v59 = v47;
      v59[1] = v48;
      *(v25[7] + 8 * v53) = v21;
      OUTLINED_FUNCTION_54_3();
      if (v40)
      {
        goto LABEL_53;
      }

      v25[2] = v60;
      sub_1C75504FC();
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_34:
  v64 = sub_1C75504FC();
  sub_1C71CDA10(v64);
  v65 = sub_1C75504FC();
  sub_1C71CC894(v65);
  OUTLINED_FUNCTION_62_25();
  sub_1C70CCDF0(v66);
  if (v22)
  {

    OUTLINED_FUNCTION_20_4();
  }

  else
  {

    sub_1C75504FC();
    v68 = sub_1C754FEEC();
    v69 = sub_1C75511BC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = v20[11];
      v71 = OUTLINED_FUNCTION_23_1();
      a16 = swift_slowAlloc();
      *v71 = 136643075;
      v72 = OUTLINED_FUNCTION_46_36();
      *(v71 + 4) = sub_1C6F765A4(v72, v70, v73);
      *(v71 + 12) = 2080;
      v74 = type metadata accessor for MusicKeywordCompletion();

      MEMORY[0x1CCA5D090](v75, v74);

      v76 = OUTLINED_FUNCTION_98_1();
      v79 = sub_1C6F765A4(v76, v77, v78);

      *(v71 + 14) = v79;
      _os_log_impl(&dword_1C6F5C000, v68, v69, "Final keyword results: %{sensitive}s -> %s", v71, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_64_21();
    sub_1C754F2EC();

    if (v69)
    {

      OUTLINED_FUNCTION_38_1();
      sub_1C754F1AC();
      v80 = OUTLINED_FUNCTION_180();
      v81(v80);

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_20_4();

      v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, v101, a16, a17, a18, a19, a20);
    }

    else
    {
      OUTLINED_FUNCTION_38_1();
      sub_1C754F1AC();
      v91 = OUTLINED_FUNCTION_180();
      v92(v91);

      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_20_4();

      v95(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, v101, a16, a17, a18, a19, a20);
    }
  }
}

uint64_t sub_1C7441190()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_10_79();
  v1 = OUTLINED_FUNCTION_39_1();
  v2(v1);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7441244()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_10_79();
  v1 = OUTLINED_FUNCTION_39_1();
  v2(v1);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C74412F8()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_10_79();
  v1 = OUTLINED_FUNCTION_39_1();
  v2(v1);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);

  OUTLINED_FUNCTION_43();

  return v4();
}

void static MusicKeywordsGeneratorEmbedded.createNGrams(from:n:)(uint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = *(a1 + 16);
    v4 = v3 - a2;
    if (v3 >= a2)
    {
      if (v3 - a2 >= 0)
      {
        v16 = MEMORY[0x1E69E7CC0];
        sub_1C6F7ED9C();
        v5 = 0;
        v6 = 0;
        v7 = 0;
        v15 = v3;
        while (v5 <= v4)
        {
          if (v7)
          {
            goto LABEL_27;
          }

          v8 = v6 + v2;
          if (__OFADD__(v6, v2))
          {
            goto LABEL_21;
          }

          if (v8 < v6)
          {
            goto LABEL_22;
          }

          if (v3 < v6)
          {
            goto LABEL_23;
          }

          if (v6 < 0)
          {
            goto LABEL_24;
          }

          if (v3 < v8)
          {
            goto LABEL_25;
          }

          v9 = v2;
          sub_1C75504FC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C80);
          sub_1C7099594(&qword_1EDD06878, &unk_1EC218C80);
          v10 = sub_1C75505FC();
          v12 = v11;

          v13 = *(v16 + 16);
          if (v13 >= *(v16 + 24) >> 1)
          {
            sub_1C6F7ED9C();
          }

          ++v5;
          *(v16 + 16) = v13 + 1;
          v14 = v16 + 16 * v13;
          *(v14 + 32) = v10;
          *(v14 + 40) = v12;
          v7 = v6 == v4;
          if (v6 == v4)
          {
            v6 = 0;
          }

          else
          {
            ++v6;
          }

          v2 = v9;
          v3 = v15;
          if (v4 + 1 == v5)
          {
            return;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
    }
  }
}

uint64_t sub_1C74415B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1C754D84C();
  v7 = *(v6 - 8);
  v91 = v6;
  v92 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v90 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v89 = &v83 - v10;
  sub_1C707DA44();
  v87 = v11;
  v84 = a1;
  v85 = a2;
  OUTLINED_FUNCTION_58();
  v12 = sub_1C75506FC();
  v14 = v13;
  v100 = v12;
  v101 = v13;
  v15 = swift_allocObject();
  v86 = v15;
  *(v15 + 16) = MEMORY[0x1E69E7CD0];
  v88 = (v15 + 16);
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = (a3 + 40);
    v18 = v89;
    do
    {
      v19 = *v17;
      v93 = *(v17 - 1);
      v20 = sub_1C75506FC();
      v96 = v100;
      v97 = v101;
      v94 = v20;
      v95 = v21;
      v22 = sub_1C754E15C();
      __swift_storeEnumTagSinglePayload(v18, 1, 1, v22);
      sub_1C6FB5E8C();
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_41();
      sub_1C755157C();
      v24 = v23;
      sub_1C6FB5FC8(v18, &qword_1EC214DF8);

      if (v24)
      {
      }

      else
      {
        sub_1C70F082C(&v96, v93, v19);

        sub_1C755073C();
      }

      v17 += 2;
      --v16;
    }

    while (v16);
    v12 = v100;
    v14 = v101;
  }

  v96 = v12;
  v97 = v14;
  v94 = 0x5D7D507B705C5BLL;
  v95 = 0xE700000000000000;
  v98 = 32;
  v99 = 0xE100000000000000;
  v82 = sub_1C6FB5E8C();
  v25 = sub_1C755155C();
  v27 = v26;

  v96 = v25;
  v97 = v27;
  v28 = v90;
  sub_1C754D7FC();
  v93 = v82;
  v29 = sub_1C755151C();
  v30 = *(v92 + 8);
  v92 += 8;
  v30(v28, v91);

  v31 = *(v29 + 16);
  if (v31)
  {
    v94 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v32 = v94;
    v89 = v29;
    v33 = (v29 + 40);
    do
    {
      v34 = *v33;
      v96 = *(v33 - 1);
      v97 = v34;
      sub_1C75504FC();
      v35 = v90;
      sub_1C754D7FC();
      v36 = sub_1C755154C();
      v38 = v37;
      v30(v35, v91);

      v94 = v32;
      v39 = *(v32 + 16);
      if (v39 >= *(v32 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v32 = v94;
      }

      *(v32 + 16) = v39 + 1;
      v40 = v32 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v38;
      v33 += 2;
      --v31;
    }

    while (v31);
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v41 = 0;
  v42 = *(v32 + 16);
  v92 = v32 + 32;
  v93 = v42;
  v43 = v87;
  v44 = v87 + 56;
  v45 = MEMORY[0x1E69E7CC0];
LABEL_16:
  while (v41 != v93)
  {
    if (v41 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    v46 = (v92 + 16 * v41);
    v48 = *v46;
    v47 = v46[1];
    ++v41;
    v49 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v49 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      if (*(v43 + 16))
      {
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        v50 = sub_1C7551FAC();
        v51 = ~(-1 << *(v43 + 32));
        while (1)
        {
          v31 = v50 & v51;
          if (((*(v44 + (((v50 & v51) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v50 & v51)) & 1) == 0)
          {
            break;
          }

          v52 = (*(v43 + 48) + 16 * v31);
          if (*v52 != v48 || v52[1] != v47)
          {
            v54 = sub_1C7551DBC();
            v50 = v31 + 1;
            if ((v54 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_16;
        }
      }

      else
      {
        sub_1C75504FC();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C();
        v45 = v94;
      }

      v56 = *(v45 + 16);
      v31 = v56 + 1;
      if (v56 >= *(v45 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v45 = v94;
      }

      *(v45 + 16) = v31;
      v57 = v45 + 16 * v56;
      *(v57 + 32) = v48;
      *(v57 + 40) = v47;
      v43 = v87;
    }
  }

  v58 = v88;
  *v58 = sub_1C70739AC(v45, *v88);
  v45 = v84;
  v31 = v85;
  if (qword_1EDD07E00 == -1)
  {
    goto LABEL_37;
  }

LABEL_41:
  OUTLINED_FUNCTION_0_184();
LABEL_37:
  v59 = sub_1C754FF1C();
  __swift_project_value_buffer(v59, qword_1EDD07E08);
  OUTLINED_FUNCTION_30();
  v60 = swift_allocObject();
  *(v60 + 16) = v45;
  *(v60 + 24) = v31;
  OUTLINED_FUNCTION_30();
  v61 = swift_allocObject();
  v62 = v86;
  *(v61 + 16) = sub_1C734A668;
  *(v61 + 24) = v62;
  sub_1C75504FC();
  v93 = sub_1C754FEEC();
  v63 = sub_1C755117C();
  v64 = OUTLINED_FUNCTION_71_18();
  *(v64 + 16) = 37;
  v65 = OUTLINED_FUNCTION_71_18();
  *(v65 + 16) = 8;
  OUTLINED_FUNCTION_30();
  v66 = swift_allocObject();
  *(v66 + 16) = sub_1C734A5D0;
  *(v66 + 24) = v60;
  OUTLINED_FUNCTION_30();
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1C734A5F4;
  *(v67 + 24) = v66;
  v68 = OUTLINED_FUNCTION_71_18();
  *(v68 + 16) = 37;
  v69 = OUTLINED_FUNCTION_71_18();
  *(v69 + 16) = 8;
  OUTLINED_FUNCTION_30();
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1C7443C54;
  *(v70 + 24) = v61;
  OUTLINED_FUNCTION_30();
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1C734A780;
  *(v71 + 24) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755D200;
  *(inited + 32) = sub_1C734A5EC;
  *(inited + 40) = v64;
  *(inited + 48) = sub_1C734A788;
  *(inited + 56) = v65;
  *(inited + 64) = sub_1C734A5FC;
  *(inited + 72) = v67;
  *(inited + 80) = sub_1C734A788;
  *(inited + 88) = v68;
  *(inited + 96) = sub_1C734A788;
  *(inited + 104) = v69;
  v73 = v93;
  *(inited + 112) = sub_1C734A77C;
  *(inited + 120) = v71;
  swift_setDeallocating();

  sub_1C6FDE6C8();
  if (os_log_type_enabled(v73, v63))
  {
    v74 = OUTLINED_FUNCTION_23_1();
    v96 = swift_slowAlloc();
    *v74 = 136643075;
    *(v74 + 4) = sub_1C6F765A4(v84, v85, &v96);
    *(v74 + 12) = 2085;
    swift_beginAccess();
    sub_1C75504FC();
    v75 = sub_1C7550F9C();
    v77 = v76;

    v78 = sub_1C6F765A4(v75, v77, &v96);

    *(v74 + 14) = v78;
    _os_log_impl(&dword_1C6F5C000, v73, v63, "Tokenized Keywords: %{sensitive}s -> %{sensitive}s", v74, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_109();
  }

  swift_beginAccess();
  v79 = sub_1C75504FC();
  v80 = sub_1C71CD85C(v79);

  return v80;
}

uint64_t sub_1C7441F28(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_7_77(sub_1C7441F48, v2);
}

uint64_t sub_1C7441F48()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD07E00 != -1)
  {
    OUTLINED_FUNCTION_0_184();
  }

  v1 = sub_1C754FF1C();
  v0[5] = __swift_project_value_buffer(v1, qword_1EDD07E08);
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();
  if (OUTLINED_FUNCTION_128(v3))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v9 = v0[3];
  v10 = v0[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v11 = swift_allocObject();
  v0[6] = v11;
  *(v11 + 16) = xmmword_1C755BAB0;
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  sub_1C75504FC();
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_52_3(v12);

  return PNTextEmbeddingService.encode(_:)(v11);
}

uint64_t sub_1C74420B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[8] = v5;
  v3[9] = v0;

  if (v0)
  {
    v6 = v3[4];
    v7 = sub_1C7442810;
  }

  else
  {
    v8 = v3[4];

    v7 = sub_1C74421C8;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

void sub_1C74421C8()
{
  v67 = v0;
  v1 = v0[8];
  if (!*(v1 + 16))
  {

    sub_1C75504FC();
    v30 = sub_1C754FEEC();
    v31 = sub_1C755119C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[2];
      v33 = v0[3];
      v34 = OUTLINED_FUNCTION_41_0();
      v35 = swift_slowAlloc();
      v66[0] = v35;
      *v34 = 136642819;
      *(v34 + 4) = sub_1C6F765A4(v32, v33, v66);
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Encoder produced no embeddings for query (%{sensitive}s)", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_37();
    }

    sub_1C7443750();
    v36 = swift_allocError();
    *v37 = 3;
    swift_willThrow();
    v38 = v36;
    v39 = sub_1C754FEEC();
    v40 = sub_1C755119C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_41_0();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v36;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_1C6F5C000, v39, v40, "Embedding generation failed. Delete the cache to be safe.  Error: %@", v41, 0xCu);
      sub_1C6FB5FC8(v42, &qword_1EC215190);
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_109();
    }

    swift_willThrow();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_25_7();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[4];
  v3 = *(v1 + 32);
  sub_1C75504FC();

  v4 = *(v2 + 128);
  v5 = *(v4 + 16);
  if (v5)
  {
    v64 = v3;
    v60 = v0;
    v66[0] = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    v6 = v66;
    sub_1C755195C();
    v7 = sub_1C70D4544(v4);
    v9 = v8;
    v10 = v4 + 64;
    v63 = v4;
    sub_1C7179E9C();
    v11 = 0;
    v62 = v9;
    v61 = v4 + 72;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
    {
      v3 = v7 >> 6;
      if ((*(v10 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_49;
      }

      if (*(v4 + 36) != v9)
      {
        goto LABEL_50;
      }

      v65 = v11;
      v12 = (*(v4 + 48) + 16 * v7);
      v14 = *v12;
      v13 = v12[1];
      sub_1C75504FC();
      v15 = sub_1C75504FC();
      v16 = static PNTextEmbeddingService.score(from:relativeTo:)(v15, v64);
      type metadata accessor for MusicKeywordCompletion();
      swift_allocObject();
      v17 = v14;
      v4 = v63;
      v1 = MusicKeywordCompletion.init(keyword:score:)(v17, v13, v16);

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v6 = (1 << *(v63 + 32));
      if (v7 >= v6)
      {
        goto LABEL_51;
      }

      v18 = *(v10 + 8 * v3);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_52;
      }

      if (*(v63 + 36) != v9)
      {
        goto LABEL_53;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v6 = (__clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v20 = v3 << 6;
        v21 = (v61 + 8 * v3);
        v22 = v3 + 1;
        while (v22 < (v6 + 63) >> 6)
        {
          v23 = *v21++;
          v1 = v23;
          v20 += 64;
          ++v22;
          if (v23)
          {
            v24 = OUTLINED_FUNCTION_180();
            sub_1C6F9ED50(v24, v25, v26);
            v6 = (__clz(__rbit64(v1)) + v20);
            goto LABEL_18;
          }
        }

        v27 = OUTLINED_FUNCTION_180();
        sub_1C6F9ED50(v27, v28, v29);
      }

LABEL_18:
      v11 = v65 + 1;
      v7 = v6;
      v9 = v62;
      if (v65 + 1 == v5)
      {

        v6 = v66[0];
        v0 = v60;
        goto LABEL_28;
      }
    }

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
    goto LABEL_54;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v3 = *(v0[4] + 120);
  if (v3)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v47 = v0[9];
    v48 = sub_1C6FB6304();
    v49 = sub_1C75504FC();
    v66[0] = sub_1C71CC894(v49);
    sub_1C743DAB0(v66);
    if (!v47)
    {

      if (v48 >= v3)
      {
        v50 = v3;
      }

      else
      {
        v50 = v48;
      }

      v6 = sub_1C70340A0(v50, v66[0]);
      v1 = v51;
      v4 = v52;
      v3 = v53;
      if ((v53 & 1) == 0)
      {
        goto LABEL_35;
      }

      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v55 = swift_dynamicCastClass();
      if (!v55)
      {
        swift_unknownObjectRelease();
        v55 = MEMORY[0x1E69E7CC0];
      }

      v56 = *(v55 + 16);

      if (__OFSUB__(v3 >> 1, v4))
      {
        goto LABEL_55;
      }

      if (v56 != (v3 >> 1) - v4)
      {
LABEL_56:
        swift_unknownObjectRelease();
LABEL_35:
        sub_1C739C81C(v6, v1, v4, v3);
        swift_unknownObjectRelease();
        goto LABEL_45;
      }

      v57 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v57)
      {
        swift_unknownObjectRelease();
      }

LABEL_45:
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_25_7();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
    v47 = v0[9];
    v54 = sub_1C75504FC();
    v66[0] = sub_1C71CC894(v54);
    sub_1C743DAB0(v66);
    if (!v47)
    {

      goto LABEL_45;
    }
  }

  OUTLINED_FUNCTION_25_7();
}

uint64_t sub_1C7442810()
{
  OUTLINED_FUNCTION_123();

  v1 = *(v0 + 72);
  v2 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_41_0();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1C6FB5FC8(v6, &qword_1EC215190);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_37();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_43();

  return v14();
}

uint64_t MusicKeywordsGeneratorEmbedded.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MusicKeywordsGeneratorEmbedded.__deallocating_deinit()
{
  MusicKeywordsGeneratorEmbedded.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C74429C8()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_50_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_282();

  return sub_1C743E970();
}

void sub_1C7442A70(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D494(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C7442BB4(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C7442B50(0, v3, 1, a1);
  }
}

uint64_t sub_1C7442B50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (*(*v9 + 32) >= *(v7 + 32))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
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

void sub_1C7442BB4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*(*a3 + 8 * v8) + 32);
        v10 = *(*(*a3 + 8 * v6) + 32);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v10 < v9) ^ (v12 >= *(*(*a3 + 8 * v11++) + 32));
          v12 = *(*(*a3 + 8 * v13) + 32);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v10 < v9)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
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

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (*(*v26 + 32) >= *(v24 + 32))
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
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

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = *(v67 + 1);
          sub_1C74431A0((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          sub_1C7423CF4(v67 + 16, v70 - 1 - v33, &v31[2 * v33]);
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C7443074(&v79, *a1, a3);
LABEL_89:
}

uint64_t sub_1C7443074(uint64_t *a1, char *a2, void *a3)
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
    sub_1C74431A0((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
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

uint64_t sub_1C74431A0(char *a1, char *a2, char *a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1);
    v10 = &a4[8 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*(*a4 + 32) >= *(*v6 + 32))
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *a4;
    v13 = v7 == a4;
    a4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  v14 = OUTLINED_FUNCTION_65_27();
  sub_1C7423CF8(v14);
  v10 = &a4[8 * v9];
LABEL_15:
  v15 = v6 - 8;
  for (v5 -= 8; v10 > a4 && v6 > v7; v5 -= 8)
  {
    v17 = *(v10 - 1);
    if (*(*v15 + 32) < *(v17 + 32))
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v17;
    }

    v10 -= 8;
  }

LABEL_28:
  v18 = (v10 - a4) / 8;
  if (v6 != a4 || v6 >= &a4[8 * v18])
  {
    memmove(v6, a4, 8 * v18);
  }

  return 1;
}

uint64_t sub_1C7443320(_BYTE *a1)
{
  v2 = v1;
  v3 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a1[32];
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = swift_retain_n();
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();

      v3 = sub_1C74436B0(v11, v6, v3);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  v8 = v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v6, v8);

  v9 = sub_1C74434E4(v8, v6, v3);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v9;
  }

LABEL_6:

  return v3;
}

uint64_t sub_1C74434E4(uint64_t result, uint64_t a2, uint64_t a3)
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
        sub_1C7484F80();
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

void *sub_1C74436B0(void *result, uint64_t a2, uint64_t a3)
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

    swift_retain_n();
    v6 = sub_1C74434E4(v5, a2, a3);

    return v6;
  }

  return result;
}

unint64_t sub_1C7443750()
{
  result = qword_1EC21BEA0;
  if (!qword_1EC21BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BEA0);
  }

  return result;
}

uint64_t dispatch thunk of MusicKeywordsGeneratorEmbedded.__allocating_init(usingCache:embeddingType:with:maxKeywords:)()
{
  OUTLINED_FUNCTION_75_1();
  v5 = (OUTLINED_FUNCTION_48_28() + 152);
  v6 = (*v5 + **v5);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  v3 = OUTLINED_FUNCTION_63_24();

  return v6(v3);
}

uint64_t dispatch thunk of MusicKeywordsGeneratorEmbedded.generateMusicKeywords(using:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_123();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v11 = (*(*v0 + 176) + **(*v0 + 176));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41_1(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_52_3(v8);

  return v11(v6, v4, v2);
}

uint64_t dispatch thunk of MusicKeywordsGeneratorEmbedded.generateMusicKeywords(using:eventRecorder:progressReporter:shouldTokenizeInput:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_50_32();
  v6 = (*(*v0 + 184) + **(*v0 + 184));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_52_3(v2);
  v4 = OUTLINED_FUNCTION_282();

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for MusicKeywordsGeneratorEmbedded.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7443C00()
{
  result = qword_1EC21BEB0;
  if (!qword_1EC21BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BEB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_54_31()
{
  *(*(v0 + 56) + 8 * v1) = v2;
}

uint64_t OUTLINED_FUNCTION_56_29(uint64_t result)
{
  *(v1 + 280) = *(result + 32);
  *(v1 + 288) = *(result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_69_25(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *v8 = a1;

  return sub_1C6F765A4(v10, v9, va);
}

uint64_t StoryDiversityController.__allocating_init(photoLibrary:storyAssetsFetcher:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  StoryDiversityController.init(photoLibrary:storyAssetsFetcher:)(a1, a2);
  return v4;
}

uint64_t StoryDiversityController.init(photoLibrary:storyAssetsFetcher:)(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_1C6FB5E28(a2, v8);
  type metadata accessor for FinalTokenGenerator();
  swift_allocObject();
  v6 = FinalTokenGenerator.init(photoLibrary:storyAssetsFetcher:)(a1, v8);
  __swift_destroy_boxed_opaque_existential_1(a2);
  *(v3 + 16) = v6;
  return v3;
}

uint64_t StoryDiversityController.diversify(_:consolidatedPersonAssetUUIDs:eventRecorder:progressReporter:storyGenerationDiagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[82] = v5;
  v6[81] = a5;
  v6[80] = a4;
  v6[79] = a3;
  v6[78] = a2;
  v6[77] = a1;
  v7 = sub_1C754F38C();
  v6[83] = v7;
  v6[84] = *(v7 - 8);
  v6[85] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7443ED8()
{
  v1 = *(v0 + 616);
  __swift_project_boxed_opaque_existential_1(*(v0 + 632), *(*(v0 + 632) + 24));
  sub_1C754F1CC();

  return MEMORY[0x1EEE6DFA0](sub_1C7443F80, v1, 0);
}

uint64_t sub_1C7443F80()
{
  v1 = *(v0 + 616);
  swift_beginAccess();
  *(v0 + 688) = *(v1 + 120);

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C7444008()
{
  v26 = v0;
  v1 = v0[86];
  if ((v1 >> 61) < 3)
  {
    v2 = v0[85];
    v3 = v0[84];
    v4 = v0[83];
    v5 = v0[80];
    v6 = v0[79];
    sub_1C7195E04();
    swift_allocError();
    *v7 = v1;
    *(v7 + 8) = 1;
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1C754F1AC();
    (*(v3 + 8))(v2, v4);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v8 + 8))(v5);

    OUTLINED_FUNCTION_43();
LABEL_12:

    return v9();
  }

  if (v1 >> 61 == 4)
  {
    v10 = *((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
    if (v10 >> 61 != 3)
    {
      v17 = v0[80];

      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v18 + 8))(v17);
      goto LABEL_11;
    }

    v11 = v10 & 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v1 & 0x1FFFFFFFFFFFFFFFLL;
  }

  memcpy(v0 + 2, (v11 + 16), 0x60uLL);
  v13 = v0[12];
  v12 = v0[13];
  v0[87] = v12;
  sub_1C717E390((v0 + 2), (v0 + 14), &qword_1EC219008);

  if (v12 >> 61 != 2)
  {
    v15 = v0[80];

    sub_1C7027A58((v0 + 2));
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v16 + 8))(v15);
LABEL_11:
    OUTLINED_FUNCTION_3_115();
    OUTLINED_FUNCTION_11_50(v0[79]);
    v19 = OUTLINED_FUNCTION_94();
    v20(v19);

    OUTLINED_FUNCTION_43();
    goto LABEL_12;
  }

  memcpy(v0 + 26, ((v12 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x58uLL);
  sub_1C717E390((v0 + 26), (v0 + 37), &qword_1EC219010);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  memcpy(__dst, v0 + 2, sizeof(__dst));
  ExtendedTokenCollection.assetScopingTokens.getter();
  v23 = v22;
  sub_1C7027A58((v0 + 2));
  *(inited + 32) = v23;
  __dst[0] = v13;
  sub_1C6FD42CC();
  v0[88] = __dst[0];
  memcpy(v0 + 58, v0 + 26, 0x50uLL);
  v24 = swift_task_alloc();
  v0[89] = v24;
  *v24 = v0;
  v24[1] = sub_1C7444488;

  return FinalTokenGenerator.generate(from:previousAssetScopingTokens:consolidatedPersonAssetUUIDs:eventRecorder:progressReporter:storyGenerationDiagnosticContext:)();
}

uint64_t sub_1C7444488()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
  }

  else
  {
    sub_1C7027A58(v2 + 208);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C74445A8()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[77];
  v4 = swift_allocObject();
  v0[91] = v4;
  memcpy((v4 + 16), v0 + 48, 0x50uLL);
  *(v4 + 96) = v1;
  *(v4 + 104) = v2;
  v0[76] = v4 | 0x6000000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1C7444660, v3, 0);
}

uint64_t sub_1C7444660()
{
  v1 = *(v0 + 720);
  sub_1C71937C4();
  *(v0 + 736) = v1;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C74446EC()
{

  OUTLINED_FUNCTION_3_115();
  OUTLINED_FUNCTION_11_50(*(v0 + 632));
  v1 = OUTLINED_FUNCTION_94();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C7444790()
{
  OUTLINED_FUNCTION_3_115();
  v1 = *(v0 + 632);

  sub_1C7027A58(v0 + 208);
  OUTLINED_FUNCTION_11_50(v1);
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7444838()
{
  OUTLINED_FUNCTION_3_115();
  v1 = *(v0 + 632);

  OUTLINED_FUNCTION_11_50(v1);
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t StoryDiversityController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1C74449F0()
{
  switch(*v0)
  {
    case 1:
      v5 = objc_opt_self();
      sub_1C735B400(v5);
      OUTLINED_FUNCTION_3_1();
      break;
    case 2:
      v2 = objc_opt_self();
      sub_1C735B3F4(v2);
      OUTLINED_FUNCTION_3_1();
      break;
    case 3:
      v3 = objc_opt_self();
      sub_1C735B3E8(v3);
      if (!v4)
      {
        [v3 useGlobalTraitsV3];
        OUTLINED_FUNCTION_3_1();
      }

      break;
    case 4:
      return;
    default:
      v1 = objc_opt_self();
      sub_1C744A320(v1);
      OUTLINED_FUNCTION_3_1();
      break;
  }
}

unsigned __int8 *static AjaxLLMModel.model(from:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 5)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

PhotosIntelligence::AjaxLLMModel_optional __swiftcall AjaxLLMModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AjaxLLMModel.rawValue.getter()
{
  result = 0x62303365736162;
  switch(*v0)
  {
    case 1:
      result = 0x6C657479726F7473;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x72546C61626F6C67;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C7444CA0@<X0>(unint64_t *a1@<X8>)
{
  result = AjaxLLMModel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void __swiftcall AjaxLLMOptions.init(n:top_p:temperature:max_tokens:length_penalty:frequency_penalty:random_seed:)(PhotosIntelligence::AjaxLLMOptions *__return_ptr retstr, Swift::Int_optional n, Swift::Double_optional top_p, Swift::Double_optional temperature, Swift::Int_optional max_tokens, Swift::Double_optional length_penalty, Swift::Double_optional frequency_penalty, Swift::Int_optional random_seed)
{
  retstr->n.value = n.value;
  retstr->n.is_nil = n.is_nil;
  *(&retstr->top_p.value + 7) = *&top_p.is_nil;
  BYTE6(retstr->temperature.value) = temperature.is_nil;
  *(&retstr->max_tokens.value + 5) = max_tokens.value;
  BYTE4(retstr->length_penalty.value) = max_tokens.is_nil;
  *(&retstr->frequency_penalty.value + 3) = *&length_penalty.is_nil;
  BYTE2(retstr->random_seed.value) = frequency_penalty.is_nil;
  *(&retstr[1].n.value + 1) = random_seed.value;
  LOBYTE(retstr[1].top_p.value) = random_seed.is_nil;
  *&retstr[1].top_p.is_nil = v8;
  HIBYTE(retstr[1].temperature.value) = v9 & 1;
  *(&retstr[1].max_tokens.value + 6) = v10;
  BYTE5(retstr[1].length_penalty.value) = v11 & 1;
}

void AjaxLLMOptions.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEB8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C7444F84();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  sub_1C7551CAC();
  if (!v0)
  {
    OUTLINED_FUNCTION_3_116();
    sub_1C7551C9C();
    OUTLINED_FUNCTION_3_116();
    sub_1C7551C9C();
    OUTLINED_FUNCTION_3_116();
    sub_1C7551CAC();
    OUTLINED_FUNCTION_3_116();
    sub_1C7551C9C();
    OUTLINED_FUNCTION_3_116();
    sub_1C7551CAC();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C7444F84()
{
  result = qword_1EC21BEC0;
  if (!qword_1EC21BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BEC0);
  }

  return result;
}

uint64_t sub_1C7444FD8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 110 && a2 == 0xE100000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x705F706F74 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656B6F745F78616DLL && a2 == 0xEA0000000000736ELL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x705F6874676E656CLL && a2 == 0xEE0079746C616E65;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001C75B0BB0 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x735F6D6F646E6172 && a2 == 0xEB00000000646565)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C7551DBC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C7445218(char a1)
{
  result = 110;
  switch(a1)
  {
    case 1:
      result = 0x705F706F74;
      break;
    case 2:
      result = 0x74617265706D6574;
      break;
    case 3:
      result = 0x656B6F745F78616DLL;
      break;
    case 4:
      result = 0x705F6874676E656CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x735F6D6F646E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7445300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7444FD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7445328(uint64_t a1)
{
  v2 = sub_1C7444F84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7445364(uint64_t a1)
{
  v2 = sub_1C7444F84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AjaxLLMOptions.init(from:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_32_40();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEC8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C7444F84();
  sub_1C7551FFC();
  if (!v1)
  {
    OUTLINED_FUNCTION_5_39();
    v10 = sub_1C7551B9C();
    v41 = v11 & 1;
    OUTLINED_FUNCTION_5_39();
    v12 = sub_1C7551B8C();
    v40 = v13 & 1;
    OUTLINED_FUNCTION_5_39();
    v34 = sub_1C7551B8C();
    v39 = v14 & 1;
    OUTLINED_FUNCTION_5_39();
    v33 = sub_1C7551B9C();
    v38 = v15 & 1;
    OUTLINED_FUNCTION_5_39();
    v32 = sub_1C7551B8C();
    v37 = v16 & 1;
    OUTLINED_FUNCTION_5_39();
    v31 = sub_1C7551B8C();
    v36 = v17 & 1;
    OUTLINED_FUNCTION_5_39();
    v18 = sub_1C7551B9C();
    v20 = v19;
    v21 = *(v6 + 8);
    v30 = v18;
    v21(v9, v4);
    v35 = v20 & 1;
    v22 = v40;
    v23 = v39;
    v24 = v38;
    v25 = v37;
    v26 = v36;
    *v3 = v10;
    *(v3 + 8) = v41;
    *(v3 + 16) = v12;
    *(v3 + 24) = v22;
    v27 = v33;
    *(v3 + 32) = v34;
    *(v3 + 40) = v23;
    *(v3 + 48) = v27;
    *(v3 + 56) = v24;
    v28 = v31;
    *(v3 + 64) = v32;
    *(v3 + 72) = v25;
    *(v3 + 80) = v28;
    *(v3 + 88) = v26;
    *(v3 + 96) = v30;
    *(v3 + 104) = v20 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7445638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C7445740(char a1)
{
  if (!a1)
  {
    return 0x6C65646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x736E6F6974706FLL;
  }

  return 0x74706D6F7270;
}

void sub_1C7445790()
{
  OUTLINED_FUNCTION_124();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BFD8);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v5, v5[3]);
  sub_1C744A7C8();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  LOBYTE(v10[0]) = 0;
  sub_1C7551CCC();
  if (!v1)
  {
    memcpy(v10, (v3 + 16), 0x69uLL);
    sub_1C744A81C();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    LOBYTE(v10[0]) = 2;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7445924(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6567617375 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974656C706D6F63 && a2 == 0xEB00000000736E6FLL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x61746C6564 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C7445ABC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C65646F6DLL;
      break;
    case 2:
      result = 0x6567617375;
      break;
    case 3:
      result = 0x6974656C706D6F63;
      break;
    case 4:
      result = 0x61746C6564;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C7445B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_32_40();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF90);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_70(v10, v10[3]);
  sub_1C744A5C4();
  sub_1C7551FFC();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_33_39();
    v27 = v16;
    LOBYTE(v29) = 1;
    v17 = OUTLINED_FUNCTION_33_39();
    v26 = v18;
    v25 = v17;
    sub_1C744A618();
    sub_1C7551C1C();
    v23 = v29;
    v22 = v30;
    v24 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BFA8);
    LOBYTE(v28[0]) = 3;
    sub_1C744A6C0(&qword_1EC21BFB0, &qword_1EC21BFA8, &unk_1C758BD78, sub_1C744A66C);
    OUTLINED_FUNCTION_27_50();
    v21 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BFC0);
    v38 = 4;
    sub_1C744A6C0(&qword_1EC21BFC8, &qword_1EC21BFC0, &unk_1C758BD80, sub_1C744A73C);
    OUTLINED_FUNCTION_27_50();
    v19 = OUTLINED_FUNCTION_163();
    v20(v19);
    v28[0] = v15;
    v28[1] = v27;
    v28[2] = v25;
    v28[3] = v26;
    v28[4] = v23;
    v28[5] = v22;
    v28[6] = v24;
    v28[7] = v21;
    v28[8] = a10;
    sub_1C744A790(v28, &v29);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v29 = v15;
    v30 = v27;
    v31 = v25;
    v32 = v26;
    v33 = v23;
    v34 = v22;
    v35 = v24;
    v36 = v21;
    v37 = a10;
    sub_1C744A26C(&v29);
    memcpy(v13, v28, 0x48uLL);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7445F04(uint64_t a1, uint64_t a2)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1C7445F7C()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  OUTLINED_FUNCTION_3_0();
  v10 = v8;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_6();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3();
  sub_1C7551FFC();
  if (!v0)
  {
    sub_1C7551BBC();
    (*(v10 + 8))(v1, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C74460BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745F74706D6F7270 && a2 == 0xED0000736E656B6FLL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C75B0C10 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F745F6C61746F74 && a2 == 0xEC000000736E656BLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C74461E0(char a1)
{
  if (!a1)
  {
    return 0x745F74706D6F7270;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6F745F6C61746F74;
}

uint64_t sub_1C7446250()
{
  OUTLINED_FUNCTION_32_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C050);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C744AD08();
  OUTLINED_FUNCTION_26_45();
  OUTLINED_FUNCTION_18_63();
  sub_1C7551BFC();
  OUTLINED_FUNCTION_12_77();
  OUTLINED_FUNCTION_18_63();
  sub_1C7551BFC();
  OUTLINED_FUNCTION_11_72();
  OUTLINED_FUNCTION_18_63();
  sub_1C7551BFC();
  v3 = OUTLINED_FUNCTION_0_17();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1(v0);
  return OUTLINED_FUNCTION_24_45();
}

uint64_t sub_1C74463A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001C75B0BF0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C74464C0(char a1)
{
  if (!a1)
  {
    return 0x6C65646F6DLL;
  }

  if (a1 == 1)
  {
    return 0x7475706E69;
  }

  return 0xD000000000000015;
}

uint64_t sub_1C7446514(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BFF0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(a1, a1[3]);
  sub_1C744A870();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  sub_1C7551CCC();
  if (!v1)
  {
    sub_1C7551CCC();
    sub_1C7551CDC();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1C7446680()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C000);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C744A870();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v6 = sub_1C7551BBC();
    v14 = v7;
    OUTLINED_FUNCTION_12_77();
    v12 = sub_1C7551BBC();
    v13 = v8;
    OUTLINED_FUNCTION_11_72();
    v9 = sub_1C7551BCC();
    v10 = OUTLINED_FUNCTION_401();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v4 = v6;
    *(v4 + 8) = v14;
    *(v4 + 16) = v12;
    *(v4 + 24) = v13;
    *(v4 + 32) = v9 & 1;
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7446870(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874676E656CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E656B6F74 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

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

uint64_t sub_1C7446988(char a1)
{
  if (!a1)
  {
    return 0x6874676E656CLL;
  }

  if (a1 == 1)
  {
    return 0x736E656B6F74;
  }

  return 0x64695F6E656B6F74;
}

void sub_1C74469DC()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF48);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_61_1();
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C7449EB4();
  OUTLINED_FUNCTION_245();
  sub_1C755200C();
  OUTLINED_FUNCTION_97();
  sub_1C7551D0C();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_30_1();
    sub_1C7449F64(v8);
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650);
    OUTLINED_FUNCTION_30_1();
    sub_1C7449F08(v9);
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_229();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7446BB4()
{
  OUTLINED_FUNCTION_32_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BF30);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_70(v0, v0[3]);
  sub_1C7449EB4();
  OUTLINED_FUNCTION_26_45();
  OUTLINED_FUNCTION_18_63();
  sub_1C7551BFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_12_0();
  sub_1C7449F64(v2);
  OUTLINED_FUNCTION_42_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650);
  OUTLINED_FUNCTION_12_0();
  sub_1C7449F08(v4);
  OUTLINED_FUNCTION_42_1();
  v5 = OUTLINED_FUNCTION_0_17();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_1(v0);
  return OUTLINED_FUNCTION_24_45();
}

uint64_t sub_1C7446DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7445638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7446DE4(uint64_t a1)
{
  v2 = sub_1C744A7C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7446E20(uint64_t a1)
{
  v2 = sub_1C744A7C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7446E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7445924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7446EA4(uint64_t a1)
{
  v2 = sub_1C744A5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7446EE0(uint64_t a1)
{
  v2 = sub_1C744A5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C7446F1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1C7445B48(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
  if (!v9)
  {
    memcpy(a9, __src, 0x48uLL);
  }
}

uint64_t sub_1C7446F6C(uint64_t a1)
{
  v2 = sub_1C744AD5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7446FA8(uint64_t a1)
{
  v2 = sub_1C744AD5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7447028(uint64_t a1)
{
  v2 = sub_1C744ADB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7447064(uint64_t a1)
{
  v2 = sub_1C744ADB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C74470E4(void *a1@<X8>)
{
  sub_1C7445F7C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C7447128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74460BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7447150(uint64_t a1)
{
  v2 = sub_1C744AD08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C744718C(uint64_t a1)
{
  v2 = sub_1C744AD08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C74471C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C7446250();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
    a1[2] = v5;
  }

  return result;
}

uint64_t sub_1C7447200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74463A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7447228(uint64_t a1)
{
  v2 = sub_1C744A870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7447264(uint64_t a1)
{
  v2 = sub_1C744A870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C74472A0@<D0>(uint64_t a1@<X8>)
{
  sub_1C7446680();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_1C7447308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7446870(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7447330(uint64_t a1)
{
  v2 = sub_1C7449EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C744736C(uint64_t a1)
{
  v2 = sub_1C7449EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C74473A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C7446BB4();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
    a1[2] = v5;
  }

  return result;
}

uint64_t AjaxLLM.__allocating_init(model:)(char *a1)
{
  v2 = swift_allocObject();
  AjaxLLM.init(model:)(a1);
  return v2;
}

uint64_t AjaxLLM.init(model:)(char *a1)
{
  v2 = *a1;
  sub_1C754FEFC();
  v3 = OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_session;
  v4 = [objc_opt_self() defaultSessionConfiguration];
  [v4 setTimeoutIntervalForRequest_];
  v5 = [objc_opt_self() sessionWithConfiguration_];

  *(v1 + v3) = v5;
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_model) = v2;
  return v1;
}

uint64_t sub_1C7447538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v82 = a1;
  v90 = a4;
  v89 = sub_1C754D70C();
  v86 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v84 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v73 - v10;
  v12 = sub_1C754DD2C();
  v88 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73 - v16;
  v102 = *a3;
  v18 = *(a3 + 2);
  v101 = *(a3 + 24);
  v100[0] = *(a3 + 25);
  *(v100 + 3) = *(a3 + 7);
  v19 = *(a3 + 4);
  v99 = *(a3 + 40);
  v98[0] = *(a3 + 41);
  *(v98 + 3) = *(a3 + 11);
  v20 = *(a3 + 6);
  v97 = *(a3 + 56);
  v21 = *(a3 + 73);
  v94 = *(a3 + 57);
  v95 = v21;
  v22 = *(a3 + 89);
  v85 = v5;
  v23 = *(v5 + OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_model);
  v96 = v22;
  v83 = v19;
  v87 = v18;
  v24 = OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_model;
  if ((v23 - 1) >= 3)
  {
    v27 = v23 == 0;
    if (v23)
    {
      v26 = 0xD00000000000003CLL;
    }

    else
    {
      v26 = 0xD000000000000022;
    }

    if (v27)
    {
      v25 = "ce-storytelling/api/v1/";
    }

    else
    {
      v25 = "__ajaxEndPromptToken";
    }
  }

  else
  {
    v25 = "lmqu-memory-creation/api/v1/";
    v26 = 0xD000000000000047;
  }

  *&v93[0] = v26;
  *(&v93[0] + 1) = v25 | 0x8000000000000000;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0x6974656C706D6F63, 0xEB00000000736E6FLL);

  v28 = v93[0];
  sub_1C754DCFC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    sub_1C6FB5FC8(v11, &qword_1EC215BD8);
    v30 = v89;
    v29 = v90;
    v31 = 1;
  }

  else
  {
    v77 = v28;
    v32 = v17;
    v81 = v20;
    v33 = v88;
    (*(v88 + 32))(v32, v11, v12);
    v34 = *(v33 + 16);
    v79 = v32;
    v34(v14, v32, v12);
    v80 = v12;
    v78 = a2;
    v35 = v84;
    sub_1C754D6CC();
    sub_1C754D6FC();
    v92[0] = 0x3D6B63616361;
    v92[1] = 0xE600000000000000;
    v36 = [objc_opt_self() ajaxDawToken];
    v37 = sub_1C755068C();
    v39 = v38;

    MEMORY[0x1CCA5CD70](v37, v39);

    sub_1C754D6DC();

    sub_1C754D6AC();
    sub_1C754D6BC();
    v40 = v85;
    v41 = v24;
    LOBYTE(v92[0]) = *(v85 + v24);
    sub_1C74449F0();
    v93[1] = v102;
    *(&v93[2] + 9) = v100[0];
    HIDWORD(v93[2]) = *(v100 + 3);
    *(&v93[3] + 9) = v98[0];
    HIDWORD(v93[3]) = *(v98 + 3);
    *&v93[0] = v42;
    *(&v93[0] + 1) = v43;
    *&v93[2] = v87;
    BYTE8(v93[2]) = v101;
    *&v93[3] = v83;
    BYTE8(v93[3]) = v99;
    *&v93[4] = v81;
    BYTE8(v93[4]) = v97;
    *(&v93[6] + 9) = v96;
    *(&v93[5] + 9) = v95;
    *(&v93[4] + 9) = v94;
    *&v93[8] = v82;
    *(&v93[8] + 1) = v78;
    sub_1C754D7AC();
    swift_allocObject();
    sub_1C75504FC();
    sub_1C754D79C();
    memcpy(v92, v93, sizeof(v92));
    sub_1C744A29C();
    v44 = sub_1C754D78C();
    v78 = v45;
    v82 = v44;
    v46 = v81;
    v47 = v79;

    sub_1C744A2F0(v93);
    sub_1C75504FC();

    v48 = sub_1C754FEEC();
    v49 = sub_1C755117C();

    if (os_log_type_enabled(v48, v49))
    {
      v75 = v49;
      v76 = v28;
      v50 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v92[0] = v74;
      *v50 = 136316162;
      v51 = sub_1C6F765A4(v77, *(&v28 + 1), v92);

      *(v50 + 4) = v51;
      *(v50 + 12) = 2080;
      LOBYTE(v91) = *(v40 + v41);
      sub_1C74449F0();
      v54 = sub_1C6F765A4(v52, v53, v92);

      *(v50 + 14) = v54;
      *(v50 + 22) = 2080;
      if (v99)
      {
        v55 = 0xE300000000000000;
        v56 = 7104878;
      }

      else
      {
        v56 = sub_1C7550F4C();
        v55 = v58;
      }

      v59 = sub_1C6F765A4(v56, v55, v92);

      *(v50 + 24) = v59;
      *(v50 + 32) = 2080;
      if (v101)
      {
        v60 = 0xE300000000000000;
        v61 = 7104878;
      }

      else
      {
        v61 = sub_1C7550F4C();
        v60 = v62;
      }

      v57 = v88;
      v63 = sub_1C6F765A4(v61, v60, v92);

      *(v50 + 34) = v63;
      *(v50 + 42) = 2080;
      if (v97)
      {
        v64 = 0xE300000000000000;
        v65 = 7104878;
      }

      else
      {
        v91 = v46;
        sub_1C7025C9C();
        v65 = sub_1C75515BC();
        v64 = v66;
      }

      v67 = sub_1C6F765A4(v65, v64, v92);

      *(v50 + 44) = v67;
      v68 = v76;
      _os_log_impl(&dword_1C6F5C000, v76, v75, "buildCompletionRequest for modelUrl: %s model: %s and options: (T:%s, topP: %s, maxTokens: %s)", v50, 0x34u);
      v69 = v74;
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v69, -1, -1);
      MEMORY[0x1CCA5F8E0](v50, -1, -1);
    }

    else
    {

      v57 = v88;
    }

    sub_1C754D6EC();
    (*(v57 + 8))(v47, v80);
    v71 = v89;
    v70 = v90;
    (*(v86 + 32))(v90, v35, v89);
    v29 = v70;
    v31 = 0;
    v30 = v71;
  }

  return __swift_storeEnumTagSinglePayload(v29, v31, 1, v30);
}

uint64_t sub_1C7447DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v59 = a3;
  v55 = a1;
  v56 = a2;
  v61 = a4;
  v6 = sub_1C754D70C();
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v51 - v10;
  v12 = sub_1C754DD2C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v51 - v17;
  v19 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_model);
  v60 = v6;
  v58 = OBJC_IVAR____TtC18PhotosIntelligence7AjaxLLM_model;
  if ((v19 - 1) >= 3)
  {
    v22 = v19 == 0;
    if (v19)
    {
      v21 = 0xD00000000000003CLL;
    }

    else
    {
      v21 = 0xD000000000000022;
    }

    if (v22)
    {
      v20 = "ce-storytelling/api/v1/";
    }

    else
    {
      v20 = "__ajaxEndPromptToken";
    }
  }

  else
  {
    v20 = "lmqu-memory-creation/api/v1/";
    v21 = 0xD000000000000047;
  }

  v63 = v21;
  v64 = v20 | 0x8000000000000000;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0x736E656B6F74, 0xE600000000000000);

  v23 = v63;
  v24 = v64;
  sub_1C754DCFC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    sub_1C6FB5FC8(v11, &qword_1EC215BD8);
    v25 = 1;
    v27 = v60;
    v26 = v61;
  }

  else
  {
    v52 = v23;
    v28 = v13;
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    sub_1C754D6CC();
    sub_1C754D6FC();
    v63 = 0x3D6B63616361;
    v64 = 0xE600000000000000;
    v29 = [objc_opt_self() ajaxDawToken];
    v30 = sub_1C755068C();
    v32 = v31;

    MEMORY[0x1CCA5CD70](v30, v32);

    sub_1C754D6DC();

    sub_1C754D6AC();
    sub_1C754D6BC();
    v53 = v18;
    v54 = v12;
    LOBYTE(v63) = *(v5 + v58);
    sub_1C74449F0();
    v34 = v33;
    v36 = v35;
    sub_1C754D7AC();
    swift_allocObject();
    v37 = v56;
    sub_1C75504FC();
    sub_1C754D79C();
    v63 = v34;
    v64 = v36;
    v65 = v55;
    v66 = v37;
    v67 = v59 & 1;
    sub_1C744A384();
    v38 = sub_1C754D78C();
    v51[0] = v39;
    v51[1] = v38;
    v40 = v53;
    v55 = v28;

    sub_1C75504FC();

    v41 = sub_1C754FEEC();
    v42 = sub_1C755117C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v5;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v63 = v45;
      *v44 = 136315650;
      v46 = sub_1C6F765A4(v52, v24, &v63);

      *(v44 + 4) = v46;
      *(v44 + 12) = 2080;
      v62 = *(v43 + v58);
      sub_1C74449F0();
      v49 = sub_1C6F765A4(v47, v48, &v63);

      *(v44 + 14) = v49;
      *(v44 + 22) = 1024;
      *(v44 + 24) = v59 & 1;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "buildTokensRequest for modelUrl: %s model: %s exclude_prompt_format: %{BOOL}d", v44, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v45, -1, -1);
      MEMORY[0x1CCA5F8E0](v44, -1, -1);
    }

    else
    {
    }

    sub_1C754D6EC();
    (*(v55 + 8))(v40, v54);
    v27 = v60;
    v26 = v61;
    (*(v57 + 32))(v61, v8, v60);
    v25 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v26, v25, 1, v27);
}

uint64_t AjaxLLM.countTokens(prompt:ignoreFormatting:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 136) = v3;
  *(v1 + 40) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BEE0);
  *(v1 + 64) = swift_task_alloc();
  v5 = sub_1C754D70C();
  *(v1 + 72) = v5;
  *(v1 + 80) = *(v5 - 8);
  *(v1 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7448574, 0, 0);
}

uint64_t sub_1C7448574()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  sub_1C7447DD0(*(v0 + 40), *(v0 + 48), *(v0 + 136), v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1C6FB5FC8(*(v0 + 64), &qword_1EC21BEE0);
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_43();

    return v4();
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_1C744870C;
    v7 = *(v0 + 88);

    return MEMORY[0x1EEDC6260](v7, 0);
  }
}

uint64_t sub_1C744870C()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  v2[13] = v3;
  v2[14] = v4;
  v2[15] = v5;
  v2[16] = v0;

  if (v0)
  {
    v6 = sub_1C7448B18;
  }

  else
  {
    v6 = sub_1C7448820;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C7448820()
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_126();
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_17_76(v11, 2);
    sub_1C6FC1640(v2, v0);

LABEL_13:
    (*(v6 + 8))(v3, v4);
    goto LABEL_14;
  }

  v8 = v7;
  v9 = [v7 statusCode];
  switch(v9)
  {
    case 302:
      goto LABEL_5;
    case 429:
      OUTLINED_FUNCTION_2_126();
      sub_1C7448B98();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v12 = 1;
      *(v12 + 8) = 1;
      goto LABEL_12;
    case 401:
LABEL_5:
      OUTLINED_FUNCTION_2_126();
      sub_1C7448B98();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 1;
LABEL_12:
      swift_willThrow();

      sub_1C6FC1640(v2, v0);
      goto LABEL_13;
  }

  if (v9 >= 300)
  {
    OUTLINED_FUNCTION_2_126();
    v19 = [v8 statusCode];
    sub_1C7448B98();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v20 = v19;
    *(v20 + 8) = 0;
    goto LABEL_12;
  }

  v13 = v1[16];
  sub_1C754D73C();
  swift_allocObject();
  sub_1C754D72C();
  sub_1C7448BEC();
  OUTLINED_FUNCTION_25_45();
  v14 = v1[14];
  v15 = v1[15];
  v16 = v1[13];
  v17 = v1[10];
  v18 = v1[9];
  if (v13)
  {
    (*(v17 + 8))(v1[11], v18);

    sub_1C6FC1640(v16, v14);

LABEL_14:

    OUTLINED_FUNCTION_43();

    return v21();
  }

  (*(v17 + 8))(v1[11], v18);

  sub_1C6FC1640(v16, v14);

  v23 = v1[2];

  v24 = v1[1];

  return v24(v23);
}

uint64_t sub_1C7448B18()
{
  OUTLINED_FUNCTION_42();
  (*(v0[10] + 8))(v0[11], v0[9]);

  OUTLINED_FUNCTION_43();

  return v1();
}