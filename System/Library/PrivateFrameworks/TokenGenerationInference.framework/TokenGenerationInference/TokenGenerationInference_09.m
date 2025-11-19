uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 8;
    do
    {
      v18 = v5 + 8;
      if (*(v6 - 4) < *(v14 - 4))
      {
        v21 = v6 - 8;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 8, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 8;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 8;
      v14 -= 8;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_24TokenGenerationInference11NodeStorageV08PreviousE8SequenceVyAD26E5TransformerLanguageModelC0E5StateV_GTt0g5Tf4g_n(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  result = MEMORY[0x223D8EB00](v6, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v8 = a1;
  v15 = result;
  v9 = a2 + 32;
  v10 = *(a2 + 16);
  while (v8 < v10)
  {
    v11 = v9 + 48 * v8;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    result = specialized Set._Variant.insert(_:)(&v14, v8);
    v8 = v12;
    if (v13)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type BeamSearchDecoder.NoValidGenerationError and conformance BeamSearchDecoder.NoValidGenerationError()
{
  result = lazy protocol witness table cache variable for type BeamSearchDecoder.NoValidGenerationError and conformance BeamSearchDecoder.NoValidGenerationError;
  if (!lazy protocol witness table cache variable for type BeamSearchDecoder.NoValidGenerationError and conformance BeamSearchDecoder.NoValidGenerationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BeamSearchDecoder.NoValidGenerationError and conformance BeamSearchDecoder.NoValidGenerationError);
  }

  return result;
}

void partial apply for closure #1 in BeamSearchDecoder.expandBeam(nextBeamNodes:logits:languageModelNode:previousNodeID:cutoff:previousScore:)(uint64_t a1)
{
  partial apply for closure #1 in BeamSearchDecoder.expandBeam(nextBeamNodes:logits:languageModelNode:previousNodeID:cutoff:previousScore:)(a1);
}

{
  closure #1 in BeamSearchDecoder.expandBeam(nextBeamNodes:logits:languageModelNode:previousNodeID:cutoff:previousScore:)(a1, *(v1 + 16), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 24), *(v1 + 28));
}

uint64_t getEnumTagSinglePayload for BeamSearchDecoder.BeamNode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BeamSearchDecoder.BeamNode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo29TGIE5AdapterConfigurationObjCC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for TGIE5AdapterConfigurationObjC();
    v5 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject, type metadata accessor for TGIE5AdapterConfigurationObjC);
    result = MEMORY[0x223D8EB00](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D8EEA0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D8EB00](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t type metadata accessor for TGIE5AdapterConfigurationObjC()
{
  result = lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC;
  if (!lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
  }

  return result;
}

TokenGenerationInference::SamplingDecoderPrompt __swiftcall SamplingDecoderPrompt.init(queryTokens:promptModulesTokens:healingOverflowTokens:)(Swift::OpaquePointer queryTokens, Swift::OpaquePointer promptModulesTokens, Swift::OpaquePointer healingOverflowTokens)
{
  v3->_rawValue = queryTokens._rawValue;
  v3[1]._rawValue = promptModulesTokens._rawValue;
  v3[2]._rawValue = healingOverflowTokens._rawValue;
  result.healingOverflowTokens = healingOverflowTokens;
  result.promptModulesTokens = promptModulesTokens;
  result.queryTokens = queryTokens;
  return result;
}

void SamplingDecoderPrompt.flattened.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_18:

    specialized Array.append<A>(contentsOf:)(v15);
    return;
  }

  v3 = (v1 + 32);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v5 = *v3;
    v6 = *(*v3 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_14:
        v11 = *(v4 + 2);
        if ((*(v4 + 3) >> 1) - v11 < v6)
        {
          goto LABEL_21;
        }

        memcpy(&v4[8 * v11 + 32], (v5 + 32), 8 * v6);

        if (v6)
        {
          v12 = *(v4 + 2);
          v13 = __OFADD__(v12, v6);
          v14 = v12 + v6;
          if (v13)
          {
            goto LABEL_22;
          }

          *(v4 + 2) = v14;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_20;
    }

LABEL_4:
    ++v3;
    if (!--v2)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t SamplingDecoderPrompt.description.getter()
{
  v1 = v0[1];
  v16 = *v0;
  v18 = 0;
  v19 = 0xE000000000000000;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 32);
    v5 = MEMORY[0x277D83B88];
    while (1)
    {
      v6 = *v4;

      _StringGuts.grow(_:)(34);

      v17[0] = 0xD000000000000016;
      v17[1] = 0x8000000220AFB7F0;
      v7 = MEMORY[0x223D8E8D0](v6, v5);
      MEMORY[0x223D8E780](v7);

      MEMORY[0x223D8E780](0x203A746E756F6320, 0xE800000000000000);
      v8 = *(v6 + 16);

      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v9);

      MEMORY[0x223D8E780](0xD000000000000016, 0x8000000220AFB7F0);

      result = MEMORY[0x223D8E780](32, 0xE100000000000000);
      v11 = __OFADD__(v3, v8);
      v3 += v8;
      if (v11)
      {
        break;
      }

      ++v4;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
LABEL_7:
    _StringGuts.grow(_:)(26);

    strcpy(v17, "query tokens: ");
    HIBYTE(v17[1]) = -18;
    v12 = MEMORY[0x223D8E8D0](v16, MEMORY[0x277D83B88]);
    MEMORY[0x223D8E780](v12);

    MEMORY[0x223D8E780](0x203A746E756F6320, 0xE800000000000000);
    v13 = *(v16 + 16);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v14);

    MEMORY[0x223D8E780](v17[0], v17[1]);

    result = MEMORY[0x223D8E780](32, 0xE100000000000000);
    if (!__OFADD__(v3, v13))
    {
      _StringGuts.grow(_:)(21);

      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v15);

      MEMORY[0x223D8E780](0xD000000000000013, 0x8000000220AFB810);

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of SamplingDecoder.decodeNextChunk()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SamplingDecoder.decodeNextChunk();

  return v7(a1, a2);
}

uint64_t dispatch thunk of SamplingDecoder.decodeNextChunk()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_16:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v4 = 0;
    v5 = v2 + 3;
    do
    {
      if (v4 != v5 - 4)
      {
        v7 = *(v1 + 2);
        if (v4 >= v7)
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        if (v5 - 4 >= v7)
        {
          goto LABEL_15;
        }

        v8 = &v1[8 * v4];
        v9 = *(v8 + 4);
        *(v8 + 4) = *&v1[8 * v5];
        *&v1[8 * v5] = v9;
      }

      ++v4;
      v6 = v5 - 5;
      --v5;
    }

    while (v4 < v6);
    *v0 = v1;
  }
}

uint64_t SpeculativeStreamingPerformanceLoggingDecoder.__allocating_init(languageModel:behavior:sampler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = a4(v13, a2, a3, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

uint64_t SpeculativeStreamingPerformanceLoggingDecoder.decodeNextTokens()()
{
  *(v1 + 272) = v0;
  return MEMORY[0x2822009F8](SpeculativeStreamingPerformanceLoggingDecoder.decodeNextTokens(), 0, 0);
}

{
  swift_beginAccess();
  v1 = MEMORY[0x277D84F90];
  v0[35] = MEMORY[0x277D84F90];
  if (!*(v1 + 16) || (v2 = v0[34], outlined init with copy of DeterministicLanguageModelProtocol(v2 + 16, (v0 + 2)), v3 = v0[5], v4 = v0[6], __swift_project_boxed_opaque_existential_1(v0 + 2, v3), v5 = (*(v4 + 48))(*(v2 + 56), v3, v4), __swift_destroy_boxed_opaque_existential_1((v0 + 2)), (v5 & 1) != 0))
  {
    v6 = v0[34];
    outlined init with copy of DeterministicLanguageModelProtocol(v6 + 16, (v0 + 12));
    v8 = v0[15];
    v7 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
    v9 = *(v6 + 56);
    v10 = swift_task_alloc();
    v0[36] = v10;
    *v10 = v0;
    v10[1] = SpeculativeStreamingPerformanceLoggingDecoder.decodeNextTokens();

    return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)((v0 + 7), v9, v6 + 104, 0, v8, v7);
  }

  v12 = v0[34];
  v13 = *(v0[35] + 16);
  swift_beginAccess();
  v14 = *(v12 + 144);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v16 = v0[34];
  v17 = *(v16 + 160);
  v18 = __OFADD__(v17, v15);
  v19 = v17 + v15;
  if (v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v16 + 160) = v19;
  v20 = *(v16 + 168);
  v21 = v20 + v13;
  if (__OFADD__(v20, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v0[34];
  *(v16 + 168) = v21;
  v23 = *(v22 + 192);
  if (__OFADD__(v23, v13 - 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v0[34];
  *(v22 + 192) = v23 + v13 - 1;
  v25 = v13 > 1;
  swift_beginAccess();
  v26 = *(v24 + 184);
  v18 = __OFADD__(v26, v25);
  v27 = v26 + v25;
  if (v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = v0[34];
  *(v24 + 184) = v27;
  swift_beginAccess();
  v29 = *(v28 + 176);
  v18 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v28 + 176) = v30;
  v31 = one-time initialization token for speculativeDecode;

  if (v31 != -1)
  {
LABEL_24:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Log.speculativeDecode);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134217984;
    *(v35 + 4) = v13;
    _os_log_impl(&dword_220940000, v33, v34, "Accepted %ld token(s) in this step", v35, 0xCu);
    MEMORY[0x223D90A10](v35, -1, -1);
  }

  v36 = v0[35];

  v37 = v0[1];

  return v37(v36);
}

{
  *(*v1 + 296) = v0;

  if (v0)
  {

    v2 = SpeculativeStreamingPerformanceLoggingDecoder.decodeNextTokens();
  }

  else
  {
    v2 = SpeculativeStreamingPerformanceLoggingDecoder.decodeNextTokens();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 272);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v4 = (*(v3 + 8))(v0 + 56, v2, v3);
  if (v5)
  {
    if (one-time initialization token for speculativeDecode != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.speculativeDecode);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_220940000, v7, v8, "Reached language model termination", v9, 2u);
      MEMORY[0x223D90A10](v9, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    goto LABEL_16;
  }

  v10 = v4;
  v11 = *(v0 + 272);
  outlined init with copy of DeterministicLanguageModelProtocol(v11 + 16, v0 + 136);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v12);
  *(v11 + 56) = (*(v13 + 16))(*(v11 + 56), v10, 0, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + 280);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, *(v0 + 280));
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  *(v15 + 2) = v17 + 1;
  *&v15[8 * v17 + 32] = v10;
  *(v0 + 280) = v15;
  if (*(v15 + 2))
  {
    v18 = *(v0 + 272);
    outlined init with copy of DeterministicLanguageModelProtocol(v18 + 16, v0 + 16);
    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v19);
    v21 = (*(v20 + 48))(*(v18 + 56), v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    if ((v21 & 1) == 0)
    {
LABEL_16:
      v28 = *(v0 + 272);
      v29 = *(*(v0 + 280) + 16);
      swift_beginAccess();
      v30 = *(v28 + 144);
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
      }

      else
      {
        v32 = *(v0 + 272);
        v33 = *(v32 + 160);
        v34 = __OFADD__(v33, v31);
        v35 = v33 + v31;
        if (!v34)
        {
          *(v32 + 160) = v35;
          v36 = *(v32 + 168);
          v37 = v36 + v29;
          if (!__OFADD__(v36, v29))
          {
            v38 = *(v0 + 272);
            *(v32 + 168) = v37;
            v39 = *(v38 + 192);
            if (!__OFADD__(v39, v29 - 1))
            {
              v40 = *(v0 + 272);
              *(v38 + 192) = v39 + v29 - 1;
              v41 = v29 > 1;
              swift_beginAccess();
              v42 = *(v40 + 184);
              v34 = __OFADD__(v42, v41);
              v43 = v42 + v41;
              if (!v34)
              {
                v44 = *(v0 + 272);
                *(v40 + 184) = v43;
                swift_beginAccess();
                v45 = *(v44 + 176);
                v34 = __OFADD__(v45, 1);
                v46 = v45 + 1;
                if (!v34)
                {
                  *(v44 + 176) = v46;
                  v47 = one-time initialization token for speculativeDecode;

                  if (v47 == -1)
                  {
LABEL_23:
                    v48 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v48, static Log.speculativeDecode);
                    v49 = Logger.logObject.getter();
                    v50 = static os_log_type_t.debug.getter();
                    if (os_log_type_enabled(v49, v50))
                    {
                      v51 = swift_slowAlloc();
                      *v51 = 134217984;
                      *(v51 + 4) = v29;
                      _os_log_impl(&dword_220940000, v49, v50, "Accepted %ld token(s) in this step", v51, 0xCu);
                      MEMORY[0x223D90A10](v51, -1, -1);
                    }

                    v52 = *(v0 + 280);

                    v53 = *(v0 + 8);

                    return v53(v52);
                  }

LABEL_34:
                  swift_once();
                  goto LABEL_23;
                }

LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  v22 = *(v0 + 272);
  outlined init with copy of DeterministicLanguageModelProtocol(v22 + 16, v0 + 96);
  v24 = *(v0 + 120);
  v23 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v24);
  v25 = *(v22 + 56);
  v26 = swift_task_alloc();
  *(v0 + 288) = v26;
  *v26 = v0;
  v26[1] = SpeculativeStreamingPerformanceLoggingDecoder.decodeNextTokens();

  return DeterministicLanguageModelProtocol.nextTokenLogits(node:presampler:isPrompt:)(v0 + 56, v25, v22 + 104, 0, v24, v23);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall SpeculativeStreamingPerformanceLoggingDecoder.append(prompt:)(TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  v2 = v1;
  rawValue = prompt.queryTokens._rawValue;
  v4 = *(prompt.queryTokens._rawValue + 2);
  swift_beginAccess();
  outlined init with copy of DeterministicLanguageModelProtocol(v2 + 16, v10);
  v5 = v11;
  v6 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v7 = *(v2 + 56);
  v8 = *rawValue;
  v9 = v4;
  *(v2 + 56) = (*(v6 + 64))(v7, &v8, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t SpeculativeStreamingPerformanceLoggingDecoder.decodeNextChunk()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](SpeculativeStreamingPerformanceLoggingDecoder.decodeNextChunk(), 0, 0);
}

{
  if (*(*(v0[2] + 152) + 16))
  {
    result = specialized RangeReplaceableCollection<>.popLast()();
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v5 = v0[2];
      v6 = *(v5 + 200);
      v7 = __OFADD__(v6, 1);
      v8 = v6 + 1;
      if (v7)
      {
        __break(1u);
        return result;
      }

      v9 = result;
      *(v5 + 200) = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_220AE8A30;
      *(v3 + 32) = v9;
    }

    v10 = v0[1];

    return v10(v3);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = SpeculativeStreamingPerformanceLoggingDecoder.decodeNextChunk();

    return SpeculativeStreamingPerformanceLoggingDecoder.decodeNextTokens()();
  }
}

{
  v1 = v0[4];
  if (!v1)
  {
    v1 = MEMORY[0x277D84F90];
  }

  *(v0[2] + 152) = v1;

  specialized MutableCollection<>.reverse()();
  result = specialized RangeReplaceableCollection<>.popLast()();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = v0[2];
    v6 = *(v5 + 200);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    *(v5 + 200) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_220AE8A30;
    *(v4 + 32) = v9;
  }

  v10 = v0[1];

  return v10(v4);
}

uint64_t SpeculativeStreamingPerformanceLoggingDecoder.decodeNextChunk()(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](SpeculativeStreamingPerformanceLoggingDecoder.decodeNextChunk(), 0, 0);
  }
}

uint64_t specialized RangeReplaceableCollection<>.popLast()()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *(v1 + 8 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

double SpeculativeStreamingPerformanceLoggingDecoder.draftTokenAcceptanceRateInPercent.getter()
{
  v1 = *(v0 + 160);
  if (!v1)
  {
    return 0.0;
  }

  *&result = (*(v0 + 168) * 100.0) / v1;
  return result;
}

uint64_t SpeculativeStreamingPerformanceLoggingDecoder.speculationCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 176) = a1;
  return result;
}

uint64_t SpeculativeStreamingPerformanceLoggingDecoder.speculationSuccessCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 184) = a1;
  return result;
}

double SpeculativeStreamingPerformanceLoggingDecoder.speculationSuccessRateInPercent.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  if (!v1)
  {
    return 0.0;
  }

  swift_beginAccess();
  *&result = (*(v0 + 184) * 100.0) / v1;
  return result;
}

uint64_t SpeculativeStreamingPerformanceLoggingDecoder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  outlined destroy of LogitPresampler?(v0 + 104);

  return v0;
}

uint64_t SpeculativeStreamingPerformanceLoggingDecoder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  outlined destroy of LogitPresampler?(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SamplingDecoder.decodeNextChunk() in conformance SpeculativeStreamingPerformanceLoggingDecoder()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return SpeculativeStreamingPerformanceLoggingDecoder.decodeNextChunk()();
}

double protocol witness for SpeculativeDecoderPerformanceLoggingProtocol.draftTokenAcceptanceRateInPercent.getter in conformance SpeculativeStreamingPerformanceLoggingDecoder()
{
  v1 = *(*v0 + 160);
  if (!v1)
  {
    return 0.0;
  }

  *&result = (*(*v0 + 168) * 100.0) / v1;
  return result;
}

double protocol witness for SpeculativeDecoderPerformanceLoggingProtocol.speculationSuccessRateInPercent.getter in conformance SpeculativeStreamingPerformanceLoggingDecoder()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 176);
  if (!v2)
  {
    return 0.0;
  }

  swift_beginAccess();
  *&result = (*(v1 + 184) * 100.0) / v2;
  return result;
}

uint64_t specialized SpeculativeStreamingPerformanceLoggingDecoder.__allocating_init(languageModel:behavior:sampler:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  (*(v10 + 32))(&v19 - v14);
  v16 = swift_allocObject();
  (*(v10 + 16))(v13, v15, a5);
  v17 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v13, a2, a3, v16, a5, a6);
  (*(v10 + 8))(v15, a5);
  return v17;
}

uint64_t specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[3] = a5;
  v20[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v13 = *a2;
  *(a4 + 152) = MEMORY[0x277D84F90];
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  outlined init with copy of DeterministicLanguageModelProtocol(v20, a4 + 16);
  *(a4 + 56) = (*(a6 + 8))(a5, a6);
  *(a4 + 144) = v13;
  outlined init with copy of DeterministicLanguageModelProtocol(a3, a4 + 64);
  v14 = a3[3];
  v15 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v14);
  (*(v15 + 32))(v18, v14, v15);
  v16 = v18[1];
  *(a4 + 104) = v18[0];
  *(a4 + 120) = v16;
  *(a4 + 136) = v19;
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return a4;
}

Swift::tuple_legal_OpaquePointer_illegal_OpaquePointer_optional __swiftcall GenerationSchema.extractPrefixes()()
{
  v1 = v0;
  v2 = type metadata accessor for GenerationSchema.StringConstraint();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSg10enumerator_29GenerativeFunctionsFoundation16GenerationSchemaO16StringConstraintOSg11constraintstMd);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for GenerationSchema();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation16GenerationSchemaO16StringConstraintOSgMd);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  (*(v11 + 16))(v13, v1, v10);
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D0DC70])
  {
    (*(v11 + 96))(v13, v10);
    v20 = swift_projectBox();
    outlined init with copy of (enumerator: [String]?, constraints: GenerationSchema.StringConstraint?)(v20, v9);

    outlined init with take of GenerationSchema.StringConstraint?(&v9[*(v7 + 48)], v19);

    outlined init with take of GenerationSchema.StringConstraint?(v19, v17);
    v21 = v32;
    if ((*(v32 + 48))(v17, 1, v2) == 1)
    {
      outlined destroy of GenerationSchema.StringConstraint?(v17);
    }

    else
    {
      v29 = *(v21 + 32);
      v30 = v31;
      v29(v31, v17, v2);
      v29(v5, v30, v2);
      if ((*(v21 + 88))(v5, v2) == *MEMORY[0x277D0DC50])
      {
        (*(v21 + 96))(v5, v2);
        v27 = *v5;
        v28 = *(v5 + 1);
        goto LABEL_13;
      }

      (*(v21 + 8))(v5, v2);
    }
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Log.device);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_220940000, v23, v24, "Unsupported Schema sent. Ignoring", v25, 2u);
    MEMORY[0x223D90A10](v25, -1, -1);
  }

  v27 = 0;
  v28 = 0;
