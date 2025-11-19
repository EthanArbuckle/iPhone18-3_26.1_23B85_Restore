void MLS.Group.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v12 = v0[10];
  v13 = v0[9];
  v11 = v0[11];
  v10 = v0[12];
  String.hash(into:)();
  MEMORY[0x266754E10](v3);
  Hasher._combine(_:)(v4);
  MEMORY[0x266754E10](v5);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  if (v10 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int MLS.Group.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 6);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[8];
  v14 = v0[9];
  v12 = v0[7];
  v13 = v0[10];
  v11 = v0[11];
  v9 = v0[12];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754E10](v3);
  Hasher._combine(_:)(v4);
  MEMORY[0x266754E10](v5);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  if (v9 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t MLS.Group.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO5GroupV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO5GroupV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v42) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  LOBYTE(v35) = 1;
  lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v42;
  v57 = v43;
  v32 = v44;
  LOBYTE(v35) = 2;
  v34 = lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v42;
  v31 = v43;
  LOBYTE(v35) = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v42;
  v29 = v43;
  LOBYTE(v35) = 4;
  v27 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v42;
  v26 = v43;
  v58 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v14 = v56;
  v34 = v55;
  *&v35 = v11;
  *(&v35 + 1) = v13;
  *&v36 = v33;
  DWORD2(v36) = v57;
  *&v37 = v32;
  v15 = v30;
  *(&v37 + 1) = v30;
  v16 = v31;
  *&v38 = v31;
  v17 = v28;
  *(&v38 + 1) = v28;
  *&v39 = v29;
  *(&v39 + 1) = v25;
  *&v40 = v26;
  *(&v40 + 1) = v55;
  v41 = v56;
  v18 = v36;
  *a2 = v35;
  *(a2 + 16) = v18;
  v19 = v37;
  v20 = v38;
  v21 = v39;
  v22 = v40;
  *(a2 + 96) = v14;
  *(a2 + 64) = v21;
  *(a2 + 80) = v22;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  outlined init with copy of MLS.Group(&v35, &v42);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v42 = v11;
  v43 = v13;
  v44 = v33;
  v45 = v57;
  v46 = v32;
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v50 = v29;
  v51 = v25;
  v52 = v26;
  v53 = v34;
  v54 = v14;
  return outlined destroy of MLS.Group(&v42);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.Group()
{
  Hasher.init(_seed:)();
  MLS.Group.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.Group()
{
  Hasher.init(_seed:)();
  MLS.Group.hash(into:)();
  return Hasher._finalize()();
}

uint64_t MLS.GroupDetails.groupClientContextBlob.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.GroupDetails.init(groupClientContextBlob:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.GroupDetails.description.getter()
{
  v1 = v0[1];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v4 = *v0;
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    outlined copy of Data._Representation(*v0, v1);
    _StringGuts.grow(_:)(26);

    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = [(objc_class *)isa description];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    MEMORY[0x2667545A0](v7, v9);

    outlined consume of Data?(v4, v1);
    v2 = 0xD000000000000018;
    v3 = 0x80000002651E9B50;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v11, "GroupDetails(");
  MEMORY[0x2667545A0](v2, v3);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return v11[0];
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupDetails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupDetails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12GroupDetailsV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12GroupDetailsV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data?(v8, v9);
  lazy protocol witness table accessor for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  v13 = v9;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

void MLS.GroupDetails.hash(into:)()
{
  if (v0[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int MLS.GroupDetails.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t MLS.GroupDetails.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12GroupDetailsV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12GroupDetailsV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.GroupDetails()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MLS.GroupDetails()
{
  if (v0[1] >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.GroupDetails()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL static MLS.GroupVersion.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *(a1 + 16) < *(a2 + 16);
  }

  else
  {
    return v5;
  }
}

unint64_t MLS.GroupVersion.init(era:epoch:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = result;
    *(a3 + 16) = a2;
  }

  return result;
}

void MLS.GroupVersion.nextEra.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, 1);
  v4 = (v2 + 1);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = v4;
    *(a1 + 16) = 1;
  }
}

uint64_t MLS.GroupVersion.description.getter()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 8);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](46, 0xE100000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v2);

  return v5;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.GroupVersion.CodingKeys()
{
  v1 = 0x6172456C6C616D73;
  if (*v0 != 1)
  {
    v1 = 0x68636F7065;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6386277;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupVersion.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.GroupVersion.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12GroupVersionV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12GroupVersionV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v13 = *(v1 + 2);
  v12[1] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t MLS.GroupVersion.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x266754E10](*v0);
  Hasher._combine(_:)(v1);
  return MEMORY[0x266754E10](v2);
}

Swift::Int MLS.GroupVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x266754E10](v1);
  Hasher._combine(_:)(v2);
  MEMORY[0x266754E10](v3);
  return Hasher._finalize()();
}

uint64_t MLS.GroupVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12GroupVersionV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12GroupVersionV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = 2;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v15;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.GroupVersion()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x266754E10](v1);
  Hasher._combine(_:)(v2);
  MEMORY[0x266754E10](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.GroupVersion()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x266754E10](*v0);
  Hasher._combine(_:)(v1);
  return MEMORY[0x266754E10](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.GroupVersion()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x266754E10](v1);
  Hasher._combine(_:)(v2);
  MEMORY[0x266754E10](v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance MLS.GroupVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *(a1 + 16) < *(a2 + 16);
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance MLS.GroupVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v3 == v2;
  v5 = v3 >= v2;
  if (v4)
  {
    return *(a2 + 16) >= *(a1 + 16);
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance MLS.GroupVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    return *(a1 + 16) >= *(a2 + 16);
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance MLS.GroupVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    return *(a2 + 16) < *(a1 + 16);
  }

  else
  {
    return v5;
  }
}

uint64_t (*MLS.GroupCreationContext_v2.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t MLS.GroupCreationContext_v2.init(identifier:clientContext:groupClientContextBlob:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v26 = a4;
  v27 = a5;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a6;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v18;
    (*(v13 + 8))(v16, v12);
  }

  *a7 = a1;
  a7[1] = a2;
  v19 = type metadata accessor for MLS.GroupCreationContext_v2();
  v20 = v19[9];
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a7 + v20, a3, v21);
  v23 = (a7 + v19[11]);
  v24 = v27;
  *v23 = v26;
  v23[1] = v24;
  if (!v17)
  {
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v22 + 8))(a3, v21);
  *(a7 + v19[10]) = v17;
  return result;
}

uint64_t MLS.GroupCreationContext_v2.dataContext.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = *(v2 + 1);
  v27 = *v2;
  (*(v7 + 16))(&v26 - v9, &v2[*(a1 + 36)], v6);
  v12 = *(v5 - 8);
  if ((*(v12 + 48))(v10, 1, v5) == 1)
  {
    v13 = *(v7 + 8);

    v13(v10, v6);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v26 = v2;
    v16 = *(a1 + 24);

    v17 = v16;
    v18 = v28;
    v19 = MLS.ClientContext.dataRepresentation.getter(v5, v17);
    if (v18)
    {

      return (*(v12 + 8))(v10, v5);
    }

    v14 = v19;
    v15 = v20;
    v28 = 0;
    (*(v12 + 8))(v10, v5);
    v2 = v26;
  }

  v22 = &v2[*(a1 + 44)];
  v23 = *v22;
  v24 = v22[1];
  v25 = *&v2[*(a1 + 40)];
  *a2 = v27;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v25;
  a2[5] = v23;
  a2[6] = v24;
  outlined copy of Data?(v23, v24);
}

uint64_t MLS.GroupCreationContext_v2.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002651E96B0 == a2)
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

unint64_t MLS.GroupCreationContext_v2.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F4363697274656DLL;
  if (a1 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (a1)
  {
    v1 = 0x6F43746E65696C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.GroupCreationContext_v2<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.GroupCreationContext_v2.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupCreationContext_v2<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.GroupCreationContext_v2.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupCreationContext_v2<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupCreationContext_v2<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupCreationContext_v2.encode(to:)(void *a1, uint64_t a2)
{
  v24 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v23[0] = *(a2 + 24);
  v23[1] = v5;
  type metadata accessor for MLS.GroupCreationContext_v2.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v6;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v26) = 0;
  v15 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v15)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v17 = v7;
  v18 = v24;
  v19 = *(v24 + 36);
  LOBYTE(v26) = 1;
  v20 = *(v23[0] + 16);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v26 = *(v3 + *(v18 + 40));
  v28 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v21 = (v3 + *(v18 + 44));
  v22 = v21[1];
  v26 = *v21;
  v27 = v22;
  v28 = 3;
  outlined copy of Data?(v26, v22);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v26, v27);
  return (*(v17 + 8))(v10, v12);
}

uint64_t MLS.GroupCreationContext_v2.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27 = a3;
  v30 = type metadata accessor for Optional();
  v28 = *(v30 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - v6;
  type metadata accessor for MLS.GroupCreationContext_v2.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedDecodingContainer();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v31 = a2;
  v11 = type metadata accessor for MLS.GroupCreationContext_v2();
  v26 = *(v11 - 1);
  v12 = *(v26 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v26 - v13);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v10;
  v16 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = v29;
  v18 = a1;
  v19 = v30;
  v20 = v31;
  LOBYTE(v36) = 0;
  v21 = v32;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v22;
  v35 = v22;
  LOBYTE(v36) = 1;
  v23 = *(v20 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v28 + 32))(v14 + v11[9], v17, v19);
  v37 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v11[10]) = v36;
  v37 = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v33 + 8))(v21, v34);
  *(v14 + v11[11]) = v36;
  v24 = v26;
  (*(v26 + 16))(v27, v14, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return (*(v24 + 8))(v14, v11);
}

uint64_t (*MLS.GroupCreationContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t MLS.GroupCreationContext_v2.groupClientContextBlob.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 44);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.GroupCreationContext.init(identifier:clientContext:metricCollector:groupClientContextBlob:ratchetTree:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v20;
    (*(v15 + 8))(v18, v14);
  }

  *a9 = a1;
  a9[1] = a2;
  v21 = type metadata accessor for MLS.GroupCreationContext();
  v22 = v21[9];
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  (*(v24 + 16))(a9 + v22, a3, v23);
  if (!v19)
  {
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v24 + 8))(a3, v23);
  *(a9 + v21[10]) = v19;
  v26 = (a9 + v21[11]);
  v27 = v31;
  *v26 = v30;
  v26[1] = v27;
  v28 = (a9 + v21[12]);
  v29 = v33;
  *v28 = v32;
  v28[1] = v29;
  return result;
}

uint64_t MLS.GroupCreationContext_v2.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  MEMORY[0x2667545A0](0xD000000000000021, 0x80000002651E8C70);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v8, &v1[*(a1 + 36)], v4);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3);
  (*(v5 + 8))(v8, v4);
  if (v9 == 1)
  {
    v10 = 20302;
  }

  else
  {
    v10 = 5457241;
  }

  if (v9 == 1)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v10, v11);

  return v13[0];
}

