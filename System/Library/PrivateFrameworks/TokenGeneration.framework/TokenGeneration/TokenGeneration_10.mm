void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingG0VTt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope(0);
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v11 = 0;
    v12 = *(a1 + 64);
    v38 = a1 + 64;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v39 = v16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
LABEL_14:
      v20 = v17 | (v11 << 6);
      v21 = (*(a1 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(a1 + 56) + 8 * v20);

      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
      v27 = v26;

      if ((v27 & 1) == 0 || (v28 = *(*(a2 + 56) + 8 * v25), v29 = *(v28 + 16), v29 != *(v24 + 16)))
      {
LABEL_26:

        return;
      }

      if (v29 && v28 != v24)
      {
        v36 = a1;
        v37 = a2;
        v30 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v41 = v28 + v30;
        v31 = v24 + v30;

        v32 = 0;
        while (v32 < *(v28 + 16))
        {
          v33 = *(v42 + 72) * v32;
          outlined init with copy of PromptCompletion.Content(v41 + v33, v10, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
          if (v32 >= *(v24 + 16))
          {
            goto LABEL_30;
          }

          outlined init with copy of PromptCompletion.Content(v31 + v33, v7, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
          v34 = specialized static PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.== infix(_:_:)(v10, v7);
          outlined destroy of PromptCompletion.FileContent(v7, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
          outlined destroy of PromptCompletion.FileContent(v10, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
          if ((v34 & 1) == 0)
          {

            goto LABEL_26;
          }

          if (v29 == ++v32)
          {

            a1 = v36;
            a2 = v37;
            goto LABEL_6;
          }
        }

        goto LABEL_29;
      }

LABEL_6:

      v16 = v39;
      v15 = v40;
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
        return;
      }

      v19 = *(v38 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
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
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int PromptCompletion.Moderation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.Moderation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.Moderation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t static PromptCompletion.collecting<A>(events:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[18] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v4[19] = v8;
  v9 = *(v8 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v10 = *(a3 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v4[24] = v12;
  v13 = *(v12 - 8);
  v4[25] = v13;
  v14 = *(v13 + 64) + 15;
  v4[26] = swift_task_alloc();
  v15 = type metadata accessor for PromptCompletion.Aggregator(0);
  v4[27] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v17 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](static PromptCompletion.collecting<A>(events:), 0, 0);
}

uint64_t static PromptCompletion.collecting<A>(events:)()
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v25 = *(v0 + 208);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = MEMORY[0x1E69E7CC0];
  *v1 = MEMORY[0x1E69E7CC0];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *(v1 + 3) = -1;
  *(v1 + 4) = -1;
  *(v1 + 5) = 0;
  *(v1 + 6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(v8);
  v9 = *(v2 + 32);
  *(v0 + 280) = v9;
  v10 = type metadata accessor for Prompt.Rendering();
  *(v0 + 232) = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  *(v0 + 240) = v12;
  *(v0 + 248) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(&v1[v9], 1, 1, v10);
  v13 = *(v2 + 36);
  *(v0 + 284) = v13;
  *&v1[v13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v8);
  (*(v4 + 16))(v3, v7, v6);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v14 = *(v0 + 192);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 256) = AssociatedConformanceWitness;
  v18 = *(MEMORY[0x1E69E85B0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 264) = v19;
  *v19 = v0;
  v19[1] = static PromptCompletion.collecting<A>(events:);
  v20 = *(v0 + 208);
  v21 = *(v0 + 192);
  v22 = *(v0 + 168);
  v23 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0, v22, v21, AssociatedConformanceWitness);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = static PromptCompletion.collecting<A>(events:);
  }

  else
  {
    v3 = static PromptCompletion.collecting<A>(events:);
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v56 = *MEMORY[0x1E69E9840];
  if (*(v0 + 40))
  {
    v1 = *(v0 + 224);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 16), v0 + 56);
    PromptCompletion.Aggregator.receive(event:)(v0 + 56);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v2 = *(v0 + 192);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 256) = AssociatedConformanceWitness;
    v6 = *(MEMORY[0x1E69E85B0] + 4);
    v7 = swift_task_alloc();
    *(v0 + 264) = v7;
    *v7 = v0;
    v7[1] = static PromptCompletion.collecting<A>(events:);
    v8 = *(v0 + 208);
    v9 = *(v0 + 192);
    v10 = *(v0 + 168);
    v11 = *MEMORY[0x1E69E9840];
    v12 = v0 + 16;
    v13 = 0;
    v14 = 0;
    v15 = AssociatedConformanceWitness;

    return MEMORY[0x1EEE6D8D0](v12, v13, v14, v10, v9, v15);
  }

  v16 = *(v0 + 272);
  v17 = *(v0 + 284);
  v18 = *(v0 + 280);
  v19 = *(v0 + 224);
  v20 = *(v0 + 136);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v21 = *v19;
  v51 = v19[1];
  v22 = v19[2];
  v23 = v19[6];
  v53 = v19[5];

  v54 = v21;

  v55 = v22;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(v23);
  v52 = v24;

  v49 = v19[4];
  v50 = v19[3];
  v25 = *(v19 + v17);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19 + v18, v20, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v26 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 96) = 0;
  v28 = [v26 dataWithJSONObject:isa options:0 error:v0 + 96];

  v29 = *(v0 + 96);
  if (!v28)
  {
    v44 = v29;

    _convertNSErrorToError(_:)();

    v12 = swift_willThrow();
    __break(1u);
    return MEMORY[0x1EEE6D8D0](v12, v13, v14, v10, v9, v15);
  }

  v31 = *(v0 + 240);
  v30 = *(v0 + 248);
  v33 = *(v0 + 224);
  v32 = *(v0 + 232);
  v45 = *(v0 + 208);
  v46 = *(v0 + 184);
  v47 = *(v0 + 168);
  v48 = *(v0 + 160);
  v34 = *(v0 + 136);
  v35 = *(v0 + 104);
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  *(v35 + 3) = 0;
  v39 = *(type metadata accessor for PromptCompletion(0) + 36);
  v31(&v35[v39], 1, 1, v32);
  *v35 = v54;
  *(v35 + 1) = v51;
  *(v35 + 2) = v55;
  v40 = *(v35 + 3);

  *(v35 + 3) = v53;
  *(v35 + 4) = v52;
  *(v35 + 5) = v50;
  *(v35 + 6) = v49;
  *(v35 + 7) = v36;
  *(v35 + 8) = v38;
  outlined assign with take of Prompt.Rendering?(v34, &v35[v39]);
  outlined destroy of PromptCompletion.FileContent(v33, type metadata accessor for PromptCompletion.Aggregator);

  v41 = *(v0 + 8);
  v42 = *MEMORY[0x1E69E9840];

  return v41();
}

{
  v16 = *MEMORY[0x1E69E9840];
  v1 = v0[32];
  v2 = v0[24];
  v3 = *(v0[19] + 32);
  v3(v0[20], v0[21], v0[18]);
  swift_getAssociatedConformanceWitness();
  v4 = _getErrorEmbeddedNSError<A>(_:)();
  v5 = v0[20];
  if (v4)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  else
  {
    v6 = v0[18];
    swift_allocError();
    v3(v7, v5, v6);
  }

  v8 = v0[28];
  v9 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v12 = v0[17];
  (*(v0[25] + 8))(v0[26], v0[24]);
  outlined destroy of PromptCompletion.FileContent(v8, type metadata accessor for PromptCompletion.Aggregator);

  v13 = v0[1];
  v14 = *MEMORY[0x1E69E9840];

  return v13();
}

unint64_t PromptCompletion.Aggregator.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = -1;
  *(a1 + 4) = -1;
  *(a1 + 5) = 0;
  *(a1 + 6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVTt0g5Tf4g_n(v2);
  v3 = type metadata accessor for PromptCompletion.Aggregator(0);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for Prompt.Rendering();
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = *(v3 + 36);
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v2);
  *&a1[v6] = result;
  return result;
}

