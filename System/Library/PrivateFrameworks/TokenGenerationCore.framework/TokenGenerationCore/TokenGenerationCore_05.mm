__n128 Grammar.init(schema:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Schema();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  Grammar.init(_:)(v8, v13);
  (*(v5 + 8))(a1, v4);
  v9 = v13[1];
  result = v14;
  v11 = v15;
  *a2 = v13[0];
  *(a2 + 8) = v9;
  *(a2 + 16) = result;
  *(a2 + 32) = v11;
  return result;
}

uint64_t GuidedGenerationConstraints.init(schema:enableDeterministicTokenRuns:vocabularyManager:numberOfParallelTasks:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v49 = a4;
  v10 = type metadata accessor for Schema();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  (*(v11 + 16))(v14, a1, v10);
  Grammar.init(_:)(v14, v82);
  if (v5)
  {
    (*(v11 + 8))(a1, v10);
  }

  else
  {
    v43 = 0;
    v44 = v11;
    v45 = v10;
    v46 = a1;
    v84 = a2;
    v47 = a5;
    v17 = v83;
    v78[0] = v82[0];
    v42 = v82[0];
    v78[1] = v82[1];
    v78[2] = v82[2];
    v79 = v82[3];
    v80 = v82[4];
    v81 = v83;
    type metadata accessor for EarleyRecognizer.RecognizerGrammar();
    swift_allocObject();
    swift_retain_n();

    v18 = EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v78, v15);
    v19 = specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
    v20 = swift_allocObject();
    v48 = xmmword_1A8FC9400;
    *(v20 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = v48;
    *(v21 + 32) = v19;
    *(v20 + 32) = v21;
    type metadata accessor for EarleyRecognizer();
    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    *(v22 + 28) = -1;
    *(v22 + 24) = 0;
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    *(v22 + 48) = MEMORY[0x1E69E7CC0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
    swift_allocObject();

    v24 = specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v23, v15, 0, 1);

    GuidedGenerationOverrides.init()(v78);
    LODWORD(v42) = _s19TokenGenerationCore27SpaceLookaheadMaskGeneratorVACyxGycfCAA16EarleyRecognizerC_Ttg5();
    if (one-time initialization token for isInternalInstall != -1)
    {
      swift_once();
    }

    if (isInternalInstall)
    {
      v79(&v65, v78[0]);
      v25 = v65;
      v26 = v65;
      GuidedGenerationOverrides.init()(&v52);
      v75 = v62;
      v76 = v63;
      v77 = v64;
      v71 = v58;
      v72 = v59;
      v73 = v60;
      v74 = v61;
      v67 = v54;
      v68 = v55;
      v69 = v56;
      v70 = v57;
      v65 = v52;
      v66 = v53;
      v27 = v84;
      if (v26 != 2)
      {
        v27 = v25;
      }

      (*(&v76 + 1))(&v50, v75);
      outlined destroy of GuidedGenerationOverrides(&v65);
      v28 = v50;
      if (v51)
      {
        v28 = 2000;
      }

      v41 = v28;
    }

    else
    {
      GuidedGenerationOverrides.init()(&v52);
      v75 = v62;
      v76 = v63;
      v77 = v64;
      v71 = v58;
      v72 = v59;
      v73 = v60;
      v74 = v61;
      v67 = v54;
      v68 = v55;
      v69 = v56;
      v70 = v57;
      v65 = v52;
      v66 = v53;
      outlined destroy of GuidedGenerationOverrides(&v65);
      v50 = 0;
      v41 = 2000;
      v27 = v84;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = v48;
    v30 = MEMORY[0x1E69E7CC0];
    v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v29 + 32) = v24;
    *(v29 + 40) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMR);
    v32 = swift_allocObject();
    type metadata accessor for Lock();
    v33 = swift_allocObject();
    swift_retain_n();
    v34 = swift_slowAlloc();
    *(v33 + 16) = v34;
    pthread_mutex_init(v34, 0);

    *(v32 + 16) = v33;
    *(v32 + 24) = v29;
    type metadata accessor for MaskCache();
    v35 = swift_allocObject();
    *(v35 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(v30);
    v36 = swift_allocObject();
    v37 = swift_slowAlloc();
    *(v36 + 16) = v37;
    pthread_mutex_init(v37, 0);
    outlined destroy of GuidedGenerationOverrides(v78);

    result = (*(v44 + 8))(v46, v45);
    *(v35 + 24) = v36;
    v38 = v42 & 1;
    v39 = v47;
    *v47 = v24;
    v39[1] = 0;
    v39[2] = v32;
    v39[3] = v35;
    v39[4] = v24;
    *(v39 + 40) = v38;
    *(v39 + 41) = v27 & 1;
    v39[6] = v49;
    *(v39 + 56) = 0;
    v39[8] = v41;
  }

  return result;
}

uint64_t Grammar.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34[0] = a2;
  v3 = type metadata accessor for GenerationSchema();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecursiveSchema();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for JSONSchema();
  v13 = *(v35 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1E69E7CC8];
  v36 = a1;
  Schema.type.getter();
  GenerationSchema.recursiveSchema()();
  (*(v4 + 8))(v7, v3);
  RecursiveSchema.jsonSchema()();
  (*(v9 + 8))(v12, v8);
  v17 = v34[1];
  v18 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(v16, 0, &v42);
  if (v17)
  {
    v19 = type metadata accessor for Schema();
    (*(*(v19 - 8) + 8))(v36, v19);
    (*(v13 + 8))(v16, v35);
  }

  else
  {
    v21 = v18;
    v22 = v34[0];
    v23 = v36;

    v24 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v24;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v16, isUniquelyReferenced_nonNull_native);
    (*(v13 + 8))(v16, v35);

    if (v21[2])
    {
      v26 = v21[4];
      v27 = v21[5];

      v37 = static JSONSchema.Reference.root.getter();
      v38 = v28;
      v41[0] = v26;
      v41[1] = v27;
      v29 = Array<A>.updatingReferences(from:to:)(&v37, v41, v21);

      Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(v29, 1, &outlined read-only object #0 of Grammar.init(_:), &v37);
      v30 = type metadata accessor for Schema();
      result = (*(*(v30 - 8) + 8))(v23, v30);
      v31 = v38;
      v32 = v39;
      v33 = v40;
      *v22 = v37;
      *(v22 + 8) = v31;
      *(v22 + 16) = v32;
      *(v22 + 32) = v33;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static Grammar.rules(for:with:wrapStringsInQuotes:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  if (*(*a2 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v9 & 1) != 0))
  {
    a3 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    v10 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(a1, a3 & 1, a2);
    if (!v3)
    {
      a3 = v10;

      v11 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *a2;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a1, isUniquelyReferenced_nonNull_native);
      *a2 = v14;
    }
  }

  return a3;
}

uint64_t closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(uint64_t a1, int a2, uint64_t *a3)
{
  v191 = a3;
  LODWORD(v200) = a2;
  v177 = type metadata accessor for JSONSchema.Reference();
  v176 = *(v177 - 8);
  v4 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v174 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSONSchema.AnyOf();
  v189 = *(v6 - 8);
  v190 = v6;
  v7 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v188 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for JSONSchema.Array();
  v183 = *(v184 - 8);
  v9 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for JSONSchema.Dictionary();
  v186 = *(v185 - 8);
  v11 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v187 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for JSONSchema.Object();
  v179 = *(v180 - 8);
  v13 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JSONSchema.String();
  v199 = *(v15 - 8);
  v16 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v174 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for JSONSchema.Number();
  v194 = *(v19 - 8);
  v195 = v19;
  v20 = *(v194 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v193 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for JSONSchema.Integer();
  v197 = *(v22 - 8);
  v198 = v22;
  v23 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v196 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for JSONSchema.Constant();
  v192 = *(v25 - 8);
  v26 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for JSONSchema();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v181 = &v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v174 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = (&v174 - v37);
  v39 = *(v30 + 16);
  v174 = a1;
  v39(&v174 - v37, a1, v29);
  v40 = (*(v30 + 88))(v38, v29);
  if (v40 != *MEMORY[0x1E69A0AB8])
  {
    if (v40 == *MEMORY[0x1E69A0AC0])
    {
      (*(v30 + 8))(v38, v29);
      return specialized static Grammar.BOOLean()();
    }

    if (v40 == *MEMORY[0x1E69A0AC8])
    {
      (*(v30 + 96))(v38, v29);
      v51 = *v38;
      v52 = swift_projectBox();
      v15 = v196;
      v53 = v197;
      v54 = v198;
      (*(v197 + 16))(v196, v52, v198);
      v55 = JSONSchema.Number.minimum.getter();
      v57 = v56;
      v58 = MEMORY[0x1AC57B430]();
      v60 = wholeNumberRule(min:max:)(&v202, v55, v57 & 1, v58, v59 & 1);
      v61 = v202;
      v200 = v203;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v18 = swift_allocObject();
      *(v18 + 1) = xmmword_1A8FC9400;
      *(v18 + 4) = v61;
      *(v18 + 40) = v200;
      v62 = *(v60 + 16);
      if (v62)
      {
        v63 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore4RuleV_Tt1g5(*(v60 + 16), 0);
        v43 = specialized Sequence._copySequenceContents(initializing:)(&v202, v63 + 4, v62, v60);
        outlined consume of Set<NonTerminalSymbol>.Iterator._Variant();
        if (v43 != v62)
        {
          __break(1u);
          goto LABEL_10;
        }
      }

      else
      {

        v63 = MEMORY[0x1E69E7CC0];
      }

      v202 = v18;
      specialized Array.append<A>(contentsOf:)(v63);
      (*(v53 + 8))(v15, v54);

      return v202;
    }

    if (v40 == *MEMORY[0x1E69A0AA8])
    {
      (*(v30 + 96))(v38, v29);
      v43 = *v38;
      v68 = swift_projectBox();
      v15 = v193;
      v69 = v194;
      v70 = v195;
      (*(v194 + 16))(v193, v68, v195);
      v71 = JSONSchema.Number.minimum.getter();
      v73 = v72;
      v74 = MEMORY[0x1AC57B340]();
      v76 = decimalNumberRule(min:max:significantFigures:)(&v202, v71, v73 & 1, v74, v75 & 1, 3);
      v77 = v202;
      v200 = v203;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1A8FC9400;
      *(v78 + 32) = v77;
      *(v78 + 40) = v200;
      v79 = *(v76 + 16);
      if (v79)
      {
        v80 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore4RuleV_Tt1g5(*(v76 + 16), 0);
        v18 = specialized Sequence._copySequenceContents(initializing:)(&v202, v80 + 4, v79, v76);
        outlined consume of Set<NonTerminalSymbol>.Iterator._Variant();
        if (v18 != v79)
        {
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {

        v80 = MEMORY[0x1E69E7CC0];
      }

      v202 = v78;
      specialized Array.append<A>(contentsOf:)(v80);
      (*(v69 + 8))(v15, v70);

      return v202;
    }

    if (v40 == *MEMORY[0x1E69A0AE8])
    {
      (*(v30 + 96))(v38, v29);
      v82 = *v38;
      v83 = swift_projectBox();
      v84 = v192;
      (*(v192 + 16))(v28, v83, v25);
      v85 = JSONSchema.Constant.const.getter();
      v87 = specialized static Grammar.constant(value:)(v85, v86);

      (*(v84 + 8))(v28, v25);

      return v87;
    }

    if (v40 == *MEMORY[0x1E69A0A90])
    {
      (*(v30 + 8))(v38, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v89 = swift_allocObject();
      v200 = xmmword_1A8FC9400;
      *(v89 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v90 = swift_allocObject();
      *(v90 + 16) = v200;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v91 = *(type metadata accessor for Symbol(0) - 8);
      v92 = *(v91 + 72);
      v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = v200;
      *(v94 + v93) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x6C6C756EuLL, 0xE400000000000000);
      swift_storeEnumTagMultiPayload();
      result = v89;
      *(v90 + 32) = v94;
      *(v89 + 32) = 0x6C6C754E5F5FLL;
      *(v89 + 40) = 0xE600000000000000;
      *(v89 + 48) = v90;
      return result;
    }

    if (v40 == *MEMORY[0x1E69A0A98])
    {
      (*(v30 + 96))(v38, v29);
      v95 = *v38;
      v96 = swift_projectBox();
      v97 = v188;
      v98 = v189;
      v99 = v190;
      (*(v189 + 16))(v188, v96, v190);
      v100 = JSONSchema.AnyOf.definitions.getter();
      v101 = v191;
      if (!v100)
      {
        v100 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_29GenerativeFunctionsFoundation10JSONSchemaOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      v102 = v201;
      v103 = static Grammar.definitions(for:with:)(v100, v101);
      if (v102)
      {
        (*(v98 + 8))(v97, v99);
LABEL_38:
      }

      v201 = v103;

      v123 = JSONSchema.AnyOf.title.getter();
      v125 = v124;
      v126 = MEMORY[0x1AC57B2B0]();
      v137 = static Grammar.anyOf(name:schemas:with:)(v123, v125, v126, v101);

      v202 = v137;
      specialized Array.append<A>(contentsOf:)(v201);
      (*(v98 + 8))(v97, v99);
    }

    else
    {
      v104 = v191;
      if (v40 != *MEMORY[0x1E69A0A88])
      {
        if (v40 == *MEMORY[0x1E69A0AA0])
        {
          (*(v30 + 96))(v38, v29);
          v114 = *v38;
          v115 = swift_projectBox();
          v116 = v183;
          v117 = v182;
          v118 = v184;
          v119 = (*(v183 + 16))(v182, v115, v184);
          v120 = MEMORY[0x1AC57B2F0](v119);
          if (!v120)
          {
            v120 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_29GenerativeFunctionsFoundation10JSONSchemaOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          }

          v121 = v201;
          v122 = static Grammar.definitions(for:with:)(v120, v104);
          if (v121)
          {
            (*(v116 + 8))(v117, v118);
          }

          v201 = v122;

          v147 = v181;
          v148 = MEMORY[0x1AC57B300](v146);
          v149 = MEMORY[0x1AC57B320](v148);
          LODWORD(v151) = v150;
          *&v200 = JSONSchema.Array.maxItems.getter();
          LODWORD(v199) = v152;
          v153 = *v104;
          if (*(*v104 + 16) && (v154 = specialized __RawDictionaryStorage.find<A>(_:)(v147), (v155 & 1) != 0))
          {
            v156 = *(*(v153 + 56) + 8 * v154);
          }

          else
          {
            LODWORD(v198) = v151;
            v151 = v149;
            v158 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(v147, 1, v104);
            v159 = v147;
            v164 = v104;
            v156 = v158;

            v165 = *v164;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v202 = *v164;
            *v164 = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v156, v159, isUniquelyReferenced_nonNull_native);
            *v164 = v202;
            v149 = v151;
            LOBYTE(v151) = v198;
          }

          if (v156[2])
          {
            v167 = v156[5];
            v202 = v156[4];
            *&v203 = v167;

            v168 = static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(&v202, v149, v151 & 1, v200, v199 & 1);
            v169 = v183;
            v170 = v168;

            v204 = v170;
            specialized Array.append<A>(contentsOf:)(v156);
            (*(v30 + 8))(v181, v29);
            specialized Array.append<A>(contentsOf:)(v201);
            (*(v169 + 8))(v182, v184);

            return v204;
          }

          __break(1u);
        }

        else
        {
          if (v40 == *MEMORY[0x1E69A0AB0])
          {
            (*(v30 + 96))(v38, v29);
            v127 = *v38;
            v128 = swift_projectBox();
            v129 = v179;
            v130 = v178;
            v131 = v180;
            (*(v179 + 16))(v178, v128, v180);
            v132 = JSONSchema.Object.definitions.getter();
            if (!v132)
            {
              v132 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_29GenerativeFunctionsFoundation10JSONSchemaOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
            }

            v133 = v201;
            v134 = static Grammar.definitions(for:with:)(v132, v104);
            if (v133)
            {

              (*(v129 + 8))(v130, v131);
            }

            else
            {
              v201 = v134;

              v160 = JSONSchema.Object.order.getter();
              MEMORY[0x1EEE9AC00](v160);
              v173 = v130;
              v161 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:), (&v174 - 4), v160);

              v162 = JSONSchema.Object.title.getter();
              v171 = static Grammar.jsonObject(name:fields:with:)(v162, v163, v161, v104);

              v202 = v171;
              specialized Array.append<A>(contentsOf:)(v201);
              v172 = v202;
              (*(v129 + 8))(v130, v131);

              return v172;
            }
          }

          if (v40 == *MEMORY[0x1E69A0AF0])
          {
            (*(v30 + 96))(v38, v29);
            v138 = *v38;
            v139 = swift_projectBox();
            v140 = v176;
            v141 = v175;
            v142 = v177;
            (*(v176 + 16))(v175, v139, v177);
            v143 = JSONSchema.Reference.reference.getter();
            v145 = specialized static Grammar.reference(to:)(v143, v144);

            (*(v140 + 8))(v141, v142);

            return v145;
          }
        }

        v202 = 0;
        *&v203 = 0xE000000000000000;
        _StringGuts.grow(_:)(25);
        MEMORY[0x1AC57C120](0xD000000000000017, 0x80000001A8FD9000);
        _print_unlocked<A, B>(_:_:)();
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v105 = v29;
      (*(v30 + 96))(v38);
      v106 = *v38;
      v107 = swift_projectBox();
      v108 = v186;
      v109 = v185;
      v110 = (*(v186 + 16))(v187, v107, v185);
      v111 = MEMORY[0x1AC57B260](v110);
      if (!v111)
      {
        v111 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_29GenerativeFunctionsFoundation10JSONSchemaOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      v112 = v201;
      v113 = static Grammar.definitions(for:with:)(v111, v104);
      if (v112)
      {
        (*(v108 + 8))(v187, v109);
        goto LABEL_38;
      }

      v201 = v113;

      v136 = v187;
      MEMORY[0x1AC57B270](v135);
      v157 = static Grammar.dictionary(schema:with:)(v36, v104);
      (*(v30 + 8))(v36, v105);
      v202 = v157;
      specialized Array.append<A>(contentsOf:)(v201);
      (*(v186 + 8))(v136, v109);
    }

    return v202;
  }

  (*(v30 + 96))(v38, v29);
  v41 = *v38;
  v42 = swift_projectBox();
  v43 = v199;
  v44 = (*(v199 + 16))(v18, v42, v15);
  v45 = MEMORY[0x1AC57B3D0](v44);
  if (v45)
  {
    v46 = v45;
    v47 = JSONSchema.String.title.getter();
    v49 = static Grammar.enumerator(name:cases:wrapInQuotes:)(v47, v48, v46, v200 & 1);

    (v43[1])(v18, v15);

    return v49;
  }

LABEL_10:
  v64 = JSONSchema.String.pattern.getter();
  v66 = v201;
  if (!v65)
  {
LABEL_18:
    v81 = specialized static Grammar.string(wrapInQuotes:)(v200 & 1);
    (v43[1])(v18, v15);

    return v81;
  }

  v67 = specialized static Grammar.regexRules(pattern:wrapInQuotes:)(v64, v65, v200 & 1);
  if (v66)
  {
    (v43[1])(v18, v15);
  }

  v88 = v67;
  (v43[1])(v18, v15);

  return v88;
}

uint64_t static Grammar.enumerator(name:cases:wrapInQuotes:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1;
  if (a2)
  {
    v61[0] = a1;
    v61[1] = a2;
    lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v9 = v8;
    v11 = v10;
    if (a4)
    {
      result = static Grammar.enumerator(name:cases:wrapInQuotes:)(v6, a2, a3, 0);
      v13 = result;
      if (v11)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    v6 = v8;
  }

  else
  {
    if (a4)
    {
      result = static Grammar.enumerator(name:cases:wrapInQuotes:)(a1, 0, a3, 0);
      v13 = result;
LABEL_7:
      strcpy(v61, "__Quoted");
      BYTE1(v61[1]) = 0;
      WORD1(v61[1]) = 0;
      HIDWORD(v61[1]) = -402653184;
      if (!v13[2])
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v14 = v13[4];
      v15 = v13[5];

      MEMORY[0x1AC57C120](v14, v15);

      v9 = v61[0];
      v11 = v61[1];
LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v18 = *(type metadata accessor for Symbol(0) - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A8FCB600;
      v22 = (v21 + v20);
      *v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
      result = swift_storeEnumTagMultiPayload();
      if (v13[2])
      {
        v23 = (v22 + v19);
        v56 = v11;
        v24 = v9;
        v25 = v13[5];
        *v23 = v13[4];
        v23[1] = v25;
        swift_storeEnumTagMultiPayload();

        *(v22 + 2 * v19) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
        swift_storeEnumTagMultiPayload();
        *(v17 + 32) = v21;
        *(v16 + 32) = v24;
        *(v16 + 40) = v56;
        *(v16 + 48) = v17;
        specialized Array.append<A>(contentsOf:)(v13);
        return v16;
      }

      __break(1u);
      goto LABEL_29;
    }

    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1A8FC9400;
  v53 = v26;
  if (v11)
  {
    v61[0] = v6;
    v61[1] = v11;

    MEMORY[0x1AC57C120](0x5174756F68746957, 0xED00007365746F75);
  }

  else
  {
    strcpy(v61, "__Enumerator_");
    HIWORD(v61[1]) = -4864;
    v27 = *(a3 + 16);
    if (v27)
    {
      v59 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
      v28 = v59;
      lazy protocol witness table accessor for type String and conformance String();
      v29 = (a3 + 40);
      do
      {
        v57 = *(v29 - 1);
        v58 = *v29;
        v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v60 = v28;
        v33 = *(v28 + 16);
        v32 = *(v28 + 24);
        if (v33 >= v32 >> 1)
        {
          v54 = v30;
          v35 = v31;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v31 = v35;
          v30 = v54;
          v28 = v60;
        }

        *(v28 + 16) = v33 + 1;
        v34 = v28 + 16 * v33;
        *(v34 + 32) = v30;
        *(v34 + 40) = v31;
        v29 += 2;
        --v27;
      }

      while (v27);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v36 = BidirectionalCollection<>.joined(separator:)();
    v38 = v37;

    MEMORY[0x1AC57C120](v36, v38);
  }

  v39 = v61[0];
  v40 = v61[1];
  v41 = *(a3 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  if (v41)
  {
    v51 = v61[1];
    v52 = v61[0];
    v61[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
    v42 = v61[0];
    v43 = *(type metadata accessor for Symbol(0) - 8);
    v55 = *(v43 + 72);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = (a3 + 40);
    do
    {
      v46 = *(v45 - 1);
      v47 = *v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1A8FC9400;

      *(v48 + v44) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v46, v47);
      swift_storeEnumTagMultiPayload();

      v61[0] = v42;
      v50 = *(v42 + 16);
      v49 = *(v42 + 24);
      if (v50 >= v49 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
        v42 = v61[0];
      }

      *(v42 + 16) = v50 + 1;
      *(v42 + 8 * v50 + 32) = v48;
      v45 += 2;
      --v41;
    }

    while (v41);
    v40 = v51;
    v39 = v52;
  }

  result = v53;
  v53[4] = v39;
  v53[5] = v40;
  v53[6] = v42;
  return result;
}

uint64_t static Grammar.definitions(for:with:)(uint64_t a1, void *a2)
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMd, &_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMR);
  v4 = *(*(v82 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v82);
  v92 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v76 - v7;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
LABEL_36:
    v62 = *(v9 + 16);
    if (!v62)
    {
      v25 = MEMORY[0x1E69E7CC0];
LABEL_55:

      return v25;
    }

    v63 = 0;
    v64 = v9 + 32;
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v63 >= *(v9 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v65 = v9;
      v66 = *(v64 + 8 * v63);
      v67 = *(v66 + 16);
      v68 = *(v25 + 2);
      v69 = v68 + v67;
      if (__OFADD__(v68, v67))
      {
        goto LABEL_59;
      }

      v70 = *(v64 + 8 * v63);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v69 <= *(v25 + 3) >> 1)
      {
        if (*(v66 + 16))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v68 <= v69)
        {
          v72 = v68 + v67;
        }

        else
        {
          v72 = v68;
        }

        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v72, 1, v25);
        if (*(v66 + 16))
        {
LABEL_50:
          if ((*(v25 + 3) >> 1) - *(v25 + 2) < v67)
          {
            goto LABEL_67;
          }

          swift_arrayInitWithCopy();

          if (v67)
          {
            v73 = *(v25 + 2);
            v51 = __OFADD__(v73, v67);
            v74 = v73 + v67;
            if (v51)
            {
              goto LABEL_69;
            }

            *(v25 + 2) = v74;
          }

          goto LABEL_39;
        }
      }

      if (v67)
      {
        goto LABEL_60;
      }

LABEL_39:
      ++v63;
      v9 = v65;
      if (v62 == v63)
      {
        goto LABEL_55;
      }
    }
  }

  v94 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = v94;
  v10 = a1 + 64;
  v11 = -1 << *(a1 + 32);
  v12 = _HashTable.startBucket.getter();
  v13 = 0;
  v14 = *(a1 + 36);
  v76 = a1 + 72;
  v77 = v8;
  v87 = a2;
  v79 = a1 + 64;
  v80 = a1;
  v78 = v14;
  while (1)
  {
    if (v12 < 0 || v12 >= 1 << *(a1 + 32))
    {
      goto LABEL_61;
    }

    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      break;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_63;
    }

    v89 = 1 << v12;
    v90 = v12 >> 6;
    v88 = v13;
    v91 = v9;
    v17 = v82;
    v18 = *(v82 + 48);
    v19 = *(a1 + 56);
    v20 = (*(a1 + 48) + 16 * v12);
    v22 = *v20;
    v21 = v20[1];
    v23 = type metadata accessor for JSONSchema();
    v24 = *(v23 - 8);
    v83 = *(v24 + 72);
    v25 = v81;
    v84 = *(v24 + 16);
    v85 = v24 + 16;
    v84(&v81[v18], v19 + v83 * v12, v23);
    v26 = v92;
    *v92 = v22;
    *(v26 + 8) = v21;
    v27 = *(v17 + 48);
    (*(v24 + 32))(v26 + v27, &v25[v18], v23);
    v28 = v87;
    v29 = *v87;
    v30 = *(*v87 + 16);

    if (v30)
    {
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v26 + v27);
      if (v32)
      {
        v33 = *(*(v29 + 56) + 8 * v31);

        goto LABEL_24;
      }
    }

    v34 = v86;
    v35 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(v26 + v27, 1, v28);
    v86 = v34;
    if (v34)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v26, &_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMd, &_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMR);

      return v25;
    }

    v33 = v35;

    v36 = *v28;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v93 = *v28;
    v38 = v93;
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v26 + v27);
    v41 = v38[2];
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      goto LABEL_68;
    }

    v44 = v39;
    if (v38[3] >= v43)
    {
      if (v37)
      {
        v47 = v93;
        if (v39)
        {
          goto LABEL_20;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v47 = v93;
        if (v44)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, v37);
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v92 + v27);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_71;
      }

      v40 = v45;
      v47 = v93;
      if (v44)
      {
LABEL_20:
        v48 = v47[7];
        v49 = *(v48 + 8 * v40);
        *(v48 + 8 * v40) = v33;

        *v87 = v47;
        v26 = v92;
        goto LABEL_24;
      }
    }

    v47[(v40 >> 6) + 8] |= 1 << v40;
    v26 = v92;
    v84((v47[6] + v40 * v83), v92 + v27, v23);
    *(v47[7] + 8 * v40) = v33;
    v50 = v47[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_70;
    }

    v47[2] = v52;
    *v87 = v47;
