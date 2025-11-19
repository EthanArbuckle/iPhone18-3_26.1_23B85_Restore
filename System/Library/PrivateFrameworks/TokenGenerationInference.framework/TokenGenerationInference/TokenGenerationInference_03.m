uint64_t sub_220967958(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for StopSequenceMonitor();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for ToolCallParser();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration12FinishReasonOSgMd);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[16];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd);
  v17 = *(*(v16 - 8) + 48);
  v18 = &a1[a3[20]];

  return v17(v18, a2, v16);
}

uint64_t outlined init with take of DataStreamState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataStreamState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for DataStreamState(0);
      return outlined assign with take of AppAssetGarbageCollector.Manifest.Entry(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for DataStreamState);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), MEMORY[0x277D0DF40], specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), MEMORY[0x277D0DF20], specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), MEMORY[0x277D0DF48], specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), MEMORY[0x277D0DF30], specialized _NativeDictionary._insert(at:key:value:));
}

{
  v4 = v3;
  v8 = type metadata accessor for Prompt.SpecialToken();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
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
  *(v20[7] + 8 * v14) = a1;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      lazy protocol witness table accessor for type UUID and conformance UUID(v23, v24);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t TG_OnDeviceInferenceProvider.toolCallDeltaEventForDataStreamState(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for ToolCallParser.FunctionDelta();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for DataStreamState(0);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.toolCallDeltaEventForDataStreamState(_:_:), 0, 0);
}

uint64_t TG_OnDeviceInferenceProvider.toolCallDeltaEventForDataStreamState(_:_:)()
{
  v1 = v0[9];
  outlined init with copy of OnDeviceInferenceAssetObjectImageTokenizer(v0[3], v1, type metadata accessor for DataStreamState);
  v4 = *(v1 + 40);
  v3 = (v1 + 40);
  v2 = v4;
  if (v4[2])
  {
    v5 = (*(v0[7] + 16))(v0[8], v2 + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);
    v8 = v2[2];
    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v2;
      if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v2[3] >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v2);
        *v3 = v2;
      }

      v14 = v0[5];
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
      *v3 = v2;
      UUID.uuidString.getter();
      UUID.uuidString.getter();
      ToolCallParser.FunctionDelta.toolCallID.getter();
      ToolCallParser.FunctionDelta.name.getter();
      ToolCallParser.FunctionDelta.arguments.getter();
      PromptCompletionEventCandidateToolCallDelta.init(responseIdentifier:candidateIdentifier:toolCallIdentifier:functionName:argumentsDelta:)();
      v6 = *(v14 + 176);
      v0[10] = v6;
      v5 = TG_OnDeviceInferenceProvider.toolCallDeltaEventForDataStreamState(_:_:);
      v7 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    v10 = v0[2];
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[9], type metadata accessor for DataStreamState);
    v11 = type metadata accessor for PromptCompletionEventCandidateToolCallDelta();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

    v12 = v0[1];

    return v12();
  }
}

{
  DataStreamStateManager.updateState(uuid:state:)(*(v0 + 32), *(v0 + 72));

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.toolCallDeltaEventForDataStreamState(_:_:), 0, 0);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[2];
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[9], type metadata accessor for DataStreamState);
  v2 = type metadata accessor for PromptCompletionEventCandidateToolCallDelta();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t TG_OnDeviceInferenceProvider.textDeltaEventForDataStreamState(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Token();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for DataStreamState(0);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.textDeltaEventForDataStreamState(_:_:), 0, 0);
}

uint64_t TG_OnDeviceInferenceProvider.textDeltaEventForDataStreamState(_:_:)()
{
  v1 = v0[9];
  outlined init with copy of OnDeviceInferenceAssetObjectImageTokenizer(v0[3], v1, type metadata accessor for DataStreamState);
  v4 = *(v1 + 32);
  v3 = (v1 + 32);
  v2 = v4;
  if (v4[2])
  {
    v5 = (*(v0[7] + 16))(v0[8], v2 + ((*(v0[7] + 80) + 32) & ~*(v0[7] + 80)), v0[6]);
    v8 = v2[2];
    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v2;
      if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v2[3] >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v2);
        *v3 = v2;
      }

      v10 = v0[5];
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
      *v3 = v2;
      UUID.uuidString.getter();
      UUID.uuidString.getter();
      Token.text.getter();
      PromptCompletionEventCandidateTextDelta.init(responseIdentifier:candidateIdentifier:segmentIndex:textDelta:)();
      v6 = *(v10 + 176);
      v0[10] = v6;
      v5 = TG_OnDeviceInferenceProvider.textDeltaEventForDataStreamState(_:_:);
      v7 = 0;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    v11 = v0[2];
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[9], type metadata accessor for DataStreamState);
    v12 = type metadata accessor for PromptCompletionEventCandidateTextDelta();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

    v13 = v0[1];

    return v13();
  }
}

{
  DataStreamStateManager.updateState(uuid:state:)(*(v0 + 32), *(v0 + 72));

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.textDeltaEventForDataStreamState(_:_:), 0, 0);
}

{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[2];
  outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v0[9], type metadata accessor for DataStreamState);
  v2 = type metadata accessor for PromptCompletionEventCandidateTextDelta();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return TwoStageSpeculativeDecoder.decodeNextChunk()();
}

uint64_t TwoStageSpeculativeDecoder.generateDraftTokens()()
{
  v1 = v0[84];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220AE8A30;
  *(inited + 32) = *(v1 + 104);
  v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSi_Tt0g5Tf4g_n(inited);
  v0[85] = v3;
  swift_setDeallocating();
  v0[73] = v3;
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 16, (v0 + 24));
  v5 = v0[27];
  v4 = v0[28];
  __swift_project_boxed_opaque_existential_1(v0 + 24, v5);
  v6 = swift_allocObject();
  v0[86] = v6;
  *(v6 + 16) = xmmword_220AE8A30;
  *(v6 + 32) = *(v1 + 56);
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 272, (v0 + 29));
  v7 = swift_task_alloc();
  v0[87] = v7;
  *v7 = v0;
  v7[1] = TwoStageSpeculativeDecoder.generateDraftTokens();

  return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v6, (v0 + 29), v5, v4);
}

{
  *(v1 + 672) = v0;

  return MEMORY[0x2822009F8](TwoStageSpeculativeDecoder.generateDraftTokens(), 0, 0);
}

{
  v67 = v0;
  v66[5] = *MEMORY[0x277D85DE8];
  v1 = v0[88];
  if (!*(v1 + 16))
  {
LABEL_60:

    __break(1u);
  }

  v2 = v0[84];
  outlined init with copy of DeterministicLanguageModelProtocol(v1 + 32, (v0 + 19));

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v3 = TwoStageSpeculativeDecoder.makeDraftTokens(logits:draftNode:targetNode:)(v0 + 19, *(v2 + 56), *(v2 + 104));
  v0[81] = v3;
  v4 = *(v3 + 16);
  if (!v4)
  {
    v25 = v0[85];
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v25 + 16), 0);
      v64 = specialized Sequence._copySequenceContents(initializing:)(v66, v27 + 4, v26, v25);
      v20 = v66[0];
      v5 = v66[4];

      result = outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
      if (v64 != v26)
      {
        __break(1u);
LABEL_21:
        v24 = result;
        goto LABEL_22;
      }
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v35 = v0[89];
    v65[0] = v27;
    specialized MutableCollection<>.sort(by:)(v65);
    if (v35)
    {
      goto LABEL_51;
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 19));

    v54 = v65[0];
    v36 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  v5 = (v0 + 73);
  v60 = v0 + 78;
  v61 = v0 + 79;
  v66[0] = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v6 = v66[0];
  v7 = *(v66[0] + 16);
  v8 = 32;
  do
  {
    v9 = *(v3 + v8);
    v66[0] = v6;
    v10 = *(v6 + 24);
    if (v7 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
      v6 = v66[0];
    }

    *(v6 + 16) = v7 + 1;
    *(v6 + 8 * v7 + 32) = v9;
    v8 += 24;
    ++v7;
    --v4;
  }

  while (v4);

  v11 = *(v6 + 16);
  if (v11)
  {
    v12 = (v6 + 32);
    do
    {
      v13 = *v12++;
      specialized Set._Variant.insert(_:)(v66, v13);
      --v11;
    }

    while (v11);
  }

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v0[90] = __swift_project_value_buffer(v14, static Log.device);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *(v3 + 16);
    _os_log_impl(&dword_220940000, v15, v16, "Tree layer 0 speculated %ld tokens", v17, 0xCu);
    MEMORY[0x223D90A10](v17, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay24TokenGenerationInference0D8TreeNodeCGGMd);
  result = swift_initStackObject();
  v0[91] = result;
  *(result + 16) = xmmword_220AE8A30;
  v19 = *(v3 + 16);
  v20 = MEMORY[0x277D84F90];
  v63 = result;
  if (!v19)
  {
    goto LABEL_21;
  }

  v66[0] = MEMORY[0x277D84F90];

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for TokenTreeNode();
  v21 = 48;
  do
  {
    v22 = *(v3 + v21);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v20;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v21 += 24;
    --v19;
  }

  while (v19);

  v20 = v66[0];
  v24 = v63;
LABEL_22:
  v28 = v0[84];
  *(v24 + 32) = v20;
  v29 = *(v28 + 312);
  v0[92] = v29;
  if (v29 < 1)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v29 != 1)
  {
    swift_beginAccess();
    v0[95] = v3;
    v0[94] = v24;
    v0[93] = 1;
    if (v0[92] != 1)
    {
      v40 = *(v3 + 16);
      v41 = MEMORY[0x277D84F90];
      if (v40)
      {
        v42 = v61;
        *v61 = MEMORY[0x277D84F90];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
        v41 = *v61;
        v43 = *(*v61 + 16);
        v44 = 40;
        do
        {
          v45 = *(v3 + v44);
          *v42 = v41;
          v46 = *(v41 + 24);
          if (v43 >= v46 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v43 + 1, 1);
            v42 = v61;
            v41 = *v61;
          }

          *(v41 + 16) = v43 + 1;
          *(v41 + 8 * v43 + 32) = v45;
          v44 += 24;
          ++v43;
          --v40;
        }

        while (v40);

        v47 = *(v3 + 16);
        v48 = MEMORY[0x277D84F90];
        if (v47)
        {
          v49 = v60;
          *v60 = MEMORY[0x277D84F90];

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47, 0);
          v48 = *v60;
          v50 = *(*v60 + 16);
          v51 = 32;
          do
          {
            v52 = *(v3 + v51);
            *v49 = v48;
            v53 = *(v48 + 24);
            if (v50 >= v53 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v50 + 1, 1);
              v49 = v60;
              v48 = *v60;
            }

            *(v48 + 16) = v50 + 1;
            *(v48 + 8 * v50 + 32) = v52;
            v51 += 24;
            ++v50;
            --v47;
          }

          while (v47);
        }
      }

      else
      {
        v48 = MEMORY[0x277D84F90];
      }

      v0[97] = v48;
      v0[96] = v41;
      v55 = v0[84];
      outlined init with copy of DeterministicLanguageModelProtocol(v55 + 16, (v0 + 49));
      v57 = v0[52];
      v56 = v0[53];
      __swift_project_boxed_opaque_existential_1(v0 + 49, v57);
      outlined init with copy of DeterministicLanguageModelProtocol(v55 + 272, (v0 + 54));
      v58 = swift_task_alloc();
      v0[98] = v58;
      *v58 = v0;
      v58[1] = TwoStageSpeculativeDecoder.generateDraftTokens();

      return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v41, (v0 + 54), v57, v56);
    }

    goto LABEL_58;
  }

  v30 = v0[84];
  v31 = *(v24 + 16);
  v32 = *(v30 + 336);
  v33 = __OFADD__(v32, v31);
  v34 = v32 + v31;
  if (v33)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v35 = v0[89];
  *(v30 + 336) = v34;
  if (!v31)
  {
    __break(1u);
    return result;
  }

  v36 = *(v24 + 32);
  v37 = *v5;
  v38 = *(*v5 + 16);
  if (v38)
  {
    v39 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v38, 0);
    v62 = specialized Sequence._copySequenceContents(initializing:)(v66, v39 + 4, v38, v37);

    outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
    if (v62 != v38)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v65[0] = v39;
  specialized MutableCollection<>.sort(by:)(v65);
  if (v35)
  {
LABEL_51:
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 19));

  v54 = v65[0];

LABEL_53:
  v59 = v0[1];

  return v59(v36, v54);
}

{
  v144 = v0;
  v143[5] = *MEMORY[0x277D85DE8];
  v1 = v0 + 76;
  v124 = (v0 + 77);
  v125 = v0 + 73;
  v118 = v0 + 78;
  v119 = v0 + 79;
  v123 = (v0 + 80);
  v130 = (v0 + 82);
  v2 = (v0 + 83);
  v3 = v0[99];
  v4 = v0[97];
  v5 = v0[96];
  v6 = v0[94];
  v127 = v0[93];
  __swift_destroy_boxed_opaque_existential_1((v0 + 49));
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v120 = v3 + 32;
  v131 = v4;
  v132 = v5;
  v0[75] = MEMORY[0x277D84F90];
  v128 = v4 + 32;
  v129 = v5 + 32;
  v133 = v6;
  v126 = v6 + 24;
  v0[74] = v8;
  v139 = v0;
  v121 = v3;
  v122 = v0 + 76;
  v136 = (v0 + 83);
LABEL_2:
  v9 = *(v3 + 16);
  v10 = 0uLL;
  if (v7 == v9)
  {
    v11 = 0uLL;
    v12 = 0uLL;
  }

  else
  {
    if (v7 >= v9)
    {
      goto LABEL_116;
    }

    v6 = v7 + 1;
    v0[2] = v7;
    outlined init with copy of DeterministicLanguageModelProtocol(v120 + 40 * v7, (v0 + 3));
    v10 = *(v0 + 1);
    v11 = *(v0 + 2);
    v7 = v6;
    v12 = *(v0 + 3);
  }

  *(v0 + 4) = v10;
  *(v0 + 5) = v11;
  *(v0 + 6) = v12;
  if (!v12)
  {
    v6 = v0[97];

    swift_beginAccess();
    v4 = v0[75];
    v3 = v4 >> 62;
    if (!(v4 >> 62))
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_118;
      }

      goto LABEL_87;
    }

LABEL_117:
    if (!__CocoaSet.count.getter())
    {
LABEL_118:

      v81 = v0[95];
      v82 = v0[94];
      while (1)
      {
        v106 = v0[84];
        v107 = v82[2];
        v108 = *(v106 + 336);
        v65 = __OFADD__(v108, v107);
        v109 = v108 + v107;
        if (!v65)
        {
          break;
        }

        __break(1u);
LABEL_133:
        v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v81, 1, v82);
LABEL_88:
        v82[2] = v81;
        v82[v2 + 4] = v4;
        v81 = v0[74];
        v0[81] = v81;

        v6 = Logger.logObject.getter();
        v83 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v6, v83))
        {
          v84 = v0[93];
          v2 = swift_slowAlloc();
          *v2 = 134218240;
          *(v2 + 4) = v84;
          *(v2 + 12) = 2048;
          if (v3)
          {
            v85 = __CocoaSet.count.getter();
          }

          else
          {
            v85 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v2 + 14) = v85;
          _os_log_impl(&dword_220940000, v6, v83, "Tree layer %ld speculated %ld tokens", v2, 0x16u);
          MEMORY[0x223D90A10](v2, -1, -1);
        }

        v86 = v0[93];
        v3 = v0[92];

        if (v86 + 1 != v3)
        {
          v87 = v0[93] + 1;
          v0[95] = v81;
          v0[94] = v82;
          v0[93] = v87;
          if (v87 != v0[92])
          {
            v88 = *(v81 + 16);
            v89 = MEMORY[0x277D84F90];
            if (v88)
            {
              *v119 = MEMORY[0x277D84F90];

              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v88, 0);
              v90 = v119;
              v89 = *v119;
              v91 = *(*v119 + 16);
              v92 = 40;
              do
              {
                v93 = *(v81 + v92);
                *v90 = v89;
                v94 = *(v89 + 24);
                if (v91 >= v94 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v91 + 1, 1);
                  v90 = v119;
                  v89 = *v119;
                }

                *(v89 + 16) = v91 + 1;
                *(v89 + 8 * v91 + 32) = v93;
                v92 += 24;
                ++v91;
                --v88;
              }

              while (v88);

              v95 = *(v81 + 16);
              v96 = MEMORY[0x277D84F90];
              if (v95)
              {
                v97 = v118;
                *v118 = MEMORY[0x277D84F90];

                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95, 0);
                v96 = *v118;
                v98 = *(*v118 + 16);
                v99 = 32;
                do
                {
                  v100 = *(v81 + v99);
                  *v97 = v96;
                  v101 = *(v96 + 24);
                  if (v98 >= v101 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v98 + 1, 1);
                    v97 = v118;
                    v96 = *v118;
                  }

                  *(v96 + 16) = v98 + 1;
                  *(v96 + 8 * v98 + 32) = v100;
                  v99 += 24;
                  ++v98;
                  --v95;
                }

                while (v95);
              }
            }

            else
            {
              v96 = MEMORY[0x277D84F90];
            }

            v0[97] = v96;
            v0[96] = v89;
            v102 = v0[84];
            outlined init with copy of DeterministicLanguageModelProtocol(v102 + 16, (v0 + 49));
            v103 = v0[52];
            v104 = v0[53];
            __swift_project_boxed_opaque_existential_1(v0 + 49, v103);
            outlined init with copy of DeterministicLanguageModelProtocol(v102 + 272, (v0 + 54));
            v105 = swift_task_alloc();
            v0[98] = v105;
            *v105 = v0;
            v105[1] = TwoStageSpeculativeDecoder.generateDraftTokens();

            return DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(v89, (v0 + 54), v103, v104);
          }

LABEL_136:
          __break(1u);
        }
      }

      v110 = v0[100];
      *(v106 + 336) = v109;
      if (!v107)
      {
        __break(1u);
        return result;
      }

      v111 = v82[4];
      v112 = *v125;
      v113 = *(*v125 + 16);
      if (!v113)
      {

        v114 = MEMORY[0x277D84F90];
LABEL_125:
        v143[0] = v114;
        specialized MutableCollection<>.sort(by:)(v143);
        if (v110)
        {
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1((v0 + 19));

          v116 = v143[0];

          v117 = v0[1];

          return v117(v111, v116);
        }
      }

      v114 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v113, 0);
      v115 = specialized Sequence._copySequenceContents(initializing:)(v143, v114 + 4, v113, v112);

      outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
      if (v115 == v113)
      {
        v0 = v139;
        goto LABEL_125;
      }

LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

LABEL_87:
    v2 = *(v133 + 16);
    v6 = *(v133 + 24);
    v81 = v2 + 1;

    v82 = v0[94];
    if (v2 < v6 >> 1)
    {
      goto LABEL_88;
    }

    goto LABEL_133;
  }

  v134 = v7;
  v140 = v10;
  outlined init with take of RandomNumberGenerator((v0 + 9), (v0 + 59));
  if ((v140 & 0x8000000000000000) != 0)
  {
    goto LABEL_111;
  }

  if (v140 >= *(v132 + 16))
  {
    goto LABEL_112;
  }

  if (v140 >= *(v131 + 16))
  {
    goto LABEL_113;
  }

  v13 = v0[84];
  v135 = v140;
  v137 = *(v128 + 8 * v140);
  v138 = *(v129 + 8 * v140);
  v14 = v0[62];
  v15 = v0[63];
  __swift_project_boxed_opaque_existential_1(v0 + 59, v14);
  v16 = (*(v15 + 40))(*(v13 + 128), v14, v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v8;
    *v1 = v8;
    v19 = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v20 = v19;
    v8 = *v1;
    v21 = *(*v1 + 16);
    v22 = 32;
    do
    {
      v23 = *(v20 + v22);
      *v1 = v8;
      v24 = *(v8 + 24);
      if (v21 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v21 + 1, 1);
        v20 = v19;
        v8 = *v1;
      }

      *(v8 + 16) = v21 + 1;
      *(v8 + 8 * v21 + 32) = v23;
      v22 += 4;
      ++v21;
      --v17;
    }

    while (v17);

    v2 = v136;
    v25 = *(v8 + 16);
    if (v25)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v18 = v8;
    v25 = *(v8 + 16);
    if (v25)
    {
LABEL_16:
      *v124 = v18;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
      v18 = *v124;
      v26 = 32;
      do
      {
        v27 = v139;
        v28 = v139[84];
        v29 = *(v8 + v26);
        outlined init with copy of DeterministicLanguageModelProtocol(v28 + 64, (v139 + 44));
        v30 = v139[47];
        v31 = v139[48];
        __swift_project_boxed_opaque_existential_1(v27 + 44, v27[47]);
        v141 = (*(v31 + 16))(v137, v29, 0, v30, v31);
        outlined init with copy of DeterministicLanguageModelProtocol(v28 + 16, (v139 + 39));
        v32 = v139[42];
        v33 = v139[43];
        __swift_project_boxed_opaque_existential_1(v27 + 39, v27[42]);
        v34 = (*(v33 + 16))(v138, v29, 0, v32, v33);
        __swift_destroy_boxed_opaque_existential_1((v139 + 39));
        __swift_destroy_boxed_opaque_existential_1((v139 + 44));
        v139[77] = v18;
        v36 = v18[2];
        v35 = v18[3];
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
          v18 = *v124;
        }

        v18[2] = v36 + 1;
        v37 = &v18[3 * v36];
        v37[4] = v141;
        v37[5] = v34;
        v37[6] = v29;
        v26 += 8;
        --v25;
      }

      while (v25);

      v2 = v136;
      v38 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }
  }

  v38 = v18;