uint64_t PromptCompletion.Aggregator.receive(event:)(uint64_t a1)
{
  v228[5] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for PromptCompletionEventCandidateFileGeneration(0);
  LOBYTE(v4) = v3;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v207 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v206 - v8;
  v10 = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  *&v208 = &v206 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v206 - v14;
  v16 = type metadata accessor for PromptCompletionEventRenderedPrompt(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v206 - v21;
  v206 = a1;
  outlined init with copy of PromptCompletionEvent(a1, v228);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if (swift_dynamicCast())
  {
    v208 = v223;
    v24 = v224;
    v25 = *v1;
    v26 = *(v1 + 2);

    *v1 = v208;
    *(v1 + 2) = v24;
LABEL_123:
    result = __swift_destroy_boxed_opaque_existential_0(v228);
    v196 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (swift_dynamicCast())
  {
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v22, v19, type metadata accessor for PromptCompletionEventRenderedPrompt);
    v27 = *(type metadata accessor for PromptCompletion.Aggregator(0) + 32);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v1[v27], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v28 = *(v16 + 20);
    v29 = type metadata accessor for Prompt.Rendering();
    v30 = *(v29 - 8);
    (*(v30 + 16))(&v1[v27], &v19[v28], v29);
    outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for PromptCompletionEventRenderedPrompt);
    (*(v30 + 56))(&v1[v27], 0, 1, v29);
    goto LABEL_123;
  }

  if (swift_dynamicCast())
  {
    v31 = v223;

    *(v1 + 24) = v31;
    goto LABEL_123;
  }

  if (swift_dynamicCast())
  {
    v32 = v223;

    v33 = *(v1 + 5);

    *(v1 + 5) = v32;
    goto LABEL_123;
  }

  if (swift_dynamicCast())
  {
    v34 = *(&v222 + 1);
    v35 = *(&v223 + 1);
    v22 = v223;
    v23 = v224;

    v36 = *(v1 + 6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v1;
    v38 = *(v1 + 6);
    *&v216 = v38;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v35);
    v41 = v38[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (!v43)
    {
      LOBYTE(v4) = v40;
      if (v38[3] < v44)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
        v38 = v216;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v35);
        if ((v4 & 1) != (v45 & 1))
        {
          goto LABEL_135;
        }

LABEL_25:
        *(v10 + 48) = v38;
        if (v4)
        {
LABEL_26:
          v60 = v39;

          v61 = 56 * v60;
LABEL_89:
          v158 = v38[7] + v61;
          v159 = *(v158 + 16);
          *(v158 + 16) = v23;

          goto LABEL_123;
        }

        goto LABEL_87;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_25;
      }

LABEL_86:
      isUniquelyReferenced_nonNull_native = v39;
      specialized _NativeDictionary.copy()();
      v39 = isUniquelyReferenced_nonNull_native;
      v38 = v216;
      *(v10 + 48) = v216;
      if (v4)
      {
        goto LABEL_26;
      }

LABEL_87:
      v38[(v39 >> 6) + 8] |= 1 << v39;
      v153 = (v38[6] + 16 * v39);
      *v153 = v22;
      v153[1] = v35;
      v61 = 56 * v39;
      v154 = v38[7] + 56 * v39;
      v155 = MEMORY[0x1E69E7CC8];
      *v154 = MEMORY[0x1E69E7CC8];
      *(v154 + 8) = v155;
      *(v154 + 16) = 0;
      *(v154 + 24) = 0;
      *(v154 + 32) = 3;
      *(v154 + 40) = v155;
      *(v154 + 48) = 0;
      v156 = v38[2];
      v43 = __OFADD__(v156, 1);
      v157 = v156 + 1;
      if (!v43)
      {
        v38[2] = v157;
        goto LABEL_89;
      }

      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      v4 = v39;
      specialized _NativeDictionary.copy()();
      v39 = v4;
      v47 = v209;
      *(isUniquelyReferenced_nonNull_native + 48) = v209;
      if ((v22 & 1) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (swift_dynamicCast())
  {
    v218 = v224;
    v219 = v225;
    *&v220 = v226;
    v216 = v222;
    v217 = v223;
    v34 = *(&v223 + 1);
    v35 = v223;
    v212 = v224;
    v213 = v225;
    *&v214 = v226;
    v210 = v222;
    v211 = v223;

    v46 = *(v1 + 6);
    LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
    isUniquelyReferenced_nonNull_native = v1;
    v47 = *(v1 + 6);
    v209 = v47;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
    v49 = v47[2];
    v50 = (v48 & 1) == 0;
    v43 = __OFADD__(v49, v50);
    v51 = v49 + v50;
    if (!v43)
    {
      LOBYTE(v22) = v48;
      if (v47[3] >= v51)
      {
        if ((v4 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, v4);
        v47 = v209;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
        if ((v22 & 1) != (v52 & 1))
        {
          goto LABEL_135;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 48) = v47;
      if ((v22 & 1) == 0)
      {
LABEL_93:
        v47[(v39 >> 6) + 8] |= 1 << v39;
        v160 = (v47[6] + 16 * v39);
        *v160 = v35;
        v160[1] = v34;
        v70 = 56 * v39;
        v161 = v47[7] + 56 * v39;
        v162 = MEMORY[0x1E69E7CC8];
        *v161 = MEMORY[0x1E69E7CC8];
        *(v161 + 8) = v162;
        *(v161 + 16) = 0;
        *(v161 + 24) = 0;
        *(v161 + 32) = 3;
        *(v161 + 40) = v162;
        *(v161 + 48) = 0;
        v163 = v47[2];
        v43 = __OFADD__(v163, 1);
        v164 = v163 + 1;
        if (!v43)
        {
          v47[2] = v164;
          goto LABEL_95;
        }

        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        v22 = v39;
        specialized _NativeDictionary.copy()();
        v39 = v22;
        v54 = v222;
        *(isUniquelyReferenced_nonNull_native + 48) = v222;
        if ((v4 & 1) == 0)
        {
          goto LABEL_99;
        }

        goto LABEL_42;
      }

LABEL_34:
      v69 = v39;

      v70 = 56 * v69;
LABEL_95:
      v165 = v47[7] + v70;
      PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(&v210);
      outlined destroy of PromptCompletionEventCandidateTextDelta(&v216);
      goto LABEL_123;
    }

    goto LABEL_85;
  }

  if (swift_dynamicCast())
  {
    v23 = v208;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v15, v208, type metadata accessor for PromptCompletionEventCandidateAnnotation);
    v35 = *(v23 + 16);
    v34 = *(v23 + 24);

    v53 = *(v1 + 6);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    isUniquelyReferenced_nonNull_native = v1;
    v54 = *(v1 + 6);
    *&v222 = v54;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
    v56 = v54[2];
    v57 = (v55 & 1) == 0;
    v43 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (!v43)
    {
      LOBYTE(v4) = v55;
      if (v54[3] >= v58)
      {
        if ((v22 & 1) == 0)
        {
          goto LABEL_98;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v58, v22);
        v54 = v222;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
        if ((v4 & 1) != (v59 & 1))
        {
          goto LABEL_135;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 48) = v54;
      if ((v4 & 1) == 0)
      {
LABEL_99:
        v54[(v39 >> 6) + 8] |= 1 << v39;
        v166 = (v54[6] + 16 * v39);
        *v166 = v35;
        v166[1] = v34;
        v80 = 56 * v39;
        v167 = v54[7] + 56 * v39;
        v168 = MEMORY[0x1E69E7CC8];
        *v167 = MEMORY[0x1E69E7CC8];
        *(v167 + 8) = v168;
        *(v167 + 16) = 0;
        *(v167 + 24) = 0;
        *(v167 + 32) = 3;
        *(v167 + 40) = v168;
        *(v167 + 48) = 0;
        v169 = v54[2];
        v43 = __OFADD__(v169, 1);
        v170 = v169 + 1;
        if (!v43)
        {
          v54[2] = v170;
          goto LABEL_101;
        }

        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        v4 = v39;
        specialized _NativeDictionary.copy()();
        v39 = v4;
        v63 = v209;
        *(isUniquelyReferenced_nonNull_native + 48) = v209;
        if ((v22 & 1) == 0)
        {
          goto LABEL_106;
        }

        goto LABEL_50;
      }

LABEL_42:
      v79 = v39;

      v80 = 56 * v79;
LABEL_101:
      v171 = v54[7] + v80;
      PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(v23);
      v172 = type metadata accessor for PromptCompletionEventCandidateAnnotation;
LABEL_102:
      outlined destroy of PromptCompletion.FileContent(v23, v172);
      goto LABEL_123;
    }

    goto LABEL_91;
  }

  if (swift_dynamicCast())
  {
    v218 = v224;
    v219 = v225;
    v220 = v226;
    v221 = v227;
    v216 = v222;
    v217 = v223;
    v34 = *(&v223 + 1);
    v35 = v223;
    v212 = v224;
    v213 = v225;
    v214 = v226;
    v215 = v227;
    v210 = v222;
    v211 = v223;

    v62 = *(v1 + 6);
    v4 = swift_isUniquelyReferenced_nonNull_native();
    isUniquelyReferenced_nonNull_native = v1;
    v63 = *(v1 + 6);
    v209 = v63;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
    v65 = v63[2];
    v66 = (v64 & 1) == 0;
    v43 = __OFADD__(v65, v66);
    v67 = v65 + v66;
    if (!v43)
    {
      v22 = v64;
      if (v63[3] >= v67)
      {
        if ((v4 & 1) == 0)
        {
          goto LABEL_105;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, v4);
        v63 = v209;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
        if ((v22 & 1) != (v68 & 1))
        {
          goto LABEL_135;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 48) = v63;
      if ((v22 & 1) == 0)
      {
LABEL_106:
        v63[(v39 >> 6) + 8] |= 1 << v39;
        v173 = (v63[6] + 16 * v39);
        *v173 = v35;
        v173[1] = v34;
        v90 = 56 * v39;
        v174 = v63[7] + 56 * v39;
        v175 = MEMORY[0x1E69E7CC8];
        *v174 = MEMORY[0x1E69E7CC8];
        *(v174 + 8) = v175;
        *(v174 + 16) = 0;
        *(v174 + 24) = 0;
        *(v174 + 32) = 3;
        *(v174 + 40) = v175;
        *(v174 + 48) = 0;
        v176 = v63[2];
        v43 = __OFADD__(v176, 1);
        v177 = v176 + 1;
        if (!v43)
        {
          v63[2] = v177;
          goto LABEL_108;
        }

        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        v179 = v39;
        specialized _NativeDictionary.copy()();
        v39 = v179;
        v73 = v210;
        *(v15 + 6) = v210;
        if ((v23 & 1) == 0)
        {
          goto LABEL_112;
        }

        goto LABEL_58;
      }

LABEL_50:
      v89 = v39;

      v90 = 56 * v89;
LABEL_108:
      v178 = v63[7] + v90;
      PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(&v210);
      outlined destroy of PromptCompletionEventCandidateToolCallDelta(&v216);
      goto LABEL_123;
    }

    goto LABEL_97;
  }

  if (swift_dynamicCast())
  {
    v34 = *(&v222 + 1);
    v4 = *(&v223 + 1);
    isUniquelyReferenced_nonNull_native = v223;
    v35 = *(&v224 + 1);
    v22 = v225;
    v216 = v222;
    v217 = v223;
    v218 = v224;
    *&v219 = v225;

    v71 = *(v1 + 6);
    v72 = swift_isUniquelyReferenced_nonNull_native();
    v15 = v1;
    v73 = *(v1 + 6);
    *&v210 = v73;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v4);
    v75 = v73[2];
    v76 = (v74 & 1) == 0;
    v43 = __OFADD__(v75, v76);
    v77 = v75 + v76;
    if (!v43)
    {
      v23 = v74;
      if (v73[3] >= v77)
      {
        if ((v72 & 1) == 0)
        {
          goto LABEL_111;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v77, v72);
        v73 = v210;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v4);
        if ((v23 & 1) != (v78 & 1))
        {
          goto LABEL_135;
        }
      }

      *(v15 + 6) = v73;
      if ((v23 & 1) == 0)
      {
LABEL_112:
        v73[(v39 >> 6) + 8] |= 1 << v39;
        v180 = (v73[6] + 16 * v39);
        *v180 = isUniquelyReferenced_nonNull_native;
        v180[1] = v4;
        v99 = 56 * v39;
        v181 = v73[7] + 56 * v39;
        v182 = MEMORY[0x1E69E7CC8];
        *v181 = MEMORY[0x1E69E7CC8];
        *(v181 + 8) = v182;
        *(v181 + 16) = 0;
        *(v181 + 24) = 0;
        *(v181 + 32) = 3;
        *(v181 + 40) = v182;
        *(v181 + 48) = 0;
        v183 = v73[2];
        v43 = __OFADD__(v183, 1);
        v184 = v183 + 1;
        if (!v43)
        {
          v73[2] = v184;
          goto LABEL_114;
        }

        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        v188 = v39;
        specialized _NativeDictionary.copy()();
        v39 = v188;
        v83 = v210;
        *(v15 + 6) = v210;
        if ((v23 & 1) == 0)
        {
          goto LABEL_118;
        }

        goto LABEL_68;
      }

LABEL_58:
      v98 = v39;

      v99 = 56 * v98;
LABEL_114:
      v185 = "Received an image segment with index %ld, but there is already a segment existed for that index. \nThis indicates a bug in the inference provider.";
      v186 = v73[7] + v99;
      v187 = 1;
LABEL_121:
      PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(&v216, v187, v185);

      v151 = v35;
      v152 = v22;
      goto LABEL_122;
    }

    goto LABEL_104;
  }

  if (swift_dynamicCast())
  {
    v34 = *(&v222 + 1);
    v4 = *(&v223 + 1);
    isUniquelyReferenced_nonNull_native = v223;
    v35 = *(&v224 + 1);
    v22 = v225;
    v216 = v222;
    v217 = v223;
    v218 = v224;
    *&v219 = v225;

    v81 = *(v1 + 6);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v15 = v1;
    v83 = *(v1 + 6);
    *&v210 = v83;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v4);
    v85 = v83[2];
    v86 = (v84 & 1) == 0;
    v43 = __OFADD__(v85, v86);
    v87 = v85 + v86;
    if (!v43)
    {
      v23 = v84;
      if (v83[3] >= v87)
      {
        if ((v82 & 1) == 0)
        {
          goto LABEL_117;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v87, v82);
        v83 = v210;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(isUniquelyReferenced_nonNull_native, v4);
        if ((v23 & 1) != (v88 & 1))
        {
          goto LABEL_135;
        }
      }

      *(v15 + 6) = v83;
      if ((v23 & 1) == 0)
      {
LABEL_118:
        v83[(v39 >> 6) + 8] |= 1 << v39;
        v189 = (v83[6] + 16 * v39);
        *v189 = isUniquelyReferenced_nonNull_native;
        v189[1] = v4;
        v118 = 56 * v39;
        v190 = v83[7] + 56 * v39;
        v191 = MEMORY[0x1E69E7CC8];
        *v190 = MEMORY[0x1E69E7CC8];
        *(v190 + 8) = v191;
        *(v190 + 16) = 0;
        *(v190 + 24) = 0;
        *(v190 + 32) = 3;
        *(v190 + 40) = v191;
        *(v190 + 48) = 0;
        v192 = v83[2];
        v43 = __OFADD__(v192, 1);
        v193 = v192 + 1;
        if (!v43)
        {
          v83[2] = v193;
          goto LABEL_120;
        }

        __break(1u);
        goto LABEL_125;
      }

LABEL_68:
      v117 = v39;

      v118 = 56 * v117;
LABEL_120:
      v185 = "Received an audio segment with index %ld, but there is already a segment existed for that index. \nThis indicates a bug in the inference provider.";
      v194 = v83[7] + v118;
      v187 = 3;
      goto LABEL_121;
    }

    goto LABEL_110;
  }

  if (swift_dynamicCast())
  {
    v23 = v207;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v9, v207, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
    v35 = *(v23 + 16);
    v34 = *(v23 + 24);

    v91 = *(v1 + 6);
    v4 = swift_isUniquelyReferenced_nonNull_native();
    isUniquelyReferenced_nonNull_native = v1;
    v92 = *(v1 + 6);
    *&v222 = v92;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
    v94 = v92[2];
    v95 = (v93 & 1) == 0;
    v43 = __OFADD__(v94, v95);
    v96 = v94 + v95;
    if (!v43)
    {
      LOBYTE(v22) = v93;
      if (v92[3] >= v96)
      {
        if ((v4 & 1) == 0)
        {
          goto LABEL_126;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v96, v4);
        v92 = v222;
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v34);
        if ((v22 & 1) != (v97 & 1))
        {
          goto LABEL_135;
        }
      }

      *(isUniquelyReferenced_nonNull_native + 48) = v92;
      if ((v22 & 1) == 0)
      {
LABEL_127:
        v92[(v39 >> 6) + 8] |= 1 << v39;
        v198 = (v92[6] + 16 * v39);
        *v198 = v35;
        v198[1] = v34;
        v129 = 56 * v39;
        v199 = v92[7] + 56 * v39;
        v200 = MEMORY[0x1E69E7CC8];
        *v199 = MEMORY[0x1E69E7CC8];
        *(v199 + 8) = v200;
        *(v199 + 16) = 0;
        *(v199 + 24) = 0;
        *(v199 + 32) = 3;
        *(v199 + 40) = v200;
        *(v199 + 48) = 0;
        v201 = v92[2];
        v43 = __OFADD__(v201, 1);
        v202 = v201 + 1;
        if (!v43)
        {
          v92[2] = v202;
          goto LABEL_129;
        }

        __break(1u);
LABEL_131:
        swift_once();
LABEL_76:
        v130 = type metadata accessor for Logger();
        __swift_project_value_buffer(v130, static Log.generator);
        outlined init with copy of PromptCompletionEvent(v206, &v222);
        v131 = Logger.logObject.getter();
        v132 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          v134 = swift_slowAlloc();
          *&v216 = v134;
          *v133 = 136315138;
          __swift_project_boxed_opaque_existential_1(&v222, *(&v223 + 1));
          swift_getDynamicType();
          v135 = _typeName(_:qualified:)();
          v137 = v136;
          __swift_destroy_boxed_opaque_existential_0(&v222);
          v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, &v216);

          *(v133 + 4) = v138;
          _os_log_impl(&dword_1AB828000, v131, v132, "Unhandled event: %s", v133, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v134);
          MEMORY[0x1AC5A6CD0](v134, -1, -1);
          MEMORY[0x1AC5A6CD0](v133, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v222);
        }

        goto LABEL_123;
      }

LABEL_74:
      v128 = v39;

      v129 = 56 * v128;
LABEL_129:
      v203 = v92[7] + v129;
      PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(v23);
      v172 = type metadata accessor for PromptCompletionEventCandidateFileGeneration;
      goto LABEL_102;
    }

    goto LABEL_116;
  }

  if (swift_dynamicCast())
  {
    v100 = *(&v223 + 1);
    v34 = v223;
    isUniquelyReferenced_nonNull_native = *(&v224 + 1);
    v101 = v224;
    *&v208 = v225;
    v206 = *(&v222 + 1);
    v207 = *(&v225 + 1);

    v102 = *(v1 + 6);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v22 = v1;
    v103 = *(v1 + 6);
    *&v216 = v103;
    v105 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v100);
    v106 = v103[2];
    v107 = (v104 & 1) == 0;
    v39 = v106 + v107;
    if (__OFADD__(v106, v107))
    {
LABEL_125:
      __break(1u);
LABEL_126:
      v197 = v39;
      specialized _NativeDictionary.copy()();
      v39 = v197;
      v92 = v222;
      *(isUniquelyReferenced_nonNull_native + 48) = v222;
      if ((v22 & 1) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_74;
    }

    v108 = v104;
    if (v103[3] >= v39)
    {
      if ((v35 & 1) == 0)
      {
        goto LABEL_133;
      }

      *(v22 + 48) = v103;
      if ((v104 & 1) == 0)
      {
LABEL_64:
        while (1)
        {
          v103[(v105 >> 6) + 8] |= 1 << v105;
          v111 = (v103[6] + 16 * v105);
          *v111 = v34;
          v111[1] = v100;
          v112 = 56 * v105;
          v113 = v103[7] + 56 * v105;
          v114 = MEMORY[0x1E69E7CC8];
          *v113 = MEMORY[0x1E69E7CC8];
          *(v113 + 8) = v114;
          *(v113 + 16) = 0;
          *(v113 + 24) = 0;
          *(v113 + 32) = 3;
          *(v113 + 40) = v114;
          *(v113 + 48) = 0;
          v115 = v103[2];
          v43 = __OFADD__(v115, 1);
          v116 = v115 + 1;
          if (!v43)
          {
            break;
          }

          __break(1u);
LABEL_133:
          specialized _NativeDictionary.copy()();
          v103 = v216;
          *(v22 + 48) = v216;
          if (v108)
          {
            goto LABEL_80;
          }
        }

        v103[2] = v116;
        goto LABEL_81;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, v35);
      v103 = v216;
      v109 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v100);
      if ((v108 & 1) != (v110 & 1))
      {
LABEL_135:
        v147 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_136;
      }

      v105 = v109;
      *(v22 + 48) = v103;
      if ((v108 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

LABEL_80:

    v112 = 56 * v105;
LABEL_81:
    v140 = v207;
    v139 = v208;
    v141 = (v103[7] + v112);
    v142 = v141[3];
    v143 = v141[4];
    v141[3] = v101;
    v141[4] = isUniquelyReferenced_nonNull_native;
    outlined copy of FinishReason(v101, isUniquelyReferenced_nonNull_native);
    outlined consume of FinishReason?(v142, v143);
    v144 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *&v210 = 0;
    v146 = [v144 JSONObjectWithData:isa options:0 error:&v210];

    v147 = v210;
    if (!v146)
    {
LABEL_136:
      v204 = v147;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v123 = swift_unexpectedError();
      __break(1u);
      goto LABEL_137;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    v148 = v210;
    v149 = v141[5];
    v150 = swift_isUniquelyReferenced_nonNull_native();
    *&v216 = v141[5];
    v141[5] = 0x8000000000000000;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v148, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v150, &v216);

    v141[5] = v216;

    outlined consume of FinishReason(v101, isUniquelyReferenced_nonNull_native);
    v151 = v139;
    v152 = v140;
LABEL_122:
    outlined consume of Data._Representation(v151, v152);
    goto LABEL_123;
  }

  if (!swift_dynamicCast())
  {
    if (one-time initialization token for generator == -1)
    {
      goto LABEL_76;
    }

    goto LABEL_131;
  }

  v119 = v223;
  v120 = objc_opt_self();
  v121 = Data._bridgeToObjectiveC()().super.isa;
  *&v210 = 0;
  v122 = [v120 JSONObjectWithData:v121 options:0 error:&v210];

  v123 = v210;
  if (v122)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    v124 = v210;
    v125 = *(type metadata accessor for PromptCompletion.Aggregator(0) + 36);
    v126 = *&v1[v125];
    v127 = swift_isUniquelyReferenced_nonNull_native();
    *&v216 = *&v1[v125];
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v124, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v127, &v216);

    outlined consume of Data._Representation(v119, *(&v119 + 1));
    *&v1[v125] = v216;
    goto LABEL_123;
  }

