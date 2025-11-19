unint64_t MLS.OutgoingKickMember.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6F43746E65696C63;
    if (a1 != 2)
    {
      v6 = 0x6F4363697274656DLL;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5474656863746172;
    if (a1 != 7)
    {
      v1 = 0x666E4970756F7267;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0x74696D6D6F63;
    if (a1 != 4)
    {
      v3 = 0x737265626D656DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingEventType<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingKickMember<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingKickMember<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingKickMember.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v41 = *(a2 + 16);
  v42 = v8;
  v48 = v41;
  v49 = v6;
  v43 = v7;
  v44 = v6;
  v50 = v7;
  v51 = v8;
  type metadata accessor for MLS.OutgoingKickMember.CodingKeys();
  swift_getWitnessTable();
  v9 = type metadata accessor for KeyedEncodingContainer();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v9;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  v16 = v3[1];
  LOBYTE(v48) = 0;
  v17 = v46;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v17)
  {
    return (*(v45 + 8))(v12, v9);
  }

  v20 = v42;
  v19 = v43;
  v21 = v45;
  v22 = v3[2];
  v23 = v3[3];
  LOBYTE(v48) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v24 = *(a2 + 56);
  LOBYTE(v48) = 2;
  v25 = *(v20 + 16);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v26 = *(a2 + 60);
  v46 = v3;
  v48 = *(v3 + v26);
  v52 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v27 = (v46 + *(a2 + 64));
  v28 = v27[1];
  v30 = v27[2];
  v29 = v27[3];
  v48 = *v27;
  v49 = v28;
  v50 = v30;
  v51 = v29;
  v52 = 4;

  outlined copy of Data._Representation(v30, v29);
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v31 = v50;
  v32 = v51;

  outlined consume of Data._Representation(v31, v32);
  v48 = *(v46 + *(a2 + 68));
  v52 = 5;
  v33 = *(v19 + 24);
  type metadata accessor for Set();
  v47 = *(v19 + 16);
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v34 = (v46 + *(a2 + 72));
  v35 = v34[1];
  v48 = *v34;
  v49 = v35;
  v52 = 6;
  outlined copy of Data._Representation(v48, v35);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v48, v49);
  v36 = (v46 + *(a2 + 76));
  v37 = v36[1];
  v48 = *v36;
  v49 = v37;
  v52 = 7;
  outlined copy of Data?(v48, v37);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v48, v49);
  v38 = (v46 + *(a2 + 80));
  v39 = v38[1];
  v48 = *v38;
  v49 = v39;
  v52 = 8;
  outlined copy of Data._Representation(v48, v39);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v48, v49);
  return (*(v21 + 8))(v12, v14);
}

uint64_t MLS.OutgoingKickMember.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a6;
  v11 = type metadata accessor for Optional();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v11);
  v62 = &v56 - v13;
  *&v70 = a2;
  *(&v70 + 1) = a3;
  *&v71 = a4;
  *(&v71 + 1) = a5;
  type metadata accessor for MLS.OutgoingKickMember.CodingKeys();
  swift_getWitnessTable();
  v14 = type metadata accessor for KeyedDecodingContainer();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v58 = a4;
  v59 = a2;
  *&v70 = a2;
  *(&v70 + 1) = a3;
  *&v71 = a4;
  *(&v71 + 1) = a5;
  v63 = a5;
  v18 = type metadata accessor for MLS.OutgoingKickMember();
  v56 = *(v18 - 1);
  v19 = *(v56 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v56 - v20);
  v22 = a1[3];
  v23 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v66 = v17;
  v24 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v68);
  }

  v26 = v62;
  v25 = v63;
  v28 = v64;
  v27 = v65;
  LOBYTE(v70) = 0;
  *v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v21[1] = v30;
  LOBYTE(v70) = 1;
  v21[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v21[3] = v31;
  LOBYTE(v70) = 2;
  v32 = *(v25 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v67 = 0;
  (*(v60 + 32))(v21 + v18[14], v26, v61);
  v72 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  v33 = v67;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v67 = v33;
  if (v33)
  {
    (*(v28 + 8))(v66, v27);
    v34 = 0;
    v35 = v21;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    v36 = v35[1];

    v41 = v35[3];

    v37 = 0;
    v38 = 0;
    goto LABEL_7;
  }

  *(v21 + v18[15]) = v70;
  v72 = 4;
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  v46 = v67;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v67 = v46;
  v35 = v21;
  if (v46)
  {
    (*(v28 + 8))(v66, v27);
    v34 = 1;
    goto LABEL_6;
  }

  v47 = *(&v70 + 1);
  v48 = v21 + v18[16];
  *v48 = v70;
  *(v48 + 1) = v47;
  *(v48 + 1) = v71;
  v49 = v58;
  v50 = *(v58 + 24);
  type metadata accessor for Set();
  v72 = 5;
  v69 = *(v49 + 8);
  swift_getWitnessTable();
  v51 = v67;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v38 = v51 == 0;
  v67 = v51;
  if (!v51)
  {
    *(v21 + v18[17]) = v70;
    v72 = 6;
    lazy protocol witness table accessor for type Data and conformance Data();
    v52 = v67;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (!v52)
    {
      *(v21 + v18[18]) = v70;
      v72 = 7;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      *(v21 + v18[19]) = v70;
      v72 = 8;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v67 = 0;
      (*(v64 + 8))(v66, v65);
      *(v21 + v18[20]) = v70;
      v55 = v56;
      (*(v56 + 16))(v57, v21, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      return (*(v55 + 8))(v21, v18);
    }

    v67 = v52;
  }

  (*(v64 + 8))(v66, v65);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  v53 = v21[1];

  v54 = v21[3];

  v34 = 1;
  v37 = 1;
LABEL_7:
  result = (*(v60 + 8))(v35 + v18[14], v61);
  if (v34)
  {
    v39 = *(v35 + v18[15]);

    if ((v37 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v42 = (v35 + v18[16]);
    v43 = v42[1];
    v44 = v42[2];
    v45 = v42[3];

    result = outlined consume of Data._Representation(v44, v45);
    if (v38)
    {
      goto LABEL_10;
    }

    return result;
  }

  if (v37)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (v38)
  {
LABEL_10:
    v40 = *(v35 + v18[17]);
  }

  return result;
}

__n128 MLS.OutgoingKickMember.init(identifier:storageIdentifier:clientContext:metricCollector:commit:members:epochAuthenticator:ratchetTree:groupInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = *a6;
  v28 = *a7;
  v18 = a7[1].n128_u64[0];
  v19 = a7[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v20 = type metadata accessor for MLS.OutgoingKickMember();
  v21 = v20[14];
  v22 = type metadata accessor for Optional();
  (*(*(v22 - 8) + 32))(&a9[v21], a5, v22);
  *&a9[v20[15]] = v17;
  v23 = &a9[v20[16]];
  result = v28;
  *v23 = v28;
  v23[1].n128_u64[0] = v18;
  v23[1].n128_u64[1] = v19;
  *&a9[v20[17]] = a8;
  v25 = &a9[v20[18]];
  *v25 = a10;
  *(v25 + 1) = a11;
  v26 = &a9[v20[19]];
  *v26 = a12;
  *(v26 + 1) = a13;
  v27 = &a9[v20[20]];
  *v27 = a14;
  *(v27 + 1) = a15;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingProposalCommitted<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingProposalCommitted<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingRemoveSelf.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61736F706F7270 && a2 == 0xE800000000000000)
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

unint64_t MLS.OutgoingRemoveSelf.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  v3 = 0x6F4363697274656DLL;
  if (a1 != 3)
  {
    v3 = 0x6C61736F706F7270;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.OutgoingRemoveSelf.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.OutgoingRemoveSelf.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = specialized MLS.IncomingApplicationMessage.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.OutgoingKeyUpdate<A>.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = specialized MLS.OutgoingProposalCommitted.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingKeyUpdate<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingKeyUpdate<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingResync.identifier.getter()
{
  v0 = specialized MLS.IncomingEventType.identifier.getter();

  return v0;
}

uint64_t MLS.OutgoingResync.storageIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.OutgoingKickMember.epochAuthenticator.getter(uint64_t a1, void (*a2)(void, void))
{
  v3 = (v2 + *(a1 + 72));
  v4 = *v3;
  a2(*v3, v3[1]);
  return v4;
}

uint64_t MLS.OutgoingProposalCommitted.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D6D6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x666E4970756F7267 && a2 == 0xE90000000000006FLL)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t MLS.OutgoingProposalCommitted.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x5474656863746172;
  if (a1 != 6)
  {
    v2 = 0x666E4970756F7267;
  }

  v3 = 0x74696D6D6F63;
  if (a1 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x6F43746E65696C63;
  if (a1 != 2)
  {
    v4 = 0x6F4363697274656DLL;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingResync<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingResync<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingProposalCommitted.encode(to:)(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v5 = *(a2 + 40);
  v38 = *(a2 + 16);
  v34 = *(a2 + 24);
  v39 = v34;
  v35 = v5;
  v40 = v5;
  a3(255, &v38);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v36;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v38) = 0;
  v15 = v37;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v17 = v35;
    v18 = v12[2];
    v19 = v12[3];
    LOBYTE(v38) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(a2 + 56);
    LOBYTE(v38) = 2;
    v21 = *(v17 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v38 = *(v12 + *(a2 + 60));
    v41 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v22 = (v12 + *(a2 + 64));
    v23 = v22[1];
    v25 = v22[2];
    v24 = v22[3];
    v38 = *v22;
    *&v39 = v23;
    *(&v39 + 1) = v25;
    v40 = v24;
    v41 = 4;

    outlined copy of Data._Representation(v25, v24);
    lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(&v39 + 1);
    v27 = v40;

    outlined consume of Data._Representation(v26, v27);
    v28 = (v12 + *(a2 + 68));
    v29 = v28[1];
    v38 = *v28;
    *&v39 = v29;
    v41 = 5;
    outlined copy of Data._Representation(v38, v29);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v38, v39);
    v30 = (v12 + *(a2 + 72));
    v31 = v30[1];
    v38 = *v30;
    *&v39 = v31;
    v41 = 6;
    outlined copy of Data?(v38, v31);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v38, v39);
    v32 = (v12 + *(a2 + 76));
    v33 = v32[1];
    v38 = *v32;
    *&v39 = v33;
    v41 = 7;
    outlined copy of Data._Representation(v38, v33);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v38, v39);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t MLS.OutgoingProposalCommitted.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, void (*a6)(uint64_t, __int128 *)@<X5>, uint64_t (*a7)(void, __int128 *)@<X7>, uint64_t a8@<X8>)
{
  v40 = a8;
  v15 = type metadata accessor for Optional();
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = *(v41 + 64);
  MEMORY[0x28223BE20](v15);
  v44 = &v39 - v17;
  *&v49 = a2;
  *(&v49 + 1) = a3;
  *&v50 = a4;
  *(&v50 + 1) = a5;
  a6(255, &v49);
  swift_getWitnessTable();
  v46 = type metadata accessor for KeyedDecodingContainer();
  v43 = *(v46 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v46);
  v20 = &v39 - v19;
  *&v49 = a2;
  *(&v49 + 1) = a3;
  *&v50 = a4;
  *(&v50 + 1) = a5;
  v45 = a5;
  v21 = a7(0, &v49);
  v39 = *(v21 - 1);
  v22 = *(v39 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v39 - v23);
  v26 = a1[3];
  v25 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  v29 = v44;
  v28 = v45;
  v30 = v43;
  LOBYTE(v49) = 0;
  *v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v24[1] = v31;
  LOBYTE(v49) = 1;
  v24[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v24[3] = v32;
  LOBYTE(v49) = 2;
  v33 = *(v28 + 1);
  v45 = v20;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v41 + 32))(v24 + v21[14], v29, v42);
  v51 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v24 + v21[15]) = v49;
  v51 = 4;
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LODWORD(v47) = 1;
  v34 = *(&v49 + 1);
  v35 = v24 + v21[16];
  *v35 = v49;
  *(v35 + 1) = v34;
  *(v35 + 1) = v50;
  v51 = 5;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v24 + v21[17]) = v49;
  v51 = 6;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v24 + v21[18]) = v49;
  v51 = 7;
  v36 = v45;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 8))(v36, v46);
  *(v24 + v21[19]) = v49;
  v37 = v39;
  (*(v39 + 16))(v40, v24, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  return (*(v37 + 8))(v24, v21);
}

__n128 MLS.OutgoingProposalCommitted.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t (*a19)(void, void *))
{
  v21 = *a6;
  v32 = *a7;
  v22 = a7[1].n128_u64[0];
  v23 = a7[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v34[0] = a15;
  v34[1] = a16;
  v34[2] = a17;
  v34[3] = a18;
  v24 = a19(0, v34);
  v25 = v24[14];
  v26 = type metadata accessor for Optional();
  (*(*(v26 - 8) + 32))(&a9[v25], a5, v26);
  *&a9[v24[15]] = v21;
  v27 = &a9[v24[16]];
  result = v32;
  *v27 = v32;
  v27[1].n128_u64[0] = v22;
  v27[1].n128_u64[1] = v23;
  v29 = &a9[v24[17]];
  *v29 = a8;
  *(v29 + 1) = a10;
  v30 = &a9[v24[18]];
  *v30 = a11;
  *(v30 + 1) = a12;
  v31 = &a9[v24[19]];
  *v31 = a13;
  *(v31 + 1) = a14;
  return result;
}

uint64_t MLS.OutgoingFailureToDecrypt_v2.failedIdentifier.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t MLS.OutgoingFailureToDecrypt_v2.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265626D656DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651E9990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E99B0 == a2)
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

unint64_t MLS.OutgoingFailureToDecrypt_v2.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000010;
  if (a1 != 5)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0x6F4363697274656DLL;
  if (a1 != 3)
  {
    v3 = 0x7265626D656DLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000011;
  if (a1 != 1)
  {
    v4 = 0x6F43746E65696C63;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingFailureToDecrypt_v2<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingFailureToDecrypt_v2<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingFailureToDecrypt_v2.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v30 = *(a2 + 16);
  v31 = v6;
  v36 = v30;
  v37 = v4;
  v32 = v5;
  v33 = v4;
  v38 = v5;
  v39 = v6;
  type metadata accessor for MLS.OutgoingFailureToDecrypt_v2.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v7;
  v14 = v34;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v36) = 0;
  v17 = v35;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v17)
  {
    v18 = v31;
    v19 = v32;
    v20 = v14[2];
    v21 = v14[3];
    LOBYTE(v36) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(a2 + 56);
    LOBYTE(v36) = 2;
    v24 = *(v18 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v36 = *(v14 + *(a2 + 60));
    v40 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v25 = *(a2 + 64);
    LOBYTE(v36) = 4;
    v26 = *(v19 + 16);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = (v14 + *(a2 + 68));
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v36) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = *(v14 + *(a2 + 72));
    v40 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v13);
}

uint64_t MLS.OutgoingFailureToDecrypt_v2.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a6;
  v62 = *(a2 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](a1);
  v61 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Optional();
  v63 = *(v68 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v68);
  v64 = &v55 - v14;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  type metadata accessor for MLS.OutgoingFailureToDecrypt_v2.CodingKeys();
  swift_getWitnessTable();
  v69 = type metadata accessor for KeyedDecodingContainer();
  v67 = *(v69 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v17 = &v55 - v16;
  v72 = a2;
  v73 = a3;
  v65 = a3;
  v66 = a5;
  v60 = a4;
  v74 = a4;
  v75 = a5;
  v18 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2();
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v55 - v20);
  v22 = a1[3];
  v23 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = v70;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  v25 = v64;
  v26 = v66;
  v57 = v18;
  v70 = v21;
  v27 = v68;
  LOBYTE(v72) = 0;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v17;
  v31 = v70;
  *v70 = v28;
  *(v31 + 1) = v32;
  LOBYTE(v72) = 1;
  v56 = v30;
  *(v31 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v31 + 3) = v33;
  LOBYTE(v72) = 2;
  v34 = *(v26 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v35 = v57;
  (*(v63 + 32))(&v31[v57[14]], v25, v27);
  v76 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v31[v35[15]] = v72;
  LOBYTE(v72) = 4;
  v36 = v61;
  v37 = *(v60 + 8);
  v38 = a2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v66 = 0;
  v39 = v62;
  (*(v62 + 32))(&v31[v35[16]], v36, v38);
  LOBYTE(v72) = 5;
  v46 = v66;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v66 = v46;
  v49 = v63;
  v50 = v67;
  if (v46)
  {
    (*(v67 + 8))(v56, v69);
    v51 = 0;
  }

  else
  {
    v52 = &v31[v35[17]];
    *v52 = v47;
    v52[1] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v76 = 6;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    v53 = v66;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v66 = v53;
    if (!v53)
    {
      (*(v50 + 8))(v56, v69);
      *&v31[v35[18]] = v72;
      v54 = v58;
      (*(v58 + 16))(v59, v31, v35);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      return (*(v54 + 8))(v31, v35);
    }

    (*(v50 + 8))(v56, v69);
    v51 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  v40 = v70;
  v41 = v70[1];

  v42 = v40[3];

  v43 = v57;
  (*(v49 + 8))(v40 + v57[14], v68);
  v44 = *(v40 + v43[15]);

  result = (*(v39 + 8))(v70 + v43[16], v38);
  if (v51)
  {
    v45 = *(v70 + v43[17] + 8);
  }

  return result;
}

uint64_t MLS.OutgoingFailureToDecrypt_v2.init(identifier:storageIdentifier:clientContext:metricCollector:member:failedIdentifier:failedIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *a6;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v16 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2();
  v17 = v16[14];
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 32))(&a9[v17], a5, v18);
  *&a9[v16[15]] = v15;
  result = (*(*(a12 - 8) + 32))(&a9[v16[16]], a7, a12);
  v20 = &a9[v16[17]];
  *v20 = a8;
  *(v20 + 1) = a10;
  *&a9[v16[18]] = a11;
  return result;
}

uint64_t MLS.OutgoingFailureToDecrypt.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E99B0 == a2)
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

unint64_t MLS.OutgoingFailureToDecrypt.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  v3 = 0x6F4363697274656DLL;
  if (a1 != 3)
  {
    v3 = 0xD000000000000011;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.OutgoingFailureToDecrypt<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.OutgoingFailureToDecrypt.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingFailureToDecrypt<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.OutgoingFailureToDecrypt.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingFailureToDecrypt<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingFailureToDecrypt<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingFailureToDecrypt.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = v4;
  type metadata accessor for MLS.OutgoingFailureToDecrypt.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v5;
  v12 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v28) = 0;
  v15 = v26;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v16 = v23;
    v17 = v12[2];
    v18 = v12[3];
    LOBYTE(v28) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(a2 + 40);
    LOBYTE(v28) = 2;
    v21 = *(v16 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28 = *(v12 + *(a2 + 44));
    v27 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v28 = *(v12 + *(a2 + 48));
    v27 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v11);
}

uint64_t MLS.OutgoingFailureToDecrypt.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v34 = v29 - v10;
  type metadata accessor for MLS.OutgoingFailureToDecrypt.CodingKeys();
  swift_getWitnessTable();
  v38 = type metadata accessor for KeyedDecodingContainer();
  v36 = *(v38 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v13 = v29 - v12;
  v35 = a3;
  v14 = type metadata accessor for MLS.OutgoingFailureToDecrypt();
  v30 = *(v14 - 1);
  v15 = *(v30 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v29 - v16);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v13;
  v19 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v34;
  v20 = v35;
  v29[2] = a2;
  v39 = v17;
  LOBYTE(v41) = 0;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = v39;
  *v39 = v22;
  *(v23 + 1) = v24;
  v29[1] = v24;
  LOBYTE(v41) = 1;
  *(v23 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v23 + 3) = v25;
  LOBYTE(v41) = 2;
  v26 = *(v20 + 8);
  v35 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v33 + 32))(&v23[v14[10]], v21, v32);
  v40 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v23[v14[11]] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v40 = 4;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v36 + 8))(v37, v38);
  *&v23[v14[12]] = v41;
  v27 = v30;
  (*(v30 + 16))(v31, v23, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v27 + 8))(v23, v14);
}