LABEL_23:

  v0 = v139;
  specialized Array.append<A>(contentsOf:)(v39);
  v4 = v18[2];
  v142 = v18;
  if (v4)
  {
    *v123 = v38;
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for TokenTreeNode();
    v40 = (v18 + 6);
    v41 = v4;
    do
    {
      v42 = *v40;
      v40 += 3;
      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      *(v43 + 24) = v38;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v41;
    }

    while (v41);
    v44 = *v123;
    v0 = v139;
    v2 = v136;
  }

  else
  {
    v44 = v38;
  }

  v3 = v0[93];
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v45);
  swift_endAccess();
  v6 = v130;
  if (v3 > *(v133 + 16))
  {
    goto LABEL_114;
  }

  v3 = *(v126 + 8 * v127);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v46 = MEMORY[0x223D8EEA0](v135, v3);
  }

  else
  {
    if (v135 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_115;
    }

    v46 = *(v3 + 8 * v135 + 32);
  }

  *(v46 + 24) = v44;

  if (v4)
  {
    *v130 = v38;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v38 = *v130;
    v47 = *(*v130 + 16);
    v48 = 4;
    v49 = v142;
    do
    {
      v50 = v49[v48];
      *v130 = v38;
      v51 = v38[3];
      if (v47 >= v51 >> 1)
      {
        v52 = v49;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v47 + 1, 1);
        v49 = v52;
        v38 = *v130;
      }

      v38[2] = v47 + 1;
      v38[v47 + 4] = v50;
      v48 += 3;
      ++v47;
      --v4;
    }

    while (v4);

    v2 = v136;
    v53 = v38[2];
    if (!v53)
    {
LABEL_78:

      goto LABEL_80;
    }
  }

  else
  {

    v53 = v38[2];
    if (!v53)
    {
      goto LABEL_78;
    }
  }

  v54 = 0;
  v6 = (v38 + 4);
  v0 = v125;
  v4 = *v125;
  while (1)
  {
    v55 = v4 + 56;
    while (1)
    {
      v3 = *(v6 + 8 * v54++);
      v56 = MEMORY[0x223D8F400](*(v4 + 40), v3);
      v57 = -1 << *(v4 + 32);
      v58 = v56 & ~v57;
      if (((*(v55 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
      {
        break;
      }

      v59 = ~v57;
      while (*(*(v4 + 48) + 8 * v58) != v3)
      {
        v58 = (v58 + 1) & v59;
        if (((*(v55 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      if (v54 == v53)
      {
        goto LABEL_79;
      }
    }

LABEL_47:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v4;
    if (*(v4 + 24) > *(v4 + 16))
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v6 = v4;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd);
        v67 = static _SetStorage.copy(original:)();
        v6 = v67;
        v68 = *(v4 + 16);
        if (v68)
        {
          v69 = (v67 + 56);
          v70 = ((1 << *(v6 + 32)) + 63) >> 6;
          if (v6 != v4 || v69 >= v55 + 8 * v70)
          {
            memmove(v69, (v4 + 56), 8 * v70);
            v68 = *(v4 + 16);
          }

          v71 = 0;
          *(v6 + 16) = v68;
          v72 = 1 << *(v4 + 32);
          if (v72 < 64)
          {
            v73 = ~(-1 << v72);
          }

          else
          {
            v73 = -1;
          }

          v74 = v73 & *(v4 + 56);
          v75 = (v72 + 63) >> 6;
          if (v74)
          {
LABEL_68:
            v76 = __clz(__rbit64(v74));
            v74 &= v74 - 1;
            v77 = v76 | (v71 << 6);
            goto LABEL_74;
          }

LABEL_69:
          v78 = v71;
          while (1)
          {
            v71 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
              break;
            }

            if (v71 >= v75)
            {
              goto LABEL_76;
            }

            v79 = *(v55 + 8 * v71);
            ++v78;
            if (v79)
            {
              v74 = (v79 - 1) & v79;
              v77 = __clz(__rbit64(v79)) | (v71 << 6);
LABEL_74:
              *(*(v6 + 48) + 8 * v77) = *(*(v4 + 48) + 8 * v77);
              if (v74)
              {
                goto LABEL_68;
              }

              goto LABEL_69;
            }
          }

          __break(1u);
          goto LABEL_135;
        }

LABEL_76:
      }

      goto LABEL_57;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      specialized _NativeSet.copyAndResize(capacity:)();
    }

    v6 = *v2;
    v61 = MEMORY[0x223D8F400](*(*v2 + 40), v3);
    v62 = -1 << *(v6 + 32);
    v58 = v61 & ~v62;
    if ((*(v6 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
    {
      break;
    }

LABEL_57:
    *(v6 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v58;
    *(*(v6 + 48) + 8 * v58) = v3;
    v64 = *(v6 + 16);
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
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
      goto LABEL_117;
    }

    *(v6 + 16) = v66;
    *v125 = v6;
    v4 = v6;
    v6 = (v38 + 4);
    if (v54 == v53)
    {
LABEL_79:

      v0 = v139;
LABEL_80:
      __swift_destroy_boxed_opaque_existential_1((v0 + 59));
      v3 = v121;
      v1 = v122;
      v8 = MEMORY[0x277D84F90];
      v7 = v134;
      goto LABEL_2;
    }
  }

  v63 = ~v62;
  while (*(*(v6 + 48) + 8 * v58) != v3)
  {
    v58 = (v58 + 1) & v63;
    if (((*(v6 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  return ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 392);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSi_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = MEMORY[0x223D8F400](*(v3 + 40), v11);
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeStreamingLanguageModel;

  return v11(a1, a2, 0, a3, a4);
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance MaskedLanguageModel(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2, a3);
}

uint64_t MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 2792) = v3;
  *(v4 + 3072) = a3;
  *(v4 + 2784) = a2;
  *(v4 + 2776) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd);
  *(v4 + 2800) = swift_task_alloc();
  v5 = type metadata accessor for ContiguousBitSet();
  *(v4 + 2808) = v5;
  *(v4 + 2816) = *(v5 - 8);
  *(v4 + 2824) = swift_task_alloc();
  *(v4 + 2832) = swift_task_alloc();
  v6 = type metadata accessor for LogitIndexSet();
  *(v4 + 2840) = v6;
  *(v4 + 2848) = *(v6 - 8);
  *(v4 + 2856) = swift_task_alloc();
  *(v4 + 2864) = swift_task_alloc();
  *(v4 + 2872) = swift_task_alloc();
  *(v4 + 2880) = swift_task_alloc();
  *(v4 + 2888) = swift_task_alloc();
  *(v4 + 2896) = swift_task_alloc();
  *(v4 + 2904) = swift_task_alloc();
  *(v4 + 2912) = swift_task_alloc();
  *(v4 + 2920) = swift_task_alloc();
  *(v4 + 2928) = swift_task_alloc();
  *(v4 + 2936) = swift_task_alloc();

  return MEMORY[0x2822009F8](MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t sub_22096A22C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22096A264()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22096A2A4()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_22096A2F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolCallLanguageModel.allNextTokensPossiblyDeterministic(nodes:)(Swift::OpaquePointer nodes)
{
  v3 = v2;
  v4 = v1;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v4 + 48, v39, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v6 = v40;
  if (v40)
  {
    v42 = v2;
    v37 = v41;
    rawValue = nodes._rawValue;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v7 = *(nodes._rawValue + 2);
    if (v7)
    {
      v8 = (nodes._rawValue + 32);
      LOBYTE(v9) = swift_beginAccess();
      v10 = MEMORY[0x277D84F90];
      while (1)
      {
        v12 = *v8++;
        v11 = v12;
        if ((v12 & 0x8000000000000000) != 0)
        {
          break;
        }

        v13 = *(v4 + 40);
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_37;
        }

        v14 = v13 + 40 * v11;
        if ((*(v14 + 40) & 1) == 0)
        {
          v15 = *(v14 + 32);
          LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
          if ((v9 & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
            v10 = v9;
          }

          v17 = *(v10 + 2);
          v16 = *(v10 + 3);
          if (v17 >= v16 >> 1)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v10);
            v10 = v9;
          }

          *(v10 + 2) = v17 + 1;
          *&v10[8 * v17 + 32] = v15;
        }

        if (!--v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_15:
    v18 = v42;
    v19 = (*(v37 + 32))(v10, v6);
    v3 = v18;
    if (v18)
    {
      goto LABEL_32;
    }

    LOBYTE(v6) = v19;

    __swift_destroy_boxed_opaque_existential_1(v39);
    nodes._rawValue = rawValue;
  }

  else
  {
    outlined destroy of [Int](v39, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v4 + 88, v39, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  v20 = v40;
  if (!v40)
  {
    outlined destroy of [Int](v39, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
    v31 = 0;
    goto LABEL_34;
  }

  v42 = v3;
  v38 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  v21 = *(nodes._rawValue + 2);
  if (!v21)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_31:
    v32 = v42;
    v33 = (*(v38 + 32))(v23, v20);
    if (v32)
    {
LABEL_32:

      __swift_destroy_boxed_opaque_existential_1(v39);
LABEL_35:
      LOBYTE(v9) = v34 & 1;
      return v9;
    }

    v31 = v33;

    __swift_destroy_boxed_opaque_existential_1(v39);
LABEL_34:
    v34 = v6 | v31;
    goto LABEL_35;
  }

  v22 = (nodes._rawValue + 32);
  LOBYTE(v9) = swift_beginAccess();
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = *v22++;
    v24 = v25;
    if ((v25 & 0x8000000000000000) != 0)
    {
      break;
    }

    v26 = *(v4 + 40);
    if (v24 >= *(v26 + 16))
    {
      goto LABEL_39;
    }

    v27 = v26 + 40 * v24;
    if ((*(v27 + 56) & 1) == 0)
    {
      v28 = *(v27 + 48);
      LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
      if ((v9 & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
        v23 = v9;
      }

      v30 = *(v23 + 2);
      v29 = *(v23 + 3);
      if (v30 >= v29 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v23);
        v23 = v9;
      }

      *(v23 + 2) = v30 + 1;
      *&v23[8 * v30 + 32] = v28;
    }

    if (!--v21)
    {
      goto LABEL_31;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return v9;
}

Swift::Bool __swiftcall DeterministicLanguageModelProtocol.nextTokensLogitsAreComputed(nodes:)(Swift::OpaquePointer nodes)
{
  v5 = implicit closure #1 in DeterministicLanguageModelProtocol.nextTokensLogitsAreComputed(nodes:)(v3, v1, v2);
  v6 = *(nodes._rawValue + 2);
  v7 = (nodes._rawValue + 32);
  do
  {
    v8 = v6;
    if (!v6)
    {
      break;
    }

    v9 = *v7++;
    v10 = (v5)(v9);
    v6 = v8 - 1;
  }

  while ((v10 & 1) != 0);

  return v8 == 0;
}

uint64_t (*implicit closure #1 in DeterministicLanguageModelProtocol.nextTokensLogitsAreComputed(nodes:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in DeterministicLanguageModelProtocol.nextTokensLogitsAreComputed(nodes:);
}

uint64_t sub_22096A858()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

Swift::Bool __swiftcall ToolCallLanguageModel.nextTokenLogitsAreComputed(node:)(Swift::Int node)
{
  result = swift_beginAccess();
  if (node < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 40);
    if (*(v4 + 16) > node)
    {
      v5 = v4 + 40 * node;
      v6 = *(v5 + 48);
      v7 = *(v5 + 56);
      if ((*(v5 + 40) & 1) == 0)
      {
        v8 = *(v5 + 32);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v1 + 48, v15, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
        v9 = v16;
        if (v16)
        {
          v10 = v17;
          __swift_project_boxed_opaque_existential_1(v15, v16);
          v11 = (*(v10 + 48))(v8, v9, v10);
          __swift_destroy_boxed_opaque_existential_1(v15);
          if (v7)
          {
            goto LABEL_12;
          }

LABEL_9:
          outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v1 + 88, v15, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
          v12 = v16;
          if (v16)
          {
            v13 = v17;
            __swift_project_boxed_opaque_existential_1(v15, v16);
            v14 = (*(v13 + 48))(v6, v12, v13);
            __swift_destroy_boxed_opaque_existential_1(v15);
            return v11 & v14 & 1;
          }

          outlined destroy of [Int](v15, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
LABEL_12:
          v14 = 1;
          return v11 & v14 & 1;
        }

        outlined destroy of [Int](v15, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
      }

      v11 = 1;
      if (v7)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance ToolCallLanguageModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeStreamingLanguageModel;

  return (specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:))(a1, a2, a3);
}

uint64_t specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 128) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x2822009F8](specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 128) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x2822009F8](specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 128) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x2822009F8](specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v1 = *(*(v0 + 64) + 16);
  *(v0 + 88) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, MEMORY[0x277D84F90], &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
  if (v1)
  {
    v3 = *(v0 + 64);
    *(v0 + 96) = v2;
    *(v0 + 104) = 0;
    v4 = *(v3 + 32);
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
    v6 = *(v0 + 128);
    v7 = *(v0 + 72);

    return ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(v0 + 16, v4, v7, v6);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9(v2);
  }
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    v2 = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 96);
  *(v0 + 56) = v1;
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
    *(v0 + 56) = v1;
  }

  v16 = *(v0 + 104) + 1;
  v17 = *(v0 + 88);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v4);
  v7 = *(v4 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v4);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v3, v8, (v0 + 56), v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  if (v16 == v17)
  {
    v9 = *(v0 + 8);

    return v9(v1);
  }

  else
  {
    v11 = *(v0 + 104) + 1;
    *(v0 + 96) = v1;
    *(v0 + 104) = v11;
    v12 = *(*(v0 + 64) + 8 * v11 + 32);
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
    v14 = *(v0 + 128);
    v15 = *(v0 + 72);

    return ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(v0 + 16, v12, v15, v14);
  }
}

{
  v1 = *(*(v0 + 64) + 16);
  *(v0 + 88) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, MEMORY[0x277D84F90], &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
  if (v1)
  {
    v3 = *(v0 + 64);
    *(v0 + 96) = v2;
    *(v0 + 104) = 0;
    v4 = *(v3 + 32);
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
    v6 = *(v0 + 128);
    v7 = *(v0 + 72);

    return GrammarGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(v0 + 16, v4, v7, v6);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9(v2);
  }
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    v2 = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 96);
  *(v0 + 56) = v1;
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
    *(v0 + 56) = v1;
  }

  v16 = *(v0 + 104) + 1;
  v17 = *(v0 + 88);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v4);
  v7 = *(v4 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v4);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v3, v8, (v0 + 56), v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  if (v16 == v17)
  {
    v9 = *(v0 + 8);

    return v9(v1);
  }

  else
  {
    v11 = *(v0 + 104) + 1;
    *(v0 + 96) = v1;
    *(v0 + 104) = v11;
    v12 = *(*(v0 + 64) + 8 * v11 + 32);
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
    v14 = *(v0 + 128);
    v15 = *(v0 + 72);

    return GrammarGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(v0 + 16, v12, v15, v14);
  }
}

{
  return (*(v0 + 8))();
}

{
  v1 = *(v0[8] + 16);
  v0[11] = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, MEMORY[0x277D84F90], &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
  if (v1)
  {
    v3 = v0[8];
    v0[12] = v2;
    v0[13] = 0;
    v4 = *(v3 + 32);
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);

    return TGICAPILanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)((v0 + 2), v4);
  }

  else
  {
    v7 = v0[1];

    return v7(v2);
  }
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    v2 = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[12];
  v0[7] = v1;
  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v2 > 1), v3 + 1, 1, v1, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
    v0[7] = v1;
  }

  v14 = v0[13] + 1;
  v15 = v0[11];
  v4 = v0[5];
  v5 = v0[6];
  v6 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v4);
  v7 = *(v4 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v4);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v3, v8, v0 + 7, v4, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  if (v14 == v15)
  {
    v9 = v0[1];

    return v9(v1);
  }

  else
  {
    v11 = v0[13] + 1;
    v0[12] = v1;
    v0[13] = v11;
    v12 = *(v0[8] + 8 * v11 + 32);
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = specialized UnbatchedDeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:);

    return TGICAPILanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)((v0 + 2), v12);
  }
}

{
  v20 = v0;
  v1 = *(v0[7] + 16);
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, MEMORY[0x277D84F90], &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
  v18 = result;
  if (v1)
  {
    v3 = (v0[7] + 32);
    v16 = v0[8] + 32;
    v17 = v0[8];
    do
    {
      v5 = *v3++;
      v4 = v5;
      if (v5 == -1)
      {
        v0[5] = &type metadata for EmptyLogitCollection;
        v0[6] = &protocol witness table for EmptyLogitCollection;
      }

      else
      {
        if (v4 >= *(v17 + 16))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        if (v4 < 0)
        {
          __break(1u);
          return result;
        }

        v6 = specialized _NativeDictionary.mapValues<A>(_:)(*(v16 + 8 * v4));
        v0[5] = type metadata accessor for WeightedSparseLogitCollection();
        v0[6] = &protocol witness table for WeightedSparseLogitCollection;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
        WeightedSparseLogitCollection.init(node:)(v6, boxed_opaque_existential_1);
      }

      v19 = v18;
      v9 = v18[2];
      v8 = v18[3];
      if (v9 >= v8 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd);
        v19 = v18;
      }

      v11 = v0[5];
      v10 = v0[6];
      v12 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v11);
      v13 = *(v11 - 8);
      v14 = swift_task_alloc();
      (*(v13 + 16))(v14, v12, v11);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v9, v14, &v19, v11, v10);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));

      --v1;
    }

    while (v1);
  }

  v15 = v0[1];

  return v15(v18);
}

