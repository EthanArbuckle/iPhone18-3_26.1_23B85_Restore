uint64_t specialized static InformationSuggestion.suggestionMatched(_:)(void *a1)
{
  v2 = [a1 domainUseCase];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [a1 infoDomain];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (one-time initialization token for serverMappings != -1)
      {
        swift_once();
      }

      v12 = static InformationSuggestion.serverMappings;
      if (*(&dword_10 + static InformationSuggestion.serverMappings))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
        v15 = v14;

        if (v15)
        {
          v16 = *(*&stru_20.segname[v12 + 16] + 8 * v13);
          if (*(v16 + 16))
          {

            v17 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v6);
            v19 = v18;

            if (v19)
            {
              v20 = *(*(v16 + 56) + 16 * v17);

              return v20;
            }
          }
        }
      }

      else
      {
      }
    }
  }

  return 25;
}

uint64_t specialized static InformationSuggestionsPluginOwnerDefinitionFactory.enabledLocales(for:)(char a1)
{
  v2 = InformationSuggestion.rawValue.getter(a1);
  v3 = v1;
  if (v2 == 0xD000000000000011 && 0x800000000001BF60 == v1)
  {
    goto LABEL_3;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    goto LABEL_5;
  }

  if (v2 == 0xD000000000000017 && 0x800000000001BF80 == v3)
  {
LABEL_3:

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
    v5 = *(type metadata accessor for Locale() - 8);
    v6 = *(v5 + 72);
    v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AD90;
LABEL_6:
    Locale.init(identifier:)();
    return v8;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_5;
  }

  if (v2 == 0xD000000000000015 && 0x800000000001BFA0 == v3)
  {

LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
    v12 = *(type metadata accessor for Locale() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B580;
    Locale.init(identifier:)();
    goto LABEL_6;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_14;
  }

  if (v2 == 0xD000000000000019 && 0x800000000001BE70 == v3)
  {

LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
    v16 = *(type metadata accessor for Locale() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B600;
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    Locale.init(identifier:)();
    goto LABEL_6;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    goto LABEL_19;
  }

  return static SuggestionConstants.t41Locales.getter();
}

uint64_t sub_17240()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC32SiriInformationSuggestionsPlugin0D10SuggestionO_Say0cE3Kit6SignalCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSay0cE3Kit6SignalCGGMd, &_ss18_DictionaryStorageCy32SiriInformationSuggestionsPlugin0D10SuggestionOSay0cE3Kit6SignalCGGMR);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v9 = *a3;

  result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, v5 & 1);
    v16 = *a3;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + result) = v7;
    *(v18[7] + 8 * result) = v8;
    v24 = v18[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v25;
    v15 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v23 = result;
  specialized _NativeDictionary.copy()();
  result = v23;
  v18 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = *(v18[7] + 8 * result);
  v20 = result;

  v21 = v18[7];
  v22 = *(v21 + 8 * v20);
  *(v21 + 8 * v20) = v19;

  v15 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 56);
    v3 = 1;
    while (1)
    {
      v8 = *(v5 - 8);
      v6 = *v5;
      v30 = *a3;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      v32 = v30[2];
      v33 = (v31 & 1) == 0;
      v13 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v13)
      {
        goto LABEL_23;
      }

      v7 = v31;
      if (v30[3] < v34)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, 1);
        v35 = *a3;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
        if ((v7 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      v37 = *a3;
      if (v7)
      {
        v26 = *(v37[7] + 8 * result);
        v27 = result;

        v28 = v37[7];
        v29 = *(v28 + 8 * v27);
        *(v28 + 8 * v27) = v26;
      }

      else
      {
        v37[(result >> 6) + 8] |= 1 << result;
        *(v37[6] + result) = v8;
        *(v37[7] + 8 * result) = v6;
        v38 = v37[2];
        v13 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v37[2] = v39;
      }

      v5 += 2;
      if (!--v15)
      {
        return result;
      }
    }
  }

  return result;
}