uint64_t MLS.OutgoingFailureToDecrypt.init(identifier:storageIdentifier:clientContext:metricCollector:failedIdentifiers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v11 = *a6;
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v12 = type metadata accessor for MLS.OutgoingFailureToDecrypt();
  v13 = v12[10];
  v14 = type metadata accessor for Optional();
  result = (*(*(v14 - 8) + 32))(&a8[v13], a5, v14);
  *&a8[v12[11]] = v11;
  *&a8[v12[12]] = a7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingRecreateGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingRecreateGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingResurrectGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingResurrectGroup<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

__n128 MLS.OutgoingReplaceExpiredCredentials.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __int128 *a7@<X6>, __n128 *a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void, void *))
{
  v23 = *a6;
  v24 = *a7;
  v25 = *(a7 + 2);
  v26 = *(a7 + 3);
  v38 = *a7;
  v39 = *a8;
  v27 = a8[1].n128_u64[0];
  v28 = a8[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v40[0] = a17;
  v40[1] = a18;
  v40[2] = a19;
  v40[3] = a20;
  v29 = a21(0, v40);
  v30 = v29[14];
  v31 = type metadata accessor for Optional();
  (*(*(v31 - 8) + 32))(&a9[v30], a5, v31);
  *&a9[v29[15]] = v23;
  v32 = &a9[v29[16]];
  result = v39;
  *v32 = v38;
  *(v32 + 2) = v25;
  *(v32 + 3) = v26;
  v34 = &a9[v29[17]];
  *v34 = v39;
  v34[1].n128_u64[0] = v27;
  v34[1].n128_u64[1] = v28;
  *&a9[v29[18]] = a10;
  v35 = &a9[v29[19]];
  *v35 = a11;
  *(v35 + 1) = a12;
  v36 = &a9[v29[20]];
  *v36 = a13;
  *(v36 + 1) = a14;
  v37 = &a9[v29[21]];
  *v37 = a15;
  *(v37 + 1) = a16;
  return result;
}

uint64_t MLS.OutgoingApplicationSend.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
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

unint64_t MLS.OutgoingApplicationSend.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  v3 = 0x6F4363697274656DLL;
  if (a1 != 3)
  {
    v3 = 0x6567617373656DLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.OutgoingApplicationSend<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.OutgoingApplicationSend.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingApplicationSend<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.OutgoingApplicationSend.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingApplicationSend<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingApplicationSend<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingRemoveSelf.encode(to:)(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v29[0] = *(a2 + 24);
  v29[1] = v5;
  a3(255);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v6;
  v13 = v29[2];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v30) = 0;
  v16 = v29[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    v17 = v29[0];
    v18 = v13[2];
    v19 = v13[3];
    LOBYTE(v30) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(a2 + 40);
    LOBYTE(v30) = 2;
    v22 = *(v17 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = *(v13 + *(a2 + 44));
    v34 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v23 = (v13 + *(a2 + 48));
    v24 = v23[1];
    v26 = v23[2];
    v25 = v23[3];
    v30 = *v23;
    v31 = v24;
    v32 = v26;
    v33 = v25;
    v34 = 4;

    outlined copy of Data._Representation(v26, v25);
    lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v32;
    v28 = v33;

    outlined consume of Data._Representation(v27, v28);
  }

  return (*(v7 + 8))(v10, v12);
}

uint64_t MLS.OutgoingRemoveSelf.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v35 = a6;
  v11 = type metadata accessor for Optional();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v39 = &v33 - v13;
  a4(255, a2, a3);
  swift_getWitnessTable();
  v43 = type metadata accessor for KeyedDecodingContainer();
  v38 = *(v43 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](v43);
  v16 = &v33 - v15;
  v40 = a2;
  v41 = a3;
  v17 = a5(0, a2, a3);
  v34 = *(v17 - 1);
  v18 = *(v34 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v33 - v19);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v16;
  v22 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = v41;
  v25 = v38;
  v24 = v39;
  LOBYTE(v45) = 0;
  *v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v20[1] = v26;
  v44 = v26;
  LOBYTE(v45) = 1;
  v20[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v20[3] = v27;
  LOBYTE(v45) = 2;
  v28 = *(v23 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v36 + 32))(v20 + v17[10], v24, v37);
  v48 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v20 + v17[11]) = v45;
  v48 = 4;
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v25 + 8))(v42, v43);
  v29 = v46;
  v30 = v20 + v17[12];
  *v30 = v45;
  *(v30 + 1) = v29;
  *(v30 + 1) = v47;
  v31 = v34;
  (*(v34 + 16))(v35, v20, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v31 + 8))(v20, v17);
}

unint64_t _s15SecureMessaging3MLSO17OutgoingKeyUpdateV10CodingKeys33_6805464A40D5A82B3B26E3A825F35D96LLOy_x_Gs0gE0AAsAJP11stringValueSSvgTW_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.OutgoingProposalCommitted.CodingKeys.stringValue.getter(*v1);
}

uint64_t _s15SecureMessaging3MLSO17OutgoingKeyUpdateV10CodingKeys33_6805464A40D5A82B3B26E3A825F35D96LLOy_x_Gs0gE0AAsAJP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.OutgoingProposalCommitted.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingDowngrade<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingDowngrade<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingKeyUpdate.encode(to:)(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  v34[0] = *(a2 + 24);
  v34[1] = v5;
  a3(255);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v34[2];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v35) = 0;
  v15 = v34[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v16 = v34[0];
    v17 = v12[2];
    v18 = v12[3];
    LOBYTE(v35) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = *(a2 + 40);
    LOBYTE(v35) = 2;
    v21 = *(v16 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v35 = *(v12 + *(a2 + 44));
    v39 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v22 = (v12 + *(a2 + 48));
    v23 = v22[1];
    v25 = v22[2];
    v24 = v22[3];
    v35 = *v22;
    v36 = v23;
    v37 = v25;
    v38 = v24;
    v39 = 4;

    outlined copy of Data._Representation(v25, v24);
    lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = v37;
    v27 = v38;

    outlined consume of Data._Representation(v26, v27);
    v28 = (v12 + *(a2 + 52));
    v29 = v28[1];
    v35 = *v28;
    v36 = v29;
    v39 = 5;
    outlined copy of Data._Representation(v35, v29);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v35, v36);
    v30 = (v12 + *(a2 + 56));
    v31 = v30[1];
    v35 = *v30;
    v36 = v31;
    v39 = 6;
    outlined copy of Data?(v35, v31);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v35, v36);
    v32 = (v12 + *(a2 + 60));
    v33 = v32[1];
    v35 = *v32;
    v36 = v33;
    v39 = 7;
    outlined copy of Data._Representation(v35, v33);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v35, v36);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t MLS.OutgoingKeyUpdate.init(from:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, int *, uint64_t)@<X3>, uint64_t (*a5)(void, int *, uint64_t)@<X5>, uint64_t a6@<X8>)
{
  v53 = a6;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v54 = v11;
  v55 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v57 = &v52 - v14;
  a4(255, a2, a3);
  swift_getWitnessTable();
  v60 = type metadata accessor for KeyedDecodingContainer();
  v56 = *(v60 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v60);
  v17 = &v52 - v16;
  v58 = a2;
  v59 = a3;
  v18 = a5(0, a2, a3);
  v52 = *(v18 - 1);
  v19 = *(v52 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v52 - v20);
  v22 = a1[3];
  v23 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v61 = v17;
  v24 = v62;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  v25 = v59;
  v27 = v56;
  v26 = v57;
  LOBYTE(v64) = 0;
  v28 = v60;
  *v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v21[1] = v30;
  LOBYTE(v64) = 1;
  v21[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v21[3] = v31;
  LOBYTE(v64) = 2;
  v32 = *(v25 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v62 = 0;
  (*(v55 + 32))(v21 + v18[10], v26, v54);
  v66 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  v33 = v62;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v62 = v33;
  if (v33)
  {
    (*(v27 + 8))(v61, v28);
    v34 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    v35 = v21[1];

    v36 = v21[3];

    v37 = 0;
    v38 = 0;
  }

  else
  {
    *(v21 + v18[11]) = v64;
    v66 = 4;
    lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
    v44 = v62;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LODWORD(v59) = v44 == 0;
    v62 = v44;
    if (v44)
    {
      (*(v27 + 8))(v61, v28);
    }

    else
    {
      v45 = *(&v64 + 1);
      v46 = v21 + v18[12];
      *v46 = v64;
      *(v46 + 1) = v45;
      *(v46 + 1) = v65;
      v66 = 5;
      lazy protocol witness table accessor for type Data and conformance Data();
      v47 = v62;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      if (!v47)
      {
        *(v21 + v18[13]) = v64;
        v66 = 6;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v58 = v18;
        *(v21 + v18[14]) = v64;
        v66 = 7;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v62 = 0;
        (*(v27 + 8))(v61, v60);
        v50 = v58;
        *(v21 + v58[15]) = v64;
        v51 = v52;
        (*(v52 + 16))(v53, v21, v50);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        return (*(v51 + 8))(v21, v50);
      }

      v62 = v47;
      (*(v27 + 8))(v61, v60);
    }

    v34 = v18;
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    v48 = v21[1];

    v49 = v21[3];

    v37 = 1;
    v38 = v59;
  }

  result = (*(v55 + 8))(v21 + v34[10], v54);
  if (v37)
  {
    v39 = *(v21 + v34[11]);

    if ((v38 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    v40 = (v21 + v34[12]);
    v41 = v40[1];
    v42 = v40[2];
    v43 = v40[3];

    return outlined consume of Data._Representation(v42, v43);
  }

  if (v38)
  {
    goto LABEL_10;
  }

  return result;
}

__n128 MLS.OutgoingKeyUpdate.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(void, uint64_t, uint64_t))
{
  v19 = *a6;
  v30 = *a7;
  v20 = a7[1].n128_u64[0];
  v21 = a7[1].n128_u64[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v22 = a17(0, a15, a16);
  v23 = v22[10];
  v24 = type metadata accessor for Optional();
  (*(*(v24 - 8) + 32))(&a9[v23], a5, v24);
  *&a9[v22[11]] = v19;
  v25 = &a9[v22[12]];
  result = v30;
  *v25 = v30;
  v25[1].n128_u64[0] = v20;
  v25[1].n128_u64[1] = v21;
  v27 = &a9[v22[13]];
  *v27 = a8;
  *(v27 + 1) = a10;
  v28 = &a9[v22[14]];
  *v28 = a11;
  *(v28 + 1) = a12;
  v29 = &a9[v22[15]];
  *v29 = a13;
  *(v29 + 1) = a14;
  return result;
}

uint64_t MLS.OutgoingRemoveSelf.clientContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t MLS.OutgoingRemoveSelf.proposal.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 48));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;

  return outlined copy of Data._Representation(v5, v6);
}

uint64_t MLS.OutgoingKeyUpdate.epochAuthenticator.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 52);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.OutgoingKeyUpdate.ratchetTree.getter(uint64_t a1, void (*a2)(void, void))
{
  v3 = (v2 + *(a1 + 56));
  v4 = *v3;
  a2(*v3, v3[1]);
  return v4;
}

uint64_t MLS.OutgoingKeyUpdate.groupInfo.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 60);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.OutgoingGroupNameChange.ratchetTree.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 64);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.OutgoingProposalCommitted.epochAuthenticator.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 68);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.OutgoingGroupNameChange.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D6D6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002651E99D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E99F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x666E4970756F7267 && a2 == 0xE90000000000006FLL)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t MLS.OutgoingGroupNameChange.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x5474656863746172;
    if (a1 != 8)
    {
      v5 = 0x666E4970756F7267;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000015;
    if (a1 != 5)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6F43746E65696C63;
    v3 = 0x6F4363697274656DLL;
    if (a1 != 3)
    {
      v3 = 0x74696D6D6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
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
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.OutgoingRemoveSelf<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.OutgoingGroupNameChange<A>.CodingKeys(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return MLS.OutgoingGroupNameChange.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingGroupNameChange<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.OutgoingGroupNameChange.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.OutgoingGroupNameChange<A>.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = specialized MLS.IncomingEventType.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingGroupNameChange<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingGroupNameChange<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingGroupNameChange.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v37[0] = *(a2 + 24);
  v37[1] = v4;
  type metadata accessor for MLS.OutgoingGroupNameChange.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v37[2];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v38) = 0;
  v14 = v37[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = v37[0];
    v16 = v11[2];
    v17 = v11[3];
    LOBYTE(v38) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(a2 + 40);
    LOBYTE(v38) = 2;
    v19 = *(v15 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v38 = *(v11 + *(a2 + 44));
    v42 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v20 = (v11 + *(a2 + 48));
    v21 = v20[1];
    v23 = v20[2];
    v22 = v20[3];
    v38 = *v20;
    v39 = v21;
    v40 = v23;
    v41 = v22;
    v42 = 4;

    outlined copy of Data._Representation(v23, v22);
    lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = v40;
    v25 = v41;

    outlined consume of Data._Representation(v24, v25);
    v26 = (v11 + *(a2 + 52));
    v27 = v26[1];
    v38 = *v26;
    v39 = v27;
    v42 = 5;
    outlined copy of Data._Representation(v38, v27);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v38, v39);
    v28 = (v11 + *(a2 + 56));
    v29 = v28[1];
    v38 = *v28;
    v39 = v29;
    v42 = 6;
    outlined copy of Data._Representation(v38, v29);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v38, v39);
    v30 = (v11 + *(a2 + 60));
    v31 = v30[1];
    v38 = *v30;
    v39 = v31;
    v42 = 7;
    outlined copy of Data._Representation(v38, v31);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v38, v39);
    v33 = (v11 + *(a2 + 64));
    v34 = v33[1];
    v38 = *v33;
    v39 = v34;
    v42 = 8;
    outlined copy of Data?(v38, v34);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v38, v39);
    v35 = (v11 + *(a2 + 68));
    v36 = v35[1];
    v38 = *v35;
    v39 = v36;
    v42 = 9;
    outlined copy of Data._Representation(v38, v36);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v38, v39);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MLS.OutgoingGroupNameChange.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for Optional();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v30 - v7;
  type metadata accessor for MLS.OutgoingGroupNameChange.CodingKeys();
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedDecodingContainer();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v37 = a2;
  v12 = type metadata accessor for MLS.OutgoingGroupNameChange();
  v32 = *(v12 - 1);
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v30 - v14);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v11;
  v17 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v36;
  v18 = v37;
  v31 = a1;
  v41 = v15;
  LOBYTE(v42) = 0;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v41;
  *v41 = v20;
  *(v21 + 1) = v22;
  LOBYTE(v42) = 1;
  *(v21 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v21 + 3) = v23;
  LOBYTE(v42) = 2;
  v24 = *(v18 + 8);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v37 = 0;
  (*(v34 + 32))(&v21[v12[10]], v19, v35);
  v44 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v21[v12[11]] = v42;
  v44 = 4;
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = *(&v42 + 1);
  v26 = &v21[v12[12]];
  *v26 = v42;
  *(v26 + 1) = v25;
  *(v26 + 1) = v43;
  v44 = 5;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v21[v12[13]] = v42;
  v44 = 6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LODWORD(v37) = 1;
  *&v21[v12[14]] = v42;
  v44 = 7;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v21[v12[15]] = v42;
  v44 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v12[16]] = v42;
  v44 = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v38 + 8))(v40, v39);
  v27 = v41;
  *(v41 + v12[17]) = v42;
  v28 = v32;
  (*(v32 + 16))(v33, v27, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return (*(v28 + 8))(v27, v12);
}

uint64_t MLS.OutgoingCreateGroup.commit.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;

  return outlined copy of Data._Representation(v5, v6);
}

uint64_t MLS.OutgoingCreateGroup.welcome.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 68));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;

  return outlined copy of Data._Representation(v5, v6);
}

uint64_t MLS.OutgoingCreateGroup.epochAuthenticator.getter(uint64_t a1, void (*a2)(void, void))
{
  v3 = (v2 + *(a1 + 76));
  v4 = *v3;
  a2(*v3, v3[1]);
  return v4;
}

uint64_t MLS.OutgoingCreateGroup.ratchetTree.getter(uint64_t a1, void (*a2)(void, void))
{
  v3 = (v2 + *(a1 + 80));
  v4 = *v3;
  a2(*v3, v3[1]);
  return v4;
}

uint64_t MLS.OutgoingCreateGroup.groupInfo.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 84);
  v3 = *v2;
  outlined copy of Data._Representation(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.OutgoingCreateGroup.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696D6D6F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D6F636C6577 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x666E4970756F7267 && a2 == 0xE90000000000006FLL)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t MLS.OutgoingCreateGroup.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x5474656863746172;
    if (a1 != 8)
    {
      v5 = 0x666E4970756F7267;
    }

    if (a1 == 7)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0x656D6F636C6577;
    if (a1 != 5)
    {
      v7 = 0x737265626D656DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6F43746E65696C63;
    v3 = 0x6F4363697274656DLL;
    if (a1 != 3)
    {
      v3 = 0x74696D6D6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
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
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingReplaceExpiredCredentials<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingReplaceExpiredCredentials<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingCreateGroup.encode(to:)(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v4 = v3;
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v48 = *(a2 + 16);
  v49 = v9;
  v55 = v48;
  v56 = v7;
  v50 = v8;
  v51 = v7;
  v57 = v8;
  v58 = v9;
  a3(255, &v55);
  swift_getWitnessTable();
  v10 = type metadata accessor for KeyedEncodingContainer();
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v10;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v4;
  v17 = v4[1];
  LOBYTE(v55) = 0;
  v18 = v53;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v18)
  {
    return (*(v52 + 8))(v13, v10);
  }

  v21 = v49;
  v20 = v50;
  v22 = v52;
  v23 = v4[2];
  v24 = v4[3];
  LOBYTE(v55) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v25 = *(a2 + 56);
  LOBYTE(v55) = 2;
  v26 = *(v21 + 16);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v27 = *(a2 + 60);
  v53 = v4;
  v55 = *(v4 + v27);
  v59 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v28 = (v53 + *(a2 + 64));
  v29 = v28[1];
  v31 = v28[2];
  v30 = v28[3];
  v55 = *v28;
  v56 = v29;
  v57 = v31;
  v58 = v30;
  v59 = 4;

  outlined copy of Data._Representation(v31, v30);
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v32 = v57;
  v33 = v58;

  outlined consume of Data._Representation(v32, v33);
  v34 = (v53 + *(a2 + 68));
  v35 = v34[1];
  v37 = v34[2];
  v36 = v34[3];
  v55 = *v34;
  v56 = v35;
  v57 = v37;
  v58 = v36;
  v59 = 5;

  outlined copy of Data._Representation(v37, v36);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v38 = v57;
  v39 = v58;

  outlined consume of Data._Representation(v38, v39);
  v55 = *(v53 + *(a2 + 72));
  v59 = 6;
  v40 = *(v20 + 24);
  type metadata accessor for Set();
  v54 = *(v20 + 16);
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v41 = (v53 + *(a2 + 76));
  v42 = v41[1];
  v55 = *v41;
  v56 = v42;
  v59 = 7;
  outlined copy of Data._Representation(v55, v42);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v55, v56);
  v43 = (v53 + *(a2 + 80));
  v44 = v43[1];
  v55 = *v43;
  v56 = v44;
  v59 = 8;
  outlined copy of Data?(v55, v44);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v55, v56);
  v45 = (v53 + *(a2 + 84));
  v46 = v45[1];
  v55 = *v45;
  v56 = v46;
  v59 = 9;
  outlined copy of Data._Representation(v55, v46);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v55, v56);
  return (*(v22 + 8))(v13, v15);
}

