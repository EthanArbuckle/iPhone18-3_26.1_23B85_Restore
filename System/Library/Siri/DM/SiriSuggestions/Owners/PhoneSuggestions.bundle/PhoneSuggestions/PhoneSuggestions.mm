PhoneSuggestions::SuggestionIdentifier_optional __swiftcall SuggestionIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SuggestionIdentifier.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t SuggestionIdentifier.rawValue.getter(char a1)
{
  result = 0xD000000000000013;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  return result;
}

PhoneSuggestions::SuggestionIdentifier_optional protocol witness for RawRepresentable.init(rawValue:) in conformance SuggestionIdentifier@<W0>(Swift::String *a1@<X0>, PhoneSuggestions::SuggestionIdentifier_optional *a2@<X8>)
{
  result.value = SuggestionIdentifier.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SuggestionIdentifier@<X0>(unint64_t *a1@<X8>)
{
  result = SuggestionIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type SuggestionIdentifier and conformance SuggestionIdentifier()
{
  result = lazy protocol witness table cache variable for type SuggestionIdentifier and conformance SuggestionIdentifier;
  if (!lazy protocol witness table cache variable for type SuggestionIdentifier and conformance SuggestionIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SuggestionIdentifier and conformance SuggestionIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SuggestionIdentifier] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SuggestionIdentifier] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SuggestionIdentifier] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16PhoneSuggestions20SuggestionIdentifierOGMd, &_sSay16PhoneSuggestions20SuggestionIdentifierOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SuggestionIdentifier] and conformance [A]);
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

uint64_t getEnumTagSinglePayload for SuggestionIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SuggestionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1D38);
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

void one-time initialization function for macFaceTimeBundleId()
{
  v0 = TUPreferredFaceTimeBundleIdentifier();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  static PhoneCallAppNameConstants.macFaceTimeBundleId = v1;
  *algn_15368 = v3;
}

uint64_t *PhoneCallAppNameConstants.macFaceTimeBundleId.unsafeMutableAddressor()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  return &static PhoneCallAppNameConstants.macFaceTimeBundleId;
}

uint64_t static PhoneCallAppNameConstants.macFaceTimeBundleId.getter()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = static PhoneCallAppNameConstants.macFaceTimeBundleId;

  return v0;
}

uint64_t static PhoneCallAppNameConstants.sanitizeFirstPartyAppId(_:)(uint64_t a1, uint64_t a2)
{
  if ((static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(a1, a2) & 1) == 0)
  {
  }

  return OUTLINED_FUNCTION_6();
}

