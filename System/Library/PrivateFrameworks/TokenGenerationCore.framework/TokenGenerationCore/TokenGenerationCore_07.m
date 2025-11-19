BOOL TokenGrammarRecognizer.partialMatch.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, v0 + *(v1 + 128), v3);
  v8 = (*(*(v2 - 8) + 48))(v7, 1, v2) != 1;
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t TokenGrammarRecognizer.fullMatch.getter()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, v0 + *(v1 + 128), v4);
  v9 = *(v3 - 8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(*(v2 + 88) + 16))(v3);
    v5 = v9;
    v4 = v3;
  }

  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

uint64_t TokenGrammarRecognizer.__allocating_init(inputRecognizer:vocabManager:lastConsumedTokenID:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(a1, a2, a3, a4 & 1);
  return v11;
}

uint64_t *TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  *(v4 + 16) = 0;
  type metadata accessor for Lock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  pthread_mutex_init(v12, 0);
  v5[3] = v11;
  if (one-time initialization token for guided != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.guided);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    *v16 = 136315138;
    v32 = a4;
    v17 = *(a2 + 112);

    v19 = a3;
    v20 = MEMORY[0x1AC57C2C0](v18, MEMORY[0x1E69E6530]);
    v31 = a2;
    v21 = a1;
    v23 = v22;

    v24 = v20;
    a3 = v19;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v33);
    a1 = v21;
    a2 = v31;

    *(v16 + 4) = v25;
    a4 = v32;
    _os_log_impl(&dword_1A8E85000, v14, v15, "Building token grammar recognizer with stop tokens: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1AC57DBF0](v30, -1, -1);
    MEMORY[0x1AC57DBF0](v16, -1, -1);
  }

  v5[4] = a2;
  v26 = *(*v5 + 128);
  v27 = *(v10 + 80);
  v28 = type metadata accessor for Optional();
  (*(*(v28 - 8) + 32))(v5 + v26, a1, v28);
  v5[5] = a3;
  *(v5 + 48) = a4 & 1;
  return v5;
}

char *TokenGrammarRecognizer.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(*v0 + 128);
  v5 = *(v1 + 80);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(&v0[v4], v6);
  return v0;
}

uint64_t TokenGrammarRecognizer.__deallocating_deinit()
{
  TokenGrammarRecognizer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TokenizerAwareGrammarRecognizer.childRecognizer(consumingTokenID:) in conformance TokenGrammarRecognizer<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = TokenGrammarRecognizer.childRecognizer(consumingTokenID:)(a1);
  *a2 = result;
  return result;
}

uint64_t outlined destroy of VocabularyManager.PrefixLookup(uint64_t a1)
{
  v2 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        specialized _NativeDictionary.copy()();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = specialized _NativeDictionary._delete(at:)(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(__int16 a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x100) != 0)
  {
    v9 = *v2;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v11, v14);
      *v3 = v14;
    }
  }

  else
  {
    v4 = *v2;
    v5 = a1;
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, a2, v7);
    *v2 = v15;
  }

  return result;
}

unint64_t specialized Collection.count.getter(unint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  return String.UnicodeScalarView.distance(from:to:)(0xFuLL, v3 | (v2 << 16), a1, a2);
}

{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = _StringGuts.validateInclusiveScalarIndex(_:)(0xFuLL, a1, a2);
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(v6, a1, a2);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v14 = result >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v28 = a1;
          v29 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_40;
  }

  return 0;
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = _StringObject.sharedUTF8.getter();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

unint64_t specialized Sequence.allSatisfy(_:)(uint64_t (*a1)(unint64_t *), uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v8 = a4 >> 14;
  v30 = a3 >> 14;
  if (a3 >> 14 == a4 >> 14)
  {
LABEL_53:
    v25 = 1;
    return v25 & 1;
  }

  v11 = a3;
  v12 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v26 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a6 & 0xFFFFFFFFFFFFFFLL;
  v14 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a6) & 0xF;
  }

  v28 = v14;

  v33 = v13;
  while (1)
  {
    v16 = v11 & 0xC;
    v17 = (v11 & 1) == 0 || v16 == v13;
    v18 = v17;
    if (!v17)
    {
      break;
    }

    result = v11;
    if (v16 == v13)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a5, a6);
    }

    if (result >> 14 < v30 || result >> 14 >= v8)
    {
      goto LABEL_56;
    }

    if ((result & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(result, a5, a6);
    }

LABEL_23:
    if ((a6 & 0x1000000000000000) != 0)
    {
      result = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v19 = result;
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((a6 & 0x2000000000000000) != 0)
      {
        v31 = a5;
        v32 = v27;
      }

      else if ((a5 & 0x1000000000000000) == 0)
      {
        _StringObject.sharedUTF8.getter();
      }

      result = _decodeScalar(_:startingAt:)();
      v19 = result;
      if (!v18)
      {
LABEL_28:
        if (v28 <= v11 >> 16)
        {
          goto LABEL_58;
        }

LABEL_36:
        if ((a6 & 0x1000000000000000) != 0)
        {
          goto LABEL_46;
        }

        goto LABEL_37;
      }
    }

    if (v16 == v33)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, a5, a6);
      v11 = result;
    }

    if (v28 <= v11 >> 16)
    {
      goto LABEL_57;
    }

    if (v11)
    {
      goto LABEL_36;
    }

    v11 = v11 & 0xC | _StringGuts.scalarAlignSlow(_:)(v11, a5, a6) & 0xFFFFFFFFFFFFFFF3 | 1;
    if ((a6 & 0x1000000000000000) != 0)
    {
LABEL_46:
      v11 = String.UnicodeScalarView._foreignIndex(after:)();
      goto LABEL_47;
    }

LABEL_37:
    v20 = v11 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v31 = a5;
      v32 = v27;
      v22 = *(&v31 + v20);
    }

    else
    {
      v21 = v26;
      if ((a5 & 0x1000000000000000) == 0)
      {
        v21 = _StringObject.sharedUTF8.getter();
      }

      v22 = *(v21 + v20);
    }

    v23 = v22;
    v24 = __clz(v22 ^ 0xFF) - 24;
    if (v23 >= 0)
    {
      LOBYTE(v24) = 1;
    }

    v11 = ((v20 + v24) << 16) | 5;
LABEL_47:
    LODWORD(v31) = v19;
    result = a1(&v31);
    if (v7)
    {

      return v25 & 1;
    }

    if ((result & 1) == 0)
    {

      v25 = 0;
      return v25 & 1;
    }

    v13 = v33;
    if (v8 == v11 >> 14)
    {

      goto LABEL_53;
    }
  }

  if (v11 >> 14 >= v30)
  {
    result = v11;
    if (v11 >> 14 < v8)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t VocabularyManager.prefixLookUp.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMd, &_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC19TokenGenerationCore17VocabularyManager____lazy_storage___prefixLookUp;
  swift_beginAccess();
  outlined init with copy of VocabularyManager.PrefixLookup?(v1 + v10, v9);
  v11 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return outlined init with take of VocabularyManager.PrefixLookup(v9, a1);
  }

  outlined destroy of VocabularyManager.PrefixLookup?(v9);
  VocabularyManager.processTokenizerVocab()(a1);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_2(a1, v7, type metadata accessor for VocabularyManager.PrefixLookup);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  outlined assign with take of VocabularyManager.PrefixLookup?(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t specialized Collection<>.unionedCharacterSet()(uint64_t a1)
{
  v2 = type metadata accessor for TerminalSymbol(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CharacterSet.init()();
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (v8 + 32);
    v15 = (v8 + 8);
    v16 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v17 = *(v3 + 72);
    do
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_2(v16, v6, type metadata accessor for TerminalSymbol);
      result = swift_getEnumCaseMultiPayload();
      if ((result - 1) < 2)
      {
        (*v14)(v11, v6, v7);
        CharacterSet.formUnion(_:)();
        result = (*v15)(v11, v7);
      }

      else
      {
        if (result)
        {
          __break(1u);
          return result;
        }

        v18 = *v6;
        result = CharacterSet.insert(_:)();
      }

      v16 += v17;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t *specialized Sequence.sorted(by:)(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4)
  {
    v7 = result;
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(a2 - result, 0);
    result = specialized Sequence._copyContents(initializing:)(v10, (v8 + 32), v4, v7, a2);
    if (result == v4)
    {
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v11 = v8;
  specialized MutableCollection<>.sort(by:)(&v11, a3);
  v9 = v11;
  if (v3)
  {
  }

  return v9;
}

char *VocabularyManager.extractCandidates(nextValidTerminals:afterStartWord:)(char **a1, uint64_t a2, int a3)
{
  v277 = a3;
  v267 = a1;
  v280 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  v5 = *(*(v280 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v280);
  v269 = (&v266 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v271 = (&v266 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v268 = (&v266 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v270 = (&v266 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v273 = (&v266 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v275 = (&v266 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v272 = (&v266 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v274 = (&v266 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v279 = (&v266 - v22);
  v294 = type metadata accessor for CharacterSet();
  v23 = *(v294 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v294);
  v289 = &v266 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v276 = &v266 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v290 = &v266 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v278 = &v266 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v288 = &v266 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v287 = &v266 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v286 = (&v266 - v38);
  MEMORY[0x1EEE9AC00](v37);
  v285 = &v266 - v39;
  v40 = type metadata accessor for TerminalSymbol(0);
  v41 = *(v40 - 1);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v266 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v3[11];
  v46 = v3[12];
  v281 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 8, v45);
  v47 = (*(v46 + 56))(v45, v46);
  v304 = 1;
  v305 = 0;
  v306 = 1;
  v48 = MEMORY[0x1E69E7CC0];
  v302 = MEMORY[0x1E69E7CC0];
  v303 = 0uLL;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 & ~(v47 >> 63), 0);
  v301 = MEMORY[0x1E69E7CD0];
  v49 = *(a2 + 16);
  v293 = v23;
  if (v49)
  {
    v50 = a2 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v51 = v41;
    v52 = (v23 + 32);
    v283 = v23 + 16;
    v282 = (v23 + 8);
    v53 = *(v51 + 72);
    v291 = MEMORY[0x1E69E7CC0];
    v292 = MEMORY[0x1E69E7CC0];
    v284 = v40;
    while (1)
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_2(v50, v44, type metadata accessor for TerminalSymbol);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          v75 = *v44;
          v76 = v279;
          VocabularyManager.prefixLookUp.getter(v279);
          v77 = *(v76 + *(v280 + 44));

          outlined destroy of TerminalSymbol(v76, type metadata accessor for VocabularyManager.PrefixLookup);
          if (!*(v77 + 16))
          {
            goto LABEL_255;
          }

          v78 = specialized __RawDictionaryStorage.find<A>(_:)(v75);
          if ((v79 & 1) == 0)
          {
            goto LABEL_255;
          }

          v80 = *(*(v77 + 56) + 8 * v78);

          ContiguousBitSet.insert(_:)(v80);
          goto LABEL_5;
        }

        v64 = *v52;
        v65 = v287;
        v66 = v294;
        (*v52)(v287, v44, v294);
        (*v283)(v288, v65, v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v292 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v292[2] + 1, 1, v292);
        }

        v68 = v292[2];
        v67 = v292[3];
        if (v68 >= v67 >> 1)
        {
          v292 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67 > 1, v68 + 1, 1, v292);
        }

        v69 = v293;
        v54 = v294;
        (*(v293 + 1))(v287, v294);
        v70 = v292;
        v292[2] = v68 + 1;
        v57 = v70 + ((v69[80] + 32) & ~v69[80]) + *(v69 + 9) * v68;
        v58 = &v308;
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v60 = *v44;
          if (*v44 > 0x7Fu)
          {
            v81 = (*v44 & 0x3F) << 8;
            if (v60 >= 0x800)
            {
              v82 = v60 >> 12;
              v83 = (v81 | (v60 >> 6) & 0x3F) << 8;
              v84 = HIWORD(v60);
              v61 = (((v83 | (v60 >> 12) & 0x3F) << 8) | (v60 >> 18)) - 2122219023;
              v85 = v82 + v83 + 8487393;
              if (!v84)
              {
                v61 = v85;
              }
            }

            else
            {
              v61 = (v60 >> 6) + v81 + 33217;
            }
          }

          else
          {
            v61 = v60 + 1;
          }

          v295 = ((v61 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v61) >> 3)))));
          v62 = static String._uncheckedFromUTF8(_:)();
          specialized Set._Variant.insert(_:)(&v295, v62, v63);

          goto LABEL_5;
        }

        v64 = *v52;
        v71 = v285;
        v72 = v294;
        (*v52)(v285, v44, v294);
        (*v283)(v286, v71, v72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v291 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v291[2] + 1, 1, v291);
        }

        v74 = v291[2];
        v73 = v291[3];
        if (v74 >= v73 >> 1)
        {
          v291 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v74 + 1, 1, v291);
        }

        v55 = v293;
        v54 = v294;
        (*(v293 + 1))(v285, v294);
        v56 = v291;
        v291[2] = v74 + 1;
        v57 = v56 + ((v55[80] + 32) & ~v55[80]) + *(v55 + 9) * v74;
        v58 = &v307;
      }

      v64(v57, *(v58 - 32), v54);
LABEL_5:
      v50 += v53;
      if (!--v49)
      {
        goto LABEL_29;
      }
    }
  }

  v291 = v48;
  v292 = v48;
LABEL_29:

  v87 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation12CharacterSetV_SayAFGTt0g5Tf4g_n(v86);

  v88 = 0;
  v90 = v87 + 56;
  v89 = *(v87 + 56);
  v285 = v87;
  v91 = 1 << *(v87 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & v89;
  v94 = (v91 + 63) >> 6;
  v95 = v293;
  v288 = v293 + 16;
  v287 = v293 + 32;
  v286 = (v293 + 8);
  v284 = MEMORY[0x1E69E7CC0];
  v96 = v277;
  if ((v92 & v89) == 0)
  {
    while (1)
    {
LABEL_34:
      v97 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        __break(1u);
        goto LABEL_224;
      }

      if (v97 >= v94)
      {
        break;
      }

      v93 = *(v90 + 8 * v97);
      ++v88;
      if (v93)
      {
        v88 = v97;
        goto LABEL_38;
      }
    }

    v174 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation12CharacterSetV_SayAFGTt0g5Tf4g_n(v173);

    v175 = 0;
    v177 = v174 + 56;
    v176 = *(v174 + 56);
    v290 = v174;
    v178 = 1 << *(v174 + 32);
    v179 = -1;
    if (v178 < 64)
    {
      v179 = ~(-1 << v178);
    }

    v93 = v179 & v176;
    v180 = (v178 + 63) >> 6;
    if ((v179 & v176) == 0)
    {
LABEL_128:
      while (1)
      {
        v181 = v175 + 1;
        if (__OFADD__(v175, 1))
        {
          break;
        }

        if (v181 >= v180)
        {

          v93 = v284;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_246;
          }

          goto LABEL_218;
        }

        v93 = *(v177 + 8 * v181);
        ++v175;
        if (v93)
        {
          v175 = v181;
          goto LABEL_132;
        }
      }

LABEL_224:
      __break(1u);
      goto LABEL_225;
    }

    while (1)
    {
LABEL_132:
      v182 = __clz(__rbit64(v93));
      v93 &= v93 - 1;
      v183 = v276;
      v184 = v294;
      (*(v95 + 2))(v276, *(v290 + 48) + *(v95 + 9) * (v182 | (v175 << 6)), v294);
      (*(v95 + 4))(v289, v183, v184);
      if (v96)
      {
        v185 = v270;
        VocabularyManager.prefixLookUp.getter(v270);
        v186 = v185[4];

        outlined destroy of TerminalSymbol(v185, type metadata accessor for VocabularyManager.PrefixLookup);
        if (*(v186 + 16) && (v187 = specialized __RawDictionaryStorage.find<A>(_:)(v289), (v188 & 1) != 0))
        {
          v285 = v180;
          v189 = *(v186 + 56) + 48 * v187;
          v190 = *v189;
          v191 = *(v189 + 8);
          v192 = *(v189 + 16);
          v193 = *(v189 + 24);
          v194 = *(v189 + 32);
          v195 = *(v189 + 40);

          v196 = v192;
          v197 = v191;

          v295 = v190;
          v296 = v191;
          v297 = v196;
          v298 = v193;
          v299 = v194;
          v300 = v195;
          if (v193 & 1) != 0 || (v195)
          {
            v96 = v277;
            v180 = v285;
            goto LABEL_145;
          }

          v96 = v277;
          v180 = v285;
          if ((v304 & 1) == 0)
          {
LABEL_164:
            if (v306)
            {
              goto LABEL_165;
            }

            v219 = *(&v303 + 1);
            if (v196 < *(&v303 + 1))
            {
              v219 = v196;
            }

            v285 = v219;
            if (v194 <= v305)
            {
              v220 = v305;
            }

            else
            {
              v220 = v194;
            }

            v221 = *(v302 + 2);
            if (v221 <= v194 / 64)
            {
              v222 = (v194 / 64 - v221 + 1);
              if (v222 < 0)
              {
                goto LABEL_254;
              }

              specialized ContiguousArray.append<A>(contentsOf:)(v222, 0);
            }

            v223 = v285 / 64;
            v224 = v220 + 63;
            v282 = v220;
            if (v220 >= 0)
            {
              v224 = v220;
            }

            v225 = v224 >> 6;
            if (v224 >> 6 < v223)
            {
              goto LABEL_250;
            }

            v226 = *(v190 + 2);
            if (v223 < v226)
            {
              v283 = (v190 + 32);
              v227 = v302;
              v228 = v226 - 1;
              do
              {
                if (v285 < -63)
                {
                  goto LABEL_236;
                }

                if (v223 >= *(v227 + 2))
                {
                  goto LABEL_238;
                }

                if (v223 >= *(v190 + 2))
                {
                  goto LABEL_241;
                }

                v229 = *&v227[8 * v223 + 32];
                v230 = *(v283 + 8 * v223);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v227 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v227);
                }

                if (v223 >= *(v227 + 2))
                {
                  goto LABEL_242;
                }

                v231 = vcnt_s8(v229);
                v231.i16[0] = vaddlv_u8(v231);
                v232 = v231.u32[0];
                v233 = &v227[8 * v223];
                *&v233[4] |= v230;
                v302 = v227;
                v234 = vcnt_s8(v233[4]);
                v234.i16[0] = vaddlv_u8(v234);
                v235 = v234.u32[0] - v232;
                v152 = __OFADD__(v303, v235);
                v236 = v303 + v235;
                if (v152)
                {
                  goto LABEL_245;
                }

                *&v303 = v236;
                if (v225 == v223)
                {
                  break;
                }

                v154 = v228 == v223++;
              }

              while (!v154);
            }

            *(&v303 + 1) = v285;
            v304 = 0;
            v305 = v282;
            v306 = 0;
            v96 = v277;
LABEL_146:
            v211 = v268;
            VocabularyManager.prefixLookUp.getter(v268);
            v212 = v211[5];
            goto LABEL_151;
          }
        }

        else
        {

          v296 = 0;
          v297 = 0;
          v298 = 1;
          v299 = 0;
          v300 = 1;
          v295 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
          v190 = v295;
          if (v298 & 1) != 0 || (v300)
          {
LABEL_145:

            goto LABEL_146;
          }

          v194 = v299;
          v197 = v296;
          v196 = v297;
          if ((v304 & 1) == 0)
          {
            goto LABEL_164;
          }
        }