LABEL_13:
  result.value.illegal._rawValue = v28;
  result.value.legal._rawValue = v27;
  result.is_nil = v26;
  return result;
}

uint64_t outlined init with copy of (enumerator: [String]?, constraints: GenerationSchema.StringConstraint?)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGSg10enumerator_29GenerativeFunctionsFoundation16GenerationSchemaO16StringConstraintOSg11constraintstMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GenerationSchema.StringConstraint?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation16GenerationSchemaO16StringConstraintOSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GenerationSchema.StringConstraint?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation16GenerationSchemaO16StringConstraintOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Sequence.reduce<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v15 = a1;
  v5 = a1;
  v6 = a4[2];
  if (v6)
  {
    v14 = a4[4];
    a2(&v13, &v15, &v14);
    if (!v4)
    {
      v9 = a4 + 5;
      for (i = v6 - 1; ; --i)
      {
        v5 = v13;
        v15 = v13;
        if (!i)
        {
          break;
        }

        v11 = *v9++;
        v14 = v11;
        a2(&v13, &v15, &v14);
      }
    }
  }

  return v5;
}

uint64_t PrefixGuidedLanguageModel.Node.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t PrefixGuidedLanguageModel.init(allowedPrefixes:illegalPrefixes:stopTokenIDs:vocabSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for PrefixGuidedLanguageModel.Node();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 48) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v10 + 56) = 256;
  *(v10 + 58) = 0;
  *(v10 + 16) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 1;
  swift_weakAssign();
  *a5 = v10;
  a5[1] = v11;
  a5[2] = a3;
  a5[3] = a4;
  *(v10 + 58) = *(a1 + 16) == 0;

  MEMORY[0x223D8E8A0](v12);
  if (*((a5[1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a5[1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  PrefixGuidedLanguageModel.insert(prefixes:isLegal:)(a1, 1);

  PrefixGuidedLanguageModel.insert(prefixes:isLegal:)(a2, 0);
}

uint64_t PrefixGuidedLanguageModel.insert(prefixes:isLegal:)(uint64_t result, char a2)
{
  v42 = *(result + 16);
  if (!v42)
  {
    return result;
  }

  v3 = v2;
  v4 = 0;
  v6 = *v3;
  v5 = v3 + 1;
  v40 = result + 32;
  v41 = v6;
  v45 = a2 & 1;
  while (1)
  {
    v8 = *(v40 + 8 * v4);
    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

    v10 = v41;

LABEL_4:
    ++v4;
    *(v10 + 56) = 1;
    v7 = *(v10 + 57) & a2 & 1;
    *(v10 + 57) = v7;
    *(v10 + 58) = v7;

    if (v4 == v42)
    {
      return result;
    }
  }

  v43 = v4;

  v10 = v41;

  v11 = 32;
  while (1)
  {
    v13 = *(v8 + v11);
    v14 = *(v10 + 58);
    swift_beginAccess();
    v15 = *(v10 + 48);
    if (!*(v15 + 16))
    {
      break;
    }

    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if ((v17 & 1) == 0)
    {
      break;
    }

    v12 = *(*(v15 + 56) + 8 * v16);
    swift_endAccess();

    *(v12 + 57) = (*(v12 + 57) | a2) & 1;
    *(v12 + 58) = (*(v12 + 58) | v14) & 1;
    v10 = v12;
LABEL_8:
    v11 += 8;
    if (!--v9)
    {

      v4 = v43;
      goto LABEL_4;
    }
  }

  swift_endAccess();
  if (*v5 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v19 = *(v10 + 48);
  if (v19[2])
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v13);
    if (v20)
    {
      swift_endAccess();
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v22 & 1) == 0)
      {
        goto LABEL_40;
      }

LABEL_31:
      v38 = *(v19[7] + 8 * v21);

      *(v38 + 57) = v45;
      *(v38 + 58) = v14;

      MEMORY[0x223D8E8A0](v39);
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v10 = v38;
      goto LABEL_8;
    }
  }

  v46 = v14;
  v23 = v8;
  swift_endAccess();
  type metadata accessor for PrefixGuidedLanguageModel.Node();
  v24 = swift_allocObject();
  swift_weakInit();
  *(v24 + 48) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v24 + 56) = 256;
  *(v24 + 58) = 0;
  *(v24 + 16) = v18;
  *(v24 + 32) = v13;
  *(v24 + 40) = 0;
  swift_weakAssign();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v10 + 48);
  *(v10 + 48) = 0x8000000000000000;
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  v28 = v19[2];
  v29 = (v27 & 1) == 0;
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (!v30)
  {
    v32 = v27;
    if (v19[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = v26;
        specialized _NativeDictionary.copy()();
        v26 = v34;
        if (v32)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, isUniquelyReferenced_nonNull_native);
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_41;
      }
    }

    if (v32)
    {
LABEL_23:
      *(v19[7] + 8 * v26) = v24;

LABEL_28:
      *(v10 + 48) = v19;
      swift_endAccess();
      if (!v19[2])
      {
        goto LABEL_37;
      }

      v8 = v23;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v37 & 1) == 0)
      {
        goto LABEL_38;
      }

      v14 = v46;
      goto LABEL_31;
    }

LABEL_26:
    v19[(v26 >> 6) + 8] |= 1 << v26;
    *(v19[6] + 8 * v26) = v13;
    *(v19[7] + 8 * v26) = v24;
    v35 = v19[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_39;
    }

    v19[2] = v36;
    goto LABEL_28;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall PrefixGuidedLanguageModel.node(forPreviousNode:prompt:)(Swift::Int forPreviousNode, TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  v4 = *(prompt.queryTokens._rawValue + 2);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return forPreviousNode;
  }

  v6 = *(v2 + 8);
  v7 = (v4 + 32);
  v8 = v6 & 0xFFFFFFFFFFFFFF8;
  v34 = v6 & 0xC000000000000001;
  v33 = v6 + 32;
  v32 = v6;
  v9 = v6 >> 62;
  p_base_meths = &DataStreamStateManager.base_meths;
  v11 = static Log.device;
  while (1)
  {
    while (1)
    {
      v13 = *v7++;
      v12 = v13;
      if (!v9)
      {
        break;
      }

      result = __CocoaSet.count.getter();
      if (forPreviousNode < result)
      {
        goto LABEL_8;
      }

LABEL_17:
      if (p_base_meths[239] != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, v11);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = v12;
        v25 = v7;
        v26 = v9;
        v27 = v8;
        v28 = v11;
        v29 = p_base_meths;
        v30 = v23;
        *v23 = 134217984;
        *(v23 + 4) = v24;
        _os_log_impl(&dword_220940000, v21, v22, "Unable to find node for token %ld. This should not happen", v23, 0xCu);
        v31 = v30;
        p_base_meths = v29;
        v11 = v28;
        v8 = v27;
        v9 = v26;
        v7 = v25;
        MEMORY[0x223D90A10](v31, -1, -1);
      }

      if (!--v5)
      {
        return forPreviousNode;
      }
    }

    result = *(v8 + 16);
    if (forPreviousNode >= result)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v34)
    {
      v15 = MEMORY[0x223D8EEA0](forPreviousNode, v32, prompt.promptModulesTokens._rawValue, prompt.healingOverflowTokens._rawValue);
      goto LABEL_12;
    }

    if (forPreviousNode < 0)
    {
      break;
    }

    if (forPreviousNode >= *(v8 + 16))
    {
      goto LABEL_24;
    }

    v15 = *(v33 + 8 * forPreviousNode);

LABEL_12:
    swift_beginAccess();
    v16 = *(v15 + 48);
    if (!*(v16 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v12), (v18 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_17;
    }

    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();

    forPreviousNode = *(v19 + 16);

    if (!--v5)
    {
      return forPreviousNode;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

Swift::Int __swiftcall PrefixGuidedLanguageModel.node(forPreviousNode:token:isPrompt:)(Swift::Int forPreviousNode, Swift::Int token, Swift::Bool isPrompt)
{
  if (isPrompt)
  {
    return forPreviousNode;
  }

  v5 = *(v3 + 8);
  if (v5 >> 62)
  {
    v18 = forPreviousNode;
    v19 = __CocoaSet.count.getter();
    forPreviousNode = v18;
    if (v19 > v18)
    {
LABEL_4:
      if ((v5 & 0xC000000000000001) == 0)
      {
        if (forPreviousNode < 0)
        {
          __break(1u);
        }

        else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > forPreviousNode)
        {
          v6 = forPreviousNode;
          v7 = *(v5 + 8 * forPreviousNode + 32);

          goto LABEL_8;
        }

        __break(1u);
        return forPreviousNode;
      }

      v6 = forPreviousNode;
      v7 = MEMORY[0x223D8EEA0]();
LABEL_8:
      swift_beginAccess();
      v8 = *(v7 + 48);
      if (*(v8 + 16))
      {
        v9 = specialized __RawDictionaryStorage.find<A>(_:)(token);
        if (v10)
        {
          v11 = *(*(v8 + 56) + 8 * v9);
          swift_endAccess();

          v12 = *(v11 + 16);

          return v12;
        }
      }

      swift_endAccess();

      forPreviousNode = v6;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > forPreviousNode)
  {
    goto LABEL_4;
  }

  v13 = forPreviousNode;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.device);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = token;
    _os_log_impl(&dword_220940000, v15, v16, "Unable to find node for token %ld. This should not happen", v17, 0xCu);
    MEMORY[0x223D90A10](v17, -1, -1);
  }

  return v13;
}

uint64_t PrefixGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 104) = a4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  *(v5 + 80) = *(v4 + 8);
  *(v5 + 96) = *(v4 + 24);
  return MEMORY[0x2822009F8](PrefixGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:), 0, 0);
}

void PrefixGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)()
{
  v37 = v0;
  if ((*(v0 + 104) & 1) == 0)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v1 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) == 0)
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > v2)
      {
        v6 = v3[v2 + 4];
        v7 = *(v6 + 58);

LABEL_8:
        swift_beginAccess();
        v8 = *(v6 + 48);

        v9 = specialized _NativeDictionary.filter(_:)(v8);

        v10 = *(v9 + 16);
        if (!v10)
        {

          v11 = MEMORY[0x277D84F90];
          v13 = *(v0 + 72);
          v14 = *(v0 + 80);
          if (v1)
          {
            goto LABEL_11;
          }

          goto LABEL_13;
        }

        v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v9 + 16), 0);
        v12 = specialized Sequence._copySequenceContents(initializing:)(&v36, v11 + 4, v10, v9);
        outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
        if (v12 == v10)
        {
          v13 = *(v0 + 72);
          v14 = *(v0 + 80);
          if (v1)
          {
LABEL_11:
            v15 = MEMORY[0x223D8EEA0](v13, v14);
LABEL_14:
            swift_beginAccess();
            v16 = *(v15 + 48);

            v17 = specialized _NativeDictionary.filter(_:)(v16);

            v19 = specialized _NativeDictionary.filter(_:)(v18);

            if (!v7)
            {
              goto LABEL_23;
            }

            v20 = *(v19 + 16);

            v21 = *(v0 + 96);
            if (!v20)
            {
              v28 = *(v0 + 64);

              v28[3] = type metadata accessor for UnconstrainedLogitCollection();
              v28[4] = &protocol witness table for UnconstrainedLogitCollection;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
              if ((v21 & 0x8000000000000000) == 0)
              {
                goto LABEL_3;
              }

              __break(1u);
              goto LABEL_27;
            }

            if ((v21 & 0x8000000000000000) == 0)
            {
              boxed_opaque_existential_1 = MEMORY[0x223D8EB00](*(v0 + 96), MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
              v35 = boxed_opaque_existential_1;
              if (v21)
              {
                v22 = 0;
                do
                {
                  v23 = *(v0 + 96);
                  v24 = v22 + 1;
                  specialized Set._Variant.insert(_:)(&v36, v22);
                  v22 = v24;
                }

                while (v24 != v23);
                v11 = v35;
                v25 = *(v17 + 16);
                if (v25)
                {
LABEL_21:
                  v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v25, 0);
                  v27 = specialized Sequence._copySequenceContents(initializing:)(&v36, v26 + 4, v25, v17);
                  outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
                  if (v27 != v25)
                  {
                    __break(1u);
LABEL_23:

                    if (!v11[2])
                    {

                      v11 = *(v0 + 88);
                    }

LABEL_35:
                    v32 = *(v0 + 64);
                    v32[3] = type metadata accessor for PrefixGuidedLanguageModel.PrefixLogitCollection();
                    v32[4] = &protocol witness table for PrefixGuidedLanguageModel.PrefixLogitCollection;
                    v33 = __swift_allocate_boxed_opaque_existential_1(v32);
                    PrefixGuidedLanguageModel.PrefixLogitCollection.init(allowedTokenIDs:)(v11, v33);
                    goto LABEL_36;
                  }

LABEL_29:
                  v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v26);

                  if (*(v29 + 16) <= v11[2] >> 3)
                  {
                    goto LABEL_33;
                  }

                  v30 = specialized _NativeSet.subtracting<A>(_:)(v29, v11);

                  v29 = *(v30 + 16);
                  if (v29)
                  {
                    while (1)
                    {
                      v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v29, 0);
                      v31 = specialized Sequence._copySequenceContents(initializing:)(&v36, v11 + 4, v29, v30);
                      outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant();
                      if (v31 == v29)
                      {
                        break;
                      }

                      __break(1u);
LABEL_33:
                      v36 = v11;
                      specialized Set._subtract<A>(_:)(v29);

                      v30 = v36;
                      v29 = v36[2];
                      if (!v29)
                      {
                        goto LABEL_34;
                      }
                    }
                  }

                  else
                  {
LABEL_34:

                    v11 = MEMORY[0x277D84F90];
                  }

                  goto LABEL_35;
                }

LABEL_28:

                v26 = MEMORY[0x277D84F90];
                goto LABEL_29;
              }

LABEL_27:
              v11 = boxed_opaque_existential_1;
              v25 = *(v17 + 16);
              if (v25)
              {
                goto LABEL_21;
              }

              goto LABEL_28;
            }

LABEL_44:
            __break(1u);
            return;
          }

LABEL_13:
          v15 = *(v14 + 8 * v13 + 32);

          goto LABEL_14;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_43;
    }

LABEL_40:
    v7 = *(MEMORY[0x223D8EEA0](v2, v3) + 58);

    v6 = MEMORY[0x223D8EEA0](v2, v3);
    goto LABEL_8;
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  v3[3] = type metadata accessor for UnconstrainedLogitCollection();
  v3[4] = &protocol witness table for UnconstrainedLogitCollection;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

LABEL_3:
  v5 = *(v0 + 96);
  *boxed_opaque_existential_1 = 0;
  boxed_opaque_existential_1[1] = v5;
  type metadata accessor for LogitIndexSet();
  swift_storeEnumTagMultiPayload();
LABEL_36:
  v34 = *(v0 + 8);

  v34();
}

uint64_t PrefixGuidedLanguageModel.PrefixLogitCollection.init(allowedTokenIDs:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ContiguousBitSet();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7 != 1)
  {
    if (v7)
    {
      v13[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd);
      v13[5] = lazy protocol witness table accessor for type [Int] and conformance [A]();
      v13[1] = a1;
      ContiguousBitSet.init(_:)();
      return LogitIndexSet.init(_:)(v6, a2);
    }

    else
    {

      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for LogitIndexSet();
      v9 = __swift_project_value_buffer(v8, static LogitIndexSet.empty);

      return outlined init with copy of LogitIndexSet(v9, a2);
    }
  }

  v11 = *(a1 + 32);

  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < v11)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *a2 = v11;
  a2[1] = v12;
  type metadata accessor for LogitIndexSet();

  return swift_storeEnumTagMultiPayload();
}

float PrefixGuidedLanguageModel.PrefixLogitCollection.subscript.getter(Swift::Int a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LogitIndexSet();
  MEMORY[0x28223BE20](v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LogitIndexSet(v2, v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v12 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v7, v4);
    result = 1.0;
    if (v12)
    {
      return result;
    }

    return -65504.0;
  }

  if (*v10 > a1)
  {
    return -65504.0;
  }

  result = 1.0;
  if (v10[1] <= a1)
  {
    return -65504.0;
  }

  return result;
}

uint64_t protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance PrefixGuidedLanguageModel(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return PrefixGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(a1, a2, v8, a4);
}

Swift::Int protocol witness for DeterministicLanguageModelProtocol.node(forPreviousNode:prompt:) in conformance PrefixGuidedLanguageModel(Swift::Int result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      result = PrefixGuidedLanguageModel.node(forPreviousNode:token:isPrompt:)(result, v5, 0);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo29TGIE5AdapterConfigurationObjCC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo17TGIE5FunctionObjCC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo29TGIE5AdapterConfigurationObjCC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo29TGIE5AdapterConfigurationObjCCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo17TGIE5FunctionObjCC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo17TGIE5FunctionObjCCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v1 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1);
    v5 = v20 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_12:
      if (*(*(*(v1 + 56) + 8 * v13) + 57) == 1)
      {
        *&v5[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v5, v3, v6, v1);
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return specialized _NativeDictionary.extractDictionary(using:count:)(v5, v3, v6, v1);
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v18 = swift_slowAlloc();
  A6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P15C5valuet_tXEfU_Tf1nnc_n = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_24ij11Inference25lmno2V4P4CTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiALIsgnndzo_Tf1nc_n04_s24ijylmno69V010singleNextA6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P15C5valuet_tXEfU_Tf1nnc_n(v18, v3, v1);
  MEMORY[0x223D90A10](v18, -1, -1);
  return A6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P15C5valuet_tXEfU_Tf1nnc_n;
}

{
  v1 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1);
    v5 = v20 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_12:
      if ((*(*(*(v1 + 56) + 8 * v13) + 57) & 1) == 0)
      {
        *&v5[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v5, v3, v6, v1);
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return specialized _NativeDictionary.extractDictionary(using:count:)(v5, v3, v6, v1);
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v18 = swift_slowAlloc();
  A6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P16C5valuet_tXEfU0_Tf1nnc_n = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_24ij11Inference25lmno2V4P4CTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiALIsgnndzo_Tf1nc_n04_s24ijylmno69V010singleNextA6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P16C5valuet_tXEfU0_Tf1nnc_n(v18, v3, v1);
  MEMORY[0x223D90A10](v18, -1, -1);
  return A6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P16C5valuet_tXEfU0_Tf1nnc_n;
}

{
  v1 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x28223BE20](a1);
    v5 = v20 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v5, v4);
    v6 = 0;
    v7 = 0;
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_12:
      if (*(*(*(v1 + 56) + 8 * v13) + 56) == 1)
      {
        *&v5[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v5, v3, v6, v1);
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        return specialized _NativeDictionary.extractDictionary(using:count:)(v5, v3, v6, v1);
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v18 = swift_slowAlloc();
  A6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P16C5valuet_tXEfU1_Tf1nnc_n = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_24ij11Inference25lmno2V4P4CTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiALIsgnndzo_Tf1nc_n04_s24ijylmno69V010singleNextA6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P16C5valuet_tXEfU1_Tf1nnc_n(v18, v3, v1);
  MEMORY[0x223D90A10](v18, -1, -1);
  return A6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P16C5valuet_tXEfU1_Tf1nnc_n;
}

void sub_2209CBB8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void sub_2209CBDA0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

void sub_2209CBFB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = specialized Set._Variant.remove(_:)(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_2209CC518(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
  }

  _Unwind_Resume(a1);
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v10 = v9 - 1;
  v11 = a3 + 56;
  while (1)
  {
    v13 = a5[3];
    v14 = a5[4];
    if (!v14)
    {
      break;
    }

    v15 = a5[3];
LABEL_9:
    v18 = *(*(*a5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    a5[3] = v15;
    a5[4] = (v14 - 1) & v14;
    result = MEMORY[0x223D8F400](*(a3 + 40), v18);
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 8 * v20) == v18)
      {
LABEL_2:
        v12 = v8[v21];
        v8[v21] = v12 & ~v22;
        if ((v12 & v22) != 0)
        {
          if (__OFSUB__(v10--, 1))
          {
LABEL_23:
            __break(1u);
            return result;
          }

          if (!v10)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v11 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 8 * v20) == v18)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v16 = (a5[2] + 64) >> 6;
  v17 = a5[3];
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v16)
    {
      break;
    }

    v14 = *(a5[1] + 8 * v15);
    ++v17;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (v16 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return specialized _NativeSet.extractSubset(using:count:)(v8, a2, v10, a3);
}

{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_2:

    return specialized _NativeSet.extractSubset(using:count:)(v7, a2, v9, a3);
  }

  else
  {
    v14 = a3 + 56;
    while ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v10 + 8 * v11 + 32);
      a5[1] = v11 + 1;
      result = MEMORY[0x223D8F400](*(a3 + 40), v15);
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_12:
          v22 = v7[v18];
          v7[v18] = v22 & ~v19;
          if ((v22 & v19) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_18;
            }

            if (!v9)
            {
              return MEMORY[0x277D84FA0];
            }
          }
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 == v12)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