uint64_t MLS.GroupCreationContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002651E96B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t MLS.GroupCreationContext.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F4363697274656DLL;
  v3 = 0xD000000000000016;
  if (a1 != 3)
  {
    v3 = 0x5474656863746172;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6F43746E65696C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.GroupCreationContext<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.GroupCreationContext.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupCreationContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.GroupCreationContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupCreationContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupCreationContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupCreationContext.encode(to:)(void *a1, uint64_t a2)
{
  v24 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v23[0] = *(a2 + 24);
  v23[1] = v5;
  type metadata accessor for MLS.GroupCreationContext.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v26) = 0;
  v14 = v25;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = v24;
    v16 = v24[9];
    LOBYTE(v26) = 1;
    v17 = *(v23[0] + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = *(v3 + v15[10]);
    v28 = 2;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v18 = (v3 + v15[11]);
    v19 = v18[1];
    v26 = *v18;
    v27 = v19;
    v28 = 3;
    outlined copy of Data?(v26, v19);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v26, v27);
    v20 = (v3 + v15[12]);
    v21 = v20[1];
    v26 = *v20;
    v27 = v21;
    v28 = 4;
    outlined copy of Data?(v26, v21);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v26, v27);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t MLS.GroupCreationContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v28 = a3;
  v33 = type metadata accessor for Optional();
  v29 = *(v33 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = &v25 - v6;
  type metadata accessor for MLS.GroupCreationContext.CodingKeys();
  swift_getWitnessTable();
  v35 = type metadata accessor for KeyedDecodingContainer();
  v30 = *(v35 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = &v25 - v8;
  v32 = a2;
  v10 = type metadata accessor for MLS.GroupCreationContext();
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v25 - v12);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = v9;
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v31;
  v17 = v32;
  v18 = v30;
  v26 = v10;
  v36 = a1;
  v19 = v33;
  LOBYTE(v37) = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v20;
  v25 = v20;
  LOBYTE(v37) = 1;
  v21 = *(v17 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v26;
  (*(v29 + 32))(v13 + v26[9], v16, v19);
  v38 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v13 + v22[10]) = v37;
  v38 = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v13 + v22[11]) = v37;
  v38 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 8))(v34, v35);
  *(v13 + v22[12]) = v37;
  v23 = v27;
  (*(v27 + 16))(v28, v13, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return (*(v23 + 8))(v13, v22);
}

uint64_t (*MLS.GroupCreationProcessedContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_265024084(char a1)
{
  if (!a1)
  {
    return 0x6F43746E65696C63;
  }

  if (a1 == 1)
  {
    return 0x70756F7267;
  }

  return 0x6F4363697274656DLL;
}

uint64_t _s15SecureMessaging3MLSO31IncomingMessageProcessedContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_Gs0H3KeyAAsAJP11stringValueSSvgTW_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_265024084(*v1);
}

uint64_t _s15SecureMessaging3MLSO31IncomingMessageProcessedContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_Gs0H3KeyAAsAJP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.GroupCreationProcessedContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupCreationProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupCreationProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupFetchContext.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t MLS.GroupFetchContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(33);

  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupFetchContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupFetchContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupFetchContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupFetchContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.GroupFetchContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.GroupFetchContext(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupFetchContext()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(33);

  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t MLS.GroupMembersContext.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MLS.GroupMembersContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  _StringGuts.grow(_:)(62);
  MEMORY[0x2667545A0](0xD000000000000020, 0x80000002651E89D0);
  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](0xD000000000000019, 0x80000002651E8A00);
  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2667545A0](v4, v5);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.GroupMembersContext.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupMembersContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002651E9B70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupMembersContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupMembersContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupMembersContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19GroupMembersContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19GroupMembersContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v14 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v11 = v13[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.GroupMembersContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19GroupMembersContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19GroupMembersContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MLS.GroupDeletionContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  MEMORY[0x2667545A0](0xD000000000000021, 0x80000002651E8C40);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v8, &v1[*(a1 + 36)], v4);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3);
  (*(v5 + 8))(v8, v4);
  if (v9 == 1)
  {
    v10 = 20302;
  }

  else
  {
    v10 = 5457241;
  }

  if (v9 == 1)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v10, v11);

  return v13[0];
}

uint64_t MLS.GroupDeletionContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t MLS.GroupDeletionContext.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F43746E65696C63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

BOOL _s15SecureMessaging3MLSO27IncomingErrorMessageContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_GSQAASQ2eeoiySbx_xtFZTW_0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int _s15SecureMessaging3MLSO27IncomingErrorMessageContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_GSHAASH9hashValueSivgTW_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.hashValue.getter(*v1);
}

uint64_t _s15SecureMessaging3MLSO27IncomingErrorMessageContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_GSHAASH4hash4intoys6HasherVz_tFTW_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.hash(into:)(a1, *v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.GroupDeletionContext<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.GroupDeletionContext.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupDeletionContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.GroupDeletionContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.GroupDeletionContext<A>.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = specialized MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupDeletionContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupDeletionContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupDeletionContext.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v18[0] = *(a2 + 24);
  v18[1] = v4;
  type metadata accessor for MLS.GroupDeletionContext.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v18[2];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v11;
  v13 = v11[1];
  v20 = 0;
  v14 = v18[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = *(a2 + 36);
    v19 = 1;
    v16 = *(v18[0] + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MLS.GroupDeletionContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = type metadata accessor for Optional();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = v26 - v7;
  type metadata accessor for MLS.GroupDeletionContext.CodingKeys();
  swift_getWitnessTable();
  v35 = type metadata accessor for KeyedDecodingContainer();
  v32 = *(v35 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v10 = v26 - v9;
  v34 = a2;
  v11 = type metadata accessor for MLS.GroupDeletionContext();
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v26 - v13);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v36 = a1;
  v27 = v11;
  v17 = v32;
  v18 = v33;
  v19 = v34;
  v38 = 0;
  v20 = v14;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v21;
  v26[1] = v21;
  v37 = 1;
  v22 = *(v19 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v17 + 8))(v10, v35);
  v23 = v27;
  (*(v29 + 32))(v14 + *(v27 + 36), v18, v30);
  v24 = v28;
  (*(v28 + 16))(v31, v20, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return (*(v24 + 8))(v20, v23);
}

uint64_t MLS.GroupDeletionProcessedContext.init(clientContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MLS.GroupDeletionProcessedContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupDeletionProcessedContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.GroupDeletionProcessedContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupDeletionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupDeletionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupDeletionProcessedContext.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v12 = *(a2 + 16);
  type metadata accessor for MLS.GroupDeletionProcessedContext.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v3 + 16);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t MLS.GroupDeletionProcessedContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v22 = type metadata accessor for Optional();
  v26 = *(v22 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v21 - v6;
  type metadata accessor for MLS.GroupDeletionProcessedContext.CodingKeys();
  swift_getWitnessTable();
  v28 = type metadata accessor for KeyedDecodingContainer();
  v24 = *(v28 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = &v21 - v8;
  v25 = a2;
  v10 = type metadata accessor for MLS.GroupDeletionProcessedContext();
  v21 = *(v10 - 8);
  v11 = *(v21 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v29 = v10;
    v16 = v24;
    v17 = v26;
    v18 = v27;
    v19 = *(v25 + 8);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v16 + 8))(v9, v28);
    (*(v17 + 32))(v13, v18, v22);
    (*(v21 + 32))(v23, v13, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t (*MLS.GroupOperationContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t MLS.GroupOperationContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  MEMORY[0x2667545A0](0xD000000000000022, 0x80000002651E8C10);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v8, &v1[*(a1 + 36)], v4);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3);
  (*(v5 + 8))(v8, v4);
  if (v9 == 1)
  {
    v10 = 20302;
  }

  else
  {
    v10 = 5457241;
  }

  if (v9 == 1)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v10, v11);

  return v13[0];
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupOperationContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupOperationContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t (*MLS.GroupOperationProcessedContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t (*MLS.GroupOperationProcessedContext.eventSenderTask.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupOperationProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupOperationProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.AdditionalAuthenticatedData.clientAAD.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  outlined copy of Data._Representation(v2, v3);

  return outlined copy of Data?(v6, v7);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.AdditionalAuthenticatedData.ClientAAD.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  v13 = *v1;
  v21 = v1[1];
  v20 = *(v1 + 4);
  v19 = *(v1 + 3);
  v18 = v1[5];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v24 = v13;
  v25 = v21;
  v26 = v20;
  v27 = v19;
  v28 = v18;
  lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData();
  v15 = v22;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v23 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

uint64_t MLS.AdditionalAuthenticatedData.ClientAAD.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_6;
  }

  v29 = a1;
  v13 = v40;
  v14 = v31;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = (2 * *(v15 + 16)) | 1;
  v36 = v15;
  v37 = v15 + 32;
  v38 = 0;
  v39 = v16;
  v17 = v11;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v38 != v39 >> 1)
  {
    v18 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v8;
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v21 = &type metadata for MLS.AdditionalAuthenticatedData.ClientAAD;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v21, *MEMORY[0x277D84160], v18);
    swift_willThrow();
    (*(v14 + 8))(v17, v19);
    swift_unknownObjectRelease();
    a1 = v29;
LABEL_6:
    v26 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v7, v4);
  (*(v14 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v24 = v33;
  v25 = v35;
  v26 = v29;
  v27 = v30;
  *v30 = v32;
  *(v27 + 4) = v24;
  *(v27 + 24) = v34;
  *(v27 + 5) = v25;
  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t MLS.AdditionalAuthenticatedData.description.getter()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 24);
  v5 = *(v0 + 5);
  return MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
}

BOOL static MLS.AdditionalAuthenticatedData.ClientAAD.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v11 = *a1;
  v12 = v2;
  v13 = *(a1 + 24);
  v14 = v3;
  v7 = *a2;
  v8 = v4;
  v9 = *(a2 + 24);
  v10 = v5;
  return specialized static MLS.EncryptedRCS.AdditionalAuthenticatedData.== infix(_:_:)(&v11, &v7);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.AdditionalAuthenticatedData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4141746E65696C63 && a2 == 0xE900000000000044)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AdditionalAuthenticatedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AdditionalAuthenticatedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.AdditionalAuthenticatedData.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v24 = *(v17 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v17);
  v5 = &v15 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v16 = *(v1 + 16);
  v8 = *(v1 + 32);
  v15 = *(v1 + 24);
  v9 = *(v1 + 40);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v6, v7);
  outlined copy of Data?(v8, v9);
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v6;
  v19 = v7;
  v20 = v16;
  v21 = v15;
  v22 = v8;
  v23 = v9;
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD();
  v11 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12 = v22;
  v13 = v23;
  outlined consume of Data._Representation(v18, v19);
  outlined consume of Data?(v12, v13);
  return (*(v24 + 8))(v5, v11);
}

__n128 MLS.AdditionalAuthenticatedData.init(clientAAD:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v3;
  return result;
}

uint64_t MLS.AdditionalAuthenticatedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v11 = v16;
    v12 = v18;
    v13 = v17;
    *a2 = v15;
    *(a2 + 16) = v11;
    *(a2 + 24) = v13;
    *(a2 + 40) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AdditionalAuthenticatedData()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  v4 = *(v0 + 24);
  v5 = *(v0 + 5);
  return MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
}

uint64_t MLS.EncryptionContext.additionalAuthenticatedData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  return outlined copy of MLS.AdditionalAuthenticatedData?(v4, v5, v6, v7, v8, v9);
}

uint64_t MLS.EncryptionContext.destinationMember.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

__n128 MLS.EncryptionContext.originalGroupVersion.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  return result;
}