uint64_t MLS.OutgoingCreateGroup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, __int128 *)@<X5>, uint64_t (*a7)(void, __int128 *)@<X7>, uint64_t a8@<X8>)
{
  v64 = a8;
  v15 = type metadata accessor for Optional();
  v67 = *(v15 - 8);
  v68 = v15;
  v16 = *(v67 + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v61 - v17;
  *&v77 = a2;
  *(&v77 + 1) = a3;
  *&v78 = a4;
  *(&v78 + 1) = a5;
  a6(255, &v77);
  swift_getWitnessTable();
  v18 = type metadata accessor for KeyedDecodingContainer();
  v72 = *(v18 - 8);
  v73 = v18;
  v19 = *(v72 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  v65 = a4;
  v66 = a2;
  *&v77 = a2;
  *(&v77 + 1) = a3;
  v70 = a3;
  v71 = a5;
  *&v78 = a4;
  *(&v78 + 1) = a5;
  v22 = a7(0, &v77);
  v63 = *(v22 - 8);
  v23 = *(v63 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v61 - v24);
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v74 = v21;
  v27 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = v69;
  v29 = v71;
  v62 = v25;
  v75 = v22;
  LOBYTE(v77) = 0;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v62;
  *v62 = v30;
  *(v32 + 1) = v33;
  LOBYTE(v77) = 1;
  *(v32 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v32 + 3) = v34;
  LOBYTE(v77) = 2;
  v35 = *(v29 + 8);
  v71 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v36 = v75;
  (*(v67 + 32))(&v32[v75[14]], v28, v68);
  v79 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v32[v36[15]] = v77;
  v79 = 4;
  lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = *(&v77 + 1);
  v38 = &v32[v36[16]];
  *v38 = v77;
  *(v38 + 1) = v37;
  *(v38 + 1) = v78;
  v79 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v49 = *(&v77 + 1);
  v50 = &v32[v36[17]];
  *v50 = v77;
  *(v50 + 1) = v49;
  *(v50 + 1) = v78;
  v51 = v65;
  v52 = *(v65 + 24);
  type metadata accessor for Set();
  v79 = 6;
  v76 = *(v51 + 8);
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v32[v36[18]] = v77;
  v79 = 7;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v32[v75[19]] = v77;
  v79 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v71 = 0;
  *&v32[v75[20]] = v77;
  v79 = 9;
  v56 = v71;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v71 = v56;
  (*(v72 + 8))(v74, v73);
  if (v56)
  {
    v57 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v53 = v57[1];

    v54 = v57[3];

    v55 = v75;
    (*(v67 + 8))(v57 + v75[14], v68);
    v39 = *(v57 + v55[15]);

    v44 = (v57 + v55[16]);
    v45 = v44[1];
    v46 = v44[2];
    v47 = v44[3];

    outlined consume of Data._Representation(v46, v47);
    v40 = (v57 + v55[17]);
    v41 = v40[1];
    v42 = v40[2];
    v43 = v40[3];

    outlined consume of Data._Representation(v42, v43);
    v48 = *(v57 + v55[18]);

    outlined consume of Data._Representation(*(v57 + v55[19]), *(v57 + v55[19] + 8));
    return outlined consume of Data?(*(v57 + v55[20]), *(v57 + v55[20] + 8));
  }

  else
  {
    v58 = v75;
    v59 = v62;
    v60 = v63;
    *(v62 + v75[21]) = v77;
    (*(v60 + 16))(v64, v59, v58);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return (*(v60 + 8))(v59, v58);
  }
}

uint64_t MLS.OutgoingGroupRepaired.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
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

unint64_t MLS.OutgoingGroupRepaired.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F43746E65696C63;
  if (a1 != 2)
  {
    v2 = 0x6F4363697274656DLL;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingGroupRepaired<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingGroupRepaired<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingGroupRepaired.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v25 = *(a2 + 16);
  v21 = *(a2 + 24);
  v26 = v21;
  v22 = v4;
  v27 = v4;
  type metadata accessor for MLS.OutgoingGroupRepaired.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v23;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v11;
  v13 = v11[1];
  LOBYTE(v25) = 0;
  v14 = v24;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v14)
  {
    v15 = v22;
    v16 = v11[2];
    v17 = v11[3];
    LOBYTE(v25) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(a2 + 56);
    LOBYTE(v25) = 2;
    v20 = *(v15 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = *(v11 + *(a2 + 60));
    v28 = 3;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MLS.OutgoingGroupRepaired.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v42 = type metadata accessor for Optional();
  v45 = *(v42 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  v44 = v38 - v12;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  type metadata accessor for MLS.OutgoingGroupRepaired.CodingKeys();
  swift_getWitnessTable();
  v48 = type metadata accessor for KeyedDecodingContainer();
  v43 = *(v48 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v48);
  v15 = v38 - v14;
  v51 = a2;
  v52 = a3;
  v46 = a3;
  v47 = a5;
  v53 = a4;
  v54 = a5;
  v16 = type metadata accessor for MLS.OutgoingGroupRepaired();
  v40 = *(v16 - 8);
  v17 = *(v40 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v38 - v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v49 = v15;
  v21 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v23 = v43;
  v22 = v44;
  v24 = v47;
  v39 = v19;
  v50 = a1;
  v25 = v45;
  LOBYTE(v51) = 0;
  v26 = v48;
  v27 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v39;
  *v39 = v27;
  v28[1] = v29;
  v38[1] = v29;
  LOBYTE(v51) = 1;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v39;
  v39[2] = v30;
  v31[3] = v32;
  LOBYTE(v51) = 2;
  v33 = *(v24 + 8);
  v47 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v25 + 32))(v39 + *(v16 + 56), v22, v42);
  v55 = 3;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v50;
  (*(v23 + 8))(v49, v26);
  v36 = v39;
  v35 = v40;
  *(v39 + *(v16 + 60)) = v51;
  (*(v35 + 16))(v41, v36, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return (*(v35 + 8))(v36, v16);
}

uint64_t MLS.OutgoingGroupRepaired.init(identifier:storageIdentifier:clientContext:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v9 = *a6;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  v10 = type metadata accessor for MLS.OutgoingGroupRepaired();
  v11 = *(v10 + 56);
  v12 = type metadata accessor for Optional();
  result = (*(*(v12 - 8) + 32))(&a7[v11], a5, v12);
  *&a7[*(v10 + 60)] = v9;
  return result;
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.allMemberTrigger()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v13 + 16))(v12);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v15 = &v12[*(swift_getTupleTypeMetadata2() + 48)];
      *(v42 + 12) = *(v15 + 44);
      v16 = v15[1];
      v40 = *v15;
      v41 = v16;
      v42[0] = v15[2];
      (*(v5 + 32))(v9, v12, v4);
      (*(*(a1 + 32) + 40))(&v36, v4);
      result = (*(v5 + 8))(v9, v4);
      v17 = v37;
      v18 = v38;
      *&v39[7] = v40;
      *&v39[23] = v41;
      *&v39[39] = v42[0];
      *&v39[51] = *(v42 + 12);
      *a2 = v36;
      *(a2 + 16) = v17;
      *(a2 + 24) = v18;
      v19 = *&v39[16];
      *(a2 + 25) = *v39;
      v20 = *&v39[32];
      v21 = *&v39[48];
      *(a2 + 88) = *&v39[63];
      *(a2 + 73) = v21;
      *(a2 + 57) = v20;
      *(a2 + 41) = v19;
      v22 = 1;
    }

    else
    {
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0u;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v22 = 2;
    }

    *(a2 + 112) = v22;
  }

  else
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v24 = &v12[*(TupleTypeMetadata3 + 48)];
    *(v42 + 12) = *(v24 + 44);
    v25 = v24[1];
    v40 = *v24;
    v41 = v25;
    v42[0] = v24[2];
    v26 = &v12[*(TupleTypeMetadata3 + 64)];
    v27 = *v26;
    v28 = v26[1];
    (*(v5 + 32))(v9, v12, v4);
    (*(*(a1 + 32) + 40))(&v36, v4);
    result = (*(v5 + 8))(v9, v4);
    v29 = v37;
    v30 = v38;
    *&v35[7] = v40;
    *&v35[23] = v41;
    *&v35[39] = v42[0];
    *&v35[51] = *(v42 + 12);
    *a2 = v36;
    *(a2 + 16) = v29;
    *(a2 + 24) = v30;
    v31 = *&v35[16];
    *(a2 + 25) = *v35;
    v32 = *&v35[32];
    v33 = *&v35[48];
    *(a2 + 88) = *&v35[63];
    *(a2 + 73) = v33;
    *(a2 + 57) = v32;
    *(a2 + 41) = v31;
    *(a2 + 96) = v27;
    *(a2 + 104) = v28;
    *(a2 + 112) = 0;
  }

  return result;
}

uint64_t static MLS.OutgoingErrorOccurred.Trigger.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = *(a3 - 8);
  v4 = *(v93 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v88 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v78 - v7;
  v92 = v9;
  *&v108 = v9;
  *(&v108 + 1) = v10;
  v89 = v11;
  *&v109 = v11;
  *(&v109 + 1) = v12;
  v13 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = *(TupleTypeMetadata2 - 8);
  v22 = *(v91 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v24 = &v78 + *(TupleTypeMetadata2 + 48) - v23;
  v90 = v14;
  v25 = *(v14 + 16);
  v26 = &v78 - v23;
  v25();
  (v25)(v24, a2, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v88 = v8;
    v87 = v26;
    (v25)(v20, v26, v13);
    v50 = v92;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v52 = &v20[*(TupleTypeMetadata3 + 48)];
    *&v110[12] = *(v52 + 44);
    v53 = *(v52 + 1);
    v108 = *v52;
    v109 = v53;
    *v110 = *(v52 + 2);
    v54 = *(TupleTypeMetadata3 + 64);
    v56 = *&v20[v54];
    v55 = *&v20[v54 + 8];
    if (!swift_getEnumCaseMultiPayload())
    {
      v86 = v56;
      v91 = v55;
      v58 = &v24[*(TupleTypeMetadata3 + 48)];
      v59 = *(v58 + 1);
      v105 = *v58;
      v106 = v59;
      *v107 = *(v58 + 2);
      *&v107[12] = *(v58 + 44);
      v61 = *&v24[v54];
      v60 = *&v24[v54 + 8];
      v62 = v93;
      v63 = v88;
      (*(v93 + 32))(v88, v24, v50);
      v64 = *(*(v89 + 24) + 8);
      v65 = dispatch thunk of static Equatable.== infix(_:_:)();
      v66 = *(v62 + 8);
      v66(v20, v50);
      if (v65)
      {
        v89 = v61;
        v93 = v60;
        v84 = *(&v109 + 1);
        v85 = v109;
        v82 = *&v110[8];
        v83 = *v110;
        v81 = *&v110[16];
        v80 = *&v110[24];
        v67 = v106;
        v69 = *&v107[8];
        v68 = *v107;
        v70 = *&v107[16];
        v71 = *&v107[24];
        if (specialized static Data.== infix(_:_:)(v108, *(&v108 + 1), v105, *(&v105 + 1)))
        {
          v99 = v85;
          v100 = v84;
          v101 = v83;
          v102 = v82;
          v103 = v81;
          v104 = v80;
          v94 = v67;
          v95 = v68;
          v96 = v69;
          v97 = v70;
          v98 = v71;
          v78 = v68;
          v79 = v66;
          outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v85, v84, v83, v82, v81, v80, outlined copy of Data._Representation, outlined copy of Data?);
          outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v67, *(&v67 + 1), v78, v69, v70, v71, outlined copy of Data._Representation, outlined copy of Data?);
          v72 = specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(&v99, &v94);
          outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v94, *(&v94 + 1), v95, v96, v97, v98, outlined consume of Data._Representation, outlined consume of Data?);
          v66 = v79;
          outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v99, v100, v101, v102, v103, v104, outlined consume of Data._Representation, outlined consume of Data?);
          if (v72)
          {
            v73 = v86;
            v74 = v91;
            v75 = v89;
            v76 = v93;
            v57 = specialized static Data.== infix(_:_:)(v86, v91, v89, v93);
            outlined consume of Data._Representation(v75, v76);
            outlined consume of Data._Representation(v73, v74);
            outlined destroy of MLS.SigningInput(&v105);
            outlined destroy of MLS.SigningInput(&v108);
            v66(v88, v50);
            (*(v90 + 8))(v87, v13);
            return v57 & 1;
          }
        }

        outlined consume of Data._Representation(v89, v93);
        outlined consume of Data._Representation(v86, v91);
        outlined destroy of MLS.SigningInput(&v105);
        outlined destroy of MLS.SigningInput(&v108);
        v66(v88, v50);
        goto LABEL_25;
      }

      v66(v63, v50);
      outlined consume of Data._Representation(v61, v60);
      outlined destroy of MLS.SigningInput(&v105);
      outlined consume of Data._Representation(v86, v91);
LABEL_24:
      outlined destroy of MLS.SigningInput(&v108);
LABEL_25:
      v49 = v90;
      goto LABEL_26;
    }

    outlined consume of Data._Representation(v56, v55);
    outlined destroy of MLS.SigningInput(&v108);
    (*(v93 + 8))(v20, v50);
    v26 = v87;
LABEL_14:
    (*(v91 + 8))(v26, TupleTypeMetadata2);
LABEL_27:
    v57 = 0;
    return v57 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*(v90 + 8))(v26, v13);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  (v25)(v18, v26, v13);
  v28 = v92;
  v29 = swift_getTupleTypeMetadata2();
  v30 = &v18[*(v29 + 48)];
  *&v110[12] = *(v30 + 44);
  v31 = *(v30 + 1);
  v108 = *v30;
  v109 = v31;
  *v110 = *(v30 + 2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of MLS.SigningInput(&v108);
    (*(v93 + 8))(v18, v28);
    goto LABEL_14;
  }

  v87 = v26;
  v32 = &v24[*(v29 + 48)];
  v33 = *(v32 + 1);
  v105 = *v32;
  v106 = v33;
  *v107 = *(v32 + 2);
  *&v107[12] = *(v32 + 44);
  v34 = v93;
  v35 = v88;
  (*(v93 + 32))(v88, v24, v28);
  v36 = *(*(v89 + 24) + 8);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v34 + 8);
  v39 = v34 + 8;
  v38 = v40;
  v40(v18, v28);
  if ((v37 & 1) == 0)
  {
    v38(v35, v28);
LABEL_23:
    outlined destroy of MLS.SigningInput(&v105);
    goto LABEL_24;
  }

  v93 = v39;
  v41 = *(&v109 + 1);
  v91 = v109;
  v89 = *&v110[8];
  v42 = *v110;
  v86 = *&v110[16];
  LODWORD(v85) = *&v110[24];
  v43 = v106;
  v45 = *&v107[8];
  v44 = *v107;
  v46 = *&v107[16];
  v47 = *&v107[24];
  if ((specialized static Data.== infix(_:_:)(v108, *(&v108 + 1), v105, *(&v105 + 1)) & 1) == 0)
  {
    v38(v88, v92);
    goto LABEL_23;
  }

  v99 = v91;
  v100 = v41;
  v101 = v42;
  v102 = v89;
  v103 = v86;
  v104 = v85;
  v94 = v43;
  v95 = v44;
  v96 = v45;
  v97 = v46;
  v98 = v47;
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v91, v41, v42, v89, v86, v85, outlined copy of Data._Representation, outlined copy of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v43, *(&v43 + 1), v44, v45, v46, v47, outlined copy of Data._Representation, outlined copy of Data?);
  v48 = specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(&v99, &v94);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v94, *(&v94 + 1), v95, v96, v97, v98, outlined consume of Data._Representation, outlined consume of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v99, v100, v101, v102, v103, v104, outlined consume of Data._Representation, outlined consume of Data?);
  v38(v88, v92);
  outlined destroy of MLS.SigningInput(&v105);
  outlined destroy of MLS.SigningInput(&v108);
  v49 = v90;
  if (!v48)
  {
LABEL_26:
    (*(v49 + 8))(v87, v13);
    goto LABEL_27;
  }

  (*(v90 + 8))(v87, v13);
LABEL_12:
  v57 = 1;
  return v57 & 1;
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002651E9A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002651E9A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002651E9A50 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t MLS.OutgoingErrorOccurred.Trigger.CodingKeys.stringValue.getter(char a1)
{
  result = 0xD000000000000012;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  return result;
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49676E696E676973 && a2 == 0xEC0000007475706ELL)
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

Swift::Int MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x49676E696E676973;
  }

  else
  {
    return 0x7265646E6573;
  }
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingMessageCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49676E696E676973 && a2 == 0xEC0000007475706ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614464656E676973 && a2 == 0xEA00000000006174)
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

uint64_t MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingMessageCodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7265646E6573;
  }

  if (a1 == 1)
  {
    return 0x49676E696E676973;
  }

  return 0x614464656E676973;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.ServerErrorMessageCodingKeys@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = protocol witness for static Equatable.== infix(_:_:) in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys();

  *a2 = v7 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.OutgoingEventType<A, B>.AddMemberCodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.ServerErrorMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.ServerErrorMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingErrorCodingKeys(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingErrorCodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.hashValue.getter(*v1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingErrorCodingKeys(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.hash(into:)(a1, *v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingErrorCodingKeys(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.hash(into:)(v9, *v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingErrorCodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingErrorCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingErrorCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger.UnhealableIncomingMessageCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  *&v94 = a2[2];
  v5 = v94;
  *(&v94 + 1) = v4;
  *&v95 = v7;
  *(&v95 + 1) = v6;
  v75 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v79 = type metadata accessor for KeyedEncodingContainer();
  v78 = *(v79 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v65 - v9;
  *(&v94 + 1) = v4;
  *&v95 = v7;
  *(&v95 + 1) = v6;
  v10 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingMessageCodingKeys();
  v11 = swift_getWitnessTable();
  v73 = v10;
  v72 = v11;
  v85 = type metadata accessor for KeyedEncodingContainer();
  v71 = *(v85 - 8);
  v12 = *(v71 + 64);
  v13 = MEMORY[0x28223BE20](v85);
  v84 = &v65 - v14;
  v82 = *(v5 - 8);
  v15 = *(v82 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v76 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v80 = &v65 - v18;
  *&v94 = v5;
  *(&v94 + 1) = v4;
  *&v95 = v7;
  *(&v95 + 1) = v6;
  v19 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.ServerErrorMessageCodingKeys();
  v20 = swift_getWitnessTable();
  v70 = v19;
  v68 = v20;
  v69 = type metadata accessor for KeyedEncodingContainer();
  v67 = *(v69 - 8);
  v21 = *(v67 + 64);
  v22 = MEMORY[0x28223BE20](v69);
  v66 = &v65 - v23;
  v24 = *(a2 - 1);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v5;
  *&v94 = v5;
  *(&v94 + 1) = v4;
  v81 = v7;
  *&v95 = v7;
  *(&v95 + 1) = v6;
  type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.CodingKeys();
  swift_getWitnessTable();
  v28 = type metadata accessor for KeyedEncodingContainer();
  v29 = *(v28 - 8);
  v88 = v28;
  v89 = v29;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v65 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v87 = v32;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v24 + 16))(v27, v86, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = v83;
      v36 = &v27[*(swift_getTupleTypeMetadata2() + 48)];
      *&v96[12] = *(v36 + 44);
      v37 = *(v36 + 1);
      v94 = *v36;
      v95 = v37;
      *v96 = *(v36 + 2);
      v38 = v82;
      v39 = v76;
      (*(v82 + 32))(v76, v27, v35);
      LOBYTE(v91) = 2;
      v40 = v77;
      v42 = v87;
      v41 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v91) = 0;
      v43 = *(v81 + 16);
      v44 = v79;
      v45 = v90;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v45)
      {
        outlined destroy of MLS.SigningInput(&v94);
        (*(v78 + 8))(v40, v44);
        (*(v38 + 8))(v39, v35);
        return (*(v89 + 8))(v42, v41);
      }

      else
      {
        v91 = v94;
        v92 = v95;
        *v93 = *v96;
        *&v93[12] = *&v96[12];
        v97 = 1;
        lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v78 + 8))(v40, v44);
        (*(v38 + 8))(v39, v35);
        (*(v89 + 8))(v42, v41);
        return outlined destroy of MLS.SigningInput(&v94);
      }
    }

    else
    {
      LOBYTE(v94) = 0;
      v59 = v66;
      v61 = v87;
      v60 = v88;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v67 + 8))(v59, v69);
      return (*(v89 + 8))(v61, v60);
    }
  }

  else
  {
    v47 = v83;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v49 = &v27[*(TupleTypeMetadata3 + 48)];
    *&v96[12] = *(v49 + 44);
    v50 = *(v49 + 1);
    v94 = *v49;
    v95 = v50;
    *v96 = *(v49 + 2);
    v51 = &v27[*(TupleTypeMetadata3 + 64)];
    v53 = *v51;
    v52 = v51[1];
    v54 = v82;
    (*(v82 + 32))(v80, v27, v47);
    LOBYTE(v91) = 1;
    v55 = v87;
    v56 = v88;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v91) = 0;
    v57 = *(v81 + 16);
    v58 = v90;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v58)
    {
      outlined destroy of MLS.SigningInput(&v94);
      outlined consume of Data._Representation(v53, v52);
      (*(v71 + 8))(v84, v85);
      (*(v54 + 8))(v80, v47);
      return (*(v89 + 8))(v55, v56);
    }

    else
    {
      v62 = v55;
      v91 = v94;
      v92 = v95;
      *v93 = *v96;
      *&v93[12] = *&v96[12];
      v97 = 1;
      lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v90 = v52;
      *&v91 = v53;
      *(&v91 + 1) = v52;
      v97 = 2;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v63 = v71;
      v64 = v80;
      outlined destroy of MLS.SigningInput(&v94);
      (*(v63 + 8))(v84, v85);
      (*(v54 + 8))(v64, v47);
      (*(v89 + 8))(v62, v56);
      return outlined consume of Data._Representation(v53, v90);
    }
  }
}

uint64_t MLS.OutgoingErrorOccurred.Trigger.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v98 = a6;
  *&v108 = a2;
  *(&v108 + 1) = a3;
  *&v109 = a4;
  *(&v109 + 1) = a5;
  v96 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v89 = type metadata accessor for KeyedDecodingContainer();
  v88 = *(v89 - 8);
  v11 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v101 = &v79 - v12;
  *&v108 = a2;
  *(&v108 + 1) = a3;
  *&v109 = a4;
  *(&v109 + 1) = a5;
  v13 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingMessageCodingKeys();
  v14 = swift_getWitnessTable();
  v94 = v13;
  v93 = v14;
  v87 = type metadata accessor for KeyedDecodingContainer();
  v86 = *(v87 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v97 = &v79 - v16;
  *&v108 = a2;
  *(&v108 + 1) = a3;
  *&v109 = a4;
  *(&v109 + 1) = a5;
  v17 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.ServerErrorMessageCodingKeys();
  v18 = swift_getWitnessTable();
  v91 = v17;
  v92 = v18;
  v85 = type metadata accessor for KeyedDecodingContainer();
  v84 = *(v85 - 8);
  v19 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v100 = &v79 - v20;
  *&v108 = a2;
  *(&v108 + 1) = a3;
  *&v109 = a4;
  *(&v109 + 1) = a5;
  type metadata accessor for MLS.OutgoingErrorOccurred.Trigger.CodingKeys();
  v105 = swift_getWitnessTable();
  v21 = type metadata accessor for KeyedDecodingContainer();
  v103 = *(v21 - 8);
  v104 = v21;
  v22 = *(v103 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v79 - v23;
  v102 = a2;
  *&v108 = a2;
  *(&v108 + 1) = a3;
  v99 = a4;
  *&v109 = a4;
  *(&v109 + 1) = a5;
  v25 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
  v90 = *(v25 - 8);
  v26 = *(v90 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v79 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v79 - v33;
  v35 = a1;
  v36 = a1[3];
  v37 = a1[4];
  v107 = v35;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v38 = v106;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v38)
  {
    v39 = v100;
    v80 = v29;
    v81 = v32;
    v40 = v101;
    v83 = 0;
    v82 = v34;
    v105 = v25;
    v106 = v24;
    v41 = v104;
    *&v108 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v110 = ArraySlice.init<A>(_:)();
    *(&v110 + 1) = v42;
    *&v111 = v43;
    *(&v111 + 1) = v44;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v45 = v108;
    if (v108 == 3 || (v79 = v110, v108 = v110, v109 = v111, (Collection.isEmpty.getter() & 1) == 0))
    {
      v54 = type metadata accessor for DecodingError();
      swift_allocError();
      v55 = v41;
      v57 = v56;
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      v59 = v106;
      *v57 = v105;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v54 - 8) + 104))(v57, *MEMORY[0x277D84160], v54);
      swift_willThrow();
      (*(v103 + 8))(v59, v55);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v107);
    }

    if (v45)
    {
      v46 = v106;
      if (v45 != 1)
      {
        LOBYTE(v108) = 2;
        v64 = v83;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v63 = v41;
        v78 = v98;
        if (!v64)
        {
          LOBYTE(v108) = 0;
          v65 = *(v99 + 8);
          v66 = v80;
          v67 = v89;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v71 = *(swift_getTupleTypeMetadata2() + 48);
          LOBYTE(v108) = 1;
          lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v72 = v103;
          (*(v88 + 8))(v40, v67);
          (*(v72 + 8))(v106, v104);
          swift_unknownObjectRelease();
          v75 = v105;
          swift_storeEnumTagMultiPayload();
          v76 = *(v90 + 32);
          v77 = v82;
          v76(v82, v66, v75);
          goto LABEL_19;
        }

        v52 = *(v103 + 8);
        v53 = v46;
        goto LABEL_17;
      }

      LOBYTE(v108) = 1;
      v47 = v97;
      v48 = v83;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v48)
      {
        LOBYTE(v108) = 0;
        v49 = *(v99 + 8);
        v50 = v81;
        v51 = v87;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v69 = &v50[*(TupleTypeMetadata3 + 48)];
        LOBYTE(v108) = 1;
        lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v70 = v103;
        v73 = *(TupleTypeMetadata3 + 64);
        v112 = 2;
        lazy protocol witness table accessor for type Data and conformance Data();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v74 = v50;
        (*(v86 + 8))(v47, v51);
        (*(v70 + 8))(v106, v104);
        swift_unknownObjectRelease();
        v75 = v105;
        swift_storeEnumTagMultiPayload();
        v76 = *(v90 + 32);
        v77 = v82;
        v76(v82, v74, v75);
        v78 = v98;
LABEL_19:
        v76(v78, v77, v75);
        return __swift_destroy_boxed_opaque_existential_1Tm(v107);
      }

      v52 = *(v103 + 8);
      v53 = v46;
    }

    else
    {
      LOBYTE(v108) = 0;
      v61 = v106;
      v62 = v83;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v62)
      {
        (*(v84 + 8))(v39, v85);
        (*(v103 + 8))(v61, v41);
        swift_unknownObjectRelease();
        v77 = v82;
        v75 = v105;
        swift_storeEnumTagMultiPayload();
        v76 = *(v90 + 32);
        v78 = v98;
        goto LABEL_19;
      }

      v52 = *(v103 + 8);
      v53 = v61;
    }

    v63 = v41;
