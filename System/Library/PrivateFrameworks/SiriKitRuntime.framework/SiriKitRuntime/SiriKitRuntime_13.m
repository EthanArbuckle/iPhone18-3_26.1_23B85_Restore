uint64_t ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(char a1)
{
  v2 = *(*v1 + 1240);
  v4 = *v1;
  *(*v1 + 1308) = a1;

  return MEMORY[0x1EEE6DFA0](ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:), 0, 0);
}

uint64_t ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(uint64_t a1)
{
  v2 = *(*v1 + 1280);
  v3 = *(*v1 + 1272);
  v4 = *(*v1 + 1264);
  v6 = *v1;
  *(*v1 + 1288) = a1;

  return MEMORY[0x1EEE6DFA0](ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:), 0, 0);
}

void ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)()
{
  v134 = v0;
  v124 = v0[161];
  v1 = MEMORY[0x1E69E7CC0];
  v121 = *(v124 + 16);
  if (v121)
  {
    v2 = 0;
    v3 = v0[59];
    v115 = v0[58];
    v118 = (v0[95] + 16);
    v109 = (v3 + 56);
    v112 = (v0[90] + 8);
    v127 = v0[157];
    v103 = v0[56];
    v106 = (v3 + 48);
    v99 = v3;
    v101 = v0[55];
    while (v2 < *(v124 + 16))
    {
      v130 = v1;
      v4 = v0[96];
      v5 = v0[94];
      v6 = v0[91];
      v7 = v0[89];
      v8 = v0[66];
      v9 = v0[57];
      v10 = v0[54];
      outlined init with copy of ReferenceResolutionClientProtocol?(v0[161] + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v2, v9, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      v11 = (v9 + *(v101 + 48));
      (*v118)(v10, v9, v5);
      v12 = v11[4];
      v13 = v11[5];
      __swift_project_boxed_opaque_existential_1(v11 + 1, v12);
      (*(v13 + 16))(v12, v13);
      v14 = v11 + *(type metadata accessor for ConversationHandlerLocator.ScoredHandler() + 24);
      Input.parse.getter();
      Parse.asCamParse()(v8);
      (*v112)(v6, v7);
      v15 = *v11;
      UUID.init()();
      if (*(v127 + 16))
      {
        v16 = v0[157];
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v0[57]);
        if (v18)
        {
          v19 = *(*(v127 + 56) + 8 * v17);
        }
      }

      v1 = v130;
      v20 = v0[96];
      v21 = v0[66];
      v23 = v0[57];
      v22 = v0[58];
      v24 = v0[54];
      v25 = v24 + *(v115 + 48);
      ActionCandidate.init(flowHandlerId:parse:affinityScore:loggingId:userData:)();
      (*v109)(v24, 0, 1, v22);
      outlined destroy of ReferenceResolutionClientProtocol?(v23, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMd, &_s10Foundation4UUIDV4uuid_14SiriKitRuntime26ConversationHandlerLocatorC06ScoredH0V06scoredH0tMR);
      if ((*v106)(v24, 1, v22) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v0[54], &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tSgMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tSgMR);
      }

      else
      {
        v27 = v0[63];
        v26 = v0[64];
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v0[54], v26, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v26, v27, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v130[2] + 1, 1, v130, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMR, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        }

        v29 = v1[2];
        v28 = v1[3];
        if (v29 >= v28 >> 1)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v1, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMR, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        }

        v30 = v0[63];
        v1[2] = v29 + 1;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v30, v1 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v29, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      }

      if (v121 == ++v2)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v31 = v0[156];

    specialized Array.append<A>(contentsOf:)(v32, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionJ0tGMR, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v33 = v0[42];
    v133 = v33;

    specialized MutableCollection<>.sort(by:)(&v133, v0 + 41);
    if (v31)
    {
    }

    else
    {
      v34 = v0[161];
      v35 = v0[159];
      v36 = v0[158];

      v37 = v133;
      v38 = v133[2];
      if (v38)
      {
        v104 = v33;
        v39 = v0[95];
        v40 = v0[69];
        v41 = v0[59];
        v116 = v0[58];
        v133 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
        v42 = v133;
        v43 = v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v110 = (v39 + 32);
        v113 = *(v41 + 72);
        v119 = v40;
        v122 = (v40 + 32);
        v107 = (v40 + 16);
        do
        {
          v131 = v38;
          v44 = v0[94];
          v125 = v0[70];
          v45 = v0[68];
          v46 = v0[61];
          v47 = v0[62];
          v48 = v0[60];
          outlined init with copy of ReferenceResolutionClientProtocol?(v43, v47, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          outlined init with copy of ReferenceResolutionClientProtocol?(v47, v46, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          v49 = *(v116 + 48);
          (*v110)(v48, v46, v44);
          v128 = *v122;
          (*v122)(v48 + v49, v46 + v49, v45);
          (*v107)(v125, v48 + v49, v45);
          outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          outlined destroy of ReferenceResolutionClientProtocol?(v47, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          v133 = v42;
          v51 = v42[2];
          v50 = v42[3];
          if (v51 >= v50 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50 > 1, v51 + 1, 1);
            v42 = v133;
          }

          v52 = v0[70];
          v53 = v0[68];
          v42[2] = v51 + 1;
          v128(v42 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v51, v52, v53);
          v43 += v113;
          v38 = v131 - 1;
        }

        while (v131 != 1);
        v132 = v42;

        v33 = v104;
      }

      else
      {

        v132 = MEMORY[0x1E69E7CC0];
      }

      v54 = v0[129];

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.debug.getter();
      v57 = os_log_type_enabled(v55, v56);
      v58 = v0[157];
      if (v57)
      {
        v59 = swift_slowAlloc();
        *v59 = 134217984;
        v60 = v33[2];

        *(v59 + 4) = v60;

        _os_log_impl(&dword_1DC659000, v55, v56, "[ActionGenerator] Sorting and returning %ld ActionCandidates", v59, 0xCu);
        MEMORY[0x1E12A2F50](v59, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v61 = v0[128];
      v62 = v0[127];
      v63 = v0[124];
      v64 = v0[123];
      v65 = v0[122];
      v66 = v0[121];
      v67 = v0[120];
      v68 = v0[119];
      v69 = v0[118];
      v72 = v0[117];
      v73 = v0[116];
      v74 = v0[113];
      v75 = v0[112];
      v76 = v0[109];
      v77 = v0[108];
      v78 = v0[105];
      v79 = v0[104];
      v80 = v0[103];
      v81 = v0[100];
      v82 = v0[99];
      v83 = v0[98];
      v84 = v0[97];
      v85 = v0[96];
      v86 = v0[93];
      v87 = v0[92];
      v88 = v0[91];
      v89 = v0[88];
      v90 = v0[87];
      v91 = v0[86];
      v92 = v0[83];
      v93 = v0[82];
      v94 = v0[81];
      v95 = v0[78];
      v96 = v0[75];
      v97 = v0[74];
      v98 = v0[71];
      v100 = v0[70];
      v102 = v0[67];
      v105 = v0[66];
      v108 = v0[65];
      v111 = v0[64];
      v114 = v0[63];
      v117 = v0[62];
      v120 = v0[61];
      v123 = v0[60];
      v126 = v0[57];
      v129 = v0[54];
      v70 = v0[41];

      v71 = v0[1];

      v71(v132);
    }
  }
}

uint64_t specialized SimpleOrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = *v3;
  if (*(v15 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v17 & 1) != 0))
  {
    v18 = v16;
    v19 = *(v15 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    v21 = *(v20 - 8);
    outlined init with copy of ReferenceResolutionClientProtocol?(v19 + *(v21 + 72) * v18, v14, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    (*(v21 + 56))(v14, 0, 1, v20);
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(a1, v11, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
    specialized Dictionary.subscript.setter(v11, a2, a3);
    return outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  }

  else
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(a1, v11, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);

    specialized Dictionary.subscript.setter(v11, a2, a3);
    v24 = v4[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
    }

    result = outlined destroy of ReferenceResolutionClientProtocol?(a1, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
    *(v24 + 2) = v26 + 1;
    v27 = &v24[16 * v26];
    *(v27 + 4) = a2;
    *(v27 + 5) = a3;
    v4[1] = v24;
  }

  return result;
}

BOOL specialized Sequence<>.isContainsAppShortcutParse.getter(uint64_t a1)
{
  v30 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_UserParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v31 = *(v12 + 56);
    v32 = v13;
    v27[1] = v2 + 16;
    v28 = v2;
    v27[0] = v2 + 8;
    v15 = v11 - 1;
    for (i = v13(v10, v14, v5, v8); ; i = v32(v10, v14, v5, v19))
    {
      v22 = MEMORY[0x1E129C0F0](i);
      if (!*(v22 + 16))
      {
        break;
      }

      v24 = v28;
      v23 = v29;
      v25 = v30;
      (*(v28 + 16))(v29, v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v30);

      v26 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
      (*(v24 + 8))(v23, v25);
      if (!v26)
      {
        goto LABEL_4;
      }

      static UsoTask_CodegenConverter.convert(task:)();

      if (!v34)
      {

        outlined destroy of ReferenceResolutionClientProtocol?(v33, &_sypSgMd, &_sypSgMR);
        goto LABEL_4;
      }

      type metadata accessor for UsoTask_run_common_VoiceCommand();
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_4;
      }

      v17 = UsoTask_run_common_VoiceCommand.appShortcuts.getter();

LABEL_5:
      (*(v12 - 8))(v10, v5);
      v18 = *(v17 + 2);

      result = v18 != 0;
      if (v18)
      {
        v21 = 1;
      }

      else
      {
        v21 = v15 == 0;
      }

      --v15;
      v14 += v31;
      if (v21)
      {
        return result;
      }
    }

LABEL_4:
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  return 0;
}

uint64_t ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = type metadata accessor for Siri_Nlu_External_UserParse();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:), 0, 0);
}

uint64_t ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:)()
{
  if (one-time initialization token for executor != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.executor);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DC659000, v2, v3, "[ActionGenerator] Beginning building the AppShortcutExpansionContext", v4, 2u);
      MEMORY[0x1E12A2F50](v4, -1, -1);
    }

    v5 = v0[8];

    v6 = *(v5 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v0[14];
    v8 = v0[11];
    v32 = *(v7 + 16);
    v9 = v0[8] + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v31 = *(v7 + 72);
    v10 = (v7 + 8);
    v11 = MEMORY[0x1E69E7CC0];
    for (i = v32(v0[15], v9, v0[13]); ; i = v32(v0[15], v9, v0[13]))
    {
      v13 = MEMORY[0x1E129C0F0](i);
      if (*(v13 + 16))
      {
        v14 = v0[12];
        v15 = v0[10];
        (*(v8 + 16))(v14, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v15);

        v16 = Siri_Nlu_External_UserDialogAct.toUsoTask()();
        (*(v8 + 8))(v14, v15);
        if (v16)
        {

          static UsoTask_CodegenConverter.convert(task:)();

          if (v0[5])
          {
            type metadata accessor for UsoTask_run_common_VoiceCommand();
            if (swift_dynamicCast())
            {
              v17 = v0[6];
              v18 = UsoTask_run_common_VoiceCommand.appShortcuts.getter();

              goto LABEL_18;
            }
          }

          else
          {

            outlined destroy of ReferenceResolutionClientProtocol?((v0 + 2), &_sypSgMd, &_sypSgMR);
          }
        }
      }

      else
      {
      }

      v18 = MEMORY[0x1E69E7CC0];
LABEL_18:
      (*v10)(v0[15], v0[13]);
      v19 = *(v18 + 2);
      v20 = *(v11 + 2);
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v21 <= *(v11 + 3) >> 1)
      {
        if (*(v18 + 2))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v20 <= v21)
        {
          v23 = v20 + v19;
        }

        else
        {
          v23 = v20;
        }

        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v23, 1, v11, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17AppShortcutTargetVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17AppShortcutTargetVGMR);
        if (*(v18 + 2))
        {
LABEL_27:
          if ((*(v11 + 3) >> 1) - *(v11 + 2) < v19)
          {
            goto LABEL_37;
          }

          swift_arrayInitWithCopy();

          if (v19)
          {
            v24 = *(v11 + 2);
            v25 = __OFADD__(v24, v19);
            v26 = v24 + v19;
            if (v25)
            {
              goto LABEL_38;
            }

            *(v11 + 2) = v26;
          }

          goto LABEL_7;
        }
      }

      if (v19)
      {
        goto LABEL_36;
      }