uint64_t MLS.EncryptionContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 68);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*MLS.EncryptionContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t MLS.EncryptionContext.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v58 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v47 - v6;
  v7 = *(v3 + 16);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - v12;
  v14 = *(v7 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v2 + *(v3 + 56));
  v18 = v17[1];
  if (v18 >> 60 == 15)
  {
    v54 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    v50 = v3;
    v51 = v2;
    v21 = v17[4];
    v20 = v17[5];
    v49 = v14;
    v23 = v17[2];
    v22 = v17[3];
    v53 = v4;
    v24 = *v17;
    v66 = 0x203A646161202CLL;
    v67 = 0xE700000000000000;
    v59 = v24;
    v60 = v18;
    v61 = v23;
    v62 = v22;
    v63 = v21;
    v55 = v20;
    v64 = v20;
    outlined copy of MLS.AdditionalAuthenticatedData?(v24, v18, v23, v22, v21, v20);
    v48 = v7;
    v25 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
    MEMORY[0x2667545A0](v25);
    v7 = v48;

    v26 = v24;
    v4 = v53;
    v27 = v23;
    v28 = v22;
    v14 = v49;
    v3 = v50;
    v29 = v21;
    v2 = v51;
    outlined consume of MLS.AdditionalAuthenticatedData?(v26, v18, v27, v28, v29, v55);
    v19 = v67;
    v54 = v66;
  }

  v55 = v19;
  (*(v9 + 16))(v13, v2 + *(v3 + 60), v8);
  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    (*(v9 + 8))(v13, v8);
    v53 = 0;
    v30 = 0xE000000000000000;
  }

  else
  {
    v31 = v52;
    (*(v14 + 32))(v52, v13, v7);
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8BD0);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v30 = v60;
    v53 = v59;
    (*(v14 + 8))(v31, v7);
  }

  v32 = v2 + *(v3 + 64);
  if (v32[24])
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  else
  {
    v35 = v2;
    v36 = v3;
    v38 = *(v32 + 1);
    v37 = *(v32 + 2);
    v59 = 0;
    v60 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8BD0);
    LODWORD(v65) = v38;
    v3 = v36;
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v39;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v65 = v37;
    v2 = v35;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v40);

    MEMORY[0x2667545A0](v66, v67);

    v33 = v59;
    v34 = v60;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  MEMORY[0x2667545A0](0xD00000000000001ELL, 0x80000002651E8BB0);
  MEMORY[0x2667545A0](*v2, v2[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  v42 = v56;
  v41 = v57;
  (*(v57 + 16))(v56, v2 + *(v3 + 52), v4);
  v43 = (*(*(v58 - 8) + 48))(v42, 1);
  (*(v41 + 8))(v42, v4);
  if (v43 == 1)
  {
    v44 = 20302;
  }

  else
  {
    v44 = 5457241;
  }

  if (v43 == 1)
  {
    v45 = 0xE200000000000000;
  }

  else
  {
    v45 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v44, v45);

  MEMORY[0x2667545A0](v54, v55);

  MEMORY[0x2667545A0](v53, v30);

  MEMORY[0x2667545A0](v33, v34);

  return v59;
}

uint64_t MLS.EncryptionContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002651E9B90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9BB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002651E9BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t MLS.EncryptionContext.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000014;
  if (a1 != 4)
  {
    v2 = 0x6F4363697274656DLL;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0xD00000000000001BLL;
  if (a1 == 1)
  {
    v3 = 0x6F43746E65696C63;
  }

  if (a1)
  {
    v1 = v3;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptionContext<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptionContext<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.EncryptionContext.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v32 = *(a2 + 16);
  v33 = v6;
  *&v38 = v32;
  *(&v38 + 1) = v4;
  v34 = v5;
  v35 = v4;
  v39 = v6;
  v40 = v5;
  type metadata accessor for MLS.EncryptionContext.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v36;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v38) = 0;
  v16 = v37;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    v17 = *(a2 + 52);
    LOBYTE(v38) = 1;
    v18 = v33;
    v19 = *(v34 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = (v13 + *(a2 + 56));
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v25 = v20[5];
    *&v38 = *v20;
    *(&v38 + 1) = v21;
    v39 = v22;
    v40 = v23;
    v41 = v24;
    v42 = v25;
    v43 = 2;
    outlined copy of MLS.AdditionalAuthenticatedData?(v38, v21, v22, v23, v24, v25);
    lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of MLS.AdditionalAuthenticatedData?(v38, *(&v38 + 1), v39, v40, v41, v42);
    v26 = *(a2 + 60);
    LOBYTE(v38) = 3;
    v27 = *(v18 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28 = v13 + *(a2 + 64);
    v29 = *(v28 + 2);
    v30 = v28[24];
    v38 = *v28;
    v39 = v29;
    LOBYTE(v40) = v30;
    v43 = 4;
    lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v38 = *(v13 + *(a2 + 68));
    v43 = 5;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t MLS.EncryptionContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a6;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v45 = v11;
  v46 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v43 = &v40 - v14;
  v47 = type metadata accessor for Optional();
  v49 = *(v47 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v40 - v16;
  *&v56 = a2;
  *(&v56 + 1) = a3;
  *&v57 = a4;
  *(&v57 + 1) = a5;
  type metadata accessor for MLS.EncryptionContext.CodingKeys();
  swift_getWitnessTable();
  v54 = type metadata accessor for KeyedDecodingContainer();
  v52 = *(v54 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v19 = &v40 - v18;
  *&v56 = a2;
  *(&v56 + 1) = a3;
  v50 = a3;
  v51 = a5;
  v44 = a4;
  *&v57 = a4;
  *(&v57 + 1) = a5;
  v20 = type metadata accessor for MLS.EncryptionContext();
  v41 = *(v20 - 1);
  v21 = *(v41 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v40 - v22);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v53 = v19;
  v25 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v51;
  v55 = a2;
  v27 = v48;
  v28 = v49;
  LOBYTE(v56) = 0;
  *v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v23[1] = v29;
  LOBYTE(v56) = 1;
  v30 = *(v26 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v28 + 32))(v23 + v20[13], v27, v47);
  v59 = 2;
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v31 = (v23 + v20[14]);
  v32 = v57;
  *v31 = v56;
  v31[1] = v32;
  v31[2] = v58;
  LOBYTE(v56) = 3;
  v33 = v43;
  v34 = *(v44 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v46 + 32))(v23 + v20[15], v33, v45);
  v59 = 4;
  lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v57;
  v36 = BYTE8(v57);
  v37 = v23 + v20[16];
  *v37 = v56;
  *(v37 + 2) = v35;
  v37[24] = v36;
  v59 = 5;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v52 + 8))(v53, v54);
  *(v23 + v20[17]) = v56;
  v38 = v41;
  (*(v41 + 16))(v42, v23, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v38 + 8))(v23, v20);
}

uint64_t (*MLS.EncryptionProcessedContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t (*MLS.EncryptionProcessedContext.eventSenderTask.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_26502878C(char a1)
{
  if (!a1)
  {
    return 0x6F43746E65696C63;
  }

  if (a1 == 1)
  {
    return 0x6F4363697274656DLL;
  }

  return 0x6E6553746E657665;
}

uint64_t _s15SecureMessaging3MLSO30GroupOperationProcessedContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_Gs0H3KeyAAsAJP11stringValueSSvgTW_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_26502878C(*v1);
}

uint64_t _s15SecureMessaging3MLSO30GroupOperationProcessedContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_Gs0H3KeyAAsAJP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.GroupOperationProcessedContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.SigningInput.clientSigningInput.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with take of MLS.SigningInput.ClientSigningInput(v1, v5);
  outlined init with take of MLS.SigningInput.ClientSigningInput(v5, a1);
  return outlined init with copy of MLS.SigningInput.ClientSigningInput(v5, &v4);
}

BOOL static MLS.SigningInput.ClientSigningInput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v15 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  if ((specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v22 = v2;
  v23 = v3;
  v24 = v4;
  v25 = v15;
  v26 = v5;
  v27 = v14;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v2, v3, v4, v15, v5, v14, outlined copy of Data._Representation, outlined copy of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v6, v7, v8, v9, v10, v11, outlined copy of Data._Representation, outlined copy of Data?);
  v12 = specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(&v22, &v16);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v16, v17, v18, v19, v20, v21, outlined consume of Data._Representation, outlined consume of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v22, v23, v24, v25, v26, v27, outlined consume of Data._Representation, outlined consume of Data?);
  return v12;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574707972636E65 && a2 == 0xEC00000053435264)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningInput.ClientSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningInput.ClientSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SigningInput.ClientSigningInput.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19[-v12];
  v21 = v2[2];
  v14 = *(v2 + 6);
  v20 = *(v2 + 14);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v16 = v2[1];
  v24 = *v2;
  v25 = v16;
  v26 = v21;
  v27 = v14;
  v28 = v20;
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput();
  v17 = v22;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v23 + 8))(v8, v17);
  return (*(v10 + 8))(v13, v9);
}

uint64_t MLS.SigningInput.ClientSigningInput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_6;
  }

  v25 = a1;
  v13 = v35;
  v14 = v27;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = (2 * *(v15 + 16)) | 1;
  v31 = v15;
  v32 = v15 + 32;
  v33 = 0;
  v34 = v16;
  v17 = v11;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v33 != v34 >> 1)
  {
    v18 = type metadata accessor for DecodingError();
    swift_allocError();
    v20 = v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v20 = &type metadata for MLS.SigningInput.ClientSigningInput;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84160], v18);
    swift_willThrow();
    (*(v14 + 8))(v17, v8);
    swift_unknownObjectRelease();
    a1 = v25;
LABEL_6:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v7, v4);
  (*(v14 + 8))(v11, v8);
  swift_unknownObjectRelease();
  v28[0] = *&v29[5];
  v28[1] = *&v29[7];
  *v29 = v30[0];
  *(&v29[1] + 4) = *(v30 + 12);
  outlined init with take of MLS.SigningInput.ClientSigningInput(v28, v26);
  v23 = v25;
  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

unint64_t MLS.SigningInput.description.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = (*(v0 + 32) >> 60) & 3;
  if (v6)
  {
    v8 = *(v0 + 24);
    if (v6 == 1)
    {
      v11 = *(v0 + 40);
      v13 = *(v0 + 48);
      return MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
    }

    else
    {
      return MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
    }
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = *(v0 + 40);
    v14 = *(v0 + 48);
    return MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
  }
}

BOOL static MLS.SigningInput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v15 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  if (specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v22 = v2;
    v23 = v3;
    v24 = v4;
    v25 = v15;
    v26 = v5;
    v27 = v14;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v2, v3, v4, v15, v5, v14, outlined copy of Data._Representation, outlined copy of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v6, v7, v8, v9, v10, v11, outlined copy of Data._Representation, outlined copy of Data?);
    v12 = specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(&v22, &v16);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v16, v17, v18, v19, v20, v21, outlined consume of Data._Representation, outlined consume of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v22, v23, v24, v25, v26, v27, outlined consume of Data._Representation, outlined consume of Data?);
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.SigningInput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000002651E9BF0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SigningInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  outlined init with take of MLS.SigningInput.ClientSigningInput(v1, v12);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of MLS.SigningInput.ClientSigningInput(v12, v11);
  lazy protocol witness table accessor for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with take of MLS.SigningInput.ClientSigningInput(v12, v11);
  lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined init with take of MLS.SigningInput.ClientSigningInput(v11, v10);
  outlined destroy of MLS.SigningInput.ClientSigningInput(v10);
  return (*(v4 + 8))(v7, v3);
}