LABEL_17:
    v52(v53, v63);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v107);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MLS.OutgoingErrorOccurred<A, B>.Trigger(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[3];
  v4 = a3[4];
  v5 = a3[5];
  return static MLS.OutgoingErrorOccurred.Trigger.== infix(_:_:)(a1, a2, a3[2]);
}

uint64_t MLS.OutgoingErrorOccurred.trigger.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v5 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t MLS.OutgoingErrorOccurred.clientContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t MLS.OutgoingErrorOccurred.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72656767697274 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

unint64_t MLS.OutgoingErrorOccurred.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x72656767697274;
  v3 = 0x6F43746E65696C63;
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
    v1 = 0xD000000000000011;
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.OutgoingEventType<A, B>.CodingKeys(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.OutgoingEventType<A, B>.CodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.OutgoingErrorOccurred<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.OutgoingErrorOccurred<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.OutgoingErrorOccurred.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v27 = *(a2 + 24);
  v28 = v4;
  v31 = v4;
  v32 = v27;
  v25 = v5;
  v26 = v6;
  v33 = v5;
  v34 = v6;
  type metadata accessor for MLS.OutgoingErrorOccurred.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v29;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v13;
  v15 = v13[1];
  LOBYTE(v31) = 0;
  v16 = v30;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v16)
  {
    v17 = v27;
    v18 = v28;
    v19 = v13[2];
    v20 = v13[3];
    LOBYTE(v31) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(a2 + 56);
    v31 = v18;
    v35 = 2;
    v32 = v17;
    v33 = v25;
    v22 = v26;
    v34 = v26;
    type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
    swift_getWitnessTable();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = *(a2 + 60);
    LOBYTE(v31) = 3;
    v24 = *(v22 + 16);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = *(v13 + *(a2 + 64));
    v35 = 4;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t MLS.OutgoingErrorOccurred.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a6;
  v11 = type metadata accessor for Optional();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v40 = v37 - v13;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v47 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
  v44 = *(v47 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = v37 - v15;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  type metadata accessor for MLS.OutgoingErrorOccurred.CodingKeys();
  swift_getWitnessTable();
  v50 = type metadata accessor for KeyedDecodingContainer();
  v45 = *(v50 - 8);
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v50);
  v18 = v37 - v17;
  v52 = a2;
  v53 = a3;
  v41 = a3;
  v54 = a4;
  v55 = a5;
  v48 = a5;
  v19 = type metadata accessor for MLS.OutgoingErrorOccurred();
  v38 = *(v19 - 1);
  v20 = *(v38 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v37 - v21);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v49 = v18;
  v24 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v45;
  v25 = v46;
  v27 = v47;
  v28 = v48;
  v51 = v22;
  LOBYTE(v52) = 0;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v51;
  *v51 = v29;
  *(v30 + 1) = v31;
  v37[2] = v31;
  LOBYTE(v52) = 1;
  *(v30 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v30 + 3) = v32;
  LOBYTE(v52) = 2;
  swift_getWitnessTable();
  v37[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 32))(&v30[v19[14]], v25, v27);
  LOBYTE(v52) = 3;
  v33 = *(v28 + 8);
  v34 = v40;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v42 + 32))(&v30[v19[15]], v34, v43);
  v56 = 4;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v49, v50);
  *&v30[v19[16]] = v52;
  v35 = v38;
  (*(v38 + 16))(v39, v30, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v35 + 8))(v30, v19);
}

uint64_t MLS.OutgoingErrorOccurred.Trigger<>.convert<A, B>(memberType:clientContextType:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = v5[5];
  *v36 = v5[4];
  *&v36[16] = v10;
  v37 = v5[6];
  v38 = *(v5 + 112);
  v11 = v5[1];
  v32 = *v5;
  v33 = v11;
  v12 = v5[3];
  v34 = v5[2];
  v35 = v12;
  if (v38)
  {
    if (v38 == 1)
    {
      v39 = a4;
      v29 = v32;
      v30 = v33;
      v31 = BYTE8(v33);
      v13 = *(a3 + 48);
      outlined copy of MLS.AllMember();
      outlined init with copy of MLS.SigningInput(&v34, &v25);
      v13(&v29, a1, a3);
      if (v6)
      {
        return outlined destroy of MLS.SigningInput(&v34);
      }

      v17 = (a5 + *(swift_getTupleTypeMetadata2() + 48));
      v18 = v35;
      *v17 = v34;
      v17[1] = v18;
      v17[2] = *v36;
      *(v17 + 44) = *&v36[12];
      v25 = a1;
      v26 = a2;
      v27 = a3;
      v28 = v39;
      type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
    }

    else
    {
      v25 = a1;
      v26 = a2;
      v27 = a3;
      v28 = a4;
      type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
    }
  }

  else
  {
    v39 = a4;
    v15 = v37;
    v29 = v32;
    v30 = v33;
    v31 = BYTE8(v33);
    v16 = *(a3 + 48);
    outlined copy of MLS.AllMember();
    outlined init with copy of MLS.SigningInput(&v34, &v25);
    outlined copy of Data._Representation(v15, *(&v15 + 1));
    v16(&v29, a1, a3);
    if (v6)
    {
      outlined consume of Data._Representation(v15, *(&v15 + 1));
      return outlined destroy of MLS.SigningInput(&v34);
    }

    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v20 = (a5 + *(TupleTypeMetadata3 + 48));
    v21 = (a5 + *(TupleTypeMetadata3 + 64));
    v22 = v35;
    *v20 = v34;
    v20[1] = v22;
    v20[2] = *v36;
    *(v20 + 44) = *&v36[12];
    *v21 = v15;
    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = v39;
    type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t MLS.OutgoingEventType<>.convert<A, B>(memberType:clientContextType:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v490 = a2;
  v486 = a1;
  v487 = a7;
  v504.n128_u64[0] = a3;
  v504.n128_u64[1] = a4;
  v488 = a5;
  *&v505 = a5;
  *(&v505 + 1) = a6;
  v492 = a6;
  v10 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
  v470 = *(v10 - 8);
  v471 = v10;
  v11 = *(v470 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v480 = (&v469 - v13);
  v489 = a3;
  v14 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v472 = &v469 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v493 = a4;
  v16 = type metadata accessor for Optional();
  v484 = *(v16 - 8);
  v485 = v16;
  v17 = *(v484 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v473 = &v469 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v474 = &v469 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v476 = &v469 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v483 = (&v469 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v475 = &v469 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v469 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v469 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v482 = &v469 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v481 = (&v469 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v469 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v469 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v469 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v469 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v469 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v477 = &v469 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v479 = &v469 - v56;
  MEMORY[0x28223BE20](v55);
  v478 = &v469 - v57;
  v58 = *(v7 + 144);
  v512[8] = *(v7 + 128);
  v512[9] = v58;
  v512[10] = *(v7 + 160);
  v513 = *(v7 + 176);
  v59 = *(v7 + 80);
  v512[4] = *(v7 + 64);
  v512[5] = v59;
  v60 = *(v7 + 112);
  v512[6] = *(v7 + 96);
  v512[7] = v60;
  v61 = *(v7 + 16);
  v512[0] = *v7;
  v512[1] = v61;
  v62 = *(v7 + 48);
  v512[2] = *(v7 + 32);
  v512[3] = v62;
  switch(_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOg(v512))
  {
    case 1u:
      v267 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v269 = *v267;
      v268 = v267[1];
      v271 = v267[2];
      v270 = v267[3];
      v273 = v267[4];
      v272 = v267[5];

      v274 = v273;
      v275 = v491;
      v276 = v492;
      v277 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v274, v272, v493, v492, v479);
      if (v275)
      {
        goto LABEL_38;
      }

      v482 = v270;
      v483 = v268;
      v472 = v271;
      v473 = v269;
      v490 = &v469;
      v278 = v267[7];
      v495[0] = v267[6];
      v280 = v267[8];
      v279 = v267[9];
      v504.n128_u64[0] = v278;
      v504.n128_u64[1] = v280;
      v281 = v267[11];
      v491 = v267[10];
      *&v505 = v279;
      *(&v505 + 1) = v491;
      v282 = v267[12];
      v283 = v267[13];
      v496.n128_u64[0] = v281;
      v496.n128_u64[1] = v282;
      v284 = v267[14];
      v480 = v267[15];
      *&v497 = v283;
      *(&v497 + 1) = v284;
      v514 = v480;
      v285 = MEMORY[0x28223BE20](v495[0]);
      v481 = &v462;
      v463 = v489;
      v464 = v277;
      v465 = v488;
      v466 = v276;
      v467 = v486;
      v486 = v285;

      v477 = v280;

      v478 = v279;
      outlined copy of Data._Representation(v279, v491);
      v475 = v282;

      v474 = v283;
      v476 = v284;
      outlined copy of Data._Representation(v283, v284);

      v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v288 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v289 = v489;
      v430 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v481, v286, v489, v287, v288, MEMORY[0x277D84950], &v494);

      v514 = v430;
      type metadata accessor for Array();
      v431 = v488;
      v432 = v492;
      v433 = *(v488 + 24);
      swift_getWitnessTable();
      v434 = Set.init<A>(_:)();
      v436 = v267[16];
      v435 = v267[17];
      v437 = v267[19];
      v485 = v267[18];
      v486 = v437;
      v438 = v267[21];
      v490 = v267[20];
      v491 = v438;
      v439 = v493;
      MLS.OutgoingAddMember.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)(v473, v483, v472, v482, v479, v495, &v504, &v496, v487, v434, v436, v435, v485, v437, v490, v438, v289, v493, v431, v432);
      v504.n128_u64[0] = v289;
      v504.n128_u64[1] = v439;
      *&v505 = v431;
      *(&v505 + 1) = v432;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();
      v428 = v436;
      v429 = v435;
      goto LABEL_45;
    case 2u:
      v207 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v209 = *v207;
      v208 = v207[1];
      v211 = v207[2];
      v210 = v207[3];
      v213 = v207[4];
      v212 = v207[5];

      v214 = v213;
      v215 = v491;
      v216 = v492;
      v217 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v214, v212, v493, v492, v477);
      if (v215)
      {
        goto LABEL_38;
      }

      v482 = v210;
      v483 = v208;
      v476 = v211;
      v478 = v209;
      v490 = &v469;
      v218 = v207[7];
      v496.n128_u64[0] = v207[6];
      v220 = v207[8];
      v219 = v207[9];
      v504.n128_u64[0] = v218;
      v504.n128_u64[1] = v220;
      v221 = v207[10];
      v222 = v207[11];
      *&v505 = v219;
      *(&v505 + 1) = v221;
      v495[0] = v222;
      v223 = MEMORY[0x28223BE20](v496.n128_u64[0]);
      v491 = &v462;
      v224 = v489;
      v463 = v489;
      v464 = v217;
      v465 = v488;
      v466 = v216;
      v467 = v486;
      v486 = v223;

      v479 = v220;

      v480 = v221;
      v481 = v219;
      outlined copy of Data._Representation(v219, v221);

      v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v227 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v228 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v491, v225, v224, v226, v227, MEMORY[0x277D84950], &v514);
      v491 = 0;
      v404 = v228;

      v495[0] = v404;
      type metadata accessor for Array();
      v405 = v488;
      v406 = *(v488 + 24);
      swift_getWitnessTable();
      v407 = Set.init<A>(_:)();
      v409 = v207[12];
      v408 = v207[13];
      v410 = v207[14];
      v411 = v207[16];
      v412 = v207[17];
      v485 = v207[15];
      v486 = v411;
      v490 = v412;
      v413 = v492;
      v467 = v405;
      v468 = v492;
      v414 = v493;
      v465 = v224;
      v466 = v493;
      MLS.OutgoingKickMember.init(identifier:storageIdentifier:clientContext:metricCollector:commit:members:epochAuthenticator:ratchetTree:groupInfo:)(v478, v483, v476, v482, v477, &v496, &v504, v407, v487, v409, v408, v410, v485, v411, v412);
      v504.n128_u64[0] = v224;
      v504.n128_u64[1] = v414;
      *&v505 = v405;
      *(&v505 + 1) = v413;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();
      outlined copy of Data._Representation(v409, v408);
      v415 = v410;
      v416 = v485;
      goto LABEL_48;
    case 3u:
      v241 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v242 = *v241;
      v243 = v241[1];
      v244 = v241[3];
      v483 = v241[2];
      v484 = v242;
      v246 = v241[4];
      v245 = v241[5];
      v247 = v241[6];
      v482 = v241[7];
      v248 = v241[8];
      v249 = v241[9];
      v485 = v247;
      v486 = v248;
      v250 = v241[10];

      v251 = v246;
      v252 = v491;
      v254 = v492;
      v253 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v251, v245, v493, v492, v52);
      if (v252)
      {
        goto LABEL_38;
      }

      v496.n128_u64[0] = v485;
      v504.n128_u64[0] = v482;
      v504.n128_u64[1] = v486;
      v481 = v249;
      *&v505 = v249;
      *(&v505 + 1) = v250;
      MLS.OutgoingRemoveSelf.init(identifier:storageIdentifier:clientContext:metricCollector:proposal:)(v484, v243, v483, v244, v52, &v496, &v504, v253, v487, v254);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v253;
      *&v505 = v488;
      *(&v505 + 1) = v254;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();

      return outlined copy of Data._Representation(v481, v250);
    case 4u:
      v144 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v145 = v144[1];
      v486 = *v144;
      v147 = v144[2];
      v146 = v144[3];
      v149 = v144[4];
      v148 = v144[5];

      v150 = v149;
      v151 = v491;
      v153 = v492;
      v152 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v150, v148, v493, v492, v49);
      if (v151)
      {
        goto LABEL_38;
      }

      v154 = v144[7];
      v496.n128_u64[0] = v144[6];
      v484 = v144[8];
      v485 = v496.n128_u64[0];
      v155 = v144[9];
      v504.n128_u64[0] = v154;
      v504.n128_u64[1] = v484;
      v157 = v144[10];
      v156 = v144[11];
      v482 = v155;
      v483 = v157;
      *&v505 = v155;
      *(&v505 + 1) = v157;
      v491 = 0;
      v139 = v144[12];
      v159 = v144[14];
      v158 = v144[15];
      v479 = v144[13];
      v480 = v159;
      v481 = v158;
      v490 = v144[16];
      v160 = v145;
      v143 = v156;
      MLS.OutgoingKeyUpdate.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)(v486, v160, v147, v146, v49, &v496, &v504, v156, v487, v139, v479, v159, v158, v490, v152, v153);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v152;
      *&v505 = v488;
      *(&v505 + 1) = v153;
      type metadata accessor for MLS.OutgoingEventType();
      goto LABEL_12;
    case 5u:
      v290 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v292 = *v290;
      v291 = v290[1];
      v293 = v290[3];
      v486 = v290[2];
      v295 = v290[4];
      v294 = v290[5];

      v296 = v295;
      v297 = v491;
      v299 = v492;
      v298 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v296, v294, v493, v492, v46);
      if (v297)
      {
        goto LABEL_38;
      }

      v300 = v290[7];
      v496.n128_u64[0] = v290[6];
      v484 = v290[8];
      v485 = v496.n128_u64[0];
      v301 = v290[9];
      v504.n128_u64[0] = v300;
      v504.n128_u64[1] = v484;
      v302 = v290[11];
      v482 = v290[10];
      v483 = v301;
      *&v505 = v301;
      *(&v505 + 1) = v482;
      v303 = v290[13];
      v478 = v290[12];
      v479 = v303;
      v304 = v290[15];
      v480 = v290[14];
      v481 = v304;
      v490 = v290[16];
      v491 = 0;
      v305 = v488;
      v306 = v292;
      v307 = v489;
      v308 = v291;
      v309 = v302;
      MLS.OutgoingResync.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)(v306, v308, v486, v293, v46, &v496, &v504, v302, v487, v478, v303, v480, v304, v490, v489, v298, v488, v299);
      v504.n128_u64[0] = v307;
      v504.n128_u64[1] = v298;
      *&v505 = v305;
      *(&v505 + 1) = v299;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();

      outlined copy of Data._Representation(v483, v482);
      v123 = v309;
      v124 = v478;
      goto LABEL_29;
    case 6u:
      v334 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v335 = *v334;
      v336 = *(v334 + 8);
      v337 = *(v334 + 24);
      v478 = *(v334 + 16);
      v479 = v335;
      v339 = *(v334 + 32);
      v338 = *(v334 + 40);
      v340 = *(v334 + 48);
      v482 = *(v334 + 56);
      v483 = v340;
      v341 = *(v334 + 64);
      v481 = *(v334 + 72);
      LODWORD(v480) = *(v334 + 80);
      v343 = *(v334 + 88);
      v342 = *(v334 + 96);
      v344 = *(v334 + 104);

      v345 = v339;
      v346 = v491;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v345, v338, v493, v492, v43);
      if (v346)
      {
        goto LABEL_38;
      }

      v474 = v343;
      v475 = v342;
      v476 = v344;
      v477 = v337;
      v490 = v336;
      v496.n128_u64[0] = v483;
      v504.n128_u64[0] = v482;
      v504.n128_u64[1] = v341;
      *&v505 = v481;
      BYTE8(v505) = v480;
      v347 = v488;
      v491 = *(v488 + 48);

      outlined copy of MLS.AllMember();
      v348 = v472;
      v349 = v489;
      v491(&v504, v489, v347);
      v448 = v348;
      v449 = v492;
      v468 = v492;
      v450 = v493;
      v466 = v493;
      v491 = 0;
      MLS.OutgoingFailureToDecrypt_v2.init(identifier:storageIdentifier:clientContext:metricCollector:member:failedIdentifier:failedIdentifiers:)(v479, v490, v478, v477, v43, &v496, v448, v474, v487, v475, v476, v349);
      v504.n128_u64[0] = v349;
      v504.n128_u64[1] = v450;
      *&v505 = v347;
      *(&v505 + 1) = v449;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();

    case 7u:
      v255 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v256 = *v255;
      v257 = v255[1];
      v258 = v255[3];
      v485 = v255[2];
      v486 = v256;
      v260 = v255[4];
      v259 = v255[5];
      v262 = v255[6];
      v261 = v255[7];

      v263 = v260;
      v264 = v491;
      v265 = v492;
      v266 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v263, v259, v493, v492, v40);
      if (v264)
      {
        goto LABEL_38;
      }

      v504.n128_u64[0] = v262;
      v467 = v265;
      v491 = 0;
      MLS.OutgoingFailureToDecrypt.init(identifier:storageIdentifier:clientContext:metricCollector:failedIdentifiers:)(v486, v257, v485, v258, v40, &v504, v261, v487);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v266;
      *&v505 = v488;
      *(&v505 + 1) = v265;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();

    case 8u:
      v364 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v366 = *v364;
      v365 = v364[1];
      v368 = v364[2];
      v367 = v364[3];
      v370 = v364[4];
      v369 = v364[5];

      v371 = v370;
      v372 = v491;
      v373 = v492;
      v374 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v371, v369, v493, v492, v481);
      if (v372)
      {
        goto LABEL_38;
      }

      v482 = v367;
      v483 = v365;
      v472 = v368;
      v473 = v366;
      v490 = &v469;
      v380 = v364[7];
      v495[0] = v364[6];
      v382 = v364[8];
      v381 = v364[9];
      v504.n128_u64[0] = v380;
      v504.n128_u64[1] = v382;
      v383 = v364[11];
      v491 = v364[10];
      *&v505 = v381;
      *(&v505 + 1) = v491;
      v384 = v364[12];
      v385 = v364[13];
      v496.n128_u64[0] = v383;
      v496.n128_u64[1] = v384;
      v386 = v364[14];
      v479 = v364[15];
      *&v497 = v385;
      *(&v497 + 1) = v386;
      v514 = v479;
      v387 = MEMORY[0x28223BE20](v495[0]);
      v480 = &v462;
      v463 = v489;
      v464 = v374;
      v465 = v488;
      v466 = v373;
      v467 = v486;
      v486 = v387;

      v477 = v382;

      v478 = v381;
      outlined copy of Data._Representation(v381, v491);
      v475 = v384;

      v474 = v385;
      v476 = v386;
      outlined copy of Data._Representation(v385, v386);

      v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v390 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v391 = v489;
      v392 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v480, v388, v489, v389, v390, MEMORY[0x277D84950], &v494);
      v491 = 0;
      v451 = v392;

      v514 = v451;
      type metadata accessor for Array();
      v452 = v488;
      v453 = v492;
      v454 = *(v488 + 24);
      swift_getWitnessTable();
      v455 = Set.init<A>(_:)();
      v457 = v364[16];
      v456 = v364[17];
      v458 = v364[19];
      v459 = v364[20];
      v460 = v364[21];
      v485 = v364[18];
      v486 = v459;
      v490 = v460;
      v461 = v493;
      MLS.OutgoingResurrectGroup.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)(v473, v483, v472, v482, v481, v495, &v504, &v496, v487, v455, v457, v456, v485, v458, v459, v460, v391, v493, v452, v453);
      v504.n128_u64[0] = v391;
      v504.n128_u64[1] = v461;
      *&v505 = v452;
      *(&v505 + 1) = v453;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();
      outlined copy of Data._Representation(v457, v456);
      v415 = v485;
      v416 = v458;