LABEL_137:
  v205 = v123;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t PromptCompletion.Aggregator.finish()@<X0>(char *a1@<X8>)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - v5;
  v7 = *v1;
  v32 = v1[1];
  v8 = v1[2];
  v9 = v1[5];
  v10 = v1[6];

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(v10);
  v33 = v11;

  v12 = v1[3];
  v31 = v1[4];
  v13 = type metadata accessor for PromptCompletion.Aggregator(0);
  v14 = *(v1 + *(v13 + 36));
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + *(v13 + 32), v6, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v15 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v34[0] = 0;
  v17 = [v15 dataWithJSONObject:isa options:0 error:v34];

  v18 = v34[0];
  if (!v17)
  {
    v30 = v18;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(a1 + 3) = 0;
  v22 = *(type metadata accessor for PromptCompletion(0) + 36);
  v23 = type metadata accessor for Prompt.Rendering();
  (*(*(v23 - 8) + 56))(&a1[v22], 1, 1, v23);
  v24 = v32;
  *a1 = v7;
  *(a1 + 1) = v24;
  *(a1 + 2) = v8;
  v25 = *(a1 + 3);

  v26 = v33;
  *(a1 + 3) = v9;
  *(a1 + 4) = v26;
  v27 = v31;
  *(a1 + 5) = v12;
  *(a1 + 6) = v27;
  *(a1 + 7) = v19;
  *(a1 + 8) = v21;
  result = outlined assign with take of Prompt.Rendering?(v6, &a1[v22]);
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

TokenGeneration::ModelInformation __swiftcall ModelInformation.init(assets:systemVersion:)(Swift::OpaquePointer assets, Swift::String_optional systemVersion)
{
  *v2 = assets;
  *(v2 + 8) = systemVersion;
  result.systemVersion = systemVersion;
  result.assets = assets;
  return result;
}

TokenGeneration::Usage __swiftcall Usage.init(promptTokenCount:completionTokenCount:)(Swift::Int promptTokenCount, Swift::Int completionTokenCount)
{
  *v2 = promptTokenCount;
  v2[1] = completionTokenCount;
  result.completionTokenCount = completionTokenCount;
  result.promptTokenCount = promptTokenCount;
  return result;
}

uint64_t PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(void *a1)
{
  v2 = v1;
  v94 = type metadata accessor for PromptCompletion.Content(0);
  v4 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v89 = (&v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v80 - v7);
  v9 = type metadata accessor for PromptCompletion.Segment(0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v80 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v83 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v80 - v28;
  v30 = a1[1];
  v31 = a1[4];
  v87 = a1[3];
  v88 = v30;
  v32 = a1[6];
  v86 = a1[5];
  v33 = a1[7];
  v34 = a1[8];
  v91 = v32;
  v92 = v33;
  v95 = v2;
  v35 = *v2;
  if (*(*v2 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v31), (v37 & 1) != 0))
  {
    outlined init with copy of PromptCompletion.Content(*(v35 + 56) + v10[9] * v36, v29, type metadata accessor for PromptCompletion.Segment);
    v84 = v10[7];
    (v84)(v29, 0, 1, v9);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    v38 = v95;
  }

  else
  {
    v39 = v10[7];
    v39(v29, 1, 1, v9, v27);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    *v17 = 0;
    *(v17 + 1) = 0xE000000000000000;
    *(v17 + 2) = MEMORY[0x1E69E7CC0];
    *(v17 + 24) = xmmword_1ABA1D8C0;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of PromptCompletion.Content(v17, v25, type metadata accessor for PromptCompletion.Segment);
    v84 = v39;
    (v39)(v25, 0, 1, v9);
    v38 = v95;
    specialized Dictionary.subscript.setter(v25, v31);
    outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for PromptCompletion.Segment);
  }

  v40 = *v38;
  v41 = v93;
  if (!*(v40 + 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  v42 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
  if ((v43 & 1) == 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v82 = v9;
  v90 = v31;
  v44 = v10;
  v45 = v10[9];
  outlined init with copy of PromptCompletion.Content(*(v40 + 56) + v45 * v42, v41, type metadata accessor for PromptCompletion.Segment);
  outlined init with copy of PromptCompletion.Content(v41, v8, type metadata accessor for PromptCompletion.Content);
  if (swift_getEnumCaseMultiPayload())
  {
    *(v95 + 48) = 1;
    v31 = v92;
    if (one-time initialization token for generator == -1)
    {
LABEL_9:
      v46 = type metadata accessor for Logger();
      __swift_project_value_buffer(v46, static Log.generator);

      outlined copy of Data?(v31, v34);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = v90;

        outlined consume of Data?(v31, v34);
        _os_log_impl(&dword_1AB828000, v47, v48, "Segment %ld should have been a text segment, but wasn't! This indicates a bug in the inference provider.", v49, 0xCu);
        MEMORY[0x1AC5A6CD0](v49, -1, -1);
      }

      else
      {

        outlined consume of Data?(v31, v34);
      }

      outlined destroy of PromptCompletion.FileContent(v8, type metadata accessor for PromptCompletion.Content);
      return outlined destroy of PromptCompletion.FileContent(v41, type metadata accessor for PromptCompletion.Segment);
    }

LABEL_29:
    swift_once();
    goto LABEL_9;
  }

  v50 = *v8;
  v52 = v8[2];
  v51 = v8[3];
  v53 = v8[4];
  v87 = v8[1];
  v88 = v53;
  v96 = v50;
  v97 = v87;

  MEMORY[0x1AC5A5BC0](v86, v91);
  v54 = v96;
  v55 = v97;
  v56 = v92;
  v57 = v92;
  v58 = v34;
  if (v34 >> 60 == 15)
  {
    v58 = v88;
    outlined copy of Data?(v51, v88);
    v57 = v51;
  }

  v91 = v51;
  v59 = v57;

  outlined copy of Data?(v56, v34);
  outlined consume of Data?(0, 0xF000000000000000);
  v60 = v89;
  *v89 = v54;
  v60[1] = v55;
  v60[2] = v52;
  v60[3] = v59;
  v60[4] = v58;
  swift_storeEnumTagMultiPayload();

  v94 = v59;
  outlined copy of Data?(v59, v58);
  v61 = v95;
  v62 = *v95;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v61;
  v64 = v96;
  v66 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
  v67 = *(v64 + 16);
  v68 = (v65 & 1) == 0;
  v69 = v67 + v68;
  if (__OFADD__(v67, v68))
  {
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v59) = v65;
  if (*(v64 + 24) >= v69)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v72 = v85;
      if (v65)
      {
        goto LABEL_22;
      }

LABEL_32:
      (v84)(v72, 1, 1, v82);
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    specialized _NativeDictionary.copy()();
    v72 = v85;
    if (v59)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v69, isUniquelyReferenced_nonNull_native);
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v90);
  if ((v59 & 1) == (v71 & 1))
  {
    v66 = v70;
    v72 = v85;
    if ((v59 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_22:
    v73 = v96;
    v74 = v66 * v45;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(*(v96 + 56) + v66 * v45, v72, type metadata accessor for PromptCompletion.Segment);
    v75 = v82;
    (v84)(v72, 0, 1, v82);
    outlined assign with take of PromptCompletion.Content(v89, v72, type metadata accessor for PromptCompletion.Content);
    v76 = v83;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, v83, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    if ((v44[6])(v76, 1, v75) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v76, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
      specialized _NativeDictionary._delete(at:)(v66, v73);
    }

    else
    {
      v77 = v81;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v76, v81, type metadata accessor for PromptCompletion.Segment);
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v77, *(v73 + 56) + v74, type metadata accessor for PromptCompletion.Segment);
    }

    v41 = v93;
    v78 = v95;

    outlined consume of Data?(v91, v88);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    *v78 = v73;

    outlined consume of Data?(v94, v58);
    return outlined destroy of PromptCompletion.FileContent(v41, type metadata accessor for PromptCompletion.Segment);
  }

LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v2 = v1;
  v63 = type metadata accessor for Prompt.ToolCall.Kind();
  v60 = *(v63 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt.ToolCall.Function();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV8ToolCallVSgMd, &_s15TokenGeneration6PromptV8ToolCallVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = type metadata accessor for Prompt.ToolCall();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v62 = &v54 - v28;
  v30 = a1[4];
  v29 = a1[5];
  v31 = a1[7];
  v61 = a1[6];
  v32 = a1[9];
  v56 = a1[8];
  v54 = v31;
  v55 = v32;
  v33 = a1[10];
  v58 = a1[11];
  v59 = v33;
  v34 = *(v2 + 8);
  v65 = v2 + 8;
  if (*(v34 + 16))
  {

    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
    if (v36)
    {
      (*(v22 + 16))(v20, *(v34 + 56) + *(v22 + 72) * v35, v21);
      v37 = *(v22 + 56);
      v38 = v20;
      v39 = 0;
    }

    else
    {
      v37 = *(v22 + 56);
      v38 = v20;
      v39 = 1;
    }

    v57 = v37;
    (v37)(v38, v39, 1, v21);
  }

  else
  {
    v57 = *(v22 + 56);
    v57(v20, 1, 1, v21, v27);
  }

  v40 = v62;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v20, v17, &_s15TokenGeneration6PromptV8ToolCallVSgMd, &_s15TokenGeneration6PromptV8ToolCallVSgMR);
  if ((*(v22 + 48))(v17, 1, v21) == 1)
  {

    v41 = v66;
    Prompt.ToolCall.Function.init(name:arguments:)();
    MEMORY[0x1AC5A36F0](v30, v29, v41);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration6PromptV8ToolCallVSgMd, &_s15TokenGeneration6PromptV8ToolCallVSgMR);
  }

  else
  {
    (*(v22 + 32))(v40, v17, v21);
  }

  v61 = v29;
  v62 = v30;
  Prompt.ToolCall.kind.getter();
  v42 = v60;
  v43 = v63;
  if ((*(v60 + 88))(v6, v63) == *MEMORY[0x1E69DA808])
  {
    (*(v42 + 96))(v6, v43);
    (*(v68 + 32))(v67, v6, v69);
    v44 = Prompt.ToolCall.id.getter();
    v46 = v45;
    Prompt.ToolCall.Function.name.getter();
    v70 = Prompt.ToolCall.Function.arguments.getter();
    v71 = v47;

    MEMORY[0x1AC5A5BC0](v56, v55);

    v48 = v66;
    Prompt.ToolCall.Function.init(name:arguments:)();
    MEMORY[0x1AC5A36F0](v44, v46, v48);
    v50 = v58;
    v49 = v59;
    if (v58 >> 60 == 15)
    {
      Prompt.ToolCall._userInfo.getter();
    }

    outlined copy of Data?(v49, v50);
    Prompt.ToolCall._userInfo.setter();
    v51 = v64;
    (*(v22 + 16))(v64, v25, v21);
    (v57)(v51, 0, 1, v21);
    specialized Dictionary.subscript.setter(v51, v62, v61);
    v52 = *(v22 + 8);
    v52(v25, v21);
    (*(v68 + 8))(v67, v69);
    return (v52)(v40, v21);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

void PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(uint64_t a1)
{
  v3 = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76 - v8;
  v10 = type metadata accessor for PromptCompletion.Annotation(0);
  v84 = *(v10 - 8);
  v11 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PromptCompletion.Content(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v85 = (&v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - v19;
  v88 = type metadata accessor for PromptCompletion.Segment(0);
  v21 = *(v88 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v80 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v86 = &v76 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v82 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v83 = &v76 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v76 - v33;
  v87 = v1;
  v35 = *v1;
  if (*(v35 + 16))
  {
    v81 = *(a1 + 32);
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
    if (v37)
    {
      v38 = *(v35 + 56);
      v79 = *(v21 + 72);
      outlined init with copy of PromptCompletion.Content(v38 + v79 * v36, v34, type metadata accessor for PromptCompletion.Segment);
      v78 = *(v21 + 56);
      v78(v34, 0, 1, v88);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
      if (*(v35 + 16))
      {
        v39 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
        if (v40)
        {
          v34 = v86;
          outlined init with copy of PromptCompletion.Content(*(v35 + 56) + v39 * v79, v86, type metadata accessor for PromptCompletion.Segment);
          outlined init with copy of PromptCompletion.Content(v34, v20, type metadata accessor for PromptCompletion.Content);
          if (swift_getEnumCaseMultiPayload())
          {
            *(v87 + 48) = 1;
            if (one-time initialization token for generator == -1)
            {
LABEL_7:
              v41 = type metadata accessor for Logger();
              __swift_project_value_buffer(v41, static Log.generator);
              outlined init with copy of PromptCompletion.Content(a1, v9, type metadata accessor for PromptCompletionEventCandidateAnnotation);
              v42 = Logger.logObject.getter();
              v43 = static os_log_type_t.fault.getter();
              if (os_log_type_enabled(v42, v43))
              {
                v44 = swift_slowAlloc();
                *v44 = 134217984;
                v45 = *(v9 + 4);
                outlined destroy of PromptCompletion.FileContent(v9, type metadata accessor for PromptCompletionEventCandidateAnnotation);
                *(v44 + 4) = v45;
                _os_log_impl(&dword_1AB828000, v42, v43, "Received an annotation for segment %ld, but that segment\nwas not a text segment! This indicates a bug in the inference provider.", v44, 0xCu);
                MEMORY[0x1AC5A6CD0](v44, -1, -1);
              }

              else
              {
                outlined destroy of PromptCompletion.FileContent(v9, type metadata accessor for PromptCompletionEventCandidateAnnotation);
              }

              outlined destroy of PromptCompletion.FileContent(v20, type metadata accessor for PromptCompletion.Content);
LABEL_32:
              outlined destroy of PromptCompletion.FileContent(v34, type metadata accessor for PromptCompletion.Segment);
              return;
            }

LABEL_35:
            swift_once();
            goto LABEL_7;
          }

          v34 = *v20;
          v52 = *(v20 + 2);
          v51 = *(v20 + 3);
          v76 = *(v20 + 1);
          v77 = v51;
          v53 = *(v20 + 4);
          outlined init with copy of PromptCompletion.Content(a1 + *(v3 + 28), v13, type metadata accessor for PromptCompletion.Annotation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
          }

          v55 = *(v52 + 2);
          v54 = *(v52 + 3);
          if (v55 >= v54 >> 1)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 > 1, v55 + 1, 1, v52);
          }

          *(v52 + 2) = v55 + 1;
          _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v13, &v52[((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v55], type metadata accessor for PromptCompletion.Annotation);
          v56 = v85;
          v58 = v76;
          v57 = v77;
          *v85 = v34;
          v56[1] = v58;
          v56[2] = v52;
          v56[3] = v57;
          v56[4] = v53;
          swift_storeEnumTagMultiPayload();

          outlined copy of Data?(v57, v53);
          v59 = v87;
          v60 = *v87;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = *v59;
          v89 = v62;
          v64 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
          v65 = *(v62 + 16);
          v66 = (v63 & 1) == 0;
          v67 = v65 + v66;
          if (__OFADD__(v65, v66))
          {
            __break(1u);
          }

          else
          {
            v15 = v63;
            v34 = v86;
            if (*(v62 + 24) < v67)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, isUniquelyReferenced_nonNull_native);
              v68 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
              if ((v15 & 1) != (v69 & 1))
              {
LABEL_39:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

              v64 = v68;
              v70 = v83;
              if ((v15 & 1) == 0)
              {
LABEL_38:
                v78(v70, 1, 1, v88);
                __break(1u);
                goto LABEL_39;
              }

LABEL_28:
              v71 = v89;
              v72 = v64 * v79;
              _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(*(v89 + 56) + v64 * v79, v70, type metadata accessor for PromptCompletion.Segment);
              v73 = v88;
              v78(v70, 0, 1, v88);
              outlined assign with take of PromptCompletion.Content(v85, v70, type metadata accessor for PromptCompletion.Content);
              v74 = v82;
              outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v70, v82, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
              if ((*(v21 + 48))(v74, 1, v73) == 1)
              {
                outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v74, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
                specialized _NativeDictionary._delete(at:)(v64, v71);
              }

              else
              {
                v75 = v80;
                _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v74, v80, type metadata accessor for PromptCompletion.Segment);
                _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v75, *(v71 + 56) + v72, type metadata accessor for PromptCompletion.Segment);
              }

              outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v70, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
              *v87 = v71;

              outlined consume of Data?(v77, v53);
              goto LABEL_32;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              v70 = v83;
              if ((v63 & 1) == 0)
              {
                goto LABEL_38;
              }

              goto LABEL_28;
            }
          }

          specialized _NativeDictionary.copy()();
          v70 = v83;
          if ((v15 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_28;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  (*(v21 + 56))(v34, 1, 1, v88, v32);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
  *(v87 + 48) = 1;
  if (one-time initialization token for generator != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Log.generator);
  outlined init with copy of PromptCompletion.Content(a1, v6, type metadata accessor for PromptCompletionEventCandidateAnnotation);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134217984;
    v50 = *(v6 + 4);
    outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptCompletionEventCandidateAnnotation);
    *(v49 + 4) = v50;
    _os_log_impl(&dword_1AB828000, v47, v48, "Received an annotation for segment %ld, but there weren't that segment! This indicates a bug in the inference provider.", v49, 0xCu);
    MEMORY[0x1AC5A6CD0](v49, -1, -1);
  }

  else
  {
    outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptCompletionEventCandidateAnnotation);
  }
}

{
  v3 = type metadata accessor for PromptCompletionEventCandidateFileGeneration(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = *(a1 + 32);
  v15 = *v1;
  if (*(*v1 + 16) && (v16 = v1, v17 = *v1, v18 = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32)), v19 = v16, (v20 & 1) != 0))
  {
    v21 = v18;
    v22 = *(v15 + 56);
    v23 = type metadata accessor for PromptCompletion.Segment(0);
    v24 = *(v23 - 8);
    outlined init with copy of PromptCompletion.Content(v22 + *(v24 + 72) * v21, v13, type metadata accessor for PromptCompletion.Segment);
    (*(v24 + 56))(v13, 0, 1, v23);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    *(v19 + 48) = 1;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Log.generator);
    outlined init with copy of PromptCompletion.Content(a1, v6, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      v29 = *(v6 + 4);
      outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
      *(v28 + 4) = v29;
      _os_log_impl(&dword_1AB828000, v26, v27, "Received an file segment with index %ld, but there is already a segment existed for that index. \nThis indicates a bug in the inference provider.", v28, 0xCu);
      MEMORY[0x1AC5A6CD0](v28, -1, -1);
    }

    else
    {
      outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
    }
  }

  else
  {
    v30 = type metadata accessor for PromptCompletion.Segment(0);
    v31 = *(*(v30 - 8) + 56);
    v31(v13, 1, 1, v30);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    outlined init with copy of PromptCompletion.Content(a1 + *(v3 + 28), v10, type metadata accessor for PromptCompletion.FileContent);
    type metadata accessor for PromptCompletion.Content(0);
    swift_storeEnumTagMultiPayload();
    v31(v10, 0, 1, v30);
    specialized Dictionary.subscript.setter(v10, v14);
  }
}

void PromptCompletion.Aggregator.CandidateAggregator.consume(event:)(void *a1, uint64_t a2, const char *a3)
{
  v31 = a3;
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v14 = a1[4];
  v13 = a1[5];
  v15 = a1[6];
  v16 = *v3;
  if (*(v16 + 16) && (v30 = a1[1], v17 = a1[3], v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v19 & 1) != 0))
  {
    v20 = v18;
    v21 = *(v16 + 56);
    v22 = type metadata accessor for PromptCompletion.Segment(0);
    v23 = *(v22 - 8);
    outlined init with copy of PromptCompletion.Content(v21 + *(v23 + 72) * v20, v12, type metadata accessor for PromptCompletion.Segment);
    (*(v23 + 56))(v12, 0, 1, v22);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    *(v4 + 48) = 1;
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.generator);

    outlined copy of Data._Representation(v13, v15);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v14;

      outlined consume of Data._Representation(v13, v15);
      _os_log_impl(&dword_1AB828000, v25, v26, v31, v27, 0xCu);
      MEMORY[0x1AC5A6CD0](v27, -1, -1);
    }

    else
    {

      outlined consume of Data._Representation(v13, v15);
    }
  }

  else
  {
    v28 = type metadata accessor for PromptCompletion.Segment(0);
    v29 = *(*(v28 - 8) + 56);
    v29(v12, 1, 1, v28);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMd, &_s15TokenGeneration16PromptCompletionV7SegmentVSgMR);
    *v9 = v13;
    v9[1] = v15;
    type metadata accessor for PromptCompletion.Content(0);
    swift_storeEnumTagMultiPayload();
    v29(v9, 0, 1, v28);
    outlined copy of Data._Representation(v13, v15);
    specialized Dictionary.subscript.setter(v9, v14);
  }
}