char *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_24ij11Inference25lmno2V4P4CTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiALIsgnndzo_Tf1nc_n04_s24ijylmno69V010singleNextA6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P16C5valuet_tXEfU1_Tf1nnc_n(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_14:
      if (*(*(*(a3 + 56) + 8 * v13) + 56) == 1)
      {
        *&result[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_18:
          v17 = specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v6, a3);

          return v17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_18;
      }

      v15 = *(a3 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_24ij11Inference25lmno2V4P4CTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiALIsgnndzo_Tf1nc_n04_s24ijylmno69V010singleNextA6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P16C5valuet_tXEfU0_Tf1nnc_n(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_14:
      if ((*(*(*(a3 + 56) + 8 * v13) + 57) & 1) == 0)
      {
        *&result[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_18:
          v17 = specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v6, a3);

          return v17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_18;
      }

      v15 = *(a3 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab12VKXEfU_Si_24ij11Inference25lmno2V4P4CTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySiALIsgnndzo_Tf1nc_n04_s24ijylmno69V010singleNextA6Logits4node10presampler8isPromptAA15LogitCollection_px40_AA0O10Presampler_pSgSbtYaKFSbSi3key_AC4P15C5valuet_tXEfU_Tf1nnc_n(char *result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = 0;
    v7 = 0;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 64);
    v11 = (v8 + 63) >> 6;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v13 = v12 | (v7 << 6);
LABEL_14:
      if (*(*(*(a3 + 56) + 8 * v13) + 57) == 1)
      {
        *&result[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_18:
          v17 = specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v6, a3);

          return v17;
        }
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_18;
      }

      v15 = *(a3 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v10 = (v15 - 1) & v15;
        v13 = __clz(__rbit64(v15)) | (v7 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi24TokenGenerationInference25PrefixGuidedLanguageModelV4NodeCGMd);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = MEMORY[0x223D8F400](*(v9 + 40), v17);
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for PrefixGuidedLanguageModel.PrefixLogitCollection()
{
  result = type metadata singleton initialization cache for PrefixGuidedLanguageModel.PrefixLogitCollection;
  if (!type metadata singleton initialization cache for PrefixGuidedLanguageModel.PrefixLogitCollection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrefixGuidedLanguageModel(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PrefixGuidedLanguageModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PrefixGuidedLanguageModel.PrefixLogitCollection()
{
  result = type metadata accessor for LogitIndexSet();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
  }

  return result;
}

unint64_t protocol witness for NodeStateProtocol.init() in conformance GrammarGuidedLanguageModel.Node@<X0>(uint64_t a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a1 = 0;
  *(a1 + 8) = 257;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = result;
  return result;
}

uint64_t GrammarGuidedLanguageModel.__allocating_init(constraints:)(uint64_t a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26GrammarGuidedLanguageModelC4NodeVGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220AE8A30;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v3 + 32) = 0;
  *(v3 + 40) = 257;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 64) = v4;
  *(v2 + 16) = v3;
  v5 = OBJC_IVAR____TtC24TokenGenerationInference26GrammarGuidedLanguageModel_constraints;
  v6 = type metadata accessor for GuidedGenerationConstraints();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  return v2;
}

uint64_t GrammarGuidedLanguageModel.init(constraints:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26GrammarGuidedLanguageModelC4NodeVGMd);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220AE8A30;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v3 + 32) = 0;
  *(v3 + 40) = 257;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 64) = v4;
  *(v1 + 16) = v3;
  v5 = OBJC_IVAR____TtC24TokenGenerationInference26GrammarGuidedLanguageModel_constraints;
  v6 = type metadata accessor for GuidedGenerationConstraints();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

Swift::Int __swiftcall GrammarGuidedLanguageModel.node(forPreviousNode:prompt:)(Swift::Int forPreviousNode, TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  v2 = *(prompt.queryTokens._rawValue + 2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      forPreviousNode = GrammarGuidedLanguageModel.node(forPreviousNode:token:isPrompt:)(forPreviousNode, v5, 0);
      --v3;
    }

    while (v3);
  }

  return forPreviousNode;
}

Swift::Int __swiftcall GrammarGuidedLanguageModel.node(forPreviousNode:token:isPrompt:)(Swift::Int forPreviousNode, Swift::Int token, Swift::Bool isPrompt)
{
  if (isPrompt)
  {
    return forPreviousNode;
  }

  swift_beginAccess();
  v9 = *(v3 + 16);
  if (*(v9 + 16) <= forPreviousNode)
  {
    if (one-time initialization token for guided == -1)
    {
LABEL_8:
      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.guided);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = token;
        _os_log_impl(&dword_220940000, v14, v15, "Unable to find node for token %ld. This should not happen", v16, 0xCu);
        MEMORY[0x223D90A10](v16, -1, -1);
      }

      return forPreviousNode;
    }

LABEL_21:
    swift_once();
    goto LABEL_8;
  }

  if (forPreviousNode < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = *(v9 + 40 * forPreviousNode + 64);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(token);
    if (v12)
    {
      return *(*(v10 + 56) + 8 * v11);
    }
  }

  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v18 = *(v3 + 16);
  v29 = *(v18 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29 + 1, 1, v18);
    *(v3 + 16) = v18;
  }

  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  v22 = v21 + 1;
  if (v21 >= v20 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    v22 = v21 + 1;
    v18 = v28;
  }

  *(v18 + 16) = v22;
  v23 = v18 + 32 + 40 * v21;
  *v23 = forPreviousNode;
  *(v23 + 8) = 0;
  *(v23 + 16) = token;
  *(v23 + 24) = 0;
  *(v23 + 32) = v17;
  *(v3 + 16) = v18;
  if (v21 < forPreviousNode)
  {
    __break(1u);
  }

  else
  {
    v10 = v3;
    v24 = v18 + 32 + 40 * forPreviousNode;
    v17 = *v24;
    LOBYTE(v21) = *(v24 + 8);
    v4 = *(v24 + 9);
    v5 = *(v24 + 16);
    v6 = *(v24 + 24);
    v3 = *(v24 + 32);

    v25 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, token, v25);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 16) = v18;
    if (result)
    {
      goto LABEL_17;
    }
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
  v18 = result;
  *(v10 + 16) = result;
LABEL_17:
  if (*(v18 + 16) > forPreviousNode)
  {
    v27 = v18 + 40 * forPreviousNode;
    *(v27 + 32) = v17;
    *(v27 + 40) = v21;
    *(v27 + 41) = v4;
    *(v27 + 48) = v5;
    *(v27 + 56) = v6;
    *(v27 + 64) = v3;
    *(v10 + 16) = v18;
    swift_endAccess();

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t GrammarGuidedLanguageModel.leftContextTokens(previousAndIncluding:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) <= a1)
  {
LABEL_31:

    _StringGuts.grow(_:)(21);

    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v25);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v5 = specialized Sequence.reversed()(a1, v4, 0, 1);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = *v7++;
      v11 = v12;
      if ((v12 & 0x8000000000000000) != 0)
      {
        break;
      }

      v13 = *(v2 + 16);
      if (v11 >= *(v13 + 16))
      {
        goto LABEL_28;
      }

      if ((*(v13 + 40 * v11 + 41) & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1);
        }

        v10 = v8[2];
        v9 = v8[3];
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        }

        v8[2] = v10 + 1;
        v8[v10 + 4] = v11;
      }

      if (!--v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_14:

  v14 = v8[2];
  if (v14)
  {
    v15 = v8 + 4;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v18 = *v15++;
      v17 = v18;
      if ((v18 & 0x8000000000000000) != 0)
      {
        break;
      }

      v19 = *(v2 + 16);
      if (v17 >= *(v19 + 16))
      {
        goto LABEL_30;
      }

      v20 = v19 + 40 * v17;
      if ((*(v20 + 56) & 1) == 0)
      {
        v21 = *(v20 + 48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v23 = *(v16 + 2);
        v22 = *(v16 + 3);
        if (v23 >= v22 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v16);
        }

        *(v16 + 2) = v23 + 1;
        *&v16[8 * v23 + 32] = v21;
      }

      if (!--v14)
      {
        goto LABEL_26;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_26:

  return v16;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GrammarGuidedLanguageModel.allNextTokensPossiblyDeterministic(nodes:)(Swift::OpaquePointer nodes)
{
  v2 = v1;
  v4 = *(nodes._rawValue + 2);
  swift_beginAccess();
  v5 = (nodes._rawValue + 32);
  while (1)
  {
    v6 = v4;
    if (!v4)
    {
LABEL_6:
      LOBYTE(v7) = v6 == 0;
      return v7;
    }

    v7 = *v5;
    if (*v5 >= *(*(v2 + 16) + 16))
    {
      break;
    }

    v8 = GrammarGuidedLanguageModel.leftContextTokens(previousAndIncluding:)(v7);
    v9 = GuidedGenerationConstraints.possiblyDeterministicTokens(follow:)(v8);

    if (!v10)
    {
      ++v5;
      --v4;
      if (v9)
      {
        continue;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
  return v7;
}

uint64_t GrammarGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 56) = a2;
  *(v5 + 64) = v4;
  *(v5 + 192) = a4;
  *(v5 + 48) = a1;
  v6 = type metadata accessor for GuidedGenerationError();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  type metadata accessor for ContiguousBitSet();
  *(v5 + 96) = swift_task_alloc();
  v7 = type metadata accessor for TokenIDMask();
  *(v5 + 104) = v7;
  *(v5 + 112) = *(v7 - 8);
  *(v5 + 120) = swift_task_alloc();
  v8 = type metadata accessor for TokenIDMaskResponse();
  *(v5 + 128) = v8;
  *(v5 + 136) = *(v8 - 8);
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](GrammarGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:), 0, 0);
}

uint64_t GrammarGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)()
{
  if ((*(v0 + 192) & 1) == 0)
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    boxed_opaque_existential_1 = swift_beginAccess();
    if (*(*(v8 + 16) + 16) > v7)
    {
      v9 = GrammarGuidedLanguageModel.leftContextTokens(previousAndIncluding:)(*(v0 + 56));
      *(v0 + 168) = v9;
      v10 = swift_task_alloc();
      *(v0 + 176) = v10;
      *v10 = v0;
      v10[1] = GrammarGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:);
      boxed_opaque_existential_1 = *(v0 + 152);
      v4 = v9;

      return MEMORY[0x2821DA258](boxed_opaque_existential_1, v4);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x2821DA258](boxed_opaque_existential_1, v4);
  }

  v1 = *(v0 + 48);
  v2 = GuidedGenerationConstraints.vocabularyCount.getter();
  v1[3] = type metadata accessor for UnconstrainedLogitCollection();
  v1[4] = &protocol witness table for UnconstrainedLogitCollection;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  *boxed_opaque_existential_1 = 0;
  boxed_opaque_existential_1[1] = v2;
  type metadata accessor for LogitIndexSet();
  swift_storeEnumTagMultiPayload();

  v5 = *(v0 + 8);

  return v5();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = GrammarGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:);
  }

  else
  {
    v2 = GrammarGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  (*(v3 + 32))(v1, v0[19], v4);
  (*(v3 + 16))(v2, v1, v4);
  v5 = (*(v3 + 88))(v2, v4);
  if (v5 != *MEMORY[0x277D71DF8])
  {
    if (v5 == *MEMORY[0x277D71E00])
    {
      v15 = v0[20];
      v17 = v0[17];
      v16 = v0[18];
      v19 = v0[15];
      v18 = v0[16];
      v20 = v0[13];
      v21 = v0[14];
      v22 = v0[12];
      v23 = v0[6];
      (*(v17 + 96))(v16, v18);
      (*(v21 + 32))(v19, v16, v20);
      TokenIDMask.mask.getter();
      v23[3] = type metadata accessor for UnweightedSparseLogitCollection();
      v23[4] = &protocol witness table for UnweightedSparseLogitCollection;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
      LogitIndexSet.init(_:)(v22, boxed_opaque_existential_1);
      (*(v21 + 8))(v19, v20);
      (*(v17 + 8))(v15, v18);
      goto LABEL_19;
    }

    if (one-time initialization token for guided == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  v6 = v0[18];
  (*(v0[17] + 96))(v6, v0[16]);
  v7 = *v6;
  if (*(*v6 + 16))
  {
    v8 = v0[20];
    v9 = v0[16];
    v10 = v0[17];
    v11 = v0[6];
    v12 = *(v7 + 32);

    (*(v10 + 8))(v8, v9);
    v11[3] = type metadata accessor for UnweightedSparseLogitCollection();
    v11[4] = &protocol witness table for UnweightedSparseLogitCollection;
    v13 = __swift_allocate_boxed_opaque_existential_1(v11);
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else if (v14 >= v12)
    {
      *v13 = v12;
      v13[1] = v14;
      type metadata accessor for LogitIndexSet();
      swift_storeEnumTagMultiPayload();
      goto LABEL_19;
    }

    __break(1u);
LABEL_24:
    swift_once();
LABEL_9:
    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.guided);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_220940000, v26, v27, "Mask calculation returned unknown enum value from generateNextTokenIDMask. returning empty indexSet", v28, 2u);
      MEMORY[0x223D90A10](v28, -1, -1);
    }

    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v29 = v0[20];
    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[16];
    v33 = v0[6];
    v34 = type metadata accessor for LogitIndexSet();
    v35 = __swift_project_value_buffer(v34, static LogitIndexSet.empty);
    v33[3] = type metadata accessor for UnweightedSparseLogitCollection();
    v33[4] = &protocol witness table for UnweightedSparseLogitCollection;
    v36 = __swift_allocate_boxed_opaque_existential_1(v33);
    outlined init with copy of LogitIndexSet(v35, v36);
    v37 = *(v31 + 8);
    v37(v29, v32);
    v37(v30, v32);
    goto LABEL_19;
  }

  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Log.guided);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_220940000, v39, v40, "Grammar generated empty deterministic token run", v41, 2u);
    MEMORY[0x223D90A10](v41, -1, -1);
  }

  v42 = v0[20];
  v43 = v0[16];
  v44 = v0[17];
  v45 = v0[6];

  *(v45 + 24) = &type metadata for EmptyLogitCollection;
  *(v45 + 32) = &protocol witness table for EmptyLogitCollection;
  (*(v44 + 8))(v42, v43);
LABEL_19:

  v46 = v0[1];

  return v46();
}

{
  v1 = *(v0 + 184);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  if ((*(*(v0 + 80) + 88))(*(v0 + 88), *(v0 + 72)) != *MEMORY[0x277D71DF0])
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
LABEL_9:

    v9 = *(v0 + 8);
    goto LABEL_10;
  }

  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.guided);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v6;
    _os_log_impl(&dword_220940000, v4, v5, "Grammar can not make mask at node %ld, returning empty logits", v7, 0xCu);
    MEMORY[0x223D90A10](v7, -1, -1);
  }

  v8 = *(v0 + 48);

  *(v8 + 24) = &type metadata for EmptyLogitCollection;
  *(v8 + 32) = &protocol witness table for EmptyLogitCollection;

  v9 = *(v0 + 8);
LABEL_10:

  return v9();
}