void *ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 608);
  result = swift_beginAccess();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v4 = *(v1 + 40);
  v5 = *(v0 + 608);
  if (*(v4 + 16) <= v5)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v6 = *(v0 + 624);
  v7 = v4 + 40 * v5;
  *(v0 + 688) = *(v7 + 32);
  *(v0 + 737) = *(v7 + 40);
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v0 + 738) = *(v7 + 57);
  *(v0 + 696) = *(v7 + 64);
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v6 + 88, v0 + 176, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  if (*(v0 + 200))
  {
    outlined init with take of RandomNumberGenerator((v0 + 176), v0 + 136);
    if (!v9)
    {
      v12 = *(v0 + 160);
      v13 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v12);

      v14 = swift_task_alloc();
      *(v0 + 704) = v14;
      *v14 = v0;
      v14[1] = ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:);
      v15 = *(v0 + 736);
      v16 = *(v0 + 616);
      v17 = v0 + 536;
      v18 = v8;
      v19 = v12;
      v20 = v13;
      goto LABEL_22;
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  }

  else
  {

    outlined destroy of [Int](v0 + 176, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  }

  v10 = *(v0 + 624);
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v10 + 48, v0 + 296, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  if (!*(v0 + 320))
  {
    outlined destroy of [Int](v0 + 296, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
LABEL_12:
    v21 = *(v0 + 738);
    if (v21 == 2)
    {
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 96, v0 + 16, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      result = outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 216, v0 + 56, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      v22 = *(v0 + 80);
      v23 = *(v0 + 624);
      if (*(v0 + 40))
      {
        if (!v22)
        {
          v46 = *(v0 + 600);

          outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
          outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
          v47 = *(v23 + 32);
          v46[3] = type metadata accessor for UnconstrainedLogitCollection();
          v46[4] = &protocol witness table for UnconstrainedLogitCollection;
          result = __swift_allocate_boxed_opaque_existential_1(v46);
          if ((v47 & 0x8000000000000000) == 0)
          {
            *result = 0;
            result[1] = v47;
            swift_storeEnumTagMultiPayload();
            v32 = v0 + 16;
            goto LABEL_40;
          }

          goto LABEL_49;
        }

        result = outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 416);
        v24 = *(v23 + 24);
        v25 = v24 + 1;
        if (!__OFADD__(v24, 1))
        {
          if (v25 >= v24)
          {
            v26 = *(v0 + 648);
            v27 = *(v0 + 640);
            v28 = *(v0 + 600);
            *v26 = v24;
            v26[1] = v25;
            swift_storeEnumTagMultiPayload();
            v29 = *(v0 + 440);
            v30 = *(v0 + 448);
            __swift_project_boxed_opaque_existential_1((v0 + 416), v29);
            (*(v30 + 8))(v29, v30);
            v28[3] = type metadata accessor for UnweightedSparseLogitCollection();
            v28[4] = &protocol witness table for UnweightedSparseLogitCollection;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
            outlined init with copy of LogitIndexSet(v26, boxed_opaque_existential_1);
            LogitIndexSet.formUnion(_:)(v27);

            outlined destroy of LogitIndexSet(v27);
            outlined destroy of LogitIndexSet(v26);
            outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
            outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
            __swift_destroy_boxed_opaque_existential_1(v0 + 416);
            v32 = v0 + 16;
LABEL_40:
            outlined destroy of [Int](v32, &_s24TokenGenerationInference15LogitCollection_pSgMd);
            goto LABEL_41;
          }

          goto LABEL_47;
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (!v22)
      {
        if ((*(v23 + 32) & 0x8000000000000000) == 0)
        {
          v52 = *(v0 + 680);
          v53 = *(v0 + 672);
          v54 = *(v0 + 664);
          v55 = *(v0 + 656);
          v56 = *(v0 + 600);
          ContiguousBitSet.init(_:)();
          ContiguousBitSet.remove(_:)(*(v23 + 24));
          (*(v54 + 16))(v53, v52, v55);
          v56[3] = type metadata accessor for UnweightedSparseLogitCollection();
          v56[4] = &protocol witness table for UnweightedSparseLogitCollection;
          v57 = __swift_allocate_boxed_opaque_existential_1(v56);
          LogitIndexSet.init(_:)(v53, v57);

          (*(v54 + 8))(v52, v55);
          outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
          v32 = v0 + 96;
          goto LABEL_40;
        }

LABEL_52:
        __break(1u);
        return result;
      }

      outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 456);
      v38 = *(v0 + 480);
      v39 = *(v0 + 488);
      result = __swift_project_boxed_opaque_existential_1((v0 + 456), v38);
      if ((*(v23 + 32) & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      v40 = *(v0 + 680);
      v41 = *(v0 + 672);
      v42 = *(v0 + 664);
      v43 = *(v0 + 656);
      v44 = *(v0 + 648);
      v45 = *(v0 + 624);
      ContiguousBitSet.init(_:)();
      ContiguousBitSet.remove(_:)(*(v45 + 24));
      (*(v42 + 16))(v41, v40, v43);
      LogitIndexSet.init(_:)(v41, v44);
      (*(v42 + 8))(v40, v43);
      (*(v39 + 80))(v44, v38, v39);

      outlined destroy of LogitIndexSet(v44);
      outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v0 + 456);
    }

    else
    {

      if (v21)
      {
        outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        *(v0 + 408) = *(v0 + 128);
        v33 = *(v0 + 112);
        *(v0 + 376) = *(v0 + 96);
        *(v0 + 392) = v33;
        if (*(v0 + 400))
        {
          outlined init with take of RandomNumberGenerator((v0 + 376), *(v0 + 600));
        }

        else
        {
          v48 = *(v0 + 600);
          v49 = *(*(v0 + 624) + 32);
          v48[3] = type metadata accessor for UnconstrainedLogitCollection();
          v48[4] = &protocol witness table for UnconstrainedLogitCollection;
          result = __swift_allocate_boxed_opaque_existential_1(v48);
          if (v49 < 0)
          {
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          *result = 0;
          result[1] = v49;
          swift_storeEnumTagMultiPayload();
          if (*(v0 + 400))
          {
            v32 = v0 + 376;
            goto LABEL_40;
          }
        }
      }

      else
      {
        outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        *(v0 + 368) = *(v0 + 248);
        v37 = *(v0 + 232);
        *(v0 + 336) = *(v0 + 216);
        *(v0 + 352) = v37;
        if (*(v0 + 360))
        {
          outlined init with take of RandomNumberGenerator((v0 + 336), *(v0 + 600));
        }

        else
        {
          v50 = *(v0 + 600);
          v51 = *(*(v0 + 624) + 32);
          v50[3] = type metadata accessor for UnconstrainedLogitCollection();
          v50[4] = &protocol witness table for UnconstrainedLogitCollection;
          result = __swift_allocate_boxed_opaque_existential_1(v50);
          if (v51 < 0)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          *result = 0;
          result[1] = v51;
          swift_storeEnumTagMultiPayload();
          if (*(v0 + 360))
          {
            v32 = v0 + 336;
            goto LABEL_40;
          }
        }
      }
    }

LABEL_41:

    v58 = *(v0 + 8);

    return v58();
  }

  v11 = *(v0 + 737);
  outlined init with take of RandomNumberGenerator((v0 + 296), v0 + 256);
  if (v11 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 256);
    goto LABEL_12;
  }

  v35 = *(v0 + 280);
  v34 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v35);
  v36 = swift_task_alloc();
  *(v0 + 720) = v36;
  *v36 = v0;
  v36[1] = ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:);
  v18 = *(v0 + 688);
  v15 = *(v0 + 736);
  v16 = *(v0 + 616);
  v17 = v0 + 496;
  v19 = v35;
  v20 = v34;
LABEL_22:

  return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(v17, v18, v16, v15, v19, v20);
}

{
  outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
  v1 = *(v0 + 552);
  *(v0 + 96) = *(v0 + 536);
  *(v0 + 112) = v1;
  *(v0 + 128) = *(v0 + 568);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  *(v0 + 216) = 0u;
  v2 = *(v0 + 624);
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v2 + 48, v0 + 296, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
  if (!*(v0 + 320))
  {
    outlined destroy of [Int](v0 + 296, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd);
LABEL_5:
    v4 = *(v0 + 738);
    if (v4 == 2)
    {
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 96, v0 + 16, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      result = outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 216, v0 + 56, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      v6 = *(v0 + 80);
      if (*(v0 + 40))
      {
        if (!v6)
        {
          v34 = *(v0 + 624);
          v35 = *(v0 + 600);

          outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
          outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
          v36 = *(v34 + 32);
          v35[3] = type metadata accessor for UnconstrainedLogitCollection();
          v35[4] = &protocol witness table for UnconstrainedLogitCollection;
          result = __swift_allocate_boxed_opaque_existential_1(v35);
          if ((v36 & 0x8000000000000000) == 0)
          {
            *result = 0;
            result[1] = v36;
            swift_storeEnumTagMultiPayload();
            v16 = v0 + 16;
            goto LABEL_32;
          }

          goto LABEL_39;
        }

        v7 = *(v0 + 624);
        result = outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 416);
        v8 = *(v7 + 24);
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
        }

        else if (v9 >= v8)
        {
          v10 = *(v0 + 648);
          v11 = *(v0 + 640);
          v12 = *(v0 + 600);
          *v10 = v8;
          v10[1] = v9;
          swift_storeEnumTagMultiPayload();
          v13 = *(v0 + 440);
          v14 = *(v0 + 448);
          __swift_project_boxed_opaque_existential_1((v0 + 416), v13);
          (*(v14 + 8))(v13, v14);
          v12[3] = type metadata accessor for UnweightedSparseLogitCollection();
          v12[4] = &protocol witness table for UnweightedSparseLogitCollection;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
          outlined init with copy of LogitIndexSet(v10, boxed_opaque_existential_1);
          LogitIndexSet.formUnion(_:)(v11);

          outlined destroy of LogitIndexSet(v11);
          outlined destroy of LogitIndexSet(v10);
          outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
          outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
          __swift_destroy_boxed_opaque_existential_1(v0 + 416);
          v16 = v0 + 16;
LABEL_32:
          outlined destroy of [Int](v16, &_s24TokenGenerationInference15LogitCollection_pSgMd);
          goto LABEL_33;
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v25 = *(v0 + 624);
      if (!v6)
      {
        if ((*(v25 + 32) & 0x8000000000000000) == 0)
        {
          v41 = *(v0 + 680);
          v42 = *(v0 + 672);
          v43 = *(v0 + 664);
          v44 = *(v0 + 656);
          v45 = *(v0 + 600);
          ContiguousBitSet.init(_:)();
          ContiguousBitSet.remove(_:)(*(v25 + 24));
          (*(v43 + 16))(v42, v41, v44);
          v45[3] = type metadata accessor for UnweightedSparseLogitCollection();
          v45[4] = &protocol witness table for UnweightedSparseLogitCollection;
          v46 = __swift_allocate_boxed_opaque_existential_1(v45);
          LogitIndexSet.init(_:)(v42, v46);

          (*(v43 + 8))(v41, v44);
          outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
          v16 = v0 + 96;
          goto LABEL_32;
        }

LABEL_42:
        __break(1u);
        return result;
      }

      outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 456);
      v26 = *(v0 + 480);
      v27 = *(v0 + 488);
      result = __swift_project_boxed_opaque_existential_1((v0 + 456), v26);
      if ((*(v25 + 32) & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      v28 = *(v0 + 680);
      v29 = *(v0 + 672);
      v30 = *(v0 + 664);
      v31 = *(v0 + 656);
      v32 = *(v0 + 648);
      v33 = *(v0 + 624);
      ContiguousBitSet.init(_:)();
      ContiguousBitSet.remove(_:)(*(v33 + 24));
      (*(v30 + 16))(v29, v28, v31);
      LogitIndexSet.init(_:)(v29, v32);
      (*(v30 + 8))(v28, v31);
      (*(v27 + 80))(v32, v26, v27);

      outlined destroy of LogitIndexSet(v32);
      outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      __swift_destroy_boxed_opaque_existential_1(v0 + 456);
    }

    else
    {

      if (v4)
      {
        outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        *(v0 + 408) = *(v0 + 128);
        v17 = *(v0 + 112);
        *(v0 + 376) = *(v0 + 96);
        *(v0 + 392) = v17;
        if (*(v0 + 400))
        {
          outlined init with take of RandomNumberGenerator((v0 + 376), *(v0 + 600));
        }

        else
        {
          v37 = *(v0 + 600);
          v38 = *(*(v0 + 624) + 32);
          v37[3] = type metadata accessor for UnconstrainedLogitCollection();
          v37[4] = &protocol witness table for UnconstrainedLogitCollection;
          result = __swift_allocate_boxed_opaque_existential_1(v37);
          if (v38 < 0)
          {
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          *result = 0;
          result[1] = v38;
          swift_storeEnumTagMultiPayload();
          if (*(v0 + 400))
          {
            v16 = v0 + 376;
            goto LABEL_32;
          }
        }
      }

      else
      {
        outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        *(v0 + 368) = *(v0 + 248);
        v24 = *(v0 + 216);
        *(v0 + 352) = *(v0 + 232);
        *(v0 + 336) = v24;
        if (*(v0 + 360))
        {
          outlined init with take of RandomNumberGenerator((v0 + 336), *(v0 + 600));
        }

        else
        {
          v39 = *(v0 + 600);
          v40 = *(*(v0 + 624) + 32);
          v39[3] = type metadata accessor for UnconstrainedLogitCollection();
          v39[4] = &protocol witness table for UnconstrainedLogitCollection;
          result = __swift_allocate_boxed_opaque_existential_1(v39);
          if (v40 < 0)
          {
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          *result = 0;
          result[1] = v40;
          swift_storeEnumTagMultiPayload();
          if (*(v0 + 360))
          {
            v16 = v0 + 336;
            goto LABEL_32;
          }
        }
      }
    }

LABEL_33:

    v47 = *(v0 + 8);

    return v47();
  }

  v3 = *(v0 + 737);
  outlined init with take of RandomNumberGenerator((v0 + 296), v0 + 256);
  if (v3 == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 256);
    goto LABEL_5;
  }

  v18 = *(v0 + 280);
  v19 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((v0 + 256), v18);
  v20 = swift_task_alloc();
  *(v0 + 720) = v20;
  *v20 = v0;
  v20[1] = ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:);
  v21 = *(v0 + 688);
  v22 = *(v0 + 736);
  v23 = *(v0 + 616);

  return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(v0 + 496, v21, v23, v22, v18, v19);
}

{
  outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
  v1 = *(v0 + 512);
  *(v0 + 216) = *(v0 + 496);
  *(v0 + 232) = v1;
  *(v0 + 248) = *(v0 + 528);
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);
  v2 = *(v0 + 738);
  if (v2 == 2)
  {
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 96, v0 + 16, &_s24TokenGenerationInference15LogitCollection_pSgMd);
    result = outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 216, v0 + 56, &_s24TokenGenerationInference15LogitCollection_pSgMd);
    v4 = *(v0 + 80);
    if (*(v0 + 40))
    {
      if (!v4)
      {
        v26 = *(v0 + 624);
        v27 = *(v0 + 600);

        outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        v28 = *(v26 + 32);
        v27[3] = type metadata accessor for UnconstrainedLogitCollection();
        v27[4] = &protocol witness table for UnconstrainedLogitCollection;
        result = __swift_allocate_boxed_opaque_existential_1(v27);
        if ((v28 & 0x8000000000000000) == 0)
        {
          *result = 0;
          result[1] = v28;
          swift_storeEnumTagMultiPayload();
          v14 = v0 + 16;
          goto LABEL_25;
        }

        goto LABEL_32;
      }

      v5 = *(v0 + 624);
      result = outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 416);
      v6 = *(v5 + 24);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
      }

      else if (v7 >= v6)
      {
        v8 = *(v0 + 648);
        v9 = *(v0 + 640);
        v10 = *(v0 + 600);
        *v8 = v6;
        v8[1] = v7;
        swift_storeEnumTagMultiPayload();
        v11 = *(v0 + 440);
        v12 = *(v0 + 448);
        __swift_project_boxed_opaque_existential_1((v0 + 416), v11);
        (*(v12 + 8))(v11, v12);
        v10[3] = type metadata accessor for UnweightedSparseLogitCollection();
        v10[4] = &protocol witness table for UnweightedSparseLogitCollection;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
        outlined init with copy of LogitIndexSet(v8, boxed_opaque_existential_1);
        LogitIndexSet.formUnion(_:)(v9);

        outlined destroy of LogitIndexSet(v9);
        outlined destroy of LogitIndexSet(v8);
        outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        __swift_destroy_boxed_opaque_existential_1(v0 + 416);
        v14 = v0 + 16;
LABEL_25:
        outlined destroy of [Int](v14, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        goto LABEL_26;
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v17 = *(v0 + 624);
    if (!v4)
    {
      if ((*(v17 + 32) & 0x8000000000000000) == 0)
      {
        v33 = *(v0 + 680);
        v34 = *(v0 + 672);
        v35 = *(v0 + 664);
        v36 = *(v0 + 656);
        v37 = *(v0 + 600);
        ContiguousBitSet.init(_:)();
        ContiguousBitSet.remove(_:)(*(v17 + 24));
        (*(v35 + 16))(v34, v33, v36);
        v37[3] = type metadata accessor for UnweightedSparseLogitCollection();
        v37[4] = &protocol witness table for UnweightedSparseLogitCollection;
        v38 = __swift_allocate_boxed_opaque_existential_1(v37);
        LogitIndexSet.init(_:)(v34, v38);

        (*(v35 + 8))(v33, v36);
        outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
        v14 = v0 + 96;
        goto LABEL_25;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    outlined init with take of RandomNumberGenerator((v0 + 56), v0 + 456);
    v18 = *(v0 + 480);
    v19 = *(v0 + 488);
    result = __swift_project_boxed_opaque_existential_1((v0 + 456), v18);
    if ((*(v17 + 32) & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    v20 = *(v0 + 680);
    v21 = *(v0 + 672);
    v22 = *(v0 + 664);
    v23 = *(v0 + 656);
    v24 = *(v0 + 648);
    v25 = *(v0 + 624);
    ContiguousBitSet.init(_:)();
    ContiguousBitSet.remove(_:)(*(v25 + 24));
    (*(v22 + 16))(v21, v20, v23);
    LogitIndexSet.init(_:)(v21, v24);
    (*(v22 + 8))(v20, v23);
    (*(v19 + 80))(v24, v18, v19);

    outlined destroy of LogitIndexSet(v24);
    outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
    outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
    __swift_destroy_boxed_opaque_existential_1(v0 + 456);
  }

  else
  {

    if (v2)
    {
      outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      *(v0 + 408) = *(v0 + 128);
      v15 = *(v0 + 112);
      *(v0 + 376) = *(v0 + 96);
      *(v0 + 392) = v15;
      if (*(v0 + 400))
      {
        outlined init with take of RandomNumberGenerator((v0 + 376), *(v0 + 600));
      }

      else
      {
        v29 = *(v0 + 600);
        v30 = *(*(v0 + 624) + 32);
        v29[3] = type metadata accessor for UnconstrainedLogitCollection();
        v29[4] = &protocol witness table for UnconstrainedLogitCollection;
        result = __swift_allocate_boxed_opaque_existential_1(v29);
        if (v30 < 0)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        *result = 0;
        result[1] = v30;
        swift_storeEnumTagMultiPayload();
        if (*(v0 + 400))
        {
          v14 = v0 + 376;
          goto LABEL_25;
        }
      }
    }

    else
    {
      outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd);
      *(v0 + 368) = *(v0 + 248);
      v16 = *(v0 + 232);
      *(v0 + 336) = *(v0 + 216);
      *(v0 + 352) = v16;
      if (*(v0 + 360))
      {
        outlined init with take of RandomNumberGenerator((v0 + 336), *(v0 + 600));
      }

      else
      {
        v31 = *(v0 + 600);
        v32 = *(*(v0 + 624) + 32);
        v31[3] = type metadata accessor for UnconstrainedLogitCollection();
        v31[4] = &protocol witness table for UnconstrainedLogitCollection;
        result = __swift_allocate_boxed_opaque_existential_1(v31);
        if (v32 < 0)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        *result = 0;
        result[1] = v32;
        swift_storeEnumTagMultiPayload();
        if (*(v0 + 360))
        {
          v14 = v0 + 336;
          goto LABEL_25;
        }
      }
    }
  }

LABEL_26:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 624) = v4;
  *(v5 + 736) = a4;
  *(v5 + 616) = a3;
  *(v5 + 608) = a2;
  *(v5 + 600) = a1;
  *(v5 + 632) = type metadata accessor for LogitIndexSet();
  *(v5 + 640) = swift_task_alloc();
  *(v5 + 648) = swift_task_alloc();
  v6 = type metadata accessor for ContiguousBitSet();
  *(v5 + 656) = v6;
  *(v5 + 664) = *(v6 - 8);
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();

  return MEMORY[0x2822009F8](ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:), 0, 0);
}

uint64_t ArgmaxPresampler.makeMasked(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for LogitIndexSet();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  outlined init with copy of LogitIndexSet?(v3, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of LogitIndexSet?(v8);
    outlined init with copy of LogitIndexSet(a1, v16);
  }

  else
  {
    outlined init with take of LogitIndexSet(v8, v13);
    outlined init with copy of LogitIndexSet(v13, v16);
    LogitIndexSet.formUnion(_:)(a1);
    outlined destroy of LogitIndexSet(v13, type metadata accessor for LogitIndexSet);
  }

  outlined init with take of LogitIndexSet(v16, v18);
  a2[3] = type metadata accessor for ArgmaxPresampler();
  a2[4] = &protocol witness table for ArgmaxPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  outlined init with take of LogitIndexSet(v18, boxed_opaque_existential_1);
  return (*(v10 + 56))(boxed_opaque_existential_1, 0, 1, v9);
}

uint64_t protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance E5TransformerLanguageModel(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for DeterministicLanguageModelProtocol.nextTokensLogits(nodes:presampler:isPrompt:) in conformance SpeculativeStreamingLanguageModel;

  return specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(a1, a2);
}

uint64_t E5TransformerLanguageModel.computePromptModuleNodesNeeded()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_allPromptModuleNodes;
  v3 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_allPromptModuleNodes);
  v4 = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes;
  v5 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes);
  v6 = *(v3 + 16);

  v7 = 0;
  while (v6 != v7)
  {
    v8 = v7;
    v9 = *(v5 + 16);
    if (v8 == v9)
    {
      goto LABEL_8;
    }

    if (v8 >= v9)
    {
      __break(1u);
      goto LABEL_22;
    }

    v7 = v8 + 1;
    if (*(v3 + 8 * v8 + 32) != *(v5 + 8 * v8 + 32))
    {
      goto LABEL_8;
    }
  }

  v8 = v6;