void PromptCompletion.Aggregator.CandidateAggregator.finish()(char **a1@<X8>)
{
  v50[5] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for PromptCompletion.Segment(0);
  v49 = *(v3 - 8);
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  v48 = *(v1 + 16);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  if (*(v1 + 48))
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v43[2] = *(v1 + 40);
  v44 = v8;
  v45 = v7;
  v46 = a1;
  v12 = *v1;
  v47 = *(v1 + 8);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v12 + 16), 0);
    v16 = specialized Sequence._copySequenceContents(initializing:)(v50, v15 + 4, v13, v12);
    v9 = v50[3];
    v43[1] = v50[4];

    outlined consume of [String : String].Iterator._Variant();
    if (v16 == v13)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v15 = v14;
LABEL_7:
  v50[0] = v15;
  specialized MutableCollection<>.sort(by:)(v50);
  v17 = v50[0];
  v18 = *(v50[0] + 2);
  if (v18)
  {
    v50[0] = v14;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = 32;
    v11 = v50[0];
    while (*(v12 + 16))
    {
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(*&v17[v19]);
      if ((v21 & 1) == 0)
      {
        goto LABEL_27;
      }

      v22 = v17;
      v23 = v49;
      v24 = *(v49 + 72);
      outlined init with copy of PromptCompletion.Content(*(v12 + 56) + v24 * v20, v6, type metadata accessor for PromptCompletion.Segment);
      v50[0] = v11;
      v26 = *(v11 + 2);
      v25 = *(v11 + 3);
      v9 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1);
        v23 = v49;
        v11 = v50[0];
      }

      *(v11 + 2) = v9;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v6, &v11[((*(v23 + 80) + 32) & ~*(v23 + 80)) + v26 * v24], type metadata accessor for PromptCompletion.Segment);
      v19 += 8;
      --v18;
      v17 = v22;
      if (!v18)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v42 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v27 = v47;
  v28 = *(v47 + 16);
  if (!v28)
  {
    goto LABEL_19;
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15TokenGeneration6PromptV8ToolCallV_Tt1g5(*(v47 + 16), 0);
  v29 = *(type metadata accessor for Prompt.ToolCall() - 8);
  specialized Sequence._copySequenceContents(initializing:)(v50, (v10 + ((*(v29 + 80) + 32) & ~*(v29 + 80))), v28, v27);
  v31 = v30;

  outlined consume of [String : String].Iterator._Variant();
  if (v31 != v28)
  {
    __break(1u);
LABEL_19:
    v10 = MEMORY[0x1E69E7CC0];
  }

  v7 = v45;
  a1 = v46;
  v8 = v44;
LABEL_21:
  v32 = objc_opt_self();
  v33 = v48;

  outlined copy of FinishReason?(v7, v8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v50[0] = 0;
  v35 = [v32 dataWithJSONObject:isa options:0 error:v50];

  v9 = v50[0];
  if (!v35)
  {
    goto LABEL_28;
  }

  if (v8 == 3)
  {
    v8 = 0;
    v36 = 0;
  }

  else
  {
    v36 = v7;
  }

  v37 = v50[0];
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  *a1 = v11;
  a1[1] = v10;
  a1[2] = v33;
  a1[3] = v36;
  a1[4] = v8;
  a1[5] = v38;
  a1[6] = v40;
  v41 = *MEMORY[0x1E69E9840];
}

uint64_t static ModelInformation.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16ModelInformationV5AssetV_Tt1g5(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

void PromptCompletion.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Prompt.Rendering();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = v2[1];
  v14 = v2[2];
  specialized Array<A>.hash(into:)(a1, *v2);
  if (v14)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v15 = v2[3];
    if (v15)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v15);
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v15 = v2[3];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  specialized Array<A>.hash(into:)(a1, v2[4]);
  v16 = v2[6];
  MEMORY[0x1AC5A6570](v2[5]);
  MEMORY[0x1AC5A6570](v16);
  v17 = v2[7];
  v18 = v2[8];
  Data.hash(into:)();
  v19 = type metadata accessor for PromptCompletion(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + *(v19 + 36), v12, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }
}

