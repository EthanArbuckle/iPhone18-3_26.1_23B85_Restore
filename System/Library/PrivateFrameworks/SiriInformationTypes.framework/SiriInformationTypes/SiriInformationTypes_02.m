uint64_t VocabularyResult.personaId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId + 8);

  return v1;
}

uint64_t VocabularyResult.siriSharedUserIdentifier.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t VocabularyResult.siriSharedUserIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t VocabularyResult.fieldType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

id VocabularyResult.__allocating_init(appId:itemId:itemType:fieldTypes:score:spanBegin:spanEnd:semanticValue:fields:userId:personaId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v24 = objc_allocWithZone(v16);
  v25 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_siriSharedUserIdentifier];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_iTunesAltDSID];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId];
  *v27 = a1;
  *(v27 + 1) = a2;
  v28 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId];
  *v28 = a3;
  *(v28 + 1) = a4;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemType] = a5;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes] = a6;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_score] = a9;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanBegin] = a7;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanEnd] = a8;
  v29 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue];
  *v29 = a10;
  *(v29 + 1) = a11;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields] = a12;
  v30 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId];
  *v30 = a13;
  *(v30 + 1) = a14;
  v31 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId];
  *v31 = a15;
  *(v31 + 1) = a16;
  v35.receiver = v24;
  v35.super_class = v16;
  return objc_msgSendSuper2(&v35, sel_init);
}

id VocabularyResult.init(appId:itemId:itemType:fieldTypes:score:spanBegin:spanEnd:semanticValue:fields:userId:personaId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_siriSharedUserIdentifier];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_iTunesAltDSID];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId];
  *v20 = a3;
  *(v20 + 1) = a4;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemType] = a5;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes] = a6;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_score] = a9;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanBegin] = a7;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanEnd] = a8;
  v21 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue];
  *v21 = a10;
  *(v21 + 1) = a11;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields] = a12;
  v22 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId];
  *v22 = a13;
  *(v22 + 1) = a14;
  v23 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId];
  *v23 = a15;
  *(v23 + 1) = a16;
  v25.receiver = v16;
  v25.super_class = type metadata accessor for VocabularyResult();
  return objc_msgSendSuper2(&v25, sel_init);
}

char *VocabularyResult.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_siriSharedUserIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_iTunesAltDSID];
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *v5 = 0;
  v5[1] = 0;
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v8)
  {

LABEL_20:
LABEL_25:
    v39 = v4[1];

    v40 = v5[1];

    type metadata accessor for VocabularyResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = v8;
  v10 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v11)
  {

    goto LABEL_20;
  }

  v84 = v7;
  v85 = v9;
  v82 = v4;
  v83 = v11;
  v81 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DC64ED70;
  v13 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v12 + 32) = v13;
  *(v12 + 40) = v10;
  NSCoder.decodeObject(of:forKey:)();

  if (!v90)
  {

    outlined destroy of Any?(v89);
LABEL_24:
    v4 = v82;
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_24;
  }

  v14 = v88[0];
  v15 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v15)
  {

    goto LABEL_24;
  }

  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DC64ED70;
  *(v17 + 32) = v13;
  *(v17 + 40) = type metadata accessor for VocabularyField();
  NSCoder.decodeObject(of:forKey:)();

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = &v2[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId];
  *v19 = v18;
  v19[1] = v20;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = &v2[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId];
  *v22 = v21;
  v22[1] = v23;
  v24 = v83;
  v25 = [v83 unsignedShortValue];
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemType] = v25;
  v26 = v14;
  if (v14 >> 62)
  {
    if (v14 >= 0)
    {
      v26 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v27 = MEMORY[0x1E1299770](v26);
    v78 = v16;
    v79 = v2;
    if (v27)
    {
      goto LABEL_9;
    }

LABEL_29:

    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v27 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v78 = v16;
  v79 = v2;
  if (!v27)
  {
    goto LABEL_29;
  }

LABEL_9:
  v80 = a1;
  v88[0] = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
    __break(1u);
    return result;
  }

  v29 = 0;
  v30 = v88[0];
  v31 = v14;
  v32 = v14 & 0xC000000000000001;
  v33 = v14;
  do
  {
    if (v32)
    {
      v34 = MEMORY[0x1E12996A0](v29, v31);
    }

    else
    {
      v34 = *(v31 + 8 * v29 + 32);
    }

    v35 = v34;
    v36 = [v34 unsignedShortValue];

    v88[0] = v30;
    v38 = *(v30 + 16);
    v37 = *(v30 + 24);
    if (v38 >= v37 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
      v30 = v88[0];
    }

    ++v29;
    *(v30 + 16) = v38 + 1;
    *(v30 + 2 * v38 + 32) = v36;
    v31 = v33;
  }

  while (v27 != v29);

  v24 = v83;
  a1 = v80;
LABEL_30:
  *&v79[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes] = v30;
  v41 = MEMORY[0x1E1299430](0x65726F6373, 0xE500000000000000);
  [a1 decodeFloatForKey_];
  v43 = v42;

  *&v79[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_score] = v43;
  v44 = MEMORY[0x1E1299430](0x696765426E617073, 0xE90000000000006ELL);
  v45 = [a1 decodeIntegerForKey_];

  *&v79[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanBegin] = v45;
  v46 = MEMORY[0x1E1299430](0x646E456E617073, 0xE700000000000000);
  v47 = [a1 decodeIntegerForKey_];

  *&v79[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanEnd] = v47;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = &v79[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue];
  *v49 = v48;
  v49[1] = v50;
  outlined init with copy of Any?(v89, v88);
  if (v88[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch15VocabularyFieldCGMd, &_sSay21SiriInformationSearch15VocabularyFieldCGMR);
    v51 = swift_dynamicCast();
    v52 = v87;
    if (!v51)
    {
      v52 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(v88);
    v52 = 0;
  }

  *&v79[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields] = v52;
  v53 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v53)
  {
    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v58 = &v79[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId];
  *v58 = v55;
  v58[1] = v57;
  v59 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v59)
  {
    v60 = v59;
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v64 = &v79[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId];
  *v64 = v61;
  v64[1] = v63;
  v65 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v65)
  {
    v66 = v65;
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  swift_beginAccess();
  v70 = v81[1];
  *v81 = v67;
  v81[1] = v69;

  v71 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v71)
  {
    v72 = v71;
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    outlined destroy of Any?(v89);
  }

  else
  {
    outlined destroy of Any?(v89);

    v73 = 0;
    v75 = 0;
  }

  swift_beginAccess();
  v76 = v82[1];
  *v82 = v73;
  v82[1] = v75;

  v86.receiver = v79;
  v86.super_class = type metadata accessor for VocabularyResult();
  v77 = objc_msgSendSuper2(&v86, sel_init);

  return v77;
}

Swift::Void __swiftcall VocabularyResult.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = MEMORY[0x1E1299430](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId + 8));
  v5 = MEMORY[0x1E1299430](0x6449707061, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId + 8));
  v7 = MEMORY[0x1E1299430](0x64496D657469, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  v9 = MEMORY[0x1E1299430](0x657079546D657469, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

  v10 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes);
  v11 = *(v10 + 16);
  if (v11)
  {
    v41 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = (v10 + 32);
    do
    {
      v13 = *v12++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = *(v41 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v11;
    }

    while (v11);
  }

  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = MEMORY[0x1E1299430](0x707954646C656966, 0xEA00000000007365);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v16];

  v17 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_score);
  v18 = MEMORY[0x1E1299430](0x65726F6373, 0xE500000000000000);
  LODWORD(v19) = v17;
  [(objc_class *)with.super.isa encodeFloat:v18 forKey:v19];

  v20 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanBegin);
  v21 = MEMORY[0x1E1299430](0x696765426E617073, 0xE90000000000006ELL);
  [(objc_class *)with.super.isa encodeInteger:v20 forKey:v21];

  v22 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanEnd);
  v23 = MEMORY[0x1E1299430](0x646E456E617073, 0xE700000000000000);
  [(objc_class *)with.super.isa encodeInteger:v22 forKey:v23];

  v24 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue + 8));
  v25 = MEMORY[0x1E1299430](0x6369746E616D6573, 0xED000065756C6156);
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];

  v26 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields);
  if (v26)
  {
    type metadata accessor for VocabularyField();
    v26 = Array._bridgeToObjectiveC()().super.isa;
  }

  v27 = MEMORY[0x1E1299430](0x73646C656966, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId + 8))
  {
    v28 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId));
    v29 = MEMORY[0x1E1299430](0x644972657375, 0xE600000000000000);
    [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];
  }

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId + 8))
  {
    v30 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId));
    v31 = MEMORY[0x1E1299430](0x49616E6F73726570, 0xE900000000000064);
    [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];
  }

  v32 = MEMORY[0x1E69E7D40];
  v33 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC0))();
  if (v34)
  {
    v35 = MEMORY[0x1E1299430](v33);

    v36 = MEMORY[0x1E1299430](0xD000000000000018, 0x80000001DC652280);
    [(objc_class *)with.super.isa encodeObject:v35 forKey:v36];
  }

  v37 = (*((*v32 & *v2) + 0xD8))(v33);
  if (v38)
  {
    v39 = MEMORY[0x1E1299430](v37);

    v40 = MEMORY[0x1E1299430](0x6C4173656E755469, 0xED00004449534474);
    [(objc_class *)with.super.isa encodeObject:v39 forKey:v40];
  }
}

id @objc VocabularyField.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x1E1299430](v5, v7);

  return v8;
}

char *VocabularyResult.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(205);
  MEMORY[0x1E1299490](0xD000000000000017, 0x80000001DC6522A0);
  MEMORY[0x1E1299490](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId + 8));
  MEMORY[0x1E1299490](0x64496D657469202CLL, 0xE90000000000003DLL);
  MEMORY[0x1E1299490](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId + 8));
  MEMORY[0x1E1299490](0x79546D657469202CLL, 0xEB000000003D6570);
  v2 = UInt16.cascadeDescription.getter(*(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemType));
  MEMORY[0x1E1299490](v2);

  MEMORY[0x1E1299490](0x54646C656966202CLL, 0xEE005B3D73657079);
  v57 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes);
  v4 = *(v3 + 16);
  if (v4)
  {
    v58 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    type metadata accessor for NSArray(0, &lazy cache variable for type metadata for CCTypeIdentifierRegistry, 0x1E69AA778);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = (v3 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      if (([ObjCClassFromMetadata isValidItemType_] & 1) != 0 || objc_msgSend(ObjCClassFromMetadata, sel_isValidFieldType_, v7))
      {
        v9 = [ObjCClassFromMetadata descriptionForTypeIdentifier_];
        if (v9)
        {
          v10 = v9;
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;
        }

        else
        {
          v13 = 0xE700000000000000;
          v11 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        lazy protocol witness table accessor for type UInt16 and conformance UInt16();
        v11 = BinaryInteger.description.getter();
        v13 = v14;
      }

      v16 = *(v58 + 16);
      v15 = *(v58 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      }

      *(v58 + 16) = v16 + 1;
      v17 = v58 + 16 * v16;
      *(v17 + 32) = v11;
      *(v17 + 40) = v13;
      --v4;
    }

    while (v4);
  }

  v18 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  MEMORY[0x1E1299490](v19, v21);

  MEMORY[0x1E1299490](0x65726F6373202C5DLL, 0xE90000000000003DLL);
  v22 = *(v57 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_score);
  Float.write<A>(to:)();
  MEMORY[0x1E1299490](0x7B3D6E617073202CLL, 0xE800000000000000);
  v59 = *(v57 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanBegin);
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E1299490](v23);

  MEMORY[0x1E1299490](8236, 0xE200000000000000);
  v60 = *(v57 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanEnd);
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1E1299490](v24);

  MEMORY[0x1E1299490](0xD000000000000012, 0x80000001DC6522C0);
  MEMORY[0x1E1299490](*(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue), *(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue + 8));
  MEMORY[0x1E1299490](0x646C656966202C22, 0xEB000000005B3D73);
  v25 = *(v57 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields);
  if (v25)
  {
    if (v25 >> 62)
    {
      if (v25 >= 0)
      {
        v56 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v56 = *(v57 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields);
      }

      v26 = MEMORY[0x1E1299770](v56);
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v26)
    {
      v61 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
      if (v26 < 0)
      {
        __break(1u);
        return result;
      }

      v28 = 0;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1E12996A0](v28, v25);
        }

        else
        {
          v29 = *(v25 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = [v29 description];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v36 = *(v61 + 16);
        v35 = *(v61 + 24);
        if (v36 >= v35 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        }

        ++v28;
        *(v61 + 16) = v36 + 1;
        v37 = v61 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
      }

      while (v26 != v28);
      v18 = v57;
    }

    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v39;
  }

  else
  {
    v40 = 0xE300000000000000;
    v38 = 7104878;
  }

  MEMORY[0x1E1299490](v38, v40);

  MEMORY[0x1E1299490](0x4972657375202C5DLL, 0xEB00000000223D64);
  if (*(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId + 8))
  {
    v41 = *(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId);
    v42 = *(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId + 8);
  }

  else
  {
    v42 = 0xE300000000000000;
    v41 = 7104878;
  }

  MEMORY[0x1E1299490](v41, v42);

  MEMORY[0x1E1299490](0x6F73726570202C22, 0xEE00223D6449616ELL);
  if (*(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId + 8))
  {
    v43 = *(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId);
    v44 = *(v18 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId + 8);
  }

  else
  {
    v44 = 0xE300000000000000;
    v43 = 7104878;
  }

  MEMORY[0x1E1299490](v43, v44);

  v45 = MEMORY[0x1E1299490](0xD000000000000012, 0x80000001DC6522E0);
  v46 = *v18;
  v47 = v18;
  v48 = MEMORY[0x1E69E7D40];
  v49 = (*((*MEMORY[0x1E69E7D40] & v46) + 0xD8))(v45);
  if (v50)
  {
    v51 = v50;
  }

  else
  {
    v49 = 7104878;
    v51 = 0xE300000000000000;
  }

  MEMORY[0x1E1299490](v49, v51);

  v52 = MEMORY[0x1E1299490](0xD00000000000001DLL, 0x80000001DC652300);
  v53 = (*((*v48 & *v47) + 0xC0))(v52);
  if (v54)
  {
    v55 = v54;
  }

  else
  {
    v53 = 7104878;
    v55 = 0xE300000000000000;
  }

  MEMORY[0x1E1299490](v53, v55);

  MEMORY[0x1E1299490](32034, 0xE200000000000000);
  return 0;
}