double MLS.SigningInput.init(clientSigningInput:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  outlined init with take of MLS.SigningInput.ClientSigningInput(a1, v5);
  outlined init with take of MLS.SigningInput.ClientSigningInput(v5, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  a2[2] = v7[0];
  result = *(v7 + 12);
  *(a2 + 44) = *(v7 + 12);
  return result;
}

uint64_t MLS.SigningInput.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    outlined init with take of MLS.SigningInput.ClientSigningInput(v17, v14);
    outlined init with take of MLS.SigningInput.ClientSigningInput(v14, v15);
    v11 = v15[1];
    *a2 = v15[0];
    a2[1] = v11;
    a2[2] = v16[0];
    *(a2 + 44) = *(v16 + 12);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance MLS.SigningInput.ClientSigningInput(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = *(a1 + 32);
  v13 = v2;
  v14 = v3;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v9[2] = *(a2 + 32);
  v10 = v4;
  v11 = v5;
  return specialized static MLS.EncryptedRCS.SigningInput.== infix(_:_:)(v12, v9);
}

uint64_t MLS.SigningContext.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MLS.SigningContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*MLS.SigningContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

unint64_t MLS.SigningContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);

  v13 = 0xD00000000000001BLL;
  v14 = 0x80000002651E8B60;
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v8, &v1[*(a1 + 36)], v4);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3);
  (*(v5 + 8))(v8, v4);
  if (v9 == 1)
  {
    v10 = 20302;
  }

  else
  {
    v10 = 5457241;
  }

  if (v9 == 1)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v10, v11);

  return v13;
}

uint64_t MLS.GroupNameEncryptionContext.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x6F43746E65696C63;
  }

  return 0x6F4363697274656DLL;
}

uint64_t _s15SecureMessaging3MLSO21GroupOperationContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_Gs0G3KeyAAsAJP11stringValueSSvgTW_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.GroupNameEncryptionContext.CodingKeys.stringValue.getter(*v1);
}

uint64_t _s15SecureMessaging3MLSO21GroupOperationContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_Gs0G3KeyAAsAJP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.GroupNameEncryptionContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.SigningProcessedContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 36);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*MLS.SigningProcessedContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t MLS.SigningProcessedContext.eventSenderTask.getter(uint64_t a1)
{
  _s15SecureMessaging3MLSO30GroupOperationProcessedContextV15eventSenderTaskScTyyts5NeverOGSgvgTf4n_g_0(a1);
}

uint64_t MLS.SigningProcessedContext.eventSenderTask.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*MLS.SigningProcessedContext.eventSenderTask.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.EncryptionContext.clientContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t MLS.GroupNameEncryptionContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 56);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*MLS.GroupNameEncryptionContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t MLS.GroupNameEncryptionContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x2667545A0](0xD000000000000023, 0x80000002651E8B80);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v8, &v1[*(a1 + 52)], v4);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3);
  (*(v5 + 8))(v8, v4);
  if (v9 == 1)
  {
    v10 = 20302;
  }

  else
  {
    v10 = 5457241;
  }

  if (v9 == 1)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v10, v11);

  return v13[0];
}

uint64_t MLS.GroupNameEncryptionContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.EncryptionContext<A, B>.CodingKeys(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptionContext<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.EncryptionContext<A, B>.CodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupNameEncryptionContext<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupNameEncryptionContext<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupNameEncryptionContext.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v22 = *(a2 + 16);
  v18 = *(a2 + 24);
  v23 = v18;
  v19 = v4;
  v24 = v4;
  type metadata accessor for MLS.GroupNameEncryptionContext.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v20;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v22) = 0;
  v14 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = *(a2 + 52);
    LOBYTE(v22) = 1;
    v16 = *(v19 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v11 + *(a2 + 56));
    v25 = 2;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MLS.GroupNameEncryptionContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v11 = type metadata accessor for Optional();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v37 = v33 - v13;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a5;
  type metadata accessor for MLS.GroupNameEncryptionContext.CodingKeys();
  swift_getWitnessTable();
  v44 = type metadata accessor for KeyedDecodingContainer();
  v40 = *(v44 - 8);
  v14 = *(v40 + 64);
  MEMORY[0x28223BE20](v44);
  v16 = v33 - v15;
  v46 = a2;
  v47 = a3;
  v41 = a3;
  v42 = a5;
  v48 = a4;
  v49 = a5;
  v17 = type metadata accessor for MLS.GroupNameEncryptionContext();
  v35 = *(v17 - 8);
  v18 = *(v35 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (v33 - v19);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = v16;
  v22 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = v42;
  v45 = a1;
  v24 = v20;
  v25 = v40;
  LOBYTE(v46) = 0;
  *v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v24[1] = v26;
  v33[1] = v26;
  v34 = v24;
  LOBYTE(v46) = 1;
  v27 = *(v23 + 8);
  v28 = v37;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v38 + 32))(v34 + *(v17 + 52), v28, v39);
  v50 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  v29 = v43;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v29, v44);
  v31 = v34;
  v30 = v35;
  *(v34 + *(v17 + 56)) = v46;
  (*(v30 + 16))(v36, v31, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  return (*(v30 + 8))(v31, v17);
}

uint64_t (*MLS.GroupNameEncryptionProcessedContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t (*MLS.GroupNameEncryptionProcessedContext.eventSenderTask.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupNameEncryptionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupNameEncryptionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingMessageContext.expectedSignedData.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 12) = *(v3 + 44);
  v6 = *(v10 + 12);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 44) = v6;
  return outlined init with copy of MLS.OutgoingEventState?(v9, &v8, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
}

uint64_t MLS.IncomingMessageContext.expectedAdditionalAuthenticatedData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  return outlined copy of MLS.AdditionalAuthenticatedData?(v4, v5, v6, v7, v8, v9);
}

uint64_t MLS.GroupCreationContext.ratchetTree.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 48);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.IncomingMessageContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 52);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*MLS.IncomingMessageContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t MLS.IncomingMessageContext.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = &v1[*(v3 + 44)];
  v11 = v10[1];
  if (v11 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    v15 = v10[4];
    v14 = v10[5];
    v16 = v10[3];
    v29 = v3;
    v30 = v16;
    v17 = v10[2];
    v18 = *v10;
    v31 = 0;
    v32 = 0xE000000000000000;
    v28 = v6;
    v19 = v18;
    outlined copy of Data._Representation(v18, v11);
    v27 = v14;
    outlined copy of Data?(v15, v14);
    _StringGuts.grow(_:)(17);

    v37 = 0x746365707865202CLL;
    v38 = 0xEF203A4441416465;
    v31 = v19;
    v32 = v11;
    v33 = v17;
    v34 = v30;
    v35 = v15;
    v36 = v14;
    v20 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
    MEMORY[0x2667545A0](v20);

    v21 = v19;
    v22 = v17;
    v6 = v28;
    v3 = v29;
    outlined consume of MLS.AdditionalAuthenticatedData?(v21, v11, v22, v30, v15, v27);
    v12 = v37;
    v13 = v38;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  MEMORY[0x2667545A0](0xD000000000000023, 0x80000002651E8B30);
  MEMORY[0x2667545A0](*v2, *(v2 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v6 + 16))(v9, &v2[*(v3 + 36)], v5);
  v23 = (*(*(v4 - 8) + 48))(v9, 1, v4);
  (*(v6 + 8))(v9, v5);
  if (v23 == 1)
  {
    v24 = 20302;
  }

  else
  {
    v24 = 5457241;
  }

  if (v23 == 1)
  {
    v25 = 0xE200000000000000;
  }

  else
  {
    v25 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v24, v25);

  MEMORY[0x2667545A0](v12, v13);

  return v31;
}

uint64_t MLS.IncomingMessageContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000002651E9C30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002651E99D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t MLS.IncomingMessageContext.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000015;
  if (a1 != 4)
  {
    v2 = 0x6F4363697274656DLL;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000023;
  }

  v3 = 0x6F43746E65696C63;
  if (a1 != 1)
  {
    v3 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = v3;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.IncomingMessageContext<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.IncomingMessageContext.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingMessageContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.IncomingMessageContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.IncomingMessageContext<A>.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = specialized MLS.EncryptionContext.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingMessageContext.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v36 = a2;
  v35[1] = v6;
  v35[0] = v5;
  type metadata accessor for MLS.IncomingMessageContext.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v7;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v50[0]) = 0;
  v16 = v53;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v16)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v18 = v8;
  v19 = v36;
  v20 = v36[9];
  v52 = 1;
  v21 = *(v35[0] + 16);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v22 = (v3 + v19[10]);
  v23 = v22[1];
  v50[0] = *v22;
  v50[1] = v23;
  v25 = *v22;
  v24 = v22[1];
  *v51 = v22[2];
  *&v51[12] = *(v22 + 44);
  v47 = v25;
  v26 = v22[2];
  v48 = v24;
  v49[0] = v26;
  *(v49 + 12) = *(v22 + 44);
  v46 = 2;
  outlined init with copy of MLS.OutgoingEventState?(v50, v44, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v44[0] = v47;
  v44[1] = v48;
  *v45 = v49[0];
  *&v45[12] = *(v49 + 12);
  outlined destroy of NSObject?(v44, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v27 = (v3 + v19[11]);
  v28 = v27[1];
  v29 = v27[2];
  v30 = v27[3];
  v31 = v27[4];
  v32 = v27[5];
  v38 = *v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v37 = 3;
  outlined copy of MLS.AdditionalAuthenticatedData?(v38, v28, v29, v30, v31, v32);
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of MLS.AdditionalAuthenticatedData?(v38, v39, v40, v41, v42, v43);
  v33 = (v3 + v19[12]);
  v34 = v33[1];
  v38 = *v33;
  v39 = v34;
  v37 = 4;
  outlined copy of Data?(v38, v34);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v38, v39);
  v38 = *(v3 + v19[13]);
  v37 = 5;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v18 + 8))(v11, v13);
}

