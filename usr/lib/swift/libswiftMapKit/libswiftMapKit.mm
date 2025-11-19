void @objc UIView.setGlassBackground()(void *a1)
{
  v2 = *(*(type metadata accessor for _Glass._GlassVariant() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  v3 = a1;
  static _Glass._GlassVariant.regular.getter();
  v4[3] = type metadata accessor for _Glass();
  v4[4] = MEMORY[0x29EDC7878];
  __swift_allocate_boxed_opaque_existential_1(v4);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance MKMapItemIdentifier(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = MEMORY[0x29C2AB4E0](v3, v4);

  v7 = [v5 initWithIdentifierString_];

  *a2 = v7;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MKMapItemIdentifier(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifierString];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MKCoordinateSpan(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MKCoordinateSpan(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance GEOPlaceDescriptorResolutionParametersPreferredType@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void type metadata accessor for MKCoordinateSpan(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t MKAddressRepresentations.region.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 regionCode];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.Region.init(_:)();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Locale.Region();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

char *MKGradientPolylineRenderer.locations.getter()
{
  v1 = [v0 locations];
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x29EDCA190];
  }

  if (v2 < 0)
  {
    v13 = v2;
  }

  else
  {
    v13 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = MEMORY[0x29C2AB660](v13);
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v14 = MEMORY[0x29EDCA190];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x29C2AB5E0](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      [v7 doubleValue];
      v10 = v9;

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v14 + 16) = v12 + 1;
      *(v14 + 8 * v12 + 32) = v10;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MKGradientPolylineRenderer.setColors(_:locations:)(Swift::OpaquePointer _, Swift::OpaquePointer locations)
{
  v3 = *(locations._rawValue + 2);
  if (v3)
  {
    v10 = MEMORY[0x29EDCA190];
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = (locations._rawValue + 32);
    do
    {
      v6 = *v5++;
      [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithDouble_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *(v10 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for UIColor, 0x29EDC7A00);
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x29EDBA070);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:isa atLocations:v9];
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2, uint64_t *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
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

id one-time initialization function for MKCoordinateSpanInNSValueObjCType()
{
  v0 = [objc_opt_self() valueWithMKCoordinateSpan_];
  v1 = [v0 objCType];
  result = v0;
  MKCoordinateSpanInNSValueObjCType = v1;
  return result;
}

NSValue __swiftcall MKCoordinateSpan._bridgeToObjectiveC()()
{
  v2 = [objc_opt_self() valueWithMKCoordinateSpan_];

  return v2;
}

id static MKCoordinateSpan._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  result = strcmp(v4, MKCoordinateSpanInNSValueObjCType);
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 MKCoordinateSpanValue];
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL static MKCoordinateSpan._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = strcmp(v4, MKCoordinateSpanInNSValueObjCType);
  v6 = 0uLL;
  if (!v5)
  {
    [a1 MKCoordinateSpanValue];
    *(&v6 + 1) = v7;
  }

  result = v5 == 0;
  *a2 = v6;
  *(a2 + 16) = v5 != 0;
  return result;
}

id static MKCoordinateSpan._unconditionallyBridgeFromObjectiveC(_:)(id result)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  v2 = [result objCType];
  if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
  {
    v3 = v2;
    swift_once();
    v2 = v3;
  }

  result = strcmp(v2, MKCoordinateSpanInNSValueObjCType);
  if (result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  return [v1 MKCoordinateSpanValue];
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance MKCoordinateSpan()
{
  v1 = [objc_opt_self() valueWithMKCoordinateSpan_];

  return v1;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance MKCoordinateSpan(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  result = strcmp(v4, MKCoordinateSpanInNSValueObjCType);
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 MKCoordinateSpanValue];
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
  }

  return result;
}

BOOL protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance MKCoordinateSpan(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  v5 = strcmp(v4, MKCoordinateSpanInNSValueObjCType);
  v6 = 0uLL;
  if (!v5)
  {
    [a1 MKCoordinateSpanValue];
    *(&v6 + 1) = v7;
  }

  result = v5 == 0;
  *a2 = v6;
  *(a2 + 16) = v5 != 0;
  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance MKCoordinateSpan@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = [result objCType];
    if (one-time initialization token for MKCoordinateSpanInNSValueObjCType != -1)
    {
      v7 = v4;
      swift_once();
      v4 = v7;
    }

    result = strcmp(v4, MKCoordinateSpanInNSValueObjCType);
    if (!result)
    {
      result = [v2 MKCoordinateSpanValue];
      *a2 = v5;
      a2[1] = v6;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id static MKMapItemDetailSelectionAccessoryPresentationStyle.automatic(presentationViewController:)(uint64_t a1)
{
  v1 = [objc_opt_self() automaticWithPresentationViewController_];

  return v1;
}

id static MKMapItemDetailSelectionAccessoryPresentationStyle.callout(_:)(uint64_t a1)
{
  v1 = [objc_opt_self() calloutWithCalloutStyle_];

  return v1;
}

uint64_t PlaceDescriptor.init(item:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaceDescriptor.SupportingPlaceRepresentation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for PlaceDescriptor.PlaceRepresentation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8]();
  v13 = (&v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 isCurrentLocation])
  {

    v14 = type metadata accessor for PlaceDescriptor();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }

  v57 = v8;
  v58 = v5;
  v59 = v4;
  v60 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV0F14RepresentationOGMd, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV0F14RepresentationOGMR);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v55 = *(v10 + 72);
  v18 = swift_allocObject();
  v56 = xmmword_299AFE7B0;
  *(v18 + 16) = xmmword_299AFE7B0;
  v54 = v17;
  v19 = (v18 + v17);
  [a1 _coordinate];
  *v19 = v20;
  v19[1] = v21;
  v22 = *MEMORY[0x29EDBA1B0];
  v53 = *(v10 + 104);
  v53(v19, v22, v9);
  v23 = [a1 _geoAddress];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 formattedAddressLines];

    if (v25)
    {
      v61 = 0;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      v26 = v61;
      if (v61)
      {
        goto LABEL_10;
      }
    }
  }

  v27 = [a1 placemark];
  v28 = [v27 formattedAddressLines];

  if (!v28)
  {
LABEL_12:
    v31 = 0xE000000000000000;
    goto LABEL_13;
  }

  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = specialized _arrayConditionalCast<A, B>(_:)(v29);

  if (!v26)
  {
    v28 = 0;
    goto LABEL_12;
  }

LABEL_10:
  v61 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v28 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

LABEL_13:
  if (String.count.getter() < 1)
  {
  }

  else
  {
    *v13 = v28;
    v13[1] = v31;
    v53(v13, *MEMORY[0x29EDBA1C0], v9);
    v33 = *(v18 + 16);
    v32 = *(v18 + 24);
    if (v33 >= v32 >> 1)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV0F14RepresentationOGMd, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV0F14RepresentationOGMR, MEMORY[0x29EDBA1C8]);
    }

    *(v18 + 16) = v33 + 1;
    (*(v10 + 32))(v18 + v54 + v33 * v55, v13, v9);
  }

  v34 = [a1 identifier];
  if (v34)
  {
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v56;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x8000000299AFEB20;
    v37 = [v35 identifierString];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    *(inited + 48) = v38;
    *(inited + 56) = v40;
    v41 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, String)(inited + 32);
    v43 = v57;
    v42 = v58;
    *v57 = v41;
    v44 = v59;
    (*(v42 + 104))(v43, *MEMORY[0x29EDBA1A0], v59);
    v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x29EDCA190], &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV010SupportingF14RepresentationOGMd, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV010SupportingF14RepresentationOGMR, MEMORY[0x29EDBA1A8]);
    v47 = v45[2];
    v46 = v45[3];
    if (v47 >= v46 >> 1)
    {
      v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v46 > 1, v47 + 1, 1, v45, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV010SupportingF14RepresentationOGMd, &_ss23_ContiguousArrayStorageCy10GeoToolbox15PlaceDescriptorV010SupportingF14RepresentationOGMR, MEMORY[0x29EDBA1A8]);
    }

    v45[2] = v47 + 1;
    (*(v42 + 32))(v45 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v47, v43, v44);
  }

  v48 = [a1 name];
  if (v48)
  {
    v49 = v48;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v50 = v60;
  PlaceDescriptor.init(representations:commonName:supportingRepresentations:)();

  v51 = type metadata accessor for PlaceDescriptor();
  return (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x29EDCA190];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo51GEOPlaceDescriptorResolutionParametersPreferredTypeVGMd, &_ss23_ContiguousArrayStorageCySo51GEOPlaceDescriptorResolutionParametersPreferredTypeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
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
    v10 = MEMORY[0x29EDCA190];
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t outlined destroy of (String, String)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  v0 = *(*(type metadata accessor for _Glass._GlassVariant() - 8) + 64);
  MEMORY[0x2A1C7C4A8]();
  static _Glass._GlassVariant.regular.getter();
  v1[3] = type metadata accessor for _Glass();
  v1[4] = MEMORY[0x29EDC7878];
  __swift_allocate_boxed_opaque_existential_1(v1);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

void @objc UIView.clearGlassBackground()(void *a1)
{
  v1 = a1;
  UIView._background.setter();
}

char *MKMultiPoint.locations(at:)@<X0>(NSIndexSet *a1@<X8>)
{
  v2 = v1;
  IndexSet._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = [v2 locationsAtPointIndexes_];

  type metadata accessor for NSNumber();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x29EDCA190];
  }

  if (v6 < 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = MEMORY[0x29C2AB660](v17);
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_3:
  v18 = MEMORY[0x29EDCA190];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v18;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x29C2AB5E0](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      [v11 doubleValue];
      v14 = v13;

      v16 = *(v18 + 16);
      v15 = *(v18 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      ++v9;
      *(v18 + 16) = v16 + 1;
      *(v18 + 8 * v16 + 32) = v14;
    }

    while (v7 != v9);

    return v10;
  }

  __break(1u);
  return result;
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

