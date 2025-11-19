uint64_t sub_26518DB98()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for AsyncStream();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  if (*(v0 + v6))
  {
    v7 = *(v0 + v6 + 8);
  }

  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t partial apply for closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for AsyncStream() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:)(a1, v1 + v6, v10, v11, v12, v4);
}

uint64_t AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = *(a7 - 8);
  v9[11] = v10;
  v9[12] = *(v10 + 64);
  v9[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:), 0, 0);
}

uint64_t AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[7];
  v19 = v0[9];
  v20 = v0[6];
  v6 = v0[5];
  (*(v3 + 16))(v1, v0[10], v4);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[14] = v9;
  *(v9 + 16) = *(v4 + 16);
  *(v9 + 24) = v19;
  (*(v3 + 32))(v9 + v7, v1, v4);
  v10 = (v9 + v8);
  *v10 = v20;
  v10[1] = v5;
  *(v9 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)) = v6;

  v11 = v6;
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:);
  v13 = v0[9];
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[2];
  v17 = v0[3];

  return timeout<A>(after:throwing:work:)(v16, v17, v14, v15, &async function pointer to partial apply for closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:), v9, v13);
}

{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:), 0, 0);
  }

  else
  {
    v5 = v3[13];
    v4 = v3[14];

    v6 = v3[1];

    return v6();
  }
}

{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v9 = type metadata accessor for Optional();
  v7[9] = v9;
  v10 = *(v9 - 8);
  v7[10] = v10;
  v11 = *(v10 + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = *(a6 - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v14 = *(*(type metadata accessor for Optional() - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v15 = type metadata accessor for AsyncStream.Iterator();
  v7[15] = v15;
  v16 = *(v15 - 8);
  v7[16] = v16;
  v17 = *(v16 + 64) + 15;
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:), 0, 0);
}

uint64_t closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = v0[3];
  type metadata accessor for AsyncStream();
  AsyncStream.makeAsyncIterator()();
  v0[18] = 0;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:);
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[15];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:), 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[6];
    (*(v0[16] + 8))(v0[17], v0[15]);
    swift_willThrow();
    v5 = v4;
    v6 = v0[6];
LABEL_5:
    v15 = v0[17];
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[11];

    v19 = v0[1];
LABEL_6:

    return v19();
  }

  v7 = v0[18];
  v8 = v0[13];
  v9 = v0[11];
  v11 = v0[4];
  v10 = v0[5];
  (*(v2 + 32))(v8, v1, v3);
  v11(v8);
  if (v7)
  {
    v13 = v0[16];
    v12 = v0[17];
    v14 = v0[15];
    (*(v0[12] + 8))(v0[13], v0[7]);
    (*(v13 + 8))(v12, v14);
    goto LABEL_5;
  }

  v21 = v0[11];
  v22 = v0[8];
  (*(v0[12] + 8))(v0[13], v0[7]);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    v29 = v0[14];
    v30 = v0[13];
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[2];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v23 + 32))(v33, v31, v32);

    v19 = v0[1];
    goto LABEL_6;
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v0[18] = 0;
  v24 = *(MEMORY[0x277D85798] + 4);
  v25 = swift_task_alloc();
  v0[19] = v25;
  *v25 = v0;
  v25[1] = closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:);
  v26 = v0[17];
  v27 = v0[14];
  v28 = v0[15];

  return MEMORY[0x2822003E8](v27, 0, 0, v28);
}

uint64_t sub_26518E828()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for AsyncStream();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  v8 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t partial apply for closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(type metadata accessor for AsyncStream() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v1 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)(a1, v1 + v8, v12, v13, v14, v6, v5);
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  (*(*(a1 - 8) + 56))(&v9 - v6, 1, 1, a1);
  return DoNotEncode.init(wrappedValue:)(v7, a1, a2);
}

uint64_t DoNotEncode.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t DoNotEncode.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t DoNotEncode.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t DoNotEncode.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v5 = *(*(a2 - 8) + 56);
  v5(a3, 1, 1, a2);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(a3, v6);
  return (v5)(a3, 1, 1, a2);
}

uint64_t type metadata completion function for DoNotEncode(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Data.readableDescription.getter(uint64_t a1, uint64_t a2, SEL *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [isa *a3];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

Swift::Int SecCertParsingError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1);
  return Hasher._finalize()();
}

void Data.asSecCerts()(uint64_t a1, unint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v16, 0, 14);
      closure #1 in Data.asSecCerts()(v16, v16, &v15);
      goto LABEL_23;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v5 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v3, a1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v5 += v3 - a1;
    }

    v6 = __OFSUB__(v4, v3);
    v7 = v4 - v3;
    if (!v6)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v16[0] = a1;
    LOWORD(v16[1]) = a2;
    BYTE2(v16[1]) = BYTE2(a2);
    BYTE3(v16[1]) = BYTE3(a2);
    BYTE4(v16[1]) = BYTE4(a2);
    BYTE5(v16[1]) = BYTE5(a2);
    closure #1 in Data.asSecCerts()(v16, v16 + BYTE6(a2), &v15);
    goto LABEL_23;
  }

  v8 = a1;
  v7 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v5 = __DataStorage._bytes.getter();
  if (v5)
  {
    v9 = __DataStorage._offset.getter();
    if (!__OFSUB__(v8, v9))
    {
      v5 += v8 - v9;
      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
  }

LABEL_15:
  v10 = MEMORY[0x2667538A0]();
  if (v10 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v5;
  if (v5)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  closure #1 in Data.asSecCerts()(v5, v13, v16);
LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
}

void closure #1 in Data.asSecCerts()(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20 = MEMORY[0x277D84F90];
  if (a1)
  {
    v4 = 0;
    v5 = a2 - a1;
    v6 = *MEMORY[0x277CBECE8];
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4 == v5)
      {
        *a3 = v7;
        return;
      }

      if (__OFSUB__(v5, v4))
      {
        break;
      }

      v8 = CFDataCreate(v6, (a1 + v4), v5 - v4);
      if (!v8)
      {

        lazy protocol witness table accessor for type SecCertParsingError and conformance SecCertParsingError();
        swift_allocError();
        *v17 = 1;
        goto LABEL_15;
      }

      v9 = v8;
      v10 = SecCertificateCreateWithData(v6, v8);
      if (!v10)
      {

        lazy protocol witness table accessor for type SecCertParsingError and conformance SecCertParsingError();
        swift_allocError();
        *v18 = 2;
        swift_willThrow();

        return;
      }

      v11 = v10;
      MEMORY[0x266754620]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v20;
      v12 = v11;
      Length = SecCertificateGetLength();

      v14 = __OFADD__(v4, Length);
      v4 += Length;
      if (v14)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type SecCertParsingError and conformance SecCertParsingError();
    swift_allocError();
    *v16 = 0;
LABEL_15:
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type SecCertParsingError and conformance SecCertParsingError()
{
  result = lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError;
  if (!lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError;
  if (!lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError);
  }

  return result;
}

uint64_t static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a1;
  v5[25] = a5;
  v8 = type metadata accessor for MLS.Client.Configuration();
  v5[26] = v8;
  v9 = *(v8 - 8);
  v5[27] = v9;
  v10 = *(v9 + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v11 = type metadata accessor for MLS.Storage.StorageOptions();
  v5[30] = v11;
  v12 = *(v11 - 8);
  v5[31] = v12;
  v13 = *(v12 + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v14 = *a2;
  v15 = a2[1];
  ObjectType = swift_getObjectType();
  v5[22] = v14;
  v5[23] = v15;
  v17 = *(a4 + 232);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v5[34] = v19;
  *v19 = v5;
  v19[1] = static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:);

  return (v21)(v5 + 2, v5 + 22, ObjectType, a4);
}

uint64_t static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:)()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:);
  }

  else
  {
    v3 = static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[25];
  v5 = v0[5];
  v6 = v0[6];
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[10] = v5;
  v0[11] = *(v6 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
  v9 = v0[5];
  v10 = v0[6];
  v11 = __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
  v0[15] = v9;
  v0[16] = *(v10 + 24);
  v12 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  v13 = v0[5];
  v14 = v0[6];
  v15 = __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  v0[20] = v13;
  v0[21] = *(v14 + 8);
  v16 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  MLS.Storage.StorageOptions.init(storeHPKESecretsInSEP:groupStateStorage:groupStateStorageV2:clientStateStorage:)();
  static MLS.Client.Configuration.rcsConfiguration(anchors:validateCredentialsOverride:disallowBasicCredentials:)();
  v17 = v0[33];
  if (v1)
  {
    (*(v0[31] + 8))(v0[33], v0[30]);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v19 = v0[32];
    v18 = v0[33];
    v21 = v0[28];
    v20 = v0[29];
  }

  else
  {
    v24 = v0[31];
    v23 = v0[32];
    v25 = v0[29];
    v26 = v0[30];
    v27 = v0[26];
    v30 = v0[24];
    v28 = *(v0[27] + 32);
    v28(v25, v0[28], v27);
    (*(v24 + 16))(v23, v17, v26);
    MLS.Client.Configuration.storageOptions.setter();
    MLS.Client.Configuration.accessGroup.setter();
    MLS.Client.Configuration.useEras.setter();
    (*(v24 + 8))(v17, v26);
    v28(v30, v25, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  v22 = v0[1];

  return v22();
}

{
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[28];
  v4 = v0[29];

  v6 = v0[1];

  return v6();
}

uint64_t RegistrationActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static RegistrationActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t RegistrationActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor()
{
  result = lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor;
  if (!lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor)
  {
    type metadata accessor for RegistrationActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor);
  }

  return result;
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance RegistrationActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance RegistrationActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RegistrationActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t static XPCUtils.XPCableError.xpcError(underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v13 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getErrorValue();
  v10 = Error.readableDescription.getter(v13[1], v13[2]);
  return (*(v4 + 104))(v8, v10, v11, a2, v4);
}

char *XPCUtils.XPCError.init(type:underlyingErrorDescription:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *a4 = v4;
  return result;
}

uint64_t static XPCUtils.ClientXPCableError.xpcError(underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v13 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getErrorValue();
  v10 = Error.readableDescription.getter(v13[1], v13[2]);
  return (*(v4 + 104))(v8, v10, v11, a2, v4);
}

_BYTE *XPCUtils.XPCClientCreationError.init(type:underlyingErrorDescription:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

unint64_t XPCUtils.XPCError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t XPCUtils.XPCError.underlyingErrorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCUtils.XPCError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCUtils.XPCError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCUtils.XPCError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging8XPCUtilsO8XPCErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging8XPCUtilsO8XPCErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType);
  }

  return result;
}

uint64_t XPCUtils.XPCError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging8XPCUtilsO8XPCErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging8XPCUtilsO8XPCErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

char *protocol witness for VersatileError.init(type:underlyingErrorDescription:) in conformance XPCUtils.XPCError@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *a4 = v4;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance XPCUtils.XPCError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance XPCUtils.XPCError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t XPCUtils.XPCClientCreationError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance XPCUtils.XPCError.ErrorType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v5, v6);
}

uint64_t XPCUtils.XPCClientCreationError.underlyingErrorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCUtils.XPCClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCUtils.XPCClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCUtils.XPCClientCreationError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging8XPCUtilsO22XPCClientCreationErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging8XPCUtilsO22XPCClientCreationErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v9;
  v15 = 0;
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

uint64_t XPCUtils.XPCClientCreationError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging8XPCUtilsO22XPCClientCreationErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging8XPCUtilsO22XPCClientCreationErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v19;
    v17 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for XPCUtils.XPCClientCreationError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for XPCUtils.XPCClientCreationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for XPCUtils.XPCError(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance XPCUtils.XPCClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance XPCUtils.XPCClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

const char *SMAFeatureFlagsKey.feature.getter()
{
  v1 = *v0;
  v2 = "KeyUpdates";
  v3 = "ClientNegativeIMDNs";
  v4 = "UseDefaultsForExternalKPs";
  if (v1 != 4)
  {
    v4 = "EnforceXPCEntitlements";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "Persistence";
  if (v1 != 1)
  {
    v5 = "SelfHeal";
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

uint64_t SMAFeatureFlagsKey.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for SMAFeatureFlagsKey;
  v4[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
  LOBYTE(v4[0]) = v1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

Swift::Int SMAFeatureFlagsKey.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  return Hasher._finalize()();
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance SMAFeatureFlagsKey()
{
  v1 = *v0;
  v2 = "KeyUpdates";
  v3 = "ClientNegativeIMDNs";
  v4 = "UseDefaultsForExternalKPs";
  if (v1 != 4)
  {
    v4 = "EnforceXPCEntitlements";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "Persistence";
  if (v1 != 1)
  {
    v5 = "SelfHeal";
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

unint64_t lazy protocol witness table accessor for type [SMAFeatureFlagsKey] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SMAFeatureFlagsKey] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SMAFeatureFlagsKey] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging18SMAFeatureFlagsKeyOGMd, &_sSay15SecureMessaging18SMAFeatureFlagsKeyOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SMAFeatureFlagsKey] and conformance [A]);
  }

  return result;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.__allocating_init(group:context:persister:eventSender:credentialProvider:keyPackageProvider:featureFlagsStore:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v20 = *(v11 + 48);
  v21 = *(v11 + 52);
  v22 = swift_allocObject();
  MLS.CheckKeyPackageExpirationOperation.init(group:context:persister:eventSender:credentialProvider:keyPackageProvider:featureFlagsStore:clientIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v22;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.group.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.persister.getter()
{
  v1 = (v0 + *(*v0 + 144));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t MLS.CheckKeyPackageExpirationOperation.clientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 152));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.eventSender.getter()
{
  v1 = (v0 + *(*v0 + 160));
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t MLS.CheckKeyPackageExpirationOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 192);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *MLS.CheckKeyPackageExpirationOperation.init(group:context:persister:eventSender:credentialProvider:keyPackageProvider:featureFlagsStore:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v19 = *v11;
  v28 = *a11;
  v26 = *a10;
  v27 = a11[1];
  v20 = &v11[*(*v11 + 192)];
  Logger.init(subsystem:category:)();
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  (*(*(*(v19 + 88) - 8) + 32))(&v11[*(*v11 + 136)], a3);
  v21 = &v11[*(*v11 + 144)];
  *v21 = a4;
  *(v21 + 1) = a5;
  v22 = &v11[*(*v11 + 160)];
  *v22 = a6;
  *(v22 + 1) = a7;
  outlined init with take of MLS.KeyUpdatePolicy(a8, &v11[*(*v11 + 168)]);
  outlined init with take of MLS.KeyPackageProvider(a9, &v11[*(*v11 + 176)]);
  *&v11[*(*v11 + 184)] = v26;
  v23 = &v11[*(*v11 + 152)];
  *v23 = v28;
  *(v23 + 1) = v27;
  return v11;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.isDisabled.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + *(*v0 + 184));
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v5 & 1) == 0))
  {
    v17[3] = &type metadata for SMAFeatureFlagsKey;
    v17[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
    LOBYTE(v17[0]) = 0;

    v16 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v17);

    if ((v16 & 1) == 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(*(v3 + 56) + v4))
  {
    return 0;
  }

LABEL_4:
  v6 = *(*v1 + 192);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    v11 = *(*v1 + 136);
    v12 = (*(*(v2 + 112) + 16))(*(v2 + 88));
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_264F1F000, v7, v8, "CheckKeyPackageExpirationOperation not performing expired key package refresh { identifier: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  return 1;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4[20] = a2;
  v4[21] = v3;
  v4[19] = a1;
  v6 = *v3;
  v4[22] = *v3;
  v7 = *(*(type metadata accessor for MLS.KeyPackageProvider() - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v8 = *(v6 + 88);
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v10 = *(v9 + 64) + 15;
  v4[26] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v4[29] = v12;
  v13 = *(v12 - 8);
  v4[30] = v13;
  v14 = *(v13 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v15 = type metadata accessor for MLS.Identity.Credential();
  v4[34] = v15;
  v16 = *(v15 - 8);
  v4[35] = v16;
  v17 = *(v16 + 64) + 15;
  v4[36] = swift_task_alloc();
  v18 = type metadata accessor for MLS.Identity.SigningIdentity();
  v4[37] = v18;
  v19 = *(v18 - 8);
  v4[38] = v19;
  v20 = *(v19 + 64) + 15;
  v4[39] = swift_task_alloc();
  v21 = swift_task_alloc();
  v22 = *a3;
  v4[40] = v21;
  v4[41] = v22;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static MLSActor.shared;
  v4[42] = static MLSActor.shared;
  v24 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:), v23, 0);
}

uint64_t MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  *(v0 + 344) = *(**(v0 + 168) + 136);
  v4 = *(v2 + 112);
  *(v0 + 352) = v4;
  *(v0 + 360) = (*(v4 + 16))(v1);
  *(v0 + 368) = v5;
  v7 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v8 = swift_task_alloc();
  *(v0 + 376) = v8;
  *v8 = v0;
  v8[1] = MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:);
  v9 = *MEMORY[0x277D85DE8];

  return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v7, v6);
}

{
  v16 = *MEMORY[0x277D85DE8];
  v1 = v0[46];

  v15 = v0[49];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[26];
  v11 = v0[23];

  v12 = v0[1];
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  v7 = *(v3 + 336);
  if (v1)
  {
    v8 = MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v8 = MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:);
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v7, 0);
}