Swift::Int PromptCompletion.Segment.hashValue.getter(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.Segment(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.Segment(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t ModelInformation.identifier.getter()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

uint64_t (*ModelInformation.identifier.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a1 = v5;
  a1[1] = v6;
  return ModelInformation.identifier.modify;
}

uint64_t ModelInformation.version.getter()
{
  v1 = *v0;
  if (*(*v0 + 16) && *(v1 + 56))
  {
    v2 = *(v1 + 48);
    v3 = *(v1 + 56);
  }

  else
  {

    return 0;
  }

  return v2;
}

void ModelInformation.identifier.setter()
{

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.assets);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1AB828000, oslog, v1, "Using deprecated setter. No change made.", v2, 2u);
    MEMORY[0x1AC5A6CD0](v2, -1, -1);
  }
}

uint64_t (*ModelInformation.version.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  if (*(*v1 + 16) && *(v3 + 56))
  {
    v4 = *(v3 + 48);
  }

  else
  {

    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a1 = v4;
  a1[1] = v5;
  return ModelInformation.version.modify;
}

uint64_t ModelInformation.identifier.modify(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v4 = *(a1 + 8);
  if (a2)
  {
    v5 = *(a1 + 8);

    (a3)(v6, v4);
  }

  else
  {
    v8 = *(a1 + 8);
    return a3();
  }
}

uint64_t ModelInformation.assets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ModelInformation.systemVersion.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ModelInformation.systemVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

TokenGeneration::ModelInformation __swiftcall ModelInformation.init(identifier:version:systemVersion:)(Swift::String identifier, Swift::String version, Swift::String_optional systemVersion)
{
  object = version._object;
  countAndFlagsBits = version._countAndFlagsBits;
  v6 = identifier._object;
  v7 = identifier._countAndFlagsBits;
  v8 = v3;
  v23[1] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1ABA1D930;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v10 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v23[0] = 0;
  v12 = [v10 dataWithJSONObject:isa options:0 error:v23];

  if (!v12)
  {
    v21 = v23[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v13 = v23[0];

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = countAndFlagsBits;
  *(v9 + 56) = object;
  *(v9 + 64) = v14;
  *(v9 + 72) = v16;
  *v8 = v9;
  *(v8 + 8) = systemVersion;
  v20 = *MEMORY[0x1E69E9840];
  result.systemVersion.value._object = v19;
  result.systemVersion.value._countAndFlagsBits = v18;
  result.assets._rawValue = v17;
  return result;
}

void ModelInformation.Asset.init(identifier:version:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v19[0] = 0;
  v12 = [v10 dataWithJSONObject:isa options:0 error:v19];

  v13 = v19[0];
  if (!v12)
  {
    v18 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v14;
  a5[5] = v16;
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t ModelInformation.Asset.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ModelInformation.Asset.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ModelInformation.Asset.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ModelInformation.Asset.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

id ModelInformation.Asset.metadata.getter()
{
  v10[5] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[0] = 0;
  v5 = [v3 JSONObjectWithData:isa options:0 error:v10];

  v6 = v10[0];
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    result = v10[0];
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t ModelInformation.Asset.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Data.hash(into:)();
}

Swift::Int ModelInformation.Asset.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ModelInformation.Asset()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ModelInformation.Asset()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModelInformation.Asset()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

void ModelInformation.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int ModelInformation.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ModelInformation()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ModelInformation(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModelInformation()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ModelInformation(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16ModelInformationV5AssetV_Tt1g5(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Usage.totalTokenCount.getter()
{
  v1 = v0[1];
  result = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t Usage.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1AC5A6570](*v0);
  return MEMORY[0x1AC5A6570](v1);
}

Swift::Int Usage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  MEMORY[0x1AC5A6570](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Usage()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  MEMORY[0x1AC5A6570](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Usage()
{
  v1 = v0[1];
  MEMORY[0x1AC5A6570](*v0);
  return MEMORY[0x1AC5A6570](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Usage()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  MEMORY[0x1AC5A6570](v2);
  return Hasher._finalize()();
}

uint64_t FinishReason.hash(into:)()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x1AC5A6570](v2);
    case 1:
      v2 = 2;
      return MEMORY[0x1AC5A6570](v2);
    case 2:
      v2 = 3;
      return MEMORY[0x1AC5A6570](v2);
  }

  v4 = *v0;
  MEMORY[0x1AC5A6570](1);

  return String.hash(into:)();
}

Swift::Int FinishReason.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1AC5A6570](1);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1AC5A6570](v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FinishReason()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1AC5A6570](1);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1AC5A6570](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FinishReason()
{
  v1 = v0[1];
  switch(v1)
  {
    case 0:
      v2 = 0;
      return MEMORY[0x1AC5A6570](v2);
    case 1:
      v2 = 2;
      return MEMORY[0x1AC5A6570](v2);
    case 2:
      v2 = 3;
      return MEMORY[0x1AC5A6570](v2);
  }

  v4 = *v0;
  MEMORY[0x1AC5A6570](1);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FinishReason()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1AC5A6570](1);
        String.hash(into:)();
        return Hasher._finalize()();
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1AC5A6570](v3);
  return Hasher._finalize()();
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x1AC5A2EC0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x1AC5A2EC0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15TokenGeneration6PromptV8ToolCallV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV8ToolCallVGMR);
  v4 = *(type metadata accessor for Prompt.ToolCall() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  outlined init with copy of Any((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x1E69DA8C0], &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMR);
}

{
  v3 = v2;
  v57 = type metadata accessor for InferenceResponse.Moderation.Probability();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InferenceResponse.Moderation.Category();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMR);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type InferenceResponse.Moderation.Category and conformance InferenceResponse.Moderation.Category, MEMORY[0x1E69C6478]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for PromptCompletion.Segment(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15TokenGeneration16PromptCompletionV7SegmentVGMd, &_ss18_DictionaryStorageCySi15TokenGeneration16PromptCompletionV7SegmentVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v39 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v40)
      {
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v28, v9, type metadata accessor for PromptCompletion.Segment);
      }

      else
      {
        outlined init with copy of PromptCompletion.Content(v28, v9, type metadata accessor for PromptCompletion.Segment);
      }

      result = MEMORY[0x1AC5A6550](*(v13 + 40), v26);
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v9, *(v13 + 56) + v27 * v21, type metadata accessor for PromptCompletion.Segment);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v10 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, MEMORY[0x1E69DA810], &_ss18_DictionaryStorageCySS15TokenGeneration6PromptV8ToolCallVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration6PromptV8ToolCallVGMR);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo13OS_xpc_object_pGMd, &_ss18_DictionaryStorageCySSSo13OS_xpc_object_pGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration0C9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy15TokenGeneration0C9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCGMR);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_19:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v34 & 1) == 0)
      {
        v26 = v25;
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v16) >> 6;
        while (++v18 != v29 || (v28 & 1) == 0)
        {
          v30 = v18 == v29;
          if (v18 == v29)
          {
            v18 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v18);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v18 << 6);
            goto LABEL_11;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_19;
      }
    }

    if (v34)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = v8;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMR);
  v48 = a2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v5 + 16))
  {
    v9 = 0;
    v44 = v2;
    v45 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 64;
    v46 = v5;
    v47 = v7;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v50 = (v12 - 1) & v12;
LABEL_17:
      v25 = v21 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = v26[1];
      v52 = *v26;
      v28 = *(v5 + 56) + 56 * v25;
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      v32 = *(v28 + 24);
      v33 = *(v28 + 32);
      v34 = *(v28 + 40);
      v49 = *(v28 + 48);
      if ((v48 & 1) == 0)
      {

        outlined copy of FinishReason?(v32, v33);
      }

      v51 = v33;
      v8 = v47;
      v35 = *(v47 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v36 = -1 << *(v47 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v14 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v17 = v34;
        v16 = v32;
        v18 = v51;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v14 + 8 * v38);
          if (v42 != -1)
          {
            v15 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v37) & ~*(v14 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v17 = v34;
      v16 = v32;
      v18 = v51;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v19 = (*(v47 + 48) + 16 * v15);
      *v19 = v52;
      v19[1] = v27;
      v20 = *(v47 + 56) + 56 * v15;
      *v20 = v29;
      *(v20 + 8) = v30;
      *(v20 + 16) = v31;
      *(v20 + 24) = v16;
      *(v20 + 32) = v18;
      *(v20 + 40) = v17;
      *(v20 + 48) = v49;
      ++*(v47 + 16);
      v5 = v46;
      v12 = v50;
    }

    v22 = v9;
    result = v45;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v13)
      {
        break;
      }

      v24 = v45[v9];
      ++v22;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v50 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_35;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v45, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v45 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69DA8C0], &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMR);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
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
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
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
  v1 = v0;
  v2 = type metadata accessor for PromptCompletion.Segment(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15TokenGeneration16PromptCompletionV7SegmentVGMd, &_ss18_DictionaryStorageCySi15TokenGeneration16PromptCompletionV7SegmentVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        outlined init with copy of PromptCompletion.Content(*(v6 + 56) + v23, v5, type metadata accessor for PromptCompletion.Segment);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v5, *(v8 + 56) + v23, type metadata accessor for PromptCompletion.Segment);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69DA810], &_ss18_DictionaryStorageCySS15TokenGeneration6PromptV8ToolCallVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration6PromptV8ToolCallVGMR);
}

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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMd, &_ss18_DictionaryStorageCySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateG033_D174D4387BF6B304FA76AEBF3D593BFDLLVGMR);
  v29 = v0;
  v1 = *v0;
  v30 = static _DictionaryStorage.copy(original:)();
  v31 = v1;
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v30 + 16) = *(v31 + 16);
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 16 * v15;
        v17 = (*(v31 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v15 *= 56;
        v20 = *(v31 + 56) + v15;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        LOBYTE(v20) = *(v20 + 48);
        v27 = (*(v30 + 48) + v16);
        *v27 = v18;
        v27[1] = v19;
        v28 = *(v30 + 56) + v15;
        *v28 = v21;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        *(v28 + 48) = v20;

        outlined copy of FinishReason?(v24, v25);
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo13OS_xpc_object_pGMd, &_ss18_DictionaryStorageCySSSo13OS_xpc_object_pGMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v43 = type metadata accessor for InferenceResponse.Moderation.Probability();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for InferenceResponse.Moderation.Category();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
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

void *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
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

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
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

        result = v20;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration0C9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCGMd, &_ss18_DictionaryStorageCy15TokenGeneration0C9GeneratorC9Dimension33_A936FA3DA371934822B1D42BF6B4011ALLOSo8NSObjectCGMR);
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
        result = v18;
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5, MEMORY[0x1E69DA8C0]);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5, MEMORY[0x1E69DA810]);
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for PromptCompletion.Segment(0);
  result = _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for PromptCompletion.Segment);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
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

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

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
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
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

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Dictionary<>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      v17 = *(*(a2 + 56) + v13);

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v20 = a1[2];
      v21 = a1[3];
      v22 = *(a1 + 8);
      v18 = *a1;
      v19 = a1[1];

      String.hash(into:)();
      swift_bridgeObjectRelease_n();
      MEMORY[0x1AC5A6570](v17);
      result = Hasher._finalize()();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1AC5A6570](v10);
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

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    String.hash(into:)();

    String.hash(into:)();

    result = Hasher._finalize()();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1AC5A6570](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    v7 &= v7 - 1;
    v18 = *(a1 + 48);
    v20[2] = *(a1 + 32);
    v20[3] = v18;
    v21 = *(a1 + 64);
    v19 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v19;

    String.hash(into:)();

    specialized Array<A>.hash(into:)(v20, v17);
    swift_bridgeObjectRelease_n();
    result = Hasher._finalize()();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1AC5A6570](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1AC5A6570](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v7 = *(v5 - 5);
      v6 = *(v5 - 4);
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;

      outlined copy of Data._Representation(v10, v11);
      String.hash(into:)();
      if (v8)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v5 += 6;
      Data.hash(into:)();

      result = outlined consume of Data._Representation(v10, v11);
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v52 = type metadata accessor for Prompt.PreprocessedImageData();
  v45 = *(v52 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Prompt.ImageEmbeddingData();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Prompt.ImageData();
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 16);
  result = MEMORY[0x1AC5A6570](v22, v19);
  if (v22)
  {
    v24 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v25 = v45;
    v26 = v9;
    v27 = *(v17 + 72);
    v45 += 8;
    v46 = (v25 + 32);
    v43 = (v6 + 8);
    v44 = (v6 + 32);
    v41 = (v26 + 8);
    v42 = (v26 + 32);
    do
    {
      outlined init with copy of PromptCompletion.Content(v24, v21, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
      outlined init with copy of PromptCompletion.Content(v21, v15, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v32 = *v15;
          v33 = *(v15 + 1);
          v34 = a1;
          v35 = v27;
          v36 = v12;
          v37 = v15[16];
          MEMORY[0x1AC5A6570](0);
          String.hash(into:)();
          v38 = v37;
          v12 = v36;
          v27 = v35;
          a1 = v34;
          Hasher._combine(_:)(v38);
LABEL_13:

          goto LABEL_5;
        }

        v29 = v47;
        v28 = v48;
        (*v42)(v47, v15, v48);
        MEMORY[0x1AC5A6570](1);
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.ImageData and conformance Prompt.ImageData, MEMORY[0x1E69C6368]);
        dispatch thunk of Hashable.hash(into:)();
        v30 = v41;
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          v39 = *v15;
          v40 = *(v15 + 1);
          MEMORY[0x1AC5A6570](2);
          String.hash(into:)();
          goto LABEL_13;
        }

        if (EnumCaseMultiPayload == 3)
        {
          v29 = v49;
          v28 = v50;
          (*v44)(v49, v15, v50);
          MEMORY[0x1AC5A6570](3);
          lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.ImageEmbeddingData and conformance Prompt.ImageEmbeddingData, MEMORY[0x1E69C6268]);
          dispatch thunk of Hashable.hash(into:)();
          v30 = v43;
        }

        else
        {
          v29 = v51;
          v28 = v52;
          (*v46)(v51, v15, v52);
          MEMORY[0x1AC5A6570](4);
          lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.PreprocessedImageData and conformance Prompt.PreprocessedImageData, MEMORY[0x1E69C6288]);
          dispatch thunk of Hashable.hash(into:)();
          v30 = v45;
        }
      }

      (*v30)(v29, v28);