LABEL_165:

        v302 = v190;
        *&v303 = v197;
        *(&v303 + 1) = v196;
        v304 = 0;
        v305 = v194;
        v306 = 0;
        goto LABEL_146;
      }

      v198 = v271;
      VocabularyManager.prefixLookUp.getter(v271);
      v199 = v198[2];

      outlined destroy of TerminalSymbol(v198, type metadata accessor for VocabularyManager.PrefixLookup);
      if (*(v199 + 16) && (v200 = specialized __RawDictionaryStorage.find<A>(_:)(v289), (v201 & 1) != 0))
      {
        v285 = v177;
        v202 = *(v199 + 56) + 48 * v200;
        v203 = *v202;
        v204 = *(v202 + 8);
        v205 = *(v202 + 16);
        v206 = *(v202 + 24);
        v207 = *(v202 + 32);
        v208 = *(v202 + 40);

        v209 = v205;
        v210 = v204;

        v295 = v203;
        v296 = v204;
        v297 = v209;
        v298 = v206;
        v299 = v207;
        v300 = v208;
        if ((v206 & 1) == 0 && (v208 & 1) == 0)
        {
          v96 = v277;
          v177 = v285;
          if (v304)
          {
LABEL_168:

            v302 = v203;
            *&v303 = v210;
            *(&v303 + 1) = v209;
            v304 = 0;
            v305 = v207;
            v306 = 0;
            goto LABEL_150;
          }

LABEL_167:
          if ((v306 & 1) == 0)
          {
            v237 = *(&v303 + 1);
            if (v209 < *(&v303 + 1))
            {
              v237 = v209;
            }

            v285 = v237;
            if (v207 <= v305)
            {
              v238 = v305;
            }

            else
            {
              v238 = v207;
            }

            v239 = *(v302 + 2);
            if (v239 <= v207 / 64)
            {
              v240 = (v207 / 64 - v239 + 1);
              if (v240 < 0)
              {
                goto LABEL_253;
              }

              specialized ContiguousArray.append<A>(contentsOf:)(v240, 0);
            }

            v241 = v285 / 64;
            v242 = v238 + 63;
            v282 = v238;
            if (v238 >= 0)
            {
              v242 = v238;
            }

            v243 = v242 >> 6;
            if (v242 >> 6 < v241)
            {
              goto LABEL_249;
            }

            v244 = *(v203 + 2);
            if (v241 < v244)
            {
              v283 = (v203 + 32);
              v245 = v302;
              v246 = v244 - 1;
              do
              {
                if (v285 < -63)
                {
                  goto LABEL_237;
                }

                if (v241 >= *(v245 + 2))
                {
                  goto LABEL_239;
                }

                if (v241 >= *(v203 + 2))
                {
                  goto LABEL_240;
                }

                v247 = *&v245[8 * v241 + 32];
                v248 = *(v283 + 8 * v241);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v245 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v245);
                }

                if (v241 >= *(v245 + 2))
                {
                  goto LABEL_243;
                }

                v249 = vcnt_s8(v247);
                v249.i16[0] = vaddlv_u8(v249);
                v250 = v249.u32[0];
                v251 = &v245[8 * v241];
                *&v251[4] |= v248;
                v302 = v245;
                v252 = vcnt_s8(v251[4]);
                v252.i16[0] = vaddlv_u8(v252);
                v253 = v252.u32[0] - v250;
                v152 = __OFADD__(v303, v253);
                v254 = v303 + v253;
                if (v152)
                {
                  goto LABEL_244;
                }

                *&v303 = v254;
                if (v243 == v241)
                {
                  break;
                }

                v154 = v246 == v241++;
              }

              while (!v154);
            }

            *(&v303 + 1) = v285;
            v304 = 0;
            v305 = v282;
            v306 = 0;
            v96 = v277;
            goto LABEL_150;
          }

          goto LABEL_168;
        }

        v96 = v277;
        v177 = v285;
      }

      else
      {

        v296 = 0;
        v297 = 0;
        v298 = 1;
        v299 = 0;
        v300 = 1;
        v295 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
        v203 = v295;
        if ((v298 & 1) == 0 && (v300 & 1) == 0)
        {
          v207 = v299;
          v210 = v296;
          v209 = v297;
          if (v304)
          {
            goto LABEL_168;
          }

          goto LABEL_167;
        }
      }

LABEL_150:
      v211 = v269;
      VocabularyManager.prefixLookUp.getter(v269);
      v212 = v211[3];
LABEL_151:

      outlined destroy of TerminalSymbol(v211, type metadata accessor for VocabularyManager.PrefixLookup);
      if (*(v212 + 16) && (v213 = specialized __RawDictionaryStorage.find<A>(_:)(v289), (v214 & 1) != 0))
      {
        v215 = *(*(v212 + 56) + 8 * v213);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v284 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v284[2] + 1, 1, v284);
        }

        v217 = v284[2];
        v216 = v284[3];
        if (v217 >= v216 >> 1)
        {
          v284 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v216 > 1), v217 + 1, 1, v284);
        }

        (*v286)(v289, v294);
        v218 = v284;
        v284[2] = v217 + 1;
        v218[v217 + 4] = v215;
        v95 = v293;
        if (!v93)
        {
          goto LABEL_128;
        }
      }

      else
      {

        (*v286)(v289, v294);
        v95 = v293;
        if (!v93)
        {
          goto LABEL_128;
        }
      }
    }
  }

  while (1)
  {
LABEL_38:
    v98 = __clz(__rbit64(v93));
    v93 &= v93 - 1;
    v99 = v278;
    v100 = v294;
    (*(v95 + 2))(v278, *(v285 + 48) + *(v95 + 9) * (v98 | (v88 << 6)), v294);
    (*(v95 + 4))(v290, v99, v100);
    if (v96)
    {
      v101 = v274;
      VocabularyManager.prefixLookUp.getter(v274);
      v102 = v101[8];

      outlined destroy of TerminalSymbol(v101, type metadata accessor for VocabularyManager.PrefixLookup);
      if (*(v102 + 16) && (v103 = specialized __RawDictionaryStorage.find<A>(_:)(v290), (v104 & 1) != 0))
      {
        v283 = v94;
        v105 = *(v102 + 56) + 48 * v103;
        v106 = *v105;
        v107 = *(v105 + 8);
        v108 = *(v105 + 16);
        v109 = *(v105 + 24);
        v110 = *(v105 + 32);
        v111 = *(v105 + 40);

        v112 = v108;
        v113 = v107;

        v295 = v106;
        v296 = v107;
        v297 = v112;
        v298 = v109;
        v299 = v110;
        v300 = v111;
        if (v109 & 1) != 0 || (v111)
        {
          v96 = v277;
          v94 = v283;
LABEL_51:

LABEL_52:
          v127 = v272;
          VocabularyManager.prefixLookUp.getter(v272);
          v128 = v127[9];
          goto LABEL_57;
        }

        v96 = v277;
        v94 = v283;
        if ((v304 & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      else
      {

        v296 = 0;
        v297 = 0;
        v298 = 1;
        v299 = 0;
        v300 = 1;
        v295 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
        v106 = v295;
        if (v298 & 1) != 0 || (v300)
        {
          goto LABEL_51;
        }

        v110 = v299;
        v113 = v296;
        v112 = v297;
        if ((v304 & 1) == 0)
        {
LABEL_70:
          if ((v306 & 1) == 0)
          {
            v135 = *(&v303 + 1);
            if (v112 < *(&v303 + 1))
            {
              v135 = v112;
            }

            v283 = v135;
            if (v110 <= v305)
            {
              v136 = v305;
            }

            else
            {
              v136 = v110;
            }

            v137 = *(v302 + 2);
            if (v137 <= v110 / 64)
            {
              v138 = (v110 / 64 - v137 + 1);
              if (v138 < 0)
              {
                goto LABEL_252;
              }

              specialized ContiguousArray.append<A>(contentsOf:)(v138, 0);
            }

            v139 = v283 / 64;
            v140 = v136 + 63;
            v280 = v136;
            if (v136 >= 0)
            {
              v140 = v136;
            }

            v141 = v140 >> 6;
            if (v140 >> 6 < v139)
            {
              goto LABEL_248;
            }

            v142 = *(v106 + 2);
            if (v139 < v142)
            {
              v282 = v106 + 32;
              v143 = v302;
              v144 = v142 - 1;
              while (1)
              {
                if (v283 < -63)
                {
                  goto LABEL_226;
                }

                if (v139 >= *(v143 + 2))
                {
                  goto LABEL_228;
                }

                if (v139 >= *(v106 + 2))
                {
                  goto LABEL_231;
                }

                v145 = *&v143[8 * v139 + 32];
                v146 = *&v282[8 * v139];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v143 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v143);
                }

                if (v139 >= *(v143 + 2))
                {
                  goto LABEL_232;
                }

                v147 = vcnt_s8(v145);
                v147.i16[0] = vaddlv_u8(v147);
                v148 = v147.u32[0];
                v149 = &v143[8 * v139];
                *&v149[4] |= v146;
                v302 = v143;
                v150 = vcnt_s8(v149[4]);
                v150.i16[0] = vaddlv_u8(v150);
                v151 = v150.u32[0] - v148;
                v152 = __OFADD__(v303, v151);
                v153 = v303 + v151;
                if (v152)
                {
                  break;
                }

                *&v303 = v153;
                if (v141 != v139)
                {
                  v154 = v144 == v139++;
                  if (!v154)
                  {
                    continue;
                  }
                }

                goto LABEL_98;
              }

              while (1)
              {
                __break(1u);
LABEL_236:
                __break(1u);
LABEL_237:
                __break(1u);
LABEL_238:
                __break(1u);
LABEL_239:
                __break(1u);
LABEL_240:
                __break(1u);
LABEL_241:
                __break(1u);
LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                v93 = specialized _ArrayBuffer._consumeAndCreateNew()(v93);
LABEL_218:
                v255 = MEMORY[0x1E69E7CC0];
                v256 = *(v93 + 16);
                v295 = (v93 + 32);
                v296 = v256;
                specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(&v295);
                v295 = v255;
                v257 = *(v93 + 16);
                if (!v257)
                {
                  break;
                }

                v258 = 0;
                while (v258 < *(v93 + 16))
                {
                  v259 = v258 + 1;
                  v260 = *(v93 + 32 + 8 * v258);

                  specialized static VocabularyManager.mergeSortedRanks(_:_:)(&v295, v260);

                  v258 = v259;
                  if (v257 == v259)
                  {
                    goto LABEL_222;
                  }
                }

LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                __break(1u);
LABEL_228:
                __break(1u);
LABEL_229:
                __break(1u);
LABEL_230:
                __break(1u);
LABEL_231:
                __break(1u);
LABEL_232:
                __break(1u);
LABEL_233:
                __break(1u);
LABEL_234:
                __break(1u);
              }

LABEL_222:

              result = v295;
              v262 = v304;
              v263 = v305;
              v264 = v306;
              v265 = v267;
              *v267 = v302;
              *(v265 + 1) = v303;
              *(v265 + 24) = v262;
              v265[4] = v263;
              *(v265 + 40) = v264;
              return result;
            }

LABEL_98:

            *(&v303 + 1) = v283;
            v304 = 0;
            v305 = v280;
            v306 = 0;
            v96 = v277;
            goto LABEL_52;
          }
        }
      }

      v302 = v106;
      *&v303 = v113;
      *(&v303 + 1) = v112;
      v304 = 0;
      v305 = v110;
      v306 = 0;
      goto LABEL_52;
    }

    v114 = v275;
    VocabularyManager.prefixLookUp.getter(v275);
    v115 = v114[6];

    outlined destroy of TerminalSymbol(v114, type metadata accessor for VocabularyManager.PrefixLookup);
    if (!*(v115 + 16))
    {
      break;
    }

    v116 = specialized __RawDictionaryStorage.find<A>(_:)(v290);
    if ((v117 & 1) == 0)
    {
      break;
    }

    v283 = v90;
    v118 = *(v115 + 56) + 48 * v116;
    v119 = *v118;
    v120 = *(v118 + 8);
    v121 = *(v118 + 16);
    v122 = *(v118 + 24);
    v123 = *(v118 + 32);
    v124 = *(v118 + 40);

    v125 = v121;
    v126 = v120;

    v295 = v119;
    v296 = v120;
    v297 = v125;
    v298 = v122;
    v299 = v123;
    v300 = v124;
    if ((v122 & 1) == 0 && (v124 & 1) == 0)
    {
      v96 = v277;
      v90 = v283;
      if ((v304 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_74;
    }

    v96 = v277;
    v90 = v283;
LABEL_55:

LABEL_56:
    v127 = v273;
    VocabularyManager.prefixLookUp.getter(v273);
    v128 = v127[7];
LABEL_57:

    outlined destroy of TerminalSymbol(v127, type metadata accessor for VocabularyManager.PrefixLookup);
    if (*(v128 + 16) && (v129 = specialized __RawDictionaryStorage.find<A>(_:)(v290), (v130 & 1) != 0))
    {
      v131 = *(*(v128 + 56) + 8 * v129);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v284 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v284[2] + 1, 1, v284);
      }

      v133 = v284[2];
      v132 = v284[3];
      if (v133 >= v132 >> 1)
      {
        v284 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v284);
      }

      (*v286)(v290, v294);
      v134 = v284;
      v284[2] = v133 + 1;
      v134[v133 + 4] = v131;
      v95 = v293;
      if (!v93)
      {
        goto LABEL_34;
      }
    }

    else
    {

      (*v286)(v290, v294);
      v95 = v293;
      if (!v93)
      {
        goto LABEL_34;
      }
    }
  }

  v296 = 0;
  v297 = 0;
  v298 = 1;
  v299 = 0;
  v300 = 1;
  v295 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v119 = v295;
  if (v298 & 1) != 0 || (v300)
  {
    goto LABEL_55;
  }

  v123 = v299;
  v126 = v296;
  v125 = v297;
  if (v304)
  {
    goto LABEL_74;
  }

LABEL_73:
  if (v306)
  {
LABEL_74:

    v302 = v119;
    *&v303 = v126;
    *(&v303 + 1) = v125;
    v304 = 0;
    v305 = v123;
    v306 = 0;
    goto LABEL_56;
  }

  v155 = *(&v303 + 1);
  if (v125 < *(&v303 + 1))
  {
    v155 = v125;
  }

  v283 = v155;
  if (v123 <= v305)
  {
    v156 = v305;
  }

  else
  {
    v156 = v123;
  }

  v157 = *(v302 + 2);
  if (v157 <= v123 / 64)
  {
    v158 = (v123 / 64 - v157 + 1);
    if (v158 < 0)
    {
      goto LABEL_251;
    }

    specialized ContiguousArray.append<A>(contentsOf:)(v158, 0);
  }

  v159 = v283 / 64;
  v160 = v156 + 63;
  v280 = v156;
  if (v156 >= 0)
  {
    v160 = v156;
  }

  v161 = v160 >> 6;
  if (v160 >> 6 >= v159)
  {
    v162 = *(v119 + 2);
    if (v159 < v162)
    {
      v282 = v119 + 32;
      v163 = v302;
      v164 = v162 - 1;
      do
      {
        if (v283 < -63)
        {
          goto LABEL_227;
        }

        if (v159 >= *(v163 + 2))
        {
          goto LABEL_229;
        }

        if (v159 >= *(v119 + 2))
        {
          goto LABEL_230;
        }

        v165 = *&v163[8 * v159 + 32];
        v166 = *&v282[8 * v159];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v163);
        }

        if (v159 >= *(v163 + 2))
        {
          goto LABEL_233;
        }

        v167 = vcnt_s8(v165);
        v167.i16[0] = vaddlv_u8(v167);
        v168 = v167.u32[0];
        v169 = &v163[8 * v159];
        *&v169[4] |= v166;
        v302 = v163;
        v170 = vcnt_s8(v169[4]);
        v170.i16[0] = vaddlv_u8(v170);
        v171 = v170.u32[0] - v168;
        v152 = __OFADD__(v303, v171);
        v172 = v303 + v171;
        if (v152)
        {
          goto LABEL_234;
        }

        *&v303 = v172;
        if (v161 == v159)
        {
          break;
        }

        v154 = v164 == v159++;
      }

      while (!v154);
    }

    *(&v303 + 1) = v283;
    v304 = 0;
    v305 = v280;
    v306 = 0;
    v96 = v277;
    goto LABEL_56;
  }

  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:

  __break(1u);
  return result;
}

Swift::Bool __swiftcall VocabularyManager.allPrefixesHaveStartOfWordTokenPair(terminals:)(Swift::OpaquePointer terminals)
{
  v34 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  v2 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v31 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v31 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  v16 = type metadata accessor for TerminalSymbol(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  rawValue = terminals._rawValue;
  v22 = *(terminals._rawValue + 2);
  if (v22)
  {
    v23 = rawValue + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v24 = *(v18 + 72);
    while (1)
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_2(v23, v20, type metadata accessor for TerminalSymbol);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        break;
      }

      outlined destroy of TerminalSymbol(v20, type metadata accessor for TerminalSymbol);
      v23 += v24;
      if (!--v22)
      {
        goto LABEL_5;
      }
    }

    v28 = 0;
  }

  else
  {
LABEL_5:
    specialized Collection<>.unionedCharacterSet()(rawValue);
    VocabularyManager.prefixLookUp.getter(v4);
    v25 = v33;
    v26 = v6[2];
    v26(v33, &v4[*(v34 + 32)], v5);
    outlined destroy of TerminalSymbol(v4, type metadata accessor for VocabularyManager.PrefixLookup);
    v26(v32, v15, v5);
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
    v27 = v35;
    dispatch thunk of SetAlgebra.intersection(_:)();
    v28 = dispatch thunk of SetAlgebra.isEmpty.getter();
    v29 = v6[1];
    v29(v27, v5);
    v29(v25, v5);
    v29(v15, v5);
  }

  return v28 & 1;
}

uint64_t VocabularyManager.processTokenizerVocab()@<X0>(void *a1@<X8>)
{
  v358 = a1;
  v413 = type metadata accessor for CharacterSet();
  v412 = *(v413 - 8);
  v2 = *(v412 + 8);
  v3 = MEMORY[0x1EEE9AC00](v413);
  i = &v355 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v405 = &v355 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v355 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v355 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v355 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v355 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = type metadata accessor for Signpost();
  v21 = *(*(v357 - 8) + 64);
  MEMORY[0x1EEE9AC00](v357);
  v23 = &v355 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for guided != -1)
  {
    goto LABEL_310;
  }

  while (1)
  {
    v24 = __swift_project_value_buffer(v16, static Log.guided);
    (*(v17 + 16))(v20, v24, v16);
    v356 = v23;
    Signpost.init(_:_:)(v20, "GuidedGenerationConstraints.processTokenizerVocab", 49, 2, v23);
    v25 = MEMORY[0x1E69E7CC0];
    v377 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySiGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v367 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SaySiGTt0g5Tf4g_n(v25);
    v368 = v15;
    CharacterSet.init()();
    v359 = v13;
    CharacterSet.init()();
    v410 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_ShySiGTt0g5Tf4g_n(v25);
    v404 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_SaySiGTt0g5Tf4g_n(v25);
    v393 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_ShySiGTt0g5Tf4g_n(v25);
    v371 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_SaySiGTt0g5Tf4g_n(v25);
    v401 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_ShySiGTt0g5Tf4g_n(v25);
    v403 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_SaySiGTt0g5Tf4g_n(v25);
    v388 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_ShySiGTt0g5Tf4g_n(v25);
    v383 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation12CharacterSetV_SaySiGTt0g5Tf4g_n(v25);
    v376 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5UInt8V_SiTt0g5Tf4g_n(v25);
    v430 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_s5UInt8VTt0g5Tf4g_n(v25);
    v23 = *(v1 + 88);
    v26 = *(v1 + 96);
    v397 = v1;
    v1 = __swift_project_boxed_opaque_existential_1((v1 + 64), v23);
    v27 = (*(v26 + 40))(v23, v26);
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16), 0, v25);
    v17 = v28;
    v29 = v27;
    v431 = v28;
    v16 = *(v27 + 16);
    v408 = i;
    v394 = v29;
    if (v16)
    {
      v13 = 0;
      v15 = 4091452;
      v20 = v29 + 40;
      while (v13 < *(v29 + 16))
      {
        v1 = *(v20 - 8);
        v30 = *v20;
        v31 = __swift_project_boxed_opaque_existential_1((v397 + 16), *(v397 + 40));
        if (v1 == 4091452 && v30 == 0xE300000000000000)
        {
          v35 = 0xE100000000000000;
          v36 = 10;
        }

        else
        {
          v34 = *v31;
          v33 = v31[1];
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            v35 = 0xE100000000000000;
            v36 = 10;
          }

          else
          {
            v423 = v1;
            *&v424 = v30;
            v419 = v34;
            v420 = v33;
            v428 = 32;
            v429 = 0xE100000000000000;
            v353 = lazy protocol witness table accessor for type String and conformance String();
            v354 = v353;
            v1 = &v423;
            v352 = v353;
            v351 = MEMORY[0x1E69E6158];
            v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
            v35 = v37;
          }

          i = v408;
          v15 = 4091452;
        }

        v431 = v17;
        v23 = *(v17 + 16);
        v38 = *(v17 + 24);
        v39 = v23 + 1;
        if (v23 >= v38 >> 1)
        {
          v41 = v36;
          v1 = v23 + 1;
          v42 = v35;
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39, 1, v17);
          v35 = v42;
          i = v408;
          v39 = v23 + 1;
          v17 = v43;
          v36 = v41;
          v15 = 4091452;
        }

        ++v13;
        *(v17 + 16) = v39;
        v40 = v17 + 16 * v23;
        *(v40 + 32) = v36;
        *(v40 + 40) = v35;
        v431 = v17;
        v20 += 16;
        v29 = v394;
        if (v16 == v13)
        {
          goto LABEL_19;
        }
      }

LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:

LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
      goto LABEL_308;
    }

    v39 = *(v28 + 2);
LABEL_19:
    v387 = specialized Sequence.sorted(by:)(0, v39, &v431);
    v418 = 0;
    v386 = v431;
    v44 = *(v431 + 16);
    v1 = MEMORY[0x1E69E7CC0];
    v378 = v44;
    if (v44)
    {
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v44, 0);
      v45 = specialized Sequence._copyContents(initializing:)(&v423, v1 + 32, v378, 0, v378);
      v13 = v413;
      v17 = v397;
      if (v45 == v378)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    v13 = v413;
    v17 = v397;