LABEL_8:

  v3 = *(v1 + v4);
  v9 = *(v3 + 16);
  if (v9 < v8)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v8)
  {

    goto LABEL_11;
  }

LABEL_23:
  specialized _copyCollectionToContiguousArray<A>(_:)(v3, v3 + 32, v8, (2 * v9) | 1);
  v3 = v29;
LABEL_11:
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.device);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v31 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x223D8E8D0](v3, MEMORY[0x277D83B88]);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v32);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_220940000, v11, v12, "Prompt modules to reset %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x223D90A10](v14, -1, -1);
    v18 = v13;
    v2 = v31;
    MEMORY[0x223D90A10](v18, -1, -1);
  }

  v19 = *(v1 + v2);
  v20 = *(v19 + 16);
  if (v20 < v8)
  {
    __break(1u);
  }

  else if (!v8)
  {

    goto LABEL_18;
  }

  specialized _copyCollectionToContiguousArray<A>(_:)(v19, v19 + 32, v8, (2 * v20) | 1);
  v19 = v30;
LABEL_18:

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    *v23 = 136315138;
    v25 = MEMORY[0x223D8E8D0](v19, MEMORY[0x277D83B88]);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v32);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_220940000, v21, v22, "Prompt modules to compute %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x223D90A10](v24, -1, -1);
    MEMORY[0x223D90A10](v23, -1, -1);
  }

  return v3;
}

Swift::Int E5TransformerLanguageModel.latestCommonParent(nodes:)(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v6 = *v5++;
      result = E5TransformerLanguageModel.latestCommonParent(nodeA:nodeB:)(result, v6);
      --v4;
    }

    while (v4);
  }

  return result;
}

void E5TransformerLanguageModel.reset(promptModuleNodes:toNode:)(unint64_t a1, unint64_t a2)
{
  v5 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v80 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v9 = v80;
    swift_beginAccess();
    v10 = 32;
    v11 = 48;
    do
    {
      v12 = *(v6 + v10);
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_86;
      }

      v13 = *(v5 + 56);
      if (v12 >= *(v13 + 16))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v3 = *(v13 + 48 * v12 + 32);
      v80 = v9;
      v15 = v9[2];
      v14 = v9[3];
      v4 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v9 = v80;
      }

      v9[2] = v4;
      v9[v15 + 4] = v3;
      v10 += 8;
      --v7;
    }

    while (v7);

    v16 = v9[2];
    if (v16)
    {
LABEL_9:
      v4 = 0;
      v17 = v9 + 4;
      v3 = a2;
      v11 = a1;
      while (1)
      {
        v18 = *v17++;
        v19 = __OFADD__(v4, v18);
        v4 += v18;
        if (v19)
        {
          break;
        }

        if (!--v16)
        {
          goto LABEL_15;
        }
      }

LABEL_88:
      __break(1u);
      goto LABEL_89;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v16 = *(MEMORY[0x277D84F90] + 16);
    if (v16)
    {
      goto LABEL_9;
    }
  }

  v4 = 0;
  v3 = a2;
  v11 = a1;
LABEL_15:

  v6 = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes;
  v20 = *(v5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes);
  v21 = *(v20 + 16);
  do
  {
    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = v21 - 1;
    v23 = *(v20 + 24 + 8 * v21--);
  }

  while (v23 != v3);
  v7 = *(v11 + 16);
  a1 = v22;
  if (v7 || *(v20 + 8 * *(v20 + 16) + 24) != v3 || (NodesAre = E5TransformerLanguageModel.currentQueryNodesAreLinear.getter(), v22 = a1, (NodesAre & 1) == 0))
  {
    if (one-time initialization token for device != -1)
    {
      goto LABEL_95;
    }

    while (1)
    {
      v75 = v22 + 1;
      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Log.device);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        *(v33 + 4) = v7;
        _os_log_impl(&dword_220940000, v31, v32, "Number of prompt modules nodes to reset %ld", v33, 0xCu);
        MEMORY[0x223D90A10](v33, -1, -1);
      }

      specialized RangeReplaceableCollection<>.removeLast(_:)(v7);
      v34 = *(*(v5 + v6) + 16);
      if (v34 < v75)
      {
        break;
      }

      specialized Array.replaceSubrange<A>(_:with:)(v75, v34);
      if (v7)
      {
        v79 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v35 = (v11 + 32);
        swift_beginAccess();
        while (1)
        {
          v37 = *v35++;
          v36 = v37;
          if ((v37 & 0x8000000000000000) != 0)
          {
            break;
          }

          v38 = *(v5 + 56);
          if (v36 >= *(v38 + 16))
          {
            goto LABEL_90;
          }

          v3 = *(v38 + 48 * v36 + 32);
          v79 = v8;
          v11 = *(v8 + 16);
          v39 = *(v8 + 24);
          v40 = v11 + 1;
          if (v11 >= v39 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v11 + 1, 1);
            v8 = v79;
          }

          *(v8 + 16) = v40;
          *(v8 + 8 * v11 + 32) = v3;
          if (!--v7)
          {
            goto LABEL_40;
          }
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v40 = *(v8 + 16);
      if (v40)
      {
LABEL_40:
        v41 = 32;
        while (1)
        {
          v42 = *(v8 + v41);
          v19 = __OFSUB__(v4, v42);
          v4 -= v42;
          if (v19)
          {
            break;
          }

          v41 += 8;
          if (!--v40)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

LABEL_43:

      v8 = *(v5 + 48);
      ObjectType = swift_getObjectType();
      v3 = a2;
      if (__OFADD__(v4, a1))
      {
        goto LABEL_97;
      }

      v74 = ObjectType;
      (*(v8 + 48))(v4 + a1, ObjectType, v8);
      v44 = v5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount;
      if (*(v5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount + 8))
      {
        *v44 = v4 + a1;
        *(v44 + 8) = 0;
      }

      if (v75 < 2)
      {
        return;
      }

      swift_beginAccess();
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_98;
      }

      v45 = *(v5 + 56);
      if (*(v45 + 16) <= a2)
      {
        goto LABEL_99;
      }

      v46 = *(v45 + 48 * a2 + 32);

      v47 = specialized NodeStorage.nodes(previousAndIncluding:position:)(a2, v46, 0, v45);
      v4 = v48;
      v7 = v49;
      v51 = v50;

      v52 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_24TokenGenerationInference11NodeStorageV08PreviousE8SequenceVyAD26E5TransformerLanguageModelC0E5StateV_GTt0g5Tf4g_n(v47, v4, v7, v51 & 1);

      v53 = a1;
      if (a1 == 1)
      {

        v3 = MEMORY[0x277D84F90];
        v54 = *(MEMORY[0x277D84F90] + 16);
        if (!v54)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v7 = v52 + 56;
        v3 = MEMORY[0x277D84F90];
        v58 = 1;
        do
        {
          if (v53 == v58)
          {
            goto LABEL_91;
          }

          v59 = *(v5 + v6);
          if (v58 >= *(v59 + 16))
          {
            goto LABEL_92;
          }

          if (*(v52 + 16) && (v4 = *(v59 + 8 * v58 + 32), v60 = MEMORY[0x223D8F400](*(v52 + 40), v4), v53 = a1, v61 = -1 << *(v52 + 32), v62 = v60 & ~v61, ((*(v7 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) != 0))
          {
            v63 = ~v61;
            while (*(*(v52 + 48) + 8 * v62) != v4)
            {
              v62 = (v62 + 1) & v63;
              if (((*(v7 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
              {
                goto LABEL_72;
              }
            }
          }

          else
          {
LABEL_72:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
            }

            v11 = *(v3 + 2);
            v64 = *(v3 + 3);
            v4 = v11 + 1;
            v53 = a1;
            if (v11 >= v64 >> 1)
            {
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v11 + 1, 1, v3);
              v53 = a1;
              v3 = v65;
            }

            *(v3 + 2) = v4;
            *&v3[8 * v11 + 32] = v58;
          }

          ++v58;
        }

        while (v53 != v58);

        v54 = *(v3 + 2);
        if (!v54)
        {
LABEL_77:

          return;
        }
      }

      do
      {
        if (v54 > *(v3 + 2))
        {
          __break(1u);
LABEL_79:

LABEL_80:
          (*(v8 + 64))(v4, v74, v8);

          v27 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v27, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v78 = v68;
            *v67 = 136315138;

            v70 = MEMORY[0x223D8E8D0](v69, MEMORY[0x277D83B88]);
            v72 = v71;

            v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v78);

            *(v67 + 4) = v73;
            _os_log_impl(&dword_220940000, v27, v66, "Purged %s node(s) from runner", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v68);
            MEMORY[0x223D90A10](v68, -1, -1);
            MEMORY[0x223D90A10](v67, -1, -1);
          }

          goto LABEL_83;
        }

        specialized Array.remove(at:)(*&v3[8 * v54-- + 24]);
      }

      while (v54);

      v5 = *(v3 + 2);
      v4 = MEMORY[0x277D84F90];
      if (!v5)
      {
        goto LABEL_80;
      }

      v78 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v6 = 0;
      v4 = v78;
      while (v6 < *(v3 + 2))
      {
        v55 = *&v3[8 * v6 + 32];
        v56 = v55 - 1;
        if (__OFSUB__(v55, 1))
        {
          goto LABEL_94;
        }

        v78 = v4;
        v7 = *(v4 + 16);
        v57 = *(v4 + 24);
        v11 = v7 + 1;
        if (v7 >= v57 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v7 + 1, 1);
          v4 = v78;
        }

        ++v6;
        *(v4 + 16) = v11;
        *(v4 + 8 * v7 + 32) = v56;
        if (v5 == v6)
        {
          goto LABEL_79;
        }
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      swift_once();
      v22 = a1;
    }

    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (__OFADD__(v4, a1))
  {
LABEL_100:
    __break(1u);
LABEL_101:
    swift_once();
    goto LABEL_25;
  }

  v25 = v5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount;
  if (*(v5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount + 8) == 1)
  {
    *v25 = v4 + a1;
    *(v25 + 8) = 0;
  }

  if (one-time initialization token for device != -1)
  {
    goto LABEL_101;
  }

LABEL_25:
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.device);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = v3;
    _os_log_impl(&dword_220940000, v27, v28, "Skipping reset because %ld is already last run node", v29, 0xCu);
    MEMORY[0x223D90A10](v29, -1, -1);
  }

LABEL_83:
}

unint64_t specialized RangeReplaceableCollection<>.removeLast(_:)(unint64_t result, uint64_t (*a2)(unint64_t))
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *(*v2 + 16);
      v5 = v4 >= result;
      result = v4 - result;
      if (v5)
      {
        return a2(result);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = MEMORY[0x223D8F400](*(v4 + 40), v15);
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = MEMORY[0x223D8F400](*(v4 + 40), v16);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v32[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v32[0] = a1;
    v29 = a1;
    v3 = *(a1 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = a2 + 56;
      v30 = *(a2 + 40);
      v31 = v29 + 32;
      v28 = -1 << *(a2 + 32);
      v6 = ~v28;
      while (1)
      {
        v7 = *(v31 + 8 * v4++);
        v8 = MEMORY[0x223D8F400](v30, v7);
        v9 = v8 & v6;
        v10 = (v8 & v6) >> 6;
        v11 = 1 << (v8 & v6);
        if ((v11 & *(v5 + 8 * v10)) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v3)
        {
          return v2;
        }
      }

      while (*(*(v2 + 48) + 8 * v9) != v7)
      {
        v9 = (v9 + 1) & v6;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & *(v5 + 8 * (v9 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v32[1] = v4;
      v12 = v29;
      v13 = (63 - v28) >> 6;
      v14 = 8 * v13;
      if (v13 > 0x80)
      {
        goto LABEL_29;
      }

      {
        v28 = v13;
        v30 = &v28;
        MEMORY[0x28223BE20](i);
        v9 = &v28 - v16;
        memcpy(&v28 - v16, (v2 + 56), v14);
        v17 = *(v2 + 16);
        *(v9 + 8 * v10) &= ~v11;
        v14 = v17 - 1;
        v18 = *(v12 + 16);
        if (v4 == v18)
        {
          break;
        }

        v10 = *(v2 + 40);
        v13 = ~(-1 << *(v2 + 32));
        while (v4 < v18)
        {
          v11 = *(v31 + 8 * v4);
          v20 = MEMORY[0x223D8F400](v10, v11);
          v21 = v20 & v13;
          v22 = (v20 & v13) >> 6;
          v23 = 1 << (v20 & v13);
          if ((v23 & *(v5 + 8 * v22)) != 0)
          {
            while (*(*(v2 + 48) + 8 * v21) != v11)
            {
              v21 = (v21 + 1) & v13;
              v22 = v21 >> 6;
              v23 = 1 << v21;
              if (((1 << v21) & *(v5 + 8 * (v21 >> 6))) == 0)
              {
                goto LABEL_17;
              }
            }

            v24 = *(v9 + 8 * v22);
            *(v9 + 8 * v22) = v24 & ~v23;
            if ((v24 & v23) != 0)
            {
              if (__OFSUB__(v14--, 1))
              {
                goto LABEL_28;
              }

              if (!v14)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v18 = *(v12 + 16);
          if (v4 == v18)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v26 = swift_slowAlloc();
          memcpy(v26, (v2 + 56), v14);
          v27 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v26, v13, v2, v9, v32);

          MEMORY[0x223D90A10](v26, -1, -1);

          return v27;
        }
      }

LABEL_13:
      v2 = specialized _NativeSet.extractSubset(using:count:)(v9, v28, v14, v2);
LABEL_14:
    }
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

{
  v6 = a2;
  v51 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v45 = a1;
    v46 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v44 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v14 = v46;
          while (1)
          {
            v15 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v15 >= v12)
            {

              goto LABEL_41;
            }

            v11 = *(v8 + 8 * v15);
            ++v14;
            if (v11)
            {
              v46 = v15;
              goto LABEL_12;
            }
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_12:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v3 = *(*(v45 + 48) + ((v46 << 9) | (8 * v16)));
        v17 = MEMORY[0x223D8F400](*(v6 + 40), v3);
        v18 = -1 << *(v6 + 32);
        v4 = v17 & ~v18;
        v2 = v4 >> 6;
        v5 = 1 << v4;
      }

      while (((1 << v4) & *(v13 + 8 * (v4 >> 6))) == 0);
      v19 = *(v6 + 48);
      if (*(v19 + 8 * v4) == v3)
      {
        break;
      }

      while (1)
      {
        v4 = (v4 + 1) & ~v18;
        v2 = v4 >> 6;
        v5 = 1 << v4;
        if (((1 << v4) & *(v13 + 8 * (v4 >> 6))) == 0)
        {
          break;
        }

        if (*(v19 + 8 * v4) == v3)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_16:
    v48 = v44;
    v49 = v46;
    v50 = v11;
    v47[0] = v45;
    v47[1] = v8;
    v20 = (63 - v18) >> 6;
    v3 = 8 * v20;

    v41 = v20;
    if (v20 <= 0x80)
    {
      goto LABEL_17;
    }

LABEL_45:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v38 = swift_slowAlloc();
      memcpy(v38, (v6 + 56), v3);
      v39 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v38, v41, v6, v4, v47);

      MEMORY[0x223D90A10](v38, -1, -1);
      v44 = v48;
      v46 = v49;
      v6 = v39;
      goto LABEL_41;
    }

LABEL_17:
    v42 = &v40;
    MEMORY[0x28223BE20](v21);
    v4 = &v40 - v22;
    memcpy(&v40 - v22, (v6 + 56), v3);
    v23 = *(v6 + 16);
    *(v4 + 8 * v2) &= ~v5;
    v24 = v23 - 1;
    v5 = -1;
    v3 = 1;
    v25 = v45;
LABEL_18:
    v43 = v24;
    while (v11)
    {
LABEL_26:
      v29 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v2 = *(*(v25 + 48) + ((v46 << 9) | (8 * v29)));
      v30 = MEMORY[0x223D8F400](*(v6 + 40), v2);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = 1 << v32;
      if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) != 0)
      {
        v35 = *(v6 + 48);
        if (*(v35 + 8 * v32) == v2)
        {
LABEL_19:
          v26 = *(v4 + 8 * v33);
          *(v4 + 8 * v33) = v26 & ~v34;
          if ((v26 & v34) != 0)
          {
            v24 = v43 - 1;
            if (__OFSUB__(v43, 1))
            {
              __break(1u);
            }

            if (v43 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v36 = ~v31;
          while (1)
          {
            v32 = (v32 + 1) & v36;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            if (((1 << v32) & *(v13 + 8 * (v32 >> 6))) == 0)
            {
              break;
            }

            if (*(v35 + 8 * v32) == v2)
            {
              goto LABEL_19;
            }
          }
        }
      }
    }

    v27 = v46;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v28 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v28);
      ++v27;
      if (v11)
      {
        v46 = v28;
        goto LABEL_26;
      }
    }

    if (v12 <= v46 + 1)
    {
      v12 = v46 + 1;
    }

    v6 = specialized _NativeSet.extractSubset(using:count:)(v4, v41, v43, v6);
    v46 = v12 - 1;
LABEL_41:
    outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

void sub_22096E938(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int, uint64_t), void (*a4)(void, Swift::Int, uint64_t, uint64_t, uint64_t))
{
  v8 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v8);
  }

  v9 = *(v8 + 2);
  v11[0] = v8 + 32;
  v11[1] = v9;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, a2, a3, a4);

  *a1 = v8;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int, uint64_t), void (*a4)(void, Swift::Int, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  swift_retain_n();
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      if (v8 <= 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v11 + 16) = v8 / 2;
      }

      v13[0] = v11 + 32;
      v13[1] = v8 / 2;
      v12 = v11;

      a3(v13, v14, a1, v10, a2);

      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {

    a4(0, v8, 1, a1, a2);
  }
}

uint64_t _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v8 = type metadata accessor for ContinuousClock.Instant();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v6[13] = v9;
  v6[14] = v11;

  return MEMORY[0x2822009F8](_ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY0_, v9, v11);
}

uint64_t _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY0_()
{
  v1 = v0[7];
  v0[15] = type metadata accessor for ContinuousClock();
  v0[16] = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTQ1_;

  return v4(v0 + 4);
}

uint64_t partial apply for closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x2822009F8](closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:), 0, 0);
}

void E5TransformerLanguageModel.lookupLRUCache(promptModuleNodes:)(uint64_t a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes) + 16) - 1;
  E5TransformerLanguageModel.currentPromptModulesContextSize.getter();
  v5 = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    goto LABEL_44;
  }

  v6 = MEMORY[0x277D84F90];
  v46 = *(a1 + 16);
  v7 = 0;
  if (!v46)
  {
LABEL_34:
    v42 = v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_promptModulesKVCacheTokensMatchCount;
    if (*(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_promptModulesKVCacheTokensMatchCount + 8) == 1)
    {
      *v42 = v7;
      *(v42 + 8) = 0;
    }

    return;
  }

  v8 = 0;
  v52 = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes;
  v44 = a1 + 32;
  v45 = *(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_lruKVCache);
  v43 = v1;
  while (1)
  {
    v54 = *(v44 + 8 * v8);
    v9 = E5TransformerLanguageModel.leftContextTokens(forNode:)(v54);
    v10 = *(v45 + 16);
    type metadata accessor for KVLRUCache.TokenArrayWrapper();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    v12 = v10;

    v13 = [v12 objectForKey_];

    if (!v13)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v41 = *(v6 + 2);
      v40 = *(v6 + 3);
      if (v41 >= v40 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v6);
      }

      *(v6 + 2) = v41 + 1;
      *&v6[8 * v41 + 32] = v54;
      goto LABEL_5;
    }

    v50 = v7;
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v49 = v8;
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.device);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    v51 = v6;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55 = v18;
      *v17 = 136642819;
      v19 = MEMORY[0x223D8E8D0](v9, MEMORY[0x277D83B88]);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v55);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_220940000, v15, v16, "Found kv cache entry for tokens %{sensitive}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x223D90A10](v18, -1, -1);
      MEMORY[0x223D90A10](v17, -1, -1);
    }

    v22 = MEMORY[0x277D84F90];
    v23 = *(v9 + 16);
    if (v23)
    {
      break;
    }