LABEL_24:
    outlined destroy of [Regex2BNF.CharacterPredicate](v26, &_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMd, &_sSS3key_29GenerativeFunctionsFoundation10JSONSchemaO5valuetMR);
    v9 = v91;
    v94 = v91;
    v54 = *(v91 + 16);
    v53 = *(v91 + 24);
    a1 = v80;
    if (v54 >= v53 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
      v9 = v94;
    }

    *(v9 + 16) = v54 + 1;
    *(v9 + 8 * v54 + 32) = v33;
    v15 = 1 << *(a1 + 32);
    if (v12 >= v15)
    {
      goto LABEL_64;
    }

    v10 = v79;
    v55 = *(v79 + 8 * v90);
    if ((v55 & v89) == 0)
    {
      goto LABEL_65;
    }

    LODWORD(v14) = v78;
    if (v78 != *(a1 + 36))
    {
      goto LABEL_66;
    }

    v56 = v55 & (-2 << (v12 & 0x3F));
    if (v56)
    {
      v15 = __clz(__rbit64(v56)) | v12 & 0x7FFFFFFFFFFFFFC0;
      v16 = v88;
    }

    else
    {
      v57 = v90 << 6;
      v58 = v90 + 1;
      v59 = (v76 + 8 * v90);
      while (v58 < (v15 + 63) >> 6)
      {
        v61 = *v59++;
        v60 = v61;
        v57 += 64;
        ++v58;
        if (v61)
        {
          outlined consume of [String : JSONSchema].Index._Variant(v12, v78, 0);
          v15 = __clz(__rbit64(v60)) + v57;
          goto LABEL_35;
        }
      }

      outlined consume of [String : JSONSchema].Index._Variant(v12, v78, 0);
LABEL_35:
      v16 = v88;
    }

    v13 = v16 + 1;
    v12 = v15;
    if (v13 == v77)
    {
      goto LABEL_36;
    }
  }

LABEL_62:
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
  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10JSONSchemaOSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v25 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = MEMORY[0x1AC57B370](v9);
  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13), (v16 & 1) != 0))
  {
    v17 = v15;
    v25[1] = v3;
    v18 = *(v14 + 56);
    v19 = type metadata accessor for JSONSchema();
    v20 = *(v19 - 8);
    v25[0] = a3;
    v21 = v20;
    (*(v20 + 16))(v11, v18 + *(v20 + 72) * v17, v19);

    v22 = (*(v21 + 56))(v11, 0, 1, v19);
    a3 = v25[0];
  }

  else
  {

    v23 = type metadata accessor for JSONSchema();
    v22 = (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  }

  MEMORY[0x1EEE9AC00](v22);
  v25[-4] = v12;
  v25[-3] = v13;
  v25[-2] = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF29GenerativeFunctionsFoundation10JSONSchemaO_s5NeverOAF8PropertyVTg5(partial apply for closure #1 in closure #1 in closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:), &v25[-6], a3);
  return outlined destroy of [Regex2BNF.CharacterPredicate](v11, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[3] = a4;
  v7 = type metadata accessor for JSONSchema();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v14 = JSONSchema.description.getter();
  (*(v8 + 16))(v11, a1, v7);
  v12 = JSONSchema.Object.required.getter();
  v17[0] = a2;
  v17[1] = a3;
  v16 = v17;
  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v15, v12);

  JSONSchema.isNullable.getter();
  return JSONSchema.Property.init(name:description:schema:isOptional:isNullable:)();
}

uint64_t static Grammar.jsonObject(name:fields:with:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  v84 = a2;
  v85 = a1;
  v95 = type metadata accessor for Symbol(0);
  v89 = *(v95 - 8);
  v6 = *(v89 + 64);
  v7 = MEMORY[0x1EEE9AC00](v95);
  v101 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v94 = (&v83 - v9);
  v10 = type metadata accessor for JSONSchema();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v87 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v83 - v15;
  v96 = type metadata accessor for JSONSchema.Property();
  v17 = *(*(v96 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v96);
  v88 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v83 - v20;
  v107 = MEMORY[0x1E69E7CC8];
  v23 = *(a3 + 16);
  v83 = a3;
  if (v23)
  {
    v25 = *(v21 + 16);
    v24 = v21 + 16;
    v98 = v25;
    v26 = a3 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v86 = (v11 + 16);
    v92 = (v24 - 8);
    v93 = (v11 + 8);
    v91 = *(v24 + 56);
    v102 = MEMORY[0x1E69E7CD0];
    v103 = &v83 - v20;
    v27 = v96;
    v97 = v24;
    v90 = v16;
    while (1)
    {
      v100 = v23;
      v33 = v98(v22, v26, v27);
      MEMORY[0x1AC57B4C0](v33);
      v34 = *a4;
      if (*(*a4 + 16))
      {
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
        if (v36)
        {
          v37 = *(*(v34 + 56) + 8 * v35);

          goto LABEL_19;
        }
      }

      v38 = v99;
      v39 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(v16, 1, a4);
      v99 = v38;
      if (v38)
      {

        (*v93)(v16, v10);
        (*v92)(v103, v96);
      }

      v37 = v39;

      v40 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = *a4;
      v42 = v104;
      v43 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      v45 = *(v42 + 16);
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_43;
      }

      v49 = v44;
      if (*(v42 + 24) < v48)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v54 = v43;
      specialized _NativeDictionary.copy()();
      v43 = v54;
      v51 = v104;
      if ((v49 & 1) == 0)
      {
LABEL_17:
        v55 = v43;
        v56 = v87;
        (*v86)(v87, v16, v10);
        specialized _NativeDictionary._insert(at:key:value:)(v55, v56, v37, v51);
        goto LABEL_18;
      }

LABEL_15:
      v52 = v51[7];
      v53 = *(v52 + 8 * v43);
      *(v52 + 8 * v43) = v37;

LABEL_18:
      *a4 = v51;
LABEL_19:
      (*v93)(v16, v10);
      if (!v37[2])
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_46:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_47;
      }

      v57 = v10;
      v58 = a4;
      v59 = v37[5];
      v60 = v94;
      *v94 = v37[4];
      *(v60 + 8) = v59;
      swift_storeEnumTagMultiPayload();
      outlined init with take of Prompt.SpecialToken(v60, v101, type metadata accessor for Symbol);

      v61 = v107;
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v61;
      v64 = specialized __RawDictionaryStorage.find<A>(_:)(v103);
      v65 = *(v61 + 16);
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_42;
      }

      v68 = v63;
      if (*(v61 + 24) >= v67)
      {
        v27 = v96;
        if (v62)
        {
          goto LABEL_26;
        }

        specialized _NativeDictionary.copy()();
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, v62);
        v69 = specialized __RawDictionaryStorage.find<A>(_:)(v103);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_45;
        }

        v64 = v69;
      }

      v27 = v96;
LABEL_26:
      v32 = v104;
      if (v68)
      {
        outlined assign with take of Symbol(v101, *(v104 + 56) + *(v89 + 72) * v64);
        v22 = v103;
      }

      else
      {
        v28 = v26;
        v29 = v104;
        v30 = v88;
        v22 = v103;
        v98(v88, v103, v27);
        v31 = v30;
        v32 = v29;
        v26 = v28;
        specialized _NativeDictionary._insert(at:key:value:)(v64, v31, v101, v32);
      }

      v107 = v32;
      v102 = specialized Set.union<A>(_:)(v37, v102);

      (*v92)(v22, v27);
      v26 += v91;
      v23 = v100 - 1;
      a4 = v58;
      v10 = v57;
      v16 = v90;
      if (v100 == 1)
      {
        goto LABEL_30;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, isUniquelyReferenced_nonNull_native);
    v43 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
    if ((v49 & 1) != (v50 & 1))
    {
      goto LABEL_46;
    }

LABEL_14:
    v51 = v104;
    if ((v49 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v102 = MEMORY[0x1E69E7CD0];
LABEL_30:
  v71 = specialized static Grammar.fieldCombinations(for:)(v83);
  v72 = v99;
  v73 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGG_19TokenGenerationCore6ChoiceVs5NeverOTg504_s19ij101Core7GrammarV10jsonObject33_DD88DD49DE63EB9CBD61CBF820251C8ALL4name6fields4withSayAA4RuleVGSSSg_Say29de12Foundation10g2O8h17VGSDyAoKGztKFZAA6L8VARXEfU_SDyAjM6SymbolOGTf1cn_n(v71, &v107);
  v74 = v72;

  if (v84)
  {
    v75 = v84;
  }

  else
  {
    v104 = 0x7463656A624F5F5FLL;
    v105 = 0xE90000000000002DLL;
    v106 = *(*a4 + 16) + 1;
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v76);

    v75 = v105;
    v85 = v104;
  }

  v77 = v102;
  v37 = *(v102 + 16);
  if (v37)
  {
    v100 = v75;
    v101 = v72;
    v103 = v73;
    v78 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore4RuleV_Tt1g5(v37, 0);
    v79 = specialized Sequence._copySequenceContents(initializing:)(&v104, v78 + 4, v37, v77);

    outlined consume of Set<NonTerminalSymbol>.Iterator._Variant();
    if (v79 != v37)
    {
      goto LABEL_44;
    }

    v73 = v103;
    v75 = v100;
    v74 = v101;
  }

  else
  {

    v78 = MEMORY[0x1E69E7CC0];
  }

  v104 = v78;
  specialized MutableCollection<>.sort(by:)(&v104);
  v37 = v74;
  if (v74)
  {
LABEL_47:

    __break(1u);
  }

  else
  {

    v80 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1A8FC9400;
    *(v81 + 32) = v85;
    *(v81 + 40) = v75;
    *(v81 + 48) = v73;
    v104 = v81;
    specialized Array.append<A>(contentsOf:)(v80);

    return v104;
  }

  return result;
}