id VocabularyField.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized VocabularyField.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v4)
  {
    v5 = v4;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v6 = &v2[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = MEMORY[0x1E1299430](0x707954646C656966, 0xE900000000000065);
  v8 = [a1 decodeIntegerForKey_];

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(v8 >> 16))
  {
    *&v2[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_fieldType] = v8;
    v9.receiver = v2;
    v9.super_class = type metadata accessor for VocabularyField();
    objc_msgSendSuper2(&v9, sel_init);
    return;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type UInt16 and conformance UInt16()
{
  result = lazy protocol witness table cache variable for type UInt16 and conformance UInt16;
  if (!lazy protocol witness table cache variable for type UInt16 and conformance UInt16)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt16 and conformance UInt16);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t DeviceExpertExperience.deviceExpertClientComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SiriInformationTypes22DeviceExpertExperience_deviceExpertClientComponent;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id DeviceExpertExperience.__allocating_init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v32 = a4;
  v36 = a3;
  v38 = a1;
  v39 = a2;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v34 = *(v13 - 8);
  v14 = v34;
  v15 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(v6);
  v19 = OBJC_IVAR____TtC20SiriInformationTypes22DeviceExpertExperience_deviceExpertClientComponent;
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v20 = *(v35 - 8);
  (*(v20 + 16))(&v18[v19], a3, v35);
  v21 = *(v14 + 16);
  v22 = v13;
  v21(v17, a4, v13);
  v23 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v24 = v33;
  v25 = v37;
  (*(v10 + 104))(v33, *MEMORY[0x1E69BCBD8], v37);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v26 = &v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v21(&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v22);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v23;
  (*(v10 + 16))(&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v24, v25);
  v28 = type metadata accessor for Experience(0);
  v40.receiver = v18;
  v40.super_class = v28;
  v29 = objc_msgSendSuper2(&v40, sel_init);
  v30 = *(v34 + 8);
  v30(v32, v22);
  (*(v20 + 8))(v36, v35);
  (*(v10 + 8))(v24, v25);
  v30(v17, v22);
  return v29;
}

id DeviceExpertExperience.init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v33 = a4;
  v36 = a3;
  v37 = a1;
  v38 = a2;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC20SiriInformationTypes22DeviceExpertExperience_deviceExpertClientComponent;
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v17 = *(v35 - 8);
  (*(v17 + 16))(&v5[v16], a3, v35);
  v18 = v12[2];
  v19 = v11;
  v18(v15, a4, v11);
  v30 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v21 = v31;
  v20 = v32;
  v22 = v34;
  (*(v32 + 104))(v31, *MEMORY[0x1E69BCBD8], v34);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v23 = &v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v24 = v38;
  *v23 = v37;
  *(v23 + 1) = v24;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v18(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v15, v19);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v30;
  (*(v20 + 16))(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v21, v22);
  v25 = type metadata accessor for Experience(0);
  v39.receiver = v5;
  v39.super_class = v25;
  v26 = objc_msgSendSuper2(&v39, sel_init);
  v27 = v12[1];
  v27(v33, v19);
  (*(v17 + 8))(v36, v35);
  (*(v20 + 8))(v21, v22);
  v27(v15, v19);
  return v26;
}

id DeviceExpertExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSData();
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v11)
  {
    v12 = v11;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = 0;
    memset(&v22[48], 0, 32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v7 + 32))(v1 + OBJC_IVAR____TtC20SiriInformationTypes22DeviceExpertExperience_deviceExpertClientComponent, v10, v6);
    v17 = Experience.init(coder:)(a1);
    v18 = v17;

    if (v17)
    {

      return v17;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC5C3000, v14, v15, "DeviceExpertClientComponent cannot be decoded", v16, 2u);
      MEMORY[0x1E1299E70](v16, -1, -1);
    }

    type metadata accessor for DeviceExpertExperience();
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v21 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

Swift::Void __swiftcall DeviceExpertExperience.encode(with:)(NSCoder with)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v2 = Message.serializedData(partial:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v4);
  v6 = MEMORY[0x1E1299430](0xD00000000000001BLL, 0x80000001DC652440);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  Experience.encode(with:)(with);
}

uint64_t DeviceExpertExperience.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC20SiriInformationTypes22DeviceExpertExperience_deviceExpertClientComponent;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id DeviceExpertExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceExpertExperience();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DeviceExpertExperience()
{
  result = type metadata singleton initialization cache for DeviceExpertExperience;
  if (!type metadata singleton initialization cache for DeviceExpertExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent and conformance Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);
  }

  return result;
}

uint64_t type metadata completion function for DeviceExpertExperience()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PatternDrivenExperience.__allocating_init(_:queryConfidence:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E12990B0](v8);
  v13 = v12;
  v14 = Apple_Parsec_Responseframework_PatternDrivenExperience.patternComponents.getter();
  Siri_Nlu_External_UserDialogAct.init()();
  v15 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v16 = (*(v3 + 336))(v11, v13, v14, v10, v15, a2);
  v17 = type metadata accessor for Apple_Parsec_Responseframework_PatternDrivenExperience();
  (*(*(v17 - 8) + 8))(a1, v17);
  return v16;
}

uint64_t PatternDrivenExperience.__allocating_init(pluginIdentifier:components:queryConfidence:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserDialogAct.init()();
  v13 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  return (*(v4 + 336))(a1, a2, a3, v12, v13, a4);
}

uint64_t PatternDrivenExperience.__allocating_init(pluginIdentifier:components:queryConfidence:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a4, v11);
  v16 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v17 = (*(v5 + 336))(a1, a2, a3, v15, v16, a5);
  (*(v12 + 8))(a4, v11);
  return v17;
}

id PatternDrivenExperience.__allocating_init(pluginIdentifier:components:queryConfidence:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v31 = a2;
  v32 = a5;
  v30 = a1;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v17 = *(v16 - 8);
  v18 = v17[8];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(v7);
  *&v21[OBJC_IVAR____TtC21SiriInformationSearch23PatternDrivenExperience_components] = a3;
  v22 = v17[2];
  v22(v20, a4, v16);
  (*(v12 + 104))(v15, *MEMORY[0x1E69BCBD8], v11);
  *&v21[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v23 = &v21[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v24 = v31;
  *v23 = v30;
  *(v23 + 1) = v24;
  *&v21[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v22(&v21[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v20, v16);
  *&v21[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v32;
  (*(v12 + 16))(&v21[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v15, v11);
  v25 = type metadata accessor for Experience(0);
  v33.receiver = v21;
  v33.super_class = v25;
  v26 = objc_msgSendSuper2(&v33, sel_init);
  v27 = v17[1];
  v27(a4, v16);
  (*(v12 + 8))(v15, v11);
  v27(v20, v16);
  return v26;
}

id PatternDrivenExperience.init(pluginIdentifier:components:queryConfidence:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v29 = a2;
  v30 = a5;
  v28 = a1;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch23PatternDrivenExperience_components] = a3;
  v20 = v16[2];
  v20(v19, a4, v15);
  (*(v11 + 104))(v14, *MEMORY[0x1E69BCBD8], v10);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v21 = &v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v22 = v29;
  *v21 = v28;
  *(v21 + 1) = v22;
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v20(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v19, v15);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v30;
  (*(v11 + 16))(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v14, v10);
  v23 = type metadata accessor for Experience(0);
  v31.receiver = v6;
  v31.super_class = v23;
  v24 = objc_msgSendSuper2(&v31, sel_init);
  v25 = v16[1];
  v25(a4, v15);
  (*(v11 + 8))(v14, v10);
  v25(v19, v15);
  return v24;
}

id PatternDrivenExperience.init(coder:)(unint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DC64ED70;
  *(v12 + 32) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v12 + 40) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v47 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
    if (swift_dynamicCast())
    {
      v13 = v49;
      if (v49 >> 62)
      {
        if (v49 < 0)
        {
          v36 = v49;
        }

        else
        {
          v36 = v49 & 0xFFFFFFFFFFFFFF8;
        }

        v14 = MEMORY[0x1E1299770](v36);
        if (v14)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_5:
          v37 = a1;
          v38 = v1;
          v49 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
          if ((v14 & 0x8000000000000000) == 0)
          {
            a1 = 0;
            v15 = v49;
            v42 = v13;
            v43 = v13 & 0xC000000000000001;
            v39 = v13 & 0xFFFFFFFFFFFFFF8;
            v40 = v9 + 32;
            v41 = v14;
            while (1)
            {
              v3 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
                break;
              }

              if (v43)
              {
                v16 = MEMORY[0x1E12996A0](a1, v13);
              }

              else
              {
                if (a1 >= *(v39 + 16))
                {
                  goto LABEL_26;
                }

                v16 = *(v13 + 8 * a1 + 32);
              }

              v17 = v16;
              static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = 0;
              v46 = 0u;
              v47 = 0u;
              BinaryDecodingOptions.init()();
              lazy protocol witness table accessor for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent();
              Message.init(serializedData:extensions:partial:options:)();

              v49 = v15;
              v19 = *(v15 + 16);
              v18 = *(v15 + 24);
              v13 = v42;
              if (v19 >= v18 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
                v15 = v49;
              }

              *(v15 + 16) = v19 + 1;
              (*(v9 + 32))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v45, v8);
              ++a1;
              if (v3 == v41)
              {

                a1 = v37;
                v3 = v38;
                goto LABEL_33;
              }
            }

            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          __break(1u);
          swift_once();
          v27 = type metadata accessor for Logger();
          __swift_project_value_buffer(v27, static Logger.pommes);
          v28 = v2;
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            *&v46 = v32;
            *v31 = 136315138;
            swift_getErrorValue();
            v33 = Error.localizedDescription.getter();
            v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v46);

            *(v31 + 4) = v35;
            _os_log_impl(&dword_1DC5C3000, v29, v30, "PatternExperience.Component failed %s", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v32);
            MEMORY[0x1E1299E70](v32, -1, -1);
            MEMORY[0x1E1299E70](v31, -1, -1);
          }

          else
          {
          }

          a1 = v37;
          return Experience.init(coder:)(a1);
        }
      }

      v15 = MEMORY[0x1E69E7CC0];
LABEL_33:
      *(v3 + OBJC_IVAR____TtC21SiriInformationSearch23PatternDrivenExperience_components) = v15;
      return Experience.init(coder:)(a1);
    }
  }

  else
  {
    outlined destroy of Any?(&v46);
  }

  if (one-time initialization token for pommes != -1)
  {
LABEL_27:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.pommes);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DC5C3000, v21, v22, "PatternExperience failed to extract components array", v23, 2u);
    MEMORY[0x1E1299E70](v23, -1, -1);
  }

  type metadata accessor for PatternDrivenExperience();
  v24 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
  v25 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall PatternDrivenExperience.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v2 = type metadata accessor for Apple_Parsec_Responseframework_PatternComponent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v8 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch23PatternDrivenExperience_components);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v34 = (v3 + 8);
    v35 = v3 + 16;
    v29 = MEMORY[0x1E69E7CC0];
    v26 = v9 - 1;
    *&v6 = 136315138;
    v30 = v6;
    v32 = v8;
    v33 = v3;
    v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v11 = v10;
      if (v10 >= *(v8 + 16))
      {
        break;
      }

      (*(v3 + 16))(v7, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10++, v2);
      lazy protocol witness table accessor for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent();
      v12 = Message.serializedData(partial:)();
      v14 = v13;
      v15 = v12;
      (*v34)(v7, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
      }

      v17 = *(v29 + 2);
      v16 = *(v29 + 3);
      if (v17 >= v16 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v29);
        v19 = v14;
        v29 = v22;
        v18 = v15;
      }

      else
      {
        v18 = v15;
        v19 = v14;
      }

      v20 = v29;
      *(v29 + 2) = v17 + 1;
      v21 = &v20[16 * v17];
      *(v21 + 4) = v18;
      *(v21 + 5) = v19;
      v8 = v32;
      v3 = v33;
      if (v26 == v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v23 = Array._bridgeToObjectiveC()().super.isa;

    v24 = MEMORY[0x1E1299430](0x6E656E6F706D6F63, 0xEA00000000007374);
    v25 = isa;
    [(objc_class *)isa encodeObject:v23 forKey:v24];

    Experience.encode(with:)(v25);
  }
}

id PatternDrivenExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PatternDrivenExperience();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PatternDrivenExperience()
{
  result = type metadata singleton initialization cache for PatternDrivenExperience;
  if (!type metadata singleton initialization cache for PatternDrivenExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent)
  {
    type metadata accessor for Apple_Parsec_Responseframework_PatternComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Responseframework_PatternComponent and conformance Apple_Parsec_Responseframework_PatternComponent);
  }

  return result;
}

uint64_t one-time initialization function for pommes(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for vocabularyResults()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.vocabularyResults);
  __swift_project_value_buffer(v0, static Logger.vocabularyResults);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v5, static Signposter.vocabularyResults);
  __swift_project_value_buffer(v5, static Signposter.vocabularyResults);
  if (one-time initialization token for vocabularyResults != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, static Logger.vocabularyResults);
  (*(v1 + 16))(v4, v6, v0);
  return OSSignposter.init(logger:)();
}

uint64_t Logger.pommes.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t static Logger.pommes.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PommesContext.Source.CodingKeys()
{
  v1 = 0x5273757361676570;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x65446E6967756C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesContext.Source.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PommesContext.Source.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.Source.ModalityTranslatedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.Source.ModalityTranslatedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesContext.Source.PegasusResponseCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001DC651D20 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.Source.PegasusResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.Source.PegasusResponseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.Source.PluginDefinedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.Source.PluginDefinedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.Source.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.Source.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PommesContext.Source.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO17UnknownCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO17UnknownCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO28ModalityTranslatedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO28ModalityTranslatedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v29 - v9;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO23PluginDefinedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO23PluginDefinedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v32 = *(v34 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v29 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO25PegasusResponseCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO25PegasusResponseCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v31 = *(v33 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedEncodingContainerVy21SiriInformationSearch13PommesContextV6SourceO10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  v21 = v2[1];
  v30 = *v2;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = v21 >> 60;
  if (v21 >> 60 == 3)
  {
    LOBYTE(v41) = v21 >> 60;
    lazy protocol witness table accessor for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys();
    v24 = v38;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v39;
    v25 = v40;
    goto LABEL_7;
  }

  if (v23 == 7)
  {
    LOBYTE(v41) = 2;
    lazy protocol witness table accessor for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys();
    v24 = v35;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v36;
    v25 = v37;
LABEL_7:
    (*(v26 + 8))(v24, v25);
    return (*(v17 + 8))(v20, v16);
  }

  if (v23 == 11)
  {
    LOBYTE(v41) = 1;
    lazy protocol witness table accessor for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v32 + 8))(v12, v34);
  }

  else
  {
    LOBYTE(v41) = 0;
    lazy protocol witness table accessor for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = v30;
    v42 = v21;
    lazy protocol witness table accessor for type Data and conformance Data();
    v28 = v33;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v31 + 8))(v15, v28);
  }

  return (*(v17 + 8))(v20, v16);
}

uint64_t PommesContext.Source.init(from:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO17UnknownCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO17UnknownCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v58 = *(v54 - 8);
  v3 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v46 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO28ModalityTranslatedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO28ModalityTranslatedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v50 = *(v52 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v46 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO23PluginDefinedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO23PluginDefinedCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v49 = *(v53 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO25PegasusResponseCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO25PegasusResponseCodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV6SourceO10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys();
  v21 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v13;
    v47 = v10;
    v48 = 0;
    v23 = v56;
    v24 = v57;
    v25 = v58;
    v59 = v15;
    v26 = v18;
    v27 = KeyedDecodingContainer.allKeys.getter();
    v28 = (2 * *(v27 + 16)) | 1;
    v61 = v27;
    v62 = v27 + 32;
    v63 = 0;
    v64 = v28;
    v29 = specialized Collection<>.popFirst()();
    if (v29 == 4 || v63 != v64 >> 1)
    {
      v33 = type metadata accessor for DecodingError();
      swift_allocError();
      v35 = v34;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v35 = &type metadata for PommesContext.Source;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
LABEL_10:
      (*(v59 + 8))(v18, v14);
LABEL_11:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v65);
    }

    if (v29 <= 1u)
    {
      if (v29)
      {
        LOBYTE(v60) = 1;
        lazy protocol witness table accessor for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys();
        v42 = v48;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v42)
        {
          (*(v49 + 8))(v9, v53);
          (*(v59 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v32 = xmmword_1DC650140;
LABEL_18:
          *v55 = v32;
          return __swift_destroy_boxed_opaque_existential_0(v65);
        }
      }

      else
      {
        LOBYTE(v60) = 0;
        lazy protocol witness table accessor for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys();
        v30 = v48;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v30)
        {
          lazy protocol witness table accessor for type Data and conformance Data();
          v31 = v47;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v51 + 8))(v22, v31);
          (*(v59 + 8))(v18, v14);
          swift_unknownObjectRelease();
          v32 = v60;
          goto LABEL_18;
        }
      }

      goto LABEL_10;
    }

    v38 = v59;
    if (v29 == 2)
    {
      LOBYTE(v60) = 2;
      lazy protocol witness table accessor for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys();
      v39 = v26;
      v40 = v48;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = v55;
      if (!v40)
      {
        (*(v50 + 8))(v23, v52);
        (*(v38 + 8))(v39, v14);
        swift_unknownObjectRelease();
        *v41 = xmmword_1DC650130;
        return __swift_destroy_boxed_opaque_existential_0(v65);
      }

      (*(v38 + 8))(v39, v14);
      goto LABEL_11;
    }

    LOBYTE(v60) = 3;
    lazy protocol witness table accessor for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys();
    v43 = v26;
    v44 = v48;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v45 = v55;
    if (v44)
    {
      (*(v38 + 8))(v43, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v25 + 8))(v24, v54);
      (*(v38 + 8))(v43, v14);
      swift_unknownObjectRelease();
      *v45 = xmmword_1DC650120;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v65);
}

uint64_t PommesContext.init(source:domain:listenAfterSpeaking:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = type metadata accessor for PommesContext();
  v12 = v11[7];
  v13 = *MEMORY[0x1E69BCBD8];
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v14 - 8) + 104))(a5 + v12, v13, v14);
  v15 = MEMORY[0x1E69E7CC0];
  *(a5 + v11[8]) = MEMORY[0x1E69E7CC0];
  *(a5 + v11[9]) = v15;
  v16 = v11[10];
  v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  result = (*(*(v17 - 8) + 56))(a5 + v16, 1, 1, v17);
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t PommesContext.init(pegasusConversationContext:domain:listenAfterSpeaking:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a2 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1;
  }

  if (a2 >> 60 == 15)
  {
    v11 = 0x3000000000000000;
  }

  else
  {
    v11 = a2;
  }

  v12 = type metadata accessor for PommesContext();
  v13 = v12[7];
  v14 = *MEMORY[0x1E69BCBD8];
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v15 - 8) + 104))(a6 + v13, v14, v15);
  v16 = MEMORY[0x1E69E7CC0];
  *(a6 + v12[8]) = MEMORY[0x1E69E7CC0];
  *(a6 + v12[9]) = v16;
  v17 = v12[10];
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  result = (*(*(v18 - 8) + 56))(a6 + v17, 1, 1, v18);
  *a6 = v10;
  *(a6 + 8) = v11;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t PommesContext.init(pegasusConversationContext:legacyNLContext:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a3, &v30 - v12, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v14 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v13, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v30 = 0;
    v17 = 0;
  }

  else
  {
    v30 = Siri_Nlu_External_LegacyNLContext.previousDomainName.getter();
    v17 = v18;
    (*(v15 + 8))(v13, v14);
  }

  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a3, v11, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  if (v16(v11, 1, v14) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v11, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
    v19 = 0;
  }

  else
  {
    v19 = Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.getter();
    (*(v15 + 8))(v11, v14);
  }

  if (a2 >> 60 == 15)
  {
    v20 = 0;
  }

  else
  {
    v20 = v31;
  }

  if (a2 >> 60 == 15)
  {
    v21 = 0x3000000000000000;
  }

  else
  {
    v21 = a2;
  }

  v22 = type metadata accessor for PommesContext();
  v23 = v22[7];
  v24 = *MEMORY[0x1E69BCBD8];
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v25 - 8) + 104))(a4 + v23, v24, v25);
  v26 = MEMORY[0x1E69E7CC0];
  *(a4 + v22[8]) = MEMORY[0x1E69E7CC0];
  *(a4 + v22[9]) = v26;
  v27 = v22[10];
  v28 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  (*(*(v28 - 8) + 56))(a4 + v27, 1, 1, v28);
  *a4 = v20;
  *(a4 + 8) = v21;
  *(a4 + 16) = v30;
  *(a4 + 24) = v17;
  *(a4 + 32) = v19 & 1;
  PommesContext.addRenderedTexts(from:)(a3);
  return outlined destroy of ClientExperienceSignals?(a3, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
}

uint64_t PommesContext.addRenderedTexts(from:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Google_Protobuf_StringValue();
  v4 = *(v36 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v31 - v10;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, v31 - v10, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
  v12 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v11, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_LegacyNLContextVSgMR);
LABEL_10:
    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v14 = MEMORY[0x1E1299150]();
  (*(v13 + 8))(v11, v12);
  v15 = *(v14 + 16);
  if (!v15)
  {

    goto LABEL_10;
  }

  v32 = v2;
  v37 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v16 = v37;
  v18 = *(v4 + 16);
  v17 = v4 + 16;
  v19 = *(v17 + 64);
  v31[1] = v14;
  v20 = v14 + ((v19 + 32) & ~v19);
  v33 = *(v17 + 56);
  v34 = v18;
  v35 = v17;
  v21 = (v17 - 8);
  do
  {
    v22 = v36;
    v34(v7, v20, v36);
    v23 = Google_Protobuf_StringValue.value.getter();
    v25 = v24;
    (*v21)(v7, v22);
    v37 = v16;
    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
      v16 = v37;
    }

    *(v16 + 16) = v27 + 1;
    v28 = v16 + 16 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    v20 += v33;
    --v15;
  }

  while (v15);

  v2 = v32;
LABEL_11:
  v29 = v2 + *(type metadata accessor for PommesContext() + 32);
  return specialized Array.append<A>(contentsOf:)(v16);
}

uint64_t PommesContext.source.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of PommesContext.Source(v2, v3);
}

uint64_t PommesContext.domain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PommesContext.instructionIntent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PommesContext() + 28);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PommesContext.instructionIntent.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesContext() + 28);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

BOOL PommesContext.isConfirmation.getter()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(type metadata accessor for PommesContext() + 28);
  (*(v1 + 104))(v4, *MEMORY[0x1E69BCBE0], v0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent, MEMORY[0x1E69BCBE8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v1 + 8))(v4, v0);
  return v7[1] == v7[0];
}

uint64_t PommesContext.renderedTexts.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesContext() + 32));
}

uint64_t PommesContext.redactedRenderedTexts.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesContext() + 36));
}

Swift::Int __swiftcall PommesContext.contextSize()()
{
  v1 = v0[1];
  if ((v1 >> 60) <= 0xB && ((1 << (v1 >> 60)) & 0x888) != 0)
  {
    return 0;
  }

  result = *v0;
  if (v1 >> 60 == 15)
  {
    outlined copy of Data?(result, v1);
    return 0;
  }

  v4 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v4)
    {
      return BYTE6(v1);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      return HIDWORD(result) - result;
    }

    goto LABEL_17;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v6 = *(result + 16);
  v5 = *(result + 24);
  result = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall PommesContext.addRenderedTexts(_:)(Swift::OpaquePointer a1)
{
  v1 = *(type metadata accessor for PommesContext() + 32);

  specialized Array.append<A>(contentsOf:)(v2);
}

Swift::Void __swiftcall PommesContext.addRedactedRenderedTexts(_:)(Swift::OpaquePointer a1)
{
  v1 = *(type metadata accessor for PommesContext() + 36);

  specialized Array.append<A>(contentsOf:)(v2);
}