uint64_t one-time initialization function for mapItemRequest()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.mapItemRequest);
  __swift_project_value_buffer(v0, static Logger.mapItemRequest);
  return Logger.init(subsystem:category:)();
}

uint64_t PlaceDescriptor.descriptorResolutionParameters.getter()
{
  v84 = type metadata accessor for Mirror();
  v0 = *(v84 - 8);
  v1 = *(v0 + 64);
  (MEMORY[0x2A1C7C4A8])();
  v83 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PlaceDescriptor.PlaceRepresentation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x2A1C7C4A8])();
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v77 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x29EDC14C8]) init];
  v12 = PlaceDescriptor.commonName.getter();
  if (v13)
  {
    v14 = MEMORY[0x29C2AB4E0](v12);
  }

  else
  {
    v14 = 0;
  }

  [v11 setPlaceNameHint_];

  v15 = PlaceDescriptor.coordinate.getter();
  if ((v17 & 1) == 0)
  {
    v18 = [objc_allocWithZone(MEMORY[0x29EDC14C0]) initWithLatitude:*&v15 longitude:v16];
    [v11 setLocation_];
  }

  v19 = PlaceDescriptor.address.getter();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_299AFE7B0;
    *(v23 + 32) = v21;
    *(v23 + 40) = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setFormattedAddress_];
  }

  result = PlaceDescriptor.representations.getter();
  v27 = result;
  v94 = *(result + 16);
  if (v94)
  {
    v78 = v11;
    v28 = 0;
    v93 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v95 = v4 + 16;
    v92 = v4 + 88;
    v91 = *MEMORY[0x29EDBA1C0];
    v88 = *MEMORY[0x29EDBA1B0];
    v87 = *MEMORY[0x29EDBA1B8];
    v82 = (v0 + 8);
    v29 = (v4 + 8);
    v30 = MEMORY[0x29EDCA190];
    *&v26 = 136446210;
    v77 = v26;
    v89 = (v4 + 8);
    v81 = v3;
    v90 = v4;
    v85 = v8;
    v80 = v10;
    v86 = result;
    while (1)
    {
      if (v28 >= *(v27 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v32 = *(v4 + 16);
      v32(v10, v93 + *(v4 + 72) * v28, v3);
      v32(v8, v10, v3);
      v33 = (*(v4 + 88))(v8, v3);
      if (v33 == v91)
      {
        v34 = *v29;
        v35 = v8;
        (*v29)(v8, v3);
        v36 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
        }

        v38 = *(v30 + 2);
        v37 = *(v30 + 3);
        if (v38 >= v37 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v30);
        }

        v29 = v89;
        result = v34(v10, v3);
        *(v30 + 2) = v38 + 1;
        *&v30[4 * v38 + 32] = 2;
        v27 = v36;
        v8 = v35;
        v4 = v90;
      }

      else
      {
        if (v33 == v88)
        {
          goto LABEL_22;
        }

        if (v33 == v87)
        {
          (*v29)(v8, v3);
LABEL_22:
          v39 = *(v30 + 2);
          v40 = v39;
          v41 = 32;
          while (v40)
          {
            v42 = *&v30[v41];
            v41 += 4;
            --v40;
            if (v42 == 1)
            {
              result = (*v29)(v10, v3);
              goto LABEL_11;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39 + 1, 1, v30);
          }

          v44 = *(v30 + 2);
          v43 = *(v30 + 3);
          if (v44 >= v43 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v30);
          }

          result = (*v29)(v10, v3);
          *(v30 + 2) = v44 + 1;
          *&v30[4 * v44 + 32] = 1;
          goto LABEL_11;
        }

        v96[3] = v3;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v96);
        v32(boxed_opaque_existential_1, v10, v3);
        v46 = v83;
        Mirror.init(reflecting:)();
        v47 = Mirror.children.getter();
        (*v82)(v46, v84);
        v48 = v47[2];
        v49 = v47[3];
        v51 = v47[4];
        v50 = v47[5];
        swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v52 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        result = dispatch thunk of _AnyIndexBox._typeID.getter();
        if (v52 != result)
        {
          goto LABEL_53;
        }

        v53 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v53)
        {

          v3 = v81;
          v4 = v90;
          v8 = v85;
          v27 = v86;
        }

        else
        {
          dispatch thunk of _AnyCollectionBox.subscript.getter();

          v55 = v97[0];
          v54 = v97[1];
          __swift_destroy_boxed_opaque_existential_0(v98);
          v3 = v81;
          v4 = v90;
          v8 = v85;
          v27 = v86;
          if (v54)
          {
            if (one-time initialization token for mapItemRequest != -1)
            {
              swift_once();
            }

            v56 = type metadata accessor for Logger();
            __swift_project_value_buffer(v56, static Logger.mapItemRequest);

            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.info.getter();

            v59 = os_log_type_enabled(v57, v58);
            v60 = v89;
            v79 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            if (v59)
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v97[0] = v62;
              *v61 = v77;
              v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v97);

              *(v61 + 4) = v63;
              _os_log_impl(&dword_299AF9000, v57, v58, "Unknown place representation type: %{public}s", v61, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v62);
              v64 = v62;
              v8 = v85;
              MEMORY[0x29C2ABA10](v64, -1, -1);
              v65 = v61;
              v4 = v90;
              MEMORY[0x29C2ABA10](v65, -1, -1);
            }

            else
            {
            }

            v71 = *v60;
            v10 = v80;
            (*v60)(v80, v3);
            v29 = v60;
            result = (v71)(v8, v3);
            v27 = v86;
            goto LABEL_11;
          }
        }

        if (one-time initialization token for mapItemRequest != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        __swift_project_value_buffer(v66, static Logger.mapItemRequest);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.info.getter();
        v69 = os_log_type_enabled(v67, v68);
        v10 = v80;
        if (v69)
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_299AF9000, v67, v68, "Unknown place representation type", v70, 2u);
          MEMORY[0x29C2ABA10](v70, -1, -1);
        }

        v29 = v89;
        v31 = *v89;
        (*v89)(v10, v3);
        result = (v31)(v8, v3);
      }