LABEL_7:
      v9 += v31;
      if (!--v6)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v0[16] = v11;
  v27 = *(v0[9] + 24);
  v28 = swift_task_alloc();
  v0[17] = v28;
  *v28 = v0;
  v28[1] = ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:);
  v29 = v0[7];

  return AppShortcutExpansionContextBuilder.build(rrCandidates:appShortcutTargets:)(v29, v11);
}

uint64_t ActionGenerator.getAppShortcutExpansionContext(rrCandidates:nlParses:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 136);
  v8 = *(*v3 + 128);
  v9 = *(*v3 + 120);
  v10 = *(*v3 + 96);
  v13 = *v3;

  v11 = *(v13 + 8);

  return v11(a1, a2, a3);
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for USOParse();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v31 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v31 = v14;
  v34 = (v14 + 32);
  v35 = (v14 + 48);
  v17 = (a3 + 69);
  v42 = MEMORY[0x1E69E7CC0];
  v32 = a1;
  while (1)
  {
    v18 = v10;
    v19 = *(v17 - 29);
    v20 = *(v17 - 13);
    v21 = *v17;
    v22 = *(v17 - 1);
    v23 = *(v17 - 5);
    v24 = *(v17 - 21);
    v38[0] = *(v17 - 37);
    v38[1] = v19;
    v38[2] = v24;
    v38[3] = v20;
    v39 = v23;
    v40 = v22;
    v41 = v21;

    a1(v38);
    if (v3)
    {
      break;
    }

    v10 = v18;
    if ((*v35)(v9, 1, v18) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v9, &_s11SiriKitFlow8USOParseVSgMd, &_s11SiriKitFlow8USOParseVSgMR);
    }

    else
    {
      v25 = v33;
      v26 = *v34;
      (*v34)(v33);
      (v26)(v36, v25, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR, MEMORY[0x1E69D01A0]);
      }

      v28 = v42[2];
      v27 = v42[3];
      if (v28 >= v27 >> 1)
      {
        v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1, v42, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow8USOParseVGMR, MEMORY[0x1E69D01A0]);
      }

      v29 = v42;
      v42[2] = v28 + 1;
      v10 = v18;
      (v26)(v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, v36, v18);
      a1 = v32;
    }

    v17 += 40;
    if (!--v16)
    {
      return v42;
    }
  }

  return v42;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = __CocoaSet.count.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11appBundleId_SDySSypG8userDatatMd, &_sSS11appBundleId_SDySSypG8userDatatMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL closure #3 in ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v51 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v48 = a1;
  outlined init with copy of ReferenceResolutionClientProtocol?(a1, &v43 - v15, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  v50 = v5;
  v17 = *(v5 + 48);
  v18 = *a3;
  if (!*(*a3 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v20 & 1) == 0))
  {
    v21 = type metadata accessor for ActionCandidate();
    (*(*(v21 - 8) + 8))(&v16[v17], v21);
    v24 = type metadata accessor for UUID();
    v31 = (v24 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    (*(*(v24 - 8) + 8))(v16, v24);
    goto LABEL_9;
  }

  v44 = *(*(v18 + 56) + 8 * v19);
  v21 = type metadata accessor for ActionCandidate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 8);
  v46 = v22 + 8;
  v47 = v23;
  v23(&v16[v17], v21);
  v24 = type metadata accessor for UUID();
  v25 = *(*(v24 - 8) + 8);
  v52 = (v24 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
  v45 = v25;
  v25(v16, v24);
  outlined init with copy of ReferenceResolutionClientProtocol?(v51, v13, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  v26 = *(v50 + 48);
  v27 = *a3;
  if (!*(*a3 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v13), (v29 & 1) == 0))
  {
    v47(&v13[v26], v21);
    v45(v13, v24);
    v31 = v52;
    goto LABEL_9;
  }

  v30 = *(*(v27 + 56) + 8 * v28);
  v47(&v13[v26], v21);
  v45(v13, v24);
  v31 = v52;
  if (v44 == v30)
  {
LABEL_9:
    v52 = v31;
    outlined init with copy of ReferenceResolutionClientProtocol?(v48, v10, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v33 = v24;
    v34 = v10;
    v35 = v50;
    v36 = *(v50 + 48);
    v48 = ActionCandidate.affinityScore.getter();
    type metadata accessor for ActionCandidate();
    v37 = *(*(v21 - 8) + 8);
    v37(&v34[v36], v21);
    v38 = v49;
    outlined init with copy of ReferenceResolutionClientProtocol?(v51, v49, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v39 = *(v35 + 48);
    v40 = ActionCandidate.affinityScore.getter();
    v37((v38 + v39), v21);
    v32 = v40 < v48;
    type metadata accessor for UUID();
    v41 = *(*(v33 - 8) + 8);
    v41(v38, v33);
    v41(v34, v33);
    return v32;
  }

  return v44 < v30;
}

uint64_t closure #3 in ActionGenerator.dedupeAppShortcuts(parses:)(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow21AppShortcutInvocationOSgMd, &_s11SiriKitFlow21AppShortcutInvocationOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v44 - v4;
  v5 = type metadata accessor for AppShortcutExactInvocation();
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v44 - v12;
  v13 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v21 = type metadata accessor for Siri_Nlu_External_Parser();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserParse.parser.getter();
  Siri_Nlu_External_Parser.parserID.getter();
  (*(v22 + 8))(v25, v21);
  (*(v14 + 104))(v17, *MEMORY[0x1E69D0960], v13);
  lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v14 + 8);
  v26(v17, v13);
  v27 = (v26)(v20, v13);
  if (v55 != v54)
  {
    goto LABEL_6;
  }

  v28 = MEMORY[0x1E129C0F0](v27);
  if (!*(v28 + 16))
  {

    goto LABEL_6;
  }

  v30 = v51;
  v29 = v52;
  v31 = v49;
  (*(v51 + 16))(v49, v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v52);

  v32 = v50;
  (*(v30 + 32))(v50, v31, v29);
  LOBYTE(v55) = 1;
  v33 = v53;
  Siri_Nlu_External_UserDialogAct.extractAppShortcutInvocation(groupIndex:)();
  v34 = type metadata accessor for AppShortcutInvocation();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    (*(v30 + 8))(v32, v29);
    outlined destroy of ReferenceResolutionClientProtocol?(v33, &_s11SiriKitFlow21AppShortcutInvocationOSgMd, &_s11SiriKitFlow21AppShortcutInvocationOSgMR);
LABEL_6:
    v36 = 1;
    return v36 & 1;
  }

  if ((*(v35 + 88))(v33, v34) == *MEMORY[0x1E69D0018])
  {
    (*(v35 + 96))(v33, v34);
    v39 = v45;
    v38 = v46;
    v40 = v33;
    v41 = v47;
    v42 = (*(v46 + 32))(v45, v40, v47);
    MEMORY[0x1EEE9AC00](v42);
    *(&v44 - 2) = v39;
    v43 = specialized Sequence.contains(where:)(partial apply for closure #1 in closure #3 in ActionGenerator.dedupeAppShortcuts(parses:), (&v44 - 4), v48);
    (*(v30 + 8))(v32, v29);
    v36 = v43 ^ 1;
    (*(v38 + 8))(v39, v41);
  }

  else
  {
    (*(v30 + 8))(v32, v29);
    (*(v35 + 8))(v33, v34);
    v36 = 1;
  }

  return v36 & 1;
}

uint64_t closure #1 in closure #3 in ActionGenerator.dedupeAppShortcuts(parses:)()
{
  v0 = AppShortcutGeneralizedInvocation.extractedActionIdentifier.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = AppShortcutGeneralizedInvocation.bundleId.getter();
    v6 = v5;
    if (v4 == AppShortcutExactInvocation.bundleId.getter() && v6 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    if (v2 == AppShortcutExactInvocation.actionIdentifier.getter() && v3 == v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v9 = v8 & v11;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *ActionGenerator.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t ActionGenerator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

void specialized MutableCollection<>.sort(by:)(void **a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR) - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v5);
  }

  v6 = v5[2];
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v5;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17AppShortcutTargetVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17AppShortcutTargetVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime18LinkActionMetadataVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime18LinkActionMetadataVGMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime19ConversationHandler_pGMR, &_s14SiriKitRuntime19ConversationHandler_pMd, &_s14SiriKitRuntime19ConversationHandler_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime0D35EnvironmentStringKeyedValueFetching_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime0D35EnvironmentStringKeyedValueFetching_pGMR, &_s14SiriKitRuntime0A35EnvironmentStringKeyedValueFetching_pMd, &_s14SiriKitRuntime0A35EnvironmentStringKeyedValueFetching_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16PreExecutionRule_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime16PreExecutionRule_pGMR, &_s14SiriKitRuntime16PreExecutionRule_pMd, &_s14SiriKitRuntime16PreExecutionRule_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17ExecutionOverride_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime17ExecutionOverride_pGMR, &_s14SiriKitRuntime17ExecutionOverride_pMd, &_s14SiriKitRuntime17ExecutionOverride_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14UndoingCommand_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14UndoingCommand_pGMR, &_s14SiriKitRuntime14UndoingCommand_pMd, &_s14SiriKitRuntime14UndoingCommand_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11SiriKitFlow6Output_pGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow6Output_pGMR, &_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyyyYaYbKcGMd, &_ss23_ContiguousArrayStorageCyyyYaYbKcGMR, &_syycMd, &_syycMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy13SiriUtilities13PluginPackage_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities13PluginPackage_pGMR, &_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF16SiriMessageTypes07RequestH4BaseCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes07RequestB4BaseCmMd, &_s16SiriMessageTypes07RequestB4BaseCmMR);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCy16SiriMessageTypes07RequestE4BaseCmGMd;
    v3 = &_ss23_ContiguousArrayStorageCy16SiriMessageTypes07RequestE4BaseCmGMR;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
    v3 = &_ss23_ContiguousArrayStorageCyyXlGMR;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 | ((HIDWORD(a1) & 1) << 32), v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](a1);
  v4 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