uint64_t GrammarGuidedLanguageModel.deinit()
{

  v1 = OBJC_IVAR____TtC24TokenGenerationInference26GrammarGuidedLanguageModel_constraints;
  v2 = type metadata accessor for GuidedGenerationConstraints();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GrammarGuidedLanguageModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC24TokenGenerationInference26GrammarGuidedLanguageModel_constraints;
  v2 = type metadata accessor for GuidedGenerationConstraints();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance GrammarGuidedLanguageModel(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return GrammarGuidedLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(a1, a2, v8, a4);
}

Swift::Int protocol witness for DeterministicLanguageModelProtocol.node(forPreviousNode:prompt:) in conformance GrammarGuidedLanguageModel(Swift::Int result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      result = GrammarGuidedLanguageModel.node(forPreviousNode:token:isPrompt:)(result, v5, 0);
      --v3;
    }

    while (v3);
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t type metadata accessor for GrammarGuidedLanguageModel()
{
  result = type metadata singleton initialization cache for GrammarGuidedLanguageModel;
  if (!type metadata singleton initialization cache for GrammarGuidedLanguageModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GrammarGuidedLanguageModel()
{
  result = type metadata accessor for GuidedGenerationConstraints();
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

uint64_t getEnumTagSinglePayload for GrammarGuidedLanguageModel.Node(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GrammarGuidedLanguageModel.Node(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized static CLIPImagePlanarizer.computedPaddingValue(pixelData:)(uint64_t result, double a2, double a3, double a4, double a5, double a6, double a7, double a8, float16x8_t _Q7)
{
  v11 = *(result + 16);
  v12 = v11 >> 2;
  v13 = (v11 >> 2) & 0x1FFFFFFFFFFFFFF8;
  if (v13)
  {
    v14 = 0;
    v15 = vdupq_n_s16(0xD7ACu);
    v16 = vdupq_n_s16(0x2379u);
    v17 = vdupq_n_s16(0xD74Cu);
    v18 = vdupq_n_s16(0x23AFu);
    v19 = vdupq_n_s16(0xD681u);
    v20 = 0uLL;
    _Q7 = vdupq_n_s16(0x2348u);
    v21 = 0uLL;
    do
    {
      v22 = (result + 32 + 4 * v14);
      v43 = vld4_s8(v22);
      _VF = __OFADD__(v14, 8);
      v24 = v14 + 8;
      if (_VF)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      v26 = vcvtq_f16_u16(vmovl_u8(v43.val[0]));
      v27 = vmulq_f16(vaddq_f16(vcvtq_f16_u16(vmovl_u8(v43.val[2])), v15), v16);
      v28 = vmulq_f16(vaddq_f16(vcvtq_f16_u16(vmovl_u8(v43.val[1])), v17), v18);
      v29 = vmulq_f16(vaddq_f16(v26, v19), _Q7);
      v30 = vaddq_f32(vaddq_f32(v20, vcvtq_f32_f16(*v27.i8)), vcvtq_f32_f16(*v28.i8));
      v31 = vaddq_f32(vaddq_f32(v21, vcvt_hight_f32_f16(v27)), vcvt_hight_f32_f16(v28));
      _Q16 = vcvtq_f32_f16(*v29.i8);
      _Q17 = vcvt_hight_f32_f16(v29);
      v21 = vaddq_f32(v31, _Q17);
      v20 = vaddq_f32(v30, _Q16);
      v14 = v25;
    }

    while (v25 < v13);
  }

  else
  {
    v20 = 0uLL;
    v21 = 0uLL;
  }

  v32 = v21.f32[3] + (v21.f32[2] + (v21.f32[1] + (v21.f32[0] + (v20.f32[3] + (v20.f32[2] + vaddv_f32(*v20.f32))))));
  v33 = v12 - v13;
  if (v12 == v13)
  {
LABEL_16:
    _S0 = v32 / (3 * v12);
    __asm { FCVT            H0, S0 }
  }

  else
  {
    v34 = v13 | 0xE000000000000000;
    v35 = v11 & 0xFFFFFFFFFFFFFFE0;
    while (v34 >> 62 == 3)
    {
      if (v35 >= v11)
      {
        goto LABEL_18;
      }

      if ((v35 + 1) >= v11)
      {
        goto LABEL_19;
      }

      if ((v35 + 2) >= v11)
      {
        goto LABEL_20;
      }

      _Q7.i8[0] = *(result + v35 + 32);
      _Q16.i8[0] = *(result + v35 + 33);
      _Q17.i8[0] = *(result + v35 + 34);
      _H17 = (_Q17.u16[0] + COERCE_SHORT_FLOAT(-10324)) * COERCE_SHORT_FLOAT(9081);
      _H16 = (_Q16.u16[0] + COERCE_SHORT_FLOAT(-10420)) * COERCE_SHORT_FLOAT(9135);
      _H7 = (_Q7.u16[0] + COERCE_SHORT_FLOAT(-10623)) * COERCE_SHORT_FLOAT(9032);
      __asm
      {
        FCVT            S17, H17
        FCVT            S16, H16
        FCVT            S7, H7
      }

      v32 = ((v32 + _Q17.f32[0]) + _Q16.f32[0]) + *_Q7.i32;
      ++v34;
      v35 += 4;
      if (!--v33)
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

  return result;
}

void specialized static CLIPImagePlanarizer.copy(to:fromPixelData:numSegmentsPerDimension:tileIndex:width:height:paddingValue:inputDimension:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int16x4_t a9, uint8x8_t a10, uint8x8_t a11)
{
  if (!a4)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (a4 == -1 && a5 == 0x8000000000000000)
  {
    goto LABEL_78;
  }

  v12 = a5 / a4 * a8;
  if ((a5 / a4 * a8) >> 64 != v12 >> 63)
  {
    goto LABEL_74;
  }

  v75 = a5 % a4 * a8;
  if ((a5 % a4 * a8) >> 64 != v75 >> 63)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v13 = a8 * a8;
  if ((a8 * a8) >> 64 != (a8 * a8) >> 63)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v14 = 3 * v13;
  if ((v13 * 3) >> 64 != (3 * v13) >> 63)
  {
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
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v14 > a2)
  {
LABEL_91:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v75 >= a6 || v12 >= a7)
  {
    if (v14 + 0x4000000000000000 >= 0)
    {
      v85[0] = a9.i16[0];
      v85[1] = a9.i16[0];
      if (a1)
      {
        memset_pattern4(a1, v85, 6 * v13);
        return;
      }

      goto LABEL_90;
    }

    goto LABEL_79;
  }

  if (!a1)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (__OFSUB__(a6, v75))
  {
    goto LABEL_80;
  }

  if (a6 - v75 >= a8)
  {
    v16 = a8;
  }

  else
  {
    v16 = a6 - v75;
  }

  if (v16 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 7;
  }

  if (__OFSUB__(a7, v12))
  {
    goto LABEL_81;
  }

  if (a7 - v12 >= a8)
  {
    v18 = a8;
  }

  else
  {
    v18 = a7 - v12;
  }

  if (v18 < 0)
  {
    goto LABEL_82;
  }

  v19 = &a1[2 * v13];
  v20 = &v19[2 * v13];
  if (v18)
  {
    v21 = v17 & 0xFFFFFFFFFFFFFFF8;
    v22 = v16 - (v17 & 0xFFFFFFFFFFFFFFF8);
    if (v16 < (v17 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v23 = a8 - v16;
    if (__OFSUB__(a8, v16))
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v24 = 0;
    v25 = v17 >> 3;
    v74 = v23 + 0x4000000000000000;
    __len = 2 * v23;
    v26 = vdupq_lane_s16(a9, 0);
    v66 = v26;
    v27 = a8 * (a5 + a5 / a4 * (a6 - a4));
    v28 = v27 + v21 - 0x2000000000000000;
    v29 = 32 * v25 + 4 * v27;
    v77 = 4 * a6;
    v30 = &a1[16 * v25];
    v76 = 2 * a8;
    v31 = &a1[16 * v25 + 2 * v13];
    v32 = &a1[16 * v25 + 4 * v13];
    v33 = vdupq_n_s16(0xD7ACu);
    v34 = vdupq_n_s16(0x2379u);
    v35 = vdupq_n_s16(0xD74Cu);
    v36 = vdupq_n_s16(0x23AFu);
    v37 = vdupq_n_s16(0xD681u);
    v38 = vdupq_n_s16(0x2348u);
    v81 = &v19[2 * v13];
    v82 = a1;
    v72 = a6;
    v73 = a8;
    v70 = v18;
    v71 = a5 / a4 * a8;
    v68 = a8 - v16;
    v69 = v16;
    v80 = &a1[2 * v13];
    v64 = v34;
    v65 = v33;
    v62 = v36;
    v63 = v35;
    v60 = v38;
    v61 = v37;
    while (1)
    {
      v41 = v12 + v24;
      if (__OFADD__(v12, v24))
      {
        break;
      }

      v42 = v41 * a6;
      if ((v41 * a6) >> 64 != (v41 * a6) >> 63)
      {
        goto LABEL_68;
      }

      v43 = v24 * a8;
      if (v16 >= 8)
      {
        v44 = 0;
        v45 = v42 + v75;
        do
        {
          v46 = (a3 + 32 + 4 * (v45 + v44));
          *(&a10 - 1) = vld4_s8(v46);
          v47 = __OFADD__(v44, 8);
          v48 = v44 + 8;
          v49 = v44 + v43;
          if (v47)
          {
            v48 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v26 = vmulq_f16(vaddq_f16(vcvtq_f16_u16(vmovl_u8(v86.val[0])), v37), v38);
          v50 = 2 * v49;
          *&a1[v50] = vmulq_f16(vaddq_f16(vcvtq_f16_u16(vmovl_u8(a11)), v33), v34);
          *&v19[v50] = vmulq_f16(vaddq_f16(vcvtq_f16_u16(vmovl_u8(a10)), v35), v36);
          *&v20[v50] = v26;
          v44 = v48;
        }

        while (v48 < v21);
      }

      if (v16 != v21)
      {
        if (v16 <= v21)
        {
          goto LABEL_72;
        }

        v51 = 0;
        v52 = *(a3 + 16);
        v53 = v29;
        while ((v28 + v51) >> 62 == 3)
        {
          if (v53 >= v52)
          {
            goto LABEL_64;
          }

          if ((v53 + 1) >= v52)
          {
            goto LABEL_65;
          }

          if ((v53 + 2) >= v52)
          {
            goto LABEL_66;
          }

          v26.i8[0] = *(a3 + v53 + 32);
          a10.i8[0] = *(a3 + v53 + 33);
          a11.i8[0] = *(a3 + v53 + 34);
          *a11.i16 = (a11.u16[0] + COERCE_SHORT_FLOAT(-10324)) * COERCE_SHORT_FLOAT(9081);
          *a10.i16 = (a10.u16[0] + COERCE_SHORT_FLOAT(-10420)) * COERCE_SHORT_FLOAT(9135);
          *&v30[2 * v51] = a11.i16[0];
          *(v31 + 2 * v51) = a10.i16[0];
          *v26.i16 = (v26.u16[0] + COERCE_SHORT_FLOAT(-10623)) * COERCE_SHORT_FLOAT(9032);
          *&v32[2 * v51++] = v26.i16[0];
          v53 += 4;
          if (v22 == v51)
          {
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        break;
      }

LABEL_50:
      if ((v24 * a8) >> 64 != v43 >> 63)
      {
        goto LABEL_69;
      }

      v47 = __OFADD__(v43, v16);
      v54 = v43 + v16;
      if (v47)
      {
        goto LABEL_70;
      }

      if (v23)
      {
        if (v54 + 0x4000000000000000 < 0)
        {
          goto LABEL_71;
        }

        if (v74 < 0)
        {
          __break(1u);
          goto LABEL_56;
        }

        v39 = 2 * v54;
        v84 = v66;
        v78 = v29;
        v79 = v24;
        memset_pattern16(&v82[2 * v54], &v84, __len);
        memset_pattern16(&v80[v39], &v84, __len);
        v40 = &v81[v39];
        v19 = v80;
        v20 = v81;
        memset_pattern16(v40, &v84, __len);
        v38 = v60;
        v37 = v61;
        v36 = v62;
        v35 = v63;
        v34 = v64;
        v33 = v65;
        v29 = v78;
        v24 = v79;
        v23 = v68;
        v16 = v69;
        v18 = v70;
        v12 = v71;
        a6 = v72;
        a8 = v73;
        a1 = v82;
      }

      ++v24;
      v28 += a6;
      v29 += v77;
      v30 += v76;
      v31 += v76;
      v32 += v76;
      if (v24 == v18)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_56:
  v55 = (a8 - v18) * a8;
  if (((a8 - v18) * a8) >> 64 != v55 >> 63)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v56 = v18 * a8;
  if ((v18 * a8) >> 64 != (v18 * a8) >> 63)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v55)
  {
    if (v56 + 0x4000000000000000 < 0)
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (v55 + 0x4000000000000000 < 0)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v57 = 2 * v56;
    v58 = 2 * v55;
    v83 = vdupq_lane_s16(a9, 0);
    memset_pattern16(&a1[2 * v56], &v83, 2 * v55);
    memset_pattern16(&v19[v57], &v83, v58);
    memset_pattern16(&v20[v57], &v83, v58);
  }
}

unint64_t type metadata completion function for DataStream()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  result = type metadata accessor for AsyncThrowingStream();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t DataStream.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v5 = type metadata accessor for AsyncThrowingStream.Iterator();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for AsyncThrowingStream();
  MEMORY[0x223D8EA60](v8);
  DataStream.AsyncIterator.init(wrapped:onCancel:)(v7, *(v2 + *(a1 + 28)), *(v2 + *(a1 + 28) + 8), a2);
}

uint64_t DataStream.AsyncIterator.init(wrapped:onCancel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v8 = type metadata accessor for AsyncThrowingStream.Iterator();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for DataStream.AsyncIterator();
  v10 = (a4 + *(result + 28));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t DataStream.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](DataStream.AsyncIterator.next(), 0, 0);
}

uint64_t DataStream.AsyncIterator.next()()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 24) = v1;
  v4 = (v1 + *(v2 + 28));
  v5 = *v4;
  v6 = v4[1];
  v0[6] = v6;

  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = type metadata accessor for Optional();
  *v7 = v0;
  v7[1] = DataStream.AsyncIterator.next();
  v9 = v0[2];

  return MEMORY[0x282200830](v9, &async function pointer to partial apply for closure #1 in DataStream.AsyncIterator.next(), v3, v5, v6, 0, 0, v8);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](DataStream.AsyncIterator.next(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in DataStream.AsyncIterator.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in DataStream.AsyncIterator.next(), 0, 0);
}

uint64_t closure #1 in DataStream.AsyncIterator.next()()
{
  static Task<>.checkCancellation()();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v2 = type metadata accessor for AsyncThrowingStream.Iterator();
  *v1 = v0;
  v1[1] = closure #1 in DataStream.AsyncIterator.next();
  v3 = *(v0 + 16);

  return MEMORY[0x2822005B0](v3, v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance DataStream<A>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return DataStream.AsyncIterator.next()(a1, a2);
}

uint64_t _s24TokenGenerationInference10DataStreamV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = _s24TokenGenerationInference10DataStreamV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t _s24TokenGenerationInference10DataStreamV13AsyncIteratorVyx_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance DataStream<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  DataStream.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t partial apply for closure #1 in DataStream.AsyncIterator.next()(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return closure #1 in DataStream.AsyncIterator.next()(a1, v4, v5);
}

unint64_t type metadata completion function for DataStream.AsyncIterator()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  result = type metadata accessor for AsyncThrowingStream.Iterator();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void closure #1 in DataStreamCancellationHandler.setIsInUse(isInUse:)(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  *(a1 + 16) = a2;
  os_unfair_lock_assert_owner((*(a1 + 24) + 16));
  if (*(a1 + 17) == 1)
  {
    if (*(a1 + 16))
    {
      v13 = 1;
    }

    else
    {
      v14 = OBJC_IVAR____TtC24TokenGenerationInference29DataStreamCancellationHandler_requestUUID;
      v20 = *(a1 + OBJC_IVAR____TtC24TokenGenerationInference29DataStreamCancellationHandler_dataStreamStateManager);
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
      (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + v14, v6);
      v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v21 = a3;
      v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      (*(v7 + 32))(v18 + v16, v9, v6);
      *(v18 + v17) = v20;
      a3 = v21;

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in DataStreamCancellationHandler.cancel()partial apply, v18);

      v13 = *(a1 + 17);
    }
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
}

void closure #1 in DataStreamCancellationHandler.setisCancelled(isCancelled:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v15 - v8;
  *(a1 + 17) = a2;
  os_unfair_lock_assert_owner((*(a1 + 24) + 16));
  if (*(a1 + 17) == 1 && (*(a1 + 16) & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC24TokenGenerationInference29DataStreamCancellationHandler_requestUUID;
    v11 = *(a1 + OBJC_IVAR____TtC24TokenGenerationInference29DataStreamCancellationHandler_dataStreamStateManager);
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + v10, v4);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    (*(v5 + 32))(v14 + v13, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in DataStreamCancellationHandler.cancel(), v14);
  }
}

uint64_t closure #1 in DataStreamCancellationHandler.cancel()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15DataStreamStateVSgMd);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for DataStreamState(0);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in DataStreamCancellationHandler.cancel(), 0, 0);
}

uint64_t closure #1 in DataStreamCancellationHandler.cancel()()
{
  v21 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.device);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_220940000, v6, v7, "Handling cancellation for request %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223D90A10](v13, -1, -1);
    MEMORY[0x223D90A10](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[6];

  return MEMORY[0x2822009F8](closure #1 in DataStreamCancellationHandler.cancel(), v18, 0);
}

{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = v0[5];

    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v5)
    {
      outlined init with copy of DataStreamState(*(v2 + 56) + *(v0[9] + 72) * v4, v0[7]);
      v6 = 0;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 1;
  }

  (*(v0[9] + 56))(v0[7], v6, 1, v0[8]);

  return MEMORY[0x2822009F8](closure #1 in DataStreamCancellationHandler.cancel(), 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[7];
  if ((*(v0[9] + 48))(v2, 1, v1) == 1)
  {
    outlined destroy of [Int](v2, &_s24TokenGenerationInference15DataStreamStateVSgMd);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[10];
    outlined init with take of DataStreamState(v2, v5);
    v6 = *(v1 + 52);
    outlined destroy of [Int](v5 + v6, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV9ErrorTypeOSgMd);
    v7 = *MEMORY[0x277D20BB8];
    v8 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.ErrorType();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v5 + v6, v7, v8);
    (*(v9 + 56))(v5 + v6, 0, 1, v8);
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = closure #1 in DataStreamCancellationHandler.cancel();
    v11 = v0[10];
    v12 = v0[5];

    return DataStreamStateManager.removeState(uuid:state:)(v12, v11);
  }
}

{

  return MEMORY[0x2822009F8](closure #1 in DataStreamCancellationHandler.cancel(), 0, 0);
}

{
  outlined destroy of DataStreamState(*(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DataStreamCancellationHandler.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC24TokenGenerationInference29DataStreamCancellationHandler_requestUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataStreamCancellationHandler()
{
  result = type metadata singleton initialization cache for DataStreamCancellationHandler;
  if (!type metadata singleton initialization cache for DataStreamCancellationHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DataStreamCancellationHandler()
{
  result = type metadata accessor for UUID();
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

uint64_t partial apply for closure #1 in DataStreamCancellationHandler.cancel()(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return closure #1 in DataStreamCancellationHandler.cancel()(a1, v6, v7, v1 + v5, v8);
}

uint64_t outlined destroy of DataStreamState(uint64_t a1)
{
  v2 = type metadata accessor for DataStreamState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t closure #1 in DataStreamCancellationHandler.cancel()partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return closure #1 in DataStreamCancellationHandler.cancel()(a1, v6, v7, v1 + v5, v8);
}

unint64_t EncodedImageArray.imageCount.getter()
{
  swift_beginAccess();
  result = *(*(v0 + 152) + 16);
  if (result >> 31)
  {
    __break(1u);
  }

  return result;
}

uint64_t EncodedImageArray.__allocating_init(encoderModelURL:useHighQualityImageTokenization:textVocabularyCount:imageEmbeddingCache:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 80) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v7 = swift_task_alloc();
  *(v5 + 48) = v7;
  *v7 = v5;
  v7[1] = EncodedImageArray.__allocating_init(encoderModelURL:useHighQualityImageTokenization:textVocabularyCount:imageEmbeddingCache:);

  return (specialized static ImageEncoderLoader.load(contentsOf:))(a1);
}

uint64_t EncodedImageArray.__allocating_init(encoderModelURL:useHighQualityImageTokenization:textVocabularyCount:imageEmbeddingCache:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = EncodedImageArray.__allocating_init(encoderModelURL:useHighQualityImageTokenization:textVocabularyCount:imageEmbeddingCache:);
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = EncodedImageArray.__allocating_init(encoderModelURL:useHighQualityImageTokenization:textVocabularyCount:imageEmbeddingCache:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t EncodedImageArray.__allocating_init(encoderModelURL:useHighQualityImageTokenization:textVocabularyCount:imageEmbeddingCache:)()
{
  v1 = v0[2].i64[0];
  v2 = v0[5].i8[0];
  v3 = v0[1].i64[0];
  v4 = v0[1].i64[1];
  v5 = swift_allocObject();
  *(v5 + 152) = MEMORY[0x277D84F90];
  *(v5 + 24) = xmmword_220AEB790;
  *(v5 + 40) = xmmword_220AEB7A0;
  *(v5 + 56) = xmmword_220AEB7B0;
  *(v5 + 72) = 10000000;
  v6 = type metadata accessor for OnDeviceImagePreprocessor();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220AEB790;
  *(v7 + 32) = xmmword_220AEB7A0;
  *(v7 + 48) = xmmword_220AEB7B0;
  *(v7 + 64) = 10000000;
  *(v5 + 104) = v6;
  *(v5 + 112) = &protocol witness table for OnDeviceImagePreprocessor;
  *(v5 + 80) = v7;
  *(v5 + 120) = vextq_s8(v0[4], v0[4], 8uLL);
  *(v5 + 136) = v1;
  *(v5 + 144) = v2;
  type metadata accessor for ImageTokenIDGenerator();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v3, v9);
  *(v8 + 16) = v4;
  *(v5 + 16) = v8;
  v10 = v0->i64[1];

  return v10(v5);
}

{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

_NSRange __swiftcall EncodedImageArray.tokenRange(at:)(Swift::Int32 at)
{
  v3 = swift_beginAccess();
  if (at < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v1 + 152);
  if (*(v5 + 16) <= at)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5 + 40 * at;
  v3 = *(v6 + 48);
  v7 = *(v6 + 56);
  v8 = __OFADD__(v3, v7);
  v9 = v3 + v7;
  if (v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v9 - v3;
  if (v9 >= v3)
  {
    if (!__OFSUB__(v9, v3))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  result.length = v4;
  result.location = v3;
  return result;
}

uint64_t EncodedImageArray.getEncodedImage(at:withHandler:)(int a1, void (*a2)(void))
{
  result = swift_beginAccess();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 152);
    if (*(v6 + 16) > a1)
    {
      v7 = v6 + 40 * a1;
      v9 = *(v7 + 32);
      v8 = *(v7 + 48);
      v13 = *(v7 + 64);
      v12[0] = v9;
      v12[1] = v8;
      v10 = v9;
      outlined init with copy of _EncodedImage(v12, v11);
      outlined init with copy of _EncodedImage(v12, v11);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v10, *(&v10 + 1), v12, a2);
      return outlined destroy of _EncodedImage(v12);
    }
  }

  __break(1u);
  return result;
}

uint64_t EncodedImageArray.appendAndTokenize(configuration:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  return MEMORY[0x2822009F8](EncodedImageArray.appendAndTokenize(configuration:_:), 0, 0);
}

uint64_t EncodedImageArray.appendAndTokenize(configuration:_:)()
{
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 208) + 80, v0 + 88, &_s24TokenGenerationInference12ImageEncoder33_EDB8B1D8F9C2943CA163A428958D5177LLVSgMd);
  if (*(v0 + 112))
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 88);
    *(v0 + 80) = *(v0 + 152);
    v3 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v3;
    v4 = *(v0 + 104);
    *(v0 + 16) = v2;
    *(v0 + 32) = v4;
    v14 = (v1 + *v1);
    v5 = swift_task_alloc();
    *(v0 + 216) = v5;
    *v5 = v0;
    v5[1] = EncodedImageArray.appendAndTokenize(configuration:_:);

    return v14(v0 + 16);
  }

  else
  {
    outlined destroy of [Int](v0 + 88, &_s24TokenGenerationInference12ImageEncoder33_EDB8B1D8F9C2943CA163A428958D5177LLVSgMd);
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.device);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_220940000, v8, v9, "Asked to encode image when no image encoder available.", v10, 2u);
      MEMORY[0x223D90A10](v10, -1, -1);
    }

    v11 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D71E18], v11);
    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }
}

{
  v1 = v0[28];
  if (!*(v1 + 16))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v2 = v0[26];
  v3 = v0[23];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v0 + 2;
  v5 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_24TokenGenerationInference13_EncodedImage33_EDB8B1D8F9C2943CA163A428958D5177LLVs5NeverOTg5(partial apply for closure #1 in EncodedImageArray.appendAndTokenize(configuration:_:), v4, v1);

  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v6);
  swift_endAccess();
  v7 = EncodedImageArray.tokenize(nextEncodedImages:configuration:)(v5, v3);

  outlined destroy of ImageEncoder((v0 + 2));
  v8 = v0[1];

  return v8(v7);
}

{
  outlined destroy of ImageEncoder(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t EncodedImageArray.appendAndTokenize(configuration:_:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = EncodedImageArray.appendAndTokenize(configuration:_:);
  }

  else
  {
    v4 = EncodedImageArray.appendAndTokenize(configuration:_:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t closure #1 in EncodedImageArray.appendAndTokenize(configuration:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a2 + 16);
  v8 = *(a3 + 48);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 24);
  v15 = v5;
  outlined copy of Data._Representation(v5, v6);
  result = v10(ObjectType, v8);
  v12 = *(v7 + 16);
  while (!__OFADD__(v12, result))
  {
    v13 = v12;
    atomic_compare_exchange_strong_explicit((v7 + 16), &v13, v12 + result, memory_order_relaxed, memory_order_relaxed);
    v14 = v13 == v12;
    v12 = v13;
    if (v14)
    {
      result = v10(ObjectType, v8);
      *a4 = v15;
      *(a4 + 8) = v6;
      *(a4 + 16) = v12;
      *(a4 + 24) = result;
      *(a4 + 32) = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t EncodedImageArray.tokenize(nextEncodedImages:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v119 = a2;
  v5 = type metadata accessor for ImageTokenizationConfiguration();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v102 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v109 = &v97 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v97 - v12;
  MEMORY[0x28223BE20](v11);
  v108 = &v97 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore30ImageTokenizationConfigurationVSgMd);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v97 - v19;
  MEMORY[0x28223BE20](v18);
  v24 = &v97 - v21;
  v25 = *(a1 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v103 = v22;
  v101 = v13;
  v26 = 0;
  v27 = (a1 + 56);
  v28 = v25 + 1;
  while (--v28)
  {
    v29 = *v27;
    v27 += 5;
    v30 = __OFADD__(v26, v29);
    v26 += v29;
    if (v30)
    {
      __break(1u);
      break;
    }
  }

  v116 = v25;
  v110 = v23;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v119, &v97 - v21, &_s19TokenGenerationCore30ImageTokenizationConfigurationVSgMd);
  v117 = *(v6 + 48);
  v118 = v6 + 48;
  if (v117(v24, 1, v5) == 1)
  {
    outlined destroy of [Int](v24, &_s19TokenGenerationCore30ImageTokenizationConfigurationVSgMd);
    v31 = 1;
  }

  else
  {
    started = ImageTokenizationConfiguration.imageStartTokens.getter();
    (*(v6 + 8))(v24, v5);
    v31 = *(started + 16);
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v119, v20, &_s19TokenGenerationCore30ImageTokenizationConfigurationVSgMd);
  v34 = v117(v20, 1, v5);
  v111 = v5;
  if (v34 == 1)
  {
    result = outlined destroy of [Int](v20, &_s19TokenGenerationCore30ImageTokenizationConfigurationVSgMd);
    v35 = 1;
  }

  else
  {
    v36 = ImageTokenizationConfiguration.imageEndTokens.getter();
    (*(v6 + 8))(v20, v5);
    v35 = *(v36 + 16);
  }

  v37 = v110;
  v38 = v31 + v35;
  if (__OFADD__(v31, v35))
  {
    goto LABEL_58;
  }

  v39 = v116 * v38;
  if ((v116 * v38) >> 64 != (v116 * v38) >> 63)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v30 = __OFADD__(v26, v39);
  v40 = v26 + v39;
  if (!v30)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40 & ~(v40 >> 63), 0, MEMORY[0x277D84F90]);
    v121 = result;
    v106 = (v6 + 16);
    v107 = (v6 + 32);
    v105 = (v6 + 8);
    v41 = (a1 + 56);
    *&v42 = 134217984;
    v100 = v42;
    *&v42 = 136315138;
    v99 = v42;
    v104 = v3;
    v43 = v111;
    v44 = v103;
    while (1)
    {
      v50 = *(v41 - 1);
      if (__OFADD__(v50, *v41))
      {
        break;
      }

      if (v50 + *v41 < v50)
      {
        goto LABEL_57;
      }

      v112 = v50 + *v41;
      v51 = v3;
      v52 = *(v41 - 3);
      v53 = *(v41 - 2);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v119, v37, &_s19TokenGenerationCore30ImageTokenizationConfigurationVSgMd);
      v54 = v117(v37, 1, v43);
      v114 = v52;
      v115 = v41;
      v113 = v53;
      if (v54 == 1)
      {
        outlined copy of Data._Representation(v52, v53);
        outlined destroy of [Int](v37, &_s19TokenGenerationCore30ImageTokenizationConfigurationVSgMd);
        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        __swift_project_value_buffer(v55, static Log.tokenization);
        v3 = v51;

        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = v100;
          *(v58 + 4) = *(v51 + 56);

          _os_log_impl(&dword_220940000, v56, v57, "EncodedImageArray: Falling back to default image start token: %ld", v58, 0xCu);
          MEMORY[0x223D90A10](v58, -1, -1);
        }

        else
        {
        }

        v71 = v112;
        v72 = *(v3 + 56);
        v73 = v121;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
        }

        v75 = *(v73 + 2);
        v74 = *(v73 + 3);
        if (v75 >= v74 >> 1)
        {
          v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v73);
        }

        *(v73 + 2) = v75 + 1;
        *&v73[8 * v75 + 32] = v72;
        v121 = v73;
        v43 = v111;
      }

      else
      {
        v59 = v108;
        (*v107)(v108, v37, v43);
        outlined copy of Data._Representation(v52, v53);
        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        __swift_project_value_buffer(v60, static Log.tokenization);
        v61 = v101;
        (*v106)(v101, v59, v43);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v120 = v65;
          *v64 = v99;
          ImageTokenizationConfiguration.imageStartTokens.getter();
          v98 = MEMORY[0x223D8E8D0]();
          v67 = v66;

          v68 = *v105;
          (*v105)(v61, v111);
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v67, &v120);
          v43 = v111;

          *(v64 + 4) = v69;
          _os_log_impl(&dword_220940000, v62, v63, "EncodedImageArray: Prepending image start tokens: %s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v65);
          MEMORY[0x223D90A10](v65, -1, -1);
          v70 = v64;
          v3 = v104;
          MEMORY[0x223D90A10](v70, -1, -1);
        }

        else
        {
          v3 = v51;

          v68 = *v105;
          (*v105)(v61, v43);
        }

        v71 = v112;
        v76 = v108;
        v77 = ImageTokenizationConfiguration.imageStartTokens.getter();
        specialized Array.append<A>(contentsOf:)(v77);
        v68(v76, v43);
        v44 = v103;
        v37 = v110;
      }

      specialized Array.append<A>(contentsOf:)(v50, v71);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v119, v44, &_s19TokenGenerationCore30ImageTokenizationConfigurationVSgMd);
      if (v117(v44, 1, v43) == 1)
      {
        outlined destroy of [Int](v44, &_s19TokenGenerationCore30ImageTokenizationConfigurationVSgMd);
        v78 = v114;
        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v79 = type metadata accessor for Logger();
        __swift_project_value_buffer(v79, static Log.tokenization);

        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = v100;
          *(v82 + 4) = *(v3 + 64);

          _os_log_impl(&dword_220940000, v80, v81, "EncodedImageArray: Falling back to default image end token: %ld", v82, 0xCu);
          MEMORY[0x223D90A10](v82, -1, -1);
        }

        else
        {
        }

        v93 = *(v3 + 64);
        v94 = v121;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
        }

        v96 = *(v94 + 2);
        v95 = *(v94 + 3);
        if (v96 >= v95 >> 1)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v94);
        }

        result = outlined consume of Data._Representation(v78, v113);
        *(v94 + 2) = v96 + 1;
        *&v94[8 * v96 + 32] = v93;
        v121 = v94;
      }

      else
      {
        v83 = v109;
        (*v107)(v109, v44, v43);
        v84 = v102;
        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        __swift_project_value_buffer(v85, static Log.tokenization);
        (*v106)(v84, v83, v43);
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v120 = v89;
          *v88 = v99;
          ImageTokenizationConfiguration.imageEndTokens.getter();
          v112 = MEMORY[0x223D8E8D0]();
          v91 = v90;

          v45 = *v105;
          (*v105)(v84, v111);
          v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v91, &v120);
          v43 = v111;

          *(v88 + 4) = v92;
          _os_log_impl(&dword_220940000, v86, v87, "EncodedImageArray: Appending image end tokens: %s", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v89);
          MEMORY[0x223D90A10](v89, -1, -1);
          MEMORY[0x223D90A10](v88, -1, -1);
        }

        else
        {

          v45 = *v105;
          (*v105)(v84, v43);
        }

        v47 = v113;
        v46 = v114;
        v48 = v109;
        v49 = ImageTokenizationConfiguration.imageEndTokens.getter();
        specialized Array.append<A>(contentsOf:)(v49);
        outlined consume of Data._Representation(v46, v47);
        result = (v45)(v48, v43);
        v3 = v104;
        v37 = v110;
      }

      v41 = v115 + 5;
      if (!--v116)
      {
        return v121;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_60:
  __break(1u);
  return result;
}