Swift::Bool __swiftcall PommesContext.isWithinMaxSize()()
{
  v1 = v0[1];
  if ((v1 >> 60) <= 0xB && ((1 << (v1 >> 60)) & 0x888) != 0)
  {
    goto LABEL_5;
  }

  v3 = *v0;
  if (v1 >> 60 == 15)
  {
    outlined copy of Data?(v3, v1);
    goto LABEL_5;
  }

  v4 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_5;
    }

    v7 = *(v3 + 16);
    v6 = *(v3 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    return v3;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  LODWORD(v5) = HIDWORD(v3) - v3;
  if (__OFSUB__(HIDWORD(v3), v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = v5;
LABEL_14:
  if (v5 > 0x10000)
  {
    LOBYTE(v3) = 0;
    return v3;
  }

LABEL_5:
  LOBYTE(v3) = 1;
  return v3;
}

uint64_t PommesContext.exportLegacyNLContext()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Google_Protobuf_StringValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v60 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_LegacyNLContext.LegacyContextSource();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v58 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_LegacyNLContext();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + 24);
  if (v20)
  {
    v56 = v12;
    v57 = v9;
    v62 = v17;
    v21 = *(v2 + 16);
    Siri_Nlu_External_LegacyNLContext.init()();
    PommesContext.convertPegasusDomainToLegacyNLDomain(pegasusDomain:)(v21, v20);
    Siri_Nlu_External_LegacyNLContext.previousDomainName.setter();
    v22 = *(v2 + 32);
    Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.setter();
    Siri_Nlu_External_LegacyNLContext.strictPrompt.setter();
    Siri_Nlu_External_LegacyNLContext.dictationPrompt.setter();
    v55 = type metadata accessor for PommesContext();
    v23 = *(v2 + *(v55 + 32));
    v24 = *(v23 + 16);
    v25 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v52[1] = v2;
      v53 = v15;
      v54 = a1;
      v63 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
      v25 = v63;
      v26 = (v23 + 40);
      do
      {
        v28 = *(v26 - 1);
        v27 = *v26;

        Google_Protobuf_StringValue.init(_:)();
        v63 = v25;
        v30 = v25[2];
        v29 = v25[3];
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
          v25 = v63;
        }

        v25[2] = v30 + 1;
        (*(v5 + 32))(v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v30, v8, v4);
        v26 += 2;
        --v24;
      }

      while (v24);
      v15 = v53;
      a1 = v54;
    }

    MEMORY[0x1E1299160](v25);
    (*(v59 + 104))(v58, *MEMORY[0x1E69D0B20], v56);
    Siri_Nlu_External_LegacyNLContext.legacyContextSource.setter();
    v31 = *(v55 + 28);
    v33 = v60;
    v32 = v61;
    v34 = v57;
    (*(v61 + 104))(v60, *MEMORY[0x1E69BCBE0], v57);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent, MEMORY[0x1E69BCBE8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v32 + 8))(v33, v34);
    if (v63 == v64)
    {
      MEMORY[0x1E12991E0](&outlined read-only object #0 of PommesContext.exportLegacyNLContext());
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.pommes);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = a1;
        v40 = swift_slowAlloc();
        v64 = v40;
        *v38 = 136315138;
        v41 = swift_beginAccess();
        v42 = MEMORY[0x1E12991D0](v41);
        swift_endAccess();
        v43 = v15;
        v44 = MEMORY[0x1E1299530](v42, MEMORY[0x1E69E6158]);
        v46 = v45;

        v47 = v44;
        v15 = v43;
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &v64);

        *(v38 + 4) = v48;
        _os_log_impl(&dword_1DC5C3000, v36, v37, "Confirmation prompt accepts semantics values %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        v49 = v40;
        a1 = v39;
        MEMORY[0x1E1299E70](v49, -1, -1);
        MEMORY[0x1E1299E70](v38, -1, -1);
      }
    }

    else
    {
      MEMORY[0x1E12991E0](MEMORY[0x1E69E7CC0]);
    }

    swift_beginAccess();
    (*(v62 + 16))(a1, v19, v15);
    (*(v62 + 56))(a1, 0, 1, v15);
    return (*(v62 + 8))(v19, v15);
  }

  else
  {
    v50 = *(v17 + 56);

    return v50(a1, 1, 1, v15);
  }
}

uint64_t PommesContext.convertPegasusDomainToLegacyNLDomain(pegasusDomain:)(uint64_t a1, uint64_t a2)
{
  v4 = 0x4572656874616577;
  if ((a1 != 0x72656874616577 || a2 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v4 = 0x6B636F7473;
    if ((a1 != 0x736B636F7473 || a2 != 0xE600000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v4 = 0x706F6C6379636E65;
      if ((a1 != 26475 || a2 != 0xE200000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 1852008299 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v4 = 0x74656D6874697261;
        if ((a1 != 1752457581 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v4 = 0x6372616553626577;
          if ((a1 != 0x67616D695F626577 || a2 != 0xEA00000000007365) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x65646E695F626577 || a2 != 0xE900000000000078) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x77736E615F626577 || a2 != 0xEA00000000007265) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x695F6265775F3276 || a2 != 0xEC0000007865646ELL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0x616964656DLL;
            }

            else if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 0xD000000000000014;
            }

            else
            {
              v4 = 0x6165536C61636F6CLL;
              if ((a1 != 1936744813 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 7300455 || a2 != 0xE300000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                v4 = 0x616C50616964656DLL;
                if ((a1 != 0x616964656DLL || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  v4 = 0x636E75614C707061;
                  if ((a1 != 1936748641 || a2 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                  {

                    return a1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

uint64_t PommesContext.exportPromptContext()@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = type metadata accessor for PommesContext();
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v1 + *(v15 + 40), v6, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v6, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v16 = *(v1 + 24);
    if (!v16)
    {
      v20 = 1;
      return (*(v8 + 56))(a1, v20, 1, v7);
    }

    v17 = *(v1 + 16);
    Com_Apple_Siri_Product_Proto_PromptContext.init()();
    PommesContext.convertPegasusDomainToLegacyNLDomain(pegasusDomain:)(v17, v16);
    Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.setter();
    v18 = *(v1 + 32);
    Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.setter();
    (*(v8 + 32))(a1, v12, v7);
  }

  else
  {
    v19 = *(v8 + 32);
    v19(v14, v6, v7);
    v19(a1, v14, v7);
  }

  v20 = 0;
  return (*(v8 + 56))(a1, v20, 1, v7);
}

uint64_t PommesContext.exportPromptContextData()()
{
  v1 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24[-v14];
  v16 = type metadata accessor for PommesContext();
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v0 + *(v16 + 40), v13, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v17 = *(v2 + 48);
  if (v17(v13, 1, v1) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v13, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v18 = *(v0 + 24);
    if (!v18)
    {
      (*(v2 + 56))(v15, 1, 1, v1);
      goto LABEL_8;
    }

    v19 = *(v0 + 16);
    Com_Apple_Siri_Product_Proto_PromptContext.init()();
    PommesContext.convertPegasusDomainToLegacyNLDomain(pegasusDomain:)(v19, v18);
    Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.setter();
    v20 = *(v0 + 32);
    Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.setter();
    (*(v2 + 32))(v15, v6, v1);
  }

  else
  {
    v21 = *(v2 + 32);
    v21(v8, v13, v1);
    v21(v15, v8, v1);
  }

  (*(v2 + 56))(v15, 0, 1, v1);
  if (v17(v15, 1, v1) != 1)
  {
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500]);
    v22 = Message.serializedData(partial:)();
    (*(v2 + 8))(v15, v1);
    return v22;
  }

LABEL_8:
  outlined destroy of ClientExperienceSignals?(v15, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  return 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PommesContext.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656372756F73;
  v3 = 0x6F4374706D6F7270;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x64657265646E6572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0x6E69616D6F64;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PommesContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PommesContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PommesContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PommesContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v50 - v5;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v57 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMd, &_ss22KeyedDecodingContainerVy21SiriInformationSearch13PommesContextV10CodingKeys33_362761E44F4A82E600A827D16A10D6B3LLOGMR);
  v60 = *(v16 - 8);
  v61 = v16;
  v17 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - v18;
  v20 = type metadata accessor for PommesContext();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v22 + 28);
  v26 = *MEMORY[0x1E69BCBD8];
  v64 = v7;
  v65 = v6;
  v27 = *(v7 + 104);
  v62 = v25;
  v27(&v24[v25], v26, v6);
  v28 = *(v20 + 40);
  v29 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = v30 + 56;
  v63 = v28;
  v33 = v24;
  v31(&v24[v28], 1, 1, v29);
  v34 = a1[3];
  v35 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  lazy protocol witness table accessor for type PommesContext.CodingKeys and conformance PommesContext.CodingKeys();
  v36 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_0(v67);
    (*(v64 + 8))(v33 + v62, v65);

    return outlined destroy of ClientExperienceSignals?(v33 + v63, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  }

  else
  {
    v37 = v20;
    v53 = v32;
    v54 = v31;
    v66 = v29;
    v38 = v60;
    v71 = 0;
    lazy protocol witness table accessor for type PommesContext.Source and conformance PommesContext.Source();
    v39 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v33 = v68;
    LOBYTE(v68) = 1;
    *(v33 + 16) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v33 + 24) = v41;
    LOBYTE(v68) = 2;
    v52 = 0;
    *(v33 + 32) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v71 = 3;
    v51 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v33 + *(v37 + 32)) = v68;
    v71 = 4;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v33 + *(v37 + 36)) = v68;
    v71 = 5;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (*(&v68 + 1) >> 60 != 15)
    {
      v51 = v68;
      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500]);
      v42 = v66;
      Message.init(serializedData:extensions:partial:options:)();
      v43 = v57;
      v54(v57, 0, 1, v42);
      outlined assign with take of Com_Apple_Siri_Product_Proto_PromptContext?(v43, v33 + v63);
    }

    LOBYTE(v68) = 6;
    KeyedDecodingContainer.decode(_:forKey:)();
    v44 = (v38 + 8);
    v45 = v58;
    v46 = v59;
    v47 = v55;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent.init(rawValue:)();
    (*v44)(v19, v39);
    v48 = v64;
    v49 = v65;
    if ((*(v64 + 48))(v47, 1, v65) == 1)
    {
      outlined destroy of ClientExperienceSignals?(v47, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMR);
    }

    else
    {
      (*(v48 + 32))(v46, v47, v49);
      (*(v48 + 40))(v33 + v62, v46, v49);
    }

    outlined init with copy of PommesContext(v33, v45);
    __swift_destroy_boxed_opaque_existential_0(v67);
    return outlined destroy of PommesContext(v33);
  }
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
      result = MEMORY[0x1E1298B00]();
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
  result = MEMORY[0x1E1298B00]();
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

  MEMORY[0x1E1298B00]();
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

BOOL specialized static PommesContext.Source.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = v2 >> 60;
  if (v2 >> 60 == 3)
  {
    if (v4 >> 60 != 3)
    {
LABEL_14:
      outlined copy of PommesContext.Source(*a2, *(a2 + 8));
      outlined copy of PommesContext.Source(v3, v2);
      outlined consume of PommesContext.Source(v3, v2);
      outlined consume of PommesContext.Source(v5, v4);
      return 0;
    }

LABEL_9:
    outlined consume of PommesContext.Source(*a1, v2);
    outlined consume of PommesContext.Source(v5, v4);
    return 1;
  }

  if (v6 == 7)
  {
    if (v4 >> 60 != 7)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v6 == 11)
  {
    if (v4 >> 60 != 11)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if ((v4 >> 60) <= 0xB && ((1 << (v4 >> 60)) & 0x888) != 0)
  {
    goto LABEL_14;
  }

  if (v2 >> 60 == 15)
  {
    outlined copy of PommesContext.Source(*a1, v2);
    outlined copy of PommesContext.Source(v5, v4);
    outlined copy of PommesContext.Source(v5, v4);
    outlined copy of PommesContext.Source(v3, v2);
    outlined consume of PommesContext.Source(v3, v2);
    outlined consume of PommesContext.Source(v5, v4);
    if (v4 >> 60 == 15)
    {
      outlined consume of Data._Representation?(v3, v2);
      return 1;
    }

LABEL_21:
    outlined consume of Data._Representation?(v3, v2);
    outlined consume of Data._Representation?(v5, v4);
    return 0;
  }

  if (v4 >> 60 == 15)
  {
    outlined copy of PommesContext.Source(*a1, v2);
    outlined copy of PommesContext.Source(v5, v4);
    outlined copy of PommesContext.Source(v5, v4);
    outlined copy of PommesContext.Source(v3, v2);
    outlined consume of PommesContext.Source(v3, v2);
    outlined consume of PommesContext.Source(v5, v4);
    goto LABEL_21;
  }

  outlined copy of PommesContext.Source(*a2, *(a2 + 8));
  outlined copy of PommesContext.Source(v3, v2);
  outlined copy of PommesContext.Source(v3, v2);
  outlined copy of PommesContext.Source(v5, v4);
  outlined copy of PommesContext.Source(v5, v4);
  outlined copy of PommesContext.Source(v3, v2);
  v9 = specialized static Data.== infix(_:_:)(v3, v2, v5, v4);
  outlined consume of Data._Representation?(v5, v4);
  outlined consume of PommesContext.Source(v5, v4);
  outlined consume of PommesContext.Source(v3, v2);
  outlined consume of PommesContext.Source(v3, v2);
  outlined consume of PommesContext.Source(v5, v4);
  outlined consume of Data._Representation?(v3, v2);
  return (v9 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.CodingKeys and conformance PommesContext.Source.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.UnknownCodingKeys and conformance PommesContext.Source.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.ModalityTranslatedCodingKeys and conformance PommesContext.Source.ModalityTranslatedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PluginDefinedCodingKeys and conformance PommesContext.Source.PluginDefinedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesContext.Source.PegasusResponseCodingKeys and conformance PommesContext.Source.PegasusResponseCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t specialized static PommesContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if ((v4 >> 60) > 0xB || ((1 << (v4 >> 60)) & 0x888) == 0)
  {
    v6 = *a1;
    outlined copy of Data?(*a1, v4);
  }

  else
  {
    v6 = 0;
    v4 = 0xF000000000000000;
  }

  v7 = *(a2 + 8);
  if ((v7 >> 60) > 0xB || ((1 << (v7 >> 60)) & 0x888) == 0)
  {
    v9 = *a2;
    outlined copy of Data?(*a2, *(a2 + 8));
  }

  else
  {
    v9 = 0;
    v7 = 0xF000000000000000;
  }

  if (v4 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      outlined copy of Data?(v6, v4);
      outlined copy of Data?(v9, v7);
      v12 = specialized static Data.== infix(_:_:)(v6, v4, v9, v7);
      outlined consume of Data._Representation?(v9, v7);
      outlined consume of Data._Representation?(v9, v7);
      outlined consume of Data._Representation?(v6, v4);
      outlined consume of Data._Representation?(v6, v4);
      if ((v12 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

LABEL_17:
    outlined consume of Data._Representation?(v6, v4);
    outlined consume of Data._Representation?(v9, v7);
    goto LABEL_18;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_17;
  }

  outlined consume of Data._Representation?(v6, v4);
LABEL_21:
  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  if (v13)
  {
    if (v14 && (*(a1 + 16) == *(a2 + 16) && v13 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_28;
    }
  }

  else if (!v14)
  {
LABEL_28:
    v10 = *(a1 + 32) ^ *(a2 + 32) ^ 1;
    return v10 & 1;
  }

LABEL_18:
  v10 = 0;
  return v10 & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined consume of PommesContext.Source(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 60) > 0xB || ((1 << (a2 >> 60)) & 0x888) == 0)
  {
    return outlined consume of Data._Representation?(a1, a2);
  }

  return a1;
}

uint64_t outlined init with copy of PommesContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PommesContext(uint64_t a1)
{
  v2 = type metadata accessor for PommesContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of Com_Apple_Siri_Product_Proto_PromptContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata completion function for PommesContext()
{
  _sSSSgMaTm_0(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
    if (v1 <= 0x3F)
    {
      _sSSSgMaTm_0(319, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _sSSSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext?()
{
  if (!lazy cache variable for type metadata for Com_Apple_Siri_Product_Proto_PromptContext?)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Com_Apple_Siri_Product_Proto_PromptContext?);
    }
  }
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PommesContext.Source(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 9 && *(a1 + 16))
  {
    return (*a1 + 9);
  }

  v3 = *(a1 + 8) >> 60;
  v4 = ((4 * v3) & 0xC) == 0;
  v5 = ((4 * v3) & 0xC | (v3 >> 2)) ^ 0xF;
  if (v4)
  {
    v5 = 0;
  }

  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PommesContext.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 8)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 9;
    if (a3 >= 9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((12 - a2) >> 2) | (4 * (12 - a2))) << 60;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for PommesContext.Source(void *result, unsigned int a2)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for PommesContext.Source.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesContext.Source.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized PommesContext.Source.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5273757361676570 && a2 == 0xEF65736E6F707365;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65446E6967756C70 && a2 == 0xED000064656E6966 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001DC6525E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized PommesContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001DC651AE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64657265646E6572 && a2 == 0xED00007374786554 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001DC651AA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4374706D6F7270 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DC652600 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t one-time initialization function for mathSuggestionIntents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMR);
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DC6509C0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69BD418], v0);
  v6(v5 + v2, *MEMORY[0x1E69BD488], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69BD458], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69BD498], v0);
  v6(v5 + 4 * v2, *MEMORY[0x1E69BD428], v0);
  result = (v6)(v5 + 5 * v2, *MEMORY[0x1E69BD470], v0);
  static SuggestionConstants.mathSuggestionIntents = v4;
  return result;
}

uint64_t one-time initialization function for weatherServerIntents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMR);
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DC6509D0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69BD490], v0);
  v6(v5 + v2, *MEMORY[0x1E69BD480], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69BD468], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69BD460], v0);
  v6(v5 + 4 * v2, *MEMORY[0x1E69BD430], v0);
  v6(v5 + 5 * v2, *MEMORY[0x1E69BD478], v0);
  v6(v5 + 6 * v2, *MEMORY[0x1E69BD448], v0);
  v6(v5 + 7 * v2, *MEMORY[0x1E69BD450], v0);
  result = (v6)(v5 + 8 * v2, *MEMORY[0x1E69BD438], v0);
  static SuggestionConstants.weatherServerIntents = v4;
  return result;
}