uint64_t static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(uint64_t countAndFlagsBits, uint64_t a2)
{
  if (a2)
  {
    object = String.lowercased()()._object;
  }

  else
  {
    object = 0;
  }

  OUTLINED_FUNCTION_2_0();
  v5 = String.lowercased()()._object;
  if (!object)
  {

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11();
  v6 = v6 && object == v5;
  if (v6)
  {
    goto LABEL_23;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_12:
    if (a2)
    {
      v9 = String.lowercased()();
      countAndFlagsBits = v9._countAndFlagsBits;
      v10 = v9._object;
    }

    else
    {
      v10 = 0;
    }

    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v11 = String.lowercased()();
    if (!v10)
    {
      v8 = 0;
      goto LABEL_26;
    }

    if (countAndFlagsBits != v11._countAndFlagsBits || v10 != v11._object)
    {
      OUTLINED_FUNCTION_6();
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_24:

LABEL_26:

      return v8 & 1;
    }

LABEL_23:
    v8 = 1;
    goto LABEL_24;
  }

  v8 = 1;
  return v8 & 1;
}

BOOL static PhoneCallAppNameConstants.isFaceTime(appId:)(uint64_t a1, _BOOL8 a2)
{
  v2 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_C1C0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000000000C950;
    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v4 = *algn_15368;
    *(inited + 48) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
    *(inited + 56) = v4;

    v5 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited);
    v6 = OUTLINED_FUNCTION_6();
    v2 = specialized Set.contains(_:)(v6, v7, v5);
  }

  return v2;
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t static PhoneCallAppNameConstants.isPhone(appId:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7();
  if (v6 == 0xD000000000000017 && v5 == v4)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7();
  if (a1 == 0xD000000000000012 && v8 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_6();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7();
  if (a1 == 0xD000000000000013 && v10 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7();
  if (a1 == 0xD000000000000015 && v12 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_13();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  object = String.lowercased()()._object;
  if (v5)
  {
    OUTLINED_FUNCTION_11();
    v7 = v7 && v5 == object;
    if (v7)
    {
      goto LABEL_41;
    }

    v8 = OUTLINED_FUNCTION_8();

    if (v8)
    {
      goto LABEL_30;
    }

    if (a2)
    {
      goto LABEL_11;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_13();
  v10 = v9;
LABEL_14:
  OUTLINED_FUNCTION_2_0();
  v11 = String.lowercased()()._object;
  if (!v10)
  {

    if (a2)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_11();
  if (v7 && v10 == v11)
  {
    goto LABEL_41;
  }

  v13 = OUTLINED_FUNCTION_8();

  if ((v13 & 1) == 0)
  {
    if (a2)
    {
LABEL_21:
      OUTLINED_FUNCTION_13();
      v15 = v14;
      goto LABEL_24;
    }

LABEL_23:
    v15 = 0;
LABEL_24:
    v16 = String.lowercased()()._object;
    if (v15)
    {
      OUTLINED_FUNCTION_11();
      if (v7 && v15 == v16)
      {
        goto LABEL_41;
      }

      v18 = OUTLINED_FUNCTION_8();

      if (v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    if (a2)
    {
      a1 = OUTLINED_FUNCTION_13();
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = String.lowercased()();
    if (!v21)
    {
      v19 = 0;
      goto LABEL_43;
    }

    if (a1 != v22._countAndFlagsBits || v21 != v22._object)
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_42:

LABEL_43:

      return v19 & 1;
    }

LABEL_41:
    v19 = 1;
    goto LABEL_42;
  }

LABEL_30:
  v19 = 1;
  return v19 & 1;
}

uint64_t static PhoneCallAppNameConstants.isMessagePhoneAppCaseInsensitive(appId:)(uint64_t countAndFlagsBits, uint64_t a2)
{
  if (a2)
  {
    v3 = String.lowercased()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;
  }

  else
  {
    object = 0;
  }

  v5 = String.lowercased()();
  if (object)
  {
    if (countAndFlagsBits == v5._countAndFlagsBits && object == v5._object)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t static PhoneCallAppNameConstants.isPhoneOrFaceTime(appId:isInsensitive:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = OUTLINED_FUNCTION_6();
    if ((static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(v5, v6) & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_6();

      return static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(v7, v8);
    }

    return 1;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_7();
    if (a1 == 0xD000000000000017 && v10 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7();
    if (a1 == 0xD000000000000012 && v12 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_6();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7();
    if (a1 == 0xD000000000000013 && v14 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7();
    if (a1 == 0xD000000000000015 && v16 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }
  }

  v18 = OUTLINED_FUNCTION_6();

  return static PhoneCallAppNameConstants.isFaceTime(appId:)(v18, v19);
}

uint64_t static PhoneCallAppNameConstants.getFaceTimeServiceName(for:shouldEnableSiriUplevelFTA:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = a1 == 0x656D695465636146 && a2 == 0xEE006F6964754120;
    if (v5 || (OUTLINED_FUNCTION_12() & 1) != 0)
    {
      v6 = [objc_allocWithZone(FTNUServiceNames) init];
      v7 = [v6 faceTimeAudioServiceName];
    }

    else
    {
      v10 = v4 == 0x656D695465636146 && a2 == 0xEE006F6564695620;
      if (v10 || (OUTLINED_FUNCTION_12() & 1) != 0)
      {
        v6 = [objc_allocWithZone(FTNUServiceNames) init];
        v7 = [v6 faceTimeVideoServiceName];
      }

      else
      {
        v6 = [objc_allocWithZone(FTNUServiceNames) init];
        v7 = [v6 faceTimeServiceName];
      }
    }

    v8 = v7;

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v4;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = v3[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (v3[6] + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (v3[6] + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v3[2] = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return String.lowercased()()._countAndFlagsBits;
}

uint64_t one-time initialization function for kOwner()
{
  v0 = type metadata accessor for DomainOwner();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = DomainOwner.init(_:)();
  static PhoneOwnerDefinitionFactory.kOwner = result;
  return result;
}

uint64_t *PhoneOwnerDefinitionFactory.kOwner.unsafeMutableAddressor()
{
  if (one-time initialization token for kOwner != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  return &static PhoneOwnerDefinitionFactory.kOwner;
}

uint64_t static PhoneOwnerDefinitionFactory.kOwner.getter()
{
  if (one-time initialization token for kOwner != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }
}

uint64_t one-time initialization function for enabledLocales()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, &_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMR);
  v0 = *(type metadata accessor for Locale() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_C260;
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
  result = Locale.init(identifier:)();
  static PhoneOwnerDefinitionFactory.enabledLocales = v3;
  return result;
}

uint64_t static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();

  return _swift_task_switch(static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.suggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#PhoneOwnerDefinitionFactory createOwnerDefinitions", v4, 2u);
    OUTLINED_FUNCTION_4_0(v4);
  }

  v5 = v0[17];

  type metadata accessor for INIntent(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  static SuggestionTransformers.mapAsyncINIntentValue<A>(extractor:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  Transformer.init(transform:)();
  if (one-time initialization token for kOwner != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v6 = v0[12];
  v7 = static PhoneOwnerDefinitionFactory.kOwner;
  v0[10] = type metadata accessor for DomainOwner();
  v0[11] = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type DomainOwner and conformance DomainOwner, 255, &type metadata accessor for DomainOwner);
  v0[7] = v7;

  v12 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:);
  v10 = v0[13];

  return v12(v0 + 7);
}

{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = swift_task_alloc();
  v6[2] = v5;
  v6[3] = v2;
  v6[4] = v0 + 2;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:catId:builder:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_C270;
  dispatch thunk of SuggestionOwnerDefinitionBuilder.build()();

  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v8 = v0[1];

  return v8(v7);
}

uint64_t static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(v2 + 152) = a1;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));

  return _swift_task_switch(static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #1 in static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(closure #1 in static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:), 0, 0);
}

uint64_t closure #1 in static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.suggestions);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#PhoneOwnerDefinitionFactory running IntentTransformer", v4, 2u);
    OUTLINED_FUNCTION_4_0(v4);
  }

  v5 = *(v0 + 24);

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = v6;
  v8 = *(v0 + 24);
  v9 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v7);
  if (!v9)
  {
    v18 = *(v0 + 24);
LABEL_21:

LABEL_22:
    v35 = *(v0 + 16);
    v36 = enum case for IntentParameter.ignore(_:);
    v37 = type metadata accessor for IntentParameter();
    OUTLINED_FUNCTION_2_1(v37);
    (*(v38 + 104))(v35, v36);
    goto LABEL_23;
  }

  v10 = v9;
  if (!specialized Array._getCount()())
  {
    v18 = *(v0 + 24);

    goto LABEL_21;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v12);
  if (!v14)
  {
    v18 = *(v0 + 24);
LABEL_20:

    goto LABEL_21;
  }

  v15 = v13;
  v16 = v14;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v18 = *(v0 + 24);
  if (!v17)
  {
    goto LABEL_20;
  }

  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 24);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v7;
    *v24 = v7;
    v25 = v22;
    _os_log_impl(&dword_0, v20, v21, "#PhoneOwnerDefinitionFactory returning directAssignment from intent %@", v23, 0xCu);
    outlined destroy of Resolver?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_4_0(v24);
    OUTLINED_FUNCTION_4_0(v23);
  }

  v26 = *(v0 + 16);
  v27 = *(v0 + 24);

  v28 = v27;
  v42 = StartCallSuggestionParams.init(intent:)(v7);
  countAndFlagsBits = v42.name.value._countAndFlagsBits;
  object = v42.name.value._object;
  v31 = *&v42.isFaceTime;
  *(v26 + 24) = &type metadata for StartCallSuggestionParams;

  *v26 = countAndFlagsBits;
  *(v26 + 8) = object;
  *(v26 + 16) = v31 & 1;
  *(v26 + 17) = HIBYTE(v31) & 1;
  v32 = enum case for IntentParameter.directAssignment(_:);
  v33 = type metadata accessor for IntentParameter();
  OUTLINED_FUNCTION_2_1(v33);
  (*(v34 + 104))(v26, v32);
LABEL_23:
  v39 = *(v0 + 8);

  return v39();
}

void closure #2 in static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = 0;
  v11 = 0xE000000000000000;
  outlined init with copy of Any(a1, v9);
  if (swift_dynamicCast())
  {
    if (v7 == 1)
    {
      v3._countAndFlagsBits = 0x6954656361467369;
      v3._object = 0xEA0000000000656DLL;
      String.append(_:)(v3);
    }

    if (v8)
    {
      v4._countAndFlagsBits = 0x4370756F72477369;
      v4._object = 0xEB000000006C6C61;
      String.append(_:)(v4);
    }
  }

  v5 = v10;
  v6 = v11;
  a2[3] = &type metadata for String;
  *a2 = v5;
  a2[1] = v6;
}

uint64_t closure #3 in static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a3;
  v96 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v97 = &v78 - v7;
  v8 = type metadata accessor for SiriSuggestions.IntentType();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = *(v91 + 64);
  (__chkstk_darwin)();
  v90 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for SignalContextProperties();
  v12 = *(v11 - 8);
  v13 = v12[8];
  (__chkstk_darwin)();
  v15 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a1 + 24);
  v98 = *(a1 + 32);
  v89 = __swift_project_boxed_opaque_existential_2(a1, v16);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_C280;
  type metadata accessor for Signal();
  *(v17 + 32) = static Signal.HomeScreen.getter();
  *(v17 + 40) = static Signal.DeviceLocked.getter();
  if (one-time initialization token for PhoneApp != -1)
  {
    swift_once();
  }

  v85 = v15;
  *&v99 = v11;
  *(v17 + 48) = static Signal.PhoneApp;
  v18 = one-time initialization token for FaceTimeApp;

  if (v18 != -1)
  {
    swift_once();
  }

  *(v17 + 56) = static Signal.FaceTimeApp;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15DeliveryVehicleOGMR);
  v20 = type metadata accessor for DeliveryVehicle();
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = (v22 + 32) & ~v22;
  v104 = *(v21 + 72);
  v101 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_C270;
  v25 = *(v21 + 104);
  v102 = v23;
  v103 = v25;
  v100 = enum case for DeliveryVehicle.siriHelp(_:);
  v105 = v21 + 104;
  *&v106 = v20;
  v25(v24 + v23);
  v26 = v85;
  *v85 = v24;
  v27 = v12[13];
  v83 = enum case for SignalContextProperties.deliveryVehicle(_:);
  v28 = v99;
  v81 = v27;
  v82 = v12 + 13;
  v27(v26);
  v135 = v16;
  v136 = v98;
  __swift_allocate_boxed_opaque_existential_2(v134);

  dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:for:)();

  v29 = v12[1];
  v84 = v12 + 1;
  v80 = v29;
  v29(v26, v28);
  v98 = v136;
  v79 = v135;
  v89 = __swift_project_boxed_opaque_existential_2(v134, v135);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_C290;
  if (one-time initialization token for ContactsApp != -1)
  {
    swift_once();
  }

  *(v30 + 32) = static Signal.ContactsApp;
  v31 = v104;
  v88 = 2 * v104;
  v32 = v102;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_C1C0;
  v86 = v19;
  v34 = v33 + v32;
  v35 = v33 + v32;
  v87 = enum case for DeliveryVehicle.assistantSuggestions(_:);
  v36 = v106;
  v37 = v103;
  v103(v35);
  v37(v34 + v31, v100, v36);
  *v26 = v33;
  v38 = v99;
  v81(v26, v83, v99);
  *v133 = v79;
  *&v133[8] = v98;
  __swift_allocate_boxed_opaque_existential_2(v132);

  dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.register(signals:for:)();

  v80(v26, v38);
  v39 = *&v133[16];
  v99 = *v133;
  __swift_project_boxed_opaque_existential_2(v132, *v133);
  if (one-time initialization token for enabledLocales != -1)
  {
    swift_once();
  }

  v130 = v99;
  v131 = v39;
  __swift_allocate_boxed_opaque_existential_2(v129);

  dispatch thunk of SuggestionDetailsBuilder.enabledLocales(_:)();

  v40 = v131;
  v98 = v130;
  __swift_project_boxed_opaque_existential_2(v129, v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit10DeviceTypeOGMR);
  v41 = type metadata accessor for DeviceType();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  v99 = xmmword_C2A0;
  *(v45 + 16) = xmmword_C2A0;
  v46 = v45 + v44;
  v47 = *(v42 + 104);
  v47(v46, enum case for DeviceType.iPhone(_:), v41);
  v47(v46 + v43, enum case for DeviceType.iPad(_:), v41);
  v47(v46 + 2 * v43, enum case for DeviceType.mac(_:), v41);
  v127 = v98;
  v128 = v40;
  __swift_allocate_boxed_opaque_existential_2(v126);
  dispatch thunk of SuggestionDetailsBuilder.enabledDevices(_:)();

  v48 = v128;
  v98 = v127;
  __swift_project_boxed_opaque_existential_2(v126, v127);
  v124 = v98;
  v125 = v48;
  __swift_allocate_boxed_opaque_existential_2(v123);
  dispatch thunk of SuggestionDetailsBuilder.loggingIdentifier(_:)();
  v49 = v125;
  v98 = v124;
  __swift_project_boxed_opaque_existential_2(v123, v124);
  v121 = v98;
  v122 = v49;
  __swift_allocate_boxed_opaque_existential_2(v120);
  dispatch thunk of SuggestionDetailsBuilder.templateRoot(_:)();
  v50 = v122;
  v98 = v121;
  __swift_project_boxed_opaque_existential_2(v120, v121);
  v52 = v90;
  v51 = v91;
  *v90 = 0xD000000000000023;
  v52[1] = 0x800000000000CD60;
  v53 = v92;
  (*(v51 + 104))(v52, enum case for SiriSuggestions.IntentType.inIntent(_:), v92);
  v118 = v98;
  v119 = v50;
  __swift_allocate_boxed_opaque_existential_2(v117);
  dispatch thunk of SuggestionDetailsBuilder.intentType(_:)();
  (*(v51 + 8))(v52, v53);
  v54 = v119;
  v55 = v104;
  v98 = v118;
  __swift_project_boxed_opaque_existential_2(v117, v118);
  v56 = v102;
  v57 = swift_allocObject();
  *(v57 + 16) = v99;
  v58 = v57 + v56;
  v59 = v106;
  v60 = v103;
  (v103)(v58, v100, v106);
  v60(v58 + v55, v87, v59);
  v60(v58 + v88, enum case for DeliveryVehicle.siriAutoComplete(_:), v59);
  *v116 = v98;
  *&v116[16] = v54;
  __swift_allocate_boxed_opaque_existential_2(v115);
  dispatch thunk of SuggestionDetailsBuilder.enabledDeliveryVehicles(_:)();

  v61 = *v116;
  v106 = *&v116[8];
  __swift_project_boxed_opaque_existential_2(v115, *v116);
  v113[0] = type metadata accessor for INIntent(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17INStartCallIntentCmMd, &_sSo17INStartCallIntentCmMR);
  String.init<A>(describing:)();
  *v114 = v61;
  *&v114[8] = v106;
  __swift_allocate_boxed_opaque_existential_2(v113);
  dispatch thunk of SiriHelpSuggestionDetailsBuilderExtension.enableThirdPartyIntents(_:)();

  v62 = *&v114[16];
  v106 = *v114;
  __swift_project_boxed_opaque_existential_2(v113, *v114);
  v63 = type metadata accessor for ResolveStartCallParams();
  v64 = swift_allocObject();
  *(v64 + 16) = 0x6C6143656E6F6870;
  *(v64 + 24) = 0xEF736D617261506CLL;
  v108 = v63;
  v109 = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type ResolveStartCallParams and conformance ResolveStartCallParams, 255, type metadata accessor for ResolveStartCallParams);
  v107[0] = v64;
  (*(v93 + 16))(v97, v95, v94);
  outlined init with copy of any SiriSuggestions.Transformer<Self.SiriSuggestions.Transformer.InputType == SiriSuggestions.Intent, Self.SiriSuggestions.Transformer.OutputType == IntentParameter>(v96, v110);
  v65 = type metadata accessor for ResolvableParameter();
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  swift_allocObject();
  ResolvableParameter.init(typeIdentifier:required:loggingKeyTransformer:asyncIntentTransformer:)();
  v111 = v106;
  v112 = v62;
  __swift_allocate_boxed_opaque_existential_2(v110);
  dispatch thunk of SuggestionDetailsBuilder.parameter(parameterName:resolver:resolveParam:shownOnLockscreen:)();

  outlined destroy of Resolver?(v107, &_s18SiriSuggestionsKit8Resolver_pSgMd, &_s18SiriSuggestionsKit8Resolver_pSgMR);
  v68 = v111;
  v69 = __swift_project_boxed_opaque_existential_2(v110, v111);
  v70 = *(v68 - 8);
  v71 = *(v70 + 64);
  __chkstk_darwin(v69);
  v73 = &v78 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for PhoneSuggestionsAssetProvider();
  v75 = swift_allocObject();
  v108 = v74;
  v109 = lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(&lazy protocol witness table cache variable for type PhoneSuggestionsAssetProvider and conformance PhoneSuggestionsAssetProvider, v76, type metadata accessor for PhoneSuggestionsAssetProvider);
  v107[0] = v75;
  dispatch thunk of SuggestionDetailsBuilder.assetsProvider(_:)();
  (*(v70 + 8))(v73, v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  __swift_destroy_boxed_opaque_existential_1Tm(v110);
  __swift_destroy_boxed_opaque_existential_1Tm(v113);
  __swift_destroy_boxed_opaque_existential_1Tm(v115);
  __swift_destroy_boxed_opaque_existential_1Tm(v117);
  __swift_destroy_boxed_opaque_existential_1Tm(v120);
  __swift_destroy_boxed_opaque_existential_1Tm(v123);
  __swift_destroy_boxed_opaque_existential_1Tm(v126);
  __swift_destroy_boxed_opaque_existential_1Tm(v129);
  __swift_destroy_boxed_opaque_existential_1Tm(v132);
  return __swift_destroy_boxed_opaque_existential_1Tm(v134);
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance PhoneOwnerDefinitionFactory(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance PhoneOwnerDefinitionFactory;

  return static PhoneOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2);
}

uint64_t protocol witness for static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:) in conformance PhoneOwnerDefinitionFactory(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t PhoneSuggestionsAssetProvider.getAssets(context:suggestion:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit5ImageOSgMd, &_s18SiriSuggestionsKit5ImageOSgMR);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  strcpy(&v11 - v5, "com.apple.siri");
  (&v11 - v5)[15] = -18;
  v7 = enum case for Image.appIcon(_:);
  v8 = type metadata accessor for Image();
  OUTLINED_FUNCTION_2_1(v8);
  (*(v9 + 104))(v6, v7, v8);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  return Assets.init(icon:inAppIcon:)();
}

uint64_t Optional<A>.isNilOrEmpty.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = *(a1 + 16);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    (*(v2 + 8))(v5, a1);
    v8 = 1;
  }

  else
  {
    v8 = dispatch thunk of Collection.isEmpty.getter();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v8 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t type metadata accessor for INIntent(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined init with copy of any SiriSuggestions.Transformer<Self.SiriSuggestions.Transformer.InputType == SiriSuggestions.Intent, Self.SiriSuggestions.Transformer.OutputType == IntentParameter>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type DomainOwner and conformance DomainOwner(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of Resolver?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, void (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  a2(a1);
  OUTLINED_FUNCTION_1_2();

  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a3(a2);
  OUTLINED_FUNCTION_1_2();

  return Hasher._finalize()();
}

uint64_t *Signal.PhoneApp.unsafeMutableAddressor()
{
  if (one-time initialization token for PhoneApp != -1)
  {
    swift_once();
  }

  return &static Signal.PhoneApp;
}

uint64_t *Signal.FaceTimeApp.unsafeMutableAddressor()
{
  if (one-time initialization token for FaceTimeApp != -1)
  {
    swift_once();
  }

  return &static Signal.FaceTimeApp;
}

uint64_t *Signal.ContactsApp.unsafeMutableAddressor()
{
  if (one-time initialization token for ContactsApp != -1)
  {
    swift_once();
  }

  return &static Signal.ContactsApp;
}

void *PhoneSuggestion.signals()(char a1)
{
  if (one-time initialization token for signals != -1)
  {
    swift_once();
  }

  v2 = static PhoneSuggestion.signals;
  if (!*(&dword_10 + static PhoneSuggestion.signals))
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  v5 = *(*&stru_20.segname[v2 + 16] + 8 * v3);
}

int *one-time initialization function for signals()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16PhoneSuggestions0D10SuggestionO_Say04SiriE3Kit6SignalCGtGMd, &_ss23_ContiguousArrayStorageCy16PhoneSuggestions0D10SuggestionO_Say04SiriE3Kit6SignalCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C2A0;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_C280;
  type metadata accessor for Signal();
  *(v1 + 32) = static Signal.HomeScreen.getter();
  *(v1 + 40) = static Signal.DeviceLocked.getter();
  if (one-time initialization token for ContactsApp != -1)
  {
    swift_once();
  }

  *(v1 + 48) = static Signal.ContactsApp;
  v2 = one-time initialization token for PhoneApp;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v1 + 56) = static Signal.PhoneApp;
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_C280;

  *(v3 + 32) = static Signal.HomeScreen.getter();
  v4 = static Signal.DeviceLocked.getter();
  v5 = static Signal.ContactsApp;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  v6 = one-time initialization token for FaceTimeApp;

  if (v6 != -1)
  {
    swift_once();
  }

  *(v3 + 56) = static Signal.FaceTimeApp;
  *(inited + 56) = v3;
  *(inited + 64) = 2;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_C280;

  *(v7 + 32) = static Signal.HomeScreen.getter();
  v8 = static Signal.DeviceLocked.getter();
  v9 = static Signal.ContactsApp;
  *(v7 + 40) = v8;
  *(v7 + 48) = v9;
  *(v7 + 56) = static Signal.FaceTimeApp;
  *(inited + 72) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay18SiriSuggestionsKit6SignalCGMd, &_sSay18SiriSuggestionsKit6SignalCGMR);
  lazy protocol witness table accessor for type PhoneSuggestion and conformance PhoneSuggestion();
  result = Dictionary.init(dictionaryLiteral:)();
  static PhoneSuggestion.signals = result;
  return result;
}

PhoneSuggestions::PhoneSuggestion_optional __swiftcall PhoneSuggestion.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneSuggestion.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

PhoneSuggestions::PhoneSuggestion_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneSuggestion@<W0>(Swift::String *a1@<X0>, PhoneSuggestions::PhoneSuggestion_optional *a2@<X8>)
{
  result.value = PhoneSuggestion.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t one-time initialization function for FaceTimeApp()
{
  type metadata accessor for Signal();
  v2[3] = type metadata accessor for CoreSignalTypes();
  v2[4] = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes();
  __swift_allocate_boxed_opaque_existential_2(v2);
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 104))();
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static Signal.FaceTimeApp = result;
  return result;
}

uint64_t one-time initialization function for ContactsApp()
{
  type metadata accessor for Signal();
  v2[3] = type metadata accessor for CoreSignalTypes();
  v2[4] = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes();
  __swift_allocate_boxed_opaque_existential_2(v2);
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 104))();
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static Signal.ContactsApp = result;
  return result;
}