uint64_t EncodedImageArray.appendAndTokenize(image:configuration:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](EncodedImageArray.appendAndTokenize(image:configuration:), 0, 0);
}

uint64_t EncodedImageArray.appendAndTokenize(image:configuration:)()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = EncodedImageArray.appendAndTokenize(image:configuration:);
  v4 = v0[3];

  return EncodedImageArray.appendAndTokenize(configuration:_:)(v4, &async function pointer to partial apply for closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:), v2);
}

uint64_t EncodedImageArray.appendAndTokenize(image:configuration:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](EncodedImageArray.appendAndTokenize(image:configuration:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:), 0, 0);
}

uint64_t closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:)()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:);

  return ImageEncoder.encodeProcessedImages(_:)(partial apply for closure #1 in ImageEncoder.encode(image:), v1);
}

uint64_t closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t EncodedImageArray.appendAndTokenize(imageSurface:configuration:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](EncodedImageArray.appendAndTokenize(imageSurface:configuration:), 0, 0);
}

uint64_t EncodedImageArray.appendAndTokenize(imageSurface:configuration:)()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = EncodedImageArray.appendAndTokenize(image:configuration:);
  v4 = v0[3];

  return EncodedImageArray.appendAndTokenize(configuration:_:)(v4, &async function pointer to partial apply for closure #1 in EncodedImageArray.appendAndTokenize(imageSurface:configuration:), v2);
}

uint64_t closure #1 in EncodedImageArray.appendAndTokenize(imageSurface:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](closure #1 in EncodedImageArray.appendAndTokenize(imageSurface:configuration:), 0, 0);
}

uint64_t closure #1 in EncodedImageArray.appendAndTokenize(imageSurface:configuration:)()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:);

  return ImageEncoder.encodeProcessedImages(_:)(partial apply for closure #1 in ImageEncoder.encode(imageSurface:), v1);
}

uint64_t EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:), 0, 0);
}

uint64_t EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:)()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:);
  v4 = v0[3];

  return EncodedImageArray.appendAndTokenize(configuration:_:)(v4, &async function pointer to partial apply for closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:), v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:), 0, 0);
}

uint64_t closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:)()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:);

  return ImageEncoder.encodeProcessedImages(_:)(partial apply for closure #1 in ImageEncoder.encode(preprocessedImage:), v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t EncodedImageArray.appendAndTokenize(encodedImage:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = Prompt.ImageEmbeddingAttachment.data.getter();
  v9 = v8;
  v10 = *(v4 + 16);
  v11 = Prompt.ImageEmbeddingAttachment.tokenCount.getter();
  v12 = *(v10 + 16);
  do
  {
    if (__OFADD__(v12, v11))
    {
      __break(1u);
      goto LABEL_10;
    }

    v13 = v12;
    atomic_compare_exchange_strong_explicit((v10 + 16), &v13, v12 + v11, memory_order_relaxed, memory_order_relaxed);
    v14 = v13 == v12;
    v12 = v13;
  }

  while (!v14);
  a1 = Prompt.ImageEmbeddingAttachment.tokenCount.getter();
  swift_beginAccess();
  v3 = *(v4 + 152);
  outlined copy of Data._Representation(v7, v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 152) = v3;
  v22 = a2;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_6;
  }

LABEL_10:
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  *(v4 + 152) = v3;
LABEL_6:
  v17 = *(v3 + 2);
  v16 = *(v3 + 3);
  if (v17 >= v16 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v3);
  }

  *(v3 + 2) = v17 + 1;
  v18 = &v3[40 * v17];
  *(v18 + 4) = v7;
  *(v18 + 5) = v9;
  *(v18 + 6) = v12;
  *(v18 + 7) = a1;
  v18[64] = 1;
  *(v4 + 152) = v3;
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference13_EncodedImage33_EDB8B1D8F9C2943CA163A428958D5177LLVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220AE8A30;
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 48) = v12;
  *(inited + 56) = a1;
  *(inited + 64) = 1;
  outlined copy of Data._Representation(v7, v9);
  v20 = EncodedImageArray.tokenize(nextEncodedImages:configuration:)(inited, v22);
  outlined consume of Data._Representation(v7, v9);
  swift_setDeallocating();
  outlined destroy of _EncodedImage(inited + 32);
  return v20;
}

uint64_t EncodedImageArray.deinit()
{

  outlined destroy of [Int](v0 + 80, &_s24TokenGenerationInference12ImageEncoder33_EDB8B1D8F9C2943CA163A428958D5177LLVSgMd);

  return v0;
}

uint64_t EncodedImageArray.__deallocating_deinit()
{

  outlined destroy of [Int](v0 + 80, &_s24TokenGenerationInference12ImageEncoder33_EDB8B1D8F9C2943CA163A428958D5177LLVSgMd);

  return swift_deallocClassInstance();
}

uint64_t ImageEncoder.encodeProcessedImages(_:)(uint64_t a1, uint64_t a2)
{
  v3[108] = v2;
  v3[107] = a2;
  v3[106] = a1;
  v4 = type metadata accessor for Logger();
  v3[109] = v4;
  v3[110] = *(v4 - 8);
  v3[111] = swift_task_alloc();
  v5 = type metadata accessor for ImageEncoder.Signposter();
  v3[112] = v5;
  v6 = *(v5 - 8);
  v3[113] = v6;
  v3[114] = *(v6 + 64);
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();

  return MEMORY[0x2822009F8](ImageEncoder.encodeProcessedImages(_:), 0, 0);
}

char *ImageEncoder.encodeProcessedImages(_:)()
{
  if (one-time initialization token for device != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v1 = *(v0 + 936);
    v2 = *(v0 + 888);
    v3 = *(v0 + 880);
    v4 = *(v0 + 872);
    v5 = *(v0 + 856);
    v6 = *(v0 + 848);
    v7 = __swift_project_value_buffer(v4, static Log.device);
    *(v0 + 944) = v7;
    (*(v3 + 16))(v2, v7, v4);
    OSSignposter.init(logger:)();
    UUID.init()();
    v8 = specialized ImageEncoder.Signposter.profileProcessAttachment<A>(closure:)(v1, v6, v5);
    *(v0 + 952) = v8;
    v9 = v8;
    v10 = *(v8 + 16);
    v11 = MEMORY[0x277D84F90];
    if (!v10)
    {
      break;
    }

    v61 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v12 = v61;
    v13 = v9 + 32;
    do
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v13, v0 + 640);
      v14 = *(v0 + 664);
      v15 = *(v0 + 672);
      __swift_project_boxed_opaque_existential_1((v0 + 640), v14);
      v16 = (*(v15 + 16))(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v0 + 640);
      v18 = *(v61 + 16);
      v17 = *(v61 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v61 + 16) = v19;
      *(v61 + 8 * v18 + 32) = v16;
      v13 += 40;
      --v10;
    }

    while (v10);