LABEL_23:
    v16 = v387[2];

    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      }

      v46 = 0;
      v47 = v387 + 4;
      do
      {
        v48 = v47[v46];
        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_286;
        }

        if (v48 >= *(v1 + 16))
        {
          goto LABEL_287;
        }

        *(v1 + 32 + 8 * v48) = v46++;
      }

      while (v16 != v46);
    }

    v355 = v1;
    v49 = v378;
    if (!v378)
    {
      v400 = 0;
      v399 = 0;
      v406 = 0;
      v398 = 0;
      v392 = 0;
      v382 = 0;
      v381 = 0;
      v391 = 0;
      v370 = 0;
      v360 = 0;
LABEL_229:

      v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation12CharacterSetV19TokenGenerationCore013ContiguousBitE0VGMd, &_ss18_DictionaryStorageCy10Foundation12CharacterSetV19TokenGenerationCore013ContiguousBitE0VGMR);
      v251 = v401;
      v408 = v250;
      v252 = static _DictionaryStorage.copy(original:)();
      v415 = v252;
      v254 = v251[8];
      v20 = (v251 + 8);
      v253 = v254;
      v255 = 1 << *(v20 - 32);
      v256 = -1;
      if (v255 < 64)
      {
        v256 = ~(-1 << v255);
      }

      v257 = v256 & v253;
      v1 = (v255 + 63) >> 6;
      v417 = v412 + 16;
      v414 = v252 + 64;
      v416 = (v412 + 32);

      v15 = 0;
      for (i = v405; v257; *(v16 + 16) = v269)
      {
        v258 = __clz(__rbit64(v257));
        v257 &= v257 - 1;
LABEL_238:
        v23 = v258 | (v15 << 6);
        v261 = v401;
        v10 = v412;
        v262 = *(v412 + 9) * v23;
        v13 = v413;
        (*(v412 + 2))(i, v401[6] + v262, v413);
        v17 = *(v261[7] + 8 * v23);
        v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySiGMd, &_sShySiGMR);
        v422 = lazy protocol witness table accessor for type Set<Int> and conformance Set<A>();
        v419 = v17;

        ContiguousBitSet.init(_:)(&v419, &v423);
        *(v414 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v263 = *(v415 + 48) + v262;
        v16 = v415;
        (*(v10 + 4))(v263, i, v13);
        v264 = *(v16 + 56) + 48 * v23;
        v265 = v425;
        v266 = v426;
        v267 = v427;
        *v264 = v423;
        *(v264 + 8) = v424;
        *(v264 + 24) = v265;
        *(v264 + 32) = v266;
        *(v264 + 40) = v267;
        v268 = *(v16 + 16);
        v193 = __OFADD__(v268, 1);
        v269 = v268 + 1;
        if (v193)
        {
          goto LABEL_300;
        }
      }

      v259 = v15;
      while (1)
      {
        v15 = v259 + 1;
        if (__OFADD__(v259, 1))
        {
          break;
        }

        if (v15 >= v1)
        {
          v270 = v388;
          v271 = static _DictionaryStorage.copy(original:)();
          v414 = v271;
          v274 = v270[8];
          v273 = v270 + 8;
          v272 = v274;
          v275 = 1 << *(v273 - 32);
          v276 = -1;
          if (v275 < 64)
          {
            v276 = ~(-1 << v275);
          }

          v16 = v276 & v272;
          v1 = (v275 + 63) >> 6;
          v411 = v271 + 64;

          v20 = 0;
          i = v412;
          if (!v16)
          {
LABEL_245:
            v278 = v20;
            while (1)
            {
              v20 = v278 + 1;
              if (__OFADD__(v278, 1))
              {
                goto LABEL_281;
              }

              if (v20 >= v1)
              {
                v290 = v410;
                v291 = static _DictionaryStorage.copy(original:)();
                v411 = v291;
                v293 = v290[8];
                i = (v290 + 8);
                v292 = v293;
                v294 = 1 << *(i - 32);
                v295 = -1;
                if (v294 < 64)
                {
                  v295 = ~(-1 << v294);
                }

                v16 = v295 & v292;
                v1 = (v294 + 63) >> 6;
                v409 = v291 + 64;

                v20 = 0;
                v296 = v405;
                if (!v16)
                {
LABEL_257:
                  v298 = v20;
                  while (1)
                  {
                    v20 = v298 + 1;
                    if (__OFADD__(v298, 1))
                    {
                      goto LABEL_282;
                    }

                    if (v20 >= v1)
                    {
                      v310 = v393;
                      v311 = static _DictionaryStorage.copy(original:)();
                      v17 = v311;
                      v313 = *(v310 + 64);
                      i = v310 + 64;
                      v312 = v313;
                      v314 = 1 << *(i - 32);
                      v315 = -1;
                      if (v314 < 64)
                      {
                        v315 = ~(-1 << v314);
                      }

                      v23 = v315 & v312;
                      v316 = (v314 + 63) >> 6;
                      v408 = v311 + 64;

                      v16 = 0;
                      v409 = v17;
                      v20 = v405;
                      while (1)
                      {
                        v1 = v368;
                        if (!v23)
                        {
                          break;
                        }

                        v317 = __clz(__rbit64(v23));
                        v23 &= v23 - 1;
LABEL_275:
                        v13 = v317 | (v16 << 6);
                        v320 = v393;
                        v1 = v412;
                        v15 = *(v412 + 9) * v13;
                        v10 = v413;
                        (*(v412 + 2))(v20, *(v393 + 48) + v15, v413);
                        v321 = *(*(v320 + 56) + 8 * v13);
                        v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySiGMd, &_sShySiGMR);
                        v422 = lazy protocol witness table accessor for type Set<Int> and conformance Set<A>();
                        v419 = v321;

                        ContiguousBitSet.init(_:)(&v419, &v423);
                        *(v408 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
                        v17 = v409;
                        (*(v1 + 32))(*(v409 + 48) + v15, v20, v10);
                        v322 = *(v17 + 56) + 48 * v13;
                        v323 = v425;
                        v324 = v426;
                        v325 = v427;
                        *v322 = v423;
                        *(v322 + 8) = v424;
                        *(v322 + 24) = v323;
                        *(v322 + 32) = v324;
                        *(v322 + 40) = v325;
                        v326 = *(v17 + 16);
                        v193 = __OFADD__(v326, 1);
                        v327 = v326 + 1;
                        if (v193)
                        {
                          goto LABEL_303;
                        }

                        *(v17 + 16) = v327;
                        v13 = v413;
                      }

                      v318 = v16;
                      while (1)
                      {
                        v16 = v318 + 1;
                        if (__OFADD__(v318, 1))
                        {
                          goto LABEL_283;
                        }

                        if (v16 >= v316)
                        {

                          v328 = v403;

                          v329 = v383;

                          v330 = type metadata accessor for VocabularyManager.PrefixLookup(0);
                          v331 = v13;
                          v332 = v358;
                          v333 = v358 + v330[8];
                          v334 = v359;
                          v335 = v1;
                          CharacterSet.subtracting(_:)();
                          v336 = v430;

                          v418 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SD4KeysVySis5UInt8V_GTt0g5(v337);
                          v338 = *(v412 + 1);
                          v338(v334, v331);
                          v338(v335, v331);
                          v339 = v386;

                          v340 = v367;
                          *v332 = v377;
                          v332[1] = v340;
                          v332[2] = v415;
                          v332[3] = v328;
                          v332[4] = v414;
                          v332[5] = v329;
                          v341 = v404;
                          v332[6] = v411;
                          v332[7] = v341;
                          v342 = v371;
                          v332[8] = v409;
                          v332[9] = v342;
                          v332[10] = v339;
                          *(v332 + v330[9]) = v387;
                          *(v332 + v330[10]) = v355;
                          *(v332 + v330[11]) = v376;
                          *(v332 + v330[12]) = v336;
                          *(v332 + v330[13]) = v418;
                          v343 = v356;
                          Signpost.end()();
                          v344 = v357;
                          v345 = *(v357 + 20);
                          v346 = type metadata accessor for OSSignposter();
                          (*(*(v346 - 8) + 8))(v343 + v345, v346);
                          v347 = *(v344 + 24);
                          v348 = type metadata accessor for OSSignpostID();
                          (*(*(v348 - 8) + 8))(v343 + v347, v348);
                          v349 = *(v343 + *(v344 + 28));

                          sub_1A8E8E88C(v400);
                          sub_1A8E8E88C(v399);
                          sub_1A8E8E88C(v406);
                          sub_1A8E8E88C(v398);
                          sub_1A8E8E88C(v392);
                          sub_1A8E8E88C(v382);
                          sub_1A8E8E88C(v381);
                          sub_1A8E8E88C(v391);
                          sub_1A8E8E88C(v370);
                          return sub_1A8E8E88C(v360);
                        }

                        v319 = *(i + 8 * v16);
                        ++v318;
                        if (v319)
                        {
                          v317 = __clz(__rbit64(v319));
                          v23 = (v319 - 1) & v319;
                          goto LABEL_275;
                        }
                      }
                    }

                    v299 = *(i + 8 * v20);
                    ++v298;
                    if (v299)
                    {
                      v297 = __clz(__rbit64(v299));
                      v16 = (v299 - 1) & v299;
                      goto LABEL_262;
                    }
                  }
                }

                while (1)
                {
                  v297 = __clz(__rbit64(v16));
                  v16 &= v16 - 1;
LABEL_262:
                  v23 = v297 | (v20 << 6);
                  v300 = v410;
                  v10 = v412;
                  v301 = *(v412 + 9) * v23;
                  v15 = v413;
                  (*(v412 + 2))(v296, v410[6] + v301, v413);
                  v302 = *(v300[7] + 8 * v23);
                  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySiGMd, &_sShySiGMR);
                  v422 = lazy protocol witness table accessor for type Set<Int> and conformance Set<A>();
                  v419 = v302;

                  ContiguousBitSet.init(_:)(&v419, &v423);
                  *(v409 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
                  v17 = v411;
                  v303 = *(v411 + 48) + v301;
                  v13 = v15;
                  (*(v10 + 4))(v303, v296, v15);
                  v304 = *(v17 + 56) + 48 * v23;
                  v305 = v425;
                  v306 = v426;
                  v307 = v427;
                  *v304 = v423;
                  *(v304 + 8) = v424;
                  *(v304 + 24) = v305;
                  *(v304 + 32) = v306;
                  *(v304 + 40) = v307;
                  v308 = *(v17 + 16);
                  v193 = __OFADD__(v308, 1);
                  v309 = v308 + 1;
                  if (v193)
                  {
                    goto LABEL_302;
                  }

                  *(v17 + 16) = v309;
                  if (!v16)
                  {
                    goto LABEL_257;
                  }
                }
              }

              v279 = v273[v20];
              ++v278;
              if (v279)
              {
                v277 = __clz(__rbit64(v279));
                v16 = (v279 - 1) & v279;
                goto LABEL_250;
              }
            }
          }

          while (1)
          {
            v277 = __clz(__rbit64(v16));
            v16 &= v16 - 1;
LABEL_250:
            v23 = v277 | (v20 << 6);
            v280 = v388;
            v281 = *(i + 72) * v23;
            v10 = v405;
            v15 = v413;
            (*(i + 16))(v405, v388[6] + v281, v413);
            v282 = *(v280[7] + 8 * v23);
            v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySiGMd, &_sShySiGMR);
            v422 = lazy protocol witness table accessor for type Set<Int> and conformance Set<A>();
            v419 = v282;

            ContiguousBitSet.init(_:)(&v419, &v423);
            *(v411 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
            v17 = v414;
            v283 = *(v414 + 48) + v281;
            v13 = v15;
            (*(i + 32))(v283, v10, v15);
            v284 = *(v17 + 56) + 48 * v23;
            v285 = v425;
            v286 = v426;
            v287 = v427;
            *v284 = v423;
            *(v284 + 8) = v424;
            *(v284 + 24) = v285;
            *(v284 + 32) = v286;
            *(v284 + 40) = v287;
            v288 = *(v17 + 16);
            v193 = __OFADD__(v288, 1);
            v289 = v288 + 1;
            if (v193)
            {
              goto LABEL_301;
            }

            *(v17 + 16) = v289;
            if (!v16)
            {
              goto LABEL_245;
            }
          }
        }

        v260 = *(v20 + 8 * v15);
        ++v259;
        if (v260)
        {
          v258 = __clz(__rbit64(v260));
          v257 = (v260 - 1) & v260;
          goto LABEL_238;
        }
      }

LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
      goto LABEL_285;
    }

    v400 = 0;
    v399 = 0;
    v406 = 0;
    v398 = 0;
    v392 = 0;
    v382 = 0;
    v381 = 0;
    v391 = 0;
    v370 = 0;
    v360 = 0;
    v50 = 0;
    v51 = v387 + 4;
    v52 = v394;
    v53 = v394 + 32;
    v54 = v386 + 32;
    v417 = v412 + 16;
    v409 = (v412 + 8);
    v374 = v387 + 4;
    v373 = v394 + 32;
    v372 = v386 + 32;
    v375 = v10;
LABEL_35:
    if (v50 >= v387[2])
    {
      goto LABEL_291;
    }

    v20 = v51[v50];
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_292;
    }

    if (v20 >= *(v386 + 16))
    {
      goto LABEL_293;
    }

    if (v20 >= *(v52 + 16))
    {
      goto LABEL_294;
    }

    v55 = v50 + 1;
    v56 = (v54 + 16 * v20);
    v57 = *v56;
    v15 = v56[1];
    v58 = (v53 + 16 * v20);
    v59 = *v58;
    v60 = v58[1];
    v61 = *(v17 + 112);
    v62 = *(v61 + 16);
    v63 = (v61 + 32);
    while (v62)
    {
      v64 = *v63++;
      --v62;
      if (v64 == v20)
      {
        goto LABEL_34;
      }
    }

    v10 = i;
    v395 = v59;
    v415 = v57;
    v402 = v50;
    v384 = v50 + 1;
    v65 = v17;
    v66 = *(v17 + 88);
    v67 = *(v65 + 96);
    v68 = v65;
    v1 = __swift_project_boxed_opaque_existential_1((v65 + 64), v66);
    v16 = v67 + 64;
    v69 = *(v67 + 64);
    swift_bridgeObjectRetain_n();

    v70 = v69(v20, v66, v67);
    v414 = v15;
    v396 = v60;
    if (v70)
    {
      v423 = v395;
      *&v424 = v60;
      v419 = 60;
      v420 = 0xE100000000000000;
      v15 = 0xE000000000000000;
      v428 = 0;
      v429 = 0xE000000000000000;
      v71 = lazy protocol witness table accessor for type String and conformance String();
      v353 = v71;
      v354 = v71;
      v352 = v71;
      v16 = MEMORY[0x1E69E6158];
      v351 = MEMORY[0x1E69E6158];
      v423 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      *&v424 = v72;
      v419 = 62;
      v420 = 0xE100000000000000;
      v428 = 0;
      v429 = 0xE000000000000000;
      v353 = v71;
      v354 = v71;
      v351 = v16;
      v352 = v71;
      v73 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v17 = v74;

      v23 = specialized Collection.dropFirst(_:)(2uLL, v73, v17);
      i = v75;
      v77 = v76;
      v1 = v78;

      v13 = v413;
      if (!((v23 ^ i) >> 14))
      {
        goto LABEL_298;
      }

      v79 = v418;
      v80 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5AKSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_AF_SsTG5SiTf1cn_n(v23, i, v77, v1, 16);
      v418 = v79;
      if ((v80 & 0x10000) != 0)
      {
        v80 = specialized _parseInteger<A, B>(ascii:radix:)(v23, i, v77, v1, 16);
      }

      v15 = v80;

      v17 = v397;
      i = v408;
      v23 = v415;
      v10 = v375;
      if ((v15 & 0x100) != 0)
      {
        goto LABEL_299;
      }

      v16 = v376;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v423 = v16;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v15, isUniquelyReferenced_nonNull_native);
      v376 = v423;
      v1 = &v430;
      specialized Dictionary.subscript.setter(v15, v20);
      v15 = v414;
    }

    else
    {
      v13 = v413;
      v23 = v415;
      v17 = v68;
      i = v10;
      v10 = v375;
    }

    v416 = specialized Collection.first.getter(v23, v15);
    if ((v416 & 0x100000000) != 0)
    {

      goto LABEL_33;
    }

    v82 = *(v17 + 56);
    v83 = *(v82 + 16);
    v411 = v82;
    if (v83)
    {
      v16 = 0;
      v407 = v82 + ((v412[80] + 32) & ~v412[80]);
      while (v16 < *(v82 + 16))
      {
        i = *(v412 + 2);
        (i)(v10, v407 + *(v412 + 9) * v16, v13);
        v84 = CharacterSet.contains(_:)();
        if (v84)
        {
          if (specialized Collection.count.getter(v23, v15) == 1)
          {
            sub_1A8E8E88C(v400);
            v1 = v401;
            v23 = swift_isUniquelyReferenced_nonNull_native();
            v423 = v1;
            v17 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
            v86 = *(v1 + 16);
            v87 = (v85 & 1) == 0;
            v88 = v86 + v87;
            if (__OFADD__(v86, v87))
            {
              goto LABEL_289;
            }

            v89 = v85;
            if (*(v1 + 24) >= v88)
            {
              if ((v23 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v88, v23);
              v90 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
              if ((v89 & 1) != (v91 & 1))
              {
                goto LABEL_312;
              }

              v17 = v90;
            }

            v23 = v415;
            v99 = v423;
            v401 = v423;
            if ((v89 & 1) == 0)
            {
              v100 = v405;
              (i)(v405, v10, v13);
              v101 = v100;
              v99 = v401;
              specialized _NativeDictionary._insert(at:key:value:)(v17, v101, MEMORY[0x1E69E7CD0], v401);
            }

            v102 = v99[7] + 8 * v17;
            v84 = specialized Set._Variant.insert(_:)(&v423, v20);
            v400 = specialized thunk for @callee_guaranteed () -> (@owned Set<Int>);
            v15 = v414;
          }

          else
          {
            sub_1A8E8E88C(v399);
            v1 = v403;
            v23 = swift_isUniquelyReferenced_nonNull_native();
            v423 = v1;
            v17 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
            v93 = *(v1 + 16);
            v94 = (v92 & 1) == 0;
            v95 = v93 + v94;
            if (__OFADD__(v93, v94))
            {
              goto LABEL_288;
            }

            v96 = v92;
            if (*(v1 + 24) >= v95)
            {
              if ((v23 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v95, v23);
              v97 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
              if ((v96 & 1) != (v98 & 1))
              {
                goto LABEL_312;
              }

              v17 = v97;
            }

            v103 = v423;
            v403 = v423;
            if ((v96 & 1) == 0)
            {
              v104 = v405;
              (i)(v405, v10, v13);
              specialized _NativeDictionary._insert(at:key:value:)(v17, v104, MEMORY[0x1E69E7CC0], v403);
              v103 = v403;
            }

            v105 = v103[7];
            v106 = *(v105 + 8 * v17);
            v84 = swift_isUniquelyReferenced_nonNull_native();
            *(v105 + 8 * v17) = v106;
            if ((v84 & 1) == 0)
            {
              v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 16) + 1, 1, v106);
              v106 = v84;
              *(v105 + 8 * v17) = v84;
            }

            v108 = *(v106 + 16);
            v107 = *(v106 + 24);
            v109 = v402;
            if (v108 >= v107 >> 1)
            {
              v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1, v106);
              v109 = v402;
              v106 = v84;
              *(v105 + 8 * v17) = v84;
            }

            v15 = v414;
            *(v106 + 16) = v108 + 1;
            *(v106 + 8 * v108 + 32) = v109;
            v399 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
            v13 = v413;
            v23 = v415;
          }
        }

        MEMORY[0x1EEE9AC00](v84);
        v353 = v10;
        v17 = v418;
        v110 = specialized Sequence.allSatisfy(_:)(partial apply for closure #3 in VocabularyManager.processTokenizerVocab(), &v351, v23, v15);
        v418 = v17;
        if (v110)
        {
          sub_1A8E8E88C(v406);
          v1 = v410;
          v23 = swift_isUniquelyReferenced_nonNull_native();
          v423 = v1;
          v17 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
          v112 = *(v1 + 16);
          v113 = (v111 & 1) == 0;
          v114 = v112 + v113;
          if (__OFADD__(v112, v113))
          {
            goto LABEL_279;
          }

          v115 = v111;
          if (*(v1 + 24) >= v114)
          {
            if ((v23 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, v23);
            v116 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
            if ((v115 & 1) != (v117 & 1))
            {
              goto LABEL_312;
            }

            v17 = v116;
          }

          v23 = v415;
          v125 = v423;
          v410 = v423;
          if ((v115 & 1) == 0)
          {
            v126 = v405;
            (i)(v405, v10, v13);
            v127 = v126;
            v125 = v410;
            specialized _NativeDictionary._insert(at:key:value:)(v17, v127, MEMORY[0x1E69E7CD0], v410);
          }

          v1 = v125[7] + 8 * v17;
          specialized Set._Variant.insert(_:)(&v423, v20);
          v406 = specialized thunk for @callee_guaranteed () -> (@owned Set<Int>);
          i = v408;
          v15 = v414;
        }

        else
        {
          v1 = v10;
          if (CharacterSet.contains(_:)())
          {
            sub_1A8E8E88C(v398);
            v1 = v404;
            v23 = swift_isUniquelyReferenced_nonNull_native();
            v423 = v1;
            v17 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
            v119 = *(v1 + 16);
            v120 = (v118 & 1) == 0;
            v121 = v119 + v120;
            if (__OFADD__(v119, v120))
            {
              goto LABEL_290;
            }

            v122 = v118;
            if (*(v1 + 24) >= v121)
            {
              if ((v23 & 1) == 0)
              {
                specialized _NativeDictionary.copy()();
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v121, v23);
              v123 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
              if ((v122 & 1) != (v124 & 1))
              {
                goto LABEL_312;
              }

              v17 = v123;
            }

            v128 = v423;
            v404 = v423;
            if ((v122 & 1) == 0)
            {
              v129 = v405;
              (i)(v405, v10, v13);
              specialized _NativeDictionary._insert(at:key:value:)(v17, v129, MEMORY[0x1E69E7CC0], v404);
              v128 = v404;
            }

            v130 = v128[7];
            v1 = *(v130 + 8 * v17);
            v131 = swift_isUniquelyReferenced_nonNull_native();
            *(v130 + 8 * v17) = v1;
            if ((v131 & 1) == 0)
            {
              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
              *(v130 + 8 * v17) = v1;
            }

            i = v408;
            v133 = *(v1 + 16);
            v132 = *(v1 + 24);
            v134 = v402;
            if (v133 >= v132 >> 1)
            {
              v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v1);
              v134 = v402;
              v1 = v135;
              *(v130 + 8 * v17) = v135;
            }

            v15 = v414;
            *(v1 + 16) = v133 + 1;
            *(v1 + 8 * v133 + 32) = v134;
            v398 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
            v13 = v413;
            v23 = v415;
          }

          else
          {
            i = v408;
          }
        }

        ++v16;
        (*v409)(v10, v13);
        v82 = v411;
        if (v83 == v16)
        {
          goto LABEL_104;
        }
      }

      __break(1u);
LABEL_279:
      __break(1u);
      goto LABEL_280;
    }