{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 56);
  v43 = *(result + 48);
  v10 = *a3;

  result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, i & 1);
    v17 = *a3;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v24 = (v19[6] + 16 * result);
    *v24 = v8;
    v24[1] = v7;
    v25 = (v19[7] + 16 * result);
    *v25 = v43;
    v25[1] = v9;
    v26 = v19[2];
    v14 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v27;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v23 = result;
  specialized _NativeDictionary.copy()();
  result = v23;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = result;

  v21 = (v19[7] + 16 * v20);
  v22 = v21[1];
  *v21 = v43;
  v21[1] = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 88); ; i += 4)
    {
      v7 = *(i - 3);
      v9 = *(i - 2);
      v3 = *(i - 1);
      v6 = *i;
      v31 = *a3;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
      v33 = v31[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        break;
      }

      v8 = v32;
      if (v31[3] < v35)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, 1);
        v36 = *a3;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
        if ((v8 & 1) != (v37 & 1))
        {
          goto LABEL_5;
        }
      }

      v38 = *a3;
      if (v8)
      {
        v28 = result;

        v29 = (v38[7] + 16 * v28);
        v30 = v29[1];
        *v29 = v3;
        v29[1] = v6;
      }

      else
      {
        v38[(result >> 6) + 8] |= 1 << result;
        v39 = (v38[6] + 16 * result);
        *v39 = v7;
        v39[1] = v9;
        v40 = (v38[7] + 16 * result);
        *v40 = v3;
        v40[1] = v6;
        v41 = v38[2];
        v14 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v38[2] = v42;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

unint64_t specialized AppBundleIdentifier.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppBundleIdentifier.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized InformationSuggestion.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

unint64_t lazy protocol witness table accessor for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback()
{
  result = lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback;
  if (!lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback;
  if (!lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback;
  if (!lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback;
  if (!lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback;
  if (!lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionOverrideDialog.OverrideDialogCallback and conformance SuggestionOverrideDialog.OverrideDialogCallback);
  }

  return result;
}

uint64_t sub_1796C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

unint64_t lazy protocol witness table accessor for type AppBundleIdentifier and conformance AppBundleIdentifier()
{
  result = lazy protocol witness table cache variable for type AppBundleIdentifier and conformance AppBundleIdentifier;
  if (!lazy protocol witness table cache variable for type AppBundleIdentifier and conformance AppBundleIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppBundleIdentifier and conformance AppBundleIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [InformationSuggestion] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [InformationSuggestion] and conformance [A];
  if (!lazy protocol witness table cache variable for type [InformationSuggestion] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay32SiriInformationSuggestionsPlugin0B10SuggestionOGMd, &_sSay32SiriInformationSuggestionsPlugin0B10SuggestionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [InformationSuggestion] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InformationSuggestion and conformance InformationSuggestion()
{
  result = lazy protocol witness table cache variable for type InformationSuggestion and conformance InformationSuggestion;
  if (!lazy protocol witness table cache variable for type InformationSuggestion and conformance InformationSuggestion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InformationSuggestion and conformance InformationSuggestion);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppBundleIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppBundleIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InformationSuggestion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InformationSuggestion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t getEnumTagSinglePayload for SuggestionOverrideDialog.OverrideDialogCallback(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for SuggestionOverrideDialog.OverrideDialogCallback(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in static InformationSuggestion.parameterFromServer(named:as:logParameter:)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #3 in InfoServerGenerator.createSuggestionForCandidate(candidate:factory:locale:);

  return closure #1 in static InformationSuggestion.parameterFromServer(named:as:logParameter:)(a1, a2, v7, v6);
}

uint64_t sub_18134()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t closure #1 in static InformationSuggestion.parameterFromServer(named:as:logParameter:)partial apply(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any);

  return closure #1 in static InformationSuggestion.parameterFromServer(named:as:logParameter:)(a1, a2, v7, v6);
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s18SiriSuggestionsKit11DomainOwnerCAcA0E0AAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t static RelatedQuestionsDefinition.addRelatedQuestionsSuggestion(_:)()
{
  v0 = type metadata accessor for DialogDetails();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for INInformationUseCaseIntent();
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  static SuggestionConstants.relatedQuestionsSuggestionId.getter();
  *v4 = &async function pointer to specialized thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any);
  v4[1] = 0;
  (*(v1 + 104))(v4, enum case for DialogDetails.catTemplateCallback(_:), v0);
  v8 = v9;
  v5 = dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)();

  (*(v1 + 8))(v4, v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v5;
}

uint64_t static RelatedQuestionsDefinition.relatedQuestionsUtteranceMapper@Sendable (_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if (INInformationUseCaseIntent.supportsRelatedQuestions()() && (v4 = [a1 exampleUtterance]) != 0)
  {
    v5 = v4;
    a2[3] = type metadata accessor for INInformationUseCaseUtterance();
    *a2 = v5;
    v6 = &enum case for IntentParameter.directAssignment(_:);
  }

  else
  {
    v6 = &enum case for IntentParameter.ignore(_:);
  }

  v7 = *v6;
  v8 = type metadata accessor for IntentParameter();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

uint64_t closure #1 in static RelatedQuestionsDefinition.addRelatedQuestionsSuggestion(_:)(uint64_t a1, uint64_t a2)
{
  *&v51 = a2;
  v3 = type metadata accessor for SiriSuggestions.IntentType();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  *&v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v47 - v9;
  v11 = *(a1 + 24);
  v50 = *(a1 + 40);
  v47 = v11;
  v49 = __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  v48 = static SuggestionConstants.serverExampleUtterance.getter();
  v12 = static SuggestionConstants.serverExampleUtterance.getter();
  v14 = v13;
  v15 = type metadata accessor for FromContextResolver();
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v14;
  v16[4] = &async function pointer to closure #1 in closure #1 in static RelatedQuestionsDefinition.addRelatedQuestionsSuggestion(_:);
  v16[5] = 0;
  *&v64 = v15;
  *(&v64 + 1) = lazy protocol witness table accessor for type FromContextResolver and conformance FromContextResolver(&lazy protocol witness table cache variable for type FromContextResolver and conformance FromContextResolver, type metadata accessor for FromContextResolver);
  v63[0] = v16;
  static SuggestionConstants.serverExampleUtterance.getter();
  if (one-time initialization token for utteranceToLoggingIdTransformer != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, static RelatedQuestionsDefinition.utteranceToLoggingIdTransformer);
  (*(v7 + 16))(v10, v17, v6);
  outlined init with copy of CandidateSuggestion(v51, v66);
  v18 = type metadata accessor for ResolvableParameter();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v67 = v47;
  v68 = v50;
  __swift_allocate_boxed_opaque_existential_0Tm(v66);
  SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:)();

  outlined destroy of Resolver?(v63);
  v21 = v68;
  v51 = v67;
  __swift_project_boxed_opaque_existential_1Tm(v66, v67);
  *&v61 = type metadata accessor for SiriSuggestions.IntentMatch();
  *(&v61 + 1) = &protocol witness table for SiriSuggestions.IntentMatch;
  __swift_allocate_boxed_opaque_existential_0Tm(v60);
  type metadata accessor for INInformationUseCaseIntent();
  static SiriSuggestions.IntentType.inIntent(intentType:)();
  v22 = swift_allocObject();
  *(v22 + 16) = implicit closure #1 in closure #1 in static RelatedQuestionsDefinition.addRelatedQuestionsSuggestion(_:);
  *(v22 + 24) = 0;
  SiriSuggestions.IntentMatch.init(intentType:matcher:)();
  v64 = v51;
  v65 = v21;
  __swift_allocate_boxed_opaque_existential_0Tm(v63);
  dispatch thunk of SuggestionDetailsBuilder.intentMatch(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  v23 = v65;
  v51 = v64;
  __swift_project_boxed_opaque_existential_1Tm(v63, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMR);
  v24 = *(type metadata accessor for VersionedInvocation() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  v52 = xmmword_1AD90;
  *(v27 + 16) = xmmword_1AD90;
  static VersionedInvocations.latest.getter();
  v61 = v51;
  v62 = v23;
  __swift_allocate_boxed_opaque_existential_0Tm(v60);
  dispatch thunk of SuggestionDetailsBuilder.validForInvocationTypes(_:)();

  v28 = v62;
  v51 = v61;
  __swift_project_boxed_opaque_existential_1Tm(v60, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMR);
  v29 = type metadata accessor for DeliveryVehicle();
  v30 = *(v29 - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v52;
  (*(v30 + 104))(v33 + v32, enum case for DeliveryVehicle.assistantSuggestions(_:), v29);
  v58 = v51;
  v59 = v28;
  __swift_allocate_boxed_opaque_existential_0Tm(v57);
  dispatch thunk of SuggestionDetailsBuilder.enabledDeliveryVehicles(_:)();

  v34 = v59;
  v51 = v58;
  __swift_project_boxed_opaque_existential_1Tm(v57, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
  v35 = *(type metadata accessor for Locale() - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  *(swift_allocObject() + 16) = v52;
  Locale.init(identifier:)();
  v55 = v51;
  v56 = v34;
  __swift_allocate_boxed_opaque_existential_0Tm(v54);
  dispatch thunk of SuggestionDetailsBuilder.enabledLocales(_:)();

  v38 = v55;
  v39 = __swift_project_boxed_opaque_existential_1Tm(v54, v55);
  v40 = *(v38 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v43 = &v47 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for InfoServerSuggestionAssetProvider();
  v45 = swift_allocObject();
  v53[3] = v44;
  v53[4] = lazy protocol witness table accessor for type FromContextResolver and conformance FromContextResolver(&lazy protocol witness table cache variable for type InfoServerSuggestionAssetProvider and conformance InfoServerSuggestionAssetProvider, type metadata accessor for InfoServerSuggestionAssetProvider);
  v53[0] = v45;
  dispatch thunk of SuggestionDetailsBuilder.assetsProvider(_:)();
  (*(v40 + 8))(v43, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  return __swift_destroy_boxed_opaque_existential_1Tm(v66);
}

uint64_t RelatedQuestionsDefinition.utteranceToLoggingIdTransformer.unsafeMutableAddressor()
{
  if (one-time initialization token for utteranceToLoggingIdTransformer != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);

  return __swift_project_value_buffer(v0, static RelatedQuestionsDefinition.utteranceToLoggingIdTransformer);
}

uint64_t one-time initialization function for utteranceToLoggingIdTransformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  __swift_allocate_value_buffer(v0, static RelatedQuestionsDefinition.utteranceToLoggingIdTransformer);
  __swift_project_value_buffer(v0, static RelatedQuestionsDefinition.utteranceToLoggingIdTransformer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  return Transformer.init(transform:)();
}

double closure #1 in variable initialization expression of static RelatedQuestionsDefinition.utteranceToLoggingIdTransformer@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = v37 - v10;
  __chkstk_darwin(v9);
  v43 = v37 - v12;
  outlined init with copy of Any(a1, v42);
  type metadata accessor for INInformationUseCaseUtterance();
  if (swift_dynamicCast())
  {
    v39 = v41[0];
    v13 = [v41[0] displayString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37[1] = v2;
    v38 = a2;

    v14 = String.lowercased()();

    v42[0] = v14;
    v41[0] = &stru_20;
    v41[1] = 0xE100000000000000;
    v40[0] = 95;
    v40[1] = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v37[0] = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v16 = v15;

    static CharacterSet.lowercaseLetters.getter();
    CharacterSet.init(charactersIn:)();
    v17 = v43;
    CharacterSet.union(_:)();
    v18 = *(v6 + 8);
    v18(v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v18(v11, v5);
    v19 = *(v6 + 32);
    v19(v11, v17, v5);
    v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v21 = swift_allocObject();
    v19((v21 + v20), v11, v5);
    v22 = specialized RangeReplaceableCollection.filter(_:)(v37[0], v16, partial apply for implicit closure #2 in implicit closure #1 in static RelatedQuestionsDefinition.treatUtterance(_:), v21);
    v24 = v23;

    v25 = v38;
    v38[3] = &type metadata for String;

    *v25 = v22;
    v25[1] = v24;
  }

  else
  {
    if (one-time initialization token for suggestions != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static SuggestionsLogger.suggestions);
    outlined init with copy of Any(a1, v42);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = a2;
      v32 = swift_slowAlloc();
      v40[0] = v32;
      *v30 = 136315138;
      outlined init with copy of Any(v42, v41);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      __swift_destroy_boxed_opaque_existential_1Tm(&v42[0]._countAndFlagsBits);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v40);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_0, v28, v29, "Suggestion parameter must be resolved into instance of INInformationUseCaseUtterance. It is: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      a2 = v31;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v42[0]._countAndFlagsBits);
    }

    result = 0.0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

uint64_t static RelatedQuestionsDefinition.utteranceToLoggingIdTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for utteranceToLoggingIdTransformer != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v3 = __swift_project_value_buffer(v2, static RelatedQuestionsDefinition.utteranceToLoggingIdTransformer);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t sub_19534()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in static RelatedQuestionsDefinition.treatUtterance(_:)()
{
  v1 = *(type metadata accessor for CharacterSet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CharacterSet.contains(_:)() & 1;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v21 = a4;
  v19 = 0;
  v20 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v9 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v12 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v11 = v18 + v9;
        }

        else
        {
          v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v10 = _StringObject.sharedUTF8.getter();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      v15 = a3(v12);
      if (v4)
      {
      }

      if (v15)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v9 += v14;
      if (v9 >= v6)
      {
        return v19;
      }
    }
  }

  return 0;
}

uint64_t outlined destroy of Resolver?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19D34()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type FromContextResolver and conformance FromContextResolver(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall DialogIdProvider.getId()()
{
  v0 = DialogIdProvider.getId()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall CandidateSuggestion.getSuggestionId()()
{
  v0 = CandidateSuggestion.getSuggestionId()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}