LABEL_48:
      outlined copy of Data?(v415, v416);
      v183 = v486;
      return outlined copy of Data._Representation(v183, v490);
    case 9u:
      v184 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v186 = *v184;
      v185 = v184[1];
      v188 = v184[2];
      v187 = v184[3];
      v190 = v184[4];
      v189 = v184[5];

      v191 = v190;
      v192 = v491;
      v193 = v492;
      v194 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v191, v189, v493, v492, v482);
      if (v192)
      {
        goto LABEL_38;
      }

      v481 = v187;
      v483 = v185;
      v472 = v188;
      v473 = v186;
      v490 = &v469;
      v195 = v184[7];
      v495[0] = v184[6];
      v197 = v184[8];
      v196 = v184[9];
      v504.n128_u64[0] = v195;
      v504.n128_u64[1] = v197;
      v198 = v184[11];
      v491 = v184[10];
      *&v505 = v196;
      *(&v505 + 1) = v491;
      v199 = v184[12];
      v200 = v184[13];
      v496.n128_u64[0] = v198;
      v496.n128_u64[1] = v199;
      v201 = v184[14];
      v479 = v184[15];
      *&v497 = v200;
      *(&v497 + 1) = v201;
      v514 = v479;
      v202 = MEMORY[0x28223BE20](v495[0]);
      v480 = &v462;
      v463 = v489;
      v464 = v194;
      v465 = v488;
      v466 = v193;
      v467 = v486;
      v486 = v202;

      v477 = v197;

      v478 = v196;
      outlined copy of Data._Representation(v196, v491);
      v475 = v199;

      v474 = v200;
      v476 = v201;
      outlined copy of Data._Representation(v200, v201);

      v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v205 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v206 = v489;
      v394 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v480, v203, v489, v204, v205, MEMORY[0x277D84950], &v494);

      v514 = v394;
      type metadata accessor for Array();
      v395 = v488;
      v396 = v492;
      v397 = *(v488 + 24);
      swift_getWitnessTable();
      v398 = Set.init<A>(_:)();
      v400 = v184[16];
      v399 = v184[17];
      v401 = v184[19];
      v485 = v184[18];
      v486 = v401;
      v402 = v184[21];
      v490 = v184[20];
      v491 = v402;
      v403 = v493;
      MLS.OutgoingRecreateGroup.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)(v473, v483, v472, v481, v482, v495, &v504, &v496, v487, v398, v400, v399, v485, v401, v490, v402, v206, v493, v395, v396);
      v504.n128_u64[0] = v206;
      v504.n128_u64[1] = v403;
      *&v505 = v395;
      *(&v505 + 1) = v396;
      type metadata accessor for MLS.OutgoingEventType();
      goto LABEL_46;
    case 0xAu:
      v350 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v351 = *v350;
      v352 = v350[1];
      v353 = v350[3];
      v483 = v350[2];
      v484 = v351;
      v355 = v350[4];
      v354 = v350[5];
      v356 = v350[6];
      v482 = v350[7];
      v357 = v350[8];
      v358 = v350[9];
      v485 = v356;
      v486 = v357;
      v359 = v350[10];

      v360 = v355;
      v361 = v491;
      v363 = v492;
      v362 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v360, v354, v493, v492, v33);
      if (v361)
      {
        goto LABEL_38;
      }

      v496.n128_u64[0] = v485;
      v504.n128_u64[0] = v482;
      v504.n128_u64[1] = v486;
      v481 = v358;
      *&v505 = v358;
      *(&v505 + 1) = v359;
      MLS.OutgoingApplicationSend.init(identifier:storageIdentifier:clientContext:metricCollector:message:)(v484, v352, v483, v353, v33, &v496, &v504, v362, v487, v363);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v362;
      *&v505 = v488;
      *(&v505 + 1) = v363;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();

      return outlined copy of Data._Representation(v481, v359);
    case 0xBu:
      v125 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v126 = v125[1];
      v486 = *v125;
      v128 = v125[2];
      v127 = v125[3];
      v130 = v125[4];
      v129 = v125[5];

      v131 = v130;
      v132 = v491;
      v134 = v492;
      v133 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v131, v129, v493, v492, v30);
      if (v132)
      {
        goto LABEL_38;
      }

      v135 = v125[7];
      v496.n128_u64[0] = v125[6];
      v484 = v125[8];
      v485 = v496.n128_u64[0];
      v136 = v125[9];
      v504.n128_u64[0] = v135;
      v504.n128_u64[1] = v484;
      v138 = v125[10];
      v137 = v125[11];
      v482 = v136;
      v483 = v138;
      *&v505 = v136;
      *(&v505 + 1) = v138;
      v491 = 0;
      v139 = v125[12];
      v141 = v125[14];
      v140 = v125[15];
      v479 = v125[13];
      v480 = v141;
      v481 = v140;
      v490 = v125[16];
      v142 = v30;
      v143 = v137;
      MLS.OutgoingDowngrade.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)(v486, v126, v128, v127, v142, &v496, &v504, v137, v487, v139, v479, v141, v140, v490, v133, v134);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v133;
      *&v505 = v488;
      *(&v505 + 1) = v134;
      type metadata accessor for MLS.OutgoingEventType();
LABEL_12:
      swift_storeEnumTagMultiPayload();

      outlined copy of Data._Representation(v482, v483);
      v123 = v143;
      v124 = v139;
      goto LABEL_29;
    case 0xCu:
      v161 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v162 = v161[1];
      v486 = *v161;
      v164 = v161[2];
      v163 = v161[3];
      v166 = v161[4];
      v165 = v161[5];

      v167 = v475;
      v168 = v166;
      v169 = v491;
      v170 = v492;
      v171 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v168, v165, v493, v492, v475);
      if (v169)
      {
        goto LABEL_38;
      }

      v172 = v161[7];
      v496.n128_u64[0] = v161[6];
      v481 = v161[8];
      v482 = v496.n128_u64[0];
      v173 = v161[9];
      v504.n128_u64[0] = v172;
      v504.n128_u64[1] = v481;
      v174 = v161[10];
      v175 = v161[11];
      v479 = v173;
      v480 = v174;
      *&v505 = v173;
      *(&v505 + 1) = v174;
      v491 = 0;
      v176 = v161[12];
      v474 = v161[13];
      v177 = v161[15];
      v476 = v161[14];
      v477 = v177;
      v178 = v161[17];
      v478 = v161[16];
      v180 = v161[18];
      v179 = v161[19];
      v483 = v178;
      v484 = v180;
      v485 = v179;
      v490 = v161[20];
      v466 = v171;
      v467 = v170;
      v181 = v162;
      v182 = v175;
      MLS.OutgoingGroupNameChange.init(identifier:storageIdentifier:clientContext:metricCollector:commit:encryptedGroupNameKey:encryptedGroupName:epochAuthenticator:ratchetTree:groupInfo:)(v486, v181, v164, v163, v167, &v496, &v504, v175, v487, v176, v474, v476, v177, v478, v178, v180, v179, v490);
      v504.n128_u64[0] = v489;
      v504.n128_u64[1] = v171;
      *&v505 = v488;
      *(&v505 + 1) = v170;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();

      outlined copy of Data._Representation(v479, v480);
      outlined copy of Data._Representation(v182, v176);
      outlined copy of Data._Representation(v474, v476);
      outlined copy of Data._Representation(v477, v478);
      outlined copy of Data?(v483, v484);
      v183 = v485;
      return outlined copy of Data._Representation(v183, v490);
    case 0xDu:
      v311 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v313 = *v311;
      v312 = v311[1];
      v315 = v311[2];
      v314 = v311[3];
      v317 = v311[4];
      v316 = v311[5];

      v318 = v317;
      v319 = v491;
      v320 = v492;
      v321 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v318, v316, v493, v492, v483);
      if (v319)
      {
        goto LABEL_38;
      }

      v481 = v314;
      v482 = v312;
      v472 = v315;
      v473 = v313;
      v490 = &v469;
      v322 = v311[7];
      v495[0] = v311[6];
      v324 = v311[8];
      v323 = v311[9];
      v504.n128_u64[0] = v322;
      v504.n128_u64[1] = v324;
      v325 = v311[11];
      v491 = v311[10];
      *&v505 = v323;
      *(&v505 + 1) = v491;
      v326 = v311[12];
      v327 = v311[13];
      v496.n128_u64[0] = v325;
      v496.n128_u64[1] = v326;
      v328 = v311[14];
      v479 = v311[15];
      *&v497 = v327;
      *(&v497 + 1) = v328;
      v514 = v479;
      v329 = MEMORY[0x28223BE20](v495[0]);
      v480 = &v462;
      v463 = v489;
      v464 = v321;
      v465 = v488;
      v466 = v320;
      v467 = v486;
      v486 = v329;

      v477 = v324;

      v478 = v323;
      outlined copy of Data._Representation(v323, v491);
      v475 = v326;

      v474 = v327;
      v476 = v328;
      outlined copy of Data._Representation(v327, v328);

      v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v332 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v333 = v489;
      v440 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v480, v330, v489, v331, v332, MEMORY[0x277D84950], &v494);

      v514 = v440;
      type metadata accessor for Array();
      v441 = v488;
      v442 = v492;
      v443 = *(v488 + 24);
      swift_getWitnessTable();
      v444 = Set.init<A>(_:)();
      v400 = v311[16];
      v399 = v311[17];
      v445 = v311[19];
      v485 = v311[18];
      v486 = v445;
      v446 = v311[21];
      v490 = v311[20];
      v491 = v446;
      v447 = v493;
      MLS.OutgoingReplaceExpiredCredentials.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)(v473, v482, v472, v481, v483, v495, &v504, &v496, v487, v444, v400, v399, v485, v445, v490, v446, v333, v493, v441, v442);
      v504.n128_u64[0] = v333;
      v504.n128_u64[1] = v447;
      *&v505 = v441;
      *(&v505 + 1) = v442;
      type metadata accessor for MLS.OutgoingEventType();
LABEL_46:
      swift_storeEnumTagMultiPayload();
      outlined copy of Data._Representation(v400, v399);
      outlined copy of Data?(v485, v486);
      return outlined copy of Data._Representation(v490, v491);
    case 0xEu:
      v101 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v102 = v101[1];
      v486 = *v101;
      v104 = v101[2];
      v103 = v101[3];
      v106 = v101[4];
      v105 = v101[5];

      v107 = v476;
      v108 = v106;
      v109 = v491;
      v110 = v492;
      v111 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v108, v105, v493, v492, v476);
      if (v109)
      {
        goto LABEL_38;
      }

      v112 = v101[7];
      v496.n128_u64[0] = v101[6];
      v484 = v101[8];
      v485 = v496.n128_u64[0];
      v113 = v101[9];
      v504.n128_u64[0] = v112;
      v504.n128_u64[1] = v484;
      v114 = v101[10];
      v115 = v101[11];
      v482 = v113;
      v483 = v114;
      *&v505 = v113;
      *(&v505 + 1) = v114;
      v116 = v101[13];
      v478 = v101[12];
      v479 = v116;
      v117 = v101[15];
      v480 = v101[14];
      v481 = v117;
      v490 = v101[16];
      v491 = 0;
      v118 = v488;
      v119 = v107;
      v120 = v489;
      v121 = v102;
      v122 = v115;
      MLS.OutgoingProposalCommitted.init(identifier:storageIdentifier:clientContext:metricCollector:commit:epochAuthenticator:ratchetTree:groupInfo:)(v486, v121, v104, v103, v119, &v496, &v504, v115, v487, v478, v116, v480, v117, v490, v489, v111, v488, v110);
      v504.n128_u64[0] = v120;
      v504.n128_u64[1] = v111;
      *&v505 = v118;
      *(&v505 + 1) = v110;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();

      outlined copy of Data._Representation(v482, v483);
      v123 = v122;
      v124 = v478;
LABEL_29:
      outlined copy of Data._Representation(v123, v124);
      outlined copy of Data?(v479, v480);
      v183 = v481;
      return outlined copy of Data._Representation(v183, v490);
    case 0xFu:
      v229 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v230 = v229[1];
      v486 = *v229;
      v232 = v229[2];
      v231 = v229[3];
      v234 = v229[4];
      v233 = v229[5];
      v235 = v229[6];

      v236 = v474;
      v237 = v234;
      v238 = v491;
      v239 = v492;
      v240 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v237, v233, v493, v492, v474);
      if (v238)
      {
        goto LABEL_38;
      }

      v504.n128_u64[0] = v235;
      v468 = v239;
      v376 = v236;
      v377 = v488;
      v467 = v488;
      v491 = 0;
      v378 = v230;
      v379 = v489;
      MLS.OutgoingGroupRepaired.init(identifier:storageIdentifier:clientContext:metricCollector:)(v486, v378, v232, v231, v376, &v504, v487);
      v504.n128_u64[0] = v379;
      v504.n128_u64[1] = v240;
      *&v505 = v377;
      *(&v505 + 1) = v239;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();

    case 0x10u:
      v90 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v91 = *(v90 + 8);
      v486 = *v90;
      v92 = *(v90 + 16);
      v93 = *(v90 + 24);
      v94 = *(v90 + 112);
      v508 = *(v90 + 96);
      v509 = v94;
      v510 = *(v90 + 128);
      v511 = *(v90 + 144);
      v95 = *(v90 + 48);
      v504 = *(v90 + 32);
      v505 = v95;
      v96 = *(v90 + 80);
      v506 = *(v90 + 64);
      v507 = v96;

      outlined init with copy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(v90 + 32, &v496);
      v97 = v488;
      v99 = v492;
      v98 = v493;
      v100 = v491;
      MLS.OutgoingErrorOccurred.Trigger<>.convert<A, B>(memberType:clientContextType:)(v489, v493, v488, v492, v480);
      if (v100)
      {
        v500 = v508;
        v501 = v509;
        v502 = v510;
        v503 = v511;
        v496 = v504;
        v497 = v505;
        v498 = v506;
        v499 = v507;
        outlined destroy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(&v496);
LABEL_38:
      }

      else
      {
        v484 = v92;
        v485 = v93;
        v500 = v508;
        v501 = v509;
        v502 = v510;
        v503 = v511;
        v496 = v504;
        v497 = v505;
        v498 = v506;
        v499 = v507;
        outlined destroy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(&v496);
        v375 = v473;
        static MLS.ClientContext.decode<A>(dataRepresentation:type:)(*(v90 + 152), *(v90 + 160), v98, v99, v473);
        v491 = 0;
        v495[0] = *(v90 + 168);
        v466 = v97;
        v467 = v99;
        v465 = v98;
        v393 = v489;
        MLS.OutgoingErrorOccurred.init(identifier:storageIdentifier:trigger:clientContext:metricCollector:)(v486, v91, v484, v485, v480, v375, v495, v487);
        v495[0] = v393;
        v495[1] = v98;
        v495[2] = v97;
        v495[3] = v99;
        type metadata accessor for MLS.OutgoingEventType();
        swift_storeEnumTagMultiPayload();
      }

    default:
      v64 = destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType(v512, v63);
      v66 = *v64;
      v65 = v64[1];
      v68 = v64[2];
      v67 = v64[3];
      v70 = v64[4];
      v69 = v64[5];

      v71 = v70;
      v72 = v491;
      v73 = v492;
      v74 = v493;
      static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v71, v69, v493, v492, v478);
      if (v72)
      {
        goto LABEL_38;
      }

      v481 = v67;
      v482 = v65;
      v474 = v68;
      v475 = v66;
      v483 = &v469;
      v75 = v64[7];
      v495[0] = v64[6];
      v77 = v64[8];
      v76 = v64[9];
      v504.n128_u64[0] = v75;
      v504.n128_u64[1] = v77;
      v78 = v64[11];
      v490 = v64[10];
      v491 = v76;
      *&v505 = v76;
      *(&v505 + 1) = v490;
      v80 = v64[12];
      v79 = v64[13];
      v496.n128_u64[0] = v78;
      v496.n128_u64[1] = v80;
      v81 = v64[14];
      v82 = v64[15];
      *&v497 = v79;
      *(&v497 + 1) = v81;
      v514 = v82;
      v83 = MEMORY[0x28223BE20](v495[0]);
      v480 = &v462;
      v463 = v489;
      v464 = v74;
      v465 = v488;
      v466 = v73;
      v467 = v486;
      v486 = v83;

      v479 = v77;

      outlined copy of Data._Representation(v491, v490);
      v476 = v80;

      v477 = v81;
      outlined copy of Data._Representation(v79, v81);

      v84 = v73;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15SecureMessaging3MLSO9AllMemberOGMd, &_sShy15SecureMessaging3MLSO9AllMemberOGMR);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v87 = lazy protocol witness table accessor for type Set<MLS.AllMember> and conformance Set<A>();
      v88 = v85;
      v89 = v489;
      v417 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:), v480, v88, v489, v86, v87, MEMORY[0x277D84950], &v494);

      v514 = v417;
      type metadata accessor for Array();
      v418 = v84;
      v419 = v488;
      v420 = v493;
      v421 = *(v488 + 24);
      swift_getWitnessTable();
      v422 = Set.init<A>(_:)();
      v423 = v64[16];
      v424 = v64[17];
      v425 = v64[19];
      v485 = v64[18];
      v486 = v425;
      v426 = v64[21];
      v490 = v64[20];
      v491 = v426;
      v427 = v423;
      MLS.OutgoingCreateGroup.init(identifier:storageIdentifier:clientContext:metricCollector:commit:welcome:members:epochAuthenticator:ratchetTree:groupInfo:)(v475, v482, v474, v481, v478, v495, &v504, &v496, v487, v422, v423, v424, v485, v425, v490, v426, v89, v420, v419, v418);
      v504.n128_u64[0] = v89;
      v504.n128_u64[1] = v420;
      *&v505 = v419;
      *(&v505 + 1) = v418;
      type metadata accessor for MLS.OutgoingEventType();
      swift_storeEnumTagMultiPayload();
      v428 = v427;
      v429 = v424;
LABEL_45:
      outlined copy of Data._Representation(v428, v429);
      outlined copy of Data?(v485, v486);
      return outlined copy of Data._Representation(v490, v491);
  }
}