uint64_t MLS.IncomingMessageContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v40 = a3;
  v41 = type metadata accessor for Optional();
  v43 = *(v41 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v39 - v6;
  type metadata accessor for MLS.IncomingMessageContext.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedDecodingContainer();
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v44 = a2;
  v11 = type metadata accessor for MLS.IncomingMessageContext();
  v39 = *(v11 - 1);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v39 - v13);
  v16 = a1[3];
  v15 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  v18 = v43;
  v19 = v44;
  v20 = v42;
  LOBYTE(v52) = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v22;
  LOBYTE(v52) = 1;
  v23 = *(v19 + 8);
  v24 = v10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v25 = v41;
  (*(v18 + 32))(v14 + v11[9], v20, v41);
  v56 = 2;
  lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = (v14 + v11[10]);
  v27 = v53;
  *v26 = v52;
  v26[1] = v27;
  v26[2] = v54[0];
  *(v26 + 44) = *(v54 + 12);
  v55 = 3;
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v47 = 0;
  v28 = v45;
  v29 = (v14 + v11[11]);
  v30 = v50;
  *v29 = v49;
  v29[1] = v30;
  v29[2] = v51;
  v55 = 4;
  lazy protocol witness table accessor for type Data and conformance Data();
  v31 = v47;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v47 = v31;
  if (v31)
  {
    (*(v28 + 8))(v24, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v32 = 0;
  }

  else
  {
    *(v14 + v11[12]) = v49;
    v55 = 5;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
    v33 = v47;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v33;
    if (!v33)
    {
      (*(v28 + 8))(v24, v46);
      *(v14 + v11[13]) = v49;
      v38 = v39;
      (*(v39 + 16))(v40, v14, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      return (*(v38 + 8))(v14, v11);
    }

    (*(v28 + 8))(v24, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v32 = 1;
  }

  v34 = v14[1];

  (*(v18 + 8))(v14 + v11[9], v25);
  v36 = (v14 + v11[10]);
  v37 = v36[1];
  v52 = *v36;
  v53 = v37;
  v54[0] = v36[2];
  *(v54 + 12) = *(v36 + 44);
  outlined destroy of NSObject?(&v52, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v35 = v14 + v11[11];
  result = outlined consume of MLS.AdditionalAuthenticatedData?(*v35, *(v35 + 1), *(v35 + 2), *(v35 + 3), *(v35 + 4), *(v35 + 5));
  if (v32)
  {
    return outlined consume of Data?(*(v14 + v11[12]), *(v14 + v11[12] + 8));
  }

  return result;
}

uint64_t (*MLS.IncomingMessageProcessedContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t (*MLS.IncomingFailureToDecryptContext_v2.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.init(identifier:clientContext:signedData:expectedSignedData:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, unint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v33 = a4;
  v34 = a5;
  v35 = a3;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a6[1];
  v36 = *a6;
  v37 = v18;
  v38[0] = a6[2];
  *(v38 + 12) = *(a6 + 44);
  v19 = *a7;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v20;
    (*(v14 + 8))(v17, v13);
  }

  *a8 = a1;
  a8[1] = a2;
  v21 = type metadata accessor for MLS.IncomingFailureToDecryptContext_v2();
  v22 = v21[9];
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  v25 = a8 + v22;
  v26 = v35;
  (*(v24 + 16))(v25, v35, v23);
  v27 = (a8 + v21[10]);
  v28 = v34;
  *v27 = v33;
  v27[1] = v28;
  v29 = (a8 + v21[11]);
  v30 = v37;
  *v29 = v36;
  v29[1] = v30;
  v29[2] = v38[0];
  *(v29 + 44) = *(v38 + 12);
  if (!v19)
  {
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v24 + 8))(v26, v23);
  *(a8 + v21[12]) = v19;
  return result;
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.dataContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = *(v2 + 1);
  v33 = *v2;
  (*(v7 + 16))(&v32 - v9, &v2[*(a1 + 36)], v6);
  v12 = *(v5 - 8);
  if ((*(v12 + 48))(v10, 1, v5) == 1)
  {
    v13 = *(v7 + 8);

    v13(v10, v6);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v32 = v2;
    v16 = *(a1 + 24);

    v17 = v16;
    v18 = v37;
    v19 = MLS.ClientContext.dataRepresentation.getter(v5, v17);
    if (v18)
    {

      return (*(v12 + 8))(v10, v5);
    }

    v14 = v19;
    v15 = v20;
    v37 = 0;
    (*(v12 + 8))(v10, v5);
    v2 = v32;
  }

  v22 = *(a1 + 40);
  v23 = &v2[*(a1 + 44)];
  v24 = *(v23 + 1);
  v35[0] = *v23;
  v35[1] = v24;
  v26 = *v23;
  v25 = *(v23 + 1);
  v36[0] = *(v23 + 2);
  *(v36 + 12) = *(v23 + 44);
  *(a2 + 92) = *(v23 + 44);
  v27 = *(v23 + 2);
  *(a2 + 64) = v25;
  *(a2 + 80) = v27;
  v28 = &v2[v22];
  v29 = *v28;
  v30 = v28[1];
  v31 = *&v2[*(a1 + 48)];
  *a2 = v33;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v29;
  *(a2 + 40) = v30;
  *(a2 + 48) = v26;
  *(a2 + 112) = v31;
  outlined copy of Data?(v29, v30);
  outlined init with copy of MLS.OutgoingEventState?(v35, v34, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.description.getter(uint64_t a1)
{
  v31 = *(a1 + 16);
  v32 = type metadata accessor for Optional();
  v3 = *(v32 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v32);
  v6 = &v27 - v5;
  v7 = &v1[*(a1 + 40)];
  v8 = v7[1];
  v9 = 0xE000000000000000;
  if (v8 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v10 = *v7;
    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    outlined copy of Data._Representation(v10, v8);
    _StringGuts.grow(_:)(16);

    strcpy(v43, ", signedData: ");
    HIBYTE(v43[0]) = -18;
    v11 = Data.description.getter();
    MEMORY[0x2667545A0](v11);

    outlined consume of Data?(v10, v8);
    v9 = *(&v43[0] + 1);
    v29 = *&v43[0];
  }

  v30 = v9;
  v12 = &v1[*(a1 + 44)];
  *v44 = *(v12 + 2);
  *&v44[12] = *(v12 + 44);
  v13 = *(v12 + 1);
  v43[0] = *v12;
  v43[1] = v13;
  v14 = v13;
  v15 = *v44;
  v16 = *&v44[24];
  v17 = 0xE000000000000000;
  if (v13 >> 16 != 0xFFFFFFFF || (*v44 & 0x3000000000000000) != 0)
  {
    v27 = *&v44[8];
    v28 = *&v44[16];
    v19 = *(v12 + 1);
    v41[0] = *v12;
    v41[1] = v19;
    v42[0] = *(v12 + 2);
    *(v42 + 12) = *(v12 + 44);
    v39 = 0;
    v40 = 0xE000000000000000;
    outlined init with copy of MLS.SigningInput(v41, &v33);
    _StringGuts.grow(_:)(24);
    MEMORY[0x2667545A0](0xD000000000000016, 0x80000002651E8B10);
    v20 = (v15 >> 60) & 3;
    if (v20)
    {
      v33 = v14;
      v34 = *(&v14 + 1);
      v35 = v15 & 0xCFFFFFFFFFFFFFFFLL;
      if (v20 == 1)
      {
        v36 = v27;
        v37 = v28;
        LOWORD(v38) = v16;
        v21 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
      }

      else
      {
        v21 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
      }
    }

    else
    {
      v33 = v14;
      v34 = *(&v14 + 1);
      v35 = v15;
      v36 = v27;
      v37 = v28;
      v38 = v16;
      v21 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
    }

    MEMORY[0x2667545A0](v21);

    outlined destroy of NSObject?(v43, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    v18 = v39;
    v17 = v40;
  }

  else
  {
    v18 = 0;
  }

  *&v41[0] = 0;
  *(&v41[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  MEMORY[0x2667545A0](0xD00000000000002CLL, 0x80000002651E8AE0);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  v22 = v32;
  (*(v3 + 16))(v6, &v1[*(a1 + 36)], v32);
  v23 = (*(*(v31 - 8) + 48))(v6, 1);
  (*(v3 + 8))(v6, v22);
  if (v23 == 1)
  {
    v24 = 20302;
  }

  else
  {
    v24 = 5457241;
  }

  if (v23 == 1)
  {
    v25 = 0xE200000000000000;
  }

  else
  {
    v25 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v24, v25);

  MEMORY[0x2667545A0](v29, v30);

  MEMORY[0x2667545A0](v18, v17);

  return *&v41[0];
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614464656E676973 && a2 == 0xEA00000000006174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x614464656E676973;
  v3 = 0xD000000000000012;
  if (a1 != 3)
  {
    v3 = 0x6F4363697274656DLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6F43746E65696C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.IncomingFailureToDecryptContext_v2<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.IncomingFailureToDecryptContext_v2.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingFailureToDecryptContext_v2<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.IncomingFailureToDecryptContext_v2.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingFailureToDecryptContext_v2<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingFailureToDecryptContext_v2<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v29 = a2;
  v28 = v6;
  v27 = v5;
  type metadata accessor for MLS.IncomingFailureToDecryptContext_v2.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v38[0]) = 0;
  v15 = v43;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v16 = v29;
    v17 = v29[9];
    LOBYTE(v38[0]) = 1;
    v18 = *(v27 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = (v3 + v16[10]);
    v20 = v19[1];
    v41 = *v19;
    v42 = v20;
    v40 = 2;
    outlined copy of Data?(v41, v20);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v41, v42);
    v21 = (v3 + v16[11]);
    v22 = v21[1];
    v38[0] = *v21;
    v38[1] = v22;
    v24 = *v21;
    v23 = v21[1];
    *v39 = v21[2];
    *&v39[12] = *(v21 + 44);
    v35 = v24;
    v36 = v23;
    v37[0] = v21[2];
    *(v37 + 12) = *(v21 + 44);
    v34 = 3;
    outlined init with copy of MLS.OutgoingEventState?(v38, v32, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v32[0] = v35;
    v32[1] = v36;
    *v33 = v37[0];
    *&v33[12] = *(v37 + 12);
    outlined destroy of NSObject?(v32, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    v31 = *(v3 + v16[12]);
    v30 = 4;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a3;
  v36 = type metadata accessor for Optional();
  v33 = *(v36 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v36);
  v32 = &v29 - v6;
  type metadata accessor for MLS.IncomingFailureToDecryptContext_v2.CodingKeys();
  swift_getWitnessTable();
  v38 = type metadata accessor for KeyedDecodingContainer();
  v35 = *(v38 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v38);
  v9 = &v29 - v8;
  v34 = a2;
  v10 = type metadata accessor for MLS.IncomingFailureToDecryptContext_v2();
  v30 = *(v10 - 1);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - v12);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v9;
  v15 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v32;
  v17 = v13;
  v18 = v33;
  v19 = v34;
  v39 = a1;
  v20 = v36;
  LOBYTE(v41) = 0;
  *v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v17[1] = v21;
  v29 = v21;
  LOBYTE(v41) = 1;
  v22 = *(v19 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 32))(v17 + v10[9], v16, v20);
  LOBYTE(v40) = 2;
  lazy protocol witness table accessor for type Data and conformance Data();
  v34 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v35;
  *(v17 + v10[10]) = v41;
  v45 = 3;
  lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v39;
  v25 = (v17 + v10[11]);
  v26 = v42;
  *v25 = v41;
  v25[1] = v26;
  v25[2] = v43[0];
  *(v25 + 44) = *(v43 + 12);
  v44 = 4;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 8))(v37, v38);
  *(v17 + v10[12]) = v40;
  v27 = v30;
  (*(v30 + 16))(v31, v17, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return (*(v27 + 8))(v17, v10);
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.signedData.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 40);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.expectedSignedData.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 12) = *(v3 + 44);
  v6 = *(v10 + 12);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 44) = v6;
  return outlined init with copy of MLS.OutgoingEventState?(v9, &v8, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
}

uint64_t MLS.IncomingFailureToDecryptContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*MLS.IncomingFailureToDecryptContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t MLS.IncomingFailureToDecryptContext.expectedAdditionalAuthenticatedData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  return outlined copy of MLS.AdditionalAuthenticatedData?(v4, v5, v6, v7, v8, v9);
}

uint64_t MLS.IncomingFailureToDecryptContext.description.getter(uint64_t a1)
{
  v2 = v1;
  v26 = *(a1 + 16);
  v25 = type metadata accessor for Optional();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v25);
  v7 = &v23 - v6;
  v8 = &v1[*(a1 + 44)];
  *v38 = *(v8 + 2);
  *&v38[12] = *(v8 + 44);
  v9 = *(v8 + 1);
  v37[0] = *v8;
  v37[1] = v9;
  v10 = v9;
  v11 = *v38;
  v12 = *&v38[24];
  v13 = 0xE000000000000000;
  if (v9 >> 16 != 0xFFFFFFFF || (*v38 & 0x3000000000000000) != 0)
  {
    v23 = *&v38[8];
    v24 = *&v38[16];
    v15 = *(v8 + 1);
    v35[0] = *v8;
    v35[1] = v15;
    v36[0] = *(v8 + 2);
    *(v36 + 12) = *(v8 + 44);
    v33 = 0;
    v34 = 0xE000000000000000;
    outlined init with copy of MLS.SigningInput(v35, &v27);
    _StringGuts.grow(_:)(24);
    MEMORY[0x2667545A0](0xD000000000000016, 0x80000002651E8B10);
    v16 = (v11 >> 60) & 3;
    if (v16)
    {
      v27 = v10;
      v28 = *(&v10 + 1);
      v29 = v11 & 0xCFFFFFFFFFFFFFFFLL;
      if (v16 == 1)
      {
        v30 = v23;
        v31 = v24;
        LOWORD(v32) = v12;
        v17 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
      }

      else
      {
        v17 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
      }
    }

    else
    {
      v27 = v10;
      v28 = *(&v10 + 1);
      v29 = v11;
      v30 = v23;
      v31 = v24;
      v32 = v12;
      v17 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
    }

    MEMORY[0x2667545A0](v17);

    outlined destroy of NSObject?(v37, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    v14 = v33;
    v13 = v34;
  }

  else
  {
    v14 = 0;
  }

  *&v35[0] = 0;
  *(&v35[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  MEMORY[0x2667545A0](0xD00000000000002CLL, 0x80000002651E8AE0);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  v18 = v25;
  (*(v4 + 16))(v7, &v2[*(a1 + 36)], v25);
  v19 = (*(*(v26 - 8) + 48))(v7, 1);
  (*(v4 + 8))(v7, v18);
  if (v19 == 1)
  {
    v20 = 20302;
  }

  else
  {
    v20 = 5457241;
  }

  if (v19 == 1)
  {
    v21 = 0xE200000000000000;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v20, v21);

  MEMORY[0x2667545A0](v14, v13);

  return *&v35[0];
}

uint64_t MLS.IncomingFailureToDecryptContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614464656E676973 && a2 == 0xEA00000000006174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000023 && 0x80000002651E9C30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t MLS.IncomingFailureToDecryptContext.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000012;
  v3 = 0x6F4363697274656DLL;
  if (a1 != 4)
  {
    v3 = 0xD000000000000023;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6F43746E65696C63;
  if (a1 != 1)
  {
    v4 = 0x614464656E676973;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.IncomingFailureToDecryptContext<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.IncomingFailureToDecryptContext.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingFailureToDecryptContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.IncomingFailureToDecryptContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingFailureToDecryptContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingFailureToDecryptContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingFailureToDecryptContext.encode(to:)(void *a1, uint64_t a2)
{
  v35 = a2;
  v3 = *(a2 + 16);
  v33 = *(a2 + 24);
  v34 = v3;
  type metadata accessor for MLS.IncomingFailureToDecryptContext.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v36;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v10;
  v12 = v10[1];
  LOBYTE(v50[0]) = 0;
  v13 = v55;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    v14 = v35;
    v15 = *(v35 + 36);
    LOBYTE(v50[0]) = 1;
    v16 = *(v33 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = (v10 + *(v14 + 40));
    v18 = v17[1];
    v53 = *v17;
    v54 = v18;
    v52 = 2;
    outlined copy of Data?(v53, v18);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v53, v54);
    v19 = (v10 + *(v14 + 44));
    v20 = v19[1];
    v50[0] = *v19;
    v50[1] = v20;
    v22 = *v19;
    v21 = v19[1];
    *v51 = v19[2];
    *&v51[12] = *(v19 + 44);
    v47 = v22;
    v23 = v19[2];
    v48 = v21;
    v49[0] = v23;
    *(v49 + 12) = *(v19 + 44);
    v46 = 3;
    outlined init with copy of MLS.OutgoingEventState?(v50, v44, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v44[0] = v47;
    v44[1] = v48;
    *v45 = v49[0];
    *&v45[12] = *(v49 + 12);
    outlined destroy of NSObject?(v44, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    v24 = v35;
    v37 = *(v10 + *(v35 + 48));
    v43 = 4;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v25 = (v10 + *(v24 + 52));
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[3];
    v29 = v25[4];
    v30 = v25[5];
    v37 = *v25;
    v38 = v26;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v43 = 5;
    outlined copy of MLS.AdditionalAuthenticatedData?(v37, v26, v27, v28, v29, v30);
    lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of MLS.AdditionalAuthenticatedData?(v37, v38, v39, v40, v41, v42);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MLS.IncomingFailureToDecryptContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v39 = a3;
  v43 = type metadata accessor for Optional();
  v42 = *(v43 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v43);
  v41 = &v37 - v6;
  type metadata accessor for MLS.IncomingFailureToDecryptContext.CodingKeys();
  swift_getWitnessTable();
  v46 = type metadata accessor for KeyedDecodingContainer();
  v40 = *(v46 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v46);
  v9 = &v37 - v8;
  v44 = a2;
  v10 = type metadata accessor for MLS.IncomingFailureToDecryptContext();
  v38 = *(v10 - 1);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v37 - v12);
  v15 = a1[3];
  v14 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v45 = v9;
  v16 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  v18 = v43;
  v17 = v44;
  v19 = v41;
  v20 = v40;
  v21 = v42;
  LOBYTE(v52) = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v23;
  LOBYTE(v52) = 1;
  v24 = *(v17 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v21 + 32))(v13 + v10[9], v19, v18);
  LOBYTE(v49) = 2;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v13 + v10[10]) = v52;
  v56 = 3;
  lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v47 = 0;
  v25 = (v13 + v10[11]);
  v26 = v53;
  *v25 = v52;
  v25[1] = v26;
  v25[2] = v54[0];
  *(v25 + 44) = *(v54 + 12);
  v55 = 4;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  v27 = v47;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v27;
  if (v27)
  {
    (*(v20 + 8))(v45, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v28 = 0;
  }

  else
  {
    *(v13 + v10[12]) = v49;
    v55 = 5;
    lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
    v29 = v47;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = v29;
    if (!v29)
    {
      (*(v20 + 8))(v45, v46);
      v34 = (v13 + v10[13]);
      v35 = v50;
      *v34 = v49;
      v34[1] = v35;
      v34[2] = v51;
      v36 = v38;
      (*(v38 + 16))(v39, v13, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      return (*(v36 + 8))(v13, v10);
    }

    (*(v20 + 8))(v45, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v28 = 1;
  }

  v30 = v13[1];

  (*(v21 + 8))(v13 + v10[9], v18);
  outlined consume of Data?(*(v13 + v10[10]), *(v13 + v10[10] + 8));
  v31 = (v13 + v10[11]);
  v32 = v31[1];
  v52 = *v31;
  v53 = v32;
  v54[0] = v31[2];
  *(v54 + 12) = *(v31 + 44);
  result = outlined destroy of NSObject?(&v52, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  if (v28)
  {
    v33 = *(v13 + v10[12]);
  }

  return result;
}

uint64_t (*MLS.IncomingFailureToDecryptProcessedContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingFailureToDecryptProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingFailureToDecryptProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingErrorMessageContext.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MLS.IncomingErrorMessageContext.metricCollector.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t MLS.IncomingErrorMessageContext.init(identifier:clientContext:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v18;
    (*(v11 + 8))(v14, v10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    goto LABEL_3;
  }

  if (!v15)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = type metadata accessor for Optional();
  result = (*(*(v16 - 8) + 8))(a3, v16);
  *a5 = a1;
  a5[1] = a2;
  a5[2] = v15;
  return result;
}

unint64_t MLS.IncomingErrorMessageContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(43);

  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0xD000000000000028;
}

uint64_t MLS.IncomingErrorMessageContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t MLS.IncomingErrorMessageContext.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F4363697274656DLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.IncomingErrorMessageContext<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.IncomingErrorMessageContext.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingErrorMessageContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.IncomingErrorMessageContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingErrorMessageContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingErrorMessageContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingErrorMessageContext.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  type metadata accessor for MLS.IncomingErrorMessageContext.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v11 = *v2;
  v10 = v2[1];
  v17 = v2[2];
  v18 = v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = 0;
  v13 = v20;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v13)
  {
    return (*(v19 + 8))(v9, v6);
  }

  v15 = v19;
  v21 = v17;
  v22 = 1;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v15 + 8))(v9, v6);
}

uint64_t MLS.IncomingErrorMessageContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a2;
  type metadata accessor for MLS.IncomingErrorMessageContext.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedDecodingContainer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v17[0];
  v19 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  v18 = 1;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v8, v4);
  v15 = v17[1];
  *v10 = v14;
  v10[1] = v13;
  v10[2] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLS.IncomingErrorMessageContext<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  return MLS.IncomingErrorMessageContext.init(from:)(a1, a3);
}

uint64_t (*MLS.IncomingErrorMessageProcessedContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t MLS.IncomingErrorMessageProcessedContext.init(metricCollector:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  result = type metadata accessor for MLS.IncomingErrorMessageProcessedContext();
  *(a3 + *(result + 36)) = v4;
  return result;
}

uint64_t MLS.IncomingErrorMessageProcessedContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t MLS.IncomingErrorMessageProcessedContext.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F4363697274656DLL;
  }

  else
  {
    return 0x6F43746E65696C63;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.GroupDeletionContext<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.IncomingErrorMessageProcessedContext<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.IncomingErrorMessageProcessedContext.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingErrorMessageProcessedContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.IncomingErrorMessageProcessedContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingErrorMessageProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingErrorMessageProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingErrorMessageProcessedContext.encode(to:)(void *a1, uint64_t a2)
{
  v15 = a2;
  v3 = *(a2 + 24);
  v17 = *(a2 + 16);
  type metadata accessor for MLS.IncomingErrorMessageProcessedContext.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v16;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  v11 = *(v3 + 16);
  v12 = v18;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v12)
  {
    v19 = *(v10 + *(v15 + 36));
    v20 = 1;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MLS.IncomingErrorMessageProcessedContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = type metadata accessor for Optional();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v34 = &v27 - v7;
  type metadata accessor for MLS.IncomingErrorMessageProcessedContext.CodingKeys();
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedDecodingContainer();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v33 = a2;
  v12 = type metadata accessor for MLS.IncomingErrorMessageProcessedContext();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v37 = a1;
  v18 = v15;
  v28 = v12;
  v20 = v31;
  v19 = v32;
  v40 = 0;
  v21 = v34;
  v22 = *(v33 + 8);
  v23 = v36;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v20 + 32))(v18, v21, v19);
  v39 = 1;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v35 + 8))(v11, v23);
  v25 = v28;
  v24 = v29;
  *&v18[*(v28 + 36)] = v38;
  (*(v24 + 16))(v30, v18, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  return (*(v24 + 8))(v18, v25);
}

uint64_t (*MLS.IncomingGroupNameContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t MLS.IncomingGroupNameContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  MEMORY[0x2667545A0](0xD000000000000025, 0x80000002651E8AB0);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v8, &v1[*(a1 + 36)], v4);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3);
  (*(v5 + 8))(v8, v4);
  if (v9 == 1)
  {
    v10 = 20302;
  }

  else
  {
    v10 = 5457241;
  }

  if (v9 == 1)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v10, v11);

  return v13[0];
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingGroupNameContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingGroupNameContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupCreationProcessedContext.group.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a2 = v12[0];
  *(a2 + 16) = v7;
  *(a2 + 96) = v6;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  *(a2 + 64) = v4;
  *(a2 + 80) = v5;
  return outlined init with copy of MLS.Group(v12, v11);
}