LABEL_22:
    v47 = *(v43 + 48);
    ObjectType = swift_getObjectType();
    v30 = v9;
    v31 = v13;
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    (*(v47 + 32))(v32, v34, v30, v22, v5, ObjectType);
    if (v53)
    {

      outlined consume of Data._Representation(v32, v34);

      return;
    }

    outlined consume of Data._Representation(v32, v34);
    v35 = *(v43 + v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + v52) = v35;
    v1 = v43;
    v53 = 0;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
      *(v43 + v52) = v35;
    }

    v38 = *(v35 + 2);
    v37 = *(v35 + 3);
    v6 = v51;
    if (v38 >= v37 >> 1)
    {
      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v35);
    }

    *(v35 + 2) = v38 + 1;
    *&v35[8 * v38 + 32] = v54;
    *(v43 + v52) = v35;

    v39 = __OFADD__(v5, v23);
    v5 += v23;
    if (v39)
    {
      goto LABEL_42;
    }

    v39 = __OFADD__(v50, v23);
    v7 = v50 + v23;
    if (v39)
    {
      goto LABEL_43;
    }

    v8 = v49;
LABEL_5:
    if (++v8 == v46)
    {
      goto LABEL_34;
    }
  }

  v24 = 0;
  while (1)
  {
    v25 = v5 + v24;
    if (__OFADD__(v5, v24))
    {
      break;
    }

    v26 = v24;
    if (v25 < v5)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v25, v5))
    {
      goto LABEL_40;
    }

    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_41;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    }

    v28 = *(v22 + 2);
    v27 = *(v22 + 3);
    if (v28 >= v27 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v22);
    }

    ++v24;
    *(v22 + 2) = v28 + 1;
    v29 = &v22[24 * v28];
    *(v29 + 4) = v5;
    *(v29 + 5) = v26 + 1;
    *(v29 + 6) = MEMORY[0x277D84F90];
    if (v23 == v24)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

Swift::OpaquePointer_optional __swiftcall E5TransformerLanguageModel.tokenMasks(queryNodes:promptModulesTokensCounts:)(Swift::OpaquePointer queryNodes, Swift::OpaquePointer promptModulesTokensCounts)
{
  v28 = *(promptModulesTokensCounts._rawValue + 2);
  if (v28)
  {
    if (*(*(v2 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes) + 16) == 1)
    {
      rawValue = queryNodes._rawValue;
      v25 = E5TransformerLanguageModel.nodesAreLinear(nodes:)(queryNodes._rawValue);
      E5TransformerLanguageModel.currentPromptModulesContextSize.getter();
      v4 = queryNodes._rawValue;
      v5 = 0;
      v6 = MEMORY[0x277D84F90];
      v32 = MEMORY[0x277D84F90];
      v27 = promptModulesTokensCounts._rawValue + 32;
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        v8 = *&v27[8 * v5];
        if (v8 < 0)
        {
          break;
        }

        if (v8)
        {
          v29 = v5;
          v9 = 0;
          while (1)
          {
            v10 = v4 + v9;
            if (__OFADD__(v4, v9))
            {
              break;
            }

            v11 = v9;
            if (v10 < v4)
            {
              goto LABEL_36;
            }

            if (__OFSUB__(v10, v4))
            {
              goto LABEL_37;
            }

            if (v9 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_38;
            }

            queryNodes._rawValue = swift_isUniquelyReferenced_nonNull_native();
            if ((queryNodes._rawValue & 1) == 0)
            {
              queryNodes._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
              v7 = queryNodes._rawValue;
            }

            v13 = *(v7 + 2);
            v12 = *(v7 + 3);
            if (v13 >= v12 >> 1)
            {
              queryNodes._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
              v7 = queryNodes._rawValue;
            }

            ++v9;
            *(v7 + 2) = v13 + 1;
            v14 = &v7[24 * v13];
            *(v14 + 4) = v4;
            *(v14 + 5) = v11 + 1;
            *(v14 + 6) = v6;
            if (v8 == v9)
            {
              v32 = v7;
              v5 = v29;
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_17:
        v15 = __OFADD__(v4, v8);
        v4 += v8;
        if (v15)
        {
          goto LABEL_41;
        }

        if (++v5 == v28)
        {
          if ((v25 & 1) == 0)
          {
            v24 = rawValue;
            goto LABEL_33;
          }

          v16 = rawValue[2];
          v7 = MEMORY[0x277D84F90];
          if (v16)
          {
            v30 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
            v17 = 0;
            queryNodes._rawValue = v30;
            while (1)
            {
              v18 = v4 + v17;
              if (__OFADD__(v4, v17))
              {
                goto LABEL_42;
              }

              if (v4 < 0)
              {
                goto LABEL_43;
              }

              if ((v4 ^ 0x7FFFFFFFFFFFFFFFLL) == v17)
              {
                goto LABEL_44;
              }

              v31 = queryNodes._rawValue;
              v20 = *(queryNodes._rawValue + 2);
              v19 = *(queryNodes._rawValue + 3);
              if (v20 >= v19 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
                queryNodes._rawValue = v31;
              }

              ++v17;
              *(queryNodes._rawValue + 2) = v20 + 1;
              v21 = queryNodes._rawValue + 24 * v20;
              v21[4] = 0;
              v21[5] = v18 + 1;
              v21[6] = v7;
              if (v16 == v17)
              {
                goto LABEL_34;
              }
            }
          }

LABEL_39:
          queryNodes._rawValue = v7;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v22 = queryNodes._rawValue;
    if (E5TransformerLanguageModel.nodesAreLinear(nodes:)(queryNodes._rawValue))
    {
      queryNodes._rawValue = 0;
    }

    else
    {
      E5TransformerLanguageModel.currentPromptModulesContextSize.getter();
      v4 = v23;
      v32 = MEMORY[0x277D84F90];
      v24 = v22;
LABEL_33:
      queryNodes._rawValue = E5TransformerLanguageModel.tokenMasks(queryNodes:promptModuleContextCount:)(v24, v4);
LABEL_34:
      specialized Array.append<A>(contentsOf:)(queryNodes._rawValue);
      queryNodes._rawValue = v32;
    }
  }

  result.is_nil = promptModulesTokensCounts._rawValue;
  result.value = queryNodes;
  return result;
}

uint64_t E5TransformerLanguageModel.nodesAreLinear(nodes:)(uint64_t a1)
{
  if (*(a1 + 16) >= 2uLL)
  {
    v17 = a1;

    v3 = 0;
    specialized MutableCollection<>.sort(by:)(&v17, v1, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));

    v4 = v17;
    if (*(v17 + 2))
    {
      v3 = *(v17 + 4);
      swift_beginAccess();
      if ((v3 & 0x8000000000000000) != 0)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v5 = *(v1 + 56);
      if (v3 >= *(v5 + 16))
      {
LABEL_20:
        __break(1u);

        __break(1u);
        return result;
      }

      v6 = *(v5 + 48 * v3 + 32);

      v3 = specialized NodeStorage.nodes(previousAndIncluding:position:)(v3, v6, 0, v5);
      v8 = v7;

      v9 = 0;
      v10 = *(v4 + 2);
      v11 = 32;
      while (1)
      {
        if (!v10 || (v9 & 1) != 0)
        {

          v2 = 1;
          goto LABEL_14;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_17;
        }

        v12 = *&v4[v11];
        v13 = v8 + 32 + 48 * v3;
        v14 = *(v13 + 8);
        v9 = *(v13 + 16);
        v11 += 8;
        --v10;
        v15 = v12 == v3;
        v3 = v14;
        if (!v15)
        {

          v2 = 0;
LABEL_14:

          return v2;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return 1;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = *v1;
  v5 = *(*v1 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v7 = *(v4 + 3) >> 1, v7 < v5))
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v5, 1, v4);
    v7 = *(v4 + 3) >> 1;
  }

  v8 = *(v4 + 2);
  v9 = v7 - v8;
  v10 = specialized Sequence._copySequenceContents(initializing:)(&v21, &v4[8 * v8 + 32], v7 - v8, a1);
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v10)
  {
    v11 = *(v4 + 2);
    v12 = __OFADD__(v11, v10);
    v13 = v11 + v10;
    if (v12)
    {
      __break(1u);
LABEL_15:
      *(v4 + 2) = v2;
      v15 = v2;
      goto LABEL_16;
    }

    *(v4 + 2) = v13;
  }

  if (v10 == v9)
  {
LABEL_12:
    a1 = v1;
    v15 = *(v4 + 2);
    v10 = specialized FlattenSequence.Iterator.next()();
    if (v16)
    {

LABEL_24:
      v1 = a1;
      goto LABEL_10;
    }

LABEL_16:
    v17 = *(v4 + 3);
    v18 = v17 >> 1;
    if ((v17 >> 1) < v15 + 1)
    {
      v20 = v10;
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v15 + 1, 1, v4);
      v10 = v20;
      v18 = *(v4 + 3) >> 1;
    }

    if (v15 <= v18)
    {
      v2 = v18;
    }

    else
    {
      v2 = v15;
    }

    do
    {
      if (v2 == v15)
      {
        goto LABEL_15;
      }

      *&v4[8 * v15++ + 32] = v10;
      v10 = specialized FlattenSequence.Iterator.next()();
    }

    while ((v19 & 1) == 0);

    *(v4 + 2) = v15;
    goto LABEL_24;
  }

LABEL_10:
  *v1 = v4;
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D71E38]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x277D71DA0]);
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_22:
    v6 = 0;
    *v5 = a4;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = 0;
    return v6;
  }

  v6 = a3;
  if (!a3)
  {
    v8 = 0;
    v9 = 0;
    v11 = 0;
LABEL_26:
    *v5 = a4;
    v5[1] = v11;
LABEL_27:
    v5[2] = v9;
    v5[3] = v8;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = a2;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a4 + 32;
    v13 = 1;
    while (v9)
    {
      v14 = *(v9 + 16);
      if (v8 == v14)
      {
        break;
      }

      v18 = v8;
      if (v8 >= v14)
      {
        goto LABEL_30;
      }

LABEL_18:
      v8 = v18 + 1;
      *v7 = *(v9 + 8 * v18 + 32);
      if (v13 == v6)
      {
        goto LABEL_26;
      }

      ++v7;
      v10 = v13;
      if (__OFADD__(v13++, 1))
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    v15 = *(a4 + 16);
    if (v11 == v15)
    {
LABEL_24:
      *v5 = a4;
      v5[1] = v11;
      v6 = v10;
      goto LABEL_27;
    }

    if (v11 < v15)
    {
      while (1)
      {
        v9 = *(v12 + 8 * v11);

        if (v9 && *(v9 + 16))
        {
          v18 = 0;
          ++v11;
          goto LABEL_18;
        }

        v16 = *(a4 + 16);
        v17 = v11 + 1 >= v16;
        if (v11 + 1 == v16)
        {
          break;
        }

        ++v11;
        if (v17)
        {
          goto LABEL_29;
        }
      }

      v8 = 0;
      ++v11;
      goto LABEL_24;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance E5RunnerObjC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance E5RunnerObjC, 0, 0);
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void anonymous namespace::tokenNSArrayToVector(void *a1@<X0>, std::vector<int> *a2@<X8>)
{
  v3 = a1;
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  a2->__begin_ = 0;
  v18 = v3;
  v4 = [v3 count];
  std::vector<int>::reserve(a2, v4);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [v18 objectAtIndexedSubscript:i];
      v7 = [v6 intValue];
      end = a2->__end_;
      value = a2->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a2->__begin_;
        v12 = end - a2->__begin_;
        v13 = v12 >> 2;
        v14 = (v12 >> 2) + 1;
        if (v14 >> 62)
        {
          _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
        }

        v15 = value - begin;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v16);
        }

        *(4 * v13) = v7;
        v10 = 4 * v13 + 4;
        memcpy(0, begin, v12);
        v17 = a2->__begin_;
        a2->__begin_ = 0;
        a2->__end_ = v10;
        a2->__end_cap_.__value_ = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *end = v7;
        v10 = (end + 4);
      }

      a2->__end_ = v10;
    }
  }
}

void sub_220970478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void anonymous namespace::tokenMasksToVector(void *a1@<X0>, const void **a2@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v22 = v3;
  std::vector<std::vector<signed char>>::reserve(a2, [v3 count]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v22;
  v4 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v4)
  {
    v24 = *v36;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v35 + 1) + 8 * i);
        v26 = 0;
        v27 = &v26;
        v28 = 0x4812000000;
        v29 = __Block_byref_object_copy_;
        v30 = __Block_byref_object_dispose_;
        v31 = "";
        v33 = 0;
        v34 = 0;
        __p = 0;
        std::vector<signed char>::reserve(&__p, [v6 count]);
        v7 = [v6 leadingZeroCount];
        for (j = [v6 middleOneCount]; v7; --v7)
        {
          LOBYTE(v39[0]) = 0;
          std::vector<signed char>::push_back[abi:ne200100]((v27 + 6), v39);
        }

        for (; j; --j)
        {
          LOBYTE(v39[0]) = 1;
          std::vector<signed char>::push_back[abi:ne200100]((v27 + 6), v39);
        }

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = ___ZN12_GLOBAL__N_118tokenMasksToVectorEP7NSArrayIP16TGITokenMaskObjCE_block_invoke;
        v25[3] = &unk_27844FC18;
        v25[4] = &v26;
        [v6 getTrailingMaskBytes:v25];
        v9 = v27;
        v10 = a2[1];
        v11 = a2[2];
        if (v10 >= v11)
        {
          v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
          v14 = v13 + 1;
          if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
          }

          v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a2) >> 3);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x555555555555555)
          {
            v16 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v16 = v14;
          }

          v39[4] = a2;
          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<signed char>>>(a2, v16);
          }

          v17 = 24 * v13;
          *v17 = 0;
          *(v17 + 8) = 0;
          *(v17 + 16) = 0;
          *v17 = *(v9 + 3);
          *(v17 + 16) = v9[8];
          v9[6] = 0;
          v9[7] = 0;
          v9[8] = 0;
          v12 = 24 * v13 + 24;
          v18 = a2[1] - *a2;
          v19 = v17 - v18;
          memcpy((v17 - v18), *a2, v18);
          v20 = *a2;
          *a2 = v19;
          a2[1] = v12;
          v21 = a2[2];
          a2[2] = 0;
          v39[2] = v20;
          v39[3] = v21;
          v39[0] = v20;
          v39[1] = v20;
          std::__split_buffer<std::vector<signed char>>::~__split_buffer(v39);
        }

        else
        {
          *v10 = 0;
          *(v10 + 1) = 0;
          *(v10 + 2) = 0;
          *v10 = *(v9 + 3);
          *(v10 + 2) = v9[8];
          v9[6] = 0;
          v9[7] = 0;
          v9[8] = 0;
          v12 = (v10 + 24);
        }

        a2[1] = v12;
        _Block_object_dispose(&v26, 8);
        if (__p)
        {
          v33 = __p;
          operator delete(__p);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v4);
  }
}

void sub_220970914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&a18);

  _Unwind_Resume(a1);
}

uint64_t TwoStageSpeculativeDecoder.generateDraftTokens()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 704) = a1;
  *(v3 + 712) = v1;

  outlined destroy of LogitPresampler?(v3 + 232);

  if (v1)
  {

    v4 = TwoStageSpeculativeDecoder.generateDraftTokens();
  }

  else
  {
    v4 = TwoStageSpeculativeDecoder.generateDraftTokens();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 792) = a1;
  *(v3 + 800) = v1;

  outlined destroy of LogitPresampler?(v3 + 432);
  if (v1)
  {

    v4 = TwoStageSpeculativeDecoder.generateDraftTokens();
  }

  else
  {
    v4 = TwoStageSpeculativeDecoder.generateDraftTokens();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t E5TransformerLanguageModel.currentQueryNodesAreLinear.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes);
  v2 = *(v1 + 16);
  if (v2)
  {
    result = swift_beginAccess();
    v4 = (v1 + 40);
    v5 = v2 - 1;
    while (1)
    {
      v6 = v5;
      if (!v5)
      {
        return v6 == 0;
      }

      v7 = *v4;
      if ((*v4 & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 = *(v0 + 56);
      v9 = *(v8 + 16);
      if (v7 >= v9)
      {
        goto LABEL_11;
      }

      v10 = *(v4 - 1);
      if (v10 >= v9)
      {
        goto LABEL_12;
      }

      v11 = v8 + 32;
      v12 = *(v11 + 48 * v10);
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_13;
      }

      v15 = *(v11 + 48 * v7);
      ++v4;
      v5 = v6 - 1;
      if (v15 != v14)
      {
        return v6 == 0;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference26TwoStageSpeculativeDecoderC0D9WithNodes33_997C69FF02F080FB13F8B8AFFD1FC4ECLLVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference19MaskedLanguageModelC4NodeVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySnySiGGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference22CompositeLanguageModelC4NodeVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySi6target_Si5drafttGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference12AFMUtilitiesV20CacheFillInstructionVGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference0D4MaskVGMd);
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

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = __CocoaSet.count.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
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

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [TokenTreeNode] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference0A8TreeNodeCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TokenTreeNode();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 25;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 3);
  return v4;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 8);
          if (*v12 >= v13)
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty()(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[14] = a1;
  v4[15] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](TwoStageSpeculativeDecoder.fillBufferedTokensIfEmpty(), 0, 0);
  }
}