uint64_t one-time initialization function for PhoneApp()
{
  type metadata accessor for Signal();
  v2[3] = type metadata accessor for CoreSignalTypes();
  v2[4] = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes();
  __swift_allocate_boxed_opaque_existential_2(v2);
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 104))();
  result = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
  static Signal.PhoneApp = result;
  return result;
}

uint64_t static Signal.FaceTimeApp.getter(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t lazy protocol witness table accessor for type [PhoneSuggestion] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PhoneSuggestion] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PhoneSuggestion] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16PhoneSuggestions0A10SuggestionOGMd, &_sSay16PhoneSuggestions0A10SuggestionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PhoneSuggestion] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneSuggestion and conformance PhoneSuggestion()
{
  result = lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion;
  if (!lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion;
  if (!lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneSuggestion and conformance PhoneSuggestion);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneSuggestion(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x6214);
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = 0xD000000000000015;
      if (*(*(v2 + 48) + v4) == 1)
      {
        v6 = "phoneCall_StartCall";
      }

      else
      {
        v5 = 0xD000000000000016;
        v6 = "phoneCall_StartFTCall";
      }

      v7 = *(*(v2 + 48) + v4) ? v5 : 0xD000000000000013;
      v8 = *(*(v2 + 48) + v4) ? v6 : "mobilePhoneContact";
      if (a1)
      {
        v9 = a1 == 1 ? 0xD000000000000015 : 0xD000000000000016;
        v10 = a1 == 1 ? "phoneCall_StartCall" : "phoneCall_StartFTCall";
      }

      else
      {
        v9 = 0xD000000000000013;
        v10 = "mobilePhoneContact";
      }

      if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes()
{
  result = lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes;
  if (!lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes)
  {
    type metadata accessor for CoreSignalTypes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreSignalTypes and conformance CoreSignalTypes);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return String.hash(into:)();
}

void ResolveStartCallParams.__allocating_init()()
{
  OUTLINED_FUNCTION_8_0();
  swift_allocObject();
  OUTLINED_FUNCTION_20();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t key path setter for ResolveContactOrGroupEntity.resolverTypeOperand : ResolveContactOrGroupEntity(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t ResolveContactOrGroupEntity.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_10_0();
  v1[2] = v0;
  v2 = type metadata accessor for RREntity();
  v1[3] = v2;
  OUTLINED_FUNCTION_1_3(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_28();
  v1[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
  OUTLINED_FUNCTION_13_0(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_28();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_37();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = type metadata accessor for UsoEntityBuilder_common_Group();
  OUTLINED_FUNCTION_26(v2);
  UsoEntityBuilder_common_Group.init()();
  v3 = static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();

  if (v3)
  {
    ResolveContactOrGroupEntity.getCandidate(for:)(v3, v1[8]);
    type metadata accessor for RRCandidate();
    v4 = OUTLINED_FUNCTION_30();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v0);
    v6 = v1[8];
    if (EnumTagSinglePayload == 1)
    {

      outlined destroy of Resolver?(v6, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
    }

    else
    {
      v7 = v1[6];
      v8 = v1[3];
      v9 = v1[4];
      v10 = v1[2];
      RRCandidate.entity.getter();
      OUTLINED_FUNCTION_14();
      v12 = *(v11 + 8);
      v13 = OUTLINED_FUNCTION_34();
      v14(v13);
      RREntity.usoEntity.getter();
      v15 = OUTLINED_FUNCTION_32();
      v16(v15);
      UsoEntity.attributes.getter();
      OUTLINED_FUNCTION_30();

      v18 = (*(*v10 + 88))(v17);
      v20 = specialized Dictionary.subscript.getter(v18, v19, v0);

      if (v20)
      {
        OUTLINED_FUNCTION_35();
        if (v0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v21 = *(v20 + 32);
        }

        v0 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
        v23 = v22;

        if (v23)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v24 = type metadata accessor for UsoEntityBuilder_common_Person();
  OUTLINED_FUNCTION_26(v24);
  UsoEntityBuilder_common_Person.init()();
  v25 = static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();

  if (v25)
  {
    ResolveContactOrGroupEntity.getCandidate(for:)(v25, v1[7]);
    type metadata accessor for RRCandidate();
    v26 = OUTLINED_FUNCTION_30();
    v27 = __swift_getEnumTagSinglePayload(v26, 1, v0);
    v28 = v1[7];
    if (v27 == 1)
    {

      outlined destroy of Resolver?(v28, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMd, &_s32SiriReferenceResolutionDataModel11RRCandidateVSgMR);
      goto LABEL_18;
    }

    v30 = v1[4];
    v29 = v1[5];
    v32 = v1[2];
    v31 = v1[3];
    RRCandidate.entity.getter();
    OUTLINED_FUNCTION_14();
    v34 = *(v33 + 8);
    v35 = OUTLINED_FUNCTION_34();
    v36(v35);
    RREntity.usoEntity.getter();
    v37 = OUTLINED_FUNCTION_32();
    v38(v37);
    UsoEntity.attributes.getter();
    OUTLINED_FUNCTION_30();

    v40 = (*(*v32 + 88))(v39);
    v42 = specialized Dictionary.subscript.getter(v40, v41, v0);

    if (!v42)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_35();
    if (v0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v43 = *(v42 + 32);
    }

    v0 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
    v23 = v44;

    if (!v23)
    {
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v45 = OUTLINED_FUNCTION_29();
    v45[1] = xmmword_C270;
    *(v45 + 7) = &type metadata for String;
    *(v45 + 4) = v0;
    *(v45 + 5) = v23;

    goto LABEL_19;
  }

LABEL_18:
  v45 = &_swiftEmptyArrayStorage;
LABEL_19:
  v47 = v1[7];
  v46 = v1[8];
  v49 = v1[5];
  v48 = v1[6];

  OUTLINED_FUNCTION_18();

  return v50(v45);
}

uint64_t ResolveContactOrGroupEntity.getCandidate(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  v5 = OUTLINED_FUNCTION_13_0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - v8;
  v10 = type metadata accessor for RRQuery();
  v11 = OUTLINED_FUNCTION_5_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v19 = OUTLINED_FUNCTION_2_1(v18);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v36 - v25;
  type metadata accessor for ReferenceResolutionClient();
  ReferenceResolutionClient.__allocating_init()();
  *v17 = a1;
  (*(v13 + 104))(v17, enum case for RRQuery.usoReference(_:), v10);
  v27 = type metadata accessor for RRFilter();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v27);

  dispatch thunk of ReferenceResolutionClient.resolve(reference:filter:)();

  outlined destroy of Resolver?(v9, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  (*(v13 + 8))(v17, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_5;
  }

  outlined init with copy of DeliveryVehicle?(v26, v24, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v28 = type metadata accessor for RRResult();
  v29 = *(v28 - 8);
  if ((*(v29 + 88))(v24, v28) != enum case for RRResult.foundMatch(_:))
  {
    (*(v29 + 8))(v24, v28);
LABEL_5:
    v34 = type metadata accessor for RRCandidate();
    v32 = a2;
    v33 = 1;
    goto LABEL_6;
  }

  (*(v29 + 96))(v24, v28);
  v30 = type metadata accessor for RRCandidate();
  OUTLINED_FUNCTION_2_1(v30);
  (*(v31 + 32))(a2, v24, v30);
  v32 = a2;
  v33 = 0;
  v34 = v30;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v32, v33, 1, v34);
  return outlined destroy of Resolver?(v26, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
}

uint64_t ResolveContactOrGroupEntity.__allocating_init()()
{
  OUTLINED_FUNCTION_8_0();
  result = swift_allocObject();
  *(result + 16) = 1701667182;
  *(result + 24) = 0xE400000000000000;
  return result;
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveContactOrGroupEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 112);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveContactOrGroupEntity;

  return v14(a1, a2, a3, a4);
}

uint64_t key path setter for ResolveGeneralReference.resolverTypeOperand : ResolveGeneralReference(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t ResolveGeneralReference.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_37();
  return _swift_task_switch(v2, v3, v4);
}

{
  OUTLINED_FUNCTION_10_0();
  v0 = type metadata accessor for UsoEntityBuilder_common_Group();
  v1 = OUTLINED_FUNCTION_26(v0);
  UsoEntityBuilder_common_Group.init()();
  static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  OUTLINED_FUNCTION_31();

  if (v1)
  {
    if (ResolveGeneralReference.hasReference(for:)(v1))
    {
      goto LABEL_9;
    }
  }

  v2 = type metadata accessor for UsoEntityBuilder_common_Person();
  v3 = OUTLINED_FUNCTION_26(v2);
  UsoEntityBuilder_common_Person.init()();
  static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  OUTLINED_FUNCTION_31();

  if (v3)
  {
    if (ResolveGeneralReference.hasReference(for:)(v3))
    {
      goto LABEL_9;
    }
  }

  v4 = type metadata accessor for UsoEntityBuilder_common_PhoneNumber();
  v5 = OUTLINED_FUNCTION_26(v4);
  UsoEntityBuilder_common_PhoneNumber.init()();
  static UsoBuilderConversionUtils.convertEntityBuilderToEntity(entityBuilder:)();
  OUTLINED_FUNCTION_31();

  if (v5)
  {
    if ((ResolveGeneralReference.hasReference(for:)(v5) & 1) == 0)
    {
      v6 = &_swiftEmptyArrayStorage;
      goto LABEL_10;
    }

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v6 = OUTLINED_FUNCTION_29();
    v6[1] = xmmword_C270;
    *(v6 + 7) = &type metadata for Bool;
    *(v6 + 32) = 1;
LABEL_10:

    goto LABEL_11;
  }

  v6 = &_swiftEmptyArrayStorage;
LABEL_11:
  OUTLINED_FUNCTION_18();

  return v7(v6);
}

uint64_t ResolveGeneralReference.hasReference(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  v3 = OUTLINED_FUNCTION_13_0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  v8 = type metadata accessor for RRQuery();
  v9 = OUTLINED_FUNCTION_5_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
  v17 = OUTLINED_FUNCTION_2_1(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  type metadata accessor for ReferenceResolutionClient();
  ReferenceResolutionClient.__allocating_init()();
  *v15 = a1;
  (*(v11 + 104))(v15, enum case for RRQuery.usoReference(_:), v8);
  v22 = type metadata accessor for RRFilter();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v22);

  dispatch thunk of ReferenceResolutionClient.resolve(reference:filter:)();

  outlined destroy of Resolver?(v7, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMd, &_s32SiriReferenceResolutionDataModel8RRFilterVSgMR);
  (*(v11 + 8))(v15, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of Resolver?(v21, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMd, &_ss6ResultOy32SiriReferenceResolutionDataModel8RRResultOs5Error_pGMR);
    return 1;
  }

  else
  {
    v24 = type metadata accessor for RRResult();
    OUTLINED_FUNCTION_5_0(v24);
    v26 = v25;
    v23 = (*(v27 + 88))(v21, v24) != enum case for RRResult.noMatch(_:);
    (*(v26 + 8))(v21, v24);
  }

  return v23;
}

void ResolveGeneralReference.__allocating_init()()
{
  OUTLINED_FUNCTION_8_0();
  swift_allocObject();
  OUTLINED_FUNCTION_24();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveGeneralReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 112);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveContactOrGroupEntity;

  return v14(a1, a2, a3, a4);
}

uint64_t key path setter for ResolveStartCallParams.resolverTypeOperand : ResolveStartCallParams(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 96);

  return v4(v2, v3);
}

uint64_t ResolveContactOrGroupEntity.resolverTypeOperand.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_12_0();
}

uint64_t ResolveContactOrGroupEntity.resolverTypeOperand.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:)()
{
  OUTLINED_FUNCTION_10_0();
  v1[53] = v2;
  v1[54] = v0;
  v1[52] = v3;
  v4 = type metadata accessor for SalientEntityType();
  v1[55] = v4;
  OUTLINED_FUNCTION_1_3(v4);
  v1[56] = v5;
  v7 = *(v6 + 64);
  v1[57] = OUTLINED_FUNCTION_27();
  v8 = type metadata accessor for SalientEntity();
  v1[58] = v8;
  OUTLINED_FUNCTION_1_3(v8);
  v1[59] = v9;
  v11 = *(v10 + 64);
  v1[60] = OUTLINED_FUNCTION_28();
  v1[61] = swift_task_alloc();
  v12 = type metadata accessor for Party();
  v1[62] = v12;
  OUTLINED_FUNCTION_1_3(v12);
  v1[63] = v13;
  v15 = *(v14 + 64);
  v1[64] = OUTLINED_FUNCTION_28();
  v1[65] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit12AppIdDetailsVSgMd, &_s18SiriSuggestionsKit12AppIdDetailsVSgMR);
  OUTLINED_FUNCTION_13_0(v16);
  v18 = *(v17 + 64);
  v1[66] = OUTLINED_FUNCTION_27();
  v19 = type metadata accessor for AppIdDetails();
  v1[67] = v19;
  OUTLINED_FUNCTION_1_3(v19);
  v1[68] = v20;
  v22 = *(v21 + 64);
  v1[69] = OUTLINED_FUNCTION_27();
  v23 = type metadata accessor for DeliveryVehicle();
  v1[70] = v23;
  OUTLINED_FUNCTION_1_3(v23);
  v1[71] = v24;
  v26 = *(v25 + 64);
  v1[72] = OUTLINED_FUNCTION_27();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15DeliveryVehicleOSg_ADtMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSg_ADtMR);
  v1[73] = v27;
  OUTLINED_FUNCTION_13_0(v27);
  v29 = *(v28 + 64);
  v1[74] = OUTLINED_FUNCTION_27();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  OUTLINED_FUNCTION_13_0(v30);
  v32 = *(v31 + 64);
  v1[75] = OUTLINED_FUNCTION_28();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  OUTLINED_FUNCTION_37();

  return _swift_task_switch(v33, v34, v35);
}

{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[52];
  v8 = v7[4];
  v56 = v7;
  __swift_project_boxed_opaque_existential_2(v7, v7[3]);
  OUTLINED_FUNCTION_19();
  dispatch thunk of CandidateSuggestion.deliveryVehicle.getter();
  (*(v5 + 104))(v2, enum case for DeliveryVehicle.siriAutoComplete(_:), v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v9 = *(v4 + 48);
  outlined init with copy of DeliveryVehicle?(v1, v3, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  outlined init with copy of DeliveryVehicle?(v2, v3 + v9, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
  {
    v10 = v0[77];
    v11 = v0[70];
    outlined destroy of Resolver?(v0[76], &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
    outlined destroy of Resolver?(v10, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
    if (__swift_getEnumTagSinglePayload(v3 + v9, 1, v11) == 1)
    {
      outlined destroy of Resolver?(v0[74], &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
LABEL_13:
      v44 = v0[52];
      v45 = v56[3];
      v46 = v56[4];
      OUTLINED_FUNCTION_17();
      v0[78] = dispatch thunk of CandidateSuggestion.context.getter();
      v0[79] = v47;
      v0[80] = swift_getObjectType();
      v49 = v56[3];
      v48 = v56[4];
      OUTLINED_FUNCTION_17();
      v50 = dispatch thunk of CandidateSuggestion.context.getter();
      v52 = v51;
      v0[81] = v50;
      v0[82] = v51;
      v0[83] = swift_getObjectType();
      v53 = *(*(v52 + 8) + 8);
      v34 = dispatch thunk of Actor.unownedExecutor.getter();
      v36 = ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v12 = v0[70];
  outlined init with copy of DeliveryVehicle?(v0[74], v0[75], &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3 + v9, 1, v12);
  v14 = v0[77];
  v15 = v0[75];
  if (EnumTagSinglePayload == 1)
  {
    v16 = v0[71];
    v17 = v0[70];
    outlined destroy of Resolver?(v0[76], &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
    outlined destroy of Resolver?(v14, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
    (*(v16 + 8))(v15, v17);
LABEL_6:
    outlined destroy of Resolver?(v0[74], &_s18SiriSuggestionsKit15DeliveryVehicleOSg_ADtMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSg_ADtMR);
    goto LABEL_7;
  }

  v55 = v0[74];
  v37 = v0[72];
  v38 = v0[71];
  v39 = v0[70];
  (*(v38 + 32))(v37, v3 + v9, v39);
  lazy protocol witness table accessor for type DeliveryVehicle and conformance DeliveryVehicle(&lazy protocol witness table cache variable for type DeliveryVehicle and conformance DeliveryVehicle, 255, &type metadata accessor for DeliveryVehicle);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = *(v38 + 8);
  v41(v37, v39);
  v42 = OUTLINED_FUNCTION_19();
  outlined destroy of Resolver?(v42, v43, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  outlined destroy of Resolver?(v14, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  v41(v15, v39);
  outlined destroy of Resolver?(v55, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMd, &_s18SiriSuggestionsKit15DeliveryVehicleOSgMR);
  if (v40)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v18 = type metadata accessor for Logger();
  v0[84] = __swift_project_value_buffer(v18, static Logger.suggestions);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_23(v20))
  {
    v21 = OUTLINED_FUNCTION_38();
    *v21 = 0;
    OUTLINED_FUNCTION_16();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    OUTLINED_FUNCTION_4_0(v21);
  }

  v27 = v0[52];

  v29 = v56[3];
  v28 = v56[4];
  OUTLINED_FUNCTION_17();
  v30 = dispatch thunk of CandidateSuggestion.context.getter();
  v32 = v31;
  v0[85] = v30;
  v0[86] = v31;
  v0[87] = swift_getObjectType();
  v33 = *(*(v32 + 8) + 8);
  v34 = dispatch thunk of Actor.unownedExecutor.getter();
  v36 = ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:);
LABEL_14:

  return _swift_task_switch(v36, v34, v35);
}

{
  OUTLINED_FUNCTION_10_0();
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  Context.getTargetOwner()();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_37();

  return _swift_task_switch(v4, v5, v6);
}

{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[18];
  v5 = v0[19];
  __swift_project_boxed_opaque_existential_2(v0 + 15, v4);
  v0[23] = v4;
  v0[24] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_2(v0 + 20);
  OUTLINED_FUNCTION_14();
  (*(v6 + 16))();
  v7 = *(*(v2 + 8) + 8);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:), v9, v8);
}

{
  OUTLINED_FUNCTION_10_0();
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[78];
  Context.getParam(for:key:)();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  OUTLINED_FUNCTION_37();

  return _swift_task_switch(v4, v5, v6);
}

{
  if (!*(v0 + 320))
  {
    outlined destroy of Resolver?(v0 + 296, &_sypSgMd, &_sypSgMR);
    goto LABEL_10;
  }

  outlined init with take of Any((v0 + 296), (v0 + 264));
  outlined init with copy of Any(v0 + 264, v0 + 328);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 264));
LABEL_10:
    if (one-time initialization token for suggestions != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.suggestions);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_23(v6))
    {
      *OUTLINED_FUNCTION_38() = 0;
      OUTLINED_FUNCTION_15();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_3_1();
    }

    v25 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  if (*(v0 + 392) == 0xD00000000000001DLL && 0x800000000000CDB0 == *(v0 + 400))
  {
    v12 = *(v0 + 400);
  }

  else
  {
    v2 = *(v0 + 400);
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.suggestions);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_23(v15))
  {
    *OUTLINED_FUNCTION_38() = 0;
    OUTLINED_FUNCTION_15();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    OUTLINED_FUNCTION_3_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v21 = OUTLINED_FUNCTION_29();
  *(v21 + 56) = &type metadata for StartCallSuggestionParams;
  *(v21 + 16) = xmmword_C270;
  *(v21 + 32) = xmmword_C510;
  v25 = v21;
  *(v21 + 48) = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 264));
LABEL_21:
  OUTLINED_FUNCTION_7_0();
  v22 = *(v0 + 488);
  v26 = *(v0 + 480);
  v27 = *(v0 + 456);

  OUTLINED_FUNCTION_18();

  return v23(v25);
}

{
  OUTLINED_FUNCTION_10_0();
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[66];
  Context.getAppId()();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_37();

  return _swift_task_switch(v5, v6, v7);
}

{
  v215 = v0;
  v2 = v0[67];
  v3 = v0[66];
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    outlined destroy of Resolver?(v3, &_s18SiriSuggestionsKit12AppIdDetailsVSgMd, &_s18SiriSuggestionsKit12AppIdDetailsVSgMR);
    HIDWORD(v192) = 0;
    v4 = &outlined read-only object #0 of ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:);
  }

  else
  {
    v5 = v0[69];
    v6 = v0[68];
    v1 = v0[65];
    v7 = v0;
    v10 = v0 + 63;
    v8 = v0[63];
    v9 = v10[1];
    v11 = v7[62];
    (*(v6 + 32))(v5, v3, v2);
    AppIdDetails.party.getter();
    (*(v8 + 104))(v9, enum case for Party.third(_:), v11);
    v12 = static Party.== infix(_:_:)();
    v13 = *(v8 + 8);
    v13(v9, v11);
    v13(v1, v11);
    if (v12)
    {
      v14 = v7[84];
      v15 = v7[69];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v4 = swift_allocObject();
      *(v4 + 1) = xmmword_C270;
      v4[4] = AppIdDetails.appId.getter();
      v4[5] = v16;
      v17 = Logger.logObject.getter();
      v1 = static os_log_type_t.debug.getter();
      v18 = OUTLINED_FUNCTION_23(v1);
      v19 = v7[69];
      v20 = v7[68];
      v21 = v7[67];
      v0 = v7;
      if (v18)
      {
        v22 = OUTLINED_FUNCTION_25();
        v210 = v19;
        v23 = swift_slowAlloc();
        v214[0] = v23;
        *v22 = 136315138;

        Array.description.getter();

        v24 = OUTLINED_FUNCTION_19();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v26);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_0, v17, v1, "#Resolvers Found 3P app %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        OUTLINED_FUNCTION_4_0(v23);
        OUTLINED_FUNCTION_9();

        (*(v20 + 8))(v210, v21);
      }

      else
      {

        (*(v20 + 8))(v19, v21);
      }

      HIDWORD(v192) = 1;
    }

    else
    {
      (*(v7[68] + 8))(v7[69], v7[67]);
      HIDWORD(v192) = 0;
      v4 = &outlined read-only object #0 of ResolveStartCallParams.resolveParameter(parameter:suggestion:interaction:environment:);
      v0 = v7;
    }
  }

  v28 = [objc_allocWithZone(ATXProactiveSuggestionClient) initWithConsumerSubType:45];
  v29 = [v28 suggestionLayoutFromCache];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 allSuggestionsInLayout];

    type metadata accessor for INIntent(0, &lazy cache variable for type metadata for ATXProactiveSuggestion, ATXProactiveSuggestion_ptr);
    inited = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    inited = 0;
  }

  v33 = v0[84];

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_23(v35))
  {
    v1 = OUTLINED_FUNCTION_25();
    *v1 = 134217984;
    if (inited)
    {
      v36 = specialized Array._getCount()(inited);
    }

    else
    {
      v36 = 0;
    }

    *(v1 + 4) = v36;

    OUTLINED_FUNCTION_16();
    _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
    OUTLINED_FUNCTION_4_0(v1);
  }

  else
  {
  }

  v42 = &_swiftEmptyArrayStorage;
  if (inited)
  {
    v43 = inited;
  }

  else
  {
    v43 = &_swiftEmptyArrayStorage;
  }

  v44 = specialized Array._getCount()(v43);
  v206 = v0;
  v195 = v28;
  v196 = v4;
  if (v44)
  {
    if (v44 >= 1)
    {
      v47 = 0;
      v197 = (v0 + 47);
      v199 = 0;
      v207 = v43 & 0xC000000000000001;
      *&v46 = 138412290;
      v202 = v46;
      *&v46 = 136315394;
      v191 = v46;
      v203 = v43;
      v211 = v44;
      while (1)
      {
        if (v207)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v48 = *(v43 + 8 * v47 + 32);
        }

        v49 = v48;
        v50 = v0[84];
        v51 = [v48 executableSpecification];
        v52 = [v51 executableType];

        v53 = v49;
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();

        v56 = os_log_type_enabled(v54, v55);
        if (v52 != &dword_0 + 2)
        {
          if (v56)
          {
            v91 = OUTLINED_FUNCTION_25();
            v92 = swift_slowAlloc();
            v100 = OUTLINED_FUNCTION_22(v92, v93, v94, v95, v96, v97, v98, v99, v191, *(&v191 + 1), v192, v193, v194, v195, v196, v197, v199, v200, v202);
            _os_log_impl(&dword_0, v54, v55, "#Resolvers Ignoring suggestion %@", v91, 0xCu);
            outlined destroy of Resolver?(v52, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_3_1();
          }

          else
          {
          }

          goto LABEL_52;
        }

        if (v56)
        {
          v57 = OUTLINED_FUNCTION_25();
          v58 = swift_slowAlloc();
          OUTLINED_FUNCTION_22(v58, v59, v60, v61, v62, v63, v64, v65, v191, *(&v191 + 1), v192, v193, v194, v195, v196, v197, v199, v200, v202);
          _os_log_impl(&dword_0, v54, v55, "#Resolvers Found a proactive action suggestion %@", v57, 0xCu);
          outlined destroy of Resolver?(2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_3_1();
        }

        v66 = [v53 executableSpecification];
        v67 = [v66 executableObject];

        if (v67)
        {
          objc_opt_self();
          v68 = swift_dynamicCastObjCClass();
          if (v68)
          {
            v69 = v68;
            v200 = v42;

            v70 = [v69 bundleId];
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v72;

            v0[47] = v71;
            v0[48] = v73;
            v74 = swift_task_alloc();
            *(v74 + 16) = v197;
            v75 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v74, v4);

            if (v75)
            {
              v76 = v0[84];
              swift_unknownObjectRetain();
              v77 = Logger.logObject.getter();
              v78 = static os_log_type_t.debug.getter();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v77, v78))
              {
                HIDWORD(v194) = v78;
                v79 = swift_slowAlloc();
                v193 = swift_slowAlloc();
                v214[0] = v193;
                *v79 = v191;
                v80 = [v69 bundleId];
                v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v83 = v82;

                v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v214);

                *(v79 + 4) = v84;
                *(v79 + 12) = 2080;
                v85 = [v69 intent];
                v86 = v85;
                if (v85)
                {
                  v87 = [v85 _dictionaryRepresentation];

                  v86 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
                }

                v42 = v200;
                v0[51] = v86;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
                v88 = String.init<A>(describing:)();
                v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v214);

                *(v79 + 14) = v90;
                _os_log_impl(&dword_0, v77, BYTE4(v194), "#Resolvers %s with intent: %s", v79, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_3_1();
                OUTLINED_FUNCTION_9();

                v4 = v196;
              }

              else
              {

                v42 = v200;
              }

              v101 = [v69 intent];
              if (v101)
              {
                v102 = v101;
                v0[32] = type metadata accessor for INIntent(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
                v0[29] = v102;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
                }

                v104 = *(v42 + 2);
                v103 = *(v42 + 3);
                if (v104 >= v103 >> 1)
                {
                  v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v42);
                }

                swift_unknownObjectRelease();

                *(v42 + 2) = v104 + 1;
                v105 = &v42[32 * v104];
                v0 = v206;
                outlined init with take of Any((v206 + 232), v105 + 2);
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {

              swift_unknownObjectRelease();
              v42 = v200;
            }

            goto LABEL_51;
          }

          swift_unknownObjectRelease();
        }

LABEL_51:
        v43 = v203;
LABEL_52:
        if (v211 == ++v47)
        {
          goto LABEL_53;
        }
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), 3, 1, inited);
LABEL_74:
    *(inited + 16) = 3;
    *(inited + 80) = v42;
    *(inited + 88) = v1;
    *(inited + 96) = 257;
    v129 = v206;
    goto LABEL_79;
  }

LABEL_53:

  v106 = v0[84];
  v0[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  v0[25] = v42;

  ResolveStartCallParams.getPersonName(suggestions:)((v0 + 25));
  v108 = v107;
  v110 = v109;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);

  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.debug.getter();

  v201 = v42;
  *&v202 = v110;
  v198 = v108;
  if (os_log_type_enabled(v111, v112))
  {
    v113 = OUTLINED_FUNCTION_25();
    v114 = swift_slowAlloc();
    v214[0] = v114;
    *v113 = 136315138;

    v115 = OUTLINED_FUNCTION_19();
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v115, v116, v117);

    *(v113 + 4) = v118;
    OUTLINED_FUNCTION_15();
    _os_log_impl(v119, v120, v121, v122, v123, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_3_1();
  }

  v42 = v0[59];
  v124 = v0[56];
  v125 = v0[53];
  v126 = v125[4];
  __swift_project_boxed_opaque_existential_2(v125, v125[3]);
  OUTLINED_FUNCTION_31();
  inited = dispatch thunk of EnvironmentSnapshot.salientEntities.getter();
  v127 = 0;
  v212 = *(inited + 16);
  v204 = (v42 + 16);
  v1 = v124 + 88;
  v128 = enum case for SalientEntityType.openApp(_:);
  v208 = (v42 + 8);
  v4 = (v124 + 8);
  while (1)
  {
    if (v212 == v127)
    {

      v129 = v206;
LABEL_70:
      v4 = v195;
      v1 = v202;
      v42 = v198;
      goto LABEL_71;
    }

    v45 = *(inited + 16);
    if (v127 >= v45)
    {
      __break(1u);
      goto LABEL_92;
    }

    v129 = v206;
    v130 = *(v206 + 456);
    v131 = *(v206 + 440);
    (*(v42 + 2))(*(v206 + 480), inited + ((v42[80] + 32) & ~v42[80]) + *(v42 + 9) * v127, *(v206 + 464));
    SalientEntity.type.getter();
    if ((*v1)(v130, v131) == v128)
    {
      break;
    }

    v132 = *(v206 + 456);
    v133 = *(v206 + 440);
    ++v127;
    (*v208)(*(v206 + 480), *(v206 + 464));
    v134 = *v4;
    v135 = OUTLINED_FUNCTION_34();
    v136(v135);
  }

  v138 = *(v206 + 480);
  v137 = *(v206 + 488);
  v140 = *(v206 + 464);
  v139 = *(v206 + 472);
  v141 = *(v206 + 456);
  v142 = *(v206 + 440);

  v143 = *v4;
  v144 = OUTLINED_FUNCTION_19();
  v145(v144);

  v146 = *(v139 + 32);
  v147 = OUTLINED_FUNCTION_34();
  v148(v147);
  SalientEntity.value.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
  v149 = swift_dynamicCast();
  if ((v149 & 1) == 0)
  {
    v163 = OUTLINED_FUNCTION_33(v149, v150, v151, v152, v153, v154, v155, v156, v191, *(&v191 + 1), v192, v193, v194, v195, v196, v198, v199, v201, v202, *(&v202 + 1), v204, v206, v208);
    v164(v163);
    goto LABEL_70;
  }

  v157 = *(v206 + 360);
  v158 = *(v206 + 368);
  v159 = v157 == 0xD000000000000015 && 0x800000000000C930 == v158;
  v4 = v195;
  v1 = v202;
  v42 = v198;
  if (v159 || (OUTLINED_FUNCTION_12_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v129 = v206;
    v160 = *(v206 + 488);
    v161 = *(v206 + 464);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v162 = OUTLINED_FUNCTION_29();
    *(v162 + 16) = xmmword_C270;
    *(v162 + 56) = &type metadata for StartCallSuggestionParams;
    *(v162 + 32) = v198;
    *(v162 + 40) = v202;
    v205 = v162;
    *(v162 + 48) = 0;
LABEL_68:

    (*v208)(v160, v161);
    goto LABEL_80;
  }

  if (v157 == 0xD000000000000012 && 0x800000000000C950 == v158)
  {

    v129 = v206;
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_12_0();
  v179 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v129 = v206;
  if (v179)
  {
LABEL_90:
    v160 = v129[61];
    v161 = v129[58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v190 = swift_allocObject();
    *(v190 + 16) = xmmword_C1C0;
    *(v190 + 32) = v198;
    *(v190 + 40) = v202;
    *(v190 + 48) = 1;
    *(v190 + 88) = &type metadata for StartCallSuggestionParams;
    *(v190 + 56) = &type metadata for StartCallSuggestionParams;
    *(v190 + 64) = v198;
    *(v190 + 72) = v202;
    v205 = v190;
    *(v190 + 80) = 257;

    goto LABEL_68;
  }

  v188 = OUTLINED_FUNCTION_33(v180, v181, v182, v183, v184, v185, v186, v187, v191, *(&v191 + 1), v192, v193, v194, v195, v196, v198, v199, v201, v202, *(&v202 + 1), v204, v206, v208);
  v189(v188);
LABEL_71:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16PhoneSuggestions25StartCallSuggestionParamsVGMd, &_ss23_ContiguousArrayStorageCy16PhoneSuggestions25StartCallSuggestionParamsVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C270;
  *(inited + 32) = v42;
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  if ((v192 & 0x100000000) == 0)
  {
    v165 = objc_opt_self();

    if ([v165 supportsDisplayingFaceTimeVideoCalls])
    {

      inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(&dword_0 + 1, 2, 1, inited);
      *(inited + 16) = 2;
      *(inited + 56) = v42;
      *(inited + 64) = v1;
      *(inited + 72) = 1;
      v45 = *(inited + 24);
      if (v45 > 5)
      {
        goto LABEL_74;
      }

      goto LABEL_93;
    }
  }

  v166 = v129[84];
  v167 = Logger.logObject.getter();
  v168 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_23(v168))
  {
    v169 = OUTLINED_FUNCTION_38();
    *v169 = 0;
    OUTLINED_FUNCTION_16();
    _os_log_impl(v170, v171, v172, v173, v174, 2u);
    OUTLINED_FUNCTION_4_0(v169);
  }

LABEL_79:
  v205 = specialized _arrayForceCast<A, B>(_:)(inited);

LABEL_80:

  OUTLINED_FUNCTION_7_0();
  v175 = v129[61];
  v209 = v129[60];
  v213 = v129[57];

  OUTLINED_FUNCTION_18();

  return v176(v205);
}

unint64_t *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 49);
    do
    {
      v8 = *(v4 - 17);
      v9 = *(v4 - 9);
      v10 = *(v4 - 1);
      v11 = *v4;

      swift_dynamicCast();
      v13 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v13;
      }

      v2[2] = v6 + 1;
      outlined init with take of Any(&v12, &v2[4 * v6 + 4]);
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void ResolveStartCallParams.getPersonName(suggestions:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  if (OUTLINED_FUNCTION_36())
  {
    v2 = v17;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v2 = OUTLINED_FUNCTION_29();
    *(v2 + 16) = xmmword_C270;
    outlined init with copy of Any(a1, v2 + 32);
  }

  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_25:

LABEL_26:
    OUTLINED_FUNCTION_12_0();
    return;
  }

  v4 = 0;
  v5 = v2 + 32;
  while (v4 < *(v2 + 16))
  {
    outlined init with copy of Any(v5, v18);
    type metadata accessor for INIntent(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
    if (OUTLINED_FUNCTION_36())
    {
      v6 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(v17);
      if (v6)
      {
        v7 = v6;
        v8 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v6 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_21:

            goto LABEL_22;
          }
        }

        else if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v8 + 16))
          {
            goto LABEL_29;
          }

          v9 = *(v7 + 32);
        }

        v10 = v9;

        v11 = outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(v10);
        if (v12)
        {
          v13 = v11;
          v14 = v12;

          v15 = HIBYTE(v14) & 0xF;
          if ((v14 & 0x2000000000000000) == 0)
          {
            v15 = v13 & 0xFFFFFFFFFFFFLL;
          }

          if (v15)
          {

            v16 = [v10 displayName];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            goto LABEL_26;
          }
        }
      }

      else
      {
      }
    }