LABEL_10:
    v20 = 0;
    v21 = 32;
    while (1)
    {
      v22 = *(v12 + v21);
      v23 = __OFADD__(v20, v22);
      v20 += v22;
      if (v23)
      {
        break;
      }

      v21 += 8;
      if (!--v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  v19 = *(MEMORY[0x277D84F90] + 16);
  if (v19)
  {
    v12 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v20 = 0;
LABEL_13:

  if (*(v11 + 16) <= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = *(v11 + 16);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0, v11);
  *(v0 + 840) = result;
  v26 = *(v9 + 16);
  *(v0 + 960) = v26;
  if (!v26)
  {
    v29 = 0uLL;
    v28 = 0uLL;
    v30 = 0uLL;
    goto LABEL_20;
  }

  v27 = *(v0 + 952);
  if (*(v27 + 16))
  {
    *(v0 + 592) = 0;
    outlined init with copy of DeterministicLanguageModelProtocol(v27 + 32, v0 + 600);
    v29 = *(v0 + 592);
    v28 = *(v0 + 608);
    v26 = 1;
    v30 = *(v0 + 624);
LABEL_20:
    *(v0 + 968) = v26;
    *(v0 + 544) = v29;
    *(v0 + 560) = v28;
    *(v0 + 576) = v30;
    v31 = *(v0 + 936);
    v32 = *(v0 + 928);
    v33 = *(v0 + 920);
    if (v30)
    {
      v34 = *(v0 + 904);
      v35 = *(v0 + 864);
      v60 = v29;
      outlined init with take of RandomNumberGenerator((v0 + 552), v0 + 680);
      outlined init with copy of ImageEncoder(v35, v0 + 400);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 680, v0 + 720);
      outlined init with copy of ImageEncoder.Signposter(v31, v32);
      outlined init with copy of ImageEncoder(v0 + 400, v0 + 472);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 720, v0 + 760);
      outlined init with copy of ImageEncoder.Signposter(v32, v33);
      v36 = (*(v34 + 80) + 136) & ~*(v34 + 80);
      v37 = swift_allocObject();
      *(v0 + 976) = v37;
      v38 = *(v0 + 448);
      *(v37 + 48) = *(v0 + 432);
      *(v37 + 64) = v38;
      *(v37 + 80) = *(v0 + 464);
      v39 = *(v0 + 416);
      *(v37 + 16) = *(v0 + 400);
      *(v37 + 32) = v39;
      *(v37 + 88) = v60;
      outlined init with take of RandomNumberGenerator((v0 + 720), v37 + 96);
      outlined init with take of ImageEncoder.Signposter(v32, v37 + v36);
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 680, v0 + 800);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference22ProcessedImageProtocol_pMd);
      if (swift_dynamicCast())
      {
        outlined destroy of ImageEncoder.Signposter(*(v0 + 920));
        __swift_destroy_boxed_opaque_existential_1(v0 + 760);
        outlined destroy of ImageEncoder(v0 + 472);
        v41 = *(v0 + 80);
        v40 = *(v0 + 96);
        v42 = *(v0 + 64);
        *(v0 + 208) = v41;
        *(v0 + 224) = v40;
        v44 = *(v0 + 112);
        v43 = *(v0 + 128);
        v45 = *(v0 + 96);
        *(v0 + 240) = v44;
        *(v0 + 256) = v43;
        v46 = *(v0 + 32);
        v47 = *(v0 + 16);
        v48 = v46;
        *(v0 + 144) = v47;
        *(v0 + 160) = v46;
        v50 = *(v0 + 48);
        v49 = *(v0 + 64);
        *(v0 + 176) = v50;
        *(v0 + 192) = v49;
        v51 = *(v0 + 128);
        *(v0 + 368) = v44;
        *(v0 + 384) = v51;
        *(v0 + 336) = v41;
        *(v0 + 352) = v45;
        *(v0 + 304) = v50;
        *(v0 + 320) = v42;
        *(v0 + 272) = v47;
        *(v0 + 288) = v48;
        v52 = swift_task_alloc();
        *(v0 + 984) = v52;
        *v52 = v0;
        v52[1] = ImageEncoder.encodeProcessedImages(_:);

        return ImageEmbeddingCache.cached(image:fallback:)(v0 + 272, &async function pointer to partial apply for closure #1 in ImageEncoder.encodeProcessedImages(_:), v37);
      }

      else
      {
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_220940000, v55, v56, "ImageEmbeddingCache skipped, unsupported image class", v57, 2u);
          MEMORY[0x223D90A10](v57, -1, -1);
        }

        v58 = swift_task_alloc();
        *(v0 + 1008) = v58;
        *v58 = v0;
        v58[1] = ImageEncoder.encodeProcessedImages(_:);
        v59 = *(v0 + 920);

        return ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:)(v60, v0 + 760, v59);
      }
    }

    else
    {
      outlined destroy of ImageEncoder.Signposter(*(v0 + 936));

      v53 = *(v0 + 840);

      v54 = *(v0 + 8);

      return v54(v53);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ImageEncoder.encodeProcessedImages(_:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 992) = v1;

  if (v1)
  {

    v5 = ImageEncoder.encodeProcessedImages(_:);
  }

  else
  {
    *(v4 + 1000) = a1;
    outlined destroy of ProcessedImage(v4 + 144);
    v5 = ImageEncoder.encodeProcessedImages(_:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 1016) = v1;

  if (v1)
  {
    v5 = *(v4 + 920);

    outlined destroy of ImageEncoder.Signposter(v5);
    __swift_destroy_boxed_opaque_existential_1(v4 + 760);
    outlined destroy of ImageEncoder(v4 + 472);

    v6 = ImageEncoder.encodeProcessedImages(_:);
  }

  else
  {
    v7 = *(v4 + 920);
    *(v4 + 1024) = a1;
    outlined destroy of ImageEncoder.Signposter(v7);
    __swift_destroy_boxed_opaque_existential_1(v4 + 760);
    outlined destroy of ImageEncoder(v4 + 472);
    v6 = ImageEncoder.encodeProcessedImages(_:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t ImageEncoder.encodeProcessedImages(_:)()
{
  specialized Array.append<A>(contentsOf:)(*(v0 + 1000));
  __swift_destroy_boxed_opaque_existential_1(v0 + 680);

  v2 = *(v0 + 968);
  v3 = 0uLL;
  if (v2 == *(v0 + 960))
  {
    v4 = 0uLL;
    v5 = 0uLL;
  }

  else
  {
    v6 = *(v0 + 952);
    if (v2 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    *(v0 + 592) = v2;
    outlined init with copy of DeterministicLanguageModelProtocol(v6 + 40 * v2 + 32, v0 + 600);
    v3 = *(v0 + 592);
    v4 = *(v0 + 608);
    v2 = v7;
    v5 = *(v0 + 624);
  }

  *(v0 + 968) = v2;
  *(v0 + 544) = v3;
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  if (v5)
  {
    v8 = *(v0 + 936);
    v9 = *(v0 + 928);
    v10 = *(v0 + 920);
    v11 = *(v0 + 904);
    v12 = *(v0 + 864);
    v37 = v3;
    outlined init with take of RandomNumberGenerator((v0 + 552), v0 + 680);
    outlined init with copy of ImageEncoder(v12, v0 + 400);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 680, v0 + 720);
    outlined init with copy of ImageEncoder.Signposter(v8, v9);
    outlined init with copy of ImageEncoder(v0 + 400, v0 + 472);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 720, v0 + 760);
    outlined init with copy of ImageEncoder.Signposter(v9, v10);
    v13 = (*(v11 + 80) + 136) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v0 + 976) = v14;
    v15 = *(v0 + 448);
    *(v14 + 48) = *(v0 + 432);
    *(v14 + 64) = v15;
    *(v14 + 80) = *(v0 + 464);
    v16 = *(v0 + 416);
    *(v14 + 16) = *(v0 + 400);
    *(v14 + 32) = v16;
    *(v14 + 88) = v37;
    outlined init with take of RandomNumberGenerator((v0 + 720), v14 + 96);
    outlined init with take of ImageEncoder.Signposter(v9, v14 + v13);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 680, v0 + 800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference22ProcessedImageProtocol_pMd);
    if (swift_dynamicCast())
    {
      outlined destroy of ImageEncoder.Signposter(*(v0 + 920));
      __swift_destroy_boxed_opaque_existential_1(v0 + 760);
      outlined destroy of ImageEncoder(v0 + 472);
      v18 = *(v0 + 80);
      v17 = *(v0 + 96);
      v19 = *(v0 + 64);
      *(v0 + 208) = v18;
      *(v0 + 224) = v17;
      v21 = *(v0 + 112);
      v20 = *(v0 + 128);
      v22 = *(v0 + 96);
      *(v0 + 240) = v21;
      *(v0 + 256) = v20;
      v23 = *(v0 + 32);
      v24 = *(v0 + 16);
      v25 = v23;
      *(v0 + 144) = v24;
      *(v0 + 160) = v23;
      v27 = *(v0 + 48);
      v26 = *(v0 + 64);
      *(v0 + 176) = v27;
      *(v0 + 192) = v26;
      v28 = *(v0 + 128);
      *(v0 + 368) = v21;
      *(v0 + 384) = v28;
      *(v0 + 336) = v18;
      *(v0 + 352) = v22;
      *(v0 + 304) = v27;
      *(v0 + 320) = v19;
      *(v0 + 272) = v24;
      *(v0 + 288) = v25;
      v29 = swift_task_alloc();
      *(v0 + 984) = v29;
      *v29 = v0;
      v29[1] = ImageEncoder.encodeProcessedImages(_:);

      return ImageEmbeddingCache.cached(image:fallback:)(v0 + 272, &async function pointer to partial apply for closure #1 in ImageEncoder.encodeProcessedImages(_:), v14);
    }

    else
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_220940000, v32, v33, "ImageEmbeddingCache skipped, unsupported image class", v34, 2u);
        MEMORY[0x223D90A10](v34, -1, -1);
      }

      v35 = swift_task_alloc();
      *(v0 + 1008) = v35;
      *v35 = v0;
      v35[1] = ImageEncoder.encodeProcessedImages(_:);
      v36 = *(v0 + 920);

      return ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:)(v37, v0 + 760, v36);
    }
  }

  else
  {
    outlined destroy of ImageEncoder.Signposter(*(v0 + 936));

    v30 = *(v0 + 840);

    v31 = *(v0 + 8);

    return v31(v30);
  }
}

{
  specialized Array.append<A>(contentsOf:)(*(v0 + 1024));
  __swift_destroy_boxed_opaque_existential_1(v0 + 680);

  v2 = *(v0 + 968);
  v3 = 0uLL;
  if (v2 == *(v0 + 960))
  {
    v4 = 0uLL;
    v5 = 0uLL;
  }

  else
  {
    v6 = *(v0 + 952);
    if (v2 >= *(v6 + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v2 + 1;
    *(v0 + 592) = v2;
    outlined init with copy of DeterministicLanguageModelProtocol(v6 + 40 * v2 + 32, v0 + 600);
    v3 = *(v0 + 592);
    v4 = *(v0 + 608);
    v2 = v7;
    v5 = *(v0 + 624);
  }

  *(v0 + 968) = v2;
  *(v0 + 544) = v3;
  *(v0 + 560) = v4;
  *(v0 + 576) = v5;
  if (v5)
  {
    v8 = *(v0 + 936);
    v9 = *(v0 + 928);
    v10 = *(v0 + 920);
    v11 = *(v0 + 904);
    v12 = *(v0 + 864);
    v37 = v3;
    outlined init with take of RandomNumberGenerator((v0 + 552), v0 + 680);
    outlined init with copy of ImageEncoder(v12, v0 + 400);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 680, v0 + 720);
    outlined init with copy of ImageEncoder.Signposter(v8, v9);
    outlined init with copy of ImageEncoder(v0 + 400, v0 + 472);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 720, v0 + 760);
    outlined init with copy of ImageEncoder.Signposter(v9, v10);
    v13 = (*(v11 + 80) + 136) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v0 + 976) = v14;
    v15 = *(v0 + 448);
    *(v14 + 48) = *(v0 + 432);
    *(v14 + 64) = v15;
    *(v14 + 80) = *(v0 + 464);
    v16 = *(v0 + 416);
    *(v14 + 16) = *(v0 + 400);
    *(v14 + 32) = v16;
    *(v14 + 88) = v37;
    outlined init with take of RandomNumberGenerator((v0 + 720), v14 + 96);
    outlined init with take of ImageEncoder.Signposter(v9, v14 + v13);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 680, v0 + 800);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference22ProcessedImageProtocol_pMd);
    if (swift_dynamicCast())
    {
      outlined destroy of ImageEncoder.Signposter(*(v0 + 920));
      __swift_destroy_boxed_opaque_existential_1(v0 + 760);
      outlined destroy of ImageEncoder(v0 + 472);
      v18 = *(v0 + 80);
      v17 = *(v0 + 96);
      v19 = *(v0 + 64);
      *(v0 + 208) = v18;
      *(v0 + 224) = v17;
      v21 = *(v0 + 112);
      v20 = *(v0 + 128);
      v22 = *(v0 + 96);
      *(v0 + 240) = v21;
      *(v0 + 256) = v20;
      v23 = *(v0 + 32);
      v24 = *(v0 + 16);
      v25 = v23;
      *(v0 + 144) = v24;
      *(v0 + 160) = v23;
      v27 = *(v0 + 48);
      v26 = *(v0 + 64);
      *(v0 + 176) = v27;
      *(v0 + 192) = v26;
      v28 = *(v0 + 128);
      *(v0 + 368) = v21;
      *(v0 + 384) = v28;
      *(v0 + 336) = v18;
      *(v0 + 352) = v22;
      *(v0 + 304) = v27;
      *(v0 + 320) = v19;
      *(v0 + 272) = v24;
      *(v0 + 288) = v25;
      v29 = swift_task_alloc();
      *(v0 + 984) = v29;
      *v29 = v0;
      v29[1] = ImageEncoder.encodeProcessedImages(_:);

      return ImageEmbeddingCache.cached(image:fallback:)(v0 + 272, &async function pointer to partial apply for closure #1 in ImageEncoder.encodeProcessedImages(_:), v14);
    }

    else
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_220940000, v32, v33, "ImageEmbeddingCache skipped, unsupported image class", v34, 2u);
        MEMORY[0x223D90A10](v34, -1, -1);
      }

      v35 = swift_task_alloc();
      *(v0 + 1008) = v35;
      *v35 = v0;
      v35[1] = ImageEncoder.encodeProcessedImages(_:);
      v36 = *(v0 + 920);

      return ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:)(v37, v0 + 760, v36);
    }
  }

  else
  {
    outlined destroy of ImageEncoder.Signposter(*(v0 + 936));

    v30 = *(v0 + 840);

    v31 = *(v0 + 8);

    return v31(v30);
  }
}

{
  v1 = *(v0 + 936);
  __swift_destroy_boxed_opaque_existential_1(v0 + 680);
  outlined destroy of ImageEncoder.Signposter(v1);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 936);
  __swift_destroy_boxed_opaque_existential_1(v0 + 680);
  outlined destroy of ImageEncoder.Signposter(v1);
  outlined destroy of ProcessedImage(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in ImageEncoder.encodeProcessedImages(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:)(a2, a3, a4);
}

uint64_t ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for OSSignpostID();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:), 0, 0);
}

uint64_t ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:)()
{
  v1 = *(v0 + 40);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  result = (*(v3 + 16))(v2, v3);
  *(v0 + 96) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    v5 = *(v0 + 56);
    *(v0 + 104) = *(v5 + 40);
    v6 = *(v5 + 48);
    *(v0 + 112) = v6;
    *(v0 + 120) = swift_getObjectType();
    *(v0 + 128) = *(v6 + 16);
    *(v0 + 136) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0x5D78000000000000;
    v7 = MEMORY[0x277D84F90];
    *(v0 + 144) = 0;
    *(v0 + 152) = v7;
    static OSSignpostID.exclusive.getter();
    v8 = OSSignposter.logHandle.getter();
    v9 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_220940000, v8, v9, v11, "tokenizeImageAttachment.tokenizeImageData", "", v10, 2u);
      MEMORY[0x223D90A10](v10, -1, -1);
    }

    v12 = *(v0 + 128);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    v17 = *(v0 + 48);
    v24 = *(v0 + 40);
    v18 = *(v0 + 32);

    (*(v16 + 16))(v13, v14, v15);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    *(v0 + 160) = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v16 + 8))(v14, v15);
    *(v0 + 16) = xmmword_220AEB7C0;
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = 0;
    v19[5] = v24;
    v20 = swift_task_alloc();
    *(v0 + 176) = v20;
    *(v20 + 16) = v0 + 16;
    v25 = (v12 + *v12);
    v21 = swift_task_alloc();
    *(v0 + 184) = v21;
    *v21 = v0;
    v21[1] = ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:);

    return v25();
  }

  else
  {

    v22 = *(v0 + 8);
    v23 = MEMORY[0x277D84F90];

    return v22(v23);
  }

  return result;
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:);
  }

  else
  {
    v2 = ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v28 = *(v0 + 24);
  v30 = *(v0 + 16);
  outlined copy of Data._Representation(v30, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 152);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, *(v0 + 152));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 96);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  *(v2 + 2) = v4 + 1;
  v10 = &v2[16 * v4];
  *(v10 + 4) = v30;
  *(v10 + 5) = v28;
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  $defer #1 <A>() in ImageEncoder.Signposter.profileTokenizeImageData<A>(imageIndex:tileIndex:closure:)(v8, v5, v9, v6, "tokenizeImageAttachment.tokenizeImageData");

  if (v6 + 1 == v7)
  {

    v11 = *(v0 + 8);

    return v11(v2);
  }

  else
  {
    v13 = *(v0 + 144) + 1;
    *(v0 + 144) = v13;
    *(v0 + 152) = v2;
    v31 = v13;
    static OSSignpostID.exclusive.getter();
    v14 = OSSignposter.logHandle.getter();
    v15 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_220940000, v14, v15, v17, "tokenizeImageAttachment.tokenizeImageData", "", v16, 2u);
      MEMORY[0x223D90A10](v16, -1, -1);
    }

    v18 = *(v0 + 128);
    v19 = *(v0 + 80);
    v20 = *(v0 + 88);
    v21 = *(v0 + 64);
    v22 = *(v0 + 72);
    v23 = *(v0 + 48);
    v29 = *(v0 + 40);
    v24 = *(v0 + 32);

    (*(v22 + 16))(v19, v20, v21);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    *(v0 + 160) = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v22 + 8))(v20, v21);
    *(v0 + 16) = xmmword_220AEB7C0;
    v25 = swift_task_alloc();
    *(v0 + 168) = v25;
    v25[2] = v23;
    v25[3] = v24;
    v25[4] = v31;
    v25[5] = v29;
    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *(v26 + 16) = v0 + 16;
    v32 = (v18 + *v18);
    v27 = swift_task_alloc();
    *(v0 + 184) = v27;
    *v27 = v0;
    v27[1] = ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:);

    return v32();
  }
}

{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[6];
  v4 = v0[4];
  outlined consume of Data._Representation(v0[2], v0[3]);
  $defer #1 <A>() in ImageEncoder.Signposter.profileTokenizeImageData<A>(imageIndex:tileIndex:closure:)(v3, v1, v4, v2, "tokenizeImageAttachment.tokenizeImageData");

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in closure #1 in ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v27 = a3;
  v30 = a6;
  v29 = a5;
  v25 = a1;
  v26 = a2;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  static OSSignpostID.exclusive.getter();
  v28 = a4;
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v16, v17, v19, "tokenizeImageAttachment.processedImageCopy", "", v18, 2u);
    MEMORY[0x223D90A10](v18, -1, -1);
  }

  (*(v10 + 16))(v13, v15, v9);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v20 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v15, v9);
  v21 = a7[3];
  v22 = a7[4];
  __swift_project_boxed_opaque_existential_1(a7, v21);
  v23 = v30;
  (*(v22 + 8))(v25, v26, v27, v30, v21, v22);
  $defer #1 <A>() in ImageEncoder.Signposter.profileTokenizeImageData<A>(imageIndex:tileIndex:closure:)(v28, v20, v29, v23, "tokenizeImageAttachment.processedImageCopy");
}

uint64_t closure #2 in closure #1 in ImageEncoder.encodeProcessedImage(imageIndex:image:signposter:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd);
  v7 = lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance <A> UnsafeBufferPointer<A>();
  v5[0] = a1;
  v5[1] = a2;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  Data._Representation.append(contentsOf:)();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void closure #1 in ImageEncoder.encode(image:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v3 = *(a1 + 64);
  v4 = Prompt.ImageAttachment.data.getter();
  v6 = v5;
  v7 = specialized OnDeviceImagePreprocessor.makeCGImageWithImageIO(data:newImageDimension:)(v4, v5);
  outlined consume of Data._Representation(v4, v6);
  if (!v1)
  {
    OnDeviceImagePreprocessor.processCGImage(_:useHighQualityImageTokenization:)(v7, v3);
    v9 = v8;

    specialized _arrayForceCast<A, B>(_:)(v9);
  }
}

void closure #1 in ImageEncoder.encode(imageSurface:)(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  OnDeviceImagePreprocessor.processImageAttachment(imageSurfaceAttachment:useHighQualityImageTokenization:)(a2, *(a1 + 64));
  if (!v2)
  {
    specialized _arrayForceCast<A, B>(_:)(v5);
  }
}

uint64_t closure #1 in ImageEncoder.encode(preprocessedImage:)(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Log.device);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_220940000, v2, v3, "Preprocessed images do not support high quality tokenization", v4, 2u);
      MEMORY[0x223D90A10](v4, -1, -1);
    }

    v5 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D71E18], v5);
    return swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference22ProcessedImageProtocol_pGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_220AE8A30;
    v9 = Prompt.PreprocessedImageAttachment.data.getter();
    v10 = Prompt.PreprocessedImageAttachment.shape.getter();
    result = v8;
    *(v8 + 56) = &type metadata for PreprocessedImage;
    *(v8 + 64) = &protocol witness table for PreprocessedImage;
    *(v8 + 40) = v10;
    *(v8 + 48) = 1;
    *(v8 + 32) = v9;
  }

  return result;
}

uint64_t $defer #1 <A>() in ImageEncoder.Signposter.profileProcessAttachment<A>(closure:)(uint64_t a1)
{
  v2 = type metadata accessor for OSSignpostError();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageEncoder.Signposter();
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ImageEncoder.Signposter(a1, v11);
  v12 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v26 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v24 = v5;

    checkForErrorAndConsumeState(state:)();

    v13 = v25;
    if ((*(v25 + 88))(v4, v2) == *MEMORY[0x277D85B00])
    {
      v14 = 0;
      v15 = 0;
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v13 + 8))(v4, v2);
      v16 = "tokenizeID=%{signpost.telemetry:string1,public}s";
      v15 = 2;
      v14 = 1;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = v15;
    *(v18 + 1) = v14;
    *(v18 + 2) = 2082;
    v20 = UUID.uuidString.getter();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v27);

    *(v18 + 4) = v22;
    outlined destroy of ImageEncoder.Signposter(v11);
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v12, v26, v23, "tokenizeImageAttachment.processImageAttachment", v16, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x223D90A10](v19, -1, -1);
    MEMORY[0x223D90A10](v18, -1, -1);

    return (*(v6 + 8))(v8, v24);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return outlined destroy of ImageEncoder.Signposter(v11);
  }
}