{
  v184 = v1;
  v183 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 384);
  v3 = *(v2 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = v2;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v157 = *(v1 + 384);

    v5 = *(v1 + 384);
LABEL_2:
    v163 = v4;
    v165 = &v162;
    v6 = *(v1 + 304);
    v7 = *(v1 + 280);
    v8 = *(v1 + 240);
    MEMORY[0x28223BE20](a1);
    v164 = &v162 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v164, v9);
    v166 = 0;
    v10 = 0;
    v4 = v5 + 56;
    v11 = 1 << *(v2 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v179 = (v8 + 48);
    v171 = (v8 + 8);
    v172 = (v8 + 32);
    v174 = v6 + 16;
    v175 = (v7 + 8);
    v176 = (v6 + 8);
    v177 = v6;
    v15 = *(v1 + 392);
    v173 = v5;
    v169 = v14;
    v170 = v5 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v178 = (v13 - 1) & v13;
LABEL_14:
      v20 = v17 | (v10 << 6);
      v21 = *(v1 + 336);
      v22 = *(v1 + 320);
      v23 = *(v1 + 296);
      v24 = *(v5 + 48);
      v25 = *(v177 + 72);
      v168 = v20;
      (*(v177 + 16))(v22, v24 + v25 * v20, v23);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        v26 = *(v1 + 336);
        swift_task_reportUnexpectedExecutor();
      }

      v27 = *(v1 + 320);
      v28 = *(v1 + 288);
      v29 = *(v1 + 224);
      v30 = *(v1 + 232);
      MLS.Identity.SigningIdentity.credential.getter();
      MLS.Identity.Credential.credentialNotAfter.getter();
      v31 = *v179;
      if ((*v179)(v29, 1, v30) == 1)
      {
        outlined destroy of Date?(*(v1 + 224));
      }

      else
      {
        v33 = *(v1 + 256);
        v32 = *(v1 + 264);
        v34 = *(v1 + 232);
        (*v172)(v32, *(v1 + 224), v34);
        Date.init()();
        v35 = static Date.< infix(_:_:)();
        v36 = *v171;
        (*v171)(v33, v34);
        v36(v32, v34);
        v4 = v170;
        v5 = v173;
        if (v35)
        {
          v14 = v169;
          goto LABEL_24;
        }
      }

      v37 = *(v1 + 288);
      v38 = *(v1 + 216);
      MLS.Identity.Credential.participantInfoNotAfter.getter();
      v167 = v15;
      if (v15)
      {
        v103 = *(v1 + 384);
        v104 = *(v1 + 368);
        v105 = *(v1 + 320);
        v106 = *(v1 + 296);
        (*v175)(*(v1 + 288), *(v1 + 272));
        (*v176)(v105, v106);

        swift_willThrow();
        goto LABEL_50;
      }

      v39 = *(v1 + 232);
      v40 = *(v1 + 216);
      if ((v31)(v40, 1, v39) == 1)
      {
        outlined destroy of Date?(v40);
        v14 = v169;
        goto LABEL_6;
      }

      v42 = *(v1 + 248);
      v41 = *(v1 + 256);
      (*v172)(v42, v40, v39);
      Date.init()();
      v43 = static Date.< infix(_:_:)();
      v44 = *v171;
      (*v171)(v41, v39);
      v44(v42, v39);
      v14 = v169;
      v4 = v170;
      v5 = v173;
      if (v43)
      {
        v15 = 0;
LABEL_24:
        v2 = *(v1 + 320);
        v45 = *(v1 + 296);
        (*v175)(*(v1 + 288), *(v1 + 272));
        (*v176)(v2, v45);
        *&v164[(v168 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v168;
        v46 = __OFADD__(v166++, 1);
        v13 = v178;
        if (v46)
        {
          __break(1u);
LABEL_27:
          v47 = specialized _NativeSet.extractSubset(using:count:)(v164, v163, v166, *(v1 + 384));
          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:
        v2 = *(v1 + 320);
        v16 = *(v1 + 296);
        (*v175)(*(v1 + 288), *(v1 + 272));
        (*v176)(v2, v16);
        v15 = 0;
        v13 = v178;
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_27;
      }

      v19 = *(v4 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v178 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  v159 = *(v1 + 384);
  v158 = *(v1 + 392);
  v160 = swift_slowAlloc();
  v15 = v158;
  v47 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy8SwiftMLS0J0O8IdentityO07SigningK0VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_8i8MLS0G0O8k3O07L7H0V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(v160, v4, v159, closure #1 in MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:));

  MEMORY[0x266755550](v160, -1, -1);
  v167 = v158;
  if (v158)
  {
    v161 = *(v1 + 368);
LABEL_50:

    v108 = *(v1 + 312);
    v107 = *(v1 + 320);
    v109 = *(v1 + 288);
    v111 = *(v1 + 256);
    v110 = *(v1 + 264);
    v112 = *(v1 + 248);
    v114 = *(v1 + 216);
    v113 = *(v1 + 224);
    v115 = *(v1 + 208);
    v116 = *(v1 + 184);

    v117 = *(v1 + 8);
    v118 = *MEMORY[0x277D85DE8];
LABEL_55:

    return v117();
  }

  else
  {
LABEL_28:
    v48 = *(v47 + 16);
    if (v48 <= 1)
    {
LABEL_43:
      v67 = *(v1 + 368);
      if (v48)
      {
        v68 = *(**(v1 + 168) + 192);
        v69 = *(v1 + 368);

        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.default.getter();

        v72 = os_log_type_enabled(v70, v71);
        v73 = *(v1 + 368);
        v177 = v47;
        if (v72)
        {
          v74 = *(v1 + 360);
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v181 = v76;
          *v75 = 136315138;
          v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v73, &v181);

          *(v75 + 4) = v77;
          _os_log_impl(&dword_264F1F000, v70, v71, "CheckKeyPackageExpirationOperation key package updates needed { identifier: %s }", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v76);
          MEMORY[0x266755550](v76, -1, -1);
          MEMORY[0x266755550](v75, -1, -1);
        }

        else
        {
        }

        v83 = *(v1 + 344);
        v82 = *(v1 + 352);
        v85 = *(v1 + 200);
        v84 = *(v1 + 208);
        v86 = *(v1 + 184);
        v87 = *(v1 + 192);
        v89 = *(v1 + 168);
        v88 = *(v1 + 176);
        v90 = *(v1 + 152);
        v179 = *(v1 + 160);
        v91 = *(v88 + 120);
        v92 = *(v88 + 96);
        *(v1 + 16) = *(v88 + 80);
        *(v1 + 24) = v87;
        *(v1 + 32) = v92;
        *(v1 + 48) = v82;
        *(v1 + 56) = v91;
        updated = type metadata accessor for MLS.UpdateOtherExpiredKeyPackagesOperation();
        v94 = *(v89 + 3);
        v178 = *(v89 + 2);
        (*(v85 + 16))(v84, &v89[v83], v87);
        outlined init with copy of ServerBag.MLS(&v89[*(*v89 + 168)], v1 + 112);
        v95 = *v89;
        v96 = &v89[*(*v89 + 160)];
        v97 = *v96;
        v98 = v96[1];
        v99 = &v89[*(*v89 + 152)];
        v100 = v99[1];
        v181 = *v99;
        v182 = v100;
        outlined init with copy of MLS.KeyPackageProvider(&v89[*(v95 + 176)], v86);

        swift_unknownObjectRetain();

        v101 = MLS.UpdateOtherExpiredKeyPackagesOperation.__allocating_init(group:context:identitiesNeedingUpdate:credentialProvider:eventSender:clientIdentifier:keyPackageProvider:)(v178, v94, v84, v177, (v1 + 112), v97, v98, &v181, v86);
        v90[3] = updated;
        v90[4] = swift_getWitnessTable();
        *v90 = v101;
        v102 = (v90 + 5);
LABEL_53:
        outlined init with copy of ServerBag.MLS(v179, v102);
        v81 = 2;
      }

      else
      {
        v78 = *(v1 + 152);
        v79 = *(v1 + 160);
        v80 = *(v1 + 368);

        *(v78 + 64) = 0u;
        *(v78 + 80) = 0u;
        *(v78 + 32) = 0u;
        *(v78 + 48) = 0u;
        *v78 = 0u;
        *(v78 + 16) = 0u;
        *(v78 + 96) = 3;
        outlined init with copy of ServerBag.MLS(v79, v78 + 104);
        v81 = 1;
      }

      v141 = *(v1 + 320);
      v140 = *(v1 + 328);
      v142 = *(v1 + 312);
      v143 = *(v1 + 288);
      v145 = *(v1 + 256);
      v144 = *(v1 + 264);
      v146 = *(v1 + 248);
      v148 = *(v1 + 216);
      v147 = *(v1 + 224);
      v149 = *(v1 + 208);
      v179 = *(v1 + 184);
      v150 = *(v1 + 152);
      *(v150 + 408) = v81;
      *(v150 + 424) = 0;
      *(v150 + 432) = 0;
      *(v150 + 416) = v140;

      v117 = *(v1 + 8);
      v151 = *MEMORY[0x277D85DE8];
      goto LABEL_55;
    }

    v49 = *(v1 + 304);
    v180[0] = 0;
    v50 = -1;
    v51 = -1 << *(v47 + 32);
    if (-v51 < 64)
    {
      v50 = ~(-1 << -v51);
    }

    v52 = v50 & *(v47 + 56);
    v53 = (63 - v51) >> 6;
    v178 = v49 + 16;
    v179 = (v49 + 8);

    v54 = 0;
    v2 = 0;
    if (!v52)
    {
LABEL_33:
      while (1)
      {
        v4 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_62;
        }

        if (v4 >= v53)
        {

          if ((v2 & 1) == 0)
          {
            v48 = *(v47 + 16);
            goto LABEL_43;
          }

          v56 = *(v1 + 368);
          v57 = *(v1 + 168);

          v58 = *(*v57 + 192);

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.default.getter();

          v61 = os_log_type_enabled(v59, v60);
          v62 = *(v1 + 368);
          if (v61)
          {
            v63 = *(v1 + 360);
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v181 = v65;
            *v64 = 136315138;
            v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, &v181);

            *(v64 + 4) = v66;
            _os_log_impl(&dword_264F1F000, v59, v60, "CheckKeyPackageExpirationOperation era advancement needed { identifier: %s }", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v65);
            MEMORY[0x266755550](v65, -1, -1);
            MEMORY[0x266755550](v64, -1, -1);
          }

          else
          {
          }

          v120 = *(v1 + 344);
          v119 = *(v1 + 352);
          v121 = *(v1 + 200);
          v177 = *(v1 + 208);
          v122 = v177;
          v123 = *(v1 + 192);
          v125 = *(v1 + 168);
          v124 = *(v1 + 176);
          v126 = *(v1 + 152);
          v179 = *(v1 + 160);
          v127 = *(v124 + 120);
          v128 = *(v124 + 96);
          *(v1 + 64) = *(v124 + 80);
          *(v1 + 72) = v123;
          *(v1 + 80) = v128;
          *(v1 + 96) = v119;
          *(v1 + 104) = v127;
          v129 = type metadata accessor for MLS.EraAdvancementOperation();
          v130 = *(v125 + 3);
          v178 = *(v125 + 2);
          (*(v121 + 16))(v122, &v125[v120], v123);
          v131 = &v125[*(*v125 + 144)];
          v132 = *v131;
          v133 = v131[1];
          v134 = &v125[*(*v125 + 160)];
          v135 = *v134;
          v136 = v134[1];
          v137 = &v125[*(*v125 + 152)];
          v138 = v137[1];
          v181 = *v137;
          v182 = v138;

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();

          v139 = MLS.EraAdvancementOperation.__allocating_init(group:context:persister:eventSender:clientIdentifier:)(v178, v130, v177, v132, v133, v135, v136, &v181);
          v126[3] = v129;
          v126[4] = swift_getWitnessTable();
          *v126 = v139;
          v102 = (v126 + 5);
          goto LABEL_53;
        }

        v52 = *(v47 + 56 + 8 * v4);
        ++v54;
        if (v52)
        {
          goto LABEL_36;
        }
      }
    }

    while (1)
    {
      v4 = v54;
LABEL_36:
      v55 = *(v1 + 168);
      (*(v49 + 16))(*(v1 + 312), *(v47 + 48) + *(v49 + 72) * (__clz(__rbit64(v52)) | (v4 << 6)), *(v1 + 296));
      closure #2 in implicit closure #1 in MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)(v180, v55, &v181);
      if (v15)
      {
        break;
      }

      v52 &= v52 - 1;
      (*v179)(*(v1 + 312), *(v1 + 296));
      v2 = v181;
      v180[0] = v181;
      v54 = v4;
      if (!v52)
      {
        goto LABEL_33;
      }
    }

    v153 = *(v1 + 296);
    v154 = *(v1 + 312);

    v155 = *v179;
    v156 = *MEMORY[0x277D85DE8];

    return v155(v154, v153);
  }
}

uint64_t closure #1 in MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v0 = type metadata accessor for MLS.Identity.Credential();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  MLS.Identity.SigningIdentity.credential.getter();
  v5 = MLS.Identity.Credential.isExpired.getter();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t closure #2 in implicit closure #1 in MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)@<X0>(char *a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for MLS.Identity.Credential();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (v11)
  {
    v13 = 1;
  }

  else
  {
    MLS.Identity.SigningIdentity.credential.getter();
    v14 = MLS.Identity.Credential.telURI.getter();
    result = (*(v7 + 8))(v10, v6);
    if (v14)
    {
      v15 = (a2 + *(*a2 + 152));
      v17 = *v15;
      v16 = v15[1];
      v18[0] = v17;
      v18[1] = v16;
      MEMORY[0x28223BE20](result);
      v18[-2] = v18;
      v13 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v18[-4], v14);
    }

    else
    {
      v13 = 0;
    }
  }

  *a3 = v13 & 1;
  return result;
}

char *MLS.CheckKeyPackageExpirationOperation.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 136)]);
  v3 = *&v0[*(*v0 + 144)];
  swift_unknownObjectRelease();
  v4 = *&v0[*(*v0 + 152) + 8];

  v5 = *&v0[*(*v0 + 160)];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(*v0 + 168)]);
  outlined destroy of MLS.KeyPackageProvider(&v0[*(*v0 + 176)]);
  v6 = *&v0[*(*v0 + 184)];

  v7 = *(*v0 + 192);
  v8 = type metadata accessor for Logger();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  return v0;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.__deallocating_deinit()
{
  MLS.CheckKeyPackageExpirationOperation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.CheckKeyPackageExpirationOperation<A, B, C>(uint64_t a1)
{
  v4 = *(**v1 + 256);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.CheckKeyPackageExpirationOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 264);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.CheckKeyPackageExpirationOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 192);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy8SwiftMLS0J0O8IdentityO07SigningK0VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_8i8MLS0G0O8k3O07L7H0V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = type metadata accessor for MLS.Identity.SigningIdentity();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x28223BE20](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        return specialized _NativeSet.extractSubset(using:count:)(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 32 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v37 = *(v16 + 16);
    v19 = *(v16 + 24);
    v20 = *(v9 + 40);
    Hasher.init(_seed:)();
    v36 = v17;
    if ((v19 & 0x80000000) == 0)
    {
      MEMORY[0x266754DE0](0);

      v21 = v18;
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      v22 = v19;
LABEL_21:
      v23 = v37;
      goto LABEL_22;
    }

    MEMORY[0x266754DE0](1);

    v21 = v18;
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    v22 = v19;
    if (v19)
    {
      Hasher._combine(_:)(0);
      goto LABEL_21;
    }

    Hasher._combine(_:)(1u);
    v23 = v37;
    MEMORY[0x266754DE0](v37);
LABEL_22:
    result = Hasher._finalize()();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_37;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v9 + 48) + 32 * v27;
    *v32 = v21;
    *(v32 + 8) = v36;
    *(v32 + 16) = v23;
    *(v32 + 24) = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_38;
    }

    v4 = v34;
    v10 = v35;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

{
  v37 = type metadata accessor for MLS.Identity.SigningIdentity();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMR);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    lazy protocol witness table accessor for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity();
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t instantiation function for generic protocol witness table for MLS.CheckKeyPackageExpirationOperation<A, B, C>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.CheckKeyPackageExpirationOperation(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = type metadata accessor for MLS.KeyPackageProvider();
    if (v4 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = type metadata accessor for Logger();
      if (v5 <= 0x3F)
      {
        v8 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.CheckKeyPackageExpirationOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 256);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 264);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
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

unint64_t lazy protocol witness table accessor for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity()
{
  result = lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity;
  if (!lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity)
  {
    type metadata accessor for MLS.Identity.SigningIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity);
  }

  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = -2;
  }

  else
  {
    specialized Set.subscript.getter(result, *(a1 + 36), a1, v10);
    v6 = v10[0];
    v7 = v10[1];
    v8 = v10[2];
    v9 = v11;
    outlined copy of MLS.AllMember();
    result = outlined consume of MLS.AllMember();
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  return result;
}

{
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    specialized Set.subscript.getter(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for MLS.Identity.SigningIdentity();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
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

uint64_t MLS.EncryptOperation.__allocating_init(data:group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  v14 = *(a5 + 112);
  *(v13 + 144) = *(a5 + 96);
  *(v13 + 160) = v14;
  *(v13 + 176) = *(a5 + 128);
  *(v13 + 192) = *(a5 + 144);
  v15 = *(a5 + 48);
  *(v13 + 80) = *(a5 + 32);
  *(v13 + 96) = v15;
  v16 = *(a5 + 80);
  *(v13 + 112) = *(a5 + 64);
  *(v13 + 128) = v16;
  v17 = *(a5 + 16);
  *(v13 + 48) = *a5;
  *(v13 + 64) = v17;
  return v13;
}

uint64_t MLS.EncryptOperation.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.EncryptOperation.group.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MLS.EncryptOperation.context.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 128);
  v20 = *(v1 + 144);
  v21 = v2;
  v4 = *(v1 + 160);
  v22 = *(v1 + 176);
  v5 = *(v1 + 96);
  v7 = *(v1 + 64);
  v16 = *(v1 + 80);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 96);
  v9 = *(v1 + 128);
  v18 = *(v1 + 112);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 64);
  v15[0] = *(v1 + 48);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 176);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 192);
  *(a1 + 144) = *(v1 + 192);
  *a1 = v12;
  *(a1 + 16) = v7;
  return outlined init with copy of MLS.OutgoingEventState?(v15, v14, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
}

uint64_t MLS.EncryptOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS16EncryptOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.EncryptOperation.init(data:group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Logger.init(subsystem:category:)();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v11 = *(a5 + 112);
  *(v5 + 144) = *(a5 + 96);
  *(v5 + 160) = v11;
  *(v5 + 176) = *(a5 + 128);
  *(v5 + 192) = *(a5 + 144);
  v12 = *(a5 + 48);
  *(v5 + 80) = *(a5 + 32);
  *(v5 + 96) = v12;
  v13 = *(a5 + 80);
  *(v5 + 112) = *(a5 + 64);
  *(v5 + 128) = v13;
  v14 = *(a5 + 16);
  *(v5 + 48) = *a5;
  *(v5 + 64) = v14;
  return v5;
}

uint64_t MLS.EncryptOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[58] = a2;
  v4[59] = v3;
  v4[57] = a1;
  v6 = type metadata accessor for UUID();
  v4[60] = v6;
  v7 = *(v6 - 8);
  v4[61] = v7;
  v8 = *(v7 + 64) + 15;
  v4[62] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Group.Group.EncryptApplicationMessageWithAADInput();
  v4[63] = v9;
  v10 = *(v9 - 8);
  v4[64] = v10;
  v11 = *(v10 + 64) + 15;
  v4[65] = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.Group.EncryptWrappedApplicationMessageInput();
  v4[66] = v12;
  v13 = *(v12 - 8);
  v4[67] = v13;
  v14 = *(v13 + 64) + 15;
  v4[68] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR) - 8) + 64) + 15;
  v4[69] = swift_task_alloc();
  v16 = type metadata accessor for MLS.Identity.Credential();
  v4[70] = v16;
  v17 = *(v16 - 8);
  v4[71] = v17;
  v18 = *(v17 + 64) + 15;
  v4[72] = swift_task_alloc();
  v19 = type metadata accessor for MLS.Identity.SigningIdentity();
  v4[73] = v19;
  v20 = *(v19 - 8);
  v4[74] = v20;
  v21 = *(v20 + 64) + 15;
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v22 = type metadata accessor for MLS.Group.Member();
  v4[78] = v22;
  v23 = *(v22 - 8);
  v4[79] = v23;
  v24 = *(v23 + 64) + 15;
  v4[80] = swift_task_alloc();
  v25 = type metadata accessor for MLS.Group.Group.PriorGroupMembershipInput();
  v4[81] = v25;
  v26 = *(v25 - 8);
  v4[82] = v26;
  v27 = *(v26 + 64) + 15;
  v4[83] = swift_task_alloc();
  v28 = type metadata accessor for MLS.Group.Message();
  v4[84] = v28;
  v29 = *(v28 - 8);
  v4[85] = v29;
  v30 = *(v29 + 64) + 15;
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v31 = type metadata accessor for MetricCollector.Event();
  v4[91] = v31;
  v32 = *(*(v31 - 8) + 64) + 15;
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v33 = static MLSActor.shared;
  v4[95] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:), v33, 0);
}