LABEL_5:
      result = outlined destroy of PromptCompletion.FileContent(v21, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
      v24 += v27;
      --v22;
    }

    while (v22);
  }

  return result;
}

{
  v74 = type metadata accessor for PromptCompletion.FileContent(0);
  v3 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v86 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for PromptCompletion.URLCitation(0);
  v8 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v85);
  v84 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v10 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PromptCompletion.Annotation(0);
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PromptCompletion.Content(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for PromptCompletion.Segment(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21 - 8);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 16);
  result = MEMORY[0x1AC5A6570](v27, v24);
  if (v27)
  {
    v29 = v27;
    v30 = a2 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v83 = *(v22 + 72);
    v31 = 0;
    v78 = v29;
    v80 = v30;
    v81 = v17;
    v71 = v26;
    v72 = v20;
    do
    {
      outlined init with copy of PromptCompletion.Content(v30 + v83 * v31, v26, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of PromptCompletion.Content(v26, v20, type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v54 = v73;
          _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v20, v73, type metadata accessor for PromptCompletion.FileContent);
          MEMORY[0x1AC5A6570](2);
          type metadata accessor for URL();
          lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
          dispatch thunk of Hashable.hash(into:)();
          v55 = v74;
          v56 = (v54 + *(v74 + 20));
          v57 = *v56;
          v58 = v56[1];
          String.hash(into:)();
          v59 = (v54 + *(v55 + 24));
          v60 = *v59;
          v61 = v59[1];
          String.hash(into:)();
          MEMORY[0x1AC5A65A0](*(v54 + *(v55 + 28)));
          outlined destroy of PromptCompletion.FileContent(v26, type metadata accessor for PromptCompletion.Segment);
          v36 = type metadata accessor for PromptCompletion.FileContent;
          v37 = v54;
          v29 = v78;
        }

        else
        {
          v32 = v31;
          v33 = *v20;
          v34 = v20[1];
          MEMORY[0x1AC5A6570](3);
          Data.hash(into:)();
          v35 = v34;
          v31 = v32;
          v30 = v80;
          outlined consume of Data._Representation(v33, v35);
          v36 = type metadata accessor for PromptCompletion.Segment;
          v37 = v26;
        }

        result = outlined destroy of PromptCompletion.FileContent(v37, v36);
        v17 = v81;
      }

      else
      {
        v82 = v31;
        if (EnumCaseMultiPayload)
        {
          v62 = v17;
          v63 = *v20;
          v64 = v20[1];
          MEMORY[0x1AC5A6570](1);
          Data.hash(into:)();
          v65 = v63;
          v17 = v62;
          v30 = v80;
          outlined consume of Data._Representation(v65, v64);
          result = outlined destroy of PromptCompletion.FileContent(v26, type metadata accessor for PromptCompletion.Segment);
          v31 = v82;
        }

        else
        {
          v40 = *v20;
          v39 = v20[1];
          v42 = v20[2];
          v41 = v20[3];
          v76 = v20[4];
          v77 = v41;
          MEMORY[0x1AC5A6570](0);
          v75 = v39;
          String.hash(into:)();
          MEMORY[0x1AC5A6570](*(v42 + 16));
          v79 = v42;
          v43 = *(v42 + 16);
          if (v43)
          {
            v44 = *(v70 + 20);
            v45 = v79 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
            v46 = *(v69 + 72);
            do
            {
              outlined init with copy of PromptCompletion.Content(v45, v16, type metadata accessor for PromptCompletion.Annotation);
              MEMORY[0x1AC5A6570](*v16);
              outlined init with copy of PromptCompletion.Content(v16 + v44, v12, type metadata accessor for PromptCompletion.Annotation.Type);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                v47 = v86;
                _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v12, v86, type metadata accessor for PromptCompletion.DocumentCitation);
                MEMORY[0x1AC5A6570](1);
                type metadata accessor for DocumentResourceIdentifier();
                lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
                dispatch thunk of Hashable.hash(into:)();
                outlined destroy of PromptCompletion.FileContent(v47, type metadata accessor for PromptCompletion.DocumentCitation);
                v48 = type metadata accessor for PromptCompletion.Annotation;
                v49 = v16;
              }

              else
              {
                v50 = v84;
                _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v12, v84, type metadata accessor for PromptCompletion.URLCitation);
                MEMORY[0x1AC5A6570](0);
                v51 = *v50;
                v52 = v50[1];
                String.hash(into:)();
                v53 = *(v85 + 20);
                type metadata accessor for URL();
                lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
                dispatch thunk of Hashable.hash(into:)();
                outlined destroy of PromptCompletion.FileContent(v16, type metadata accessor for PromptCompletion.Annotation);
                v48 = type metadata accessor for PromptCompletion.URLCitation;
                v49 = v50;
              }

              outlined destroy of PromptCompletion.FileContent(v49, v48);
              v45 += v46;
              --v43;
            }

            while (v43);
          }

          v66 = v76;
          if (v76 >> 60 == 15)
          {
            Hasher._combine(_:)(0);
            v17 = v81;
            v31 = v82;
            v26 = v71;
            v20 = v72;
            v67 = v80;
            v68 = v77;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v68 = v77;
            Data.hash(into:)();
            v17 = v81;
            v31 = v82;
            v26 = v71;
            v20 = v72;
            v67 = v80;
          }

          outlined consume of Data?(v68, v66);
          result = outlined destroy of PromptCompletion.FileContent(v26, type metadata accessor for PromptCompletion.Segment);
          v30 = v67;
          v29 = v78;
        }
      }

      ++v31;
    }

    while (v31 != v29);
  }

  return result;
}

