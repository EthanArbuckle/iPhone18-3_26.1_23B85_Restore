id DeleteHealthSampleIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteHealthSampleIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DeleteHealthSampleIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DeleteHealthSampleIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeleteHealthSampleIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DeleteHealthSampleIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  DeleteHealthSampleIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t DeleteHealthSampleIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___DeleteHealthSampleIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t DeleteHealthSampleIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___DeleteHealthSampleIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for DeleteHealthSampleIntentResponse.code : DeleteHealthSampleIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = DeleteHealthSampleIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for DeleteHealthSampleIntentResponse.code : DeleteHealthSampleIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  DeleteHealthSampleIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *DeleteHealthSampleIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___DeleteHealthSampleIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id DeleteHealthSampleIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___DeleteHealthSampleIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for DeleteHealthSampleIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id DeleteHealthSampleIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id DeleteHealthSampleIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___DeleteHealthSampleIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for DeleteHealthSampleIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id DeleteHealthSampleIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id DeleteHealthSampleIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___DeleteHealthSampleIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for DeleteHealthSampleIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id DeleteHealthSampleIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id DeleteHealthSampleIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___DeleteHealthSampleIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for DeleteHealthSampleIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id DeleteHealthSampleIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeleteHealthSampleIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode;
  if (!lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode;
  if (!lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type DeleteHealthSampleIntentResponseCode and conformance DeleteHealthSampleIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessSort_optional __swiftcall WellnessSort.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "average";
  *(v2 + 8) = 7;
  *(v2 + 16) = 2;
  *(v2 + 24) = "minimum";
  *(v2 + 32) = 7;
  *(v2 + 40) = 2;
  *(v2 + 48) = "maximum";
  *(v2 + 56) = 7;
  *(v2 + 64) = 2;
  *(v2 + 72) = "sum";
  *(v2 + 80) = 3;
  *(v2 + 88) = 2;
  *(v2 + 96) = "first";
  *(v2 + 104) = 5;
  *(v2 + 112) = 2;
  *(v2 + 120) = "last";
  *(v2 + 128) = 4;
  *(v2 + 136) = 2;
  *(v2 + 144) = "next";
  *(v2 + 152) = 4;
  *(v2 + 160) = 2;
  *(v2 + 168) = "above";
  *(v2 + 176) = 5;
  *(v2 + 184) = 2;
  *(v2 + 192) = "below";
  *(v2 + 200) = 5;
  *(v2 + 208) = 2;
  *(v2 + 216) = "unspecified";
  *(v2 + 224) = 11;
  *(v2 + 232) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessSort_average;
LABEL_22:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessSort_minimum;
      goto LABEL_22;
    case 2:
      v5.value = SiriWellnessIntents_WellnessSort_maximum;
      goto LABEL_22;
    case 3:
      v5.value = SiriWellnessIntents_WellnessSort_sum;
      goto LABEL_22;
    case 4:
      v5.value = SiriWellnessIntents_WellnessSort_first;
      goto LABEL_22;
    case 5:
      v5.value = SiriWellnessIntents_WellnessSort_last;
      goto LABEL_22;
    case 6:
      v5.value = SiriWellnessIntents_WellnessSort_next;
      goto LABEL_22;
    case 7:
      v5.value = SiriWellnessIntents_WellnessSort_above;
      goto LABEL_22;
    case 8:
      v5.value = SiriWellnessIntents_WellnessSort_below;
      goto LABEL_22;
    case 9:
      v5.value = SiriWellnessIntents_WellnessSort_unspecified;
      goto LABEL_22;
  }

  return 10;
}

uint64_t WellnessSort.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("average", 7uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("minimum", 7uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("maximum", 7uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sum", 3uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("first", 5uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("last", 4uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("next", 4uLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("above", 5uLL, 1)._countAndFlagsBits;
    case 8:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("below", 5uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unspecified", 0xBuLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type WellnessSort and conformance WellnessSort()
{
  v2 = lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort;
  if (!lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort;
  if (!lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessSort and conformance WellnessSort);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessSort_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessSort@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessSort_optional *a2@<X8>)
{
  result.value = WellnessSort.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessSort@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessSort.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessSort(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF6)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 9) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 246;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 10;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessSort(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF6)
  {
    v5 = ((a3 + 9) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF6)
  {
    v4 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

id GetAcitivitySummaryIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetAcitivitySummaryIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetAcitivitySummaryIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAcitivitySummaryIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetAcitivitySummaryIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetAcitivitySummaryIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetAcitivitySummaryIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetAcitivitySummaryIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetAcitivitySummaryIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetAcitivitySummaryIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetAcitivitySummaryIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetAcitivitySummaryIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetAcitivitySummaryIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetAcitivitySummaryIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetAcitivitySummaryIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetAcitivitySummaryIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GetAcitivitySummaryIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  GetAcitivitySummaryIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t GetAcitivitySummaryIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetAcitivitySummaryIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetAcitivitySummaryIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetAcitivitySummaryIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetAcitivitySummaryIntentResponse.code : GetAcitivitySummaryIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetAcitivitySummaryIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetAcitivitySummaryIntentResponse.code : GetAcitivitySummaryIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetAcitivitySummaryIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetAcitivitySummaryIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetAcitivitySummaryIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetAcitivitySummaryIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetAcitivitySummaryIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetAcitivitySummaryIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetAcitivitySummaryIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAcitivitySummaryIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetAcitivitySummaryIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetAcitivitySummaryIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetAcitivitySummaryIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetAcitivitySummaryIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetAcitivitySummaryIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetAcitivitySummaryIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetAcitivitySummaryIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetAcitivitySummaryIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetAcitivitySummaryIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetAcitivitySummaryIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetAcitivitySummaryIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetAcitivitySummaryIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetAcitivitySummaryIntentResponseCode and conformance GetAcitivitySummaryIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

id GetCardioFitnessIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetCardioFitnessIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetCardioFitnessIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetCardioFitnessIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetCardioFitnessIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetCardioFitnessIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetCardioFitnessIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetCardioFitnessIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetCardioFitnessIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetCardioFitnessIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetCardioFitnessIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetCardioFitnessIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetCardioFitnessIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetCardioFitnessIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetCardioFitnessIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetCardioFitnessIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GetCardioFitnessIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  GetCardioFitnessIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t GetCardioFitnessIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetCardioFitnessIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetCardioFitnessIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetCardioFitnessIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetCardioFitnessIntentResponse.code : GetCardioFitnessIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetCardioFitnessIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetCardioFitnessIntentResponse.code : GetCardioFitnessIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetCardioFitnessIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetCardioFitnessIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetCardioFitnessIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetCardioFitnessIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetCardioFitnessIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetCardioFitnessIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetCardioFitnessIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetCardioFitnessIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetCardioFitnessIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetCardioFitnessIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetCardioFitnessIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetCardioFitnessIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetCardioFitnessIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetCardioFitnessIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetCardioFitnessIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetCardioFitnessIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetCardioFitnessIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetCardioFitnessIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetCardioFitnessIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetCardioFitnessIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetCardioFitnessIntentResponseCode and conformance GetCardioFitnessIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessConfirmation_optional __swiftcall WellnessConfirmation.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "yes";
  *(v2 + 8) = 3;
  *(v2 + 16) = 2;
  *(v2 + 24) = "no";
  *(v2 + 32) = 2;
  *(v2 + 40) = 2;
  *(v2 + 48) = "cancel";
  *(v2 + 56) = 6;
  *(v2 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessConfirmation_yes;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessConfirmation_no;
      goto LABEL_8;
    case 2:
      v5.value = SiriWellnessIntents_WellnessConfirmation_cancel;
      goto LABEL_8;
  }

  return 3;
}

uint64_t WellnessConfirmation.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("yes", 3uLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("no", 2uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cancel", 6uLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type WellnessConfirmation and conformance WellnessConfirmation()
{
  v2 = lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation;
  if (!lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation;
  if (!lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessConfirmation and conformance WellnessConfirmation);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessConfirmation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessConfirmation@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessConfirmation_optional *a2@<X8>)
{
  result.value = WellnessConfirmation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessConfirmation@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessConfirmation.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WellnessConfirmation(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WellnessConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

Swift::tuple_Double_Double __swiftcall minMaxForSample(sample:unit:oMin:oMax:)(HKSample sample, HKUnit unit, Swift::Double oMin, Swift::Double oMax)
{
  MEMORY[0x277D82BE0](sample.super.super.isa);
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v13 = v18;
  }

  else
  {
    MEMORY[0x277D82BD8](sample.super.super.isa);
    v13 = 0;
  }

  if (v13)
  {
    v11 = [v13 quantity];
    [v11 doubleValueForUnit_];
    v12 = v4;
    MEMORY[0x277D82BD8](v11);
    if (oMin == 0.0)
    {
      v10 = v12;
    }

    else
    {
      min<A>(_:_:)();
      v10 = v20;
    }

    max<A>(_:_:)();
    MEMORY[0x277D82BD8](v13);
    v8 = v10;
    v9 = v19;
  }

  else
  {
    v8 = oMin;
    v9 = oMax;
  }

  v5 = v8;
  v6 = v9;
  result._1 = v6;
  result._0 = v5;
  return result;
}

uint64_t conjugate<A>(for:units:target:minKey:maxKey:valueKey:accumulator:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v7 = *a4;
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = *(v7 + *MEMORY[0x277D84308]);
  v14 = a5;
  v13 = a6;
  v12 = a7;
  v9 = [a1 objectsForType_];
  type metadata accessor for HKSample();
  lazy protocol witness table accessor for type HKSample and conformance NSObject();
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  MEMORY[0x277D82BE0](a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8HKSampleCGMd, &_sShySo8HKSampleCGMR);
  lazy protocol witness table accessor for type Set<HKSample> and conformance Set<A>();
  Sequence.forEach(_:)();

  MEMORY[0x277D82BD8](a3);

  outlined destroy of [HKQuantityType](&v11);
  return MEMORY[0x277D82BD8](v9);
}

uint64_t closure #1 in conjugate<A>(for:units:target:minKey:maxKey:valueKey:accumulator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v57 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v47 = a7;
  isa = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v68 = 0;
  v65 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v48 = *(*a5 + *MEMORY[0x277D84308]);
  v78 = v48;
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v52 = v49[8];
  v51 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a2);
  v53 = &v19 - v51;
  v54 = v51;
  MEMORY[0x28223BE20](v7);
  v55 = &v19 - v54;
  v56.super.super.isa = *v8;
  isa = v56.super.super.isa;
  v76 = v9;
  v75 = v10;
  v74 = v11;
  v73 = v12;
  v72 = v13;
  v71 = v14;

  if (v57)
  {
    v42 = v57;
    v39 = v57;
    MEMORY[0x277D82BE0](v43);
    v38 = &v58;
    v58 = v43;
    v35 = 0;
    v36 = type metadata accessor for HKQuantityType();
    v37 = type metadata accessor for HKUnit();
    v15 = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
    MEMORY[0x26D649240](v59, v38, v39, v36, v37, v15);
    MEMORY[0x277D82BD8](v58);
    v40 = v59[0];

    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v69 = v41;
  if (v41)
  {
    v70 = v69;
  }

  else
  {
    v70 = [objc_opt_self() millimeterOfMercuryUnit];
    if (v69)
    {
      outlined destroy of HealthKitPersistor(&v69);
    }
  }

  v30.super.isa = v70;
  v68 = v70;

  v29 = v49[2];
  v28 = v49 + 2;
  v29(v55, v44, v48);
  swift_getAtKeyPath();
  v31 = v67;

  v29(v53, v44, v48);
  swift_getAtKeyPath();
  v34 = minMaxForSample(sample:unit:oMin:oMax:)(v56, v30, v31, v66);
  v33 = v49[1];
  v32 = v49 + 1;
  v33(v53, v48);

  v33(v55, v48);

  v65 = v34;

  v64 = v34._0;
  swift_setAtWritableKeyPath();

  v63 = v34._1;
  swift_setAtWritableKeyPath();

  if (v47)
  {
    v27 = v47;
    v25 = v47;
    v62 = v47;
    MEMORY[0x277D82BE0](v56.super.super.isa);
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    v26 = v16;
    if (v16)
    {
      v24 = v26;
    }

    else
    {
      MEMORY[0x277D82BD8](v56.super.super.isa);
      v24 = 0;
    }

    v23 = v24;
    if (v24)
    {
      v22 = v23;
      v21 = v23;
      v61 = v23;
      v19 = [v23 quantity];
      [v19 doubleValueForUnit_];
      v20 = v17;
      MEMORY[0x277D82BD8](v19);
      v60 = v20;

      v59[1] = v20;
      swift_setAtWritableKeyPath();

      MEMORY[0x277D82BD8](v21);
    }
  }

  return MEMORY[0x277D82BD8](v30.super.isa);
}

uint64_t GetBloodPressureIntentHandler.signposter.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter;
  v2 = type metadata accessor for OSSignposter();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

id GetBloodPressureIntentHandler.init(provider:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  OSSignposter.init()();
  outlined init with copy of QuantityPersisting(a1, v7);
  outlined init with take of QuantityPersisting(v7, &v1[OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_provider]);
  v6.receiver = v9;
  v6.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v5);
  v9 = v5;
  __swift_destroy_boxed_opaque_existential_1(a1);
  MEMORY[0x277D82BD8](v9);
  return v5;
}

uint64_t GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[70] = v1;
  v2[69] = a1;
  v2[35] = v2;
  v2[36] = 0;
  v2[37] = 0;
  v2[38] = 0;
  v2[43] = 0;
  v2[48] = 0;
  v2[53] = 0;
  v2[54] = 0;
  v2[57] = 0;
  v2[58] = 0;
  v2[60] = 0;
  v3 = type metadata accessor for Logger();
  v2[71] = v3;
  v8 = *(v3 - 8);
  v2[72] = v8;
  v9 = *(v8 + 64);
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v4 = type metadata accessor for OSSignposter();
  v2[77] = v4;
  v10 = *(v4 - 8);
  v2[78] = v10;
  v11 = *(v10 + 64);
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v2[82] = v5;
  v12 = *(v5 - 8);
  v2[83] = v12;
  v13 = *(v12 + 64);
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[36] = a1;
  v2[37] = v1;
  v6 = v2[35];

  return MEMORY[0x2822009F8](GetBloodPressureIntentHandler.handle(intent:), 0);
}

uint64_t GetBloodPressureIntentHandler.handle(intent:)()
{
  v38 = v0;
  v27 = v0[85];
  v30 = v0[81];
  v28 = v0[80];
  v29 = v0[78];
  v33 = v0[77];
  v32 = v0[70];
  v0[35] = v0;
  v1 = OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter;
  v34 = *(v29 + 16);
  v0[86] = v34;
  v0[87] = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v34(v30, v32 + v1);
  OSSignposter.makeSignpostID()();
  v2 = *(v29 + 8);
  v31 = v2;
  v0[88] = v2;
  v0[89] = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v30, v33);
  (v34)(v28, v32 + OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter, v33);
  v35 = OSSignposter.logHandle.getter();
  v36 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    closure #1 in _globalStringTablePointerOfStaticString(_:)("GBPIHandle", &v37);
    v19 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v24 = _allocateUninitializedArray<A>(_:)();
    MEMORY[0x277D82BE0](v35);
    v21 = static UnsafeMutablePointer.allocate(capacity:)();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v22 = createStorage<A>(capacity:type:)(0);
    v23 = createStorage<A>(capacity:type:)(0);
    *(v26 + 520) = v21;
    *(v26 + 528) = v22;
    *(v26 + 536) = v23;
    serialize(_:at:)(0, (v26 + 520));
    serialize(_:at:)(0, (v26 + 520));
    *(v26 + 544) = v24;
    v25 = swift_task_alloc();
    v25[2] = v26 + 520;
    v25[3] = v26 + 528;
    v25[4] = v26 + 536;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v18 = *(v26 + 680);

    closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v21, 2u, v35, v36, v18, v19, "");
    destroyStorage<A>(_:count:)(v22, 0, v20);
    destroyStorage<A>(_:count:)(v23, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v21, MEMORY[0x277D84B78]);
    MEMORY[0x277D82BD8](v35);
  }

  *(v26 + 720) = 0;
  v8 = *(v26 + 680);
  v9 = *(v26 + 672);
  v7 = *(v26 + 656);
  v11 = *(v26 + 640);
  v10 = *(v26 + 616);
  v13 = *(v26 + 560);
  v6 = *(v26 + 664);
  MEMORY[0x277D82BD8](v35);
  type metadata accessor for OSSignpostIntervalState();
  (*(v6 + 16))(v9, v8, v7);
  _swift_stdlib_has_malloc_size();
  v12 = OSSignpostIntervalState.__allocating_init(id:isOpen:)();
  *(v26 + 728) = v12;
  v31(v11, v10);
  *(v26 + 304) = v12;
  outlined init with copy of QuantityPersisting(v13 + OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_provider, v26 + 144);
  v17 = *(v26 + 168);
  v14 = *(v26 + 176);
  __swift_project_boxed_opaque_existential_1((v26 + 144), v17);
  v15 = *(v14 + 8);
  v16 = (*(v15 + 8) + **(v15 + 8));
  v3 = *(*(v15 + 8) + 4);
  v4 = swift_task_alloc();
  *(v26 + 736) = v4;
  *v4 = *(v26 + 280);
  v4[1] = GetBloodPressureIntentHandler.handle(intent:);

  return v16(v17, v15);
}

{
  v120 = v0;
  v118 = *(v0 + 856);
  *(v0 + 280) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  if ((v118 & 1) == 0)
  {
    v5 = *(v117 + 592);
    v35 = *(v117 + 568);
    v33 = *(v117 + 576);
    v34 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v33 + 16))(v5, v34, v35);
    swift_endAccess();
    v37 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v38 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v37, v36))
    {
      v6 = *(v117 + 720);
      v29 = static UnsafeMutablePointer.allocate(capacity:)();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v30 = createStorage<A>(capacity:type:)(0);
      v31 = createStorage<A>(capacity:type:)(0);
      *(v117 + 312) = v29;
      *(v117 + 320) = v30;
      *(v117 + 328) = v31;
      serialize(_:at:)(0, (v117 + 312));
      serialize(_:at:)(0, (v117 + 312));
      *(v117 + 336) = v38;
      v32 = swift_task_alloc();
      v32[2] = v117 + 312;
      v32[3] = v117 + 320;
      v32[4] = v117 + 328;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v6)
      {
      }

      _os_log_impl(&dword_269912000, v37, v36, "request requires Authorization", v29, 2u);
      destroyStorage<A>(_:count:)(v30, 0, v28);
      destroyStorage<A>(_:count:)(v31, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v29, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v23 = *(v117 + 728);
    v25 = *(v117 + 680);
    v26 = *(v117 + 656);
    v20 = *(v117 + 592);
    v21 = *(v117 + 568);
    v22 = *(v117 + 560);
    v24 = *(v117 + 664);
    v19 = *(v117 + 576);
    MEMORY[0x277D82BD8](v37);
    (*(v19 + 8))(v20, v21);
    type metadata accessor for GetBloodPressureIntentResponse();
    v27 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v22, v23);

    (*(v24 + 8))(v25, v26);
    v70 = v27;
    goto LABEL_34;
  }

  v112 = *(v117 + 696);
  v113 = *(v117 + 688);
  v109 = *(v117 + 632);
  v111 = *(v117 + 616);
  v110 = *(v117 + 560);
  type metadata accessor for HKHealthStore();
  v122 = NSDateFormatter.__allocating_init()();
  isa = v122.super.super.isa;
  *(v117 + 744) = v122.super.super.isa;
  *(v117 + 344) = v122.super.super.isa;
  v113(v109, v110 + OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter, v111, v122._counter);
  v115 = OSSignposter.logHandle.getter();
  v116 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v1 = *(v117 + 720);
    closure #1 in _globalStringTablePointerOfStaticString(_:)("HKStore initialized", &v119);
    v101 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v106 = _allocateUninitializedArray<A>(_:)();
    MEMORY[0x277D82BE0](v115);
    v103 = static UnsafeMutablePointer.allocate(capacity:)();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v104 = createStorage<A>(capacity:type:)(0);
    v105 = createStorage<A>(capacity:type:)(0);
    *(v117 + 488) = v103;
    *(v117 + 496) = v104;
    *(v117 + 504) = v105;
    serialize(_:at:)(0, (v117 + 488));
    serialize(_:at:)(0, (v117 + 488));
    *(v117 + 512) = v106;
    v107 = swift_task_alloc();
    v107[2] = v117 + 488;
    v107[3] = v117 + 496;
    v107[4] = v117 + 504;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v1)
    {
    }

    v100 = *(v117 + 680);

    closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v103, 2u, v115, v116, v100, v101, "");
    destroyStorage<A>(_:count:)(v104, 0, v102);
    destroyStorage<A>(_:count:)(v105, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v103, MEMORY[0x277D84B78]);
    MEMORY[0x277D82BD8](v115);

    v108 = 0;
  }

  else
  {
    v108 = *(v117 + 720);
  }

  *(v117 + 752) = v108;
  v95 = *(v117 + 712);
  v96 = *(v117 + 704);
  v93 = *(v117 + 632);
  v94 = *(v117 + 616);
  MEMORY[0x277D82BD8](v115);
  v96(v93, v94);
  type metadata accessor for HKCorrelationType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v98 = *MEMORY[0x277CCBBA8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCBBA8]);
  v99 = [ObjCClassFromMetadata correlationTypeForIdentifier_];
  *(v117 + 760) = v99;
  MEMORY[0x277D82BD8](v98);
  if (!v99)
  {
    v4 = *(v117 + 600);
    v55 = *(v117 + 568);
    v53 = *(v117 + 576);
    v54 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v53 + 16))(v4, v54, v55);
    swift_endAccess();
    log = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v58 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v56))
    {
      v49 = static UnsafeMutablePointer.allocate(capacity:)();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v50 = createStorage<A>(capacity:type:)(0);
      v51 = createStorage<A>(capacity:type:)(0);
      *(v117 + 352) = v49;
      *(v117 + 360) = v50;
      *(v117 + 368) = v51;
      serialize(_:at:)(0, (v117 + 352));
      serialize(_:at:)(0, (v117 + 352));
      *(v117 + 376) = v58;
      v52 = swift_task_alloc();
      v52[2] = v117 + 352;
      v52[3] = v117 + 360;
      v52[4] = v117 + 368;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v108)
      {
      }

      _os_log_impl(&dword_269912000, log, v56, "failed to create correlation type for blood pressure", v49, 2u);
      destroyStorage<A>(_:count:)(v50, 0, v48);
      destroyStorage<A>(_:count:)(v51, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v49, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v43 = *(v117 + 728);
    v45 = *(v117 + 680);
    v46 = *(v117 + 656);
    v40 = *(v117 + 600);
    v41 = *(v117 + 568);
    v42 = *(v117 + 560);
    v44 = *(v117 + 664);
    v39 = *(v117 + 576);
    MEMORY[0x277D82BD8](log);
    (*(v39 + 8))(v40, v41);
    type metadata accessor for GetBloodPressureIntentResponse();
    v47 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](isa);
    $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v42, v43);

    (*(v44 + 8))(v45, v46);
    v70 = v47;
    goto LABEL_34;
  }

  *(v117 + 384) = v99;
  v90 = objc_opt_self();
  v91 = *MEMORY[0x277CCC980];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
  v92 = [v90 quantityTypeForIdentifier_];
  *(v117 + 768) = v92;
  MEMORY[0x277D82BD8](v91);
  if (v92)
  {
    *(v117 + 424) = v92;
    v87 = objc_opt_self();
    v88 = *MEMORY[0x277CCC978];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCC978]);
    v89 = [v87 quantityTypeForIdentifier_];
    *(v117 + 776) = v89;
    MEMORY[0x277D82BD8](v88);
    if (v89)
    {
      *(v117 + 432) = v89;
      type metadata accessor for HKQuantityType();
      v83 = _allocateUninitializedArray<A>(_:)();
      v82 = v2;
      MEMORY[0x277D82BE0](v92);
      *v82 = v92;
      MEMORY[0x277D82BE0](v89);
      v82[1] = v89;
      _finalizeUninitializedArray<A>(_:)();
      *(v117 + 448) = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14HKQuantityTypeCGMd, &_sSaySo14HKQuantityTypeCGMR);
      lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
      lazy protocol witness table accessor for type [HKQuantityType] and conformance [A]();
      Set.init<A>(_:)();
      v85 = Set._bridgeToObjectiveC()().super.isa;
      *(v117 + 784) = v85;

      *(v117 + 16) = *(v117 + 280);
      *(v117 + 56) = v117 + 440;
      *(v117 + 24) = GetBloodPressureIntentHandler.handle(intent:);
      v84 = swift_continuation_init();
      *(v117 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMd, &_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMR);
      *(v117 + 112) = v84;
      *(v117 + 80) = MEMORY[0x277D85DD0];
      *(v117 + 88) = 1107296256;
      *(v117 + 92) = 0;
      *(v117 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [HKQuantityType : HKUnit];
      *(v117 + 104) = &block_descriptor_10;
      [(objc_class *)isa preferredUnitsForQuantityTypes:v85 completion:?];

      return MEMORY[0x282200938](v117 + 16);
    }

    MEMORY[0x277D82BD8](v92);
    v86 = v108;
  }

  else
  {
    v86 = v108;
  }

  v3 = *(v117 + 608);
  v78 = *(v117 + 568);
  v76 = *(v117 + 576);
  v77 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v76 + 16))(v3, v77, v78);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v81 = _allocateUninitializedArray<A>(_:)();
  if (!os_log_type_enabled(oslog, v79))
  {

    goto LABEL_21;
  }

  buf = static UnsafeMutablePointer.allocate(capacity:)();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  v73 = createStorage<A>(capacity:type:)(0);
  v74 = createStorage<A>(capacity:type:)(0);
  *(v117 + 392) = buf;
  *(v117 + 400) = v73;
  *(v117 + 408) = v74;
  serialize(_:at:)(0, (v117 + 392));
  serialize(_:at:)(0, (v117 + 392));
  *(v117 + 416) = v81;
  v75 = swift_task_alloc();
  v75[2] = v117 + 392;
  v75[3] = v117 + 400;
  v75[4] = v117 + 408;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
  Sequence.forEach(_:)();
  if (v86)
  {
  }

  _os_log_impl(&dword_269912000, oslog, v79, "failed to create quantity types sys/dia", buf, 2u);
  destroyStorage<A>(_:count:)(v73, 0, v71);
  destroyStorage<A>(_:count:)(v74, 0, MEMORY[0x277D84F70] + 8);
  MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