{
  v7 = v4;
  v10 = type metadata accessor for UserID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x1E69D08C8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 40 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        outlined init with copy of ReferenceResolutionClientProtocol(v28, v41);
      }

      v29 = *(v11 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

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
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
      return outlined assign with take of (Input, AnyFlow, SiriEnvironment)(a1, v19 + *(*(v20 - 8) + 72) * v12, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v22 = *v5;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, &_ss18_DictionaryStorageCySS14SiriKitRuntime20ResultCandidateStateCGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime20ResultCandidateStateCGMR);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS14SiriKitRuntime20ResultCandidateStateCGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime20ResultCandidateStateCGMR);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, &_ss18_DictionaryStorageCySSSo14SASRecognitionCGMd, &_ss18_DictionaryStorageCySSSo14SASRecognitionCGMR);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo14SASRecognitionCGMd, &_ss18_DictionaryStorageCySSSo14SASRecognitionCGMR);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, MEMORY[0x1E69D0AA8], &_ss18_DictionaryStorageCySS12SiriNLUTypes0C28_Nlu_External_ResponseStatusV0H4CodeOGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C28_Nlu_External_ResponseStatusV0H4CodeOGMR, MEMORY[0x1E69D0AA8]);
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, MEMORY[0x1E69D0100], &_ss18_DictionaryStorageCySS11SiriKitFlow5InputVGMd, &_ss18_DictionaryStorageCySS11SiriKitFlow5InputVGMR, MEMORY[0x1E69D0100]);
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, &_ss18_DictionaryStorageCySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGGMd, &_ss18_DictionaryStorageCySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGGMR);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGGMd, &_ss18_DictionaryStorageCySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGGMR);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 >= v15 && (a4 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMR);
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = *(v19 + 8 * v12);

      *(v19 + 8 * v12) = a1;
      return result;
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1, &_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMR);
  v22 = *v5;
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v18[(v12 >> 6) + 8] |= 1 << v12;
  v25 = (v18[6] + 16 * v12);
  *v25 = a2;
  v25[1] = a3;
  *(v18[7] + 8 * v12) = a1;
  v26 = v18[2];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18[2] = v28;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(a5, a6, a7);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v21, a4 & 1, a5, a6, a7);
    v32 = *v11;
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v22 & 1) == (v34 & 1))
    {
      v18 = v33;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a8(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v18, a2, a3, a1, v24, a5);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, unsigned __int8 a2, char a3)
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
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
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
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 80 * v11;

    return outlined assign with take of FlowPluginAndBundle(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 80 * v11);
  *v26 = *a1;
  v27 = a1[1];
  v28 = a1[2];
  v29 = a1[4];
  v26[3] = a1[3];
  v26[4] = v29;
  v26[1] = v27;
  v26[2] = v28;
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(a4, v9 + *(*(v10 - 8) + 72) * a1, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0x4C4E79636167656CLL;
        v8 = 0xEF747865746E6F43;
        if (*(*(v2 + 48) + v4) != 1)
        {
          v7 = 0xD00000000000001ALL;
          v8 = 0x80000001DCA7A620;
        }

        v9 = a1;
        if (!a1)
        {
LABEL_16:
          v11 = 0x80000001DCA7A5F0;
          if (v7 != 0xD000000000000019)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else
      {
        v7 = 0xD000000000000019;
        v8 = 0x80000001DCA7A5F0;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x4C4E79636167656CLL;
      }

      else
      {
        v10 = 0xD00000000000001ALL;
      }

      if (v9 == 1)
      {
        v11 = 0xEF747865746E6F43;
      }

      else
      {
        v11 = 0x80000001DCA7A620;
      }

      if (v7 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_18:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSDySSSbGGMd, &_ss18_DictionaryStorageCySSSDySSSbGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSDySSSo8NSNumberCGGMd, &_ss18_DictionaryStorageCySSSDySSSo8NSNumberCGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for StringKeyedValue();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        outlined init with copy of StringKeyedValue(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        outlined init with take of StringKeyedValue(v26, *(v28 + 56) + v27, type metadata accessor for StringKeyedValue);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime15AffinityScoring_pGMR, outlined init with take of NSExtensionProtocol);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSayAEGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSayAEGGMR);
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7SiriCam12RankedActionV03topF0_SayAC0D5ParseOG17alternativeParsestGMd, &_ss18_DictionaryStorageCySS7SiriCam12RankedActionV03topF0_SayAC0D5ParseOG17alternativeParsestGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v35 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v32;
        v27 = *(v33 + 72) * v21;
        outlined init with copy of ReferenceResolutionClientProtocol?(*(v5 + 56) + v27, v32, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
        v28 = v34;
        v29 = (*(v34 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v26, *(v28 + 56) + v27, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);

        v16 = v35;
      }

      while (v35);
    }

    v19 = v11;
    v7 = v34;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v35 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime18ConversationActionOGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime18ConversationActionOGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69E6D30], &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay11SiriKitFlow11IntentTopicVGGMd, &_ss18_DictionaryStorageCySSSay11SiriKitFlow11IntentTopicVGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS14SiriKitRuntime23RemoteFlowPluginPackageCGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime23RemoteFlowPluginPackageCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySuyycGMd, &_ss18_DictionaryStorageCySuyycGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pGMd, &_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69D0820], &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for ConversationSessionKey();
  v3 = *(v2 - 8);
  v31 = v2;
  v32 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v30 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes22ConversationSessionKeyOs8Sendable_pSgGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29[0] = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v29[1] = v32 + 32;
    v29[2] = v32 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v23 = v31;
        v22 = v32;
        v24 = *(v32 + 72) * v21;
        v25 = v30;
        (*(v32 + 16))(v30, *(v6 + 48) + v24, v31);
        v21 *= 32;
        outlined init with copy of ReferenceResolutionClientProtocol?(*(v6 + 56) + v21, v35, &_ss8Sendable_pSgMd, &_ss8Sendable_pSgMR);
        v26 = v33;
        result = (*(v22 + 32))(*(v33 + 48) + v24, v25, v23);
        v27 = (*(v26 + 56) + v21);
        v28 = v35[1];
        *v27 = v35[0];
        v27[1] = v28;
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    v8 = v33;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v29[0];
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVySo13SABaseCommandCSg_s5Error_pSgt14SiriKitRuntime15MessageBusActorCYccGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69D0AA8], &_ss18_DictionaryStorageCySS12SiriNLUTypes0C28_Nlu_External_ResponseStatusV0H4CodeOGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C28_Nlu_External_ResponseStatusV0H4CodeOGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScTy14SiriKitRuntime19ConversationServiceC11EagerResultOs5Error_pGGMd, &_ss18_DictionaryStorageCySSScTy14SiriKitRuntime19ConversationServiceC11EagerResultOs5Error_pGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69D0100], &_ss18_DictionaryStorageCySS11SiriKitFlow5InputVGMd, &_ss18_DictionaryStorageCySS11SiriKitFlow5InputVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime12AnyEncodableVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pSgGMd, &_ss18_DictionaryStorageCy14SiriKitRuntime14ContextTypeKeyOSo17AFContextSnapshot_pSgGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMd, &_ss18_DictionaryStorageCySO14SiriKitRuntime17InstrumentedStackC16TrackedFlowAgent33_D2D0045FA6DDADCCE44653D1D4022143LLCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS14SiriKitRuntime19NSExtensionProtocol_pGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime19NSExtensionProtocol_pGMR, outlined init with take of NSExtensionProtocol);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySi14SiriKitRuntime24RemoteConversationClientCSgyYbcGMd, &_ss18_DictionaryStorageCySi14SiriKitRuntime24RemoteConversationClientCSgyYbcGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime19FlowPluginAndBundleVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime19FlowPluginAndBundleVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 80 * v17;
        outlined init with copy of FlowPluginAndBundle(*(v2 + 56) + 80 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        *v24 = v29[0];
        v25 = v29[1];
        v26 = v29[2];
        v27 = v29[4];
        v24[3] = v29[3];
        v24[4] = v27;
        v24[1] = v25;
        v24[2] = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69D0188], &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5ParseOGMR);
}

{
  v1 = v0;
  v34 = type metadata accessor for UserID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV0C10KitRuntime14ContextUpdaterCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV0C10KitRuntime14ContextUpdaterCGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for UserID();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDV10Foundation4DataVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = outlined copy of Data._Representation(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69CE370], &_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMR);
}

{
  return specialized _NativeDictionary.copy()(&_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF06ActingG0_p0E9Utilities0E11EnvironmentCtGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF06ActingG0_p0E9Utilities0E11EnvironmentCtGMR);
}

{
  return specialized _NativeDictionary.copy()(&_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF03AnyG0C0E9Utilities0E11EnvironmentCtGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11SiriKitFlow5InputV_AF03AnyG0C0E9Utilities0E11EnvironmentCtGMR);
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 16 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 16 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo14SASRecognitionCGMd, &_ss18_DictionaryStorageCySSSo14SASRecognitionCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo15AFSpeechPackageCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo15AFSpeechPackageCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo16SAHomeMemberInfoCGMd, &_ss18_DictionaryStorageCy16SiriMessageTypes6UserIDVSo16SAHomeMemberInfoCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
}