Swift::Int __swiftcall E5TransformerLanguageModel.latestCommonParent(nodeA:nodeB:)(Swift::Int nodeA, Swift::Int nodeB)
{
  swift_beginAccess();
  if (nodeA < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v5 = *(v2 + 56);
  v6 = *(v5 + 16);
  if (v6 <= nodeA)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v6 <= nodeB)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = *(v5 + 32 + 48 * nodeA);
  v8 = *(v5 + 32 + 48 * nodeB);
  if (v8 >= v7)
  {
    v9 = *(v5 + 32 + 48 * nodeA);
  }

  else
  {
    v9 = *(v5 + 32 + 48 * nodeB);
  }

  if (v9)
  {

    v10 = specialized NodeStorage.nodes(previousAndIncluding:position:)(nodeA, v7, 0, v5);
    v35 = v11;
    v36 = v10;
    v13 = v12;
    v15 = v14;

    v16 = v7 - v9;
    if (!__OFSUB__(v7, v9))
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = *(v2 + 56);
        if (*(v17 + 16) > nodeB)
        {
          v18 = *(v17 + 48 * nodeB + 32);

          v19 = specialized NodeStorage.nodes(previousAndIncluding:position:)(nodeB, v18, 0, v17);
          v21 = v20;
          v23 = v22;
          v25 = v24;

          if (!__OFSUB__(v8, v9))
          {
            if (((v8 - v9) & 0x8000000000000000) == 0)
            {
              v46 = v36;
              v47 = v15;
              v48 = v35;
              v49 = v13 & 1;
              v50 = v16;
              v51 = v19;
              v52 = v21;
              v53 = v23;
              v54 = v25 & 1;
              v55 = v8 - v9;
              specialized Zip2Sequence.makeIterator()(&v37);
              v45 = v38;
              v44 = v37;
              v43 = v40;
              v42 = v39;
              if ((v41 & 1) == 0)
              {
                v26 = BYTE8(v42);
                v27 = BYTE8(v44);
                v28 = &v42;
                v29 = v44;
                while ((v27 & 1) == 0)
                {
                  v30 = v29;
                  if ((v29 & 0x8000000000000000) != 0)
                  {
                    __break(1u);
LABEL_26:
                    __break(1u);
LABEL_27:
                    __break(1u);
LABEL_28:
                    __break(1u);
                    goto LABEL_29;
                  }

                  if (v29 >= *(v38 + 16))
                  {
                    goto LABEL_26;
                  }

                  if (v26)
                  {
                    goto LABEL_37;
                  }

                  v31 = *v28;
                  if ((*v28 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_27;
                  }

                  if (v31 >= *(v40 + 16))
                  {
                    goto LABEL_28;
                  }

                  v32 = v38 + 32 + 48 * v29;
                  v29 = *(v32 + 8);
                  v27 = *(v32 + 16);
                  v33 = v40 + 32 + 48 * v31;
                  v28 = (v33 + 8);
                  v26 = *(v33 + 16);
                  if (v30 == v31)
                  {
                    outlined destroy of NodeStorage<E5TransformerLanguageModel.NodeState>.PreviousNodeIterator(&v44);
                    outlined destroy of NodeStorage<E5TransformerLanguageModel.NodeState>.PreviousNodeIterator(&v42);
                    return v30;
                  }
                }
              }

              goto LABEL_37;
            }

LABEL_36:
            __break(1u);
LABEL_37:

            outlined destroy of NodeStorage<E5TransformerLanguageModel.NodeState>.PreviousNodeIterator(&v44);
            result = outlined destroy of NodeStorage<E5TransformerLanguageModel.NodeState>.PreviousNodeIterator(&v42);
            __break(1u);
            return result;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  return 0;
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = result - a3;
LABEL_5:
    result = swift_beginAccess();
    v11 = *(v8 + 8 * v6);
    v12 = v10;
    v13 = v9;
    while ((v11 & 0x8000000000000000) == 0)
    {
      v14 = *(a5 + 56);
      v15 = *(v14 + 16);
      if (v11 >= v15)
      {
        goto LABEL_22;
      }

      v16 = *v13;
      if (*v13 >= v15)
      {
        goto LABEL_23;
      }

      v17 = v14 + 32;
      v18 = v17 + 48 * v11;
      v19 = v17 + 48 * v16;
      v20 = *v19 < *v18;
      if (*v19 == *v18)
      {
        v21 = *(v18 + 40);
        v22 = *(v18 + 32);
        if (v21)
        {
          v22 = -1;
        }

        v23 = *(v19 + 40);
        v24 = *(v19 + 32);
        if (v23)
        {
          v24 = -1;
        }

        v20 = v24 < v22;
      }

      if (v20)
      {
        if (!v8)
        {
          goto LABEL_24;
        }

        *v13 = v11;
        v13[1] = v16;
        --v13;
        if (!__CFADD__(v12++, 1))
        {
          continue;
        }
      }

      ++v6;
      v9 += 8;
      --v10;
      if (v6 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_22097372C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_220973840()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_220973890()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2209738C8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220973904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogitIndexSet();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220973970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogitIndexSet();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2209739E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v6 = type metadata accessor for AsyncThrowingStream();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220973B2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  result = type metadata accessor for AsyncThrowingStream();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_220973C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v6 = type metadata accessor for AsyncThrowingStream.Iterator();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220973D6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  result = type metadata accessor for AsyncThrowingStream.Iterator();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220973E60()
{
  v1 = (type metadata accessor for ImageEncoder.Signposter() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 136) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v5 = type metadata accessor for OSSignposter();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_220973F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignposter();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_220974088(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for OSSignposter();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_220974194()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v1 = type metadata accessor for CheckedContinuation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_220974268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2209742E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2209743A4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyShySSGGMd);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2209743D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220974490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220974548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2209745B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220974624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22097469C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220974798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2209748C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UUID();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2209749F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for UUID();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_220974B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220974BE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220974C98()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220974CE0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220974D18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySiGMd);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySSGMd);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySbGMd);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[9];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySfGMd);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[13];

  return v17(v18, a2, v16);
}

uint64_t sub_220974ED0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySiGMd);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySSGMd);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySbGMd);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore11OverridableVySfGMd);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[13];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_220975098()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2209750F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220975128()
{
  v17 = type metadata accessor for UUID();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 24) & ~v2;
  v3 = *(v1 + 64);
  v16 = type metadata accessor for InferenceProviderRequestConfiguration();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v13 = (((((v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;
  v6 = *(v4 + 64);
  v14 = type metadata accessor for ClientData();
  v7 = *(v14 - 8);
  v8 = *(v7 + 80);
  v9 = (v13 + v6 + v8) & ~v8;
  v18 = v2 | v5 | v8;
  v10 = (*(v7 + 64) + v2 + v9) & ~v2;

  v11 = *(v1 + 8);
  v11(v0 + v15, v17);

  (*(v4 + 8))(v0 + v13, v16);
  (*(v7 + 8))(v0 + v9, v14);
  v11(v0 + v10, v17);

  return MEMORY[0x2821FE8E8](v0, ((((((((((((((((((v10 + v3) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v18 | 7);
}

uint64_t sub_220975438()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220975470(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Prompt();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SamplingParameters();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = type metadata accessor for RequestMetadata();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[8];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_220975638(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Prompt();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for SamplingParameters();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_5;
  }

  v17 = type metadata accessor for RequestMetadata();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_220975830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProgramDescriptor();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2209758EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProgramDescriptor();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2209759A4()
{
  if (MEMORY[0x277D85020])
  {
    return type metadata accessor for ODIELanguageModel();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2209759E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BasicLogitPresampler();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220975A8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BasicLogitPresampler();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220975B30()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220975B68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220975BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LogitIndexSet();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220975C50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LogitIndexSet();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220975D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LogitIndexSet();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220975DBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LogitIndexSet();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220975E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogitIndexSet();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220975F1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LogitIndexSet();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220975FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogitIndexSet();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220976040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogitIndexSet();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2209760B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogitIndexSet();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22097611C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogitIndexSet();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22097618C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogitIndexSet();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220976248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LogitIndexSet();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220976300(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LogitIndexSet();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2209763AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LogitIndexSet();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220976450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2209764C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220976544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2209765BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22097663C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2209766B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22097673C@<X0>(uint64_t *a1@<X8>)
{
  result = TokenizerRunnerPrefixMatchingTextProcessor.longestTokenLength.getter();
  *a1 = result;
  return result;
}

void *sub_220976768(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 24) = *result;
  *(v2 + 32) = 0;
  return result;
}

uint64_t sub_22097677C@<X0>(uint64_t *a1@<X8>)
{
  result = TokenizerRunnerPrefixMatchingTextProcessor.vocabularyCount.getter();
  *a1 = result;
  return result;
}

void *sub_2209767A8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(v2 + 40) = *result;
  *(v2 + 48) = 0;
  return result;
}

uint64_t sub_2209767BC@<X0>(_BYTE *a1@<X8>)
{
  result = TokenizerRunnerPrefixMatchingTextProcessor.isContinuationTokenizer.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2209767FC()
{

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

void PresampleArgmax(uint64_t a1, int a2, int a3, int a4, int a5, void *__b)
{
  v174 = *MEMORY[0x277D85DE8];
  if (a5 <= 64)
  {
    v11 = a5 - 9;
    if ((a5 - 9) > 0x37)
    {
      if ((a5 - 5) >= 4)
      {
        if ((a5 - 1) > 3 || !a2)
        {
          goto LABEL_76;
        }

        v85 = (a1 + 2 * a4);
        if (a2 <= 1)
        {
          __p[1] = 0;
          v86 = 0x400040004000400;
          __p[0] = 0;
        }

        else
        {
          v86 = 0x400040004000400;
          v87 = 0uLL;
          v88.i64[0] = 0x100000001;
          v88.i64[1] = 0x100000001;
          v89 = a2 - 1;
          v90 = 0uLL;
          do
          {
            v87 = vbslq_s8(vmovl_s16(vcgt_f16(*v85, v86)), v90, v87);
            v90 = vaddq_s32(v90, v88);
            v86 = vmaxnm_f16(v86, *v85);
            v85 = (v85 + 2 * a3);
            --v89;
          }

          while (v89);
          *__p = v87;
          if (a5 < 1)
          {
            goto LABEL_76;
          }
        }

        v120 = 0;
        do
        {
          v121 = *&v85->i16[v120];
          v152 = v86;
          if (v121 > *(&v152 & 0xFFFFFFFFFFFFFFF9 | (2 * (v120 & 3))))
          {
            *(__p + v120) = a2 - 1;
          }

          ++v120;
        }

        while (a5 != v120);
        goto LABEL_76;
      }

      if (a2)
      {
        v109 = (a1 + 2 * a4);
        if (a2 <= 1)
        {
          v159 = 0u;
          *__p = 0u;
          v111.i64[0] = 0x400040004000400;
          v111.i64[1] = 0x400040004000400;
        }

        else
        {
          v110 = 0uLL;
          v111.i64[0] = 0x400040004000400;
          v111.i64[1] = 0x400040004000400;
          v112.i64[0] = 0x100000001;
          v112.i64[1] = 0x100000001;
          v113 = a2 - 1;
          v114 = 0uLL;
          v115 = 0uLL;
          v116 = 0uLL;
          do
          {
            v117 = vcgtq_f16(*v109, v111);
            v114 = vbslq_s8(vmovl_high_s16(v117), v116, v114);
            v110 = vbslq_s8(vmovl_s16(*v117.i8), v115, v110);
            v115 = vaddq_s32(v115, v112);
            v116 = vaddq_s32(v116, v112);
            v111 = vmaxnmq_f16(v111, *v109);
            v109 = (v109 + 2 * a3);
            --v113;
          }

          while (v113);
          *__p = v110;
          v159 = v114;
          if (a5 < 1)
          {
            goto LABEL_76;
          }
        }

        v122 = 0;
        do
        {
          v123 = *&v109->i16[v122];
          v153 = v111;
          if (v123 > *(&v153 & 0xFFFFFFFFFFFFFFF1 | (2 * (v122 & 7))))
          {
            *(__p + v122) = a2 - 1;
          }

          ++v122;
        }

        while (a5 != v122);
      }
    }

    else if (((1 << v11) & 0xFFFFFFFF000000) != 0)
    {
      if (a2)
      {
        v12 = (a1 + 2 * a4);
        if (a2 <= 1)
        {
          v173 = 0u;
          v172 = 0u;
          v171 = 0u;
          v170 = 0u;
          v169 = 0u;
          v168 = 0u;
          v167 = 0u;
          v166 = 0u;
          v165 = 0u;
          v164 = 0u;
          v44.i64[0] = 0x400040004000400;
          v44.i64[1] = 0x400040004000400;
          v163 = 0u;
          v162 = 0u;
          v45.i64[0] = 0x400040004000400;
          v45.i64[1] = 0x400040004000400;
          v20.i64[0] = 0x400040004000400;
          v20.i64[1] = 0x400040004000400;
          v82.i64[0] = 0x400040004000400;
          v82.i64[1] = 0x400040004000400;
          v151 = v82;
          v161 = 0u;
          v160 = 0u;
          v21.i64[0] = 0x400040004000400;
          v21.i64[1] = 0x400040004000400;
          v22.i64[0] = 0x400040004000400;
          v22.i64[1] = 0x400040004000400;
          v23.i64[0] = 0x400040004000400;
          v23.i64[1] = 0x400040004000400;
          v159 = 0u;
          *__p = 0u;
          v24.i64[0] = 0x400040004000400;
          v24.i64[1] = 0x400040004000400;
        }

        else
        {
          v13.i64[0] = 0x400040004000400;
          v13.i64[1] = 0x400040004000400;
          v149 = v13;
          v146 = 0u;
          v147 = 0u;
          v14 = a2 - 1;
          v144 = 0u;
          v145 = 0u;
          v142 = 0u;
          v143 = 0u;
          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          v15 = 0uLL;
          v16 = 0uLL;
          v17 = 0uLL;
          v18 = 0uLL;
          v19 = 0uLL;
          v13.i64[0] = 0x400040004000400;
          v13.i64[1] = 0x400040004000400;
          v148 = v13;
          v20.i64[0] = 0x400040004000400;
          v20.i64[1] = 0x400040004000400;
          v151 = v13;
          v21.i64[0] = 0x400040004000400;
          v21.i64[1] = 0x400040004000400;
          v22.i64[0] = 0x400040004000400;
          v22.i64[1] = 0x400040004000400;
          v23.i64[0] = 0x400040004000400;
          v23.i64[1] = 0x400040004000400;
          v24.i64[0] = 0x400040004000400;
          v24.i64[1] = 0x400040004000400;
          v25 = 0uLL;
          v26 = 0uLL;
          v136 = 0u;
          v137 = 0u;
          v27 = 0uLL;
          v28 = 0uLL;
          v29 = 0uLL;
          v30 = 0uLL;
          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v31 = 0uLL;
          do
          {
            v150 = v31;
            v127 = v30;
            v124 = v12[3];
            v32 = vcgtq_f16(v12[2], v20);
            v126 = v12[1];
            v33 = vcgtq_f16(*v12, v149);
            v34 = vcgtq_f16(v126, v148);
            v144 = vbslq_s8(vmovl_high_s16(v34), v27, v144);
            v35 = v12[4];
            v125 = v12[5];
            v145 = vbslq_s8(vmovl_s16(*v34.i8), v136, v145);
            v146 = vbslq_s8(vmovl_high_s16(v33), v26, v146);
            v147 = vbslq_s8(vmovl_s16(*v33.i8), v25, v147);
            v37 = v12[6];
            v36 = v12[7];
            v38 = vcgtq_f16(v124, v151);
            v142 = vbslq_s8(vmovl_high_s16(v32), v29, v142);
            v143 = vbslq_s8(vmovl_s16(*v32.i8), v28, v143);
            v39 = vcgtq_f16(v35, v21);
            v140 = vbslq_s8(vmovl_high_s16(v38), v135, v140);
            v141 = vbslq_s8(vmovl_s16(*v38.i8), v127, v141);
            v40 = vcgtq_f16(v125, v22);
            v138 = vbslq_s8(vmovl_high_s16(v39), v133, v138);
            v139 = vbslq_s8(vmovl_s16(*v39.i8), v134, v139);
            v137 = vbslq_s8(vmovl_s16(*v40.i8), v132, v137);
            v41 = vcgtq_f16(v37, v23);
            v15 = vbslq_s8(vmovl_high_s16(v40), v131, v15);
            v16 = vbslq_s8(vmovl_s16(*v41.i8), v130, v16);
            v42 = vcgtq_f16(v36, v24);
            v17 = vbslq_s8(vmovl_high_s16(v41), v129, v17);
            v18 = vbslq_s8(vmovl_s16(*v42.i8), v128, v18);
            v19 = vbslq_s8(vmovl_high_s16(v42), v150, v19);
            v148 = vmaxnmq_f16(v148, v126);
            v149 = vmaxnmq_f16(v149, *v12);
            v20 = vmaxnmq_f16(v20, v12[2]);
            v151 = vmaxnmq_f16(v151, v124);
            v21 = vmaxnmq_f16(v21, v35);
            v22 = vmaxnmq_f16(v22, v125);
            v23 = vmaxnmq_f16(v23, v37);
            v24 = vmaxnmq_f16(v24, v36);
            v43.i64[0] = 0x100000001;
            v43.i64[1] = 0x100000001;
            v25 = vaddq_s32(v25, v43);
            v26 = vaddq_s32(v26, v43);
            v27 = vaddq_s32(v27, v43);
            v28 = vaddq_s32(v28, v43);
            v29 = vaddq_s32(v29, v43);
            v30 = vaddq_s32(v127, v43);
            v135 = vaddq_s32(v135, v43);
            v136 = vaddq_s32(v136, v43);
            v133 = vaddq_s32(v133, v43);
            v134 = vaddq_s32(v134, v43);
            v131 = vaddq_s32(v131, v43);
            v132 = vaddq_s32(v132, v43);
            v129 = vaddq_s32(v129, v43);
            v130 = vaddq_s32(v130, v43);
            v128 = vaddq_s32(v128, v43);
            v12 = (v12 + 2 * a3);
            v31 = vaddq_s32(v150, v43);
            --v14;
          }

          while (v14);
          *__p = v147;
          v159 = v146;
          v160 = v145;
          v161 = v144;
          v162 = v143;
          v163 = v142;
          v164 = v141;
          v165 = v140;
          v166 = v139;
          v167 = v138;
          v168 = v137;
          v169 = v15;
          v170 = v16;
          v171 = v17;
          v172 = v18;
          v173 = v19;
          v45 = v148;
          v44 = v149;
          if (a5 < 1)
          {
            goto LABEL_76;
          }
        }

        v83 = 0;
        do
        {
          v84 = *&v12->i16[v83];
          v156[0] = v44;
          v156[1] = v45;
          v156[2] = v20;
          v156[3] = v151;
          v156[4] = v21;
          v156[5] = v22;
          v156[6] = v23;
          v156[7] = v24;
          if (v84 > *(v156 + (v83 & 0x3F)))
          {
            *(__p + v83) = a2 - 1;
          }

          ++v83;
        }

        while (a5 != v83);
      }
    }

    else if (((1 << v11) & 0xFFFF00) != 0)
    {
      if (a2)
      {
        v52 = (a1 + 2 * a4);
        if (a2 <= 1)
        {
          v165 = 0u;
          v164 = 0u;
          v163 = 0u;
          v162 = 0u;
          v161 = 0u;
          v160 = 0u;
          v53.i64[0] = 0x400040004000400;
          v53.i64[1] = 0x400040004000400;
          v64.i64[0] = 0x400040004000400;
          v64.i64[1] = 0x400040004000400;
          v65.i64[0] = 0x400040004000400;
          v65.i64[1] = 0x400040004000400;
          v66.i64[0] = 0x400040004000400;
          v66.i64[1] = 0x400040004000400;
          v159 = 0u;
          *__p = 0u;
        }

        else
        {
          v53.i64[0] = 0x400040004000400;
          v53.i64[1] = 0x400040004000400;
          v54 = 0uLL;
          v55.i64[0] = 0x100000001;
          v55.i64[1] = 0x100000001;
          v56 = a2 - 1;
          v57 = 0uLL;
          v58 = 0uLL;
          v59 = 0uLL;
          v60 = 0uLL;
          v61 = 0uLL;
          v62 = 0uLL;
          v63 = 0uLL;
          v64.i64[0] = 0x400040004000400;
          v64.i64[1] = 0x400040004000400;
          v65.i64[0] = 0x400040004000400;
          v65.i64[1] = 0x400040004000400;
          v66.i64[0] = 0x400040004000400;
          v66.i64[1] = 0x400040004000400;
          v67 = 0uLL;
          v68 = 0uLL;
          v69 = 0uLL;
          v70 = 0uLL;
          v71 = 0uLL;
          v72 = 0uLL;
          v73 = 0uLL;
          v74 = 0uLL;
          do
          {
            v75 = v52[1];
            v76 = vcgtq_f16(*v52, v53);
            v77 = vcgtq_f16(v75, v64);
            v59 = vbslq_s8(vmovl_high_s16(v77), v70, v59);
            v57 = vbslq_s8(vmovl_high_s16(v76), v68, v57);
            v78 = v52[2];
            v79 = v52[3];
            v58 = vbslq_s8(vmovl_s16(*v77.i8), v69, v58);
            v80 = vcgtq_f16(v78, v65);
            v54 = vbslq_s8(vmovl_s16(*v76.i8), v67, v54);
            v61 = vbslq_s8(vmovl_high_s16(v80), v72, v61);
            v81 = vcgtq_f16(v79, v66);
            v60 = vbslq_s8(vmovl_s16(*v80.i8), v71, v60);
            v62 = vbslq_s8(vmovl_s16(*v81.i8), v73, v62);
            v63 = vbslq_s8(vmovl_high_s16(v81), v74, v63);
            v64 = vmaxnmq_f16(v64, v75);
            v53 = vmaxnmq_f16(v53, *v52);
            v65 = vmaxnmq_f16(v65, v78);
            v66 = vmaxnmq_f16(v66, v79);
            v67 = vaddq_s32(v67, v55);
            v68 = vaddq_s32(v68, v55);
            v69 = vaddq_s32(v69, v55);
            v70 = vaddq_s32(v70, v55);
            v71 = vaddq_s32(v71, v55);
            v72 = vaddq_s32(v72, v55);
            v73 = vaddq_s32(v73, v55);
            v52 = (v52 + 2 * a3);
            v74 = vaddq_s32(v74, v55);
            --v56;
          }

          while (v56);
          *__p = v54;
          v159 = v57;
          v160 = v58;
          v161 = v59;
          v162 = v60;
          v163 = v61;
          v164 = v62;
          v165 = v63;
          if (a5 < 1)
          {
            goto LABEL_76;
          }
        }

        v107 = 0;
        do
        {
          v108 = *&v52->i16[v107];
          v155[0] = v53;
          v155[1] = v64;
          v155[2] = v65;
          v155[3] = v66;
          if (v108 > *(v155 + (v107 & 0x1F)))
          {
            *(__p + v107) = a2 - 1;
          }

          ++v107;
        }

        while (a5 != v107);
      }
    }

    else if (a2)
    {
      v91 = (a1 + 2 * a4);
      if (a2 <= 1)
      {
        v161 = 0u;
        v160 = 0u;
        v159 = 0u;
        *__p = 0u;
        v92.i64[0] = 0x400040004000400;
        v92.i64[1] = 0x400040004000400;
        v99.i64[0] = 0x400040004000400;
        v99.i64[1] = 0x400040004000400;
      }

      else
      {
        v92.i64[0] = 0x400040004000400;
        v92.i64[1] = 0x400040004000400;
        v93 = 0uLL;
        v94.i64[0] = 0x100000001;
        v94.i64[1] = 0x100000001;
        v95 = a2 - 1;
        v96 = 0uLL;
        v97 = 0uLL;
        v98 = 0uLL;
        v99.i64[0] = 0x400040004000400;
        v99.i64[1] = 0x400040004000400;
        v100 = 0uLL;
        v101 = 0uLL;
        v102 = 0uLL;
        v103 = 0uLL;
        do
        {
          v104 = v91[1];
          v105 = vcgtq_f16(*v91, v92);
          v106 = vcgtq_f16(v104, v99);
          v98 = vbslq_s8(vmovl_high_s16(v106), v103, v98);
          v96 = vbslq_s8(vmovl_high_s16(v105), v101, v96);
          v97 = vbslq_s8(vmovl_s16(*v106.i8), v102, v97);
          v93 = vbslq_s8(vmovl_s16(*v105.i8), v100, v93);
          v100 = vaddq_s32(v100, v94);
          v101 = vaddq_s32(v101, v94);
          v102 = vaddq_s32(v102, v94);
          v103 = vaddq_s32(v103, v94);
          v99 = vmaxnmq_f16(v99, v104);
          v92 = vmaxnmq_f16(v92, *v91);
          v91 = (v91 + 2 * a3);
          --v95;
        }

        while (v95);
        *__p = v93;
        v159 = v96;
        v160 = v97;
        v161 = v98;
        if (a5 < 1)
        {
          goto LABEL_76;
        }
      }

      v118 = 0;
      do
      {
        v119 = *&v91->i16[v118];
        v154[0] = v92;
        v154[1] = v99;
        if (v119 > *(v154 + (v118 & 0xF)))
        {
          *(__p + v118) = a2 - 1;
        }

        ++v118;
      }

      while (a5 != v118);
    }

LABEL_76:
    memcpy(__b, __p, 4 * a5);
    return;
  }

  v46 = a5;
  memset_pattern4(__b, &PresampleArgmax::negativeOne, 4 * a5);
  v157 = -1025;
  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEEC2B8ne200100EmRKDF16_(__p, v46);
  v47 = __p[0];
  if (a2 < 1)
  {
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v48 = 0;
    v49 = a1 + 2 * a4;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        v51 = *(v49 + 2 * i);
        if (v51 > v47[i])
        {
          v47[i] = v51;
          *(__b + i) = v48;
        }
      }

      ++v48;
      v49 += 2 * a3;
    }

    while (v48 != a2);
  }

  __p[1] = v47;
  operator delete(v47);
}

void PresampleTopK2(uint64_t a1, int a2, int a3, int a4, int a5, void *__b, void *a7)
{
  v450 = *MEMORY[0x277D85DE8];
  if (a5 <= 64)
  {
    v13 = a5 - 9;
    if ((a5 - 9) <= 0x37)
    {
      if (((1 << v13) & 0xFFFFFFFF000000) == 0)
      {
        if (((1 << v13) & 0xFFFF00) == 0)
        {
          v196 = (a1 + 2 * a4);
          if (a2 <= 1)
          {
            v437 = 0u;
            v436 = 0u;
            v435 = 0u;
            *__src = 0u;
            v421 = 0u;
            v420 = 0u;
            v197.i64[0] = 0x400040004000400;
            v197.i64[1] = 0x400040004000400;
            v208.i64[0] = 0x400040004000400;
            v208.i64[1] = 0x400040004000400;
            v209.i64[0] = 0x400040004000400;
            v209.i64[1] = 0x400040004000400;
            v210.i64[0] = 0x400040004000400;
            v210.i64[1] = 0x400040004000400;
            v419 = 0u;
            *__p = 0u;
          }

          else
          {
            v197.i64[0] = 0x400040004000400;
            v197.i64[1] = 0x400040004000400;
            v198 = 0uLL;
            v199.i64[0] = 0x100000001;
            v199.i64[1] = 0x100000001;
            v200 = a2 - 1;
            v201 = 0uLL;
            v202 = 0uLL;
            v203 = 0uLL;
            v204 = 0uLL;
            v205 = 0uLL;
            v206 = 0uLL;
            v207 = 0uLL;
            v208.i64[0] = 0x400040004000400;
            v208.i64[1] = 0x400040004000400;
            v209.i64[0] = 0x400040004000400;
            v209.i64[1] = 0x400040004000400;
            v210.i64[0] = 0x400040004000400;
            v210.i64[1] = 0x400040004000400;
            v211 = 0uLL;
            v212 = 0uLL;
            v213 = 0uLL;
            v214 = 0uLL;
            do
            {
              v215 = v196[1];
              v216 = vcgtq_f16(*v196, v197);
              v217 = vmovl_s16(*v216.i8);
              v218 = vcgtq_f16(v215, v208);
              v219 = vmovl_s16(*v218.i8);
              v220 = vmovl_high_s16(v216);
              v221 = vmovl_high_s16(v218);
              v222 = vcgtq_f16(v215, v210);
              v223 = vcgtq_f16(*v196, v209);
              v210 = vbslq_s8(v218, v208, vmaxnmq_f16(v215, v210));
              v209 = vbslq_s8(v216, v197, vmaxnmq_f16(*v196, v209));
              v208 = vmaxnmq_f16(v215, v208);
              v197 = vmaxnmq_f16(*v196, v197);
              v207 = vbslq_s8(v221, v203, vbslq_s8(vmovl_high_s16(v222), v214, v207));
              v205 = vbslq_s8(v220, v201, vbslq_s8(vmovl_high_s16(v223), v212, v205));
              v206 = vbslq_s8(v219, v202, vbslq_s8(vmovl_s16(*v222.i8), v213, v206));
              v204 = vbslq_s8(v217, v198, vbslq_s8(vmovl_s16(*v223.i8), v211, v204));
              v203 = vbslq_s8(v221, v214, v203);
              v201 = vbslq_s8(v220, v212, v201);
              v202 = vbslq_s8(v219, v213, v202);
              v198 = vbslq_s8(v217, v211, v198);
              v211 = vaddq_s32(v211, v199);
              v212 = vaddq_s32(v212, v199);
              v213 = vaddq_s32(v213, v199);
              v214 = vaddq_s32(v214, v199);
              v196 = (v196 + 2 * a3);
              --v200;
            }

            while (v200);
            *__src = v198;
            v435 = v201;
            v436 = v202;
            v437 = v203;
            *__p = v204;
            v419 = v205;
            v420 = v206;
            v421 = v207;
            if (a5 < 1)
            {
              goto LABEL_135;
            }
          }

          v233 = 0;
          do
          {
            v234 = *&v196->i16[v233];
            v364[0] = v197;
            v364[1] = v208;
            v235 = *(v364 + (v233 & 0xF));
            if (v234 <= v235)
            {
              v363[0] = v209;
              v363[1] = v210;
              v237 = *(v363 + (v233 & 0xF));
              if (v234 >= v235)
              {
                v235 = v234;
              }

              v238 = v234 <= v237;
              if (v234 < v237)
              {
                v234 = *(v363 + (v233 & 0xF));
              }

              v361 = v209;
              v362 = v210;
              *&v361.i16[v233 & 0xF] = v234;
              v209 = v361;
              v210 = v362;
              v359 = v197;
              v360 = v208;
              *&v359.i16[v233 & 0xF] = v235;
              v239 = a2 - 1;
              if (v238)
              {
                v239 = *(__p + v233);
              }

              v197 = v359;
              v208 = v360;
              *(__p + v233) = v239;
              v236 = *(__src + v233);
            }

            else
            {
              v357 = v209;
              v358 = v210;
              *&v357.i16[v233 & 0xF] = v235;
              v209 = v357;
              v210 = v358;
              if (v234 < v235)
              {
                v234 = v235;
              }

              v355 = v197;
              v356 = v208;
              *&v355.i16[v233 & 0xF] = v234;
              v208 = v356;
              v197 = v355;
              *(__p + v233) = *(__src + v233);
              v236 = a2 - 1;
            }

            *(__src + v233++) = v236;
          }

          while (a5 != v233);
          goto LABEL_135;
        }

        v106 = (a1 + 2 * a4);
        if (a2 <= 1)
        {
          v441 = 0u;
          v440 = 0u;
          v439 = 0u;
          v438 = 0u;
          v437 = 0u;
          v436 = 0u;
          v435 = 0u;
          *__src = 0u;
          v425 = 0u;
          v424 = 0u;
          v175.i64[0] = 0x400040004000400;
          v175.i64[1] = 0x400040004000400;
          v423 = 0u;
          v422 = 0u;
          v123.i64[0] = 0x400040004000400;
          v123.i64[1] = 0x400040004000400;
          v124.i64[0] = 0x400040004000400;
          v124.i64[1] = 0x400040004000400;
          v125.i64[0] = 0x400040004000400;
          v125.i64[1] = 0x400040004000400;
          v421 = 0u;
          v420 = 0u;
          v174.i64[0] = 0x400040004000400;
          v174.i64[1] = 0x400040004000400;
          v173.i64[0] = 0x400040004000400;
          v173.i64[1] = 0x400040004000400;
          v171.i64[0] = 0x400040004000400;
          v171.i64[1] = 0x400040004000400;
          v419 = 0u;
          *__p = 0u;
          v172.i64[0] = 0x400040004000400;
          v172.i64[1] = 0x400040004000400;
        }

        else
        {
          v107.i64[0] = 0x400040004000400;
          v107.i64[1] = 0x400040004000400;
          v108 = 0uLL;
          v109 = a2 - 1;
          v110 = 0uLL;
          v111 = 0uLL;
          v340 = 0u;
          v112 = 0uLL;
          v113 = 0uLL;
          v114 = 0uLL;
          v115 = 0uLL;
          v116 = 0uLL;
          v117 = 0uLL;
          v118 = 0uLL;
          v336 = v107;
          v338 = 0u;
          v119 = 0uLL;
          v120 = 0uLL;
          v121 = 0uLL;
          v122 = 0uLL;
          v123.i64[0] = 0x400040004000400;
          v123.i64[1] = 0x400040004000400;
          v124.i64[0] = 0x400040004000400;
          v124.i64[1] = 0x400040004000400;
          v125.i64[0] = 0x400040004000400;
          v125.i64[1] = 0x400040004000400;
          v126.i64[0] = 0x400040004000400;
          v126.i64[1] = 0x400040004000400;
          v127.i64[0] = 0x400040004000400;
          v127.i64[1] = 0x400040004000400;
          v342 = v127;
          v344 = v127;
          v128 = 0uLL;
          v129 = 0uLL;
          v130 = 0uLL;
          v131 = 0uLL;
          v132 = 0uLL;
          v133 = 0uLL;
          v134 = 0uLL;
          v135 = 0uLL;
          do
          {
            v324 = v118;
            v326 = v122;
            v328 = v119;
            v330 = v114;
            v332 = v113;
            v334 = v112;
            v136 = v106[2];
            v137 = v106[3];
            v138 = vcgtq_f16(v137, v125);
            v139 = vcgtq_f16(v136, v124);
            v140 = v106[1];
            v141 = v121;
            v142 = vcgtq_f16(*v106, v336);
            v143 = vcgtq_f16(v140, v123);
            v144 = vcgtq_f16(v140, v126);
            v145 = v108;
            v146 = vmaxnmq_f16(v140, v126);
            v147 = v117;
            v148 = v110;
            v149 = vbslq_s8(v143, v123, v146);
            v123 = vmaxnmq_f16(v140, v123);
            v150 = v107;
            v151 = vcgtq_f16(*v106, v107);
            v152 = v115;
            v153 = v116;
            v154 = v111;
            v322 = vbslq_s8(v142, v336, vmaxnmq_f16(*v106, v150));
            v336 = vmaxnmq_f16(*v106, v336);
            v155 = vcgtq_f16(v136, v344);
            v344 = vbslq_s8(v139, v124, vmaxnmq_f16(v136, v344));
            v124 = vmaxnmq_f16(v136, v124);
            v156 = vcgtq_f16(v137, v342);
            v342 = vbslq_s8(v138, v125, vmaxnmq_f16(v137, v342));
            v125 = vmaxnmq_f16(v137, v125);
            v157 = vbslq_s8(vmovl_high_s16(v156), v135, v326);
            v158 = vbslq_s8(vmovl_s16(*v151.i8), v128, v153);
            v159 = v152;
            v160 = vbslq_s8(vmovl_s16(*v144.i8), v130, v324);
            v161 = vbslq_s8(vmovl_high_s16(v151), v129, v147);
            v162 = vmovl_high_s16(v143);
            v338 = vbslq_s8(v162, v340, vbslq_s8(vmovl_high_s16(v144), v131, v338));
            v340 = vbslq_s8(v162, v131, v340);
            v126 = v149;
            v163 = v148;
            v164 = vmovl_high_s16(v142);
            v117 = vbslq_s8(v164, v148, v161);
            v110 = vbslq_s8(v164, v129, v163);
            v165 = vmovl_s16(*v143.i8);
            v118 = vbslq_s8(v165, v154, v160);
            v111 = vbslq_s8(v165, v130, v154);
            v166 = vmovl_s16(*v142.i8);
            v116 = vbslq_s8(v166, v145, v158);
            v108 = vbslq_s8(v166, v128, v145);
            v167 = vmovl_high_s16(v139);
            v120 = vbslq_s8(v167, v332, vbslq_s8(vmovl_high_s16(v155), v133, v120));
            v113 = vbslq_s8(v167, v133, v332);
            v168 = vmovl_s16(*v139.i8);
            v119 = vbslq_s8(v168, v334, vbslq_s8(vmovl_s16(*v155.i8), v132, v328));
            v112 = vbslq_s8(v168, v132, v334);
            v169 = vmovl_s16(*v138.i8);
            v121 = vbslq_s8(v169, v330, vbslq_s8(vmovl_s16(*v156.i8), v134, v141));
            v107 = v322;
            v114 = vbslq_s8(v169, v134, v330);
            v170 = vmovl_high_s16(v138);
            v122 = vbslq_s8(v170, v159, v157);
            v115 = vbslq_s8(v170, v135, v159);
            v170.i64[0] = 0x100000001;
            v170.i64[1] = 0x100000001;
            v128 = vaddq_s32(v128, v170);
            v129 = vaddq_s32(v129, v170);
            v130 = vaddq_s32(v130, v170);
            v131 = vaddq_s32(v131, v170);
            v132 = vaddq_s32(v132, v170);
            v133 = vaddq_s32(v133, v170);
            v134 = vaddq_s32(v134, v170);
            v106 = (v106 + 2 * a3);
            v135 = vaddq_s32(v135, v170);
            --v109;
          }

          while (v109);
          *__src = v108;
          v435 = v110;
          v436 = v111;
          v437 = v340;
          v438 = v112;
          v439 = v113;
          v440 = v114;
          v441 = v115;
          *__p = v116;
          v419 = v117;
          v420 = v118;
          v421 = v338;
          v422 = v119;
          v423 = v120;
          v424 = v121;
          v425 = v122;
          v172 = v342;
          v171 = v344;
          v173 = v126;
          v174 = v322;
          v175 = v336;
          if (a5 < 1)
          {
            goto LABEL_135;
          }
        }

        v224 = 0;
        do
        {
          v225 = *&v106->i16[v224];
          v382[0] = v175;
          v382[1] = v123;
          v382[2] = v124;
          v382[3] = v125;
          v226 = *(v382 + (v224 & 0x1F));
          if (v225 <= v226)
          {
            v381[0] = v174;
            v381[1] = v173;
            v381[2] = v171;
            v381[3] = v172;
            v229 = *(v381 + (v224 & 0x1F));
            if (v225 >= v226)
            {
              v230 = v225;
            }

            else
            {
              v230 = v226;
            }

            v231 = v225 <= v229;
            if (v225 >= v229)
            {
              v229 = v225;
            }

            v377 = v174;
            v378 = v173;
            v379 = v171;
            v380 = v172;
            *&v377.i16[v224 & 0x1F] = v229;
            v171 = v379;
            v172 = v380;
            v174 = v377;
            v173 = v378;
            v373 = v175;
            v374 = v123;
            v375 = v124;
            v376 = v125;
            *&v373.i16[v224 & 0x1F] = v230;
            v232 = a2 - 1;
            if (v231)
            {
              v232 = *(__p + v224);
            }

            v124 = v375;
            v125 = v376;
            v175 = v373;
            v123 = v374;
            *(__p + v224) = v232;
            v228 = *(__src + v224);
          }

          else
          {
            v369 = v174;
            v370 = v173;
            v371 = v171;
            v372 = v172;
            *&v369.i16[v224 & 0x1F] = v226;
            v171 = v371;
            v172 = v372;
            v174 = v369;
            v173 = v370;
            if (v225 >= v226)
            {
              v227 = v225;
            }

            else
            {
              v227 = v226;
            }

            v365 = v175;
            v366 = v123;
            v367 = v124;
            v368 = v125;
            *&v365.i16[v224 & 0x1F] = v227;
            v124 = v367;
            v125 = v368;
            v175 = v365;
            v123 = v366;
            *(__p + v224) = *(__src + v224);
            v228 = a2 - 1;
          }

          *(__src + v224++) = v228;
        }

        while (a5 != v224);
        goto LABEL_135;
      }

      v14 = (a1 + 2 * a4);
      if (a2 <= 1)
      {
        v449 = 0u;
        v448 = 0u;
        v447 = 0u;
        v446 = 0u;
        v445 = 0u;
        v444 = 0u;
        v443 = 0u;
        v442 = 0u;
        v441 = 0u;
        v440 = 0u;
        v439 = 0u;
        v438 = 0u;
        v437 = 0u;
        v436 = 0u;
        v435 = 0u;
        *__src = 0u;
        v433 = 0u;
        v432 = 0u;
        v431 = 0u;
        v430 = 0u;
        v429 = 0u;
        v428 = 0u;
        v15.i64[0] = 0x400040004000400;
        v15.i64[1] = 0x400040004000400;
        v30.i64[0] = 0x400040004000400;
        v30.i64[1] = 0x400040004000400;
        v31.i64[0] = 0x400040004000400;
        v31.i64[1] = 0x400040004000400;
        v427 = 0u;
        v426 = 0u;
        v176.i64[0] = 0x400040004000400;
        v176.i64[1] = 0x400040004000400;
        v339 = v176;
        v341 = v176;
        v33.i64[0] = 0x400040004000400;
        v33.i64[1] = 0x400040004000400;
        v343 = v176;
        v425 = 0u;
        v424 = 0u;
        v337 = v176;
        v321 = v176;
        v323 = v176;
        v423 = 0u;
        v422 = 0u;
        v331 = v176;
        v333 = v176;
        v325 = v176;
        v327 = v176;
        v421 = 0u;
        v420 = 0u;
        v329 = v176;
        v419 = 0u;
        *__p = 0u;
        v177.i64[0] = 0x400040004000400;
        v177.i64[1] = 0x400040004000400;
        v335 = v177;
      }

      else
      {
        v15.i64[0] = 0x400040004000400;
        v15.i64[1] = 0x400040004000400;
        v304 = 0u;
        v305 = 0u;
        v16 = a2 - 1;
        v17 = 0uLL;
        v18 = 0uLL;
        v316 = 0u;
        v317 = 0u;
        v19 = 0uLL;
        v308 = 0u;
        v309 = 0u;
        v20 = 0uLL;
        v21 = 0uLL;
        v301 = 0u;
        v302 = 0u;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        v25 = 0uLL;
        v26 = 0uLL;
        v27 = 0uLL;
        v313 = 0u;
        v314 = 0u;
        v315 = 0u;
        v311 = 0u;
        v312 = 0u;
        v310 = 0u;
        v306 = 0u;
        v298 = 0u;
        v300 = 0u;
        v295 = 0u;
        v296 = 0u;
        v28 = 0uLL;
        v29 = 0uLL;
        v30.i64[0] = 0x400040004000400;
        v30.i64[1] = 0x400040004000400;
        v31.i64[0] = 0x400040004000400;
        v31.i64[1] = 0x400040004000400;
        v32.i64[0] = 0x400040004000400;
        v32.i64[1] = 0x400040004000400;
        v339 = v32;
        v341 = v32;
        v33.i64[0] = 0x400040004000400;
        v33.i64[1] = 0x400040004000400;
        v343 = v32;
        v335 = v32;
        v337 = v32;
        v321 = v32;
        v323 = v32;
        v331 = v32;
        v333 = v32;
        v325 = v32;
        v327 = v32;
        v329 = v32;
        v293 = 0u;
        v294 = 0u;
        v291 = 0u;
        v292 = 0u;
        v34 = 0uLL;
        v289 = 0u;
        v290 = 0u;
        v35 = 0uLL;
        v36 = 0uLL;
        v287 = 0u;
        v288 = 0u;
        v37 = 0uLL;
        v38 = 0uLL;
        v39 = 0uLL;
        v40 = 0uLL;
        v41 = 0uLL;
        do
        {
          v318 = v38;
          v319 = v39;
          v320 = v21;
          v273 = v20;
          v274 = v27;
          v275 = v26;
          v276 = v25;
          v277 = v24;
          v278 = v23;
          v279 = v22;
          v280 = v19;
          v281 = v18;
          v282 = v17;
          v43 = v14[2];
          v42 = v14[3];
          v44 = vcgtq_f16(v43, v31);
          v45 = v14[1];
          v46 = vcgtq_f16(*v14, v15);
          v47 = vcgtq_f16(v45, v30);
          v48 = vcgtq_f16(v45, v333);
          v333 = vbslq_s8(v47, v30, vmaxnmq_f16(v45, v333));
          v49 = vmaxnmq_f16(v45, v30);
          v50 = vcgtq_f16(*v14, v323);
          v323 = vbslq_s8(v46, v15, vmaxnmq_f16(*v14, v323));
          v286 = vmaxnmq_f16(*v14, v15);
          v51 = vcgtq_f16(v43, v321);
          v321 = vbslq_s8(v44, v31, vmaxnmq_f16(v43, v321));
          v283 = v49;
          v284 = vmaxnmq_f16(v43, v31);
          v52 = vcgtq_f16(v42, v325);
          v53 = vcgtq_f16(v42, v339);
          v325 = vbslq_s8(v53, v339, vmaxnmq_f16(v42, v325));
          v339 = vmaxnmq_f16(v42, v339);
          v54 = v14[4];
          v55 = v14[5];
          v56 = vcgtq_f16(v54, v327);
          v57 = v29;
          v58 = vcgtq_f16(v54, v33);
          v327 = vbslq_s8(v58, v33, vmaxnmq_f16(v54, v327));
          v285 = vmaxnmq_f16(v54, v33);
          v59 = vcgtq_f16(v55, v329);
          v60 = vcgtq_f16(v55, v343);
          v329 = vbslq_s8(v60, v343, vmaxnmq_f16(v55, v329));
          v343 = vmaxnmq_f16(v55, v343);
          v61 = v14[6];
          v62 = v14[7];
          v63 = vcgtq_f16(v61, v331);
          v64 = vcgtq_f16(v61, v341);
          v331 = vbslq_s8(v64, v341, vmaxnmq_f16(v61, v331));
          v341 = vmaxnmq_f16(v61, v341);
          v65 = vcgtq_f16(v62, v335);
          v66 = vcgtq_f16(v62, v337);
          v335 = vbslq_s8(v66, v337, vmaxnmq_f16(v62, v335));
          v337 = vmaxnmq_f16(v62, v337);
          v272 = vbslq_s8(vmovl_high_s16(v65), v41, v57);
          v67 = vbslq_s8(vmovl_s16(*v65.i8), v40, v28);
          v297 = vbslq_s8(vmovl_s16(*v63.i8), v39, v296);
          v299 = vbslq_s8(vmovl_high_s16(v59), v38, v298);
          v303 = vbslq_s8(vmovl_high_s16(v56), v288, v302);
          v307 = vbslq_s8(vmovl_s16(*v56.i8), v36, v306);
          v68 = vbslq_s8(vmovl_s16(*v51.i8), v34, v311);
          v69 = v36;
          v70 = vbslq_s8(vmovl_s16(*v50.i8), v294, v313);
          v71 = vbslq_s8(vmovl_s16(*v48.i8), v292, v314);
          v72 = vmovl_high_s16(v47);
          v316 = vbslq_s8(v72, v317, vbslq_s8(vmovl_high_s16(v48), v291, v316));
          v317 = vbslq_s8(v72, v291, v317);
          v73 = vmovl_high_s16(v46);
          v315 = vbslq_s8(v73, v282, vbslq_s8(vmovl_high_s16(v50), v293, v315));
          v17 = vbslq_s8(v73, v293, v282);
          v74 = vmovl_s16(*v47.i8);
          v314 = vbslq_s8(v74, v281, v71);
          v18 = vbslq_s8(v74, v292, v281);
          v75 = vmovl_s16(*v46.i8);
          v313 = vbslq_s8(v75, v304, v70);
          v76 = vbslq_s8(v75, v294, v304);
          v77 = vmovl_high_s16(v44);
          v78 = vbslq_s8(v77, v305, vbslq_s8(vmovl_high_s16(v51), v290, v312));
          v304 = v76;
          v305 = vbslq_s8(v77, v290, v305);
          v79 = vmovl_s16(*v44.i8);
          v311 = vbslq_s8(v79, v280, v68);
          v312 = v78;
          v19 = vbslq_s8(v79, v34, v280);
          v80 = vmovl_s16(*v53.i8);
          v310 = vbslq_s8(v80, v308, vbslq_s8(vmovl_s16(*v52.i8), v35, v310));
          v81 = vbslq_s8(v80, v35, v308);
          v82 = vmovl_high_s16(v53);
          v308 = v81;
          v309 = vbslq_s8(v82, v273, vbslq_s8(vmovl_high_s16(v52), v289, v309));
          v20 = vbslq_s8(v82, v289, v273);
          v30 = v283;
          v31 = v284;
          v83 = vmovl_s16(*v58.i8);
          v306 = vbslq_s8(v83, v320, v307);
          v21 = vbslq_s8(v83, v69, v320);
          v84 = vmovl_high_s16(v58);
          v85 = vbslq_s8(v84, v301, v303);
          v301 = vbslq_s8(v84, v288, v301);
          v302 = v85;
          v86 = vmovl_s16(*v60.i8);
          v300 = vbslq_s8(v86, v279, vbslq_s8(vmovl_s16(*v59.i8), v37, v300));
          v22 = vbslq_s8(v86, v37, v279);
          v87 = vmovl_high_s16(v60);
          v298 = vbslq_s8(v87, v278, v299);
          v23 = vbslq_s8(v87, v318, v278);
          v88 = vmovl_s16(*v64.i8);
          v296 = vbslq_s8(v88, v277, v297);
          v33 = v285;
          v15 = v286;
          v24 = vbslq_s8(v88, v319, v277);
          v89 = vmovl_high_s16(v64);
          v295 = vbslq_s8(v89, v276, vbslq_s8(vmovl_high_s16(v63), v287, v295));
          v25 = vbslq_s8(v89, v287, v276);
          v90 = vmovl_s16(*v66.i8);
          v28 = vbslq_s8(v90, v275, v67);
          v26 = vbslq_s8(v90, v40, v275);
          v91 = vmovl_high_s16(v66);
          v29 = vbslq_s8(v91, v274, v272);
          v27 = vbslq_s8(v91, v41, v274);
          v91.i64[0] = 0x100000001;
          v91.i64[1] = 0x100000001;
          v293 = vaddq_s32(v293, v91);
          v294 = vaddq_s32(v294, v91);
          v291 = vaddq_s32(v291, v91);
          v292 = vaddq_s32(v292, v91);
          v34 = vaddq_s32(v34, v91);
          v35 = vaddq_s32(v35, v91);
          v289 = vaddq_s32(v289, v91);
          v290 = vaddq_s32(v290, v91);
          v36 = vaddq_s32(v69, v91);
          v37 = vaddq_s32(v37, v91);
          v38 = vaddq_s32(v318, v91);
          v39 = vaddq_s32(v319, v91);
          v287 = vaddq_s32(v287, v91);
          v288 = vaddq_s32(v288, v91);
          v40 = vaddq_s32(v40, v91);
          v14 = (v14 + 2 * a3);
          v41 = vaddq_s32(v41, v91);
          --v16;
        }

        while (v16);
        *__src = v304;
        v435 = v17;
        v436 = v18;
        v437 = v317;
        v438 = v19;
        v439 = v305;
        v440 = v308;
        v441 = v20;
        v442 = v21;
        v443 = v301;
        v444 = v22;
        v445 = v23;
        v446 = v24;
        v447 = v25;
        v448 = v26;
        v449 = v27;
        *__p = v313;
        v419 = v315;
        v420 = v314;
        v421 = v316;
        v422 = v311;
        v423 = v312;
        v424 = v310;
        v425 = v309;
        v426 = v306;
        v427 = v302;
        v428 = v300;
        v429 = v298;
        v430 = v296;
        v431 = v295;
        v432 = v28;
        v433 = v29;
        if (a5 < 1)
        {
          goto LABEL_135;
        }
      }

      v178 = 0;
      do
      {
        v179 = *&v14->i16[v178];
        v416[0] = v15;
        v416[1] = v30;
        v416[2] = v31;
        v416[3] = v339;
        v416[4] = v33;
        v416[5] = v343;
        v416[6] = v341;
        v416[7] = v337;
        v180 = *(v416 + (v178 & 0x3F));
        if (v179 <= v180)
        {
          v415[0] = v323;
          v415[1] = v333;
          v415[2] = v321;
          v415[3] = v325;
          v415[4] = v327;
          v415[5] = v329;
          v415[6] = v331;
          v415[7] = v335;
          v182 = *(v415 + (v178 & 0x3F));
          if (v179 >= v180)
          {
            v180 = v179;
          }

          v183 = v179 <= v182;
          if (v179 < v182)
          {
            v179 = *(v415 + (v178 & 0x3F));
          }

          v407 = v323;
          v408 = v333;
          v409 = v321;
          v410 = v325;
          v411 = v327;
          v412 = v329;
          v413 = v331;
          v414 = v335;
          *&v407.i16[v178 & 0x3F] = v179;
          v335 = v414;
          v331 = v413;
          v329 = v412;
          v327 = v411;
          v325 = v410;
          v321 = v409;
          v333 = v408;
          v323 = v407;
          v399 = v15;
          v400 = v30;
          v401 = v31;
          v402 = v339;
          v403 = v33;
          v404 = v343;
          v405 = v341;
          v406 = v337;
          *&v399.i16[v178 & 0x3F] = v180;
          v184 = a2 - 1;
          if (v183)
          {
            v184 = *(__p + v178);
          }

          v337 = v406;
          v341 = v405;
          v343 = v404;
          v33 = v403;
          v339 = v402;
          v30 = v400;
          v31 = v401;
          v15 = v399;
          *(__p + v178) = v184;
          v181 = *(__src + v178);
        }

        else
        {
          v391 = v323;
          v392 = v333;
          v393 = v321;
          v394 = v325;
          v395 = v327;
          v396 = v329;
          v397 = v331;
          v398 = v335;
          *&v391.i16[v178 & 0x3F] = v180;
          v335 = v398;
          v331 = v397;
          v329 = v396;
          v327 = v395;
          v325 = v394;
          v321 = v393;
          v333 = v392;
          v323 = v391;
          if (v179 < v180)
          {
            v179 = v180;
          }

          v383 = v15;
          v384 = v30;
          v385 = v31;
          v386 = v339;
          v387 = v33;
          v388 = v343;
          v389 = v341;
          v390 = v337;
          *&v383.i16[v178 & 0x3F] = v179;
          v337 = v390;
          v341 = v389;
          v343 = v388;
          v33 = v387;
          v339 = v386;
          v30 = v384;
          v31 = v385;
          v15 = v383;
          *(__p + v178) = *(__src + v178);
          v181 = a2 - 1;
        }

        *(__src + v178++) = v181;
      }

      while (a5 != v178);
      goto LABEL_135;
    }

    if ((a5 - 5) < 4)
    {
      v240 = (a1 + 2 * a4);
      if (a2 <= 1)
      {
        v435 = 0u;
        *__src = 0u;
        v419 = 0u;
        *__p = 0u;
        v242.i64[0] = 0x400040004000400;
        v242.i64[1] = 0x400040004000400;
        v248.i64[0] = 0x400040004000400;
        v248.i64[1] = 0x400040004000400;
      }

      else
      {
        v241 = 0uLL;
        v242.i64[0] = 0x400040004000400;
        v242.i64[1] = 0x400040004000400;
        v243.i64[0] = 0x100000001;
        v243.i64[1] = 0x100000001;
        v244 = a2 - 1;
        v245 = 0uLL;
        v246 = 0uLL;
        v247 = 0uLL;
        v248.i64[0] = 0x400040004000400;
        v248.i64[1] = 0x400040004000400;
        v249 = 0uLL;
        v250 = 0uLL;
        do
        {
          v251 = vcgtq_f16(*v240, v242);
          v252 = vmovl_s16(*v251.i8);
          v253 = vmovl_high_s16(v251);
          v254 = vcgtq_f16(*v240, v248);
          v248 = vbslq_s8(v251, v242, vmaxnmq_f16(*v240, v248));
          v242 = vmaxnmq_f16(*v240, v242);
          v247 = vbslq_s8(v253, v245, vbslq_s8(vmovl_high_s16(v254), v250, v247));
          v246 = vbslq_s8(v252, v241, vbslq_s8(vmovl_s16(*v254.i8), v249, v246));
          v245 = vbslq_s8(v253, v250, v245);
          v241 = vbslq_s8(v252, v249, v241);
          v249 = vaddq_s32(v249, v243);
          v250 = vaddq_s32(v250, v243);
          v240 = (v240 + 2 * a3);
          --v244;
        }

        while (v244);
        *__src = v241;
        v435 = v245;
        *__p = v246;
        v419 = v247;
        if (a5 < 1)
        {
          goto LABEL_135;
        }
      }

      v263 = 0;
      do
      {
        v264 = *&v240->i16[v263];
        v354 = v242;
        v265 = *(&v354 & 0xFFFFFFFFFFFFFFF1 | (2 * (v263 & 7)));
        if (v264 <= v265)
        {
          v267 = (&v353 & 0xFFFFFFFFFFFFFFF1 | (2 * (v263 & 7)));
          v353 = v248;
          v268 = *v267;
          if (v264 >= v265)
          {
            v265 = v264;
          }

          v269 = v264 <= v268;
          if (v264 >= v268)
          {
            v268 = v264;
          }

          *v267 = v268;
          v248 = v353;
          v352 = v242;
          *(&v352 & 0xFFFFFFFFFFFFFFF1 | (2 * (v263 & 7))) = v265;
          v270 = a2 - 1;
          if (v269)
          {
            v270 = *(__p + v263);
          }

          v242 = v352;
          *(__p + v263) = v270;
          v266 = *(__src + v263);
        }

        else
        {
          v350 = v248;
          *(&v350 & 0xFFFFFFFFFFFFFFF1 | (2 * (v263 & 7))) = v265;
          v248 = v350;
          if (v264 < v265)
          {
            v264 = v265;
          }

          v351 = v242;
          *(&v351 & 0xFFFFFFFFFFFFFFF1 | (2 * (v263 & 7))) = v264;
          v242 = v351;
          *(__p + v263) = *(__src + v263);
          v266 = a2 - 1;
        }

        *(__src + v263++) = v266;
      }

      while (a5 != v263);
      goto LABEL_135;
    }

    if ((a5 - 1) <= 3)
    {
      v185 = (a1 + 2 * a4);
      if (a2 <= 1)
      {
        *__src = 0u;
        *__p = 0u;
        v186 = 0x400040004000400;
        v191 = 0x400040004000400;
      }

      else
      {
        v186 = 0x400040004000400;
        v187 = 0uLL;
        v188.i64[0] = 0x100000001;
        v188.i64[1] = 0x100000001;
        v189 = a2 - 1;
        v190 = 0uLL;
        v191 = 0x400040004000400;
        v192 = 0uLL;
        do
        {
          v193 = vcgt_f16(*v185, v186);
          v194 = vmovl_s16(v193);
          v195 = vmovl_s16(vcgt_f16(*v185, v191));
          v191 = vbsl_s8(v193, v186, vmaxnm_f16(*v185, v191));
          v186 = vmaxnm_f16(*v185, v186);
          v190 = vbslq_s8(v194, v187, vbslq_s8(v195, v192, v190));
          v187 = vbslq_s8(v194, v192, v187);
          v192 = vaddq_s32(v192, v188);
          v185 = (v185 + 2 * a3);
          --v189;
        }

        while (v189);
        *__src = v187;
        *__p = v190;
        if (a5 < 1)
        {
          goto LABEL_135;
        }
      }

      v255 = 0;
      do
      {
        v256 = *&v185->i16[v255];
        v349 = v186;
        v257 = *(&v349 & 0xFFFFFFFFFFFFFFF9 | (2 * (v255 & 3)));
        if (v256 <= v257)
        {
          v259 = (&v348 & 0xFFFFFFFFFFFFFFF9 | (2 * (v255 & 3)));
          v348 = v191;
          v260 = *v259;
          if (v256 >= v257)
          {
            v257 = v256;
          }

          v261 = v256 <= v260;
          if (v256 >= v260)
          {
            v260 = v256;
          }

          *v259 = v260;
          v191 = v348;
          v347 = v186;
          *(&v347 & 0xFFFFFFFFFFFFFFF9 | (2 * (v255 & 3))) = v257;
          v262 = a2 - 1;
          if (v261)
          {
            v262 = *(__p + v255);
          }

          v186 = v347;
          *(__p + v255) = v262;
          v258 = *(__src + v255);
        }

        else
        {
          v345 = v191;
          *(&v345 & 0xFFFFFFFFFFFFFFF9 | (2 * (v255 & 3))) = v257;
          v191 = v345;
          if (v256 < v257)
          {
            v256 = v257;
          }

          v346 = v186;
          *(&v346 & 0xFFFFFFFFFFFFFFF9 | (2 * (v255 & 3))) = v256;
          v186 = v346;
          *(__p + v255) = *(__src + v255);
          v258 = a2 - 1;
        }

        *(__src + v255++) = v258;
      }

      while (a5 != v255);
    }

LABEL_135:
    v271 = 4 * a5;
    memcpy(__b, __src, v271);
    memcpy(a7, __p, v271);
    return;
  }

  v92 = a5;
  v93 = 4 * a5;
  memset_pattern4(__b, &PresampleTopK2::negativeOne, v93);
  memset_pattern4(__b, &PresampleTopK2::negativeOne, v93);
  LOWORD(__p[0]) = -1025;
  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEEC2B8ne200100EmRKDF16_(__src, v92);
  v417 = -1025;
  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEEC2B8ne200100EmRKDF16_(__p, v92);
  v94 = __p[0];
  if (a2 < 1)
  {
    if (!__p[0])
    {
      goto LABEL_29;
    }
  }

  else
  {
    v95 = 0;
    v96 = a1 + 2 * a4;
    v97 = __src[0];
    do
    {
      for (i = 0; i != v92; ++i)
      {
        v99 = *(v96 + 2 * i);
        v100 = v97[i];
        if (v99 <= v100)
        {
          v102 = v94[i];
          if (v99 >= v102)
          {
            v103 = *(v96 + 2 * i);
          }

          else
          {
            v103 = v94[i];
          }

          v94[i] = v103;
          v104 = v97[i];
          if (v99 >= v104)
          {
            v104 = v99;
          }

          v97[i] = v104;
          v105 = v95;
          if (v99 <= v102)
          {
            v105 = *(a7 + i);
          }

          *(a7 + i) = v105;
          v101 = *(__b + i);
        }

        else
        {
          v94[i] = v100;
          if (v99 < v97[i])
          {
            v99 = v97[i];
          }

          v97[i] = v99;
          *(a7 + i) = *(__b + i);
          v101 = v95;
        }

        *(__b + i) = v101;
      }

      ++v95;
      v96 += 2 * a3;
    }

    while (v95 != a2);
  }

  __p[1] = v94;
  operator delete(v94);
LABEL_29:
  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }
}