LABEL_11:
      if (++v28 == v94)
      {

        v11 = v78;
        v72 = *(v30 + 2);
        if (!v72)
        {
          goto LABEL_50;
        }

LABEL_46:
        v73 = v11;
        v97[0] = MEMORY[0x29EDCA190];
        specialized ContiguousArray.reserveCapacity(_:)();
        v74 = 32;
        do
        {
          [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInt_];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v75 = *(v97[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v74 += 4;
          --v72;
        }

        while (v72);

        type metadata accessor for NSNumber();
        v76 = Array._bridgeToObjectiveC()().super.isa;

        v11 = v73;
        [v73 setPreferredTypes_];

        return v11;
      }
    }
  }

  v30 = MEMORY[0x29EDCA190];
  v72 = *(MEMORY[0x29EDCA190] + 16);
  if (v72)
  {
    goto LABEL_46;
  }

LABEL_50:

  return v11;
}

id _MKMapItemRequestSwiftExtensions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _MKMapItemRequestSwiftExtensions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MKMapItemRequest.init(placeDescriptor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = &v27 - v4;
  v6._object = 0x8000000299AFEB20;
  v6._countAndFlagsBits = 0xD000000000000010;
  v7 = PlaceDescriptor.serviceIdentifier(for:)(v6);
  if (v7.value._object && (v8 = objc_allocWithZone(MEMORY[0x29EDBB288]), v9 = MEMORY[0x29C2AB4E0](v7.value._countAndFlagsBits, v7.value._object), , v10 = [v8 initWithIdentifierString_], v9, v10))
  {
    v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v11 = type metadata accessor for PlaceDescriptor();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v5, a1, v11);
    v13 = *(v12 + 56);
    v13(v5, 0, 1, v11);
    v14 = type metadata accessor for _MKMapItemRequestSwiftExtensions();
    v15 = objc_allocWithZone(v14);
    v16 = OBJC_IVAR____TtC6MapKit32_MKMapItemRequestSwiftExtensions_placeDescriptor;
    v13(&v15[OBJC_IVAR____TtC6MapKit32_MKMapItemRequestSwiftExtensions_placeDescriptor], 1, 1, v11);
    swift_beginAccess();
    outlined assign with copy of PlaceDescriptor?(v5, &v15[v16]);
    swift_endAccess();
    v28.receiver = v15;
    v28.super_class = v14;
    v17 = objc_msgSendSuper2(&v28, sel_init);
    outlined destroy of PlaceDescriptor?(v5);
    v18 = [v27 initWithInternalSwiftExtensions:v17 mapItemIdentifier:v10];
  }

  else
  {
    v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v11 = type metadata accessor for PlaceDescriptor();
    v20 = *(v11 - 8);
    (*(v20 + 16))(v5, a1, v11);
    v21 = *(v20 + 56);
    v21(v5, 0, 1, v11);
    v22 = type metadata accessor for _MKMapItemRequestSwiftExtensions();
    v23 = objc_allocWithZone(v22);
    v24 = OBJC_IVAR____TtC6MapKit32_MKMapItemRequestSwiftExtensions_placeDescriptor;
    v21(&v23[OBJC_IVAR____TtC6MapKit32_MKMapItemRequestSwiftExtensions_placeDescriptor], 1, 1, v11);
    swift_beginAccess();
    outlined assign with copy of PlaceDescriptor?(v5, &v23[v24]);
    swift_endAccess();
    v29.receiver = v23;
    v29.super_class = v22;
    v10 = objc_msgSendSuper2(&v29, sel_init);
    outlined destroy of PlaceDescriptor?(v5);
    v17 = PlaceDescriptor.descriptorResolutionParameters.getter();
    v18 = [v19 initWithInternalSwiftExtensions:v10 descriptorResolutionParameters:v17];
  }

  v25 = v18;

  type metadata accessor for PlaceDescriptor();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v25;
}