void *MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v106 = v0;
  v1 = *(v0 + 472);
  *(v0 + 432) = *(v0 + 752);
  v2 = *(v1 + 48);
  *(v0 + 768) = v2;
  v3 = *(v1 + 56);
  *(v0 + 776) = v3;
  *(v0 + 784) = OBJC_IVAR____TtCO15SecureMessaging3MLS16EncryptOperation_logger;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  log = v2;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v99 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v99);
    _os_log_impl(&dword_264F1F000, v4, v5, "EncryptOperation encrypting data { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = *(v0 + 752);
  v9 = *(v0 + 744);
  v10 = *(v0 + 736);
  v11 = *(v0 + 728);
  v12 = *(v0 + 472);
  Date.init()();
  v13 = *(v11 + 20);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  outlined init with take of MetricCollector.Event(v9, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v99 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v16 = v99;
  *(v0 + 792) = v99;

  *(v0 + 432) = v16;
  v17 = v12[10];
  *(v0 + 800) = v17;
  v18 = v12[11];
  *(v0 + 808) = v18;
  v19 = v12[12];
  *(v0 + 816) = v19;
  v20 = v12[13];
  *(v0 + 824) = v20;
  v21 = v12[14];
  *(v0 + 832) = v21;
  v22 = v12[15];
  *(v0 + 840) = v22;
  if (v18 >> 60 == 15)
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v99 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(log, v3, &v99);
      _os_log_impl(&dword_264F1F000, v23, v24, "EncryptOperation encrypting without AAD { identifier: %s }", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266755550](v26, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
    }

    v27 = *(v0 + 464);
    v28 = *(v0 + 472);
    v29 = v27[3];
    v30 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v29);
    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
    v33 = *(v30 + 112);
    v95 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    *(v0 + 960) = v35;
    *v35 = v0;
    v35[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v36 = *(v0 + 696);

    return v95(v36, v31, v32, v29, v30);
  }

  v38 = *(v0 + 472);
  v39 = *(v38 + 128);
  *(v0 + 848) = v39;
  v40 = *(v38 + 136);
  *(v0 + 856) = v40;
  v41 = *(v38 + 144);
  *(v0 + 864) = v41;
  v42 = *(v38 + 152);
  *(v0 + 193) = v42;
  if (v42 > 0xFD)
  {
    outlined copy of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);

    outlined copy of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    outlined consume of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);
    if (os_log_type_enabled(v43, v44))
    {
      v89 = v44;
      v45 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v105 = v96;
      *v45 = 136315394;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(log, v3, &v105);
      *(v45 + 12) = 2080;
      v99 = v17;
      v100 = v18;
      v101 = v19;
      v102 = v20;
      v103 = v21;
      v104 = v22;
      outlined copy of Data._Representation(v17, v18);
      outlined copy of Data?(v21, v22);
      loga = v43;
      v46 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
      v48 = v47;
      v49 = v103;
      v50 = v104;
      outlined consume of Data._Representation(v99, v100);
      outlined consume of Data?(v49, v50);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v105);

      *(v45 + 14) = v51;
      _os_log_impl(&dword_264F1F000, loga, v89, "EncryptOperation encrypting with AAD { identifier: %s, aad: %s }", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v96, -1, -1);
      MEMORY[0x266755550](v45, -1, -1);
    }

    else
    {
    }

    v57 = *(v0 + 520);
    v58 = *(v0 + 464);
    v59 = *(v0 + 472);
    v61 = v58[3];
    v60 = v58[4];
    __swift_project_boxed_opaque_existential_1(v58, v61);
    outlined copy of Data._Representation(*(v59 + 16), *(v59 + 24));
    outlined copy of Data._Representation(v17, v18);
    outlined copy of Data?(v21, v22);
    MLS.Group.Group.EncryptApplicationMessageWithAADInput.init(message:messageID:originalMessageID:)();
    v62 = *(v60 + 104);
    logb = (v62 + *v62);
    v63 = v62[1];
    v64 = swift_task_alloc();
    *(v0 + 944) = v64;
    *v64 = v0;
    v64[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v65 = *(v0 + 704);
    v66 = *(v0 + 520);
    v67 = logb;
    v68 = v61;
    v69 = v60;

    return v67(v65, v66, v68, v69);
  }

  v52 = *(v38 + 176);
  *(v0 + 872) = v52;
  if ((*(v38 + 184) & 1) == 0)
  {
    v88 = *(v38 + 168);
    v90 = v52;
    *(v0 + 880) = v88;
    v85 = v40;
    v87 = v41;
    v86 = v42;
    outlined copy of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);

    outlined copy of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);
    outlined copy of MLS.AllMember?(v39, v85, v87, v86);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    outlined consume of MLS.AllMember?(v39, v85, v87, v86);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v105 = v97;
      *v72 = 136315650;
      *(v72 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(log, v3, &v105);
      logc = v71;
      *(v72 + 12) = 2080;
      outlined copy of MLS.AllMember();
      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v85, &v105);
      outlined consume of MLS.AllMember?(v39, v85, v87, v86);
      *(v72 + 14) = v73;
      *(v72 + 22) = 2080;
      *(v0 + 976) = v88;
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v74;
      MEMORY[0x2667545A0](46, 0xE100000000000000);
      v75 = v90;
      *(v0 + 448) = v90;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v76);

      v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v100, &v105);

      *(v72 + 24) = v77;
      _os_log_impl(&dword_264F1F000, v70, logc, "EncryptOperation validating single recipient was in original group { identifier: %s, destination: %s, originalGroupVersion: %s }", v72, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v97, -1, -1);
      MEMORY[0x266755550](v72, -1, -1);
    }

    else
    {

      v75 = v90;
    }

    v78 = *(v0 + 464);
    v79 = v78[3];
    v80 = v78[4];
    result = __swift_project_boxed_opaque_existential_1(v78, v79);
    if (v75 < 0)
    {
      __break(1u);
      return result;
    }

    v81 = *(v0 + 664);
    MLS.Group.Group.PriorGroupMembershipInput.init(era:epochID:)();
    v82 = *(v80 + 160);
    v98 = (v82 + *v82);
    v83 = v82[1];
    v84 = swift_task_alloc();
    *(v0 + 888) = v84;
    *v84 = v0;
    v84[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v66 = *(v0 + 664);
    v65 = v0 + 376;
    v68 = v79;
    v69 = v80;
    v67 = v98;

    return v67(v65, v66, v68, v69);
  }

  outlined copy of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);
  outlined copy of Data._Representation(v17, v18);
  outlined copy of Data?(v21, v22);
  v53 = *(v0 + 464);
  v55 = v53[3];
  v54 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v55);
  v56 = swift_task_alloc();
  *(v0 + 904) = v56;
  *v56 = v0;
  v56[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v55, v54);
}

uint64_t MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v11 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v4 = v2[95];
    v5 = v2[83];
    v6 = v2[82];
    v7 = v2[81];
    outlined consume of MLS.AdditionalAuthenticatedData?(v2[100], v2[101], v2[102], v2[103], v2[104], v2[105]);
    (*(v6 + 8))(v5, v7);
    v8 = v2[54];

    v9 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v4 = v2[95];
    (*(v2[82] + 8))(v2[83], v2[81]);
    v9 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v9, v4, 0);
}

{
  v108 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v1);
  result = (*(v2 + 8))(v1, v2);
  if (!result)
  {
    v46 = *(v0 + 784);
    v47 = *(v0 + 776);
    v48 = *(v0 + 472);
    outlined consume of MLS.AdditionalAuthenticatedData?(*(v0 + 800), *(v0 + 808), *(v0 + 816), *(v0 + 824), *(v0 + 832), *(v0 + 840));
    v49 = *(v0 + 432);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 880);
      v53 = *(v0 + 872);
      v54 = *(v0 + 776);
      v55 = *(v0 + 768);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v105 = v57;
      *v56 = 136315394;
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v105);

      *(v56 + 4) = v58;
      *(v56 + 12) = 2080;
      *(v0 + 196) = v52;
      v106 = dispatch thunk of CustomStringConvertible.description.getter();
      v107 = v59;
      MEMORY[0x2667545A0](46, 0xE100000000000000);
      *(v0 + 440) = v53;
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v60);

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, &v105);

      *(v56 + 14) = v61;
      _os_log_impl(&dword_264F1F000, v50, v51, "EncryptOperation cannot find original members { identifier: %s, originalGroupVersion: %s }", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v57, -1, -1);
      MEMORY[0x266755550](v56, -1, -1);
    }

    else
    {
      v70 = *(v0 + 776);
    }

    v62 = *(v0 + 840);
    v63 = *(v0 + 832);
    v64 = *(v0 + 824);
    v65 = *(v0 + 816);
    v66 = *(v0 + 808);
    v67 = *(v0 + 800);
    lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
    swift_allocError();
    v69 = 27;
    goto LABEL_20;
  }

  v4 = result;
  v87 = result;
  v98 = *(result + 16);
  if (!v98)
  {
LABEL_12:
    v22 = *(v0 + 864);
    v23 = *(v0 + 856);
    v24 = *(v0 + 848);
    v25 = *(v0 + 784);
    v26 = *(v0 + 776);
    v27 = *(v0 + 472);
    v28 = *(v0 + 193);
    outlined consume of MLS.AdditionalAuthenticatedData?(*(v0 + 800), *(v0 + 808), *(v0 + 816), *(v0 + 824), *(v0 + 832), *(v0 + 840));
    v29 = *(v0 + 432);

    outlined copy of MLS.AllMember?(v24, v23, v22, v28);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 193);
    v34 = *(v0 + 864);
    v35 = *(v0 + 856);
    v36 = *(v0 + 848);
    v37 = *(v0 + 776);
    if (v32)
    {
      v38 = *(v0 + 768);
      v101 = *(v0 + 624);
      v39 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v106 = v104;
      *v39 = 136315650;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v106);

      *(v39 + 4) = v40;
      *(v39 + 12) = 2080;
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v35, &v106);
      outlined consume of MLS.AllMember?(v36, v35, v34, v33);
      *(v39 + 14) = v41;
      *(v39 + 22) = 2080;
      v42 = MEMORY[0x266754630](v87, v101);
      v44 = v43;

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v106);

      *(v39 + 24) = v45;
      _os_log_impl(&dword_264F1F000, v30, v31, "EncryptOperation cannot find destination member in original list { identifier: %s, destination:  %s, originalMembers: %s }", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v104, -1, -1);
      MEMORY[0x266755550](v39, -1, -1);
    }

    else
    {

      outlined consume of MLS.AllMember?(v36, v35, v34, v33);
    }

    v62 = *(v0 + 840);
    v63 = *(v0 + 832);
    v64 = *(v0 + 824);
    v65 = *(v0 + 816);
    v66 = *(v0 + 808);
    v67 = *(v0 + 800);
    lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
    swift_allocError();
    v69 = 28;
LABEL_20:
    *v68 = v69;
    *(v68 + 8) = 0;
    *(v68 + 16) = 0;
    swift_willThrow();
    outlined consume of MLS.AdditionalAuthenticatedData?(v67, v66, v65, v64, v63, v62);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
    v71 = *(v0 + 744);
    v72 = *(v0 + 736);
    v73 = *(v0 + 720);
    v74 = *(v0 + 712);
    v75 = *(v0 + 704);
    v76 = *(v0 + 696);
    v77 = *(v0 + 688);
    v78 = *(v0 + 664);
    v79 = *(v0 + 640);
    v80 = *(v0 + 616);
    v90 = *(v0 + 608);
    v92 = *(v0 + 600);
    v93 = *(v0 + 576);
    v95 = *(v0 + 552);
    v97 = *(v0 + 544);
    v99 = *(v0 + 520);
    v102 = *(v0 + 496);

    v81 = *(v0 + 8);

    return v81();
  }

  v5 = 0;
  v86 = *(v0 + 856);
  v6 = *(v0 + 632);
  v94 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v96 = v6;
  v91 = (*(v0 + 592) + 8);
  v88 = (v6 + 8);
  v89 = (*(v0 + 568) + 8);
  v7 = *(v0 + 896);
  while (1)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(v0 + 760);
    (*(v96 + 16))(*(v0 + 640), v94 + *(v96 + 72) * v5, *(v0 + 624));
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      v9 = *(v0 + 760);
      swift_task_reportUnexpectedExecutor();
    }

    v10 = *(v0 + 640);
    v11 = *(v0 + 616);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);
    v14 = *(v0 + 560);
    MLS.Group.Member.identity.getter();
    MLS.Identity.SigningIdentity.credential.getter();
    (*v91)(v11, v12);
    v15 = MLS.Identity.Credential.telURI.getter();
    (*v89)(v13, v14);
    if (v15)
    {
      break;
    }

    result = (*v88)(*(v0 + 640), *(v0 + 624));
LABEL_5:
    if (v98 == ++v5)
    {
      goto LABEL_12;
    }
  }

  v16 = *(v0 + 864);
  v17 = *(v0 + 856);
  v18 = *(v0 + 848);
  v100 = *(v0 + 624);
  v103 = *(v0 + 640);
  *(v0 + 416) = v18;
  *(v0 + 424) = v86;
  v19 = *(v0 + 193);
  v20 = swift_task_alloc();
  *(v20 + 16) = v0 + 416;
  outlined copy of MLS.AllMember?(v18, v17, v16, v19);
  v21 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v20, v15);

  (*v88)(v103, v100);
  result = outlined consume of MLS.AllMember?(v18, v17, v16, v19);
  if ((v21 & 1) == 0)
  {
    v4 = v87;
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
  v82 = *(v0 + 464);
  v84 = v82[3];
  v83 = v82[4];
  __swift_project_boxed_opaque_existential_1(v82, v84);
  v85 = swift_task_alloc();
  *(v0 + 904) = v85;
  *v85 = v0;
  v85[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v84, v83);
}

{
  v125 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 912);
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);
  v5 = *(v0 + 848);
  v6 = *(v0 + 592);
  v7 = *(v0 + 584);
  v8 = *(v0 + 552);
  v9 = *(v0 + 193);
  outlined copy of MLS.AllMember?(v5, v4, v3, *(v0 + 193));
  v10 = specialized _NativeSet.filter(_:)(v1, v5, v4, v3, v9);
  outlined consume of MLS.AllMember?(v5, v4, v3, v9);
  specialized Collection.first.getter(v10, v8);

  v11 = (*(v6 + 48))(v8, 1, v7);
  v12 = *(v0 + 193);
  v13 = *(v0 + 864);
  v14 = *(v0 + 856);
  v15 = *(v0 + 848);
  if (v11 == 1)
  {
    v16 = *(v0 + 784);
    v17 = *(v0 + 776);
    v18 = *(v0 + 552);
    v19 = *(v0 + 472);
    v20 = *(v0 + 432);

    outlined destroy of NSObject?(v18, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);

    outlined copy of MLS.AllMember?(v15, v14, v13, v12);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 193);
    v25 = *(v0 + 864);
    v26 = *(v0 + 856);
    v27 = *(v0 + 848);
    v28 = *(v0 + 776);
    if (v23)
    {
      v29 = *(v0 + 768);
      loga = *(v0 + 193);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v119 = v31;
      *v30 = 136315394;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, &v119);

      *(v30 + 4) = v32;
      *(v30 + 12) = 2080;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v119);
      outlined consume of MLS.AllMember?(v27, v26, v25, loga);
      *(v30 + 14) = v33;
      _os_log_impl(&dword_264F1F000, v21, v22, "EncryptOperation couldn't find identity for 1 to 1 member { identifier: %s, destination: %s }", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v31, -1, -1);
      MEMORY[0x266755550](v30, -1, -1);
    }

    else
    {

      outlined consume of MLS.AllMember?(v27, v26, v25, v24);
    }

    v60 = *(v0 + 840);
    v61 = *(v0 + 832);
    v62 = *(v0 + 824);
    v63 = *(v0 + 816);
    v64 = *(v0 + 808);
    v65 = *(v0 + 800);
    lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
    swift_allocError();
    *v66 = 10;
    *(v66 + 8) = 0;
    *(v66 + 16) = 0;
    swift_willThrow();
    outlined consume of MLS.AdditionalAuthenticatedData?(v65, v64, v63, v62, v61, v60);
    outlined consume of MLS.AdditionalAuthenticatedData?(v65, v64, v63, v62, v61, v60);
    v67 = *(v0 + 744);
    v68 = *(v0 + 736);
    v69 = *(v0 + 720);
    v70 = *(v0 + 712);
    v71 = *(v0 + 704);
    v72 = *(v0 + 696);
    v73 = *(v0 + 688);
    v74 = *(v0 + 664);
    v75 = *(v0 + 640);
    v76 = *(v0 + 616);
    v95 = *(v0 + 608);
    v97 = *(v0 + 600);
    v100 = *(v0 + 576);
    v102 = *(v0 + 552);
    v105 = *(v0 + 544);
    v109 = *(v0 + 520);
    v113 = *(v0 + 496);

    v77 = *(v0 + 8);

    return v77();
  }

  else
  {
    v34 = *(v0 + 840);
    v35 = *(v0 + 832);
    v36 = *(v0 + 824);
    v37 = *(v0 + 816);
    v111 = *(v0 + 193);
    v38 = *(v0 + 808);
    v107 = *(v0 + 864);
    v39 = *(v0 + 800);
    v98 = v39;
    logb = *(v0 + 784);
    v40 = *(v0 + 776);
    v103 = *(v0 + 472);
    (*(*(v0 + 592) + 32))(*(v0 + 608), *(v0 + 552), *(v0 + 584));

    outlined copy of MLS.AdditionalAuthenticatedData?(v39, v38, v37, v36, v35, v34);
    outlined copy of MLS.AllMember?(v15, v14, v107, v111);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    outlined consume of MLS.AdditionalAuthenticatedData?(v98, v38, v37, v36, v35, v34);
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 193);
    v45 = *(v0 + 864);
    v46 = *(v0 + 856);
    v47 = *(v0 + 848);
    if (v43)
    {
      v101 = *(v0 + 832);
      v104 = *(v0 + 840);
      v96 = *(v0 + 816);
      v99 = *(v0 + 824);
      v48 = *(v0 + 808);
      v49 = *(v0 + 800);
      v50 = *(v0 + 776);
      logc = v41;
      v51 = *(v0 + 768);
      v108 = v42;
      v52 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v118 = v112;
      *v52 = 136315650;
      *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, &v118);
      *(v52 + 12) = 2080;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &v118);
      outlined consume of MLS.AllMember?(v47, v46, v45, v44);
      *(v52 + 14) = v53;
      *(v52 + 22) = 2080;
      v119 = v49;
      v120 = v48;
      v121 = v96;
      v122 = v99;
      v123 = v101;
      v124 = v104;
      outlined copy of MLS.AdditionalAuthenticatedData?(v49, v48, v96, v99, v101, v104);
      v54 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
      v56 = v55;
      v57 = v123;
      v58 = v124;
      outlined consume of Data._Representation(v119, v120);
      outlined consume of Data?(v57, v58);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v118);

      *(v52 + 24) = v59;
      _os_log_impl(&dword_264F1F000, logc, v108, "EncryptOperation encrypting to 1 recipient { identifier: %s, destination: %s, aad: %s }", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v112, -1, -1);
      MEMORY[0x266755550](v52, -1, -1);
    }

    else
    {

      outlined consume of MLS.AllMember?(v47, v46, v45, v44);
    }

    v79 = *(v0 + 808);
    v80 = *(v0 + 800);
    v81 = *(v0 + 608);
    v82 = *(v0 + 600);
    v83 = *(v0 + 592);
    v84 = *(v0 + 584);
    v85 = *(v0 + 544);
    v86 = *(v0 + 464);
    v87 = *(v0 + 472);
    log = v86[3];
    v106 = v86[4];
    __swift_project_boxed_opaque_existential_1(v86, log);
    v89 = *(v87 + 16);
    v88 = *(v87 + 24);
    (*(v83 + 16))(v82, v81, v84);
    outlined copy of Data._Representation(v89, v88);
    outlined copy of Data._Representation(v80, v79);
    MLS.Group.Group.EncryptWrappedApplicationMessageInput.init(message:recipient:messageID:)();
    v90 = *(v106 + 96);
    v110 = (v90 + *v90);
    v91 = v90[1];
    v92 = swift_task_alloc();
    *(v0 + 928) = v92;
    *v92 = v0;
    v92[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v93 = *(v0 + 712);
    v94 = *(v0 + 544);

    return v110(v93, v94, log, v106);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 928);
  v8 = *v1;
  *(*v1 + 936) = v0;

  if (v0)
  {
    v4 = v2[95];
    (*(v2[67] + 8))(v2[68], v2[66]);
    v5 = v2[54];

    v6 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v4 = v2[95];
    (*(v2[67] + 8))(v2[68], v2[66]);
    v6 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

{
  v108 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 808);
  v6 = *(v0 + 800);
  v102 = (v0 + 200);
  v104 = *(v0 + 720);
  v7 = *(v0 + 680);
  v96 = *(v0 + 672);
  v99 = *(v0 + 712);
  v93 = *(v0 + 608);
  v8 = *(v0 + 592);
  v9 = *(v0 + 584);
  outlined consume of MLS.AdditionalAuthenticatedData?(v6, v5, v4, v3, v2, v1);
  outlined consume of MLS.AdditionalAuthenticatedData?(v6, v5, v4, v3, v2, v1);
  (*(v8 + 8))(v93, v9);
  (*(v7 + 32))(v104, v99, v96);
  v10 = *(v0 + 784);
  v11 = *(v0 + 776);
  v12 = *(v0 + 720);
  v13 = *(v0 + 688);
  v14 = *(v0 + 680);
  v15 = *(v0 + 672);
  v16 = *(v0 + 472);
  v17._countAndFlagsBits = 0x534C4D7466697753;
  v17._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v17);
  v105 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v100 = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v20 = [v19 UUIDString];

  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v21;

  (*(v14 + 16))(v13, v12, v15);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 776);
    v25 = *(v0 + 768);
    v26 = *(v0 + 688);
    v27 = *(v0 + 680);
    v28 = *(v0 + 672);
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v107 = v30;
    *v29 = 136315394;
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, &v107);
    *(v29 + 12) = 2080;
    _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type MLS.Group.Message and conformance MLS.Group.Message, MEMORY[0x277D6AAD8]);
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v94 = *(v27 + 8);
    v94(v26, v28);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v107);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_264F1F000, v22, v23, "EncryptOperation encrypted data { identifier: %s, mlsMessage: %s }", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v30, -1, -1);
    MEMORY[0x266755550](v29, -1, -1);
  }

  else
  {
    v35 = *(v0 + 688);
    v36 = *(v0 + 680);
    v37 = *(v0 + 672);

    v94 = *(v36 + 8);
    v94(v35, v37);
  }

  v87 = *(v0 + 784);
  v38 = *(v0 + 776);
  v39 = *(v0 + 768);
  v41 = *(v0 + 488);
  v40 = *(v0 + 496);
  v43 = *(v0 + 472);
  v42 = *(v0 + 480);

  UUID.init()();
  v44 = UUID.uuidString.getter();
  v46 = v45;
  (*(v41 + 8))(v40, v42);
  v48 = *(v43 + 64);
  v47 = *(v43 + 72);
  v49 = *(v0 + 432);
  *(v0 + 200) = v39;
  *(v0 + 208) = v38;
  *(v0 + 216) = v44;
  *(v0 + 224) = v46;
  *(v0 + 232) = v48;
  *(v0 + 240) = v47;
  *(v0 + 248) = v49;
  *(v0 + 256) = v90;
  *(v0 + 264) = v97;
  *(v0 + 272) = v105;
  *(v0 + 280) = v100;
  v50 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v50;
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  v51 = *(v0 + 216);
  *(v0 + 16) = *v102;
  *(v0 + 32) = v51;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi9_(v0 + 16);

  outlined copy of Data?(v48, v47);

  outlined copy of Data._Representation(v105, v100);
  outlined init with copy of MLS.OutgoingEventState?(v102, v0 + 288, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v0 + 776);
    v55 = *(v0 + 768);
    v85 = *(v0 + 680);
    v88 = *(v0 + 672);
    v91 = *(v0 + 720);
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v107 = v57;
    *v56 = 136315138;
    *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, &v107);
    _os_log_impl(&dword_264F1F000, v52, v53, "EncryptOperation returning operation result { identifier: %s }", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x266755550](v57, -1, -1);
    MEMORY[0x266755550](v56, -1, -1);

    outlined destroy of NSObject?(v102, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v105, v100);
    v58 = v88;
    v59 = v91;
  }

  else
  {
    v60 = *(v0 + 720);
    v61 = *(v0 + 680);
    v62 = *(v0 + 672);

    outlined consume of Data._Representation(v105, v100);
    outlined destroy of NSObject?(v102, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    v59 = v60;
    v58 = v62;
  }

  v94(v59, v58);
  v63 = *(v0 + 744);
  v64 = *(v0 + 736);
  v65 = *(v0 + 720);
  v66 = *(v0 + 712);
  v67 = *(v0 + 704);
  v68 = *(v0 + 696);
  v69 = *(v0 + 688);
  v70 = *(v0 + 664);
  v84 = *(v0 + 640);
  v86 = *(v0 + 616);
  v89 = *(v0 + 608);
  v92 = *(v0 + 600);
  v95 = *(v0 + 576);
  v98 = *(v0 + 552);
  v101 = *(v0 + 544);
  v103 = *(v0 + 520);
  v106 = *(v0 + 496);
  v72 = *(v0 + 456);
  v71 = *(v0 + 464);
  v73 = *(v0 + 16);
  v74 = *(v0 + 32);
  v75 = *(v0 + 64);
  *(v72 + 32) = *(v0 + 48);
  *(v72 + 48) = v75;
  *v72 = v73;
  *(v72 + 16) = v74;
  v76 = *(v0 + 80);
  v77 = *(v0 + 96);
  v78 = *(v0 + 128);
  *(v72 + 96) = *(v0 + 112);
  *(v72 + 112) = v78;
  *(v72 + 64) = v76;
  *(v72 + 80) = v77;
  v79 = *(v0 + 144);
  v80 = *(v0 + 160);
  v81 = *(v0 + 176);
  *(v72 + 176) = *(v0 + 192);
  *(v72 + 144) = v80;
  *(v72 + 160) = v81;
  *(v72 + 128) = v79;
  *(v72 + 184) = 1;
  *(v72 + 224) = 0u;
  *(v72 + 240) = 0u;
  *(v72 + 192) = 0u;
  *(v72 + 208) = 0u;
  *(v72 + 256) = 2;
  *(v72 + 264) = 1;
  *(v72 + 352) = 0;
  *(v72 + 320) = 0u;
  *(v72 + 336) = 0u;
  *(v72 + 288) = 0u;
  *(v72 + 304) = 0u;
  *(v72 + 272) = 0u;
  *(v72 + 360) = 3;
  outlined init with copy of ServerBag.MLS(v71, v72 + 368);
  *(v72 + 408) = 0;
  *(v72 + 416) = *(v0 + 432);
  *(v72 + 424) = 0;
  *(v72 + 432) = 0;

  v82 = *(v0 + 8);

  return v82();
}