uint64_t static Grammar.dictionary(schema:with:)(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  if (*(*a2 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);

    if (v8[2])
    {
LABEL_4:
      v42 = v8;
      v10 = v8[4];
      v11 = v8[5];
      swift_bridgeObjectRetain_n();
      MEMORY[0x1AC57C120](v10, v11);

      MEMORY[0x1AC57C120](1919508816, 0xE400000000000000);
      HIWORD(v45[1]) = 0;
      _StringGuts.grow(_:)(17);

      v41 = v10;
      MEMORY[0x1AC57C120](v10, v11);

      MEMORY[0x1AC57C120](1919508816, 0xE400000000000000);
      strcpy(v45, "__ListOf__Key");
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v44 = swift_allocObject();
      v46 = xmmword_1A8FCB600;
      *(v44 + 16) = xmmword_1A8FCB600;
      v47 = 0x664F746369445F5FLL;
      v48 = 0xE800000000000000;
      v40 = v11;

      MEMORY[0x1AC57C120](v10, v11);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = v46;
      v13 = v12;
      v43 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v14 = *(type metadata accessor for Symbol(0) - 8);
      v15 = *(v14 + 72);
      v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v45[2] = *(v14 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A8FC9400;
      *(v17 + v16) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7D7BuLL, 0xE200000000000000);
      swift_storeEnumTagMultiPayload();
      *(v13 + 32) = v17;
      v18 = swift_allocObject();
      *(v18 + 16) = v46;
      v19 = (v18 + v16);
      *v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7BuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v20 = (v18 + v16 + v15);
      v21 = v45[1];
      *v20 = v45[1];
      v20[1] = 0xE500000000000000;
      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      *(v19 + 2 * v15) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7DuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      *(v43 + 40) = v18;
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1A8FCB620;
      v23 = (v22 + v16);
      *v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7BuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v24 = (v22 + v16 + v15);
      *v24 = v21;
      v24[1] = 0xE500000000000000;
      swift_storeEnumTagMultiPayload();

      *(v23 + 2 * v15) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
      swift_storeEnumTagMultiPayload();
      v25 = (v22 + v16 + 3 * v15);
      *v25 = v45[0];
      v25[1] = 0xEB0000000079654BLL;
      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      *(v23 + 4 * v15) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7DuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      *(v43 + 48) = v22;
      *(v44 + 32) = 0x664F746369445F5FLL;
      *(v44 + 40) = 0xE800000000000000;
      *(v44 + 48) = v43;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1A8FC9400;
      v27 = swift_allocObject();
      *(v27 + 16) = v46;
      strcpy((v27 + v16), "__QuotedString");
      *(v27 + v16 + 15) = -18;
      swift_storeEnumTagMultiPayload();
      *(v27 + v16 + v15) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x203AuLL, 0xE200000000000000);
      swift_storeEnumTagMultiPayload();
      v28 = (v27 + v16 + 2 * v15);
      *v28 = v41;
      v28[1] = v40;
      swift_storeEnumTagMultiPayload();
      *(v26 + 32) = v27;
      v29 = v45[1];
      *(v44 + 56) = v45[1];
      *(v44 + 64) = 0xE500000000000000;
      *(v44 + 72) = v26;
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1A8FC9410;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1A8FC9400;
      v32 = (v31 + v16);
      *v32 = v29;
      v32[1] = 0xE500000000000000;
      swift_storeEnumTagMultiPayload();
      *(v30 + 32) = v31;
      v33 = swift_allocObject();
      *(v33 + 16) = v46;
      v34 = (v33 + v16);
      v35 = v45[0];
      *v34 = v45[0];
      v34[1] = 0xEB0000000079654BLL;
      swift_storeEnumTagMultiPayload();

      *(v34 + v15) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
      swift_storeEnumTagMultiPayload();
      v36 = (v33 + v16 + 2 * v15);
      *v36 = v45[1];
      v36[1] = 0xE500000000000000;
      swift_storeEnumTagMultiPayload();
      *(v30 + 40) = v33;
      *(v44 + 80) = v35;
      *(v44 + 88) = 0xEB0000000079654BLL;
      *(v44 + 96) = v30;
      specialized Array.append<A>(contentsOf:)(v42);
      v37 = specialized static Grammar.string(wrapInQuotes:)(1);
      specialized Array.append<A>(contentsOf:)(v37);
      return v44;
    }
  }

  else
  {
    result = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(a1, 1, a2);
    if (v2)
    {
      return result;
    }

    v8 = result;

    v38 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *a2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, a1, isUniquelyReferenced_nonNull_native);
    *a2 = v47;
    if (v8[2])
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t static Grammar.anyOf(name:schemas:with:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay29GenerativeFunctionsFoundation10JSONSchemaOG_Say19TokenGenerationCore4RuleVGsAE_pTg504_s19hi80Core7GrammarV5anyOf33_DD88DD49DE63EB9CBD61CBF820251C8ALL4name7schemas4withSayAA4k12VGSSSg_Say29de12Foundation10G23OGSDyAoKGztKFZAkOKXEfU_AJ0N0VXMtSDyAhMGTf1cn_n(a3, a4);
  if (v4)
  {
    return result;
  }

  v8 = result;
  v9 = *(result + 16);
  v10 = MEMORY[0x1E69E7CC0];
  v58 = result;
  v55 = a1;
  if (!v9)
  {
    v18 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v18)
    {
      v56 = a2;
      v12 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

    v38 = MEMORY[0x1E69E7CC0];

    v27 = v38;
    if (!a2)
    {
      goto LABEL_22;
    }

LABEL_20:

    v37 = v55;
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1A8FC9400;
    *(result + 32) = v37;
    *(result + 40) = a2;
    v63 = result;
    *(result + 48) = v27;
    v42 = *(v8 + 16);
    if (!v42)
    {
      v45 = MEMORY[0x1E69E7CC0];
LABEL_42:

      specialized Array.append<A>(contentsOf:)(v45);
      return v63;
    }

    v43 = 0;
    v44 = v8 + 32;
    v45 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v43 >= *(v8 + 16))
      {
        goto LABEL_45;
      }

      v46 = *(v44 + 8 * v43);
      v47 = *(v46 + 16);
      v48 = *(v45 + 16);
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_46;
      }

      v50 = *(v44 + 8 * v43);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v49 <= *(v45 + 24) >> 1)
      {
        if (!*(v46 + 16))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v51 = v48 + v47;
        }

        else
        {
          v51 = v48;
        }

        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v51, 1, v45);
        v45 = result;
        if (!*(v46 + 16))
        {
LABEL_25:

          if (v47)
          {
            goto LABEL_47;
          }

          goto LABEL_26;
        }
      }

      if ((*(v45 + 24) >> 1) - *(v45 + 16) < v47)
      {
        goto LABEL_48;
      }

      swift_arrayInitWithCopy();

      if (v47)
      {
        v52 = *(v45 + 16);
        v53 = __OFADD__(v52, v47);
        v54 = v52 + v47;
        if (v53)
        {
          goto LABEL_49;
        }

        *(v45 + 16) = v54;
      }

LABEL_26:
      ++v43;
      v8 = v58;
      if (v42 == v43)
      {
        goto LABEL_42;
      }
    }
  }

  v56 = a2;
  v60 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v11 = v8 + 32;
  v12 = v60;
  while (1)
  {
    v13 = *v11;
    if (!*(*v11 + 16))
    {
      break;
    }

    v15 = *(v13 + 32);
    v14 = *(v13 + 40);
    v16 = *(v60 + 16);
    v17 = *(v60 + 24);
    v18 = v16 + 1;

    if (v16 >= v17 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16 + 1, 1);
    }

    *(v60 + 16) = v18;
    v19 = v60 + 16 * v16;
    *(v19 + 32) = v15;
    *(v19 + 40) = v14;
    v11 += 8;
    if (!--v9)
    {
      v10 = MEMORY[0x1E69E7CC0];
LABEL_11:
      v61 = v10;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v57 = v12;
      v20 = (v12 + 40);
      v21 = v18;
      do
      {
        v22 = *(v20 - 1);
        v23 = *v20;
        v25 = *(v61 + 16);
        v24 = *(v61 + 24);

        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        }

        *(v61 + 16) = v25 + 1;
        v26 = v61 + 16 * v25;
        *(v26 + 32) = v22;
        *(v26 + 40) = v23;
        v20 += 2;
        --v21;
      }

      while (v21);
      v62 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v27 = v62;
      v28 = *(type metadata accessor for Symbol(0) - 8);
      v59 = *(v28 + 72);
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = (v57 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1A8FC9400;
        v34 = (v33 + v29);
        *v34 = v31;
        v34[1] = v32;
        swift_storeEnumTagMultiPayload();
        v36 = *(v62 + 16);
        v35 = *(v62 + 24);

        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        }

        *(v62 + 16) = v36 + 1;
        *(v62 + 8 * v36 + 32) = v33;
        v30 += 2;
        --v18;
      }

      while (v18);

      v8 = v58;
      a2 = v56;
      if (v56)
      {
        goto LABEL_20;
      }

LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v40;

      MEMORY[0x1AC57C120](v39, v41);

      v37 = 0x5F664F796E415F5FLL;
      a2 = 0xE800000000000000;
      goto LABEL_23;
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
  return result;
}

uint64_t closure #1 in static Grammar.jsonObject(name:fields:with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v41 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV7elementtMd, &_sSi6offset_29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV7elementtMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v36 - v9);
  v11 = type metadata accessor for Symbol(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v40 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v36 - v16);
  v18 = *a1;
  *v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7BuLL, 0xE100000000000000);
  v39 = v17;
  *&v38 = v11;
  swift_storeEnumTagMultiPayload();
  v19 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v20 = *(v18 + 16);

  if (v20)
  {
    v36 = v3;
    v37 = v12;
    v22 = 0;
    while (v22 < *(v18 + 16))
    {
      v23 = type metadata accessor for JSONSchema.Property();
      v24 = *(v23 - 8);
      v25 = *(v24 + 16);
      v26 = v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22;
      v27 = *(v7 + 48);
      *v10 = v22;
      v25(v10 + v27, v26, v23);
      v28 = closure #1 in closure #1 in static Grammar.jsonObject(name:fields:with:)(v22, v10 + v27, a2);
      outlined destroy of [Regex2BNF.CharacterPredicate](v10, &_sSi6offset_29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV7elementtMd, &_sSi6offset_29GenerativeFunctionsFoundation10JSONSchemaO8PropertyV7elementtMR);
      result = specialized Array.append<A>(contentsOf:)(v28);
      if (v20 == ++v22)
      {
        v19 = v43;
        v4 = v36;
        v12 = v37;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v29 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7DuLL, 0xE100000000000000);
    v37 = v4;
    v30 = v40;
    *v40 = v29;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v31 = *(v12 + 72);
    v32 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v33 = swift_allocObject();
    v38 = xmmword_1A8FC9400;
    *(v33 + 16) = xmmword_1A8FC9400;
    v34 = v39;
    outlined init with copy of Prompt.SpecialToken(v39, v33 + v32, type metadata accessor for Symbol);
    v42 = v33;
    specialized Array.append<A>(contentsOf:)(v19);
    v35 = swift_allocObject();
    *(v35 + 16) = v38;
    outlined init with copy of Prompt.SpecialToken(v30, v35 + v32, type metadata accessor for Symbol);
    specialized Array.append<A>(contentsOf:)(v35);
    outlined destroy of Symbol(v30);
    result = outlined destroy of Symbol(v34);
    *v41 = v42;
  }

  return result;
}

unint64_t closure #1 in closure #1 in static Grammar.jsonObject(name:fields:with:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v47 - v15);
  v17 = type metadata accessor for Symbol(0);
  v55 = *(v17 - 8);
  v56 = v17;
  v18 = *(v55 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v57 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v47 - v22);
  result = MEMORY[0x1EEE9AC00](v21);
  v26 = &v47 - v25;
  v27 = *a3;
  if (!*(v27 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v28 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v29 = *(v27 + 56);
  v54 = *(v55 + 72);
  outlined init with copy of Prompt.SpecialToken(v29 + v54 * result, v26, type metadata accessor for Symbol);
  v50 = v6;
  v53 = v26;
  if (a1)
  {
    *v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
    v30 = v56;
    swift_storeEnumTagMultiPayload();
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v56;
  }

  v32 = v55 + 56;
  v52 = *(v55 + 56);
  v52(v16, v31, 1, v30);
  v58 = 34;
  v59 = 0xE100000000000000;
  v33 = JSONSchema.Property.name.getter();
  MEMORY[0x1AC57C120](v33);

  MEMORY[0x1AC57C120](2112034, 0xE300000000000000);
  v34 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v58, v59);

  *v23 = v34;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOSgGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOSgGMR);
  v35 = v23;
  v36 = *(v7 + 72);
  v37 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v51 = swift_allocObject();
  v38 = v51 + v37;
  v49 = v16;
  outlined init with copy of (String, Any)(v16, v38, &_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
  v48 = v35;
  outlined init with copy of Prompt.SpecialToken(v35, v38 + v36, type metadata accessor for Symbol);
  v39 = v56;
  v40 = v52;
  v52((v38 + v36), 0, 1, v56);
  outlined init with copy of Prompt.SpecialToken(v53, v38 + 2 * v36, type metadata accessor for Symbol);
  v41 = v39;
  v40((v38 + 2 * v36), 0, 1, v39);
  v42 = (v32 - 8);
  v43 = MEMORY[0x1E69E7CC0];
  v44 = 3;
  v52 = v38;
  do
  {
    outlined init with copy of (String, Any)(v38, v14, &_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
    outlined init with take of Symbol?(v14, v11);
    if ((*v42)(v11, 1, v41) == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v11, &_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
    }

    else
    {
      outlined init with take of Prompt.SpecialToken(v11, v57, type metadata accessor for Symbol);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
      }

      v46 = v43[2];
      v45 = v43[3];
      if (v46 >= v45 >> 1)
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1, v43);
      }

      v43[2] = v46 + 1;
      outlined init with take of Prompt.SpecialToken(v57, v43 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + v46 * v54, type metadata accessor for Symbol);
      v41 = v56;
    }

    v38 += v36;
    --v44;
  }

  while (v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  outlined destroy of Symbol(v48);
  outlined destroy of [Regex2BNF.CharacterPredicate](v49, &_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
  outlined destroy of Symbol(v53);
  return v43;
}

uint64_t recurse #1 (node:path:) in static Grammar.fieldCombinations(for:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v33 - v8);
  v10 = type metadata accessor for JSONSchema.Property();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_children;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v26 = *(a1 + v15);
    }

    else
    {
      v26 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    if (MEMORY[0x1AC57C730](v26))
    {
LABEL_3:
      (*(v11 + 16))(v14, a1 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_field, v10);
      v17 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
      }

      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v17);
      }

      v17[2] = v20 + 1;
      (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v10);
      *a2 = v17;
      v21 = *(a1 + v15);
      if (v21 >> 62)
      {
        if (v21 < 0)
        {
          v32 = v21;
        }

        else
        {
          v32 = v21 & 0xFFFFFFFFFFFFFF8;
        }

        v22 = MEMORY[0x1AC57C730](v32);
        v9 = v34;
        if (v22)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v9 = v34;
        if (v22)
        {
LABEL_9:
          if (v22 >= 1)
          {

            for (i = 0; i != v22; ++i)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v24 = MEMORY[0x1AC57C620](i, v21);
              }

              else
              {
                v24 = *(v21 + 8 * i + 32);
              }

              recurse #1 (node:path:) in static Grammar.fieldCombinations(for:)(v24, a2, a3);
            }

            goto LABEL_16;
          }

          __break(1u);
          goto LABEL_32;
        }
      }

LABEL_16:
      specialized RangeReplaceableCollection<>.popLast()(v9);
      return outlined destroy of [Regex2BNF.CharacterPredicate](v9, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMR);
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v27 = *(*a2 + 16);
  if (!v27)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  specialized _copyCollectionToContiguousArray<A>(_:)(*a2, *a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), 1, (2 * v27) | 1);
  a2 = v28;
  swift_beginAccess();
  v9 = *(a3 + 16);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v9;
  if ((v29 & 1) == 0)
  {
LABEL_33:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    *(a3 + 16) = v9;
  }

  v31 = v9[2];
  v30 = v9[3];
  if (v31 >= v30 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v9);
  }

  v9[2] = v31 + 1;
  v9[v31 + 4] = a2;
  *(a3 + 16) = v9;
  return swift_endAccess();
}

uint64_t __deallocating_deinit in Node #1 in static Grammar.fieldCombinations(for:)()
{
  v1 = OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_field;
  v2 = type metadata accessor for JSONSchema.Property();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_children);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s19TokenGenerationCore27SpaceLookaheadMaskGeneratorVACyxGycfCAA16EarleyRecognizerC_Ttg5()
{
  GuidedGenerationOverrides.init()((v2 + 1));
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (isInternalInstall)
  {
    (*(&v2[18] + 1))(v2, *(&v2[15] + 1));
    outlined destroy of GuidedGenerationOverrides(v2 + 1);
    v0 = v2[0];
  }

  else
  {
    outlined destroy of GuidedGenerationOverrides(v2 + 1);
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  *(v4 + 16) = 0;
  type metadata accessor for Lock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *(v10 + 16) = v11;
  pthread_mutex_init(v11, 0);
  *(v5 + 24) = v10;
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.guided);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    v17 = *(a2 + 112);

    v27 = a4;
    v19 = MEMORY[0x1AC57C2C0](v18, MEMORY[0x1E69E6530]);
    v26 = a1;
    v20 = a2;
    v21 = a3;
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v23, &v28);
    a3 = v21;
    a2 = v20;
    a1 = v26;

    *(v15 + 4) = v24;
    a4 = v27;
    _os_log_impl(&dword_1A8E85000, v13, v14, "Building token grammar recognizer with stop tokens: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1AC57DBF0](v16, -1, -1);
    MEMORY[0x1AC57DBF0](v15, -1, -1);
  }

  *(v5 + 56) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4 & 1;
  return v5;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1, v22);
  }

  return result;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v20);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v20);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TerminalSymbol(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  v21 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of Prompt.SpecialToken(a2, v11, type metadata accessor for TerminalSymbol);
  return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
}

{
  v4 = v3;
  v8 = type metadata accessor for JSONSchema();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v25 = *v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v18 = *v4;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    *(v20[7] + 8 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v20);
  }

  return result;
}