uint64_t type metadata accessor for _MKMapItemRequestSwiftExtensions()
{
  result = type metadata singleton initialization cache for _MKMapItemRequestSwiftExtensions;
  if (!type metadata singleton initialization cache for _MKMapItemRequestSwiftExtensions)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined assign with copy of PlaceDescriptor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PlaceDescriptor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MKMapItemRequest.placeDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 internalSwiftExtensions])
  {
    type metadata accessor for _MKMapItemRequestSwiftExtensions();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = OBJC_IVAR____TtC6MapKit32_MKMapItemRequestSwiftExtensions_placeDescriptor;
      v5 = v3;
      swift_beginAccess();
      outlined init with copy of PlaceDescriptor?(v5 + v4, a1);
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v7 = type metadata accessor for PlaceDescriptor();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, 1, 1, v7);
}

uint64_t outlined init with copy of PlaceDescriptor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata completion function for _MKMapItemRequestSwiftExtensions()
{
  type metadata accessor for PlaceDescriptor?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for PlaceDescriptor?()
{
  if (!lazy cache variable for type metadata for PlaceDescriptor?)
  {
    type metadata accessor for PlaceDescriptor();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlaceDescriptor?);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
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
  __swift_destroy_boxed_opaque_existential_0(v11);
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

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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

Swift::String_optional __swiftcall PlaceDescriptor.serviceIdentifier(for:)(Swift::String a1)
{
  v1 = MEMORY[0x2A1C5B4B0](a1._countAndFlagsBits, a1._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}