LABEL_104:
    if ((v15 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v16 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (((v15 >> 60) & ((v23 & 0x800000000000000) == 0)) != 0)
    {
      v136 = 11;
    }

    else
    {
      v136 = 7;
    }

    if (!v16)
    {

      goto LABEL_214;
    }

    v137 = String.subscript.getter();
    v17 = v138;
    sub_1A8E8E88C(v392);
    v1 = v377;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v423 = v1;
    v407 = v137;
    v139 = v137;
    v13 = v17;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v139, v17);
    v141 = *(v1 + 16);
    v142 = (v140 & 1) == 0;
    v143 = v141 + v142;
    if (!__OFADD__(v141, v142))
    {
      break;
    }

LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    swift_once();
  }

  v144 = v140;
  if (*(v1 + 24) >= v143)
  {
    if ((v23 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }

LABEL_118:
    v147 = v423;
    v377 = v423;
    if ((v144 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v15, v407, v13, MEMORY[0x1E69E7CC0], v377);

      v147 = v377;
    }

    v148 = v147[7];
    v149 = *(v148 + 8 * v15);
    v150 = swift_isUniquelyReferenced_nonNull_native();
    *(v148 + 8 * v15) = v149;
    v385 = v136;
    if ((v150 & 1) == 0)
    {
      v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v149 + 2) + 1, 1, v149);
      *(v148 + 8 * v15) = v149;
    }

    v152 = *(v149 + 2);
    v151 = *(v149 + 3);
    v153 = v402;
    v389 = v16;
    if (v152 >= v151 >> 1)
    {
      v248 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v151 > 1), v152 + 1, 1, v149);
      v153 = v402;
      v149 = v248;
      *(v148 + 8 * v15) = v248;
    }

    v15 = v414;
    v23 = v415;
    *(v149 + 2) = v152 + 1;
    *&v149[8 * v152 + 32] = v153;
    v16 = v397;
    v154 = __swift_project_boxed_opaque_existential_1((v397 + 16), *(v397 + 40));
    v155 = *v154;
    v156 = v154[1];

    v157._countAndFlagsBits = v155;
    v157._object = v156;
    LOBYTE(v155) = String.hasPrefix(_:)(v157);

    if ((v155 & 1) == 0)
    {

      v227._countAndFlagsBits = v407;
      v227._object = v13;
      v1 = v368;
      CharacterSet.insert(charactersIn:)(v227);
      v392 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
      v13 = v413;
      v17 = v16;
      goto LABEL_33;
    }

    v158 = __swift_project_boxed_opaque_existential_1((v16 + 16), *(v16 + 40));
    v159 = *v158;
    v160 = v158[1];

    v161 = String.count.getter();

    v17 = specialized Collection.dropFirst(_:)(v161, v23, v15);
    v13 = v162;
    v164 = v163;
    v1 = v165;

    v166 = *(v411 + 16);
    v407 = v1;
    v390 = v166;
    v396 = v17;
    v392 = v13;
    v395 = v164;
    if (!v166)
    {

LABEL_212:
      if ((v396 ^ v392) >> 14)
      {
        v228 = Substring.subscript.getter();
        v230 = v229;

        sub_1A8E8E88C(v360);
        v231 = v367;
        v232 = swift_isUniquelyReferenced_nonNull_native();
        v423 = v231;
        v234 = specialized __RawDictionaryStorage.find<A>(_:)(v228, v230);
        v235 = v231[2];
        v236 = (v233 & 1) == 0;
        v237 = v235 + v236;
        v238 = v397;
        if (__OFADD__(v235, v236))
        {
          __break(1u);
LABEL_312:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_313:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_314;
        }

        v239 = v233;
        if (v231[3] >= v237)
        {
          if ((v232 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v237, v232);
          v240 = specialized __RawDictionaryStorage.find<A>(_:)(v228, v230);
          if ((v239 & 1) != (v241 & 1))
          {
            goto LABEL_314;
          }

          v234 = v240;
        }

        v242 = v423;
        v367 = v423;
        if ((v239 & 1) == 0)
        {
          specialized _NativeDictionary._insert(at:key:value:)(v234, v228, v230, MEMORY[0x1E69E7CC0], v367);

          v242 = v367;
        }

        v16 = v242[7];
        v243 = *(v16 + 8 * v234);
        v244 = swift_isUniquelyReferenced_nonNull_native();
        *(v16 + 8 * v234) = v243;
        if ((v244 & 1) == 0)
        {
          v243 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v243 + 2) + 1, 1, v243);
          *(v16 + 8 * v234) = v243;
        }

        v20 = *(v243 + 2);
        v245 = *(v243 + 3);
        v23 = v20 + 1;
        v246 = v402;
        if (v20 >= v245 >> 1)
        {
          v249 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v245 > 1), v20 + 1, 1, v243);
          v246 = v402;
          v243 = v249;
          *(v16 + 8 * v234) = v249;
        }

        v17 = v238;
        *(v243 + 2) = v23;
        *&v243[8 * v20 + 32] = v246;
        v247._countAndFlagsBits = v228;
        v247._object = v230;
        v1 = v359;
        CharacterSet.insert(charactersIn:)(v247);

        v360 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
        v392 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
        v13 = v413;
        v15 = v414;
      }

      else
      {
        v16 = v407;

        v392 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
LABEL_214:
        v13 = v413;
        v17 = v397;
      }

LABEL_33:

      v52 = v394;
      v49 = v378;
      v51 = v374;
      v53 = v373;
      v54 = v372;
      v55 = v384;
LABEL_34:
      v50 = v55;
      if (v55 == v49)
      {
        goto LABEL_229;
      }

      goto LABEL_35;
    }

    v380 = v385 | (v389 << 16);
    v389 = v411 + ((v412[80] + 32) & ~v412[80]);
    v379 = v17 >> 14;
    v385 = v13 >> 14;
    v167 = (v164 >> 59) & 1;
    if ((v1 & 0x1000000000000000) == 0)
    {
      LOBYTE(v167) = 1;
    }

    v168 = 4 << v167;
    v366 = v17 & 0xC;
    v365 = v168;
    v170 = (v17 & 1) == 0 || (v17 & 0xC) == v168;
    v369 = v170;
    v364 = HIBYTE(v1) & 0xF;
    v363 = v1 & 0xFFFFFFFFFFFFFFLL;
    v362 = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v361 = v164 & 0xFFFFFFFFFFFFLL;

    v171 = 0;
    while (1)
    {
      if (v171 >= *(v411 + 16))
      {
        goto LABEL_284;
      }

      v13 = *(v412 + 9);
      v16 = *(v412 + 2);
      (v16)(i, v389 + v13 * v171, v413);
      v172 = CharacterSet.contains(_:)();
      if (v172)
      {
        break;
      }

LABEL_162:
      v1 = &v355;
      MEMORY[0x1EEE9AC00](v172);
      v353 = i;
      v17 = v418;
      v200 = specialized Sequence.allSatisfy(_:)(partial apply for closure #4 in VocabularyManager.processTokenizerVocab(), &v351, v396, v392, v395, v407);
      v418 = v17;
      if (v200)
      {
        sub_1A8E8E88C(v391);
        v1 = v393;
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v423 = v1;
        v17 = specialized __RawDictionaryStorage.find<A>(_:)(i);
        v202 = *(v1 + 16);
        v203 = (v201 & 1) == 0;
        v204 = v202 + v203;
        if (__OFADD__(v202, v203))
        {
          goto LABEL_295;
        }

        v205 = v201;
        if (*(v1 + 24) >= v204)
        {
          v13 = v413;
          if (v23)
          {
            v208 = v423;
            if ((v201 & 1) == 0)
            {
              goto LABEL_176;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v208 = v423;
            if ((v205 & 1) == 0)
            {
              goto LABEL_176;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v204, v23);
          v206 = specialized __RawDictionaryStorage.find<A>(_:)(i);
          v13 = v413;
          if ((v205 & 1) != (v207 & 1))
          {
            goto LABEL_312;
          }

          v17 = v206;
          v208 = v423;
          if (v205)
          {
            goto LABEL_177;
          }

LABEL_176:
          v212 = v405;
          (v16)(v405, i, v13);
          specialized _NativeDictionary._insert(at:key:value:)(v17, v212, MEMORY[0x1E69E7CD0], v208);
        }

LABEL_177:
        v393 = v208;
        v1 = v208[7] + 8 * v17;
        specialized Set._Variant.insert(_:)(&v423, v20);
        v391 = specialized thunk for @callee_guaranteed () -> (@owned Set<Int>);
        v15 = v414;
        goto LABEL_178;
      }

      if (v379 != v385)
      {
        v209 = v407;
        if (v369)
        {
          v210 = v379;
          v211 = v396;
          if (v366 == v365)
          {
            v211 = _StringGuts._slowEnsureMatchingEncoding(_:)(v396, v395, v407);
            v209 = v407;
            v210 = v211 >> 14;
            if (v211 >> 14 < v379)
            {
              goto LABEL_305;
            }
          }

          if (v210 >= v385)
          {
            goto LABEL_305;
          }

          if ((v211 & 1) == 0)
          {
            _StringGuts.scalarAlignSlow(_:)(v211, v395, v407);
            v209 = v407;
          }
        }

        else if (v379 >= v385)
        {
          goto LABEL_304;
        }

        if ((v209 & 0x1000000000000000) != 0)
        {
          _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          if ((v209 & 0x2000000000000000) != 0)
          {
            v423 = v395;
            *&v424 = v363;
          }

          else if ((v395 & 0x1000000000000000) == 0)
          {
            _StringObject.sharedUTF8.getter();
          }

          _decodeScalar(_:startingAt:)();
        }

        v1 = i;
        if (CharacterSet.contains(_:)())
        {
          sub_1A8E8E88C(v370);
          v1 = v371;
          v23 = swift_isUniquelyReferenced_nonNull_native();
          v423 = v1;
          v15 = specialized __RawDictionaryStorage.find<A>(_:)(i);
          v214 = *(v1 + 16);
          v215 = (v213 & 1) == 0;
          v216 = v214 + v215;
          if (__OFADD__(v214, v215))
          {
            goto LABEL_307;
          }

          v17 = v213;
          if (*(v1 + 24) >= v216)
          {
            if (v23)
            {
              v219 = v423;
              if (v213)
              {
                goto LABEL_196;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v219 = v423;
              if (v17)
              {
                goto LABEL_196;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v216, v23);
            v217 = specialized __RawDictionaryStorage.find<A>(_:)(i);
            if ((v17 & 1) != (v218 & 1))
            {
              goto LABEL_313;
            }

            v15 = v217;
            v219 = v423;
            if (v17)
            {
              goto LABEL_196;
            }
          }

          v1 = v219;
          v219[(v15 >> 6) + 8] |= 1 << v15;
          (v16)(v219[6] + v15 * v13, i, v413);
          *(*(v1 + 56) + 8 * v15) = MEMORY[0x1E69E7CC0];
          v220 = *(v1 + 16);
          v193 = __OFADD__(v220, 1);
          v221 = v220 + 1;
          if (v193)
          {
            goto LABEL_309;
          }

          v219 = v1;
          *(v1 + 16) = v221;
LABEL_196:
          v371 = v219;
          v16 = v219[7];
          v1 = *(v16 + 8 * v15);
          v222 = swift_isUniquelyReferenced_nonNull_native();
          *(v16 + 8 * v15) = v1;
          if ((v222 & 1) == 0)
          {
            v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 16) + 1, 1, v1);
            *(v16 + 8 * v15) = v1;
          }

          v13 = v413;
          v224 = *(v1 + 16);
          v223 = *(v1 + 24);
          v17 = v224 + 1;
          v225 = v402;
          if (v224 >= v223 >> 1)
          {
            v226 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v223 > 1), v224 + 1, 1, v1);
            v225 = v402;
            v1 = v226;
            *(v16 + 8 * v15) = v226;
          }

          v15 = v414;
          *(v1 + 16) = v17;
          *(v1 + 8 * v224 + 32) = v225;
          v370 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
LABEL_178:
          v23 = v415;
          goto LABEL_136;
        }
      }

      v13 = v413;
LABEL_136:
      ++v171;
      (*v409)(i, v13);
      if (v390 == v171)
      {
        goto LABEL_212;
      }
    }

    if (String.UnicodeScalarView.distance(from:to:)(0xFuLL, v380, v23, v15) == 1)
    {
      sub_1A8E8E88C(v382);
      v1 = v388;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v423 = v1;
      v173 = specialized __RawDictionaryStorage.find<A>(_:)(i);
      v15 = v174;
      v175 = *(v1 + 16);
      v176 = (v174 & 1) == 0;
      if (__OFADD__(v175, v176))
      {
        goto LABEL_296;
      }

      v177 = v173;
      v178 = specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(v23, v175 + v176, specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary.copy());
      v179 = v423;
      v388 = v423;
      if (v178)
      {
        v180 = specialized __RawDictionaryStorage.find<A>(_:)(i);
        v23 = v415;
        if ((v15 & 1) != (v181 & 1))
        {
          goto LABEL_313;
        }

        v177 = v180;
        v179 = v388;
        if (v15)
        {
          goto LABEL_152;
        }

LABEL_151:
        v189 = v405;
        (v16)(v405, i, v413);
        v190 = v189;
        v179 = v388;
        specialized _NativeDictionary._insert(at:key:value:)(v177, v190, MEMORY[0x1E69E7CD0], v388);
      }

      else
      {
        v23 = v415;
        if ((v15 & 1) == 0)
        {
          goto LABEL_151;
        }
      }

LABEL_152:
      v191 = v179[7] + 8 * v177;
      v172 = specialized Set._Variant.insert(_:)(&v423, v20);
      v382 = specialized thunk for @callee_guaranteed () -> (@owned Set<Int>);
      v15 = v414;
      goto LABEL_162;
    }

    sub_1A8E8E88C(v381);
    v1 = v383;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v423 = v1;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(i);
    v183 = *(v1 + 16);
    v184 = (v182 & 1) == 0;
    v185 = v183 + v184;
    if (__OFADD__(v183, v184))
    {
      goto LABEL_297;
    }

    v17 = v182;
    if (*(v1 + 24) < v185)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v185, v23);
      v186 = specialized __RawDictionaryStorage.find<A>(_:)(i);
      if ((v17 & 1) != (v187 & 1))
      {
        goto LABEL_313;
      }

      v15 = v186;
      v188 = v423;
      if (v17)
      {
        goto LABEL_157;
      }

LABEL_155:
      v1 = v188;
      v188[(v15 >> 6) + 8] |= 1 << v15;
      (v16)(v188[6] + v15 * v13, i, v413);
      *(*(v1 + 56) + 8 * v15) = MEMORY[0x1E69E7CC0];
      v192 = *(v1 + 16);
      v193 = __OFADD__(v192, 1);
      v194 = v192 + 1;
      if (v193)
      {
        goto LABEL_306;
      }

      v188 = v1;
      *(v1 + 16) = v194;
      goto LABEL_157;
    }

    if (v23)
    {
      v188 = v423;
      if ((v182 & 1) == 0)
      {
        goto LABEL_155;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v188 = v423;
      if ((v17 & 1) == 0)
      {
        goto LABEL_155;
      }
    }

LABEL_157:
    v383 = v188;
    v195 = v188[7];
    v196 = *(v195 + 8 * v15);
    v172 = swift_isUniquelyReferenced_nonNull_native();
    *(v195 + 8 * v15) = v196;
    if ((v172 & 1) == 0)
    {
      v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v196 + 16) + 1, 1, v196);
      v196 = v172;
      *(v195 + 8 * v15) = v172;
    }

    v198 = *(v196 + 16);
    v197 = *(v196 + 24);
    v199 = v402;
    if (v198 >= v197 >> 1)
    {
      v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v197 > 1), v198 + 1, 1, v196);
      v199 = v402;
      v196 = v172;
      *(v195 + 8 * v15) = v172;
    }

    v15 = v414;
    v23 = v415;
    *(v196 + 16) = v198 + 1;
    *(v196 + 8 * v198 + 32) = v199;
    v381 = specialized thunk for @callee_guaranteed () -> (@owned [Int]);
    i = v408;
    goto LABEL_162;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v143, v23);
  v145 = specialized __RawDictionaryStorage.find<A>(_:)(v407, v13);
  if ((v144 & 1) == (v146 & 1))
  {
    v15 = v145;
    goto LABEL_118;
  }

LABEL_314:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t *closure #1 in VocabularyManager.processTokenizerVocab()(unint64_t *result, unint64_t *a2, uint64_t a3)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(*a3 + 16);
  if (v3 >= v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *a2;
  if (*a2 >= v4)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = *a3 + 32;
  v7 = (v6 + 16 * v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = (v6 + 16 * v5);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1);
  }
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t *VocabularyManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v2 = v0[14];

  outlined destroy of VocabularyManager.PrefixLookup?(v0 + OBJC_IVAR____TtC19TokenGenerationCore17VocabularyManager____lazy_storage___prefixLookUp);
  return v0;
}

uint64_t outlined destroy of VocabularyManager.PrefixLookup?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMd, &_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VocabularyManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  v2 = v0[14];

  outlined destroy of VocabularyManager.PrefixLookup?(v0 + OBJC_IVAR____TtC19TokenGenerationCore17VocabularyManager____lazy_storage___prefixLookUp);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void type metadata completion function for VocabularyManager()
{
  type metadata accessor for VocabularyManager.PrefixLookup?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for VocabularyManager.PrefixLookup?()
{
  if (!lazy cache variable for type metadata for VocabularyManager.PrefixLookup?)
  {
    type metadata accessor for VocabularyManager.PrefixLookup(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VocabularyManager.PrefixLookup?);
    }
  }
}