double MLS.OutgoingEventType.allMemberEvent()@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v705 = a2;
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  *&v711 = a1[2];
  v3 = v711;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *(&v712 + 1) = v5;
  v7 = type metadata accessor for MLS.OutgoingErrorOccurred();
  *(&v700 + 1) = *(v7 - 8);
  v701 = v7;
  v8 = *(*(&v700 + 1) + 64);
  MEMORY[0x28223BE20](v7);
  *&v700 = &v641 - v9;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *(&v712 + 1) = v5;
  v10 = type metadata accessor for MLS.OutgoingGroupRepaired();
  v697 = *(v10 - 8);
  v698 = v10;
  v11 = *(v697 + 64);
  MEMORY[0x28223BE20](v10);
  v696 = (&v641 - v12);
  *&v711 = v3;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *(&v712 + 1) = v5;
  v680 = type metadata accessor for MLS.OutgoingProposalCommitted();
  v699 = *(v680 - 8);
  v13 = *(v699 + 64);
  MEMORY[0x28223BE20](v680);
  v670 = &v641 - v14;
  *&v711 = v3;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *(&v712 + 1) = v5;
  v681 = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials();
  v702 = *(v681 - 1);
  v15 = *(v702 + 64);
  MEMORY[0x28223BE20](v681);
  v671 = &v641 - v16;
  v679 = type metadata accessor for MLS.OutgoingGroupNameChange();
  v695 = *(v679 - 8);
  v17 = v695[8];
  MEMORY[0x28223BE20](v679);
  v677 = &v641 - v18;
  v675 = type metadata accessor for MLS.OutgoingDowngrade();
  v692 = *(v675 - 8);
  v19 = v692[8];
  MEMORY[0x28223BE20](v675);
  v667 = &v641 - v20;
  v666 = type metadata accessor for MLS.OutgoingApplicationSend();
  v691 = *(v666 - 8);
  v21 = v691[8];
  MEMORY[0x28223BE20](v666);
  v665 = &v641 - v22;
  *&v711 = v3;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *(&v712 + 1) = v5;
  v678 = type metadata accessor for MLS.OutgoingRecreateGroup();
  v694 = *(v678 - 1);
  v23 = *(v694 + 64);
  MEMORY[0x28223BE20](v678);
  v669 = &v641 - v24;
  *&v711 = v3;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *(&v712 + 1) = v5;
  v676 = type metadata accessor for MLS.OutgoingResurrectGroup();
  v693 = *(v676 - 1);
  v25 = *(v693 + 64);
  MEMORY[0x28223BE20](v676);
  v668 = &v641 - v26;
  v27 = type metadata accessor for MLS.OutgoingFailureToDecrypt();
  v689 = *(v27 - 1);
  v690 = v27;
  v28 = *(v689 + 64);
  MEMORY[0x28223BE20](v27);
  v663 = &v641 - v29;
  *&v711 = v3;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *(&v712 + 1) = v5;
  v664 = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2();
  v688 = *(v664 - 8);
  v30 = *(v688 + 64);
  MEMORY[0x28223BE20](v664);
  v662 = &v641 - v31;
  *&v711 = v3;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *(&v712 + 1) = v5;
  v674 = type metadata accessor for MLS.OutgoingResync();
  v687 = *(v674 - 8);
  v32 = *(v687 + 64);
  MEMORY[0x28223BE20](v674);
  v660 = &v641 - v33;
  v672 = type metadata accessor for MLS.OutgoingKeyUpdate();
  v683 = *(v672 - 8);
  v34 = *(v683 + 64);
  MEMORY[0x28223BE20](v672);
  v658 = &v641 - v35;
  v657 = type metadata accessor for MLS.OutgoingRemoveSelf();
  v682 = *(v657 - 8);
  v36 = *(v682 + 64);
  MEMORY[0x28223BE20](v657);
  v656 = &v641 - v37;
  *&v711 = v3;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *(&v712 + 1) = v5;
  v673 = type metadata accessor for MLS.OutgoingKickMember();
  v686 = *(v673 - 1);
  v38 = *(v686 + 64);
  MEMORY[0x28223BE20](v673);
  v684 = &v641 - v39;
  *&v711 = v3;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *(&v712 + 1) = v5;
  v661 = type metadata accessor for MLS.OutgoingAddMember();
  v685 = *(v661 - 8);
  v40 = *(v685 + 64);
  MEMORY[0x28223BE20](v661);
  v659 = &v641 - v41;
  v708 = type metadata accessor for Optional();
  v710 = *(v708 - 8);
  v42 = *(v710 + 64);
  v43 = MEMORY[0x28223BE20](v708);
  v655 = &v641 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v654 = &v641 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v653 = &v641 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v652 = &v641 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v651 = &v641 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v650 = &v641 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v649 = &v641 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v648 = &v641 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v647 = &v641 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v646 = &v641 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v645 = &v641 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v644 = &v641 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v643 = &v641 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v642 = &v641 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v73 = &v641 - v72;
  v74 = MEMORY[0x28223BE20](v71);
  v76 = &v641 - v75;
  MEMORY[0x28223BE20](v74);
  v78 = &v641 - v77;
  v703 = v6;
  v704 = v3;
  *&v711 = v3;
  v709 = v4;
  *(&v711 + 1) = v4;
  *&v712 = v6;
  *&v706 = v5;
  *(&v712 + 1) = v5;
  Group = type metadata accessor for MLS.OutgoingCreateGroup();
  v80 = *(Group - 1);
  v81 = *(v80 + 64);
  v82 = MEMORY[0x28223BE20](Group);
  v84 = (&v641 - v83);
  v85 = *(*(a1 - 1) + 64);
  MEMORY[0x28223BE20](v82);
  v87 = &v641 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v88 + 16))(v87, v707, a1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v190 = v659;
      v191 = v661;
      (*(v685 + 32))(v659, v87, v661);
      v192 = *v190;
      v707 = *(v190 + 1);
      v193 = *(v190 + 3);
      *(&v700 + 1) = *(v190 + 2);
      v701 = v192;
      v194 = v710;
      v195 = v708;
      (*(v710 + 16))(v76, &v190[v191[14]], v708);
      v117 = v709;
      v196 = *(v709 - 8);
      v197 = (*(v196 + 48))(v76, 1, v709);
      v702 = v193;
      if (v197 == 1)
      {
        v198 = *(v194 + 8);

        v198(v76, v195);
        v708 = 0;
        *&v700 = 0xF000000000000000;
      }

      else
      {

        v285 = v718;
        v286 = MLS.ClientContext.dataRepresentation.getter(v117, v706);
        if (v285)
        {
          (*(v685 + 8))(v190, v191);

          v262 = *(v196 + 8);
          v263 = v76;
          goto LABEL_47;
        }

        v718 = 0;
        v499 = *(v196 + 8);
        v708 = v286;
        *&v700 = v287;
        v499(v76, v117);
      }

      v692 = &v641;
      v500 = *&v190[v191[15]];
      v501 = &v190[v191[16]];
      v502 = *(v501 + 1);
      *&v706 = *v501;
      v697 = v502;
      v698 = v500;
      v503 = *(v501 + 3);
      v710 = *(v501 + 2);
      v504 = v191[18];
      v505 = &v190[v191[17]];
      v506 = v505[1];
      v699 = *v505;
      v695 = v506;
      v696 = v503;
      v508 = v505[2];
      v693 = v505[3];
      v507 = v693;
      v694 = v508;
      v690 = *&v190[v504];
      *&v711 = v690;
      MEMORY[0x28223BE20](v500);
      v691 = &v641 - 6;
      *(&v641 - 4) = v704;
      *(&v641 - 3) = v117;
      v509 = v703;
      *(&v641 - 2) = v703;
      *(&v641 - 1) = v510;

      outlined copy of Data._Representation(v710, v503);

      outlined copy of Data._Representation(v508, v507);
      v511 = *(v509 + 24);
      v512 = v191;
      v513 = type metadata accessor for Set();

      WitnessTable = swift_getWitnessTable();
      v515 = v718;
      v517 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in MLS.IncomingEventType.allMemberEvent(), v691, v513, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v516);
      v718 = v515;

      v709 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v517);

      v518 = v512[20];
      v519 = &v190[v512[19]];
      v520 = *v519;
      v521 = v519[1];
      v523 = *&v190[v518];
      v522 = *&v190[v518 + 8];
      v524 = &v190[v512[21]];
      v525 = *v524;
      v526 = v524[1];
      outlined copy of Data._Representation(v520, v521);
      outlined copy of Data?(v523, v522);
      outlined copy of Data._Representation(v525, v526);
      (*(v685 + 8))(v190, v512);
      *&v711 = v701;
      *(&v711 + 1) = v707;
      *&v712 = *(&v700 + 1);
      *(&v712 + 1) = v702;
      *&v713 = v708;
      *(&v713 + 1) = v700;
      *&v714[0] = v698;
      *(&v714[0] + 1) = v706;
      *&v714[1] = v697;
      *(&v714[1] + 1) = v710;
      *&v714[2] = v696;
      *(&v714[2] + 1) = v699;
      *&v714[3] = v695;
      *(&v714[3] + 1) = v694;
      *&v714[4] = v693;
      *(&v714[4] + 1) = v709;
      *&v527 = v520;
      *(&v527 + 1) = v521;
      *&v528 = v523;
      *(&v528 + 1) = v522;
      v714[6] = v528;
      v714[5] = v527;
      *&v714[7] = v525;
      *(&v714[7] + 1) = v526;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi0_(&v711);
      goto LABEL_112;
    case 2u:
      v145 = v684;
      v146 = v673;
      (*(v686 + 32))(v684, v87, v673);
      v147 = *(v145 + 1);
      v707 = *v145;
      v148 = *(v145 + 3);
      v702 = *(v145 + 2);
      v149 = v710;
      v150 = v708;
      (*(v710 + 16))(v73, &v145[v146[14]], v708);
      v151 = v709;
      v152 = *(v709 - 8);
      if ((*(v152 + 48))(v73, 1, v709) == 1)
      {
        v153 = *(v149 + 8);

        v153(v73, v150);
        v710 = 0;
        v708 = 0xF000000000000000;
        *(&v700 + 1) = v147;
        v701 = v148;
        v154 = v706;
      }

      else
      {

        v268 = v147;
        v154 = v706;
        v269 = v718;
        v270 = MLS.ClientContext.dataRepresentation.getter(v151, v706);
        if (v269)
        {
          (*(v686 + 8))(v684, v146);

          (*(v152 + 8))(v73, v151);
          return result;
        }

        v718 = 0;
        v423 = *(v152 + 8);
        v710 = v270;
        v708 = v271;
        v423(v73, v151);
        *(&v700 + 1) = v268;
        v701 = v148;
      }

      v696 = &v641;
      v424 = v684;
      v425 = *&v684[v146[15]];
      v426 = &v684[v146[16]];
      v427 = *(v426 + 1);
      *&v706 = *v426;
      v699 = v427;
      *&v700 = v425;
      v428 = *(v426 + 2);
      v697 = *(v426 + 3);
      v429 = v697;
      v698 = v428;
      *&v711 = *&v684[v146[17]];
      MEMORY[0x28223BE20](v425);
      v695 = &v641 - 6;
      v430 = v703;
      *(&v641 - 4) = v704;
      *(&v641 - 3) = v151;
      *(&v641 - 2) = v430;
      *(&v641 - 1) = v154;

      outlined copy of Data._Representation(v428, v429);
      v431 = *(v430 + 24);
      v432 = type metadata accessor for Set();

      v433 = swift_getWitnessTable();
      v434 = v718;
      v436 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), v695, v432, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v433, MEMORY[0x277D84AC0], v435);
      v718 = v434;

      v709 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v436);

      v437 = v673;
      v438 = v673[19];
      v439 = &v424[v673[18]];
      v440 = *v439;
      v441 = v439[1];
      v443 = *&v424[v438];
      v442 = *&v424[v438 + 8];
      v444 = &v424[v673[20]];
      v445 = *v444;
      v446 = v444[1];
      outlined copy of Data._Representation(v440, v441);
      outlined copy of Data?(v443, v442);
      outlined copy of Data._Representation(v445, v446);
      (*(v686 + 8))(v424, v437);
      *&v711 = v707;
      *(&v711 + 1) = *(&v700 + 1);
      *&v712 = v702;
      *(&v712 + 1) = v701;
      *&v713 = v710;
      *(&v713 + 1) = v708;
      *&v714[0] = v700;
      *(&v714[0] + 1) = v706;
      *&v714[1] = v699;
      *(&v714[1] + 1) = v698;
      *&v714[2] = v697;
      *(&v714[2] + 1) = v709;
      *&v447 = v440;
      *(&v447 + 1) = v441;
      *&v448 = v443;
      *(&v448 + 1) = v442;
      v714[4] = v448;
      v714[3] = v447;
      *&v714[5] = v445;
      *(&v714[5] + 1) = v446;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi1_(&v711);
      goto LABEL_112;
    case 3u:
      v167 = v656;
      v168 = v87;
      v169 = v657;
      (*(v682 + 32))(v656, v168, v657);
      v170 = *v167;
      v707 = *(v167 + 1);
      v171 = *(v167 + 3);
      v703 = *(v167 + 2);
      v704 = v170;
      v172 = v710;
      v173 = v642;
      v174 = v708;
      (*(v710 + 16))(v642, &v167[v169[10]], v708);
      v175 = v709;
      v176 = *(v709 - 8);
      if ((*(v176 + 48))(v173, 1, v709) == 1)
      {
        v177 = *(v172 + 8);

        v177(v173, v174);
        v710 = 0;
        v708 = 0xF000000000000000;
      }

      else
      {

        v275 = v718;
        v276 = MLS.ClientContext.dataRepresentation.getter(v175, v706);
        if (v275)
        {
          v278 = v682;
          goto LABEL_72;
        }

        v718 = 0;
        v453 = *(v176 + 8);
        v710 = v276;
        v708 = v277;
        v453(v173, v175);
      }

      v454 = v171;
      v455 = v169[12];
      v456 = *&v167[v169[11]];
      v457 = v169;
      v458 = *&v167[v455];
      v459 = *&v167[v455 + 8];
      v460 = *&v167[v455 + 16];
      v461 = *&v167[v455 + 24];

      outlined copy of Data._Representation(v460, v461);
      (*(v682 + 8))(v167, v457);
      *&v711 = v704;
      *(&v711 + 1) = v707;
      *&v712 = v703;
      *(&v712 + 1) = v454;
      *&v713 = v710;
      *(&v713 + 1) = v708;
      *&v714[0] = v456;
      *(&v714[0] + 1) = v458;
      *&v714[1] = v459;
      *(&v714[1] + 1) = v460;
      *&v714[2] = v461;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi2_(&v711);
      goto LABEL_108;
    case 4u:
      v110 = v658;
      v111 = v672;
      (*(v683 + 32))(v658, v87, v672);
      v125 = *v110;
      v707 = *(v110 + 1);
      v126 = *(v110 + 3);
      v703 = *(v110 + 2);
      v704 = v125;
      v127 = v710;
      v115 = v643;
      v128 = v708;
      (*(v710 + 16))(v643, &v110[v111[10]], v708);
      v117 = v709;
      v118 = *(v709 - 8);
      if ((*(v118 + 48))(v115, 1, v709) == 1)
      {
        v129 = *(v127 + 8);

        v129(v115, v128);
        v710 = 0;
        v708 = 0xF000000000000000;
      }

      else
      {

        v256 = v718;
        v257 = MLS.ClientContext.dataRepresentation.getter(v117, v706);
        if (v256)
        {
          v252 = v683;
          goto LABEL_46;
        }

        v718 = 0;
        v343 = *(v118 + 8);
        v710 = v257;
        v708 = v258;
        v343(v115, v117);
      }

      v709 = v126;
      v344 = *&v110[v111[11]];
      v345 = &v110[v111[12]];
      v346 = *(v345 + 1);
      *&v706 = *v345;
      v701 = v346;
      v702 = v344;
      v347 = *(v345 + 2);
      v348 = *(v345 + 3);
      v349 = v111[14];
      v350 = &v110[v111[13]];
      v351 = *(v350 + 1);
      *&v700 = *v350;
      *(&v700 + 1) = v348;
      v353 = *&v110[v349];
      v352 = *&v110[v349 + 8];
      v354 = &v110[v111[15]];
      v355 = *v354;
      v356 = v354[1];

      outlined copy of Data._Representation(v347, v348);
      v357 = v700;
      outlined copy of Data._Representation(v700, v351);
      outlined copy of Data?(v353, v352);
      outlined copy of Data._Representation(v355, v356);
      (*(v683 + 8))(v110, v672);
      *&v711 = v704;
      *(&v711 + 1) = v707;
      *&v712 = v703;
      *(&v712 + 1) = v709;
      *&v713 = v710;
      *(&v713 + 1) = v708;
      *&v714[0] = v702;
      *(&v714[0] + 1) = v706;
      *&v714[1] = v701;
      *&v358 = v347;
      *(&v358 + 1) = *(&v700 + 1);
      *&v359 = v357;
      *(&v359 + 1) = v351;
      *(&v714[2] + 8) = v359;
      *&v359 = v353;
      *(&v359 + 1) = v352;
      *(&v714[1] + 8) = v358;
      *&v358 = v355;
      *(&v358 + 1) = v356;
      *(&v714[4] + 8) = v358;
      *(&v714[3] + 8) = v359;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi3_(&v711);
      goto LABEL_108;
    case 5u:
      v199 = v660;
      v200 = v674;
      (*(v687 + 32))(v660, v87, v674);
      v201 = *v199;
      v707 = *(v199 + 1);
      v202 = *(v199 + 3);
      v703 = *(v199 + 2);
      v704 = v201;
      v203 = v710;
      v204 = v644;
      v205 = v708;
      (*(v710 + 16))(v644, &v199[v200[14]], v708);
      v206 = v709;
      v207 = *(v709 - 8);
      if ((*(v207 + 48))(v204, 1, v709) == 1)
      {
        v208 = *(v203 + 8);

        v208(v204, v205);
        v710 = 0;
        v708 = 0xF000000000000000;
      }

      else
      {

        v288 = v718;
        v289 = MLS.ClientContext.dataRepresentation.getter(v206, v706);
        if (v288)
        {
          (*(v687 + 8))(v199, v200);

          (*(v207 + 8))(v204, v206);
          return result;
        }

        v718 = 0;
        v529 = *(v207 + 8);
        v710 = v289;
        v708 = v290;
        v529(v204, v206);
      }

      v709 = v202;
      v530 = *&v199[v200[15]];
      v531 = &v199[v200[16]];
      v532 = *(v531 + 1);
      *&v706 = *v531;
      v701 = v532;
      v702 = v530;
      v533 = *(v531 + 2);
      v534 = *(v531 + 3);
      v535 = v200[18];
      v536 = &v199[v200[17]];
      v537 = *(v536 + 1);
      *&v700 = *v536;
      *(&v700 + 1) = v534;
      v539 = *&v199[v535];
      v538 = *&v199[v535 + 8];
      v540 = &v199[v200[19]];
      v541 = *v540;
      v542 = v540[1];

      outlined copy of Data._Representation(v533, v534);
      v543 = v700;
      outlined copy of Data._Representation(v700, v537);
      outlined copy of Data?(v539, v538);
      outlined copy of Data._Representation(v541, v542);
      (*(v687 + 8))(v199, v674);
      *&v711 = v704;
      *(&v711 + 1) = v707;
      *&v712 = v703;
      *(&v712 + 1) = v709;
      *&v713 = v710;
      *(&v713 + 1) = v708;
      *&v714[0] = v702;
      *(&v714[0] + 1) = v706;
      *&v714[1] = v701;
      *&v544 = v533;
      *(&v544 + 1) = *(&v700 + 1);
      *&v545 = v543;
      *(&v545 + 1) = v537;
      *(&v714[2] + 8) = v545;
      *&v545 = v539;
      *(&v545 + 1) = v538;
      *(&v714[1] + 8) = v544;
      *&v544 = v541;
      *(&v544 + 1) = v542;
      *(&v714[4] + 8) = v544;
      *(&v714[3] + 8) = v545;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi4_(&v711);
      goto LABEL_108;
    case 6u:
      v219 = v662;
      v220 = v664;
      (*(v688 + 32))(v662, v87, v664);
      v221 = *v219;
      v707 = *(v219 + 1);
      v222 = *(v219 + 3);
      v701 = *(v219 + 2);
      v702 = v221;
      v223 = v710;
      v224 = v645;
      v225 = v708;
      (*(v710 + 16))(v645, &v219[v220[14]], v708);
      v226 = v709;
      v227 = *(v709 - 8);
      if ((*(v227 + 48))(v224, 1, v709) == 1)
      {
        v228 = *(v223 + 8);

        v228(v224, v225);
        v710 = 0;
        v708 = 0xF000000000000000;
      }

      else
      {

        v294 = v718;
        v295 = MLS.ClientContext.dataRepresentation.getter(v226, v706);
        v718 = v294;
        if (v294)
        {
          (*(v688 + 8))(v219, v220);

          (*(v227 + 8))(v224, v226);
          return result;
        }

        v577 = *(v227 + 8);
        v710 = v295;
        v708 = v296;
        v577(v224, v226);
      }

      v709 = v222;
      v578 = v220[16];
      v579 = *&v219[v220[15]];
      v580 = v703;
      v581 = v220;
      v582 = *(v703 + 40);

      v582(&v711, v704, v580);
      v706 = v711;
      v583 = v712;
      LODWORD(v704) = BYTE8(v712);
      v584 = &v219[v220[17]];
      v586 = *v584;
      v585 = *(v584 + 1);
      v587 = *&v219[v220[18]];
      v588 = *(v688 + 8);

      v588(v219, v581);
      *&v711 = v702;
      *(&v711 + 1) = v707;
      *&v712 = v701;
      *(&v712 + 1) = v709;
      *&v713 = v710;
      *(&v713 + 1) = v708;
      *&v714[0] = v579;
      *(v714 + 8) = v706;
      *(&v714[1] + 1) = v583;
      LOBYTE(v714[2]) = v704;
      *(&v714[2] + 1) = v586;
      *&v714[3] = v585;
      *(&v714[3] + 1) = v587;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi5_(&v711);
      goto LABEL_108;
    case 7u:
      v178 = v690;
      v179 = v663;
      (*(v689 + 32))(v663, v87, v690);
      v180 = *(v179 + 1);
      v707 = *v179;
      v181 = *(v179 + 3);
      v704 = *(v179 + 2);
      v182 = *(v178 + 10);
      v183 = v710;
      v184 = v646;
      v185 = v708;
      (*(v710 + 16))(v646, &v179[v182], v708);
      v186 = v709;
      v187 = *(v709 - 8);
      if ((*(v187 + 48))(v184, 1, v709) == 1)
      {
        v188 = *(v183 + 8);

        v188(v184, v185);
        v710 = 0;
        v189 = 0xF000000000000000;
      }

      else
      {

        v279 = v718;
        v280 = MLS.ClientContext.dataRepresentation.getter(v186, v706);
        if (v279)
        {
          (*(v689 + 8))(v179, v690);

          (*(v187 + 8))(v184, v186);
          return result;
        }

        v189 = v281;
        v718 = 0;
        v462 = *(v187 + 8);
        v710 = v280;
        v462(v184, v186);
      }

      v463 = v181;
      v464 = v690;
      v465 = *&v179[*(v690 + 11)];
      v466 = *&v179[*(v690 + 12)];
      v467 = *(v689 + 8);

      v467(v179, v464);
      *&v711 = v707;
      *(&v711 + 1) = v180;
      *&v712 = v704;
      *(&v712 + 1) = v463;
      *&v713 = v710;
      *(&v713 + 1) = v189;
      *&v714[0] = v465;
      *(&v714[0] + 1) = v466;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi6_(&v711);
      goto LABEL_108;
    case 8u:
      v235 = v668;
      v236 = v676;
      (*(v693 + 32))(v668, v87, v676);
      v237 = *v235;
      v238 = *(v235 + 1);
      v239 = *(v235 + 3);
      v701 = *(v235 + 2);
      v702 = v237;
      v707 = v239;
      v240 = v710;
      v241 = v647;
      v242 = v708;
      (*(v710 + 16))(v647, &v235[v236[14]], v708);
      v243 = v709;
      v244 = *(v709 - 8);
      if ((*(v244 + 48))(v241, 1, v709) == 1)
      {
        v245 = *(v240 + 8);

        v245(v241, v242);
        v708 = 0;
        *&v700 = v238;
        *(&v700 + 1) = 0xF000000000000000;
      }

      else
      {

        v300 = v718;
        v301 = MLS.ClientContext.dataRepresentation.getter(v243, v706);
        v718 = v300;
        if (v300)
        {
          (*(v693 + 8))(v235, v236);

          (*(v244 + 8))(v241, v243);
          return result;
        }

        v604 = *(v244 + 8);
        v708 = v301;
        *(&v700 + 1) = v302;
        v604(v241, v243);
        *&v700 = v238;
      }

      v691 = &v641;
      v605 = *&v235[v236[15]];
      v606 = &v235[v236[16]];
      v607 = *(v606 + 1);
      *&v706 = *v606;
      v697 = v607;
      v698 = v605;
      v608 = *(v606 + 3);
      v710 = *(v606 + 2);
      v609 = v236[18];
      v610 = &v235[v236[17]];
      v611 = v610[1];
      v699 = *v610;
      v695 = v611;
      v696 = v608;
      v613 = v610[3];
      v694 = v610[2];
      v612 = v694;
      v692 = v613;
      v690 = *&v235[v609];
      *&v711 = v690;
      MEMORY[0x28223BE20](v605);
      v614 = v703;
      v615 = v709;
      *(&v641 - 4) = v704;
      *(&v641 - 3) = v615;
      *(&v641 - 2) = v614;
      *(&v641 - 1) = v616;

      outlined copy of Data._Representation(v710, v608);

      outlined copy of Data._Representation(v612, v613);
      v617 = *(v614 + 24);
      v618 = type metadata accessor for Set();

      v619 = swift_getWitnessTable();
      v620 = v718;
      v622 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), (&v641 - 6), v618, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v619, MEMORY[0x277D84AC0], v621);
      v718 = v620;

      v709 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v622);

      v623 = v676;
      v624 = v676[20];
      v625 = &v235[v676[19]];
      v626 = *v625;
      v627 = v625[1];
      v628 = *&v235[v624];
      v629 = *&v235[v624 + 8];
      v630 = &v235[v676[21]];
      v631 = *v630;
      v632 = v630[1];
      outlined copy of Data._Representation(v626, v627);
      outlined copy of Data?(v628, v629);
      outlined copy of Data._Representation(v631, v632);
      (*(v693 + 8))(v235, v623);
      *&v711 = v702;
      *(&v711 + 1) = v700;
      *&v712 = v701;
      *(&v712 + 1) = v707;
      *&v713 = v708;
      *(&v713 + 1) = *(&v700 + 1);
      *&v714[0] = v698;
      *(&v714[0] + 1) = v706;
      *&v714[1] = v697;
      *(&v714[1] + 1) = v710;
      *&v714[2] = v696;
      *(&v714[2] + 1) = v699;
      *&v714[3] = v695;
      *(&v714[3] + 1) = v694;
      *&v714[4] = v692;
      *(&v714[4] + 1) = v709;
      *&v633 = v626;
      *(&v633 + 1) = v627;
      *&v634 = v628;
      *(&v634 + 1) = v629;
      v714[6] = v634;
      v714[5] = v633;
      *&v714[7] = v631;
      *(&v714[7] + 1) = v632;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi7_(&v711);
      goto LABEL_112;
    case 9u:
      v135 = v669;
      v136 = v678;
      (*(v694 + 32))(v669, v87, v678);
      v137 = *v135;
      v138 = *(v135 + 1);
      v139 = *(v135 + 3);
      v701 = *(v135 + 2);
      v702 = v137;
      v707 = v139;
      v140 = v710;
      v141 = v648;
      v142 = v708;
      (*(v710 + 16))(v648, &v135[v136[14]], v708);
      v117 = v709;
      v143 = *(v709 - 8);
      if ((*(v143 + 48))(v141, 1, v709) == 1)
      {
        v144 = *(v140 + 8);

        v144(v141, v142);
        v708 = 0;
        *&v700 = v138;
        *(&v700 + 1) = 0xF000000000000000;
      }

      else
      {

        v265 = v718;
        v266 = MLS.ClientContext.dataRepresentation.getter(v117, v706);
        if (v265)
        {
          (*(v694 + 8))(v135, v136);

          v262 = *(v143 + 8);
          v263 = v141;
          goto LABEL_47;
        }

        v718 = 0;
        v392 = *(v143 + 8);
        v708 = v266;
        *(&v700 + 1) = v267;
        v392(v141, v117);
        *&v700 = v138;
      }

      v691 = &v641;
      v393 = *&v135[v136[15]];
      v394 = &v135[v136[16]];
      v395 = *(v394 + 1);
      *&v706 = *v394;
      v697 = v395;
      v698 = v393;
      v396 = *(v394 + 2);
      v710 = *(v394 + 3);
      v397 = v136[18];
      v398 = &v135[v136[17]];
      v399 = v398[1];
      v699 = *v398;
      v695 = v399;
      v696 = v396;
      v401 = v398[2];
      v692 = v398[3];
      v400 = v692;
      v693 = v401;
      *&v711 = *&v135[v397];
      MEMORY[0x28223BE20](v393);
      v690 = &v641 - 6;
      *(&v641 - 4) = v704;
      *(&v641 - 3) = v117;
      v402 = v703;
      *(&v641 - 2) = v703;
      *(&v641 - 1) = v403;

      outlined copy of Data._Representation(v396, v710);

      outlined copy of Data._Representation(v401, v400);
      v404 = *(v402 + 24);
      v405 = v135;
      v406 = type metadata accessor for Set();

      v407 = swift_getWitnessTable();
      v408 = v718;
      v410 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), v690, v406, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v407, MEMORY[0x277D84AC0], v409);
      v718 = v408;

      v709 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v410);

      v411 = v678;
      v412 = v678[20];
      v413 = (v405 + v678[19]);
      v414 = *v413;
      v415 = v413[1];
      v416 = *(v405 + v412);
      v417 = *(v405 + v412 + 8);
      v418 = (v405 + v678[21]);
      v419 = *v418;
      v420 = v418[1];
      outlined copy of Data._Representation(v414, v415);
      outlined copy of Data?(v416, v417);
      outlined copy of Data._Representation(v419, v420);
      (*(v694 + 8))(v405, v411);
      *&v711 = v702;
      *(&v711 + 1) = v700;
      *&v712 = v701;
      *(&v712 + 1) = v707;
      *&v713 = v708;
      *(&v713 + 1) = *(&v700 + 1);
      *&v714[0] = v698;
      *(&v714[0] + 1) = v706;
      *&v714[1] = v697;
      *(&v714[1] + 1) = v696;
      *&v714[2] = v710;
      *(&v714[2] + 1) = v699;
      *&v714[3] = v695;
      *(&v714[3] + 1) = v693;
      *&v714[4] = v692;
      *(&v714[4] + 1) = v709;
      *&v421 = v414;
      *(&v421 + 1) = v415;
      *&v422 = v416;
      *(&v422 + 1) = v417;
      v714[6] = v422;
      v714[5] = v421;
      *&v714[7] = v419;
      *(&v714[7] + 1) = v420;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi8_(&v711);
      goto LABEL_112;
    case 0xAu:
      v167 = v665;
      v229 = v87;
      v169 = v666;
      (v691[4])(v665, v229, v666);
      v230 = *v167;
      v707 = *(v167 + 1);
      v231 = *(v167 + 3);
      v703 = *(v167 + 2);
      v704 = v230;
      v232 = v710;
      v173 = v649;
      v233 = v708;
      (*(v710 + 16))(v649, &v167[v169[10]], v708);
      v175 = v709;
      v176 = *(v709 - 8);
      if ((*(v176 + 48))(v173, 1, v709) == 1)
      {
        v234 = *(v232 + 8);

        v234(v173, v233);
        v710 = 0;
        v708 = 0xF000000000000000;
LABEL_107:
        v590 = v231;
        v591 = v169[12];
        v592 = *&v167[v169[11]];
        v593 = v169;
        v594 = *&v167[v591];
        v595 = *&v167[v591 + 8];
        v596 = *&v167[v591 + 16];
        v597 = *&v167[v591 + 24];

        outlined copy of Data._Representation(v596, v597);
        (v691[1])(v167, v593);
        *&v711 = v704;
        *(&v711 + 1) = v707;
        *&v712 = v703;
        *(&v712 + 1) = v590;
        *&v713 = v710;
        *(&v713 + 1) = v708;
        *&v714[0] = v592;
        *(&v714[0] + 1) = v594;
        *&v714[1] = v595;
        *(&v714[1] + 1) = v596;
        *&v714[2] = v597;
        _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi9_(&v711);
        goto LABEL_108;
      }

      v297 = v718;
      v298 = MLS.ClientContext.dataRepresentation.getter(v175, v706);
      if (!v297)
      {
        v718 = 0;
        v589 = *(v176 + 8);
        v710 = v298;
        v708 = v299;
        v589(v173, v175);
        goto LABEL_107;
      }

      v278 = v691;
