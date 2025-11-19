uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void type metadata completion function for TNCFollowUpAction()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AnyHashable : Any]?(319, &lazy cache variable for type metadata for [AnyHashable : Any]?, &_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      if (v2 <= 0x3F)
      {
        type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for TNCFollowUpNotification()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?(319, &lazy cache variable for type metadata for TNCFollowUpAction?, type metadata accessor for TNCFollowUpAction, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Double?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for [AnyHashable : Any]?(319, &lazy cache variable for type metadata for Set<String>?, &_sShySSGMd, &_sShySSGMR);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata completion function for TNCFollowUpItem()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for [AnyHashable : Any]?(319, &lazy cache variable for type metadata for [AnyHashable : Any]?, &_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      if (v2 <= 0x3F)
      {
        type metadata accessor for URL?(319, &lazy cache variable for type metadata for [TNCFollowUpAction], type metadata accessor for TNCFollowUpAction, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for URL?(319, &lazy cache variable for type metadata for TNCFollowUpNotification?, type metadata accessor for TNCFollowUpNotification, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t outlined consume of Set<FLNotificationOptions>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t lazy protocol witness table accessor for type FLNotificationOptions and conformance FLNotificationOptions(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of TNCFollowUpAction(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TNCFollowUpAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TNCFollowUpAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TNCDeviceInfoProvider.shared.getter()
{
  v0 = type metadata accessor for TNCDeviceInfoProvider();

  return MEMORY[0x2821FEAF0](v0, &unk_27CF20838);
}

uint64_t TNCDeviceInfoProvider.isInternalBuild.getter()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = 0xD00000000000001ELL;
  v7[1] = 0x800000022002BD70;
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.cString(using:)();
  (*(v1 + 8))(v4, v0);
  v5 = os_variant_allows_internal_security_policies();

  return v5;
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

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}