uint64_t (*MLS.IncomingGroupNameProcessedContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

__n128 MLS.GroupCreationProcessedContext.init(clientContext:group:metricCollector:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = a6(0, a4, a5);
  v16 = a7 + *(v15 + 36);
  v17 = *(a2 + 80);
  *(v16 + 64) = *(a2 + 64);
  *(v16 + 80) = v17;
  *(v16 + 96) = *(a2 + 96);
  v18 = *(a2 + 16);
  *v16 = *a2;
  *(v16 + 16) = v18;
  result = *(a2 + 48);
  *(v16 + 32) = *(a2 + 32);
  *(v16 + 48) = result;
  *(a7 + *(v15 + 40)) = v13;
  return result;
}

uint64_t MLS.GroupCreationProcessedContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingGroupNameProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingGroupNameProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupCreationProcessedContext.encode(to:)(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2 + 24);
  v29 = *(a2 + 16);
  v26 = a2;
  v27 = v5;
  a3(255, v29);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v6;
  v13 = v28;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v48 = 0;
  v14 = *(v27 + 16);
  v15 = v49;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v15)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v17 = v7;
  v18 = v26;
  v19 = (v13 + *(v26 + 36));
  v20 = v19[3];
  v21 = v19[5];
  v45 = v19[4];
  v46 = v21;
  v22 = v19[1];
  v42[0] = *v19;
  v42[1] = v22;
  v23 = v19[3];
  v25 = *v19;
  v24 = v19[1];
  v43 = v19[2];
  v44 = v23;
  v38 = v20;
  v39 = v45;
  v40 = v19[5];
  v35 = v25;
  v47 = *(v19 + 12);
  v41 = *(v19 + 12);
  v36 = v24;
  v37 = v43;
  v34 = 1;
  outlined init with copy of MLS.Group(v42, v32);
  lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v32[4] = v39;
  v32[5] = v40;
  v33 = v41;
  v32[0] = v35;
  v32[1] = v36;
  v32[2] = v37;
  v32[3] = v38;
  outlined destroy of MLS.Group(v32);
  v31 = *(v13 + *(v18 + 40));
  v30 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v17 + 8))(v10, v12);
}