LABEL_72:
      (*(v278 + 8))(v167, v169);

      (*(v176 + 8))(v173, v175);
      return result;
    case 0xBu:
      v110 = v667;
      v111 = v675;
      (v692[4])(v667, v87, v675);
      v120 = *v110;
      v707 = *(v110 + 1);
      v121 = *(v110 + 3);
      v703 = *(v110 + 2);
      v704 = v120;
      v122 = v710;
      v115 = v650;
      v123 = v708;
      (*(v710 + 16))(v650, &v110[v111[10]], v708);
      v117 = v709;
      v118 = *(v709 - 8);
      if ((*(v118 + 48))(v115, 1, v709) == 1)
      {
        v124 = *(v122 + 8);

        v124(v115, v123);
        v710 = 0;
        v708 = 0xF000000000000000;
      }

      else
      {

        v253 = v718;
        v254 = MLS.ClientContext.dataRepresentation.getter(v117, v706);
        if (v253)
        {
          v252 = v692;
          goto LABEL_46;
        }

        v718 = 0;
        v325 = *(v118 + 8);
        v710 = v254;
        v708 = v255;
        v325(v115, v117);
      }

      v709 = v121;
      v326 = *&v110[v111[11]];
      v327 = &v110[v111[12]];
      v328 = *(v327 + 1);
      *&v706 = *v327;
      v701 = v328;
      v702 = v326;
      v330 = *(v327 + 2);
      v329 = *(v327 + 3);
      v331 = v111[14];
      v332 = &v110[v111[13]];
      *&v700 = *v332;
      *(&v700 + 1) = v329;
      v333 = v111;
      v334 = *(v332 + 1);
      v336 = *&v110[v331];
      v335 = *&v110[v331 + 8];
      v337 = &v110[v333[15]];
      v339 = *v337;
      v338 = v337[1];

      outlined copy of Data._Representation(v330, v329);
      v340 = v700;
      outlined copy of Data._Representation(v700, v334);
      outlined copy of Data?(v336, v335);
      outlined copy of Data._Representation(v339, v338);
      (v692[1])(v110, v675);
      *&v711 = v704;
      *(&v711 + 1) = v707;
      *&v712 = v703;
      *(&v712 + 1) = v709;
      *&v713 = v710;
      *(&v713 + 1) = v708;
      *&v714[0] = v702;
      *(&v714[0] + 1) = v706;
      *&v714[1] = v701;
      *&v341 = v330;
      *(&v341 + 1) = *(&v700 + 1);
      *&v342 = v340;
      *(&v342 + 1) = v334;
      *(&v714[2] + 8) = v342;
      *&v342 = v336;
      *(&v342 + 1) = v335;
      *(&v714[1] + 8) = v341;
      *&v341 = v339;
      *(&v341 + 1) = v338;
      *(&v714[4] + 8) = v341;
      *(&v714[3] + 8) = v342;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi10_(&v711);
      goto LABEL_108;
    case 0xCu:
      v110 = v677;
      v111 = v679;
      (v695[4])(v677, v87, v679);
      v130 = *v110;
      v707 = *(v110 + 1);
      v131 = *(v110 + 3);
      v703 = *(v110 + 2);
      v704 = v130;
      v132 = v710;
      v115 = v651;
      v133 = v708;
      (*(v710 + 16))(v651, &v110[v111[10]], v708);
      v117 = v709;
      v118 = *(v709 - 8);
      if ((*(v118 + 48))(v115, 1, v709) == 1)
      {
        v134 = *(v132 + 8);

        v134(v115, v133);
        v710 = 0;
        v708 = 0xF000000000000000;
      }

      else
      {

        v259 = v718;
        v260 = MLS.ClientContext.dataRepresentation.getter(v117, v706);
        if (v259)
        {
          v252 = v695;
          goto LABEL_46;
        }

        v718 = 0;
        v360 = *(v118 + 8);
        v710 = v260;
        v708 = v261;
        v360(v115, v117);
      }

      v709 = v131;
      v361 = *&v110[v111[11]];
      v362 = &v110[v111[12]];
      v363 = *(v362 + 1);
      *&v706 = *v362;
      v701 = v363;
      v702 = v361;
      v364 = *(v362 + 3);
      *&v700 = *(v362 + 2);
      v365 = v700;
      *(&v700 + 1) = v364;
      v366 = &v110[v111[13]];
      v368 = *v366;
      v367 = v366[1];
      v369 = &v110[v111[14]];
      v371 = *v369;
      v370 = v369[1];
      v698 = v367;
      v699 = v370;
      v372 = v111[16];
      v373 = &v110[v111[15]];
      v375 = *v373;
      v374 = v373[1];
      v693 = v375;
      v694 = v374;
      v376 = &v110[v372];
      v377 = v110;
      v378 = v111;
      v380 = *v376;
      v379 = v376[1];
      v381 = (v377 + v378[17]);
      v383 = *v381;
      v382 = v381[1];
      v696 = v383;
      v697 = v382;

      outlined copy of Data._Representation(v365, v364);
      outlined copy of Data._Representation(v368, v367);
      outlined copy of Data._Representation(v371, v370);
      v384 = v693;
      v385 = v694;
      outlined copy of Data._Representation(v693, v694);
      v386 = v380;
      v387 = v379;
      outlined copy of Data?(v380, v379);
      v388 = v696;
      v389 = v697;
      outlined copy of Data._Representation(v696, v697);
      (v695[1])(v677, v679);
      *&v711 = v704;
      *(&v711 + 1) = v707;
      *&v712 = v703;
      *(&v712 + 1) = v709;
      *&v713 = v710;
      *(&v713 + 1) = v708;
      *&v714[0] = v702;
      *(&v714[0] + 1) = v706;
      *&v714[1] = v701;
      *&v390 = v368;
      *(&v390 + 1) = v698;
      *(&v714[2] + 8) = v390;
      *(&v714[1] + 8) = v700;
      *&v391 = v371;
      *(&v391 + 1) = v699;
      *&v390 = v384;
      *(&v390 + 1) = v385;
      *(&v714[4] + 8) = v390;
      *&v390 = v386;
      *(&v390 + 1) = v387;
      *(&v714[3] + 8) = v391;
      *&v391 = v388;
      *(&v391 + 1) = v389;
      *(&v714[6] + 8) = v391;
      *(&v714[5] + 8) = v390;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi11_(&v711);
      goto LABEL_108;
    case 0xDu:
      v209 = v671;
      v210 = v681;
      (*(v702 + 32))(v671, v87, v681);
      v211 = *v209;
      v707 = *(v209 + 1);
      v212 = *(v209 + 3);
      *&v700 = *(v209 + 2);
      *(&v700 + 1) = v211;
      v213 = v710;
      v214 = v652;
      v215 = v708;
      (*(v710 + 16))(v652, &v209[v210[14]], v708);
      v117 = v709;
      v216 = *(v709 - 8);
      v217 = (*(v216 + 48))(v214, 1, v709);
      v701 = v212;
      if (v217 == 1)
      {
        v218 = *(v213 + 8);

        v218(v214, v215);
        v708 = 0;
        v699 = 0xF000000000000000;
      }

      else
      {

        v291 = v718;
        v292 = MLS.ClientContext.dataRepresentation.getter(v117, v706);
        if (v291)
        {
          (*(v702 + 8))(v209, v210);

          v262 = *(v216 + 8);
          v263 = v214;
          goto LABEL_47;
        }

        v718 = 0;
        v546 = *(v216 + 8);
        v708 = v292;
        v699 = v293;
        v546(v214, v117);
      }

      v691 = &v641;
      v547 = *&v209[v210[15]];
      v548 = &v209[v210[16]];
      v549 = *(v548 + 1);
      *&v706 = *v548;
      v696 = v549;
      v697 = v547;
      v550 = *(v548 + 2);
      v710 = *(v548 + 3);
      v551 = v210[18];
      v552 = &v209[v210[17]];
      v553 = v552[1];
      v698 = *v552;
      v694 = v553;
      v695 = v550;
      v555 = v552[2];
      v692 = v552[3];
      v554 = v692;
      v693 = v555;
      *&v711 = *&v209[v551];
      MEMORY[0x28223BE20](v547);
      v690 = &v641 - 6;
      *(&v641 - 4) = v704;
      *(&v641 - 3) = v117;
      v556 = v703;
      *(&v641 - 2) = v703;
      *(&v641 - 1) = v557;

      outlined copy of Data._Representation(v550, v710);

      outlined copy of Data._Representation(v555, v554);
      v558 = *(v556 + 24);
      v559 = v209;
      v560 = type metadata accessor for Set();

      v561 = swift_getWitnessTable();
      v562 = v718;
      v564 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), v690, v560, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v561, MEMORY[0x277D84AC0], v563);
      v718 = v562;

      v709 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v564);

      v565 = v681;
      v566 = v681[20];
      v567 = (v559 + v681[19]);
      v568 = *v567;
      v569 = v567[1];
      v570 = *(v559 + v566);
      v571 = *(v559 + v566 + 8);
      v572 = (v559 + v681[21]);
      v573 = *v572;
      v574 = v572[1];
      outlined copy of Data._Representation(v568, v569);
      outlined copy of Data?(v570, v571);
      outlined copy of Data._Representation(v573, v574);
      (*(v702 + 8))(v559, v565);
      *&v711 = *(&v700 + 1);
      *(&v711 + 1) = v707;
      *&v712 = v700;
      *(&v712 + 1) = v701;
      *&v713 = v708;
      *(&v713 + 1) = v699;
      *&v714[0] = v697;
      *(&v714[0] + 1) = v706;
      *&v714[1] = v696;
      *(&v714[1] + 1) = v695;
      *&v714[2] = v710;
      *(&v714[2] + 1) = v698;
      *&v714[3] = v694;
      *(&v714[3] + 1) = v693;
      *&v714[4] = v692;
      *(&v714[4] + 1) = v709;
      *&v575 = v568;
      *(&v575 + 1) = v569;
      *&v576 = v570;
      *(&v576 + 1) = v571;
      v714[6] = v576;
      v714[5] = v575;
      *&v714[7] = v573;
      *(&v714[7] + 1) = v574;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi12_(&v711);
      goto LABEL_112;
    case 0xEu:
      v110 = v670;
      v111 = v680;
      (*(v699 + 32))(v670, v87, v680);
      v112 = *v110;
      v707 = *(v110 + 1);
      v113 = *(v110 + 3);
      v703 = *(v110 + 2);
      v704 = v112;
      v114 = v710;
      v115 = v653;
      v116 = v708;
      (*(v710 + 16))(v653, &v110[v111[14]], v708);
      v117 = v709;
      v118 = *(v709 - 8);
      if ((*(v118 + 48))(v115, 1, v709) == 1)
      {
        v119 = *(v114 + 8);

        v119(v115, v116);
        v710 = 0;
        v708 = 0xF000000000000000;
LABEL_79:
        v709 = v113;
        v308 = *&v110[v111[15]];
        v309 = &v110[v111[16]];
        v310 = *(v309 + 1);
        *&v706 = *v309;
        v701 = v310;
        v702 = v308;
        v312 = *(v309 + 2);
        v311 = *(v309 + 3);
        v313 = v111[18];
        v314 = &v110[v111[17]];
        *&v700 = *v314;
        *(&v700 + 1) = v311;
        v315 = v111;
        v316 = *(v314 + 1);
        v318 = *&v110[v313];
        v317 = *&v110[v313 + 8];
        v319 = &v110[v315[19]];
        v321 = *v319;
        v320 = v319[1];

        outlined copy of Data._Representation(v312, v311);
        v322 = v700;
        outlined copy of Data._Representation(v700, v316);
        outlined copy of Data?(v318, v317);
        outlined copy of Data._Representation(v321, v320);
        (*(v699 + 8))(v110, v680);
        *&v711 = v704;
        *(&v711 + 1) = v707;
        *&v712 = v703;
        *(&v712 + 1) = v709;
        *&v713 = v710;
        *(&v713 + 1) = v708;
        *&v714[0] = v702;
        *(&v714[0] + 1) = v706;
        *&v714[1] = v701;
        *&v323 = v312;
        *(&v323 + 1) = *(&v700 + 1);
        *&v324 = v322;
        *(&v324 + 1) = v316;
        *(&v714[2] + 8) = v324;
        *&v324 = v318;
        *(&v324 + 1) = v317;
        *(&v714[1] + 8) = v323;
        *&v323 = v321;
        *(&v323 + 1) = v320;
        *(&v714[4] + 8) = v323;
        *(&v714[3] + 8) = v324;
        _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi13_(&v711);
        goto LABEL_108;
      }

      v249 = v718;
      v250 = MLS.ClientContext.dataRepresentation.getter(v117, v706);
      if (!v249)
      {
        v718 = 0;
        v307 = *(v118 + 8);
        v710 = v250;
        v708 = v251;
        v307(v115, v117);
        goto LABEL_79;
      }

      v252 = v699;
LABEL_46:
      (v252[1])(v110, v111);

      v262 = *(v118 + 8);
      v263 = v115;