void type metadata completion function for VocabularyManager.PrefixLookup()
{
  type metadata accessor for [Character : [Int]]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [String]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CharacterSet();
      if (v2 <= 0x3F)
      {
        type metadata accessor for [String](319, &lazy cache variable for type metadata for [Int]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for [UInt8 : Int](319, &lazy cache variable for type metadata for [UInt8 : Int]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for [UInt8 : Int](319, &lazy cache variable for type metadata for [Int : UInt8]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Set<Int>();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Array();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for Set<Int>()
{
  if (!lazy cache variable for type metadata for Set<Int>)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<Int>);
    }
  }
}

uint64_t getEnumTagSinglePayload for VocabularyManager.CharacterSetLookup(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for VocabularyManager.CharacterSetLookup(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v5 = *(*v4 + 24);
  if (v5 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v5 < a2)
    {
      v6 = a2;
      v7 = 0;
      goto LABEL_9;
    }

    a4();
    return 0;
  }

  v6 = a2;
  v7 = 1;
LABEL_9:
  a3(v6, v7);
  return 1;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2);
  }

  return result;
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
    v11 = *(v8 + 8 * v6);
    v12 = v10;
    v13 = v9;
    while ((v11 & 0x8000000000000000) == 0)
    {
      v14 = *(*a5 + 16);
      if (v11 >= v14)
      {
        goto LABEL_19;
      }

      if (*v13 >= v14)
      {
        goto LABEL_20;
      }

      v15 = *a5 + 32;
      v16 = (v15 + 16 * v11);
      result = *v16;
      v17 = v16[1];
      v18 = (v15 + 16 * *v13);
      if (result != *v18 || v17 != v18[1])
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          if (!v8)
          {
            goto LABEL_21;
          }

          v20 = *v13;
          v11 = v13[1];
          *v13 = v11;
          v13[1] = v20;
          --v13;
          if (!__CFADD__(v12++, 1))
          {
            continue;
          }
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
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v98 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v6 = *v98;
    if (!*v98)
    {
      goto LABEL_154;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_112;
    }

    goto LABEL_148;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      ++v9;
      goto LABEL_28;
    }

    v6 = *a3;
    v13 = *(*a3 + 8 * v12);
    v101 = *(*a3 + 8 * v9);
    v102 = v13;
    result = closure #1 in VocabularyManager.processTokenizerVocab()(&v102, &v101, a5);
    if (v5)
    {
    }

    v14 = result;
    v15 = v9 + 2;
    if (v9 + 2 >= v8)
    {
      v9 += 2;
      if ((result & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = (v6 + 8 * v9 + 16);
      do
      {
        v9 = v15;
        v17 = *v16;
        if ((*v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_127;
        }

        v18 = *(*a5 + 16);
        if (v17 >= v18)
        {
          goto LABEL_128;
        }

        v19 = *(v16 - 1);
        if (v19 >= v18)
        {
          goto LABEL_129;
        }

        v20 = *a5 + 32;
        v21 = (v20 + 16 * v17);
        result = *v21;
        v22 = v21[1];
        v23 = (v20 + 16 * v19);
        if (result == *v23 && v22 == v23[1])
        {
          if (v14)
          {
            v12 = v9 - 1;
            goto LABEL_26;
          }
        }

        else
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((v14 ^ result))
          {
            v12 = v9 - 1;
            if ((v14 & 1) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_26;
          }
        }

        ++v16;
        v15 = v9 + 1;
      }

      while (v8 != v9 + 1);
      v12 = v9;
      v9 = v8;
      if ((v14 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_26:
    if (v9 < v11)
    {
      goto LABEL_145;
    }

    if (v11 <= v12)
    {
      v41 = v9 - 1;
      v42 = v11;
      do
      {
        if (v42 != v41)
        {
          v45 = *a3;
          if (!*a3)
          {
            goto LABEL_151;
          }

          v43 = *(v45 + 8 * v42);
          *(v45 + 8 * v42) = *(v45 + 8 * v41);
          *(v45 + 8 * v41) = v43;
        }
      }

      while (++v42 < v41--);
    }

LABEL_28:
    v25 = a3[1];
    if (v9 < v25)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_144;
      }

      if (v9 - v11 < a4)
      {
        v26 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_146;
        }

        if (v26 >= v25)
        {
          v26 = a3[1];
        }

        if (v26 < v11)
        {
          goto LABEL_147;
        }

        if (v9 != v26)
        {
          break;
        }
      }
    }

LABEL_59:
    if (v9 < v11)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v47 = *(v10 + 2);
    v46 = *(v10 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v48;
    v49 = &v10[16 * v47];
    *(v49 + 4) = v11;
    *(v49 + 5) = v9;
    v50 = *v98;
    if (!*v98)
    {
      goto LABEL_153;
    }

    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v10 + 4);
          v53 = *(v10 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_79:
          if (v55)
          {
            goto LABEL_132;
          }

          v68 = &v10[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_135;
          }

          v74 = &v10[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_138;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_139;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v78 = &v10[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_93:
        if (v73)
        {
          goto LABEL_134;
        }

        v81 = &v10[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_137;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_100:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_150;
        }

        v6 = *&v10[16 * v89 + 32];
        v90 = *&v10[16 * v51 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * v6, (*a3 + 8 * *&v10[16 * v51 + 32]), (*a3 + 8 * v90), v50, a5);
        if (v5)
        {
        }

        if (v90 < v6)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v89 >= *(v10 + 2))
        {
          goto LABEL_126;
        }

        v91 = &v10[16 * v89];
        *(v91 + 4) = v6;
        *(v91 + 5) = v90;
        v103 = v10;
        result = specialized Array.remove(at:)(v51);
        v10 = v103;
        v48 = *(v103 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v10[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_130;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_131;
      }

      v63 = &v10[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_133;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_136;
      }

      if (v67 >= v59)
      {
        v85 = &v10[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_140;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_110;
    }
  }

  v27 = *a3;
  v28 = *a3 + 8 * v9 - 8;
  v96 = v11;
  v29 = v11 - v9;
  v99 = v26;
LABEL_38:
  v30 = *(v27 + 8 * v9);
  v31 = v29;
  v6 = v28;
  while (1)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
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
LABEL_148:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = result;
LABEL_112:
      v103 = v10;
      v92 = *(v10 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v10[16 * v92];
          v94 = *&v10[16 * v92 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + 8 * v93, (*a3 + 8 * *&v10[16 * v92 + 16]), (*a3 + 8 * v94), v6, a5);
          if (v5)
          {
          }

          if (v94 < v93)
          {
            goto LABEL_141;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
          }

          if (v92 - 2 >= *(v10 + 2))
          {
            goto LABEL_142;
          }

          v95 = &v10[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          v103 = v10;
          result = specialized Array.remove(at:)(v92 - 1);
          v10 = v103;
          v92 = *(v103 + 2);
          if (v92 <= 1)
          {
          }
        }

        goto LABEL_152;
      }
    }

    v32 = *(*a5 + 16);
    if (v30 >= v32)
    {
      goto LABEL_122;
    }

    if (*v6 >= v32)
    {
      goto LABEL_123;
    }

    v33 = *a5 + 32;
    v34 = (v33 + 16 * v30);
    v35 = *v34;
    v36 = v34[1];
    v37 = (v33 + 16 * *v6);
    v38 = v35 == *v37 && v36 == v37[1];
    if (v38 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_37:
      ++v9;
      v28 += 8;
      --v29;
      if (v9 == v99)
      {
        v9 = v99;
        v11 = v96;
        goto LABEL_59;
      }

      goto LABEL_38;
    }

    if (!v27)
    {
      break;
    }

    v39 = *v6;
    v30 = *(v6 + 8);
    *v6 = v30;
    *(v6 + 8) = v39;
    v6 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t __dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = &__src[-__dst];
  v11 = &__src[-__dst + 7];
  if (&__src[-__dst] >= 0)
  {
    v11 = &__src[-__dst];
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || __dst + 8 * v12 <= a4)
    {
      __dst = memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
LABEL_49:
      if (v8 != v6 || v8 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v8, v6, 8 * ((v16 - v6) / 8));
      }

      return 1;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v18 = *v8;
      if ((*v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_54;
      }

      v19 = *(*a5 + 16);
      if (v18 >= v19)
      {
        goto LABEL_55;
      }

      if (*v6 >= v19)
      {
        goto LABEL_58;
      }

      v20 = *a5 + 32;
      v21 = (v20 + 16 * v18);
      __dst = *v21;
      v22 = v21[1];
      v23 = (v20 + 16 * *v6);
      v24 = __dst == *v23 && v22 == v23[1];
      if (!v24)
      {
        __dst = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (__dst)
        {
          break;
        }
      }

      v17 = v6;
      v24 = v9 == v6;
      v6 += 8;
      if (!v24)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 8;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v17 = v8;
    v24 = v9 == v8;
    v8 += 8;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v15] <= a4)
  {
    __dst = memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[8 * v15];
  if (v13 < 8 || v8 <= v9)
  {
    goto LABEL_49;
  }

LABEL_31:
  v25 = v8 - 8;
  v7 -= 8;
  v26 = v16;
  while (1)
  {
    v28 = *(v26 - 1);
    v26 -= 8;
    v27 = v28;
    if ((v28 & 0x8000000000000000) != 0)
    {
      break;
    }

    v29 = *(*a5 + 16);
    if (v27 >= v29)
    {
      goto LABEL_56;
    }

    if (*v25 >= v29)
    {
      goto LABEL_57;
    }

    v30 = *a5 + 32;
    v31 = (v30 + 16 * v27);
    __dst = *v31;
    v32 = v31[1];
    v33 = (v30 + 16 * *v25);
    if (__dst != *v33 || v32 != v33[1])
    {
      __dst = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (__dst)
      {
        if (v7 + 8 != v8)
        {
          *v7 = *v25;
        }

        if (v16 <= v6 || (v8 -= 8, v25 <= v9))
        {
          v8 = v25;
          goto LABEL_49;
        }

        goto LABEL_31;
      }
    }

    if (v7 + 8 != v16)
    {
      *v7 = *v26;
    }

    v7 -= 8;
    v16 = v26;
    if (v26 <= v6)
    {
      v16 = v26;
      goto LABEL_49;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return __dst;
}

unint64_t String.UnicodeScalarView.distance(from:to:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a3, a4);
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

char *_s19TokenGenerationCore17VocabularyManagerC9tokenizer26characterSetsUsedInGrammar14vocabConverter04stopA3IDsAcA06GuidedB9Tokenizer_p_Say10Foundation12CharacterSetVGAA0D14TextConverting_pSaySiGtcfCTf4nnenn_nAA013SentencePieceduM0V_Tt3g5Tf4ennn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a2;
  v38 = a7;
  v43[3] = a8;
  v43[4] = a9;
  __swift_allocate_boxed_opaque_existential_1(v43);
  (*(*(a8 - 8) + 32))();
  v42[3] = &type metadata for SentencePieceVocabularyTextConverter;
  v42[4] = &protocol witness table for SentencePieceVocabularyTextConverter;
  v14 = swift_allocObject();
  v42[0] = v14;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v15 = type metadata accessor for VocabularyManager(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v42, &type metadata for SentencePieceVocabularyTextConverter);
  v20 = *(off_1F1CA71F8 + 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v36 = *v22;
  v25 = *(v22 + 2);
  v24 = *(v22 + 3);
  v40 = &type metadata for SentencePieceVocabularyTextConverter;
  v41 = &protocol witness table for SentencePieceVocabularyTextConverter;
  v26 = swift_allocObject();
  v39[0] = v26;
  *(v26 + 16) = v36;
  *(v26 + 32) = v25;
  *(v26 + 40) = v24;
  v27 = OBJC_IVAR____TtC19TokenGenerationCore17VocabularyManager____lazy_storage___prefixLookUp;
  v28 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  (*(*(v28 - 8) + 56))(&v18[v27], 1, 1, v28);
  outlined init with copy of GuidedGenerationTokenizer(v43, (v18 + 64));
  outlined init with copy of GuidedGenerationTokenizer(v39, (v18 + 16));
  v29 = __swift_project_boxed_opaque_existential_1(v39, v40);
  v30 = *v29;
  v31 = v29[1];
  v32 = *(a9 + 8);

  v33 = v32(v30, v31, a8, a9);

  v34 = v38;
  *(v18 + 7) = v37;
  *(v18 + 13) = v33;
  *(v18 + 14) = v34;
  __swift_destroy_boxed_opaque_existential_0(v39);
  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(v42);
  return v18;
}

uint64_t outlined destroy of TerminalSymbol(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet()
{
  result = lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet;
  if (!lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet)
  {
    type metadata accessor for CharacterSet();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet);
  }

  return result;
}

void specialized static VocabularyManager.mergeSortedRanks(_:_:)(char **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2);
  v4 = *(a2 + 16);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v7 = a2;
    v8 = a1;
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0, MEMORY[0x1E69E7CC0]);
    v10 = v9;
    v11 = *(v2 + 2);
    if (v11)
    {
      v12 = v4 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v14 = 0;
      v15 = 0;
      v32 = v9;
      v13 = *(v2 + 2);
    }

    else
    {
      v30 = v7;
      v31 = v8;
      v14 = 0;
      v15 = 0;
      v16 = v7 + 32;
      do
      {
        while (1)
        {
          if (v14 >= *(v2 + 2))
          {
            __break(1u);
            goto LABEL_27;
          }

          v17 = *&v2[8 * v14 + 32];
          v18 = *(v16 + 8 * v15);
          if (v17 >= v18)
          {
            break;
          }

          v20 = *(v10 + 2);
          v19 = *(v10 + 3);
          if (v20 >= v19 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v10);
          }

          *(v10 + 2) = v20 + 1;
          *&v10[8 * v20 + 32] = v17;
          if (++v14 >= v11)
          {
            goto LABEL_23;
          }
        }

        v22 = *(v10 + 2);
        v21 = *(v10 + 3);
        v23 = v21 >> 1;
        v24 = v22 + 1;
        if (v17 == v18)
        {
          if (v23 <= v22)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v10);
            v24 = v22 + 1;
            v10 = v25;
          }

          *(v10 + 2) = v24;
          *&v10[8 * v22 + 32] = v17;
          ++v14;
        }

        else
        {
          if (v23 <= v22)
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v10);
            v24 = v22 + 1;
            v10 = v26;
          }

          *(v10 + 2) = v24;
          *&v10[8 * v22 + 32] = v18;
        }

        ++v15;
      }

      while (v14 < v11 && v15 < v4);
LABEL_23:
      v32 = v10;
      v13 = *(v2 + 2);
      v7 = v30;
      v8 = v31;
      if (v13 < v14)
      {
        goto LABEL_28;
      }
    }

    v27 = (2 * v13) | 1;

    specialized Array.append<A>(contentsOf:)(v28, (v2 + 32), v14, v27);
    if (v4 >= v15)
    {

      specialized Array.append<A>(contentsOf:)(v29, v7 + 32, v15, (2 * v4) | 1);

      *v8 = v32;
      return;
    }
  }

  __break(1u);
}

uint64_t outlined init with copy of VocabularyManager.PrefixLookup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMd, &_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s19TokenGenerationCore14TerminalSymbolOWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of VocabularyManager.PrefixLookup?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMd, &_s19TokenGenerationCore17VocabularyManagerC12PrefixLookupVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of VocabularyManager.PrefixLookup(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in VocabularyManager.processTokenizerVocab()(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return CharacterSet.contains(_:)() & 1;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenizerRunnerObjC.tokenize(text:)(Swift::String text)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1AC57BF60](text._countAndFlagsBits, text._object);
  v19[0] = 0;
  v3 = [v1 tokenize:v2 error:v19];

  v4 = v19[0];
  if (!v3)
  {
    v9 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_19;
  }

  type metadata accessor for NSNumber();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v4;

  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v16 = v5;
    }

    else
    {
      v16 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v7 = MEMORY[0x1AC57C730](v16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_18:

    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_4:
  v19[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
  }

  v8 = 0;
  v9 = v19[0];
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1AC57C620](v8, v5);
    }

    else
    {
      v10 = *(v5 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = [v10 integerValue];

    v19[0] = v9;
    v14 = v9[2];
    v13 = v9[3];
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v9 = v19[0];
    }

    ++v8;
    v9[2] = v14 + 1;
    v9[v14 + 4] = v12;
  }

  while (v7 != v8);

LABEL_19:
  v17 = *MEMORY[0x1E69E9840];
  v18 = v9;
  result.value._rawValue = v18;
  result.is_nil = v15;
  return result;
}

uint64_t closure #1 in TokenizerRunnerObjC.collectPrefixes(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v8;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    v8 = result;
    *a4 = result;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
    *a4 = result;
  }

  v8[2] = v11 + 1;
  v12 = &v8[3 * v11];
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  return result;
}

uint64_t TokenizerRunnerObjC.prefixTokenIDs(forPrefix:)()
{
  v8 = MEMORY[0x1E69E7CC0];
  v6[2] = &v8;
  v1 = MEMORY[0x1AC57BF60]();
  v2 = swift_allocObject();
  *(v2 + 16) = closure #1 in TokenizerRunnerObjC.collectPrefixes(_:_:)partial apply;
  *(v2 + 24) = v6;
  aBlock[4] = thunk for @callee_guaranteed (@unowned Int, @guaranteed String) -> ()partial apply;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed String) -> ();
  aBlock[3] = &block_descriptor_17;
  v3 = _Block_copy(aBlock);

  [v0 enumeratePrefixTokenIDsForPrefix:v1 block:v3];

  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed String) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4(a2, v5, v6);
}

uint64_t TokenizerRunnerObjC.tokenIDs(forRawPrefix:)()
{
  v8 = MEMORY[0x1E69E7CC0];
  v6[2] = &v8;
  v1 = MEMORY[0x1AC57BF60]();
  v2 = swift_allocObject();
  *(v2 + 16) = closure #1 in TokenizerRunnerObjC.collectPrefixes(_:_:)partial apply;
  *(v2 + 24) = v6;
  aBlock[4] = thunk for @callee_guaranteed (@unowned Int, @guaranteed String) -> ()partial apply;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed String) -> ();
  aBlock[3] = &block_descriptor_9;
  v3 = _Block_copy(aBlock);

  [v0 enumerateTokenIDsForRawPrefix:v1 block:v3];

  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t TokenizerRunnerObjC.tokenIDs(forDecodedPrefix:)()
{
  v8 = MEMORY[0x1E69E7CC0];
  v6[2] = &v8;
  v1 = MEMORY[0x1AC57BF60]();
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in TokenizerRunnerObjC.collectPrefixes(_:_:);
  *(v2 + 24) = v6;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed String) -> ();
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed String) -> ();
  aBlock[3] = &block_descriptor;
  v3 = _Block_copy(aBlock);

  [v0 enumerateTokenIDsForDecodedPrefix:v1 block:v3];

  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

id protocol witness for TokenizerRunnerTokenizer.tokenID(forText:) in conformance TokenizerRunnerObjC()
{
  v1 = *v0;
  v2 = MEMORY[0x1AC57BF60]();
  v3 = [v1 tokenIDForText_];

  return v3;
}