LABEL_21:
  v63 = *(v117 + 744);
  v65 = *(v117 + 728);
  v67 = *(v117 + 680);
  v68 = *(v117 + 656);
  v60 = *(v117 + 608);
  v61 = *(v117 + 568);
  v64 = *(v117 + 560);
  v62 = *(v117 + 760);
  v66 = *(v117 + 664);
  v59 = *(v117 + 576);
  MEMORY[0x277D82BD8](oslog);
  (*(v59 + 8))(v60, v61);
  type metadata accessor for GetBloodPressureIntentResponse();
  v69 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](v63);
  $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v64, v65);

  (*(v66 + 8))(v67, v68);
  v70 = v69;
LABEL_34:
  v7 = *(v117 + 680);
  v11 = *(v117 + 672);
  v12 = *(v117 + 648);
  v13 = *(v117 + 640);
  v14 = *(v117 + 632);
  v15 = *(v117 + 608);
  v16 = *(v117 + 600);
  v17 = *(v117 + 592);
  v18 = *(v117 + 584);

  v8 = *(*(v117 + 280) + 8);
  v9 = *(v117 + 280);

  return v8(v70);
}

{
  v7 = *v0;
  v8 = *v0;
  v6 = (v8 + 280);
  *(v8 + 280) = *v0;
  v1 = *(v7 + 48);
  *(v8 + 792) = v1;
  if (v1)
  {
    v4 = *v6;
    v3 = GetBloodPressureIntentHandler.handle(intent:);
  }

  else
  {
    v2 = *v6;
    v3 = GetBloodPressureIntentHandler.handle(intent:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v1 = v0[98];
  v0[35] = v0;
  v52 = v0[55];
  MEMORY[0x277D82BD8](v1);
  v53 = v0[94];
  v0[100] = v52;
  if (v52)
  {
    v48 = *(v51 + 744);
    v44 = *(v51 + 680);
    v43 = *(v51 + 560);
    v2 = *(v51 + 552);
    v47 = *(v51 + 776);
    v45 = *(v51 + 768);
    v42 = *(v51 + 760);
    *(v51 + 456) = v52;
    v46 = swift_allocObject();
    *(v51 + 808) = v46;
    *(v51 + 464) = v46 + 16;
    BloodPressureIntentResponse = type metadata accessor for GetBloodPressureIntentResponse();
    *(v51 + 816) = BloodPressureIntentResponse;
    *(v46 + 16) = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(4, 0);
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("handle(intent:)", 0xFuLL, 1);
    *(v51 + 824) = v3._object;
    MEMORY[0x277D82BE0](v2);
    MEMORY[0x277D82BE0](v42);
    MEMORY[0x277D82BE0](v43);

    MEMORY[0x277D82BE0](v45);

    MEMORY[0x277D82BE0](v47);
    MEMORY[0x277D82BE0](v48);
    v49 = swift_task_alloc();
    *(v51 + 832) = v49;
    v49[2] = v2;
    v49[3] = v42;
    v49[4] = v43;
    v49[5] = v44;
    v49[6] = v52;
    v49[7] = v45;
    v49[8] = v46;
    v49[9] = v47;
    v49[10] = v48;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = swift_task_alloc();
    *(v51 + 840) = v5;
    *v5 = *(v51 + 280);
    v5[1] = GetBloodPressureIntentHandler.handle(intent:);

    return MEMORY[0x2822008A0](v51 + 472, 0, 0, v3._countAndFlagsBits, v3._object, partial apply for closure #1 in GetBloodPressureIntentHandler.handle(intent:), v49, BloodPressureIntentResponse);
  }

  else
  {
    v35 = *(v51 + 768);
    MEMORY[0x277D82BD8](*(v51 + 776));
    MEMORY[0x277D82BD8](v35);
    v6 = *(v51 + 608);
    v38 = *(v51 + 568);
    v36 = *(v51 + 576);
    v37 = Logger.wellness.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v36 + 16))(v6, v37, v38);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v41 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v39))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v32 = createStorage<A>(capacity:type:)(0);
      v33 = createStorage<A>(capacity:type:)(0);
      *(v51 + 392) = buf;
      *(v51 + 400) = v32;
      *(v51 + 408) = v33;
      serialize(_:at:)(0, (v51 + 392));
      serialize(_:at:)(0, (v51 + 392));
      *(v51 + 416) = v41;
      v34 = swift_task_alloc();
      v34[2] = v51 + 392;
      v34[3] = v51 + 400;
      v34[4] = v51 + 408;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      if (v53)
      {
      }

      _os_log_impl(&dword_269912000, oslog, v39, "failed to create quantity types sys/dia", buf, 2u);
      destroyStorage<A>(_:count:)(v32, 0, v30);
      destroyStorage<A>(_:count:)(v33, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v15 = *(v51 + 744);
    v17 = *(v51 + 728);
    v19 = *(v51 + 680);
    v20 = *(v51 + 656);
    v12 = *(v51 + 608);
    v13 = *(v51 + 568);
    v16 = *(v51 + 560);
    v14 = *(v51 + 760);
    v18 = *(v51 + 664);
    v11 = *(v51 + 576);
    MEMORY[0x277D82BD8](oslog);
    (*(v11 + 8))(v12, v13);
    type metadata accessor for GetBloodPressureIntentResponse();
    v29 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v16, v17);

    (*(v18 + 8))(v19, v20);
    v7 = *(v51 + 680);
    v21 = *(v51 + 672);
    v22 = *(v51 + 648);
    v23 = *(v51 + 640);
    v24 = *(v51 + 632);
    v25 = *(v51 + 608);
    v26 = *(v51 + 600);
    v27 = *(v51 + 592);
    v28 = *(v51 + 584);

    v8 = *(*(v51 + 280) + 8);
    v9 = *(v51 + 280);

    return v8(v29);
  }
}

{
  v19 = *v1;
  v17 = (*v1 + 16);
  v18 = (v19 + 280);
  v2 = *(*v1 + 840);
  *(v19 + 280) = *v1;
  *(v19 + 848) = v0;

  if (v0)
  {
    v6 = *v18;
    v5 = GetBloodPressureIntentHandler.handle(intent:);
  }

  else
  {
    v3 = v17[102];
    v16 = v17[101];
    v13 = v17[99];
    v11 = v17[98];
    v14 = v17[95];
    v12 = v17[94];
    v9 = v17[93];
    v15 = v17[91];
    v10 = v17[68];
    v8 = v17[67];

    v4 = *v18;
    v5 = GetBloodPressureIntentHandler.handle(intent:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v1 = v0[101];
  v6 = v0[100];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v10 = v0[93];
  v12 = v0[91];
  v14 = v0[85];
  v13 = v0[83];
  v15 = v0[82];
  v11 = v0[70];
  v0[35] = v0;
  v24 = v0[59];

  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v11, v12);

  (*(v13 + 8))(v14, v15);
  v2 = v0[85];
  v16 = v0[84];
  v17 = v0[81];
  v18 = v0[80];
  v19 = v0[79];
  v20 = v0[76];
  v21 = v0[75];
  v22 = v0[74];
  v23 = v0[73];

  v3 = *(v0[35] + 8);
  v4 = v0[35];

  return v3(v24);
}

{
  v71 = v0;
  v48 = v0[106];
  v1 = v0[104];
  v40 = v0[103];
  v41 = v0[101];
  v42 = v0[100];
  v43 = v0[97];
  v44 = v0[96];
  v37 = v0[95];
  v39 = v0[93];
  v2 = v0[73];
  v45 = v0[72];
  v47 = v0[71];
  v38 = v0[70];
  v36 = v0[69];
  v0[35] = v0;

  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);

  MEMORY[0x277D82BD8](v44);

  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v39);

  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  v3 = v48;
  v0[60] = v48;
  v46 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v45 + 16))(v2, v46, v47);
  swift_endAccess();
  v4 = v48;
  v51 = swift_allocObject();
  *(v51 + 16) = v48;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();
  v54 = swift_allocObject();
  *(v54 + 16) = 32;
  v55 = swift_allocObject();
  *(v55 + 16) = 8;
  v49 = swift_allocObject();
  *(v49 + 16) = implicit closure #1 in GetBloodPressureIntentHandler.handle(intent:);
  *(v49 + 24) = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v56 + 24) = v49;
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  v58 = swift_allocObject();
  *(v58 + 16) = 8;
  v50 = swift_allocObject();
  *(v50 + 16) = implicit closure #2 in GetBloodPressureIntentHandler.handle(intent:);
  *(v50 + 24) = 0;
  v59 = swift_allocObject();
  *(v59 + 16) = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  *(v59 + 24) = v50;
  v60 = swift_allocObject();
  *(v60 + 16) = 64;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v52 = swift_allocObject();
  *(v52 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v52 + 24) = v51;
  v53 = swift_allocObject();
  *(v53 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v53 + 24) = v52;
  v62 = swift_allocObject();
  *(v62 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v62 + 24) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v63 = v5;

  *v63 = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[1] = v54;

  v63[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[3] = v55;

  v63[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[5] = v56;

  v63[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[7] = v57;

  v63[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[9] = v58;

  v63[10] = partial apply for closure #1 in OSLogArguments.append<A>(_:);
  v63[11] = v59;

  v63[12] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[13] = v60;

  v63[14] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[15] = v61;

  v63[16] = partial apply for closure #1 in OSLogArguments.append(_:);
  v63[17] = v62;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v64, v65))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = createStorage<A>(capacity:type:)(1);
    v34 = createStorage<A>(capacity:type:)(1);
    v66 = buf;
    v67 = v33;
    v68 = v34;
    serialize(_:at:)(2, &v66);
    serialize(_:at:)(3, &v66);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v54;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v55;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v56;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v57;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v58;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    v69 = partial apply for closure #1 in OSLogArguments.append<A>(_:);
    v70 = v59;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v60;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v61;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    v69 = partial apply for closure #1 in OSLogArguments.append(_:);
    v70 = v62;
    closure #1 in osLogInternal(_:log:type:)(&v69, &v66, &v67, &v68);
    _os_log_impl(&dword_269912000, v64, v65, "Failed with Error: %s:%ld %@", buf, 0x20u);
    destroyStorage<A>(_:count:)(v33, 1, v31);
    destroyStorage<A>(_:count:)(v34, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v14 = v35[106];
  v6 = v35[102];
  v16 = v35[93];
  v18 = v35[91];
  v20 = v35[85];
  v21 = v35[82];
  v12 = v35[73];
  v13 = v35[71];
  v17 = v35[70];
  v15 = v35[95];
  v19 = v35[83];
  v11 = v35[72];
  MEMORY[0x277D82BD8](v64);
  (*(v11 + 8))(v12, v13);
  v30 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v17, v18);

  (*(v19 + 8))(v20, v21);
  v7 = v35[85];
  v22 = v35[84];
  v23 = v35[81];
  v24 = v35[80];
  v25 = v35[79];
  v26 = v35[76];
  v27 = v35[75];
  v28 = v35[74];
  v29 = v35[73];

  v8 = *(v35[35] + 8);
  v9 = v35[35];

  return v8(v30);
}

{
  v39 = v0[99];
  v38 = v0[98];
  v0[35] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v38);

  v0[100] = 0;
  v30 = *(v37 + 768);
  MEMORY[0x277D82BD8](*(v37 + 776));
  MEMORY[0x277D82BD8](v30);
  v1 = *(v37 + 608);
  v33 = *(v37 + 568);
  v31 = *(v37 + 576);
  v32 = Logger.wellness.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v31 + 16))(v1, v32, v33);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v36 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v34))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v27 = createStorage<A>(capacity:type:)(0);
    v28 = createStorage<A>(capacity:type:)(0);
    *(v37 + 392) = buf;
    *(v37 + 400) = v27;
    *(v37 + 408) = v28;
    serialize(_:at:)(0, (v37 + 392));
    serialize(_:at:)(0, (v37 + 392));
    *(v37 + 416) = v36;
    v29 = swift_task_alloc();
    v29[2] = v37 + 392;
    v29[3] = v37 + 400;
    v29[4] = v37 + 408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v34, "failed to create quantity types sys/dia", buf, 2u);
    destroyStorage<A>(_:count:)(v27, 0, v25);
    destroyStorage<A>(_:count:)(v28, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v10 = *(v37 + 744);
  v12 = *(v37 + 728);
  v14 = *(v37 + 680);
  v15 = *(v37 + 656);
  v7 = *(v37 + 608);
  v8 = *(v37 + 568);
  v11 = *(v37 + 560);
  v9 = *(v37 + 760);
  v13 = *(v37 + 664);
  v6 = *(v37 + 576);
  MEMORY[0x277D82BD8](oslog);
  (*(v6 + 8))(v7, v8);
  type metadata accessor for GetBloodPressureIntentResponse();
  v24 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(v11, v12);

  (*(v13 + 8))(v14, v15);
  v2 = *(v37 + 680);
  v16 = *(v37 + 672);
  v17 = *(v37 + 648);
  v18 = *(v37 + 640);
  v19 = *(v37 + 632);
  v20 = *(v37 + 608);
  v21 = *(v37 + 600);
  v22 = *(v37 + 592);
  v23 = *(v37 + 584);

  v3 = *(*(v37 + 280) + 8);
  v4 = *(v37 + 280);

  return v3(v24);
}

uint64_t GetBloodPressureIntentHandler.handle(intent:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 736);
  *(v6 + 280) = *v1;
  *(v6 + 856) = a1;

  v4 = *(v6 + 280);

  return MEMORY[0x2822009F8](GetBloodPressureIntentHandler.handle(intent:), 0);
}

uint64_t $defer #1 () in GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v47 = a1;
  v42 = 0;
  v65 = 0;
  v64 = 0;
  v37 = 0;
  v38 = type metadata accessor for OSSignpostError();
  v39 = *(v38 - 8);
  v40 = v39;
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](0);
  v41 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for OSSignpostID();
  v44 = *(v43 - 8);
  v45 = v44;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  v53 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v53;
  v48 = type metadata accessor for OSSignposter();
  v49 = *(v48 - 8);
  v51 = v49;
  v50 = v49;
  v6 = *(v49 + 64);
  v7 = MEMORY[0x28223BE20](v47);
  v52 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v9;
  v64 = v10;
  (*(v51 + 16))(v52, v9 + OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter, v7);
  v55 = OSSignposter.logHandle.getter();
  v54 = v55;
  OSSignpostIntervalState.signpostID.getter();
  v56 = static os_signpost_type_t.end.getter();

  v58 = v57;
  if (OS_os_log.signpostsEnabled.getter())
  {
    closure #1 in _globalStringTablePointerOfStaticString(_:)("GBPIHandle", &v63);
    v36 = v63;

    checkForErrorAndConsumeState(state:)();
    if ((*(v40 + 88))(v41, v38) == *MEMORY[0x277D85B00])
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("[Error] Interval already ended", 0x1EuLL, 1);
      v16 = 0;
      v15 = 2375;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v11 = v37;
    (*(v40 + 8))(v41, v38);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v23 = 0;
    v29 = _allocateUninitializedArray<A>(_:)();
    v20 = v29;
    v12 = v54;
    v25 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = v25;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v26 = createStorage<A>(capacity:type:)(v23);
    v24 = v26;
    v27 = createStorage<A>(capacity:type:)(v23);
    v62 = v25;
    v61 = v26;
    v60 = v27;
    v28 = 0;
    v30 = &v62;
    serialize(_:at:)(0, &v62);
    serialize(_:at:)(v28, v30);
    v59 = v29;
    v31 = &v17;
    MEMORY[0x28223BE20](&v17);
    v32 = &v17 - 6;
    *(&v17 - 4) = v13;
    *(&v17 - 3) = &v61;
    v15 = &v60;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v34 = v11;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v21, 2u, v54, v56, v46, v36, "");
      v19 = 0;
    }

    v18 = 0;
    destroyStorage<A>(_:count:)(v24, 0, v22);
    destroyStorage<A>(_:count:)(v27, v18, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v21, MEMORY[0x277D84B78]);

    v35 = v19;
  }

  else
  {
    v35 = v37;
  }

  (*(v45 + 8))(v46, v43, v35);

  return (*(v50 + 8))(v52, v48);
}