{
  v2 = *v1;
  v3 = *(*v1 + 944);
  v8 = *v1;
  *(*v1 + 952) = v0;

  if (v0)
  {
    v4 = v2[95];
    (*(v2[64] + 8))(v2[65], v2[63]);
    v5 = v2[54];

    v6 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v4 = v2[95];
    (*(v2[64] + 8))(v2[65], v2[63]);
    v6 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

{
  v99 = v0;
  v92 = (v0 + 200);
  v1 = *(v0 + 720);
  v2 = *(v0 + 704);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  outlined consume of MLS.AdditionalAuthenticatedData?(*(v0 + 800), *(v0 + 808), *(v0 + 816), *(v0 + 824), *(v0 + 832), *(v0 + 840));
  (*(v3 + 32))(v1, v2, v4);
  v5 = *(v0 + 784);
  v6 = *(v0 + 776);
  v7 = *(v0 + 720);
  v8 = *(v0 + 688);
  v9 = *(v0 + 680);
  v10 = *(v0 + 672);
  v11 = *(v0 + 472);
  v12._countAndFlagsBits = 0x534C4D7466697753;
  v12._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v12);
  v96 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v90 = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v15 = [v14 UUIDString];

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v16;

  (*(v9 + 16))(v8, v7, v10);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 776);
    v20 = *(v0 + 768);
    v21 = *(v0 + 688);
    v22 = *(v0 + 680);
    v23 = *(v0 + 672);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v98 = v25;
    *v24 = 136315394;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v98);
    *(v24 + 12) = 2080;
    _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type MLS.Group.Message and conformance MLS.Group.Message, MEMORY[0x277D6AAD8]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v88 = *(v22 + 8);
    v88(v21, v23);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v98);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_264F1F000, v17, v18, "EncryptOperation encrypted data { identifier: %s, mlsMessage: %s }", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v25, -1, -1);
    MEMORY[0x266755550](v24, -1, -1);
  }

  else
  {
    v30 = *(v0 + 688);
    v31 = *(v0 + 680);
    v32 = *(v0 + 672);

    v88 = *(v31 + 8);
    v88(v30, v32);
  }

  v82 = *(v0 + 784);
  v33 = *(v0 + 776);
  v34 = *(v0 + 768);
  v36 = *(v0 + 488);
  v35 = *(v0 + 496);
  v38 = *(v0 + 472);
  v37 = *(v0 + 480);

  UUID.init()();
  v39 = UUID.uuidString.getter();
  v41 = v40;
  (*(v36 + 8))(v35, v37);
  v42 = *(v38 + 64);
  v43 = *(v38 + 72);
  v44 = *(v0 + 432);
  *(v0 + 200) = v34;
  *(v0 + 208) = v33;
  *(v0 + 216) = v39;
  *(v0 + 224) = v41;
  *(v0 + 232) = v42;
  *(v0 + 240) = v43;
  *(v0 + 248) = v44;
  *(v0 + 256) = v85;
  *(v0 + 264) = v94;
  *(v0 + 272) = v96;
  *(v0 + 280) = v90;
  v45 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v45;
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  v46 = *(v0 + 216);
  *(v0 + 16) = *v92;
  *(v0 + 32) = v46;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi9_(v0 + 16);

  outlined copy of Data?(v42, v43);

  outlined copy of Data._Representation(v96, v90);
  outlined init with copy of MLS.OutgoingEventState?(v92, v0 + 288, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 776);
    v50 = *(v0 + 768);
    v51 = *(v0 + 680);
    v83 = *(v0 + 672);
    v86 = *(v0 + 720);
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v98 = v53;
    *v52 = 136315138;
    *(v52 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, &v98);
    _os_log_impl(&dword_264F1F000, v47, v48, "EncryptOperation returning operation result { identifier: %s }", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x266755550](v53, -1, -1);
    MEMORY[0x266755550](v52, -1, -1);

    outlined destroy of NSObject?(v92, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v96, v90);
    v55 = v83;
    v54 = v86;
  }

  else
  {
    v56 = *(v0 + 720);
    v57 = *(v0 + 680);
    v58 = *(v0 + 672);

    outlined consume of Data._Representation(v96, v90);
    outlined destroy of NSObject?(v92, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    v54 = v56;
    v55 = v58;
  }

  v88(v54, v55);
  v59 = *(v0 + 744);
  v60 = *(v0 + 736);
  v61 = *(v0 + 720);
  v62 = *(v0 + 712);
  v63 = *(v0 + 704);
  v64 = *(v0 + 696);
  v65 = *(v0 + 688);
  v66 = *(v0 + 664);
  v80 = *(v0 + 640);
  v81 = *(v0 + 616);
  v84 = *(v0 + 608);
  v87 = *(v0 + 600);
  v89 = *(v0 + 576);
  v91 = *(v0 + 552);
  v93 = *(v0 + 544);
  v95 = *(v0 + 520);
  v97 = *(v0 + 496);
  v68 = *(v0 + 456);
  v67 = *(v0 + 464);
  v69 = *(v0 + 16);
  v70 = *(v0 + 32);
  v71 = *(v0 + 64);
  *(v68 + 32) = *(v0 + 48);
  *(v68 + 48) = v71;
  *v68 = v69;
  *(v68 + 16) = v70;
  v72 = *(v0 + 80);
  v73 = *(v0 + 96);
  v74 = *(v0 + 128);
  *(v68 + 96) = *(v0 + 112);
  *(v68 + 112) = v74;
  *(v68 + 64) = v72;
  *(v68 + 80) = v73;
  v75 = *(v0 + 144);
  v76 = *(v0 + 160);
  v77 = *(v0 + 176);
  *(v68 + 176) = *(v0 + 192);
  *(v68 + 144) = v76;
  *(v68 + 160) = v77;
  *(v68 + 128) = v75;
  *(v68 + 184) = 1;
  *(v68 + 224) = 0u;
  *(v68 + 240) = 0u;
  *(v68 + 192) = 0u;
  *(v68 + 208) = 0u;
  *(v68 + 256) = 2;
  *(v68 + 264) = 1;
  *(v68 + 352) = 0;
  *(v68 + 320) = 0u;
  *(v68 + 336) = 0u;
  *(v68 + 288) = 0u;
  *(v68 + 304) = 0u;
  *(v68 + 272) = 0u;
  *(v68 + 360) = 3;
  outlined init with copy of ServerBag.MLS(v67, v68 + 368);
  *(v68 + 408) = 0;
  *(v68 + 416) = *(v0 + 432);
  *(v68 + 424) = 0;
  *(v68 + 432) = 0;

  v78 = *(v0 + 8);

  return v78();
}

{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v9 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v4 = *(v2 + 792);
    v5 = *(v2 + 760);

    v6 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 760);
    v6 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v95 = v0;
  v88 = (v0 + 200);
  (*(*(v0 + 680) + 32))(*(v0 + 720), *(v0 + 696), *(v0 + 672));
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  v3 = *(v0 + 720);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 472);
  v8._countAndFlagsBits = 0x534C4D7466697753;
  v8._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v8);
  v92 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v86 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v11 = [v10 UUIDString];

  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v12;

  (*(v5 + 16))(v4, v3, v6);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 776);
    v16 = *(v0 + 768);
    v17 = *(v0 + 688);
    v18 = *(v0 + 680);
    v19 = *(v0 + 672);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v94 = v21;
    *v20 = 136315394;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v94);
    *(v20 + 12) = 2080;
    _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type MLS.Group.Message and conformance MLS.Group.Message, MEMORY[0x277D6AAD8]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v84 = *(v18 + 8);
    v84(v17, v19);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v94);

    *(v20 + 14) = v25;
    _os_log_impl(&dword_264F1F000, v13, v14, "EncryptOperation encrypted data { identifier: %s, mlsMessage: %s }", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v21, -1, -1);
    MEMORY[0x266755550](v20, -1, -1);
  }

  else
  {
    v26 = *(v0 + 688);
    v27 = *(v0 + 680);
    v28 = *(v0 + 672);

    v84 = *(v27 + 8);
    v84(v26, v28);
  }

  v78 = *(v0 + 784);
  v29 = *(v0 + 776);
  v30 = *(v0 + 768);
  v32 = *(v0 + 488);
  v31 = *(v0 + 496);
  v34 = *(v0 + 472);
  v33 = *(v0 + 480);

  UUID.init()();
  v35 = UUID.uuidString.getter();
  v37 = v36;
  (*(v32 + 8))(v31, v33);
  v38 = *(v34 + 64);
  v39 = *(v34 + 72);
  v40 = *(v0 + 432);
  *(v0 + 200) = v30;
  *(v0 + 208) = v29;
  *(v0 + 216) = v35;
  *(v0 + 224) = v37;
  *(v0 + 232) = v38;
  *(v0 + 240) = v39;
  *(v0 + 248) = v40;
  *(v0 + 256) = v81;
  *(v0 + 264) = v90;
  *(v0 + 272) = v92;
  *(v0 + 280) = v86;
  v41 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v41;
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  v42 = *(v0 + 216);
  *(v0 + 16) = *v88;
  *(v0 + 32) = v42;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi9_(v0 + 16);

  outlined copy of Data?(v38, v39);

  outlined copy of Data._Representation(v92, v86);
  outlined init with copy of MLS.OutgoingEventState?(v88, v0 + 288, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = *(v0 + 776);
    v46 = *(v0 + 768);
    v47 = *(v0 + 680);
    v79 = *(v0 + 672);
    v82 = *(v0 + 720);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v94 = v49;
    *v48 = 136315138;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v45, &v94);
    _os_log_impl(&dword_264F1F000, v43, v44, "EncryptOperation returning operation result { identifier: %s }", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266755550](v49, -1, -1);
    MEMORY[0x266755550](v48, -1, -1);

    outlined destroy of NSObject?(v88, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v92, v86);
    v51 = v79;
    v50 = v82;
  }

  else
  {
    v52 = *(v0 + 720);
    v53 = *(v0 + 680);
    v54 = *(v0 + 672);

    outlined consume of Data._Representation(v92, v86);
    outlined destroy of NSObject?(v88, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    v50 = v52;
    v51 = v54;
  }

  v84(v50, v51);
  v55 = *(v0 + 744);
  v56 = *(v0 + 736);
  v57 = *(v0 + 720);
  v58 = *(v0 + 712);
  v59 = *(v0 + 704);
  v60 = *(v0 + 696);
  v61 = *(v0 + 688);
  v62 = *(v0 + 664);
  v76 = *(v0 + 640);
  v77 = *(v0 + 616);
  v80 = *(v0 + 608);
  v83 = *(v0 + 600);
  v85 = *(v0 + 576);
  v87 = *(v0 + 552);
  v89 = *(v0 + 544);
  v91 = *(v0 + 520);
  v93 = *(v0 + 496);
  v64 = *(v0 + 456);
  v63 = *(v0 + 464);
  v65 = *(v0 + 16);
  v66 = *(v0 + 32);
  v67 = *(v0 + 64);
  *(v64 + 32) = *(v0 + 48);
  *(v64 + 48) = v67;
  *v64 = v65;
  *(v64 + 16) = v66;
  v68 = *(v0 + 80);
  v69 = *(v0 + 96);
  v70 = *(v0 + 128);
  *(v64 + 96) = *(v0 + 112);
  *(v64 + 112) = v70;
  *(v64 + 64) = v68;
  *(v64 + 80) = v69;
  v71 = *(v0 + 144);
  v72 = *(v0 + 160);
  v73 = *(v0 + 176);
  *(v64 + 176) = *(v0 + 192);
  *(v64 + 144) = v72;
  *(v64 + 160) = v73;
  *(v64 + 128) = v71;
  *(v64 + 184) = 1;
  *(v64 + 224) = 0u;
  *(v64 + 240) = 0u;
  *(v64 + 192) = 0u;
  *(v64 + 208) = 0u;
  *(v64 + 256) = 2;
  *(v64 + 264) = 1;
  *(v64 + 352) = 0;
  *(v64 + 320) = 0u;
  *(v64 + 336) = 0u;
  *(v64 + 288) = 0u;
  *(v64 + 304) = 0u;
  *(v64 + 272) = 0u;
  *(v64 + 360) = 3;
  outlined init with copy of ServerBag.MLS(v63, v64 + 368);
  *(v64 + 408) = 0;
  *(v64 + 416) = *(v0 + 432);
  *(v64 + 424) = 0;
  *(v64 + 432) = 0;

  v74 = *(v0 + 8);

  return v74();
}

{
  outlined consume of MLS.AdditionalAuthenticatedData?(v0[100], v0[101], v0[102], v0[103], v0[104], v0[105]);
  v20 = v0[112];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[83];
  v9 = v0[80];
  v10 = v0[77];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[72];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[65];
  v19 = v0[62];

  v11 = v0[1];

  return v11();
}

{
  outlined consume of MLS.AdditionalAuthenticatedData?(v0[100], v0[101], v0[102], v0[103], v0[104], v0[105]);
  v20 = v0[114];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[83];
  v9 = v0[80];
  v10 = v0[77];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[72];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[65];
  v19 = v0[62];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[76];
  v8 = v0[74];
  v9 = v0[73];
  outlined consume of MLS.AdditionalAuthenticatedData?(v6, v5, v4, v3, v2, v1);
  outlined consume of MLS.AdditionalAuthenticatedData?(v6, v5, v4, v3, v2, v1);
  (*(v8 + 8))(v7, v9);
  v29 = v0[117];
  v10 = v0[93];
  v11 = v0[92];
  v12 = v0[90];
  v13 = v0[89];
  v14 = v0[88];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[83];
  v18 = v0[80];
  v19 = v0[77];
  v22 = v0[76];
  v23 = v0[75];
  v24 = v0[72];
  v25 = v0[69];
  v26 = v0[68];
  v27 = v0[65];
  v28 = v0[62];

  v20 = v0[1];

  return v20();
}

{
  outlined consume of MLS.AdditionalAuthenticatedData?(v0[100], v0[101], v0[102], v0[103], v0[104], v0[105]);
  v20 = v0[119];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[83];
  v9 = v0[80];
  v10 = v0[77];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[72];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[65];
  v19 = v0[62];

  v11 = v0[1];

  return v11();
}

{
  v20 = v0[121];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[87];
  v7 = v0[86];
  v8 = v0[83];
  v9 = v0[80];
  v10 = v0[77];
  v13 = v0[76];
  v14 = v0[75];
  v15 = v0[72];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[65];
  v19 = v0[62];

  v11 = v0[1];

  return v11();
}