{
  v3 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PromptCompletion.URLCitation(0);
  v7 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v10 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PromptCompletion.Annotation(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a2 + 16);
  result = MEMORY[0x1AC5A6570](v18);
  if (v18)
  {
    v29 = *(v13 + 20);
    v20 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v21 = *(v14 + 72);
    do
    {
      outlined init with copy of PromptCompletion.Content(v20, v17, type metadata accessor for PromptCompletion.Annotation);
      MEMORY[0x1AC5A6570](*v17);
      outlined init with copy of PromptCompletion.Content(v17 + v29, v12, type metadata accessor for PromptCompletion.Annotation.Type);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v12, v6, type metadata accessor for PromptCompletion.DocumentCitation);
        MEMORY[0x1AC5A6570](1);
        type metadata accessor for DocumentResourceIdentifier();
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178]);
        dispatch thunk of Hashable.hash(into:)();
        outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptCompletion.DocumentCitation);
        v22 = type metadata accessor for PromptCompletion.Annotation;
        v23 = v17;
      }

      else
      {
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v12, v9, type metadata accessor for PromptCompletion.URLCitation);
        MEMORY[0x1AC5A6570](0);
        v24 = *v9;
        v25 = v9[1];
        String.hash(into:)();
        v26 = *(v28 + 20);
        type metadata accessor for URL();
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
        dispatch thunk of Hashable.hash(into:)();
        outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for PromptCompletion.Annotation);
        v22 = type metadata accessor for PromptCompletion.URLCitation;
        v23 = v9;
      }

      result = outlined destroy of PromptCompletion.FileContent(v23, v22);
      v20 += v21;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t specialized Array<A>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v38 = type metadata accessor for Prompt.ToolCall();
  v35 = *(v38 - 8);
  v4 = *(v35 + 64);
  v5 = MEMORY[0x1EEE9AC00](v38);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1AC5A6570](v8, v5);
  v39 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = a2 + 32;
    v12 = (v35 + 8);
    v36 = v35 + 16;
    v37 = v11;
    do
    {
      v45 = v10;
      v16 = (v37 + 56 * v10);
      v17 = *v16;
      v18 = v16[1];
      v19 = v7;
      v20 = a1;
      v21 = v16[3];
      v23 = v16[4];
      v22 = v16[5];
      v24 = v16[6];
      v40 = v16[2];

      v42 = v21;
      v47 = v23;
      outlined copy of FinishReason(v21, v23);
      v43 = v24;
      v44 = v22;
      outlined copy of Data._Representation(v22, v24);
      v41 = v17;
      specialized Array<A>.hash(into:)(v20, v17);
      MEMORY[0x1AC5A6570](*(v18 + 16));
      v46 = v18;
      v25 = *(v18 + 16);
      v26 = v38;
      v27 = v19;
      v28 = v20;
      if (v25)
      {
        v29 = v46 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
        v30 = *(v35 + 72);
        v31 = *(v35 + 16);
        do
        {
          v31(v27, v29, v26);
          lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall, MEMORY[0x1E69DA810]);
          dispatch thunk of Hashable.hash(into:)();
          (*v12)(v27, v26);
          v29 += v30;
          --v25;
        }

        while (v25);
      }

      v7 = v27;
      a1 = v28;
      v32 = v40;
      if (v40)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v32);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v33 = v42;
      if (v47)
      {
        if (v47 == 1)
        {
          v13 = 2;
        }

        else
        {
          if (v47 != 2)
          {
            MEMORY[0x1AC5A6570](1);
            String.hash(into:)();
            goto LABEL_5;
          }

          v13 = 3;
        }
      }

      else
      {
        v13 = 0;
      }

      MEMORY[0x1AC5A6570](v13);
LABEL_5:
      v14 = v44;
      v10 = v45 + 1;
      v15 = v43;
      Data.hash(into:)();

      outlined consume of FinishReason(v33, v47);
      result = outlined consume of Data._Representation(v14, v15);
    }

    while (v10 != v39);
  }

  return result;
}

void specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for Prompt.ToolCall();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
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
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    outlined init with take of Any(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
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
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
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

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x1AC5A2EC0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized static FinishReason.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (!v5)
      {
        outlined consume of FinishReason(*a1, 0);
        v6 = v4;
        v7 = 0;
        goto LABEL_15;
      }

      goto LABEL_11;
    case 1uLL:
      if (v5 == 1)
      {
        v8 = 1;
        outlined consume of FinishReason(*a1, 1uLL);
        outlined consume of FinishReason(v4, 1uLL);
        return v8;
      }

      goto LABEL_11;
    case 2uLL:
      if (v5 == 2)
      {
        outlined consume of FinishReason(*a1, 2uLL);
        v6 = v4;
        v7 = 2;
LABEL_15:
        outlined consume of FinishReason(v6, v7);
        return 1;
      }

      goto LABEL_11;
  }

  if (v5 < 3)
  {
LABEL_11:
    outlined copy of FinishReason(*a2, *(a2 + 8));
    outlined copy of FinishReason(v2, v3);
    outlined consume of FinishReason(v2, v3);
    outlined consume of FinishReason(v4, v5);
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    outlined copy of FinishReason(*a1, v3);
    outlined copy of FinishReason(v2, v3);
    outlined consume of FinishReason(v2, v3);
    v6 = v2;
    v7 = v3;
    goto LABEL_15;
  }

  v10 = *a1;
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of FinishReason(v4, v5);
  outlined copy of FinishReason(v2, v3);
  outlined consume of FinishReason(v2, v3);
  outlined consume of FinishReason(v4, v5);
  return v11 & 1;
}

uint64_t specialized static ModelInformation.Asset.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v6 && (v2 == v7 && v4 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:

  return specialized static Data.== infix(_:_:)(v3, v5, v8, v9);
}

uint64_t specialized static PromptCompletion.Annotation.Type.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PromptCompletion.URLCitation(0);
  v8 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v30 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMd, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - v20;
  v23 = *(v22 + 56);
  outlined init with copy of PromptCompletion.Content(a1, &v30 - v20, type metadata accessor for PromptCompletion.Annotation.Type);
  outlined init with copy of PromptCompletion.Content(a2, &v21[v23], type metadata accessor for PromptCompletion.Annotation.Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of PromptCompletion.Content(v21, v17, type metadata accessor for PromptCompletion.Annotation.Type);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v21[v23], v10, type metadata accessor for PromptCompletion.URLCitation);
      v27 = *v17 == *v10 && v17[1] == v10[1];
      if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v28 = *(v31 + 20);
        if (static URL.== infix(_:_:)())
        {
          outlined destroy of PromptCompletion.FileContent(v10, type metadata accessor for PromptCompletion.URLCitation);
          outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for PromptCompletion.URLCitation);
          outlined destroy of PromptCompletion.FileContent(v21, type metadata accessor for PromptCompletion.Annotation.Type);
          v24 = 1;
          return v24 & 1;
        }
      }

      outlined destroy of PromptCompletion.FileContent(v10, type metadata accessor for PromptCompletion.URLCitation);
      outlined destroy of PromptCompletion.FileContent(v17, type metadata accessor for PromptCompletion.URLCitation);
      outlined destroy of PromptCompletion.FileContent(v21, type metadata accessor for PromptCompletion.Annotation.Type);
LABEL_16:
      v24 = 0;
      return v24 & 1;
    }

    v25 = type metadata accessor for PromptCompletion.URLCitation;
    v26 = v17;
LABEL_7:
    outlined destroy of PromptCompletion.FileContent(v26, v25);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMd, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMR);
    goto LABEL_16;
  }

  outlined init with copy of PromptCompletion.Content(v21, v14, type metadata accessor for PromptCompletion.Annotation.Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25 = type metadata accessor for PromptCompletion.DocumentCitation;
    v26 = v14;
    goto LABEL_7;
  }

  _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v21[v23], v7, type metadata accessor for PromptCompletion.DocumentCitation);
  v24 = static DocumentResourceIdentifier.== infix(_:_:)();
  outlined destroy of PromptCompletion.FileContent(v7, type metadata accessor for PromptCompletion.DocumentCitation);
  outlined destroy of PromptCompletion.FileContent(v14, type metadata accessor for PromptCompletion.DocumentCitation);
  outlined destroy of PromptCompletion.FileContent(v21, type metadata accessor for PromptCompletion.Annotation.Type);
  return v24 & 1;
}

BOOL specialized static PromptCompletion.FileContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PromptCompletion.FileContent(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v10 = v4[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), v14 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

BOOL specialized static PromptCompletion.TextContent.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16PromptCompletionV10AnnotationV_Tt1g5(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      outlined copy of Data?(v4, v3);
      outlined copy of Data?(v5, v7);
      outlined consume of Data?(v4, v3);
      return 1;
    }

    goto LABEL_11;
  }

  if (v7 >> 60 == 15)
  {
LABEL_11:
    outlined copy of Data?(v4, v3);
    outlined copy of Data?(v5, v7);
    outlined consume of Data?(v4, v3);
    outlined consume of Data?(v5, v7);
    return 0;
  }

  outlined copy of Data?(v4, v3);
  outlined copy of Data?(v5, v7);
  v10 = specialized static Data.== infix(_:_:)(v4, v3, v5, v7);
  outlined consume of Data?(v5, v7);
  outlined consume of Data?(v4, v3);
  return (v10 & 1) != 0;
}