void closure #1 in GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v159 = a8;
  v158 = a7;
  v157 = a6;
  v156 = a5;
  v155 = a4;
  v154 = a3;
  v167 = a2;
  v161 = a1;
  v160 = a10;
  v128 = a10;
  v165 = a9;
  v129 = a9;
  v143 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v180 = 0;
  v179 = 0;
  v130 = 0;
  v131 = type metadata accessor for OSSignposter();
  v132 = *(v131 - 8);
  v133 = v132;
  v134 = *(v132 + 64);
  MEMORY[0x28223BE20](0);
  v136 = (v134 + 15) & 0xFFFFFFFFFFFFFFF0;
  v135 = &v54 - v136;
  MEMORY[0x28223BE20](v10);
  v137 = &v54 - v136;
  v138 = type metadata accessor for OSSignpostID();
  v139 = *(v138 - 8);
  v140 = v139;
  v141 = *(v139 + 64);
  MEMORY[0x28223BE20](v138 - 8);
  v142 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR);
  v145 = *(v144 - 8);
  v146 = v145;
  v147 = *(v145 + 64);
  v148 = (v147 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v143);
  v149 = &v54 - v148;
  v150 = type metadata accessor for Date();
  v151 = *(v150 - 8);
  v152 = v151;
  v12 = *(v151 + 64);
  MEMORY[0x28223BE20](v150 - 8);
  v153 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v164 = (v162 + 15) & 0xFFFFFFFFFFFFFFF0;
  v163 = &v54 - v164;
  MEMORY[0x28223BE20](v14);
  v166 = &v54 - v164;
  v191 = v15;
  v190 = v16;
  v189 = v17;
  v188 = v18;
  v187 = v19;
  v186 = v20;
  v185 = v21;
  v184 = v22 + 16;
  v183 = v165;
  v182 = v23;
  v168 = objc_opt_self();
  v169 = [v167 startDate];
  if (v169)
  {
    v127 = v169;
    v126 = v169;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v152 + 32))(v166, v153, v150);
    (*(v152 + 56))(v166, 0, 1, v150);
  }

  else
  {
    (*(v152 + 56))(v166, 1, 1, v150);
  }

  v124 = *(v152 + 48);
  v125 = (v152 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v124(v166, 1, v150) == 1)
  {
    v123 = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v152 + 8))(v166, v150);
    v123 = isa;
  }

  v120 = v123;
  v121 = [v167 endDate];
  if (v121)
  {
    v119 = v121;
    v118 = v121;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v152 + 32))(v163, v153, v150);
    (*(v152 + 56))(v163, 0, 1, v150);
  }

  else
  {
    (*(v152 + 56))(v163, 1, 1, v150);
  }

  if (v124(v163, 1, v150) == 1)
  {
    v117 = 0;
  }

  else
  {
    v116 = Date._bridgeToObjectiveC()().super.isa;
    (*(v152 + 8))(v163, v150);
    v117 = v116;
  }

  v98 = v117;
  v108 = 0;
  type metadata accessor for HKQueryOptions();
  v97 = _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v107 = [v168 predicateForSamplesWithStartDate:v120 endDate:v98 options:v181];
  v99 = v107;

  v180 = v107;
  type metadata accessor for HKCorrelationQuery();
  v24 = v154;
  v25 = v107;
  (*(v146 + 16))(v149, v161, v144);
  v26 = v155;
  (*(v140 + 16))(v142, v156, v138);

  v27 = v158;

  v28 = v129;
  v29 = v128;
  v100 = (*(v146 + 80) + 16) & ~*(v146 + 80);
  v101 = (v100 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = (v101 + *(v140 + 80) + 8) & ~*(v140 + 80);
  v110 = (v102 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v110 + 15) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
  v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
  v109 = swift_allocObject();
  (*(v146 + 32))(v109 + v100, v149, v144);
  v30 = v102;
  v31 = v140;
  v32 = v142;
  v33 = v138;
  v34 = v109;
  *(v109 + v101) = v155;
  (*(v31 + 32))(v34 + v30, v32, v33);
  v35 = v103;
  v36 = v158;
  v37 = v104;
  v38 = v159;
  v39 = v105;
  v40 = v129;
  v41 = v106;
  v42 = v128;
  v43 = v107;
  v44 = v108;
  v45 = v109;
  v46 = v154;
  *(v109 + v110) = v157;
  *(v45 + v35) = v36;
  *(v45 + v37) = v38;
  *(v45 + v39) = v40;
  *(v45 + v41) = v42;
  v111 = HKCorrelationQuery.__allocating_init(type:predicate:samplePredicates:completion:)(v46, v43, v44, partial apply for closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:), v45);
  v179 = v111;
  v112 = *(v133 + 16);
  v113 = (v133 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112(v137, &v155[OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter], v131);
  v114 = OSSignposter.logHandle.getter();
  v115 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v47 = v130;
    closure #1 in _globalStringTablePointerOfStaticString(_:)("Query initialized", v174);
    v80 = v174[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v84 = 0;
    v90 = _allocateUninitializedArray<A>(_:)();
    v81 = v90;
    v48 = v114;
    v86 = static UnsafeMutablePointer.allocate(capacity:)();
    v82 = v86;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v87 = createStorage<A>(capacity:type:)(v84);
    v85 = v87;
    v88 = createStorage<A>(capacity:type:)(v84);
    v173 = v86;
    v172 = v87;
    v171 = v88;
    v89 = 0;
    v91 = &v173;
    serialize(_:at:)(0, &v173);
    serialize(_:at:)(v89, v91);
    v170 = v90;
    v92 = &v54;
    MEMORY[0x28223BE20](&v54);
    v93 = &v54 - 6;
    *(&v54 - 4) = v49;
    *(&v54 - 3) = &v172;
    *(&v54 - 2) = &v171;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v95 = v47;
    if (v47)
    {
      __break(1u);
    }

    else
    {
      closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v82, 2u, v114, v115, v156, v80, "");
      v79 = 0;
    }

    v78 = 0;
    destroyStorage<A>(_:count:)(v85, 0, v83);
    destroyStorage<A>(_:count:)(v88, v78, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v82, MEMORY[0x277D84B78]);

    v96 = v79;
  }

  else
  {
    v96 = v130;
  }

  v50 = v135;
  v73 = v96;

  v74 = *(v133 + 8);
  v75 = (v133 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v74(v137, v131);
  [v128 executeQuery_];
  v112(v50, &v155[OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter], v131);
  v76 = OSSignposter.logHandle.getter();
  v77 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v51 = v73;
    closure #1 in _globalStringTablePointerOfStaticString(_:)("Query execution complete", &v178);
    v56 = v178;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v60 = 0;
    v66 = _allocateUninitializedArray<A>(_:)();
    v57 = v66;
    v52 = v76;
    v62 = static UnsafeMutablePointer.allocate(capacity:)();
    v58 = v62;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v63 = createStorage<A>(capacity:type:)(v60);
    v61 = v63;
    v64 = createStorage<A>(capacity:type:)(v60);
    v177 = v62;
    v176 = v63;
    v175 = v64;
    v65 = 0;
    v67 = &v177;
    serialize(_:at:)(0, &v177);
    serialize(_:at:)(v65, v67);
    v174[2] = v66;
    v68 = &v54;
    MEMORY[0x28223BE20](&v54);
    v69 = &v54 - 6;
    *(&v54 - 4) = v53;
    *(&v54 - 3) = &v176;
    *(&v54 - 2) = &v175;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v71 = v51;
    if (v51)
    {
      __break(1u);
    }

    else
    {
      closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v58, 2u, v76, v77, v156, v56, "");
      v55 = 0;
    }

    v54 = 0;
    destroyStorage<A>(_:count:)(v61, 0, v59);
    destroyStorage<A>(_:count:)(v64, v54, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v58, MEMORY[0x277D84B78]);

    v72 = v55;
  }

  else
  {
    v72 = v73;
  }

  v74(v135, v131);
}

void closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11)
{
  v209 = a8;
  v208 = a7;
  v207 = a6;
  v206 = a5;
  v205 = a4;
  v222 = a3;
  v211 = a2;
  v217 = a1;
  v210 = a11;
  v189 = a11;
  v219 = a10;
  v190 = a10;
  v218 = a9;
  v200 = 0;
  v261 = 0;
  v260 = 0;
  v259 = 0;
  v258 = 0;
  v257 = 0;
  v256 = 0;
  v255 = 0;
  v254 = 0;
  v253 = 0;
  v252 = 0;
  v251 = 0;
  v191 = 0;
  v245 = 0;
  v229 = 0;
  v192 = type metadata accessor for Date();
  v193 = *(v192 - 8);
  v194 = v193;
  v11 = *(v193 + 64);
  MEMORY[0x28223BE20](v192 - 8);
  v195 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  MEMORY[0x28223BE20](v200);
  v198 = (v196 + 15) & 0xFFFFFFFFFFFFFFF0;
  v197 = &v62 - v198;
  MEMORY[0x28223BE20](v13);
  v199 = &v62 - v198;
  v201 = type metadata accessor for OSSignposter();
  v202 = *(v201 - 8);
  v203 = v202;
  v14 = *(v202 + 64);
  MEMORY[0x28223BE20](v200);
  v204 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for Logger();
  v213 = *(v212 - 8);
  v214 = v213;
  v215 = *(v213 + 64);
  MEMORY[0x28223BE20](v222);
  v216 = &v62 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v220 = &v62 - v17;
  v261 = v217;
  v260 = v18;
  v259 = v19;
  v258 = v20;
  v257 = v21;
  v256 = v22;
  v255 = v23;
  v254 = v24;
  v221 = (v218 + 16);
  v253 = v218 + 16;
  v252 = v219;
  v251 = v25;
  v26 = v19;
  if (v222)
  {
    v188 = v222;
    v27 = v220;
    v167 = v222;
    v229 = v222;
    v165 = Logger.wellness.unsafeMutableAddressor();
    v170 = 32;
    v174 = 32;
    v166 = &v228;
    swift_beginAccess();
    (*(v214 + 16))(v27, v165, v212);
    swift_endAccess();
    v28 = v167;
    v175 = 7;
    v176 = swift_allocObject();
    *(v176 + 16) = v167;
    v186 = Logger.logObject.getter();
    v168 = v186;
    v185 = static os_log_type_t.error.getter();
    v169 = v185;
    v171 = 17;
    v179 = swift_allocObject();
    v172 = v179;
    *(v179 + 16) = v170;
    v180 = swift_allocObject();
    v173 = v180;
    *(v180 + 16) = 8;
    v29 = swift_allocObject();
    v30 = v176;
    v177 = v29;
    *(v29 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:);
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v177;
    v183 = v31;
    v178 = v31;
    *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v31 + 24) = v32;
    v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v181 = _allocateUninitializedArray<A>(_:)();
    v182 = v33;

    v34 = v179;
    v35 = v182;
    *v182 = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[1] = v34;

    v36 = v180;
    v37 = v182;
    v182[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v37[3] = v36;

    v38 = v182;
    v39 = v183;
    v182[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[5] = v39;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v186, v185))
    {
      v41 = v191;
      v158 = static UnsafeMutablePointer.allocate(capacity:)();
      v155 = v158;
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v159 = createStorage<A>(capacity:type:)(0);
      v157 = v159;
      v161 = 1;
      v160 = createStorage<A>(capacity:type:)(1);
      v227[0] = v158;
      v226 = v159;
      v225 = v160;
      v162 = v227;
      serialize(_:at:)(2, v227);
      serialize(_:at:)(v161, v162);
      v223 = partial apply for closure #1 in OSLogArguments.append(_:);
      v224 = v172;
      closure #1 in osLogInternal(_:log:type:)(&v223, v162, &v226, &v225);
      v163 = v41;
      v164 = v41;
      if (v41)
      {
        v153 = 0;

        __break(1u);
      }

      else
      {
        v223 = partial apply for closure #1 in OSLogArguments.append(_:);
        v224 = v173;
        closure #1 in osLogInternal(_:log:type:)(&v223, v227, &v226, &v225);
        v151 = 0;
        v152 = 0;
        v223 = partial apply for closure #1 in OSLogArguments.append(_:);
        v224 = v178;
        closure #1 in osLogInternal(_:log:type:)(&v223, v227, &v226, &v225);
        v149 = 0;
        v150 = 0;
        _os_log_impl(&dword_269912000, v168, v169, "Query Errored out: %s", v155, 0xCu);
        destroyStorage<A>(_:count:)(v157, 0, v156);
        destroyStorage<A>(_:count:)(v160, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v155, MEMORY[0x277D84B78]);

        v154 = v149;
      }
    }

    else
    {
      v42 = v191;

      v154 = v42;
    }

    v148 = v154;

    (*(v214 + 8))(v220, v212);
    v147 = 0;
    type metadata accessor for GetBloodPressureIntentResponse();
    v227[1] = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, v147);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR);
    CheckedContinuation.resume(returning:)();

    v187 = v148;
  }

  else
  {
    v187 = v191;
  }

  v146 = v187;

  if (!v211)
  {
LABEL_35:
    v59 = v216;
    v79 = Logger.wellness.unsafeMutableAddressor();
    v80 = &v250;
    v83 = 0;
    swift_beginAccess();
    (*(v214 + 16))(v59, v79, v212);
    swift_endAccess();
    v85 = Logger.logObject.getter();
    v81 = v85;
    v84 = static os_log_type_t.debug.getter();
    v82 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v86 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v85, v84))
    {
      v60 = v146;
      v70 = static UnsafeMutablePointer.allocate(capacity:)();
      v66 = v70;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v68 = 0;
      v71 = createStorage<A>(capacity:type:)(0);
      v69 = v71;
      v72 = createStorage<A>(capacity:type:)(v68);
      v249[0] = v70;
      v248 = v71;
      v247 = v72;
      v73 = 0;
      v74 = v249;
      serialize(_:at:)(0, v249);
      serialize(_:at:)(v73, v74);
      v246 = v86;
      v75 = &v62;
      MEMORY[0x28223BE20](&v62);
      v76 = &v62 - 6;
      *(&v62 - 4) = v61;
      *(&v62 - 3) = &v248;
      *(&v62 - 2) = &v247;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v78 = v60;
      if (v60)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v81, v82, "No data returned", v66, 2u);
        v64 = 0;
        destroyStorage<A>(_:count:)(v69, 0, v67);
        destroyStorage<A>(_:count:)(v72, v64, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v66, MEMORY[0x277D84B78]);

        v65 = v78;
      }
    }

    else
    {

      v65 = v146;
    }

    v63 = v65;

    (*(v214 + 8))(v216, v212);
    v62 = 0;
    type metadata accessor for GetBloodPressureIntentResponse();
    v249[1] = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    v97 = v63;
    return;
  }

  v145 = v211;
  v142 = v211;
  v245 = v211;
  v244 = v211;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13HKCorrelationCGMd, &_sSaySo13HKCorrelationCGMR);
  v143 = v144;
  lazy protocol witness table accessor for type [HKCorrelation] and conformance [A]();
  v43 = Collection.isEmpty.getter();
  if (v43)
  {

    goto LABEL_35;
  }

  (*(v203 + 16))(v204, v206 + OBJC_IVAR____TtC19SiriWellnessIntents29GetBloodPressureIntentHandler_signposter, v201);
  v140 = OSSignposter.logHandle.getter();
  v141 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v44 = v146;
    closure #1 in _globalStringTablePointerOfStaticString(_:)("correlation operations begin", v234);
    v123 = v234[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v127 = 0;
    v133 = _allocateUninitializedArray<A>(_:)();
    v124 = v133;
    v45 = v140;
    v129 = static UnsafeMutablePointer.allocate(capacity:)();
    v125 = v129;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v130 = createStorage<A>(capacity:type:)(v127);
    v128 = v130;
    v131 = createStorage<A>(capacity:type:)(v127);
    v233 = v129;
    v232 = v130;
    v231 = v131;
    v132 = 0;
    v134 = &v233;
    serialize(_:at:)(0, &v233);
    serialize(_:at:)(v132, v134);
    v230 = v133;
    v135 = &v62;
    MEMORY[0x28223BE20](&v62);
    v136 = &v62 - 6;
    *(&v62 - 4) = v46;
    *(&v62 - 3) = &v232;
    *(&v62 - 2) = &v231;
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v138 = v44;
    if (v44)
    {
      __break(1u);
    }

    else
    {
      closure #1 in osSignpostWithoutMessage(log:name:id:type:state:formatString:)(v125, 2u, v140, v141, v207, v123, "");
      v122 = 0;
    }

    v121 = 0;
    destroyStorage<A>(_:count:)(v128, 0, v126);
    destroyStorage<A>(_:count:)(v131, v121, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v125, MEMORY[0x277D84B78]);

    v139 = v122;
  }

  else
  {
    v139 = v146;
  }

  v47 = v139;

  (*(v203 + 8))(v204, v201);
  v243 = v142;

  v48 = v209;
  v49 = v190;
  v118 = &v62;
  MEMORY[0x28223BE20](&v62);
  v50 = v209;
  v51 = v221;
  v119 = &v62 - 6;
  *(&v62 - 4) = v52;
  *(&v62 - 3) = v50;
  *(&v62 - 2) = v51;
  *(&v62 - 1) = v53;
  lazy protocol witness table accessor for type [HKCorrelation] and conformance [A]();
  Sequence.forEach(_:)();
  v120 = v47;
  if (v47)
  {

    __break(1u);
  }

  else
  {

    v115 = &v242;
    swift_beginAccess();
    v114 = *v221;
    v54 = v114;
    swift_endAccess();
    v241 = v142;
    v116 = lazy protocol witness table accessor for type [HKCorrelation] and conformance [A]();
    BidirectionalCollection.last.getter();
    v117 = v240;
    if (v240)
    {
      v113 = v117;
      v111 = v117;
      v112 = [v117 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v194 + 32))(v199, v195, v192);

      (*(v194 + 56))(v199, 0, 1, v192);
    }

    else
    {
      (*(v194 + 56))(v199, 1, 1, v192);
    }

    v109 = *(v194 + 48);
    v110 = (v194 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v109(v199, 1, v192) == 1)
    {
      v108 = 0;
    }

    else
    {
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v194 + 8))(v199, v192);
      v108 = isa;
    }

    v103 = v108;
    [v114 setSampleStartDate_];

    v105 = &v239;
    swift_beginAccess();
    v104 = *v221;
    v55 = v104;
    swift_endAccess();
    v238 = v142;
    BidirectionalCollection.last.getter();
    v106 = v237;
    if (v237)
    {
      v102 = v106;
      v100 = v106;
      v101 = [v106 endDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v194 + 32))(v197, v195, v192);

      (*(v194 + 56))(v197, 0, 1, v192);
    }

    else
    {
      (*(v194 + 56))(v197, 1, 1, v192);
    }

    if (v109(v197, 1, v192) == 1)
    {
      v99 = 0;
    }

    else
    {
      v98 = Date._bridgeToObjectiveC()().super.isa;
      (*(v194 + 8))(v197, v192);
      v99 = v98;
    }

    v87 = v99;
    [v104 setSampleEndDate_];

    v93 = 32;
    v88 = &v236;
    v94 = 0;
    swift_beginAccess();
    v92 = *v221;
    v56 = v92;
    swift_endAccess();
    v89.super.isa = [objc_opt_self() millimeterOfMercuryUnit];
    v57 = v189;
    v262.is_nil = v189;
    v263.is_nil = 0;
    v262.value.super.isa = 0;
    v90 = localizedUnitName(for:value:store:)(v89, v263, v262);

    v91 = MEMORY[0x26D6492A0](v90._countAndFlagsBits, v90._object);

    [v92 setUnit_];

    v95 = &v235;
    swift_beginAccess();
    v96 = *v221;
    v58 = v96;
    swift_endAccess();
    v234[1] = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR);
    CheckedContinuation.resume(returning:)();

    v97 = v120;
  }
}

uint64_t closure #1 in closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;

  KeyPath = swift_getKeyPath();
  v8 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  swift_beginAccess();
  conjugate<A>(for:units:target:minKey:maxKey:valueKey:accumulator:)(v10, a2, a3, KeyPath, v8, v7, a4);
  swift_endAccess();

  v15 = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  swift_beginAccess();
  conjugate<A>(for:units:target:minKey:maxKey:valueKey:accumulator:)(v10, a2, a5, v15, v14, v13, a4);
  swift_endAccess();
}

uint64_t key path getter for GetBloodPressureIntentResponse.systolicMinimum : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 systolicMinimum];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.systolicMinimum : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setSystolicMinimum_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path getter for GetBloodPressureIntentResponse.systolicMaximum : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 systolicMaximum];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.systolicMaximum : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setSystolicMaximum_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path getter for GetBloodPressureIntentResponse.systolic : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 systolic];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.systolic : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setSystolic_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path getter for GetBloodPressureIntentResponse.diastolicMinimum : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 diastolicMinimum];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.diastolicMinimum : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setDiastolicMinimum_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path getter for GetBloodPressureIntentResponse.diastolicMaximum : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 diastolicMaximum];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.diastolicMaximum : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setDiastolicMaximum_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path getter for GetBloodPressureIntentResponse.diastolic : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  [v4 diastolic];
  *a2 = v2;
  return MEMORY[0x277D82BD8](v4);
}

uint64_t key path setter for GetBloodPressureIntentResponse.diastolic : GetBloodPressureIntentResponse(double *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  [v3 setDiastolic_];
  return MEMORY[0x277D82BD8](v3);
}

uint64_t @objc closure #1 in GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return GetBloodPressureIntentHandler.handle(intent:)(a1);
}

id GetBloodPressureIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id @nonobjc HKCorrelationQuery.init(type:predicate:samplePredicates:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    type metadata accessor for HKSampleType();
    type metadata accessor for NSPredicate();
    lazy protocol witness table accessor for type HKSampleType and conformance NSObject();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = isa;
  }

  else
  {
    v9 = 0;
  }

  v20 = a4;
  v21 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = 0;
  v18 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKCorrelationQuery, @guaranteed [HKCorrelation]?, @guaranteed Error?) -> ();
  v19 = &block_descriptor_68;
  v6 = _Block_copy(&aBlock);
  v7 = [v14 initWithType:a1 predicate:a2 samplePredicates:v9 completion:?];
  _Block_release(v6);

  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v7;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKCorrelationQuery, @guaranteed [HKCorrelation]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKCorrelation();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a3);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v9(a2, v7);

  MEMORY[0x277D82BD8](a2);
}

uint64_t closure #1 in _globalStringTablePointerOfStaticString(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  *a2 = v2;
  return result;
}

unint64_t type metadata accessor for HKCorrelationType()
{
  v2 = lazy cache variable for type metadata for HKCorrelationType;
  if (!lazy cache variable for type metadata for HKCorrelationType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCorrelationType);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269A1C1CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A1C20C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A1C2A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A1C2E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A1C37C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A1C3BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A1C3FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A1C43C()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetBloodPressureIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in GetBloodPressureIntentHandler.handle(intent:)(v7, v5, v6);
}