uint64_t MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 904);
  v11 = *v2;
  *(*v2 + 912) = v1;

  if (v1)
  {
    v6 = v4[95];
    outlined consume of MLS.AdditionalAuthenticatedData?(v4[100], v4[101], v4[102], v4[103], v4[104], v4[105]);
    v7 = v4[54];

    v8 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v9 = v6;
  }

  else
  {
    v9 = v4[95];
    v4[115] = a1;
    v8 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t MLS.EncryptOperation.deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 160);
  v9[6] = *(v0 + 144);
  v9[7] = v2;
  v9[8] = *(v0 + 176);
  v10 = *(v0 + 192);
  v3 = *(v0 + 96);
  v9[2] = *(v0 + 80);
  v9[3] = v3;
  v4 = *(v0 + 128);
  v9[4] = *(v0 + 112);
  v9[5] = v4;
  v5 = *(v0 + 64);
  v9[0] = *(v0 + 48);
  v9[1] = v5;
  outlined destroy of NSObject?(v9, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v6 = OBJC_IVAR____TtCO15SecureMessaging3MLS16EncryptOperation_logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t MLS.EncryptOperation.__deallocating_deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 160);
  v11[6] = *(v0 + 144);
  v11[7] = v2;
  v11[8] = *(v0 + 176);
  v12 = *(v0 + 192);
  v3 = *(v0 + 96);
  v11[2] = *(v0 + 80);
  v11[3] = v3;
  v4 = *(v0 + 128);
  v11[4] = *(v0 + 112);
  v11[5] = v4;
  v5 = *(v0 + 64);
  v11[0] = *(v0 + 48);
  v11[1] = v5;
  outlined destroy of NSObject?(v11, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v6 = OBJC_IVAR____TtCO15SecureMessaging3MLS16EncryptOperation_logger;
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.EncryptOperation(uint64_t a1)
{
  v4 = *(**v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.EncryptOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 176);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.context.getter in conformance MLS.EncryptOperation@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 96);
  v18[4] = *(*v1 + 112);
  v18[5] = v3;
  v6 = *(v2 + 144);
  v7 = *(v2 + 160);
  v19 = *(v2 + 192);
  v9 = *(v2 + 160);
  v8 = *(v2 + 176);
  v18[7] = v7;
  v18[8] = v8;
  v18[6] = v6;
  v18[2] = v4;
  v18[3] = v5;
  v10 = *(v2 + 64);
  v18[0] = *(v2 + 48);
  v18[1] = v10;
  v11 = *(v2 + 128);
  *(a1 + 96) = *(v2 + 144);
  *(a1 + 112) = v9;
  *(a1 + 128) = *(v2 + 176);
  v12 = *(v2 + 96);
  v13 = *(v2 + 112);
  v14 = *(v2 + 48);
  v15 = *(v2 + 64);
  *(a1 + 32) = *(v2 + 80);
  *(a1 + 48) = v12;
  *(a1 + 144) = *(v2 + 192);
  *(a1 + 64) = v13;
  *(a1 + 80) = v11;
  *a1 = v14;
  *(a1 + 16) = v15;
  return outlined init with copy of MLS.OutgoingEventState?(v18, v17, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.EncryptOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS16EncryptOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy8SwiftMLS0J0O8IdentityO07SigningK0VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_8i8MLS0G0O8k3O07L7H0V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n0106_s15SecureMessaging3MLSO16EncryptOperationC7perform2on15metricCollector16keyPackageResultAC05GroupeL0VAC21i74MLSGroupProtocol_p_AA06MetricI0VAC03KeyK7FetcherC05FetchL0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    outlined copy of MLS.AllMember();
    v10 = specialized closure #1 in _NativeSet.filter(_:)(v9, a2, a3, a4, a5);

    outlined consume of MLS.AllMember();
    outlined consume of MLS.AllMember();
    return v10;
  }

  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v29 = a2;
  v30 = a1;
  v40 = type metadata accessor for MLS.Identity.Credential();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLS.Identity.SigningIdentity();
  v10 = *(*(v9 - 8) + 64);
  result = MEMORY[0x28223BE20](v9);
  v41 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v14 = 0;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 56);
  v18 = (v15 + 63) >> 6;
  v35 = (v6 + 8);
  v36 = v12 + 16;
  v37 = result;
  v38 = v12;
  v34 = (v12 + 8);
  while (v17)
  {
    v44 = (v17 - 1) & v17;
    v19 = __clz(__rbit64(v17)) | (v14 << 6);
    v20 = v41;
LABEL_12:
    (*(v38 + 16))(v20, *(a3 + 48) + *(v38 + 72) * v19, v9);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v23 = v39;
    MLS.Identity.SigningIdentity.credential.getter();
    v24 = MLS.Identity.Credential.telURI.getter();
    v25 = (*v35)(v23, v40);
    if (v24)
    {
      v43[0] = v32;
      v43[1] = v33;
      MEMORY[0x28223BE20](v25);
      *(&v29 - 2) = v43;
      v26 = v42;
      v27 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v29 - 4), v24);
      v42 = v26;

      v9 = v37;
      result = (*v34)(v20, v37);
      v17 = v44;
      if (v27)
      {
        *(v30 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        if (__OFADD__(v31++, 1))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v9 = v37;
      result = (*v34)(v20, v37);
      v17 = v44;
    }
  }

  v21 = v14;
  v20 = v41;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v18)
    {

      return specialized _NativeSet.extractSubset(using:count:)(v30, v29, v31, a3);
    }

    v22 = *(a3 + 56 + 8 * v14);
    ++v21;
    if (v22)
    {
      v44 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) | (v14 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v54[2] = *MEMORY[0x277D85DE8];
  v49 = type metadata accessor for MLS.Identity.Credential();
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLS.Identity.SigningIdentity();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v50 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  LOBYTE(v16) = *(a1 + 32);
  LODWORD(a1) = v16 & 0x3F;
  v39 = ((1 << v16) + 63) >> 6;
  v17 = 8 * v39;
  v42 = a2;
  v43 = a3;
  v18 = outlined copy of MLS.AllMember();
  if (a1 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v38 = v5;
    v37[0] = v37;
    v37[1] = a4;
    MEMORY[0x28223BE20](v18);
    v40 = v37 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v17);
    v41 = 0;
    v19 = 0;
    a4 = v51 + 56;
    v20 = 1 << *(v51 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v51 + 56);
    v23 = (v20 + 63) >> 6;
    v45 = (v10 + 8);
    v46 = v14 + 16;
    v44 = (v14 + 8);
    v47 = v14;
    while (v22)
    {
      v53 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v19 << 6);
      v5 = v50;
LABEL_13:
      (*(v14 + 16))(v5, *(v51 + 48) + *(v14 + 72) * v24, v13);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v10 = v48;
      MLS.Identity.SigningIdentity.credential.getter();
      v17 = MLS.Identity.Credential.telURI.getter();
      v27 = (*v45)(v10, v49);
      if (v17)
      {
        v10 = v24;
        v54[0] = v42;
        v54[1] = v43;
        MEMORY[0x28223BE20](v27);
        v37[-2] = v54;
        v28 = v52;
        v29 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v37[-4], v17);
        v52 = v28;

        (*v44)(v5, v13);
        v14 = v47;
        v22 = v53;
        if (v29)
        {
          *&v40[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
          if (__OFADD__(v41++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {
        (*v44)(v5, v13);
        v14 = v47;
        v22 = v53;
      }
    }

    v25 = v19;
    v5 = v50;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {
        L0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n = specialized _NativeSet.extractSubset(using:count:)(v40, v39, v41, v51);
        outlined consume of MLS.AllMember();
        goto LABEL_23;
      }

      v26 = *(a4 + 8 * v19);
      ++v25;
      if (v26)
      {
        v53 = (v26 - 1) & v26;
        v24 = __clz(__rbit64(v26)) | (v19 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();
  v36 = v42;
  v35 = v43;
  outlined copy of MLS.AllMember();
  L0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy8SwiftMLS0J0O8IdentityO07SigningK0VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_8i8MLS0G0O8k3O07L7H0V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n0106_s15SecureMessaging3MLSO16EncryptOperationC7perform2on15metricCollector16keyPackageResultAC05GroupeL0VAC21i74MLSGroupProtocol_p_AA06MetricI0VAC03KeyK7FetcherC05FetchL0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n(v34, v39, v51, v36, v35);

  MEMORY[0x266755550](v34, -1, -1);
  outlined consume of MLS.AllMember();
LABEL_23:
  v32 = *MEMORY[0x277D85DE8];
  return L0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n;
}

uint64_t instantiation function for generic protocol witness table for MLS.EncryptOperation(uint64_t a1)
{
  result = _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type MLS.EncryptOperation and conformance MLS.EncryptOperation, type metadata accessor for MLS.EncryptOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MLS.EncryptOperation()
{
  result = type metadata singleton initialization cache for MLS.EncryptOperation;
  if (!type metadata singleton initialization cache for MLS.EncryptOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.EncryptOperation()
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MLS.EncryptOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 176);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4);
}

uint64_t KDSRegistration.SigningInput.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  outlined copy of Data._Representation(v1, v2);
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  outlined consume of Data._Representation(v1, v2);
  return countAndFlagsBits;
}

uint64_t KDSRegistration.SigningOutput.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return Data.base64EncodedString(options:)(0)._countAndFlagsBits;
}

void KDSRegistration.Client.__allocating_init(configuration:supportedState:)(void *a1, char *a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  KDSRegistration.Client.init(configuration:supportedState:)(a1, a2);
}

void KDSRegistration.Client.init(configuration:supportedState:)(void *a1, char *a2)
{
  v4 = v3;
  v3[2] = v2;
  v5 = *v2;
  v13 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v3[3] = *a1;
  v3[4] = v6;
  v8 = a1[5];
  v9 = a1[6];
  v4[5] = a1[4];
  v4[6] = v9;
  v10 = *a2;
  swift_defaultActor_initialize();
  v4[7] = *(v5 + 80);
  type metadata accessor for KDSRegistration.XPCCoordinator();
  *(v4 + 112) = v10;
  swift_unknownObjectRetain();

  v11 = swift_task_alloc();
  v4[8] = v11;
  *v11 = v4;
  v11[1] = KDSRegistration.Client.init(configuration:supportedState:);

  JUMPOUT(0x264F3C27CLL);
}

uint64_t KDSRegistration.Client.init(configuration:supportedState:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[3];
    swift_unknownObjectRelease();
    v8 = KDSRegistration.Client.init(configuration:supportedState:);
  }

  else
  {
    v10 = v4[5];
    v9 = v4[6];
    v11 = v4[3];
    v12 = v4[4];
    swift_unknownObjectRelease_n();

    v4[10] = a1;
    v8 = KDSRegistration.Client.init(configuration:supportedState:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t KDSRegistration.Client.init(configuration:supportedState:)()
{
  v1 = *(v0 + 16);
  *(v1 + 112) = *(v0 + 80);
  return MEMORY[0x2822009F8](KDSRegistration.Client.init(configuration:supportedState:), v1, 0);
}

{
  v1 = *(v0[2] + 112);
  v0[11] = v1;
  v2 = *(*v1 + 256);

  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = KDSRegistration.Client.init(configuration:supportedState:);

  return v6();
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 104) = v0;

  type metadata accessor for KDSRegistration.Client();
  swift_getWitnessTable();
  if (v0)
  {
    v7 = *(v2 + 16);
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](KDSRegistration.Client.init(configuration:supportedState:), v9, v8);
  }

  else
  {
    v10 = *(v6 + 8);
    v11 = *(v2 + 16);

    return v10(v11);
  }
}

{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  swift_unknownObjectRelease();

  type metadata accessor for KDSRegistration.Client();
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();
  v7 = v0[9];
  v8 = v0[1];

  return v8();
}

{
  v1 = v0[2];

  v2 = v0[13];
  v3 = v0[1];

  return v3();
}

uint64_t KDSRegistration.Client.add(listener:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](KDSRegistration.Client.add(listener:), v2, 0);
}

uint64_t KDSRegistration.Client.add(listener:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = one-time initialization token for shared;

  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = static RegistrationActor.shared;
  v9 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  *(v10 + 32) = v7;
  *(v10 + 40) = *(v0 + 1);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in KDSRegistration.Client.add(listener:), v10);

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in KDSRegistration.Client.add(listener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.add(listener:), v7, 0);
}

uint64_t closure #1 in KDSRegistration.Client.add(listener:)()
{
  (*(**(v0[2] + 112) + 264))(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t KDSRegistration.Client.remove(listener:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](KDSRegistration.Client.remove(listener:), v2, 0);
}

uint64_t KDSRegistration.Client.remove(listener:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = one-time initialization token for shared;

  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = static RegistrationActor.shared;
  v9 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  *(v10 + 32) = v7;
  *(v10 + 40) = *(v0 + 1);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in KDSRegistration.Client.remove(listener:), v10);

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in KDSRegistration.Client.remove(listener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.remove(listener:), v7, 0);
}

uint64_t closure #1 in KDSRegistration.Client.remove(listener:)()
{
  (*(**(v0[2] + 112) + 272))(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t KDSRegistration.Client.update(simLabelID:)()
{
  return MEMORY[0x2822009F8](KDSRegistration.Client.update(simLabelID:), v0, 0);
}

{
  lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError();
  swift_allocError();
  *v1 = 4;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t KDSRegistration.Client.update(supportedState:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x2822009F8](KDSRegistration.Client.update(supportedState:), v2, 0);
}

uint64_t KDSRegistration.Client.update(supportedState:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = one-time initialization token for shared;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 64);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = static RegistrationActor.shared;
  v9 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  *(v10 + 32) = v7;
  *(v10 + 40) = v5;

  updated = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging15KDSRegistrationO36SupportedStateUpdateProcessedContextV_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in KDSRegistration.Client.update(supportedState:), v10);
  *(v0 + 40) = updated;
  v12 = *(MEMORY[0x277D857C8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v13 = v0;
  v13[1] = KDSRegistration.Client.update(supportedState:);
  v15 = *(v0 + 16);
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v15, updated, &type metadata for KDSRegistration.SupportedStateUpdateProcessedContext, v14, v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = KDSRegistration.Client.update(supportedState:);
  }

  else
  {
    v6 = KDSRegistration.Client.update(supportedState:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t closure #1 in KDSRegistration.Client.update(supportedState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 57) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static RegistrationActor.shared;
  *(v5 + 32) = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.update(supportedState:), v6, 0);
}

uint64_t closure #1 in KDSRegistration.Client.update(supportedState:)()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = *(v0 + 57);
  v2 = *(*v1 + 280);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = closure #1 in KDSRegistration.Client.update(supportedState:);
  v5 = *(v0 + 16);

  return v7(v5, v0 + 56);
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.update(supportedState:), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t KDSRegistration.Client.isRegistered(context:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x2822009F8](KDSRegistration.Client.isRegistered(context:), v2, 0);
}

uint64_t KDSRegistration.Client.isRegistered(context:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = one-time initialization token for shared;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 64);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = static RegistrationActor.shared;
  v9 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  *(v10 + 32) = v7;
  *(v10 + 40) = v5;

  IsRegisteredResultV_Tt2g5 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging15KDSRegistrationO18IsRegisteredResultV_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in KDSRegistration.Client.isRegistered(context:), v10);
  *(v0 + 40) = IsRegisteredResultV_Tt2g5;
  v12 = *(MEMORY[0x277D857C8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v13 = v0;
  v13[1] = MLS.Client.keyPackage.getter;
  v15 = *(v0 + 16);
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v15, IsRegisteredResultV_Tt2g5, &type metadata for KDSRegistration.IsRegisteredResult, v14, v16);
}

uint64_t closure #1 in KDSRegistration.Client.isRegistered(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 57) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static RegistrationActor.shared;
  *(v5 + 32) = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.isRegistered(context:), v6, 0);
}

uint64_t closure #1 in KDSRegistration.Client.isRegistered(context:)()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = *(v0 + 57) & 1;
  v2 = *(*v1 + 288);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = closure #1 in KDSRegistration.Client.isRegistered(context:);
  v5 = *(v0 + 16);

  return v7(v5, v0 + 56);
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TY2_, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t KDSRegistration.Client.signInputWithParticipantKey(input:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = *a2;

  return MEMORY[0x2822009F8](KDSRegistration.Client.signInputWithParticipantKey(input:), v2, 0);
}

uint64_t KDSRegistration.Client.signInputWithParticipantKey(input:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);

  outlined copy of Data._Representation(v1, v2);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  v10 = static RegistrationActor.shared;
  v11 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v9;
  v12[5] = v7;
  v12[6] = v6;

  v13 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging15KDSRegistrationO13SigningOutputV_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:), v12);
  v0[7] = v13;
  v14 = *(MEMORY[0x277D857C8] + 4);
  v15 = swift_task_alloc();
  v0[8] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v15 = v0;
  v15[1] = KDSRegistration.Client.signInputWithParticipantKey(input:);
  v17 = v0[2];
  v18 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v17, v13, &type metadata for KDSRegistration.SigningOutput, v16, v18);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = KDSRegistration.Client.signInputWithParticipantKey(input:);
  }

  else
  {
    v6 = KDSRegistration.Client.signInputWithParticipantKey(input:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static RegistrationActor.shared;
  v6[8] = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:), v7, 0);
}

uint64_t closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:)()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 16) = *(v0 + 48);
  v2 = *(*v1 + 296);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:);
  v5 = *(v0 + 32);

  return v7(v5, v0 + 16);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x2822009F8](closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t KDSRegistration.Client.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t KDSRegistration.Client.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.SigningInput.InputType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningInput.InputType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SigningInput.InputType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.SigningInput.InputType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO15NonceCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO15NonceCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *v1;
  v18 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v21 = v13;
  v22 = v18;
  lazy protocol witness table accessor for type Data and conformance Data();
  v15 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v20 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

uint64_t KDSRegistration.SigningInput.InputType.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO15NonceCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO15NonceCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_6;
  }

  v26 = a1;
  v13 = v34;
  v14 = v28;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = (2 * *(v15 + 16)) | 1;
  v30 = v15;
  v31 = v15 + 32;
  v32 = 0;
  v33 = v16;
  v17 = v11;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v32 != v33 >> 1)
  {
    v18 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v8;
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v21 = &type metadata for KDSRegistration.SigningInput.InputType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v21, *MEMORY[0x277D84160], v18);
    swift_willThrow();
    (*(v14 + 8))(v17, v19);
    swift_unknownObjectRelease();
    a1 = v26;
LABEL_6:
    v24 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v7, v4);
  (*(v14 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v24 = v26;
  *v27 = v29;
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t KDSRegistration.SigningInput.inputType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return outlined copy of Data._Representation(v2, v3);
}

uint64_t KDSRegistration.SigningInput.init(nonce:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.SigningInput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7079547475706E69 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.SigningInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v8, v9);
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  v13 = v9;
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t KDSRegistration.SigningInput.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningInput()
{
  v1 = *v0;
  v2 = v0[1];
  outlined copy of Data._Representation(v1, v2);
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  outlined consume of Data._Representation(v1, v2);
  return countAndFlagsBits;
}

uint64_t KDSRegistration.SigningOutput.signature.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t KDSRegistration.SigningOutput.init(signature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.SigningOutput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SigningOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.SigningOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO13SigningOutputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO13SigningOutputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v8, v9);
  lazy protocol witness table accessor for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  v13 = v9;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t KDSRegistration.SigningOutput.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO13SigningOutputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO13SigningOutputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningOutput()
{
  v1 = *v0;
  v2 = v0[1];
  return Data.base64EncodedString(options:)(0)._countAndFlagsBits;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance KDSRegistration.URISupportedState.CodingKeys()
{
  v1 = 0x6574726F70707573;
  if (*v0 != 1)
  {
    v1 = 0x6F70707553746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.URISupportedState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized KDSRegistration.URISupportedState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.URISupportedState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.URISupportedState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.URISupportedState.SupportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.URISupportedState.SupportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.URISupportedState.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.URISupportedState.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.URISupportedState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO22NotSupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO22NotSupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO19SupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO19SupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO17UnknownCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO17UnknownCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      lazy protocol witness table accessor for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys();
      v12 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      lazy protocol witness table accessor for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys();
      v12 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

Swift::Int KDSRegistration.URISupportedState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  return Hasher._finalize()();
}

uint64_t KDSRegistration.URISupportedState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO22NotSupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO22NotSupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO19SupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO19SupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO17UnknownCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO17UnknownCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys();
  v20 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = KeyedDecodingContainer.allKeys.getter();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = specialized Collection<>.popFirst()();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v30 = &type metadata for KDSRegistration.URISupportedState;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          lazy protocol witness table accessor for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          lazy protocol witness table accessor for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys();
          v33 = v22;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        lazy protocol witness table accessor for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.IsRegisteredContext.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, IsRegistered);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.IsRegisteredContext.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, IsRegistered);
}

uint64_t KDSRegistration.SIMLabelIDUpdateProcessedContext.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance KDSRegistration.SIMLabelIDUpdateProcessedContext(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.IsRegisteredResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7473696765527369 && a2 == 0xEC00000064657265)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.IsRegisteredResult.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, IsRegistered);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.IsRegisteredResult.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, IsRegistered);
}

uint64_t KDSRegistration.IsRegisteredResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t KDSRegistration.IsRegisteredResult.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance KDSRegistration.IsRegisteredResult(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t partial apply for closure #1 in KDSRegistration.Client.add(listener:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.Client.add(listener:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.Client.remove(listener:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.Client.remove(listener:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in KDSRegistration.Client.update(supportedState:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.Client.update(supportedState:)(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.Client.isRegistered(context:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.Client.isRegistered(context:)(a1, v4, v5, v6, v7);
}

uint64_t sub_26519FF7C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  outlined consume of Data._Representation(v0[5], v0[6]);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys);
  }

  return result;
}