LABEL_22:
    ++v4;
    v5 += 32;
    if (v3 == v4)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t ResolveStartCallParams.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ResolveStartCallParams.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_8_0();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveStartCallParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 112);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveStartCallParams;

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:) in conformance ResolveStartCallParams()
{
  OUTLINED_FUNCTION_10_0();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  OUTLINED_FUNCTION_18();

  return v4(v2);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16PhoneSuggestions25StartCallSuggestionParamsVGMd, &_ss23_ContiguousArrayStorageCy16PhoneSuggestions25StartCallSuggestionParamsVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
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
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t outlined bridged method (pb) of @objc INPerson.contactIdentifier.getter(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return OUTLINED_FUNCTION_12_0();
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t lazy protocol witness table accessor for type DeliveryVehicle and conformance DeliveryVehicle(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_A940(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_4_1(a1);
  result = (*(v3 + 88))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_A984(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_4_1(a1);
  result = (*(v3 + 88))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_A9C8(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_4_1(a1);
  result = (*(v3 + 88))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t outlined init with copy of DeliveryVehicle?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_12_0();
  v9(v8);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_1()
{

  return _swift_slowDealloc(v0, -1, -1);
}

uint64_t OUTLINED_FUNCTION_6_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_7_0()
{
  result = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[72];
  v6 = v0[69];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[64];
  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{

  return _swift_slowDealloc(v0, -1, -1);
}

uint64_t OUTLINED_FUNCTION_22(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19)
{
  *v19 = a19;
  *(v19 + 4) = v20;
  *a1 = v20;

  return _objc_retain_x23();
}

BOOL OUTLINED_FUNCTION_23(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{
  result = *(v23 + 488);
  v25 = *(v23 + 464);
  v26 = *a23;
  return result;
}

uint64_t OUTLINED_FUNCTION_35()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_36()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_38()
{

  return swift_slowAlloc();
}

PhoneSuggestions::StartCallSuggestionParams __swiftcall StartCallSuggestionParams.init(intent:)(INStartCallIntent intent)
{
  v2 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(intent.super.super.isa);
  v3 = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = specialized Array._getCount()(v2);
  if (!v4)
  {

    v3 = 0;
LABEL_8:
    v11 = 0xE000000000000000;
    goto LABEL_9;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_15;
    }

    v7 = *(v3 + 32);
  }

  v8 = v7;

  v9 = [v8 displayName];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

LABEL_9:
  v12 = [(objc_class *)intent.super.super.isa preferredCallProvider];
  v13 = outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(intent.super.super.isa);
  if (v13)
  {
    v14 = specialized Array._getCount()(v13) > 1;

    v15 = v14 << 8;
  }

  else
  {

    v15 = 0;
  }

  v6 = v15 | (v12 == &dword_0 + 2);
  v4 = v3;
  v5 = v11;
LABEL_15:
  result.name.value._object = v5;
  result.name.value._countAndFlagsBits = v4;
  result.isFaceTime = v6;
  result.isGroupCall = HIBYTE(v6);
  return result;
}

PhoneSuggestions::StartCallSuggestionParams __swiftcall StartCallSuggestionParams.init(name:isFaceTime:isGroupCall:)(PhoneSuggestions::StartCallSuggestionParams name, Swift::Bool isFaceTime, Swift::Bool isGroupCall)
{
  if (isGroupCall)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFE | isFaceTime;
  name.isFaceTime = v4;
  name.isGroupCall = HIBYTE(v4);
  return name;
}

uint64_t StartCallSuggestionParams.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t StartCallSuggestionParams.dictionary.getter(uint64_t a1, unint64_t a2, __int16 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C2A0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (a2)
  {
    v8 = a2;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6954656361467369;
  *(inited + 88) = 0xEA0000000000656DLL;
  *(inited + 96) = a3 & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x4370756F72477369;
  *(inited + 136) = 0xEB000000006C6C61;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = HIBYTE(a3) & 1;

  return Dictionary.init(dictionaryLiteral:)();
}

ValueMetadata *StartCallSuggestionParams.toDialog(dialogProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  outlined init with copy of any SiriSuggestions.Transformer<Self.SiriSuggestions.Transformer.InputType == SiriSuggestions.Intent, Self.SiriSuggestions.Transformer.OutputType == IntentParameter>(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit14DialogProvider_pMd, &_s18SiriSuggestionsKit14DialogProvider_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit17CATDialogProvider_pMd, &_s18SiriSuggestionsKit17CATDialogProvider_pMR);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    a2 = StartCallSuggestionParams.dictionary.getter(a2, a3, a4 & 0x101);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  }

  else
  {
    *(a5 + 8) = a3;
    *(a5 + 16) = a4 & 1;
    *(a5 + 17) = HIBYTE(a4) & 1;

    result = &type metadata for StartCallSuggestionParams;
  }

  *(a5 + 24) = result;
  *a5 = a2;
  return result;
}

ValueMetadata *protocol witness for DialogParameterProvider.toDialog(dialogProvider:) in conformance StartCallSuggestionParams@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return StartCallSuggestionParams.toDialog(dialogProvider:)(a1, *v2, *(v2 + 8), v3 | *(v2 + 16), a2);
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
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

uint64_t outlined bridged method (pb) of @objc INStartCallIntent.contacts.getter(void *a1)
{
  v1 = [a1 contacts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for INPerson();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StartCallSuggestionParams(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StartCallSuggestionParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for INPerson()
{
  result = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPerson);
  }

  return result;
}

uint64_t Logger.suggestions.unsafeMutableAddressor()
{
  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.suggestions);
}

uint64_t one-time initialization function for suggestions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.suggestions);
  __swift_project_value_buffer(v0, static Logger.suggestions);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.suggestions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for suggestions != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.suggestions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}