uint64_t one-time initialization function for clockServerIntents()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI42Apple_Parsec_Siri_V2alpha_SuggestionIntentOGMR);
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DC6509E0;
  result = (*(v1 + 104))(v4 + v3, *MEMORY[0x1E69BD440], v0);
  static SuggestionConstants.clockServerIntents = v4;
  return result;
}

uint64_t one-time initialization function for t41Locales()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleVGMd, "h7");
  v0 = *(type metadata accessor for Locale() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DC6509F0;
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
  static SuggestionConstants.t41Locales = v3;
  return result;
}

uint64_t static SuggestionConstants.mathSuggestionIntents.getter(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

const char *FeatureFlag.feature.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32))
  {
    return specialized FeatureFlag.domainLocaleFeature(_:_:)(v1, v2, *(v0 + 16), *(v0 + 24));
  }

  else
  {
    return specialized FeatureFlag.domainFeature(for:)(v1, v2);
  }
}

uint64_t FeatureFlag.isOn.getter()
{
  v6[3] = &type metadata for FeatureFlag;
  v6[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v1 = swift_allocObject();
  v6[0] = v1;
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  outlined init with copy of FeatureFlag(v0, &v5);
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v3 & 1;
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance FeatureFlag()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32))
  {
    return specialized FeatureFlag.domainLocaleFeature(_:_:)(v1, v2, *(v0 + 16), *(v0 + 24));
  }

  else
  {
    return specialized FeatureFlag.domainFeature(for:)(v1, v2);
  }
}

const char *specialized FeatureFlag.domainLocaleFeature(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1E1299490](95, 0xE100000000000000);
  MEMORY[0x1E1299490](v6, v7);
  if (a1 == 7300455 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 1936744813 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v6 == 0x524B5F6F6BLL && v7 == 0xE500000000000000)
    {

LABEL_17:

      return "geo_search_ko_KR";
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if (a1 == 0x7A5F7374726F7073 && a2 == 0xEC0000004E435F68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "sports_zh_CN";
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DC652800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return "edutainment_zh_CN";
  }

  else if (a1 == 0x687A5F636973756DLL && a2 == 0xEB000000004E435FLL)
  {

    return "music_zh_CN";
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return "music_zh_CN";
    }

    else
    {
      return "";
    }
  }
}

const char *specialized FeatureFlag.domainFeature(for:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73676E6974697277 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "writings_search";
  }

  if (a1 == 7300455 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 1936744813 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "geo_search";
  }

  if (a1 == 0x6D6E696174756465 && a2 == 0xEB00000000746E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "edutainment_search";
  }

  if (a1 == 0x74616C736E617274 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return "translation_search";
  }

  if (a1 == 0x636E75616C707061 && a2 == 0xE900000000000068)
  {
    return "applaunch_search";
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v7 = a1 == 1936748641 && a2 == 0xE400000000000000;
  result = "applaunch_search";
  if ((v5 & 1) == 0 && !v7)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return "applaunch_search";
    }

    result = "emergency_search";
    if (a1 != 0x636E656772656D65 || a2 != 0xE900000000000079)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return "emergency_search";
      }

      else
      {
        return "";
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlag(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FeatureFlag(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AppLaunchExperience.appsClientComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SiriInformationTypes19AppLaunchExperience_appsClientComponent;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppLaunchExperience.__allocating_init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v24 = a2;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a3, v15);
  (*(v11 + 16))(v14, a4, v10);
  v20 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v21 = (*(v5 + 336))(a1, v24, v19, v14, v20, a5);
  (*(v11 + 8))(a4, v10);
  (*(v16 + 8))(a3, v15);
  return v21;
}

id AppLaunchExperience.__allocating_init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v34 = a5;
  v35 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v7);
  v21 = OBJC_IVAR____TtC20SiriInformationTypes19AppLaunchExperience_appsClientComponent;
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v22 = *(v30 - 8);
  (*(v22 + 16))(&v20[v21], a3, v30);
  v23 = v16[2];
  v23(v19, v35, v15);
  (*(v11 + 104))(v14, *MEMORY[0x1E69BCBD8], v10);
  *&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v24 = &v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v25 = v33;
  *v24 = v32;
  *(v24 + 1) = v25;
  *&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v23(&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v19, v15);
  *&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v34;
  (*(v11 + 16))(&v20[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v14, v10);
  v26 = type metadata accessor for Experience(0);
  v36.receiver = v20;
  v36.super_class = v26;
  v27 = objc_msgSendSuper2(&v36, sel_init);
  v28 = v16[1];
  v28(v35, v15);
  (*(v22 + 8))(v31, v30);
  (*(v11 + 8))(v14, v10);
  v28(v19, v15);
  return v27;
}

id AppLaunchExperience.init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v34 = a5;
  v35 = a4;
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(v29 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC20SiriInformationTypes19AppLaunchExperience_appsClientComponent;
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v19 = *(v30 - 8);
  (*(v19 + 16))(&v6[v18], a3, v30);
  v20 = v14[2];
  v20(v17, v35, v13);
  v21 = v29;
  (*(v9 + 104))(v12, *MEMORY[0x1E69BCBD8], v29);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v22 = &v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v23 = v33;
  *v22 = v32;
  *(v22 + 1) = v23;
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v20(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v13);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v34;
  (*(v9 + 16))(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v12, v21);
  v24 = type metadata accessor for Experience(0);
  v36.receiver = v6;
  v36.super_class = v24;
  v25 = objc_msgSendSuper2(&v36, sel_init);
  v26 = v14[1];
  v26(v35, v13);
  (*(v19 + 8))(v31, v30);
  (*(v9 + 8))(v12, v21);
  v26(v17, v13);
  return v25;
}

id AppLaunchExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSData();
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v11)
  {
    v12 = v11;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = 0;
    memset(&v22[48], 0, 32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v7 + 32))(v1 + OBJC_IVAR____TtC20SiriInformationTypes19AppLaunchExperience_appsClientComponent, v10, v6);
    v17 = Experience.init(coder:)(a1);
    v18 = v17;

    if (v17)
    {

      return v17;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC5C3000, v14, v15, "AppLaunchExperience cannot be decoded", v16, 2u);
      MEMORY[0x1E1299E70](v16, -1, -1);
    }

    type metadata accessor for AppLaunchExperience();
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v21 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t type metadata accessor for AppLaunchExperience()
{
  result = type metadata singleton initialization cache for AppLaunchExperience;
  if (!type metadata singleton initialization cache for AppLaunchExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall AppLaunchExperience.encode(with:)(NSCoder with)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v2 = Message.serializedData(partial:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v4);
  v6 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC652850);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  Experience.encode(with:)(with);
}

uint64_t AppLaunchExperience.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC20SiriInformationTypes19AppLaunchExperience_appsClientComponent;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id AppLaunchExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppLaunchExperience();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppsClientComponent and conformance Apple_Parsec_Siri_V2alpha_AppsClientComponent);
  }

  return result;
}

uint64_t type metadata completion function for AppLaunchExperience()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AFPreferences.siriLanguageCode.getter()
{
  v1 = [v0 languageCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v3;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t one-time initialization function for sportsUseCases()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMR);
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DC64F450;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E69BD280], v0);
  v6(v5 + v2, *MEMORY[0x1E69BD290], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E69BD288], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E69BD298], v0);
  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseO_SayAFGTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.sportsUseCases = v7;
  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.sportsUseCases.getter()
{
  if (one-time initialization token for sportsUseCases != -1)
  {
    swift_once();
  }
}

id Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.toINInformationUseCase(_:utterance:locale:)(uint64_t a1, uint64_t a2, void (*a3)(char *, unint64_t, uint64_t), objc_class *a4, objc_class *a5)
{
  v79 = a4;
  ObjCClassFromMetadata = a5;
  v78 = a3;
  v82 = type metadata accessor for Google_Protobuf_Value();
  v75 = *(v82 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter();
  v84 = *(v9 - 8);
  v10 = *(v84 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v83 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v73 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v76 = (&v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v73 - v20;
  v22 = [objc_allocWithZone(type metadata accessor for INInformationUseCaseIntent()) init];

  v23 = MEMORY[0x1E1299430](a1, a2);

  [v22 setInfoDomain_];

  v85 = 0;
  v86 = 0xE000000000000000;
  Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
  _print_unlocked<A, B>(_:_:)();
  v77 = v16;
  v24 = *(v16 + 8);
  v24(v21, v15);
  v25 = MEMORY[0x1E1299430](v85, v86);

  [v22 setDomainUseCase_];

  [v22 setExampleUtterance_];
  v26 = MEMORY[0x1E1299430](v79, ObjCClassFromMetadata);
  v74 = v22;
  [v22 setLocale_];

  if (one-time initialization token for sportsUseCases != -1)
  {
    swift_once();
  }

  v27 = static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.sportsUseCases;
  Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
  LOBYTE(v27) = specialized Set.contains(_:)(v21, v27);
  v24(v21, v15);
  v28 = v84;
  if (v27)
  {
    v85 = MEMORY[0x1E69E7CC0];
    v29 = Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parameters.getter();
    v30 = *(v29 + 16);
    if (v30)
    {
      v33 = *(v28 + 16);
      v32 = v28 + 16;
      v31 = v33;
      v34 = v29 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
      v35 = *(v32 + 56);
      do
      {
        v31(v14, v34, v9);
        v36 = Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parseSportsTeamParameterInfo(_:)();
        specialized Array.append<A>(contentsOf:)(v36);
        (*(v32 - 8))(v14, v9);
        v34 += v35;
        --v30;
      }

      while (v30);
    }

    type metadata accessor for INInformationUseCaseParameter();
    v70.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v71 = v74;
    [v74 setParameters_];
  }

  else
  {
    v37 = v76;
    Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
    v38 = (*(v77 + 88))(v37, v15);
    v39 = *MEMORY[0x1E69BD278];
    v24(v37, v15);
    v40 = Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parameters.getter();
    if (v38 == v39)
    {
      Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parseGeoParameterInfo(_:)(v40);
    }

    else
    {
      v41 = *(v40 + 16);
      if (v41)
      {
        v85 = MEMORY[0x1E69E7CC0];
        v42 = v40;
        specialized ContiguousArray.reserveCapacity(_:)();
        type metadata accessor for INInformationUseCaseParameter();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        type metadata accessor for INInformationUseCaseParameterValue();
        v43 = swift_getObjCClassFromMetadata();
        v45 = *(v28 + 16);
        v44 = v28 + 16;
        v78 = v45;
        v79 = v43;
        v46 = (*(v44 + 64) + 32) & ~*(v44 + 64);
        v73 = v42;
        v47 = v42 + v46;
        v48 = *(v44 + 56);
        v76 = (v75 + 8);
        v77 = v48;
        v75 = v44 - 8;
        v49 = v83;
        do
        {
          v84 = v41;
          v78(v49, v47, v9);
          v50 = Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.getter();
          v52 = v51;
          v53 = v81;
          Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter();
          v54 = Google_Protobuf_Value.stringValue.getter();
          v56 = v55;
          (*v76)(v53, v82);
          v57 = v9;
          v58 = v44;
          v59 = objc_allocWithZone(ObjCClassFromMetadata);
          v60 = MEMORY[0x1E1299430](v50, v52);
          v61 = MEMORY[0x1E1299430](v50, v52);

          v62 = v59;
          v44 = v58;
          v9 = v57;
          v63 = [v62 initWithIdentifier:v60 displayString:{v61, v73}];

          v64 = objc_allocWithZone(v79);
          v65 = MEMORY[0x1E1299430](v54, v56);
          v66 = MEMORY[0x1E1299430](v54, v56);

          v67 = [v64 initWithIdentifier:v65 displayString:v66];

          v49 = v83;
          [v63 setValue_];

          (*v75)(v49, v57);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v68 = *(v85 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v69 = v84;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v47 += v77;
          v41 = v69 - 1;
        }

        while (v41);
      }
    }

    type metadata accessor for INInformationUseCaseParameter();
    v70.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v71 = v74;
    [v74 setParameters_];
  }

  return v71;
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8]), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parseSportsTeamParameterInfo(_:)()
{
  v94 = type metadata accessor for Google_Protobuf_Struct();
  v0 = *(v94 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v3 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Google_Protobuf_Value();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v87 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v88 = &v86 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v89 = &v86 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v86 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v86 - v19;
  v21 = Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.getter();
  v23 = v22;
  v98 = v21;
  v99 = v22;
  v95 = v21;
  v96 = 0x6D616E5F6D616574;
  v97 = 0xE900000000000065;
  lazy protocol witness table accessor for type String and conformance String();
  if ((StringProtocol.contains<A>(_:)() & 1) == 0 && (v95 != 0x6E5F65756761656CLL || v23 != 0xEB00000000656D61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v58 = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1DC650BC0;
    Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter();
    v59 = Google_Protobuf_Value.stringValue.getter();
    v61 = v60;
    (*(v5 + 8))(v20, v4);
    v62 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v95, v58, v59, v61);

    *(v28 + 32) = v62;
    return v28;
  }

  Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter();
  Google_Protobuf_Value.structValue.getter();
  v24 = *(v5 + 8);
  v90 = v4;
  v91 = v24;
  v92 = v5 + 8;
  v25 = (v24)(v20, v4);
  v26 = MEMORY[0x1E1299320](v25);
  v27 = *(v0 + 8);
  v27(v3, v94);
  if (!*(v26 + 16))
  {

    return MEMORY[0x1E69E7CC0];
  }

  v93 = v23;
  v28 = MEMORY[0x1E69E7CC0];
  v96 = MEMORY[0x1E69E7CC0];
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(1701667182, 0xE400000000000000);
  if (v30)
  {
    v31 = *(v26 + 56);
    v86 = v5;
    v32 = *(v5 + 16);
    v33 = v31 + *(v5 + 72) * v29;
    v34 = v90;
    v32(v18, v33, v90);
    v35 = Google_Protobuf_Value.stringValue.getter();
    v37 = v36;
    v91(v18, v34);
    v98 = v95;
    v99 = v93;

    MEMORY[0x1E1299490](0x656D616E5FLL, 0xE500000000000000);
    v38 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v98, v99, v35, v37);

    v39 = v38;
    MEMORY[0x1E1299500]();
    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v82 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v28 = v96;
    v5 = v86;
  }

  if (!*(v26 + 16))
  {
    goto LABEL_18;
  }

  v40 = specialized __RawDictionaryStorage.find<A>(_:)(6516598, 0xE300000000000000);
  if ((v41 & 1) == 0)
  {
    goto LABEL_18;
  }

  v42 = *(v26 + 56);
  v43 = *(v5 + 16);
  v86 = *(v5 + 72);
  v44 = v90;
  v43(v15, v42 + v86 * v40, v90);

  Google_Protobuf_Value.structValue.getter();
  v45 = (v91)(v15, v44);
  v46 = MEMORY[0x1E1299320](v45);
  v27(v3, v94);
  if (!v46)
  {
LABEL_19:

    return v28;
  }

  if (!*(v46 + 16))
  {
    goto LABEL_18;
  }

  v47 = specialized __RawDictionaryStorage.find<A>(_:)(0x656D614E6D616574, 0xE800000000000000);
  if ((v48 & 1) == 0)
  {

    v51 = v90;
    v49 = v86;
    if (*(v46 + 16))
    {
      goto LABEL_24;
    }

LABEL_18:

    goto LABEL_19;
  }

  v49 = v86;
  v50 = v89;
  v51 = v90;
  v52 = v43;
  v43(v89, *(v46 + 56) + v86 * v47, v90);

  v53 = Google_Protobuf_Value.stringValue.getter();
  v55 = v54;
  v91(v50, v51);
  v98 = v95;
  v99 = v93;

  MEMORY[0x1E1299490](0x6165745F636F765FLL, 0xED0000656D614E6DLL);
  v56 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v98, v99, v53, v55);

  v57 = v56;
  MEMORY[0x1E1299500]();
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v83 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v28 = v96;
  v43 = v52;
  if (!*(v46 + 16))
  {
    goto LABEL_18;
  }

LABEL_24:

  v64 = specialized __RawDictionaryStorage.find<A>(_:)(0x61636F4C6D616574, 0xEC0000006E6F6974);
  if (v65)
  {
    v66 = v88;
    v67 = v43;
    v43(v88, *(v46 + 56) + v49 * v64, v51);

    v68 = Google_Protobuf_Value.stringValue.getter();
    v70 = v69;
    v91(v66, v51);
    v98 = 0;
    v99 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);
    v71 = v93;

    v98 = v95;
    v99 = v71;
    MEMORY[0x1E1299490](0xD000000000000011, 0x80000001DC6528E0);
    v72 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v98, v99, v68, v70);

    v73 = v72;
    MEMORY[0x1E1299500]();
    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v84 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v28 = v96;
    v43 = v67;
  }

  else
  {
  }

  if (!*(v46 + 16))
  {
    goto LABEL_18;
  }

  v74 = specialized __RawDictionaryStorage.find<A>(_:)(0x614E65756761656CLL, 0xEA0000000000656DLL);
  if ((v75 & 1) == 0)
  {
    goto LABEL_18;
  }

  v76 = v87;
  v43(v87, *(v46 + 56) + v49 * v74, v51);

  v77 = Google_Protobuf_Value.stringValue.getter();
  v79 = v78;
  v91(v76, v51);
  v98 = 0;
  v99 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v98 = v95;
  v99 = v93;
  MEMORY[0x1E1299490](0x61656C5F636F765FLL, 0xEF656D614E657567);
  v80 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v98, v99, v77, v79);

  v81 = v80;
  MEMORY[0x1E1299500]();
  if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v85 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v96;
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.parseGeoParameterInfo(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Google_Protobuf_Value();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v65 = &v62 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v73 = &v62 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v77 = &v62 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v72 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v62 - v19;
  v21 = *(a1 + 16);
  v67 = v2;
  if (v21)
  {
    v64 = v3;
    v68 = v7;
    v74 = *(v7 + 16);
    v75 = v7 + 16;
    v70 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v22 = a1 + v70;
    v23 = *(v7 + 72);
    v69 = (v7 + 8);
    v78 = (v7 + 32);
    v24 = MEMORY[0x1E69E7CC0];
    v25 = a1 + v70;
    v26 = v21;
    v71 = v6;
    v76 = v23;
    v74(v20, v25, v6);
    while (1)
    {
      if (Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.getter() == 0x6E6F697461636F6CLL && v28 == 0xEC00000065707954)
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          (*v69)(v20, v6);
          v27 = v76;
          goto LABEL_4;
        }
      }

      v30 = *v78;
      (*v78)(v72, v20, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
        v24 = v79;
      }

      v27 = v76;
      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1);
        v27 = v76;
        v24 = v79;
      }

      *(v24 + 16) = v33 + 1;
      v34 = v24 + v70 + v33 * v27;
      v6 = v71;
      v30(v34, v72, v71);