uint64_t dispatch thunk of KDSRegistration.Client.__allocating_init(configuration:supportedState:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.Client.add(listener:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.Client.remove(listener:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.Client.update(simLabelID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of KDSRegistration.Client.update(supportedState:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.Client.isRegistered(context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.Client.signInputWithParticipantKey(input:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t getEnumTagSinglePayload for KDSRegistration.IsRegisteredResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t specialized KDSRegistration.URISupportedState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *MLS.ClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = specialized MLS.ClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

uint64_t (*MLS.ClientEventDeliverer.communicator.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.ClientEventDeliverer.communicator.modify;
}

uint64_t (*MLS.ClientEventDeliverer.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.ClientEventDeliverer.delegate.modify;
}

uint64_t (*MLS.ClientEventDeliverer.keyPackageExchanger.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.ClientEventDeliverer.keyPackageExchanger.modify;
}

void *MLS.DaemonClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v10 = specialized MLS.ClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t MLS.ClientEventDeliverer.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1136) = v3;
  *(v4 + 1128) = a1;
  v7 = *v3;
  v8 = *(*v3 + 80);
  *(v4 + 1144) = v8;
  v9 = v7[11];
  *(v4 + 1152) = v9;
  v10 = v7[12];
  *(v4 + 1160) = v10;
  v11 = v7[13];
  *(v4 + 1168) = v11;
  *&v12 = v8;
  *(&v12 + 1) = v9;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  *(v4 + 1064) = v12;
  *(v4 + 1080) = v13;
  v14 = type metadata accessor for MLS.OutgoingEventType();
  *(v4 + 1176) = v14;
  v15 = *(v14 - 8);
  *(v4 + 1184) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 1192) = swift_task_alloc();
  v17 = *(a2 + 144);
  *(v4 + 144) = *(a2 + 128);
  *(v4 + 160) = v17;
  *(v4 + 176) = *(a2 + 160);
  *(v4 + 192) = *(a2 + 176);
  v18 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v18;
  v19 = *(a2 + 112);
  *(v4 + 112) = *(a2 + 96);
  *(v4 + 128) = v19;
  v20 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v20;
  v21 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v21;
  v22 = *(a3 + 80);
  *(v4 + 816) = *(a3 + 64);
  *(v4 + 832) = v22;
  *(v4 + 848) = *(a3 + 96);
  v23 = *(a3 + 16);
  *(v4 + 752) = *a3;
  *(v4 + 768) = v23;
  v24 = *(a3 + 48);
  *(v4 + 784) = *(a3 + 32);
  *(v4 + 800) = v24;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v25 = static MLSActor.shared;
  *(v4 + 1200) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.ClientEventDeliverer.send(event:forGroup:), v25, 0);
}

uint64_t MLS.ClientEventDeliverer.send(event:forGroup:)()
{
  v41 = v0;
  v1 = (*(**(v0 + 1136) + 144))();
  *(v0 + 1208) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 1136);
    *(v0 + 1216) = direct field offset for MLS.ClientEventDeliverer.logger;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined init with copy of MLS.Group(v0 + 752, v0 + 856);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.Group(v0 + 752);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v39[0] = v8;
      *v7 = 136315394;
      v9 = specialized MLS.OutgoingEventType.identifier.getter();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v39);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      v13 = *(v0 + 752);
      v14 = *(v0 + 760);

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v39);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_264F1F000, v5, v6, "ClientEventDeliverer delivering sendEvent { identifier: %s, group: %s }", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    v16 = *(v0 + 1192);
    v17 = *(v0 + 1168);
    v18 = *(v0 + 1160);
    v19 = *(v0 + 1152);
    v20 = *(v0 + 1144);
    v21 = *(v0 + 160);
    v39[8] = *(v0 + 144);
    v39[9] = v21;
    v39[10] = *(v0 + 176);
    v40 = *(v0 + 192);
    v22 = *(v0 + 96);
    v39[4] = *(v0 + 80);
    v39[5] = v22;
    v23 = *(v0 + 128);
    v39[6] = *(v0 + 112);
    v39[7] = v23;
    v24 = *(v0 + 32);
    v39[0] = *(v0 + 16);
    v39[1] = v24;
    v25 = *(v0 + 64);
    v39[2] = *(v0 + 48);
    v39[3] = v25;
    MLS.OutgoingEventType<>.convert<A, B>(memberType:clientContextType:)(v20, v19, v20, v19, v18, v17, v16);
    ObjectType = swift_getObjectType();
    v31 = *(v0 + 768);
    *(v0 + 960) = *(v0 + 752);
    *(v0 + 976) = v31;
    *(v0 + 1056) = *(v0 + 848);
    v32 = *(v0 + 816);
    *(v0 + 1040) = *(v0 + 832);
    v33 = *(v0 + 800);
    *(v0 + 992) = *(v0 + 784);
    *(v0 + 1008) = v33;
    *(v0 + 1024) = v32;
    v34 = *(v3 + 40);
    v38 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 1224) = v36;
    *v36 = v0;
    v36[1] = MLS.ClientEventDeliverer.send(event:forGroup:);
    v37 = *(v0 + 1192);

    return v38(v0 + 1096, v37, v0 + 960, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError();
    swift_allocError();
    *v26 = 4;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    swift_willThrow();
    v27 = *(v0 + 1192);

    v28 = *(v0 + 8);

    return v28();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1224);
  v7 = *v1;
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v4 = v2[150];
    (*(v2[148] + 8))(v2[149], v2[147]);
    v5 = MLS.ClientEventDeliverer.send(event:forGroup:);
  }

  else
  {
    v4 = v2[150];
    (*(v2[148] + 8))(v2[149], v2[147]);
    v5 = MLS.ClientEventDeliverer.send(event:forGroup:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v30 = v0;
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1104);
  v5 = *(v0 + 1112);
  v6 = *(v0 + 1120);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined copy of MLS.SendResult(v3, v4, v5, v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of MLS.SendResult(v3, v4, v5, v6);
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1208);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v11 = 136315394;
    v25 = v24;
    v12 = specialized MLS.OutgoingEventType.identifier.getter();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v25);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v26 = v3;
    v27 = v4;
    v28 = v5;
    v29 = v6;
    outlined copy of MLS.SendResult(v3, v4, v5, v6);
    v16 = MLS.SendResult.description.getter();
    v18 = v17;
    outlined consume of MLS.SendResult(v26, v27, v28, v29);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v25);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_264F1F000, v7, v8, "ClientEventDeliverer sendEvent returned result { identifier: %s, result: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v24, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v20 = *(v0 + 1192);
  v21 = *(v0 + 1128);
  *v21 = v3;
  *(v21 + 8) = v4;
  *(v21 + 16) = v5;
  *(v21 + 24) = v6;

  v22 = *(v0 + 8);

  return v22();
}

{
  v21 = v0;
  v1 = v0[154];
  v2 = v0[152];
  v3 = v0[142];
  outlined init with copy of MLS.OutgoingEventState?((v0 + 2), (v0 + 48), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = specialized MLS.OutgoingEventType.identifier.getter();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v20);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "ClientEventDeliverer sendEvent failed  { identifier: %s, error: %@ }", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v16 = v0[151];
  swift_willThrow();
  swift_unknownObjectRelease();
  v17 = v0[149];

  v18 = v0[1];

  return v18();
}

uint64_t MLS.ClientEventDeliverer.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 784) = v3;
  *(v4 + 776) = a1;
  v7 = *v3;
  v8 = *(*v3 + 80);
  *(v4 + 792) = v8;
  v9 = v7[11];
  *(v4 + 800) = v9;
  v10 = v7[12];
  *(v4 + 808) = v10;
  v11 = v7[13];
  *(v4 + 816) = v11;
  *&v12 = v8;
  *(&v12 + 1) = v9;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  *(v4 + 744) = v12;
  *(v4 + 760) = v13;
  v14 = type metadata accessor for MLS.IncomingEventType();
  *(v4 + 824) = v14;
  v15 = *(v14 - 8);
  *(v4 + 832) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 840) = swift_task_alloc();
  v17 = *(a2 + 80);
  *(v4 + 392) = *(a2 + 64);
  *(v4 + 408) = v17;
  *(v4 + 424) = *(a2 + 96);
  v18 = *(a2 + 16);
  *(v4 + 328) = *a2;
  *(v4 + 344) = v18;
  v19 = *(a2 + 48);
  *(v4 + 360) = *(a2 + 32);
  *(v4 + 376) = v19;
  v20 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v20;
  v21 = *(a3 + 32);
  v22 = *(a3 + 48);
  v23 = *(a3 + 64);
  v24 = *(a3 + 80);
  *(v4 + 112) = *(a3 + 96);
  *(v4 + 80) = v23;
  *(v4 + 96) = v24;
  *(v4 + 48) = v21;
  *(v4 + 64) = v22;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v25 = static MLSActor.shared;
  *(v4 + 848) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.ClientEventDeliverer.receive(event:forGroup:), v25, 0);
}

uint64_t MLS.ClientEventDeliverer.receive(event:forGroup:)()
{
  v39 = v0;
  v1 = (*(**(v0 + 784) + 168))();
  *(v0 + 856) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 784);
    *(v0 + 864) = direct field offset for MLS.ClientEventDeliverer.logger;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 328, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined init with copy of MLS.Group(v0 + 16, v0 + 120);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.Group(v0 + 16);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v37[0] = v8;
      *v7 = 136315394;
      v9 = specialized MLS.IncomingEventType.identifier.getter();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v37);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      v13 = *(v0 + 16);
      v14 = *(v0 + 24);

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v37);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_264F1F000, v5, v6, "ClientEventDeliverer delivering receiveEvent { identifier: %s, group: %s }", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    v16 = *(v0 + 840);
    v17 = *(v0 + 816);
    v18 = *(v0 + 808);
    v19 = *(v0 + 800);
    v20 = *(v0 + 792);
    v21 = *(v0 + 408);
    v37[4] = *(v0 + 392);
    v37[5] = v21;
    v38 = *(v0 + 424);
    v22 = *(v0 + 344);
    v37[0] = *(v0 + 328);
    v37[1] = v22;
    v23 = *(v0 + 376);
    v37[2] = *(v0 + 360);
    v37[3] = v23;
    MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:)(v20, v19, v20, v19, v18, v17, v16);
    ObjectType = swift_getObjectType();
    v29 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v29;
    *(v0 + 320) = *(v0 + 112);
    v30 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v30;
    v31 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v31;
    v32 = *(v3 + 40);
    v36 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    *(v0 + 872) = v34;
    *v34 = v0;
    v34[1] = MLS.ClientEventDeliverer.receive(event:forGroup:);
    v35 = *(v0 + 840);

    return v36(v0 + 425, v35, v0 + 224, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError();
    swift_allocError();
    *v24 = 4;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    swift_willThrow();
    v25 = *(v0 + 840);

    v26 = *(v0 + 8);

    return v26();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v7 = *v1;
  *(*v1 + 880) = v0;

  if (v0)
  {
    v4 = v2[106];
    (*(v2[104] + 8))(v2[105], v2[103]);
    v5 = MLS.ClientEventDeliverer.receive(event:forGroup:);
  }

  else
  {
    v4 = v2[106];
    (*(v2[104] + 8))(v2[105], v2[103]);
    v5 = MLS.ClientEventDeliverer.receive(event:forGroup:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v23 = v0;
  v1 = *(v0 + 864);
  v2 = *(v0 + 784);
  v3 = *(v0 + 425);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 328, v0 + 640, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315394;
    v8 = specialized MLS.IncomingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v22);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = 0xEF79616C65447265;
    v13 = 0x7466417972746552;
    if (v3 != 1)
    {
      v13 = 0x746552746F4E6F44;
      v12 = 0xEA00000000007972;
    }

    if (v3)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0x73736563637553;
    }

    if (v3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    v16 = *(v0 + 856);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_264F1F000, v4, v5, "ClientEventDeliverer receiveEvent returned result { identifier: %s, result: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
    v18 = *(v0 + 856);
  }

  swift_unknownObjectRelease();
  v19 = *(v0 + 840);
  **(v0 + 776) = v3;

  v20 = *(v0 + 8);

  return v20();
}

{
  v21 = v0;
  v1 = v0[110];
  v2 = v0[108];
  v3 = v0[98];
  outlined init with copy of MLS.OutgoingEventState?((v0 + 41), (v0 + 67), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?((v0 + 41), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 136315394;
    v10 = specialized MLS.IncomingEventType.identifier.getter();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v20);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v15;
    *v8 = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "ClientEventDeliverer receiveEvent failed  { identifier: %s, error: %@ }", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v16 = v0[107];
  swift_willThrow();
  swift_unknownObjectRelease();
  v17 = v0[105];

  v18 = v0[1];

  return v18();
}

uint64_t MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 592) = v3;
  *(v4 + 584) = a1;
  v5 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v7;
  *(v4 + 641) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v4 + 600) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:), v8, 0);
}

uint64_t MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)()
{
  v25 = v0;
  v1 = (*(**(v0 + 592) + 168))();
  *(v0 + 608) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 592);
    *(v0 + 616) = direct field offset for MLS.ClientEventDeliverer.logger;
    outlined init with copy of MLS.Group(v0 + 16, v0 + 120);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of MLS.Group(v0 + 16);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315138;
      v9 = *(v0 + 16);
      v10 = *(v0 + 24);

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v24);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v5, v6, "ClientEventDeliverer delivering fetchGroupRecoveryInfo { group: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    v12 = *(v0 + 641);
    ObjectType = swift_getObjectType();
    v14 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v14;
    *(v0 + 320) = *(v0 + 112);
    v15 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v15;
    v16 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v16;
    *(v0 + 640) = v12;
    v17 = *(v3 + 56);
    v23 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 624) = v19;
    *v19 = v0;
    v19[1] = MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);

    return v23(v0 + 536, v0 + 224, v0 + 640, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError();
    swift_allocError();
    *v21 = 6;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v7 = *v1;
  *(*v1 + 632) = v0;

  v4 = *(v2 + 600);
  if (v0)
  {
    v5 = MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);
  }

  else
  {
    v5 = MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v33 = v0;
  v1 = v0[77];
  v2 = v0[74];
  v3 = v0[67];
  v4 = v0[68];
  v5 = v0[69];
  v6 = v0[70];
  outlined init with copy of MLS.Group((v0 + 2), (v0 + 54));
  outlined copy of MLS.FetchGroupRecoveryInfoResult(v3, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined destroy of MLS.Group((v0 + 2));
  outlined copy of MLS.FetchGroupRecoveryInfoResult(v3, v4, v5, v6, outlined consume of Data._Representation, outlined consume of Data?);
  if (os_log_type_enabled(v7, v8))
  {
    v27 = v8;
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v9 = 136315394;
    v10 = v0[2];
    v11 = v0[3];

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v28);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (v4 >> 60 == 15)
    {
      v13 = 0xEF79616C65447265;
      v14 = 0x7466417972746552;
    }

    else if (v4 >> 60 == 11)
    {
      v13 = 0xEA00000000007972;
      v14 = 0x746552746F4E6F44;
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      outlined copy of Data._Representation(v3, v4);
      outlined copy of Data?(v5, v6);
      _StringGuts.grow(_:)(22);

      v29 = 0xD000000000000013;
      v30 = 0x80000002651E9AF0;
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v31 = 0x666E4970756F7247;
      v32 = 0xEB00000000203A6FLL;
      countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
      MEMORY[0x2667545A0](countAndFlagsBits);

      MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651E9AD0);
      v17 = 0;
      object = 0;
      if (v6 >> 60 != 15)
      {
        v19 = Data.base64EncodedString(options:)(0);
        object = v19._object;
        v17 = v19._countAndFlagsBits;
      }

      v0[71] = v17;
      v0[72] = object;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v20 = String.init<A>(describing:)();
      MEMORY[0x2667545A0](v20);

      MEMORY[0x2667545A0](v31, v32);

      MEMORY[0x2667545A0](41, 0xE100000000000000);
      outlined copy of MLS.FetchGroupRecoveryInfoResult(v3, v4, v5, v6, outlined consume of Data._Representation, outlined consume of Data?);
      v14 = v29;
      v13 = v30;
    }

    v21 = v0[76];
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v28);

    *(v9 + 14) = v22;
    _os_log_impl(&dword_264F1F000, v7, v27, "ClientEventDeliverer fetchGroupRecoveryInfo returned result { group: %s, result: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v26, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v15 = v0[76];
  }

  swift_unknownObjectRelease();
  v23 = v0[73];
  *v23 = v3;
  v23[1] = v4;
  v23[2] = v5;
  v23[3] = v6;
  v24 = v0[1];

  return v24();
}

{
  v22 = v0;
  v1 = v0[79];
  v2 = v0[77];
  v3 = v0[74];
  outlined init with copy of MLS.Group((v0 + 2), (v0 + 41));
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  outlined destroy of MLS.Group((v0 + 2));

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[79];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136315394;
    v11 = v0[2];
    v12 = v0[3];

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "ClientEventDeliverer fetchGroupRecoveryInfo failed  { group: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v16 = v0[79];
  v17 = v0[76];
  swift_willThrow();
  swift_unknownObjectRelease();
  v18 = v0[79];
  v19 = v0[1];

  return v19();
}

uint64_t MLS.ClientEventDeliverer.fetchMember(uri:context:)(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  *(v4 + 32) = a1;
  *(v4 + 40) = v3;
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 96);
  MemberResult = type metadata accessor for MLS.FetchMemberResult();
  *(v4 + 48) = MemberResult;
  v10 = *(MemberResult - 8);
  *(v4 + 56) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *a2;
  v14 = a2[1];
  *(v4 + 80) = v12;
  *(v4 + 88) = v13;
  *(v4 + 96) = v14;
  *(v4 + 145) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  *(v4 + 104) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.ClientEventDeliverer.fetchMember(uri:context:), v15, 0);
}

uint64_t MLS.ClientEventDeliverer.fetchMember(uri:context:)()
{
  v28 = v0;
  v1 = (*(**(v0 + 40) + 168))();
  *(v0 + 112) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 96);
    v5 = *(v0 + 40);
    *(v0 + 120) = direct field offset for MLS.ClientEventDeliverer.logger;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v27);
      _os_log_impl(&dword_264F1F000, v6, v7, "ClientEventDeliverer delivering fetchMember { uri: %s }", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x266755550](v11, -1, -1);
      MEMORY[0x266755550](v10, -1, -1);
    }

    v12 = *(v0 + 145);
    v14 = *(v0 + 88);
    v13 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v14;
    *(v0 + 24) = v13;
    *(v0 + 144) = v12;
    v16 = *(v3 + 64);
    v26 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *v18 = v0;
    v18[1] = MLS.ClientEventDeliverer.fetchMember(uri:context:);
    v19 = *(v0 + 80);

    return v26(v19, v0 + 16, v0 + 144, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError();
    swift_allocError();
    *v21 = 4;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    swift_willThrow();
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v24 = *(v0 + 64);

    v25 = *(v0 + 8);

    return v25();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = MLS.ClientEventDeliverer.fetchMember(uri:context:);
  }

  else
  {
    v5 = MLS.ClientEventDeliverer.fetchMember(uri:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v29 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[5];
  v4 = *(v0[7] + 16);
  v4(v0[9], v0[10], v0[6]);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v25 = v0[11];
    log = v5;
    v8 = v0[8];
    v9 = v0[9];
    v10 = v0[6];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v7, &v28);
    *(v12 + 12) = 2080;
    v4(v8, v9, v10);
    v13 = *(v11 + 8);
    v13(v9, v10);
    Member = MLS.FetchMemberResult.description.getter(v10);
    v16 = v15;
    v13(v8, v10);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Member, v16, &v28);

    *(v12 + 14) = v17;
    v5 = log;
    _os_log_impl(&dword_264F1F000, log, v6, "ClientEventDeliverer fetchMember returned result { uri: %s, result: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v26, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {
    v13 = *(v0[7] + 8);
    v13(v0[9], v0[6]);
  }

  v18 = v0[14];
  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[8];
  v22 = v0[6];
  MLS.FetchMemberResult.allMemberResult.getter(v22, v0[4]);
  swift_unknownObjectRelease();
  v13(v19, v22);

  v23 = v0[1];

  return v23();
}

{
  v25 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[5];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[17];
    v10 = v0[11];
    v9 = v0[12];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v24);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_264F1F000, v6, v7, "ClientEventDeliverer fetchMember failed  { uri: %s, error: %@ }", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v16 = v0[17];
  v17 = v0[14];
  swift_willThrow();
  swift_unknownObjectRelease();
  v18 = v0[17];
  v20 = v0[9];
  v19 = v0[10];
  v21 = v0[8];

  v22 = v0[1];

  return v22();
}

uint64_t MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  v6 = *v3;
  *(v4 + 64) = *v3;
  v7 = *(v6 + 80);
  *(v4 + 72) = v7;
  v8 = *(v7 - 8);
  *(v4 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  *(v4 + 112) = swift_getTupleTypeMetadata2();
  v10 = type metadata accessor for Optional();
  *(v4 + 120) = v10;
  v11 = *(v10 - 8);
  *(v4 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 209) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v4 + 152) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:), v13, 0);
}

uint64_t MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:)()
{
  v36 = v0;
  v1 = (*(**(v0 + 56) + 192))();
  *(v0 + 160) = v1;
  if (v1)
  {
    v3 = v2;
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    *(v0 + 168) = direct field offset for MLS.ClientEventDeliverer.logger;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 48);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315138;
      v11 = MEMORY[0x266754630](v8, &type metadata for MLS.AllMember);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v35);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_264F1F000, v6, v7, "ClientEventDeliverer delivering retrieveKeyPackage { members: %s }", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266755550](v10, -1, -1);
      MEMORY[0x266755550](v9, -1, -1);
    }

    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 48);
    v16 = swift_task_alloc();
    v16[2] = v15;
    v16[3] = v14[11];
    v17 = v14[12];
    *(v0 + 176) = v17;
    v16[4] = v17;
    v16[5] = v14[13];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v20 = lazy protocol witness table accessor for type [MLS.AllMember] and conformance [A]();
    v21 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:), v16, v18, v15, v19, v20, MEMORY[0x277D84950], v0 + 24);
    *(v0 + 184) = v21;
    v29 = v21;
    LOBYTE(v18) = *(v0 + 209);

    ObjectType = swift_getObjectType();
    *(v0 + 208) = v18;
    v31 = *(v3 + 24);
    v34 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 192) = v33;
    *v33 = v0;
    v33[1] = MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:);

    return v34(v0 + 32, v29, v0 + 208, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();
    swift_allocError();
    *v22 = 6;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    swift_willThrow();
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v26 = *(v0 + 88);
    v25 = *(v0 + 96);

    v27 = *(v0 + 8);

    return v27();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = *(v2 + 152);

    v6 = MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:);
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 152);
    v6 = MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v25 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[6];
  v4 = v0[7];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v9 = 136315394;
    v12 = MEMORY[0x266754630](v8, &type metadata for MLS.AllMember);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v24);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_264F1F000, v6, v7, "ClientEventDeliverer retrieveKeyPackage failed  { members: %s, error: %@ }", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v17 = v0[20];
  swift_willThrow();
  swift_unknownObjectRelease();
  v19 = v0[17];
  v18 = v0[18];
  v21 = v0[11];
  v20 = v0[12];

  v22 = v0[1];

  return v22();
}