uint64_t protocol witness for TokenizerRunnerTokenizer.text(forTokenID:) in conformance TokenizerRunnerObjC(uint64_t a1)
{
  v2 = [*v1 textForTokenID_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for TokenizerRunnerTokenizer.vocabulary() in conformance TokenizerRunnerObjC()
{
  v1 = [*v0 vocabulary];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t GuidedGenerationConstraints.init(grammarString:tokenizerPath:stopTokenIDs:numParallelTasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](GuidedGenerationConstraints.init(grammarString:tokenizerPath:stopTokenIDs:numParallelTasks:), 0, 0);
}

uint64_t GuidedGenerationConstraints.init(grammarString:tokenizerPath:stopTokenIDs:numParallelTasks:)()
{
  v23 = v0;
  v1 = static BackusNaurParser.parsedRules(_:)(*(v0 + 24), *(v0 + 32));

  Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(v1, 1, MEMORY[0x1E69E7CC0], &v16);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = v16;
  v6 = v17;
  v7 = v18;
  type metadata accessor for TokenizerRunner();
  swift_allocObject();
  v8 = TokenizerRunner.init(tokenizerPath:)();
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);
  v11 = v8;

  v12 = _s19TokenGenerationCore17VocabularyManagerC9tokenizer26characterSetsUsedInGrammar14vocabConverter04stopA3IDsAcA06GuidedB9Tokenizer_p_Say10Foundation12CharacterSetVGAA0D14TextConverting_pSaySiGtcfCTf4nnenn_nAA013SentencePieceduM0V_Tt3g5Tf4ennn_nAA0Q6RunnerC_Tg5(v11, *(&v7 + 1), 8492770, 0xA300000000000000, 8492770, 0xA300000000000000, v9);
  v21[0] = v5;
  v21[1] = v6;
  v21[2] = v7;
  v22 = v12;

  GuidedGenerationConstraints.init(grammar:vocabularyManager:)(v21, &v22, &v16);

  v13 = v19;
  *(v10 + 32) = v18;
  *(v10 + 48) = v13;
  *(v10 + 64) = v20;
  v14 = v17;
  *v10 = v16;
  *(v10 + 16) = v14;
  v15 = *(v0 + 8);

  return v15();
}

char *_s19TokenGenerationCore17VocabularyManagerC9tokenizer26characterSetsUsedInGrammar14vocabConverter04stopA3IDsAcA06GuidedB9Tokenizer_p_Say10Foundation12CharacterSetVGAA0D14TextConverting_pSaySiGtcfCTf4nnenn_nAA013SentencePieceduM0V_Tt3g5Tf4ennn_nAA0Q6RunnerC_Tg5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42[3] = type metadata accessor for TokenizerRunner();
  v42[4] = &protocol witness table for TokenizerRunner;
  v42[0] = a1;
  v41[3] = &type metadata for SentencePieceVocabularyTextConverter;
  v41[4] = &protocol witness table for SentencePieceVocabularyTextConverter;
  v14 = swift_allocObject();
  v41[0] = v14;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v15 = type metadata accessor for VocabularyManager(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v41, &type metadata for SentencePieceVocabularyTextConverter);
  v20 = *(off_1F1CA71F8 + 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v37 = *v22;
  v25 = *(v22 + 2);
  v24 = *(v22 + 3);
  v39 = &type metadata for SentencePieceVocabularyTextConverter;
  v40 = &protocol witness table for SentencePieceVocabularyTextConverter;
  v26 = swift_allocObject();
  v38[0] = v26;
  *(v26 + 16) = v37;
  *(v26 + 32) = v25;
  *(v26 + 40) = v24;
  v27 = OBJC_IVAR____TtC19TokenGenerationCore17VocabularyManager____lazy_storage___prefixLookUp;
  v28 = type metadata accessor for VocabularyManager.PrefixLookup(0);
  (*(*(v28 - 8) + 56))(&v18[v27], 1, 1, v28);
  outlined init with copy of GuidedGenerationTokenizer(v42, (v18 + 64));
  outlined init with copy of GuidedGenerationTokenizer(v38, (v18 + 16));
  v29 = __swift_project_boxed_opaque_existential_1(v38, v39);
  v30 = *v29;
  v31 = v29[1];
  v32 = a1[5];
  v33 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v32);
  v34 = *(v33 + 8);

  v35 = v34(v30, v31, v32, v33);

  *(v18 + 7) = a2;
  *(v18 + 13) = v35;
  *(v18 + 14) = a7;
  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v18;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed String) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GuidedGenerationOverrides(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t storeEnumTagSinglePayload for GuidedGenerationOverrides(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void GuidedGenerationOverrides.init()(void *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD00000000000001CLL;
  *(v2 + 24) = 0x80000001A8FD9400;
  v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v4 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  *a1 = v5;
  a1[1] = 0xD00000000000001CLL;
  a1[2] = 0x80000001A8FD9400;
  a1[3] = partial apply for closure #1 in Overridable<A>.init(key:);
  a1[4] = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0xD000000000000014;
  *(v6 + 24) = 0x80000001A8FD9440;
  v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v8 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v9 = [v7 initWithSuiteName_];

  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  a1[5] = v9;
  a1[6] = 0xD000000000000014;
  a1[7] = 0x80000001A8FD9440;
  a1[8] = closure #1 in Overridable<A>.init(key:)partial apply;
  a1[9] = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = 0xD000000000000010;
  *(v10 + 24) = 0x80000001A8FD9460;
  v11 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v12 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v13 = [v11 initWithSuiteName_];

  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  a1[10] = v13;
  a1[11] = 0xD000000000000010;
  a1[12] = 0x80000001A8FD9460;
  a1[13] = partial apply for closure #1 in Overridable<A>.init(key:);
  a1[14] = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = 0xD000000000000014;
  *(v14 + 24) = 0x80000001A8FD9480;
  v15 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v16 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v17 = [v15 initWithSuiteName_];

  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a1[15] = v17;
  a1[16] = 0xD000000000000014;
  a1[17] = 0x80000001A8FD9480;
  a1[18] = closure #1 in Overridable<A>.init(key:)partial apply;
  a1[19] = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD000000000000031;
  *(v18 + 24) = 0x80000001A8FD94A0;
  v19 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v20 = MEMORY[0x1AC57BF60](0xD000000000000019, 0x80000001A8FD9420);
  v21 = [v19 initWithSuiteName_];

  if (v21)
  {
    a1[20] = v21;
    a1[21] = 0xD000000000000031;
    a1[22] = 0x80000001A8FD94A0;
    a1[23] = closure #1 in Overridable<A>.init(key:)partial apply;
    a1[24] = v18;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t partial apply for closure #1 in Overridable<A>.init(key:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  return closure #1 in Overridable<A>.init(key:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

{
  return closure #1 in Overridable<A>.init(key:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

{
  return closure #1 in Overridable<A>.init(key:)(a1, *(v2 + 16), *(v2 + 24), a2);
}

uint64_t GuidedGenerationConstraints.init(schemaString:tokenizerPath:stopTokenIDs:numParallelTasks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(type metadata accessor for Schema() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for GenerationSchema();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v11 = type metadata accessor for String.Encoding();
  v6[13] = v11;
  v12 = *(v11 - 8);
  v6[14] = v12;
  v13 = *(v12 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GuidedGenerationConstraints.init(schemaString:tokenizerPath:stopTokenIDs:numParallelTasks:), 0, 0);
}

uint64_t GuidedGenerationConstraints.init(schemaString:tokenizerPath:stopTokenIDs:numParallelTasks:)()
{
  v45 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v5 = v0[3];
  v4 = v0[4];
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  result = (*(v2 + 8))(v1, v3);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[12];
    v11 = v0[9];
    v12 = v0[4];

    v13 = type metadata accessor for JSONDecoder();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v16 = v0[8];
    (*(v0[10] + 16))(v0[11], v0[12], v0[9]);
    Schema.init(type:)();
    Grammar.init(_:)(v16, &v38);
    v18 = v0[5];
    v17 = v0[6];
    v19 = v38;
    v20 = v39;
    v35 = *(&v38 + 1);
    v36 = *(&v39 + 1);
    v21 = *(&v40 + 1);
    v37 = v40;
    type metadata accessor for TokenizerRunner();
    swift_allocObject();
    v22 = TokenizerRunner.init(tokenizerPath:)();
    v31 = v0[12];
    v32 = v0[15];
    v29 = v0[10];
    v30 = v0[9];
    v23 = v0[7];
    v33 = v0[11];
    v34 = v0[8];
    v24 = v0[2];

    v25 = _s19TokenGenerationCore17VocabularyManagerC9tokenizer26characterSetsUsedInGrammar14vocabConverter04stopA3IDsAcA06GuidedB9Tokenizer_p_Say10Foundation12CharacterSetVGAA0D14TextConverting_pSaySiGtcfCTf4nnenn_nAA013SentencePieceduM0V_Tt3g5Tf4ennn_nAA0Q6RunnerC_Tg5(v22, v21, 8492770, 0xA300000000000000, 8492770, 0xA300000000000000, v23);
    v43[0] = v19;
    v43[1] = v35;
    v43[2] = v20;
    v43[3] = v36;
    v43[4] = v37;
    v43[5] = v21;
    v44 = v25;

    GuidedGenerationConstraints.init(grammar:vocabularyManager:)(v43, &v44, &v38);

    outlined consume of Data?(v6, v8);

    (*(v29 + 8))(v31, v30);
    v26 = v41;
    *(v24 + 32) = v40;
    *(v24 + 48) = v26;
    *(v24 + 64) = v42;
    v27 = v39;
    *v24 = v38;
    *(v24 + 16) = v27;

    v28 = v0[1];

    return v28();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenerationSchema and conformance GenerationSchema()
{
  result = lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema;
  if (!lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema)
  {
    type metadata accessor for GenerationSchema();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema);
  }

  return result;
}

uint64_t dispatch thunk of AttachmentTokenizer.tokenize(imageAttachment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of AttachmentTokenizer.tokenize(imageAttachment:configuration:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AttachmentTokenizer.tokenize(imageSurfaceAttachment:configuration:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of AttachmentTokenizer.tokenize(preprocessedImageAttachment:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = dispatch thunk of AttachmentTokenizer.tokenize(imageAttachment:configuration:);

  return v13(a1, a2, a3, a4);
}

TokenGenerationCore::ImageTokenizationConfiguration __swiftcall ImageTokenizationConfiguration.init(imageStartTokens:imageEndTokens:)(Swift::OpaquePointer imageStartTokens, Swift::OpaquePointer imageEndTokens)
{
  v2->_rawValue = imageStartTokens._rawValue;
  v2[1]._rawValue = imageEndTokens._rawValue;
  result.imageEndTokens = imageEndTokens;
  result.imageStartTokens = imageStartTokens;
  return result;
}

uint64_t static ImageTokenizationConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImageTokenizationConfiguration(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v2, v3);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UnresolvedImageTokenizationConfiguration.ImageStartAndEnd(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 32))
  {
    if (*(a2 + 32) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v3, *a2))
    {

      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v5);
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  if (v3 != *a2 || v4 != v5)
  {
    v12 = *(a1 + 8);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (v7 == v9 && v8 == v10)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance UnresolvedImageTokenizationConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if ((*(a1 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
      v11 = v3 == *a2 && v4 == v5;
      if (v11 || (v12 = *(a1 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v13 = v7 == v9 && v8 == v10;
        if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return (*(a2 + 32) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v3, *a2) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v4, v5) & 1) != 0;
}

void specialized UnresolvedImageTokenizationConfiguration.init(tokenTable:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for startImageStr != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Prompt.SpecialToken(0);
  v5 = __swift_project_value_buffer(v4, static Prompt.SpecialToken.startImageStr);
  if (*(a1 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v7 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v6, v44);
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v42;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v43;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (one-time initialization token for endImageStr != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, static Prompt.SpecialToken.endImageStr);
  if (*(a1 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v13 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v12, v44);
    v14 = swift_dynamicCast();
    if (v14)
    {
      v15 = v42;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v43;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (one-time initialization token for startImageInt != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, static Prompt.SpecialToken.startImageInt);
  if (*(a1 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v19 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v18, v44);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v42;
    }

    else
    {
      v21 = 0;
    }

    v22 = v20 ^ 1;
  }

  else
  {
    v21 = 0;
    v22 = 1;
  }

  if (one-time initialization token for endImageInt != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v4, static Prompt.SpecialToken.endImageInt);
  if (*(a1 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v25 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v24, v44);

    v26 = swift_dynamicCast();
    if (v26)
    {
      v27 = v42;
    }

    else
    {
      v27 = 0;
    }

    v28 = v26 ^ 1;
    if (!v10)
    {
LABEL_48:

      if ((v22 | v28))
      {
        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Log.tokenization);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1A8E85000, v35, v36, "UnresolvedImageTokenizationConfiguration: Unable to find image start and end tokens in special token table", v37, 2u);
          MEMORY[0x1AC57DBF0](v37, -1, -1);
        }

        v9 = 0;
        v10 = 0;
        v15 = 0;
        v16 = 0;
        v33 = -1;
      }

      else
      {
        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static Log.tokenization);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_1A8E85000, v39, v40, "UnresolvedImageTokenizationConfiguration: Found image start and end integers in special token table", v41, 2u);
          MEMORY[0x1AC57DBF0](v41, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1A8FC9400;
        *(v9 + 32) = v21;
        v10 = swift_allocObject();
        v15 = 0;
        v16 = 0;
        *(v10 + 16) = xmmword_1A8FC9400;
        *(v10 + 32) = v27;
        v33 = 1;
      }

      goto LABEL_59;
    }
  }

  else
  {

    v27 = 0;
    v28 = 1;
    if (!v10)
    {
      goto LABEL_48;
    }
  }

  if (!v16)
  {
    goto LABEL_48;
  }

  if (one-time initialization token for tokenization != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Log.tokenization);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1A8E85000, v30, v31, "UnresolvedImageTokenizationConfiguration: Found image start and end strings in special token table", v32, 2u);
    MEMORY[0x1AC57DBF0](v32, -1, -1);
  }

  v33 = 0;
LABEL_59:
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v33;
}

uint64_t getEnumTagSinglePayload for UnresolvedImageTokenizationConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UnresolvedImageTokenizationConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void IOSurface.init(imageData:)(uint64_t a1, unint64_t a2)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = CGImageSourceCreateWithData(isa, 0);

  if (!v5)
  {
    outlined consume of Data._Representation(a1, a2);
    return;
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, v6);

  if (!ImageAtIndex)
  {
    outlined consume of Data._Representation(a1, a2);

    return;
  }

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo20IOSurfacePropertyKeya_s8Sendable_ptGMd, &_ss23_ContiguousArrayStorageCySo20IOSurfacePropertyKeya_s8Sendable_ptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FCB610;
  v10 = *MEMORY[0x1E696CD90];
  *(inited + 32) = *MEMORY[0x1E696CD90];
  v11 = v10;
  Height = CGImageGetHeight(ImageAtIndex);
  v13 = MEMORY[0x1E69E6530];
  *(inited + 40) = Height;
  v14 = *MEMORY[0x1E696CDE0];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  v15 = v14;
  *(inited + 80) = CGImageGetWidth(ImageAtIndex);
  v16 = *MEMORY[0x1E696CDA0];
  *(inited + 104) = v13;
  *(inited + 112) = v16;
  v17 = MEMORY[0x1E69E7668];
  *(inited + 120) = 1111970369;
  v18 = *MEMORY[0x1E696CD80];
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  v19 = v16;
  v20 = v18;
  Width = CGImageGetWidth(ImageAtIndex);
  if ((Width - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(inited + 184) = v13;
  *(inited + 160) = 4 * Width;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo20IOSurfacePropertyKeya_s8Sendable_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20IOSurfacePropertyKeya_s8Sendable_ptMd, &_sSo20IOSurfacePropertyKeya_s8Sendable_ptMR);
  swift_arrayDestroy();
  type metadata accessor for IOSurfacePropertyKey(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
  lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey();
  v22 = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v8 initWithProperties_];

  if (!v23)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v24 = v23;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  [v24 lockWithOptions:0 seed:0];
  v26 = [v24 baseAddress];
  v27 = [v24 width];
  v28 = [v24 height];
  v29 = [v24 bytesPerRow];

  v30 = CGBitmapContextCreate(v26, v27, v28, 8uLL, v29, DeviceRGB, 0x2006u);
  if (v30)
  {
    v31 = v30;
    CGContextSetBlendMode(v30, kCGBlendModeCopy);
    v32 = CGImageGetWidth(ImageAtIndex);
    v34.size.height = CGImageGetHeight(ImageAtIndex);
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = v32;
    CGContextRef.draw(_:in:byTiling:)(ImageAtIndex, v34, 0);

    v33 = v24;
    [v33 unlockWithOptions:0 seed:0];

    outlined consume of Data._Representation(a1, a2);
  }

  else
  {
    [v24 unlockWithOptions:0 seed:0];
    outlined consume of Data._Representation(a1, a2);
  }
}

unint64_t lazy protocol witness table accessor for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey()
{
  result = lazy protocol witness table cache variable for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey;
  if (!lazy protocol witness table cache variable for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey)
  {
    type metadata accessor for IOSurfacePropertyKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IOSurfacePropertyKey and conformance IOSurfacePropertyKey);
  }

  return result;
}

TokenGenerationCore::PromptPreprocessingTemplateVersion_optional __swiftcall PromptPreprocessingTemplateVersion.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PromptPreprocessingTemplateVersion.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t PromptPreprocessingTemplateVersion.rawValue.getter()
{
  if (*v0)
  {
    return 13942;
  }

  else
  {
    return 13686;
  }
}

unint64_t lazy protocol witness table accessor for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion()
{
  result = lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion;
  if (!lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion;
  if (!lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptPreprocessingTemplateVersion()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptPreprocessingTemplateVersion()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptPreprocessingTemplateVersion()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PromptPreprocessingTemplateVersion@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PromptPreprocessingTemplateVersion.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PromptPreprocessingTemplateVersion(uint64_t *a1@<X8>)
{
  v2 = 13686;
  if (*v1)
  {
    v2 = 13942;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptPreprocessingTemplateVersion(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 13942;
  }

  else
  {
    v2 = 13686;
  }

  if (*a2)
  {
    v3 = 13942;
  }

  else
  {
    v3 = 13686;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t protocol witness for PromptPreprocessingTemplateConvention.shouldPreferSingleTokenId(fragment:) in conformance PromptPreprocessingTemplateV5Convention(uint64_t a1)
{
  v2 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Prompt.RenderedPromptFragment(a1, v9, type metadata accessor for Prompt.RenderedPromptFragment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Prompt.AttachmentContent(v9, v5, type metadata accessor for Prompt.RenderedSpecialToken);
    v10 = &v5[*(v2 + 20)];
    v11 = *v10;
    v12 = *(v10 + 1);
    if (one-time initialization token for turnEnd != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Prompt.SpecialToken(0);
    v14 = __swift_project_value_buffer(v13, static Prompt.SpecialToken.Chat.turnEnd);
    if (v11 == *v14 && v12 == v14[1])
    {
      v16 = 1;
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    outlined destroy of Prompt.AttachmentContent(v5, type metadata accessor for Prompt.RenderedSpecialToken);
  }

  else
  {
    outlined destroy of Prompt.AttachmentContent(v9, type metadata accessor for Prompt.RenderedPromptFragment);
    v16 = 0;
  }

  return v16 & 1;
}

size_t PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v25 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v25 - v14);
  if (v2[8] != 1)
  {
    goto LABEL_5;
  }

  v16 = *v2;
  v17 = *(*v2 + 16);
  if (!v17)
  {
    goto LABEL_5;
  }

  v27 = *(*v2 + 16);
  v28 = a1;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = *(v6 + 72) * (v17 - 1);
  outlined init with copy of Prompt.RenderedPromptFragment(v16 + v18 + v19, &v25 - v14, type metadata accessor for Prompt.RenderedPromptFragment);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of Prompt.AttachmentContent(v15, type metadata accessor for Prompt.RenderedPromptFragment);
    a1 = v28;
LABEL_5:
    *v10 = a1;
    v10[1] = a2;
    swift_storeEnumTagMultiPayload();
    v16 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    }

    v21 = v16[2];
    v20 = v16[3];
    if (v21 >= v20 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v16);
    }

    v16[2] = v21 + 1;
    result = outlined init with take of Prompt.AttachmentContent(v10, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, type metadata accessor for Prompt.RenderedPromptFragment);
    goto LABEL_10;
  }

  v25 = v19;
  v26 = v2;
  v23 = v15[1];
  v29 = *v15;
  v30 = v23;

  MEMORY[0x1AC57C120](v28, a2);

  v24 = v30;
  *v13 = v29;
  v13[1] = v24;
  swift_storeEnumTagMultiPayload();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    v16 = result;
  }

  v2 = v26;
  if (v27 <= v16[2])
  {
    result = outlined assign with take of Prompt.RenderedPromptFragment(v13, v16 + v18 + v25);
LABEL_10:
    *v2 = v16;
    v2[8] = 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized PromptPreprocessingTemplateV5Convention.tokenize(_:substitutionTextForInputTokenText:tokenizer:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3;
  v5 = a2;
  v49 = a1;
  v47 = a1;
  v48 = a2;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);

  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  v43 = v6;
  v41 = v4;
  if (v9)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_18;
    }

    if (v12 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v10;
    if (v9)
    {
      while (1)
      {
        v13 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
        v14 = (*(v4 + 48) + v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = (*(v4 + 56) + v13);
        v18 = *v17;
        v19 = v17[1];
        v46[0] = v49;
        v46[1] = v5;
        v44 = v18;
        lazy protocol witness table accessor for type String and conformance String();

        v49 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v47 = v49;
        v48 = v20;
        v45 = v20;

        if (one-time initialization token for tokenization != -1)
        {
          swift_once();
        }

        v9 &= v9 - 1;
        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static Log.tokenization);

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v46[0] = v42;
          *v24 = 136643331;
          v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v46);

          *(v24 + 4) = v25;
          *(v24 + 12) = 2085;
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v19, v46);

          *(v24 + 14) = v26;
          *(v24 + 22) = 2085;

          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v45, v46);

          *(v24 + 24) = v27;
          _os_log_impl(&dword_1A8E85000, v22, v23, "Text after substituting %{sensitive}s with %{sensitive}s: %{sensitive}s", v24, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v42, -1, -1);
          v28 = v24;
          v4 = v41;
          MEMORY[0x1AC57DBF0](v28, -1, -1);

          v10 = v12;
          v5 = v45;
          v6 = v43;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v10 = v12;
          v5 = v45;
          v6 = v43;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v12 = v10;
      }
    }
  }

  v29 = a4[3];
  v30 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v29);
  v31 = *(v30 + 24);

  v32 = v31(v49, v5, v29, v30);
  if (v40)
  {
  }

  else
  {
    v37 = v32;

    if (v37)
    {

      return v37;
    }
  }

  if (one-time initialization token for tokenization != -1)
  {
    goto LABEL_25;
  }

LABEL_18:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.tokenization);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1A8E85000, v34, v35, "Failed to tokenize text", v36, 2u);
    MEMORY[0x1AC57DBF0](v36, -1, -1);
  }

  v37 = type metadata accessor for GenerationError();
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return v37;
}

uint64_t specialized PromptPreprocessingTemplateV6Convention.tokenize(_:substitutionTextForInputTokenText:tokenizer:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v60 = a1;
  v58 = a1;
  v59 = a2;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);

  swift_beginAccess();
  v10 = 0;
  v11 = (v7 + 63) >> 6;
  v12 = 0x1EDA2F000uLL;
  v54 = v6;
  if (v9)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_18;
    }

    if (v13 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v10;
    if (v9)
    {
      while (1)
      {
        v14 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
        v15 = (*(a3 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = (*(a3 + 56) + v14);
        v19 = *v18;
        v20 = v18[1];
        v57[0] = v60;
        v57[1] = v5;
        v55 = v19;
        lazy protocol witness table accessor for type String and conformance String();

        v60 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v58 = v60;
        v59 = v21;
        v56 = v21;

        if (*(v12 + 3600) != -1)
        {
          swift_once();
        }

        v9 &= v9 - 1;
        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Log.tokenization);

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v57[0] = v53;
          *v25 = 136643331;
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, v57);

          *(v25 + 4) = v26;
          *(v25 + 12) = 2085;
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v20, v57);

          *(v25 + 14) = v27;
          *(v25 + 22) = 2085;

          v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v56, v57);

          *(v25 + 24) = v28;
          _os_log_impl(&dword_1A8E85000, v23, v24, "Text after substituting %{sensitive}s with %{sensitive}s: %{sensitive}s", v25, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1AC57DBF0](v53, -1, -1);
          v29 = v25;
          v12 = 0x1EDA2F000;
          MEMORY[0x1AC57DBF0](v29, -1, -1);

          v10 = v13;
          v5 = v56;
          v6 = v54;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

        else
        {

          v10 = v13;
          v5 = v56;
          v6 = v54;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v13 = v10;
      }
    }
  }

  v30 = a4[3];
  v9 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v30);
  v31 = *(v9 + 24);

  v32 = v31(v60, v5, v30, v9);
  if (v51)
  {
  }

  else
  {
    v9 = v32;

    if (v9)
    {

      v37._countAndFlagsBits = 0x74735F6E7275743CLL;
      v37._object = 0xEC0000003E747261;
      v38 = String.hasPrefix(_:)(v37);

      if (!v38)
      {

        v39._countAndFlagsBits = 0x735F6567616D693CLL;
        v39._object = 0xED00003E74726174;
        v40 = String.hasPrefix(_:)(v39);

        if (!v40)
        {

          v41._countAndFlagsBits = 0x655F6567616D693CLL;
          v41._object = 0xEB000000003E646ELL;
          v42 = String.hasPrefix(_:)(v41);

          if (!v42)
          {

            v43._countAndFlagsBits = 0x6E655F6E7275743CLL;
            v43._object = 0xEA00000000003E64;
            v44 = String.hasPrefix(_:)(v43);

            if (!v44)
            {
              goto LABEL_30;
            }
          }
        }
      }

      v45 = a4[3];
      v46 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v45);
      v47 = (*(v46 + 8))(8492770, 0xA300000000000000, v45, v46);
      v48 = *(v9 + 16);
      if (v48 && *(v9 + 32) == v47)
      {
        specialized _copyCollectionToContiguousArray<A>(_:)(v9, v9 + 32, 1, (2 * v48) | 1);
        v50 = v49;

        return v50;
      }

      else
      {
LABEL_30:
      }

      return v9;
    }
  }

  if (*(v12 + 3600) != -1)
  {
    goto LABEL_32;
  }