uint64_t specialized static PromptCompletion.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v63 = type metadata accessor for PromptCompletion.FileContent(0);
  v4 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PromptCompletion.Content(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v63 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v63 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV7ContentO_AEtMd, &_s15TokenGeneration16PromptCompletionV7ContentO_AEtMR);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v63 - v21;
  v24 = (&v63 + *(v23 + 56) - v21);
  outlined init with copy of PromptCompletion.Content(a1, &v63 - v21, type metadata accessor for PromptCompletion.Content);
  outlined init with copy of PromptCompletion.Content(a2, v24, type metadata accessor for PromptCompletion.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of PromptCompletion.Content(v22, v18, type metadata accessor for PromptCompletion.Content);
      v26 = v18[1];
      v27 = v18[2];
      v29 = v18[3];
      v28 = v18[4];
      if (swift_getEnumCaseMultiPayload())
      {

        outlined consume of Data?(v29, v28);
LABEL_29:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, &_s15TokenGeneration16PromptCompletionV7ContentO_AEtMd, &_s15TokenGeneration16PromptCompletionV7ContentO_AEtMR);
LABEL_30:
        v43 = 0;
        return v43 & 1;
      }

      v56 = *v18;
      v57 = *v24;
      v58 = v24[1];
      v59 = v24[2];
      v60 = v24[3];
      v61 = v24[4];
      v66[0] = v56;
      v66[1] = v26;
      v66[2] = v27;
      v66[3] = v29;
      v66[4] = v28;
      v65[0] = v57;
      v65[1] = v58;
      v65[2] = v59;
      v65[3] = v60;
      v65[4] = v61;
      v43 = specialized static PromptCompletion.TextContent.== infix(_:_:)(v66, v65);

      outlined consume of Data?(v60, v61);

      outlined consume of Data?(v29, v28);
LABEL_33:
      outlined destroy of PromptCompletion.FileContent(v22, type metadata accessor for PromptCompletion.Content);
      return v43 & 1;
    }

    outlined init with copy of PromptCompletion.Content(v22, v15, type metadata accessor for PromptCompletion.Content);
    v45 = *v15;
    v44 = v15[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = *v24;
      v47 = v24[1];
      v43 = specialized static Data.== infix(_:_:)(v45, v44, v46, v47);
      outlined consume of Data._Representation(v46, v47);
      v48 = v45;
      v49 = v44;
LABEL_24:
      outlined consume of Data._Representation(v48, v49);
      goto LABEL_33;
    }

    v54 = v45;
    v55 = v44;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 2)
  {
    outlined init with copy of PromptCompletion.Content(v22, v9, type metadata accessor for PromptCompletion.Content);
    v50 = *v9;
    v51 = v9[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v52 = *v24;
      v53 = v24[1];
      v43 = specialized static Data.== infix(_:_:)(v50, v51, v52, v53);
      outlined consume of Data._Representation(v52, v53);
      v48 = v50;
      v49 = v51;
      goto LABEL_24;
    }

    v54 = v50;
    v55 = v51;
LABEL_28:
    outlined consume of Data._Representation(v54, v55);
    goto LABEL_29;
  }

  outlined init with copy of PromptCompletion.Content(v22, v12, type metadata accessor for PromptCompletion.Content);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of PromptCompletion.FileContent(v12, type metadata accessor for PromptCompletion.FileContent);
    goto LABEL_29;
  }

  v30 = v64;
  _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v24, v64, type metadata accessor for PromptCompletion.FileContent);
  v31 = static URL.== infix(_:_:)();
  v32 = v63;
  if ((v31 & 1) == 0)
  {
    goto LABEL_31;
  }

  v33 = *(v63 + 20);
  v34 = *&v12[v33];
  v35 = *&v12[v33 + 8];
  v36 = (v30 + v33);
  v37 = v34 == *v36 && v35 == v36[1];
  if (!v37 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v38 = *(v32 + 24), v39 = *&v12[v38], v40 = *&v12[v38 + 8], v41 = (v30 + v38), v39 == *v41) ? (v42 = v40 == v41[1]) : (v42 = 0), !v42 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v12[*(v32 + 28)] != *(v30 + *(v32 + 28))))
  {
LABEL_31:
    outlined destroy of PromptCompletion.FileContent(v30, type metadata accessor for PromptCompletion.FileContent);
    outlined destroy of PromptCompletion.FileContent(v12, type metadata accessor for PromptCompletion.FileContent);
    outlined destroy of PromptCompletion.FileContent(v22, type metadata accessor for PromptCompletion.Content);
    goto LABEL_30;
  }

  outlined destroy of PromptCompletion.FileContent(v30, type metadata accessor for PromptCompletion.FileContent);
  outlined destroy of PromptCompletion.FileContent(v12, type metadata accessor for PromptCompletion.FileContent);
  outlined destroy of PromptCompletion.FileContent(v22, type metadata accessor for PromptCompletion.Content);
  v43 = 1;
  return v43 & 1;
}

BOOL specialized static PromptCompletion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Prompt.Rendering();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSg_AFtMd, &_s15TokenGeneration6PromptV9RenderingVSg_AFtMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v36 - v13;
  v15 = *a1;
  v14 = a1[1];
  v16 = a1[2];
  v18 = *a2;
  v17 = a2[1];
  v19 = a2[2];

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16ModelInformationV5AssetV_Tt1g5(v15, v18) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (!v16)
  {

    if (!v19)
    {
      goto LABEL_13;
    }

LABEL_8:

LABEL_9:

    return 0;
  }

  if (!v19)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v14 == v17 && v16 == v19)
  {

LABEL_13:

    goto LABEL_15;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  v22 = a2[3];
  if (!a1[3])
  {
    if (!v22)
    {

      goto LABEL_23;
    }

    v25 = a2[3];
    goto LABEL_21;
  }

  v23 = a1[3];
  if (!v22)
  {
LABEL_21:

    goto LABEL_9;
  }

  swift_bridgeObjectRetain_n();

  v24 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOTt1g5(v23, v22);
  swift_bridgeObjectRelease_n();

  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16PromptCompletionV9CandidateV_Tt1g5(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (a1[5] == a2[5] && a1[6] == a2[6])
  {
    if (specialized static Data.== infix(_:_:)(a1[7], a1[8], a2[7], a2[8]))
    {
      v26 = *(type metadata accessor for PromptCompletion(0) + 36);
      v27 = *(v11 + 48);
      v28 = v37;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v26, v37, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v26, v28 + v27, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
      v30 = v38;
      v29 = v39;
      v31 = *(v38 + 48);
      if (v31(v28, 1, v39) == 1)
      {
        if (v31(v28 + v27, 1, v29) == 1)
        {
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
          return 1;
        }
      }

      else
      {
        outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v10, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
        if (v31(v28 + v27, 1, v29) != 1)
        {
          v32 = v28 + v27;
          v33 = v36;
          (*(v30 + 32))(v36, v32, v29);
          lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838]);
          v34 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35 = *(v30 + 8);
          v35(v33, v29);
          v35(v10, v29);
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
          return (v34 & 1) != 0;
        }

        (*(v30 + 8))(v10, v29);
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, &_s15TokenGeneration6PromptV9RenderingVSg_AFtMd, &_s15TokenGeneration6PromptV9RenderingVSg_AFtMR);
    }

    return 0;
  }

  return result;
}

uint64_t specialized static PromptCompletion.Candidate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v15 = a1[6];
  v16 = a1[5];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration31Promptkit_Wireformat_ToolResultV_Tt1g5Tm(*a1, *a2, type metadata accessor for PromptCompletion.Segment, type metadata accessor for PromptCompletion.Segment, specialized static PromptCompletion.Content.== infix(_:_:), type metadata accessor for PromptCompletion.Segment) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration11ModelBundleV_Tt1g5Tm(v2, v6, MEMORY[0x1E69DA810], &lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall, MEMORY[0x1E69DA810], MEMORY[0x1E69DA820]) & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v8)
    {

      goto LABEL_10;
    }

LABEL_8:

    return 0;
  }

  if (!v8)
  {
    goto LABEL_8;
  }

  swift_bridgeObjectRetain_n();

  v12 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOTt1g5(v4, v8);
  swift_bridgeObjectRelease_n();

  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v19 = v3;
  v20 = v5;
  v17 = v7;
  v18 = v10;
  outlined copy of FinishReason(v3, v5);
  outlined copy of FinishReason(v7, v10);
  v13 = specialized static FinishReason.== infix(_:_:)(&v19, &v17);
  outlined consume of FinishReason(v17, v18);
  outlined consume of FinishReason(v19, v20);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v16, v15, v9, v11);
}

uint64_t _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with take of PromptCompletion.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PromptCompletion.FileContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  specialized LazyMapSequence.Iterator.next()(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  outlined init with take of Any(v46, v44);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    v22 = *a5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    specialized _NativeDictionary.copy()();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    outlined init with take of Any(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = outlined init with take of Any(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        outlined init with take of Any(v46, v44);
        v33 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, 1);
          v38 = *a5;
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          outlined init with take of Any(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = outlined init with take of Any(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        specialized LazyMapSequence.Iterator.next()(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    outlined consume of [String : String].Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t outlined consume of FinishReason?(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return outlined consume of FinishReason(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.Candidate and conformance PromptCompletion.Candidate()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.Candidate and conformance PromptCompletion.Candidate;
  if (!lazy protocol witness table cache variable for type PromptCompletion.Candidate and conformance PromptCompletion.Candidate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.Candidate and conformance PromptCompletion.Candidate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.TextContent and conformance PromptCompletion.TextContent()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.TextContent and conformance PromptCompletion.TextContent;
  if (!lazy protocol witness table cache variable for type PromptCompletion.TextContent and conformance PromptCompletion.TextContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.TextContent and conformance PromptCompletion.TextContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.ImageContent and conformance PromptCompletion.ImageContent()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.ImageContent and conformance PromptCompletion.ImageContent;
  if (!lazy protocol witness table cache variable for type PromptCompletion.ImageContent and conformance PromptCompletion.ImageContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.ImageContent and conformance PromptCompletion.ImageContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.AudioContent and conformance PromptCompletion.AudioContent()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.AudioContent and conformance PromptCompletion.AudioContent;
  if (!lazy protocol witness table cache variable for type PromptCompletion.AudioContent and conformance PromptCompletion.AudioContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.AudioContent and conformance PromptCompletion.AudioContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.Moderation.Category and conformance PromptCompletion.Moderation.Category()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.Moderation.Category and conformance PromptCompletion.Moderation.Category;
  if (!lazy protocol witness table cache variable for type PromptCompletion.Moderation.Category and conformance PromptCompletion.Moderation.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.Moderation.Category and conformance PromptCompletion.Moderation.Category);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.Moderation.Probability and conformance PromptCompletion.Moderation.Probability()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.Moderation.Probability and conformance PromptCompletion.Moderation.Probability;
  if (!lazy protocol witness table cache variable for type PromptCompletion.Moderation.Probability and conformance PromptCompletion.Moderation.Probability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.Moderation.Probability and conformance PromptCompletion.Moderation.Probability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.Moderation and conformance PromptCompletion.Moderation()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.Moderation and conformance PromptCompletion.Moderation;
  if (!lazy protocol witness table cache variable for type PromptCompletion.Moderation and conformance PromptCompletion.Moderation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.Moderation and conformance PromptCompletion.Moderation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelInformation.Asset and conformance ModelInformation.Asset()
{
  result = lazy protocol witness table cache variable for type ModelInformation.Asset and conformance ModelInformation.Asset;
  if (!lazy protocol witness table cache variable for type ModelInformation.Asset and conformance ModelInformation.Asset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformation.Asset and conformance ModelInformation.Asset);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelInformation and conformance ModelInformation()
{
  result = lazy protocol witness table cache variable for type ModelInformation and conformance ModelInformation;
  if (!lazy protocol witness table cache variable for type ModelInformation and conformance ModelInformation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformation and conformance ModelInformation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Usage and conformance Usage()
{
  result = lazy protocol witness table cache variable for type Usage and conformance Usage;
  if (!lazy protocol witness table cache variable for type Usage and conformance Usage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Usage and conformance Usage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FinishReason and conformance FinishReason()
{
  result = lazy protocol witness table cache variable for type FinishReason and conformance FinishReason;
  if (!lazy protocol witness table cache variable for type FinishReason and conformance FinishReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReason and conformance FinishReason);
  }

  return result;
}

void type metadata completion function for PromptCompletion()
{
  type metadata accessor for PromptCompletion.Moderation?(319, &lazy cache variable for type metadata for PromptCompletion.Moderation?, &type metadata for PromptCompletion.Moderation, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PromptCompletion.Moderation?(319, &lazy cache variable for type metadata for [PromptCompletion.Candidate], &type metadata for PromptCompletion.Candidate, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Prompt.Rendering?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for PromptCompletion.Moderation?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PromptCompletion.Candidate(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for PromptCompletion.Candidate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletion.Content()
{
  result = type metadata accessor for PromptCompletion.FileContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletion.TextContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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