uint64_t type metadata accessor for GetBloodPressureIntentHandler()
{
  v1 = type metadata singleton initialization cache for GetBloodPressureIntentHandler;
  if (!type metadata singleton initialization cache for GetBloodPressureIntentHandler)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for GetBloodPressureIntentHandler()
{
  v2 = type metadata accessor for OSSignposter();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t type metadata accessor for HKCorrelationQuery()
{
  v2 = lazy cache variable for type metadata for HKCorrelationQuery;
  if (!lazy cache variable for type metadata for HKCorrelationQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCorrelationQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_269A1C75C()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR);
  v6 = *(v5 - 8);
  v4 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v7 = (v4 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for OSSignpostID();
  v8 = *(v10 - 8);
  v9 = (v7 + 8 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = (v9 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v6 + 8))(v0 + v4, v5);
  MEMORY[0x277D82BD8](*(v0 + v7));
  (*(v8 + 8))(v0 + v9, v10);
  v1 = *(v0 + v11);

  MEMORY[0x277D82BD8](*(v0 + v12));
  v2 = *(v0 + v13);

  MEMORY[0x277D82BD8](*(v0 + v14));
  MEMORY[0x277D82BD8](*(v0 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)));
  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:)(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMd, _sScCy19SiriWellnessIntents30GetBloodPressureIntentResponseCs5Error_pGMR) - 8);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v9 = (v11 + *(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for OSSignpostID();
  v5 = (v9 + 8 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = (v5 + *(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in closure #1 in GetBloodPressureIntentHandler.handle(intent:)(a1, a2, a3, v3 + v11, *(v3 + v9), v3 + v5, *(v3 + v6), *(v3 + v7), *(v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t type metadata accessor for HKSampleType()
{
  v2 = lazy cache variable for type metadata for HKSampleType;
  if (!lazy cache variable for type metadata for HKSampleType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSampleType);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSPredicate()
{
  v2 = lazy cache variable for type metadata for NSPredicate;
  if (!lazy cache variable for type metadata for NSPredicate)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSPredicate);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKSampleType and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKSampleType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKSampleType and conformance NSObject)
  {
    type metadata accessor for HKSampleType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSampleType and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269A1CF04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A1CF44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t HealthKitCategoryProvider.init(store:identifier:categoryEnum:failure:mapIntent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  memset(__b, 0, 0x30uLL);
  __b[7] = a7;
  __b[6] = a9;
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  __b[1] = a1;
  type metadata accessor for HKCategoryType();
  MEMORY[0x277D82BE0](a2);
  v12 = MEMORY[0x26D649700](a2);
  MEMORY[0x277D82BE0](v12);
  __b[0] = v12;

  __b[2] = a3;
  __b[3] = a4;

  __b[4] = a5;
  __b[5] = a6;

  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  outlined destroy of HealthKitCategoryProvider<A, B>(__b);
  result = a1;
  *a8 = v12;
  a8[1] = a1;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  return result;
}

unint64_t type metadata accessor for HKCategoryType()
{
  v2 = lazy cache variable for type metadata for HKCategoryType;
  if (!lazy cache variable for type metadata for HKCategoryType)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCategoryType);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined destroy of HealthKitCategoryProvider<A, B>(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  v1 = a1[3];

  v2 = a1[5];

  return a1;
}

uint64_t HealthKitCategoryProvider.isQueryAuthorized()()
{
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  v5 = *(v0 + 8);
  v1[4] = v5;
  MEMORY[0x277D82BE0](v5);
  v2 = swift_task_alloc();
  *(v4 + 40) = v2;
  *v2 = *(v4 + 16);
  v2[1] = CycleTrackingFetcher.isReadingAuthorized();

  return isSiriAuthorizedToAccessHealthData(store:)(v5);
}

uint64_t HealthKitCategoryProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5[8] = v4;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v24 = a4[3];
  v5[9] = v24;
  v5[10] = type metadata accessor for Date();
  v5[11] = swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for Optional();
  v5[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v8 = a4[2];
  v5[14] = v8;
  v16 = *(v8 - 8);
  v5[15] = v16;
  v9 = *(v16 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Optional();
  v5[18] = v10;
  v17 = *(*(v10 - 8) + 64);
  v5[19] = swift_task_alloc();
  v25 = swift_task_alloc();
  v5[20] = v25;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = v4;
  v11 = *(v4 + 8);
  v5[21] = v11;
  MEMORY[0x277D82BE0](v11);
  v12 = *v18;
  v21 = *v18;
  v5[22] = *v18;
  MEMORY[0x277D82BE0](v12);
  v13 = swift_task_alloc();
  *(v20 + 184) = v13;
  v14 = a4[4];
  *v13 = *(v20 + 16);
  v13[1] = HealthKitCategoryProvider.query(start:end:);

  return HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(v25, v21, a2, a3, v24, v24, v14);
}

uint64_t HealthKitCategoryProvider.query(start:end:)()
{
  v8 = *v1;
  v2 = *(*v1 + 184);
  *(v8 + 16) = *v1;
  v9 = (v8 + 16);
  *(v8 + 192) = v0;

  if (v0)
  {
    v5 = *v9;
    v4 = HealthKitCategoryProvider.query(start:end:);
  }

  else
  {
    v7 = *(v8 + 168);

    v3 = *v9;
    v4 = HealthKitCategoryProvider.query(start:end:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v31 = v0[20];
  v35 = v0[19];
  v33 = v0[18];
  v34 = v0[17];
  v32 = v0[9];
  v1 = v0[8];
  v0[2] = v0;
  v29 = *(v1 + 32);
  v30 = *(v1 + 40);

  outlined init with copy of (value: B, startDate: Date)?(v31, v35, v32, v34, v33);
  if ((*(*(v34 - 8) + 48))(v35, 1) == 1)
  {
    v6 = v28[18];
    v8 = v28[13];
    v7 = v28[11];
    outlined destroy of (value: B, startDate: Date)?(v28[19], v28[9], v28[17]);
    (*(*(v7 - 8) + 56))(v8, 1);
  }

  else
  {
    v27 = v28[13];
    v26 = v28[11];
    v24 = v28[10];
    v23 = v28[19] + *(v28[17] + 48);
    v25 = v27 + *(v26 + 48);
    (*(*(v28[9] - 8) + 32))();
    (*(*(v24 - 8) + 32))(v25, v23);
    (*(*(v26 - 8) + 56))(v27, 0, 1);
  }

  v16 = v28[20];
  v19 = v28[18];
  v18 = v28[17];
  v15 = v28[16];
  v14 = v28[14];
  v9 = v28[13];
  v11 = v28[12];
  v10 = v28[11];
  v17 = v28[9];
  v13 = v28[7];
  v12 = v28[15];
  v29();
  outlined destroy of (value: B, startDate: Date)?(v9, v17, v10);

  (*(v12 + 16))(v13, v15, v14);
  (*(v12 + 8))(v15, v14);
  outlined destroy of (value: B, startDate: Date)?(v16, v17, v18);
  v2 = v28[20];
  v20 = v28[19];
  v21 = v28[16];
  v22 = v28[13];

  v3 = *(v28[2] + 8);
  v4 = v28[2];

  return v3();
}

{
  v13 = v0[24];
  v1 = v0[22];
  v9 = v0[21];
  v10 = v0[8];
  v11 = v0[7];
  v0[2] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v9);
  v2 = v13;
  v0[6] = v13;
  v12 = *(v10 + 16);
  v3 = *(v10 + 24);

  v12(v4);

  v5 = v0[20];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[13];

  v6 = *(v0[2] + 8);
  v7 = v0[2];

  return v6();
}

char *outlined init with copy of (value: B, startDate: Date)?(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *(a4 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a5 - 8) + 64));
  }

  else
  {
    (*(*(a3 - 8) + 16))(a2, a1);
    v8 = &a2[*(a4 + 48)];
    v7 = &a1[*(a4 + 48)];
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 16))(v8, v7);
    (*(v14 + 56))(a2, 0, 1, a4);
  }

  return a2;
}

uint64_t outlined destroy of (value: B, startDate: Date)?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(*(a3 - 8) + 48))(a1, 1))
  {
    (*(*(a2 - 8) + 8))(a1);
    v5 = a1 + *(a3 + 48);
    v3 = type metadata accessor for Date();
    (*(*(v3 - 8) + 8))(v5);
  }

  return a1;
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitCategoryProvider<A, B>()
{
  *(v1 + 64) = v1;
  memcpy((v1 + 16), v0, 0x30uLL);
  v2 = swift_task_alloc();
  *(v4 + 72) = v2;
  *v2 = *(v4 + 64);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>;

  return HealthKitCategoryProvider.isQueryAuthorized()();
}

uint64_t protocol witness for DataProviding.isLoggingAuthorized() in conformance HealthKitCategoryProvider<A, B>()
{
  *(v1 + 64) = v1;
  memcpy((v1 + 16), v0, 0x30uLL);
  v2 = swift_task_alloc();
  *(v4 + 72) = v2;
  *v2 = *(v4 + 64);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitDistanceProvider<A>;

  return HealthKitCategoryProvider.isQueryAuthorized()();
}

uint64_t type metadata instantiation function for HealthKitCategoryProvider(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

SiriWellnessIntents::WellnessVerb_optional __swiftcall WellnessVerb.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "askQuestion";
  *(v2 + 8) = 11;
  *(v2 + 16) = 2;
  *(v2 + 24) = "delete";
  *(v2 + 32) = 6;
  *(v2 + 40) = 2;
  *(v2 + 48) = "save";
  *(v2 + 56) = 4;
  *(v2 + 64) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessVerb_askQuestion;
LABEL_8:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessVerb_delete;
      goto LABEL_8;
    case 2:
      v5.value = SiriWellnessIntents_WellnessVerb_save;
      goto LABEL_8;
  }

  return 3;
}

uint64_t static WellnessVerb.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

uint64_t WellnessVerb.rawValue.getter(char a1)
{
  if (!a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("askQuestion", 0xBuLL, 1)._countAndFlagsBits;
  }

  if (a1 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("delete", 6uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("save", 4uLL, 1)._countAndFlagsBits;
  }
}

unint64_t lazy protocol witness table accessor for type WellnessVerb and conformance WellnessVerb()
{
  v2 = lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb;
  if (!lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb;
  if (!lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type WellnessVerb and conformance WellnessVerb);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessVerb_optional protocol witness for RawRepresentable.init(rawValue:) in conformance WellnessVerb@<W0>(Swift::String *a1@<X0>, SiriWellnessIntents::WellnessVerb_optional *a2@<X8>)
{
  result.value = WellnessVerb.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WellnessVerb@<X0>(uint64_t *a1@<X8>)
{
  result = WellnessVerb.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [WellnessVerb] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [WellnessVerb] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WellnessVerb] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriWellnessIntents0B4VerbOGMd, &_sSay19SiriWellnessIntents0B4VerbOGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [WellnessVerb] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance WellnessVerb@<X0>(uint64_t *a1@<X8>)
{
  result = static WellnessVerb.allCases.getter();
  *a1 = result;
  return result;
}

id DeleteHealthSampleIntentHandler.init(storage:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2.store.super.isa = CycleTrackingFetcher.init()().store.super.isa;
    __dst[3] = &type metadata for HealthSampleDeleter;
    __dst[4] = &protocol witness table for HealthSampleDeleter;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents31DeleteHealthSampleIntentHandler_storage]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

uint64_t DeleteHealthSampleIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[18] = v1;
  v2[17] = a1;
  v2[10] = v2;
  v2[11] = 0;
  v2[12] = 0;
  v3 = type metadata accessor for Logger();
  v2[19] = v3;
  v9 = *(v3 - 8);
  v2[20] = v9;
  v4 = *(v9 + 64) + 15;
  v2[21] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[23] = v6;
  v10 = *(v6 - 8);
  v2[24] = v10;
  v11 = *(v10 + 64);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[11] = a1;
  v2[12] = v1;
  v7 = v2[10];

  return MEMORY[0x2822009F8](DeleteHealthSampleIntentHandler.handle(intent:), 0);
}

{
  v6 = *v1;
  v3 = *(*v1 + 216);
  *(v6 + 80) = *v1;
  *(v6 + 224) = a1;

  v4 = *(v6 + 80);

  return MEMORY[0x2822009F8](DeleteHealthSampleIntentHandler.handle(intent:), 0);
}

uint64_t DeleteHealthSampleIntentHandler.handle(intent:)()
{
  v1 = *(v0 + 136);
  *(v0 + 80) = v0;
  v37 = [v1 sampleIdentifier];
  if (v37)
  {
    v33 = *(v36 + 200);
    v34 = *(v36 + 184);
    v35 = *(v36 + 176);
    v32 = *(v36 + 192);
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v32 + 32))(v35, v33, v34);
    (*(v32 + 56))(v35, 0, 1, v34);
    MEMORY[0x277D82BD8](v37);
  }

  else
  {
    (*(*(v36 + 192) + 56))(*(v36 + 176), 1, 1, *(v36 + 184));
  }

  if ((*(*(v36 + 192) + 48))(*(v36 + 176), 1, *(v36 + 184)) == 1)
  {
    v6 = *(v36 + 168);
    v24 = *(v36 + 152);
    v22 = *(v36 + 160);
    outlined destroy of UUID?(*(v36 + 176));
    v23 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v22 + 16))(v6, v23, v24);
    swift_endAccess();
    v26 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v27 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v26, v25))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = createStorage<A>(capacity:type:)(0);
      v20 = createStorage<A>(capacity:type:)(0);
      *(v36 + 104) = buf;
      *(v36 + 112) = v19;
      *(v36 + 120) = v20;
      serialize(_:at:)(0, (v36 + 104));
      serialize(_:at:)(0, (v36 + 104));
      *(v36 + 128) = v27;
      v21 = swift_task_alloc();
      v21[2] = v36 + 104;
      v21[3] = v36 + 112;
      v21[4] = v36 + 120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v26, v25, "Missing sampleIdentifier. Aborting delete.", buf, 2u);
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v11 = *(v36 + 168);
    v12 = *(v36 + 152);
    v10 = *(v36 + 160);
    MEMORY[0x277D82BD8](v26);
    (*(v10 + 8))(v11, v12);
    type metadata accessor for DeleteHealthSampleIntentResponse();
    v16 = DeleteHealthSampleIntentResponse.__allocating_init(code:userActivity:)(5, 0);
    v7 = *(v36 + 208);
    v13 = *(v36 + 200);
    v14 = *(v36 + 176);
    v15 = *(v36 + 168);

    v8 = *(*(v36 + 80) + 8);
    v9 = *(v36 + 80);

    return v8(v16);
  }

  else
  {
    v28 = *(v36 + 144);
    (*(*(v36 + 192) + 32))(*(v36 + 208), *(v36 + 176), *(v36 + 184));
    outlined init with copy of QuantityPersisting(v28 + OBJC_IVAR____TtC19SiriWellnessIntents31DeleteHealthSampleIntentHandler_storage, v36 + 16);
    v29 = *(v36 + 40);
    v30 = *(v36 + 48);
    __swift_project_boxed_opaque_existential_1((v36 + 16), v29);
    v31 = (*(v30 + 8) + **(v30 + 8));
    v2 = *(*(v30 + 8) + 4);
    v3 = swift_task_alloc();
    *(v36 + 216) = v3;
    *v3 = *(v36 + 80);
    v3[1] = DeleteHealthSampleIntentHandler.handle(intent:);
    v4 = *(v36 + 208);

    return v31(v4, v29, v30);
  }
}

{
  v6 = v0[26];
  v5 = v0[24];
  v7 = v0[23];
  v0[10] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  (*(v5 + 8))(v6, v7);
  v11 = v0[28];
  v1 = v0[26];
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[21];

  v2 = *(v0[10] + 8);
  v3 = v0[10];

  return v2(v11);
}

uint64_t @objc closure #1 in DeleteHealthSampleIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return DeleteHealthSampleIntentHandler.handle(intent:)(a1);
}

id DeleteHealthSampleIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthSampleDeleter.delete(sampleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2[45] = a2;
  v2[44] = a1;
  v2[30] = v2;
  v2[31] = 0;
  v2[32] = 0;
  v2[34] = 0;
  v2[35] = 0;
  v3 = type metadata accessor for UUID();
  v2[46] = v3;
  v7 = *(v3 - 8);
  v2[47] = v7;
  v2[48] = *(v7 + 64);
  v2[49] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[50] = v4;
  v8 = *(v4 - 8);
  v2[51] = v8;
  v9 = *(v8 + 64);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[31] = a1;
  v2[32] = a2;
  v5 = v2[30];

  return MEMORY[0x2822009F8](HealthSampleDeleter.delete(sampleIdentifier:), 0);
}

uint64_t HealthSampleDeleter.delete(sampleIdentifier:)()
{
  v58 = v0;
  v1 = v0[55];
  v33 = v0[51];
  v35 = v0[50];
  v42 = v0[49];
  v39 = v0[48];
  v40 = v0[47];
  v43 = v0[46];
  v37 = v0[44];
  v0[30] = v0;
  v34 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v36 = *(v33 + 16);
  v0[56] = v36;
  v0[57] = (v33 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v36(v1, v34, v35);
  swift_endAccess();
  v38 = *(v40 + 16);
  v38(v42, v37, v43);
  v41 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v44 = swift_allocObject();
  (*(v40 + 32))(v44 + v41, v42, v43);

  v45 = swift_allocObject();
  *(v45 + 16) = partial apply for implicit closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  *(v45 + 24) = v44;

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v47 = swift_allocObject();
  *(v47 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v46 = swift_allocObject();
  *(v46 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v46 + 24) = v45;
  v49 = swift_allocObject();
  *(v49 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v49 + 24) = v46;
  v0[58] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v50 = v2;

  *v50 = partial apply for closure #1 in OSLogArguments.append(_:);
  v50[1] = v47;

  v50[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v50[3] = v48;

  v50[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v50[5] = v49;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v51, v52))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v30 = createStorage<A>(capacity:type:)(0);
    v31 = createStorage<A>(capacity:type:)(1);
    v53 = buf;
    v54 = v30;
    v55 = v31;
    serialize(_:at:)(2, &v53);
    serialize(_:at:)(1, &v53);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v47;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v48;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v49;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    _os_log_impl(&dword_269912000, v51, v52, "Starting to delete health sample with UUID: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v30, 0, v28);
    destroyStorage<A>(_:count:)(v31, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v20 = *(v32 + 440);
  v3 = *(v32 + 432);
  v23 = *(v32 + 400);
  v19 = *(v32 + 408);
  MEMORY[0x277D82BD8](v51);
  v21 = *(v19 + 8);
  *(v32 + 472) = v21;
  *(v32 + 480) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v20, v23);
  v22 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v36(v3, v22, v23);
  swift_endAccess();
  oslog = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v26 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v24))
  {
    v15 = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0);
    v17 = createStorage<A>(capacity:type:)(0);
    *(v32 + 320) = v15;
    *(v32 + 328) = v16;
    *(v32 + 336) = v17;
    serialize(_:at:)(0, (v32 + 320));
    serialize(_:at:)(0, (v32 + 320));
    *(v32 + 344) = v26;
    v18 = swift_task_alloc();
    v18[2] = v32 + 320;
    v18[3] = v32 + 328;
    v18[4] = v32 + 336;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, oslog, v24, "Asking store to delete", v15, 2u);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v15, MEMORY[0x277D84B78]);
  }

  *(v32 + 488) = 0;
  v6 = *(v32 + 432);
  v7 = *(v32 + 400);
  v9 = *(v32 + 368);
  v13 = *(v32 + 360);
  v8 = *(v32 + 352);
  MEMORY[0x277D82BD8](oslog);
  v21(v6, v7);
  MEMORY[0x277D82BE0](v13);
  _allocateUninitializedArray<A>(_:)();
  v38(v4, v8, v9);
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v32 + 496) = isa;

  type metadata accessor for HKDeleteObjectOptions();
  _allocateUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKDeleteObjectOptions and conformance HKDeleteObjectOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v12 = *(v32 + 264);
  *(v32 + 16) = *(v32 + 240);
  *(v32 + 56) = v27;
  *(v32 + 24) = HealthSampleDeleter.delete(sampleIdentifier:);
  v10 = swift_continuation_init();
  *(v32 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v32 + 112) = v10;
  *(v32 + 80) = MEMORY[0x277D85DD0];
  *(v32 + 88) = 1107296256;
  *(v32 + 92) = 0;
  *(v32 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v32 + 104) = &block_descriptor_11;
  [v13 deleteObjectsWithUUIDs:isa options:v12 completion:?];

  return MEMORY[0x282200938](v32 + 16);
}

{
  v6 = *v0;
  v6[30] = *v0;
  v7 = v6 + 30;
  v1 = v6[6];
  v6[63] = v1;
  if (v1)
  {
    v4 = *v7;
    v3 = HealthSampleDeleter.delete(sampleIdentifier:);
  }

  else
  {
    v2 = *v7;
    v3 = HealthSampleDeleter.delete(sampleIdentifier:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

{
  v23 = v0[62];
  v28 = v0[58];
  v26 = v0[57];
  v27 = v0[56];
  v1 = v0[53];
  v25 = v0[50];
  v2 = v0[45];
  v0[30] = v0;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v23);
  v24 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v27(v1, v24, v25);
  swift_endAccess();
  v30 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v31 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v30, v29))
  {
    v3 = *(v22 + 488);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0);
    v20 = createStorage<A>(capacity:type:)(0);
    *(v22 + 288) = buf;
    *(v22 + 296) = v19;
    *(v22 + 304) = v20;
    serialize(_:at:)(0, (v22 + 288));
    serialize(_:at:)(0, (v22 + 288));
    *(v22 + 312) = v31;
    v21 = swift_task_alloc();
    v21[2] = v22 + 288;
    v21[3] = v22 + 296;
    v21[4] = v22 + 304;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v3)
    {
    }

    _os_log_impl(&dword_269912000, v30, v29, "Successfully deleted sample. Returning success response.", buf, 2u);
    destroyStorage<A>(_:count:)(v19, 0, v17);
    destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v10 = *(v22 + 480);
  v11 = *(v22 + 472);
  v8 = *(v22 + 424);
  v9 = *(v22 + 400);
  MEMORY[0x277D82BD8](v30);
  v11(v8, v9);
  type metadata accessor for DeleteHealthSampleIntentResponse();
  v16 = DeleteHealthSampleIntentResponse.__allocating_init(code:userActivity:)(4, 0);
  *(v22 + 280) = v16;
  v5 = *(v22 + 440);
  v12 = *(v22 + 432);
  v13 = *(v22 + 424);
  v14 = *(v22 + 416);
  v15 = *(v22 + 392);

  v6 = *(*(v22 + 240) + 8);
  v7 = *(v22 + 240);

  return v6(v16);
}

