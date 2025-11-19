Swift::Int AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_35_1();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x657361726870;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x726F68536F747561;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v41 = type metadata accessor for NSCodingAdaptor();
  v4 = OUTLINED_FUNCTION_14_0(v41);
  v39 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_5_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseV10CodingKeysOGMR);
  v12 = OUTLINED_FUNCTION_14_0(v11);
  v40 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v17 = &v36 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys();
  v19 = a1;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = v11;
    v44 = 2;
    v22 = v40;
    v21 = v41;
    static CodableWrapper.decode<A, B>(forType:forKey:container:)();
    v37 = v17;
    NSCodingAdaptor.data.getter();
    (*(v39 + 8))(v10, v21);
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    v24 = v22;
    if (v23)
    {
      v25 = v23;
      v43 = 0;
      v26 = v37;
      v27 = KeyedDecodingContainer.decode(_:forKey:)();
      v29 = v28;
      v41 = v27;
      v42 = 1;
      v30 = KeyedDecodingContainer.decode(_:forKey:)();
      v31 = v26;
      v33 = v32;
      (*(v24 + 8))(v31, v20);
      result = __swift_destroy_boxed_opaque_existential_1(v19);
      v35 = v38;
      *v38 = v41;
      v35[1] = v29;
      v35[2] = v30;
      v35[3] = v33;
      v35[4] = v25;
      return result;
    }

    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors();
    swift_allocError();
    swift_willThrow();
    (*(v22 + 8))(v37, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseV10CodingKeysOGMR);
  v5 = OUTLINED_FUNCTION_14_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v22[-1] - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 2;
  v13 = v2[4];
  v22[3] = type metadata accessor for NSCodingAdaptor();
  v22[4] = _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(&lazy protocol witness table cache variable for type NSCodingAdaptor and conformance NSCodingAdaptor, 255, &type metadata accessor for NSCodingAdaptor);
  __swift_allocate_boxed_opaque_existential_1(v22);
  v14 = v13;
  NSCodingAdaptor.init(data:)();
  v15 = v21;
  static CodableWrapper.encode<A>(to:forKey:instance:)();
  if (v15)
  {
    (*(v7 + 8))(v11, v4);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    v17 = *v2;
    v18 = v2[1];
    LOBYTE(v22[0]) = 0;
    OUTLINED_FUNCTION_47_1();
    v19 = v2[2];
    v20 = v2[3];
    LOBYTE(v22[0]) = 1;
    OUTLINED_FUNCTION_47_1();
    return (*(v7 + 8))(v11, v4);
  }
}