LABEL_4:
      v25 += v27;
      if (!--v26)
      {
        v35 = MEMORY[0x1E69E7CC0];
        v7 = v68;
        while (1)
        {
          v74(v77, v22, v6);
          if (Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.label.getter() == 0x6E6F697461636F6CLL && v37 == 0xE800000000000000)
          {
            break;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v38)
          {
            goto LABEL_22;
          }

          (*v69)(v77, v6);
          v36 = v76;
LABEL_17:
          v22 += v36;
          if (!--v21)
          {
            v3 = v64;
            goto LABEL_29;
          }
        }

LABEL_22:
        v39 = *v78;
        (*v78)(v73, v77, v6);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v35;
        if ((v40 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 16) + 1, 1);
          v35 = v79;
        }

        v42 = *(v35 + 16);
        v41 = *(v35 + 24);
        v36 = v76;
        if (v42 >= v41 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
          v36 = v76;
          v35 = v79;
        }

        *(v35 + 16) = v42 + 1;
        v43 = v35 + v70 + v42 * v36;
        v6 = v71;
        v39(v43, v73, v71);
        goto LABEL_17;
      }

      v74(v20, v25, v6);
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
LABEL_29:
  if (*(v24 + 16) == 1)
  {
    v44 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v45 = v65;
    v77 = *(v7 + 16);
    (v77)(v65, v24 + v44, v6);

    v46 = v66;
    Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter();
    v47 = *(v7 + 8);
    v68 = v7 + 8;
    v47(v45, v6);
    v78 = Google_Protobuf_Value.stringValue.getter();
    v49 = v48;
    v50 = v6;
    v51 = *(v3 + 8);
    v52 = v67;
    v51(v46, v67);
    if (*(v35 + 16) == 1)
    {
      v53 = v35 + v44;
      v54 = v49;
      v55 = v63;
      (v77)(v63, v53, v50);

      Apple_Parsec_Siri_V2alpha_DomainUseCaseParameter.value.getter();
      v47(v55, v50);
      v56 = Google_Protobuf_Value.stringValue.getter();
      v58 = v57;
      v51(v46, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1DC650BC0;
      v60 = specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(v78, v54, v56, v58);

      result = v59;
      *(v59 + 32) = v60;
      return result;
    }
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

id Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.toINInformationUseCase(locale:)(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = [objc_allocWithZone(type metadata accessor for INInformationUseCaseIntent()) init];
  Apple_Parsec_Siri_V2alpha_ServerSuggestion.currentIntent.getter();
  v15 = Apple_Parsec_Siri_V2alpha_SuggestionIntent.domain.getter();
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v13, v6);
  if (v17)
  {
    v19 = MEMORY[0x1E1299430](v15, v17);
  }

  else
  {
    v19 = 0;
  }

  [v14 setInfoDomain_];

  v28 = 0;
  v29 = 0xE000000000000000;
  Apple_Parsec_Siri_V2alpha_ServerSuggestion.currentIntent.getter();
  _print_unlocked<A, B>(_:_:)();
  v18(v11, v6);
  v20 = MEMORY[0x1E1299430](v28, v29);

  [v14 setDomainUseCase_];

  Apple_Parsec_Siri_V2alpha_ServerSuggestionCandidate.utterance.getter();
  v21 = specialized static INInformationUseCaseUtterance.create(_:)();
  (*(v24 + 8))(v5, v25);
  [v14 setExampleUtterance_];

  v22 = MEMORY[0x1E1299430](v26, v27);
  [v14 setLocale_];

  return v14;
}

uint64_t Apple_Parsec_Siri_V2alpha_SuggestionIntent.domain.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69BD420])
  {
    return 26475;
  }

  if (v7 == *MEMORY[0x1E69BD490] || v7 == *MEMORY[0x1E69BD480] || v7 == *MEMORY[0x1E69BD468] || v7 == *MEMORY[0x1E69BD460] || v7 == *MEMORY[0x1E69BD430] || v7 == *MEMORY[0x1E69BD478] || v7 == *MEMORY[0x1E69BD448] || v7 == *MEMORY[0x1E69BD450] || v7 == *MEMORY[0x1E69BD438])
  {
    return 0x72656874616577;
  }

  if (v7 == *MEMORY[0x1E69BD440])
  {
    return 0x6B636F6C63;
  }

  v8 = 1752457581;
  if (v7 != *MEMORY[0x1E69BD418] && v7 != *MEMORY[0x1E69BD488] && v7 != *MEMORY[0x1E69BD458] && v7 != *MEMORY[0x1E69BD498] && v7 != *MEMORY[0x1E69BD428])
  {
    if (v7 != *MEMORY[0x1E69BD470])
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    return 26475;
  }

  return v8;
}

id Apple_Parsec_Siri_V2alpha_SuggestionIntent.toINInformationUseCase(_:utterance:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(type metadata accessor for INInformationUseCaseIntent()) init];

  v16 = MEMORY[0x1E1299430](a1, a2);

  [v15 setInfoDomain_];

  (*(v11 + 104))(v14, *MEMORY[0x1E69BD420], v10);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, MEMORY[0x1E69BD4A0]);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v11 + 8))(v14, v10);
  if ((a2 & 1) == 0)
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v17 = MEMORY[0x1E1299430](v20, v21);

    [v15 setDomainUseCase_];
  }

  [v15 setExampleUtterance_];
  v18 = MEMORY[0x1E1299430](a4, a5);
  [v15 setLocale_];

  return v15;
}

uint64_t PommesResponse.getINInformationUseCases(locale:)(objc_class *a1, objc_class *a2)
{
  v135 = a2;
  v149 = a1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SuggestionIntent();
  v125 = *(v3 - 1);
  v4 = *(v125 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v126 = &v122 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v122 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v122 - v14;
  v137 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v124 = *(v137 - 8);
  v16 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v127 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v152 = *(v148 - 8);
  v18 = *(v152 + 64);
  v19 = MEMORY[0x1EEE9AC00](v148);
  v147 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v146 = (&v122 - v21);
  v134 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v156 = *(v134 - 8);
  v22 = *(v156 + 64);
  v23 = MEMORY[0x1EEE9AC00](v134);
  v123 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v145 = (&v122 - v26);
  MEMORY[0x1EEE9AC00](v25);
  v155 = (&v122 - v27);
  v28 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8);
  v154 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName);
  v132 = v2;
  v29 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance);
  v30 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance + 8);
  type metadata accessor for INInformationUseCaseUtterance();
  v31 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v32 = MEMORY[0x1E1299430](v29, v30);
  v33 = MEMORY[0x1E1299430](v29, v30);
  v34 = [v31 initWithIdentifier:v32 displayString:v33];

  v35 = MEMORY[0x1E1299430](v29, v30);
  [v34 setSpokenString_];

  if (one-time initialization token for pommes == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v36 = type metadata accessor for Logger();
    v37 = __swift_project_value_buffer(v36, static Logger.pommes);

    v38 = v34;
    v130 = v37;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    v41 = v39;
    v42 = os_log_type_enabled(v39, v40);
    v150 = v38;
    v153 = v28;
    v136 = v15;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v45 = v11;
      v46 = v7;
      v47 = v3;
      v48 = v157;
      *v43 = 136315394;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v28, &v157);
      *(v43 + 12) = 2112;
      *(v43 + 14) = v38;
      *v44 = v38;
      v49 = v38;
      _os_log_impl(&dword_1DC5C3000, v41, v40, "Using domain in INInformationUseCaseIntent as %s and utterance as: %@", v43, 0x16u);
      outlined destroy of ClientExperienceSignals?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1E1299E70](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v48);
      v50 = v48;
      v3 = v47;
      v7 = v46;
      v11 = v45;
      MEMORY[0x1E1299E70](v50, -1, -1);
      MEMORY[0x1E1299E70](v43, -1, -1);
    }

    v51 = v135;
    v129 = v11;
    v128 = v7;
    v131 = v3;
    v7 = *(v132 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases);
    v52 = MEMORY[0x1E69E7CC0];
    v34 = v134;
    v15 = v156;
    v144 = *(v7 + 16);
    if (!v144)
    {
      break;
    }

    v28 = 0;
    v142 = v156 + 16;
    v141 = *MEMORY[0x1E69BD2A0];
    v140 = (v152 + 104);
    v139 = (v152 + 8);
    v138 = (v156 + 32);
    v133 = (v156 + 8);
    v3 = v155;
    v143 = v7;
    while (v28 < *(v7 + 16))
    {
      v155 = v52;
      v152 = (v15[80] + 32) & ~v15[80];
      v151 = *(v15 + 9);
      (*(v15 + 2))(v3, v7 + v152 + v151 * v28, v34);
      v11 = v146;
      Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.useCase.getter();
      v53 = v3;
      v55 = v147;
      v54 = v148;
      (*v140)(v147, v141, v148);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8]);
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = v34;
      v58 = *v139;
      (*v139)(v55, v54);
      v58(v11, v54);
      if (v56)
      {
        (*v133)(v53, v57);
        v34 = v57;
        v3 = v53;
        v52 = v155;
        v7 = v143;
      }

      else
      {
        v59 = *v138;
        (*v138)(v145, v53, v57);
        v52 = v155;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v157 = v52;
        v3 = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52[2].isa + 1, 1);
          v52 = v157;
        }

        v7 = v143;
        v61 = v151;
        v11 = v152;
        isa = v52[2].isa;
        v62 = v52[3].isa;
        if (isa >= v62 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v62 > 1, isa + 1, 1);
          v52 = v157;
        }

        v52[2].isa = (isa + 1);
        v64 = v11 + v52 + isa * v61;
        v34 = v134;
        v59(v64, v145, v134);
        v51 = v135;
      }

      v15 = v156;
      if (v144 == ++v28)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

LABEL_15:
  v65 = v52[2].isa;
  if (v65)
  {
    v157 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v155 = *(v15 + 2);
    v156 = (v15 + 16);
    v66 = v34;
    v67 = v52 + ((v15[80] + 32) & ~v15[80]);
    v152 = *(v15 + 9);
    v68 = (v15 + 8);
    v69 = v123;
    do
    {
      (v155)(v69, v67, v66);
      v3 = Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.toINInformationUseCase(_:utterance:locale:)(v154, v153, v150, v149, v51);
      (*v68)(v69, v66);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v70 = v51;
      v71 = v157[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v51 = v70;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v67 += v152;
      --v65;
    }

    while (v65);

    v28 = v157;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v73 = (*((*MEMORY[0x1E69E7D40] & *v132) + 0x170))(v72);
  v7 = v73;
  v159 = MEMORY[0x1E69E7CC0];
  v15 = (v73 & 0xFFFFFFFFFFFFFF8);
  if (v73 >> 62)
  {
    if (v73 >= 0)
    {
      v73 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v74 = MEMORY[0x1E1299770](v73);
    v151 = v28;
    if (v74)
    {
LABEL_22:
      v34 = 0;
      v156 = v7 & 0xC000000000000001;
      v11 = (v124 + 48);
      v146 = (v124 + 32);
      LODWORD(v148) = *MEMORY[0x1E69BD420];
      v147 = (v125 + 104);
      v152 = v125 + 8;
      v155 = MEMORY[0x1E69E7CC0];
      v145 = (v124 + 8);
      v75 = 0;
      if ((v7 & 0xC000000000000001) != 0)
      {
LABEL_44:
        v76 = MEMORY[0x1E12996A0](v75, v7);
        goto LABEL_28;
      }

      while (1)
      {
        if (v75 >= *(v15 + 2))
        {
          goto LABEL_47;
        }

        v76 = *(v7 + 8 * v75 + 32);
LABEL_28:
        v28 = v76;
        v3 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          goto LABEL_46;
        }

        type metadata accessor for GenericExperience();
        v77 = swift_dynamicCastClass();
        if (!v77)
        {
          goto LABEL_24;
        }

        v78 = v136;
        (*((*MEMORY[0x1E69E7D40] & *v77) + 0x160))();
        if ((*v11)(v78, 1, v137) == 1)
        {
          v79 = outlined destroy of ClientExperienceSignals?(v78, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
          v80 = v154;
          v157 = v154;
          v158 = v153;
          MEMORY[0x1EEE9AC00](v79);
          *(&v122 - 2) = &v157;
          if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v122 - 4), &outlined read-only object #0 of one-time initialization function for relatedQuestionSupportedDomains))
          {
            v81 = Logger.logObject.getter();
            v82 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v81, v82))
            {
              v83 = swift_slowAlloc();
              v155 = v81;
              v84 = v83;
              *v83 = 0;
              _os_log_impl(&dword_1DC5C3000, v155, v82, "RelatedQuestions supported domain without server suggestions, create INInformationUseCaseIntent for current utterance for engagement tracking", v83, 2u);
              v85 = v84;
              v81 = v155;
              MEMORY[0x1E1299E70](v85, -1, -1);
            }

            Apple_Parsec_Siri_V2alpha_SuggestionIntent.init()();
            v86 = [objc_allocWithZone(type metadata accessor for INInformationUseCaseIntent()) init];
            v87 = v153;

            v88 = v80;
            v89 = v86;
            v90 = MEMORY[0x1E1299430](v88, v87);

            v155 = v89;
            [v89 setInfoDomain:v90];

            v91 = v126;
            v92 = v131;
            (*v147)(v126, v148, v131);
            lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, MEMORY[0x1E69BD4A0]);
            LOBYTE(v89) = dispatch thunk of static Equatable.== infix(_:_:)();
            v144 = *v152;
            v144(v91, v92);
            if ((v89 & 1) == 0)
            {
              v157 = 0;
              v158 = 0xE000000000000000;
              _print_unlocked<A, B>(_:_:)();
              v93 = MEMORY[0x1E1299430](v157, v158);

              [v155 setDomainUseCase:v93];
            }

            v94 = v155;
            [v155 setExampleUtterance:v150];
            v95 = MEMORY[0x1E1299430](v149, v135);
            [v94 setLocale:v95];

            v96 = (v144)(v128, v131);
            goto LABEL_40;
          }

LABEL_24:

          ++v75;
          if (v3 == v74)
          {
            goto LABEL_53;
          }

          if (v156)
          {
            goto LABEL_44;
          }
        }

        else
        {
          (*v146)(v127, v78, v137);
          Apple_Parsec_Siri_V2alpha_ServerSuggestion.currentIntent.getter();
          v97 = [objc_allocWithZone(type metadata accessor for INInformationUseCaseIntent()) init];
          v98 = v153;

          v99 = MEMORY[0x1E1299430](v154, v98);

          v155 = v97;
          [v97 setInfoDomain:v99];

          v100 = v126;
          v101 = v131;
          (*v147)(v126, v148, v131);
          lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent, MEMORY[0x1E69BD4A0]);
          LOBYTE(v97) = dispatch thunk of static Equatable.== infix(_:_:)();
          v144 = *v152;
          v144(v100, v101);
          if ((v97 & 1) == 0)
          {
            v157 = 0;
            v158 = 0xE000000000000000;
            _print_unlocked<A, B>(_:_:)();
            v102 = MEMORY[0x1E1299430](v157, v158);

            [v155 setDomainUseCase:v102];
          }

          v103 = v155;
          [v155 setExampleUtterance:v150];
          v104 = MEMORY[0x1E1299430](v149, v135);
          [v103 setLocale:v104];

          v144(v129, v131);
          v96 = (*v145)(v127, v137);
LABEL_40:
          MEMORY[0x1E1299500](v96);
          if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v28 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v155 = v159;
          if (v3 == v74)
          {
            goto LABEL_53;
          }

          v75 = v3;
          if (v156)
          {
            goto LABEL_44;
          }
        }
      }
    }
  }

  else
  {
    v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v151 = v28;
    if (v74)
    {
      goto LABEL_22;
    }
  }

  v155 = MEMORY[0x1E69E7CC0];