{
  v45 = v0;
  v1 = v0[63];
  v26 = v0[62];
  v37 = v0[58];
  v29 = v0[57];
  v30 = v0[56];
  v24 = v0[52];
  v28 = v0[50];
  v25 = v0[45];
  v0[30] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  v2 = v1;
  v0[34] = v1;
  v27 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v30(v24, v27, v28);
  swift_endAccess();
  v3 = v1;
  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = 32;
  v34 = swift_allocObject();
  *(v34 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #5 in HealthKitPersistor.save(quantityIdentifier:value:units:);
  *(v32 + 24) = v31;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v35 + 24) = v32;
  _allocateUninitializedArray<A>(_:)();
  v36 = v4;

  *v36 = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[1] = v33;

  v36[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[3] = v34;

  v36[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v36[5] = v35;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v38, v39))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0);
    v22 = createStorage<A>(capacity:type:)(1);
    v40 = buf;
    v41 = v21;
    v42 = v22;
    serialize(_:at:)(2, &v40);
    serialize(_:at:)(1, &v40);
    v43 = partial apply for closure #1 in OSLogArguments.append(_:);
    v44 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v43, &v40, &v41, &v42);
    v43 = partial apply for closure #1 in OSLogArguments.append(_:);
    v44 = v34;
    closure #1 in osLogInternal(_:log:type:)(&v43, &v40, &v41, &v42);
    v43 = partial apply for closure #1 in OSLogArguments.append(_:);
    v44 = v35;
    closure #1 in osLogInternal(_:log:type:)(&v43, &v40, &v41, &v42);
    _os_log_impl(&dword_269912000, v38, v39, "Failed to delete sample. Error: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v21, 0, v19);
    destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v13 = v23[63];
  v11 = v23[60];
  v12 = v23[59];
  v9 = v23[52];
  v10 = v23[50];
  MEMORY[0x277D82BD8](v38);
  v12(v9, v10);
  type metadata accessor for DeleteHealthSampleIntentResponse();
  v18 = DeleteHealthSampleIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v5 = v23[55];
  v14 = v23[54];
  v15 = v23[53];
  v16 = v23[52];
  v17 = v23[49];

  v6 = *(v23[30] + 8);
  v7 = v23[30];

  return v6(v18);
}

uint64_t protocol witness for HealthSampleDeleting.delete(sampleIdentifier:) in conformance HealthSampleDeleter(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return HealthSampleDeleter.delete(sampleIdentifier:)(a1, v6);
}

uint64_t sub_269A212F8()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in DeleteHealthSampleIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in DeleteHealthSampleIntentHandler.handle(intent:)(v7, v5, v6);
}

uint64_t sub_269A21444()
{
  v3 = *(type metadata accessor for UUID() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_269A21510()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A215A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A215E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A21700()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_269A21740()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id MedStorageHelper.init(storage:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v12 = v1;
  outlined init with copy of QuantityPersisting?(a1, v9);
  if (v10)
  {
    outlined init with take of QuantityPersisting(v9, __dst);
  }

  else
  {
    v2 = MedsUndoer.init()();
    __dst[3] = &type metadata for SpecificMedicationsPersistor;
    __dst[4] = &protocol witness table for SpecificMedicationsPersistor;
    __dst[0] = v2;
    __dst[1] = v3;
    if (v10)
    {
      outlined destroy of QuantityPersisting?(v9);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage]);
  v8.receiver = v12;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v5);
  v12 = v5;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v12);
  return v5;
}

uint64_t MedStorageHelper.sampleScheduleIDFor(dateInterval:)(uint64_t a1)
{
  v2[27] = v1;
  v2[26] = a1;
  v2[19] = v2;
  v2[20] = 0;
  v2[21] = 0;
  v3 = type metadata accessor for Logger();
  v2[28] = v3;
  v7 = *(v3 - 8);
  v2[29] = v7;
  v4 = *(v7 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[20] = a1;
  v2[21] = v1;
  v5 = v2[19];

  return MEMORY[0x2822009F8](MedStorageHelper.sampleScheduleIDFor(dateInterval:), 0);
}

uint64_t MedStorageHelper.sampleScheduleIDFor(dateInterval:)()
{
  v1 = v0[27];
  v0[19] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, (v0 + 2));
  v8 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v7 = (*(v6 + 8) + **(v6 + 8));
  v2 = *(*(v6 + 8) + 4);
  v3 = swift_task_alloc();
  *(v5 + 248) = v3;
  *v3 = *(v5 + 152);
  v3[1] = MedStorageHelper.sampleScheduleIDFor(dateInterval:);

  return v7(v8, v6);
}

{
  v28 = *(v0 + 280);
  *(v0 + 152) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v28)
  {
    outlined init with copy of QuantityPersisting(*(v27 + 216) + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, v27 + 56);
    v10 = *(v27 + 80);
    v11 = *(v27 + 88);
    __swift_project_boxed_opaque_existential_1((v27 + 56), v10);
    v12 = (*(v11 + 48) + **(v11 + 48));
    v7 = *(*(v11 + 48) + 4);
    v8 = swift_task_alloc();
    *(v27 + 256) = v8;
    *v8 = *(v27 + 152);
    v8[1] = MedStorageHelper.sampleScheduleIDFor(dateInterval:);
    v9 = *(v27 + 208);

    return v12(v9, v10, v11);
  }

  else
  {
    v1 = *(v27 + 240);
    v23 = *(v27 + 224);
    v21 = *(v27 + 232);
    v22 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v21 + 16))(v1, v22, v23);
    swift_endAccess();
    v25 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v26 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v25, v24))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v18 = createStorage<A>(capacity:type:)(0);
      v19 = createStorage<A>(capacity:type:)(0);
      *(v27 + 176) = buf;
      *(v27 + 184) = v18;
      *(v27 + 192) = v19;
      serialize(_:at:)(0, (v27 + 176));
      serialize(_:at:)(0, (v27 + 176));
      *(v27 + 200) = v26;
      v20 = swift_task_alloc();
      v20[2] = v27 + 176;
      v20[3] = v27 + 184;
      v20[4] = v27 + 192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v25, v24, "MedStorageHelper is not authorized to read meds data, returning empty string", buf, 2u);
      destroyStorage<A>(_:count:)(v18, 0, v16);
      destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v14 = *(v27 + 240);
    v15 = *(v27 + 224);
    v13 = *(v27 + 232);
    MEMORY[0x277D82BD8](v25);
    (*(v13 + 8))(v14, v15);
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v3 = *(v27 + 240);

    v4 = *(*(v27 + 152) + 8);
    v5 = *(v27 + 152);

    return v4(v2._countAndFlagsBits, v2._object);
  }
}

{
  v1 = v0[34];
  v2 = v0[33];
  v0[19] = v0;
  v0[17] = v2;
  v0[18] = v1;
  if (v0[18])
  {
    v3 = v10[18];
    v10[15] = v10[17];
    v10[16] = v3;
  }

  else
  {
    *(v10 + 15) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v10[18])
    {
      outlined destroy of String.UTF8View((v10 + 17));
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v10 + 7);
  v8 = v10[15];
  v9 = v10[16];
  v4 = v10[30];

  v5 = *(v10[19] + 8);
  v6 = v10[19];

  return v5(v8, v9);
}

uint64_t MedStorageHelper.sampleScheduleIDFor(dateInterval:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 248);
  *(v6 + 152) = *v1;
  *(v6 + 280) = a1;

  v4 = *(v6 + 152);

  return MEMORY[0x2822009F8](MedStorageHelper.sampleScheduleIDFor(dateInterval:), 0);
}

uint64_t MedStorageHelper.sampleScheduleIDFor(dateInterval:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v4 = *(*v2 + 256);
  v7[19] = *v2;
  v7[33] = a1;
  v7[34] = a2;

  v5 = v7[19];

  return MEMORY[0x2822009F8](MedStorageHelper.sampleScheduleIDFor(dateInterval:), 0);
}

uint64_t MedStorageHelper.displayNameFor(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[29] = v2;
  v3[28] = a2;
  v3[27] = a1;
  v3[21] = v3;
  v3[15] = 0;
  v3[16] = 0;
  v3[22] = 0;
  v4 = type metadata accessor for Logger();
  v3[30] = v4;
  v8 = *(v4 - 8);
  v3[31] = v8;
  v5 = *(v8 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[15] = a1;
  v3[16] = a2;
  v3[22] = v2;
  v6 = v3[21];

  return MEMORY[0x2822009F8](MedStorageHelper.displayNameFor(identifier:), 0);
}

{
  v7 = *v2;
  v4 = *(*v2 + 272);
  v7[21] = *v2;
  v7[35] = a1;
  v7[36] = a2;

  v5 = v7[21];

  return MEMORY[0x2822009F8](MedStorageHelper.displayNameFor(identifier:), 0);
}

uint64_t MedStorageHelper.displayNameFor(identifier:)()
{
  v1 = v0[29];
  v0[21] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, (v0 + 2));
  v8 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v7 = (*(v6 + 8) + **(v6 + 8));
  v2 = *(*(v6 + 8) + 4);
  v3 = swift_task_alloc();
  *(v5 + 264) = v3;
  *v3 = *(v5 + 168);
  v3[1] = MedStorageHelper.displayNameFor(identifier:);

  return v7(v8, v6);
}

{
  v29 = *(v0 + 296);
  *(v0 + 168) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v29)
  {
    outlined init with copy of QuantityPersisting(*(v28 + 232) + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, v28 + 56);
    v11 = *(v28 + 80);
    v12 = *(v28 + 88);
    __swift_project_boxed_opaque_existential_1((v28 + 56), v11);
    v13 = (*(v12 + 40) + **(v12 + 40));
    v7 = *(*(v12 + 40) + 4);
    v8 = swift_task_alloc();
    *(v28 + 272) = v8;
    *v8 = *(v28 + 168);
    v8[1] = MedStorageHelper.displayNameFor(identifier:);
    v9 = *(v28 + 224);
    v10 = *(v28 + 216);

    return v13(v10, v9, v11, v12);
  }

  else
  {
    v1 = *(v28 + 256);
    v24 = *(v28 + 240);
    v22 = *(v28 + 248);
    v23 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v22 + 16))(v1, v23, v24);
    swift_endAccess();
    v26 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v27 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v26, v25))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v19 = createStorage<A>(capacity:type:)(0);
      v20 = createStorage<A>(capacity:type:)(0);
      *(v28 + 184) = buf;
      *(v28 + 192) = v19;
      *(v28 + 200) = v20;
      serialize(_:at:)(0, (v28 + 184));
      serialize(_:at:)(0, (v28 + 184));
      *(v28 + 208) = v27;
      v21 = swift_task_alloc();
      v21[2] = v28 + 184;
      v21[3] = v28 + 192;
      v21[4] = v28 + 200;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v26, v25, "SpecificMedStorageHelper is not authorized to read meds data, returning empty string", buf, 2u);
      destroyStorage<A>(_:count:)(v19, 0, v17);
      destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v15 = *(v28 + 256);
    v16 = *(v28 + 240);
    v14 = *(v28 + 248);
    MEMORY[0x277D82BD8](v26);
    (*(v14 + 8))(v15, v16);
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v3 = *(v28 + 256);

    v4 = *(*(v28 + 168) + 8);
    v5 = *(v28 + 168);

    return v4(v2._countAndFlagsBits, v2._object);
  }
}

{
  v1 = v0[36];
  v2 = v0[35];
  v0[21] = v0;
  v0[19] = v2;
  v0[20] = v1;
  if (v0[20])
  {
    v3 = v10[20];
    v10[17] = v10[19];
    v10[18] = v3;
  }

  else
  {
    *(v10 + 17) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (v10[20])
    {
      outlined destroy of String.UTF8View((v10 + 19));
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v10 + 7);
  v8 = v10[17];
  v9 = v10[18];
  v4 = v10[32];

  v5 = *(v10[21] + 8);
  v6 = v10[21];

  return v5(v8, v9);
}

uint64_t MedStorageHelper.displayNameFor(identifier:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 264);
  *(v6 + 168) = *v1;
  *(v6 + 296) = a1;

  v4 = *(v6 + 168);

  return MEMORY[0x2822009F8](MedStorageHelper.displayNameFor(identifier:), 0);
}

uint64_t MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1, char a2)
{
  *(v3 + 184) = v2;
  *(v3 + 241) = a2 & 1;
  *(v3 + 176) = a1;
  *(v3 + 120) = v3;
  *(v3 + 128) = 0;
  *(v3 + 240) = 0;
  *(v3 + 136) = 0;
  v4 = type metadata accessor for Logger();
  *(v3 + 192) = v4;
  v8 = *(v4 - 8);
  *(v3 + 200) = v8;
  v5 = *(v8 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 128) = a1;
  *(v3 + 240) = a2 & 1;
  *(v3 + 136) = v2;
  v6 = *(v3 + 120);

  return MEMORY[0x2822009F8](MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:)()
{
  v1 = v0[23];
  v0[15] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, (v0 + 2));
  v8 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  v7 = (*(v6 + 8) + **(v6 + 8));
  v2 = *(*(v6 + 8) + 4);
  v3 = swift_task_alloc();
  *(v5 + 216) = v3;
  *v3 = *(v5 + 120);
  v3[1] = MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:);

  return v7(v8, v6);
}

{
  v28 = *(v0 + 242);
  *(v0 + 120) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v28)
  {
    outlined init with copy of QuantityPersisting(*(v27 + 184) + OBJC_IVAR____TtC19SiriWellnessIntents16MedStorageHelper_storage, v27 + 56);
    v10 = *(v27 + 80);
    v11 = *(v27 + 88);
    __swift_project_boxed_opaque_existential_1((v27 + 56), v10);
    v12 = (*(v11 + 56) + **(v11 + 56));
    v6 = *(*(v11 + 56) + 4);
    v7 = swift_task_alloc();
    *(v27 + 224) = v7;
    *v7 = *(v27 + 120);
    v7[1] = MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:);
    v8 = *(v27 + 176);
    v9 = *(v27 + 241) & 1;

    return v12(v8, v9, v10, v11);
  }

  else
  {
    v1 = *(v27 + 208);
    v23 = *(v27 + 192);
    v21 = *(v27 + 200);
    v22 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v21 + 16))(v1, v22, v23);
    swift_endAccess();
    v25 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v26 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v25, v24))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v18 = createStorage<A>(capacity:type:)(0);
      v19 = createStorage<A>(capacity:type:)(0);
      *(v27 + 144) = buf;
      *(v27 + 152) = v18;
      *(v27 + 160) = v19;
      serialize(_:at:)(0, (v27 + 144));
      serialize(_:at:)(0, (v27 + 144));
      *(v27 + 168) = v26;
      v20 = swift_task_alloc();
      v20[2] = v27 + 144;
      v20[3] = v27 + 152;
      v20[4] = v27 + 160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v25, v24, "MedStorageHelper is not authorized to read meds data, returning empty string", buf, 2u);
      destroyStorage<A>(_:count:)(v18, 0, v16);
      destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v14 = *(v27 + 208);
    v15 = *(v27 + 192);
    v13 = *(v27 + 200);
    MEMORY[0x277D82BD8](v25);
    (*(v13 + 8))(v14, v15);
    v2 = *(v27 + 208);

    v3 = *(*(v27 + 120) + 8);
    v4 = *(v27 + 120);

    return v3(0);
  }
}

{
  v5 = v0[29];
  v0[15] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[26];

  v2 = *(v0[15] + 8);
  v3 = v0[15];

  return v2(v5);
}