double protocol witness for Decodable.init(from:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.init(from:)(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata.hashValue.getter(void *a1)
{
  OUTLINED_FUNCTION_35_1();
  Hasher._combine(_:)([a1 hash]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

Swift::Int AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors.hashValue.getter()
{
  OUTLINED_FUNCTION_35_1();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors()
{
  Hasher.init(_seed:)();
  AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance AutoShortcutsSuggestionsOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static AppIntentsSuggestionsOwnerDefinitionFactory.createAppIntentSuggestions(linkClient:toolClient:builder:);

  return static AutoShortcutsSuggestionsOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t DialogProperties.resolvedPhrase.getter@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1();
  specialized Dictionary.subscript.getter(0xD000000000000013, 0x8000000000042F20, v3, &v13);

  if (!v14)
  {
    result = outlined destroy of CoreSignalTypes?(&v13, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_5:
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    goto LABEL_6;
  }

  v5 = v9;
  v6 = v10;
  v7 = v11;
  v8 = v12;
LABEL_6:
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

uint64_t LNActionMetadata.isConditionallyEnabled.getter()
{
  v1 = [v0 systemProtocols];
  type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNSystemProtocol, LNSystemProtocol_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = [objc_opt_self() conditionallyEnabledProtocol];
  v8 = v3;
  v7[2] = &v8;
  specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v7, v2);
  v5 = v4;

  return v5 & 1;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, a2);
  specialized ContiguousArray._endMutation()();
  return swift_bridgeObjectRelease_n();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  swift_bridgeObjectRetain_n();
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    v7 = result;
    UninitializedySayxG_SpyxGtSiFZSo14LNAutoShortcutC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo14LNAutoShortcutC_Tt0g5(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);

    result = specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo14LNAutoShortcutC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = a5 + 56;
    v40 = *a4;
    do
    {
      v9 = *(v7 + 8 * v6);
      v39 = v6;
LABEL_4:
      v10 = v6 - 1;
      v11 = *(v7 + 8 * (v6 - 1));
      v12 = v9;
      v42 = v11;
      v41 = v12;
      v13 = [v12 actionIdentifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (*(a5 + 16))
      {
        v17 = *(a5 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v18 = Hasher._finalize()();
        v19 = ~(-1 << *(a5 + 32));
        do
        {
          v20 = v18 & v19;
          v21 = (1 << (v18 & v19)) & *(v8 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8));
          v22 = v21 != 0;
          if (!v21)
          {
            break;
          }

          v23 = (*(a5 + 48) + 16 * v20);
          if (*v23 == v14 && v23[1] == v16)
          {
            break;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v18 = v20 + 1;
        }

        while ((v25 & 1) == 0);
      }

      else
      {
        v22 = 0;
      }

      v26 = [v42 actionIdentifier];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (*(a5 + 16))
      {
        v30 = *(a5 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v31 = Hasher._finalize()();
        v32 = ~(-1 << *(a5 + 32));
        while (1)
        {
          v33 = v31 & v32;
          if (((*(v8 + (((v31 & v32) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v31 & v32)) & 1) == 0)
          {
            break;
          }

          v34 = (*(a5 + 48) + 16 * v33);
          if (*v34 != v27 || v34[1] != v29)
          {
            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v31 = v33 + 1;
            if ((v36 & 1) == 0)
            {
              continue;
            }
          }

          v7 = v40;
          if (v22)
          {
            goto LABEL_27;
          }

          if (!v40)
          {
            __break(1u);
            return;
          }

          v9 = *(v40 + 8 * v6);
          *(v40 + 8 * v6) = *(v40 + 8 * v10);
          *(v40 + 8 * v10) = v9;
          --v6;
          if (v10 != a1)
          {
            goto LABEL_4;
          }

          goto LABEL_27;
        }
      }

      v7 = v40;
LABEL_27:
      v6 = v39 + 1;
    }

    while (v39 + 1 != a2);
  }
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = _swiftEmptyArrayStorage;
LABEL_136:
    v170 = *a1;
    if (!*a1)
    {
      goto LABEL_179;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_138:
      v140 = (v8 + 16);
      v141 = *(v8 + 16);
      for (i = v8; ; v8 = i)
      {
        if (v141 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v142 = *a3;
        if (!*a3)
        {
          goto LABEL_176;
        }

        v143 = (v8 + 16 * v141);
        v144 = *v143;
        v145 = v140;
        v146 = &v140[2 * v141];
        v8 = v146[1];
        v147 = (v142 + 8 * *v143);
        v148 = (v142 + 8 * *v146);
        v172 = (v142 + 8 * v8);

        specialized _merge<A>(low:mid:high:buffer:by:)(v147, v148, v172, v170, v5);
        if (v169)
        {
          break;
        }

        if (v8 < v144)
        {
          goto LABEL_164;
        }

        if (v141 - 2 >= *v145)
        {
          goto LABEL_165;
        }

        v140 = v145;
        *v143 = v144;
        v143[1] = v8;
        v149 = *v145 - v141;
        if (*v145 < v141)
        {
          goto LABEL_166;
        }

        v141 = *v145 - 1;
        memmove(v146, v146 + 2, 16 * v149);
        *v145 = v141;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_173:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    goto LABEL_138;
  }

  v171 = a5 + 56;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v167 = v5;
LABEL_3:
  v9 = v7 + 1;
  if (v7 + 1 >= v6)
  {
    goto LABEL_46;
  }

  v10 = v7;
  v153 = v8;
  v158 = *a3;
  v11 = *(*a3 + 8 * v7);
  v161 = v6;
  v12 = *(*a3 + 8 * v9);
  v13 = v11;
  v14 = [v12 actionIdentifier];
  v164 = v7 + 1;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = specialized Set.contains(_:)(v15, v17, v5);

  v19 = [v13 actionIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  LOBYTE(v19) = specialized Set.contains(_:)(v20, v22, v5);
  v23 = v161;

  v159 = !v18 & v19;
  v24 = v164;
  v156 = v10;
  for (j = v10 + 2; ; ++j)
  {
    v8 = v24 + 1;
    if (v24 + 1 >= v23)
    {
      break;
    }

    v26 = *(v158 + 8 * v24);
    v27 = *(v158 + 8 * v8);
    v28 = v26;
    v170 = v27;
    v29 = [v27 actionIdentifier];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (*(v5 + 16))
    {
      v33 = *(v5 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v34 = Hasher._finalize()();
      v35 = ~(-1 << *(v5 + 32));
      do
      {
        v36 = v34 & v35;
        v37 = (1 << (v34 & v35)) & *(v171 + (((v34 & v35) >> 3) & 0xFFFFFFFFFFFFFF8));
        v38 = v37 != 0;
        if (!v37)
        {
          break;
        }

        v39 = (*(v5 + 48) + 16 * v36);
        if (*v39 == v30 && v39[1] == v32)
        {
          break;
        }

        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v34 = v36 + 1;
      }

      while ((v41 & 1) == 0);
    }

    else
    {
      v38 = 0;
    }

    v42 = [v28 actionIdentifier];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (!*(v5 + 16))
    {
LABEL_26:
      v23 = v161;

LABEL_27:
      if (v159)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v46 = *(v5 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v47 = Hasher._finalize()();
    v48 = ~(-1 << *(v5 + 32));
    do
    {
      v49 = v47 & v48;
      if (((*(v171 + (((v47 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v47 & v48)) & 1) == 0)
      {
        goto LABEL_26;
      }

      v50 = (*(v5 + 48) + 16 * v49);
      if (*v50 == v43 && v50[1] == v45)
      {
        break;
      }

      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v47 = v49 + 1;
    }

    while ((v52 & 1) == 0);

    if (v38)
    {
      v23 = v161;
      goto LABEL_27;
    }

    v23 = v161;
    if ((v159 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_30:
    v24 = v8;
  }

  v8 = v23;
  if ((v159 & 1) == 0)
  {
    v9 = v23;
    goto LABEL_45;
  }

LABEL_32:
  v53 = v156;
  if (v8 < v156)
  {
    goto LABEL_170;
  }

  if (v156 >= v8)
  {
    v9 = v8;
    v8 = v153;
    v7 = v156;
  }

  else
  {
    if (v23 >= j)
    {
      v54 = j;
    }

    else
    {
      v54 = v23;
    }

    v55 = 8 * v54 - 8;
    v56 = 8 * v156;
    v57 = v8;
    do
    {
      if (v53 != --v57)
      {
        v58 = *a3;
        if (!*a3)
        {
          goto LABEL_177;
        }

        v59 = *(v58 + v56);
        *(v58 + v56) = *(v58 + v55);
        *(v58 + v55) = v59;
      }

      ++v53;
      v55 -= 8;
      v56 += 8;
    }

    while (v53 < v57);
LABEL_42:
    v9 = v8;
LABEL_45:
    v8 = v153;
    v7 = v156;
  }

LABEL_46:
  v60 = a3[1];
  if (v9 >= v60)
  {
    goto LABEL_82;
  }

  if (__OFSUB__(v9, v7))
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if (v9 - v7 >= a4)
  {
    goto LABEL_82;
  }

  v61 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_171;
  }

  if (v61 >= v60)
  {
    v61 = a3[1];
  }

  if (v61 < v7)
  {
    goto LABEL_172;
  }

  if (v9 == v61)
  {
    goto LABEL_82;
  }

  v154 = v8;
  v157 = v7;
  v62 = *a3;
  v160 = v61;
  v162 = *a3;
  while (2)
  {
    v63 = *(v62 + 8 * v9);
    v165 = v9;
LABEL_56:
    v64 = v9 - 1;
    v65 = *(v62 + 8 * (v9 - 1));
    v66 = v63;
    v170 = v65;
    v67 = v66;
    v68 = [v66 actionIdentifier];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    if (*(v5 + 16))
    {
      v72 = *(v5 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v73 = Hasher._finalize()();
      v74 = ~(-1 << *(v5 + 32));
      do
      {
        v75 = v73 & v74;
        v76 = (1 << (v73 & v74)) & *(v171 + (((v73 & v74) >> 3) & 0xFFFFFFFFFFFFFF8));
        v77 = v76 != 0;
        if (!v76)
        {
          break;
        }

        v78 = (*(v5 + 48) + 16 * v75);
        if (*v78 == v69 && v78[1] == v71)
        {
          break;
        }

        v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v73 = v75 + 1;
      }

      while ((v80 & 1) == 0);
    }

    else
    {
      v77 = 0;
    }

    v81 = [v170 actionIdentifier];
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;

    if (!*(v5 + 16))
    {
LABEL_78:

LABEL_79:
      v62 = v162;
LABEL_80:
      v9 = v165 + 1;
      if (v165 + 1 != v160)
      {
        continue;
      }

      v9 = v160;
      v8 = v154;
      v7 = v157;
LABEL_82:
      if (v9 >= v7)
      {
        v166 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = *(v8 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v138;
        }

        v92 = *(v8 + 16);
        v93 = v92 + 1;
        if (v92 >= *(v8 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v8 = v139;
        }

        *(v8 + 16) = v93;
        v94 = v8 + 32;
        v95 = (v8 + 32 + 16 * v92);
        *v95 = v7;
        v95[1] = v166;
        v170 = *a1;
        if (!*a1)
        {
          goto LABEL_178;
        }

        if (!v92)
        {
LABEL_132:
          v6 = a3[1];
          v7 = v166;
          if (v166 >= v6)
          {
            goto LABEL_136;
          }

          goto LABEL_3;
        }

        v163 = v8 + 32;
        while (1)
        {
          v96 = v93 - 1;
          v97 = (v94 + 16 * (v93 - 1));
          v98 = (v8 + 16 * v93);
          if (v93 >= 4)
          {
            break;
          }

          if (v93 == 3)
          {
            v99 = *(v8 + 32);
            v100 = *(v8 + 40);
            v109 = __OFSUB__(v100, v99);
            v101 = v100 - v99;
            v102 = v109;
LABEL_103:
            if (v102)
            {
              goto LABEL_155;
            }

            v114 = *v98;
            v113 = v98[1];
            v115 = __OFSUB__(v113, v114);
            v116 = v113 - v114;
            v117 = v115;
            if (v115)
            {
              goto LABEL_158;
            }

            v118 = v97[1];
            v119 = v118 - *v97;
            if (__OFSUB__(v118, *v97))
            {
              goto LABEL_161;
            }

            if (__OFADD__(v116, v119))
            {
              goto LABEL_163;
            }

            if (v116 + v119 >= v101)
            {
              if (v101 < v119)
              {
                v96 = v93 - 2;
              }

              goto LABEL_125;
            }

            goto LABEL_118;
          }

          if (v93 < 2)
          {
            goto LABEL_157;
          }

          v121 = *v98;
          v120 = v98[1];
          v109 = __OFSUB__(v120, v121);
          v116 = v120 - v121;
          v117 = v109;
LABEL_118:
          if (v117)
          {
            goto LABEL_160;
          }

          v123 = *v97;
          v122 = v97[1];
          v109 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v109)
          {
            goto LABEL_162;
          }

          if (v124 < v116)
          {
            goto LABEL_132;
          }

LABEL_125:
          if (v96 - 1 >= v93)
          {
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
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          v128 = *a3;
          if (!*a3)
          {
            swift_bridgeObjectRelease_n();
            __break(1u);
            goto LABEL_175;
          }

          v129 = v8;
          v130 = (v94 + 16 * (v96 - 1));
          v131 = *v130;
          v5 = v96;
          v132 = (v94 + 16 * v96);
          v8 = v132[1];
          v133 = (v128 + 8 * *v130);
          v134 = (v128 + 8 * *v132);
          v135 = (v128 + 8 * v8);

          specialized _merge<A>(low:mid:high:buffer:by:)(v133, v134, v135, v170, v167);
          if (v169)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v8 < v131)
          {
            goto LABEL_150;
          }

          v136 = *(v129 + 16);
          if (v5 > v136)
          {
            goto LABEL_151;
          }

          *v130 = v131;
          v130[1] = v8;
          if (v5 >= v136)
          {
            goto LABEL_152;
          }

          v93 = v136 - 1;
          memmove(v132, v132 + 2, 16 * (v136 - 1 - v5));
          v8 = v129;
          *(v129 + 16) = v136 - 1;
          v94 = v163;
          v5 = v167;
          if (v136 <= 2)
          {
            goto LABEL_132;
          }
        }

        v103 = v94 + 16 * v93;
        v104 = *(v103 - 64);
        v105 = *(v103 - 56);
        v109 = __OFSUB__(v105, v104);
        v106 = v105 - v104;
        if (v109)
        {
          goto LABEL_153;
        }

        v108 = *(v103 - 48);
        v107 = *(v103 - 40);
        v109 = __OFSUB__(v107, v108);
        v101 = v107 - v108;
        v102 = v109;
        if (v109)
        {
          goto LABEL_154;
        }

        v110 = v98[1];
        v111 = v110 - *v98;
        if (__OFSUB__(v110, *v98))
        {
          goto LABEL_156;
        }

        v109 = __OFADD__(v101, v111);
        v112 = v101 + v111;
        if (v109)
        {
          goto LABEL_159;
        }

        if (v112 >= v106)
        {
          v126 = *v97;
          v125 = v97[1];
          v109 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v109)
          {
            goto LABEL_167;
          }

          if (v101 < v127)
          {
            v96 = v93 - 2;
          }

          goto LABEL_125;
        }

        goto LABEL_103;
      }

LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    break;
  }

  v85 = *(v5 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v86 = Hasher._finalize()();
  v87 = ~(-1 << *(v5 + 32));
  do
  {
    v88 = v86 & v87;
    if (((*(v171 + (((v86 & v87) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v86 & v87)) & 1) == 0)
    {
      goto LABEL_78;
    }

    v89 = (*(v5 + 48) + 16 * v88);
    if (*v89 == v82 && v89[1] == v84)
    {
      break;
    }

    v91 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v86 = v88 + 1;
  }

  while ((v91 & 1) == 0);

  if (v77)
  {
    goto LABEL_79;
  }

  v62 = v162;
  if (v162)
  {
    v63 = *(v162 + 8 * v9);
    *(v162 + 8 * v9) = *(v162 + 8 * v64);
    *(v162 + 8 * v64) = v63;
    --v9;
    if (v64 == v157)
    {
      goto LABEL_80;
    }

    goto LABEL_56;
  }

LABEL_175:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_176:

  __break(1u);
LABEL_177:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_178:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_179:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, id *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 8;
  v11 = a5 + 56;
  v12 = (a3 - a2) / 8;
  if (v10 >= v12)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 8, a4);
    v13 = &v6[v12];
    v82 = v9;
    v84 = v6;
LABEL_33:
    v45 = v8 - 1;
    v88 = v7;
    v86 = v8;
    v76 = v8 - 1;
    while (v13 > v6 && v8 > v9)
    {
      v80 = v13;
      v47 = v13 - 1;
      v48 = *v45;
      v77 = *(v13 - 1);
      v78 = v48;
      v49 = [v77 actionIdentifier];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (*(a5 + 16))
      {
        v53 = *(a5 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v54 = Hasher._finalize()();
        v55 = ~(-1 << *(a5 + 32));
        do
        {
          v56 = v54 & v55;
          v57 = (1 << (v54 & v55)) & *(v11 + (((v54 & v55) >> 3) & 0xFFFFFFFFFFFFFF8));
          v58 = v57 != 0;
          if (!v57)
          {
            break;
          }

          v59 = (*(a5 + 48) + 16 * v56);
          if (*v59 == v50 && v59[1] == v52)
          {
            break;
          }

          v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v54 = v56 + 1;
        }

        while ((v61 & 1) == 0);
      }

      else
      {
        v58 = 0;
      }

      v7 = v88 - 1;
      v62 = [v78 actionIdentifier];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      if (*(a5 + 16))
      {
        v66 = *(a5 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v67 = Hasher._finalize()();
        v68 = ~(-1 << *(a5 + 32));
        while (1)
        {
          v69 = v67 & v68;
          if (((*(v11 + (((v67 & v68) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v67 & v68)) & 1) == 0)
          {
            break;
          }

          v70 = (*(a5 + 48) + 16 * v69);
          if (*v70 != v63 || v70[1] != v65)
          {
            v72 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v67 = v69 + 1;
            if ((v72 & 1) == 0)
            {
              continue;
            }
          }

          if (v58)
          {
            goto LABEL_60;
          }

          v6 = v84;
          v8 = v76;
          v13 = v80;
          v9 = v82;
          if (v88 != v86)
          {
            *v7 = *v76;
            v8 = v76;
          }

          goto LABEL_33;
        }
      }

LABEL_60:
      v6 = v84;
      v8 = v86;
      v9 = v82;
      v45 = v76;
      v29 = v88-- == v80;
      v13 = v47;
      if (!v29)
      {
        *v7 = *v47;
        v88 = v7;
        v13 = v47;
      }
    }
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 8, a4);
    v13 = &v6[v10];
    v79 = v13;
    v87 = v7;
    while (v6 < v13 && v8 < v7)
    {
      v83 = v6;
      v85 = v8;
      v15 = *v6;
      v16 = *v8;
      v17 = v15;
      v18 = [v16 actionIdentifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v81 = v9;
      if (*(a5 + 16))
      {
        v22 = *(a5 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v23 = Hasher._finalize()();
        v24 = ~(-1 << *(a5 + 32));
        do
        {
          v25 = v23 & v24;
          v26 = (1 << (v23 & v24)) & *(v11 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8));
          v27 = v26 != 0;
          if (!v26)
          {
            break;
          }

          v28 = (*(a5 + 48) + 16 * v25);
          v29 = *v28 == v19 && v28[1] == v21;
          if (v29)
          {
            break;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v23 = v25 + 1;
        }

        while ((v30 & 1) == 0);
      }

      else
      {
        v27 = 0;
      }

      v31 = [v17 actionIdentifier];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      if (*(a5 + 16))
      {
        v35 = *(a5 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v36 = Hasher._finalize()();
        v37 = ~(-1 << *(a5 + 32));
        while (1)
        {
          v38 = v36 & v37;
          if (((*(v11 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
          {
            break;
          }

          v39 = (*(a5 + 48) + 16 * v38);
          if (*v39 != v32 || v39[1] != v34)
          {
            v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v36 = v38 + 1;
            if ((v41 & 1) == 0)
            {
              continue;
            }
          }

          if (v27)
          {
            goto LABEL_28;
          }

          v6 = v83;
          v42 = v85;
          v8 = v85 + 1;
          v43 = v81;
          v44 = v81 == v85;
          goto LABEL_29;
        }
      }

LABEL_28:
      v43 = v81;
      v42 = v83;
      v6 = v83 + 1;
      v44 = v81 == v83;
      v8 = v85;
LABEL_29:
      v7 = v87;
      if (!v44)
      {
        *v43 = *v42;
      }

      v9 = (v43 + 1);
      v13 = v79;
    }

    v8 = v9;
  }

  v73 = v13 - v6;
  if (v8 != v6 || v8 >= &v6[v73])
  {
    memmove(v8, v6, 8 * v73);
  }

  return 1;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      v5 = v4;
      v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14LNAutoShortcutC_Tt1g5(v4, 0);
      specialized Array._copyContents(initializing:)(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return OUTLINED_FUNCTION_13_0();
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return OUTLINED_FUNCTION_13_0();
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
        swift_arrayInitWithCopy();
        return OUTLINED_FUNCTION_13_0();
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [LNAutoShortcut] and conformance [A]();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14LNAutoShortcutCGMd, &_sSaySo14LNAutoShortcutCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return OUTLINED_FUNCTION_13_0();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  IsNativeType = specialized Array._hoistableIsNativeTypeChecked()(a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, IsNativeType, a3);
  if (IsNativeType)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

void specialized Dictionary<>.hash(into:)(const void *a1, uint64_t a2)
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

  v9 = 0;
  for (i = 0; v7; v9 ^= Hasher._finalize()())
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 8 * v13);
    memcpy(__dst, a1, sizeof(__dst));

    String.hash(into:)();

    specialized Dictionary<>.hash(into:)(__dst, v17);
    swift_bridgeObjectRelease_n();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

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

  v9 = 0;
  for (i = 0; v7; v9 ^= Hasher._finalize()())
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v11 << 9) | (8 * v12);
    v14 = *(*(a2 + 48) + v13);
    v15 = *(*(a2 + 56) + v13);
    memcpy(__dst, a1, sizeof(__dst));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRetain();
    String.hash(into:)();

    Hasher._combine(_:)([v15 hash]);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[17] = a2;
  v6 = type metadata accessor for DialogDetails();
  v4[20] = v6;
  v7 = *(v6 - 8);
  v4[21] = v7;
  v8 = *(v7 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[5] = type metadata accessor for DefaultLinkClient();
  v4[6] = &protocol witness table for DefaultLinkClient;
  v4[2] = a1;

  return _swift_task_switch(specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:), 0, 0);
}

uint64_t specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v0[18] = v5;
  v0[19] = v6;
  v0[17] = v7;
  v8 = type metadata accessor for DialogDetails();
  v0[20] = v8;
  v9 = *(v8 - 8);
  v0[21] = v9;
  v10 = *(v9 + 64) + 15;
  v0[22] = swift_task_alloc();
  v0[5] = v4;
  v0[6] = v2;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_15(v4);
  (*(v11 + 16))();
  v12 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_3BA84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x3C25CLL);
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

_BYTE *storeEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x3C340);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_3C3A0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_21_1();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)()
{
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_39_1();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_13_5(v4);

  return v6(v5);
}

uint64_t sub_3C484()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3C4D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  OUTLINED_FUNCTION_15(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)partial apply()
{
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_39_1();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_13_5(v4);

  return v6(v5);
}

uint64_t OUTLINED_FUNCTION_2_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_19_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)(0xD000000000000016, a9 | 0x8000000000000000, v10, v9, v11);
}

uint64_t OUTLINED_FUNCTION_31_1()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 56) = v1;

  return dispatch thunk of SuggestionOwnerDefinitionBuilder.withConfiguratorProvider(_:)(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_34_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, va);
}

uint64_t OUTLINED_FUNCTION_35_1()
{

  return Hasher.init(_seed:)();
}

void OUTLINED_FUNCTION_41_1()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
}

void OUTLINED_FUNCTION_46_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t LinkRegistryObserver.__allocating_init(refreshableService:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_17();
  v4 = swift_allocObject();
  LinkRegistryObserver.init(refreshableService:)(a1, a2);
  return v4;
}

uint64_t LinkRegistryObserver.init(refreshableService:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  *(v2 + 16) = v5;
  v6 = LNMetadataChangedNotification;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12[4] = partial apply for closure #1 in LinkRegistryObserver.init(refreshableService:);
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v12[3] = &block_descriptor_0;
  v8 = _Block_copy(v12);
  swift_unknownObjectRetain();
  v9 = v5;

  v10 = [v9 addObserverForName:v6 object:0 queue:0 usingBlock:v8];
  swift_unknownObjectRelease();
  _Block_release(v8);

  *(v2 + 24) = v10;
  return v2;
}

void closure #1 in LinkRegistryObserver.init(refreshableService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.linkSuggestions);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Received LNMetadataChanged notification - refreshing plugin", v12, 2u);
  }

  if (a2)
  {
    v13 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = a3;
    swift_unknownObjectRetain();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in LinkRegistryObserver.init(refreshableService:), v14);
  }

  else
  {
    v19 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v19, v15, "Unable to refresh link suggestions. No refreshable service is found", v16, 2u);
    }

    v17 = v19;
  }
}

uint64_t sub_3CD18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_0_17();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t closure #1 in closure #1 in LinkRegistryObserver.init(refreshableService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = async function pointer to dispatch thunk of SuggestionsServiceRefreshable.refreshAsync()[1];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator;

  return dispatch thunk of SuggestionsServiceRefreshable.refreshAsync()(ObjectType, a5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LinkRegistryObserver.deinit()
{
  [*(v0 + 16) removeObserver:*(v0 + 24)];

  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t LinkRegistryObserver.__deallocating_deinit()
{
  LinkRegistryObserver.deinit();
  v0 = OUTLINED_FUNCTION_0_17();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_3D23C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in LinkRegistryObserver.init(refreshableService:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_8(v7);
  *v8 = v9;
  v8[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator;

  return closure #1 in closure #1 in LinkRegistryObserver.init(refreshableService:)(a1, v3, v4, v6, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_10();

  return v5();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_8(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_7(v4);

  return v7(v6);
}

uint64_t sub_3D5A8()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_0_17();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_13()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_8(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_7(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

Swift::String __swiftcall DialogIdProvider.getId()()
{
  v0 = DialogIdProvider.getId()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}