uint64_t $defer #1 <A>() in ImageEncoder.Signposter.profileTokenizeImageData<A>(imageIndex:tileIndex:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v6 = type metadata accessor for OSSignpostError();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ImageEncoder.Signposter();
  MEMORY[0x28223BE20](v33);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ImageEncoder.Signposter(a1, v14);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> (@out DeterministicLanguageModelProtocol, @error @owned Error))?(v15);
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> (@out DeterministicLanguageModelProtocol, @error @owned Error))?(v16);
  v17 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v18 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v31 = v9;

    checkForErrorAndConsumeState(state:)();

    v19 = v32;
    if ((*(v32 + 11))(v8, v6) == *MEMORY[0x277D85B00])
    {
      v20 = 0;
      v21 = 0;
      v32 = "[Error] Interval already ended";
    }

    else
    {
      (*(v19 + 1))(v8, v6);
      v32 = "tokenizeID=%{signpost.telemetry:string1,public}s imageIndex=%{signpost.telemetry:number1,public}ld tileIndex=%{signpost.telemetry:number2,public}ld";
      v21 = 2;
      v20 = 3;
    }

    v23 = v10;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = v21;
    *(v24 + 1) = v20;
    *(v24 + 2) = 2082;
    v26 = UUID.uuidString.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v37);

    *(v24 + 4) = v28;
    outlined destroy of ImageEncoder.Signposter(v14);
    *(v24 + 12) = 2050;
    *(v24 + 14) = v34;
    *(v24 + 22) = 2050;
    *(v24 + 24) = v35;
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v17, v18, v29, v36, v32, v24, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x223D90A10](v25, -1, -1);
    MEMORY[0x223D90A10](v24, -1, -1);

    return (*(v23 + 8))(v12, v31);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    return outlined destroy of ImageEncoder.Signposter(v14);
  }
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if ((*(a3 + 24) & 0x8000000000000000) == 0)
      {
LABEL_31:
        a4();
        return outlined destroy of _EncodedImage(a3);
      }

      goto LABEL_34;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    v9 = __DataStorage._bytes.getter();
    if (v9)
    {
      v10 = __DataStorage._offset.getter();
      if (__OFSUB__(v7, v10))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v9 += v7 - v10;
    }

    v11 = __OFSUB__(v8, v7);
    v12 = v8 - v7;
    if (v11)
    {
      goto LABEL_35;
    }

    v13 = MEMORY[0x223D8BBA0]();
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    if (!v9)
    {
      v14 = 0;
    }

    a1 = *(a3 + 24);
    if ((a1 | v14) < 0)
    {
      goto LABEL_36;
    }

    if (v9)
    {
      goto LABEL_31;
    }

    __break(1u);
  }

  else if (!v6)
  {
    if ((*(a3 + 24) & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_33;
  }

  v15 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
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
    goto LABEL_38;
  }

  v17 = __DataStorage._bytes.getter();
  if (v17)
  {
    v18 = __DataStorage._offset.getter();
    if (__OFSUB__(v15, v18))
    {
      goto LABEL_39;
    }

    v17 += v15 - v18;
  }

  v19 = MEMORY[0x223D8BBA0]();
  if (v19 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v19;
  }

  if (!v17)
  {
    v20 = 0;
  }

  result = *(a3 + 24);
  if ((result | v20) < 0)
  {
    goto LABEL_37;
  }

  if (v17)
  {
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t specialized EncodedImageArray.init(imageTokenIDGenerator:imageTokenizer:useHighQualityImageTokenization:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 152) = MEMORY[0x277D84F90];
  *(v3 + 16) = a1;
  v6 = *(a2 + 104);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(v3 + 24) = *(a2 + 56);
  *(v3 + 40) = v7;
  *(v3 + 56) = v8;
  *(v3 + 72) = v6;
  outlined init with copy of DeterministicLanguageModelProtocol(a2 + 16, v13);
  v9 = *(a2 + 128);
  *&v14[8] = *(a2 + 112);
  *&v14[24] = v9;
  *(v3 + 144) = a3;
  v10 = v13[1];
  *(v3 + 80) = v13[0];
  *(v3 + 96) = v10;
  v11 = *&v14[16];
  *(v3 + 112) = *v14;
  *(v3 + 128) = v11;
  swift_unknownObjectRetain();

  return v3;
}

uint64_t partial apply for closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:);

  return closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:)(a1, v4);
}

uint64_t partial apply for closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:);

  return closure #1 in EncodedImageArray.appendAndTokenize(preprocessedImage:configuration:)(a1, v4);
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageEncoder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageEncoder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t specialized EncodedImageArray.getEncodedImage(at:withHandler:)(int a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 152);
    if (*(v5 + 16) > a1)
    {
      v6 = v5 + 40 * a1;
      v8 = *(v6 + 32);
      v7 = *(v6 + 48);
      v12 = *(v6 + 64);
      v11[0] = v8;
      v11[1] = v7;
      v9 = v8;
      outlined init with copy of _EncodedImage(v11, v10);
      outlined init with copy of _EncodedImage(v11, v10);
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v9, *(&v9 + 1), v11, partial apply for thunk for @callee_unowned @convention(block) (@unowned _EncodedImage) -> ());
      return outlined destroy of _EncodedImage(v11);
    }
  }

  __break(1u);
  return result;
}

uint64_t partial apply for thunk for @callee_unowned @convention(block) (@unowned _EncodedImage) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4;
  return v6(v5, v8);
}

uint64_t type metadata accessor for ImageEncoder.Signposter()
{
  result = type metadata singleton initialization cache for ImageEncoder.Signposter;
  if (!type metadata singleton initialization cache for ImageEncoder.Signposter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized ImageEncoder.Signposter.profileProcessAttachment<A>(closure:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v19[1] = a3;
  v20 = a2;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  static OSSignpostID.exclusive.getter();
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v13 = swift_slowAlloc();
    v19[0] = a1;
    v14 = v13;
    *v13 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_220940000, v11, v12, v15, "tokenizeImageAttachment.processImageAttachment", "", v14, 2u);
    a1 = v19[0];
    MEMORY[0x223D90A10](v14, -1, -1);
  }

  (*(v5 + 16))(v8, v10, v4);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v16 = (*(v5 + 8))(v10, v4);
  v17 = v20(v16);
  $defer #1 <A>() in ImageEncoder.Signposter.profileProcessAttachment<A>(closure:)(a1);

  return v17;
}

uint64_t outlined destroy of ImageEncoder.Signposter(uint64_t a1)
{
  v2 = type metadata accessor for ImageEncoder.Signposter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ImageEncoder.Signposter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageEncoder.Signposter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ImageEncoder.Signposter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageEncoder.Signposter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ImageEncoder.encodeProcessedImages(_:)()
{
  v2 = *(type metadata accessor for ImageEncoder.Signposter() - 8);
  v3 = (*(v2 + 80) + 136) & ~*(v2 + 80);
  v4 = *(v0 + 88);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SamplingDecoder.decodeNextChunk();

  return closure #1 in ImageEncoder.encodeProcessedImages(_:)(v0 + 16, v4, v0 + 96, v0 + v3);
}

unint64_t lazy protocol witness table accessor for type UnsafeBufferPointer<UInt8> and conformance <A> UnsafeBufferPointer<A>()
{
  result = lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance <A> UnsafeBufferPointer<A>;
  if (!lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance <A> UnsafeBufferPointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSRys5UInt8VGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance <A> UnsafeBufferPointer<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenerationError and conformance GenerationError()
{
  result = lazy protocol witness table cache variable for type GenerationError and conformance GenerationError;
  if (!lazy protocol witness table cache variable for type GenerationError and conformance GenerationError)
  {
    type metadata accessor for GenerationError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerationError and conformance GenerationError);
  }

  return result;
}

uint64_t type metadata completion function for ImageEncoder.Signposter()
{
  result = type metadata accessor for OSSignposter();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:), 0, 0);
}

uint64_t E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v1[1] = *(v0 + 56);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000020, 0x8000000220AFBD50, partial apply for closure #1 in E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:), v1, v5);
}

{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v34 = a2;
  v35 = a5;
  v36 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v10 = type metadata accessor for CheckedContinuation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in closure #1 in E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:);
  *(v16 + 24) = v15;
  v41 = partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutablePointer<Float16>, @unowned Int, @guaranteed [NSNumber]) -> (@unowned Bool);
  v42 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutablePointer<Float16>, @unowned Int, @guaranteed [NSNumber]) -> (@unowned Bool);
  v40 = &block_descriptor;
  v32 = _Block_copy(&aBlock);

  (*(v11 + 16))(v14, a1, v10);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v33;
  (*(v11 + 32))(v19 + v17, v14, v10);
  v21 = v34;
  v20 = v35;
  *(v19 + v18) = v34;
  v22 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v36;
  *v22 = v20;
  v22[1] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for closure #2 in closure #1 in E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:);
  *(v24 + 24) = v19;
  v41 = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<UInt8>?, @guaranteed Error?) -> ();
  v42 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<UInt8>?, @guaranteed Error?) -> ();
  v40 = &block_descriptor_20;
  v25 = _Block_copy(&aBlock);
  v26 = v21;

  v27 = v26;
  v28 = v32;
  [v27 tokenizeImageDataWithCallback:v32 outputBlock:v25];
  _Block_release(v28);
  _Block_release(v25);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!(a3 >> 62))
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_14:
    v9 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16) == 4)
    {
LABEL_12:
      a4(a1, a2, v9);

      return 1;
    }

    goto LABEL_15;
  }

  v15 = a1;
  v16 = a2;
  v17 = __CocoaSet.count.getter();
  a2 = v16;
  v6 = v17;
  a1 = v15;
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  v20 = a2;
  v21 = a1;
  v22 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v19 = a4;
    v8 = 0;
    v9 = v22;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223D8EEA0](v8, a3);
      }

      else
      {
        v10 = *(a3 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 integerValue];

      v14 = *(v22 + 16);
      v13 = *(v22 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      ++v8;
      *(v22 + 16) = v14 + 1;
      *(v22 + 8 * v14 + 32) = v12;
    }

    while (v6 != v8);
    a2 = v20;
    a1 = v21;
    a4 = v19;
    if (v14 == 3)
    {
      goto LABEL_12;
    }

LABEL_15:
    _StringGuts.grow(_:)(43);

    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v18);

    MEMORY[0x223D8E780](0x746365707865202CLL, 0xEC00000034206465);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutablePointer<Float16>, @unowned Int, @guaranteed [NSNumber]) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for NSNumber);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v5(a2, a3, v6);

  return v7 & 1;
}

uint64_t closure #2 in closure #1 in E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v17 = v20 - v16;
  if (v13)
  {
    v20[0] = v13;
    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(throwing:)();
  }

  else if (v12)
  {
    v15(v12, [v14 _encodedImageByteCount]);
    (*(v8 + 16))(v11, v17, a7);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(returning:)();
    return (*(v8 + 8))(v17, a7);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<UInt8>?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v5(a2, a3);
}

uint64_t protocol witness for ImageEncoderRunner.withEncodedImage<A>(imageSetter:_:) in conformance E5RunnerImageTokenizerObjC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t partial apply for closure #2 in closure #1 in E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd);
  v6 = *(type metadata accessor for CheckedContinuation() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v8);
  v10 = (v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return closure #2 in closure #1 in E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:)(a1, a2, v2 + v7, v9, v11, v12, v5);
}

uint64_t specialized static ImageEncoderLoader.load(contentsOf:)(uint64_t a1)
{
  v1[3] = a1;
  v2 = type metadata accessor for URL();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static ImageEncoderLoader.load(contentsOf:), 0, 0);
}

{
  v4 = *v2;
  *(v4 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](specialized static ImageEncoderLoader.load(contentsOf:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1, &protocol witness table for ODIEImageEncoderRunner);
  }
}

uint64_t specialized static ImageEncoderLoader.load(contentsOf:)()
{
  v1 = URL.pathExtension.getter();
  v3 = v2;
  v4 = v1 == 25442 && v2 == 0xE200000000000000;
  if (v4 || (v5 = v1, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v5 == 1919511661 ? (v6 = v3 == 0xE400000000000000) : (v6 = 0), v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v5 == 0x6B6361707869646FLL && v3 == 0xEB00000000656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
    type metadata accessor for ODIEImageEncoderRunner();
    swift_allocObject();
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = specialized static ImageEncoderLoader.load(contentsOf:);
    v8 = v0[6];

    return ODIEImageEncoderRunner.init(contentsOf:)(v8);
  }

  else
  {
    if (v5 == 0x656C646E7562 && v3 == 0xE600000000000000)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        _StringGuts.grow(_:)(54);
        MEMORY[0x223D8E780](0xD000000000000034, 0x8000000220AFBE50);
        lazy protocol witness table accessor for type URL and conformance URL();
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223D8E780](v26);

        return _assertionFailure(_:_:file:line:flags:)();
      }
    }

    v11 = URL.path.getter();
    v13 = v12;
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo17TGIE5FunctionObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
      }

      if (__CocoaSet.count.getter())
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo29TGIE5AdapterConfigurationObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
      }
    }

    v14 = objc_allocWithZone(TGIE5ModelConfigurationObjC);
    v15 = MEMORY[0x223D8E6B0](v11, v13);

    type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC);
    lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC);
    isa = Set._bridgeToObjectiveC()().super.isa;

    type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
    lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC);
    v17 = Set._bridgeToObjectiveC()().super.isa;

    v18 = [v14 initWithModelType:1 modelBundlePath:v15 e5Functions:isa adapterConfigurations:v17];

    v19 = objc_allocWithZone(E5RunnerImageTokenizerObjC);
    v0[2] = 0;
    v20 = [v19 initWithModelConfiguration:v18 error:v0 + 2];
    v21 = v0[2];
    if (v20)
    {
      v22 = v21;

      v23 = v0[1];

      return v23(v20, &protocol witness table for E5RunnerImageTokenizerObjC);
    }

    else
    {
      v24 = v21;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v25 = v0[1];

      return v25();
    }
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2209D88B8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x2209D88C0);
  }

  _Unwind_Resume(a1);
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t one-time initialization function for speculativeDecode()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.speculativeDecode);
  __swift_project_value_buffer(v0, static Log.speculativeDecode);
  return Logger.init(subsystem:category:)();
}

uint64_t ODIEImageEncoderRunner.init(contentsOf:)(uint64_t a1)
{
  v3 = v1;
  v2[10] = a1;
  v2[11] = v3;
  v2[12] = *v3;
  v5 = type metadata accessor for ScalarType();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for Dimension();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v7 = type metadata accessor for ArrayDescriptor();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25DelegateFunctionArgumentsVSgMd);
  v2[25] = swift_task_alloc();
  v8 = type metadata accessor for DelegateFunctionArguments();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v9 = type metadata accessor for KernelRegistry();
  v2[29] = v9;
  v2[30] = *(v9 - 8);
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE18FunctionDescriptorVSgMd);
  v2[32] = swift_task_alloc();
  v10 = type metadata accessor for FunctionDescriptor();
  v2[33] = v10;
  v2[34] = *(v10 - 8);
  v2[35] = swift_task_alloc();
  v11 = type metadata accessor for ProgramDescriptor();
  v2[36] = v11;
  v2[37] = *(v11 - 8);
  v12 = swift_task_alloc();
  v2[38] = v12;
  v13 = swift_task_alloc();
  v2[39] = v13;
  *v13 = v2;
  v13[1] = ODIEImageEncoderRunner.init(contentsOf:);

  return static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:)(v12, a1, 0, 0xE000000000000000, 0x6E655F6567616D69, 0xED00007265646F63);
}

{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = ODIEImageEncoderRunner.init(contentsOf:);
  }

  else
  {
    v4 = ODIEImageEncoderRunner.init(contentsOf:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t ODIEImageEncoderRunner.init(contentsOf:)()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = ODIEImageEncoderRunner.init(contentsOf:);
  }

  else
  {
    v2 = ODIEImageEncoderRunner.init(contentsOf:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  ProgramDescriptor.functionDescriptor(for:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of [Int](v0[32], &_s4ODIE18FunctionDescriptorVSgMd);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    (*(v0[34] + 32))(v0[35], v0[32], v0[33]);
    KernelRegistry.init()();
    v5 = swift_task_alloc();
    v0[41] = v5;
    *v5 = v0;
    v5[1] = ODIEImageEncoderRunner.init(contentsOf:);
    v6 = v0[38];

    return specialized static ODIEUtils.loadStreamingDelegate(from:)(v6);
  }
}

{
  if (v0[42])
  {
    v1 = v0[26];
    v2 = v0[27];
    v3 = v0[25];
    type metadata accessor for MPSGraphDelegate();

    v4 = static MPSGraphDelegate.name.getter();
    MEMORY[0x223D8E2E0](v4);

    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      outlined destroy of [Int](v0[25], &_s4ODIE25DelegateFunctionArgumentsVSgMd);
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v5 = v0[43];
    (*(v0[27] + 32))(v0[28], v0[25], v0[26]);
    MPSGraphDelegate.registerKernels(for:with:into:)();
    if (v5)
    {
      v6 = v0[37];
      v81 = v0[38];
      v79 = v0[36];
      v7 = v0[34];
      v75 = v0[33];
      v77 = v0[35];
      v8 = v0[30];
      v73 = v0[31];
      v10 = v0[28];
      v9 = v0[29];
      v11 = v0[26];
      v12 = v0[27];
      v13 = v0[10];

      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 8))(v13, v14);
      (*(v12 + 8))(v10, v11);
      (*(v8 + 8))(v73, v9);
      (*(v7 + 8))(v77, v75);
      (*(v6 + 8))(v81, v79);
LABEL_10:
      swift_deallocPartialClassInstance();

      v28 = v0[1];

      return v28();
    }

    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  else
  {
    v5 = v0[43];
  }

  v15 = type metadata accessor for EmptyProfiler();
  v16 = MEMORY[0x277D36AD0];
  v0[5] = v15;
  v0[6] = v16;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  EmptyProfiler.init()();
  v17 = ProgramDescriptor.function(named:kernelRegistry:dependencies:profiler:)();
  if (v5)
  {
    v18 = v0[37];
    v82 = v0[38];
    v20 = v0[35];
    v19 = v0[36];
    v21 = v0[33];
    v22 = v0[34];
    v23 = v0[30];
    v24 = v0[31];
    v25 = v0[29];
    v26 = v0[10];

    v27 = type metadata accessor for URL();
    (*(*(v27 - 8) + 8))(v26, v27);
    (*(v23 + 8))(v24, v25);
    (*(v22 + 8))(v20, v21);
    (*(v18 + 8))(v82, v19);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    goto LABEL_10;
  }

  v30 = v17;
  result = __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (!v30)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  FunctionDescriptor.arrayDescriptor(of:)(0x6567616D69, 0xE500000000000000, v0[24]);
  if (ArrayDescriptor.rank.getter() != 4)
  {
    _StringGuts.grow(_:)(54);
    MEMORY[0x223D8E780](0xD000000000000028, 0x8000000220AFBFE0);
    v0[9] = ArrayDescriptor.rank.getter();
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v51);

    MEMORY[0x223D8E780](0x746365707865202CLL, 0xEC00000034206465);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  result = ArrayDescriptor.shape.getter();
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  v32 = v0[18];
  v31 = v0[19];
  v33 = v0[17];
  (*(v32 + 16))(v31, result + *(v32 + 72) + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v33);

  v34 = (*(v32 + 88))(v31, v33);
  v35 = v0[18];
  v36 = v0[19];
  v37 = v0[17];
  if (v34 != *MEMORY[0x277D36B40])
  {
    (*(v35 + 8))(v0[19], v37);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  (*(v35 + 96))(v0[19], v37);
  if (*v36 != 3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v39 = v0[15];
  v38 = v0[16];
  v40 = v0[13];
  v41 = v0[14];
  ArrayDescriptor.scalarType.getter();
  (*(v41 + 104))(v39, *MEMORY[0x277D36AB0], v40);
  v42 = static ScalarType.== infix(_:_:)();
  v43 = *(v41 + 8);
  v43(v39, v40);
  v43(v38, v40);
  if ((v42 & 1) == 0)
  {
    v52 = v0[16];
    v53 = v0[13];
    _StringGuts.grow(_:)(56);
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    MEMORY[0x223D8E780](0xD000000000000036, 0x8000000220AFC060);
    ArrayDescriptor.scalarType.getter();
    _print_unlocked<A, B>(_:_:)();
    v43(v52, v53);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v44 = ArrayDescriptor.alignments.getter();
  v45 = *(v44 + 16);
  v46 = 32;
  while (v45)
  {
    v47 = *(v44 + v46);
    v46 += 8;
    --v45;
    if (v47 != 1)
    {

      _StringGuts.grow(_:)(82);
      MEMORY[0x223D8E780](0xD000000000000050, 0x8000000220AFC0A0);
      ArrayDescriptor.alignments.getter();
      v48 = MEMORY[0x223D8E8D0]();
      v50 = v49;

      MEMORY[0x223D8E780](v48, v50);

      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  v55 = v0[23];
  v54 = v0[24];
  v56 = v0[20];
  v57 = v0[21];

  (*(v57 + 16))(v55, v54, v56);
  type metadata accessor for NDArray();
  swift_allocObject();
  v83 = NDArray.init(descriptor:)();
  FunctionDescriptor.arrayDescriptor(of:)(0xD000000000000010, 0x8000000220AFBF50, v0[22]);
  swift_allocObject();
  v58 = NDArray.init(descriptor:)();
  v59 = v0[37];
  v80 = v0[38];
  v76 = v0[36];
  v78 = v0[35];
  v60 = v0[34];
  v74 = v0[33];
  v61 = v0[30];
  v70 = v0[29];
  v71 = v0[31];
  v69 = v0[24];
  v62 = v0[20];
  v63 = v0[21];
  v65 = v0[10];
  v64 = v0[11];
  v72 = v58;

  v66 = type metadata accessor for URL();
  (*(*(v66 - 8) + 8))(v65, v66);
  (*(v63 + 8))(v69, v62);
  (*(v61 + 8))(v71, v70);
  (*(v60 + 8))(v78, v74);
  (*(v59 + 8))(v80, v76);
  v64[2] = v30;
  v64[3] = v83;
  v64[4] = v72;

  v67 = v0[1];
  v68 = v0[11];

  return v67(v68);
}

{
  v1 = v0[37];
  v13 = v0[38];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[30];
  v7 = v0[31];
  v8 = v0[29];
  v9 = v0[10];
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 8))(v9, v10);
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v1 + 8))(v13, v2);
  swift_deallocPartialClassInstance();

  v11 = v0[1];

  return v11();
}

{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v1, v2);
  swift_deallocPartialClassInstance();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  return MEMORY[0x2822009F8](ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:), 0, 0);
}