uint64_t MLS.GroupCreationProcessedContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v35 = a6;
  v37 = type metadata accessor for Optional();
  v36 = *(v37 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v37);
  v39 = &v34 - v12;
  a4(255, a2, a3);
  swift_getWitnessTable();
  v13 = type metadata accessor for KeyedDecodingContainer();
  v41 = *(v13 - 8);
  v42 = v13;
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v40 = a2;
  v38 = a3;
  v17 = a5(0, a2, a3);
  v34 = *(v17 - 8);
  v18 = *(v34 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v43 = v16;
  v22 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = v36;
  v24 = v37;
  v44 = a1;
  LOBYTE(v46) = 0;
  v25 = v39;
  v26 = *(v38 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v23 + 32))(v20, v25, v24);
  v54 = 1;
  lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = &v20[*(v17 + 36)];
  v28 = v51;
  *(v27 + 4) = v50;
  *(v27 + 5) = v28;
  *(v27 + 12) = v52;
  v29 = v47;
  *v27 = v46;
  *(v27 + 1) = v29;
  v30 = v49;
  *(v27 + 2) = v48;
  *(v27 + 3) = v30;
  v53 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v44;
  (*(v41 + 8))(v43, v42);
  *&v20[*(v17 + 40)] = v45;
  v32 = v34;
  (*(v34 + 16))(v35, v20, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return (*(v32 + 8))(v20, v17);
}

uint64_t MLS.GroupCreationContext_v2.clientContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t (*MLS.DowngradeContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

unint64_t MLS.DowngradeContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v13 = 0xD00000000000001DLL;
  v14 = 0x80000002651E8A70;
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v8, &v1[*(a1 + 36)], v4);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3);
  (*(v5 + 8))(v8, v4);
  if (v9 == 1)
  {
    v10 = 20302;
  }

  else
  {
    v10 = 5457241;
  }

  if (v9 == 1)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v10, v11);

  return v13;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.DowngradeContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.DowngradeContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupOperationContext.encode(to:)(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v20 = *(a2 + 24);
  v21 = v5;
  a3(255);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v12;
  v14 = v12[1];
  v27 = 0;
  v15 = v23;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v16 = *(a2 + 36);
    v26 = 1;
    v17 = *(v20 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = *(v12 + *(a2 + 40));
    v25 = 2;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t MLS.GroupOperationContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v34 = a6;
  v39 = type metadata accessor for Optional();
  v37 = *(v39 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v31 - v12;
  a4(255, a2, a3);
  swift_getWitnessTable();
  v42 = type metadata accessor for KeyedDecodingContainer();
  v38 = *(v42 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v31 - v14;
  v36 = a2;
  v40 = a3;
  v16 = a5(0, a2, a3);
  v33 = *(v16 - 8);
  v17 = *(v33 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v31 - v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v41 = v15;
  v21 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v38;
  v43 = a1;
  v23 = v39;
  v24 = v40;
  v47 = 0;
  *v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v19[1] = v25;
  v31 = v25;
  v32 = v19;
  v46 = 1;
  v26 = *(v24 + 8);
  v27 = v35;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v37 + 32))(v32 + *(v16 + 36), v27, v23);
  v45 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v22 + 8))(v41, v42);
  v29 = v32;
  v28 = v33;
  *(v32 + *(v16 + 40)) = v44;
  (*(v28 + 16))(v34, v29, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return (*(v28 + 8))(v29, v16);
}

uint64_t MLS.GroupCreationProcessedContext.clientContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t (*MLS.DowngradeProcessedContext.metricCollector.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t key path getter for MLS.GroupOperationProcessedContext.eventSenderTask : <A>MLS.GroupOperationProcessedContext<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void, void)@<X3>, uint64_t (*a4)(uint64_t)@<X4>, void *a5@<X8>)
{
  v7 = a3(0, *(a1 + a2 - 16), *(a1 + a2 - 8));
  *a5 = a4(v7);
}

uint64_t key path setter for MLS.GroupOperationProcessedContext.eventSenderTask : <A>MLS.GroupOperationProcessedContext<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = *a1;
  v8 = a5(0, *(a3 + a4 - 16), *(a3 + a4 - 8));

  return a6(v9, v8);
}

uint64_t (*MLS.DowngradeProcessedContext.eventSenderTask.modify(uint64_t a1, uint64_t a2))()
{
  result = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t MLS.GroupOperationProcessedContext.init(clientContext:metricCollector:eventSenderTask:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = a6(0, a4, a5);
  *(a7 + *(v11 + 40)) = 0;
  v12 = type metadata accessor for Optional();
  v17 = *(v12 - 8);
  (*(v17 + 16))(a7, a1, v12);
  *(a7 + *(v11 + 36)) = v10;
  v13 = *(v11 + 40);
  v14 = *(a7 + v13);

  *(a7 + v13) = a3;
  v15 = *(v17 + 8);

  return v15(a1, v12);
}

uint64_t MLS.GroupOperationProcessedContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6553746E657665 && a2 == 0xEF6B736154726564)
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.GroupCreationContext_v2<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.DowngradeProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.DowngradeProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupOperationProcessedContext.encode(to:)(void *a1, uint64_t a2, void (*a3)(uint64_t, void, uint64_t))
{
  v17 = a2;
  v4 = *(a2 + 24);
  a3(255, *(a2 + 16), v4);
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v18;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  v12 = *(v4 + 16);
  v13 = v19;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v13)
  {
    v20 = *(v11 + *(v17 + 36));
    v21 = 1;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
    destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v5, v14);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MLS.GroupOperationProcessedContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v35 = a6;
  v11 = type metadata accessor for Optional();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v41 = &v34 - v13;
  a4(255, a2, a3);
  swift_getWitnessTable();
  v43 = type metadata accessor for KeyedDecodingContainer();
  v36 = *(v43 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v43);
  v16 = &v34 - v15;
  v39 = a3;
  v40 = a2;
  v17 = a5(0, a2, a3);
  v34 = *(v17 - 8);
  v18 = *(v34 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v16;
  v22 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = v36;
  v23 = v37;
  v44 = v20;
  v25 = a1;
  v26 = v38;
  LOBYTE(v46) = 0;
  v27 = *(v39 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v44;
  (*(v23 + 32))(v44, v41, v26);
  v45 = 1;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v17;
  *&v28[*(v17 + 36)] = v46;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
  KeyedDecodingContainer.decode<A>(_:forKey:)(v29, &v46);
  v30 = v41;
  v31 = *(v41 + 10);
  (*(v24 + 8))(v42, v43);
  *&v28[v31] = v46;
  v32 = v34;
  (*(v34 + 16))(v35, v28, v30);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return (*(v32 + 8))(v28, v30);
}

uint64_t protocol witness for MLS.OperationContext.clientContext.getter in conformance <> MLS.IncomingMessageContext<A>()
{
  v1 = *(v0 + 16);
  outlined copy of Data?(v1, *(v0 + 24));
  return v1;
}

uint64_t _s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_xGAC0efG0AA10Foundation4DataVRszrlAcGP06clientG015metricCollector15eventSenderTaskxAJSg_AA06MetricL0VScTyyts5NeverOGSgtcfCTW_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  a5[1] = a2;
  a5[2] = v5;
  a5[3] = a4;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMd, _ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

BOOL specialized static MLS.GroupDetails.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      outlined copy of Data?(*a1, v2);
      outlined copy of Data?(v5, v4);
      outlined consume of Data?(v3, v2);
      return 1;
    }

    goto LABEL_5;
  }

  if (v4 >> 60 == 15)
  {
LABEL_5:
    outlined copy of Data?(*a1, v2);
    outlined copy of Data?(v5, v4);
    outlined consume of Data?(v3, v2);
    outlined consume of Data?(v5, v4);
    return 0;
  }

  outlined copy of Data?(*a1, v2);
  outlined copy of Data?(v5, v4);
  v7 = specialized static Data.== infix(_:_:)(v3, v2, v5, v4);
  outlined consume of Data?(v5, v4);
  outlined consume of Data?(v3, v2);
  return (v7 & 1) != 0;
}