uint64_t MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(char a1)
{
  v6 = *v1;
  v3 = *(*v1 + 216);
  *(v6 + 120) = *v1;
  *(v6 + 242) = a1;

  v4 = *(v6 + 120);

  return MEMORY[0x2822009F8](MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

uint64_t MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(uint64_t a1)
{
  v6 = *v1;
  v3 = *(*v1 + 224);
  *(v6 + 120) = *v1;
  *(v6 + 232) = a1;

  v4 = *(v6 + 120);

  return MEMORY[0x2822009F8](MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:), 0);
}

id MedStorageHelper.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for MedStorageHelping.displayNameFor(identifier:) in conformance MedStorageHelper(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for SpecificMedicationsPersisting.displayNameFor(identifier:) in conformance SpecificMedicationsPersistor;

  return MedStorageHelper.displayNameFor(identifier:)(a1, a2);
}

uint64_t protocol witness for MedStorageHelping.sampleScheduleIDFor(dateInterval:) in conformance MedStorageHelper(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for SpecificMedicationsPersisting.displayNameFor(identifier:) in conformance SpecificMedicationsPersistor;

  return MedStorageHelper.sampleScheduleIDFor(dateInterval:)(a1);
}

uint64_t protocol witness for MedStorageHelping.buildMatchedMedName(from:shouldIncludeAsNeededParams:) in conformance MedStorageHelper(uint64_t a1, char a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return MedStorageHelper.buildMatchedMedName(from:shouldIncludeAsNeededParams:)(a1, a2 & 1);
}

id GetBloodPressureIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetBloodPressureIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetBloodPressureIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetBloodPressureIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetBloodPressureIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetBloodPressureIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetBloodPressureIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetBloodPressureIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetBloodPressureIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetBloodPressureIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetBloodPressureIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetBloodPressureIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetBloodPressureIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetBloodPressureIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetBloodPressureIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetBloodPressureIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GetBloodPressureIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  GetBloodPressureIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t GetBloodPressureIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetBloodPressureIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetBloodPressureIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetBloodPressureIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetBloodPressureIntentResponse.code : GetBloodPressureIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetBloodPressureIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetBloodPressureIntentResponse.code : GetBloodPressureIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetBloodPressureIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetBloodPressureIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetBloodPressureIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetBloodPressureIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetBloodPressureIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetBloodPressureIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetBloodPressureIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetBloodPressureIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetBloodPressureIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetBloodPressureIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetBloodPressureIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetBloodPressureIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetBloodPressureIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetBloodPressureIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetBloodPressureIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetBloodPressureIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetBloodPressureIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetBloodPressureIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetBloodPressureIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetBloodPressureIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetBloodPressureIntentResponseCode and conformance GetBloodPressureIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

Swift::Bool __swiftcall isMedDosageUnitSynonym(userSuppliedUnit:systemSuppliedUnit:)(Swift::String userSuppliedUnit, Swift::String systemSuppliedUnit)
{
  v111[2] = userSuppliedUnit;
  v111[1] = systemSuppliedUnit;

  v111[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("application", 0xBuLL, 1);
  v110[1] = systemSuppliedUnit;
  v65 = MEMORY[0x26D649310](v111[0]._countAndFlagsBits, v111[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v111);
  if (v65)
  {

LABEL_51:
    v38 = MEMORY[0x26D649310](systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object, userSuppliedUnit._countAndFlagsBits, userSuppliedUnit._object);
    return v38 & 1;
  }

  v110[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bar", 3uLL, 1);
  v109[1] = systemSuppliedUnit;
  v62 = MEMORY[0x26D649310](v110[0]._countAndFlagsBits, v110[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v110);
  if (v62)
  {

    goto LABEL_51;
  }

  v109[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cartridge", 9uLL, 1);
  v108[1] = systemSuppliedUnit;
  v61 = MEMORY[0x26D649310](v109[0]._countAndFlagsBits, v109[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v109);
  if (v61)
  {

    goto LABEL_51;
  }

  v108[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("device", 6uLL, 1);
  v107[1] = systemSuppliedUnit;
  v60 = MEMORY[0x26D649310](v108[0]._countAndFlagsBits, v108[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v108);
  if (v60)
  {

    goto LABEL_51;
  }

  v107[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("disc", 4uLL, 1);
  v106[1] = systemSuppliedUnit;
  v59 = MEMORY[0x26D649310](v107[0]._countAndFlagsBits, v107[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v107);
  if (v59)
  {

    goto LABEL_51;
  }

  v106[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drop", 4uLL, 1);
  v105[1] = systemSuppliedUnit;
  v58 = MEMORY[0x26D649310](v106[0]._countAndFlagsBits, v106[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v106);
  if (v58)
  {

    goto LABEL_51;
  }

  v105[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("enema", 5uLL, 1);
  v104[1] = systemSuppliedUnit;
  v57 = MEMORY[0x26D649310](v105[0]._countAndFlagsBits, v105[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v105);
  if (v57)
  {

    goto LABEL_51;
  }

  v104[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("globule", 7uLL, 1);
  v103[1] = systemSuppliedUnit;
  v56 = MEMORY[0x26D649310](v104[0]._countAndFlagsBits, v104[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v104);
  if (v56)
  {

    goto LABEL_51;
  }

  v103[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("implant", 7uLL, 1);
  v102[1] = systemSuppliedUnit;
  v55 = MEMORY[0x26D649310](v103[0]._countAndFlagsBits, v103[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v103);
  if (v55)
  {

    goto LABEL_51;
  }

  v102[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("insert", 6uLL, 1);
  v101[1] = systemSuppliedUnit;
  v54 = MEMORY[0x26D649310](v102[0]._countAndFlagsBits, v102[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v102);
  if (v54)
  {

    goto LABEL_51;
  }

  v101[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("kit", 3uLL, 1);
  v100[1] = systemSuppliedUnit;
  v53 = MEMORY[0x26D649310](v101[0]._countAndFlagsBits, v101[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v101);
  if (v53)
  {

    goto LABEL_51;
  }

  v100[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("packet", 6uLL, 1);
  v99[1] = systemSuppliedUnit;
  v52 = MEMORY[0x26D649310](v100[0]._countAndFlagsBits, v100[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v100);
  if (v52)
  {

    goto LABEL_51;
  }

  v99[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("patch", 5uLL, 1);
  v98[1] = systemSuppliedUnit;
  v51 = MEMORY[0x26D649310](v99[0]._countAndFlagsBits, v99[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v99);
  if (v51)
  {

    goto LABEL_51;
  }

  v98[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("piece", 5uLL, 1);
  v97[1] = systemSuppliedUnit;
  v50 = MEMORY[0x26D649310](v98[0]._countAndFlagsBits, v98[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v98);
  if (v50)
  {

    goto LABEL_51;
  }

  v97[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("popsicle", 8uLL, 1);
  v96[1] = systemSuppliedUnit;
  v49 = MEMORY[0x26D649310](v97[0]._countAndFlagsBits, v97[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v97);
  if (v49)
  {

    goto LABEL_51;
  }

  v96[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("scoop", 5uLL, 1);
  v95[1] = systemSuppliedUnit;
  v48 = MEMORY[0x26D649310](v96[0]._countAndFlagsBits, v96[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v96);
  if (v48)
  {

    goto LABEL_51;
  }

  v95[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sponge", 6uLL, 1);
  v94[1] = systemSuppliedUnit;
  v47 = MEMORY[0x26D649310](v95[0]._countAndFlagsBits, v95[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v95);
  if (v47)
  {

    goto LABEL_51;
  }

  v94[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spray", 5uLL, 1);
  v93[1] = systemSuppliedUnit;
  v46 = MEMORY[0x26D649310](v94[0]._countAndFlagsBits, v94[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v94);
  if (v46)
  {

    goto LABEL_51;
  }

  v93[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stick", 5uLL, 1);
  v92[1] = systemSuppliedUnit;
  v45 = MEMORY[0x26D649310](v93[0]._countAndFlagsBits, v93[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v93);
  if (v45)
  {

    goto LABEL_51;
  }

  v92[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("strip", 5uLL, 1);
  v91[1] = systemSuppliedUnit;
  v44 = MEMORY[0x26D649310](v92[0]._countAndFlagsBits, v92[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v92);
  if (v44)
  {

    goto LABEL_51;
  }

  v91[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("suppository", 0xBuLL, 1);
  v90[1] = systemSuppliedUnit;
  v43 = MEMORY[0x26D649310](v91[0]._countAndFlagsBits, v91[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v91);
  if (v43)
  {

    goto LABEL_51;
  }

  v90[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tampon", 6uLL, 1);
  v89[1] = systemSuppliedUnit;
  v42 = MEMORY[0x26D649310](v90[0]._countAndFlagsBits, v90[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v90);
  if (v42)
  {

    goto LABEL_51;
  }

  v89[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("treatment", 9uLL, 1);
  v88[1] = systemSuppliedUnit;
  v41 = MEMORY[0x26D649310](v89[0]._countAndFlagsBits, v89[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v89);
  if (v41)
  {

    goto LABEL_51;
  }

  v88[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unit", 4uLL, 1);
  v87[1] = systemSuppliedUnit;
  v40 = MEMORY[0x26D649310](v88[0]._countAndFlagsBits, v88[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v88);
  if (v40)
  {

    goto LABEL_51;
  }

  v87[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("wick", 4uLL, 1);
  v86[1] = systemSuppliedUnit;
  v39 = MEMORY[0x26D649310](v87[0]._countAndFlagsBits, v87[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v87);
  if (v39)
  {

    goto LABEL_51;
  }

  v86[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhalation", 0xAuLL, 1);
  v85[1] = systemSuppliedUnit;
  v37 = MEMORY[0x26D649310](v86[0]._countAndFlagsBits, v86[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
  outlined destroy of String.UTF8View(v86);
  if (v37)
  {

    v35 = _allocateUninitializedArray<A>(_:)();
    v34 = v2;
    *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhalation", 0xAuLL, 1);
    v34[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhaler", 7uLL, 1);
    v34[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("puff", 4uLL, 1);
    v34[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nebulizer", 9uLL, 1);
    v34[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("neb", 3uLL, 1);
    _finalizeUninitializedArray<A>(_:)();
    v66 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v36 = Sequence<>.contains(_:)();
    outlined destroy of [HKQuantityType](&v66);
    v38 = v36;
  }

  else
  {

    v85[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("injection", 9uLL, 1);
    v84[1] = systemSuppliedUnit;
    v33 = MEMORY[0x26D649310](v85[0]._countAndFlagsBits, v85[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
    outlined destroy of String.UTF8View(v85);
    if (v33)
    {

      v31 = _allocateUninitializedArray<A>(_:)();
      v30 = v3;
      *v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("injection", 9uLL, 1);
      v30[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("shot", 4uLL, 1);
      _finalizeUninitializedArray<A>(_:)();
      v68 = v31;
      v67 = userSuppliedUnit;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v32 = Sequence<>.contains(_:)();
      outlined destroy of [HKQuantityType](&v68);
      v38 = v32;
    }

    else
    {

      v84[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lozenge", 7uLL, 1);
      v83[1] = systemSuppliedUnit;
      v29 = MEMORY[0x26D649310](v84[0]._countAndFlagsBits, v84[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
      outlined destroy of String.UTF8View(v84);
      if (v29)
      {

        v27 = _allocateUninitializedArray<A>(_:)();
        v26 = v4;
        *v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lozenge", 7uLL, 1);
        v26[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("drop", 4uLL, 1);
        v26[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("troche", 6uLL, 1);
        v26[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pastille", 8uLL, 1);
        _finalizeUninitializedArray<A>(_:)();
        v70 = v27;
        v69 = userSuppliedUnit;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v28 = Sequence<>.contains(_:)();
        outlined destroy of [HKQuantityType](&v70);
        v38 = v28;
      }

      else
      {

        v83[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mL", 2uLL, 1);
        v82[1] = systemSuppliedUnit;
        v25 = MEMORY[0x26D649310](v83[0]._countAndFlagsBits, v83[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
        outlined destroy of String.UTF8View(v83);
        if (v25)
        {

          v23 = _allocateUninitializedArray<A>(_:)();
          v22 = v5;
          *v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mL", 2uLL, 1);
          v22[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milliliter", 0xAuLL, 1);
          v22[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milliLiter", 0xAuLL, 1);
          _finalizeUninitializedArray<A>(_:)();
          v72 = v23;
          v71 = userSuppliedUnit;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v24 = Sequence<>.contains(_:)();
          outlined destroy of [HKQuantityType](&v72);
          v38 = v24;
        }

        else
        {

          v82[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mg", 2uLL, 1);
          v81[1] = systemSuppliedUnit;
          v21 = MEMORY[0x26D649310](v82[0]._countAndFlagsBits, v82[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
          outlined destroy of String.UTF8View(v82);
          if (v21)
          {

            v19 = _allocateUninitializedArray<A>(_:)();
            v18 = v6;
            *v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mg", 2uLL, 1);
            v18[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("milligram", 9uLL, 1);
            _finalizeUninitializedArray<A>(_:)();
            v74 = v19;
            v73 = userSuppliedUnit;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
            lazy protocol witness table accessor for type [String] and conformance [A]();
            v20 = Sequence<>.contains(_:)();
            outlined destroy of [HKQuantityType](&v74);
            v38 = v20;
          }

          else
          {

            v81[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tablet", 6uLL, 1);
            v80[1] = systemSuppliedUnit;
            v17 = MEMORY[0x26D649310](v81[0]._countAndFlagsBits, v81[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
            outlined destroy of String.UTF8View(v81);
            if (v17)
            {

              v15 = _allocateUninitializedArray<A>(_:)();
              v14 = v7;
              *v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tablet", 6uLL, 1);
              v14[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("tab", 3uLL, 1);
              v14[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pill", 4uLL, 1);
              v14[3] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cap", 3uLL, 1);
              v14[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("capsule", 7uLL, 1);
              _finalizeUninitializedArray<A>(_:)();
              v76 = v15;
              v75 = userSuppliedUnit;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
              lazy protocol witness table accessor for type [String] and conformance [A]();
              v16 = Sequence<>.contains(_:)();
              outlined destroy of [HKQuantityType](&v76);
              v38 = v16;
            }

            else
            {

              v80[0] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vial", 4uLL, 1);
              v79 = systemSuppliedUnit;
              v13 = MEMORY[0x26D649310](v80[0]._countAndFlagsBits, v80[0]._object, systemSuppliedUnit._countAndFlagsBits, systemSuppliedUnit._object);
              outlined destroy of String.UTF8View(v80);

              if (v13)
              {
                v11 = _allocateUninitializedArray<A>(_:)();
                v10 = v8;
                *v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nebulizer", 9uLL, 1);
                v10[1] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("neb", 3uLL, 1);
                v10[2] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhalation", 0xAuLL, 1);
                _finalizeUninitializedArray<A>(_:)();
                v78 = v11;
                v77 = userSuppliedUnit;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
                lazy protocol witness table accessor for type [String] and conformance [A]();
                v12 = Sequence<>.contains(_:)();
                outlined destroy of [HKQuantityType](&v78);
                v38 = v12;
              }

              else
              {
                v38 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v38 & 1;
}

id LogBloodPressureIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LogBloodPressureIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogBloodPressureIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogBloodPressureIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for LogBloodPressureIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogBloodPressureIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id LogBloodPressureIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for LogBloodPressureIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id LogBloodPressureIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id LogBloodPressureIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for LogBloodPressureIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id LogBloodPressureIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogBloodPressureIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogBloodPressureIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
    case 104:
      return 104;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogBloodPressureIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogBloodPressureIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LogBloodPressureIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  LogBloodPressureIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t LogBloodPressureIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___LogBloodPressureIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t LogBloodPressureIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___LogBloodPressureIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for LogBloodPressureIntentResponse.code : LogBloodPressureIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = LogBloodPressureIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for LogBloodPressureIntentResponse.code : LogBloodPressureIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  LogBloodPressureIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *LogBloodPressureIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___LogBloodPressureIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id LogBloodPressureIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___LogBloodPressureIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for LogBloodPressureIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogBloodPressureIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogBloodPressureIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogBloodPressureIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogBloodPressureIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogBloodPressureIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogBloodPressureIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogBloodPressureIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogBloodPressureIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogBloodPressureIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id LogBloodPressureIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___LogBloodPressureIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for LogBloodPressureIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id LogBloodPressureIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogBloodPressureIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogBloodPressureIntentResponseCode and conformance LogBloodPressureIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

id GetMenstruationPredictionIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for GetMenstruationPredictionIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetMenstruationPredictionIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetMenstruationPredictionIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for GetMenstruationPredictionIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetMenstruationPredictionIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id GetMenstruationPredictionIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for GetMenstruationPredictionIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id GetMenstruationPredictionIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id GetMenstruationPredictionIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for GetMenstruationPredictionIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id GetMenstruationPredictionIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetMenstruationPredictionIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GetMenstruationPredictionIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetMenstruationPredictionIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GetMenstruationPredictionIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GetMenstruationPredictionIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  GetMenstruationPredictionIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t GetMenstruationPredictionIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___GetMenstruationPredictionIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t GetMenstruationPredictionIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___GetMenstruationPredictionIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for GetMenstruationPredictionIntentResponse.code : GetMenstruationPredictionIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = GetMenstruationPredictionIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for GetMenstruationPredictionIntentResponse.code : GetMenstruationPredictionIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  GetMenstruationPredictionIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *GetMenstruationPredictionIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___GetMenstruationPredictionIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id GetMenstruationPredictionIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___GetMenstruationPredictionIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for GetMenstruationPredictionIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id GetMenstruationPredictionIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetMenstruationPredictionIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetMenstruationPredictionIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetMenstruationPredictionIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetMenstruationPredictionIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id GetMenstruationPredictionIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___GetMenstruationPredictionIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for GetMenstruationPredictionIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id GetMenstruationPredictionIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id GetMenstruationPredictionIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___GetMenstruationPredictionIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for GetMenstruationPredictionIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id GetMenstruationPredictionIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetMenstruationPredictionIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode;
  if (!lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetMenstruationPredictionIntentResponseCode and conformance GetMenstruationPredictionIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

void *static HealthKitCorrelationProvider<A>.bloodPressure(store:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x277D82BE0](a1);
  v6 = *MEMORY[0x277CCBBA8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCBBA8]);
  v4 = *MEMORY[0x277CCC980];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC980]);
  v5 = *MEMORY[0x277CCC978];
  MEMORY[0x277D82BE0](*MEMORY[0x277CCC978]);
  BloodPressureIntentResponse = type metadata accessor for GetBloodPressureIntentResponse();
  HealthKitCorrelationProvider.init(store:identifier:firstQuantityIdentifier:secondQuantityIdentifier:failure:mapIntent:)(a1, v6, v4, v5, implicit closure #1 in static HealthKitCorrelationProvider<A>.bloodPressure(store:), 0, closure #1 in static HealthKitCorrelationProvider<A>.bloodPressure(store:), 0, v9, BloodPressureIntentResponse);
  return memcpy(a2, v9, 0x40uLL);
}

uint64_t HealthKitCorrelationProvider.firstQuantityType.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t HealthKitCorrelationProvider.secondQuantityType.getter()
{
  v2 = *(v0 + 24);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t HealthKitCorrelationProvider.mapIntent.getter()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v2;
}

void *HealthKitCorrelationProvider.init(store:identifier:firstQuantityIdentifier:secondQuantityIdentifier:failure:mapIntent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  memset(__b, 0, sizeof(__b));
  v24[8] = a10;
  MEMORY[0x277D82BE0](a1);
  MEMORY[0x277D82BE0](a1);
  __b[0] = a1;
  type metadata accessor for HKCorrelationType();
  MEMORY[0x277D82BE0](a2);
  v12 = MEMORY[0x26D649720](a2);
  MEMORY[0x277D82BE0](v12);
  __b[1] = v12;
  type metadata accessor for HKQuantityType();
  MEMORY[0x277D82BE0](a3);
  v13 = MEMORY[0x26D649710](a3);
  MEMORY[0x277D82BE0](v13);
  __b[2] = v13;
  MEMORY[0x277D82BE0](a4);
  v14 = MEMORY[0x26D649710](a4);
  MEMORY[0x277D82BE0](v14);
  __b[3] = v14;

  __b[4] = a5;
  __b[5] = a6;

  __b[6] = a7;
  __b[7] = a8;
  v24[0] = a1;
  v24[1] = v12;
  v24[2] = v13;
  v24[3] = v14;
  v24[4] = a5;
  v24[5] = a6;
  v24[6] = a7;
  v24[7] = a8;

  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  outlined destroy of HealthKitCorrelationProvider<A>(__b);
  return memcpy(a9, v24, 0x40uLL);
}

uint64_t HealthKitCorrelationProvider.query(start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = v4;
  v5[7] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v6 = *(a4 + 16);
  v5[9] = v6;
  v12 = *(v6 - 8);
  v5[10] = v12;
  v7 = *(v12 + 64) + 15;
  v5[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMR) - 8) + 64) + 15;
  v20 = swift_task_alloc();
  v5[12] = v20;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = v4;
  v9 = *v4;
  v5[13] = v9;
  MEMORY[0x277D82BE0](v9);
  v15 = v13[1];
  v5[14] = v15;
  MEMORY[0x277D82BE0](v15);
  v16 = v13[2];
  v5[15] = v16;
  MEMORY[0x277D82BE0](v16);
  v17 = v13[3];
  v5[16] = v17;
  MEMORY[0x277D82BE0](v17);
  v10 = swift_task_alloc();
  *(v14 + 136) = v10;
  *v10 = *(v14 + 16);
  v10[1] = HealthKitCorrelationProvider.query(start:end:);

  return HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(v20, v15, v16, v17, a2, a3);
}

uint64_t HealthKitCorrelationProvider.query(start:end:)()
{
  v10 = *v1;
  v2 = *(*v1 + 136);
  *(v10 + 16) = *v1;
  v11 = (v10 + 16);
  *(v10 + 144) = v0;

  if (v0)
  {
    v5 = *v11;
    v4 = HealthKitCorrelationProvider.query(start:end:);
  }

  else
  {
    v7 = *(v10 + 120);
    v8 = *(v10 + 112);
    v9 = *(v10 + 104);

    v3 = *v11;
    v4 = HealthKitCorrelationProvider.query(start:end:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v12 = v0[12];
  v11 = v0[11];
  v9 = v0[10];
  v10 = v0[9];
  v1 = v0[8];
  v8 = v0[7];
  v0[2] = v0;
  v7 = *(v1 + 48);
  v2 = *(v1 + 56);

  v7(v12);

  (*(v9 + 16))(v8, v11, v10);
  (*(v9 + 8))(v11, v10);
  outlined destroy of Statistics<(first: Double, second: Double)>?(v12);
  v3 = v0[12];
  v13 = v0[11];

  v4 = *(v0[2] + 8);
  v5 = v0[2];

  return v4();
}

{
  v15 = v0[18];
  v1 = v0[16];
  v9 = v0[15];
  v10 = v0[14];
  v11 = v0[13];
  v12 = v0[8];
  v13 = v0[7];
  v0[2] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v2 = v15;
  v0[6] = v15;
  v14 = *(v12 + 32);
  v3 = *(v12 + 40);

  v14(v4);

  v5 = v0[12];
  v16 = v0[11];

  v6 = *(v0[2] + 8);
  v7 = v0[2];

  return v6();
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitCorrelationProvider<A>()
{
  *(v1 + 80) = v1;
  memcpy((v1 + 16), v0, 0x40uLL);
  v2 = swift_task_alloc();
  *(v4 + 88) = v2;
  *v2 = *(v4 + 80);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitCorrelationProvider<A>;

  return HealthKitDistanceProvider.isQueryAuthorized()();
}

uint64_t protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitCorrelationProvider<A>(unsigned int a1)
{
  v5 = *v1;
  v2 = *(*v1 + 88);
  *(v5 + 80) = *v1;

  v3 = *(*(v5 + 80) + 8);

  return v3(a1);
}

uint64_t protocol witness for DataProviding.isLoggingAuthorized() in conformance HealthKitCorrelationProvider<A>()
{
  *(v1 + 80) = v1;
  memcpy((v1 + 16), v0, 0x40uLL);
  v2 = swift_task_alloc();
  *(v4 + 88) = v2;
  *v2 = *(v4 + 80);
  v2[1] = protocol witness for DataProviding.isQueryAuthorized() in conformance HealthKitCorrelationProvider<A>;

  return HealthKitDistanceProvider.isQueryAuthorized()();
}

char *implicit closure #1 in static HealthKitCorrelationProvider<A>.bloodPressure(store:)@<X0>(char **a1@<X8>)
{
  type metadata accessor for GetBloodPressureIntentResponse();
  result = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(5, 0);
  *a1 = result;
  return result;
}

char *closure #1 in static HealthKitCorrelationProvider<A>.bloodPressure(store:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v36 = a2;
  v49 = a1;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v37 = 0;
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v42 = &v17 - v41;
  v43 = type metadata accessor for DateInterval();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v47 = &v17 - v46;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMR);
  v48 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v55 = &v17 - v48;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  v52 = *(v54 - 1);
  v53 = v54 - 2;
  v50 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v51 = &v17 - v50;
  v58 = &v17 - v50;
  v57 = v3;
  outlined init with copy of Statistics<(first: Double, second: Double)>?(v3, v4);
  if ((*(v52 + 48))(v55, 1, v54) == 1)
  {
    outlined destroy of Statistics<(first: Double, second: Double)>?(v55);
    v35 = 0;
    type metadata accessor for GetBloodPressureIntentResponse();
    result = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(102, v35);
    *v36 = result;
  }

  else
  {
    outlined init with take of Statistics<(first: Double, second: Double)>(v55, v51);
    v18 = 0;
    type metadata accessor for GetBloodPressureIntentResponse();
    v6 = GetBloodPressureIntentResponse.__allocating_init(code:userActivity:)(4, v18);
    v7 = v47;
    v34 = v6;
    v56 = v6;
    v8 = &v51[v54[9]];
    v19 = *v8;
    v20 = *(v8 + 1);

    v21 = MEMORY[0x26D6492A0](v19, v20);

    [v34 setUnit_];
    MEMORY[0x277D82BD8](v21);
    v9 = &v51[v54[11]];
    v10 = *v9;
    v23 = *(v9 + 1);
    [v34 setSystolic_];
    v11 = &v51[v54[10]];
    v12 = *v11;
    v24 = *(v11 + 1);
    v22 = *(v11 + 2);
    v25 = *(v11 + 3);
    [v34 setSystolicMinimum_];
    [v34 setSystolicMaximum_];
    [v34 setDiastolic_];
    [v34 setDiastolicMinimum_];
    [v34 setDiastolicMaximum_];
    v13 = &v51[v54[7]];
    v28 = v44[2];
    v27 = v44 + 2;
    v28(v7, v13, v43);
    DateInterval.start.getter();
    v14.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v15 = v47;
    isa = v14.super.isa;
    v30 = v44[1];
    v29 = v44 + 1;
    v30(v47, v43);
    v32 = *(v39 + 8);
    v31 = v39 + 8;
    v32(v42, v38);
    [v34 setSampleStartDate_];
    MEMORY[0x277D82BD8](isa);
    v28(v15, &v51[v54[7]], v43);
    DateInterval.end.getter();
    v33 = Date._bridgeToObjectiveC()().super.isa;
    v30(v47, v43);
    v32(v42, v38);
    [v34 setSampleEndDate_];
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BE0](v34);
    v16 = v34;
    *v36 = v34;
    MEMORY[0x277D82BD8](v16);
    return outlined destroy of Statistics<(first: Double, second: Double)>(v51);
  }

  return result;
}

void *outlined destroy of HealthKitCorrelationProvider<A>(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  MEMORY[0x277D82BD8](a1[2]);
  MEMORY[0x277D82BD8](a1[3]);
  v1 = a1[5];

  v2 = a1[7];

  return a1;
}

uint64_t outlined destroy of Statistics<(first: Double, second: Double)>?(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v3 = type metadata accessor for DateInterval();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(a1, 1))
    {
      (*(v4 + 8))(a1, v3);
    }

    (*(v4 + 8))(a1 + *(v6 + 28), v3);
    v1 = *(a1 + *(v6 + 36) + 8);
  }

  return a1;
}

uint64_t protocol witness for BloodPressureProviding.query(start:end:) in conformance <A> HealthKitCorrelationProvider<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = v4;
  memcpy((v4 + 16), v3, 0x40uLL);
  v5 = swift_task_alloc();
  *(v7 + 96) = v5;
  *v5 = *(v7 + 80);
  v5[1] = protocol witness for BloodPressureProviding.query(start:end:) in conformance <A> HealthKitCorrelationProvider<A>;

  return HealthKitCorrelationProvider.query(start:end:)(v7 + 88, a1, a2, a3);
}

uint64_t protocol witness for BloodPressureProviding.query(start:end:) in conformance <A> HealthKitCorrelationProvider<A>()
{
  v5 = *v0;
  v6 = *v0;
  v1 = *(*v0 + 96);
  *(v6 + 80) = *v0;

  v2 = *(v5 + 88);
  v3 = *(*(v6 + 80) + 8);

  return v3(v2);
}

uint64_t type metadata instantiation function for HealthKitCorrelationProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for HealthKitCorrelationProvider(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthKitCorrelationProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

char *outlined init with copy of Statistics<(first: Double, second: Double)>?(char *a1, char *a2)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  v15 = *(v14 - 1);
  if ((*(v15 + 48))(a1, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMR);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for DateInterval();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(a1, 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      memcpy(a2, a1, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(a2, a1, v10);
      (*(v11 + 56))(a2, 0, 1, v10);
    }

    (*(v11 + 16))(&a2[v14[7]], &a1[v14[7]], v10);
    *&a2[v14[8]] = *&a1[v14[8]];
    v3 = v14[9];
    v8 = &a2[v3];
    *&a2[v3] = *&a1[v3];
    v9 = *&a1[v3 + 8];

    *(v8 + 1) = v9;
    v4 = &a2[v14[10]];
    v5 = v14[10];
    *v4 = *&a1[v5];
    *(v4 + 1) = *&a1[v5 + 16];
    *&a2[v14[11]] = *&a1[v14[11]];
    *&a2[v14[12]] = *&a1[v14[12]];
    *&a2[v14[13]] = *&a1[v14[13]];
    (*(v15 + 56))();
  }

  return a2;
}

__n128 outlined init with take of Statistics<(first: Double, second: Double)>(char *a1, char *a2)
{
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(a2, a1, v9);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  (*(v10 + 32))(&a2[v6[7]], &a1[v6[7]], v9);
  *&a2[v6[8]] = *&a1[v6[8]];
  *&a2[v6[9]] = *&a1[v6[9]];
  v3 = &a2[v6[10]];
  v4 = v6[10];
  *v3 = *&a1[v4];
  *(v3 + 1) = *&a1[v4 + 16];
  *&a2[v6[11]] = *&a1[v6[11]];
  *&a2[v6[12]] = *&a1[v6[12]];
  result = *&a1[v6[13]];
  *&a2[v6[13]] = result;
  return result;
}

uint64_t PeriodFlow.toMenstrualFlow()(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

uint64_t PeriodFlow.init(flow:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
  }

  return 0;
}

id LogGenericMedicationsIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LogGenericMedicationsIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogGenericMedicationsIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogGenericMedicationsIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for LogGenericMedicationsIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogGenericMedicationsIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id LogGenericMedicationsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for LogGenericMedicationsIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id LogGenericMedicationsIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id LogGenericMedicationsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for LogGenericMedicationsIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id LogGenericMedicationsIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogGenericMedicationsIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogGenericMedicationsIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
    case 103:
      return 103;
    case 104:
      return 104;
    case 105:
      return 105;
    case 106:
      return 106;
    case 107:
      return 107;
    case 108:
      return 108;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogGenericMedicationsIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogGenericMedicationsIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LogGenericMedicationsIntentResponseCode(void *a1@<X8>)
{
  v2 = *v1;
  LogGenericMedicationsIntentResponseCode.rawValue.getter();
  *a1 = v3;
}

uint64_t LogGenericMedicationsIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___LogGenericMedicationsIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t LogGenericMedicationsIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___LogGenericMedicationsIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for LogGenericMedicationsIntentResponse.code : LogGenericMedicationsIntentResponse@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = LogGenericMedicationsIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for LogGenericMedicationsIntentResponse.code : LogGenericMedicationsIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  LogGenericMedicationsIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *LogGenericMedicationsIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___LogGenericMedicationsIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id LogGenericMedicationsIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___LogGenericMedicationsIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for LogGenericMedicationsIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogGenericMedicationsIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogGenericMedicationsIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogGenericMedicationsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogGenericMedicationsIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogGenericMedicationsIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogGenericMedicationsIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogGenericMedicationsIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogGenericMedicationsIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogGenericMedicationsIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id LogGenericMedicationsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___LogGenericMedicationsIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for LogGenericMedicationsIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id LogGenericMedicationsIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogGenericMedicationsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogGenericMedicationsIntentResponseCode and conformance LogGenericMedicationsIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

SiriWellnessIntents::WellnessNoun_optional __swiftcall WellnessNoun.init(rawValue:)(Swift::String rawValue)
{
  v1 = _allocateUninitializedArray<A>(_:)();
  *v2 = "abdominal_cramps";
  *(v2 + 8) = 16;
  *(v2 + 16) = 2;
  *(v2 + 24) = "acne";
  *(v2 + 32) = 4;
  *(v2 + 40) = 2;
  *(v2 + 48) = "appetite_changes";
  *(v2 + 56) = 16;
  *(v2 + 64) = 2;
  *(v2 + 72) = "audiogram";
  *(v2 + 80) = 9;
  *(v2 + 88) = 2;
  *(v2 + 96) = "basal_body_temperature";
  *(v2 + 104) = 22;
  *(v2 + 112) = 2;
  *(v2 + 120) = "bicycling";
  *(v2 + 128) = 9;
  *(v2 + 136) = 2;
  *(v2 + 144) = "biotin";
  *(v2 + 152) = 6;
  *(v2 + 160) = 2;
  *(v2 + 168) = "bladder_incontinence";
  *(v2 + 176) = 20;
  *(v2 + 184) = 2;
  *(v2 + 192) = "bloating";
  *(v2 + 200) = 8;
  *(v2 + 208) = 2;
  *(v2 + 216) = "blood_alcohol_content";
  *(v2 + 224) = 21;
  *(v2 + 232) = 2;
  *(v2 + 240) = "blood_glucose";
  *(v2 + 248) = 13;
  *(v2 + 256) = 2;
  *(v2 + 264) = "blood_pressure";
  *(v2 + 272) = 14;
  *(v2 + 280) = 2;
  *(v2 + 288) = "blood_pressure_diastolic";
  *(v2 + 296) = 24;
  *(v2 + 304) = 2;
  *(v2 + 312) = "blood_pressure_systolic";
  *(v2 + 320) = 23;
  *(v2 + 328) = 2;
  *(v2 + 336) = "body_fat_percentage";
  *(v2 + 344) = 19;
  *(v2 + 352) = 2;
  *(v2 + 360) = "body_mass_index";
  *(v2 + 368) = 15;
  *(v2 + 376) = 2;
  *(v2 + 384) = "body_temperature";
  *(v2 + 392) = 16;
  *(v2 + 400) = 2;
  *(v2 + 408) = "caffeine";
  *(v2 + 416) = 8;
  *(v2 + 424) = 2;
  *(v2 + 432) = "calcium";
  *(v2 + 440) = 7;
  *(v2 + 448) = 2;
  *(v2 + 456) = "carbohydrates";
  *(v2 + 464) = 13;
  *(v2 + 472) = 2;
  *(v2 + 480) = "cervical_mucus_quality";
  *(v2 + 488) = 22;
  *(v2 + 496) = 2;
  *(v2 + 504) = "chills";
  *(v2 + 512) = 6;
  *(v2 + 520) = 2;
  *(v2 + 528) = "chloride";
  *(v2 + 536) = 8;
  *(v2 + 544) = 2;
  *(v2 + 552) = "chromium";
  *(v2 + 560) = 8;
  *(v2 + 568) = 2;
  *(v2 + 576) = "constipation";
  *(v2 + 584) = 12;
  *(v2 + 592) = 2;
  *(v2 + 600) = "copper";
  *(v2 + 608) = 6;
  *(v2 + 616) = 2;
  *(v2 + 624) = "diarrhea";
  *(v2 + 632) = 8;
  *(v2 + 640) = 2;
  *(v2 + 648) = "diastolic_blood_pressure";
  *(v2 + 656) = 24;
  *(v2 + 664) = 2;
  *(v2 + 672) = "dietary_cholesterol";
  *(v2 + 680) = 19;
  *(v2 + 688) = 2;
  *(v2 + 696) = "dietary_sugar";
  *(v2 + 704) = 13;
  *(v2 + 712) = 2;
  *(v2 + 720) = "double_support";
  *(v2 + 728) = 14;
  *(v2 + 736) = 2;
  *(v2 + 744) = "dry_skin";
  *(v2 + 752) = 8;
  *(v2 + 760) = 2;
  *(v2 + 768) = "electrocardiogram";
  *(v2 + 776) = 17;
  *(v2 + 784) = 2;
  *(v2 + 792) = "electrodermal_activity";
  *(v2 + 800) = 22;
  *(v2 + 808) = 2;
  *(v2 + 816) = "environment_noise";
  *(v2 + 824) = 17;
  *(v2 + 832) = 2;
  *(v2 + 840) = "energy_consumed";
  *(v2 + 848) = 15;
  *(v2 + 856) = 2;
  *(v2 + 864) = "exercise";
  *(v2 + 872) = 8;
  *(v2 + 880) = 2;
  *(v2 + 888) = "exercise_ring";
  *(v2 + 896) = 13;
  *(v2 + 904) = 2;
  *(v2 + 912) = "fatigue";
  *(v2 + 920) = 7;
  *(v2 + 928) = 2;
  *(v2 + 936) = "fat_monounsaturated";
  *(v2 + 944) = 19;
  *(v2 + 952) = 2;
  *(v2 + 960) = "fat_polyunsaturated";
  *(v2 + 968) = 19;
  *(v2 + 976) = 2;
  *(v2 + 984) = "fat_saturated";
  *(v2 + 992) = 13;
  *(v2 + 1000) = 2;
  *(v2 + 1008) = "fat_total";
  *(v2 + 1016) = 9;
  *(v2 + 1024) = 2;
  *(v2 + 1032) = "fiber";
  *(v2 + 1040) = 5;
  *(v2 + 1048) = 2;
  *(v2 + 1056) = "flights";
  *(v2 + 1064) = 7;
  *(v2 + 1072) = 2;
  *(v2 + 1080) = "folate";
  *(v2 + 1088) = 6;
  *(v2 + 1096) = 2;
  *(v2 + 1104) = "forced_expiratory_volume";
  *(v2 + 1112) = 24;
  *(v2 + 1120) = 2;
  *(v2 + 1128) = "forced_vital_capacity";
  *(v2 + 1136) = 21;
  *(v2 + 1144) = 2;
  *(v2 + 1152) = "hair_loss";
  *(v2 + 1160) = 9;
  *(v2 + 1168) = 2;
  *(v2 + 1176) = "handwash";
  *(v2 + 1184) = 8;
  *(v2 + 1192) = 2;
  *(v2 + 1200) = "headache";
  *(v2 + 1208) = 8;
  *(v2 + 1216) = 2;
  *(v2 + 1224) = "headphone_audio";
  *(v2 + 1232) = 15;
  *(v2 + 1240) = 2;
  *(v2 + 1248) = "heart_rate";
  *(v2 + 1256) = 10;
  *(v2 + 1264) = 2;
  *(v2 + 1272) = "heart_rate_variability_sdnn";
  *(v2 + 1280) = 27;
  *(v2 + 1288) = 2;
  *(v2 + 1296) = "height";
  *(v2 + 1304) = 6;
  *(v2 + 1312) = 2;
  *(v2 + 1320) = "high_heart_rate";
  *(v2 + 1328) = 15;
  *(v2 + 1336) = 2;
  *(v2 + 1344) = "hot_flashes";
  *(v2 + 1352) = 11;
  *(v2 + 1360) = 2;
  *(v2 + 1368) = "inhaler_usage";
  *(v2 + 1376) = 13;
  *(v2 + 1384) = 2;
  *(v2 + 1392) = "insulin_delivery";
  *(v2 + 1400) = 16;
  *(v2 + 1408) = 2;
  *(v2 + 1416) = "iodine";
  *(v2 + 1424) = 6;
  *(v2 + 1432) = 2;
  *(v2 + 1440) = "irregular_heart_rate";
  *(v2 + 1448) = 20;
  *(v2 + 1456) = 2;
  *(v2 + 1464) = "iron";
  *(v2 + 1472) = 4;
  *(v2 + 1480) = 2;
  *(v2 + 1488) = "lean_body_mass";
  *(v2 + 1496) = 14;
  *(v2 + 1504) = 2;
  *(v2 + 1512) = "lower_back_pain";
  *(v2 + 1520) = 15;
  *(v2 + 1528) = 2;
  *(v2 + 1536) = "low_heart_rate";
  *(v2 + 1544) = 14;
  *(v2 + 1552) = 2;
  *(v2 + 1560) = "magnesium";
  *(v2 + 1568) = 9;
  *(v2 + 1576) = 2;
  *(v2 + 1584) = "manganese";
  *(v2 + 1592) = 9;
  *(v2 + 1600) = 2;
  *(v2 + 1608) = "memory_lapse";
  *(v2 + 1616) = 12;
  *(v2 + 1624) = 2;
  *(v2 + 1632) = "menstruation";
  *(v2 + 1640) = 12;
  *(v2 + 1648) = 2;
  *(v2 + 1656) = "mindful";
  *(v2 + 1664) = 7;
  *(v2 + 1672) = 2;
  *(v2 + 1680) = "mood_swing";
  *(v2 + 1688) = 10;
  *(v2 + 1696) = 2;
  *(v2 + 1704) = "move";
  *(v2 + 1712) = 4;
  *(v2 + 1720) = 2;
  *(v2 + 1728) = "move_ring";
  *(v2 + 1736) = 9;
  *(v2 + 1744) = 2;
  *(v2 + 1752) = "molybdenum";
  *(v2 + 1760) = 10;
  *(v2 + 1768) = 2;
  *(v2 + 1776) = "nausea";
  *(v2 + 1784) = 6;
  *(v2 + 1792) = 2;
  *(v2 + 1800) = "niacin";
  *(v2 + 1808) = 6;
  *(v2 + 1816) = 2;
  *(v2 + 1824) = "night_sweats";
  *(v2 + 1832) = 12;
  *(v2 + 1840) = 2;
  *(v2 + 1848) = "nikeFuel";
  *(v2 + 1856) = 8;
  *(v2 + 1864) = 2;
  *(v2 + 1872) = "number_of_times_fallen";
  *(v2 + 1880) = 22;
  *(v2 + 1888) = 2;
  *(v2 + 1896) = "oxygen_saturation";
  *(v2 + 1904) = 17;
  *(v2 + 1912) = 2;
  *(v2 + 1920) = "ovulation";
  *(v2 + 1928) = 9;
  *(v2 + 1936) = 2;
  *(v2 + 1944) = "pantothenic_acid";
  *(v2 + 1952) = 16;
  *(v2 + 1960) = 2;
  *(v2 + 1968) = "peak_expiratory_flow_rate";
  *(v2 + 1976) = 25;
  *(v2 + 1984) = 2;
  *(v2 + 1992) = "pelvic_pain";
  *(v2 + 2000) = 11;
  *(v2 + 2008) = 2;
  *(v2 + 2016) = "peripheral_perfusion_index";
  *(v2 + 2024) = 26;
  *(v2 + 2032) = 2;
  *(v2 + 2040) = "phosphorus";
  *(v2 + 2048) = 10;
  *(v2 + 2056) = 2;
  *(v2 + 2064) = "potassium";
  *(v2 + 2072) = 9;
  *(v2 + 2080) = 2;
  *(v2 + 2088) = "protein";
  *(v2 + 2096) = 7;
  *(v2 + 2104) = 2;
  *(v2 + 2112) = "respiratory_rate";
  *(v2 + 2120) = 16;
  *(v2 + 2128) = 2;
  *(v2 + 2136) = "resting_heart_rate";
  *(v2 + 2144) = 18;
  *(v2 + 2152) = 2;
  *(v2 + 2160) = "riboflavin";
  *(v2 + 2168) = 10;
  *(v2 + 2176) = 2;
  *(v2 + 2184) = "running";
  *(v2 + 2192) = 7;
  *(v2 + 2200) = 2;
  *(v2 + 2208) = "selenium";
  *(v2 + 2216) = 8;
  *(v2 + 2224) = 2;
  *(v2 + 2232) = "sexual_activity";
  *(v2 + 2240) = 15;
  *(v2 + 2248) = 2;
  *(v2 + 2256) = "six_minute_walk";
  *(v2 + 2264) = 15;
  *(v2 + 2272) = 2;
  *(v2 + 2280) = "sleep";
  *(v2 + 2288) = 5;
  *(v2 + 2296) = 2;
  *(v2 + 2304) = "sleep_changes";
  *(v2 + 2312) = 13;
  *(v2 + 2320) = 2;
  *(v2 + 2328) = "spotting";
  *(v2 + 2336) = 8;
  *(v2 + 2344) = 2;
  *(v2 + 2352) = "stand";
  *(v2 + 2360) = 5;
  *(v2 + 2368) = 2;
  *(v2 + 2376) = "stand_ring";
  *(v2 + 2384) = 10;
  *(v2 + 2392) = 2;
  *(v2 + 2400) = "swimming";
  *(v2 + 2408) = 8;
  *(v2 + 2416) = 2;
  *(v2 + 2424) = "sodium";
  *(v2 + 2432) = 6;
  *(v2 + 2440) = 2;
  *(v2 + 2448) = "thiamin";
  *(v2 + 2456) = 7;
  *(v2 + 2464) = 2;
  *(v2 + 2472) = "uv_index";
  *(v2 + 2480) = 8;
  *(v2 + 2488) = 2;
  *(v2 + 2496) = "vaginal_dryness";
  *(v2 + 2504) = 15;
  *(v2 + 2512) = 2;
  *(v2 + 2520) = "vitamin_a";
  *(v2 + 2528) = 9;
  *(v2 + 2536) = 2;
  *(v2 + 2544) = "vitamin_b12";
  *(v2 + 2552) = 11;
  *(v2 + 2560) = 2;
  *(v2 + 2568) = "vitamin_b6";
  *(v2 + 2576) = 10;
  *(v2 + 2584) = 2;
  *(v2 + 2592) = "vitamin_c";
  *(v2 + 2600) = 9;
  *(v2 + 2608) = 2;
  *(v2 + 2616) = "vitamin_d";
  *(v2 + 2624) = 9;
  *(v2 + 2632) = 2;
  *(v2 + 2640) = "vitamin_e";
  *(v2 + 2648) = 9;
  *(v2 + 2656) = 2;
  *(v2 + 2664) = "vitamin_k";
  *(v2 + 2672) = 9;
  *(v2 + 2680) = 2;
  *(v2 + 2688) = "vo2_max";
  *(v2 + 2696) = 7;
  *(v2 + 2704) = 2;
  *(v2 + 2712) = "waist_circumference";
  *(v2 + 2720) = 19;
  *(v2 + 2728) = 2;
  *(v2 + 2736) = "walking";
  *(v2 + 2744) = 7;
  *(v2 + 2752) = 2;
  *(v2 + 2760) = "walking_heart_rate_average";
  *(v2 + 2768) = 26;
  *(v2 + 2776) = 2;
  *(v2 + 2784) = "water";
  *(v2 + 2792) = 5;
  *(v2 + 2800) = 2;
  *(v2 + 2808) = "weight";
  *(v2 + 2816) = 6;
  *(v2 + 2824) = 2;
  *(v2 + 2832) = "workouts";
  *(v2 + 2840) = 8;
  *(v2 + 2848) = 2;
  *(v2 + 2856) = "zinc";
  *(v2 + 2864) = 4;
  *(v2 + 2872) = 2;
  *(v2 + 2880) = "unsupported";
  *(v2 + 2888) = 11;
  *(v2 + 2896) = 2;
  *(v2 + 2904) = "active_energy_burned";
  *(v2 + 2912) = 20;
  *(v2 + 2920) = 2;
  *(v2 + 2928) = "inBed";
  *(v2 + 2936) = 5;
  *(v2 + 2944) = 2;
  *(v2 + 2952) = "stepCount";
  *(v2 + 2960) = 9;
  *(v2 + 2968) = 2;
  _finalizeUninitializedArray<A>(_:)();
  v7 = _findStringSwitchCase(cases:string:)(v1, rawValue);

  switch(v7)
  {
    case 0:
      v5.value = SiriWellnessIntents_WellnessNoun_abdominal_cramps;
LABEL_250:

      return v5;
    case 1:
      v5.value = SiriWellnessIntents_WellnessNoun_acne;
      goto LABEL_250;
    case 2:
      v5.value = SiriWellnessIntents_WellnessNoun_appetite_changes;
      goto LABEL_250;
    case 3:
      v5.value = SiriWellnessIntents_WellnessNoun_audiogram;
      goto LABEL_250;
    case 4:
      v5.value = SiriWellnessIntents_WellnessNoun_basal_body_temperature;
      goto LABEL_250;
    case 5:
      v5.value = SiriWellnessIntents_WellnessNoun_bicycling;
      goto LABEL_250;
    case 6:
      v5.value = SiriWellnessIntents_WellnessNoun_biotin;
      goto LABEL_250;
    case 7:
      v5.value = SiriWellnessIntents_WellnessNoun_bladder_incontinence;
      goto LABEL_250;
    case 8:
      v5.value = SiriWellnessIntents_WellnessNoun_bloating;
      goto LABEL_250;
    case 9:
      v5.value = SiriWellnessIntents_WellnessNoun_blood_alcohol_content;
      goto LABEL_250;
    case 10:
      v5.value = SiriWellnessIntents_WellnessNoun_blood_glucose;
      goto LABEL_250;
    case 11:
      v5.value = SiriWellnessIntents_WellnessNoun_blood_pressure;
      goto LABEL_250;
    case 12:
      v5.value = SiriWellnessIntents_WellnessNoun_blood_pressure_diastolic;
      goto LABEL_250;
    case 13:
      v5.value = SiriWellnessIntents_WellnessNoun_blood_pressure_systolic;
      goto LABEL_250;
    case 14:
      v5.value = SiriWellnessIntents_WellnessNoun_body_fat_percentage;
      goto LABEL_250;
    case 15:
      v5.value = SiriWellnessIntents_WellnessNoun_body_mass_index;
      goto LABEL_250;
    case 16:
      v5.value = SiriWellnessIntents_WellnessNoun_body_temperature;
      goto LABEL_250;
    case 17:
      v5.value = SiriWellnessIntents_WellnessNoun_caffeine;
      goto LABEL_250;
    case 18:
      v5.value = SiriWellnessIntents_WellnessNoun_calcium;
      goto LABEL_250;
    case 19:
      v5.value = SiriWellnessIntents_WellnessNoun_carbohydrates;
      goto LABEL_250;
    case 20:
      v5.value = SiriWellnessIntents_WellnessNoun_cervical_mucus_quality;
      goto LABEL_250;
    case 21:
      v5.value = SiriWellnessIntents_WellnessNoun_chills;
      goto LABEL_250;
    case 22:
      v5.value = SiriWellnessIntents_WellnessNoun_chloride;
      goto LABEL_250;
    case 23:
      v5.value = SiriWellnessIntents_WellnessNoun_chromium;
      goto LABEL_250;
    case 24:
      v5.value = SiriWellnessIntents_WellnessNoun_constipation;
      goto LABEL_250;
    case 25:
      v5.value = SiriWellnessIntents_WellnessNoun_copper;
      goto LABEL_250;
    case 26:
      v5.value = SiriWellnessIntents_WellnessNoun_diarrhea;
      goto LABEL_250;
    case 27:
      v5.value = SiriWellnessIntents_WellnessNoun_diastolic_blood_pressure;
      goto LABEL_250;
    case 28:
      v5.value = SiriWellnessIntents_WellnessNoun_dietary_cholesterol;
      goto LABEL_250;
    case 29:
      v5.value = SiriWellnessIntents_WellnessNoun_dietary_sugar;
      goto LABEL_250;
    case 30:
      v5.value = SiriWellnessIntents_WellnessNoun_double_support;
      goto LABEL_250;
    case 31:
      v5.value = SiriWellnessIntents_WellnessNoun_dry_skin;
      goto LABEL_250;
    case 32:
      v5.value = SiriWellnessIntents_WellnessNoun_electrocardiogram;
      goto LABEL_250;
    case 33:
      v5.value = SiriWellnessIntents_WellnessNoun_electrodermal_activity;
      goto LABEL_250;
    case 34:
      v5.value = SiriWellnessIntents_WellnessNoun_environment_noise;
      goto LABEL_250;
    case 35:
      v5.value = SiriWellnessIntents_WellnessNoun_energy_consumed;
      goto LABEL_250;
    case 36:
      v5.value = SiriWellnessIntents_WellnessNoun_exercise;
      goto LABEL_250;
    case 37:
      v5.value = SiriWellnessIntents_WellnessNoun_exercise_ring;
      goto LABEL_250;
    case 38:
      v5.value = SiriWellnessIntents_WellnessNoun_fatigue;
      goto LABEL_250;
    case 39:
      v5.value = SiriWellnessIntents_WellnessNoun_fat_monounsaturated;
      goto LABEL_250;
    case 40:
      v5.value = SiriWellnessIntents_WellnessNoun_fat_polyunsaturated;
      goto LABEL_250;
    case 41:
      v5.value = SiriWellnessIntents_WellnessNoun_fat_saturated;
      goto LABEL_250;
    case 42:
      v5.value = SiriWellnessIntents_WellnessNoun_fat_total;
      goto LABEL_250;
    case 43:
      v5.value = SiriWellnessIntents_WellnessNoun_fiber;
      goto LABEL_250;
    case 44:
      v5.value = SiriWellnessIntents_WellnessNoun_flights;
      goto LABEL_250;
    case 45:
      v5.value = SiriWellnessIntents_WellnessNoun_folate;
      goto LABEL_250;
    case 46:
      v5.value = SiriWellnessIntents_WellnessNoun_forced_expiratory_volume;
      goto LABEL_250;
    case 47:
      v5.value = SiriWellnessIntents_WellnessNoun_forced_vital_capacity;
      goto LABEL_250;
    case 48:
      v5.value = SiriWellnessIntents_WellnessNoun_hair_loss;
      goto LABEL_250;
    case 49:
      v5.value = SiriWellnessIntents_WellnessNoun_handwash;
      goto LABEL_250;
    case 50:
      v5.value = SiriWellnessIntents_WellnessNoun_headache;
      goto LABEL_250;
    case 51:
      v5.value = SiriWellnessIntents_WellnessNoun_headphone_audio;
      goto LABEL_250;
    case 52:
      v5.value = SiriWellnessIntents_WellnessNoun_heart_rate;
      goto LABEL_250;
    case 53:
      v5.value = SiriWellnessIntents_WellnessNoun_heart_rate_variability_sdnn;
      goto LABEL_250;
    case 54:
      v5.value = SiriWellnessIntents_WellnessNoun_height;
      goto LABEL_250;
    case 55:
      v5.value = SiriWellnessIntents_WellnessNoun_high_heart_rate;
      goto LABEL_250;
    case 56:
      v5.value = SiriWellnessIntents_WellnessNoun_hot_flashes;
      goto LABEL_250;
    case 57:
      v5.value = SiriWellnessIntents_WellnessNoun_inhaler_usage;
      goto LABEL_250;
    case 58:
      v5.value = SiriWellnessIntents_WellnessNoun_insulin_delivery;
      goto LABEL_250;
    case 59:
      v5.value = SiriWellnessIntents_WellnessNoun_iodine;
      goto LABEL_250;
    case 60:
      v5.value = SiriWellnessIntents_WellnessNoun_irregular_heart_rate;
      goto LABEL_250;
    case 61:
      v5.value = SiriWellnessIntents_WellnessNoun_iron;
      goto LABEL_250;
    case 62:
      v5.value = SiriWellnessIntents_WellnessNoun_lean_body_mass;
      goto LABEL_250;
    case 63:
      v5.value = SiriWellnessIntents_WellnessNoun_lower_back_pain;
      goto LABEL_250;
    case 64:
      v5.value = SiriWellnessIntents_WellnessNoun_low_heart_rate;
      goto LABEL_250;
    case 65:
      v5.value = SiriWellnessIntents_WellnessNoun_magnesium;
      goto LABEL_250;
    case 66:
      v5.value = SiriWellnessIntents_WellnessNoun_manganese;
      goto LABEL_250;
    case 67:
      v5.value = SiriWellnessIntents_WellnessNoun_memory_lapse;
      goto LABEL_250;
    case 68:
      v5.value = SiriWellnessIntents_WellnessNoun_menstruation;
      goto LABEL_250;
    case 69:
      v5.value = SiriWellnessIntents_WellnessNoun_mindful;
      goto LABEL_250;
    case 70:
      v5.value = SiriWellnessIntents_WellnessNoun_mood_swing;
      goto LABEL_250;
    case 71:
      v5.value = SiriWellnessIntents_WellnessNoun_move;
      goto LABEL_250;
    case 72:
      v5.value = SiriWellnessIntents_WellnessNoun_move_ring;
      goto LABEL_250;
    case 73:
      v5.value = SiriWellnessIntents_WellnessNoun_molybdenum;
      goto LABEL_250;
    case 74:
      v5.value = SiriWellnessIntents_WellnessNoun_nausea;
      goto LABEL_250;
    case 75:
      v5.value = SiriWellnessIntents_WellnessNoun_niacin;
      goto LABEL_250;
    case 76:
      v5.value = SiriWellnessIntents_WellnessNoun_night_sweats;
      goto LABEL_250;
    case 77:
      v5.value = SiriWellnessIntents_WellnessNoun_nikeFuel;
      goto LABEL_250;
    case 78:
      v5.value = SiriWellnessIntents_WellnessNoun_number_of_times_fallen;
      goto LABEL_250;
    case 79:
      v5.value = SiriWellnessIntents_WellnessNoun_oxygen_saturation;
      goto LABEL_250;
    case 80:
      v5.value = SiriWellnessIntents_WellnessNoun_ovulation;
      goto LABEL_250;
    case 81:
      v5.value = SiriWellnessIntents_WellnessNoun_pantothenic_acid;
      goto LABEL_250;
    case 82:
      v5.value = SiriWellnessIntents_WellnessNoun_peak_expiratory_flow_rate;
      goto LABEL_250;
    case 83:
      v5.value = SiriWellnessIntents_WellnessNoun_pelvic_pain;
      goto LABEL_250;
    case 84:
      v5.value = SiriWellnessIntents_WellnessNoun_peripheral_perfusion_index;
      goto LABEL_250;
    case 85:
      v5.value = SiriWellnessIntents_WellnessNoun_phosphorus;
      goto LABEL_250;
    case 86:
      v5.value = SiriWellnessIntents_WellnessNoun_potassium;
      goto LABEL_250;
    case 87:
      v5.value = SiriWellnessIntents_WellnessNoun_protein;
      goto LABEL_250;
    case 88:
      v5.value = SiriWellnessIntents_WellnessNoun_respiratory_rate;
      goto LABEL_250;
    case 89:
      v5.value = SiriWellnessIntents_WellnessNoun_resting_heart_rate;
      goto LABEL_250;
    case 90:
      v5.value = SiriWellnessIntents_WellnessNoun_riboflavin;
      goto LABEL_250;
    case 91:
      v5.value = SiriWellnessIntents_WellnessNoun_running;
      goto LABEL_250;
    case 92:
      v5.value = SiriWellnessIntents_WellnessNoun_selenium;
      goto LABEL_250;
    case 93:
      v5.value = SiriWellnessIntents_WellnessNoun_sexual_activity;
      goto LABEL_250;
    case 94:
      v5.value = SiriWellnessIntents_WellnessNoun_six_minute_walk;
      goto LABEL_250;
    case 95:
      v5.value = SiriWellnessIntents_WellnessNoun_sleep;
      goto LABEL_250;
    case 96:
      v5.value = SiriWellnessIntents_WellnessNoun_sleep_changes;
      goto LABEL_250;
    case 97:
      v5.value = SiriWellnessIntents_WellnessNoun_spotting;
      goto LABEL_250;
    case 98:
      v5.value = SiriWellnessIntents_WellnessNoun_stand;
      goto LABEL_250;
    case 99:
      v5.value = SiriWellnessIntents_WellnessNoun_stand_ring;
      goto LABEL_250;
    case 100:
      v5.value = SiriWellnessIntents_WellnessNoun_swimming;
      goto LABEL_250;
    case 101:
      v5.value = SiriWellnessIntents_WellnessNoun_sodium;
      goto LABEL_250;
    case 102:
      v5.value = SiriWellnessIntents_WellnessNoun_thiamin;
      goto LABEL_250;
    case 103:
      v5.value = SiriWellnessIntents_WellnessNoun_uv_index;
      goto LABEL_250;
    case 104:
      v5.value = SiriWellnessIntents_WellnessNoun_vaginal_dryness;
      goto LABEL_250;
    case 105:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_a;
      goto LABEL_250;
    case 106:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_b12;
      goto LABEL_250;
    case 107:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_b6;
      goto LABEL_250;
    case 108:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_c;
      goto LABEL_250;
    case 109:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_d;
      goto LABEL_250;
    case 110:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_e;
      goto LABEL_250;
    case 111:
      v5.value = SiriWellnessIntents_WellnessNoun_vitamin_k;
      goto LABEL_250;
    case 112:
      v5.value = SiriWellnessIntents_WellnessNoun_vo2_max;
      goto LABEL_250;
    case 113:
      v5.value = SiriWellnessIntents_WellnessNoun_waist_circumference;
      goto LABEL_250;
    case 114:
      v5.value = SiriWellnessIntents_WellnessNoun_walking;
      goto LABEL_250;
    case 115:
      v5.value = SiriWellnessIntents_WellnessNoun_walking_heart_rate_average;
      goto LABEL_250;
    case 116:
      v5.value = SiriWellnessIntents_WellnessNoun_water;
      goto LABEL_250;
    case 117:
      v5.value = SiriWellnessIntents_WellnessNoun_weight;
      goto LABEL_250;
    case 118:
      v5.value = SiriWellnessIntents_WellnessNoun_workouts;
      goto LABEL_250;
    case 119:
      v5.value = SiriWellnessIntents_WellnessNoun_zinc;
      goto LABEL_250;
    case 120:
      v5.value = SiriWellnessIntents_WellnessNoun_unsupported;
      goto LABEL_250;
    case 121:
      v5.value = SiriWellnessIntents_WellnessNoun_active_energy_burned;
      goto LABEL_250;
    case 122:
      v5.value = SiriWellnessIntents_WellnessNoun_inBed;
      goto LABEL_250;
    case 123:
      v5.value = SiriWellnessIntents_WellnessNoun_stepCount;
      goto LABEL_250;
  }

  return 124;
}

uint64_t static WellnessNoun.allCases.getter()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  v1[6] = 6;
  v1[7] = 7;
  v1[8] = 8;
  v1[9] = 9;
  v1[10] = 10;
  v1[11] = 11;
  v1[12] = 12;
  v1[13] = 13;
  v1[14] = 14;
  v1[15] = 15;
  v1[16] = 16;
  v1[17] = 17;
  v1[18] = 18;
  v1[19] = 19;
  v1[20] = 20;
  v1[21] = 21;
  v1[22] = 22;
  v1[23] = 23;
  v1[24] = 24;
  v1[25] = 25;
  v1[26] = 26;
  v1[27] = 27;
  v1[28] = 28;
  v1[29] = 29;
  v1[30] = 30;
  v1[31] = 31;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

uint64_t WellnessNoun.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("acne", 4uLL, 1)._countAndFlagsBits;
      break;
    case 2:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("appetite_changes", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 3:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("audiogram", 9uLL, 1)._countAndFlagsBits;
      break;
    case 4:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("basal_body_temperature", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 5:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bicycling", 9uLL, 1)._countAndFlagsBits;
      break;
    case 6:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("biotin", 6uLL, 1)._countAndFlagsBits;
      break;
    case 7:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bladder_incontinence", 0x14uLL, 1)._countAndFlagsBits;
      break;
    case 8:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("bloating", 8uLL, 1)._countAndFlagsBits;
      break;
    case 9:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blood_alcohol_content", 0x15uLL, 1)._countAndFlagsBits;
      break;
    case 10:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blood_glucose", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 11:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blood_pressure", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 12:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blood_pressure_diastolic", 0x18uLL, 1)._countAndFlagsBits;
      break;
    case 13:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blood_pressure_systolic", 0x17uLL, 1)._countAndFlagsBits;
      break;
    case 14:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("body_fat_percentage", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 15:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("body_mass_index", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 16:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("body_temperature", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 17:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("caffeine", 8uLL, 1)._countAndFlagsBits;
      break;
    case 18:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("calcium", 7uLL, 1)._countAndFlagsBits;
      break;
    case 19:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("carbohydrates", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 20:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("cervical_mucus_quality", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 21:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("chills", 6uLL, 1)._countAndFlagsBits;
      break;
    case 22:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("chloride", 8uLL, 1)._countAndFlagsBits;
      break;
    case 23:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("chromium", 8uLL, 1)._countAndFlagsBits;
      break;
    case 24:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("constipation", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 25:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("copper", 6uLL, 1)._countAndFlagsBits;
      break;
    case 26:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("diarrhea", 8uLL, 1)._countAndFlagsBits;
      break;
    case 27:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("diastolic_blood_pressure", 0x18uLL, 1)._countAndFlagsBits;
      break;
    case 28:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dietary_cholesterol", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 29:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dietary_sugar", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 30:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("double_support", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 31:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("dry_skin", 8uLL, 1)._countAndFlagsBits;
      break;
    case 32:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("electrocardiogram", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 33:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("electrodermal_activity", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 34:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("environment_noise", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 35:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("energy_consumed", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 36:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("exercise", 8uLL, 1)._countAndFlagsBits;
      break;
    case 37:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("exercise_ring", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 38:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fatigue", 7uLL, 1)._countAndFlagsBits;
      break;
    case 39:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fat_monounsaturated", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 40:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fat_polyunsaturated", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 41:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fat_saturated", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 42:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fat_total", 9uLL, 1)._countAndFlagsBits;
      break;
    case 43:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("fiber", 5uLL, 1)._countAndFlagsBits;
      break;
    case 44:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("flights", 7uLL, 1)._countAndFlagsBits;
      break;
    case 45:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("folate", 6uLL, 1)._countAndFlagsBits;
      break;
    case 46:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("forced_expiratory_volume", 0x18uLL, 1)._countAndFlagsBits;
      break;
    case 47:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("forced_vital_capacity", 0x15uLL, 1)._countAndFlagsBits;
      break;
    case 48:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hair_loss", 9uLL, 1)._countAndFlagsBits;
      break;
    case 49:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("handwash", 8uLL, 1)._countAndFlagsBits;
      break;
    case 50:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("headache", 8uLL, 1)._countAndFlagsBits;
      break;
    case 51:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("headphone_audio", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 52:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("heart_rate", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 53:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("heart_rate_variability_sdnn", 0x1BuLL, 1)._countAndFlagsBits;
      break;
    case 54:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("height", 6uLL, 1)._countAndFlagsBits;
      break;
    case 55:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("high_heart_rate", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 56:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("hot_flashes", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 57:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inhaler_usage", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 58:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("insulin_delivery", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 59:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("iodine", 6uLL, 1)._countAndFlagsBits;
      break;
    case 60:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("irregular_heart_rate", 0x14uLL, 1)._countAndFlagsBits;
      break;
    case 61:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("iron", 4uLL, 1)._countAndFlagsBits;
      break;
    case 62:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lean_body_mass", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 63:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("lower_back_pain", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 64:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("low_heart_rate", 0xEuLL, 1)._countAndFlagsBits;
      break;
    case 65:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("magnesium", 9uLL, 1)._countAndFlagsBits;
      break;
    case 66:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("manganese", 9uLL, 1)._countAndFlagsBits;
      break;
    case 67:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("memory_lapse", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 68:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("menstruation", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 69:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mindful", 7uLL, 1)._countAndFlagsBits;
      break;
    case 70:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mood_swing", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 71:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("move", 4uLL, 1)._countAndFlagsBits;
      break;
    case 72:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("move_ring", 9uLL, 1)._countAndFlagsBits;
      break;
    case 73:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("molybdenum", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 74:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nausea", 6uLL, 1)._countAndFlagsBits;
      break;
    case 75:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("niacin", 6uLL, 1)._countAndFlagsBits;
      break;
    case 76:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("night_sweats", 0xCuLL, 1)._countAndFlagsBits;
      break;
    case 77:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nikeFuel", 8uLL, 1)._countAndFlagsBits;
      break;
    case 78:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("number_of_times_fallen", 0x16uLL, 1)._countAndFlagsBits;
      break;
    case 79:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("oxygen_saturation", 0x11uLL, 1)._countAndFlagsBits;
      break;
    case 80:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ovulation", 9uLL, 1)._countAndFlagsBits;
      break;
    case 81:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pantothenic_acid", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 82:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("peak_expiratory_flow_rate", 0x19uLL, 1)._countAndFlagsBits;
      break;
    case 83:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("pelvic_pain", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 84:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("peripheral_perfusion_index", 0x1AuLL, 1)._countAndFlagsBits;
      break;
    case 85:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("phosphorus", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 86:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("potassium", 9uLL, 1)._countAndFlagsBits;
      break;
    case 87:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("protein", 7uLL, 1)._countAndFlagsBits;
      break;
    case 88:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("respiratory_rate", 0x10uLL, 1)._countAndFlagsBits;
      break;
    case 89:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("resting_heart_rate", 0x12uLL, 1)._countAndFlagsBits;
      break;
    case 90:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("riboflavin", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 91:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("running", 7uLL, 1)._countAndFlagsBits;
      break;
    case 92:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("selenium", 8uLL, 1)._countAndFlagsBits;
      break;
    case 93:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sexual_activity", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 94:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("six_minute_walk", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 95:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sleep", 5uLL, 1)._countAndFlagsBits;
      break;
    case 96:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sleep_changes", 0xDuLL, 1)._countAndFlagsBits;
      break;
    case 97:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("spotting", 8uLL, 1)._countAndFlagsBits;
      break;
    case 98:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stand", 5uLL, 1)._countAndFlagsBits;
      break;
    case 99:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stand_ring", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 100:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("swimming", 8uLL, 1)._countAndFlagsBits;
      break;
    case 101:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sodium", 6uLL, 1)._countAndFlagsBits;
      break;
    case 102:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("thiamin", 7uLL, 1)._countAndFlagsBits;
      break;
    case 103:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("uv_index", 8uLL, 1)._countAndFlagsBits;
      break;
    case 104:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vaginal_dryness", 0xFuLL, 1)._countAndFlagsBits;
      break;
    case 105:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_a", 9uLL, 1)._countAndFlagsBits;
      break;
    case 106:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_b12", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 107:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_b6", 0xAuLL, 1)._countAndFlagsBits;
      break;
    case 108:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_c", 9uLL, 1)._countAndFlagsBits;
      break;
    case 109:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_d", 9uLL, 1)._countAndFlagsBits;
      break;
    case 110:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_e", 9uLL, 1)._countAndFlagsBits;
      break;
    case 111:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vitamin_k", 9uLL, 1)._countAndFlagsBits;
      break;
    case 112:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("vo2_max", 7uLL, 1)._countAndFlagsBits;
      break;
    case 113:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("waist_circumference", 0x13uLL, 1)._countAndFlagsBits;
      break;
    case 114:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("walking", 7uLL, 1)._countAndFlagsBits;
      break;
    case 115:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("walking_heart_rate_average", 0x1AuLL, 1)._countAndFlagsBits;
      break;
    case 116:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("water", 5uLL, 1)._countAndFlagsBits;
      break;
    case 117:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("weight", 6uLL, 1)._countAndFlagsBits;
      break;
    case 118:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("workouts", 8uLL, 1)._countAndFlagsBits;
      break;
    case 119:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("zinc", 4uLL, 1)._countAndFlagsBits;
      break;
    case 120:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unsupported", 0xBuLL, 1)._countAndFlagsBits;
      break;
    case 121:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("active_energy_burned", 0x14uLL, 1)._countAndFlagsBits;
      break;
    case 122:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("inBed", 5uLL, 1)._countAndFlagsBits;
      break;
    case 123:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("stepCount", 9uLL, 1)._countAndFlagsBits;
      break;
    default:
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("abdominal_cramps", 0x10uLL, 1)._countAndFlagsBits;
      break;
  }

  return countAndFlagsBits;
}