unint64_t MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:)()
{
  v93 = v0;
  v1 = *(v0 + 32);
  v2 = *(v1 + 64);
  v76 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & v2;
  v75 = (63 - v4) >> 6;
  v82 = *(v0 + 112) - 8;
  v6 = *(v0 + 80);
  v77 = v6;
  v84 = (v6 + 32);
  v85 = *(v0 + 112);
  v80 = (*(v0 + 176) + 40);
  v81 = (*(v0 + 128) + 32);
  v78 = *(v0 + 32);
  v79 = (v6 + 8);

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  if (!v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v86 = v9;
    v15 = v8;
LABEL_15:
    v18 = *(v0 + 136);
    v83 = *(v0 + 112);
    v19 = *(v0 + 96);
    v20 = *(v0 + 72);
    v21 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v22 = v21 | (v15 << 6);
    (*(v77 + 16))(v19, *(v78 + 48) + *(v77 + 72) * v22, v20);
    v23 = *(*(v78 + 56) + 8 * v22);
    v24 = *(v85 + 48);
    (*(v77 + 32))(v18, v19, v20);
    *(v18 + v24) = v23;
    v25 = *(v85 - 8);
    (*(v25 + 56))(v18, 0, 1, v83);

    v17 = v15;
    v9 = v86;
LABEL_16:
    v26 = *(v0 + 144);
    v27 = *(v0 + 112);
    (*v81)(v26, *(v0 + 136), *(v0 + 120));
    if ((*(v25 + 48))(v26, 1, v27) == 1)
    {
      break;
    }

    v87 = v17;
    v28 = *(v0 + 176);
    v29 = *(v0 + 72);
    v30 = *(*(v0 + 144) + *(v85 + 48));
    (*v84)(*(v0 + 88));
    (*v80)(&v88, v29, v28);
    v32 = v88;
    v31 = v89;
    v33 = v90;
    v34 = v91;
    v35 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v35;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v32, v31, v33, v34);
    v38 = *(v35 + 16);
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_37;
    }

    v42 = v37;
    if (*(v35 + 24) >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = result;
        specialized _NativeDictionary.copy()();
        result = v51;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v32, v31, v33, v34);
      if ((v42 & 1) != (v43 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }
    }

    v44 = *(v0 + 88);
    v45 = *(v0 + 72);
    if (v42)
    {
      v10 = result;
      outlined consume of MLS.AllMember();
      v11 = v92;
      v12 = *(v92 + 56);
      v13 = *(v12 + 8 * v10);
      *(v12 + 8 * v10) = v30;

      v14 = v45;
      v9 = v11;
      result = (*v79)(v44, v14);
      v8 = v87;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v46 = v92;
      *(v92 + 8 * (result >> 6) + 64) |= 1 << result;
      v47 = *(v46 + 48) + 32 * result;
      *v47 = v32;
      *(v47 + 8) = v31;
      *(v47 + 16) = v33;
      *(v47 + 24) = v34;
      *(*(v46 + 56) + 8 * result) = v30;
      v48 = v45;
      v9 = v46;
      result = (*v79)(v44, v48);
      v49 = *(v9 + 16);
      v40 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v40)
      {
        goto LABEL_38;
      }

      *(v9 + 16) = v50;
      v8 = v87;
      if (!v5)
      {
LABEL_7:
        if (v75 <= v8 + 1)
        {
          v16 = v8 + 1;
        }

        else
        {
          v16 = v75;
        }

        v17 = v16 - 1;
        while (1)
        {
          v15 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v15 >= v75)
          {
            v25 = *v82;
            (*(*v82 + 56))(*(v0 + 136), 1, 1, *(v0 + 112));
            v5 = 0;
            goto LABEL_16;
          }

          v5 = *(v76 + 8 * v15);
          ++v8;
          if (v5)
          {
            v86 = v9;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }
    }
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 168);
  v55 = *(v0 + 48);
  v54 = *(v0 + 56);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v0 + 160);
  if (v58)
  {
    v60 = *(v0 + 104);
    v61 = *(v0 + 48);
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v92 = v63;
    *v62 = 136315394;
    v64 = MEMORY[0x266754630](v61, &type metadata for MLS.AllMember);
    v66 = v9;
    v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v92);

    *(v62 + 4) = v67;
    v9 = v66;
    *(v62 + 12) = 2080;
    v88 = 0;
    v89 = 0xE000000000000000;

    _StringGuts.grow(_:)(29);

    v88 = 0xD00000000000001ALL;
    v89 = 0x80000002651E9810;
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    v68 = Dictionary.description.getter();
    MEMORY[0x2667545A0](v68);

    MEMORY[0x2667545A0](41, 0xE100000000000000);

    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v92);

    *(v62 + 14) = v69;
    _os_log_impl(&dword_264F1F000, v56, v57, "ClientEventDeliverer retrieveKeyPackage returned result { members: %s, result: %s }", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v63, -1, -1);
    MEMORY[0x266755550](v62, -1, -1);
  }

  swift_unknownObjectRelease();
  v71 = *(v0 + 136);
  v70 = *(v0 + 144);
  v73 = *(v0 + 88);
  v72 = *(v0 + 96);
  **(v0 + 40) = v9;

  v74 = *(v0 + 8);

  return v74();
}

uint64_t closure #1 in MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *(a1 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16[0] = v8;
  v16[1] = v9;
  v16[2] = v10;
  v17 = v11;
  v12 = *(a4 + 48);
  outlined copy of MLS.AllMember();
  v13 = v18;
  result = v12(v16, a2, a4);
  if (v13)
  {
    *a6 = v13;
  }

  return result;
}

uint64_t MLS.ClientEventDeliverer.__deallocating_deinit()
{
  MLS.ClientEventDeliverer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.Communicator.send(event:forGroup:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 224);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.receive(event:forGroup:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 232);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.fetchGroupRecoveryInfo(group:context:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 240);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.fetchMember(uri:context:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 248);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 256);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientEventDelivererProtocol.fetchMember(uri:context:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 248);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t MLS.ClientEventDeliverer.communicator.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t MLS.ClientEventDeliverer.communicator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MLS.DaemonClientEventDeliverer.communicator.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.DaemonClientEventDeliverer.communicator.modify;
}

void MLS.ClientEventDeliverer.communicator.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t (*MLS.DaemonClientEventDeliverer.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.DaemonClientEventDeliverer.delegate.modify;
}

uint64_t MLS.ClientEventDeliverer.keyPackageExchanger.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 56);
  return result;
}

uint64_t MLS.ClientEventDeliverer.keyPackageExchanger.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MLS.DaemonClientEventDeliverer.keyPackageExchanger.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.DaemonClientEventDeliverer.keyPackageExchanger.modify;
}

void MLS.ClientEventDeliverer.keyPackageExchanger.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t MLS.ClientEventDeliverer.logger.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *MLS.DaemonClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  swift_allocObject();
  v20 = specialized MLS.ClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, &OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v20;
}

uint64_t MLS.DaemonClientEventDeliverer.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1288) = v3;
  *(v4 + 1280) = a1;
  v5 = *(a2 + 144);
  *(v4 + 144) = *(a2 + 128);
  *(v4 + 160) = v5;
  *(v4 + 176) = *(a2 + 160);
  *(v4 + 192) = *(a2 + 176);
  v6 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v6;
  v7 = *(a2 + 112);
  *(v4 + 112) = *(a2 + 96);
  *(v4 + 128) = v7;
  v8 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v8;
  v9 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v9;
  v10 = *(a3 + 80);
  *(v4 + 1000) = *(a3 + 64);
  *(v4 + 1016) = v10;
  *(v4 + 1032) = *(a3 + 96);
  v11 = *(a3 + 16);
  *(v4 + 936) = *a3;
  *(v4 + 952) = v11;
  v12 = *(a3 + 48);
  *(v4 + 968) = *(a3 + 32);
  *(v4 + 984) = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v4 + 1296) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DaemonClientEventDeliverer.send(event:forGroup:), v13, 0);
}

uint64_t MLS.DaemonClientEventDeliverer.send(event:forGroup:)()
{
  v33 = v0;
  v1 = (*(**(v0 + 1288) + 112))();
  *(v0 + 1304) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 1288);
    *(v0 + 1312) = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined init with copy of MLS.Group(v0 + 936, v0 + 1040);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.Group(v0 + 936);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136315394;
      v9 = specialized MLS.OutgoingEventType.identifier.getter();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v32);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      v13 = *(v0 + 936);
      v14 = *(v0 + 944);

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v32);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_264F1F000, v5, v6, "DaemonClientEventDeliverer delivering sendEvent { identifier: %s, group: %s }", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v17 = *(v0 + 160);
    *(v0 + 512) = *(v0 + 144);
    *(v0 + 528) = v17;
    *(v0 + 544) = *(v0 + 176);
    *(v0 + 560) = *(v0 + 192);
    v18 = *(v0 + 96);
    *(v0 + 448) = *(v0 + 80);
    *(v0 + 464) = v18;
    v19 = *(v0 + 128);
    *(v0 + 480) = *(v0 + 112);
    *(v0 + 496) = v19;
    v20 = *(v0 + 32);
    *(v0 + 384) = *(v0 + 16);
    *(v0 + 400) = v20;
    v21 = *(v0 + 64);
    *(v0 + 416) = *(v0 + 48);
    *(v0 + 432) = v21;
    v22 = *(v0 + 952);
    *(v0 + 1144) = *(v0 + 936);
    *(v0 + 1160) = v22;
    *(v0 + 1240) = *(v0 + 1032);
    v23 = *(v0 + 1016);
    *(v0 + 1208) = *(v0 + 1000);
    *(v0 + 1224) = v23;
    v24 = *(v0 + 984);
    *(v0 + 1176) = *(v0 + 968);
    *(v0 + 1192) = v24;
    v25 = *(v3 + 40);
    v31 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    *(v0 + 1320) = v27;
    *v27 = v0;
    v27[1] = MLS.DaemonClientEventDeliverer.send(event:forGroup:);

    return v31(v0 + 1248, v0 + 384, v0 + 1144, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError();
    swift_allocError();
    *v29 = 4;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    swift_willThrow();
    v30 = *(v0 + 8);

    return v30();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 1320);
  v7 = *v1;
  *(*v1 + 1328) = v0;

  v4 = *(v2 + 1296);
  if (v0)
  {
    v5 = MLS.DaemonClientEventDeliverer.send(event:forGroup:);
  }

  else
  {
    v5 = MLS.DaemonClientEventDeliverer.send(event:forGroup:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v29 = v0;
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1288);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1256);
  v5 = *(v0 + 1264);
  v6 = *(v0 + 1272);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined copy of MLS.SendResult(v3, v4, v5, v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of MLS.SendResult(v3, v4, v5, v6);
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1304);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v11 = 136315394;
    v24 = v23;
    v12 = specialized MLS.OutgoingEventType.identifier.getter();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v25 = v3;
    v26 = v4;
    v27 = v5;
    v28 = v6;
    outlined copy of MLS.SendResult(v3, v4, v5, v6);
    v16 = MLS.SendResult.description.getter();
    v18 = v17;
    outlined consume of MLS.SendResult(v25, v26, v27, v28);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v24);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_264F1F000, v7, v8, "DaemonClientEventDeliverer sendEvent returned result { identifier: %s, result: %s }", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v23, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v20 = *(v0 + 1280);
  *v20 = v3;
  *(v20 + 8) = v4;
  *(v20 + 16) = v5;
  *(v20 + 24) = v6;
  v21 = *(v0 + 8);

  return v21();
}

{
  v23 = v0;
  v1 = v0[166];
  v2 = v0[164];
  v3 = v0[161];
  outlined init with copy of MLS.OutgoingEventState?((v0 + 2), (v0 + 71), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?((v0 + 2), &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[166];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v8 = 136315394;
    v11 = specialized MLS.OutgoingEventType.identifier.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v22);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_264F1F000, v5, v6, "DaemonClientEventDeliverer sendEvent failed  { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v17 = v0[166];
  v18 = v0[163];
  swift_willThrow();
  swift_unknownObjectRelease();
  v19 = v0[166];
  v20 = v0[1];

  return v20();
}

uint64_t MLS.DaemonClientEventDeliverer.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 856) = v3;
  *(v4 + 848) = a1;
  v5 = *(a2 + 80);
  *(v4 + 392) = *(a2 + 64);
  *(v4 + 408) = v5;
  *(v4 + 424) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 328) = *a2;
  *(v4 + 344) = v6;
  v7 = *(a2 + 48);
  *(v4 + 360) = *(a2 + 32);
  *(v4 + 376) = v7;
  v8 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v8;
  v9 = *(a3 + 32);
  v10 = *(a3 + 48);
  v11 = *(a3 + 64);
  v12 = *(a3 + 80);
  *(v4 + 112) = *(a3 + 96);
  *(v4 + 80) = v11;
  *(v4 + 96) = v12;
  *(v4 + 48) = v9;
  *(v4 + 64) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v4 + 864) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DaemonClientEventDeliverer.receive(event:forGroup:), v13, 0);
}

uint64_t MLS.DaemonClientEventDeliverer.receive(event:forGroup:)()
{
  v33 = v0;
  v1 = (*(**(v0 + 856) + 136))();
  *(v0 + 872) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 856);
    *(v0 + 880) = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 328, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined init with copy of MLS.Group(v0 + 16, v0 + 120);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.Group(v0 + 16);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136315394;
      v9 = specialized MLS.IncomingEventType.identifier.getter();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v32);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      v13 = *(v0 + 16);
      v14 = *(v0 + 24);

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v32);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_264F1F000, v5, v6, "DaemonClientEventDeliverer delivering receiveEvent { identifier: %s, group: %s }", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v17 = *(v0 + 408);
    *(v0 + 600) = *(v0 + 392);
    *(v0 + 616) = v17;
    *(v0 + 632) = *(v0 + 424);
    v18 = *(v0 + 344);
    *(v0 + 536) = *(v0 + 328);
    *(v0 + 552) = v18;
    v19 = *(v0 + 376);
    *(v0 + 568) = *(v0 + 360);
    *(v0 + 584) = v19;
    v20 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v20;
    v21 = *(v0 + 48);
    v22 = *(v0 + 64);
    v23 = *(v0 + 80);
    v24 = *(v0 + 96);
    *(v0 + 320) = *(v0 + 112);
    *(v0 + 288) = v23;
    *(v0 + 304) = v24;
    *(v0 + 256) = v21;
    *(v0 + 272) = v22;
    v25 = *(v3 + 40);
    v31 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    *(v0 + 888) = v27;
    *v27 = v0;
    v27[1] = MLS.DaemonClientEventDeliverer.receive(event:forGroup:);

    return v31(v0 + 425, v0 + 536, v0 + 224, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError();
    swift_allocError();
    *v29 = 4;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    swift_willThrow();
    v30 = *(v0 + 8);

    return v30();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v7 = *v1;
  *(*v1 + 896) = v0;

  v4 = *(v2 + 864);
  if (v0)
  {
    v5 = MLS.DaemonClientEventDeliverer.receive(event:forGroup:);
  }

  else
  {
    v5 = MLS.DaemonClientEventDeliverer.receive(event:forGroup:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 856);
  v3 = *(v0 + 425);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 328, v0 + 744, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315394;
    v8 = specialized MLS.IncomingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v21);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = 0xEF79616C65447265;
    v13 = 0x7466417972746552;
    if (v3 != 1)
    {
      v13 = 0x746552746F4E6F44;
      v12 = 0xEA00000000007972;
    }

    if (v3)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0x73736563637553;
    }

    if (v3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    v16 = *(v0 + 872);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v21);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_264F1F000, v4, v5, "DaemonClientEventDeliverer receiveEvent returned result { identifier: %s, result: %s }", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
    v18 = *(v0 + 872);
  }

  swift_unknownObjectRelease();
  **(v0 + 848) = v3;
  v19 = *(v0 + 8);

  return v19();
}

{
  v23 = v0;
  v1 = v0[112];
  v2 = v0[110];
  v3 = v0[107];
  outlined init with copy of MLS.OutgoingEventState?((v0 + 41), (v0 + 80), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?((v0 + 41), &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[112];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v8 = 136315394;
    v11 = specialized MLS.IncomingEventType.identifier.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v22);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_264F1F000, v5, v6, "DaemonClientEventDeliverer receiveEvent failed  { identifier: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v17 = v0[112];
  v18 = v0[109];
  swift_willThrow();
  swift_unknownObjectRelease();
  v19 = v0[112];
  v20 = v0[1];

  return v20();
}

uint64_t MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 592) = v3;
  *(v4 + 584) = a1;
  v5 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v7;
  *(v4 + 641) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v4 + 600) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:), v8, 0);
}

uint64_t MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)()
{
  v25 = v0;
  v1 = (*(**(v0 + 592) + 136))();
  *(v0 + 608) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 592);
    *(v0 + 616) = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;
    outlined init with copy of MLS.Group(v0 + 16, v0 + 120);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of MLS.Group(v0 + 16);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315138;
      v9 = *(v0 + 16);
      v10 = *(v0 + 24);

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v24);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v5, v6, "DaemonClientEventDeliverer delivering fetchGroupRecoveryInfo { group: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    v12 = *(v0 + 641);
    ObjectType = swift_getObjectType();
    v14 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v14;
    *(v0 + 320) = *(v0 + 112);
    v15 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v15;
    v16 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v16;
    *(v0 + 640) = v12;
    v17 = *(v3 + 56);
    v23 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    *(v0 + 624) = v19;
    *v19 = v0;
    v19[1] = MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);

    return v23(v0 + 536, v0 + 224, v0 + 640, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError();
    swift_allocError();
    *v21 = 6;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v7 = *v1;
  *(*v1 + 632) = v0;

  v4 = *(v2 + 600);
  if (v0)
  {
    v5 = MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);
  }

  else
  {
    v5 = MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v33 = v0;
  v1 = v0[77];
  v2 = v0[74];
  v3 = v0[67];
  v4 = v0[68];
  v5 = v0[69];
  v6 = v0[70];
  outlined init with copy of MLS.Group((v0 + 2), (v0 + 54));
  outlined copy of MLS.FetchGroupRecoveryInfoResult(v3, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  outlined destroy of MLS.Group((v0 + 2));
  outlined copy of MLS.FetchGroupRecoveryInfoResult(v3, v4, v5, v6, outlined consume of Data._Representation, outlined consume of Data?);
  if (os_log_type_enabled(v7, v8))
  {
    v27 = v8;
    v9 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v9 = 136315394;
    v10 = v0[2];
    v11 = v0[3];

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v28);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    if (v4 >> 60 == 15)
    {
      v13 = 0xEF79616C65447265;
      v14 = 0x7466417972746552;
    }

    else if (v4 >> 60 == 11)
    {
      v13 = 0xEA00000000007972;
      v14 = 0x746552746F4E6F44;
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      outlined copy of Data._Representation(v3, v4);
      outlined copy of Data?(v5, v6);
      _StringGuts.grow(_:)(22);

      v29 = 0xD000000000000013;
      v30 = 0x80000002651E9AF0;
      v31 = 0;
      v32 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v31 = 0x666E4970756F7247;
      v32 = 0xEB00000000203A6FLL;
      countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
      MEMORY[0x2667545A0](countAndFlagsBits);

      MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651E9AD0);
      v17 = 0;
      object = 0;
      if (v6 >> 60 != 15)
      {
        v19 = Data.base64EncodedString(options:)(0);
        object = v19._object;
        v17 = v19._countAndFlagsBits;
      }

      v0[71] = v17;
      v0[72] = object;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v20 = String.init<A>(describing:)();
      MEMORY[0x2667545A0](v20);

      MEMORY[0x2667545A0](v31, v32);

      MEMORY[0x2667545A0](41, 0xE100000000000000);
      outlined copy of MLS.FetchGroupRecoveryInfoResult(v3, v4, v5, v6, outlined consume of Data._Representation, outlined consume of Data?);
      v14 = v29;
      v13 = v30;
    }

    v21 = v0[76];
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v28);

    *(v9 + 14) = v22;
    _os_log_impl(&dword_264F1F000, v7, v27, "DaemonClientEventDeliverer fetchGroupRecoveryInfo returned result { group: %s, result: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v26, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v15 = v0[76];
  }

  swift_unknownObjectRelease();
  v23 = v0[73];
  *v23 = v3;
  v23[1] = v4;
  v23[2] = v5;
  v23[3] = v6;
  v24 = v0[1];

  return v24();
}

{
  v22 = v0;
  v1 = v0[79];
  v2 = v0[77];
  v3 = v0[74];
  outlined init with copy of MLS.Group((v0 + 2), (v0 + 41));
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  outlined destroy of MLS.Group((v0 + 2));

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[79];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136315394;
    v11 = v0[2];
    v12 = v0[3];

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "DaemonClientEventDeliverer fetchGroupRecoveryInfo failed  { group: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v16 = v0[79];
  v17 = v0[76];
  swift_willThrow();
  swift_unknownObjectRelease();
  v18 = v0[79];
  v19 = v0[1];

  return v19();
}

uint64_t MLS.DaemonClientEventDeliverer.fetchMember(uri:context:)(uint64_t a1, void *a2, _BYTE *a3)
{
  *(v4 + 112) = a1;
  *(v4 + 120) = v3;
  v5 = a2[1];
  *(v4 + 128) = *a2;
  *(v4 + 136) = v5;
  *(v4 + 42) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  *(v4 + 144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DaemonClientEventDeliverer.fetchMember(uri:context:), v6, 0);
}