BOOL specialized static MLS.Group.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v18 = *(a2 + 48);
  v17 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 72);
  v22 = *(a2 + 80);
  v21 = *(a2 + 88);
  v36 = *(a2 + 96);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v2 == v13 && v3 == v14)
    {
      v37 = *(a2 + 64);
      v38 = *(a2 + 56);
      v39 = v9;
      v40 = v6;
      v32 = *(a2 + 80);
      v33 = *(a2 + 72);
      v34 = v11;
      v35 = v8;
      v29 = *(a2 + 88);
      v30 = v10;
      v31 = v12;
      goto LABEL_9;
    }
  }

  else
  {
    v37 = *(a2 + 64);
    v38 = *(a2 + 56);
    v39 = *(a1 + 64);
    v40 = *(a1 + 56);
    v32 = *(a2 + 80);
    v33 = *(a2 + 72);
    v34 = *(a1 + 80);
    v35 = *(a1 + 72);
    v29 = *(a2 + 88);
    v30 = *(a1 + 88);
    v31 = *(a1 + 96);
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v24 & 1) != 0 && v2 == v13 && v3 == v14)
    {
LABEL_9:
      if (v5 != v16)
      {
        return result;
      }

      if ((specialized static Data.== infix(_:_:)(v4, v7, v15, v18) & 1) == 0 || (specialized static Data.== infix(_:_:)(v40, v39, v38, v37) & 1) == 0 || (specialized static Data.== infix(_:_:)(v35, v34, v33, v32) & 1) == 0)
      {
        return 0;
      }

      if (v31 >> 60 == 15)
      {
        v25 = v36;
        v26 = v30;
        if (v36 >> 60 == 15)
        {
          outlined copy of Data?(v30, v31);
          outlined copy of Data?(v29, v36);
          outlined consume of Data?(v30, v31);
          return 1;
        }
      }

      else
      {
        v25 = v36;
        v26 = v30;
        if (v36 >> 60 != 15)
        {
          outlined copy of Data?(v30, v31);
          outlined copy of Data?(v29, v36);
          v28 = specialized static Data.== infix(_:_:)(v30, v31, v29, v36);
          outlined consume of Data?(v29, v36);
          outlined consume of Data?(v30, v31);
          return (v28 & 1) != 0;
        }
      }

      v27 = v26;
      outlined copy of Data?(v26, v31);
      outlined copy of Data?(v29, v25);
      outlined consume of Data?(v27, v31);
      outlined consume of Data?(v29, v25);
      return 0;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVtMd, &_sSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v10, v6, &_sSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVtMd, &_sSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVtMR);
      v12 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
      result = outlined init with take of XPCUtils.XPCInterfaceRequest(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for XPCUtils.XPCInterfaceRequest);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO10XPCRequest_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      outlined init with copy of MLS.OutgoingEventState?(i, &v11, &_sSi_15SecureMessaging8XPCUtilsO10XPCRequest_ptMd, &_sSi_15SecureMessaging8XPCUtilsO10XPCRequest_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of MLS.KeyUpdatePolicy(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8SwiftMLS0D0O6ClientO10KeyPackageVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_8SwiftMLS0B0O6ClientO10KeyPackageVtMd, &_sSS_8SwiftMLS0B0O6ClientO10KeyPackageVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMd, &_ss18_DictionaryStorageCySS8SwiftMLS0D0O6ClientO10KeyPackageVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v10, v6, &_sSS_8SwiftMLS0B0O6ClientO10KeyPackageVtMd, &_sSS_8SwiftMLS0B0O6ClientO10KeyPackageVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for MLS.Client.KeyPackage();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15MetricCollectorV5EventVtMd, &_sSS_15SecureMessaging15MetricCollectorV5EventVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMd, &_ss18_DictionaryStorageCySS15SecureMessaging15MetricCollectorV5EventVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v10, v6, &_sSS_15SecureMessaging15MetricCollectorV5EventVtMd, &_sSS_15SecureMessaging15MetricCollectorV5EventVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for MetricCollector.Event();
      result = outlined init with take of XPCUtils.XPCInterfaceRequest(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for MetricCollector.Event);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined copy of MLS.AdditionalAuthenticatedData?(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 != 15)
  {
    outlined copy of Data._Representation(result, a2);

    return outlined copy of Data?(a5, a6);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group()
{
  result = lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group;
  if (!lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group;
  if (!lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group;
  if (!lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Group and conformance MLS.Group);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO9AllMemberO_SayAE14KeyPackageInfoVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      outlined copy of MLS.AllMember();

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      *(v3[7] + 8 * result) = v9;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v4, &v13, &_sSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_ptMd, &_sSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of MLS.KeyUpdatePolicy(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = a1 + 48; ; i += 64)
    {
      v5 = *(i - 8);
      v6 = *i;
      v7 = *(i + 24);
      v8 = *(i + 32);
      v9 = *(i + 40);
      *&v19 = *(i - 16);
      *(&v19 + 1) = v5;
      *v20 = v6;
      *&v20[8] = *(i + 8);
      v18 = *&v20[8];
      *&v20[24] = v7;

      outlined copy of Data._Representation(v6, v18);
      outlined copy of Data._Representation(v8, v9);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v19);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 48 * result);
      v13 = *v20;
      *v12 = v19;
      v12[1] = v13;
      v12[2] = *&v20[16];
      v14 = (v3[7] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierV10Foundation4UUIDVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v10, v6, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVtMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_10Foundation4UUIDVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v8[6] + 16 * result);
      v16 = v6[1];
      *v15 = *v6;
      v15[1] = v16;
      v17 = v8[7];
      v18 = type metadata accessor for UUID();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, v6 + v9, v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      outlined copy of Data._Representation(v9, v10);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v14 = (v3[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;
      outlined copy of Data._Representation(v5, v6);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_SayAE15PersistedMemberVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v12[3] = v8;
      *(v3[7] + 8 * result) = v9;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      *&v18 = *(i - 6);
      *(&v18 + 1) = v5;
      *&v19 = v6;
      *(&v19 + 1) = v7;
      *&v20 = v8;
      *(&v20 + 1) = v9;

      result = specialized __RawDictionaryStorage.find<A>(_:)(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 48 * result);
      v14 = v19;
      *v13 = v18;
      v13[1] = v14;
      v13[2] = v20;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV_AE21EventsSinceLastUpdateVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 56)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 32 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v15 = v3[7] + 24 * result;
      *v15 = v9;
      *(v15 + 8) = v10;
      *(v15 + 16) = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AG08IncomingJ5EntryVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08IncomingJ5EntryVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[7];
      v30 = v4[6];
      v31 = v6;
      v7 = v4[9];
      v32 = v4[8];
      v33 = v7;
      v8 = v4[3];
      v26 = v4[2];
      v27 = v8;
      v9 = v4[5];
      v28 = v4[4];
      v29 = v9;
      v10 = v4[1];
      v25[0] = *v4;
      v25[1] = v10;
      v34 = v25[0];
      v35 = v10;
      v36 = v26;
      outlined init with copy of MLS.OutgoingEventState?(v25, &v24, &_s15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AE08IncomingH5EntryVtMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AE08IncomingH5EntryVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v34);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 48 * result);
      v14 = v35;
      *v13 = v34;
      v13[1] = v14;
      v13[2] = v36;
      v15 = (v3[7] + 112 * result);
      v16 = v30;
      v17 = v31;
      v18 = v33;
      v15[5] = v32;
      v15[6] = v18;
      v15[3] = v16;
      v15[4] = v17;
      v20 = v28;
      v19 = v29;
      *v15 = v27;
      v15[1] = v20;
      v15[2] = v19;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_11;
      }

      v3[2] = v23;
      if (!i)
      {

        return v3;
      }

      v4 += 10;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AG08OutgoingJ5EntryVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDVAG08OutgoingJ5EntryVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, sizeof(__dst));
      v15 = *__dst;
      v16 = *&__dst[16];
      v17 = *&__dst[32];
      outlined init with copy of MLS.OutgoingEventState?(__dst, v13, &_s15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AE08OutgoingH5EntryVtMd, &_s15SecureMessaging3MLSO17InMemoryPersisterC17GroupEventStoreIDV_AE08OutgoingH5EntryVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v15);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = (v3[6] + 48 * result);
      v9 = v16;
      *v8 = v15;
      v8[1] = v9;
      v8[2] = v17;
      result = memcpy((v3[7] + 296 * result), &__dst[48], 0x128uLL);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_11;
      }

      v3[2] = v12;
      if (!i)
      {

        return v3;
      }

      v4 += 344;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_AC4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_AA4DataVtMd, &_s10Foundation4UUIDV_AA4DataVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAC4DataVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v10, v6, &_s10Foundation4UUIDV_AA4DataVtMd, &_s10Foundation4UUIDV_AA4DataVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      outlined copy of Data._Representation(v7, v8);
      outlined copy of Data._Representation(v9, v10);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v14 = (v3[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging3MLSO22UniqueClientIdentifierV_AE25SwiftMLSPersisterProtocol_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v4, &v12, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC25SwiftMLSPersisterProtocol_ptMd, &_s15SecureMessaging3MLSO22UniqueClientIdentifierV_AC25SwiftMLSPersisterProtocol_ptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 16 * result);
      v8 = v13;
      *v7 = v12;
      v7[1] = v8;
      result = outlined init with take of MLS.KeyUpdatePolicy(&v14, v3[7] + 40 * result);
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      v4 += 56;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging18SMAFeatureFlagsKeyO_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging18SMAFeatureFlagsKeyOSbGMd, &_ss18_DictionaryStorageCy15SecureMessaging18SMAFeatureFlagsKeyOSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO10EventQueueCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized MLS.Group.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E4970756F7267 && a2 == 0xE90000000000006FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002651E96B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized MLS.GroupVersion.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6386277 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172456C6C616D73 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68636F7065 && a2 == 0xE500000000000000)
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

unint64_t lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD()
{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData()
{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData;
  if (!lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupDetails and conformance MLS.GroupDetails()
{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails;
  if (!lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDetails and conformance MLS.GroupDetails);
  }

  return result;
}

__n128 sub_265035AC8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.Group(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for MLS.Group(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.GroupVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void type metadata completion function for MLS.GroupCreationContext_v2(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for Data?);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.GroupCreationContext_v2(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupCreationContext_v2(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void type metadata completion function for MLS.GroupCreationContext(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    _s10Foundation4DataVSgMaTm_0(319, &lazy cache variable for type metadata for Data?);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.GroupCreationContext(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupCreationContext(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for MLS.GroupMembersContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for MLS.GroupMembersContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for MLS.GroupDeletionContext(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for MLS.GroupDeletionContext(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
        if (v18 >= 2)
        {
          return v18 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v17 = *(a1 + 1);
        if (v17 >= 0xFFFFFFFF)
        {
          LODWORD(v17) = -1;
        }

        return (v17 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for MLS.GroupDeletionContext(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v9 & 0x80000000) != 0)
  {
    v21 = (&a1[v11 + 16] & ~v11);
    if (v9 >= a2)
    {
      v25 = *(v7 + 56);
      v26 = a2 + 1;
      v27 = &a1[v11 + 16] & ~v11;

      v25(v27, v26);
    }

    else
    {
      if (v12 <= 3)
      {
        v22 = ~(-1 << (8 * v12));
      }

      else
      {
        v22 = -1;
      }

      if (v12)
      {
        v23 = v22 & (~v9 + a2);
        if (v12 <= 3)
        {
          v24 = v12;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v12);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}