LABEL_18:
  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Log.tokenization);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A8E85000, v34, v35, "Failed to tokenize text", v9, 2u);
    MEMORY[0x1AC57DBF0](v9, -1, -1);
  }

  type metadata accessor for GenerationError();
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return v9;
}

uint64_t specialized PromptPreprocessingTemplateV6Convention.processRenderedFragments(renderedPromptFragments:imageStartAndEndPlaceholders:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v95 = a5;
  v94 = a4;
  v93 = a2;
  v9 = type metadata accessor for Prompt.ResponseFormat(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Prompt.AttachmentContent(0);
  v13 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v111 = (&v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v92 - v16;
  v17 = type metadata accessor for Prompt.RenderedSpecialToken(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v105 = (&v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v99 = &v92 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v97 = (&v92 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v110 = (&v92 - v29);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v36 = (&v92 - v33);
  result = MEMORY[0x1E69E7CC0];
  v117 = MEMORY[0x1E69E7CC0];
  v118 = 1;
  v114 = *(a1 + 16);
  if (v114)
  {
    v92 = v35;
    v38 = 0;
    v39 = *(v32 + 80);
    v108 = v20;
    v109 = (v39 + 32) & ~v39;
    v113 = a1 + v109;
    v119 = *(v32 + 72);
    v103 = v12;
    v104 = a3;
    v98 = v34;
    v107 = &v92 - v33;
    while (1)
    {
      outlined init with copy of Prompt.RenderedPromptFragment(v113 + v119 * v38, v36, type metadata accessor for Prompt.RenderedPromptFragment);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v48 = v38;
        v50 = *v36;
        v49 = v36[1];
        if (v118 == 1 && (v51 = v117, (v52 = v117[2]) != 0))
        {
          v53 = (v52 - 1) * v119;
          v54 = v98;
          outlined init with copy of Prompt.RenderedPromptFragment(v117 + v109 + v53, v98, type metadata accessor for Prompt.RenderedPromptFragment);
          if (swift_getEnumCaseMultiPayload())
          {
            outlined destroy of Prompt.AttachmentContent(v54, type metadata accessor for Prompt.RenderedPromptFragment);
            v12 = v103;
            a3 = v104;
            goto LABEL_17;
          }

          v102 = v6;
          v85 = v54[1];
          v115 = *v54;
          v116 = v85;

          MEMORY[0x1AC57C120](v50, v49);

          v86 = v116;
          v87 = v97;
          *v97 = v115;
          v87[1] = v86;
          swift_storeEnumTagMultiPayload();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
            v51 = result;
          }

          v38 = v48;
          v6 = v102;
          a3 = v104;
          if (v52 > v51[2])
          {
            __break(1u);
            return result;
          }

          outlined assign with take of Prompt.RenderedPromptFragment(v97, v51 + v109 + v53);
          v12 = v103;
        }

        else
        {
LABEL_17:
          v55 = v110;
          *v110 = v50;
          v55[1] = v49;
          swift_storeEnumTagMultiPayload();
          v51 = v117;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
          }

          v38 = v48;
          v57 = v51[2];
          v56 = v51[3];
          if (v57 >= v56 >> 1)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v56 > 1, v57 + 1, 1, v51);
          }

          v51[2] = v57 + 1;
          outlined init with take of Prompt.AttachmentContent(v110, v51 + v109 + v57 * v119, type metadata accessor for Prompt.RenderedPromptFragment);
        }

        v117 = v51;
        v118 = 1;
        v36 = v107;
        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      v44 = v112;
      outlined init with take of Prompt.AttachmentContent(v36, v112, type metadata accessor for Prompt.AttachmentContent);
      outlined init with copy of Prompt.RenderedPromptFragment(v44, v111, type metadata accessor for Prompt.AttachmentContent);
      v45 = swift_getEnumCaseMultiPayload();
      if (v45 == 6)
      {
        v101 = v38;
        v102 = v6;
        v63 = *v111;
        v64 = *(*v111 + 16);
        v100 = *v111;
        if (v64)
        {
          v65 = (v63 + 72);
          v66 = MEMORY[0x1E69E7CC0];
          do
          {
            v68 = *(v65 - 3);
            v67 = *(v65 - 2);
            v70 = *(v65 - 1);
            v69 = *v65;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
            }

            v72 = *(v66 + 2);
            v71 = *(v66 + 3);
            if (v72 >= v71 >> 1)
            {
              v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v66);
            }

            *(v66 + 2) = v72 + 1;
            v73 = &v66[32 * v72];
            *(v73 + 4) = v68;
            *(v73 + 5) = v67;
            *(v73 + 6) = v70;
            *(v73 + 7) = v69;
            v65 += 8;
            --v64;
          }

          while (v64);
        }

        else
        {
          v66 = MEMORY[0x1E69E7CC0];
        }

        v88 = specialized ToolCallingFormatV4.render(functionCalls:)(v66);
        v90 = v89;

        PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(v88, v90);

        outlined destroy of Prompt.AttachmentContent(v112, type metadata accessor for Prompt.AttachmentContent);
        v6 = v102;
        v12 = v103;
        a3 = v104;
        v36 = v107;
        v38 = v101;
        goto LABEL_5;
      }

      if (v45 != 5)
      {
        if (v45 != 4)
        {
          if (a3)
          {
            PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(v93, a3);
            outlined init with copy of Prompt.RenderedPromptFragment(v112, v99, type metadata accessor for Prompt.AttachmentContent);
            swift_storeEnumTagMultiPayload();
            v74 = v117;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
            }

            v76 = v74[2];
            v75 = v74[3];
            v77 = v76 + 1;
            if (v76 >= v75 >> 1)
            {
              v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v75 > 1, v76 + 1, 1, v74);
            }

            v78 = v6;
            v79 = v38;
            v74[2] = v77;
            outlined init with take of Prompt.AttachmentContent(v99, v74 + v109 + v76 * v119, type metadata accessor for Prompt.RenderedPromptFragment);
            v117 = v74;
            v118 = 1;
            v80 = v92;
            v81 = v95;
            *v92 = v94;
            *(v80 + 8) = v81;
            swift_storeEnumTagMultiPayload();
            v82 = v74[3];
            v83 = v76 + 2;

            if (v83 > (v82 >> 1))
            {
              v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v82 > 1, v83, 1, v74);
            }

            v84 = 0;
          }

          else
          {
            outlined init with copy of Prompt.RenderedPromptFragment(v112, v96, type metadata accessor for Prompt.AttachmentContent);
            swift_storeEnumTagMultiPayload();
            v74 = v117;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
            }

            v78 = v6;
            v79 = v38;
            v77 = v74[2];
            v91 = v74[3];
            v83 = v77 + 1;
            v84 = 1;
            if (v77 >= v91 >> 1)
            {
              v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, v77 + 1, 1, v74);
            }

            v80 = v96;
          }

          outlined destroy of Prompt.AttachmentContent(v112, type metadata accessor for Prompt.AttachmentContent);
          v74[2] = v83;
          outlined init with take of Prompt.AttachmentContent(v80, v74 + v109 + v77 * v119, type metadata accessor for Prompt.RenderedPromptFragment);
          v117 = v74;
          v118 = v84;
          outlined destroy of Prompt.AttachmentContent(v111, type metadata accessor for Prompt.AttachmentContent);
          v36 = v107;
          v38 = v79;
          v6 = v78;
          v12 = v103;
          a3 = v104;
          goto LABEL_5;
        }

        outlined init with take of Prompt.AttachmentContent(v111, v12, type metadata accessor for Prompt.ResponseFormat);
        v46 = specialized ResponseFormatV6.render(format:)(v12);
        if (v6)
        {
          outlined destroy of Prompt.AttachmentContent(v12, type metadata accessor for Prompt.ResponseFormat);
LABEL_56:
          outlined destroy of Prompt.AttachmentContent(v112, type metadata accessor for Prompt.AttachmentContent);
        }

        PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(v46, v47);

        outlined destroy of Prompt.AttachmentContent(v12, type metadata accessor for Prompt.ResponseFormat);
        v41 = type metadata accessor for Prompt.AttachmentContent;
        v42 = v112;
        goto LABEL_4;
      }

      v58 = v38;
      specialized ToolCallingFormatV5.render(tools:)(*v111);
      v60 = v59;
      v62 = v61;

      if (v6)
      {
        goto LABEL_56;
      }

      PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(v60, v62);

      outlined destroy of Prompt.AttachmentContent(v112, type metadata accessor for Prompt.AttachmentContent);
      v38 = v58;
LABEL_5:
      if (++v38 == v114)
      {
        return v117;
      }
    }

    v40 = v105;
    outlined init with take of Prompt.AttachmentContent(v36, v105, type metadata accessor for Prompt.RenderedSpecialToken);
    PromptPreprocessingTemplateV6Convention.RenderedPromptFragmentState.append(text:)(*v40, v40[1]);
    v41 = type metadata accessor for Prompt.RenderedSpecialToken;
    v42 = v40;
LABEL_4:
    outlined destroy of Prompt.AttachmentContent(v42, v41);
    goto LABEL_5;
  }

  return result;
}

uint64_t outlined init with copy of Prompt.RenderedPromptFragment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Prompt.RenderedPromptFragment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.RenderedPromptFragment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Prompt.AttachmentContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Prompt.AttachmentContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized BidirectionalCollection.last.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v11 = 0;
    goto LABEL_35;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = _StringGuts.validateInclusiveScalarIndex(_:)(v5 | (v2 << 16), a1, a2);
  if (v6 < 0x4000)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_37:
    v25 = String.UnicodeScalarView._foreignIndex(before:)();
    _StringGuts.validateScalarIndex(_:)(v25, a1, a2);
    v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    goto LABEL_35;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v27 = a1;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v12 = &v27 + (v6 >> 16);
    if ((*(v12 - 1) & 0xC0) == 0x80)
    {
      v9 = -2;
      do
      {
        v13 = v12[v9--] & 0xC0;
      }

      while (v13 == 128);
      goto LABEL_20;
    }

LABEL_21:
    v14 = -1;
    goto LABEL_22;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v26 = v6;
    v7 = _StringObject.sharedUTF8.getter();
    v6 = v26;
  }

  v8 = v7 + (v6 >> 16);
  if ((*(v8 - 1) & 0xC0) != 0x80)
  {
    goto LABEL_21;
  }

  v9 = -2;
  do
  {
    v10 = *(v8 + v9--) & 0xC0;
  }

  while (v10 == 128);
LABEL_20:
  v14 = v9 + 1;
LABEL_22:
  v15 = _StringGuts.validateScalarIndex(_:)((v6 + (v14 << 16)) & 0xFFFFFFFFFFFF0000 | 5, a1, a2) >> 16;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v27 = a1;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v17 = &v27 + v15;
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v16 = _StringObject.sharedUTF8.getter();
    }

    v17 = (v16 + v15);
  }

  v11 = *v17;
  if (*v17 < 0)
  {
    v18 = (__clz(v11 ^ 0xFF) - 24);
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = v17[1];
        v20 = v17[2];
        v21 = ((v11 & 0xF) << 12) | ((v19 & 0x3F) << 6);
      }

      else
      {
        v22 = v17[1];
        v23 = v17[2];
        v20 = v17[3];
        v21 = ((v11 & 0xF) << 18) | ((v22 & 0x3F) << 12) | ((v23 & 0x3F) << 6);
      }

      v11 = v21 & 0xFFFFFFC0 | v20 & 0x3F;
    }

    else if (v18 != 1)
    {
      v11 = v17[1] & 0x3F | ((v11 & 0x1F) << 6);
    }
  }

LABEL_35:
  LOBYTE(v27) = v2 == 0;
  return v11 | ((v2 == 0) << 32);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenIDToTextConverterProtocol.textForTokenIDs(_:stopTokenID:)(Swift::OpaquePointer _, Swift::Int stopTokenID)
{
  v6 = v3;
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 32) = stopTokenID;
  TokenIDToTextConverterProtocol.textsForTokenIDs(_:stopTokenIDs:)(_._rawValue, inited, v7, v6);
  swift_setDeallocating();
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v4 = BidirectionalCollection<>.joined(separator:)();
    v7 = v11;
  }

  v12 = v4;
  v13 = v7;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t TokenIDToTextConverter.text.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t TokenIDToTextConverter.__allocating_init(tokenizer:replacementTextByTokenText:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TokenIDToTextConverter.init(tokenizer:replacementTextByTokenText:isOneShot:)(a1, a2, 0);
  return v4;
}

uint64_t TokenIDToTextConverter.__allocating_init(tokenizer:replacementTextByTokenText:isOneShot:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  TokenIDToTextConverter.init(tokenizer:replacementTextByTokenText:isOneShot:)(a1, a2, a3);
  return v6;
}

void *TokenIDToTextConverter.init(tokenizer:replacementTextByTokenText:isOneShot:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;

  GenerationOverrides.init()(v27);
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (isInternalInstall)
  {
    (v27[8])(&v24, v27[5]);
    outlined destroy of GenerationOverrides(v27);
    if (v24 != 2 && (v24 & 1) == 0)
    {
      if (one-time initialization token for tokenization != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Log.tokenization);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1A8E85000, v9, v10, "Using new TokenIDToTextConverterImpl", v11, 2u);
        MEMORY[0x1AC57DBF0](v11, -1, -1);
      }

      v12 = type metadata accessor for TokenIDToTextConverterImpl();
      swift_allocObject();

      v14 = specialized TokenIDToTextConverterImpl.init(tokenizer:replacementTextByTokenText:isOneShot:)(v13, a2, a3 & 1);

      v25 = v12;
      v26 = &protocol witness table for TokenIDToTextConverterImpl;

      *&v24 = v14;
      outlined init with take of PromptComponentValueConvertible(&v24, (v4 + 2));
      return v4;
    }
  }

  else
  {
    outlined destroy of GenerationOverrides(v27);
  }

  v15 = a3 & 1;
  if (one-time initialization token for tokenization != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.tokenization);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1A8E85000, v17, v18, "Using LegacyTokenIDToTextConverterImpl", v19, 2u);
    MEMORY[0x1AC57DBF0](v19, -1, -1);
  }

  v20 = type metadata accessor for LegacyTokenIDToTextConverterImpl();
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 48) = 0xE000000000000000;
  *(v21 + 56) = v22;
  *(v21 + 16) = v22;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  *(v21 + 40) = 0;
  *(v21 + 64) = v15;
  v4[5] = v20;
  v4[6] = &protocol witness table for LegacyTokenIDToTextConverterImpl;
  v4[2] = v21;
  return v4;
}