void *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v32 = a1(0);
  v34 = *(v32 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = v30 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v30[0] = v6;
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, (v9 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v33 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v30[1] = v34 + 32;
    v30[2] = v34 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v34;
        v26 = *(v34 + 72) * v24;
        v27 = v31;
        v28 = v32;
        (*(v34 + 16))(v31, *(v9 + 48) + v26, v32);
        v24 *= 32;
        outlined init with copy of Any(*(v9 + 56) + v24, v36);
        v29 = v33;
        (*(v25 + 32))(*(v33 + 48) + v26, v27, v28);
        result = outlined init with take of Any(v36, (*(v29 + 56) + v24));
        v19 = v35;
      }

      while (v35);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v30[0];
        v11 = v33;
        goto LABEL_21;
      }

      v23 = *(v9 + 64 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v35 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UserID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        result = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v48 = a1(0);
  v51 = *(v48 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v37 - v8;
  v46 = type metadata accessor for UUID();
  v50 = *(v46 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = static _DictionaryStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v6;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v13;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        outlined init with copy of ReferenceResolutionClientProtocol(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

char *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v51 = a1;
  v52 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v40 - v10;
  v48 = type metadata accessor for UUID();
  v53 = *(v48 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = static _DictionaryStorage.copy(original:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v41 = v4;
    v42 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v54 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = v52;
    v43 = v53 + 32;
    v44 = v53 + 16;
    v45 = v24;
    v46 = v13;
    v26 = v48;
    if (v23)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v55 = (v23 - 1) & v23;
LABEL_14:
        v30 = v27 | (v19 << 6);
        v31 = v53;
        v32 = *(v53 + 72) * v30;
        v33 = v47;
        (*(v53 + 16))(v47, *(v13 + 48) + v32, v26);
        v34 = v49;
        v35 = *(v50 + 72) * v30;
        v36 = *(v13 + 56) + v35;
        v37 = v51;
        outlined init with copy of ReferenceResolutionClientProtocol?(v36, v49, v51, v25);
        v38 = v54;
        (*(v31 + 32))(*(v54 + 48) + v32, v33, v26);
        v39 = v37;
        v13 = v46;
        result = outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v34, *(v38 + 56) + v35, v39, v25);
        v24 = v45;
        v23 = v55;
      }

      while (v55);
    }

    v28 = v19;
    v15 = v54;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v41;
        goto LABEL_18;
      }

      v29 = *(v42 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v55 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v15;
  }

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v88 = a5;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  v9 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v86 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v72[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v72[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v72[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v72[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v72[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v72[-v24];
  v74 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v23 + 72);
    v28 = *a4 + v27 * (a3 - 1);
    v84 = -v27;
    v85 = v26;
    v29 = a1 - a3;
    v73 = v27;
    v30 = v26 + v27 * a3;
    v87 = v21;
    v81 = &v72[-v24];
LABEL_5:
    v78 = a3;
    v75 = v30;
    v76 = v29;
    v31 = v29;
    v77 = v28;
    while (1)
    {
      v94 = v31;
      outlined init with copy of ReferenceResolutionClientProtocol?(v30, v25, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v28, v21, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v25, v97, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v32 = *(v98 + 48);
      v33 = *v88;
      v34 = *(*v88 + 16);
      v93 = v28;
      if (v34 && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v97), (v36 & 1) != 0))
      {
        v79 = *(*(v33 + 56) + 8 * v35);
        v37 = type metadata accessor for ActionCandidate();
        v38 = *(v37 - 8);
        v39 = *(v38 + 8);
        v40 = v97;
        v96 = v37;
        v91 = v38 + 8;
        v92 = v39;
        v39(&v97[v32]);
        v41 = type metadata accessor for UUID();
        v42 = *(v41 - 8);
        v43 = *(v42 + 8);
        v95 = (v41 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v44 = v41;
        v89 = (v42 + 8);
        v90 = v43;
        v43(v40);
        outlined init with copy of ReferenceResolutionClientProtocol?(v21, v80, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v45 = *(v98 + 48);
        v46 = *v88;
        if (*(*v88 + 16) && (v47 = specialized __RawDictionaryStorage.find<A>(_:)(v80), (v48 & 1) != 0))
        {
          v49 = *(*(v46 + 56) + 8 * v47);
          v50 = v80;
          v51 = v96;
          v92(&v80[v45], v96);
          v52 = v50;
          v53 = v44;
          v90(v52, v44);
          v54 = v95;
          if (v79 != v49)
          {
            v55 = v79 < v49;
            v56 = v87;
            goto LABEL_15;
          }
        }

        else
        {
          v58 = v80;
          v51 = v96;
          v92(&v80[v45], v96);
          v59 = v58;
          v53 = v44;
          v90(v59, v44);
          v54 = v95;
        }
      }

      else
      {
        v51 = type metadata accessor for ActionCandidate();
        v57 = v97;
        (*(*(v51 - 8) + 8))(&v97[v32], v51);
        v53 = type metadata accessor for UUID();
        v54 = (v53 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        (*(*(v53 - 8) + 8))(v57, v53);
      }

      v95 = v54;
      v96 = v51;
      v91 = v53;
      v60 = v82;
      outlined init with copy of ReferenceResolutionClientProtocol?(v25, v82, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v92 = v30;
      v61 = v98;
      v62 = *(v98 + 48);
      v90 = ActionCandidate.affinityScore.getter();
      type metadata accessor for ActionCandidate();
      v89 = *(*(v51 - 8) + 8);
      v89(&v60[v62], v51);
      v56 = v87;
      v63 = v83;
      outlined init with copy of ReferenceResolutionClientProtocol?(v87, v83, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v64 = *(v61 + 48);
      v65 = ActionCandidate.affinityScore.getter();
      v89(&v63[v64], v96);
      v55 = v65 < v90;
      type metadata accessor for UUID();
      v66 = v91;
      v67 = *(*(v91 - 8) + 8);
      v67(v63, v91);
      v67(v60, v66);
      v30 = v92;
      v25 = v81;
LABEL_15:
      v68 = v94;
      outlined destroy of ReferenceResolutionClientProtocol?(v56, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v25, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v21 = v56;
      v69 = v93;
      if (!v55)
      {
        goto LABEL_4;
      }

      if (!v85)
      {
        __break(1u);
        return;
      }

      v70 = v86;
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v30, v86, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v70, v69, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v28 = v69 + v84;
      v30 += v84;
      v71 = __CFADD__(v68, 1);
      v31 = v68 + 1;
      if (v71)
      {
LABEL_4:
        a3 = v78 + 1;
        v28 = v77 + v73;
        v29 = v76 - 1;
        v30 = v75 + v73;
        if (v78 + 1 == v74)
        {
          return;
        }

        goto LABEL_5;
      }
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v6;
  v229 = a5;
  v204 = a4;
  v200 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  v214 = *(v9 - 8);
  v10 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v206 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v224 = &v199 - v13;
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v199 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v199 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v236 = &v199 - v22;
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v226 = &v199 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v225 = &v199 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v212 = &v199 - v29;
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v217 = &v199 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v199 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v215 = a3;
  v41 = a3[1];
  if (v41 < 1)
  {
    v43 = MEMORY[0x1E69E7CC0];
LABEL_116:
    v42 = *v200;
    if (!*v200)
    {
      goto LABEL_156;
    }

    v5 = v43;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v194 = v5;
    }

    else
    {
LABEL_150:
      v194 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

    v238 = v194;
    v5 = *(v194 + 2);
    if (v5 >= 2)
    {
      while (*v215)
      {
        v195 = *&v194[16 * v5];
        v196 = v194;
        v197 = *&v194[16 * v5 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v215 + *(v214 + 72) * v195, *v215 + *(v214 + 72) * *&v194[16 * v5 + 16], *v215 + *(v214 + 72) * v197, v42, v229);
        if (v7)
        {
          goto LABEL_127;
        }

        if (v197 < v195)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v196 = specialized _ArrayBuffer._consumeAndCreateNew()(v196);
        }

        if (v5 - 2 >= *(v196 + 2))
        {
          goto LABEL_144;
        }

        v198 = &v196[16 * v5];
        *v198 = v195;
        *(v198 + 1) = v197;
        v238 = v196;
        specialized Array.remove(at:)(v5 - 1);
        v194 = v238;
        v5 = *(v238 + 2);
        if (v5 <= 1)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_154;
    }

LABEL_127:

    return;
  }

  v201 = &v199 - v37;
  v199 = v35;
  v219 = v40;
  v202 = v39;
  v218 = v38;
  v42 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  v44 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
  v227 = v17;
  v228 = v9;
  v237 = v20;
  while (1)
  {
    v207 = v43;
    v203 = v42;
    if ((v42 + 1) >= v41)
    {
      v51 = v42 + 1;
      v90 = v204;
      goto LABEL_33;
    }

    v216 = v41;
    v45 = *v215;
    v46 = *(v214 + 72);
    v234 = *v215 + v46 * (v42 + 1);
    outlined init with copy of ReferenceResolutionClientProtocol?(v234, v201, v44, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v235 = v45;
    v223 = v46;
    v47 = v45 + v46 * v42;
    v5 = v44;
    v48 = v199;
    outlined init with copy of ReferenceResolutionClientProtocol?(v47, v199, v5, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    LODWORD(v222) = closure #3 in ActionGenerator.generateActionCandidates(from:rrCandidates:appShortcutProvider:)(v201, v48, v229);
    if (v7)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v48, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v201, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      goto LABEL_127;
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v48, v5, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v201, v5, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v49 = v42 + 2;
    v50 = v235 + v223 * (v42 + 2);
    v213 = 0;
    v44 = v5;
    v42 = v234;
    while (1)
    {
      v51 = v216;
      if (v216 == v49)
      {
        break;
      }

      v232 = v50;
      v233 = v49;
      v52 = v217;
      outlined init with copy of ReferenceResolutionClientProtocol?(v50, v217, v44, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v234 = v42;
      outlined init with copy of ReferenceResolutionClientProtocol?(v42, v219, v44, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v53 = v212;
      outlined init with copy of ReferenceResolutionClientProtocol?(v52, v212, v44, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v54 = *(v9 + 48);
      v55 = *v229;
      if (!*(*v229 + 16) || (v56 = specialized __RawDictionaryStorage.find<A>(_:)(v53), (v57 & 1) == 0))
      {
        v73 = type metadata accessor for ActionCandidate();
        (*(*(v73 - 8) + 8))(v53 + v54, v73);
        v74 = type metadata accessor for UUID();
        v75 = (v74 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        (*(*(v74 - 8) + 8))(v53, v74);
LABEL_16:
        v235 = v75;
        v231 = v74;
        v80 = v225;
        outlined init with copy of ReferenceResolutionClientProtocol?(v52, v225, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v81 = v228;
        v82 = *(v228 + 48);
        v230 = ActionCandidate.affinityScore.getter();
        type metadata accessor for ActionCandidate();
        v83 = *(*(v73 - 8) + 8);
        v83(v80 + v82, v73);
        v44 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
        v84 = v226;
        outlined init with copy of ReferenceResolutionClientProtocol?(v219, v226, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v85 = *(v81 + 48);
        v17 = v227;
        v86 = ActionCandidate.affinityScore.getter();
        v83(v84 + v85, v73);
        v5 = v86 < v230;
        type metadata accessor for UUID();
        v87 = *(*(v231 - 1) + 8);
        v88 = v84;
        v89 = v231;
        v87(v88);
        (v87)(v80, v89);
        v77 = v219;
        v76 = v217;
        v7 = v213;
        v20 = v237;
        goto LABEL_17;
      }

      v220 = *(*(v55 + 56) + 8 * v56);
      v58 = type metadata accessor for ActionCandidate();
      v59 = *(v58 - 8);
      v230 = *(v59 + 8);
      v231 = v58;
      v221 = v59 + 8;
      v230(v53 + v54);
      v60 = type metadata accessor for UUID();
      v61 = *(*(v60 - 8) + 8);
      v235 = (v60 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v62 = v53;
      v63 = v61;
      v64 = v60;
      (v61)(v62);
      v65 = v202;
      outlined init with copy of ReferenceResolutionClientProtocol?(v219, v202, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v66 = *(v228 + 48);
      v67 = *v229;
      if (!*(*v229 + 16) || (v68 = specialized __RawDictionaryStorage.find<A>(_:)(v65), (v69 & 1) == 0))
      {
        v78 = v231;
        (v230)(v65 + v66, v231);
        v79 = v65;
        v73 = v78;
        v74 = v64;
        v63(v79, v64);
        v52 = v217;
        v75 = v235;
        goto LABEL_16;
      }

      v211 = *(*(v67 + 56) + 8 * v68);
      v70 = v63;
      v71 = v231;
      (v230)(v65 + v66, v231);
      v72 = v65;
      v73 = v71;
      v74 = v64;
      v70(v72, v64);
      v52 = v217;
      v75 = v235;
      if (v220 == v211)
      {
        goto LABEL_16;
      }

      v5 = v220 < v211;
      v7 = v213;
      v76 = v217;
      v20 = v237;
      v44 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
      v77 = v219;
LABEL_17:
      outlined destroy of ReferenceResolutionClientProtocol?(v77, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v76, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v49 = v233 + 1;
      v50 = v232 + v223;
      v42 = v234 + v223;
      v9 = v228;
      if ((v222 ^ v5))
      {
        v51 = v233;
        break;
      }
    }

    v90 = v204;
    if ((v222 & 1) == 0)
    {
      goto LABEL_33;
    }

    if (v51 < v203)
    {
      goto LABEL_149;
    }

    if (v203 < v51)
    {
      v91 = v223;
      v5 = v223 * (v51 - 1);
      v92 = v51 * v223;
      v216 = v51;
      v93 = v51;
      v94 = v203;
      v95 = v203 * v223;
      do
      {
        if (v94 != --v93)
        {
          v96 = *v215;
          if (!*v215)
          {
            goto LABEL_153;
          }

          v42 = v96 + v95;
          outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v96 + v95, v206, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          if (v95 < v5 || v42 >= v96 + v92)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v95 != v5)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v206, v96 + v5, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          v90 = v204;
        }

        ++v94;
        v5 -= v91;
        v92 -= v91;
        v95 += v91;
      }

      while (v94 < v93);
      v7 = v213;
      v17 = v227;
      v20 = v237;
      v44 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
      v51 = v216;
    }

LABEL_33:
    v97 = v215[1];
    if (v51 >= v97)
    {
      goto LABEL_61;
    }

    v98 = v51;
    v99 = v51 - v203;
    if (__OFSUB__(v98, v203))
    {
      goto LABEL_146;
    }

    v100 = v98;
    if (v99 >= v90)
    {
      v51 = v98;
      goto LABEL_61;
    }

    if (__OFADD__(v203, v90))
    {
      goto LABEL_147;
    }

    if (v203 + v90 < v97)
    {
      v97 = v203 + v90;
    }

    if (v97 < v203)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v51 = v98;
    if (v98 == v97)
    {
      goto LABEL_61;
    }

    v101 = v44;
    v208 = v97;
    v213 = v7;
    v102 = *v215;
    v103 = *(v214 + 72);
    v42 = *v215 + v103 * (v100 - 1);
    v222 = -v103;
    v104 = v203 - v100;
    v223 = v102;
    v205 = v103;
    v5 = v102 + v100 * v103;
LABEL_44:
    v216 = v51;
    v209 = v5;
    v210 = v104;
    v105 = v104;
    v211 = v42;
    v233 = v5;
    v234 = v105;
    v106 = v5;
    v107 = v236;
    outlined init with copy of ReferenceResolutionClientProtocol?(v106, v236, v101, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v42, v20, v101, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v107, v17, v101, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v108 = *(v9 + 48);
    v109 = *v229;
    v110 = *(*v229 + 16);
    v232 = v42;
    if (!v110)
    {
      goto LABEL_51;
    }

LABEL_45:
    v111 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    if (v112)
    {
      v220 = *(*(v109 + 56) + 8 * v111);
      v113 = type metadata accessor for ActionCandidate();
      v114 = *(v113 - 8);
      v115 = *(v114 + 8);
      v221 = v113;
      v230 = (v114 + 8);
      v231 = v115;
      v115(&v17[v108]);
      v116 = type metadata accessor for UUID();
      v117 = *(*(v116 - 8) + 8);
      v235 = (v116 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v118 = v9;
      v119 = v116;
      v120 = v117;
      (v117)(v17);
      v121 = v218;
      outlined init with copy of ReferenceResolutionClientProtocol?(v20, v218, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v122 = *(v118 + 48);
      v123 = *v229;
      if (!*(*v229 + 16))
      {
        goto LABEL_52;
      }

      v124 = specialized __RawDictionaryStorage.find<A>(_:)(v121);
      if (v125)
      {
        v126 = *(*(v123 + 56) + 8 * v124);
        v127 = v221;
        (v231)(v121 + v122, v221);
        v128 = v119;
        v120(v121, v119);
        v129 = v235;
        v9 = v228;
        if (v220 != v126)
        {
          v130 = v220 < v126;
          v131 = v237;
          goto LABEL_54;
        }
      }

      else
      {
LABEL_52:
        v127 = v221;
        (v231)(v121 + v122, v221);
        v128 = v119;
        v120(v121, v119);
        v129 = v235;
        v9 = v228;
      }
    }

    else
    {
LABEL_51:
      v127 = type metadata accessor for ActionCandidate();
      (*(*(v127 - 8) + 8))(&v17[v108], v127);
      v128 = type metadata accessor for UUID();
      v129 = (v128 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      (*(*(v128 - 8) + 8))(v17, v128);
    }

    v231 = v128;
    v235 = v129;
    v132 = v225;
    outlined init with copy of ReferenceResolutionClientProtocol?(v236, v225, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v133 = v9;
    v134 = *(v9 + 48);
    v230 = ActionCandidate.affinityScore.getter();
    type metadata accessor for ActionCandidate();
    v135 = *(*(v127 - 8) + 8);
    v135(v132 + v134, v127);
    v136 = v226;
    outlined init with copy of ReferenceResolutionClientProtocol?(v237, v226, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v137 = *(v133 + 48);
    v138 = ActionCandidate.affinityScore.getter();
    v135(v136 + v137, v127);
    v130 = v138 < v230;
    type metadata accessor for UUID();
    v139 = v231;
    v140 = *(*(v231 - 1) + 8);
    v140(v136, v231);
    v141 = v139;
    v131 = v237;
    v140(v132, v141);
LABEL_54:
    outlined destroy of ReferenceResolutionClientProtocol?(v131, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    outlined destroy of ReferenceResolutionClientProtocol?(v236, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v101 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
    if (v130)
    {
      break;
    }

    v20 = v131;
    v17 = v227;
    v9 = v228;
LABEL_43:
    v51 = v216 + 1;
    v42 = v211 + v205;
    v104 = v210 - 1;
    v5 = v209 + v205;
    if (v216 + 1 != v208)
    {
      goto LABEL_44;
    }

    v7 = v213;
    v51 = v208;
    v44 = &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd;
LABEL_61:
    v147 = v203;
    if (v51 < v203)
    {
      goto LABEL_145;
    }

    v208 = v51;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v43 = v207;
    }

    else
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v207 + 2) + 1, 1, v207);
    }

    v5 = *(v43 + 2);
    v148 = *(v43 + 3);
    v42 = v5 + 1;
    if (v5 >= v148 >> 1)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v148 > 1), v5 + 1, 1, v43);
    }

    *(v43 + 2) = v42;
    v149 = &v43[16 * v5];
    v150 = v208;
    *(v149 + 4) = v147;
    *(v149 + 5) = v150;
    v151 = *v200;
    if (!*v200)
    {
      goto LABEL_155;
    }

    if (v5)
    {
      while (2)
      {
        v152 = v42 - 1;
        if (v42 >= 4)
        {
          v157 = &v43[16 * v42 + 32];
          v158 = *(v157 - 64);
          v159 = *(v157 - 56);
          v163 = __OFSUB__(v159, v158);
          v160 = v159 - v158;
          if (v163)
          {
            goto LABEL_132;
          }

          v162 = *(v157 - 48);
          v161 = *(v157 - 40);
          v163 = __OFSUB__(v161, v162);
          v155 = v161 - v162;
          v156 = v163;
          if (v163)
          {
            goto LABEL_133;
          }

          v164 = &v43[16 * v42];
          v166 = *v164;
          v165 = *(v164 + 1);
          v163 = __OFSUB__(v165, v166);
          v167 = v165 - v166;
          if (v163)
          {
            goto LABEL_135;
          }

          v163 = __OFADD__(v155, v167);
          v168 = v155 + v167;
          if (v163)
          {
            goto LABEL_138;
          }

          if (v168 >= v160)
          {
            v186 = &v43[16 * v152 + 32];
            v188 = *v186;
            v187 = *(v186 + 1);
            v163 = __OFSUB__(v187, v188);
            v189 = v187 - v188;
            if (v163)
            {
              goto LABEL_142;
            }

            if (v155 < v189)
            {
              v152 = v42 - 2;
            }
          }

          else
          {
LABEL_81:
            if (v156)
            {
              goto LABEL_134;
            }

            v169 = &v43[16 * v42];
            v171 = *v169;
            v170 = *(v169 + 1);
            v172 = __OFSUB__(v170, v171);
            v173 = v170 - v171;
            v174 = v172;
            if (v172)
            {
              goto LABEL_137;
            }

            v175 = &v43[16 * v152 + 32];
            v177 = *v175;
            v176 = *(v175 + 1);
            v163 = __OFSUB__(v176, v177);
            v178 = v176 - v177;
            if (v163)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v173, v178))
            {
              goto LABEL_141;
            }

            if (v173 + v178 < v155)
            {
              goto LABEL_95;
            }

            if (v155 < v178)
            {
              v152 = v42 - 2;
            }
          }
        }

        else
        {
          if (v42 == 3)
          {
            v153 = *(v43 + 4);
            v154 = *(v43 + 5);
            v163 = __OFSUB__(v154, v153);
            v155 = v154 - v153;
            v156 = v163;
            goto LABEL_81;
          }

          v179 = &v43[16 * v42];
          v181 = *v179;
          v180 = *(v179 + 1);
          v163 = __OFSUB__(v180, v181);
          v173 = v180 - v181;
          v174 = v163;
LABEL_95:
          if (v174)
          {
            goto LABEL_136;
          }

          v182 = &v43[16 * v152];
          v184 = *(v182 + 4);
          v183 = *(v182 + 5);
          v163 = __OFSUB__(v183, v184);
          v185 = v183 - v184;
          if (v163)
          {
            goto LABEL_139;
          }

          if (v185 < v173)
          {
            break;
          }
        }

        v5 = v152 - 1;
        if (v152 - 1 >= v42)
        {
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

        if (!*v215)
        {
          goto LABEL_152;
        }

        v190 = v43;
        v42 = *&v43[16 * v5 + 32];
        v191 = *&v43[16 * v152 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v215 + *(v214 + 72) * v42, *v215 + *(v214 + 72) * *&v43[16 * v152 + 32], *v215 + *(v214 + 72) * v191, v151, v229);
        if (v7)
        {
          goto LABEL_127;
        }

        if (v191 < v42)
        {
          goto LABEL_130;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v192 = v190;
        }

        else
        {
          v192 = specialized _ArrayBuffer._consumeAndCreateNew()(v190);
        }

        if (v5 >= *(v192 + 2))
        {
          goto LABEL_131;
        }

        v193 = &v192[16 * v5];
        *(v193 + 4) = v42;
        *(v193 + 5) = v191;
        v238 = v192;
        v5 = &v238;
        specialized Array.remove(at:)(v152);
        v43 = v238;
        v42 = *(v238 + 2);
        if (v42 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v41 = v215[1];
    v42 = v208;
    v17 = v227;
    v20 = v237;
    if (v208 >= v41)
    {
      goto LABEL_116;
    }
  }

  v17 = v227;
  v9 = v228;
  v142 = v234;
  if (v223)
  {
    v143 = v233;
    v144 = v224;
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v233, v224, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v145 = v232;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v144, v145, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
    v42 = v145 + v222;
    v5 = v143 + v222;
    v146 = __CFADD__(v142, 1);
    v105 = v142 + 1;
    v20 = v237;
    if (v146)
    {
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v136 = a5;
  v142 = a4;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
  v8 = *(*(v143 - 8) + 64);
  MEMORY[0x1EEE9AC00](v143);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v120 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v120 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v139 = v120 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v127 = v120 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v133 = v120 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v132 = v120 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v120 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v137 = v120 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v135 = v120 - v30;
  v32 = *(v31 + 72);
  if (!v32)
  {
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v32 == -1)
  {
    goto LABEL_88;
  }

  v33 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v32 == -1)
  {
    goto LABEL_89;
  }

  v34 = (a2 - a1) / v32;
  v146 = a1;
  v145 = v142;
  if (v34 >= v33 / v32)
  {
    v122 = v29;
    v38 = v33 / v32 * v32;
    if (v142 < a2 || a2 + v38 <= v142)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v142 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v38 < 1)
    {
      v84 = v142 + v38;
      goto LABEL_85;
    }

    v130 = v14;
    v131 = -v32;
    v83 = v142 + v38;
    v140 = a1;
    v126 = v11;
    v84 = v142 + v38;
    while (1)
    {
      v120[0] = v84;
      v85 = a2;
      a2 += v131;
      v141 = a2;
      v127 = v85;
      while (1)
      {
        v137 = a3;
        if (v85 <= a1)
        {
          v146 = v85;
          v144 = v120[0];
          goto LABEL_86;
        }

        v125 = v84;
        v138 = v83 + v131;
        v86 = v139;
        outlined init with copy of ReferenceResolutionClientProtocol?(v83 + v131, v139, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(a2, v14, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        outlined init with copy of ReferenceResolutionClientProtocol?(v86, v11, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v87 = *(v143 + 48);
        v88 = *v136;
        if (!*(*v136 + 16) || (v89 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v90 & 1) == 0))
        {
          v91 = type metadata accessor for ActionCandidate();
          (*(*(v91 - 8) + 8))(&v11[v87], v91);
          v103 = type metadata accessor for UUID();
          v105 = (v103 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
          (*(*(v103 - 8) + 8))(v11, v103);
          v14 = v130;
LABEL_68:
          v134 = v105;
          v135 = v103;
          v129 = v83;
          v107 = v132;
          outlined init with copy of ReferenceResolutionClientProtocol?(v139, v132, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          v108 = v143;
          v109 = *(v143 + 48);
          v128 = ActionCandidate.affinityScore.getter();
          type metadata accessor for ActionCandidate();
          v110 = *(*(v91 - 8) + 8);
          v110(v107 + v109, v91);
          v111 = v14;
          v112 = v133;
          outlined init with copy of ReferenceResolutionClientProtocol?(v111, v133, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
          v113 = *(v108 + 48);
          v114 = ActionCandidate.affinityScore.getter();
          v110(v112 + v113, v91);
          v106 = v114 < v128;
          type metadata accessor for UUID();
          v115 = v135;
          v116 = *(*(v135 - 8) + 8);
          v117 = v112;
          v14 = v130;
          v116(v117, v135);
          v118 = v107;
          v83 = v129;
          v116(v118, v115);
          a2 = v141;
          goto LABEL_69;
        }

        v121 = *(*(v88 + 56) + 8 * v89);
        v91 = type metadata accessor for ActionCandidate();
        v92 = *(v91 - 8);
        v93 = *(v92 + 8);
        v128 = v92 + 8;
        v129 = v93;
        v93(&v11[v87], v91);
        v94 = type metadata accessor for UUID();
        v95 = *(v94 - 8);
        v96 = *(v95 + 8);
        v134 = (v94 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v135 = v94;
        v124 = v96;
        v123 = v95 + 8;
        (v96)(v11);
        v14 = v130;
        v97 = v122;
        outlined init with copy of ReferenceResolutionClientProtocol?(v130, v122, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v98 = *(v143 + 48);
        v99 = *v136;
        if (!*(*v136 + 16) || (v100 = specialized __RawDictionaryStorage.find<A>(_:)(v97), (v101 & 1) == 0))
        {
          v129(v97 + v98, v91);
          v103 = v135;
          v124(v97, v135);
          v105 = v134;
          goto LABEL_68;
        }

        v102 = *(*(v99 + 56) + 8 * v100);
        v129(v97 + v98, v91);
        v103 = v135;
        v124(v97, v135);
        v61 = v121 == v102;
        v104 = v121 < v102;
        v105 = v134;
        if (v61)
        {
          goto LABEL_68;
        }

        v106 = v104;
LABEL_69:
        v119 = v137;
        a3 = v137 + v131;
        outlined destroy of ReferenceResolutionClientProtocol?(v14, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        outlined destroy of ReferenceResolutionClientProtocol?(v139, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        if (v106)
        {
          break;
        }

        v84 = v138;
        v39 = v119 >= v83;
        a1 = v140;
        v11 = v126;
        if (v39 && a3 < v83)
        {
          if (v137 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        v83 = v84;
        v85 = v127;
        if (v138 <= v142)
        {
          a2 = v127;
          goto LABEL_85;
        }
      }

      v11 = v126;
      v39 = v119 >= v127;
      a1 = v140;
      if (v39 && a3 < v127)
      {
        v84 = v125;
        if (v137 != v127)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      else
      {
        swift_arrayInitWithTakeFrontToBack();
        v84 = v125;
      }

      if (v83 <= v142)
      {
LABEL_85:
        v146 = a2;
        v144 = v84;
        goto LABEL_86;
      }
    }
  }

  v131 = v25;
  v35 = v34 * v32;
  if (v142 < a1 || a1 + v35 <= v142)
  {
    swift_arrayInitWithTakeFrontToBack();
    v36 = v137;
    v37 = v135;
  }

  else
  {
    v36 = v137;
    v37 = v135;
    if (v142 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v130 = v142 + v35;
  v144 = v142 + v35;
  v39 = v35 < 1 || a2 >= a3;
  v40 = v131;
  if (!v39)
  {
    v128 = v32;
    v129 = a3;
    do
    {
      v141 = a2;
      outlined init with copy of ReferenceResolutionClientProtocol?(a2, v37, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v142, v36, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined init with copy of ReferenceResolutionClientProtocol?(v37, v40, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v41 = *(v143 + 48);
      v42 = *v136;
      if (*(*v136 + 16) && (v43 = specialized __RawDictionaryStorage.find<A>(_:)(v40), (v44 & 1) != 0))
      {
        v126 = *(*(v42 + 56) + 8 * v43);
        v45 = type metadata accessor for ActionCandidate();
        v46 = *(v45 - 8);
        v47 = *(v46 + 8);
        v139 = v45;
        v140 = v47;
        v134 = v46 + 8;
        (v47)(v40 + v41);
        v48 = type metadata accessor for UUID();
        v49 = *(*(v48 - 8) + 8);
        v50 = v48;
        v138 = (v48 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v49(v40, v48);
        v51 = v127;
        outlined init with copy of ReferenceResolutionClientProtocol?(v137, v127, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
        v52 = *(v143 + 48);
        v53 = *v136;
        if (*(*v136 + 16) && (v54 = specialized __RawDictionaryStorage.find<A>(_:)(v51), (v55 & 1) != 0))
        {
          v56 = *(*(v53 + 56) + 8 * v54);
          v57 = v51 + v52;
          v58 = v139;
          v140(v57, v139);
          v59 = v51;
          v60 = v58;
          v49(v59, v50);
          v61 = v126 == v56;
          v62 = v126 < v56;
          v63 = v138;
          if (!v61)
          {
            v64 = v62;
            v66 = v128;
            v65 = v129;
            v36 = v137;
            v37 = v135;
            goto LABEL_33;
          }
        }

        else
        {
          v69 = v51 + v52;
          v70 = v139;
          v140(v69, v139);
          v71 = v51;
          v60 = v70;
          v49(v71, v50);
          v63 = v138;
        }
      }

      else
      {
        v67 = type metadata accessor for ActionCandidate();
        v68 = v40 + v41;
        v60 = v67;
        (*(*(v67 - 8) + 8))(v68, v67);
        v50 = type metadata accessor for UUID();
        v63 = (v50 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        (*(*(v50 - 8) + 8))(v40, v50);
      }

      v138 = v63;
      v139 = v60;
      v72 = v132;
      outlined init with copy of ReferenceResolutionClientProtocol?(v135, v132, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v140 = a1;
      v73 = v143;
      v74 = *(v143 + 48);
      v134 = ActionCandidate.affinityScore.getter();
      type metadata accessor for ActionCandidate();
      v75 = *(*(v60 - 8) + 8);
      v75(v72 + v74, v60);
      v76 = v133;
      outlined init with copy of ReferenceResolutionClientProtocol?(v137, v133, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      v77 = *(v73 + 48);
      a1 = v140;
      v78 = ActionCandidate.affinityScore.getter();
      v75(v76 + v77, v139);
      v64 = v78 < v134;
      type metadata accessor for UUID();
      v79 = *(*(v50 - 8) + 8);
      v80 = v76;
      v37 = v135;
      v79(v80, v50);
      v81 = v72;
      v36 = v137;
      v79(v81, v50);
      v66 = v128;
      v65 = v129;
LABEL_33:
      outlined destroy of ReferenceResolutionClientProtocol?(v36, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      outlined destroy of ReferenceResolutionClientProtocol?(v37, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMd, &_s10Foundation4UUIDV4uuid_7SiriCam15ActionCandidateV06actionG0tMR);
      a2 = v141;
      if (v64)
      {
        if (a1 < v141 || a1 >= v141 + v66)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v141)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v66;
      }

      else
      {
        v82 = v142 + v66;
        if (a1 < v142 || a1 >= v82)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v142)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v145 = v82;
        v142 = v82;
      }

      a1 += v66;
      v146 = a1;
      v40 = v131;
    }

    while (v142 < v130 && a2 < v65);
  }

LABEL_86:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v146, &v145, &v144);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v10, v6, &_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC13SiriInference8DateTimeC0eF5RangeC07DefinedefG0O_AETt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference8DateTimeC0cD5RangeC07DefinedcdE0O_ACtMd, &_s13SiriInference8DateTimeC0cD5RangeC07DefinedcdE0O_ACtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13SiriInference8DateTimeC0eF5RangeC07DefinedefG0OAEGMd, &_ss18_DictionaryStorageCy13SiriInference8DateTimeC0eF5RangeC07DefinedefG0OAEGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v10, v6, &_s13SiriInference8DateTimeC0cD5RangeC07DefinedcdE0O_ACtMd, &_s13SiriInference8DateTimeC0cD5RangeC07DefinedcdE0O_ACtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DateTime.DateTimeRange.DefinedDateTimeRange();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime16StringKeyedValueVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14SiriKitRuntime16StringKeyedValueVtMd, &_sSS_14SiriKitRuntime16StringKeyedValueVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime16StringKeyedValueVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v10, v6, &_sSS_14SiriKitRuntime16StringKeyedValueVtMd, &_sSS_14SiriKitRuntime16StringKeyedValueVtMR);
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
      v19 = type metadata accessor for StringKeyedValue();
      result = outlined init with take of StringKeyedValue(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for StringKeyedValue);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SDySSypGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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
      outlined init with copy of ReferenceResolutionClientProtocol?(v17, v13, a2, v28);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16SiriMessageTypes6UserIDV_So15AFSpeechPackageCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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
      outlined init with copy of ReferenceResolutionClientProtocol?(v17, v13, a2, v28);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UserID();
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMd, &_ss18_DictionaryStorageCySS14SiriKitRuntime40ConversationMessageDispatchingBridgeBaseC0g7HandlerJ0CyAC0fI0C_GGMR);
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
      outlined init with copy of ReferenceResolutionClientProtocol?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
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
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So11SMTTCUStateVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo11SMTTCUStateVGMd, &_ss18_DictionaryStorageCySSSo11SMTTCUStateVGMR);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SiriCam15ActionCandidateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_7SiriCam15ActionCandidateVtMd, &_s10Foundation4UUIDV_7SiriCam15ActionCandidateVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV7SiriCam15ActionCandidateVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v10, v6, &_s10Foundation4UUIDV_7SiriCam15ActionCandidateVtMd, &_s10Foundation4UUIDV_7SiriCam15ActionCandidateVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for ActionCandidate();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo16LNSystemProtocolC_Say14SiriKitRuntime18LinkActionMetadataVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMd, &_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So16LNSystemProtocolCSg12SiriOntology7UsoTaskCcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo16LNSystemProtocolCSg12SiriOntology7UsoTaskCcGMd, &_ss18_DictionaryStorageCySSSo16LNSystemProtocolCSg12SiriOntology7UsoTaskCcGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

uint64_t specialized ActionGenerator.dedupeAppShortcuts(parses:)(uint64_t a1)
{
  v94 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v98 = *(v94 - 8);
  v2 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow32AppShortcutGeneralizedInvocationVSgMd, &_s11SiriKitFlow32AppShortcutGeneralizedInvocationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v97 = &v84 - v6;
  v96 = type metadata accessor for AppShortcutGeneralizedInvocation();
  v87 = *(v96 - 8);
  v7 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v84 - v15;
  v109 = type metadata accessor for Siri_Nlu_External_Parser();
  v16 = *(v109 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Siri_Nlu_External_UserParse();
  v19 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v95 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v107 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v113 = &v84 - v26;
  v29.n128_f64[0] = MEMORY[0x1EEE9AC00](v27);
  v31 = &v84 - v30;
  v32 = *(a1 + 16);
  v86 = a1;
  v88 = v28;
  v85 = v32;
  if (v32)
  {
    v34 = *(v28 + 16);
    v33 = v28 + 16;
    v105 = v34;
    v90 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v35 = a1 + v90;
    v36 = *(v33 + 56);
    v103 = (v16 + 8);
    v102 = *MEMORY[0x1E69D0970];
    v100 = (v10 + 8);
    v101 = (v10 + 104);
    v89 = (v33 - 8);
    v106 = v33;
    v99 = (v33 + 16);
    v111 = MEMORY[0x1E69E7CC0];
    v37 = v32;
    v91 = v13;
    v104 = v36;
    v38 = v114;
    (v34)(v31, v35, v114, v29);
    while (1)
    {
      v40 = v108;
      Siri_Nlu_External_UserParse.parser.getter();
      v41 = v110;
      Siri_Nlu_External_Parser.parserID.getter();
      (*v103)(v40, v109);
      (*v101)(v13, v102, v9);
      lazy protocol witness table accessor for type MessageBusActor and conformance MessageBusActor(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x1E69D0990]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v42 = *v100;
      (*v100)(v13, v9);
      v42(v41, v9);
      if (v116 == v115)
      {
        v43 = *v99;
        (*v99)(v107, v31, v38);
        v44 = v111;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v44;
        v117 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 16) + 1, 1);
          v46 = v117;
        }

        v48 = *(v46 + 16);
        v47 = *(v46 + 24);
        if (v48 >= v47 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1);
          v46 = v117;
        }

        *(v46 + 16) = v48 + 1;
        v111 = v46;
        v49 = v46 + v90 + v48 * v104;
        v39 = v104;
        v43(v49, v107, v114);
        v13 = v91;
      }

      else
      {
        (*v89)(v31, v38);
        v39 = v104;
      }

      v35 += v39;
      if (!--v37)
      {
        break;
      }

      (v105)(v31, v35, v38, v29);
    }
  }

  else
  {
    v111 = MEMORY[0x1E69E7CC0];
  }

  v50 = *(v111 + 16);
  if (v50)
  {
    v51 = *(v88 + 16);
    v52 = v111 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v108 = *(v88 + 72);
    v109 = v51;
    v110 = (v88 + 16);
    v53 = (v88 + 8);
    v106 = v98 + 8;
    v107 = (v98 + 16);
    v54 = (v87 + 48);
    v104 = (v87 + 56);
    v105 = (v87 + 32);
    v55 = MEMORY[0x1E69E7CC0];
    v56 = v113;
    v57 = v114;
    v58 = v97;
    v59 = v96;
    for (i = v51(v113, v52, v114, v29); ; i = v109(v56, v52, v57, v61))
    {
      v62 = MEMORY[0x1E129C0F0](i);
      if (!*(v62 + 16))
      {
        break;
      }

      v63 = v98;
      v64 = v93;
      v65 = v94;
      (*(v98 + 16))(v93, v62 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v94);
      v58 = v97;

      LOBYTE(v117) = 1;
      Siri_Nlu_External_UserDialogAct.extractGeneralizedAppShortcutInvocation(groupIndex:)();
      (*v53)(v113, v57);
      v66 = *(v63 + 8);
      v59 = v96;
      v67 = v64;
      v56 = v113;
      v66(v67, v65);
      if ((*v54)(v58, 1, v59) == 1)
      {
        goto LABEL_16;
      }

      v68 = *v105;
      (*v105)(v92, v58, v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55, &_ss23_ContiguousArrayStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMR, MEMORY[0x1E69D00D0]);
      }

      v70 = *(v55 + 2);
      v69 = *(v55 + 3);
      if (v70 >= v69 >> 1)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v70 + 1, 1, v55, &_ss23_ContiguousArrayStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow32AppShortcutGeneralizedInvocationVGMR, MEMORY[0x1E69D00D0]);
      }

      *(v55 + 2) = v70 + 1;
      v68(&v55[((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v70], v92, v59);
      v56 = v113;
      v57 = v114;
LABEL_17:
      v52 += v108;
      if (!--v50)
      {

        goto LABEL_28;
      }
    }

    (*v53)(v56, v57);
    (*v104)(v58, 1, 1, v59);
LABEL_16:
    outlined destroy of ReferenceResolutionClientProtocol?(v58, &_s11SiriKitFlow32AppShortcutGeneralizedInvocationVSgMd, &_s11SiriKitFlow32AppShortcutGeneralizedInvocationVSgMR);
    goto LABEL_17;
  }

  v55 = MEMORY[0x1E69E7CC0];
  v57 = v114;
LABEL_28:
  v71 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11SiriKitFlow32AppShortcutGeneralizedInvocationV_SayAFGTt0g5Tf4g_n(v55);

  v72 = v86;
  if (*(v71 + 16))
  {
    v73 = v85;
    if (v85)
    {
      v113 = *(v88 + 16);
      v74 = *(v88 + 72);
      v110 = ((*(v88 + 80) + 32) & ~*(v88 + 80));
      v75 = &v110[v86];
      v111 = v88 + 8;
      v76 = (v88 + 32);
      v72 = MEMORY[0x1E69E7CC0];
      v88 += 16;
      do
      {
        v77 = v112;
        (v113)(v112, v75, v57);
        if (closure #3 in ActionGenerator.dedupeAppShortcuts(parses:)(v77, v71))
        {
          v78 = *v76;
          (*v76)(v95, v112, v57);
          v79 = swift_isUniquelyReferenced_nonNull_native();
          v117 = v72;
          if ((v79 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 16) + 1, 1);
            v72 = v117;
          }

          v81 = *(v72 + 16);
          v80 = *(v72 + 24);
          if (v81 >= v80 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v80 > 1, v81 + 1, 1);
            v72 = v117;
          }

          *(v72 + 16) = v81 + 1;
          v82 = &v110[v72 + v81 * v74];
          v57 = v114;
          v78(v82, v95, v114);
        }

        else
        {
          (*v111)(v112, v57);
        }

        v75 += v74;
        --v73;
      }

      while (v73);
    }

    else
    {
      v72 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
  }

  return v72;
}

char *initializeBufferWithCopyOfBuffer for ParseUserDataAttachment(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for Parse();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  }

  return a1;
}

uint64_t destroy for ParseUserDataAttachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for Parse();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = *(a1 + *(a2 + 24));
}

uint64_t initializeWithCopy for ParseUserDataAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Parse();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t assignWithCopy for ParseUserDataAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Parse();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t initializeWithTake for ParseUserDataAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Parse();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithTake for ParseUserDataAttachment(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for Parse();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t type metadata completion function for ParseUserDataAttachment()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for Parse();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of StringKeyedValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringKeyedValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for LNSystemProtocol()
{
  result = lazy cache variable for type metadata for LNSystemProtocol;
  if (!lazy cache variable for type metadata for LNSystemProtocol)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSystemProtocol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPhoneFeature and conformance SiriPhoneFeature()
{
  result = lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature;
  if (!lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature;
  if (!lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature;
  if (!lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPhoneFeature and conformance SiriPhoneFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature()
{
  result = lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature;
  if (!lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature;
  if (!lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature;
  if (!lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriPlaybackControlFeature and conformance SiriPlaybackControlFeature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags()
{
  result = lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags;
  if (!lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags;
  if (!lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags;
  if (!lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbiguityFeatureFlags and conformance AmbiguityFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags()
{
  result = lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags;
  if (!lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags;
  if (!lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags;
  if (!lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SydneyConversationFeatureFlags and conformance SydneyConversationFeatureFlags);
  }

  return result;
}

uint64_t _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t specialized logAction<A>(label:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(void **__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v50 = a1;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.executor);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = a4;
    v14 = swift_slowAlloc();
    v46 = v14;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, a2, &v46);
    _os_log_impl(&dword_1DC659000, v10, v11, "==>> %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v15 = v14;
    a4 = v13;
    v5 = v4;
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  a3(&v42);
  if (v5)
  {
    v16 = 1;
    LOBYTE(v42) = 1;
    v17 = v5;
  }

  else
  {
    v16 = 0;
    v45 = 0;
    v17 = v42;
    v40 = v43;
    v41 = v44;
  }

  v46 = v17;
  v47 = v40;
  v48 = v41;
  v49 = v16;
  outlined init with copy of ReferenceResolutionClientProtocol?(&v46, &v42, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMd, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMR);
  if (v45)
  {
    v18 = v42;

    v19 = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v40 = v23;
      *v22 = 136315394;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, a2, &v40);
      *(v22 + 12) = 2080;
      v39[0] = v18;
      v24 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v40);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1DC659000, v20, v21, "<<== %s threw %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    outlined init with take of ReferenceResolutionClientProtocol(&v42, &v40);
    outlined init with copy of ReferenceResolutionClientProtocol(&v40, v39);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315394;
      *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, a2, &v38);
      *(v30 + 12) = 2080;
      outlined init with copy of ReferenceResolutionClientProtocol(v39, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime14AffinityScorer_pMd, &_s14SiriKitRuntime14AffinityScorer_pMR);
      v32 = String.init<A>(describing:)();
      v34 = v33;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v38);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_1DC659000, v28, v29, "<<== %s -> %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v30, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v39);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(&v46, &v42, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMd, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMR);
  if (v45)
  {
    *&v40 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
    return outlined destroy of ReferenceResolutionClientProtocol?(&v46, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMd, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMR);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v46, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMd, &_ss6ResultOy14SiriKitRuntime14AffinityScorer_ps5Error_pGMR);
    return outlined init with take of ReferenceResolutionClientProtocol(&v42, a4);
  }
}

uint64_t logAction<A>(label:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v90 = a6;
  v85 = a3;
  v86 = a4;
  v88 = a1;
  v83 = *(a5 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v81 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v79 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v79 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v92 = a5;
  v15 = type metadata accessor for Result();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v79 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v79 - v23;
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = __swift_project_value_buffer(v25, static Logger.executor);

  v84 = v26;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v87 = v14;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = a2;
    v33 = v24;
    v34 = v15;
    v35 = v16;
    v36 = v31;
    v94 = v31;
    *v30 = 136315138;
    v37 = v32;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v32, &v94);
    _os_log_impl(&dword_1DC659000, v27, v28, "==>> %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    v38 = v36;
    v16 = v35;
    v15 = v34;
    v24 = v33;
    MEMORY[0x1E12A2F50](v38, -1, -1);
    MEMORY[0x1E12A2F50](v30, -1, -1);
  }

  else
  {
    v37 = a2;
  }

  MEMORY[0x1EEE9AC00](v39);
  v40 = v91;
  v41 = v92;
  v43 = v85;
  v42 = v86;
  *(&v79 - 4) = v92;
  *(&v79 - 3) = v43;
  *(&v79 - 2) = v42;
  _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC(partial apply for closure #1 in logAction<A>(label:_:), v40, v24);
  v86 = *(v16 + 16);
  v86(v21, v24, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v21;
    v45 = v37;

    v46 = v44;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      LODWORD(v87) = v48;
      v50 = v49;
      v92 = swift_slowAlloc();
      v94 = v92;
      *v50 = 136315394;
      *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v45, &v94);
      *(v50 + 12) = 2080;
      v93 = v44;
      v51 = v44;
      v52 = String.init<A>(describing:)();
      v54 = v47;
      v55 = v24;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v94);

      *(v50 + 14) = v56;
      v24 = v55;
      _os_log_impl(&dword_1DC659000, v54, v87, "<<== %s threw %s", v50, 0x16u);
      v57 = v92;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v57, -1, -1);
      MEMORY[0x1E12A2F50](v50, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v85 = v16 + 16;
    v91 = v16;
    v58 = v87;
    v59 = v21;
    v60 = v83;
    (*(v83 + 32))(v87, v59, v41);
    v61 = *(v60 + 16);
    v62 = v82;
    v61(v82, v58, v41);
    v63 = v37;

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();

    LODWORD(v84) = v65;
    v66 = v65;
    v67 = v64;
    if (os_log_type_enabled(v64, v66))
    {
      v68 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v94 = v80;
      *v68 = 136315394;
      *(v68 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v63, &v94);
      *(v68 + 12) = 2080;
      v69 = v92;
      v61(v81, v62, v92);
      v70 = String.init<A>(describing:)();
      v72 = v71;
      v88 = v24;
      v73 = *(v83 + 8);
      v73(v62, v69);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v94);

      *(v68 + 14) = v74;
      _os_log_impl(&dword_1DC659000, v67, v84, "<<== %s -> %s", v68, 0x16u);
      v75 = v80;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v75, -1, -1);
      MEMORY[0x1E12A2F50](v68, -1, -1);

      v73(v87, v69);
      v24 = v88;
    }

    else
    {

      v76 = *(v60 + 8);
      v77 = v92;
      v76(v62, v92);
      v76(v87, v77);
    }

    v16 = v91;
  }

  v86(v89, v24, v15);
  _ss6ResultOsRi_zRi0_zrlE3getxyq_YKF(v15, &v94, v90);
  return (*(v16 + 8))(v24, v15);
}

unint64_t AffinityScorer.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v13 = 0xD000000000000013;
  v14 = 0x80000001DCA7C680;
  (*(a2 + 24))(a1, a2);
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  MEMORY[0x1E12A1580](v9, v11);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v13;
}

uint64_t FixedAffinityScorer.score.getter()
{
  result = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score + 8);
  return result;
}

uint64_t FixedAffinityScorer.__allocating_init(score:)(uint64_t a1, char a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  UUID.init()();
  v8 = v7 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  return v7;
}

uint64_t FixedAffinityScorer.init(score:)(uint64_t a1, char a2)
{
  UUID.init()();
  v5 = v2 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score;
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return v2;
}

uint64_t FixedAffinityScorer.score(for:loopCheck:)()
{
  result = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime19FixedAffinityScorer_score + 8);
  return result;
}

uint64_t protocol witness for AffinityScorer.score(for:loopCheck:) in conformance FixedAffinityScorer()
{
  result = (*(**v0 + 104))();
  if (v1)
  {
    return v3;
  }

  return result;
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FixedAffinityScorer(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return AffinityScorer.debugDescription.getter(a1, WitnessTable);
}

uint64_t FixedAffinityScorer.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CachingAffinityScorer.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  UUID.init()();
  v4 = v3 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v4 = 0;
  *(v4 + 8) = 256;
  return v3;
}

uint64_t CachingAffinityScorer.init()()
{
  UUID.init()();
  v1 = v0 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v1 = 0;
  *(v1 + 8) = 256;
  return v0;
}

uint64_t CachingAffinityScorer.score(for:loopCheck:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = v2 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState + 9))
  {
    v23 = a1;
    v16 = v2;
    (*(v7 + 16))(v10, v2 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_id, v6, v12);
    v17 = specialized Set._Variant.insert(_:)(v14, v10);
    (*(v7 + 8))(v14, v6);
    if (v17)
    {
      result = (*(*v16 + 136))(v23, a2);
      if (!v3)
      {
        *v15 = result;
        *(v15 + 8) = v19 & 1;
        *(v15 + 9) = 0;
      }
    }

    else
    {
      lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
      swift_allocError();
      *v21 = 0;
      *(v21 + 8) = 1;
      return swift_willThrow();
    }
  }

  else
  {
    result = *v15;
    v20 = *(v15 + 8) & 1;
  }

  return result;
}

uint64_t CachingAffinityScorer.computeScore(for:loopCheck:)()
{
  lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
  swift_allocError();
  *v0 = 1;
  *(v0 + 8) = 1;
  return swift_willThrow();
}

uint64_t FixedAffinityScorer.deinit(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t FixedAffinityScorer.__deallocating_deinit(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AffinityScorer.score(for:loopCheck:) in conformance CachingAffinityScorer()
{
  result = (*(**v0 + 128))();
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for AffinityScorer.id.getter in conformance FixedAffinityScorer@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

unint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CachingAffinityScorer(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return AffinityScorer.debugDescription.getter(a1, WitnessTable);
}

uint64_t CombiningAffinityScorer.__allocating_init(children:reducer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = a1;
  v10 = (v9 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  *v10 = a2;
  v10[1] = a3;
  UUID.init()();
  v11 = v9 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v11 = 0;
  *(v11 + 8) = 256;
  return v9;
}

uint64_t CombiningAffinityScorer.init(children:reducer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = a1;
  v4 = (v3 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  *v4 = a2;
  v4[1] = a3;
  UUID.init()();
  v5 = v3 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v5 = 0;
  *(v5 + 8) = 256;
  return v3;
}

uint64_t CombiningAffinityScorer.computeScore(for:loopCheck:)()
{
  _StringGuts.grow(_:)(26);
  v1 = specialized AffinityScorer.debugDescription.getter();
  v3 = v2;

  MEMORY[0x1E12A1580](0xD000000000000015, 0x80000001DCA7C6A0);
  type metadata accessor for Input();
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x1E69D0100]);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E12A1580](v4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  v5 = specialized logAction<A>(label:_:)(v1, v3, partial apply for closure #1 in CombiningAffinityScorer.computeScore(for:loopCheck:));

  if (v0)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

void *closure #1 in CombiningAffinityScorer.computeScore(for:loopCheck:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children);
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  result = specialized Sequence.reduce<A>(_:_:)(0, 1, partial apply for closure #1 in closure #1 in CombiningAffinityScorer.computeScore(for:loopCheck:), v9, v6);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 8) = v8 & 1;
  }

  return result;
}

uint64_t closure #1 in closure #1 in CombiningAffinityScorer.computeScore(for:loopCheck:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  v12 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer + 8);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  result = (*(v14 + 32))(a4, a5, v13, v14);
  if (!v6)
  {
    result = v11(v18, v10, result, v16 & 1);
    *a6 = result;
    *(a6 + 8) = v17 & 1;
  }

  return result;
}

void *specialized Sequence.reduce<A>(_:_:)(void *result, char a2, void *(*a3)(void **__return_ptr, void **, uint64_t), uint64_t a4, uint64_t a5)
{
  v11 = result;
  v12 = a2 & 1;
  v6 = *(a5 + 16);
  if (v6)
  {
    v8 = a5 + 32;
    do
    {
      result = a3(&v9, &v11, v8);
      if (v5)
      {
        break;
      }

      result = v9;
      v11 = v9;
      v12 = v10;
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t closure #1 in static CombiningAffinityScorer.max(children:requireAll:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  v14 = *(a5 + 16);
  swift_beginAccess();
  *(a5 + 16) = 0;
  if (a4)
  {
    if (a6)
    {
      swift_beginAccess();
      if ((*(a7 + 16) & 1) == 0)
      {
        swift_beginAccess();
        *(a7 + 16) = 1;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.executor);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1DC659000, v16, v17, "CombiningAffinityScorer with requireAll got nil value, returning nil", v18, 2u);
        MEMORY[0x1E12A2F50](v18, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    if (a1 <= a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = a1;
    }

    if (v14)
    {
      v20 = a3;
    }

    else
    {
      v20 = 0;
    }

    if (a2)
    {
      return v20;
    }

    else
    {
      return v19;
    }
  }

  return a1;
}

uint64_t static CombiningAffinityScorer.max(children:requireAll:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = a2;
  *(v9 + 32) = v8;
  v10 = type metadata accessor for CombiningAffinityScorer(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = a1;
  v14 = (v13 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  *v14 = a4;
  v14[1] = v9;

  UUID.init()();
  v15 = v13 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v15 = 0;
  *(v15 + 8) = 256;
  return v13;
}

uint64_t closure #1 in static CombiningAffinityScorer.min(children:requireAll:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  v14 = *(a5 + 16);
  swift_beginAccess();
  *(a5 + 16) = 0;
  if (a4)
  {
    if (a6)
    {
      swift_beginAccess();
      if ((*(a7 + 16) & 1) == 0)
      {
        swift_beginAccess();
        *(a7 + 16) = 1;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.executor);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1DC659000, v16, v17, "CombiningAffinityScorer with requireAll got nil value, returning nil", v18, 2u);
        MEMORY[0x1E12A2F50](v18, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    if (a1 >= a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = a1;
    }

    if (v14)
    {
      v20 = a3;
    }

    else
    {
      v20 = 0;
    }

    if (a2)
    {
      return v20;
    }

    else
    {
      return v19;
    }
  }

  return a1;
}

uint64_t closure #1 in static CombiningAffinityScorer.sum(children:requireAll:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, unsigned __int8 a6, uint64_t a7)
{
  swift_beginAccess();
  v14 = *(a5 + 16);
  result = swift_beginAccess();
  *(a5 + 16) = 0;
  if (a4)
  {
    if (a6)
    {
      swift_beginAccess();
      if ((*(a7 + 16) & 1) == 0)
      {
        swift_beginAccess();
        *(a7 + 16) = 1;
      }

      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.executor);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1DC659000, v17, v18, "CombiningAffinityScorer with requireAll got nil value, returning nil", v19, 2u);
        MEMORY[0x1E12A2F50](v19, -1, -1);
      }

      return 0;
    }

    return a1;
  }

  if (a2)
  {
    if ((a6 ^ 1 | v14))
    {
      return a3;
    }

    else
    {
      return 0;
    }
  }

  v20 = __OFADD__(a1, a3);
  a1 += a3;
  if (!v20)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static CombiningAffinityScorer.first(children:)(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    return a3;
  }

  return result;
}

uint64_t static CombiningAffinityScorer.first(children:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombiningAffinityScorer(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = a1;
  v8 = (v7 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  *v8 = a2;
  v8[1] = 0;

  UUID.init()();
  v9 = v7 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v9 = 0;
  *(v9 + 8) = 256;
  return v7;
}

uint64_t closure #1 in static CombiningAffinityScorer.last(children:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return a3;
  }

  return result;
}

uint64_t static CombiningAffinityScorer.invert(child:fallbackValue:)(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime14AffinityScorer_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DCA66060;
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v6 + 32);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3 & 1;
  v8 = type metadata accessor for CombiningAffinityScorer(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children) = v6;
  v12 = (v11 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer);
  *v12 = partial apply for closure #1 in static CombiningAffinityScorer.invert(child:fallbackValue:);
  v12[1] = v7;
  UUID.init()();
  v13 = v11 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v13 = 0;
  *(v13 + 8) = 256;
  return v11;
}

uint64_t CombiningAffinityScorer.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children);

  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer + 8);
}

uint64_t CombiningAffinityScorer.deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children);

  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer + 8);

  return v0;
}

uint64_t CombiningAffinityScorer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_children);

  v4 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23CombiningAffinityScorer_reducer + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ComparingAffinityScorer.score.getter()
{
  result = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score + 8);
  return result;
}

uint64_t ComparingAffinityScorer.__allocating_init(score:comparison:_:_:)(uint64_t a1, char a2, char a3, uint64_t *a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  v14 = v13 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score;
  *v14 = a1;
  *(v14 + 8) = a2 & 1;
  *(v13 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison) = a3;
  outlined init with copy of ReferenceResolutionClientProtocol(a4, v13 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first);
  outlined init with copy of ReferenceResolutionClientProtocol?(a5, v13 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  UUID.init()();
  outlined destroy of ReferenceResolutionClientProtocol?(a5, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  v15 = v13 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v15 = 0;
  *(v15 + 8) = 256;
  return v13;
}

uint64_t ComparingAffinityScorer.init(score:comparison:_:_:)(uint64_t a1, char a2, char a3, uint64_t *a4, uint64_t a5)
{
  v8 = v5 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score;
  *v8 = a1;
  *(v8 + 8) = a2 & 1;
  *(v5 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison) = a3;
  outlined init with copy of ReferenceResolutionClientProtocol(a4, v5 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first);
  outlined init with copy of ReferenceResolutionClientProtocol?(a5, v5 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  UUID.init()();
  outlined destroy of ReferenceResolutionClientProtocol?(a5, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  v9 = v5 + OBJC_IVAR____TtC14SiriKitRuntime21CachingAffinityScorer_scoreState;
  *v9 = 0;
  *(v9 + 8) = 256;
  return v5;
}

uint64_t ComparingAffinityScorer.computeScore(for:loopCheck:)(uint64_t a1)
{
  result = AffinityValueComparison.evaluate(input:_:_:)(a1, (v1 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_first), v1 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_second, *(v1 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_comparison));
  if (!v2)
  {
    if (result)
    {
      result = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score);
      v4 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime23ComparingAffinityScorer_score + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AffinityValueComparison.evaluate(input:_:_:)(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 3u)
  {
    if (a4 > 5u)
    {
      if (a4 == 6)
      {
        v10 = a2[3];
        v11 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v10);
        v12 = (*(v11 + 8))(a1, v10, v11);
        if (!v4)
        {
          if (v13)
          {
            v14 = v12 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = 0;
          }

          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = 0xE000000000000000;
          }

          v16 = HIBYTE(v15) & 0xF;
          if ((v15 & 0x2000000000000000) == 0)
          {
            v16 = v14;
          }

          LOBYTE(a1) = v16 != 0;
        }
      }

      else
      {
        v28 = a2[3];
        v29 = a2[4];
        __swift_project_boxed_opaque_existential_1(a2, v28);
        v30 = (*(v29 + 8))(a1, v28, v29);
        if (!v4)
        {
          if (v31)
          {
            v32 = v30 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = 0;
          }

          if (v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = 0xE000000000000000;
          }

          v34 = HIBYTE(v33) & 0xF;
          if ((v33 & 0x2000000000000000) == 0)
          {
            v34 = v32;
          }

          LOBYTE(a1) = v34 == 0;
        }
      }

      return a1 & 1;
    }

    if (a4 == 4)
    {
      v9 = closure #5 in AffinityValueComparison.evaluate(input:_:_:);
    }

    else
    {
      v9 = closure #6 in AffinityValueComparison.evaluate(input:_:_:);
    }

    goto LABEL_23;
  }

  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v9 = closure #3 in AffinityValueComparison.evaluate(input:_:_:);
    }

    else
    {
      v9 = closure #4 in AffinityValueComparison.evaluate(input:_:_:);
    }

    goto LABEL_23;
  }

  v8 = closure #1 in AffinityValueComparison.evaluate(input:_:_:);
  if (a4)
  {
    v9 = closure #2 in AffinityValueComparison.evaluate(input:_:_:);
LABEL_23:
    v8 = v9;
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(a3, &v69, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
  if (!v70)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v69, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMd, &_s14SiriKitRuntime20AffinityValueFetcher_pSgMR);
    lazy protocol witness table accessor for type AffinityScoreError and conformance AffinityScoreError();
    swift_allocError();
    *v27 = 2;
    *(v27 + 8) = 1;
    swift_willThrow();
    return a1 & 1;
  }

  outlined init with take of ReferenceResolutionClientProtocol(&v69, v71);
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  v19 = (*(v18 + 8))(a1, v17, v18);
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    return a1 & 1;
  }

  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v23 = v72;
    v24 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v25 = (*(v24 + 8))(a1, v23, v24);
    v35 = v26;
    if (v26)
    {
      v74 = v25;
      v36 = (v8)(v21, v22);
      LOBYTE(a1) = v36;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static Logger.executor);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      v68 = v54;
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v69 = v56;
        *v55 = 136315906;
        v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v69);

        *(v55 + 4) = v57;
        v58 = 0xE100000000000000;
        v59 = 60;
        *(v55 + 12) = 2080;
        v60 = 15678;
        v61 = 15677;
        if (a4 != 4)
        {
          v61 = 15649;
        }

        if (a4 != 3)
        {
          v60 = v61;
        }

        v62 = 0xE100000000000000;
        v63 = 62;
        if (a4 != 1)
        {
          v63 = 15676;
          v62 = 0xE200000000000000;
        }

        if (a4)
        {
          v59 = v63;
          v58 = v62;
        }

        if (a4 <= 2u)
        {
          v64 = v59;
        }

        else
        {
          v64 = v60;
        }

        if (a4 <= 2u)
        {
          v65 = v58;
        }

        else
        {
          v65 = 0xE200000000000000;
        }

        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v69);

        *(v55 + 14) = v66;
        *(v55 + 22) = 2080;
        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v35, &v69);

        *(v55 + 24) = v67;
        *(v55 + 32) = 1024;
        *(v55 + 34) = a1 & 1;
        _os_log_impl(&dword_1DC659000, v53, v68, "AffinityValueComparison: %s %s %s -> %{BOOL}d", v55, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v56, -1, -1);
        MEMORY[0x1E12A2F50](v55, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      return a1 & 1;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.executor);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v69 = v41;
    v42 = 0xE100000000000000;
    v43 = 60;
    *v40 = 136315138;
    v44 = 15678;
    v45 = 15677;
    if (a4 != 4)
    {
      v45 = 15649;
    }

    if (a4 != 3)
    {
      v44 = v45;
    }

    v46 = 0xE100000000000000;
    v47 = 62;
    if (a4 != 1)
    {
      v47 = 15676;
      v46 = 0xE200000000000000;
    }

    if (a4)
    {
      v43 = v47;
      v42 = v46;
    }

    if (a4 <= 2u)
    {
      v48 = v43;
    }

    else
    {
      v48 = v44;
    }

    if (a4 <= 2u)
    {
      v49 = v42;
    }

    else
    {
      v49 = 0xE200000000000000;
    }

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v69);

    *(v40 + 4) = v50;
    _os_log_impl(&dword_1DC659000, v38, v39, "AffinityValueComparison: op=%s, at least one arg was nil; returning false", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1E12A2F50](v41, -1, -1);
    MEMORY[0x1E12A2F50](v40, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  LOBYTE(a1) = 0;
  return a1 & 1;
}