LABEL_47:
      v262(v263, v117);
      return result;
    case 0xFu:
      v155 = v696;
      v156 = v698;
      (*(v697 + 32))(v696, v87, v698);
      v158 = *v155;
      v157 = v155[1];
      v159 = v155[3];
      v707 = v155[2];
      v160 = *(v156 + 56);
      v161 = v710;
      v162 = v155 + v160;
      v105 = v654;
      v163 = v708;
      (*(v710 + 16))(v654, v162, v708);
      v102 = v709;
      v106 = *(v709 - 8);
      if ((*(v106 + 48))(v105, 1, v709) == 1)
      {
        *&v706 = v158;
        v164 = *(v161 + 8);

        v164(v105, v163);
        v165 = 0;
        v166 = 0xF000000000000000;
      }

      else
      {

        v272 = v718;
        v273 = MLS.ClientContext.dataRepresentation.getter(v102, v706);
        v718 = v272;
        if (v272)
        {
          (*(v697 + 8))(v696, v698);

          goto LABEL_55;
        }

        v165 = v273;
        v166 = v274;
        *&v706 = v158;
        (*(v106 + 8))(v105, v102);
      }

      v449 = v698;
      v450 = v696;
      v451 = *(v696 + *(v698 + 60));
      v452 = *(v697 + 8);

      v452(v450, v449);
      *&v711 = v706;
      *(&v711 + 1) = v157;
      *&v712 = v707;
      *(&v712 + 1) = v159;
      *&v713 = v165;
      *(&v713 + 1) = v166;
      *&v714[0] = v451;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi14_(&v711);
      goto LABEL_108;
    case 0x10u:
      v97 = v700;
      v98 = v701;
      (*(*(&v700 + 1) + 32))(v700, v87, v701);
      v99 = *(v97 + 1);
      v707 = *v97;
      v100 = *(v97 + 3);
      v702 = *(v97 + 2);
      v101 = *(v98 + 56);

      *&v711 = v704;
      v102 = v709;
      *(&v711 + 1) = v709;
      *&v712 = v703;
      v103 = v706;
      *(&v712 + 1) = v706;
      v104 = type metadata accessor for MLS.OutgoingErrorOccurred.Trigger();
      MLS.OutgoingErrorOccurred.Trigger.allMemberTrigger()(v104, v716);
      v105 = v655;
      (*(v710 + 16))(v655, &v97[*(v98 + 60)], v708);
      v106 = *(v102 - 8);
      if ((*(v106 + 48))(v105, 1, v102) == 1)
      {
        v107 = 0;
        v108 = 0xF000000000000000;
        v109 = v708;
      }

      else
      {
        v246 = v718;
        v247 = MLS.ClientContext.dataRepresentation.getter(v102, v103);
        v718 = v246;
        if (v246)
        {

          outlined destroy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(v716);
          (*(*(&v700 + 1) + 8))(v700, v701);
LABEL_55:
          (*(v106 + 8))(v105, v102);
          return result;
        }

        v107 = v247;
        v108 = v248;
        v710 = v106;
        v109 = v102;
      }

      (*(v710 + 8))(v105, v109);
      v303 = v701;
      v304 = v700;
      v305 = *(v700 + *(v701 + 64));
      v306 = *(*(&v700 + 1) + 8);

      v306(v304, v303);
      v714[3] = v716[4];
      v714[4] = v716[5];
      v714[5] = v716[6];
      LOBYTE(v714[6]) = v717;
      v713 = v716[0];
      v714[0] = v716[1];
      v714[1] = v716[2];
      v714[2] = v716[3];
      *&v711 = v707;
      *(&v711 + 1) = v99;
      *&v712 = v702;
      *(&v712 + 1) = v100;
      *(&v714[6] + 1) = v107;
      *&v714[7] = v108;
      *(&v714[7] + 1) = v305;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi15_(&v711);
LABEL_108:
      v598 = v714[6];
      v599 = v705;
      *(v705 + 128) = v714[5];
      *(v599 + 144) = v598;
      *(v599 + 160) = v714[7];
      *(v599 + 176) = v715;
      v600 = v714[2];
      *(v599 + 64) = v714[1];
      *(v599 + 80) = v600;
      v601 = v714[4];
      *(v599 + 96) = v714[3];
      *(v599 + 112) = v601;
      v602 = v712;
      *v599 = v711;
      *(v599 + 16) = v602;
      result = *&v713;
      v603 = v714[0];
      *(v599 + 32) = v713;
      *(v599 + 48) = v603;
      return result;
    default:
      v702 = v80;
      (*(v80 + 32))(v84, v87, Group);
      v89 = *v84;
      v707 = v84[1];
      v90 = v84[3];
      *(&v700 + 1) = v84[2];
      v701 = v89;
      v91 = v710;
      v92 = v84;
      v93 = v708;
      (*(v710 + 16))(v78, v84 + Group[14], v708);
      v94 = v709;
      v95 = *(v709 - 8);
      if ((*(v95 + 48))(v78, 1, v709) == 1)
      {
        v96 = *(v91 + 8);

        v96(v78, v93);
        v708 = 0;
        v699 = v90;
        *&v700 = 0xF000000000000000;
      }

      else
      {

        v282 = v718;
        v283 = MLS.ClientContext.dataRepresentation.getter(v94, v706);
        if (v282)
        {
          (*(v702 + 8))(v92, Group);

          (*(v95 + 8))(v78, v94);
          return result;
        }

        v718 = 0;
        v468 = *(v95 + 8);
        v708 = v283;
        *&v700 = v284;
        v468(v78, v94);
        v699 = v90;
      }

      v691 = &v641;
      v469 = v92;
      v470 = *(v92 + Group[15]);
      v471 = (v92 + Group[16]);
      v472 = v471[1];
      *&v706 = *v471;
      v696 = v472;
      v697 = v470;
      v473 = v471[2];
      v710 = v471[3];
      v474 = Group[18];
      v475 = (v469 + Group[17]);
      v476 = v475[1];
      v698 = *v475;
      v694 = v476;
      v695 = v473;
      v478 = v475[2];
      v692 = v475[3];
      v477 = v692;
      v693 = v478;
      v689 = *(v469 + v474);
      *&v711 = v689;
      MEMORY[0x28223BE20](v470);
      v690 = &v641 - 6;
      *(&v641 - 4) = v704;
      *(&v641 - 3) = v94;
      v479 = v703;
      *(&v641 - 2) = v703;
      *(&v641 - 1) = v480;

      outlined copy of Data._Representation(v473, v710);

      outlined copy of Data._Representation(v478, v477);
      v481 = *(v479 + 24);
      v482 = Group;
      v483 = type metadata accessor for Set();

      v484 = swift_getWitnessTable();
      v485 = v718;
      v487 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in MLS.IncomingEventType.allMemberEvent(), v690, v483, &type metadata for MLS.AllMember, MEMORY[0x277D84A98], v484, MEMORY[0x277D84AC0], v486);
      v718 = v485;

      v709 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15SecureMessaging3MLSO9AllMemberO_SayAHGTt0g5Tf4g_n(v487);

      v488 = v482[20];
      v489 = (v469 + v482[19]);
      v490 = *v489;
      v491 = v489[1];
      v492 = *(v469 + v488);
      v493 = *(v469 + v488 + 8);
      v494 = (v469 + v482[21]);
      v495 = *v494;
      v496 = v494[1];
      outlined copy of Data._Representation(v490, v491);
      outlined copy of Data?(v492, v493);
      outlined copy of Data._Representation(v495, v496);
      (*(v702 + 8))(v469, v482);
      *&v711 = v701;
      *(&v711 + 1) = v707;
      *&v712 = *(&v700 + 1);
      *(&v712 + 1) = v699;
      *&v713 = v708;
      *(&v713 + 1) = v700;
      *&v714[0] = v697;
      *(&v714[0] + 1) = v706;
      *&v714[1] = v696;
      *(&v714[1] + 1) = v695;
      *&v714[2] = v710;
      *(&v714[2] + 1) = v698;
      *&v714[3] = v694;
      *(&v714[3] + 1) = v693;
      *&v714[4] = v692;
      *(&v714[4] + 1) = v709;
      *&v497 = v490;
      *(&v497 + 1) = v491;
      *&v498 = v492;
      *(&v498 + 1) = v493;
      v714[6] = v498;
      v714[5] = v497;
      *&v714[7] = v495;
      *(&v714[7] + 1) = v496;
      _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi_(&v711);
LABEL_112:
      v635 = v714[6];
      v636 = v705;
      *(v705 + 128) = v714[5];
      *(v636 + 144) = v635;
      *(v636 + 160) = v714[7];
      *(v636 + 176) = v715;
      v637 = v714[2];
      *(v636 + 64) = v714[1];
      *(v636 + 80) = v637;
      v638 = v714[4];
      *(v636 + 96) = v714[3];
      *(v636 + 112) = v638;
      v639 = v712;
      *v636 = v711;
      *(v636 + 16) = v639;
      result = *&v713;
      v640 = v714[0];
      *(v636 + 32) = v713;
      *(v636 + 48) = v640;
      return result;
  }
}

unint64_t lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector()
{
  result = lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector;
  if (!lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector;
  if (!lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricCollector and conformance MetricCollector);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage()
{
  result = lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage;
  if (!lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.OutgoingMessage and conformance MLS.OutgoingMessage);
  }

  return result;
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

unint64_t lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput;
  if (!lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningInput and conformance MLS.SigningInput);
  }

  return result;
}

uint64_t outlined init with copy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21OutgoingErrorOccurredV7TriggerOy_AC9AllMemberO10Foundation4DataV_GMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredV7TriggerOy_AC9AllMemberO10Foundation4DataV_GMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.OutgoingErrorOccurred<MLS.AllMember, Data>.Trigger(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21OutgoingErrorOccurredV7TriggerOy_AC9AllMemberO10Foundation4DataV_GMd, &_s15SecureMessaging3MLSO21OutgoingErrorOccurredV7TriggerOy_AC9AllMemberO10Foundation4DataV_GMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for MLS.OutgoingEventType(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  result = type metadata accessor for MLS.OutgoingCreateGroup();
  if (v6 <= 0x3F)
  {
    result = type metadata accessor for MLS.OutgoingAddMember();
    if (v7 <= 0x3F)
    {
      result = type metadata accessor for MLS.OutgoingKickMember();
      if (v8 <= 0x3F)
      {
        result = type metadata accessor for MLS.OutgoingRemoveSelf();
        if (v9 <= 0x3F)
        {
          result = type metadata accessor for MLS.OutgoingKeyUpdate();
          if (v10 <= 0x3F)
          {
            result = type metadata accessor for MLS.OutgoingResync();
            if (v11 <= 0x3F)
            {
              result = type metadata accessor for MLS.OutgoingFailureToDecrypt_v2();
              if (v12 <= 0x3F)
              {
                result = type metadata accessor for MLS.OutgoingFailureToDecrypt();
                if (v13 <= 0x3F)
                {
                  result = type metadata accessor for MLS.OutgoingResurrectGroup();
                  if (v14 <= 0x3F)
                  {
                    result = type metadata accessor for MLS.OutgoingRecreateGroup();
                    if (v15 <= 0x3F)
                    {
                      result = type metadata accessor for MLS.OutgoingApplicationSend();
                      if (v16 <= 0x3F)
                      {
                        result = type metadata accessor for MLS.OutgoingDowngrade();
                        if (v17 <= 0x3F)
                        {
                          result = type metadata accessor for MLS.OutgoingGroupNameChange();
                          if (v18 <= 0x3F)
                          {
                            result = type metadata accessor for MLS.OutgoingReplaceExpiredCredentials();
                            if (v19 <= 0x3F)
                            {
                              result = type metadata accessor for MLS.OutgoingProposalCommitted();
                              if (v20 <= 0x3F)
                              {
                                result = type metadata accessor for MLS.OutgoingGroupRepaired();
                                if (v21 <= 0x3F)
                                {
                                  result = type metadata accessor for MLS.OutgoingErrorOccurred();
                                  if (v22 <= 0x3F)
                                  {
                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                    return 0;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventType(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 80);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64) + 7;
  v7 = (((v6 & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v6 & 0xFFFFFFFFFFFFFFF8) + 60 > v7)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 60;
  }

  v8 = *(v5 + 80);
  v9 = v8;
  v10 = (v8 & 0xF8 ^ 0x1F8u) & (v8 + 32);
  if (*(v3 + 84))
  {
    v11 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v11 = *(*(*(a3 + 24) - 8) + 64) + 1;
  }

  v12 = v11 + 7;
  v13 = (v12 + ((v4 + 32) & ~v4)) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((((((((v15 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v17 = ((((((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 <= v16)
  {
    v17 = ((((((((v15 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v18 = v14 + 32;
  if (v14 + 32 > v17)
  {
    v17 = v14 + 32;
  }

  v19 = (((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = v19 + 16;
  if (v19 + 16 > v17)
  {
    v17 = v19 + 16;
  }

  v21 = v13 + 8;
  v22 = ((((v6 + ((v21 + v9) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v22 <= v17)
  {
    v22 = v17;
  }

  v23 = v14 + 8;
  if (v23 > v22)
  {
    v22 = v23;
  }

  if (v16 > v22)
  {
    v22 = v16;
  }

  if (v18 > v22)
  {
    v22 = v18;
  }

  if (v20 > v22)
  {
    v22 = v19 + 16;
  }

  if (((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > v22)
  {
    v22 = ((((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v16 > v22)
  {
    v22 = v16;
  }

  if (v20 > v22)
  {
    v22 = v19 + 16;
  }

  if (v21 <= v22)
  {
    v21 = v22;
  }

  v24 = ((v12 + ((v4 + v10 + v7 + 1) & ~v4)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v24 <= v21)
  {
    v25 = v21;
  }

  else
  {
    v25 = v24;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_55;
  }

  v26 = v25 + 1;
  v27 = 8 * (v25 + 1);
  if ((v25 + 1) <= 3)
  {
    v30 = ((a2 + ~(-1 << v27) - 239) >> v27) + 1;
    if (HIWORD(v30))
    {
      v28 = *(a1 + v26);
      if (!v28)
      {
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    if (v30 > 0xFF)
    {
      v28 = *(a1 + v26);
      if (!*(a1 + v26))
      {
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    if (v30 < 2)
    {
LABEL_55:
      v32 = *(a1 + v25);
      if (v32 >= 0x11)
      {
        return (v32 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v28 = *(a1 + v26);
  if (!*(a1 + v26))
  {
    goto LABEL_55;
  }

LABEL_44:
  v31 = (v28 - 1) << v27;
  if (v26 > 3)
  {
    v31 = 0;
  }

  if (v26)
  {
    if (v26 > 3)
    {
      LODWORD(v26) = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        LODWORD(v26) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v26) = *a1;
      }
    }

    else if (v26 == 1)
    {
      LODWORD(v26) = *a1;
    }

    else
    {
      LODWORD(v26) = *a1;
    }
  }

  return (v26 | v31) + 240;
}

void storeEnumTagSinglePayload for MLS.OutgoingEventType(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 80);
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 64) + 7;
  v9 = (((v8 & 0xFFFFFFFFFFFFFFF8) + 67) & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v8 & 0xFFFFFFFFFFFFFFF8) + 60 > v9)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 60;
  }

  v10 = *(v7 + 80);
  v11 = v10;
  v12 = (v10 & 0xF8 ^ 0x1F8u) & (v10 + 32);
  if (*(v5 + 84))
  {
    v13 = *(*(*(a4 + 24) - 8) + 64);
  }

  else
  {
    v13 = *(*(*(a4 + 24) - 8) + 64) + 1;
  }

  v14 = v13 + 7;
  v15 = (v14 + ((v6 + 32) & ~v6)) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = ((((((((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = ((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v19 <= v18)
  {
    v19 = ((((((((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v20 = v16 + 32;
  if (v16 + 32 > v19)
  {
    v19 = v16 + 32;
  }

  v21 = (((v17 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = v21 + 16;
  if (v21 + 16 > v19)
  {
    v19 = v21 + 16;
  }

  v23 = v15 + 8;
  v24 = ((((v8 + ((v23 + v11) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v24 <= v19)
  {
    v24 = v19;
  }

  v25 = v16 + 8;
  if (v25 > v24)
  {
    v24 = v25;
  }

  if (v18 > v24)
  {
    v24 = v18;
  }

  if (v20 > v24)
  {
    v24 = v20;
  }

  if (v22 > v24)
  {
    v24 = v21 + 16;
  }

  if (((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > v24)
  {
    v24 = ((((v21 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (v18 > v24)
  {
    v24 = v18;
  }

  if (v22 > v24)
  {
    v24 = v21 + 16;
  }

  if (v23 <= v24)
  {
    v23 = v24;
  }

  v26 = ((v14 + ((v6 + v12 + v9 + 1) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v26 <= v23)
  {
    v26 = v23;
  }

  v27 = v26 + 1;
  if (a3 < 0xF0)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 + ~(-1 << (8 * v27)) - 239) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (a2 > 0xEF)
  {
    v29 = a2 - 240;
    if (v27 >= 4)
    {
      bzero(a1, v26 + 1);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    v30 = (v29 >> (8 * v27)) + 1;
    if (v26 != -1)
    {
      v33 = v29 & ~(-1 << (8 * v27));
      bzero(a1, v27);
      if (v27 != 3)
      {
        if (v27 == 2)
        {
          *a1 = v33;
          if (v28 > 1)
          {
LABEL_68:
            if (v28 == 2)
            {
              *&a1[v27] = v30;
            }

            else
            {
              *&a1[v27] = v30;
            }

            return;
          }
        }

        else
        {
          *a1 = v29;
          if (v28 > 1)
          {
            goto LABEL_68;
          }
        }

LABEL_65:
        if (v28)
        {
          a1[v27] = v30;
        }

        return;
      }

      *a1 = v33;
      a1[2] = BYTE2(v33);
    }

    if (v28 > 1)
    {
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  if (v28 <= 1)
  {
    if (v28)
    {
      a1[v27] = 0;
      if (!a2)
      {
        return;
      }

LABEL_54:
      a1[v26] = -a2;
      return;
    }

LABEL_53:
    if (!a2)
    {
      return;
    }

    goto LABEL_54;
  }

  if (v28 == 2)
  {
    *&a1[v27] = 0;
    goto LABEL_53;
  }

  *&a1[v27] = 0;
  if (a2)
  {
    goto LABEL_54;
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingEventType.MatchableType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.OutgoingEventType.MatchableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for MLS.OutgoingCreateGroup(void *a1)
{
  v2 = a1[3];
  type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = a1[2];
    v5 = *(a1[4] + 24);
    type metadata accessor for Set();
    if (v6 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for MLS.OutgoingKickMember(void *a1)
{
  v2 = a1[3];
  type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = a1[2];
    v5 = *(a1[4] + 24);
    type metadata accessor for Set();
    if (v6 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingKickMember(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v10 = ((((((((((((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
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

void storeEnumTagSinglePayload for MLS.OutgoingKickMember(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
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
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

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

void type metadata completion function for MLS.OutgoingProposalCommitted(uint64_t a1)
{
  v1 = *(a1 + 24);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingProposalCommitted(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v10 = ((((((((((v9 + *(*(*(a3 + 24) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
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

void storeEnumTagSinglePayload for MLS.OutgoingProposalCommitted(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
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
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((v11 + ((v10 + 32) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
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
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;

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

void type metadata completion function for MLS.OutgoingFailureToDecrypt_v2(uint64_t a1)
{
  v2 = MEMORY[0x277D837D0];
  v3 = *(a1 + 24);
  type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 16);
    swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for [String], v2, MEMORY[0x277D83940]);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingFailureToDecrypt_v2(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v6 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 80);
  v14 = *(v8 + 80);
  if (v5)
  {
    v15 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v15 = *(*(*(a3 + 24) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v15 + 7;
  v17 = v14 + 8;
  if (v12 < a2)
  {
    v18 = ((((*(*(v7 - 8) + 64) + ((v17 + ((v16 + ((v13 + 32) & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v19 = a2 - v12;
    v20 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = v19 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_29;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v18);
      if (v24)
      {
LABEL_29:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v12 + (v26 | v25) + 1;
      }
    }
  }

  if ((v11 & 0x80000000) == 0)
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v29 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13;
  if (v6 == v12)
  {
    if (v5 >= 2)
    {
      v32 = (*(v4 + 48))(v29);
      if (v32 >= 2)
      {
        return v32 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(v9 + 48);
  v31 = (v17 + ((v16 + v29) & 0xFFFFFFFFFFFFFFF8)) & ~v14;

  return v30(v31, v10, v7);
}

void *storeEnumTagSinglePayload for MLS.OutgoingFailureToDecrypt_v2(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a4 + 16);
  v10 = *(v9 - 8);
  v11 = *(v6 + 80);
  v12 = *(*(*(a4 + 24) - 8) + 64);
  v13 = *(v10 + 80);
  if (v8 <= *(v10 + 84))
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (!v7)
  {
    ++v12;
  }

  v16 = v12 + 7;
  v17 = ((((*(*(v9 - 8) + 64) + ((v13 + 8 + ((v16 + ((v11 + 32) & ~v11)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 < a3)
  {
    v18 = a3 - v15;
    if (((((*(*(v9 - 8) + 64) + ((v13 + 8 + ((v16 + ((v11 + 32) & ~v11)) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v15)
  {
    if (((((*(*(v9 - 8) + 64) + ((v13 + 8 + ((v16 + ((v11 + 32) & ~v11)) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v15;
    }

    else
    {
      v21 = 1;
    }

    if (((((*(*(v9 - 8) + 64) + ((v13 + 8 + ((v16 + ((v11 + 32) & ~v11)) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v15 + a2;
      v23 = result;
      bzero(result, v17);
      result = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v17) = v21;
      }

      else
      {
        *(result + v17) = v21;
      }
    }

    else if (v5)
    {
      *(result + v17) = v21;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v17) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_42;
    }

    *(result + v17) = 0;
LABEL_41:
    if (!a2)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (!v5)
  {
    goto LABEL_41;
  }

  *(result + v17) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_42:
  if ((v14 & 0x80000000) != 0)
  {
    result = ((((result + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
    if (v8 == v15)
    {
      if (v7 >= 2)
      {
        v24 = *(v6 + 56);
        v25 = a2 + 1;

        return v24(result, v25);
      }
    }

    else
    {
      v26 = *(v10 + 56);
      v27 = (v13 + 8 + ((result + v16) & 0xFFFFFFFFFFFFFFF8)) & ~v13;

      return v26(v27);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    result[1] = a2 - 1;
  }

  return result;
}

void type metadata accessor for Data?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for MLS.OutgoingFailureToDecrypt(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Data?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for MLS.OutgoingFailureToDecrypt(uint64_t a1, unsigned int a2, uint64_t a3)
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

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
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
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
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