LABEL_53:

  v105 = v155;

  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v157 = v109;
    *v108 = 136315394;
    v110 = type metadata accessor for INInformationUseCaseIntent();
    v111 = v151;

    v113 = MEMORY[0x1E1299530](v112, v110);
    v115 = v114;

    v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v115, &v157);

    *(v108 + 4) = v116;
    *(v108 + 12) = 2080;
    v117 = MEMORY[0x1E1299530](v105, v110);
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, &v157);

    *(v108 + 14) = v119;
    _os_log_impl(&dword_1DC5C3000, v106, v107, "Returning INInformationUseCaseIntent with domainUseCaseIntents: %s and serverSuggestionIntents: %s", v108, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1299E70](v109, -1, -1);
    MEMORY[0x1E1299E70](v108, -1, -1);

    v120 = v150;
  }

  else
  {

    v120 = v150;
    v111 = v151;
  }

  v157 = v111;

  specialized Array.append<A>(contentsOf:)(v105);

  return v157;
}

id static INInformationUseCaseUtterance.create(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for INInformationUseCaseUtterance();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x1E1299430](a1, a2);
  v6 = MEMORY[0x1E1299430](a1, a2);
  v7 = [v4 initWithIdentifier:v5 displayString:v6];

  v8 = MEMORY[0x1E1299430](a1, a2);
  [v7 setSpokenString_];

  return v7;
}

Swift::Bool __swiftcall INInformationUseCaseIntent.supportsRelatedQuestions()()
{
  v1 = [v0 infoDomain];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v10[0] = v3;
    v10[1] = v5;
    MEMORY[0x1EEE9AC00](v6);
    v9[2] = v10;
    v7 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v9, &outlined read-only object #0 of one-time initialization function for relatedQuestionSupportedDomains);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
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

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMd, &_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMd, &_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMd, &_ss11_SetStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseOGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10PegasusAPI39Apple_Parsec_Siri_V2alpha_DomainUseCaseO_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCase and conformance Apple_Parsec_Siri_V2alpha_DomainUseCase, MEMORY[0x1E69BD2A8]);
  result = MEMORY[0x1E1299580](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      specialized Set._Variant.insert(_:)(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

id specialized static Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata.createUseCaseParameter(identifier:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for INInformationUseCaseParameter();
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = MEMORY[0x1E1299430](a1, a2);
  v10 = MEMORY[0x1E1299430](a1, a2);
  v11 = [v8 initWithIdentifier:v9 displayString:v10];

  type metadata accessor for INInformationUseCaseParameterValue();
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = MEMORY[0x1E1299430](a3, a4);
  v14 = MEMORY[0x1E1299430](a3, a4);
  v15 = [v12 initWithIdentifier:v13 displayString:v14];

  [v11 setValue_];
  return v11;
}

id specialized static INInformationUseCaseUtterance.create(_:)()
{
  type metadata accessor for INInformationUseCaseUtterance();
  v0 = Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.print.getter();
  v2 = v1;
  v3 = Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.print.getter();
  v5 = v4;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x1E1299430](v0, v2);

  v8 = MEMORY[0x1E1299430](v3, v5);

  v9 = [v6 initWithIdentifier:v7 displayString:v8];

  v10 = Apple_Parsec_Siri_V2alpha_ServerSuggestionUtterance.speak.getter();
  v11 = MEMORY[0x1E1299430](v10);

  [v9 setSpokenString_];

  return v9;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SuggestionIntent and conformance Apple_Parsec_Siri_V2alpha_SuggestionIntent(unint64_t *a1, void (*a2)(uint64_t))
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

SiriInformationTypes::WarmupComponent_optional __swiftcall WarmupComponent.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type WarmupComponent and conformance WarmupComponent()
{
  result = lazy protocol witness table cache variable for type WarmupComponent and conformance WarmupComponent;
  if (!lazy protocol witness table cache variable for type WarmupComponent and conformance WarmupComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WarmupComponent and conformance WarmupComponent);
  }

  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance WarmupComponent@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t PhoneCallExperience.phoneCall.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch19PhoneCallExperience_phoneCall;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PhoneCallExperience.__allocating_init(phoneCall:queryConfidenceScore:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  v10 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v11 = (*(v2 + 336))(v9, v10, a2);
  (*(v6 + 8))(a1, v5);
  return v11;
}

id PhoneCallExperience.init(phoneCall:queryConfidenceScore:renderOptions:)(uint64_t a1, uint64_t a2, double a3)
{
  v24 = a1;
  v25 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC21SiriInformationSearch19PhoneCallExperience_phoneCall;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v17 = *(v16 - 8);
  v18 = &v3[v15];
  v19 = v24;
  (*(v17 + 16))(v18, v24, v16);
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v6 + 104))(v9, *MEMORY[0x1E69BCBD8], v5);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v20 = &v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v20 = 0x73757361676570;
  *(v20 + 1) = 0xE700000000000000;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a3;
  (*(v11 + 16))(&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v14, v10);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v25;
  (*(v6 + 16))(&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v9, v5);
  v21 = type metadata accessor for Experience(0);
  v26.receiver = v3;
  v26.super_class = v21;
  v22 = objc_msgSendSuper2(&v26, sel_init);
  (*(v17 + 8))(v19, v16);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  return v22;
}

BOOL PhoneCallExperience.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallExperience.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PhoneCallExperience.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PhoneCallExperience.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallExperience.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallExperience.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

id PhoneCallExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BinaryDecodingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSData();
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v11)
  {
    v12 = v11;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v7 + 32))(v1 + OBJC_IVAR____TtC21SiriInformationSearch19PhoneCallExperience_phoneCall, v10, v6);
    v17 = Experience.init(coder:)(a1);
    v18 = v17;

    if (v17)
    {

      return v17;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.pommes);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DC5C3000, v14, v15, "Failed to extract phoneCall data", v16, 2u);
      MEMORY[0x1E1299E70](v16, -1, -1);
    }

    type metadata accessor for PhoneCallExperience();
    v20 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v21 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

uint64_t type metadata accessor for PhoneCallExperience()
{
  result = type metadata singleton initialization cache for PhoneCallExperience;
  if (!type metadata singleton initialization cache for PhoneCallExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall PhoneCallExperience.encode(with:)(NSCoder with)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v2 = Message.serializedData(partial:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = MEMORY[0x1E1299430](0x6C6143656E6F6870, 0xE90000000000006CLL);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  outlined consume of Data._Representation(v2, v4);
  Experience.encode(with:)(with);
}

uint64_t PhoneCallExperience.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch19PhoneCallExperience_phoneCall;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id PhoneCallExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneCallExperience();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhoneCallExperience.CodingKeys and conformance PhoneCallExperience.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PhoneCallExperience.CodingKeys and conformance PhoneCallExperience.CodingKeys;
  if (!lazy protocol witness table cache variable for type PhoneCallExperience.CodingKeys and conformance PhoneCallExperience.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallExperience.CodingKeys and conformance PhoneCallExperience.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for PhoneCallExperience()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id INInformationUseCaseIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void key path getter for INInformationUseCaseIntent.parameters : INInformationUseCaseIntent(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 parameters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for INInformationUseCaseParameter();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for INInformationUseCaseIntent.parameters : INInformationUseCaseIntent(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for INInformationUseCaseParameter();
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setParameters_];
}

void key path getter for INInformationUseCaseIntent.infoDomain : INInformationUseCaseIntent(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void key path setter for INInformationUseCaseIntent.infoDomain : INInformationUseCaseIntent(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = MEMORY[0x1E1299430](*a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

id INInformationUseCaseIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INInformationUseCaseIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id INInformationUseCaseIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INInformationUseCaseIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INInformationUseCaseIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance INInformationUseCaseIntentResponseCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance INInformationUseCaseIntentResponseCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E1299920](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance INInformationUseCaseIntentResponseCode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized INInformationUseCaseIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t INInformationUseCaseIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *INInformationUseCaseIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *INInformationUseCaseIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___INInformationUseCaseIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id INInformationUseCaseIntentResponse.init()()
{
  *&v0[OBJC_IVAR___INInformationUseCaseIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INInformationUseCaseIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id INInformationUseCaseIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___INInformationUseCaseIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INInformationUseCaseIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id INInformationUseCaseIntent.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t specialized INInformationUseCaseIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type INInformationUseCaseIntentResponseCode and conformance INInformationUseCaseIntentResponseCode()
{
  result = lazy protocol witness table cache variable for type INInformationUseCaseIntentResponseCode and conformance INInformationUseCaseIntentResponseCode;
  if (!lazy protocol witness table cache variable for type INInformationUseCaseIntentResponseCode and conformance INInformationUseCaseIntentResponseCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INInformationUseCaseIntentResponseCode and conformance INInformationUseCaseIntentResponseCode);
  }

  return result;
}

id INInformationUseCaseParameter.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430]();
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v6) initWithIdentifier:v11 displayString:v12 pronunciationHint:v13];

  return v14;
}

id INInformationUseCaseParameter.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430]();
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for INInformationUseCaseParameter();
  v14 = objc_msgSendSuper2(&v16, sel_initWithIdentifier_displayString_pronunciationHint_, v11, v12, v13);

  return v14;
}

id INInformationUseCaseParameter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INInformationUseCaseParameter.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INInformationUseCaseParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static INInformationUseCaseParameterResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseParameterResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static INInformationUseCaseParameterResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___INInformationUseCaseParameterResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

unint64_t type metadata accessor for INObject()
{
  result = lazy cache variable for type metadata for INObject;
  if (!lazy cache variable for type metadata for INObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INObject);
  }

  return result;
}

id static INInformationUseCaseParameterResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseParameterResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id INInformationUseCaseParameter.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id INInformationUseCaseParameterValue.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430]();
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v6) initWithIdentifier:v11 displayString:v12 pronunciationHint:v13];

  return v14;
}

id INInformationUseCaseParameterValue.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430]();
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for INInformationUseCaseParameterValue();
  v14 = objc_msgSendSuper2(&v16, sel_initWithIdentifier_displayString_pronunciationHint_, v11, v12, v13);

  return v14;
}

id INInformationUseCaseParameterValue.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INInformationUseCaseParameterValue.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INInformationUseCaseParameterValue();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static INInformationUseCaseParameterValueResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseParameterValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static INInformationUseCaseParameterValueResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___INInformationUseCaseParameterValueResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static INInformationUseCaseParameterValueResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseParameterValueResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id INInformationUseCaseParameterValue.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void key path getter for INInformationUseCaseUtterance.spokenString : INInformationUseCaseUtterance(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 spokenString];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void key path setter for INInformationUseCaseUtterance.spokenString : INInformationUseCaseUtterance(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = MEMORY[0x1E1299430](*a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSpokenString_];
}

id INInformationUseCaseUtterance.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430]();
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v6) initWithIdentifier:v11 displayString:v12 pronunciationHint:v13];

  return v14;
}

id INInformationUseCaseUtterance.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v11 = MEMORY[0x1E1299430]();
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x1E1299430](a3, a4);

  if (a6)
  {
    v13 = MEMORY[0x1E1299430](a5, a6);
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v6;
  v16.super_class = type metadata accessor for INInformationUseCaseUtterance();
  v14 = objc_msgSendSuper2(&v16, sel_initWithIdentifier_displayString_pronunciationHint_, v11, v12, v13);

  return v14;
}

id INInformationUseCaseUtterance.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id INInformationUseCaseUtterance.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for INInformationUseCaseUtterance();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id static INInformationUseCaseUtteranceResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseUtteranceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id static INInformationUseCaseUtteranceResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for INObject();

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for INObject();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for INObject();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___INInformationUseCaseUtteranceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, isa);

  return v3;
}

id static INInformationUseCaseUtteranceResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___INInformationUseCaseUtteranceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id INInformationUseCaseUtterance.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x1EEDC4558](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t BinaryDecodingOptions.init()()
{
  return MEMORY[0x1EEE3F530]();
}

{
  return MEMORY[0x1EEE156B8]();
}

uint64_t type metadata accessor for BinaryDecodingOptions()
{
  return MEMORY[0x1EEE3F538]();
}

{
  return MEMORY[0x1EEE156D0]();
}

uint64_t Message.init(serializedData:extensions:partial:options:)()
{
  return MEMORY[0x1EEE3F628]();
}

{
  return MEMORY[0x1EEE158F0]();
}

uint64_t Message.serializedData(partial:)()
{
  return MEMORY[0x1EEE3F630]();
}

{
  return MEMORY[0x1EEE158F8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE20]();
}