uint64_t ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:)()
{
  v1 = *(v0 + 192);
  v2 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v0 + 152);
  *(v3 + 32) = v1;
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  _s4ODIE7NDArrayC29withUnsafeMutableArrayPointer2of_q_xm_q_AA0defG0VyxGq0_YKXEtq0_YKs5ErrorR0_r1_lF();
  v4 = *(v0 + 192);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_4ODIE7NDArrayCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220AE8A30;
  *(inited + 32) = 0x6567616D69;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v2;

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_4ODIE7NDArrayCTt0g5Tf4g_n(inited);
  *(v0 + 208) = v6;
  swift_setDeallocating();
  outlined destroy of [Int](inited + 32, &_sSS_4ODIE7NDArrayCtMd);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_220AE8A30;
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x8000000220AFBF50;
  v8 = *(v4 + 32);
  *(v0 + 216) = v8;
  *(v7 + 48) = v8;

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_4ODIE7NDArrayCTt0g5Tf4g_n(v7);
  *(v0 + 224) = v9;
  swift_setDeallocating();
  outlined destroy of [Int](v7 + 32, &_sSS_4ODIE7NDArrayCtMd);
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:);

  return Function._run(inputs:outputs:)(v6, v9);
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:);
  }

  else
  {

    v2 = ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = swift_task_alloc();
  v3 = *(v0 + 168);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  _s4ODIE7NDArrayC25withUnsafeRawArrayPointeryxxAA0defG0Vq_YKXEq_YKs5ErrorR_r0_lF();

  v4 = *(v0 + 8);

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25UnsafeMutableArrayPointerVys7Float16VGMd);
  v8 = UnsafeMutableArrayPointer.contents.getter();
  v10 = v9;
  v11 = NDArray.shape.getter();
  a2(v8, v10, v11);

  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t closure #2 in ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = UnsafeRawArrayPointer.contents.getter();
  v12 = v11;
  v16 = a4;
  v17 = a2;
  v18 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  result = _sSW17withMemoryRebound2to_q0_xm_q0_SRyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(MEMORY[0x277D84B78], partial apply for closure #1 in closure #2 in ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:), v15, v10, v12, MEMORY[0x277D84B78], v13, a4, MEMORY[0x277D84950], &v19);
  if (v5)
  {
    *a5 = v19;
  }

  return result;
}

uint64_t _sSW17withMemoryRebound2to_q0_xm_q0_SRyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = (MEMORY[0x28223BE20])();
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v22 = v24 - v21;
  if (v17)
  {
    v23 = *(*(v19 - 8) + 72);
    if (v23)
    {
      if (v18 - v17 != 0x8000000000000000 || v23 != -1)
      {
        result = v20(v17, (v18 - v17) / v23, v15);
        if (!v10)
        {
          return result;
        }

        return (*(v12 + 32))(a10, v15, a7);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  result = v20(0, 0, v24 - v21);
  v15 = v22;
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

uint64_t ODIEImageEncoderRunner.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ImageEncoderRunner.withEncodedImage<A>(imageSetter:_:) in conformance ODIEImageEncoderRunner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for ImageEncoderRunner.embeddingsPerImageCount.getter in conformance ODIEImageEncoderRunner()
{
  result = NDArray.shape.getter();
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v1 = *(result + 40);

    return v1;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in ODIEImageEncoderRunner.withEncodedImage<A>(imageSetter:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 24))();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

void specialized ODIEImageEncoderRunner.moveToDynamicState()(const char *a1)
{
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.device);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220940000, oslog, v3, a1, v4, 2u);
    MEMORY[0x223D90A10](v4, -1, -1);
  }
}

uint64_t convertToInferenceError(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScESgMd);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices14InferenceErrorOSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for InferenceError();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0aB5ErrorOSgMd);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for TokenGenerationError();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v14, 0, 1, v15);
    (*(v16 + 32))(v18, v14, v15);
    TokenGenerationError.toInferenceError()();
    return (*(v16 + 8))(v18, v15);
  }

  else
  {
    v21(v14, 1, 1, v15);
    outlined destroy of [Int](v14, &_s15TokenGeneration0aB5ErrorOSgMd);
    v43 = a1;
    v23 = a1;
    v24 = swift_dynamicCast();
    v25 = *(v9 + 56);
    v26 = v9;
    if (v24)
    {
      v25(v7, 0, 1, v8);
      v27 = *(v9 + 32);
      v27(v11, v7, v8);
      return (v27)(v42, v11, v8);
    }

    else
    {
      v25(v7, 1, 1, v8);
      outlined destroy of [Int](v7, &_s20ModelManagerServices14InferenceErrorOSgMd);
      v43 = a1;
      v28 = a1;
      v29 = type metadata accessor for CancellationError();
      v30 = v41;
      v31 = swift_dynamicCast();
      v32 = *(*(v29 - 8) + 56);
      if (v31)
      {
        v32(v30, 0, 1, v29);
        outlined destroy of [Int](v30, &_sScESgMd);
        return (*(v9 + 104))(v42, *MEMORY[0x277D29DB8], v8);
      }

      else
      {
        v32(v30, 1, 1, v29);
        outlined destroy of [Int](v30, &_sScESgMd);
        v33 = _convertErrorToNSError(_:)();
        v34 = [v33 localizedDescription];
        v35 = v42;
        v36 = v34;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = v26;
        v38 = [v33 domain];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        [v33 code];
        v39 = v33;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:underlyingError:)();

        return (*(v37 + 104))(v35, *MEMORY[0x277D29DA8], v8);
      }
    }
  }
}

uint64_t _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[30] = v2;
  v3[31] = a2;
  v3[29] = a1;
  v4 = type metadata accessor for CompletePromptResponseElement();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKFTY0_, v2, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKFTY0_(uint64_t a1, uint64_t a2)
{
  v3 = v2[30];
  v4 = lazy protocol witness table accessor for type OnDeviceInferenceProviderStreamIterator and conformance OnDeviceInferenceProviderStreamIterator(&lazy protocol witness table cache variable for type OnDeviceInferenceProviderStreamIterator and conformance OnDeviceInferenceProviderStreamIterator, a2, type metadata accessor for OnDeviceInferenceProviderStreamIterator);
  swift_beginAccess();
  v5 = *(v3 + 136);
  v2[35] = v5;
  v6 = *(v3 + 144);
  v2[36] = v6;
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 112, v5);
  v2[37] = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v2[38] = v7;
  v2[39] = *(v7 - 8);
  v8 = swift_task_alloc();
  v2[40] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[41] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v2[42] = v10;
  v2[43] = *(v10 + 64);
  v11 = swift_task_alloc();
  v2[44] = v11;
  v12 = swift_task_alloc();
  v2[45] = v12;
  *v12 = v2;
  v12[1] = _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKFTQ1_;

  return MEMORY[0x282200310](v8, v3, v4, v11, v5, v6);
}

uint64_t _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKFTQ1_()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKFTY3_;
  }

  else
  {
    v5 = *(v2 + 240);
    swift_endAccess();

    v4 = _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKFTY2_;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKFTY2_()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 312) + 8))(v1, *(v0 + 304));
  }

  else
  {
    *(v0 + 200) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd);
    if (swift_dynamicCast())
    {
      goto LABEL_5;
    }
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_5:
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 16, v0 + 96, &_s15TokenGeneration21PromptCompletionEvent_pSgMd);
  if (*(v0 + 120))
  {
    v5 = *(v0 + 368);
    outlined init with take of RandomNumberGenerator((v0 + 96), v0 + 56);
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 56, v0 + 136);
    CompletePromptResponseElement.init(_:)();
    lazy protocol witness table accessor for type OnDeviceInferenceProviderStreamIterator and conformance OnDeviceInferenceProviderStreamIterator(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, 255, MEMORY[0x277D71D38]);
    v6 = static Serialization.encode<A>(_:)();
    if (v5)
    {

      return swift_unexpectedError();
    }

    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    MEMORY[0x223D8D930](v6);
    (*(v11 + 8))(v10, v12);
    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    v14 = type metadata accessor for ClientData();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v8 = *(v0 + 232);
    outlined destroy of [Int](v0 + 96, &_s15TokenGeneration21PromptCompletionEvent_pSgMd);
    v9 = type metadata accessor for ClientData();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  outlined destroy of [Int](v0 + 16, &_s15TokenGeneration21PromptCompletionEvent_pSgMd);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKFTY3_()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[42];
  v4 = swift_task_alloc();
  v5 = *(v3 + 32);
  v5(v4, v1, v2);
  swift_getAssociatedConformanceWitness();
  v6 = _getErrorEmbeddedNSError<A>(_:)();
  if (v6)
  {
    v7 = v6;
    (*(v0[42] + 8))(v4, v0[41]);
  }

  else
  {
    v8 = v0[41];
    v7 = swift_allocError();
    v5(v9, v4, v8);
  }

  v10 = v0[31];

  swift_endAccess();

  convertToInferenceError(_:)(v7, v10);
  type metadata accessor for InferenceError();
  lazy protocol witness table accessor for type OnDeviceInferenceProviderStreamIterator and conformance OnDeviceInferenceProviderStreamIterator(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
  swift_willThrowTypedImpl();

  v11 = v0[1];

  return v11();
}

uint64_t OnDeviceInferenceProviderStreamIterator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for OnDeviceInferenceProviderStream()
{
  result = type metadata singleton initialization cache for OnDeviceInferenceProviderStream;
  if (!type metadata singleton initialization cache for OnDeviceInferenceProviderStream)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for OnDeviceInferenceProviderStream()
{
  type metadata accessor for DataStream<PromptCompletionEvent>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for DataStream<PromptCompletionEvent>()
{
  if (!lazy cache variable for type metadata for DataStream<PromptCompletionEvent>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15TokenGeneration21PromptCompletionEvent_pMd);
    v0 = type metadata accessor for DataStream();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DataStream<PromptCompletionEvent>);
    }
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance OnDeviceInferenceProviderStreamIterator(uint64_t a1)
{
  v3 = type metadata accessor for InferenceError();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v1[4] = v4;
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance OnDeviceInferenceProviderStreamIterator;

  return _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKF(a1, v4);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance OnDeviceInferenceProviderStreamIterator()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = v2[2];
    lazy protocol witness table accessor for type OnDeviceInferenceProviderStreamIterator and conformance OnDeviceInferenceProviderStreamIterator(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    swift_allocError();
    (*(v5 + 32))(v7, v4, v6);
  }

  v8 = v3[1];

  return v8();
}

uint64_t _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorCScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  v7 = type metadata accessor for InferenceError();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[10] = v8;
  v5[11] = v10;

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorCScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_, v8, v10);
}

uint64_t _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorCScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorCScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_;
  v2 = v0[8];
  v3 = v0[3];

  return _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorC4next20ModelManagerServices10ClientDataVSgyYaAE0C5ErrorOYKF(v3, v2);
}

uint64_t _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorCScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[7];
    v3 = v2[8];
    v5 = v2[6];
    v2[13] = lazy protocol witness table accessor for type OnDeviceInferenceProviderStreamIterator and conformance OnDeviceInferenceProviderStreamIterator(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0]);
    v2[14] = swift_allocError();
    v6 = *(v4 + 32);
    v2[15] = v6;
    v2[16] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v6(v7, v3, v5);
    v8 = v2[10];
    v9 = v2[11];
    v10 = _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorCScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY3_;
  }

  else
  {
    v8 = v2[10];
    v9 = v2[11];
    v10 = _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorCScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorCScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s24TokenGenerationInference08OnDeviceC22ProviderStreamIteratorCScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY3_()
{
  v1 = v0[15];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v0[2] = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1(v4, v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance OnDeviceInferenceProviderStream@<X0>(uint64_t **a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference10DataStreamV13AsyncIteratorVy0aB021PromptCompletionEvent_p_GMd);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMd);
  MEMORY[0x223D8EA60](v9);
  v10 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference10DataStreamVy0aB021PromptCompletionEvent_pGMd) + 28));
  v11 = *v10;
  v12 = v10[1];
  v13 = &v8[*(v3 + 28)];
  *v13 = v11;
  *(v13 + 1) = v12;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8, v6, &_s24TokenGenerationInference10DataStreamV13AsyncIteratorVy0aB021PromptCompletionEvent_p_GMd);
  type metadata accessor for OnDeviceInferenceProviderStreamIterator();
  v14 = swift_allocObject();

  swift_defaultActor_initialize();
  v14[17] = v3;
  v14[18] = lazy protocol witness table accessor for type DataStream<PromptCompletionEvent>.AsyncIterator and conformance DataStream<A>.AsyncIterator();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14 + 14);
  outlined init with take of DataStream<PromptCompletionEvent>.AsyncIterator(v6, boxed_opaque_existential_1);
  outlined destroy of OnDeviceInferenceProviderStream(v1);
  result = outlined destroy of [Int](v8, &_s24TokenGenerationInference10DataStreamV13AsyncIteratorVy0aB021PromptCompletionEvent_p_GMd);
  *a1 = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type DataStream<PromptCompletionEvent>.AsyncIterator and conformance DataStream<A>.AsyncIterator()
{
  result = lazy protocol witness table cache variable for type DataStream<PromptCompletionEvent>.AsyncIterator and conformance DataStream<A>.AsyncIterator;
  if (!lazy protocol witness table cache variable for type DataStream<PromptCompletionEvent>.AsyncIterator and conformance DataStream<A>.AsyncIterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s24TokenGenerationInference10DataStreamV13AsyncIteratorVy0aB021PromptCompletionEvent_p_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataStream<PromptCompletionEvent>.AsyncIterator and conformance DataStream<A>.AsyncIterator);
  }

  return result;
}

uint64_t outlined init with take of DataStream<PromptCompletionEvent>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference10DataStreamV13AsyncIteratorVy0aB021PromptCompletionEvent_p_GMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of OnDeviceInferenceProviderStream(uint64_t a1)
{
  v2 = type metadata accessor for OnDeviceInferenceProviderStream();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type OnDeviceInferenceProviderStreamIterator and conformance OnDeviceInferenceProviderStreamIterator(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t static TelemetryHelpers.emitFileResidentInfo(assetIdentifier:residentPages:totalPages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-v9];
  type metadata accessor for EventReporter();
  swift_allocObject();
  EventReporter.init()();
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  EventReporter.send(eventBuiltWithPresetsAnd:)();

  v11 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  return outlined destroy of GenerativeFunctionsInstrumentationEvent?(v10);
}

id TelemetryHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TelemetryHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t one-time initialization function for assetBundlesInUse()
{
  v1 = 0;
  result = TokenMask.subscript.read(&v1);
  static AppAssetManager.assetBundlesInUse = v1;
  qword_27CF6DD88 = MEMORY[0x277D84F98];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppAssetGarbageCollector.cleanUp()()
{
  v93[1] = *MEMORY[0x277D85DE8];
  v69 = type metadata accessor for Date();
  v0 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v73 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  v74 = *(v81 - 8);
  v2 = MEMORY[0x28223BE20](v81);
  v70 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v72 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVSgMd);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = &v67 - v6;
  v91 = type metadata accessor for URL();
  v83 = *(v91 - 8);
  v7 = MEMORY[0x28223BE20](v91);
  v85 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v88 = &v67 - v10;
  MEMORY[0x28223BE20](v9);
  v92 = &v67 - v11;
  v75 = objc_opt_self();
  v12 = [v75 defaultManager];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v93[0] = 0;
  v16 = [v12 contentsOfDirectoryAtURL:v14 includingPropertiesForKeys:0 options:0 error:v93];

  v17 = v93[0];
  if (!v16)
  {
    v62 = v93[0];
    v90 = _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v82 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = v82;
  v79 = *(v82 + 16);
  if (!v79)
  {
    v84 = 0;
LABEL_35:

    if (one-time initialization token for device != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  v20 = type metadata accessor for AppAssetGarbageCollector(0);
  v84 = 0;
  v21 = 0;
  v22 = *(v83 + 80);
  v68 = v20;
  v77 = *(v20 + 24);
  v78 = v19 + ((v22 + 32) & ~v22);
  v86 = v83 + 16;
  v76 = (v74 + 56);
  v89 = (v83 + 8);
  v67 = (v0 + 8);
  *&v23 = 136315138;
  v71 = v23;
  while (v21 < *(v19 + 16))
  {
    v24 = *(v83 + 16);
    v24(v92, v78 + *(v83 + 72) * v21, v91);
    v25 = URL.lastPathComponent.getter();
    v27 = *(v87 + v77);
    if (*(v27 + 16))
    {
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
      v30 = v29;

      if (v30)
      {
        v31 = v74;
        v32 = *(v27 + 56) + *(v74 + 72) * v28;
        v33 = v80;
        outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(v32, v80);
        (*(v31 + 56))(v33, 0, 1, v81);
        outlined destroy of [Int](v33, &_s24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVSgMd);
        goto LABEL_26;
      }
    }

    else
    {
    }

    v34 = v80;
    (*v76)(v80, 1, 1, v81);
    outlined destroy of [Int](v34, &_s24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVSgMd);
    URL.appendingPathComponent(_:)();
    v35 = [v75 defaultManager];
    v36 = URL.path.getter();
    v37 = MEMORY[0x223D8E6B0](v36);

    v38 = [v35 fileExistsAtPath_];

    if (v38)
    {
      goto LABEL_16;
    }

    if (URL.pathExtension.getter() == 0x736E657478656D66 && v39 == 0xEB000000006E6F69)
    {

LABEL_16:
      v40 = *v89;
      (*v89)(v88, v91);
LABEL_17:
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Log.device);
      v24(v85, v92, v91);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v93[0] = v45;
        *v44 = v71;
        lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v40(v85, v91);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v93);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_220940000, v42, v43, "AppAssetGarbageCollector: looks like old copied adapter directory, removing %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x223D90A10](v45, -1, -1);
        MEMORY[0x223D90A10](v44, -1, -1);
      }

      else
      {

        v40(v85, v91);
      }

      v50 = __OFADD__(v84++, 1);
      if (v50)
      {
        goto LABEL_42;
      }

      v51 = v90;
      AppAssetGarbageCollector.removeEntry(url:)(v92);
      v90 = v51;
      if (v51)
      {
        v40(v92, v91);

        return;
      }

      v40(v92, v91);
LABEL_5:
      v19 = v82;
      goto LABEL_6;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v40 = *v89;
    (*v89)(v88, v91);
    if (v52)
    {
      goto LABEL_17;
    }

LABEL_26:
    v53 = URL.lastPathComponent.getter();
    if (!*(v27 + 16))
    {
      (*v89)(v92, v91);

      goto LABEL_5;
    }

    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54);
    v57 = v56;

    if ((v57 & 1) == 0)
    {
      (*v89)(v92, v91);
      goto LABEL_5;
    }

    v58 = v70;
    outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(*(v27 + 56) + *(v74 + 72) * v55, v70);
    outlined init with take of AppAssetGarbageCollector(v58, v72, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v60 = v59;
    (*v67)(v73, v69);
    if (*(v87 + *(v68 + 28)) < v60)
    {
      v50 = __OFADD__(v84++, 1);
      if (v50)
      {
        goto LABEL_43;
      }

      v61 = v90;
      AppAssetGarbageCollector.removeEntry(url:)(v92);
      v90 = v61;
      if (v61)
      {

        outlined destroy of AppAssetGarbageCollector(v72, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
        (*v89)(v92, v91);
        return;
      }
    }

    v19 = v82;
    outlined destroy of AppAssetGarbageCollector(v72, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
    (*v89)(v92, v91);
LABEL_6:
    if (v79 == ++v21)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_36:
  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Log.device);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    *(v66 + 4) = v84;
    _os_log_impl(&dword_220940000, v64, v65, "AppAssetGarbageCollector: removed %ld entries", v66, 0xCu);
    MEMORY[0x223D90A10](v66, -1, -1);
  }
}