uint64_t MLS.DaemonClientEventDeliverer.fetchMember(uri:context:)()
{
  v24 = v0;
  v1 = (*(**(v0 + 120) + 136))();
  *(v0 + 152) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 136);
    v5 = *(v0 + 120);
    *(v0 + 160) = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v23);
      _os_log_impl(&dword_264F1F000, v6, v7, "DaemonClientEventDeliverer delivering fetchMember { uri: %s }", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x266755550](v11, -1, -1);
      MEMORY[0x266755550](v10, -1, -1);
    }

    v12 = *(v0 + 42);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    ObjectType = swift_getObjectType();
    *(v0 + 80) = v14;
    *(v0 + 88) = v13;
    *(v0 + 41) = v12;
    v16 = *(v3 + 64);
    v22 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = MLS.DaemonClientEventDeliverer.fetchMember(uri:context:);

    return v22(v0 + 16, v0 + 80, v0 + 41, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError();
    swift_allocError();
    *v20 = 4;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    swift_willThrow();
    v21 = *(v0 + 8);

    return v21();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = MLS.DaemonClientEventDeliverer.fetchMember(uri:context:);
  }

  else
  {
    v5 = MLS.DaemonClientEventDeliverer.fetchMember(uri:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v23 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

  outlined copy of MLS.FetchMemberResult<MLS.AllMember>(v4, v5, v6, v7);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  outlined consume of MLS.FetchMemberResult<MLS.AllMember>(v4, v5, v6, v7);
  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v22);
    *(v12 + 12) = 2080;
    if (v7 <= 0xFD)
    {
      if ((v7 & 0xFE) == 0x7E)
      {
        v13 = 0xEA00000000007972;
        v14 = 0x746552746F4E6F44;
      }

      else
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0xE000000000000000;
        MEMORY[0x2667545A0](0x2873736563637553, 0xE800000000000000);
        *(v0 + 48) = v4;
        *(v0 + 56) = v5;
        *(v0 + 64) = v6;
        *(v0 + 72) = v7;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x2667545A0](41, 0xE100000000000000);
        v14 = *(v0 + 96);
        v13 = *(v0 + 104);
      }
    }

    else
    {
      v13 = 0xEF79616C65447265;
      v14 = 0x7466417972746552;
    }

    v20 = *(v0 + 152);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v22);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_264F1F000, v8, v9, "DaemonClientEventDeliverer fetchMember returned result { uri: %s, result: %s }", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v21, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = *(v0 + 152);

    swift_unknownObjectRelease();
  }

  v17 = *(v0 + 112);
  *v17 = v4;
  *(v17 + 8) = v5;
  *(v17 + 16) = v6;
  *(v17 + 24) = v7;
  v18 = *(v0 + 8);

  return v18();
}

{
  v22 = v0;
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[15];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[22];
    v10 = v0[16];
    v9 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v21);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_264F1F000, v6, v7, "DaemonClientEventDeliverer fetchMember failed  { uri: %s, error: %@ }", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v16 = v0[22];
  v17 = v0[19];
  swift_willThrow();
  swift_unknownObjectRelease();
  v18 = v0[22];
  v19 = v0[1];

  return v19();
}

uint64_t MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  *(v4 + 89) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  *(v4 + 48) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:), v5, 0);
}

uint64_t MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:)()
{
  v25 = v0;
  v1 = (*(**(v0 + 40) + 160))();
  *(v0 + 56) = v1;
  if (v1)
  {
    v3 = v2;
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    *(v0 + 64) = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v24 = v10;
      *v9 = 136315138;
      v11 = MEMORY[0x266754630](v8, &type metadata for MLS.AllMember);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v24);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_264F1F000, v6, v7, "DaemonClientEventDeliverer delivering retrieveKeyPackage { members: %s }", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x266755550](v10, -1, -1);
      MEMORY[0x266755550](v9, -1, -1);
    }

    v14 = *(v0 + 89);
    ObjectType = swift_getObjectType();
    *(v0 + 88) = v14;
    v16 = *(v3 + 24);
    v23 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 72) = v18;
    *v18 = v0;
    v18[1] = MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:);
    v19 = *(v0 + 32);

    return v23(v0 + 16, v19, v0 + 88, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();
    swift_allocError();
    *v21 = 6;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:);
  }

  else
  {
    v5 = MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:);
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v24 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[10];
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 136315394;
    v13 = MEMORY[0x266754630](v9, &type metadata for MLS.AllMember);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_264F1F000, v6, v7, "DaemonClientEventDeliverer retrieveKeyPackage failed  { members: %s, error: %@ }", v10, 0x16u);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  v18 = v0[10];
  v19 = v0[7];
  swift_willThrow();
  swift_unknownObjectRelease();
  v20 = v0[10];
  v21 = v0[1];

  return v21();
}

void MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:)()
{
  v59 = v0;
  v1 = 0;
  v2 = *(v0 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v55 = *(v0 + 16);
  v6 = -1;
  v7 = -1 << *(v55 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = MEMORY[0x277D84F98];
  v53 = v9;
  v54 = v4;
  while (v8)
  {
    v14 = v1;
LABEL_11:
    v15 = __clz(__rbit64(v8)) | (v14 << 6);
    v16 = *(v55 + 48) + 32 * v15;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
    v21 = *(*(v55 + 56) + 8 * v15);
    outlined copy of MLS.AllMember();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v10;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17, v19, v20);
    v25 = v10;
    v26 = v10[2];
    v27 = (v24 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v30 = v24;
    if (v25[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v23;
        specialized _NativeDictionary.copy()();
        v23 = v35;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17, v19, v20);
      if ((v30 & 1) != (v31 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v8 &= v8 - 1;
    if (v30)
    {
      v11 = v23;
      outlined consume of MLS.AllMember();
      v10 = v57;
      v12 = v57[7];
      v13 = *(v12 + 8 * v11);
      *(v12 + 8 * v11) = v21;
    }

    else
    {
      v10 = v57;
      v57[(v23 >> 6) + 8] |= 1 << v23;
      v32 = v10[6] + 32 * v23;
      *v32 = v18;
      *(v32 + 8) = v17;
      *(v32 + 16) = v19;
      *(v32 + 24) = v20;
      *(v10[7] + 8 * v23) = v21;
      v33 = v10[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v10[2] = v34;
    }

    v1 = v14;
    v9 = v53;
    v4 = v54;
  }

  while (1)
  {
    v14 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v14 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v14);
    ++v1;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  v36 = *(v52 + 64);
  v38 = *(v52 + 32);
  v37 = *(v52 + 40);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v52 + 56);
  if (v41)
  {
    v43 = *(v52 + 32);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v56 = v45;
    *v44 = 136315394;
    v46 = MEMORY[0x266754630](v43, &type metadata for MLS.AllMember);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v56);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v57 = 0;
    v58 = 0xE000000000000000;

    _StringGuts.grow(_:)(29);

    v57 = 0xD00000000000001ALL;
    v58 = 0x80000002651E9810;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    v49 = Dictionary.description.getter();
    MEMORY[0x2667545A0](v49);

    MEMORY[0x2667545A0](41, 0xE100000000000000);

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v56);

    *(v44 + 14) = v50;
    _os_log_impl(&dword_264F1F000, v39, v40, "DaemonClientEventDeliverer retrieveKeyPackage returned result { members: %s, result: %s }", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v45, -1, -1);
    MEMORY[0x266755550](v44, -1, -1);
  }

  swift_unknownObjectRelease();
  **(v52 + 24) = v10;
  v51 = *(v52 + 8);

  v51();
}

uint64_t MLS.ClientEventDeliverer.deinit(void (*a1)(uint64_t), void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t *a4)
{
  a1(v4 + 16);
  a2(v4 + 32);
  a3(v4 + 48);
  v8 = *a4;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  return v4;
}

uint64_t MLS.DaemonClientEventDeliverer.__deallocating_deinit()
{
  outlined destroy of weak MLS.Persister?(v0 + 16);
  outlined destroy of weak MLS.Persister?(v0 + 32);
  outlined destroy of weak MLS.Persister?(v0 + 48);
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.Communicator.send(event:forGroup:) in conformance MLS.DaemonClientEventDeliverer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 192);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.receive(event:forGroup:) in conformance MLS.DaemonClientEventDeliverer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.fetchGroupRecoveryInfo(group:context:) in conformance MLS.DaemonClientEventDeliverer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 208);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.fetchMember(uri:context:) in conformance MLS.DaemonClientEventDeliverer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 216);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance MLS.DaemonClientEventDeliverer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 224);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

void *specialized MLS.ClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = *(v9 + 80);
  v23 = *(v9 + 96);
  v18 = type metadata accessor for MLS.ClientEventDeliverer();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  return specialized MLS.ClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, &direct field offset for MLS.ClientEventDeliverer.logger);
}

unint64_t lazy protocol witness table accessor for type [MLS.AllMember] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MLS.AllMember] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MLS.AllMember] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MLS.AllMember] and conformance [A]);
  }

  return result;
}

void *specialized MLS.ClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[5] = 0;
  swift_unknownObjectWeakInit();
  v10[7] = 0;
  swift_unknownObjectWeakInit();
  v13 = *a10;
  Logger.init(subsystem:category:)();
  swift_beginAccess();
  v10[3] = a7;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v10[5] = a8;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v10[7] = a9;
  swift_unknownObjectWeakAssign();
  return v10;
}

uint64_t sub_2651AAD4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AAD98(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 152);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

__n128 sub_2651AAE08(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_2651AAE14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AAE60(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 176);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_2651AAED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AAF1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 200);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_2651AAF8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AAFD8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 120);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_2651AB03C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AB088(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_2651AB0EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AB138(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 168);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t dispatch thunk of MLS.ClientEventDelivererProtocol.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientEventDelivererProtocol.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientEventDelivererProtocol.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientEventDelivererProtocol.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientEventDelivererProtocol.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t type metadata completion function for MLS.ClientEventDeliverer()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.ClientEventDeliverer.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 224);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.ClientEventDeliverer.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 232);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 240);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.ClientEventDeliverer.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 248);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 256);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t type metadata accessor for MLS.DaemonClientEventDeliverer()
{
  result = type metadata singleton initialization cache for MLS.DaemonClientEventDeliverer;
  if (!type metadata singleton initialization cache for MLS.DaemonClientEventDeliverer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.DaemonClientEventDeliverer()
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MLS.DaemonClientEventDeliverer.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 192);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.DaemonClientEventDeliverer.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 200);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 208);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.DaemonClientEventDeliverer.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 216);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 224);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3);
}

uint64_t MLS.EventsSinceLastUpdate.init(messages:timeOfLastUpdate:isFirstKeyUpdate:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

void MLS.EventsSinceLastUpdate.incrementedMessages()(uint64_t a1@<X8>)
{
  if (*v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 8);
    *a1 = *v1 + 1;
    *(a1 + 8) = v3;
    *(a1 + 16) = v2;
  }
}

uint64_t MLS.EventsSinceLastUpdate.rolledKey()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  result = (*(v3 + 8))(v6, v2);
  *a1 = 0;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  return result;
}

uint64_t static MLS.EventsSinceLastUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EventsSinceLastUpdate.CodingKeys()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x736567617373656DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EventsSinceLastUpdate.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.EventsSinceLastUpdate.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EventsSinceLastUpdate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EventsSinceLastUpdate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EventsSinceLastUpdate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO21EventsSinceLastUpdateV10CodingKeys33_090A57BA177615123CF6311FB69E63E9LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO21EventsSinceLastUpdateV10CodingKeys33_090A57BA177615123CF6311FB69E63E9LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = v1[1];
  v13[2] = *(v1 + 16);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys);
  }

  return result;
}

uint64_t MLS.EventsSinceLastUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO21EventsSinceLastUpdateV10CodingKeys33_090A57BA177615123CF6311FB69E63E9LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO21EventsSinceLastUpdateV10CodingKeys33_090A57BA177615123CF6311FB69E63E9LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16[15] = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v16[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v16[13] = 2;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MLS.EventsSinceLastUpdate(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized MLS.EventsSinceLastUpdate.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736567617373656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651EA650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651EA670 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a1;
  v7[8] = a2;
  v9 = type metadata accessor for Date();
  v7[13] = v9;
  v10 = *(v9 - 8);
  v7[14] = v10;
  v11 = *(v10 + 64) + 15;
  v7[15] = swift_task_alloc();
  v12 = swift_allocObject();
  v13 = *a3;
  v14 = a3[1];
  v7[16] = v12;
  v7[17] = v13;
  v7[18] = v14;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  v7[19] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:), v15, 0);
}

uint64_t MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[11];
  v17 = v0[10];
  v6 = v0[8];
  v5 = v0[9];
  v3[6] = v0[7];
  v3[7] = v6;
  v3[4] = v2;
  v3[5] = v1;
  v3[2] = v5;
  v3[3] = v17;
  outlined init with copy of ServerBag.MLS(v4, (v3 + 11));
  ObjectType = swift_getObjectType();
  v0[5] = v2;
  v0[6] = v1;
  v8 = *(v17 + 144);

  swift_unknownObjectRetain();
  v16 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[7];
  v14 = v0[8];

  return (v16)(v0 + 2, v13, v14, v0 + 5, ObjectType, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v10 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[8];

    v6 = MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  }

  else
  {
    v7 = v2[18];
    v4 = v2[19];
    v8 = v2[8];

    v6 = MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

{
  LODWORD(v1) = *(v0 + 32);
  if (v1 == 2)
  {
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v1 = *(v0 + 104);
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    (*(v3 + 8))(v2, v1);
    v8 = 0;
    LOBYTE(v1) = 1;
  }

  else
  {
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  *(v12 + 64) = v8;
  *(v12 + 72) = v7;
  *(v12 + 80) = v1 & 1;

  v13 = *(v0 + 8);
  v14 = *(v0 + 128);

  return v13(v14);
}

{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);

  v7 = v2[2];
  swift_unknownObjectRelease();
  v8 = v2[5];

  v9 = v2[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 11);
  swift_deallocPartialClassInstance();

  v10 = v0[1];
  v11 = v0[21];

  return v10();
}

uint64_t MLS.KeyUpdateTracker.persister.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t MLS.KeyUpdateTracker.uniqueClientIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t MLS.KeyUpdateTracker.groupIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

double MLS.KeyUpdateTracker.eventsSinceLastKeyUpdate.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 8) = result;
  *(a1 + 16) = v4;
  return result;
}

uint64_t MLS.KeyUpdateTracker.eventsSinceLastKeyUpdate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a1;
  v7[8] = a2;
  v9 = type metadata accessor for Date();
  v7[13] = v9;
  v10 = *(v9 - 8);
  v7[14] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a3;
  v14 = a3[1];
  v7[15] = v12;
  v7[16] = v13;
  v7[17] = v14;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v15 = static MLSActor.shared;
  v7[18] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:), v15, 0);
}

uint64_t MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v17 = v0[10];
  v6 = v0[8];
  v4[6] = v0[7];
  v4[7] = v6;
  v4[4] = v2;
  v4[5] = v1;
  v4[2] = v5;
  v4[3] = v17;
  outlined init with copy of ServerBag.MLS(v3, (v4 + 11));
  ObjectType = swift_getObjectType();
  v0[5] = v2;
  v0[6] = v1;
  v8 = *(v17 + 144);

  swift_unknownObjectRetain();
  v16 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[7];
  v14 = v0[8];

  return (v16)(v0 + 2, v13, v14, v0 + 5, ObjectType, v11);
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = v2[8];

    v6 = MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  }

  else
  {
    v7 = v2[17];
    v4 = v2[18];
    v8 = v2[8];

    v6 = MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

{
  LODWORD(v1) = *(v0 + 32);
  if (v1 == 2)
  {
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v1 = *(v0 + 104);
    v4 = *(v0 + 88);
    v5 = *(v0 + 72);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    (*(v3 + 8))(v2, v1);
    v8 = 0;
    LOBYTE(v1) = 1;
  }

  else
  {
    v9 = *(v0 + 88);
    v10 = *(v0 + 72);
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v11 = *(v0 + 120);
  v12 = *(v0 + 96);
  *(v12 + 64) = v8;
  *(v12 + 72) = v7;
  *(v12 + 80) = v1 & 1;

  v13 = *(v0 + 8);
  v14 = *(v0 + 96);

  return v13(v14);
}

{
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);

  v6 = v3[2];
  swift_unknownObjectRelease();
  v7 = v3[5];

  v8 = v3[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 11);
  type metadata accessor for MLS.KeyUpdateTracker();
  swift_deallocPartialClassInstance();

  v9 = v0[1];
  v10 = v0[20];

  return v9();
}

uint64_t MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:)(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 33) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  *(v2 + 88) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:), v3, 0);
}

void *MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:)()
{
  v19 = v0;
  v1 = *(v0 + 80);
  if (*(v0 + 33))
  {
    result = (*(*v1 + 120))(&v18);
    if (v18 == -1)
    {
      __break(1u);
      return result;
    }

    v3 = *(v0 + 80);
    ++v18;
    (*(*v3 + 128))(&v18);
    v1 = *(v0 + 80);
  }

  v5 = v1[2];
  v4 = v1[3];
  ObjectType = swift_getObjectType();
  v7 = *(*v1 + 120);
  v8 = (*v1 + 120) & 0xFFFFFFFFFFFFLL | 0x7BFE000000000000;
  *(v0 + 96) = v7;
  *(v0 + 104) = v8;
  v7();
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v9;
  *(v0 + 56) = v10;
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[5];
  *(v0 + 64) = v1[4];
  *(v0 + 72) = v13;
  v14 = *(v4 + 136);

  v17 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 112) = v16;
  *v16 = v0;
  v16[1] = MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:);

  return v17(v0 + 40, v11, v12, v0 + 64, ObjectType, v4);
}

uint64_t MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:)()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  v2[15] = v0;

  v5 = v2[9];

  v6 = v2[11];
  if (v0)
  {
    v7 = MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:);
  }

  else
  {
    v7 = MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:);
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  v14 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v3[14];
  v5 = v3[15];
  __swift_project_boxed_opaque_existential_1(v3 + 11, v4);
  v2(v10);
  v12[0] = v10[0];
  v12[1] = v10[1];
  v13 = v11;
  v6 = (*(v5 + 8))(v12, v4, v5);
  v7 = v0[1];
  v8 = v6 & 1;

  return v7(v8);
}

{
  v1 = *(v0 + 120);
  return (*(v0 + 8))(0);
}

uint64_t MLS.KeyUpdateTracker.resetKeyRollTracking()()
{
  v1[10] = v0;
  v2 = type metadata accessor for Date();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v1[14] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyUpdateTracker.resetKeyRollTracking(), v5, 0);
}

{
  v24 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(*v4 + 120);
  (v5)(v21);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v21[0] = 0;
  v21[1] = v7;
  v22 = 0;
  (*(*v4 + 128))(v21);
  v9 = v4[2];
  v8 = v4[3];
  ObjectType = swift_getObjectType();
  v5();
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v11;
  *(v0 + 56) = v12;
  v13 = v4[6];
  v14 = v4[7];
  v15 = v4[5];
  *(v0 + 64) = v4[4];
  *(v0 + 72) = v15;
  v16 = *(v8 + 136);
  v23 = v8 + 136;

  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 120) = v18;
  *v18 = v0;
  v18[1] = MLS.KeyUpdateTracker.resetKeyRollTracking();

  return v20(v0 + 40, v13, v14, v0 + 64, ObjectType, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  v2[16] = v0;

  v5 = v2[9];

  if (v0)
  {
    v6 = v2[14];

    return MEMORY[0x2822009F8](_s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY3_, v6, 0);
  }

  else
  {
    v7 = v2[13];

    v8 = *(v4 + 8);

    return v8();
  }
}

void *MLS.KeyUpdateTracker.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  return v0;
}

uint64_t MLS.KeyUpdateTracker.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);

  return swift_deallocClassInstance();
}

double sub_2651AE97C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 120))(v5);
  result = *&v5[1];
  v4 = v6;
  *a2 = v5[0];
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_2651AE9E8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v7 = v3;
  return (*(*v4 + 128))(v6);
}

uint64_t dispatch thunk of MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 144);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:)(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1);
}

uint64_t dispatch thunk of MLS.KeyUpdateTracker.resetKeyRollTracking()()
{
  v2 = *(*v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x2821FBCE0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC150]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC1D0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD9A8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA20]();
}

{
  return MEMORY[0x2821FDA58]();
}

{
  return MEMORY[0x2821FDA60]();
}

{
  return MEMORY[0x2821FDA68]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAE0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB60]();
}

{
  return MEMORY[0x2821FDB98]();
}

{
  return MEMORY[0x2821FDBA0]();
}

{
  return MEMORY[0x2821FDBA8]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE60]();
}

{
  return MEMORY[0x2821FDE68]();
}