{
  v4 = v3;
  v28 = *(a1 + 8);
  v29 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 41);
  v12 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v22 = *v4;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v4;
  if (v19)
  {
    v25 = v24[7] + 48 * v13;
    v26 = *v25;
    *v25 = v29;
    *(v25 + 8) = v28;
    *(v25 + 16) = v7;
    *(v25 + 24) = v8;
    *(v25 + 32) = v9;
    *(v25 + 40) = v10;
    *(v25 + 41) = v11;
  }

  else
  {
    v30[0] = v29;
    v30[1] = v28;
    v30[2] = v7;
    v31 = v8;
    v32 = v9;
    v33 = v10;
    v34 = v11;
    return specialized _NativeDictionary._insert(at:key:value:)(v13, a2, v30, v24);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Prompt.SpecialToken(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = *v4;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of Prompt.SpecialToken(a2, v11, type metadata accessor for Prompt.SpecialToken);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_0(v21);

  return _sypWOb_0(a1, v21);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return _sypWOb_0(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, v8, a1, v4);
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 16) >= *(*v9 + 16))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t specialized static Grammar.constant(value:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A8FC9400;
  MEMORY[0x1AC57C120](a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v6 = *(type metadata accessor for Symbol(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A8FC9400;
  MEMORY[0x1AC57C120](a1, a2);

  MEMORY[0x1AC57C120](34, 0xE100000000000000);

  *(v9 + v8) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();

  *(v5 + 32) = v9;
  *(v4 + 32) = 0x6174736E6F435F5FLL;
  *(v4 + 40) = 0xEB000000005F746ELL;
  *(v4 + 48) = v5;
  return v4;
}

uint64_t specialized static Grammar.BOOLean()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A8FC9410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v2 = *(type metadata accessor for Symbol(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9400;
  *(v5 + v4) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x65757274uLL, 0xE400000000000000);
  swift_storeEnumTagMultiPayload();
  *(v1 + 32) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A8FC9400;
  *(v6 + v4) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x65736C6166uLL, 0xE500000000000000);
  swift_storeEnumTagMultiPayload();
  *(v1 + 40) = v6;
  *(v0 + 32) = 0x61656C6F6F425F5FLL;
  *(v0 + 40) = 0xE90000000000006ELL;
  *(v0 + 48) = v1;
  return v0;
}

void *specialized static Grammar.string(wrapInQuotes:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1A8FCB610;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v4 = *(type metadata accessor for Symbol(0) - 8);
    v5 = *(v4 + 72);
    v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A8FCB600;
    v8 = (v7 + v6);
    *v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v9 = (v7 + v6 + v5);
    *v9 = 0xD00000000000001BLL;
    v9[1] = 0x80000001A8FD82A0;
    swift_storeEnumTagMultiPayload();
    *(v8 + 2 * v5) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v3 + 32) = v7;
    strcpy((v2 + 32), "__QuotedString");
    *(v2 + 47) = -18;
    *(v2 + 48) = v3;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A8FC9410;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A8FC9400;
    *(v11 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
    swift_storeEnumTagMultiPayload();
    *(v10 + 32) = v11;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A8FC9410;
    v13 = (v12 + v6);
    *v13 = 0xD00000000000001BLL;
    v13[1] = 0x80000001A8FD82A0;
    swift_storeEnumTagMultiPayload();
    v14 = (v12 + v6 + v5);
    *v14 = 0xD000000000000015;
    v14[1] = 0x80000001A8FD9020;
    swift_storeEnumTagMultiPayload();
    *(v10 + 40) = v12;
    *(v2 + 56) = 0xD00000000000001BLL;
    *(v2 + 64) = 0x80000001A8FD82A0;
    *(v2 + 72) = v10;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1A8FC9410;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A8FC9400;
    v17 = (v16 + v6);
    *v17 = 0xD000000000000029;
    v17[1] = 0x80000001A8FD8B40;
    swift_storeEnumTagMultiPayload();
    *(v15 + 32) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1A8FC9410;
    *(v18 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5CuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v19 = (v18 + v6 + v5);
    *v19 = 0x6570616373455F5FLL;
    v19[1] = 0xE800000000000000;
    swift_storeEnumTagMultiPayload();
    *(v15 + 40) = v18;
    v20 = v2;
    *(v2 + 80) = 0xD000000000000015;
    *(v2 + 88) = 0x80000001A8FD9020;
    *(v2 + 96) = v15;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1A8FCB640;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A8FC9400;
    *(v22 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 32) = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1A8FC9400;
    *(v23 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5CuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 40) = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1A8FC9400;
    *(v24 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2FuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 48) = v24;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1A8FC9400;
    *(v25 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x62uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 56) = v25;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1A8FC9400;
    *(v26 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x66uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 64) = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1A8FC9400;
    *(v27 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x6EuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 72) = v27;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1A8FC9400;
    *(v28 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x72uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 80) = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1A8FC9400;
    *(v29 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x74uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v21 + 88) = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1A8FCB620;
    *(v30 + v6) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x75uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v31 = (v30 + v6 + v5);
    *v31 = 0xD000000000000010;
    v31[1] = 0x80000001A8FD8B20;
    swift_storeEnumTagMultiPayload();
    v32 = (v30 + v6 + 2 * v5);
    *v32 = 0xD000000000000010;
    v32[1] = 0x80000001A8FD8B20;
    swift_storeEnumTagMultiPayload();
    v33 = (v30 + v6 + 3 * v5);
    *v33 = 0xD000000000000010;
    v33[1] = 0x80000001A8FD8B20;
    swift_storeEnumTagMultiPayload();
    v34 = (v30 + v6 + 4 * v5);
    *v34 = 0xD000000000000010;
    v34[1] = 0x80000001A8FD8B20;
    swift_storeEnumTagMultiPayload();
    result = v20;
    *(v21 + 96) = v30;
    v20[13] = 0x6570616373455F5FLL;
    v20[14] = 0xE800000000000000;
    v20[15] = v21;
  }

  else
  {
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1A8FC9410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v38 = *(type metadata accessor for Symbol(0) - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1A8FC9400;
    *(v41 + v40) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
    swift_storeEnumTagMultiPayload();
    *(v37 + 32) = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1A8FC9410;
    v43 = (v42 + v40);
    *v43 = 0xD000000000000011;
    v43[1] = 0x80000001A8FD82C0;
    swift_storeEnumTagMultiPayload();
    v44 = (v42 + v40 + v39);
    *v44 = 0x48435F4C4147454CLL;
    v44[1] = 0xEF52455443415241;
    swift_storeEnumTagMultiPayload();
    result = v36;
    *(v37 + 40) = v42;
    *(v36 + 32) = 0xD000000000000011;
    *(v36 + 40) = 0x80000001A8FD82C0;
    *(v36 + 48) = v37;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation12CharacterSetVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation12CharacterSetVtMd, &_sSS_10Foundation12CharacterSetVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation12CharacterSetVGMd, _ss18_DictionaryStorageCySS10Foundation12CharacterSetVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v10, v6, &_sSS_10Foundation12CharacterSetVtMd, &_sSS_10Foundation12CharacterSetVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for CharacterSet();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized static Grammar.regexRules(pattern:wrapInQuotes:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = specialized static Regex2BNF._printAsBNF(inputRegex:)(a1, a2);
  v7 = v3;
  if (v3)
  {
    if (one-time initialization token for guided != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.guided);
    v9 = v3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28[0] = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v28);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1A8E85000, v10, v11, "Grammar.regexRules(pattern:): error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1AC57DBF0](v13, -1, -1);
      MEMORY[0x1AC57DBF0](v12, -1, -1);
    }

    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v7;
  }

  v7 = static BackusNaurParser.parsedRules(_:)(v5, v6);

  if ((a3 & 1) == 0)
  {
    return v7;
  }

  if (v7[2])
  {
    v18 = v7[4];
    v19 = v7[5];
    v28[0] = 0x6465746F7551;
    v28[1] = 0xE600000000000000;

    MEMORY[0x1AC57C120](v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v21 = *(type metadata accessor for Symbol(0) - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1A8FCB600;
    v25 = (v24 + v23);
    *v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v26 = (v25 + v22);
    *v26 = v18;
    v26[1] = v19;
    swift_storeEnumTagMultiPayload();
    *(v25 + 2 * v22) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x22uLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    *(v20 + 32) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1A8FC9400;
    *(v27 + 32) = 0x6465746F7551;
    *(v27 + 40) = 0xE600000000000000;
    *(v27 + 48) = v20;
    v28[0] = v27;
    specialized Array.append<A>(contentsOf:)(v7);
    return v28[0];
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_29GenerativeFunctionsFoundation10JSONSchemaOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_sSS_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS29GenerativeFunctionsFoundation10JSONSchemaOGMd, &_ss18_DictionaryStorageCySS29GenerativeFunctionsFoundation10JSONSchemaOGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v10, v6, &_sSS_29GenerativeFunctionsFoundation10JSONSchemaOtMd, &_sSS_29GenerativeFunctionsFoundation10JSONSchemaOtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for JSONSchema();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t specialized static Grammar.fieldCombinations(for:)(uint64_t a1)
{
  v69 = a1;
  v1 = type metadata accessor for JSONSchema.Property();
  v74 = *(v1 - 8);
  v75 = v1 - 8;
  v2 = v74;
  v3 = *(v74 + 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v77 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - v11;
  v13 = type metadata accessor for JSONSchema();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v55 - v19);
  type metadata accessor for JSONSchema.Boolean();
  v21 = swift_allocBox();
  JSONSchema.Boolean.init(description:)();
  *v20 = v21;
  (*(v14 + 104))(v20, *MEMORY[0x1E69A0AC0], v13);
  v59 = v14;
  v22 = *(v14 + 16);
  v22(v18, v20, v13);
  JSONSchema.Property.init(name:description:schema:isOptional:)();
  v58 = v20;
  v61 = v13;
  v22(v18, v20, v13);
  JSONSchema.Property.init(name:description:schema:isOptional:)();
  v23 = *(v2 + 2);
  v60 = v12;
  v23(v8, v12, v1);
  v24 = type metadata accessor for Node #1 in static Grammar.fieldCombinations(for:)();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v73 = v24;
  v27 = swift_allocObject();
  v28 = *(v2 + 4);
  v76 = v8;
  v71 = v28;
  v72 = (v2 + 32);
  v28(v27 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_field, v8, v1);
  *(v27 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_children) = MEMORY[0x1E69E7CC0];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v29 = swift_allocObject();
  v63 = xmmword_1A8FCB6B0;
  *(v29 + 16) = xmmword_1A8FCB6B0;
  *(v29 + 32) = v27;
  v80 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMd, &_ss23_ContiguousArrayStorageCy29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGMR);
  v30 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v70 = *(v74 + 9);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1A8FC9400;
  v74 = v23;
  v75 = v2 + 16;
  v23((v31 + v30), v62, v1);
  v79 = v69;
  v57 = v27;

  result = specialized Array.append<A>(contentsOf:)(v31);
  v33 = v79;
  v69 = *(v79 + 16);
  if (!v69)
  {

LABEL_27:

    v50 = swift_allocObject();
    v51 = MEMORY[0x1E69E7CC0];
    *(v50 + 16) = MEMORY[0x1E69E7CC0];
    v52 = (v50 + 16);
    v78 = v51;
    recurse #1 (node:path:) in static Grammar.fieldCombinations(for:)(v57, &v78, v50);

    v53 = *(v2 + 1);
    v53(v62, v1);
    v53(v60, v1);
    (*(v59 + 8))(v58, v61);
    swift_beginAccess();
    v54 = *v52;

    return v54;
  }

  v34 = v2;
  v35 = 0;
  v68 = v79 + v30;
  v56 = v34;
  v65 = (v34 + 1);
  v66 = v79;
  v36 = v77;
  v67 = v1;
  while (v35 < *(v33 + 16))
  {
    v37 = v74;
    v74(v36, (v68 + v35 * v70), v1);
    v38 = v76;
    v37(v76, v36, v1);
    v39 = *(v73 + 48);
    v40 = *(v73 + 52);
    v41 = swift_allocObject();
    result = v71(v41 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_field, v38, v1);
    *(v41 + OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_children) = MEMORY[0x1E69E7CC0];
    if (v29 >> 62)
    {
      if (v29 < 0)
      {
        v47 = v29;
      }

      else
      {
        v47 = v29 & 0xFFFFFFFFFFFFFF8;
      }

      result = MEMORY[0x1AC57C730](v47);
      v42 = result;
      if (!result)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v42 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
        goto LABEL_21;
      }
    }

    if (v42 < 1)
    {
      goto LABEL_29;
    }

    v43 = 0;
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x1AC57C620](v43, v29);
      }

      else
      {
        v44 = *(v29 + 8 * v43 + 32);
      }

      v45 = OBJC_IVAR____TtCZFV19TokenGenerationCore7GrammarP33_DD88DD49DE63EB9CBD61CBF820251C8A17fieldCombinationsFT3forGSaVO29GenerativeFunctionsFoundation10JSONSchema8Property__GSaGSaS3___L_4Node_children;
      swift_beginAccess();

      MEMORY[0x1AC57C290](v46);
      if (*((*(v44 + v45) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v44 + v45) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v43;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    while (v42 != v43);
LABEL_21:
    v36 = v77;
    if (JSONSchema.Property.isOptional.getter())
    {

      MEMORY[0x1AC57C290](v48);
      v33 = v66;
      v1 = v67;
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v49 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      result = (*v65)(v36, v1);
      v29 = v80;
    }

    else
    {

      v29 = swift_allocObject();
      *(v29 + 16) = v63;
      *(v29 + 32) = v41;
      v1 = v67;
      result = (*v65)(v36, v67);
      v80 = v29;
      v33 = v66;
    }

    if (++v35 == v69)
    {

      v2 = v56;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized static Grammar.reference(to:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A8FC9400;
  strcpy(v14, "__ReferenceTo");
  HIWORD(v14[1]) = -4864;
  MEMORY[0x1AC57C120](a1, a2);
  v5 = v14[0];
  v6 = v14[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v8 = *(type metadata accessor for Symbol(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A8FC9400;
  v12 = (v11 + v10);
  *v12 = a1;
  v12[1] = a2;
  swift_storeEnumTagMultiPayload();
  *(v7 + 32) = v11;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  *(v4 + 48) = v7;

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10Foundation12CharacterSetVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10Foundation12CharacterSetVtMd, &_sSi_10Foundation12CharacterSetVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMd, &_ss18_DictionaryStorageCySi10Foundation12CharacterSetVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of (String, Any)(v10, v6, &_sSi_10Foundation12CharacterSetVtMd, &_sSi_10Foundation12CharacterSetVtMR);
      v12 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for CharacterSet();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySiGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySJSaySiGGMd, &_ss18_DictionaryStorageCySJSaySiGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + 8 * v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v18 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v17);
    v11 = v16;
    v6 = v18;
    result = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_ShySiGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v17, v13, a2, v28);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for CharacterSet();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5UInt8V_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5UInt8VSiGMd, &_ss18_DictionaryStorageCys5UInt8VSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_s5UInt8VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySis5UInt8VGMd, &_ss18_DictionaryStorageCySis5UInt8VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMd, &_ss18_DictionaryStorageCySi19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v23 = a1;
  v11 = *(a1 + 81);
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = v12;
  result = v5;
  v16 = (v23 + 137);
  while (1)
  {
    *(v3 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    *(v3[6] + 8 * v14) = v4;
    v17 = v3[7] + 48 * v14;
    *v17 = result;
    *(v17 + 8) = v6;
    *(v17 + 16) = v7;
    *(v17 + 24) = v8 & 1;
    *(v17 + 32) = v9;
    *(v17 + 40) = v10 & 1;
    *(v17 + 41) = v11 & 1;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v16 + 56;
    v4 = *(v16 - 49);
    v24 = *(v16 - 41);
    v6 = *(v16 - 33);
    v7 = *(v16 - 25);
    v8 = *(v16 - 17);
    v9 = *(v16 - 9);
    v10 = *(v16 - 1);
    v11 = *v16;

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v16 = v21;
    result = v24;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for Node #1 in static Grammar.fieldCombinations(for:)()
{
  result = type metadata singleton initialization cache for Node #1 in static Grammar.fieldCombinations(for:);
  if (!type metadata singleton initialization cache for Node #1 in static Grammar.fieldCombinations(for:))
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Node #1 in static Grammar.fieldCombinations(for:)()
{
  result = type metadata accessor for JSONSchema.Property();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = _sypWOb_0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo20IOSurfacePropertyKeya_s8Sendable_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo20IOSurfacePropertyKeyas8Sendable_pGMd, &_ss18_DictionaryStorageCySo20IOSurfacePropertyKeyas8Sendable_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v11, &_sSo20IOSurfacePropertyKeya_s8Sendable_ptMd, &_sSo20IOSurfacePropertyKeya_s8Sendable_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = _sypWOb_0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_SStMd, &_s15TokenGeneration6PromptV07SpecialA0V_SStMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSSGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v10, v6, &_s15TokenGeneration6PromptV07SpecialA0V_SStMd, &_s15TokenGeneration6PromptV07SpecialA0V_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Prompt.SpecialToken(0);
      result = outlined init with take of Prompt.SpecialToken(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for Prompt.SpecialToken);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9PromptKit12SpecialTokenV_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit12SpecialTokenV_SStMd, &_s9PromptKit12SpecialTokenV_SStMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit12SpecialTokenVSSGMd, &_ss18_DictionaryStorageCy9PromptKit12SpecialTokenVSSGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v10, v6, &_s9PromptKit12SpecialTokenV_SStMd, &_s9PromptKit12SpecialTokenV_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for SpecialToken();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit0C25ComponentValueConvertible_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMd, &_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMd, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of PromptComponentValueConvertible(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SDyS2SGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_SDyS2SGtMd, &_s15TokenGeneration6PromptV07SpecialA0V_SDyS2SGtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMd, &_ss18_DictionaryStorageCy15TokenGeneration6PromptV07SpecialC0VSDyS2SGGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (String, Any)(v10, v6, &_s15TokenGeneration6PromptV07SpecialA0V_SDyS2SGtMd, &_s15TokenGeneration6PromptV07SpecialA0V_SDyS2SGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Prompt.SpecialToken(0);
      result = outlined init with take of Prompt.SpecialToken(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for Prompt.SpecialToken);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = _sypWOb_0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined init with take of Prompt.SpecialToken(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Symbol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore6SymbolOSgMd, &_s19TokenGenerationCore6SymbolOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Prompt.SpecialToken(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t Grammar.init(tools:version:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 16))
  {
    v4 = static Grammar.toolCallFormatV4(for:)(&v11, result);

    if (!v2)
    {
      v5 = v11;
      v10 = *v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1A8FC9400;
      *(v6 + 32) = v5;
      *(v6 + 40) = v10;
      v11 = v6;
      specialized Array.append<A>(contentsOf:)(v4);
      result = Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(v11, 0, MEMORY[0x1E69E7CC0], &v11);
      v7 = v12[0];
      v8 = *&v12[1];
      v9 = *&v12[3];
      *a2 = v11;
      *(a2 + 8) = v7;
      *(a2 + 16) = v8;
      *(a2 + 32) = v9;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static Grammar.toolCallFormatV4(for:)(void *a1, uint64_t a2)
{
  result = static Grammar.anyToolCallRules(for:)(a2);
  if (!v2)
  {
    if (result[2])
    {
      v17 = result;
      v6 = result[4];
      v5 = result[5];
      v16[0] = v6;
      v16[1] = v5;

      v7 = static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(v16, 1, 0, 0, 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v8 = *(type metadata accessor for Symbol(0) - 8);
      v9 = *(v8 + 72);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1A8FCB600;
      v12 = (v11 + v10);
      *v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0xD00000000000001FLL, 0x80000001A8FD9060);
      result = swift_storeEnumTagMultiPayload();
      if (v7[2])
      {
        v13 = (v12 + v9);
        v14 = v7[5];
        *v13 = v7[4];
        v13[1] = v14;
        swift_storeEnumTagMultiPayload();

        *(v12 + 2 * v9) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0xD000000000000013, 0x80000001A8FD9080);
        swift_storeEnumTagMultiPayload();
        *(v15 + 32) = v11;
        *a1 = 0xD000000000000012;
        a1[1] = 0x80000001A8FD9040;
        a1[2] = v15;
        v16[0] = v7;
        specialized Array.append<A>(contentsOf:)(v17);
        return v16[0];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t static Grammar.anyToolCallRules(for:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC8];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(type metadata accessor for Tool.Function() - 8);
    v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v24 = *(v5 + 72);
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = static Grammar.singleToolRules(for:cache:)(&v26, v6, &v28);
      if (v1)
      {
        break;
      }

      v9 = v8;
      v10 = v26;
      v25 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v11 = *(type metadata accessor for Symbol(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1A8FC9400;
      v15 = (v14 + v13);
      *v15 = v10;
      v15[1] = v25;
      swift_storeEnumTagMultiPayload();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v17 >= v16 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v7);
      }

      *(v7 + 2) = v17 + 1;
      *&v7[8 * v17 + 32] = v14;
      v18 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      if (v20 >= v19 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[24 * v20];
      *(v21 + 4) = v10;
      *(v21 + 40) = v25;
      v29 = v18;
      specialized Array.append<A>(contentsOf:)(v9);
      v6 += v24;
      if (!--v4)
      {
        v3 = v29;
        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1A8FC9400;
    *(v23 + 32) = 0x61436C6F6F545F5FLL;
    *(v23 + 40) = 0xEA00000000006C6CLL;
    *(v23 + 48) = v7;
    v26 = v23;
    specialized Array.append<A>(contentsOf:)(v3);
    return v26;
  }
}

uint64_t static Grammar.singleToolRules(for:cache:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v35 = a3;
  v33[0] = a1;
  v34 = type metadata accessor for GenerationSchema();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecursiveSchema();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JSONSchema();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[1] = a2;
  Tool.Function.parameters.getter();
  GenerationSchema.recursiveSchema()();
  (*(v4 + 8))(v7, v34);
  RecursiveSchema.jsonSchema()();
  (*(v9 + 8))(v12, v8);
  v18 = v38;
  v19 = static Grammar.rules(for:with:wrapStringsInQuotes:)(v17, v35, 1);
  if (v18)
  {
    (*(v14 + 8))(v17, v13);
    return v19;
  }

  (*(v14 + 8))(v17, v13);
  v36 = 24415;
  v37 = 0xE200000000000000;
  v20 = Tool.Function.name.getter();
  MEMORY[0x1AC57C120](v20);

  MEMORY[0x1AC57C120](0x6C6C61436C6F6F54, 0xE800000000000000);
  v38 = v36;
  v35 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v21 = *(type metadata accessor for Symbol(0) - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A8FCB600;
  v25 = v24 + v23;
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v36 = 0x3A22656D616E227BLL;
  v37 = 0xEA00000000002220;
  v26 = Tool.Function.name.getter();
  MEMORY[0x1AC57C120](v26);

  MEMORY[0x1AC57C120](0xD000000000000010, 0x80000001A8FD90A0);
  *(v24 + v23) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v36, v37);
  swift_storeEnumTagMultiPayload();

  if (v19[2])
  {
    v28 = (v25 + v22);
    v29 = v19[5];
    *v28 = v19[4];
    v28[1] = v29;
    swift_storeEnumTagMultiPayload();

    *(v25 + 2 * v22) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x7DuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v30 = v34;
    *(v34 + 32) = v24;
    v31 = v33[0];
    v32 = v35;
    *v33[0] = v38;
    *(v31 + 8) = v32;
    *(v31 + 16) = v30;
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of TokenizerAwareGrammarRecognizer.accepts(tokenID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of TokenizerAwareGrammarRecognizer.accepts(tokenID:);

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of TokenizerAwareGrammarRecognizer.accepts(tokenID:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of TokenizerAwareGrammarRecognizer.accepts(tokenIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of TokenizerAwareGrammarRecognizer.accepts(tokenID:);

  return v11(a1, a2, a3);
}

Swift::Bool __swiftcall TokenizerAwareGrammarRecognizer.accepts(tokenID:)(Swift::Int tokenID)
{
  v3 = v2;
  v4 = v1;
  v5 = *(v1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](tokenID);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 24))(v7);
  LOBYTE(v3) = (*(v3 + 8))(v4, v3);
  (*(v5 + 8))(v9, v4);
  return v3 & 1;
}

char *TokenizerAwareGrammarRecognizer.accepts(tokenIDs:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *v2++;
    v4 = v5;
    if (TokenizerAwareGrammarRecognizer.accepts(tokenID:)(v5))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      }

      v7 = *(v3 + 2);
      v6 = *(v3 + 3);
      if (v7 >= v6 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v3);
      }

      *(v3 + 2) = v7 + 1;
      *&v3[8 * v7 + 32] = v4;
    }

    --v1;
  }

  while (v1);
  return v3;
}

uint64_t protocol witness for TokenizerAwareGrammarRecognizer.accepts(tokenID:) in conformance TokenGrammarRecognizer<A>(Swift::Int a1)
{
  v2 = TokenizerAwareGrammarRecognizer.accepts(tokenID:)(a1);
  v3 = *(v1 + 8);
  v4 = v2;

  return v3(v4);
}

uint64_t protocol witness for TokenizerAwareGrammarRecognizer.accepts(tokenIDs:) in conformance TokenGrammarRecognizer<A>(uint64_t a1)
{
  v2 = TokenizerAwareGrammarRecognizer.accepts(tokenIDs:)(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t Lock.__deallocating_deinit()
{
  pthread_mutex_destroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t MaskCache.__deallocating_deinit(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ConstraintsProvider(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConstraintsProvider(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for ConstraintsProvider(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
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
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata instantiation function for SpaceLookaheadMaskGenerator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SpaceLookaheadMaskGenerator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void type metadata completion function for RecognizerGuidedGenerationConstraints(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  type metadata accessor for RecognizerGuidedGenerationConstraints.TokenRecognizerManager();
  if (v4 <= 0x3F)
  {
    type metadata accessor for MaskCache();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for TokenGrammarRecognizer();
    if (v5 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        type metadata accessor for Int?();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for RecognizerGuidedGenerationConstraints(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 24) & ~v6) + *(*(*(a3 + 24) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for RecognizerGuidedGenerationConstraints(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((v8 + 24) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 24) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((v8 + 24) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 24) & ~v8) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

uint64_t type metadata instantiation function for RecognizerGuidedGenerationConstraints.TokenRecognizerManager.TokenRecognizerCache()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SJs5NeverOTg5166_s19TokenGenerationCore27SpaceLookaheadMaskGeneratorV29generateValidSearchCandidates8prefixes12vocabManager05allowD6PrefixSaySiGShySSG_AA010VocabularyN0CSbtFSJSSXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v37 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v36 = v37;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v32 = a1 + 64;
  v33 = a1;
  v8 = a1;
  v34 = v2;
  v35 = a1 + 56;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v8 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    v12 = *(v8 + 36);
    v13 = (*(v8 + 48) + 16 * v6);
    v14 = *v13;
    v15 = v13[1];
    if ((v15 & 0x2000000000000000) != 0)
    {
      if ((v15 & 0xF00000000000000) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if ((v14 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_32;
      }

      if ((v14 & 0x1000000000000000) == 0)
      {
        v16 = v13[1];

        v14 = static String._copying(_:)();
        v18 = v17;

        v8 = v33;
        v15 = v18;
        goto LABEL_14;
      }
    }

    v19 = v13[1];

LABEL_14:
    v20 = v36;
    v22 = *(v36 + 16);
    v21 = *(v36 + 24);
    v23 = v12;
    if (v22 >= v21 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      v23 = v12;
      v8 = v33;
      v20 = v36;
    }

    *(v20 + 16) = v22 + 1;
    v24 = v20 + 16 * v22;
    *(v24 + 32) = v14;
    *(v24 + 40) = v15;
    v9 = 1 << *(v8 + 32);
    if (v6 >= v9)
    {
      goto LABEL_29;
    }

    v4 = v35;
    v25 = *(v35 + 8 * v11);
    if ((v25 & (1 << v6)) == 0)
    {
      goto LABEL_30;
    }

    if (v23 != *(v8 + 36))
    {
      goto LABEL_31;
    }

    v36 = v20;
    v26 = v25 & (-2 << (v6 & 0x3F));
    if (v26)
    {
      v9 = __clz(__rbit64(v26)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v34;
    }

    else
    {
      v27 = v11 << 6;
      v28 = v11 + 1;
      v29 = (v32 + 8 * v11);
      v10 = v34;
      while (v28 < (v9 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = outlined consume of [String : JSONSchema].Index._Variant(v6, v23, 0);
          v8 = v33;
          v9 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : JSONSchema].Index._Variant(v6, v23, 0);
      v8 = v33;
    }

LABEL_4:
    ++v7;
    v6 = v9;
    if (v7 == v10)
    {
      return v36;
    }
  }

  __break(1u);
LABEL_28:
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
  __break(1u);
  return result;
}

uint64_t GuidedGenerationConstraints.init(grammar:vocabularyManager:enableDeterministicTokenRuns:numberOfParallelTasks:)@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  v11 = *a2;
  v63[0] = *a1;
  v63[1] = v6;
  v63[2] = v7;
  v64 = v8;
  v65 = v10;
  v66 = v9;
  type metadata accessor for EarleyRecognizer.RecognizerGrammar();
  swift_allocObject();
  swift_retain_n();

  v12 = EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v63, v11);
  v13 = specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A8FC9400;
  *(v15 + 32) = v13;
  *(v14 + 32) = v15;
  type metadata accessor for EarleyRecognizer();
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 28) = -1;
  *(v16 + 24) = 0;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  *(v16 + 48) = MEMORY[0x1E69E7CC0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
  swift_allocObject();

  v18 = specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v17, v11, 0, 1);

  GuidedGenerationOverrides.init()(v63);
  v33 = _s19TokenGenerationCore27SpaceLookaheadMaskGeneratorVACyxGycfCAA16EarleyRecognizerC_Ttg5();
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (!isInternalInstall)
  {
    GuidedGenerationOverrides.init()(&v37);
    v60 = v47;
    v61 = v48;
    v62 = v49;
    v56 = v43;
    v57 = v44;
    v58 = v45;
    v59 = v46;
    v52 = v39;
    v53 = v40;
    v54 = v41;
    v55 = v42;
    v50 = v37;
    v51 = v38;
    outlined destroy of GuidedGenerationOverrides(&v50);
    v21 = 2000;
LABEL_10:
    v19 = a3;
    goto LABEL_11;
  }

  v64(&v50, v63[0]);
  v19 = v50;
  v20 = v50;
  GuidedGenerationOverrides.init()(&v37);
  v60 = v47;
  v61 = v48;
  v62 = v49;
  v56 = v43;
  v57 = v44;
  v58 = v45;
  v59 = v46;
  v52 = v39;
  v53 = v40;
  v54 = v41;
  v55 = v42;
  v50 = v37;
  v51 = v38;
  (*(&v48 + 1))(&v35, v47);
  outlined destroy of GuidedGenerationOverrides(&v50);
  if (v36)
  {
    v21 = 2000;
  }

  else
  {
    v21 = v35;
  }

  if (v20 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A8FC9400;
  v23 = MEMORY[0x1E69E7CC0];
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v22 + 32) = v18;
  *(v22 + 40) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMR);
  v25 = swift_allocObject();
  type metadata accessor for Lock();
  v26 = swift_allocObject();
  swift_retain_n();
  v27 = swift_slowAlloc();
  *(v26 + 16) = v27;
  pthread_mutex_init(v27, 0);

  *(v25 + 16) = v26;
  *(v25 + 24) = v22;
  type metadata accessor for MaskCache();
  v28 = swift_allocObject();
  *(v28 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(v23);
  v29 = swift_allocObject();
  v30 = swift_slowAlloc();
  *(v29 + 16) = v30;
  pthread_mutex_init(v30, 0);
  outlined destroy of GuidedGenerationOverrides(v63);

  *(v28 + 24) = v29;
  *a5 = v18;
  *(a5 + 8) = 0;
  *(a5 + 16) = v25;
  *(a5 + 24) = v28;
  *(a5 + 32) = v18;
  *(a5 + 40) = v33 & 1;
  *(a5 + 41) = v19 & 1;
  *(a5 + 48) = a4;
  *(a5 + 56) = 0;
  *(a5 + 64) = v21;
  return result;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.childRecognizerIndexInternal(for:tokenID:)(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v10 = v4;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = *(v4 + 24);
  if (*(v13 + 16) <= a1)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    v7 = a3(v7);
    *(v10 + 24) = v7;
    goto LABEL_7;
  }

  v14 = v13 + 16 * a1;
  v15 = *(v14 + 40);
  if (*(v15 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v17)
    {
      v5 = *(*(v15 + 56) + 8 * v16);
      swift_endAccess();
      return v5;
    }
  }

  swift_endAccess();
  v4 = *(v14 + 32);

  v6 = specialized TokenGrammarRecognizer.childRecognizer(consumingTokenID:)(a2);

  v7 = *(v10 + 24);
  v5 = *(v7 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (*(v7 + 16) <= a1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v7 + 16 * a1;
  v20 = *(v19 + 40);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v19 + 40);
  *(v19 + 40) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, a2, v21);
  v22 = *(v19 + 40);
  *(v19 + 40) = v28;

  *(v10 + 24) = v7;
  swift_endAccess();
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  a2 = *(v10 + 24);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 24) = a2;
  if ((v23 & 1) == 0)
  {
LABEL_17:
    a2 = a4(0, *(a2 + 16) + 1, 1, a2);
    *(v10 + 24) = a2;
  }

  v25 = *(a2 + 16);
  v24 = *(a2 + 24);
  if (v25 >= v24 >> 1)
  {
    a2 = a4(v24 > 1, v25 + 1, 1, a2);
  }

  *(a2 + 16) = v25 + 1;
  v26 = a2 + 16 * v25;
  *(v26 + 32) = v6;
  *(v26 + 40) = v4;
  *(v10 + 24) = a2;
  swift_endAccess();

  return v5;
}

uint64_t specialized TokenGrammarRecognizer.childRecognizer(consumingTokenID:)(unint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v25 - v10);
  v12 = v1[4];
  VocabularyManager.prefixLookUp.getter((&v25 - v10));
  v13 = *(v11 + *(v5 + 52));

  outlined destroy of VocabularyManager.PrefixLookup(v11, type metadata accessor for VocabularyManager.PrefixLookup);
  v14 = specialized Set.contains(_:)(a1, v13);

  if (v14)
  {
    VocabularyManager.prefixLookUp.getter(v9);
    v15 = *(v9 + *(v5 + 48));

    outlined destroy of VocabularyManager.PrefixLookup(v9, type metadata accessor for VocabularyManager.PrefixLookup);
    if (*(v15 + 16))
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if (v17)
      {
        v18 = *(*(v15 + 56) + v16);

        v19 = v2[7];
        if (v19)
        {
          v26 = v18;
          v27 = 1;
          v19 = EarleyRecognizer.childRecognizer(consumingElement:)(&v26);
        }

LABEL_11:
        swift_allocObject();

        return specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v19, v12, a1, 0);
      }
    }
  }

  else
  {
    VocabularyManager.prefixLookUp.getter(v11);
    v20 = v11[10];

    outlined destroy of VocabularyManager.PrefixLookup(v11, type metadata accessor for VocabularyManager.PrefixLookup);
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v20 + 16) > a1)
    {
      v21 = v20 + 16 * a1;
      v23 = *(v21 + 32);
      v22 = *(v21 + 40);

      v19 = v2[7];
      if (v19)
      {
        v19 = EarleyRecognizer.childRecognizer(consumingString:)(v23, v22);
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v36 = *(v4 + 16);
  pthread_mutex_lock(*(v36 + 16));
  v6 = *(a1 + 16);
  swift_beginAccess();
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v10 = 32;
    v37 = a1;
    while (1)
    {
      v11 = *(a1 + v10);
      if (v11 < 0 || v11 >= a2)
      {
        break;
      }

      v12 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.childRecognizerIndexInternal(for:tokenID:)(v8, *(a1 + v10), a3, a4);
      if ((v12 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v8 = v12;
      v13 = *(v4 + 24);
      if (v12 >= *(v13 + 16))
      {
        goto LABEL_31;
      }

      v14 = *(v13 + 16 * v12 + 32);
      v15 = *(v14 + 56);

      if (!v15)
      {

        if (one-time initialization token for guided != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static Log.guided);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1A8E85000, v25, v26, "contextTokenIDs fail to match grammar", v27, 2u);
          MEMORY[0x1AC57DBF0](v27, -1, -1);
        }

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v41 = v31;
          *v30 = 136642819;
          v32 = MEMORY[0x1AC57C2C0](a1, MEMORY[0x1E69E6530]);
          v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v41);

          *(v30 + 4) = v8;
          _os_log_impl(&dword_1A8E85000, v28, v29, "contextTokenIDs fail to match grammar with contextTokenIDs %{sensitive}s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x1AC57DBF0](v31, -1, -1);
          MEMORY[0x1AC57DBF0](v30, -1, -1);
        }

        v23 = v36;
        lazy protocol witness table accessor for type GuidedGenerationError and conformance GuidedGenerationError();
        swift_allocError();
        *v34 = 0;
        swift_willThrow();

        goto LABEL_28;
      }

      if ((v7 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v17 = *(v9 + 2);
        v16 = *(v9 + 3);
        if (v17 >= v16 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
        }

        *(v9 + 2) = v17 + 1;
        *&v9[8 * v17 + 32] = v11;
        a1 = v37;
      }

      pthread_mutex_lock(*(*(v14 + 24) + 16));
      v7 = *(v14 + 16);
      pthread_mutex_unlock(*(*(v14 + 24) + 16));

      v10 += 8;
      if (!--v6)
      {
        goto LABEL_16;
      }
    }

    if (one-time initialization token for guided == -1)
    {
      goto LABEL_18;
    }

LABEL_32:
    swift_once();
LABEL_18:
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.guided);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v11;
      _os_log_impl(&dword_1A8E85000, v19, v20, "Out-of-vocabulary token ID (%ld) passed to generateNextTokenIDMask", v21, 0xCu);
      MEMORY[0x1AC57DBF0](v21, -1, -1);
    }

    lazy protocol witness table accessor for type GuidedGenerationError and conformance GuidedGenerationError();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    v23 = v36;
LABEL_28:
    pthread_mutex_unlock(*(v23 + 16));
  }

  else
  {
    v8 = 0;
LABEL_16:
    Array<A>.hashValue.getter();

    pthread_mutex_unlock(*(v36 + 16));
  }

  return v8;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.possiblyDeterministicTokens(follow:)(uint64_t a1)
{
  v4 = type metadata accessor for TerminalSymbol(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  if ((*(v1 + 25) & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = *v1;
  outlined init with copy of GuidedGenerationTokenizer(*(v1[2] + 32) + 64, v27);
  v10 = v28;
  v11 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v12 = (*(v11 + 56))(v10, v11);
  v13 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(a1, v12, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  __swift_destroy_boxed_opaque_existential_0(v27);
  if (v2)
  {
    return v14 & 1;
  }

  v15 = *(v9 + 16);
  pthread_mutex_lock(*(v15 + 16));
  result = swift_beginAccess();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v17 = *(v9 + 24);
    if (v13 < *(v17 + 16))
    {
      v18 = *(v17 + 16 * v13 + 32);
      v19 = *(v15 + 16);

      pthread_mutex_unlock(v19);
      if (*(v18 + 56))
      {
        v30 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
        rawValue = v30.nextValidTerminals._rawValue;
      }

      else
      {
        rawValue = MEMORY[0x1E69E7CC0];
      }

      if (rawValue[2] > 1uLL || specialized Collection<>.containsCharacterSetTerminal()(rawValue))
      {
LABEL_10:

LABEL_11:
        v14 = 0;
        return v14 & 1;
      }

      v21 = rawValue[2];
      if (v21)
      {
        _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v21 - 1), v8, type metadata accessor for TerminalSymbol);

        if (TerminalSymbol.contains(_:)(32))
        {
          v22 = *(v18 + 56);
          if (v22)
          {
            v22 = EarleyRecognizer.childRecognizer(consumingString:)(32, 0xE100000000000000);
          }

          v23 = *(v18 + 32);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
          swift_initStackObject();

          if (*(specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v22, v23, 0, 1) + 56))
          {
            v31 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
            v24 = v31.nextValidTerminals._rawValue;
          }

          else
          {

            v24 = MEMORY[0x1E69E7CC0];
          }

          if (v24[2] <= 1uLL)
          {
            v25 = specialized Collection<>.containsCharacterSetTerminal()(v24);

            outlined destroy of VocabularyManager.PrefixLookup(v8, type metadata accessor for TerminalSymbol);
            v14 = !v25;
            return v14 & 1;
          }

          outlined destroy of VocabularyManager.PrefixLookup(v8, type metadata accessor for TerminalSymbol);
          goto LABEL_10;
        }

        outlined destroy of VocabularyManager.PrefixLookup(v8, type metadata accessor for TerminalSymbol);
      }

      else
      {
      }

      v14 = 1;
      return v14 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.nextTokenIDMaskComputation(follow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized RecognizerGuidedGenerationConstraints.possiblyDeterministicTokens(follow:)(a1);
  if (!v3)
  {
    if (result)
    {
      result = specialized RecognizerGuidedGenerationConstraints.generateNextTokenIDMask(from:)(a1, v13);
      v7 = v14;
      v8 = v13[1];
      v9 = v13[2];
      *a2 = v13[0];
      *(a2 + 16) = v8;
      *(a2 + 32) = v9;
      *(a2 + 48) = v7;
    }

    else
    {
      v10 = swift_allocObject();
      v11 = *(v2 + 16);
      *(v10 + 16) = *v2;
      *(v10 + 32) = v11;
      *(v10 + 48) = *(v2 + 32);
      *(v10 + 64) = *(v2 + 48);
      *(v10 + 72) = a1;
      v12 = swift_allocObject();
      *(v12 + 16) = partial apply for specialized closure #1 in RecognizerGuidedGenerationConstraints.nextTokenIDMaskComputation(follow:);
      *(v12 + 24) = v10;
      *a2 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out TokenIDMaskResponse, @error @owned Error);
      *(a2 + 8) = v12;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *(a2 + 16) = 0;
      *(a2 + 40) = xmmword_1A8FCBAD0;
      outlined init with copy of (String, Any)(v2, v13, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsVyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAEGGMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsVyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAEGGMR);
    }
  }

  return result;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.generateNextTokenIDMask(from:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2;
  v7 = *v2;
  v8 = *(v2[2] + 32);
  outlined init with copy of GuidedGenerationTokenizer(v8 + 64, v50);
  v9 = *&v50[24];
  __swift_project_boxed_opaque_existential_1(v50, *&v50[24]);
  v10 = (*(*(&v9 + 1) + 56))(v9, *(&v9 + 1));
  v11 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(a1, v10, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v13 = v12;
  result = __swift_destroy_boxed_opaque_existential_0(v50);
  if (v3)
  {
    return result;
  }

  pthread_mutex_lock(*(*(v7 + 16) + 16));
  swift_beginAccess();
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = *(v7 + 24);
  if (v11 >= *(v15 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v46 = a1;
  v54 = a2;
  v47 = v11;
  v16 = *(v15 + 16 * v11 + 32);
  v17 = *(*(&v9 + 1) + 16);

  pthread_mutex_unlock(v17);
  v18 = *(v8 + 112);
  v19 = v4[1];
  v7 = v4[4];
  v20 = *(v4 + 40);
  v21 = *(v4 + 24);

  LOBYTE(v7) = specialized SpaceLookaheadMaskGenerator.nextLogitMask(from:with:stopTokenIDs:leftContextCacheKey:maskCache:numParallelTasks:)(v50, v16, v8, v18, v13, 0, v19, v7, v20, v21);

  v52 = *v50;
  *v53 = *&v50[16];
  *&v53[9] = *&v50[25];
  if (!*&v50[8])
  {
    if (one-time initialization token for guided == -1)
    {
LABEL_6:
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Log.guided);

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v50 = v45;
        *v25 = 136642819;
        v26 = MEMORY[0x1AC57C2C0](v46, MEMORY[0x1E69E6530]);
        v28 = v7;
        v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v50);

        *(v25 + 4) = v7;
        LOBYTE(v7) = v28;
        _os_log_impl(&dword_1A8E85000, v23, v24, "Generated an empty mask after %{sensitive}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x1AC57DBF0](v45, -1, -1);
        MEMORY[0x1AC57DBF0](v25, -1, -1);
      }

      goto LABEL_9;
    }

LABEL_21:
    swift_once();
    goto LABEL_6;
  }

LABEL_9:
  if ((*(v4 + 25) & v7 & 1) == 0)
  {
    outlined init with copy of GuidedGenerationTokenizer(v8 + 64, v50);
    v33 = *&v50[32];
    v32 = *&v50[24];
    __swift_project_boxed_opaque_existential_1(v50, *&v50[24]);
    v34 = (*(v33 + 56))(v32, v33);

    v48 = v52;
    v35 = *v53;
    LOBYTE(v32) = v53[8];
    v36 = *&v53[16];
    v37 = v53[24];
    result = __swift_destroy_boxed_opaque_existential_0(v50);
    v38 = v54;
    *v54 = v48;
    v38[2] = v35;
    v38[3] = v32 & 1;
    v38[4] = v36;
    v38[5] = v37 & 1 | 0x8000000000000000;
    v38[6] = v34;
    return result;
  }

  v29 = specialized RecognizerGuidedGenerationConstraints.performDeterministicRunLookaheadFallback(nextMask:recognizerIndex:)(v50, &v52, v47);
  v31 = v30;

  outlined destroy of ContiguousBitSet(&v52);
  v39 = *v50;
  v40 = v50[24];
  v41 = *&v50[32];
  v42 = v50[40];
  v43 = v51;
  if (v29)
  {
    v44 = v54;
    if (*(v31 + 16))
    {

      *v44 = v31;
      *(v44 + 8) = 0u;
      *(v44 + 24) = 0u;
      *(v44 + 40) = 0u;
      return result;
    }

    v49 = *&v50[8];
  }

  else
  {
    v49 = *&v50[8];

    v44 = v54;
  }

  *v44 = v39;
  *(v44 + 8) = v49;
  *(v44 + 3) = v40;
  *(v44 + 4) = v41;
  *(v44 + 5) = v42 | 0x8000000000000000;
  *(v44 + 6) = v43;
  return result;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.generateNextTokenIDMask(from:)@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v2;
  v12 = *(v2[2] + 32);
  outlined init with copy of GuidedGenerationTokenizer((v12 + 8), &v83);
  v13 = v86;
  v14 = v87;
  __swift_project_boxed_opaque_existential_1(&v83, v86);
  v15 = (v14[7])(v13, v14);
  v16 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(a1, v15, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  result = __swift_destroy_boxed_opaque_existential_0(&v83);
  if (!v3)
  {
    v70 = a1;
    v89 = v12;
    v18 = *(v11 + 16);
    pthread_mutex_lock(*(v18 + 16));
    swift_beginAccess();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v19 = *(v11 + 24);
      if (v16 >= *(v19 + 16))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v69 = 0;
      v20 = *(v19 + 16 * v16 + 32);
      v21 = *(v18 + 16);

      pthread_mutex_unlock(v21);
      a1 = *(v89 + 112);
      v4 = *(v89 + 88);
      v22 = *(v89 + 96);
      __swift_project_boxed_opaque_existential_1((v89 + 64), v4);
      v23 = *(v22 + 56);

      v72 = a1;

      v13 = v23(v4, v22);
      v85 = 0;
      LOBYTE(v86) = 1;
      v87 = 0;
      v88 = 1;
      v83 = MEMORY[0x1E69E7CC0];
      v84 = 0;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v68 = a2;
      if (v13)
      {
        v24 = 0;
        v25 = v72;
        v26 = (v72 + 32);
        v27 = MEMORY[0x1E69E7CC0];
        do
        {
          v29 = *(v25 + 16);
          v30 = v26;
          while (v29)
          {
            v31 = *v30++;
            --v29;
            if (v31 == v24)
            {
              goto LABEL_10;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1);
            v25 = v72;
            v27 = v78;
          }

          v4 = *(v27 + 16);
          v28 = *(v27 + 24);
          if (v4 >= v28 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v4 + 1, 1);
            v25 = v72;
            v27 = v78;
          }

          *(v27 + 16) = v4 + 1;
          *(v27 + 8 * v4 + 32) = v24;
LABEL_10:
          ++v24;
        }

        while (v24 != v13);
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      v71 = v20;
      v33 = specialized TokenGrammarRecognizer.accepts(tokenIDs:spaceLookAhead:)(v27, 0);

      v34 = *(v33 + 16);
      v67 = v33;
      if (!v34)
      {
        v13 = MEMORY[0x1E69E7CC0];
LABEL_35:

        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        v75 = v44;
        v45 = lazy protocol witness table accessor for type [Int] and conformance [A]();
        v76 = v45;
        v73 = v13;
        ContiguousBitSet.init(_:)(&v73, &v78);
        v73 = v78;
        v74 = v79;
        LOBYTE(v75) = v80;
        v76 = v81;
        v77 = v82;
        ContiguousBitSet.formUnion(_:)(&v73);

        if (*(v71 + 56))
        {
          v46 = EarleyRecognizer.fullMatch.getter();
          v4 = v89;
          a2 = v70;
          if (v46)
          {
            v75 = v44;
            v76 = v45;
            v73 = v72;
            ContiguousBitSet.init(_:)(&v73, &v78);
            v73 = v78;
            v74 = v79;
            LOBYTE(v75) = v80;
            v76 = v81;
            v77 = v82;
            ContiguousBitSet.formUnion(_:)(&v73);
          }

          else
          {
          }
        }

        else
        {

          v4 = v89;

          a2 = v70;
        }

        v13 = v83;
        a1 = v84;
        v47 = v85;
        v89 = v86;
        v48 = v87;
        v49 = v88;
        if (v84)
        {
          goto LABEL_46;
        }

        v67 = v88;
        v70 = v87;
        v72 = v85;
        if (one-time initialization token for guided == -1)
        {
LABEL_43:
          v50 = type metadata accessor for Logger();
          __swift_project_value_buffer(v50, static Log.guided);

          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v66 = v13;
            v54 = v53;
            v55 = swift_slowAlloc();
            v83 = v55;
            *v54 = 136642819;
            v56 = MEMORY[0x1AC57C2C0](a2, MEMORY[0x1E69E6530]);
            v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v83);

            *(v54 + 4) = v58;
            _os_log_impl(&dword_1A8E85000, v51, v52, "Generated an empty mask after %{sensitive}s", v54, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v55);
            MEMORY[0x1AC57DBF0](v55, -1, -1);
            v59 = v54;
            v13 = v66;
            MEMORY[0x1AC57DBF0](v59, -1, -1);
          }

          v47 = v72;
          v48 = v70;
          v49 = v67;
LABEL_46:
          outlined init with copy of GuidedGenerationTokenizer(v4 + 64, &v83);
          v60 = v86;
          v61 = v87;
          __swift_project_boxed_opaque_existential_1(&v83, v86);
          v62 = (v61[7])(v60, v61);

          result = __swift_destroy_boxed_opaque_existential_0(&v83);
          v63 = v68;
          *v68 = v13;
          v63[1] = a1;
          v64 = v89;
          v63[2] = v47;
          v63[3] = v64;
          v63[4] = v48;
          v63[5] = v49 | 0x8000000000000000;
          v63[6] = v62;
          return result;
        }

LABEL_53:
        swift_once();
        goto LABEL_43;
      }

      a1 = (v33 + 32);
      v13 = MEMORY[0x1E69E7CC0];
      a2 = 0xE000000000000000;
      while (1)
      {
        v36 = *a1++;
        v35 = v36;
        VocabularyManager.prefixLookUp.getter(v10);
        v37 = v10[10];

        outlined destroy of VocabularyManager.PrefixLookup(v10, type metadata accessor for VocabularyManager.PrefixLookup);
        if ((v36 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v35 >= *(v37 + 16))
        {
          goto LABEL_49;
        }

        v38 = v37 + 16 * v35;
        v4 = *(v38 + 32);
        v39 = *(v38 + 40);

        if (v4)
        {
          v40 = 0;
        }

        else
        {
          v40 = v39 == 0xE000000000000000;
        }

        if (v40)
        {
        }

        else
        {
          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v41 & 1) == 0)
          {
            v42 = swift_isUniquelyReferenced_nonNull_native();
            v78 = v13;
            if ((v42 & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1);
              v13 = v78;
            }

            v4 = *(v13 + 16);
            v43 = *(v13 + 24);
            if (v4 >= v43 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v4 + 1, 1);
              v13 = v78;
            }

            *(v13 + 16) = v4 + 1;
            *(v13 + 8 * v4 + 32) = v35;
          }
        }

        if (!--v34)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> (@out TokenIDMaskResponse, @error @owned Error)(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t specialized RecognizerGuidedGenerationConstraints.performDeterministicRunLookaheadFallback(nextMask:recognizerIndex:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = *v6;
  v11 = *(*v6 + 16);
  pthread_mutex_lock(*(v11 + 16));
  swift_beginAccess();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_101;
  }

  v12 = *(v10 + 24);
  if (*(v12 + 16) <= a3)
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:

    v108 = *(v10 + 16);
    if (v108)
    {
      *&v134 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v108, 0);
      v109 = v134;
      v110 = *(v134 + 16);
      v111 = 32;
      do
      {
        v112 = *(v10 + v111);
        *&v134 = v109;
        v113 = *(v109 + 24);
        if (v110 >= v113 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v110 + 1, 1);
          v109 = v134;
        }

        *(v109 + 16) = v110 + 1;
        *(v109 + 8 * v110 + 32) = v112;
        v111 += 16;
        ++v110;
        --v108;
      }

      while (v108);
    }

    *v127 = v121;
    *(v127 + 8) = v122;
    *(v127 + 16) = v123;
    *(v127 + 24) = v116 & 1;
    *(v127 + 32) = v114;
    *(v127 + 40) = v115 & 1;
    result = 1;
    *(v127 + 48) = v124;
    return result;
  }

  v127 = a1;
  v13 = *(v12 + 16 * a3 + 32);
  v14 = *(v11 + 16);

  pthread_mutex_unlock(v14);
  v15 = *(v13 + 32);

  v125 = a2;
  _s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV013selectLongestA6Prefix07allowedA3IDs12vocabManagerAA16ContiguousBitSetVAH_AA010VocabularyM0CtFAA06EarleyD0C_AA27SpaceLookaheadMaskGeneratorVyALGTt2B5(a2, v15, &v136);

  v129 = v13;
  outlined init with copy of GuidedGenerationTokenizer(*(v13 + 32) + 64, &v134);
  v16 = *&v135[8];
  v17 = *&v135[16];
  __swift_project_boxed_opaque_existential_1(&v134, *&v135[8]);
  v18 = (*(v17 + 56))(v16, v17);
  if (v18 < 0)
  {
    goto LABEL_102;
  }

  *v142 = 0;
  v141 = MEMORY[0x1E69E7CC0];
  v142[8] = 1;
  *&v142[16] = 0;
  v142[24] = 1;
  ContiguousBitSet.formUnion(_:)(0, v18);

  result = __swift_destroy_boxed_opaque_existential_0(&v134);
  v20 = *(&v136 + 1);
  v128 = v5;
  if (*(&v136 + 1) != 1)
  {
    v27 = v136;
    v143._rawValue = v137;
    v28 = v138;
    v29 = v139;
    v30 = v140;
    outlined init with copy of GuidedGenerationTokenizer(*(v129 + 32) + 64, &v141);
    v31 = *&v142[8];
    v32 = *&v142[16];
    __swift_project_boxed_opaque_existential_1(&v141, *&v142[8]);
    v33 = (*(v32 + 56))(v31, v32);
    *v127 = v27;
    *(v127 + 8) = v20;
    *(v127 + 16) = v143;
    *(v127 + 24) = v28;
    *(v127 + 32) = v29;
    *(v127 + 40) = v30;
    *(v127 + 48) = v33;
    __swift_destroy_boxed_opaque_existential_0(&v141);

    return 0;
  }

  if (v138)
  {
    __break(1u);
    return result;
  }

  v21 = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A8FC9400;
  v143._rawValue = v22;
  *(v22 + 32) = v21;
  pthread_mutex_lock(*(v11 + 16));
  v23 = *(v10 + 24);
  if (*(v23 + 16) <= a3)
  {
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v24 = *(v23 + 16 * a3 + 32);
  v25 = *(v11 + 16);

  pthread_mutex_unlock(v25);
  v117 = v6;
  if (!*(v24 + 56) || (EarleyRecognizer.fullMatch.getter() & 1) == 0)
  {
    v5 = v6[24];
    pthread_mutex_lock(*(v11 + 16));
    v34 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.childRecognizerIndexInternal(for:tokenID:)(a3, v21, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
    pthread_mutex_unlock(*(v11 + 16));
    pthread_mutex_lock(*(v11 + 16));
    if ((v34 & 0x8000000000000000) != 0)
    {
LABEL_69:
      __break(1u);
    }

    else
    {
      v35 = &v141;
      while (1)
      {
        v36 = *(v10 + 24);
        if (v34 >= *(v36 + 16))
        {
          break;
        }

        v37 = *(v36 + 16 * v34 + 32);
        v38 = *(v11 + 16);

        pthread_mutex_unlock(v38);

        v39 = *(v37 + 32);
        v40 = *(v39 + 112);

        v41 = specialized SpaceLookaheadMaskGenerator.nextLogitMask(from:with:stopTokenIDs:leftContextCacheKey:maskCache:numParallelTasks:)(&v134, v37, v39, v40, 0, 1, 0, 0, 1, v5);

        v141 = v134;
        *v142 = *v135;
        *&v142[9] = *&v135[9];
        v26 = *(&v134 + 1);
        v130 = v134;
        if (*(&v134 + 1) != 1 && (v41 & 1) == 0)
        {
          goto LABEL_24;
        }

        v42 = *(v37 + 32);

        _s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV013selectLongestA6Prefix07allowedA3IDs12vocabManagerAA16ContiguousBitSetVAH_AA010VocabularyM0CtFAA06EarleyD0C_AA27SpaceLookaheadMaskGeneratorVyALGTt2B5(&v141, v42, &v134);

        v43 = *v135;
        v136 = v134;
        v137 = *v135;
        v138 = v135[8];
        v139 = *&v135[16];
        v140 = v135[24];
        if (*(&v134 + 1) != 1)
        {
          goto LABEL_24;
        }

        if (v135[8])
        {
          __break(1u);
          goto LABEL_117;
        }

        outlined destroy of ContiguousBitSet(&v141);
        rawValue = v143._rawValue;
        v46 = *(v143._rawValue + 2);
        v45 = *(v143._rawValue + 3);
        if (v46 >= v45 >> 1)
        {
          rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v143._rawValue);
        }

        rawValue[2] = v46 + 1;
        v143._rawValue = rawValue;
        rawValue[v46 + 4] = v43;
        if (*(v37 + 56) && (EarleyRecognizer.fullMatch.getter() & 1) != 0)
        {
          v130 = 0;
          v26 = 0;
LABEL_24:
          v24 = v37;
          goto LABEL_25;
        }

        pthread_mutex_lock(*(v11 + 16));
        v34 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.childRecognizerIndexInternal(for:tokenID:)(v34, v43, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
        pthread_mutex_unlock(*(v11 + 16));
        pthread_mutex_lock(*(v11 + 16));
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }
      }
    }

    __break(1u);
LABEL_71:

LABEL_73:

    v5 = v124;
    LOBYTE(v35) = v115;
    LOBYTE(v34) = v116;
    if (one-time initialization token for guided == -1)
    {
      goto LABEL_74;
    }

    goto LABEL_119;
  }

  v130 = 0;
  v26 = 0;
LABEL_25:
  v47 = *(v129 + 48);
  outlined init with copy of GuidedGenerationTokenizer(*(v129 + 32) + 64, v131);
  a3 = v132;
  v48 = v133;
  __swift_project_boxed_opaque_existential_1(v131, v132);
  v49 = *(v48 + 56);
  outlined init with copy of ContiguousBitSet(v125, &v134);
  v50 = v49(a3, v48);
  v121 = *v125;
  v122 = *(v125 + 8);
  v123 = *(v125 + 16);
  v124 = v50;
  LOBYTE(a3) = *(v125 + 24);
  v6 = *(v125 + 32);
  LOBYTE(v5) = *(v125 + 40);
  __swift_destroy_boxed_opaque_existential_0(v131);
  v51 = *(v24 + 32);

  v52 = VocabularyManager.retokenize(tokenIDs:isFirstDecodedToken:)(v143, v47);
  if (v53)
  {

    goto LABEL_27;
  }

  v126 = v52;

  if (!v126)
  {

LABEL_27:

    if (one-time initialization token for guided == -1)
    {
LABEL_28:
      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, static Log.guided);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v55, v56))
      {
LABEL_31:

        result = 0;
        *v127 = v121;
        *(v127 + 8) = v122;
        *(v127 + 16) = v123;
        *(v127 + 24) = a3 & 1;
        *(v127 + 32) = v6;
        *(v127 + 40) = v5 & 1;
        *(v127 + 48) = v124;
        return result;
      }

      v57 = a3;
      a3 = swift_slowAlloc();
      *a3 = 0;
      v58 = "Deterministic run retokenization failed. Emitting a regular mask.";
LABEL_30:
      _os_log_impl(&dword_1A8E85000, v55, v56, v58, a3, 2u);
      v59 = a3;
      LOBYTE(a3) = v57;
      MEMORY[0x1AC57DBF0](v59, -1, -1);
      goto LABEL_31;
    }

LABEL_112:
    swift_once();
    goto LABEL_28;
  }

  if ((specialized TokenGrammarRecognizer.isValidDeterministicRun(tokenRun:)(v126) & 1) == 0)
  {

    if (one-time initialization token for guided != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static Log.guided);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_31;
    }

    v57 = a3;
    a3 = swift_slowAlloc();
    *a3 = 0;
    v58 = "isValidDeterministicRun check failed. Emitting a regular mask.";
    goto LABEL_30;
  }

  v60 = v130;
  if (v130)
  {
    if (v26 >= *(v117 + 6))
    {

      if (one-time initialization token for guided != -1)
      {
LABEL_115:
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static Log.guided);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v55, v56))
      {
        goto LABEL_31;
      }

      v57 = a3;
      a3 = swift_slowAlloc();
      *a3 = 0;
      v58 = "nextMaskResult has too many valid tokens to check stability. Emitting a regular mask.";
      goto LABEL_30;
    }

    v114 = v6;
    v115 = v5;
    v116 = a3;
    v61 = 0;
    v62 = 0;
LABEL_38:
    v63 = *(v60 + 16);
    if (v62 > v63)
    {
      v63 = v62;
    }

    v64 = 0x200000000000000;
    if (v62 > 0x200000000000000)
    {
      v64 = v62;
    }

    v6 = ((v62 << 6) - 64);
    v65 = v62;
    do
    {
      if (v63 == v65)
      {
        v119 = v61;

        if (one-time initialization token for guided != -1)
        {
          swift_once();
        }

        v76 = type metadata accessor for Logger();
        __swift_project_value_buffer(v76, static Log.guided);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.info.getter();
        LOBYTE(v5) = v115;
        v6 = v114;
        if (os_log_type_enabled(v77, v78))
        {
          v79 = a3;
          a3 = swift_slowAlloc();
          *a3 = 134217984;
          *(a3 + 4) = v119;
          _os_log_impl(&dword_1A8E85000, v77, v78, "Run Stable after checking %ld tokens", a3, 0xCu);
          v80 = a3;
          LOBYTE(a3) = v79;
          MEMORY[0x1AC57DBF0](v80, -1, -1);
        }

        goto LABEL_68;
      }

      if ((v62 & 0x8000000000000000) != 0)
      {
        goto LABEL_110;
      }

      if (v64 == v65)
      {
        goto LABEL_111;
      }

      v66 = *(v60 + 8 * v65++ + 32);
      v6 += 64;
    }

    while (!v66);
    while (1)
    {
      v67 = __clz(__rbit64(v66));
      v68 = &v6[v67];
      if (__OFADD__(v6, v67))
      {
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v118 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_114;
      }

      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A8FC9400;
      *(inited + 32) = v68;
      *&v134 = v126;

      specialized Array.append<A>(contentsOf:)(inited);
      v70 = v134;
      v71 = *(v129 + 32);

      v72 = VocabularyManager.retokenize(tokenIDs:isFirstDecodedToken:)(v70, v47);
      v128 = v73;
      if (v73)
      {
        goto LABEL_71;
      }

      v5 = v72;

      if (!v5)
      {

        goto LABEL_73;
      }

      v60 = v130;
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v5, v70) & 1) == 0)
      {
        break;
      }

      v66 &= v66 - 1;

      v62 = v65;
      LOBYTE(a3) = v116;
      v61 = v118;
      if (!v66)
      {
        goto LABEL_38;
      }
    }

    if (one-time initialization token for guided != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, static Log.guided);

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *&v134 = v120;
      *v88 = 136643075;
      v89 = MEMORY[0x1AC57C2C0](v5, MEMORY[0x1E69E6530]);
      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v134);

      *(v88 + 4) = v91;
      *(v88 + 12) = 2085;
      v92 = MEMORY[0x1AC57C2C0](v70, MEMORY[0x1E69E6530]);
      v94 = v93;

      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v134);

      *(v88 + 14) = v95;
      _os_log_impl(&dword_1A8E85000, v86, v87, "Lookahead tokenization stability check failed. retokenizedTokenRunWithNextAcceptedToken: %{sensitive}s != tokenRunWithNextAcceptedToken: %{sensitive}s", v88, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC57DBF0](v120, -1, -1);
      MEMORY[0x1AC57DBF0](v88, -1, -1);
    }

    else
    {
    }

    LOBYTE(v34) = v116;
    if (*(v126 + 16) < 2uLL)
    {

      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v105, v106))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        *(v34 + 4) = v118;
        _os_log_impl(&dword_1A8E85000, v105, v106, "Failed lookahead tokenizer stability check after checking %ld tokens. Run too short. Emitting a regular mask.", v34, 0xCu);
        v107 = v34;
        LOBYTE(v34) = v116;
        MEMORY[0x1AC57DBF0](v107, -1, -1);
      }

      result = 0;
      *v127 = v121;
      *(v127 + 8) = v122;
      *(v127 + 16) = v123;
      *(v127 + 24) = v34 & 1;
      *(v127 + 32) = v114;
      *(v127 + 40) = v115 & 1;
      *(v127 + 48) = v124;
      return result;
    }

    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v118;
      _os_log_impl(&dword_1A8E85000, v96, v97, "Failed lookahead tokenizer stability check after checking %ld tokens. Droping last token in the run", v34, 0xCu);
      MEMORY[0x1AC57DBF0](v34, -1, -1);
    }

    v98 = v126;
    v35 = *(v126 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (!v35)
    {
      goto LABEL_103;
    }

    v99 = 0;
    while (v99 < *(v98 + 16))
    {
      v100 = *(v5 + 16);
      if (v99 == v100)
      {
        goto LABEL_103;
      }

      if (v99 >= v100)
      {
        goto LABEL_118;
      }

      v101 = *(v126 + 32 + 8 * v99);
      if (v101 == *(v5 + 32 + 8 * v99))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v134 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
          v10 = v134;
        }

        v104 = *(v10 + 16);
        v103 = *(v10 + 24);
        v34 = v104 + 1;
        v98 = v126;
        if (v104 >= v103 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
          v98 = v126;
          v10 = v134;
        }

        ++v99;
        *(v10 + 16) = v34;
        *(v10 + 16 * v104 + 32) = vdupq_n_s64(v101);
        if (v35 != v99)
        {
          continue;
        }
      }

      goto LABEL_103;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    swift_once();
LABEL_74:
    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, static Log.guided);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1A8E85000, v82, v83, "Failed to retokenize lookahead stability check. Emitting a regular mask.", v34, 2u);
      v84 = v34;
      LOBYTE(v34) = v116;
      MEMORY[0x1AC57DBF0](v84, -1, -1);
    }

    result = 0;
    *v127 = v121;
    *(v127 + 8) = v122;
    *(v127 + 16) = v123;
    *(v127 + 24) = v34 & 1;
    *(v127 + 32) = v114;
    *(v127 + 40) = v35 & 1;
    *(v127 + 48) = v5;
    return result;
  }

LABEL_68:

  *v127 = v121;
  *(v127 + 8) = v122;
  *(v127 + 16) = v123;
  *(v127 + 24) = a3 & 1;
  *(v127 + 32) = v6;
  *(v127 + 40) = v5 & 1;
  result = 1;
  *(v127 + 48) = v124;
  return result;
}

uint64_t _s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV013selectLongestA6Prefix07allowedA3IDs12vocabManagerAA16ContiguousBitSetVAH_AA010VocabularyM0CtFAA06EarleyD0C_AA27SpaceLookaheadMaskGeneratorVyALGTt2B5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X8>)
{
  v3 = a1;
  if (*(a1 + 8) == 1)
  {
LABEL_26:
    v27 = *(v3 + 16);
    *a3 = *v3;
    *(a3 + 16) = v27;
    *(a3 + 25) = *(v3 + 25);
    return outlined init with copy of ContiguousBitSet(v3, v37);
  }

  v6 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF19TokenGenerationCore16ContiguousBitSetV_Si7tokenID_SS0J4Textts5NeverOTB504_s19de94Core016RecognizerGuidedB11ConstraintsV013selectLongestA6Prefix07allowedA3IDs12vocabManagerAA16ghi32VAH_AA010VocabularyM0CtFSi7tokenK18_SS0R4TexttSiXEfU_AF010VocabularyZ0CTf1cn_nTf4ng_n(v3, a2);

  v7 = v6[2];
  if (!v7)
  {

    if (one-time initialization token for guided != -1)
    {
LABEL_34:
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.guided);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A8E85000, v13, v14, "allowedTokenIDs is empty. Something is likely wrong with the tokenizer", v15, 2u);
      MEMORY[0x1AC57DBF0](v15, -1, -1);
    }

    goto LABEL_26;
  }

  v35 = v3;
  v36 = a3;
  v8 = v6[4];
  v9 = v6[5];
  v10 = v6[6];

  if (v7 == 1)
  {
    v11 = v8;
    goto LABEL_21;
  }

  v16 = v6 + 6;
  v17 = 1;
  while (2)
  {
    v34 = v8;
    v18 = v9;
    v19 = v10;
    v3 = &v16[3 * v17];
    a3 = v17;
    while (1)
    {
      if (a3 >= v6[2])
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v11 = *(v3 - 16);
      v9 = *(v3 - 8);
      v10 = *v3;

      v21 = String.count.getter();
      if (v21 == String.count.getter())
      {
        break;
      }

      v20 = String.count.getter();
      if (v20 < String.count.getter())
      {
        goto LABEL_18;
      }

LABEL_12:
      ++a3;

      v3 += 24;
      if (v7 == a3)
      {
        v11 = v34;
        goto LABEL_21;
      }
    }

    if (v18 == v9 && v19 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:

    v17 = a3 + 1;
    v8 = v11;
    v16 = v6 + 6;
    if (v7 - 1 != a3)
    {
      continue;
    }

    break;
  }

LABEL_21:
  v22 = (v6 + 6);
  a3 = -v7;
  v3 = -1;
  while (v3 - v7 != -1)
  {
    if (++v3 >= v6[2])
    {
      goto LABEL_33;
    }

    v23 = v22 + 3;
    v25 = *(v22 - 1);
    v24 = *v22;

    v26._countAndFlagsBits = v25;
    v26._object = v24;
    LOBYTE(v25) = String.hasPrefix(_:)(v26);

    v22 = v23;
    if ((v25 & 1) == 0)
    {

      v3 = v35;
      a3 = v36;
      goto LABEL_26;
    }
  }

  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Log.guided);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1A8E85000, v30, v31, "All allowedTokens are prefixes of the longest token. Picking the longest token.", v32, 2u);
    MEMORY[0x1AC57DBF0](v32, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A8FC9400;

  *(v33 + 32) = v11;
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v37[4] = lazy protocol witness table accessor for type [Int] and conformance [A]();
  v37[0] = v33;
  return ContiguousBitSet.init(_:)(v37, v36);
}

uint64_t TokenIDMask.init(vocabularySize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v4 = MEMORY[0x1E69E7CC0];
    result = ContiguousBitSet.formUnion(_:)(0, result);
    *a2 = v4;
    *(a2 + 8) = 0uLL;
    *(a2 + 24) = 1;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = v2;
  }

  return result;
}

uint64_t specialized TokenGrammarRecognizer.isValidDeterministicRun(tokenRun:)(uint64_t a1)
{
  v3 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v54 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v54 - v10);
  v12 = *(a1 + 16);
  v13 = 1;
  if (!v12)
  {
    return v13 & 1;
  }

  v55 = v9;
  v14 = *(v1 + 56);
  v58 = v12 - 1;
  v15 = *(v1 + 32);
  v16 = a1 + 32;

  v17 = 0;
  v56 = v16;
  v57 = v12;
  v59 = v15;
  while (1)
  {
    v18 = *(v16 + 8 * v17);
    VocabularyManager.prefixLookUp.getter(v11);
    v19 = *(v11 + *(v3 + 52));

    outlined destroy of VocabularyManager.PrefixLookup(v11, type metadata accessor for VocabularyManager.PrefixLookup);
    if (!*(v19 + 16))
    {
      break;
    }

    v20 = MEMORY[0x1AC57CB60](*(v19 + 40), v18);
    v21 = -1 << *(v19 + 32);
    v22 = v20 & ~v21;
    if (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      break;
    }

    v23 = ~v21;
    while (*(*(v19 + 48) + 8 * v22) != v18)
    {
      v22 = (v22 + 1) & v23;
      if (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v43 = v55;
    VocabularyManager.prefixLookUp.getter(v55);
    v44 = *(v43 + *(v3 + 48));

    outlined destroy of VocabularyManager.PrefixLookup(v43, type metadata accessor for VocabularyManager.PrefixLookup);
    if (!*(v44 + 16) || (v45 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v46 & 1) == 0))
    {
LABEL_59:

      __break(1u);
      return result;
    }

    v47 = *(*(v44 + 56) + v45);

    if (!v14)
    {
      goto LABEL_51;
    }

    LODWORD(v60) = v47;
    BYTE4(v60) = 1;
    v48 = EarleyRecognizer.childRecognizer(consumingElement:)(&v60);

    if (!v48)
    {
      goto LABEL_51;
    }

    v62 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
    rawValue = v62.nextValidTerminals._rawValue;
    v50 = specialized Collection<>.containsCharacterSetTerminal()(v62.nextValidTerminals._rawValue);

    if (v50)
    {
LABEL_49:

LABEL_50:

      goto LABEL_51;
    }

    v51 = rawValue[2];

    if (v51 >= 2 || v58 == v17)
    {

LABEL_51:
      v13 = 0;
      return v13 & 1;
    }

    v14 = v48;
LABEL_44:
    ++v17;
    v16 = v56;
    if (v17 == v57)
    {

      v13 = 1;
      return v13 & 1;
    }
  }

LABEL_8:

  v24 = *(v59 + 112);
  v25 = *(v24 + 16);
  v26 = (v24 + 32);
  do
  {
    if (!v25)
    {
      VocabularyManager.prefixLookUp.getter(v8);
      v28 = v8[10];

      outlined destroy of VocabularyManager.PrefixLookup(v8, type metadata accessor for VocabularyManager.PrefixLookup);
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (v18 >= *(v28 + 16))
      {
        goto LABEL_57;
      }

      v54 = v3;
      v29 = v28 + 16 * v18;
      v31 = *(v29 + 32);
      v30 = *(v29 + 40);

      if (v58 == v17)
      {
        v32 = specialized Sequence.dropLast(_:)(1, v31, v30);
        v33 = v32[2];
        if (v33)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v39 = specialized Collection.count.getter(v31, v30);
        if (v39)
        {
          v40 = v39;
          if (v39 < 1)
          {
            v32 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
            v32 = swift_allocObject();
            v41 = _swift_stdlib_malloc_size(v32);
            v42 = v41 - 32;
            if (v41 < 32)
            {
              v42 = v41 - 29;
            }

            v32[2] = v40;
            v32[3] = 2 * (v42 >> 2);
          }

          v52 = specialized Sequence._copySequenceContents(initializing:)(&v60, (v32 + 4), v40, v31, v30);

          if (v52 != v40)
          {
            goto LABEL_58;
          }

          v33 = v32[2];
          if (v33)
          {
LABEL_16:
            v34 = 0;
            while (v34 < v32[2])
            {
              if (!v14)
              {
                goto LABEL_50;
              }

              LODWORD(v60) = *(v32 + v34 + 8);
              BYTE4(v60) = 0;
              v35 = EarleyRecognizer.childRecognizer(consumingElement:)(&v60);

              if (!v35)
              {
                goto LABEL_50;
              }

              v61 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
              v36 = v61.nextValidTerminals._rawValue;
              v37 = specialized Collection<>.containsCharacterSetTerminal()(v61.nextValidTerminals._rawValue);

              if (v37)
              {

                goto LABEL_50;
              }

              v38 = v36[2];

              if (v38 >= 2)
              {
                goto LABEL_49;
              }

              ++v34;
              v14 = v35;
              if (v33 == v34)
              {

                v14 = v35;
                goto LABEL_43;
              }
            }

            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }
        }

        else
        {

          v32 = MEMORY[0x1E69E7CC0];
          v33 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v33)
          {
            goto LABEL_16;
          }
        }
      }

LABEL_43:
      v3 = v54;
      goto LABEL_44;
    }

    v27 = *v26++;
    --v25;
  }

  while (v27 != v18);
  if (!v14)
  {
    goto LABEL_51;
  }

  v13 = EarleyRecognizer.fullMatch.getter();

  return v13 & 1;
}

uint64_t specialized RecognizerGuidedGenerationConstraints.validateTokens(from:candidateTokenIDs:)(uint64_t a1, unint64_t a2)
{
  v6 = *v2;
  outlined init with copy of GuidedGenerationTokenizer(*(v2[2] + 32) + 64, v21);
  v7 = v22;
  v8 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v9 = (*(v8 + 56))(v7, v8);
  v10 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(a1, v9, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  __swift_destroy_boxed_opaque_existential_0(v21);
  if (v3)
  {
    return a2;
  }

  v11 = *(v6 + 16);
  pthread_mutex_lock(*(v11 + 16));
  result = swift_beginAccess();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v6 + 24);
    if (v10 < *(v13 + 16))
    {
      v14 = *(v13 + 16 * v10 + 32);
      v15 = *(v11 + 16);

      pthread_mutex_unlock(v15);
      v16 = *(a2 + 16);
      v17 = (a2 + 32);
      while (1)
      {
        v18 = v16;
        if (!v16)
        {
          break;
        }

        v19 = *v17++;
        a2 = v19;
        v20 = *(specialized TokenGrammarRecognizer.childRecognizer(consumingTokenID:)(v19) + 56);

        v16 = v18 - 1;
        if (v20)
        {
          goto LABEL_9;
        }
      }

      a2 = 0;
LABEL_9:

      return a2;
    }
  }

  __break(1u);
  return result;
}

void specialized RecognizerGuidedGenerationConstraints.validate(tokenIDs:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  outlined init with copy of GuidedGenerationTokenizer(*(v2[2] + 32) + 64, v16);
  v6 = v17;
  v7 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v8 = (*(v7 + 56))(v6, v7);
  v9 = specialized RecognizerGuidedGenerationConstraints.TokenRecognizerManager.tokenRecognizerIndex(following:vocabularySize:)(a1, v8, specialized _ArrayBuffer._consumeAndCreateNew(), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  __swift_destroy_boxed_opaque_existential_0(v16);
  v10 = *(v5 + 16);
  pthread_mutex_lock(*(v10 + 16));
  swift_beginAccess();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v5 + 24);
    if (v9 < *(v11 + 16))
    {
      v12 = *(v11 + 16 * v9 + 32);
      v13 = *(v10 + 16);

      pthread_mutex_unlock(v13);
      if (*(v12 + 56))
      {
        v14 = EarleyRecognizer.fullMatch.getter();

        if (v14)
        {
          v15 = 0;
LABEL_8:
          *a2 = v15;
          return;
        }
      }

      else
      {
      }

      v15 = 1;
      goto LABEL_8;
    }
  }

  __break(1u);
  if (v11 == 1)
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t specialized TokenGrammarRecognizer.accepts(tokenIDs:spaceLookAhead:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a2;
  v5 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v40 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v39 - v9);
  v11 = *(v2 + 32);
  VocabularyManager.prefixLookUp.getter((v39 - v9));
  v12 = v10[10];

  outlined destroy of VocabularyManager.PrefixLookup(v10, type metadata accessor for VocabularyManager.PrefixLookup);
  v39[2] = v11;
  VocabularyManager.prefixLookUp.getter(v10);
  v41 = v5;
  v13 = *(v10 + *(v5 + 52));

  outlined destroy of VocabularyManager.PrefixLookup(v10, type metadata accessor for VocabularyManager.PrefixLookup);
  v14 = *(v3 + 56);
  if (!v14)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v16 = v14[5];
  v15 = v14[6];
  v47 = v14[4];
  v48 = v16;
  v49 = v15;
  v50 = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CC0];
  if (*(v15 + 16))
  {
    goto LABEL_31;
  }

  v17 = *(a1 + 16);
  if (!v17)
  {

    v20 = MEMORY[0x1E69E7CC0];
LABEL_27:

    return v20;
  }

  v44 = a1 + 32;
  v18 = v13 + 56;
  v42 = v12 + 32;
  v39[1] = v14;

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = *(v44 + 8 * v19);
    if (*(v13 + 16))
    {
      v22 = MEMORY[0x1AC57CB60](*(v13 + 40), *(v44 + 8 * v19));
      v23 = -1 << *(v13 + 32);
      v24 = v22 & ~v23;
      if ((*(v18 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (*(*(v13 + 48) + 8 * v24) != v21)
        {
          v24 = (v24 + 1) & v25;
          if (((*(v18 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v31 = v40;
        VocabularyManager.prefixLookUp.getter(v40);
        v32 = *(v31 + *(v41 + 48));

        outlined destroy of VocabularyManager.PrefixLookup(v31, type metadata accessor for VocabularyManager.PrefixLookup);
        if (!*(v32 + 16))
        {
          goto LABEL_32;
        }

        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
        if ((v34 & 1) == 0)
        {
          goto LABEL_32;
        }

        v35 = *(*(v32 + 56) + v33);

        v45 = v35;
        v46 = 1;
        if (!EarleyRecognizer.childRecognizer(consumingElement:)(&v45))
        {
          goto LABEL_6;
        }

LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v37 = *(v20 + 2);
        v36 = *(v20 + 3);
        if (v37 >= v36 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v20);
        }

        *(v20 + 2) = v37 + 1;
        *&v20[8 * v37 + 32] = v21;
        goto LABEL_6;
      }
    }

LABEL_12:
    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v21 >= *(v12 + 16))
    {
      goto LABEL_30;
    }

    v26 = (v42 + 16 * v21);
    v27 = *v26;
    v28 = v26[1];

    v29._countAndFlagsBits = v27;
    v29._object = v28;
    v30 = EarleyRecognizer.RecognizerValidatorCache.parse(string:skipFirst:)(v29, v43 & 1);

    if (v30)
    {
      goto LABEL_20;
    }

LABEL_6:
    if (++v19 == v17)
    {

      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:

  __break(1u);
  return result;
}

uint64_t specialized SpaceLookaheadMaskGenerator.nextLogitMask(from:with:stopTokenIDs:leftContextCacheKey:maskCache:numParallelTasks:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, char a9, unsigned __int8 a10)
{
  LODWORD(v180) = a6;
  v164 = a4;
  v165 = a5;
  v177 = a3;
  v172 = a1;
  v12 = a10;
  v176 = type metadata accessor for CharacterSet();
  v13 = *(v176 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v175 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v170 = (&v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v174 = (&v161 - v20);
  *&v181 = type metadata accessor for TerminalSymbol(0);
  v21 = *(v181 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v181);
  v25 = (&v161 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v178 = &v161 - v26;
  v173 = a2;
  v168 = *(a2 + 56);
  v171 = v16;
  if (v168)
  {
    v208 = EarleyRecognizer.nextValidTerminalsWithCacheKey()();
    value = v208.cacheKey.value;
    rawValue = v208.nextValidTerminals._rawValue;
  }

  else
  {
    value = 0;
    v208.cacheKey.is_nil = 0;
    rawValue = 0;
  }

  if (rawValue)
  {
    v29 = rawValue;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v169 = a10 | (a7 == 0);
  v179 = v29;
  v167 = a7;
  if (a10 & 1 | (a7 == 0))
  {
    v166 = 0;
    v30 = 1;
  }

  else
  {
    v166 = 0;
    v30 = 1;
    if (rawValue != 0 && !v208.cacheKey.is_nil && (v180 & 1) == 0)
    {
      v163 = a10;
      Hasher.init()();
      MEMORY[0x1AC57CB80](value);
      MEMORY[0x1AC57CB80](v165);
      v205 = v183;
      v206 = v184;
      v207 = v185;
      v203 = v182[0];
      v204 = v182[1];
      v47 = Hasher.finalize()();
      v48 = a7;
      v49 = v173;
      v50 = *(v173 + 24);
      v51 = *(v50 + 16);

      pthread_mutex_lock(v51);
      *(v49 + 16) = 1;
      pthread_mutex_unlock(*(v50 + 16));
      v52 = *(v48 + 24);
      pthread_mutex_lock(*(v52 + 16));
      swift_beginAccess();
      v53 = *(v48 + 16);
      v54 = *(v53 + 16);
      v166 = v47;
      if (v54 && (v55 = specialized __RawDictionaryStorage.find<A>(_:)(v47), (v56 & 1) != 0))
      {
        v57 = *(v53 + 56) + 48 * v55;
        v58 = *v57;
        v180 = *(v57 + 8);
        v165 = *(v57 + 16);
        LODWORD(v162) = *(v57 + 24);
        v59 = *(v57 + 32);
        v60 = *(v57 + 40);
        v61 = *(v57 + 41);
      }

      else
      {
        v58 = 0;
        v180 = 0;
        v165 = 0;
        LODWORD(v162) = 0;
        v59 = 0;
        v60 = 0;
        v61 = 0;
      }

      swift_endAccess();
      pthread_mutex_unlock(*(v52 + 16));

      if (v58)
      {

        v140 = v172;
        v141 = v180;
        *v172 = v58;
        v140[1] = v141;
        v140[2] = v165;
        *(v140 + 24) = v162;
        v140[4] = v59;
        *(v140 + 40) = v60;
        return v61 & 1;
      }

      v30 = 0;
      v29 = v179;
      v12 = v163;
    }
  }

  LODWORD(v165) = v30;
  v31 = VocabularyManager.extractCandidates(nextValidTerminals:afterStartWord:)(&v197, v29, 0);
  v33 = v32;
  *&v182[0] = v197;
  *(v182 + 8) = v198;
  BYTE8(v182[1]) = v199;
  *&v183 = v200;
  BYTE8(v183) = v201;
  v202 = v31;
  v180 = *(v29 + 16);
  if (!v180)
  {
    v62 = 1;
    goto LABEL_28;
  }

  v162 = v32;
  v163 = v12;
  v34 = 0;
  v35 = v29 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v36 = (v13 + 32);
  v37 = (v13 + 8);
  v38 = v178;
  while (1)
  {
    if (v34 >= *(v179 + 16))
    {
      goto LABEL_137;
    }

    _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(v35 + *(v21 + 72) * v34, v38, type metadata accessor for TerminalSymbol);
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_1(v38, v25, type metadata accessor for TerminalSymbol);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      v39 = v175;
      v40 = v25;
      v41 = v25;
      v42 = v21;
      v43 = v176;
      (*v36)(v175, v40, v176);
      v44 = CharacterSet.contains(_:)();
      v45 = v43;
      v21 = v42;
      v25 = v41;
      v38 = v178;
      (*v37)(v39, v45);
      outlined destroy of VocabularyManager.PrefixLookup(v38, type metadata accessor for TerminalSymbol);
      if (v44)
      {
        break;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload)
    {
      outlined destroy of VocabularyManager.PrefixLookup(v38, type metadata accessor for TerminalSymbol);
      goto LABEL_12;
    }

    outlined destroy of VocabularyManager.PrefixLookup(v38, type metadata accessor for TerminalSymbol);
    if (*v25 == 32)
    {
      break;
    }

LABEL_12:
    if (v180 == ++v34)
    {
      v62 = 1;
      goto LABEL_27;
    }
  }

  v62 = specialized SpaceLookaheadMaskGenerator.performWhiteSpaceTokenLookAhead(from:vocabManager:stopTokenIDs:)(&v197, v173, v177);
  ContiguousBitSet.formUnion(_:)(&v197);

LABEL_27:
  v33 = v162;
LABEL_28:
  valid = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_SJs5NeverOTg5166_s19TokenGenerationCore27SpaceLookaheadMaskGeneratorV29generateValidSearchCandidates8prefixes12vocabManager05allowD6PrefixSaySiGShySSG_AA010VocabularyN0CSbtFSJSSXEfU_Tf1cn_n(v33);
  v64 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSJ_SaySJGTt0g5Tf4g_n(valid);

  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1g5(*(v64 + 16), 0);
    v67 = specialized Sequence._copySequenceContents(initializing:)(&v197, v66 + 4, v65, v64);
    outlined consume of Set<NonTerminalSymbol>.Iterator._Variant();
    if (v67 != v65)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
LABEL_31:

    v66 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v176) = v62;
  v197 = v66;

  specialized MutableCollection<>.sort(by:)(&v197);
  v180 = 0;

  v68 = *(v197 + 2);
  v69 = MEMORY[0x1E69E7CC0];
  v178 = v197;
  if (v68)
  {
    v70 = (v197 + 40);
    while (2)
    {
      v71 = *(v70 - 1);
      v72 = *v70;
      if (v71 == 32 && v72 == 0xE100000000000000)
      {
        goto LABEL_35;
      }

      v74 = *(v70 - 1);
      v75 = *v70;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_35;
      }

      v76 = v174;
      VocabularyManager.prefixLookUp.getter(v174);
      v77 = *v76;

      outlined destroy of VocabularyManager.PrefixLookup(v76, type metadata accessor for VocabularyManager.PrefixLookup);
      if (*(v77 + 16))
      {
        v78 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v72);
        v80 = v79;

        if (v80)
        {
          v81 = *(*(v77 + 56) + 8 * v78);

          goto LABEL_46;
        }
      }

      else
      {
      }

      v81 = MEMORY[0x1E69E7CC0];
LABEL_46:
      v82 = *(v81 + 16);
      v83 = *(v69 + 2);
      v84 = v83 + v82;
      if (__OFADD__(v83, v82))
      {
        goto LABEL_140;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v84 <= *(v69 + 3) >> 1)
      {
        if (!*(v81 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v83 <= v84)
        {
          v86 = v83 + v82;
        }

        else
        {
          v86 = v83;
        }

        v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v86, 1, v69);
        if (!*(v81 + 16))
        {
LABEL_34:

          if (v82)
          {
            goto LABEL_141;
          }

          goto LABEL_35;
        }
      }

      v87 = *(v69 + 2);
      if ((*(v69 + 3) >> 1) - v87 < v82)
      {
        goto LABEL_142;
      }

      memcpy(&v69[8 * v87 + 32], (v81 + 32), 8 * v82);

      if (v82)
      {
        v88 = *(v69 + 2);
        v89 = __OFADD__(v88, v82);
        v90 = v88 + v82;
        if (v89)
        {
          goto LABEL_143;
        }

        *(v69 + 2) = v90;
      }

LABEL_35:
      v70 += 2;
      if (!--v68)
      {
        break;
      }

      continue;
    }
  }

  specialized static VocabularyManager.mergeSortedRanks(_:_:)(&v202, v69);

  specialized MutableCollection<>.sort(by:)(&v202);
  if (one-time initialization token for guided != -1)
  {
    goto LABEL_144;
  }

  while (1)
  {
    v91 = type metadata accessor for Logger();
    v92 = __swift_project_value_buffer(v91, static Log.guided);
    v178 = v202;

    v93 = v179;

    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.info.getter();

    v96 = os_log_type_enabled(v94, v95);
    v175 = v92;
    if (v96)
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v197 = v98;
      *v97 = 134218243;
      *(v97 + 4) = *(v178 + 2);

      *(v97 + 12) = 2085;
      v99 = MEMORY[0x1AC57C2C0](v93, v181);
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v197);

      *(v97 + 14) = v101;
      _os_log_impl(&dword_1A8E85000, v94, v95, "Checking candidates: %ld with nextValidTerminals: %{sensitive}s", v97, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x1AC57DBF0](v98, -1, -1);
      MEMORY[0x1AC57DBF0](v97, -1, -1);
    }

    else
    {
    }

    v103 = v170;
    v102 = v171;
    v104 = *(v173 + 32);
    VocabularyManager.prefixLookUp.getter(v170);
    v105 = *(v103 + *(v102 + 36));

    outlined destroy of VocabularyManager.PrefixLookup(v103, type metadata accessor for VocabularyManager.PrefixLookup);
    v106 = *(v178 + 2);
    if (!v106)
    {
      break;
    }

    v197 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 0);
    v107 = v197;
    v108 = (v178 + 32);
    while (1)
    {
      v110 = *v108++;
      v109 = v110;
      if ((v110 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v109 >= *(v105 + 16))
      {
        goto LABEL_133;
      }

      v111 = *(v105 + 32 + 8 * v109);
      v197 = v107;
      v113 = *(v107 + 2);
      v112 = *(v107 + 3);
      if (v113 >= v112 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1);
        v107 = v197;
      }

      *(v107 + 2) = v113 + 1;
      *&v107[8 * v113 + 32] = v111;
      if (!--v106)
      {

        goto LABEL_72;
      }
    }

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
    swift_once();
  }

  v107 = MEMORY[0x1E69E7CC0];
LABEL_72:
  v114 = specialized TokenGrammarRecognizer.accepts(tokenIDs:spaceLookAhead:)(v107, 0);

  v177 = v114;
  v115 = *(v114 + 16);
  if (v115)
  {
    v116 = (v177 + 32);
    v118 = *(&v182[0] + 1);
    v117 = *&v182[0];
    v119 = *&v182[1];
    v120 = BYTE8(v182[1]);
    v121 = v183;
    v122 = BYTE8(v183);
    do
    {
      v124 = *v116++;
      v123 = v124;
      v125 = v124 + 63;
      if (v124 >= 0)
      {
        v125 = v123;
      }

      v126 = v125 >> 6;
      v127 = v123 - (v125 & 0xFFFFFFFFFFFFFFC0);
      v128 = *(v117 + 2);
      v89 = __OFSUB__(v126, v128);
      v129 = v126 - v128;
      if (v129 < 0 != v89)
      {
        if (v123 < -63)
        {
          goto LABEL_138;
        }

        v130 = 1 << v127;
        if (v127 >= 0)
        {
          v131 = 1 << v127;
        }

        else
        {
          v131 = 0;
        }

        if ((*&v117[8 * v126 + 32] & v131) != 0)
        {
          goto LABEL_74;
        }

        v180 = v121;
        *&v181 = v116;
      }

      else
      {
        if (v129 + 1 < 0)
        {
          goto LABEL_139;
        }

        v180 = v121;
        *&v181 = v116;
        specialized ContiguousArray.append<A>(contentsOf:)((v129 + 1), 0);
        v117 = *&v182[0];
        v130 = 1 << v127;
      }

      if (v127 >= 0)
      {
        v132 = v130;
      }

      else
      {
        v132 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v117);
      }

      if (v123 < -63)
      {
        goto LABEL_134;
      }

      if (v126 >= *(v117 + 2))
      {
        goto LABEL_135;
      }

      *&v117[8 * v126 + 32] |= v132;
      *&v182[0] = v117;
      v89 = __OFADD__(v118++, 1);
      if (v89)
      {
        goto LABEL_136;
      }

      if (v120)
      {
        v133 = v123;
      }

      else
      {
        v133 = v119;
      }

      if (v123 >= v133)
      {
        v119 = v133;
      }

      else
      {
        v119 = v123;
      }

      *(&v182[0] + 1) = v118;
      *&v182[1] = v119;
      BYTE8(v182[1]) = 0;
      v134 = v180;
      v116 = v181;
      if (v122)
      {
        v134 = v123;
      }

      if (v123 <= v134)
      {
        v121 = v134;
      }

      else
      {
        v121 = v123;
      }

      *&v183 = v121;
      BYTE8(v183) = 0;
      v122 = 0;
      v120 = 0;
LABEL_74:
      --v115;
    }

    while (v115);
  }

  if (!v168)
  {

    v139 = v169;
    v136 = v179;
    if (v176)
    {
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  v135 = EarleyRecognizer.fullMatch.getter();
  v136 = v179;
  v137 = v176;
  if ((v135 & 1) == 0)
  {

    v139 = v169;
    if (v137)
    {
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  v138 = v164;
  if (*(v164 + 16))
  {
  }

  else
  {
    v142 = Logger.logObject.getter();
    v143 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;

      _os_log_impl(&dword_1A8E85000, v142, v143, "Full match on tokenRecognizer, but missing stop token IDs", v144, 2u);
      v145 = v144;
      v136 = v179;
      MEMORY[0x1AC57DBF0](v145, -1, -1);
    }

    else
    {
    }
  }

  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  v189 = lazy protocol witness table accessor for type [Int] and conformance [A]();
  v186 = v138;

  ContiguousBitSet.init(_:)(&v186, &v197);
  v186 = v197;
  v187 = v198;
  LOBYTE(v188) = v199;
  v189 = v200;
  v190 = v201;
  ContiguousBitSet.formUnion(_:)(&v186);

  v139 = v169;
  if ((v137 & 1) == 0)
  {
LABEL_125:

    v61 = 0;
    goto LABEL_127;
  }

LABEL_124:
  if (*(v136 + 16) > 1uLL)
  {
    goto LABEL_125;
  }

  v146 = specialized Collection<>.containsCharacterSetTerminal()(v136);

  v61 = !v146;
LABEL_127:
  if ((v139 | v165))
  {
    v147 = *&v182[0];
    v148 = *(v182 + 8);
    v149 = BYTE8(v182[1]);
    v150 = v183;
    v151 = BYTE8(v183);
  }

  else
  {
    v152 = v173;
    v153 = *(v173 + 24);
    v154 = *(v153 + 16);
    v155 = v167;

    pthread_mutex_lock(v154);
    *(v152 + 16) = 1;
    pthread_mutex_unlock(*(v153 + 16));
    v147 = *&v182[0];
    v181 = *(v182 + 8);
    v149 = BYTE8(v182[1]);
    v150 = v183;
    v151 = BYTE8(v183);
    v156 = *(v155 + 24);
    pthread_mutex_lock(*(v156 + 16));
    swift_beginAccess();

    v157 = *(v155 + 16);
    v158 = swift_isUniquelyReferenced_nonNull_native();
    v186 = *(v155 + 16);
    *(v155 + 16) = 0x8000000000000000;
    v191 = v147;
    v192 = v181;
    v193 = v149;
    v194 = v150;
    v195 = v151;
    v196 = v61 & 1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v191, v166, v158);
    *(v155 + 16) = v186;
    swift_endAccess();
    pthread_mutex_unlock(*(v156 + 16));

    v148 = v181;
  }

  v159 = v172;
  *v172 = v147;
  *(v159 + 1) = v148;
  *(v159 + 24) = v149;
  v159[4] = v150;
  *(v159 + 40) = v151;
  return v61 & 1;
}