uint64_t TokenIDToTextConverter.textsForTokenID(_:isStopTokenID:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t TokenIDToTextConverter.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t TokenIDToTextConverter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TokenIDToTextConverterProtocol.text.getter in conformance TokenIDToTextConverter()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t protocol witness for TokenIDToTextConverterProtocol.textForTokenID(_:isStopTokenID:) in conformance TokenIDToTextConverter(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v7);
  (*(v8 + 24))(a1, a2, v7, v8);
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v4 = BidirectionalCollection<>.joined(separator:)();
  }

  return v4;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenIDToTextConverterImpl.unbufferUpto(scalarIndex:)(Swift::Int scalarIndex)
{
  if (scalarIndex < 0)
  {
    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.tokenization);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1A8E85000, v14, v15, "Attempting to unbuffering from empty buffer, returning empty string", v16, 2u);
      MEMORY[0x1AC57DBF0](v16, -1, -1);
    }

    v3 = 0;
    v2 = 0xE000000000000000;
    goto LABEL_25;
  }

  v4 = v1;
  v6 = swift_beginAccess();
  if (*(v4[5] + 16) > scalarIndex)
  {
    v8 = v4[4];
    if (v8 <= scalarIndex)
    {
      if (v8 < 0)
      {
        __break(1u);
        goto LABEL_29;
      }

      v34 = scalarIndex + 1;
      v38 = v4[5];
      v39 = v4[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys7UnicodeO6ScalarVGMd, &_ss10ArraySliceVys7UnicodeO6ScalarVGMR);
      lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type ArraySlice<Unicode.Scalar> and conformance ArraySlice<A>, &_ss10ArraySliceVys7UnicodeO6ScalarVGMd, &_ss10ArraySliceVys7UnicodeO6ScalarVGMR);
      String.UnicodeScalarView.append<A>(contentsOf:)();
      v3 = 0;
      v2 = 0xE000000000000000;
      v35 = v4;
      v17 = v4[11];
      v20 = *(v17 + 64);
      v19 = v17 + 64;
      v18 = v20;
      v21 = 1 << *(v4[11] + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & v18;
      v24 = (v21 + 63) >> 6;
      v42 = v4[11];

      for (i = 0; v23; v2 = v32)
      {
        v26 = i;
LABEL_22:
        v27 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v28 = (v26 << 10) | (16 * v27);
        v29 = (*(v42 + 48) + v28);
        v30 = (*(v42 + 56) + v28);
        v40 = *v29;
        v41 = v29[1];
        v36 = *v30;
        v37 = v30[1];
        lazy protocol witness table accessor for type String and conformance String();

        v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v32 = v31;
      }

      while (1)
      {
        v26 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v26 >= v24)
        {

          v35[4] = v34;
          swift_beginAccess();
          MEMORY[0x1AC57C120](v3, v2);
          swift_endAccess();
          goto LABEL_25;
        }

        v23 = *(v19 + 8 * v26);
        ++i;
        if (v23)
        {
          i = v26;
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  if (one-time initialization token for tokenization != -1)
  {
LABEL_27:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.tokenization);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A8E85000, v10, v11, "Attempted to unbuffer tokens beyond the end of the buffer.", v12, 2u);
    MEMORY[0x1AC57DBF0](v12, -1, -1);
  }

  type metadata accessor for GenerationError();
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
LABEL_25:
  v6 = v3;
  v7 = v2;
LABEL_29:
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

void TokenIDToTextConverterImpl.textsForTokenID(_:isStopTokenID:)(void *a1, char a2)
{
  v4 = v2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1A8FC9400;
    swift_beginAccess();
    v6 = TokenIDToTextConverterImpl.unbufferUpto(scalarIndex:)(*(*(v2 + 40) + 16) - 1);
    if (v7)
    {
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 32) = v6;
    }
  }

  else
  {
    v8 = TokenIDToTextConverterImpl.detokenize(tokenID:)(a1);
    if (!v3)
    {
      v9 = v8[2];

      if (v9)
      {
        v10 = *(v2 + 32);
        swift_beginAccess();
        v11 = *(*(v2 + 40) + 16);
        if (v11 > v10)
        {
          if (v10 < 0)
          {
LABEL_81:
            __break(1u);
          }

          else
          {
            v82 = v11 - 1;
            v80 = MEMORY[0x1E69E7CC0];
            v12 = v10;
            v83 = v2;
            v81 = v10;
            while (1)
            {
              v13 = *(v4 + 40);
              if (v12 >= *(v13 + 16))
              {
                break;
              }

              v14 = *(v13 + 4 * v12 + 32);
              v15 = String.count.getter();
              if (v14 > 0x7F)
              {
                v56 = (v14 & 0x3F) << 8;
                if (v14 >= 0x800)
                {
                  v62 = (v56 | (v14 >> 6) & 0x3F) << 8;
                  v63 = (((v62 | (v14 >> 12) & 0x3F) << 8) | (v14 >> 18)) - 2122219023;
                  v16 = (v14 >> 12) + v62 + 8487393;
                  if (HIWORD(v14))
                  {
                    v16 = v63;
                  }
                }

                else
                {
                  v16 = (v14 >> 6) + v56 + 33217;
                }
              }

              else
              {
                v16 = v14 + 1;
              }

              v84[0] = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v16) >> 3))));
              v17 = static String._uncheckedFromUTF8(_:)();
              v19 = v18;
              if (v15 >= String.count.getter())
              {
                if (one-time initialization token for tokenization != -1)
                {
                  swift_once();
                }

                v27 = type metadata accessor for Logger();
                __swift_project_value_buffer(v27, static Log.tokenization);

                v28 = Logger.logObject.getter();
                v29 = static os_log_type_t.debug.getter();

                if (os_log_type_enabled(v28, v29))
                {
                  v30 = swift_slowAlloc();
                  v31 = swift_slowAlloc();
                  v84[0] = v31;
                  *v30 = 136315394;
                  if (v14 > 0x7F)
                  {
                    v51 = (v14 & 0x3F) << 8;
                    if (v14 >= 0x800)
                    {
                      v60 = (v51 | (v14 >> 6) & 0x3F) << 8;
                      v61 = (((v60 | (v14 >> 12) & 0x3F) << 8) | (v14 >> 18)) - 2122219023;
                      v32 = (v14 >> 12) + v60 + 8487393;
                      if (HIWORD(v14))
                      {
                        v32 = v61;
                      }
                    }

                    else
                    {
                      v32 = (v14 >> 6) + v51 + 33217;
                    }
                  }

                  else
                  {
                    v32 = v14 + 1;
                  }

                  v85 = (v32 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v32) >> 3))));
                  v52 = static String._uncheckedFromUTF8(_:)();
                  v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v84);

                  *(v30 + 4) = v54;
                  *(v30 + 12) = 2080;
                  v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v84);

                  *(v30 + 14) = v55;
                  _os_log_impl(&dword_1A8E85000, v28, v29, "Next scalar %s merged into character %s", v30, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1AC57DBF0](v31, -1, -1);
                  MEMORY[0x1AC57DBF0](v30, -1, -1);

                  v10 = v81;
                }

                else
                {
                }

                v4 = v83;
              }

              else
              {
                v20 = v4;
                if (one-time initialization token for tokenization != -1)
                {
                  swift_once();
                }

                v21 = type metadata accessor for Logger();
                __swift_project_value_buffer(v21, static Log.tokenization);
                v22 = Logger.logObject.getter();
                v23 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v22, v23))
                {
                  v24 = swift_slowAlloc();
                  v25 = swift_slowAlloc();
                  v84[0] = v25;
                  *v24 = 136315138;
                  if (v14 > 0x7F)
                  {
                    v33 = (v14 & 0x3F) << 8;
                    if (v14 >= 0x800)
                    {
                      v58 = (v33 | (v14 >> 6) & 0x3F) << 8;
                      v59 = (((v58 | (v14 >> 12) & 0x3F) << 8) | (v14 >> 18)) - 2122219023;
                      v26 = (v14 >> 12) + v58 + 8487393;
                      if (HIWORD(v14))
                      {
                        v26 = v59;
                      }
                    }

                    else
                    {
                      v26 = (v14 >> 6) + v33 + 33217;
                    }
                  }

                  else
                  {
                    v26 = v14 + 1;
                  }

                  v85 = (v26 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v26) >> 3))));
                  v34 = static String._uncheckedFromUTF8(_:)();
                  v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v84);

                  *(v24 + 4) = v36;
                  _os_log_impl(&dword_1A8E85000, v22, v23, "Appending next scalar %s increases grapheme clusters/character count", v24, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v25);
                  MEMORY[0x1AC57DBF0](v25, -1, -1);
                  MEMORY[0x1AC57DBF0](v24, -1, -1);

                  v4 = v83;
                  v10 = v81;
                }

                else
                {

                  v4 = v20;
                }

                v37 = *(v4 + 40);
                if (v12 + 1 >= *(v37 + 16))
                {

                  if (one-time initialization token for configuration != -1)
                  {
                    swift_once();
                  }

                  __swift_project_value_buffer(v21, static Log.configuration);
                  v48 = Logger.logObject.getter();
                  v49 = static os_log_type_t.debug.getter();
                  if (os_log_type_enabled(v48, v49))
                  {
                    v50 = swift_slowAlloc();
                    *v50 = 0;
                    _os_log_impl(&dword_1A8E85000, v48, v49, "Too close to buffer's end to safely unbuffer current scalar", v50, 2u);
                    MEMORY[0x1AC57DBF0](v50, -1, -1);
                  }
                }

                else
                {
                  v38 = *(v37 + 4 * v12 + 36);
                  if (v38 > 0x7F)
                  {
                    v57 = (v38 & 0x3F) << 8;
                    v40 = v17;
                    if (v38 >= 0x800)
                    {
                      v64 = v38 >> 12;
                      v65 = (v57 | (v38 >> 6) & 0x3F) << 8;
                      v66 = HIWORD(v38);
                      v39 = (((v65 | (v38 >> 12) & 0x3F) << 8) | (v38 >> 18)) - 2122219023;
                      v67 = v64 + v65 + 8487393;
                      if (!v66)
                      {
                        v39 = v67;
                      }
                    }

                    else
                    {
                      v39 = (v38 >> 6) + v57 + 33217;
                    }
                  }

                  else
                  {
                    v39 = v38 + 1;
                    v40 = v17;
                  }

                  v84[0] = (v39 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v39) >> 3))));
                  v41 = static String._uncheckedFromUTF8(_:)();
                  v43 = v42;
                  v84[0] = v40;
                  v84[1] = v19;

                  MEMORY[0x1AC57C120](v41, v43);

                  v44 = String.count.getter();

                  v45 = String.count.getter();

                  if (v45 < v44)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v80 + 2) + 1, 1, v80);
                    }

                    v47 = *(v80 + 2);
                    v46 = *(v80 + 3);
                    if (v47 >= v46 >> 1)
                    {
                      v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v80);
                    }

                    *(v80 + 2) = v47 + 1;
                    *&v80[8 * v47 + 32] = v12;
                  }
                }
              }

              if (v82 == v12)
              {
                v68 = *(v80 + 2);
                if (!v68)
                {
                  v70 = MEMORY[0x1E69E7CC0];
LABEL_79:

                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
                  v76 = swift_allocObject();
                  *(v76 + 16) = xmmword_1A8FC9400;
                  v84[0] = v70;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
                  v77 = BidirectionalCollection<>.joined(separator:)();
                  v79 = v78;

                  *(v76 + 32) = v77;
                  *(v76 + 40) = v79;
                  return;
                }

                v69 = 0;
                v70 = MEMORY[0x1E69E7CC0];
                while (v69 < *(v80 + 2))
                {
                  v71 = *&v80[8 * v69 + 32];
                  if (v71 >= *(v83 + 32))
                  {
                    v72 = TokenIDToTextConverterImpl.unbufferUpto(scalarIndex:)(v71);
                    if (v73)
                    {

                      return;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
                    }

                    v75 = *(v70 + 2);
                    v74 = *(v70 + 3);
                    if (v75 >= v74 >> 1)
                    {
                      v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v70);
                    }

                    *(v70 + 2) = v75 + 1;
                    *&v70[16 * v75 + 32] = v72;
                  }

                  if (v68 == ++v69)
                  {
                    goto LABEL_79;
                  }
                }

                goto LABEL_83;
              }

              ++v12;
              if (v10 < 0)
              {
                goto LABEL_81;
              }
            }
          }

          __break(1u);
LABEL_83:
          __break(1u);
        }

        __break(1u);
      }
    }
  }
}

void *TokenIDToTextConverterImpl.detokenize(tokenID:)(void *a1)
{
  v3 = v1;
  v5 = *(v1 + 80);
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  if ((*(v7 + 64))(a1, v6, v7))
  {
    if (*(v1 + 64))
    {
      v8 = v5[5];
      v9 = v5[6];
      __swift_project_boxed_opaque_existential_1(v5 + 2, v8);
      (*(v9 + 16))(a1, v8, v9);
      v10 = String.init<A>(_:)();
      v12 = specialized TokenizerRunner.convertByteTokenToUTF8CodeUnit(fromTokenText:)(v10, v11);
      if (v2)
      {
LABEL_13:

        return a1;
      }

      v26 = v12;

      v27 = specialized TokenIDToTextConverterImpl.remainingUTF8CodeUnits(firstByte:)(v26);
      if (v27)
      {
        *(v1 + 56) = v27;
        *(v1 + 64) = 0;
        v28 = *(v1 + 72);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 72) = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
          *(v3 + 72) = v28;
        }

        v31 = *(v28 + 2);
        v30 = *(v28 + 3);
        if (v31 >= v30 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v28);
        }

        *(v28 + 2) = v31 + 1;
        *&v28[8 * v31 + 32] = a1;
        *(v3 + 72) = v28;
        return MEMORY[0x1E69E7CC0];
      }

LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v13._rawValue = swift_initStackObject();
      *(v13._rawValue + 1) = xmmword_1A8FC9400;
      *(v13._rawValue + 4) = a1;
      a1 = TokenIDToTextConverterImpl.detokenize(tokenIDs:)(v13);
      swift_setDeallocating();
      return a1;
    }

    v14 = *(v1 + 56);
    v15 = *(v1 + 72);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 72) = v15;
    if ((v16 & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      *(v1 + 72) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    }

    *(v15 + 2) = v18 + 1;
    *&v15[8 * v18 + 32] = a1;
    *(v1 + 72) = v15;
    a1 = MEMORY[0x1E69E7CC0];
    if (v14 == v18)
    {

      v20 = TokenIDToTextConverterImpl.detokenize(tokenIDs:)(v19);
      if (!v2)
      {
        v32 = v20;

        *(v3 + 56) = 0;
        *(v3 + 64) = 1;
        v33 = *(v3 + 72);
        *(v3 + 72) = a1;

        return v32;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v1 + 64))
    {
      goto LABEL_6;
    }

    if (one-time initialization token for tokenization != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Log.tokenization);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = a1;
      _os_log_impl(&dword_1A8E85000, v22, v23, "Recieved incomplete byte token %ld", v24, 0xCu);
      MEMORY[0x1AC57DBF0](v24, -1, -1);
    }

    type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return a1;
}

void *TokenIDToTextConverterImpl.detokenize(tokenIDs:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    v2 = v1;
    if (!*(v1[3]._countAndFlagsBits + 16))
    {
      goto LABEL_6;
    }

    v4 = *(a1._rawValue + 4);
    countAndFlagsBits = v2[5]._countAndFlagsBits;
    v6 = countAndFlagsBits[5];
    v7 = countAndFlagsBits[6];
    __swift_project_boxed_opaque_existential_1(countAndFlagsBits + 2, v6);
    v56._rawValue = (*(v7 + 16))(v4, v6, v7);
    v57 = v8;
    String.init<A>(_:)();
    LOBYTE(v6) = String.hasPrefix(_:)(v2[8]);

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A8FC9400;
      *(inited + 32) = v2[7]._object;
      v56._rawValue = inited;

      specialized Array.append<A>(contentsOf:)(v10);
      v11 = TokenizerRunner.detokenize(_:)(v56);

      if (v13)
      {
        return result;
      }

      object = v2[6]._object;
      v15 = v2[7]._countAndFlagsBits;
      v16 = String.count.getter();
      v17 = specialized Collection.dropFirst(_:)(v16, v11._countAndFlagsBits, v11._object);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v62 = MEMORY[0x1AC57C040](v17, v19, v21, v23);
      v25 = v24;
    }

    else
    {
LABEL_6:
      v26 = v2[5]._countAndFlagsBits;
      v27 = TokenizerRunner.detokenize(_:)(a1);
      result = v27._countAndFlagsBits;
      if (v28)
      {
        return result;
      }

      v25 = v27._object;
      v62 = v27._countAndFlagsBits;
    }

    v33 = v2[5]._object;
    v34 = 1 << v33[32];
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v33 + 8);
    v37 = (v34 + 63) >> 6;
    v38 = v2[5]._object;

    v39 = 0;
    if (v36)
    {
      while (1)
      {
        v40 = v39;
LABEL_21:
        v41 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        v42 = (v40 << 10) | (16 * v41);
        v43 = (*(v33 + 6) + v42);
        v44 = *v43;
        v45 = v43[1];
        v46 = (*(v33 + 7) + v42);
        v47 = *v46;
        v48 = v46[1];
        v56._rawValue = v62;
        v57 = v25;
        v60 = v44;
        v61 = v45;
        v58 = v47;
        v59 = v48;
        lazy protocol witness table accessor for type String and conformance String();

        v62 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v50 = v49;

        v25 = v50;
        if (!v36)
        {
          goto LABEL_17;
        }
      }
    }

    while (1)
    {
LABEL_17:
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v40 >= v37)
      {
        break;
      }

      v36 = *&v33[8 * v40 + 64];
      ++v39;
      if (v36)
      {
        v39 = v40;
        goto LABEL_21;
      }
    }

    swift_beginAccess();

    specialized Array.append<A>(contentsOf:)(v62, v25);
    swift_endAccess();

    specialized Array.append<A>(contentsOf:)(v51);
    v52 = specialized Collection.count.getter(v62, v25);
    if (v52)
    {
      v53 = v52;
      v54 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV_Tt1gq5(v52, 0);
      v55 = specialized Sequence._copySequenceContents(initializing:)(&v56, (v54 + 4), v53, v62, v25);

      if (v55 == v53)
      {

        return v54;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    if (one-time initialization token for tokenization != -1)
    {
LABEL_29:
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Log.tokenization);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1A8E85000, v30, v31, "Empty token array provided", v32, 2u);
      MEMORY[0x1AC57DBF0](v32, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void *TokenIDToTextConverterImpl.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[14];

  v8 = v0[17];

  return v0;
}

uint64_t TokenIDToTextConverterImpl.__deallocating_deinit()
{
  TokenIDToTextConverterImpl.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TokenIDToTextConverterProtocol.text.getter in conformance TokenIDToTextConverterImpl()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t LegacyTokenIDToTextConverterImpl.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for TokenIDToTextConverterProtocol.text.getter in conformance LegacyTokenIDToTextConverterImpl()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);

  return v2;
}

uint64_t protocol witness for TokenIDToTextConverterProtocol.textForTokenID(_:isStopTokenID:) in conformance TokenIDToTextConverterImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = *v6;
  a5();
  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
    v5 = BidirectionalCollection<>.joined(separator:)();
  }

  return v5;
}

unint64_t _StringGuts.validateInclusiveScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateInclusiveSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateInclusiveSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v7 = 0;
    a3 = 0;
    goto LABEL_30;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_30;
  }

  if (a3 < 0)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = a5 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v10 = a3 - 1;
  while (v7 < v5)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      v25 = result;
      v27 = a2;
      v16 = a3;
      v17 = a5;
      v18 = a4;
      v19 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      a3 = v16;
      a4 = v18;
      a5 = v17;
      v13 = v19;
      v14 = v20;
      result = v25;
      a2 = v27;
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v29[0] = a4;
        v29[1] = v8;
        v12 = v29 + v7;
      }

      else
      {
        v11 = v9;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v26 = result;
          v28 = a2;
          v21 = a5;
          v22 = a4;
          v23 = a3;
          v24 = _StringObject.sharedUTF8.getter();
          a3 = v23;
          a4 = v22;
          a5 = v21;
          v11 = v24;
          result = v26;
          a2 = v28;
        }

        v12 = (v11 + v7);
      }

      v13 = *v12;
      if ((*v12 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      v15 = (__clz(v13 ^ 0xFF) - 24);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
          v14 = 4;
        }

        goto LABEL_17;
      }

      if (v15 == 1)
      {
LABEL_16:
        v14 = 1;
      }

      else
      {
        v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
        v14 = 2;
      }
    }

LABEL_17:
    v7 += v14;
    *(a2 + 4 * v6) = v13;
    if (v10 == v6)
    {
      goto LABEL_30;
    }

    if (__OFADD__(++v6, 1))
    {
      __break(1u);
      goto LABEL_32;
    }
  }

  a3 = v6;
LABEL_30:
  *result = a4;
  result[1] = a5;
  result[2] = v7;
  result[3] = v5;
  return a3;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd, &_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t specialized TokenIDToTextConverterImpl.remainingUTF8CodeUnits(firstByte:)(char a1)
{
  if ((a1 & 0x80) == 0)
  {
    return 0;
  }

  v16[7] = v1;
  v16[8] = v2;
  if ((a1 & 0xE0) == 0xC0)
  {
    return 1;
  }

  if ((a1 & 0xF0) == 0xE0)
  {
    return 2;
  }

  if ((a1 & 0xF8) == 0xF0)
  {
    return 3;
  }

  if (one-time initialization token for tokenization != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.tokenization);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E7508];
    *(v10 + 16) = xmmword_1A8FC9400;
    v12 = MEMORY[0x1E69E7558];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    *(v10 + 32) = a1;
    v13 = String.init(format:_:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v16);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_1A8E85000, v6, v7, "Invalid first utf8 byte %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1AC57DBF0](v9, -1, -1);
    MEMORY[0x1AC57DBF0](v8, -1, -1);
  }

  type metadata accessor for GenerationError();
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t specialized TokenIDToTextConverterImpl.init(tokenizer:replacementTextByTokenText:isOneShot:)(void *a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 32) = 0;
  *(v3 + 40) = v4;
  *(v3 + 48) = v4;
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
  *(v3 + 104) = 4091452;
  *(v3 + 112) = 0xE300000000000000;
  *(v3 + 128) = 8492770;
  *(v3 + 136) = 0xA300000000000000;
  *(v3 + 72) = v4;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3;
  v5 = a1[5];
  v6 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v5);
  v7 = *(v6 + 8);

  *(v3 + 120) = v7(4091452, 0xE300000000000000, v5, v6);
  return v3;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Prompt.Attachment(0);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      outlined init with copy of TokenizationResult(a3 + v15 + v16 * v13, v12, type metadata accessor for Prompt.Attachment);
      v17 = a1(v12);
      if (v3)
      {
        outlined destroy of TokenizationResult(v12, type metadata accessor for Prompt.Attachment);

        goto LABEL_15;
      }

      if (v17)
      {
        outlined init with take of TokenizationResult(v12, v24, type metadata accessor for Prompt.Attachment);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        outlined init with take of TokenizationResult(v24, v14 + v15 + v20 * v16, type metadata accessor for Prompt.Attachment);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        outlined destroy of TokenizationResult(v12, type metadata accessor for Prompt.Attachment);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t protocol witness for GuidedGenerationTokenizer.tokenID(forText:) in conformance TokenizerRunner(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t protocol witness for GuidedGenerationTokenizer.text(forTokenID:) in conformance TokenizerRunner(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  (*(v4 + 16))(a1, v3, v4);
  return String.init<A>(_:)();
}

uint64_t protocol witness for GuidedGenerationTokenizer.longestTokenLength.getter in conformance TokenizerRunner()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t protocol witness for GuidedGenerationTokenizer.vocabularyCount.getter in conformance TokenizerRunner()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t protocol witness for GuidedGenerationTokenizer.isByte(tokenID:) in conformance TokenizerRunner(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 64))(a1, v3, v4) & 1;
}

uint64_t TokenizerRunner.__allocating_init(tokenizerPath:)()
{
  v0 = swift_allocObject();
  TokenizerRunner.init(tokenizerPath:)();
  return v0;
}

uint64_t TokenizedStaticPromptTemplatePrefix.renderedText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TokenizedStaticPromptTemplatePrefix.renderedText.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TokenizedStaticPromptTemplatePrefix.tokenIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

TokenGenerationCore::TokenizedStaticPromptTemplatePrefix __swiftcall TokenizedStaticPromptTemplatePrefix.init(renderedText:tokenIDs:)(Swift::String renderedText, Swift::OpaquePointer tokenIDs)
{
  *v2 = renderedText;
  *(v2 + 16) = tokenIDs;
  result.renderedText = renderedText;
  result.tokenIDs = tokenIDs;
  return result;
}

uint64_t static TokenizedStaticPromptTemplatePrefix.== infix(_:_:)(uint64_t *a1, void *a2)
{
  result = *a1;
  v4 = a1[2];
  v5 = a2[2];
  if (result != *a2 || a1[1] != a2[1])
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(v4 + 16);
  if (v7 != *(v5 + 16))
  {
    return 0;
  }

  if (!v7 || v4 == v5)
  {
    return 1;
  }

  v8 = (v4 + 32);
  v9 = (v5 + 32);
  while (v7)
  {
    v11 = *v8++;
    v10 = v11;
    v12 = *v9++;
    result = v10 == v12;
    if (v10 != v12 || v7-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}